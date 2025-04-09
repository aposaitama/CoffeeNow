import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

const String aboutCoffeeNowMarkdown = """
# ☕ About Coffee Now

**Coffee Now** is a modern food delivery app crafted to bring your favorite coffee and snacks directly to your door — fast, fresh, and friendly.

We believe that coffee is more than just a drink — it's a moment, a ritual, a mood. That’s why we built this app with love and attention to detail, making sure your experience is as smooth as your morning latte.



## 🚀 Our Mission

Our goal is simple:
- Bring premium coffee from local cafes to your hands
- Empower local businesses through technology
- Make ordering coffee as delightful as drinking it



## 🌍 What Makes Us Different?

- **Lightning-fast delivery** within your area
- **Smart order tracking** in real-time
- **Personalized recommendations** based on your taste
- **Seamless UX/UI** optimized for every coffee lover






## 🤝 Let's Connect

We’re always brewing up something new!  
Have feedback, ideas, or just want to say hi?

**Email**: support@coffeenow.app  
**Instagram**: [@coffeenow.app](https://instagram.com/coffeenow.app)  
**Website**: [www.coffeenow.app](https://www.coffeenow.app)

Thanks for being part of our coffee journey 💛  
""";

class AboutCoffeeScreen extends StatelessWidget {
  const AboutCoffeeScreen({super.key});

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
          data: aboutCoffeeNowMarkdown,
        ),
      ),
    );
  }
}
