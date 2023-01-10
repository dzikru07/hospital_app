import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScheduleDetail extends StatelessWidget {
  const ScheduleDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              _doctorCard(),
              const SizedBox(
                height: 20,
              ),
              _queueNumber(),
              const SizedBox(
                height: 20,
              ),
              _alignPatientDetails(),
              const SizedBox(
                height: 10,
              ),
              _patiensDetail(),
              const SizedBox(
                height: 20,
              ),
              _ticketNumber(),
              const SizedBox(
                height: 20,
              ),
              _editButton(),
            ],
          ),
        ),
      ),
    );
  }

  Material _editButton() {
    return Material(
      color: Color(0xff0BB5EB),
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        focusColor: Color(0xff0BB5EB),
        borderRadius: BorderRadius.circular(10),
        splashColor: Colors.green,
        onTap: () {},
        child: Container(
          padding: EdgeInsets.all(18),
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
              "Ticket number",
              style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: const Color(0xffCECECE)),
            ),
            Text(
              "RDS-55115436649445",
              style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87),
            ),
          ],
        ),
        Image.asset("assets/images/qr_code.png")
      ],
    );
  }

  Container _patiensDetail() {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Name",
                style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xffCECECE)),
              ),
              Text(
                "Marchellino",
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xff0BB5EB)),
              ),
            ],
          ),
          const SizedBox(
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
                    color: const Color(0xffCECECE)),
              ),
              Text(
                "15 March 1995",
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xff0BB5EB)),
              ),
            ],
          ),
          const SizedBox(
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
                    color: const Color(0xffCECECE)),
              ),
              Text(
                "Manchesther, England",
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xff0BB5EB)),
              ),
            ],
          ),
          const SizedBox(
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
                    color: const Color(0xffCECECE)),
              ),
              Text(
                "Marchellino12@Gmail.com",
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xff0BB5EB)),
              ),
            ],
          ),
          const SizedBox(
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
                    color: const Color(0xffCECECE)),
              ),
              Text(
                "+62 851 9982 8921",
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xff0BB5EB)),
              ),
            ],
          ),
          const SizedBox(
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
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: const Color(0xffF4F1FF),
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
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: const Color(0xff0BB5EB),
      ),
      child: Row(
        children: [
          Image.asset("assets/images/image_profile_2.png"),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "dr. Anggeline Finn",
                style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
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
          ),
        ],
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      iconTheme:
          const IconThemeData(color: Color(0xff717171) //change your color here
              ),
      title: Text(
        "Welcome Back,",
        style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.normal,
            color: const Color(0xff717171)),
      ),
    );
  }
}
