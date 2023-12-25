import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../program_tab_components/program_dates_component.dart';
import '../program_tab_components/training_schedule_component.dart';

class AcademyProgramtComponent extends StatelessWidget {
  const AcademyProgramtComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProgramDatesComponent(),
        SizedBox(height: 30.h),
        TrainingScheduleComponent(),
      ],
    );
  }
}
