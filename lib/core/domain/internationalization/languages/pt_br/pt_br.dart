import 'package:people_maker/core/domain/domain.dart';

export 'general_pt_br.dart';
export 'people_pt_br.dart';

class PtBR with GeneralPtBR, PeoplePtBR implements Translation {}
