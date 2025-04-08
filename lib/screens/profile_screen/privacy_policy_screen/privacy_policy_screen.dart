import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

const String _privacyPolicyMarkdown = """
# ☕ Privacy Policy

At **Coffee Now Apps**, we are committed to protecting your privacy.  
This Privacy Policy outlines how we collect, use, and safeguard your information when you use our services.  
By using our app, you agree to the practices described in this policy.

---

## 📌 1. Information We Collect

We may collect the following types of information to provide and improve our services:

### 👤 Personal Information:
- Name
- Email address
- Phone number
- Delivery address

### 📍 Location Data:
- Real-time GPS location (for accurate delivery)
- Entered address and city

### 💳 Payment Information:
- Credit or debit card details
- Billing address (if required)
- Payment confirmation status

### 📱 Usage Data:
- App interaction (buttons tapped, screens viewed)
- Device type, OS version, and IP address
- Frequency and duration of app usage

---

## 🧠 2. How We Use Your Information

Your information is used solely to enhance your experience with **Coffee Now Apps**:

- To process and deliver your orders
- To personalize offers and recommendations
- To improve app performance and reliability
- To notify you of updates, offers, or changes
- To ensure compliance with local regulations

---

## 🔒 3. Data Protection

We apply strong security measures to protect your data:

- Encrypted communication (HTTPS)
- Secure storage of sensitive data
- Access control and authentication systems
- Regular audits and vulnerability checks

---

## 🚫 4. Data Sharing

We **do not sell or rent** your personal information.  
However, we may share data with:

- Delivery partners (only what's necessary for order completion)
- Payment providers (to process your transactions securely)
- Legal authorities (if required by law)

---

## 🔁 5. Data Retention

We keep your data only as long as needed to provide services or meet legal obligations:

- Order history: stored for your convenience
- Payment logs: retained for transaction records
- Location: temporary for delivery purposes

---

## 📲 6. Your Choices

You have full control over your data:

- View or edit your profile information
- Delete your account at any time
- Opt out of marketing notifications
- Control app permissions (e.g., location, camera)

---

## 📝 7. Updates to This Policy

We may update this policy from time to time.  
If changes are made, we will notify you via the app or email.

_Last updated: April 7, 2025_

---

## 📧 Contact Us

If you have any questions about this Privacy Policy or how we handle your data, feel free to contact us:

**Email**: support@coffeenow.app  
**Website**: [www.coffeenow.app](https://www.coffeenow.app)

Thank you for trusting Coffee Now!
""";

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: Container(
            width: 32.0,
            height: 32.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black.withOpacity(0.5),
            ),
            child: Transform.rotate(
              angle: 90 * 3.1415927 / 180,
              child: SvgPicture.asset(
                fit: BoxFit.scaleDown,
                'lib/assets/icons/Arrow - Down 2.svg',
                colorFilter: const ColorFilter.mode(
                  Colors.white,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.0,
        ),
        child: Markdown(
          data: _privacyPolicyMarkdown,
        ),
      ),
    );
  }
}
