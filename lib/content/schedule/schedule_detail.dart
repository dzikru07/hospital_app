import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScheduleDetail extends StatelessWidget {
  const ScheduleDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
            child: Column(
          children: [
            _doctorCard(),
            SizedBox(
              height: 20,
            ),
            _queueNumber(),
            SizedBox(
              height: 20,
            ),
            _alignPatientDetails(),
            SizedBox(
              height: 10,
            ),
            _patientDetails(),
            SizedBox(
              height: 20,
            ),
            _ticketNumber(),
            SizedBox(
              height: 20,
            ),
            _editButton(),
            SizedBox(
              height: 20,
            ),
          ],
        )),
      ),
    );
  }

  Material _editButton() {
    return Material(
      color: Color(0xff0bb5eb),
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        focusColor: const Color(0xff0bb5eb),
        borderRadius: BorderRadius.circular(10),
        splashColor: Colors.green,
        onTap: () {},
        child: Container(
          padding: const EdgeInsets.all(18),
          width: double.infinity,
          child: Center(
            child: Text(
              "Login or Register",
              style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }

  Row _ticketNumber() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Ticket Number",
              style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffcecece)),
            ),
            Text(
              "DCW-19812991271912",
              style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
            ),
          ],
        ),
        Image.asset('assets/images/qr_code.png')
      ],
    );
  }

  Container _patientDetails() {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Patient Details",
                style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffcecece)),
              ),
              Text(
                "Marchellino",
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff0bb5eb)),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Date of Birth",
                style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffcecece)),
              ),
              Text(
                "15 March 1996",
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff0bb5eb)),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Address",
                style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffcecece)),
              ),
              Text(
                "Depok, Indonesia",
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff0bb5eb)),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Email",
                style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffcecece)),
              ),
              Text(
                "Marchellino12@Gmail.com",
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff0bb5eb)),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Phone",
                style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffcecece)),
              ),
              Text(
                "+62 812 1291 1291",
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff0bb5eb)),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }

  Align _alignPatientDetails() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        "Patient Details",
        style: GoogleFonts.poppins(
            fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black87),
      ),
    );
  }

  Container _queueNumber() {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Color(0xfff4f1ff),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Queue number",
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: const Color(0xffCECECE)),
              ),
              Text(
                "Poli Anak : 256 B",
                style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87),
              ),
            ],
          ),
          Text(
            "14:20 AM",
            style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black87),
          ),
        ],
      ),
    );
  }

  Container _doctorCard() {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Color(0xff0bb5eb),
      ),
      child: Row(
        children: [
          Image.asset("assets/images/image_profile_2.png"),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "dr. Anggeline Finn",
                style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Text(
                "Spesialis Anak",
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Colors.white),
              ),
            ],
          )
        ],
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData(color: Color(0xff717171)),
      title: Text(
        "Schedule Detail",
        style: GoogleFonts.poppins(
            fontSize: 14, fontWeight: FontWeight.normal, color: Colors.grey),
      ),
    );
  }
}
