import 'package:flutter/material.dart';
import 'package:login_register_screen_firebase/utulits/constant/colorconstant.dart';
import 'package:login_register_screen_firebase/view/successful_punch_screen/successful_punch_screen.dart';

class Qrverificationscreen extends StatefulWidget {
  final Color white;
  final Color green;
  final String text;

  const Qrverificationscreen({super.key, required this.white,
  required this.text,
    required this.green,});
  

  @override
  State<Qrverificationscreen> createState() => _QrverificationscreenState();
}

class _QrverificationscreenState extends State<Qrverificationscreen> {
  
  
    
    
  //  Color orange=Colorconstant.primaryorange;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorconstant.primarywhite,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          
          children: [
            SizedBox(height: 40),
             Text("QR Verification",style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold
             ),),
              Text("please scan your QR code",style: TextStyle(
                fontSize: 20
              ),),
              SizedBox(height: 120),
              Center(
                child: Container(
                  width: 150,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colorconstant.primarygrey)
                
                  ),
                  child: Center(
                    
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 50),
                        child: Container(
                        
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMwAAADACAMAAAB/Pny7AAAAdVBMVEX///8AAAAzzMwcHBzd3d1sbGygoKAuLi719fX4+PglysqSkpLa2tqc4+PD7e1Cz8+GhobX8/Nd1NSpqanU1NTq6uqvr6/Dw8NSUlIzMzO4uLgRERFmZmYYGBh+3Nzu+vqp5uZ4eHhKSkqN398+Pj4mJiZdXV1VXQufAAAE/UlEQVR4nO2d63aiMBRGcfACtbVaBQS1AlXf/xFHo11zwiUcIAF0vv3PYA7ZwoqQhINlAQAAAAAAAAAAHXGMP8pYmN73onTX8bFRvM+3cr4bheRy/Fbs+rPBL3n8evtTzlus3YAQK3f9Vf+HvB4YVUSTh+Z6YFS7bnBoKmR+TMr8mJLRd+LW2nchbWW+Cvk23J0tvov321ImXhVhtC+7cSzcbdxSxvg/Sh0WkLEgYxzIiIqQMQtkREXImAUyomKBjLNOJhyWnhTKjZIkcqUib8kKlKwdUzLO/DDiEVIb17dHo7NPbbyQGegwpzY6ZaIdswmj0ZK2/F5E/ZbsQLvIkMyU3YTRmVQb34vGpOjMjzTtX8Ym1d7zMvbTyhQcmcHI7Paq/md/4suc1JF2HcjMPFeBN+fLzNWRZl3IOKV1rrh1ZNxsbYrTv4xTR0YdSaPMSgzPftJxmN5ljp83ma8V3+KX+Db+F9OS3mWs+DYSGJdUULL6+JF/g/5lrNXPR4PjUsQAZPQBGciISJBhUyTjRf5GakJjmXGwkT53L7PZ27t0TZvQVCa4zE5L+p3OZbxEFJGbyKYyzjlX0rXM5r5DnzShoUwkStJ3EqlzmVCXjN+/zKPpVq6ktoybP/E67wC8xD7PyM/ZogM42IdJrx3AFU8e8GveNTuB1MfjT7MGkIGMiAQZNpCBjIgEGTa9D8/q5Hfg3FFQb+BcGakLmcNSScqXSdWRDh3IsDAz2dSTzOGVZEJSrWC2eda/jM+fOk/UMgk70M7PtkITzoTdBmlRgziiU2lRAzvQRPlH0AZ3GtoMzhP57tMK0jSQS7zJmRMpnCr/igAAAAAA/mu88fsvXuYK0P23bexlrqgcUi9HwbfJNnMuAV3Bu5V29BiVeSBfH75f1FfG8iiNtyWbwswFqj42qdSGLd3my+2jC3idChdpGtGyttKmVJ600cc60wZyaB7TzoWi1TcviVf+bTovPwCZ8SBlGp5m1TLSaSbvxNhpxu8ApLHKSpleOoCGXfNDJirpnvvqmptRMG72vEBmqEBmqEBmqEBmqEDGPO76xJmImCXSJVWRjJek88x11zTdZ66Qx5eTuSmNhpNNBTLipiWV9MTtqHQvsLmVGJts8suanodOAxbI3H8V2vT7w5wX+qXcylyt1Jignall7hO0+aXAITnROlmhwaL22pn7LfkMMi1k9C03GYCMxoVAA5DRt0Rr6DJNF89Bpg2QgYyIBBk2kIGMiPS8j2kNQeb2AN2J6jyxjHNPukS+88QyjydoaRNayXR+p1kgQ+bqeDL3yXQ69BKIEjrG0f2D2mJk4kAaxZMRTzKf6ciSO8seqx4eob/Yu620goElY8234UVORhfsw54fob8lN4jo08BcGWsTZEc4vd6TG+TgylQDGT6QgYyIpFXGYOIpDloTT5lMCcZBZ0owo8naOOhM1mY0jR6HAeQE5A3PcuhGRkPqySuqIN2lntSRFNTaVOdK7iQpKIsKmTE/k+7AZB6JdOnFNT/F8RBkKlIcc3NPG5SJuIm0r7eMpFqr5NO2qeTTzpz7PLCUFtyK7Eyj+GnBd8bSglvOurIPEmhL2D4xl7C9dyAjKkLGLJARFSFjFsiIipAxC2RExRd80eFLvYLypV4OWsKTvra1JOJzvVD3pV51/FIvob6GLH1Hd2z+9eClryZfGP9bAAAAAAAAAAAAfvkLjIWhkksTh04AAAAASUVORK5CYII="))
                            ),
                            
                            height: 100,
                            width: 100,
                            
                          ),
                      ),
                    ),
                  ),
                ),
                 SizedBox(height: 60),
                Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SuccessfulPunchScreen(white: widget.white, green: widget.green,text: widget.text,)));
                    },
                    
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 65),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: Colorconstant.primaryblue
                      ),
                      child: Text("Scan QR",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colorconstant.primarywhite
                      ),),
                    ),
                  ),
                )
              
        
           
           
          ],
        ),
      ),
    );
  }
}