Container(
            padding: EdgeInsets.only(top: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(
                    left: 30,
                    right: 30,
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Dory\'s',
                          style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: gray_500),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Online Booking System',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                              color: gray_200),
                        ),
                      ]),
                ),
                // add gap
                SizedBox(height: 25),
                // make the container sc
                Container(
                  // make the container scrollable vertical
                  height: 300,
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Container(
                      // add text
                      child: Text(
                        'Dory\'s is an online booking system for a restaurant. It is a web application that allows customers to book a table online. It also allows the restaurant to manage their bookings and tables. The application is built using ReactJS, NodeJS, ExpressJS, and MongoDB.',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.normal,
                            color: gray_300),
                      ),
                    ),
                  ),
                ),
              ],
            ))