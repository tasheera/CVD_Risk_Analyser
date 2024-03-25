import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _fadeInAnimation;
  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
    _fadeInAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeIn),
    );
    _animationController.forward();
  }
  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Heart-Healthy Recommendations',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
      ),
      backgroundColor: Colors.grey[200], // Set background color here
      body: OrientationBuilder(
        builder: (context, orientation) {
          return SingleChildScrollView(
            padding: EdgeInsets.all(20.0),
            child: FadeTransition(
              opacity: _fadeInAnimation,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'High-Risk Individuals:',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  buildRecommendationItem(
                    'Omega-3 Fatty Acids',
                    'Incorporate foods rich in omega-3 fatty acids such as fatty fish (salmon, mackerel, sardines), flaxseeds, chia seeds, and walnuts. Omega-3s help reduce inflammation and lower triglyceride levels.',
                  ),
                  buildRecommendationItem(
                    'Fiber-Rich Foods',
                    'Increase intake of soluble fiber from sources like oats, barley, legumes, and fruits (apples, oranges, berries). Soluble fiber helps lower LDL cholesterol levels.',
                  ),
                  buildRecommendationItem(
                    'Potassium-Rich Foods',
                    'Consume potassium-rich foods like bananas, spinach, sweet potatoes, and avocado. Potassium helps regulate blood pressure and counteracts the effects of sodium.',
                  ),
                  buildRecommendationItem(
                    'Plant Sterols and Stanols',
                    'Include foods fortified with plant sterols and stanols, such as certain margarines, orange juice, and yogurt drinks. These compounds help lower LDL cholesterol levels.',
                  ),
                  buildRecommendationItem(
                    'Antioxidant-Rich Foods',
                    'Eat plenty of fruits and vegetables rich in antioxidants, including berries, tomatoes, spinach, kale, and bell peppers. Antioxidants help protect against oxidative stress and inflammation.',
                  ),
                  buildRecommendationItem(
                    'Healthy Cooking Oils',
                    'Use heart-healthy oils like olive oil, avocado oil, and canola oil for cooking and salad dressings. These oils contain monounsaturated fats that can improve cholesterol levels.',
                  ),

}
