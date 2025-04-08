import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wins_ecommerce/core/theme/color_class.dart';
import 'package:wins_ecommerce/core/theme/text_style_class.dart';
import 'package:wins_ecommerce/widgets/theme_button.dart';
import '../../models/order_model.dart';
import '../../models/product_model.dart';
import '../../provider/order_provider.dart';

class OrderDialog extends StatefulWidget {
  final ProductModel product;

  const OrderDialog({super.key, required this.product});

  @override
  State<OrderDialog> createState() => _OrderDialogState();
}

class _OrderDialogState extends State<OrderDialog> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _qtyController = TextEditingController(text: '1');
  bool _isSubmitting = false;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Order ${widget.product.name}'),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      content: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              _buildTextField(_nameController, 'Full Name', TextInputType.name),
              const SizedBox(height: 10),
              _buildTextField(
                  _phoneController, 'Phone Number', TextInputType.phone),
              const SizedBox(height: 10),
              _buildTextField(
                  _addressController, 'Address', TextInputType.streetAddress),
              const SizedBox(height: 10),
              _buildTextField(_qtyController, 'Quantity', TextInputType.number),
            ],
          ),
        ),
      ),
      actions: [
        if (_isSubmitting)
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: CircularProgressIndicator(),
          ),
        if (!_isSubmitting) ...[
          Row(
            children: [
              Expanded(
                  child: ThemeButton(
                function: () {
                  Navigator.pop(context);
                },
                label: "Cancel",
                color: ColorsClass.f7f7f7,
                    style: TextStyleClass.mulishSemiBlack14,
              )),
              Expanded(
                  child: ThemeButton(
                function: _submitOrder,
                label: "Place Order",
              )),
            ],
          ),

          // ElevatedButton(
          //   onPressed: _submitOrder,
          //   child: const Text('Place Order'),
          // ),
        ]
      ],
    );
  }

  Widget _buildTextField(
      TextEditingController controller, String label, TextInputType inputType) {
    return TextFormField(
      controller: controller,
      keyboardType: inputType,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        isDense: true,
      ),
      validator: (value) {
        if (value == null || value.isEmpty) return 'Required';
        if (inputType == TextInputType.number && int.tryParse(value) == null) {
          return 'Enter a valid number';
        }
        return null;
      },
    );
  }

  Future<void> _submitOrder() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() => _isSubmitting = true);
    final orderProvider = Provider.of<OrderProvider>(context, listen: false);

    final order = OrderModel(
      productId: widget.product.id,
      productName: widget.product.name,
      quantity: int.parse(_qtyController.text),
      customerName: _nameController.text.trim(),
      phoneNumber: _phoneController.text.trim(),
      address: _addressController.text.trim(),
    );

    try {
      await orderProvider.placeOrder(order);
      if (context.mounted) Navigator.pop(context);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Order placed successfully!')),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to place order: $e')),
      );
    } finally {
      setState(() => _isSubmitting = false);
    }
  }
}
