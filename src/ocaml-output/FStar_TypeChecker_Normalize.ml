open Prims
type step =
  | Beta 
  | Iota 
  | Zeta 
  | Exclude of step 
  | Weak 
  | HNF 
  | Primops 
  | Eager_unfolding 
  | Inlining 
  | DoNotUnfoldPureLets 
  | UnfoldUntil of FStar_Syntax_Syntax.delta_depth 
  | UnfoldOnly of FStar_Ident.lid Prims.list 
  | UnfoldFully of FStar_Ident.lid Prims.list 
  | UnfoldAttr of FStar_Syntax_Syntax.attribute 
  | UnfoldTac 
  | PureSubtermsWithinComputations 
  | Simplify 
  | EraseUniverses 
  | AllowUnboundUniverses 
  | Reify 
  | CompressUvars 
  | NoFullNorm 
  | CheckNoUvars 
  | Unmeta 
  | Unascribe 
let (uu___is_Beta : step -> Prims.bool) =
  fun projectee  -> match projectee with | Beta  -> true | uu____35 -> false 
let (uu___is_Iota : step -> Prims.bool) =
  fun projectee  -> match projectee with | Iota  -> true | uu____41 -> false 
let (uu___is_Zeta : step -> Prims.bool) =
  fun projectee  -> match projectee with | Zeta  -> true | uu____47 -> false 
let (uu___is_Exclude : step -> Prims.bool) =
  fun projectee  ->
    match projectee with | Exclude _0 -> true | uu____54 -> false
  
let (__proj__Exclude__item___0 : step -> step) =
  fun projectee  -> match projectee with | Exclude _0 -> _0 
let (uu___is_Weak : step -> Prims.bool) =
  fun projectee  -> match projectee with | Weak  -> true | uu____67 -> false 
let (uu___is_HNF : step -> Prims.bool) =
  fun projectee  -> match projectee with | HNF  -> true | uu____73 -> false 
let (uu___is_Primops : step -> Prims.bool) =
  fun projectee  ->
    match projectee with | Primops  -> true | uu____79 -> false
  
let (uu___is_Eager_unfolding : step -> Prims.bool) =
  fun projectee  ->
    match projectee with | Eager_unfolding  -> true | uu____85 -> false
  
let (uu___is_Inlining : step -> Prims.bool) =
  fun projectee  ->
    match projectee with | Inlining  -> true | uu____91 -> false
  
let (uu___is_DoNotUnfoldPureLets : step -> Prims.bool) =
  fun projectee  ->
    match projectee with | DoNotUnfoldPureLets  -> true | uu____97 -> false
  
let (uu___is_UnfoldUntil : step -> Prims.bool) =
  fun projectee  ->
    match projectee with | UnfoldUntil _0 -> true | uu____104 -> false
  
let (__proj__UnfoldUntil__item___0 : step -> FStar_Syntax_Syntax.delta_depth)
  = fun projectee  -> match projectee with | UnfoldUntil _0 -> _0 
let (uu___is_UnfoldOnly : step -> Prims.bool) =
  fun projectee  ->
    match projectee with | UnfoldOnly _0 -> true | uu____120 -> false
  
let (__proj__UnfoldOnly__item___0 : step -> FStar_Ident.lid Prims.list) =
  fun projectee  -> match projectee with | UnfoldOnly _0 -> _0 
let (uu___is_UnfoldFully : step -> Prims.bool) =
  fun projectee  ->
    match projectee with | UnfoldFully _0 -> true | uu____142 -> false
  
let (__proj__UnfoldFully__item___0 : step -> FStar_Ident.lid Prims.list) =
  fun projectee  -> match projectee with | UnfoldFully _0 -> _0 
let (uu___is_UnfoldAttr : step -> Prims.bool) =
  fun projectee  ->
    match projectee with | UnfoldAttr _0 -> true | uu____162 -> false
  
let (__proj__UnfoldAttr__item___0 : step -> FStar_Syntax_Syntax.attribute) =
  fun projectee  -> match projectee with | UnfoldAttr _0 -> _0 
let (uu___is_UnfoldTac : step -> Prims.bool) =
  fun projectee  ->
    match projectee with | UnfoldTac  -> true | uu____175 -> false
  
let (uu___is_PureSubtermsWithinComputations : step -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | PureSubtermsWithinComputations  -> true
    | uu____181 -> false
  
let (uu___is_Simplify : step -> Prims.bool) =
  fun projectee  ->
    match projectee with | Simplify  -> true | uu____187 -> false
  
let (uu___is_EraseUniverses : step -> Prims.bool) =
  fun projectee  ->
    match projectee with | EraseUniverses  -> true | uu____193 -> false
  
let (uu___is_AllowUnboundUniverses : step -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | AllowUnboundUniverses  -> true
    | uu____199 -> false
  
let (uu___is_Reify : step -> Prims.bool) =
  fun projectee  ->
    match projectee with | Reify  -> true | uu____205 -> false
  
let (uu___is_CompressUvars : step -> Prims.bool) =
  fun projectee  ->
    match projectee with | CompressUvars  -> true | uu____211 -> false
  
let (uu___is_NoFullNorm : step -> Prims.bool) =
  fun projectee  ->
    match projectee with | NoFullNorm  -> true | uu____217 -> false
  
let (uu___is_CheckNoUvars : step -> Prims.bool) =
  fun projectee  ->
    match projectee with | CheckNoUvars  -> true | uu____223 -> false
  
let (uu___is_Unmeta : step -> Prims.bool) =
  fun projectee  ->
    match projectee with | Unmeta  -> true | uu____229 -> false
  
let (uu___is_Unascribe : step -> Prims.bool) =
  fun projectee  ->
    match projectee with | Unascribe  -> true | uu____235 -> false
  
type steps = step Prims.list
let cases :
  'Auu____248 'Auu____249 .
    ('Auu____248 -> 'Auu____249) ->
      'Auu____249 ->
        'Auu____248 FStar_Pervasives_Native.option -> 'Auu____249
  =
  fun f  ->
    fun d  ->
      fun uu___238_269  ->
        match uu___238_269 with
        | FStar_Pervasives_Native.Some x -> f x
        | FStar_Pervasives_Native.None  -> d
  
type fsteps =
  {
  beta: Prims.bool ;
  iota: Prims.bool ;
  zeta: Prims.bool ;
  weak: Prims.bool ;
  hnf: Prims.bool ;
  primops: Prims.bool ;
  do_not_unfold_pure_lets: Prims.bool ;
  unfold_until:
    FStar_Syntax_Syntax.delta_depth FStar_Pervasives_Native.option ;
  unfold_only: FStar_Ident.lid Prims.list FStar_Pervasives_Native.option ;
  unfold_fully: FStar_Ident.lid Prims.list FStar_Pervasives_Native.option ;
  unfold_attr:
    FStar_Syntax_Syntax.attribute Prims.list FStar_Pervasives_Native.option ;
  unfold_tac: Prims.bool ;
  pure_subterms_within_computations: Prims.bool ;
  simplify: Prims.bool ;
  erase_universes: Prims.bool ;
  allow_unbound_universes: Prims.bool ;
  reify_: Prims.bool ;
  compress_uvars: Prims.bool ;
  no_full_norm: Prims.bool ;
  check_no_uvars: Prims.bool ;
  unmeta: Prims.bool ;
  unascribe: Prims.bool ;
  in_full_norm_request: Prims.bool ;
  weakly_reduce_scrutinee: Prims.bool }
let (__proj__Mkfsteps__item__beta : fsteps -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | { beta = __fname__beta; iota = __fname__iota; zeta = __fname__zeta;
        weak = __fname__weak; hnf = __fname__hnf; primops = __fname__primops;
        do_not_unfold_pure_lets = __fname__do_not_unfold_pure_lets;
        unfold_until = __fname__unfold_until;
        unfold_only = __fname__unfold_only;
        unfold_fully = __fname__unfold_fully;
        unfold_attr = __fname__unfold_attr; unfold_tac = __fname__unfold_tac;
        pure_subterms_within_computations =
          __fname__pure_subterms_within_computations;
        simplify = __fname__simplify;
        erase_universes = __fname__erase_universes;
        allow_unbound_universes = __fname__allow_unbound_universes;
        reify_ = __fname__reify_; compress_uvars = __fname__compress_uvars;
        no_full_norm = __fname__no_full_norm;
        check_no_uvars = __fname__check_no_uvars; unmeta = __fname__unmeta;
        unascribe = __fname__unascribe;
        in_full_norm_request = __fname__in_full_norm_request;
        weakly_reduce_scrutinee = __fname__weakly_reduce_scrutinee;_} ->
        __fname__beta
  
let (__proj__Mkfsteps__item__iota : fsteps -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | { beta = __fname__beta; iota = __fname__iota; zeta = __fname__zeta;
        weak = __fname__weak; hnf = __fname__hnf; primops = __fname__primops;
        do_not_unfold_pure_lets = __fname__do_not_unfold_pure_lets;
        unfold_until = __fname__unfold_until;
        unfold_only = __fname__unfold_only;
        unfold_fully = __fname__unfold_fully;
        unfold_attr = __fname__unfold_attr; unfold_tac = __fname__unfold_tac;
        pure_subterms_within_computations =
          __fname__pure_subterms_within_computations;
        simplify = __fname__simplify;
        erase_universes = __fname__erase_universes;
        allow_unbound_universes = __fname__allow_unbound_universes;
        reify_ = __fname__reify_; compress_uvars = __fname__compress_uvars;
        no_full_norm = __fname__no_full_norm;
        check_no_uvars = __fname__check_no_uvars; unmeta = __fname__unmeta;
        unascribe = __fname__unascribe;
        in_full_norm_request = __fname__in_full_norm_request;
        weakly_reduce_scrutinee = __fname__weakly_reduce_scrutinee;_} ->
        __fname__iota
  
let (__proj__Mkfsteps__item__zeta : fsteps -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | { beta = __fname__beta; iota = __fname__iota; zeta = __fname__zeta;
        weak = __fname__weak; hnf = __fname__hnf; primops = __fname__primops;
        do_not_unfold_pure_lets = __fname__do_not_unfold_pure_lets;
        unfold_until = __fname__unfold_until;
        unfold_only = __fname__unfold_only;
        unfold_fully = __fname__unfold_fully;
        unfold_attr = __fname__unfold_attr; unfold_tac = __fname__unfold_tac;
        pure_subterms_within_computations =
          __fname__pure_subterms_within_computations;
        simplify = __fname__simplify;
        erase_universes = __fname__erase_universes;
        allow_unbound_universes = __fname__allow_unbound_universes;
        reify_ = __fname__reify_; compress_uvars = __fname__compress_uvars;
        no_full_norm = __fname__no_full_norm;
        check_no_uvars = __fname__check_no_uvars; unmeta = __fname__unmeta;
        unascribe = __fname__unascribe;
        in_full_norm_request = __fname__in_full_norm_request;
        weakly_reduce_scrutinee = __fname__weakly_reduce_scrutinee;_} ->
        __fname__zeta
  
let (__proj__Mkfsteps__item__weak : fsteps -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | { beta = __fname__beta; iota = __fname__iota; zeta = __fname__zeta;
        weak = __fname__weak; hnf = __fname__hnf; primops = __fname__primops;
        do_not_unfold_pure_lets = __fname__do_not_unfold_pure_lets;
        unfold_until = __fname__unfold_until;
        unfold_only = __fname__unfold_only;
        unfold_fully = __fname__unfold_fully;
        unfold_attr = __fname__unfold_attr; unfold_tac = __fname__unfold_tac;
        pure_subterms_within_computations =
          __fname__pure_subterms_within_computations;
        simplify = __fname__simplify;
        erase_universes = __fname__erase_universes;
        allow_unbound_universes = __fname__allow_unbound_universes;
        reify_ = __fname__reify_; compress_uvars = __fname__compress_uvars;
        no_full_norm = __fname__no_full_norm;
        check_no_uvars = __fname__check_no_uvars; unmeta = __fname__unmeta;
        unascribe = __fname__unascribe;
        in_full_norm_request = __fname__in_full_norm_request;
        weakly_reduce_scrutinee = __fname__weakly_reduce_scrutinee;_} ->
        __fname__weak
  
let (__proj__Mkfsteps__item__hnf : fsteps -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | { beta = __fname__beta; iota = __fname__iota; zeta = __fname__zeta;
        weak = __fname__weak; hnf = __fname__hnf; primops = __fname__primops;
        do_not_unfold_pure_lets = __fname__do_not_unfold_pure_lets;
        unfold_until = __fname__unfold_until;
        unfold_only = __fname__unfold_only;
        unfold_fully = __fname__unfold_fully;
        unfold_attr = __fname__unfold_attr; unfold_tac = __fname__unfold_tac;
        pure_subterms_within_computations =
          __fname__pure_subterms_within_computations;
        simplify = __fname__simplify;
        erase_universes = __fname__erase_universes;
        allow_unbound_universes = __fname__allow_unbound_universes;
        reify_ = __fname__reify_; compress_uvars = __fname__compress_uvars;
        no_full_norm = __fname__no_full_norm;
        check_no_uvars = __fname__check_no_uvars; unmeta = __fname__unmeta;
        unascribe = __fname__unascribe;
        in_full_norm_request = __fname__in_full_norm_request;
        weakly_reduce_scrutinee = __fname__weakly_reduce_scrutinee;_} ->
        __fname__hnf
  
let (__proj__Mkfsteps__item__primops : fsteps -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | { beta = __fname__beta; iota = __fname__iota; zeta = __fname__zeta;
        weak = __fname__weak; hnf = __fname__hnf; primops = __fname__primops;
        do_not_unfold_pure_lets = __fname__do_not_unfold_pure_lets;
        unfold_until = __fname__unfold_until;
        unfold_only = __fname__unfold_only;
        unfold_fully = __fname__unfold_fully;
        unfold_attr = __fname__unfold_attr; unfold_tac = __fname__unfold_tac;
        pure_subterms_within_computations =
          __fname__pure_subterms_within_computations;
        simplify = __fname__simplify;
        erase_universes = __fname__erase_universes;
        allow_unbound_universes = __fname__allow_unbound_universes;
        reify_ = __fname__reify_; compress_uvars = __fname__compress_uvars;
        no_full_norm = __fname__no_full_norm;
        check_no_uvars = __fname__check_no_uvars; unmeta = __fname__unmeta;
        unascribe = __fname__unascribe;
        in_full_norm_request = __fname__in_full_norm_request;
        weakly_reduce_scrutinee = __fname__weakly_reduce_scrutinee;_} ->
        __fname__primops
  
let (__proj__Mkfsteps__item__do_not_unfold_pure_lets : fsteps -> Prims.bool)
  =
  fun projectee  ->
    match projectee with
    | { beta = __fname__beta; iota = __fname__iota; zeta = __fname__zeta;
        weak = __fname__weak; hnf = __fname__hnf; primops = __fname__primops;
        do_not_unfold_pure_lets = __fname__do_not_unfold_pure_lets;
        unfold_until = __fname__unfold_until;
        unfold_only = __fname__unfold_only;
        unfold_fully = __fname__unfold_fully;
        unfold_attr = __fname__unfold_attr; unfold_tac = __fname__unfold_tac;
        pure_subterms_within_computations =
          __fname__pure_subterms_within_computations;
        simplify = __fname__simplify;
        erase_universes = __fname__erase_universes;
        allow_unbound_universes = __fname__allow_unbound_universes;
        reify_ = __fname__reify_; compress_uvars = __fname__compress_uvars;
        no_full_norm = __fname__no_full_norm;
        check_no_uvars = __fname__check_no_uvars; unmeta = __fname__unmeta;
        unascribe = __fname__unascribe;
        in_full_norm_request = __fname__in_full_norm_request;
        weakly_reduce_scrutinee = __fname__weakly_reduce_scrutinee;_} ->
        __fname__do_not_unfold_pure_lets
  
let (__proj__Mkfsteps__item__unfold_until :
  fsteps -> FStar_Syntax_Syntax.delta_depth FStar_Pervasives_Native.option) =
  fun projectee  ->
    match projectee with
    | { beta = __fname__beta; iota = __fname__iota; zeta = __fname__zeta;
        weak = __fname__weak; hnf = __fname__hnf; primops = __fname__primops;
        do_not_unfold_pure_lets = __fname__do_not_unfold_pure_lets;
        unfold_until = __fname__unfold_until;
        unfold_only = __fname__unfold_only;
        unfold_fully = __fname__unfold_fully;
        unfold_attr = __fname__unfold_attr; unfold_tac = __fname__unfold_tac;
        pure_subterms_within_computations =
          __fname__pure_subterms_within_computations;
        simplify = __fname__simplify;
        erase_universes = __fname__erase_universes;
        allow_unbound_universes = __fname__allow_unbound_universes;
        reify_ = __fname__reify_; compress_uvars = __fname__compress_uvars;
        no_full_norm = __fname__no_full_norm;
        check_no_uvars = __fname__check_no_uvars; unmeta = __fname__unmeta;
        unascribe = __fname__unascribe;
        in_full_norm_request = __fname__in_full_norm_request;
        weakly_reduce_scrutinee = __fname__weakly_reduce_scrutinee;_} ->
        __fname__unfold_until
  
let (__proj__Mkfsteps__item__unfold_only :
  fsteps -> FStar_Ident.lid Prims.list FStar_Pervasives_Native.option) =
  fun projectee  ->
    match projectee with
    | { beta = __fname__beta; iota = __fname__iota; zeta = __fname__zeta;
        weak = __fname__weak; hnf = __fname__hnf; primops = __fname__primops;
        do_not_unfold_pure_lets = __fname__do_not_unfold_pure_lets;
        unfold_until = __fname__unfold_until;
        unfold_only = __fname__unfold_only;
        unfold_fully = __fname__unfold_fully;
        unfold_attr = __fname__unfold_attr; unfold_tac = __fname__unfold_tac;
        pure_subterms_within_computations =
          __fname__pure_subterms_within_computations;
        simplify = __fname__simplify;
        erase_universes = __fname__erase_universes;
        allow_unbound_universes = __fname__allow_unbound_universes;
        reify_ = __fname__reify_; compress_uvars = __fname__compress_uvars;
        no_full_norm = __fname__no_full_norm;
        check_no_uvars = __fname__check_no_uvars; unmeta = __fname__unmeta;
        unascribe = __fname__unascribe;
        in_full_norm_request = __fname__in_full_norm_request;
        weakly_reduce_scrutinee = __fname__weakly_reduce_scrutinee;_} ->
        __fname__unfold_only
  
let (__proj__Mkfsteps__item__unfold_fully :
  fsteps -> FStar_Ident.lid Prims.list FStar_Pervasives_Native.option) =
  fun projectee  ->
    match projectee with
    | { beta = __fname__beta; iota = __fname__iota; zeta = __fname__zeta;
        weak = __fname__weak; hnf = __fname__hnf; primops = __fname__primops;
        do_not_unfold_pure_lets = __fname__do_not_unfold_pure_lets;
        unfold_until = __fname__unfold_until;
        unfold_only = __fname__unfold_only;
        unfold_fully = __fname__unfold_fully;
        unfold_attr = __fname__unfold_attr; unfold_tac = __fname__unfold_tac;
        pure_subterms_within_computations =
          __fname__pure_subterms_within_computations;
        simplify = __fname__simplify;
        erase_universes = __fname__erase_universes;
        allow_unbound_universes = __fname__allow_unbound_universes;
        reify_ = __fname__reify_; compress_uvars = __fname__compress_uvars;
        no_full_norm = __fname__no_full_norm;
        check_no_uvars = __fname__check_no_uvars; unmeta = __fname__unmeta;
        unascribe = __fname__unascribe;
        in_full_norm_request = __fname__in_full_norm_request;
        weakly_reduce_scrutinee = __fname__weakly_reduce_scrutinee;_} ->
        __fname__unfold_fully
  
let (__proj__Mkfsteps__item__unfold_attr :
  fsteps ->
    FStar_Syntax_Syntax.attribute Prims.list FStar_Pervasives_Native.option)
  =
  fun projectee  ->
    match projectee with
    | { beta = __fname__beta; iota = __fname__iota; zeta = __fname__zeta;
        weak = __fname__weak; hnf = __fname__hnf; primops = __fname__primops;
        do_not_unfold_pure_lets = __fname__do_not_unfold_pure_lets;
        unfold_until = __fname__unfold_until;
        unfold_only = __fname__unfold_only;
        unfold_fully = __fname__unfold_fully;
        unfold_attr = __fname__unfold_attr; unfold_tac = __fname__unfold_tac;
        pure_subterms_within_computations =
          __fname__pure_subterms_within_computations;
        simplify = __fname__simplify;
        erase_universes = __fname__erase_universes;
        allow_unbound_universes = __fname__allow_unbound_universes;
        reify_ = __fname__reify_; compress_uvars = __fname__compress_uvars;
        no_full_norm = __fname__no_full_norm;
        check_no_uvars = __fname__check_no_uvars; unmeta = __fname__unmeta;
        unascribe = __fname__unascribe;
        in_full_norm_request = __fname__in_full_norm_request;
        weakly_reduce_scrutinee = __fname__weakly_reduce_scrutinee;_} ->
        __fname__unfold_attr
  
let (__proj__Mkfsteps__item__unfold_tac : fsteps -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | { beta = __fname__beta; iota = __fname__iota; zeta = __fname__zeta;
        weak = __fname__weak; hnf = __fname__hnf; primops = __fname__primops;
        do_not_unfold_pure_lets = __fname__do_not_unfold_pure_lets;
        unfold_until = __fname__unfold_until;
        unfold_only = __fname__unfold_only;
        unfold_fully = __fname__unfold_fully;
        unfold_attr = __fname__unfold_attr; unfold_tac = __fname__unfold_tac;
        pure_subterms_within_computations =
          __fname__pure_subterms_within_computations;
        simplify = __fname__simplify;
        erase_universes = __fname__erase_universes;
        allow_unbound_universes = __fname__allow_unbound_universes;
        reify_ = __fname__reify_; compress_uvars = __fname__compress_uvars;
        no_full_norm = __fname__no_full_norm;
        check_no_uvars = __fname__check_no_uvars; unmeta = __fname__unmeta;
        unascribe = __fname__unascribe;
        in_full_norm_request = __fname__in_full_norm_request;
        weakly_reduce_scrutinee = __fname__weakly_reduce_scrutinee;_} ->
        __fname__unfold_tac
  
let (__proj__Mkfsteps__item__pure_subterms_within_computations :
  fsteps -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | { beta = __fname__beta; iota = __fname__iota; zeta = __fname__zeta;
        weak = __fname__weak; hnf = __fname__hnf; primops = __fname__primops;
        do_not_unfold_pure_lets = __fname__do_not_unfold_pure_lets;
        unfold_until = __fname__unfold_until;
        unfold_only = __fname__unfold_only;
        unfold_fully = __fname__unfold_fully;
        unfold_attr = __fname__unfold_attr; unfold_tac = __fname__unfold_tac;
        pure_subterms_within_computations =
          __fname__pure_subterms_within_computations;
        simplify = __fname__simplify;
        erase_universes = __fname__erase_universes;
        allow_unbound_universes = __fname__allow_unbound_universes;
        reify_ = __fname__reify_; compress_uvars = __fname__compress_uvars;
        no_full_norm = __fname__no_full_norm;
        check_no_uvars = __fname__check_no_uvars; unmeta = __fname__unmeta;
        unascribe = __fname__unascribe;
        in_full_norm_request = __fname__in_full_norm_request;
        weakly_reduce_scrutinee = __fname__weakly_reduce_scrutinee;_} ->
        __fname__pure_subterms_within_computations
  
let (__proj__Mkfsteps__item__simplify : fsteps -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | { beta = __fname__beta; iota = __fname__iota; zeta = __fname__zeta;
        weak = __fname__weak; hnf = __fname__hnf; primops = __fname__primops;
        do_not_unfold_pure_lets = __fname__do_not_unfold_pure_lets;
        unfold_until = __fname__unfold_until;
        unfold_only = __fname__unfold_only;
        unfold_fully = __fname__unfold_fully;
        unfold_attr = __fname__unfold_attr; unfold_tac = __fname__unfold_tac;
        pure_subterms_within_computations =
          __fname__pure_subterms_within_computations;
        simplify = __fname__simplify;
        erase_universes = __fname__erase_universes;
        allow_unbound_universes = __fname__allow_unbound_universes;
        reify_ = __fname__reify_; compress_uvars = __fname__compress_uvars;
        no_full_norm = __fname__no_full_norm;
        check_no_uvars = __fname__check_no_uvars; unmeta = __fname__unmeta;
        unascribe = __fname__unascribe;
        in_full_norm_request = __fname__in_full_norm_request;
        weakly_reduce_scrutinee = __fname__weakly_reduce_scrutinee;_} ->
        __fname__simplify
  
let (__proj__Mkfsteps__item__erase_universes : fsteps -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | { beta = __fname__beta; iota = __fname__iota; zeta = __fname__zeta;
        weak = __fname__weak; hnf = __fname__hnf; primops = __fname__primops;
        do_not_unfold_pure_lets = __fname__do_not_unfold_pure_lets;
        unfold_until = __fname__unfold_until;
        unfold_only = __fname__unfold_only;
        unfold_fully = __fname__unfold_fully;
        unfold_attr = __fname__unfold_attr; unfold_tac = __fname__unfold_tac;
        pure_subterms_within_computations =
          __fname__pure_subterms_within_computations;
        simplify = __fname__simplify;
        erase_universes = __fname__erase_universes;
        allow_unbound_universes = __fname__allow_unbound_universes;
        reify_ = __fname__reify_; compress_uvars = __fname__compress_uvars;
        no_full_norm = __fname__no_full_norm;
        check_no_uvars = __fname__check_no_uvars; unmeta = __fname__unmeta;
        unascribe = __fname__unascribe;
        in_full_norm_request = __fname__in_full_norm_request;
        weakly_reduce_scrutinee = __fname__weakly_reduce_scrutinee;_} ->
        __fname__erase_universes
  
let (__proj__Mkfsteps__item__allow_unbound_universes : fsteps -> Prims.bool)
  =
  fun projectee  ->
    match projectee with
    | { beta = __fname__beta; iota = __fname__iota; zeta = __fname__zeta;
        weak = __fname__weak; hnf = __fname__hnf; primops = __fname__primops;
        do_not_unfold_pure_lets = __fname__do_not_unfold_pure_lets;
        unfold_until = __fname__unfold_until;
        unfold_only = __fname__unfold_only;
        unfold_fully = __fname__unfold_fully;
        unfold_attr = __fname__unfold_attr; unfold_tac = __fname__unfold_tac;
        pure_subterms_within_computations =
          __fname__pure_subterms_within_computations;
        simplify = __fname__simplify;
        erase_universes = __fname__erase_universes;
        allow_unbound_universes = __fname__allow_unbound_universes;
        reify_ = __fname__reify_; compress_uvars = __fname__compress_uvars;
        no_full_norm = __fname__no_full_norm;
        check_no_uvars = __fname__check_no_uvars; unmeta = __fname__unmeta;
        unascribe = __fname__unascribe;
        in_full_norm_request = __fname__in_full_norm_request;
        weakly_reduce_scrutinee = __fname__weakly_reduce_scrutinee;_} ->
        __fname__allow_unbound_universes
  
let (__proj__Mkfsteps__item__reify_ : fsteps -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | { beta = __fname__beta; iota = __fname__iota; zeta = __fname__zeta;
        weak = __fname__weak; hnf = __fname__hnf; primops = __fname__primops;
        do_not_unfold_pure_lets = __fname__do_not_unfold_pure_lets;
        unfold_until = __fname__unfold_until;
        unfold_only = __fname__unfold_only;
        unfold_fully = __fname__unfold_fully;
        unfold_attr = __fname__unfold_attr; unfold_tac = __fname__unfold_tac;
        pure_subterms_within_computations =
          __fname__pure_subterms_within_computations;
        simplify = __fname__simplify;
        erase_universes = __fname__erase_universes;
        allow_unbound_universes = __fname__allow_unbound_universes;
        reify_ = __fname__reify_; compress_uvars = __fname__compress_uvars;
        no_full_norm = __fname__no_full_norm;
        check_no_uvars = __fname__check_no_uvars; unmeta = __fname__unmeta;
        unascribe = __fname__unascribe;
        in_full_norm_request = __fname__in_full_norm_request;
        weakly_reduce_scrutinee = __fname__weakly_reduce_scrutinee;_} ->
        __fname__reify_
  
let (__proj__Mkfsteps__item__compress_uvars : fsteps -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | { beta = __fname__beta; iota = __fname__iota; zeta = __fname__zeta;
        weak = __fname__weak; hnf = __fname__hnf; primops = __fname__primops;
        do_not_unfold_pure_lets = __fname__do_not_unfold_pure_lets;
        unfold_until = __fname__unfold_until;
        unfold_only = __fname__unfold_only;
        unfold_fully = __fname__unfold_fully;
        unfold_attr = __fname__unfold_attr; unfold_tac = __fname__unfold_tac;
        pure_subterms_within_computations =
          __fname__pure_subterms_within_computations;
        simplify = __fname__simplify;
        erase_universes = __fname__erase_universes;
        allow_unbound_universes = __fname__allow_unbound_universes;
        reify_ = __fname__reify_; compress_uvars = __fname__compress_uvars;
        no_full_norm = __fname__no_full_norm;
        check_no_uvars = __fname__check_no_uvars; unmeta = __fname__unmeta;
        unascribe = __fname__unascribe;
        in_full_norm_request = __fname__in_full_norm_request;
        weakly_reduce_scrutinee = __fname__weakly_reduce_scrutinee;_} ->
        __fname__compress_uvars
  
let (__proj__Mkfsteps__item__no_full_norm : fsteps -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | { beta = __fname__beta; iota = __fname__iota; zeta = __fname__zeta;
        weak = __fname__weak; hnf = __fname__hnf; primops = __fname__primops;
        do_not_unfold_pure_lets = __fname__do_not_unfold_pure_lets;
        unfold_until = __fname__unfold_until;
        unfold_only = __fname__unfold_only;
        unfold_fully = __fname__unfold_fully;
        unfold_attr = __fname__unfold_attr; unfold_tac = __fname__unfold_tac;
        pure_subterms_within_computations =
          __fname__pure_subterms_within_computations;
        simplify = __fname__simplify;
        erase_universes = __fname__erase_universes;
        allow_unbound_universes = __fname__allow_unbound_universes;
        reify_ = __fname__reify_; compress_uvars = __fname__compress_uvars;
        no_full_norm = __fname__no_full_norm;
        check_no_uvars = __fname__check_no_uvars; unmeta = __fname__unmeta;
        unascribe = __fname__unascribe;
        in_full_norm_request = __fname__in_full_norm_request;
        weakly_reduce_scrutinee = __fname__weakly_reduce_scrutinee;_} ->
        __fname__no_full_norm
  
let (__proj__Mkfsteps__item__check_no_uvars : fsteps -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | { beta = __fname__beta; iota = __fname__iota; zeta = __fname__zeta;
        weak = __fname__weak; hnf = __fname__hnf; primops = __fname__primops;
        do_not_unfold_pure_lets = __fname__do_not_unfold_pure_lets;
        unfold_until = __fname__unfold_until;
        unfold_only = __fname__unfold_only;
        unfold_fully = __fname__unfold_fully;
        unfold_attr = __fname__unfold_attr; unfold_tac = __fname__unfold_tac;
        pure_subterms_within_computations =
          __fname__pure_subterms_within_computations;
        simplify = __fname__simplify;
        erase_universes = __fname__erase_universes;
        allow_unbound_universes = __fname__allow_unbound_universes;
        reify_ = __fname__reify_; compress_uvars = __fname__compress_uvars;
        no_full_norm = __fname__no_full_norm;
        check_no_uvars = __fname__check_no_uvars; unmeta = __fname__unmeta;
        unascribe = __fname__unascribe;
        in_full_norm_request = __fname__in_full_norm_request;
        weakly_reduce_scrutinee = __fname__weakly_reduce_scrutinee;_} ->
        __fname__check_no_uvars
  
let (__proj__Mkfsteps__item__unmeta : fsteps -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | { beta = __fname__beta; iota = __fname__iota; zeta = __fname__zeta;
        weak = __fname__weak; hnf = __fname__hnf; primops = __fname__primops;
        do_not_unfold_pure_lets = __fname__do_not_unfold_pure_lets;
        unfold_until = __fname__unfold_until;
        unfold_only = __fname__unfold_only;
        unfold_fully = __fname__unfold_fully;
        unfold_attr = __fname__unfold_attr; unfold_tac = __fname__unfold_tac;
        pure_subterms_within_computations =
          __fname__pure_subterms_within_computations;
        simplify = __fname__simplify;
        erase_universes = __fname__erase_universes;
        allow_unbound_universes = __fname__allow_unbound_universes;
        reify_ = __fname__reify_; compress_uvars = __fname__compress_uvars;
        no_full_norm = __fname__no_full_norm;
        check_no_uvars = __fname__check_no_uvars; unmeta = __fname__unmeta;
        unascribe = __fname__unascribe;
        in_full_norm_request = __fname__in_full_norm_request;
        weakly_reduce_scrutinee = __fname__weakly_reduce_scrutinee;_} ->
        __fname__unmeta
  
let (__proj__Mkfsteps__item__unascribe : fsteps -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | { beta = __fname__beta; iota = __fname__iota; zeta = __fname__zeta;
        weak = __fname__weak; hnf = __fname__hnf; primops = __fname__primops;
        do_not_unfold_pure_lets = __fname__do_not_unfold_pure_lets;
        unfold_until = __fname__unfold_until;
        unfold_only = __fname__unfold_only;
        unfold_fully = __fname__unfold_fully;
        unfold_attr = __fname__unfold_attr; unfold_tac = __fname__unfold_tac;
        pure_subterms_within_computations =
          __fname__pure_subterms_within_computations;
        simplify = __fname__simplify;
        erase_universes = __fname__erase_universes;
        allow_unbound_universes = __fname__allow_unbound_universes;
        reify_ = __fname__reify_; compress_uvars = __fname__compress_uvars;
        no_full_norm = __fname__no_full_norm;
        check_no_uvars = __fname__check_no_uvars; unmeta = __fname__unmeta;
        unascribe = __fname__unascribe;
        in_full_norm_request = __fname__in_full_norm_request;
        weakly_reduce_scrutinee = __fname__weakly_reduce_scrutinee;_} ->
        __fname__unascribe
  
let (__proj__Mkfsteps__item__in_full_norm_request : fsteps -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | { beta = __fname__beta; iota = __fname__iota; zeta = __fname__zeta;
        weak = __fname__weak; hnf = __fname__hnf; primops = __fname__primops;
        do_not_unfold_pure_lets = __fname__do_not_unfold_pure_lets;
        unfold_until = __fname__unfold_until;
        unfold_only = __fname__unfold_only;
        unfold_fully = __fname__unfold_fully;
        unfold_attr = __fname__unfold_attr; unfold_tac = __fname__unfold_tac;
        pure_subterms_within_computations =
          __fname__pure_subterms_within_computations;
        simplify = __fname__simplify;
        erase_universes = __fname__erase_universes;
        allow_unbound_universes = __fname__allow_unbound_universes;
        reify_ = __fname__reify_; compress_uvars = __fname__compress_uvars;
        no_full_norm = __fname__no_full_norm;
        check_no_uvars = __fname__check_no_uvars; unmeta = __fname__unmeta;
        unascribe = __fname__unascribe;
        in_full_norm_request = __fname__in_full_norm_request;
        weakly_reduce_scrutinee = __fname__weakly_reduce_scrutinee;_} ->
        __fname__in_full_norm_request
  
let (__proj__Mkfsteps__item__weakly_reduce_scrutinee : fsteps -> Prims.bool)
  =
  fun projectee  ->
    match projectee with
    | { beta = __fname__beta; iota = __fname__iota; zeta = __fname__zeta;
        weak = __fname__weak; hnf = __fname__hnf; primops = __fname__primops;
        do_not_unfold_pure_lets = __fname__do_not_unfold_pure_lets;
        unfold_until = __fname__unfold_until;
        unfold_only = __fname__unfold_only;
        unfold_fully = __fname__unfold_fully;
        unfold_attr = __fname__unfold_attr; unfold_tac = __fname__unfold_tac;
        pure_subterms_within_computations =
          __fname__pure_subterms_within_computations;
        simplify = __fname__simplify;
        erase_universes = __fname__erase_universes;
        allow_unbound_universes = __fname__allow_unbound_universes;
        reify_ = __fname__reify_; compress_uvars = __fname__compress_uvars;
        no_full_norm = __fname__no_full_norm;
        check_no_uvars = __fname__check_no_uvars; unmeta = __fname__unmeta;
        unascribe = __fname__unascribe;
        in_full_norm_request = __fname__in_full_norm_request;
        weakly_reduce_scrutinee = __fname__weakly_reduce_scrutinee;_} ->
        __fname__weakly_reduce_scrutinee
  
let (default_steps : fsteps) =
  {
    beta = true;
    iota = true;
    zeta = true;
    weak = false;
    hnf = false;
    primops = false;
    do_not_unfold_pure_lets = false;
    unfold_until = FStar_Pervasives_Native.None;
    unfold_only = FStar_Pervasives_Native.None;
    unfold_fully = FStar_Pervasives_Native.None;
    unfold_attr = FStar_Pervasives_Native.None;
    unfold_tac = false;
    pure_subterms_within_computations = false;
    simplify = false;
    erase_universes = false;
    allow_unbound_universes = false;
    reify_ = false;
    compress_uvars = false;
    no_full_norm = false;
    check_no_uvars = false;
    unmeta = false;
    unascribe = false;
    in_full_norm_request = false;
    weakly_reduce_scrutinee = true
  } 
let (fstep_add_one : step -> fsteps -> fsteps) =
  fun s  ->
    fun fs  ->
      let add_opt x uu___239_1503 =
        match uu___239_1503 with
        | FStar_Pervasives_Native.None  -> FStar_Pervasives_Native.Some [x]
        | FStar_Pervasives_Native.Some xs ->
            FStar_Pervasives_Native.Some (x :: xs)
         in
      match s with
      | Beta  ->
          let uu___258_1523 = fs  in
          {
            beta = true;
            iota = (uu___258_1523.iota);
            zeta = (uu___258_1523.zeta);
            weak = (uu___258_1523.weak);
            hnf = (uu___258_1523.hnf);
            primops = (uu___258_1523.primops);
            do_not_unfold_pure_lets = (uu___258_1523.do_not_unfold_pure_lets);
            unfold_until = (uu___258_1523.unfold_until);
            unfold_only = (uu___258_1523.unfold_only);
            unfold_fully = (uu___258_1523.unfold_fully);
            unfold_attr = (uu___258_1523.unfold_attr);
            unfold_tac = (uu___258_1523.unfold_tac);
            pure_subterms_within_computations =
              (uu___258_1523.pure_subterms_within_computations);
            simplify = (uu___258_1523.simplify);
            erase_universes = (uu___258_1523.erase_universes);
            allow_unbound_universes = (uu___258_1523.allow_unbound_universes);
            reify_ = (uu___258_1523.reify_);
            compress_uvars = (uu___258_1523.compress_uvars);
            no_full_norm = (uu___258_1523.no_full_norm);
            check_no_uvars = (uu___258_1523.check_no_uvars);
            unmeta = (uu___258_1523.unmeta);
            unascribe = (uu___258_1523.unascribe);
            in_full_norm_request = (uu___258_1523.in_full_norm_request);
            weakly_reduce_scrutinee = (uu___258_1523.weakly_reduce_scrutinee)
          }
      | Iota  ->
          let uu___259_1524 = fs  in
          {
            beta = (uu___259_1524.beta);
            iota = true;
            zeta = (uu___259_1524.zeta);
            weak = (uu___259_1524.weak);
            hnf = (uu___259_1524.hnf);
            primops = (uu___259_1524.primops);
            do_not_unfold_pure_lets = (uu___259_1524.do_not_unfold_pure_lets);
            unfold_until = (uu___259_1524.unfold_until);
            unfold_only = (uu___259_1524.unfold_only);
            unfold_fully = (uu___259_1524.unfold_fully);
            unfold_attr = (uu___259_1524.unfold_attr);
            unfold_tac = (uu___259_1524.unfold_tac);
            pure_subterms_within_computations =
              (uu___259_1524.pure_subterms_within_computations);
            simplify = (uu___259_1524.simplify);
            erase_universes = (uu___259_1524.erase_universes);
            allow_unbound_universes = (uu___259_1524.allow_unbound_universes);
            reify_ = (uu___259_1524.reify_);
            compress_uvars = (uu___259_1524.compress_uvars);
            no_full_norm = (uu___259_1524.no_full_norm);
            check_no_uvars = (uu___259_1524.check_no_uvars);
            unmeta = (uu___259_1524.unmeta);
            unascribe = (uu___259_1524.unascribe);
            in_full_norm_request = (uu___259_1524.in_full_norm_request);
            weakly_reduce_scrutinee = (uu___259_1524.weakly_reduce_scrutinee)
          }
      | Zeta  ->
          let uu___260_1525 = fs  in
          {
            beta = (uu___260_1525.beta);
            iota = (uu___260_1525.iota);
            zeta = true;
            weak = (uu___260_1525.weak);
            hnf = (uu___260_1525.hnf);
            primops = (uu___260_1525.primops);
            do_not_unfold_pure_lets = (uu___260_1525.do_not_unfold_pure_lets);
            unfold_until = (uu___260_1525.unfold_until);
            unfold_only = (uu___260_1525.unfold_only);
            unfold_fully = (uu___260_1525.unfold_fully);
            unfold_attr = (uu___260_1525.unfold_attr);
            unfold_tac = (uu___260_1525.unfold_tac);
            pure_subterms_within_computations =
              (uu___260_1525.pure_subterms_within_computations);
            simplify = (uu___260_1525.simplify);
            erase_universes = (uu___260_1525.erase_universes);
            allow_unbound_universes = (uu___260_1525.allow_unbound_universes);
            reify_ = (uu___260_1525.reify_);
            compress_uvars = (uu___260_1525.compress_uvars);
            no_full_norm = (uu___260_1525.no_full_norm);
            check_no_uvars = (uu___260_1525.check_no_uvars);
            unmeta = (uu___260_1525.unmeta);
            unascribe = (uu___260_1525.unascribe);
            in_full_norm_request = (uu___260_1525.in_full_norm_request);
            weakly_reduce_scrutinee = (uu___260_1525.weakly_reduce_scrutinee)
          }
      | Exclude (Beta ) ->
          let uu___261_1526 = fs  in
          {
            beta = false;
            iota = (uu___261_1526.iota);
            zeta = (uu___261_1526.zeta);
            weak = (uu___261_1526.weak);
            hnf = (uu___261_1526.hnf);
            primops = (uu___261_1526.primops);
            do_not_unfold_pure_lets = (uu___261_1526.do_not_unfold_pure_lets);
            unfold_until = (uu___261_1526.unfold_until);
            unfold_only = (uu___261_1526.unfold_only);
            unfold_fully = (uu___261_1526.unfold_fully);
            unfold_attr = (uu___261_1526.unfold_attr);
            unfold_tac = (uu___261_1526.unfold_tac);
            pure_subterms_within_computations =
              (uu___261_1526.pure_subterms_within_computations);
            simplify = (uu___261_1526.simplify);
            erase_universes = (uu___261_1526.erase_universes);
            allow_unbound_universes = (uu___261_1526.allow_unbound_universes);
            reify_ = (uu___261_1526.reify_);
            compress_uvars = (uu___261_1526.compress_uvars);
            no_full_norm = (uu___261_1526.no_full_norm);
            check_no_uvars = (uu___261_1526.check_no_uvars);
            unmeta = (uu___261_1526.unmeta);
            unascribe = (uu___261_1526.unascribe);
            in_full_norm_request = (uu___261_1526.in_full_norm_request);
            weakly_reduce_scrutinee = (uu___261_1526.weakly_reduce_scrutinee)
          }
      | Exclude (Iota ) ->
          let uu___262_1527 = fs  in
          {
            beta = (uu___262_1527.beta);
            iota = false;
            zeta = (uu___262_1527.zeta);
            weak = (uu___262_1527.weak);
            hnf = (uu___262_1527.hnf);
            primops = (uu___262_1527.primops);
            do_not_unfold_pure_lets = (uu___262_1527.do_not_unfold_pure_lets);
            unfold_until = (uu___262_1527.unfold_until);
            unfold_only = (uu___262_1527.unfold_only);
            unfold_fully = (uu___262_1527.unfold_fully);
            unfold_attr = (uu___262_1527.unfold_attr);
            unfold_tac = (uu___262_1527.unfold_tac);
            pure_subterms_within_computations =
              (uu___262_1527.pure_subterms_within_computations);
            simplify = (uu___262_1527.simplify);
            erase_universes = (uu___262_1527.erase_universes);
            allow_unbound_universes = (uu___262_1527.allow_unbound_universes);
            reify_ = (uu___262_1527.reify_);
            compress_uvars = (uu___262_1527.compress_uvars);
            no_full_norm = (uu___262_1527.no_full_norm);
            check_no_uvars = (uu___262_1527.check_no_uvars);
            unmeta = (uu___262_1527.unmeta);
            unascribe = (uu___262_1527.unascribe);
            in_full_norm_request = (uu___262_1527.in_full_norm_request);
            weakly_reduce_scrutinee = (uu___262_1527.weakly_reduce_scrutinee)
          }
      | Exclude (Zeta ) ->
          let uu___263_1528 = fs  in
          {
            beta = (uu___263_1528.beta);
            iota = (uu___263_1528.iota);
            zeta = false;
            weak = (uu___263_1528.weak);
            hnf = (uu___263_1528.hnf);
            primops = (uu___263_1528.primops);
            do_not_unfold_pure_lets = (uu___263_1528.do_not_unfold_pure_lets);
            unfold_until = (uu___263_1528.unfold_until);
            unfold_only = (uu___263_1528.unfold_only);
            unfold_fully = (uu___263_1528.unfold_fully);
            unfold_attr = (uu___263_1528.unfold_attr);
            unfold_tac = (uu___263_1528.unfold_tac);
            pure_subterms_within_computations =
              (uu___263_1528.pure_subterms_within_computations);
            simplify = (uu___263_1528.simplify);
            erase_universes = (uu___263_1528.erase_universes);
            allow_unbound_universes = (uu___263_1528.allow_unbound_universes);
            reify_ = (uu___263_1528.reify_);
            compress_uvars = (uu___263_1528.compress_uvars);
            no_full_norm = (uu___263_1528.no_full_norm);
            check_no_uvars = (uu___263_1528.check_no_uvars);
            unmeta = (uu___263_1528.unmeta);
            unascribe = (uu___263_1528.unascribe);
            in_full_norm_request = (uu___263_1528.in_full_norm_request);
            weakly_reduce_scrutinee = (uu___263_1528.weakly_reduce_scrutinee)
          }
      | Exclude uu____1529 -> failwith "Bad exclude"
      | Weak  ->
          let uu___264_1530 = fs  in
          {
            beta = (uu___264_1530.beta);
            iota = (uu___264_1530.iota);
            zeta = (uu___264_1530.zeta);
            weak = true;
            hnf = (uu___264_1530.hnf);
            primops = (uu___264_1530.primops);
            do_not_unfold_pure_lets = (uu___264_1530.do_not_unfold_pure_lets);
            unfold_until = (uu___264_1530.unfold_until);
            unfold_only = (uu___264_1530.unfold_only);
            unfold_fully = (uu___264_1530.unfold_fully);
            unfold_attr = (uu___264_1530.unfold_attr);
            unfold_tac = (uu___264_1530.unfold_tac);
            pure_subterms_within_computations =
              (uu___264_1530.pure_subterms_within_computations);
            simplify = (uu___264_1530.simplify);
            erase_universes = (uu___264_1530.erase_universes);
            allow_unbound_universes = (uu___264_1530.allow_unbound_universes);
            reify_ = (uu___264_1530.reify_);
            compress_uvars = (uu___264_1530.compress_uvars);
            no_full_norm = (uu___264_1530.no_full_norm);
            check_no_uvars = (uu___264_1530.check_no_uvars);
            unmeta = (uu___264_1530.unmeta);
            unascribe = (uu___264_1530.unascribe);
            in_full_norm_request = (uu___264_1530.in_full_norm_request);
            weakly_reduce_scrutinee = (uu___264_1530.weakly_reduce_scrutinee)
          }
      | HNF  ->
          let uu___265_1531 = fs  in
          {
            beta = (uu___265_1531.beta);
            iota = (uu___265_1531.iota);
            zeta = (uu___265_1531.zeta);
            weak = (uu___265_1531.weak);
            hnf = true;
            primops = (uu___265_1531.primops);
            do_not_unfold_pure_lets = (uu___265_1531.do_not_unfold_pure_lets);
            unfold_until = (uu___265_1531.unfold_until);
            unfold_only = (uu___265_1531.unfold_only);
            unfold_fully = (uu___265_1531.unfold_fully);
            unfold_attr = (uu___265_1531.unfold_attr);
            unfold_tac = (uu___265_1531.unfold_tac);
            pure_subterms_within_computations =
              (uu___265_1531.pure_subterms_within_computations);
            simplify = (uu___265_1531.simplify);
            erase_universes = (uu___265_1531.erase_universes);
            allow_unbound_universes = (uu___265_1531.allow_unbound_universes);
            reify_ = (uu___265_1531.reify_);
            compress_uvars = (uu___265_1531.compress_uvars);
            no_full_norm = (uu___265_1531.no_full_norm);
            check_no_uvars = (uu___265_1531.check_no_uvars);
            unmeta = (uu___265_1531.unmeta);
            unascribe = (uu___265_1531.unascribe);
            in_full_norm_request = (uu___265_1531.in_full_norm_request);
            weakly_reduce_scrutinee = (uu___265_1531.weakly_reduce_scrutinee)
          }
      | Primops  ->
          let uu___266_1532 = fs  in
          {
            beta = (uu___266_1532.beta);
            iota = (uu___266_1532.iota);
            zeta = (uu___266_1532.zeta);
            weak = (uu___266_1532.weak);
            hnf = (uu___266_1532.hnf);
            primops = true;
            do_not_unfold_pure_lets = (uu___266_1532.do_not_unfold_pure_lets);
            unfold_until = (uu___266_1532.unfold_until);
            unfold_only = (uu___266_1532.unfold_only);
            unfold_fully = (uu___266_1532.unfold_fully);
            unfold_attr = (uu___266_1532.unfold_attr);
            unfold_tac = (uu___266_1532.unfold_tac);
            pure_subterms_within_computations =
              (uu___266_1532.pure_subterms_within_computations);
            simplify = (uu___266_1532.simplify);
            erase_universes = (uu___266_1532.erase_universes);
            allow_unbound_universes = (uu___266_1532.allow_unbound_universes);
            reify_ = (uu___266_1532.reify_);
            compress_uvars = (uu___266_1532.compress_uvars);
            no_full_norm = (uu___266_1532.no_full_norm);
            check_no_uvars = (uu___266_1532.check_no_uvars);
            unmeta = (uu___266_1532.unmeta);
            unascribe = (uu___266_1532.unascribe);
            in_full_norm_request = (uu___266_1532.in_full_norm_request);
            weakly_reduce_scrutinee = (uu___266_1532.weakly_reduce_scrutinee)
          }
      | Eager_unfolding  -> fs
      | Inlining  -> fs
      | DoNotUnfoldPureLets  ->
          let uu___267_1533 = fs  in
          {
            beta = (uu___267_1533.beta);
            iota = (uu___267_1533.iota);
            zeta = (uu___267_1533.zeta);
            weak = (uu___267_1533.weak);
            hnf = (uu___267_1533.hnf);
            primops = (uu___267_1533.primops);
            do_not_unfold_pure_lets = true;
            unfold_until = (uu___267_1533.unfold_until);
            unfold_only = (uu___267_1533.unfold_only);
            unfold_fully = (uu___267_1533.unfold_fully);
            unfold_attr = (uu___267_1533.unfold_attr);
            unfold_tac = (uu___267_1533.unfold_tac);
            pure_subterms_within_computations =
              (uu___267_1533.pure_subterms_within_computations);
            simplify = (uu___267_1533.simplify);
            erase_universes = (uu___267_1533.erase_universes);
            allow_unbound_universes = (uu___267_1533.allow_unbound_universes);
            reify_ = (uu___267_1533.reify_);
            compress_uvars = (uu___267_1533.compress_uvars);
            no_full_norm = (uu___267_1533.no_full_norm);
            check_no_uvars = (uu___267_1533.check_no_uvars);
            unmeta = (uu___267_1533.unmeta);
            unascribe = (uu___267_1533.unascribe);
            in_full_norm_request = (uu___267_1533.in_full_norm_request);
            weakly_reduce_scrutinee = (uu___267_1533.weakly_reduce_scrutinee)
          }
      | UnfoldUntil d ->
          let uu___268_1535 = fs  in
          {
            beta = (uu___268_1535.beta);
            iota = (uu___268_1535.iota);
            zeta = (uu___268_1535.zeta);
            weak = (uu___268_1535.weak);
            hnf = (uu___268_1535.hnf);
            primops = (uu___268_1535.primops);
            do_not_unfold_pure_lets = (uu___268_1535.do_not_unfold_pure_lets);
            unfold_until = (FStar_Pervasives_Native.Some d);
            unfold_only = (uu___268_1535.unfold_only);
            unfold_fully = (uu___268_1535.unfold_fully);
            unfold_attr = (uu___268_1535.unfold_attr);
            unfold_tac = (uu___268_1535.unfold_tac);
            pure_subterms_within_computations =
              (uu___268_1535.pure_subterms_within_computations);
            simplify = (uu___268_1535.simplify);
            erase_universes = (uu___268_1535.erase_universes);
            allow_unbound_universes = (uu___268_1535.allow_unbound_universes);
            reify_ = (uu___268_1535.reify_);
            compress_uvars = (uu___268_1535.compress_uvars);
            no_full_norm = (uu___268_1535.no_full_norm);
            check_no_uvars = (uu___268_1535.check_no_uvars);
            unmeta = (uu___268_1535.unmeta);
            unascribe = (uu___268_1535.unascribe);
            in_full_norm_request = (uu___268_1535.in_full_norm_request);
            weakly_reduce_scrutinee = (uu___268_1535.weakly_reduce_scrutinee)
          }
      | UnfoldOnly lids ->
          let uu___269_1539 = fs  in
          {
            beta = (uu___269_1539.beta);
            iota = (uu___269_1539.iota);
            zeta = (uu___269_1539.zeta);
            weak = (uu___269_1539.weak);
            hnf = (uu___269_1539.hnf);
            primops = (uu___269_1539.primops);
            do_not_unfold_pure_lets = (uu___269_1539.do_not_unfold_pure_lets);
            unfold_until = (uu___269_1539.unfold_until);
            unfold_only = (FStar_Pervasives_Native.Some lids);
            unfold_fully = (uu___269_1539.unfold_fully);
            unfold_attr = (uu___269_1539.unfold_attr);
            unfold_tac = (uu___269_1539.unfold_tac);
            pure_subterms_within_computations =
              (uu___269_1539.pure_subterms_within_computations);
            simplify = (uu___269_1539.simplify);
            erase_universes = (uu___269_1539.erase_universes);
            allow_unbound_universes = (uu___269_1539.allow_unbound_universes);
            reify_ = (uu___269_1539.reify_);
            compress_uvars = (uu___269_1539.compress_uvars);
            no_full_norm = (uu___269_1539.no_full_norm);
            check_no_uvars = (uu___269_1539.check_no_uvars);
            unmeta = (uu___269_1539.unmeta);
            unascribe = (uu___269_1539.unascribe);
            in_full_norm_request = (uu___269_1539.in_full_norm_request);
            weakly_reduce_scrutinee = (uu___269_1539.weakly_reduce_scrutinee)
          }
      | UnfoldFully lids ->
          let uu___270_1545 = fs  in
          {
            beta = (uu___270_1545.beta);
            iota = (uu___270_1545.iota);
            zeta = (uu___270_1545.zeta);
            weak = (uu___270_1545.weak);
            hnf = (uu___270_1545.hnf);
            primops = (uu___270_1545.primops);
            do_not_unfold_pure_lets = (uu___270_1545.do_not_unfold_pure_lets);
            unfold_until = (uu___270_1545.unfold_until);
            unfold_only = (uu___270_1545.unfold_only);
            unfold_fully = (FStar_Pervasives_Native.Some lids);
            unfold_attr = (uu___270_1545.unfold_attr);
            unfold_tac = (uu___270_1545.unfold_tac);
            pure_subterms_within_computations =
              (uu___270_1545.pure_subterms_within_computations);
            simplify = (uu___270_1545.simplify);
            erase_universes = (uu___270_1545.erase_universes);
            allow_unbound_universes = (uu___270_1545.allow_unbound_universes);
            reify_ = (uu___270_1545.reify_);
            compress_uvars = (uu___270_1545.compress_uvars);
            no_full_norm = (uu___270_1545.no_full_norm);
            check_no_uvars = (uu___270_1545.check_no_uvars);
            unmeta = (uu___270_1545.unmeta);
            unascribe = (uu___270_1545.unascribe);
            in_full_norm_request = (uu___270_1545.in_full_norm_request);
            weakly_reduce_scrutinee = (uu___270_1545.weakly_reduce_scrutinee)
          }
      | UnfoldAttr attr ->
          let uu___271_1549 = fs  in
          {
            beta = (uu___271_1549.beta);
            iota = (uu___271_1549.iota);
            zeta = (uu___271_1549.zeta);
            weak = (uu___271_1549.weak);
            hnf = (uu___271_1549.hnf);
            primops = (uu___271_1549.primops);
            do_not_unfold_pure_lets = (uu___271_1549.do_not_unfold_pure_lets);
            unfold_until = (uu___271_1549.unfold_until);
            unfold_only = (uu___271_1549.unfold_only);
            unfold_fully = (uu___271_1549.unfold_fully);
            unfold_attr = (add_opt attr fs.unfold_attr);
            unfold_tac = (uu___271_1549.unfold_tac);
            pure_subterms_within_computations =
              (uu___271_1549.pure_subterms_within_computations);
            simplify = (uu___271_1549.simplify);
            erase_universes = (uu___271_1549.erase_universes);
            allow_unbound_universes = (uu___271_1549.allow_unbound_universes);
            reify_ = (uu___271_1549.reify_);
            compress_uvars = (uu___271_1549.compress_uvars);
            no_full_norm = (uu___271_1549.no_full_norm);
            check_no_uvars = (uu___271_1549.check_no_uvars);
            unmeta = (uu___271_1549.unmeta);
            unascribe = (uu___271_1549.unascribe);
            in_full_norm_request = (uu___271_1549.in_full_norm_request);
            weakly_reduce_scrutinee = (uu___271_1549.weakly_reduce_scrutinee)
          }
      | UnfoldTac  ->
          let uu___272_1550 = fs  in
          {
            beta = (uu___272_1550.beta);
            iota = (uu___272_1550.iota);
            zeta = (uu___272_1550.zeta);
            weak = (uu___272_1550.weak);
            hnf = (uu___272_1550.hnf);
            primops = (uu___272_1550.primops);
            do_not_unfold_pure_lets = (uu___272_1550.do_not_unfold_pure_lets);
            unfold_until = (uu___272_1550.unfold_until);
            unfold_only = (uu___272_1550.unfold_only);
            unfold_fully = (uu___272_1550.unfold_fully);
            unfold_attr = (uu___272_1550.unfold_attr);
            unfold_tac = true;
            pure_subterms_within_computations =
              (uu___272_1550.pure_subterms_within_computations);
            simplify = (uu___272_1550.simplify);
            erase_universes = (uu___272_1550.erase_universes);
            allow_unbound_universes = (uu___272_1550.allow_unbound_universes);
            reify_ = (uu___272_1550.reify_);
            compress_uvars = (uu___272_1550.compress_uvars);
            no_full_norm = (uu___272_1550.no_full_norm);
            check_no_uvars = (uu___272_1550.check_no_uvars);
            unmeta = (uu___272_1550.unmeta);
            unascribe = (uu___272_1550.unascribe);
            in_full_norm_request = (uu___272_1550.in_full_norm_request);
            weakly_reduce_scrutinee = (uu___272_1550.weakly_reduce_scrutinee)
          }
      | PureSubtermsWithinComputations  ->
          let uu___273_1551 = fs  in
          {
            beta = (uu___273_1551.beta);
            iota = (uu___273_1551.iota);
            zeta = (uu___273_1551.zeta);
            weak = (uu___273_1551.weak);
            hnf = (uu___273_1551.hnf);
            primops = (uu___273_1551.primops);
            do_not_unfold_pure_lets = (uu___273_1551.do_not_unfold_pure_lets);
            unfold_until = (uu___273_1551.unfold_until);
            unfold_only = (uu___273_1551.unfold_only);
            unfold_fully = (uu___273_1551.unfold_fully);
            unfold_attr = (uu___273_1551.unfold_attr);
            unfold_tac = (uu___273_1551.unfold_tac);
            pure_subterms_within_computations = true;
            simplify = (uu___273_1551.simplify);
            erase_universes = (uu___273_1551.erase_universes);
            allow_unbound_universes = (uu___273_1551.allow_unbound_universes);
            reify_ = (uu___273_1551.reify_);
            compress_uvars = (uu___273_1551.compress_uvars);
            no_full_norm = (uu___273_1551.no_full_norm);
            check_no_uvars = (uu___273_1551.check_no_uvars);
            unmeta = (uu___273_1551.unmeta);
            unascribe = (uu___273_1551.unascribe);
            in_full_norm_request = (uu___273_1551.in_full_norm_request);
            weakly_reduce_scrutinee = (uu___273_1551.weakly_reduce_scrutinee)
          }
      | Simplify  ->
          let uu___274_1552 = fs  in
          {
            beta = (uu___274_1552.beta);
            iota = (uu___274_1552.iota);
            zeta = (uu___274_1552.zeta);
            weak = (uu___274_1552.weak);
            hnf = (uu___274_1552.hnf);
            primops = (uu___274_1552.primops);
            do_not_unfold_pure_lets = (uu___274_1552.do_not_unfold_pure_lets);
            unfold_until = (uu___274_1552.unfold_until);
            unfold_only = (uu___274_1552.unfold_only);
            unfold_fully = (uu___274_1552.unfold_fully);
            unfold_attr = (uu___274_1552.unfold_attr);
            unfold_tac = (uu___274_1552.unfold_tac);
            pure_subterms_within_computations =
              (uu___274_1552.pure_subterms_within_computations);
            simplify = true;
            erase_universes = (uu___274_1552.erase_universes);
            allow_unbound_universes = (uu___274_1552.allow_unbound_universes);
            reify_ = (uu___274_1552.reify_);
            compress_uvars = (uu___274_1552.compress_uvars);
            no_full_norm = (uu___274_1552.no_full_norm);
            check_no_uvars = (uu___274_1552.check_no_uvars);
            unmeta = (uu___274_1552.unmeta);
            unascribe = (uu___274_1552.unascribe);
            in_full_norm_request = (uu___274_1552.in_full_norm_request);
            weakly_reduce_scrutinee = (uu___274_1552.weakly_reduce_scrutinee)
          }
      | EraseUniverses  ->
          let uu___275_1553 = fs  in
          {
            beta = (uu___275_1553.beta);
            iota = (uu___275_1553.iota);
            zeta = (uu___275_1553.zeta);
            weak = (uu___275_1553.weak);
            hnf = (uu___275_1553.hnf);
            primops = (uu___275_1553.primops);
            do_not_unfold_pure_lets = (uu___275_1553.do_not_unfold_pure_lets);
            unfold_until = (uu___275_1553.unfold_until);
            unfold_only = (uu___275_1553.unfold_only);
            unfold_fully = (uu___275_1553.unfold_fully);
            unfold_attr = (uu___275_1553.unfold_attr);
            unfold_tac = (uu___275_1553.unfold_tac);
            pure_subterms_within_computations =
              (uu___275_1553.pure_subterms_within_computations);
            simplify = (uu___275_1553.simplify);
            erase_universes = true;
            allow_unbound_universes = (uu___275_1553.allow_unbound_universes);
            reify_ = (uu___275_1553.reify_);
            compress_uvars = (uu___275_1553.compress_uvars);
            no_full_norm = (uu___275_1553.no_full_norm);
            check_no_uvars = (uu___275_1553.check_no_uvars);
            unmeta = (uu___275_1553.unmeta);
            unascribe = (uu___275_1553.unascribe);
            in_full_norm_request = (uu___275_1553.in_full_norm_request);
            weakly_reduce_scrutinee = (uu___275_1553.weakly_reduce_scrutinee)
          }
      | AllowUnboundUniverses  ->
          let uu___276_1554 = fs  in
          {
            beta = (uu___276_1554.beta);
            iota = (uu___276_1554.iota);
            zeta = (uu___276_1554.zeta);
            weak = (uu___276_1554.weak);
            hnf = (uu___276_1554.hnf);
            primops = (uu___276_1554.primops);
            do_not_unfold_pure_lets = (uu___276_1554.do_not_unfold_pure_lets);
            unfold_until = (uu___276_1554.unfold_until);
            unfold_only = (uu___276_1554.unfold_only);
            unfold_fully = (uu___276_1554.unfold_fully);
            unfold_attr = (uu___276_1554.unfold_attr);
            unfold_tac = (uu___276_1554.unfold_tac);
            pure_subterms_within_computations =
              (uu___276_1554.pure_subterms_within_computations);
            simplify = (uu___276_1554.simplify);
            erase_universes = (uu___276_1554.erase_universes);
            allow_unbound_universes = true;
            reify_ = (uu___276_1554.reify_);
            compress_uvars = (uu___276_1554.compress_uvars);
            no_full_norm = (uu___276_1554.no_full_norm);
            check_no_uvars = (uu___276_1554.check_no_uvars);
            unmeta = (uu___276_1554.unmeta);
            unascribe = (uu___276_1554.unascribe);
            in_full_norm_request = (uu___276_1554.in_full_norm_request);
            weakly_reduce_scrutinee = (uu___276_1554.weakly_reduce_scrutinee)
          }
      | Reify  ->
          let uu___277_1555 = fs  in
          {
            beta = (uu___277_1555.beta);
            iota = (uu___277_1555.iota);
            zeta = (uu___277_1555.zeta);
            weak = (uu___277_1555.weak);
            hnf = (uu___277_1555.hnf);
            primops = (uu___277_1555.primops);
            do_not_unfold_pure_lets = (uu___277_1555.do_not_unfold_pure_lets);
            unfold_until = (uu___277_1555.unfold_until);
            unfold_only = (uu___277_1555.unfold_only);
            unfold_fully = (uu___277_1555.unfold_fully);
            unfold_attr = (uu___277_1555.unfold_attr);
            unfold_tac = (uu___277_1555.unfold_tac);
            pure_subterms_within_computations =
              (uu___277_1555.pure_subterms_within_computations);
            simplify = (uu___277_1555.simplify);
            erase_universes = (uu___277_1555.erase_universes);
            allow_unbound_universes = (uu___277_1555.allow_unbound_universes);
            reify_ = true;
            compress_uvars = (uu___277_1555.compress_uvars);
            no_full_norm = (uu___277_1555.no_full_norm);
            check_no_uvars = (uu___277_1555.check_no_uvars);
            unmeta = (uu___277_1555.unmeta);
            unascribe = (uu___277_1555.unascribe);
            in_full_norm_request = (uu___277_1555.in_full_norm_request);
            weakly_reduce_scrutinee = (uu___277_1555.weakly_reduce_scrutinee)
          }
      | CompressUvars  ->
          let uu___278_1556 = fs  in
          {
            beta = (uu___278_1556.beta);
            iota = (uu___278_1556.iota);
            zeta = (uu___278_1556.zeta);
            weak = (uu___278_1556.weak);
            hnf = (uu___278_1556.hnf);
            primops = (uu___278_1556.primops);
            do_not_unfold_pure_lets = (uu___278_1556.do_not_unfold_pure_lets);
            unfold_until = (uu___278_1556.unfold_until);
            unfold_only = (uu___278_1556.unfold_only);
            unfold_fully = (uu___278_1556.unfold_fully);
            unfold_attr = (uu___278_1556.unfold_attr);
            unfold_tac = (uu___278_1556.unfold_tac);
            pure_subterms_within_computations =
              (uu___278_1556.pure_subterms_within_computations);
            simplify = (uu___278_1556.simplify);
            erase_universes = (uu___278_1556.erase_universes);
            allow_unbound_universes = (uu___278_1556.allow_unbound_universes);
            reify_ = (uu___278_1556.reify_);
            compress_uvars = true;
            no_full_norm = (uu___278_1556.no_full_norm);
            check_no_uvars = (uu___278_1556.check_no_uvars);
            unmeta = (uu___278_1556.unmeta);
            unascribe = (uu___278_1556.unascribe);
            in_full_norm_request = (uu___278_1556.in_full_norm_request);
            weakly_reduce_scrutinee = (uu___278_1556.weakly_reduce_scrutinee)
          }
      | NoFullNorm  ->
          let uu___279_1557 = fs  in
          {
            beta = (uu___279_1557.beta);
            iota = (uu___279_1557.iota);
            zeta = (uu___279_1557.zeta);
            weak = (uu___279_1557.weak);
            hnf = (uu___279_1557.hnf);
            primops = (uu___279_1557.primops);
            do_not_unfold_pure_lets = (uu___279_1557.do_not_unfold_pure_lets);
            unfold_until = (uu___279_1557.unfold_until);
            unfold_only = (uu___279_1557.unfold_only);
            unfold_fully = (uu___279_1557.unfold_fully);
            unfold_attr = (uu___279_1557.unfold_attr);
            unfold_tac = (uu___279_1557.unfold_tac);
            pure_subterms_within_computations =
              (uu___279_1557.pure_subterms_within_computations);
            simplify = (uu___279_1557.simplify);
            erase_universes = (uu___279_1557.erase_universes);
            allow_unbound_universes = (uu___279_1557.allow_unbound_universes);
            reify_ = (uu___279_1557.reify_);
            compress_uvars = (uu___279_1557.compress_uvars);
            no_full_norm = true;
            check_no_uvars = (uu___279_1557.check_no_uvars);
            unmeta = (uu___279_1557.unmeta);
            unascribe = (uu___279_1557.unascribe);
            in_full_norm_request = (uu___279_1557.in_full_norm_request);
            weakly_reduce_scrutinee = (uu___279_1557.weakly_reduce_scrutinee)
          }
      | CheckNoUvars  ->
          let uu___280_1558 = fs  in
          {
            beta = (uu___280_1558.beta);
            iota = (uu___280_1558.iota);
            zeta = (uu___280_1558.zeta);
            weak = (uu___280_1558.weak);
            hnf = (uu___280_1558.hnf);
            primops = (uu___280_1558.primops);
            do_not_unfold_pure_lets = (uu___280_1558.do_not_unfold_pure_lets);
            unfold_until = (uu___280_1558.unfold_until);
            unfold_only = (uu___280_1558.unfold_only);
            unfold_fully = (uu___280_1558.unfold_fully);
            unfold_attr = (uu___280_1558.unfold_attr);
            unfold_tac = (uu___280_1558.unfold_tac);
            pure_subterms_within_computations =
              (uu___280_1558.pure_subterms_within_computations);
            simplify = (uu___280_1558.simplify);
            erase_universes = (uu___280_1558.erase_universes);
            allow_unbound_universes = (uu___280_1558.allow_unbound_universes);
            reify_ = (uu___280_1558.reify_);
            compress_uvars = (uu___280_1558.compress_uvars);
            no_full_norm = (uu___280_1558.no_full_norm);
            check_no_uvars = true;
            unmeta = (uu___280_1558.unmeta);
            unascribe = (uu___280_1558.unascribe);
            in_full_norm_request = (uu___280_1558.in_full_norm_request);
            weakly_reduce_scrutinee = (uu___280_1558.weakly_reduce_scrutinee)
          }
      | Unmeta  ->
          let uu___281_1559 = fs  in
          {
            beta = (uu___281_1559.beta);
            iota = (uu___281_1559.iota);
            zeta = (uu___281_1559.zeta);
            weak = (uu___281_1559.weak);
            hnf = (uu___281_1559.hnf);
            primops = (uu___281_1559.primops);
            do_not_unfold_pure_lets = (uu___281_1559.do_not_unfold_pure_lets);
            unfold_until = (uu___281_1559.unfold_until);
            unfold_only = (uu___281_1559.unfold_only);
            unfold_fully = (uu___281_1559.unfold_fully);
            unfold_attr = (uu___281_1559.unfold_attr);
            unfold_tac = (uu___281_1559.unfold_tac);
            pure_subterms_within_computations =
              (uu___281_1559.pure_subterms_within_computations);
            simplify = (uu___281_1559.simplify);
            erase_universes = (uu___281_1559.erase_universes);
            allow_unbound_universes = (uu___281_1559.allow_unbound_universes);
            reify_ = (uu___281_1559.reify_);
            compress_uvars = (uu___281_1559.compress_uvars);
            no_full_norm = (uu___281_1559.no_full_norm);
            check_no_uvars = (uu___281_1559.check_no_uvars);
            unmeta = true;
            unascribe = (uu___281_1559.unascribe);
            in_full_norm_request = (uu___281_1559.in_full_norm_request);
            weakly_reduce_scrutinee = (uu___281_1559.weakly_reduce_scrutinee)
          }
      | Unascribe  ->
          let uu___282_1560 = fs  in
          {
            beta = (uu___282_1560.beta);
            iota = (uu___282_1560.iota);
            zeta = (uu___282_1560.zeta);
            weak = (uu___282_1560.weak);
            hnf = (uu___282_1560.hnf);
            primops = (uu___282_1560.primops);
            do_not_unfold_pure_lets = (uu___282_1560.do_not_unfold_pure_lets);
            unfold_until = (uu___282_1560.unfold_until);
            unfold_only = (uu___282_1560.unfold_only);
            unfold_fully = (uu___282_1560.unfold_fully);
            unfold_attr = (uu___282_1560.unfold_attr);
            unfold_tac = (uu___282_1560.unfold_tac);
            pure_subterms_within_computations =
              (uu___282_1560.pure_subterms_within_computations);
            simplify = (uu___282_1560.simplify);
            erase_universes = (uu___282_1560.erase_universes);
            allow_unbound_universes = (uu___282_1560.allow_unbound_universes);
            reify_ = (uu___282_1560.reify_);
            compress_uvars = (uu___282_1560.compress_uvars);
            no_full_norm = (uu___282_1560.no_full_norm);
            check_no_uvars = (uu___282_1560.check_no_uvars);
            unmeta = (uu___282_1560.unmeta);
            unascribe = true;
            in_full_norm_request = (uu___282_1560.in_full_norm_request);
            weakly_reduce_scrutinee = (uu___282_1560.weakly_reduce_scrutinee)
          }
  
let rec (to_fsteps : step Prims.list -> fsteps) =
  fun s  -> FStar_List.fold_right fstep_add_one s default_steps 
type psc =
  {
  psc_range: FStar_Range.range ;
  psc_subst: unit -> FStar_Syntax_Syntax.subst_t }
let (__proj__Mkpsc__item__psc_range : psc -> FStar_Range.range) =
  fun projectee  ->
    match projectee with
    | { psc_range = __fname__psc_range; psc_subst = __fname__psc_subst;_} ->
        __fname__psc_range
  
let (__proj__Mkpsc__item__psc_subst :
  psc -> unit -> FStar_Syntax_Syntax.subst_t) =
  fun projectee  ->
    match projectee with
    | { psc_range = __fname__psc_range; psc_subst = __fname__psc_subst;_} ->
        __fname__psc_subst
  
let (null_psc : psc) =
  { psc_range = FStar_Range.dummyRange; psc_subst = (fun uu____1613  -> []) } 
let (psc_range : psc -> FStar_Range.range) = fun psc  -> psc.psc_range 
let (psc_subst : psc -> FStar_Syntax_Syntax.subst_t) =
  fun psc  -> psc.psc_subst () 
type primitive_step =
  {
  name: FStar_Ident.lid ;
  arity: Prims.int ;
  auto_reflect: Prims.int FStar_Pervasives_Native.option ;
  strong_reduction_ok: Prims.bool ;
  requires_binder_substitution: Prims.bool ;
  interpretation:
    psc ->
      FStar_Syntax_Syntax.args ->
        FStar_Syntax_Syntax.term FStar_Pervasives_Native.option
    }
let (__proj__Mkprimitive_step__item__name :
  primitive_step -> FStar_Ident.lid) =
  fun projectee  ->
    match projectee with
    | { name = __fname__name; arity = __fname__arity;
        auto_reflect = __fname__auto_reflect;
        strong_reduction_ok = __fname__strong_reduction_ok;
        requires_binder_substitution = __fname__requires_binder_substitution;
        interpretation = __fname__interpretation;_} -> __fname__name
  
let (__proj__Mkprimitive_step__item__arity : primitive_step -> Prims.int) =
  fun projectee  ->
    match projectee with
    | { name = __fname__name; arity = __fname__arity;
        auto_reflect = __fname__auto_reflect;
        strong_reduction_ok = __fname__strong_reduction_ok;
        requires_binder_substitution = __fname__requires_binder_substitution;
        interpretation = __fname__interpretation;_} -> __fname__arity
  
let (__proj__Mkprimitive_step__item__auto_reflect :
  primitive_step -> Prims.int FStar_Pervasives_Native.option) =
  fun projectee  ->
    match projectee with
    | { name = __fname__name; arity = __fname__arity;
        auto_reflect = __fname__auto_reflect;
        strong_reduction_ok = __fname__strong_reduction_ok;
        requires_binder_substitution = __fname__requires_binder_substitution;
        interpretation = __fname__interpretation;_} -> __fname__auto_reflect
  
let (__proj__Mkprimitive_step__item__strong_reduction_ok :
  primitive_step -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | { name = __fname__name; arity = __fname__arity;
        auto_reflect = __fname__auto_reflect;
        strong_reduction_ok = __fname__strong_reduction_ok;
        requires_binder_substitution = __fname__requires_binder_substitution;
        interpretation = __fname__interpretation;_} ->
        __fname__strong_reduction_ok
  
let (__proj__Mkprimitive_step__item__requires_binder_substitution :
  primitive_step -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | { name = __fname__name; arity = __fname__arity;
        auto_reflect = __fname__auto_reflect;
        strong_reduction_ok = __fname__strong_reduction_ok;
        requires_binder_substitution = __fname__requires_binder_substitution;
        interpretation = __fname__interpretation;_} ->
        __fname__requires_binder_substitution
  
let (__proj__Mkprimitive_step__item__interpretation :
  primitive_step ->
    psc ->
      FStar_Syntax_Syntax.args ->
        FStar_Syntax_Syntax.term FStar_Pervasives_Native.option)
  =
  fun projectee  ->
    match projectee with
    | { name = __fname__name; arity = __fname__arity;
        auto_reflect = __fname__auto_reflect;
        strong_reduction_ok = __fname__strong_reduction_ok;
        requires_binder_substitution = __fname__requires_binder_substitution;
        interpretation = __fname__interpretation;_} ->
        __fname__interpretation
  
type closure =
  | Clos of
  ((FStar_Syntax_Syntax.binder FStar_Pervasives_Native.option,closure)
     FStar_Pervasives_Native.tuple2 Prims.list,FStar_Syntax_Syntax.term,
  ((FStar_Syntax_Syntax.binder FStar_Pervasives_Native.option,closure)
     FStar_Pervasives_Native.tuple2 Prims.list,FStar_Syntax_Syntax.term)
    FStar_Pervasives_Native.tuple2 FStar_Syntax_Syntax.memo,Prims.bool)
  FStar_Pervasives_Native.tuple4 
  | Univ of FStar_Syntax_Syntax.universe 
  | Dummy 
let (uu___is_Clos : closure -> Prims.bool) =
  fun projectee  ->
    match projectee with | Clos _0 -> true | uu____1902 -> false
  
let (__proj__Clos__item___0 :
  closure ->
    ((FStar_Syntax_Syntax.binder FStar_Pervasives_Native.option,closure)
       FStar_Pervasives_Native.tuple2 Prims.list,FStar_Syntax_Syntax.term,
      ((FStar_Syntax_Syntax.binder FStar_Pervasives_Native.option,closure)
         FStar_Pervasives_Native.tuple2 Prims.list,FStar_Syntax_Syntax.term)
        FStar_Pervasives_Native.tuple2 FStar_Syntax_Syntax.memo,Prims.bool)
      FStar_Pervasives_Native.tuple4)
  = fun projectee  -> match projectee with | Clos _0 -> _0 
let (uu___is_Univ : closure -> Prims.bool) =
  fun projectee  ->
    match projectee with | Univ _0 -> true | uu____2006 -> false
  
let (__proj__Univ__item___0 : closure -> FStar_Syntax_Syntax.universe) =
  fun projectee  -> match projectee with | Univ _0 -> _0 
let (uu___is_Dummy : closure -> Prims.bool) =
  fun projectee  ->
    match projectee with | Dummy  -> true | uu____2019 -> false
  
type env =
  (FStar_Syntax_Syntax.binder FStar_Pervasives_Native.option,closure)
    FStar_Pervasives_Native.tuple2 Prims.list
let (dummy :
  (FStar_Syntax_Syntax.binder FStar_Pervasives_Native.option,closure)
    FStar_Pervasives_Native.tuple2)
  = (FStar_Pervasives_Native.None, Dummy) 
type debug_switches =
  {
  gen: Prims.bool ;
  primop: Prims.bool ;
  unfolding: Prims.bool ;
  b380: Prims.bool ;
  wpe: Prims.bool ;
  norm_delayed: Prims.bool ;
  print_normalized: Prims.bool }
let (__proj__Mkdebug_switches__item__gen : debug_switches -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | { gen = __fname__gen; primop = __fname__primop;
        unfolding = __fname__unfolding; b380 = __fname__b380;
        wpe = __fname__wpe; norm_delayed = __fname__norm_delayed;
        print_normalized = __fname__print_normalized;_} -> __fname__gen
  
let (__proj__Mkdebug_switches__item__primop : debug_switches -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | { gen = __fname__gen; primop = __fname__primop;
        unfolding = __fname__unfolding; b380 = __fname__b380;
        wpe = __fname__wpe; norm_delayed = __fname__norm_delayed;
        print_normalized = __fname__print_normalized;_} -> __fname__primop
  
let (__proj__Mkdebug_switches__item__unfolding :
  debug_switches -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | { gen = __fname__gen; primop = __fname__primop;
        unfolding = __fname__unfolding; b380 = __fname__b380;
        wpe = __fname__wpe; norm_delayed = __fname__norm_delayed;
        print_normalized = __fname__print_normalized;_} -> __fname__unfolding
  
let (__proj__Mkdebug_switches__item__b380 : debug_switches -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | { gen = __fname__gen; primop = __fname__primop;
        unfolding = __fname__unfolding; b380 = __fname__b380;
        wpe = __fname__wpe; norm_delayed = __fname__norm_delayed;
        print_normalized = __fname__print_normalized;_} -> __fname__b380
  
let (__proj__Mkdebug_switches__item__wpe : debug_switches -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | { gen = __fname__gen; primop = __fname__primop;
        unfolding = __fname__unfolding; b380 = __fname__b380;
        wpe = __fname__wpe; norm_delayed = __fname__norm_delayed;
        print_normalized = __fname__print_normalized;_} -> __fname__wpe
  
let (__proj__Mkdebug_switches__item__norm_delayed :
  debug_switches -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | { gen = __fname__gen; primop = __fname__primop;
        unfolding = __fname__unfolding; b380 = __fname__b380;
        wpe = __fname__wpe; norm_delayed = __fname__norm_delayed;
        print_normalized = __fname__print_normalized;_} ->
        __fname__norm_delayed
  
let (__proj__Mkdebug_switches__item__print_normalized :
  debug_switches -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | { gen = __fname__gen; primop = __fname__primop;
        unfolding = __fname__unfolding; b380 = __fname__b380;
        wpe = __fname__wpe; norm_delayed = __fname__norm_delayed;
        print_normalized = __fname__print_normalized;_} ->
        __fname__print_normalized
  
type cfg =
  {
  steps: fsteps ;
  tcenv: FStar_TypeChecker_Env.env ;
  debug: debug_switches ;
  delta_level: FStar_TypeChecker_Env.delta_level Prims.list ;
  primitive_steps: primitive_step FStar_Util.psmap ;
  strong: Prims.bool ;
  memoize_lazy: Prims.bool ;
  normalize_pure_lets: Prims.bool }
let (__proj__Mkcfg__item__steps : cfg -> fsteps) =
  fun projectee  ->
    match projectee with
    | { steps = __fname__steps; tcenv = __fname__tcenv;
        debug = __fname__debug; delta_level = __fname__delta_level;
        primitive_steps = __fname__primitive_steps; strong = __fname__strong;
        memoize_lazy = __fname__memoize_lazy;
        normalize_pure_lets = __fname__normalize_pure_lets;_} ->
        __fname__steps
  
let (__proj__Mkcfg__item__tcenv : cfg -> FStar_TypeChecker_Env.env) =
  fun projectee  ->
    match projectee with
    | { steps = __fname__steps; tcenv = __fname__tcenv;
        debug = __fname__debug; delta_level = __fname__delta_level;
        primitive_steps = __fname__primitive_steps; strong = __fname__strong;
        memoize_lazy = __fname__memoize_lazy;
        normalize_pure_lets = __fname__normalize_pure_lets;_} ->
        __fname__tcenv
  
let (__proj__Mkcfg__item__debug : cfg -> debug_switches) =
  fun projectee  ->
    match projectee with
    | { steps = __fname__steps; tcenv = __fname__tcenv;
        debug = __fname__debug; delta_level = __fname__delta_level;
        primitive_steps = __fname__primitive_steps; strong = __fname__strong;
        memoize_lazy = __fname__memoize_lazy;
        normalize_pure_lets = __fname__normalize_pure_lets;_} ->
        __fname__debug
  
let (__proj__Mkcfg__item__delta_level :
  cfg -> FStar_TypeChecker_Env.delta_level Prims.list) =
  fun projectee  ->
    match projectee with
    | { steps = __fname__steps; tcenv = __fname__tcenv;
        debug = __fname__debug; delta_level = __fname__delta_level;
        primitive_steps = __fname__primitive_steps; strong = __fname__strong;
        memoize_lazy = __fname__memoize_lazy;
        normalize_pure_lets = __fname__normalize_pure_lets;_} ->
        __fname__delta_level
  
let (__proj__Mkcfg__item__primitive_steps :
  cfg -> primitive_step FStar_Util.psmap) =
  fun projectee  ->
    match projectee with
    | { steps = __fname__steps; tcenv = __fname__tcenv;
        debug = __fname__debug; delta_level = __fname__delta_level;
        primitive_steps = __fname__primitive_steps; strong = __fname__strong;
        memoize_lazy = __fname__memoize_lazy;
        normalize_pure_lets = __fname__normalize_pure_lets;_} ->
        __fname__primitive_steps
  
let (__proj__Mkcfg__item__strong : cfg -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | { steps = __fname__steps; tcenv = __fname__tcenv;
        debug = __fname__debug; delta_level = __fname__delta_level;
        primitive_steps = __fname__primitive_steps; strong = __fname__strong;
        memoize_lazy = __fname__memoize_lazy;
        normalize_pure_lets = __fname__normalize_pure_lets;_} ->
        __fname__strong
  
let (__proj__Mkcfg__item__memoize_lazy : cfg -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | { steps = __fname__steps; tcenv = __fname__tcenv;
        debug = __fname__debug; delta_level = __fname__delta_level;
        primitive_steps = __fname__primitive_steps; strong = __fname__strong;
        memoize_lazy = __fname__memoize_lazy;
        normalize_pure_lets = __fname__normalize_pure_lets;_} ->
        __fname__memoize_lazy
  
let (__proj__Mkcfg__item__normalize_pure_lets : cfg -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | { steps = __fname__steps; tcenv = __fname__tcenv;
        debug = __fname__debug; delta_level = __fname__delta_level;
        primitive_steps = __fname__primitive_steps; strong = __fname__strong;
        memoize_lazy = __fname__memoize_lazy;
        normalize_pure_lets = __fname__normalize_pure_lets;_} ->
        __fname__normalize_pure_lets
  
let (add_steps :
  primitive_step FStar_Util.psmap ->
    primitive_step Prims.list -> primitive_step FStar_Util.psmap)
  =
  fun m  ->
    fun l  ->
      FStar_List.fold_right
        (fun p  ->
           fun m1  ->
             let uu____2374 = FStar_Ident.text_of_lid p.name  in
             FStar_Util.psmap_add m1 uu____2374 p) l m
  
let (prim_from_list :
  primitive_step Prims.list -> primitive_step FStar_Util.psmap) =
  fun l  ->
    let uu____2388 = FStar_Util.psmap_empty ()  in add_steps uu____2388 l
  
let (find_prim_step :
  cfg ->
    FStar_Syntax_Syntax.fv -> primitive_step FStar_Pervasives_Native.option)
  =
  fun cfg  ->
    fun fv  ->
      let uu____2403 =
        FStar_Ident.text_of_lid
          (fv.FStar_Syntax_Syntax.fv_name).FStar_Syntax_Syntax.v
         in
      FStar_Util.psmap_try_find cfg.primitive_steps uu____2403
  
type branches =
  (FStar_Syntax_Syntax.pat,FStar_Syntax_Syntax.term
                             FStar_Pervasives_Native.option,FStar_Syntax_Syntax.term)
    FStar_Pervasives_Native.tuple3 Prims.list
type stack_elt =
  | Arg of (closure,FStar_Syntax_Syntax.aqual,FStar_Range.range)
  FStar_Pervasives_Native.tuple3 
  | UnivArgs of (FStar_Syntax_Syntax.universe Prims.list,FStar_Range.range)
  FStar_Pervasives_Native.tuple2 
  | MemoLazy of (env,FStar_Syntax_Syntax.term) FStar_Pervasives_Native.tuple2
  FStar_Syntax_Syntax.memo 
  | Match of (env,branches,cfg,FStar_Range.range)
  FStar_Pervasives_Native.tuple4 
  | Abs of
  (env,FStar_Syntax_Syntax.binders,env,FStar_Syntax_Syntax.residual_comp
                                         FStar_Pervasives_Native.option,
  FStar_Range.range) FStar_Pervasives_Native.tuple5 
  | App of
  (env,FStar_Syntax_Syntax.term,FStar_Syntax_Syntax.aqual,FStar_Range.range)
  FStar_Pervasives_Native.tuple4 
  | Meta of (env,FStar_Syntax_Syntax.metadata,FStar_Range.range)
  FStar_Pervasives_Native.tuple3 
  | Let of
  (env,FStar_Syntax_Syntax.binders,FStar_Syntax_Syntax.letbinding,FStar_Range.range)
  FStar_Pervasives_Native.tuple4 
  | Cfg of cfg 
  | Debug of (FStar_Syntax_Syntax.term,FStar_Util.time)
  FStar_Pervasives_Native.tuple2 
let (uu___is_Arg : stack_elt -> Prims.bool) =
  fun projectee  ->
    match projectee with | Arg _0 -> true | uu____2561 -> false
  
let (__proj__Arg__item___0 :
  stack_elt ->
    (closure,FStar_Syntax_Syntax.aqual,FStar_Range.range)
      FStar_Pervasives_Native.tuple3)
  = fun projectee  -> match projectee with | Arg _0 -> _0 
let (uu___is_UnivArgs : stack_elt -> Prims.bool) =
  fun projectee  ->
    match projectee with | UnivArgs _0 -> true | uu____2599 -> false
  
let (__proj__UnivArgs__item___0 :
  stack_elt ->
    (FStar_Syntax_Syntax.universe Prims.list,FStar_Range.range)
      FStar_Pervasives_Native.tuple2)
  = fun projectee  -> match projectee with | UnivArgs _0 -> _0 
let (uu___is_MemoLazy : stack_elt -> Prims.bool) =
  fun projectee  ->
    match projectee with | MemoLazy _0 -> true | uu____2637 -> false
  
let (__proj__MemoLazy__item___0 :
  stack_elt ->
    (env,FStar_Syntax_Syntax.term) FStar_Pervasives_Native.tuple2
      FStar_Syntax_Syntax.memo)
  = fun projectee  -> match projectee with | MemoLazy _0 -> _0 
let (uu___is_Match : stack_elt -> Prims.bool) =
  fun projectee  ->
    match projectee with | Match _0 -> true | uu____2710 -> false
  
let (__proj__Match__item___0 :
  stack_elt ->
    (env,branches,cfg,FStar_Range.range) FStar_Pervasives_Native.tuple4)
  = fun projectee  -> match projectee with | Match _0 -> _0 
let (uu___is_Abs : stack_elt -> Prims.bool) =
  fun projectee  ->
    match projectee with | Abs _0 -> true | uu____2760 -> false
  
let (__proj__Abs__item___0 :
  stack_elt ->
    (env,FStar_Syntax_Syntax.binders,env,FStar_Syntax_Syntax.residual_comp
                                           FStar_Pervasives_Native.option,
      FStar_Range.range) FStar_Pervasives_Native.tuple5)
  = fun projectee  -> match projectee with | Abs _0 -> _0 
let (uu___is_App : stack_elt -> Prims.bool) =
  fun projectee  ->
    match projectee with | App _0 -> true | uu____2818 -> false
  
let (__proj__App__item___0 :
  stack_elt ->
    (env,FStar_Syntax_Syntax.term,FStar_Syntax_Syntax.aqual,FStar_Range.range)
      FStar_Pervasives_Native.tuple4)
  = fun projectee  -> match projectee with | App _0 -> _0 
let (uu___is_Meta : stack_elt -> Prims.bool) =
  fun projectee  ->
    match projectee with | Meta _0 -> true | uu____2862 -> false
  
let (__proj__Meta__item___0 :
  stack_elt ->
    (env,FStar_Syntax_Syntax.metadata,FStar_Range.range)
      FStar_Pervasives_Native.tuple3)
  = fun projectee  -> match projectee with | Meta _0 -> _0 
let (uu___is_Let : stack_elt -> Prims.bool) =
  fun projectee  ->
    match projectee with | Let _0 -> true | uu____2902 -> false
  
let (__proj__Let__item___0 :
  stack_elt ->
    (env,FStar_Syntax_Syntax.binders,FStar_Syntax_Syntax.letbinding,FStar_Range.range)
      FStar_Pervasives_Native.tuple4)
  = fun projectee  -> match projectee with | Let _0 -> _0 
let (uu___is_Cfg : stack_elt -> Prims.bool) =
  fun projectee  ->
    match projectee with | Cfg _0 -> true | uu____2940 -> false
  
let (__proj__Cfg__item___0 : stack_elt -> cfg) =
  fun projectee  -> match projectee with | Cfg _0 -> _0 
let (uu___is_Debug : stack_elt -> Prims.bool) =
  fun projectee  ->
    match projectee with | Debug _0 -> true | uu____2958 -> false
  
let (__proj__Debug__item___0 :
  stack_elt ->
    (FStar_Syntax_Syntax.term,FStar_Util.time) FStar_Pervasives_Native.tuple2)
  = fun projectee  -> match projectee with | Debug _0 -> _0 
type stack = stack_elt Prims.list
let (head_of : FStar_Syntax_Syntax.term -> FStar_Syntax_Syntax.term) =
  fun t  ->
    let uu____2985 = FStar_Syntax_Util.head_and_args' t  in
    match uu____2985 with | (hd1,uu____2999) -> hd1
  
let mk :
  'Auu____3022 .
    'Auu____3022 ->
      FStar_Range.range -> 'Auu____3022 FStar_Syntax_Syntax.syntax
  =
  fun t  -> fun r  -> FStar_Syntax_Syntax.mk t FStar_Pervasives_Native.None r 
let set_memo : 'a . cfg -> 'a FStar_Syntax_Syntax.memo -> 'a -> unit =
  fun cfg  ->
    fun r  ->
      fun t  ->
        if cfg.memoize_lazy
        then
          let uu____3085 = FStar_ST.op_Bang r  in
          match uu____3085 with
          | FStar_Pervasives_Native.Some uu____3137 ->
              failwith "Unexpected set_memo: thunk already evaluated"
          | FStar_Pervasives_Native.None  ->
              FStar_ST.op_Colon_Equals r (FStar_Pervasives_Native.Some t)
        else ()
  
let rec (env_to_string :
  (FStar_Syntax_Syntax.binder FStar_Pervasives_Native.option,closure)
    FStar_Pervasives_Native.tuple2 Prims.list -> Prims.string)
  =
  fun env  ->
    let uu____3213 =
      FStar_List.map
        (fun uu____3227  ->
           match uu____3227 with
           | (bopt,c) ->
               let uu____3240 =
                 match bopt with
                 | FStar_Pervasives_Native.None  -> "."
                 | FStar_Pervasives_Native.Some x ->
                     FStar_Syntax_Print.binder_to_string x
                  in
               let uu____3242 = closure_to_string c  in
               FStar_Util.format2 "(%s, %s)" uu____3240 uu____3242) env
       in
    FStar_All.pipe_right uu____3213 (FStar_String.concat "; ")

and (closure_to_string : closure -> Prims.string) =
  fun uu___240_3245  ->
    match uu___240_3245 with
    | Clos (env,t,uu____3248,uu____3249) ->
        let uu____3294 =
          FStar_All.pipe_right (FStar_List.length env)
            FStar_Util.string_of_int
           in
        let uu____3301 = FStar_Syntax_Print.term_to_string t  in
        FStar_Util.format2 "(env=%s elts; %s)" uu____3294 uu____3301
    | Univ uu____3302 -> "Univ"
    | Dummy  -> "dummy"

let (stack_elt_to_string : stack_elt -> Prims.string) =
  fun uu___241_3307  ->
    match uu___241_3307 with
    | Arg (c,uu____3309,uu____3310) ->
        let uu____3311 = closure_to_string c  in
        FStar_Util.format1 "Closure %s" uu____3311
    | MemoLazy uu____3312 -> "MemoLazy"
    | Abs (uu____3319,bs,uu____3321,uu____3322,uu____3323) ->
        let uu____3328 =
          FStar_All.pipe_left FStar_Util.string_of_int (FStar_List.length bs)
           in
        FStar_Util.format1 "Abs %s" uu____3328
    | UnivArgs uu____3333 -> "UnivArgs"
    | Match uu____3340 -> "Match"
    | App (uu____3349,t,uu____3351,uu____3352) ->
        let uu____3353 = FStar_Syntax_Print.term_to_string t  in
        FStar_Util.format1 "App %s" uu____3353
    | Meta (uu____3354,m,uu____3356) -> "Meta"
    | Let uu____3357 -> "Let"
    | Cfg uu____3366 -> "Cfg"
    | Debug (t,uu____3368) ->
        let uu____3369 = FStar_Syntax_Print.term_to_string t  in
        FStar_Util.format1 "Debug %s" uu____3369
  
let (stack_to_string : stack_elt Prims.list -> Prims.string) =
  fun s  ->
    let uu____3379 = FStar_List.map stack_elt_to_string s  in
    FStar_All.pipe_right uu____3379 (FStar_String.concat "; ")
  
let (log : cfg -> (unit -> unit) -> unit) =
  fun cfg  -> fun f  -> if (cfg.debug).gen then f () else () 
let (log_primops : cfg -> (unit -> unit) -> unit) =
  fun cfg  -> fun f  -> if (cfg.debug).primop then f () else () 
let (log_unfolding : cfg -> (unit -> unit) -> unit) =
  fun cfg  -> fun f  -> if (cfg.debug).unfolding then f () else () 
let is_empty : 'Auu____3436 . 'Auu____3436 Prims.list -> Prims.bool =
  fun uu___242_3443  ->
    match uu___242_3443 with | [] -> true | uu____3446 -> false
  
let (lookup_bvar :
  (FStar_Syntax_Syntax.binder FStar_Pervasives_Native.option,closure)
    FStar_Pervasives_Native.tuple2 Prims.list ->
    FStar_Syntax_Syntax.bv -> closure)
  =
  fun env  ->
    fun x  ->
      try
        let uu____3478 = FStar_List.nth env x.FStar_Syntax_Syntax.index  in
        FStar_Pervasives_Native.snd uu____3478
      with
      | uu____3497 ->
          let uu____3498 =
            let uu____3499 = FStar_Syntax_Print.db_to_string x  in
            let uu____3500 = env_to_string env  in
            FStar_Util.format2 "Failed to find %s\nEnv is %s\n" uu____3499
              uu____3500
             in
          failwith uu____3498
  
let (downgrade_ghost_effect_name :
  FStar_Ident.lident -> FStar_Ident.lident FStar_Pervasives_Native.option) =
  fun l  ->
    let uu____3508 =
      FStar_Ident.lid_equals l FStar_Parser_Const.effect_Ghost_lid  in
    if uu____3508
    then FStar_Pervasives_Native.Some FStar_Parser_Const.effect_Pure_lid
    else
      (let uu____3512 =
         FStar_Ident.lid_equals l FStar_Parser_Const.effect_GTot_lid  in
       if uu____3512
       then FStar_Pervasives_Native.Some FStar_Parser_Const.effect_Tot_lid
       else
         (let uu____3516 =
            FStar_Ident.lid_equals l FStar_Parser_Const.effect_GHOST_lid  in
          if uu____3516
          then
            FStar_Pervasives_Native.Some FStar_Parser_Const.effect_PURE_lid
          else FStar_Pervasives_Native.None))
  
let (norm_universe :
  cfg -> env -> FStar_Syntax_Syntax.universe -> FStar_Syntax_Syntax.universe)
  =
  fun cfg  ->
    fun env  ->
      fun u  ->
        let norm_univs us =
          let us1 = FStar_Util.sort_with FStar_Syntax_Util.compare_univs us
             in
          let uu____3550 =
            FStar_List.fold_left
              (fun uu____3576  ->
                 fun u1  ->
                   match uu____3576 with
                   | (cur_kernel,cur_max,out) ->
                       let uu____3601 = FStar_Syntax_Util.univ_kernel u1  in
                       (match uu____3601 with
                        | (k_u,n1) ->
                            let uu____3616 =
                              FStar_Syntax_Util.eq_univs cur_kernel k_u  in
                            if uu____3616
                            then (cur_kernel, u1, out)
                            else (k_u, u1, (cur_max :: out))))
              (FStar_Syntax_Syntax.U_zero, FStar_Syntax_Syntax.U_zero, [])
              us1
             in
          match uu____3550 with
          | (uu____3634,u1,out) -> FStar_List.rev (u1 :: out)  in
        let rec aux u1 =
          let u2 = FStar_Syntax_Subst.compress_univ u1  in
          match u2 with
          | FStar_Syntax_Syntax.U_bvar x ->
              (try
                 let uu____3661 =
                   let uu____3662 = FStar_List.nth env x  in
                   FStar_Pervasives_Native.snd uu____3662  in
                 match uu____3661 with
                 | Univ u3 -> aux u3
                 | Dummy  -> [u2]
                 | uu____3680 ->
                     failwith "Impossible: universe variable bound to a term"
               with
               | uu____3688 ->
                   if (cfg.steps).allow_unbound_universes
                   then [FStar_Syntax_Syntax.U_unknown]
                   else failwith "Universe variable not found")
          | FStar_Syntax_Syntax.U_unif uu____3694 when
              (cfg.steps).check_no_uvars -> [FStar_Syntax_Syntax.U_zero]
          | FStar_Syntax_Syntax.U_zero  -> [u2]
          | FStar_Syntax_Syntax.U_unif uu____3703 -> [u2]
          | FStar_Syntax_Syntax.U_name uu____3712 -> [u2]
          | FStar_Syntax_Syntax.U_unknown  -> [u2]
          | FStar_Syntax_Syntax.U_max [] -> [FStar_Syntax_Syntax.U_zero]
          | FStar_Syntax_Syntax.U_max us ->
              let us1 =
                let uu____3719 = FStar_List.collect aux us  in
                FStar_All.pipe_right uu____3719 norm_univs  in
              (match us1 with
               | u_k::hd1::rest ->
                   let rest1 = hd1 :: rest  in
                   let uu____3736 = FStar_Syntax_Util.univ_kernel u_k  in
                   (match uu____3736 with
                    | (FStar_Syntax_Syntax.U_zero ,n1) ->
                        let uu____3744 =
                          FStar_All.pipe_right rest1
                            (FStar_List.for_all
                               (fun u3  ->
                                  let uu____3752 =
                                    FStar_Syntax_Util.univ_kernel u3  in
                                  match uu____3752 with
                                  | (uu____3757,m) -> n1 <= m))
                           in
                        if uu____3744 then rest1 else us1
                    | uu____3762 -> us1)
               | uu____3767 -> us1)
          | FStar_Syntax_Syntax.U_succ u3 ->
              let uu____3771 = aux u3  in
              FStar_List.map (fun _0_16  -> FStar_Syntax_Syntax.U_succ _0_16)
                uu____3771
           in
        if (cfg.steps).erase_universes
        then FStar_Syntax_Syntax.U_unknown
        else
          (let uu____3775 = aux u  in
           match uu____3775 with
           | [] -> FStar_Syntax_Syntax.U_zero
           | (FStar_Syntax_Syntax.U_zero )::[] -> FStar_Syntax_Syntax.U_zero
           | (FStar_Syntax_Syntax.U_zero )::u1::[] -> u1
           | (FStar_Syntax_Syntax.U_zero )::us ->
               FStar_Syntax_Syntax.U_max us
           | u1::[] -> u1
           | us -> FStar_Syntax_Syntax.U_max us)
  
let rec (inline_closure_env :
  cfg ->
    env ->
      stack_elt Prims.list ->
        FStar_Syntax_Syntax.term ->
          FStar_Syntax_Syntax.term' FStar_Syntax_Syntax.syntax)
  =
  fun cfg  ->
    fun env  ->
      fun stack  ->
        fun t  ->
          log cfg
            (fun uu____3923  ->
               let uu____3924 = FStar_Syntax_Print.tag_of_term t  in
               let uu____3925 = env_to_string env  in
               let uu____3926 = FStar_Syntax_Print.term_to_string t  in
               FStar_Util.print3 "\n>>> %s (env=%s) Closure_as_term %s\n"
                 uu____3924 uu____3925 uu____3926);
          (match env with
           | [] when
               FStar_All.pipe_left Prims.op_Negation
                 (cfg.steps).compress_uvars
               -> rebuild_closure cfg env stack t
           | uu____3935 ->
               (match t.FStar_Syntax_Syntax.n with
                | FStar_Syntax_Syntax.Tm_delayed uu____3938 ->
                    let uu____3963 = FStar_Syntax_Subst.compress t  in
                    inline_closure_env cfg env stack uu____3963
                | FStar_Syntax_Syntax.Tm_unknown  ->
                    rebuild_closure cfg env stack t
                | FStar_Syntax_Syntax.Tm_constant uu____3964 ->
                    rebuild_closure cfg env stack t
                | FStar_Syntax_Syntax.Tm_name uu____3965 ->
                    rebuild_closure cfg env stack t
                | FStar_Syntax_Syntax.Tm_lazy uu____3966 ->
                    rebuild_closure cfg env stack t
                | FStar_Syntax_Syntax.Tm_fvar uu____3967 ->
                    rebuild_closure cfg env stack t
                | FStar_Syntax_Syntax.Tm_uvar (uv,s) ->
                    if (cfg.steps).check_no_uvars
                    then
                      let t1 = FStar_Syntax_Subst.compress t  in
                      (match t1.FStar_Syntax_Syntax.n with
                       | FStar_Syntax_Syntax.Tm_uvar uu____3995 ->
                           let uu____4010 =
                             let uu____4011 =
                               FStar_Range.string_of_range
                                 t1.FStar_Syntax_Syntax.pos
                                in
                             let uu____4012 =
                               FStar_Syntax_Print.term_to_string t1  in
                             FStar_Util.format2
                               "(%s): CheckNoUvars: Unexpected unification variable remains: %s"
                               uu____4011 uu____4012
                              in
                           failwith uu____4010
                       | uu____4015 -> inline_closure_env cfg env stack t1)
                    else
                      (let s' =
                         FStar_All.pipe_right (FStar_Pervasives_Native.fst s)
                           (FStar_List.map
                              (fun s1  ->
                                 FStar_All.pipe_right s1
                                   (FStar_List.map
                                      (fun uu___243_4052  ->
                                         match uu___243_4052 with
                                         | FStar_Syntax_Syntax.NT (x,t1) ->
                                             let uu____4059 =
                                               let uu____4066 =
                                                 inline_closure_env cfg env
                                                   [] t1
                                                  in
                                               (x, uu____4066)  in
                                             FStar_Syntax_Syntax.NT
                                               uu____4059
                                         | FStar_Syntax_Syntax.NM (x,i) ->
                                             let x_i =
                                               FStar_Syntax_Syntax.bv_to_tm
                                                 (let uu___287_4076 = x  in
                                                  {
                                                    FStar_Syntax_Syntax.ppname
                                                      =
                                                      (uu___287_4076.FStar_Syntax_Syntax.ppname);
                                                    FStar_Syntax_Syntax.index
                                                      = i;
                                                    FStar_Syntax_Syntax.sort
                                                      =
                                                      (uu___287_4076.FStar_Syntax_Syntax.sort)
                                                  })
                                                in
                                             let t1 =
                                               inline_closure_env cfg env []
                                                 x_i
                                                in
                                             (match t1.FStar_Syntax_Syntax.n
                                              with
                                              | FStar_Syntax_Syntax.Tm_bvar
                                                  x_j ->
                                                  FStar_Syntax_Syntax.NM
                                                    (x,
                                                      (x_j.FStar_Syntax_Syntax.index))
                                              | uu____4081 ->
                                                  FStar_Syntax_Syntax.NT
                                                    (x, t1))
                                         | uu____4084 ->
                                             failwith
                                               "Impossible: subst invariant of uvar nodes"))))
                          in
                       let t1 =
                         let uu___288_4088 = t  in
                         {
                           FStar_Syntax_Syntax.n =
                             (FStar_Syntax_Syntax.Tm_uvar
                                (uv, (s', (FStar_Pervasives_Native.snd s))));
                           FStar_Syntax_Syntax.pos =
                             (uu___288_4088.FStar_Syntax_Syntax.pos);
                           FStar_Syntax_Syntax.vars =
                             (uu___288_4088.FStar_Syntax_Syntax.vars)
                         }  in
                       rebuild_closure cfg env stack t1)
                | FStar_Syntax_Syntax.Tm_type u ->
                    let t1 =
                      let uu____4115 =
                        let uu____4116 = norm_universe cfg env u  in
                        FStar_Syntax_Syntax.Tm_type uu____4116  in
                      mk uu____4115 t.FStar_Syntax_Syntax.pos  in
                    rebuild_closure cfg env stack t1
                | FStar_Syntax_Syntax.Tm_uinst (t',us) ->
                    let t1 =
                      let uu____4124 =
                        FStar_List.map (norm_universe cfg env) us  in
                      FStar_Syntax_Syntax.mk_Tm_uinst t' uu____4124  in
                    rebuild_closure cfg env stack t1
                | FStar_Syntax_Syntax.Tm_bvar x ->
                    let uu____4126 = lookup_bvar env x  in
                    (match uu____4126 with
                     | Univ uu____4129 ->
                         failwith
                           "Impossible: term variable is bound to a universe"
                     | Dummy  ->
                         let x1 =
                           let uu___289_4133 = x  in
                           {
                             FStar_Syntax_Syntax.ppname =
                               (uu___289_4133.FStar_Syntax_Syntax.ppname);
                             FStar_Syntax_Syntax.index =
                               (uu___289_4133.FStar_Syntax_Syntax.index);
                             FStar_Syntax_Syntax.sort =
                               FStar_Syntax_Syntax.tun
                           }  in
                         let t1 =
                           mk (FStar_Syntax_Syntax.Tm_bvar x1)
                             t.FStar_Syntax_Syntax.pos
                            in
                         rebuild_closure cfg env stack t1
                     | Clos (env1,t0,uu____4139,uu____4140) ->
                         inline_closure_env cfg env1 stack t0)
                | FStar_Syntax_Syntax.Tm_app (head1,args) ->
                    let stack1 =
                      FStar_All.pipe_right stack
                        (FStar_List.fold_right
                           (fun uu____4225  ->
                              fun stack1  ->
                                match uu____4225 with
                                | (a,aq) ->
                                    let uu____4237 =
                                      let uu____4238 =
                                        let uu____4245 =
                                          let uu____4246 =
                                            let uu____4277 =
                                              FStar_Util.mk_ref
                                                FStar_Pervasives_Native.None
                                               in
                                            (env, a, uu____4277, false)  in
                                          Clos uu____4246  in
                                        (uu____4245, aq,
                                          (t.FStar_Syntax_Syntax.pos))
                                         in
                                      Arg uu____4238  in
                                    uu____4237 :: stack1) args)
                       in
                    inline_closure_env cfg env stack1 head1
                | FStar_Syntax_Syntax.Tm_abs (bs,body,lopt) ->
                    let env' =
                      FStar_All.pipe_right env
                        (FStar_List.fold_right
                           (fun _b  ->
                              fun env1  ->
                                (FStar_Pervasives_Native.None, Dummy) :: env1)
                           bs)
                       in
                    let stack1 =
                      (Abs (env, bs, env', lopt, (t.FStar_Syntax_Syntax.pos)))
                      :: stack  in
                    inline_closure_env cfg env' stack1 body
                | FStar_Syntax_Syntax.Tm_arrow (bs,c) ->
                    let uu____4453 = close_binders cfg env bs  in
                    (match uu____4453 with
                     | (bs1,env') ->
                         let c1 = close_comp cfg env' c  in
                         let t1 =
                           mk (FStar_Syntax_Syntax.Tm_arrow (bs1, c1))
                             t.FStar_Syntax_Syntax.pos
                            in
                         rebuild_closure cfg env stack t1)
                | FStar_Syntax_Syntax.Tm_refine (x,phi) ->
                    let uu____4500 =
                      let uu____4511 =
                        let uu____4518 = FStar_Syntax_Syntax.mk_binder x  in
                        [uu____4518]  in
                      close_binders cfg env uu____4511  in
                    (match uu____4500 with
                     | (x1,env1) ->
                         let phi1 = non_tail_inline_closure_env cfg env1 phi
                            in
                         let t1 =
                           let uu____4553 =
                             let uu____4554 =
                               let uu____4561 =
                                 let uu____4562 = FStar_List.hd x1  in
                                 FStar_All.pipe_right uu____4562
                                   FStar_Pervasives_Native.fst
                                  in
                               (uu____4561, phi1)  in
                             FStar_Syntax_Syntax.Tm_refine uu____4554  in
                           mk uu____4553 t.FStar_Syntax_Syntax.pos  in
                         rebuild_closure cfg env1 stack t1)
                | FStar_Syntax_Syntax.Tm_ascribed (t1,(annot,tacopt),lopt) ->
                    let annot1 =
                      match annot with
                      | FStar_Util.Inl t2 ->
                          let uu____4653 =
                            non_tail_inline_closure_env cfg env t2  in
                          FStar_Util.Inl uu____4653
                      | FStar_Util.Inr c ->
                          let uu____4667 = close_comp cfg env c  in
                          FStar_Util.Inr uu____4667
                       in
                    let tacopt1 =
                      FStar_Util.map_opt tacopt
                        (non_tail_inline_closure_env cfg env)
                       in
                    let t2 =
                      let uu____4686 =
                        let uu____4687 =
                          let uu____4714 =
                            non_tail_inline_closure_env cfg env t1  in
                          (uu____4714, (annot1, tacopt1), lopt)  in
                        FStar_Syntax_Syntax.Tm_ascribed uu____4687  in
                      mk uu____4686 t.FStar_Syntax_Syntax.pos  in
                    rebuild_closure cfg env stack t2
                | FStar_Syntax_Syntax.Tm_quoted (t',qi) ->
                    let t1 =
                      match qi.FStar_Syntax_Syntax.qkind with
                      | FStar_Syntax_Syntax.Quote_dynamic  ->
                          let uu____4760 =
                            let uu____4761 =
                              let uu____4768 =
                                non_tail_inline_closure_env cfg env t'  in
                              (uu____4768, qi)  in
                            FStar_Syntax_Syntax.Tm_quoted uu____4761  in
                          mk uu____4760 t.FStar_Syntax_Syntax.pos
                      | FStar_Syntax_Syntax.Quote_static  ->
                          let qi1 =
                            FStar_Syntax_Syntax.on_antiquoted
                              (non_tail_inline_closure_env cfg env) qi
                             in
                          mk (FStar_Syntax_Syntax.Tm_quoted (t', qi1))
                            t.FStar_Syntax_Syntax.pos
                       in
                    rebuild_closure cfg env stack t1
                | FStar_Syntax_Syntax.Tm_meta (t',m) ->
                    let stack1 = (Meta (env, m, (t.FStar_Syntax_Syntax.pos)))
                      :: stack  in
                    inline_closure_env cfg env stack1 t'
                | FStar_Syntax_Syntax.Tm_let ((false ,lb::[]),body) ->
                    let env0 = env  in
                    let env1 =
                      FStar_List.fold_left
                        (fun env1  -> fun uu____4820  -> dummy :: env1) env
                        lb.FStar_Syntax_Syntax.lbunivs
                       in
                    let typ =
                      non_tail_inline_closure_env cfg env1
                        lb.FStar_Syntax_Syntax.lbtyp
                       in
                    let def =
                      non_tail_inline_closure_env cfg env1
                        lb.FStar_Syntax_Syntax.lbdef
                       in
                    let uu____4841 =
                      let uu____4852 = FStar_Syntax_Syntax.is_top_level [lb]
                         in
                      if uu____4852
                      then ((lb.FStar_Syntax_Syntax.lbname), body)
                      else
                        (let x =
                           FStar_Util.left lb.FStar_Syntax_Syntax.lbname  in
                         let uu____4871 =
                           non_tail_inline_closure_env cfg (dummy :: env0)
                             body
                            in
                         ((FStar_Util.Inl
                             (let uu___290_4887 = x  in
                              {
                                FStar_Syntax_Syntax.ppname =
                                  (uu___290_4887.FStar_Syntax_Syntax.ppname);
                                FStar_Syntax_Syntax.index =
                                  (uu___290_4887.FStar_Syntax_Syntax.index);
                                FStar_Syntax_Syntax.sort = typ
                              })), uu____4871))
                       in
                    (match uu____4841 with
                     | (nm,body1) ->
                         let lb1 =
                           let uu___291_4905 = lb  in
                           {
                             FStar_Syntax_Syntax.lbname = nm;
                             FStar_Syntax_Syntax.lbunivs =
                               (uu___291_4905.FStar_Syntax_Syntax.lbunivs);
                             FStar_Syntax_Syntax.lbtyp = typ;
                             FStar_Syntax_Syntax.lbeff =
                               (uu___291_4905.FStar_Syntax_Syntax.lbeff);
                             FStar_Syntax_Syntax.lbdef = def;
                             FStar_Syntax_Syntax.lbattrs =
                               (uu___291_4905.FStar_Syntax_Syntax.lbattrs);
                             FStar_Syntax_Syntax.lbpos =
                               (uu___291_4905.FStar_Syntax_Syntax.lbpos)
                           }  in
                         let t1 =
                           mk
                             (FStar_Syntax_Syntax.Tm_let
                                ((false, [lb1]), body1))
                             t.FStar_Syntax_Syntax.pos
                            in
                         rebuild_closure cfg env0 stack t1)
                | FStar_Syntax_Syntax.Tm_let ((uu____4919,lbs),body) ->
                    let norm_one_lb env1 lb =
                      let env_univs =
                        FStar_List.fold_right
                          (fun uu____4982  -> fun env2  -> dummy :: env2)
                          lb.FStar_Syntax_Syntax.lbunivs env1
                         in
                      let env2 =
                        let uu____4999 = FStar_Syntax_Syntax.is_top_level lbs
                           in
                        if uu____4999
                        then env_univs
                        else
                          FStar_List.fold_right
                            (fun uu____5011  -> fun env2  -> dummy :: env2)
                            lbs env_univs
                         in
                      let ty =
                        non_tail_inline_closure_env cfg env_univs
                          lb.FStar_Syntax_Syntax.lbtyp
                         in
                      let nm =
                        let uu____5035 = FStar_Syntax_Syntax.is_top_level lbs
                           in
                        if uu____5035
                        then lb.FStar_Syntax_Syntax.lbname
                        else
                          (let x =
                             FStar_Util.left lb.FStar_Syntax_Syntax.lbname
                              in
                           FStar_Util.Inl
                             (let uu___292_5043 = x  in
                              {
                                FStar_Syntax_Syntax.ppname =
                                  (uu___292_5043.FStar_Syntax_Syntax.ppname);
                                FStar_Syntax_Syntax.index =
                                  (uu___292_5043.FStar_Syntax_Syntax.index);
                                FStar_Syntax_Syntax.sort = ty
                              }))
                         in
                      let uu___293_5044 = lb  in
                      let uu____5045 =
                        non_tail_inline_closure_env cfg env2
                          lb.FStar_Syntax_Syntax.lbdef
                         in
                      {
                        FStar_Syntax_Syntax.lbname = nm;
                        FStar_Syntax_Syntax.lbunivs =
                          (uu___293_5044.FStar_Syntax_Syntax.lbunivs);
                        FStar_Syntax_Syntax.lbtyp = ty;
                        FStar_Syntax_Syntax.lbeff =
                          (uu___293_5044.FStar_Syntax_Syntax.lbeff);
                        FStar_Syntax_Syntax.lbdef = uu____5045;
                        FStar_Syntax_Syntax.lbattrs =
                          (uu___293_5044.FStar_Syntax_Syntax.lbattrs);
                        FStar_Syntax_Syntax.lbpos =
                          (uu___293_5044.FStar_Syntax_Syntax.lbpos)
                      }  in
                    let lbs1 =
                      FStar_All.pipe_right lbs
                        (FStar_List.map (norm_one_lb env))
                       in
                    let body1 =
                      let body_env =
                        FStar_List.fold_right
                          (fun uu____5077  -> fun env1  -> dummy :: env1)
                          lbs1 env
                         in
                      non_tail_inline_closure_env cfg body_env body  in
                    let t1 =
                      mk (FStar_Syntax_Syntax.Tm_let ((true, lbs1), body1))
                        t.FStar_Syntax_Syntax.pos
                       in
                    rebuild_closure cfg env stack t1
                | FStar_Syntax_Syntax.Tm_match (head1,branches) ->
                    let stack1 =
                      (Match
                         (env, branches, cfg, (t.FStar_Syntax_Syntax.pos)))
                      :: stack  in
                    inline_closure_env cfg env stack1 head1))

and (non_tail_inline_closure_env :
  cfg ->
    env ->
      FStar_Syntax_Syntax.term' FStar_Syntax_Syntax.syntax ->
        FStar_Syntax_Syntax.term' FStar_Syntax_Syntax.syntax)
  = fun cfg  -> fun env  -> fun t  -> inline_closure_env cfg env [] t

and (rebuild_closure :
  cfg ->
    env ->
      stack_elt Prims.list ->
        FStar_Syntax_Syntax.term' FStar_Syntax_Syntax.syntax ->
          FStar_Syntax_Syntax.term' FStar_Syntax_Syntax.syntax)
  =
  fun cfg  ->
    fun env  ->
      fun stack  ->
        fun t  ->
          log cfg
            (fun uu____5166  ->
               let uu____5167 = FStar_Syntax_Print.tag_of_term t  in
               let uu____5168 = env_to_string env  in
               let uu____5169 = stack_to_string stack  in
               let uu____5170 = FStar_Syntax_Print.term_to_string t  in
               FStar_Util.print4
                 "\n>>> %s (env=%s, stack=%s) Rebuild closure_as_term %s\n"
                 uu____5167 uu____5168 uu____5169 uu____5170);
          (match stack with
           | [] -> t
           | (Arg (Clos (env_arg,tm,uu____5175,uu____5176),aq,r))::stack1 ->
               let stack2 = (App (env, t, aq, r)) :: stack1  in
               inline_closure_env cfg env_arg stack2 tm
           | (App (env1,head1,aq,r))::stack1 ->
               let t1 =
                 FStar_Syntax_Syntax.extend_app head1 (t, aq)
                   FStar_Pervasives_Native.None r
                  in
               rebuild_closure cfg env1 stack1 t1
           | (Abs (env',bs,env'',lopt,r))::stack1 ->
               let uu____5253 = close_binders cfg env' bs  in
               (match uu____5253 with
                | (bs1,uu____5267) ->
                    let lopt1 = close_lcomp_opt cfg env'' lopt  in
                    let uu____5283 =
                      let uu___294_5286 = FStar_Syntax_Util.abs bs1 t lopt1
                         in
                      {
                        FStar_Syntax_Syntax.n =
                          (uu___294_5286.FStar_Syntax_Syntax.n);
                        FStar_Syntax_Syntax.pos = r;
                        FStar_Syntax_Syntax.vars =
                          (uu___294_5286.FStar_Syntax_Syntax.vars)
                      }  in
                    rebuild_closure cfg env stack1 uu____5283)
           | (Match (env1,branches,cfg1,r))::stack1 ->
               let close_one_branch env2 uu____5342 =
                 match uu____5342 with
                 | (pat,w_opt,tm) ->
                     let rec norm_pat env3 p =
                       match p.FStar_Syntax_Syntax.v with
                       | FStar_Syntax_Syntax.Pat_constant uu____5457 ->
                           (p, env3)
                       | FStar_Syntax_Syntax.Pat_cons (fv,pats) ->
                           let uu____5486 =
                             FStar_All.pipe_right pats
                               (FStar_List.fold_left
                                  (fun uu____5570  ->
                                     fun uu____5571  ->
                                       match (uu____5570, uu____5571) with
                                       | ((pats1,env4),(p1,b)) ->
                                           let uu____5710 = norm_pat env4 p1
                                              in
                                           (match uu____5710 with
                                            | (p2,env5) ->
                                                (((p2, b) :: pats1), env5)))
                                  ([], env3))
                              in
                           (match uu____5486 with
                            | (pats1,env4) ->
                                ((let uu___295_5872 = p  in
                                  {
                                    FStar_Syntax_Syntax.v =
                                      (FStar_Syntax_Syntax.Pat_cons
                                         (fv, (FStar_List.rev pats1)));
                                    FStar_Syntax_Syntax.p =
                                      (uu___295_5872.FStar_Syntax_Syntax.p)
                                  }), env4))
                       | FStar_Syntax_Syntax.Pat_var x ->
                           let x1 =
                             let uu___296_5891 = x  in
                             let uu____5892 =
                               non_tail_inline_closure_env cfg1 env3
                                 x.FStar_Syntax_Syntax.sort
                                in
                             {
                               FStar_Syntax_Syntax.ppname =
                                 (uu___296_5891.FStar_Syntax_Syntax.ppname);
                               FStar_Syntax_Syntax.index =
                                 (uu___296_5891.FStar_Syntax_Syntax.index);
                               FStar_Syntax_Syntax.sort = uu____5892
                             }  in
                           ((let uu___297_5906 = p  in
                             {
                               FStar_Syntax_Syntax.v =
                                 (FStar_Syntax_Syntax.Pat_var x1);
                               FStar_Syntax_Syntax.p =
                                 (uu___297_5906.FStar_Syntax_Syntax.p)
                             }), (dummy :: env3))
                       | FStar_Syntax_Syntax.Pat_wild x ->
                           let x1 =
                             let uu___298_5917 = x  in
                             let uu____5918 =
                               non_tail_inline_closure_env cfg1 env3
                                 x.FStar_Syntax_Syntax.sort
                                in
                             {
                               FStar_Syntax_Syntax.ppname =
                                 (uu___298_5917.FStar_Syntax_Syntax.ppname);
                               FStar_Syntax_Syntax.index =
                                 (uu___298_5917.FStar_Syntax_Syntax.index);
                               FStar_Syntax_Syntax.sort = uu____5918
                             }  in
                           ((let uu___299_5932 = p  in
                             {
                               FStar_Syntax_Syntax.v =
                                 (FStar_Syntax_Syntax.Pat_wild x1);
                               FStar_Syntax_Syntax.p =
                                 (uu___299_5932.FStar_Syntax_Syntax.p)
                             }), (dummy :: env3))
                       | FStar_Syntax_Syntax.Pat_dot_term (x,t1) ->
                           let x1 =
                             let uu___300_5948 = x  in
                             let uu____5949 =
                               non_tail_inline_closure_env cfg1 env3
                                 x.FStar_Syntax_Syntax.sort
                                in
                             {
                               FStar_Syntax_Syntax.ppname =
                                 (uu___300_5948.FStar_Syntax_Syntax.ppname);
                               FStar_Syntax_Syntax.index =
                                 (uu___300_5948.FStar_Syntax_Syntax.index);
                               FStar_Syntax_Syntax.sort = uu____5949
                             }  in
                           let t2 = non_tail_inline_closure_env cfg1 env3 t1
                              in
                           ((let uu___301_5966 = p  in
                             {
                               FStar_Syntax_Syntax.v =
                                 (FStar_Syntax_Syntax.Pat_dot_term (x1, t2));
                               FStar_Syntax_Syntax.p =
                                 (uu___301_5966.FStar_Syntax_Syntax.p)
                             }), env3)
                        in
                     let uu____5971 = norm_pat env2 pat  in
                     (match uu____5971 with
                      | (pat1,env3) ->
                          let w_opt1 =
                            match w_opt with
                            | FStar_Pervasives_Native.None  ->
                                FStar_Pervasives_Native.None
                            | FStar_Pervasives_Native.Some w ->
                                let uu____6040 =
                                  non_tail_inline_closure_env cfg1 env3 w  in
                                FStar_Pervasives_Native.Some uu____6040
                             in
                          let tm1 = non_tail_inline_closure_env cfg1 env3 tm
                             in
                          (pat1, w_opt1, tm1))
                  in
               let t1 =
                 let uu____6059 =
                   let uu____6060 =
                     let uu____6083 =
                       FStar_All.pipe_right branches
                         (FStar_List.map (close_one_branch env1))
                        in
                     (t, uu____6083)  in
                   FStar_Syntax_Syntax.Tm_match uu____6060  in
                 mk uu____6059 t.FStar_Syntax_Syntax.pos  in
               rebuild_closure cfg1 env1 stack1 t1
           | (Meta (env_m,m,r))::stack1 ->
               let m1 =
                 match m with
                 | FStar_Syntax_Syntax.Meta_pattern args ->
                     let uu____6196 =
                       FStar_All.pipe_right args
                         (FStar_List.map
                            (fun args1  ->
                               FStar_All.pipe_right args1
                                 (FStar_List.map
                                    (fun uu____6285  ->
                                       match uu____6285 with
                                       | (a,q) ->
                                           let uu____6304 =
                                             non_tail_inline_closure_env cfg
                                               env_m a
                                              in
                                           (uu____6304, q)))))
                        in
                     FStar_Syntax_Syntax.Meta_pattern uu____6196
                 | FStar_Syntax_Syntax.Meta_monadic (m1,tbody) ->
                     let uu____6315 =
                       let uu____6322 =
                         non_tail_inline_closure_env cfg env_m tbody  in
                       (m1, uu____6322)  in
                     FStar_Syntax_Syntax.Meta_monadic uu____6315
                 | FStar_Syntax_Syntax.Meta_monadic_lift (m1,m2,tbody) ->
                     let uu____6334 =
                       let uu____6343 =
                         non_tail_inline_closure_env cfg env_m tbody  in
                       (m1, m2, uu____6343)  in
                     FStar_Syntax_Syntax.Meta_monadic_lift uu____6334
                 | uu____6348 -> m  in
               let t1 = mk (FStar_Syntax_Syntax.Tm_meta (t, m1)) r  in
               rebuild_closure cfg env stack1 t1
           | uu____6354 -> failwith "Impossible: unexpected stack element")

and (close_binders :
  cfg ->
    env ->
      (FStar_Syntax_Syntax.bv,FStar_Syntax_Syntax.aqual)
        FStar_Pervasives_Native.tuple2 Prims.list ->
        ((FStar_Syntax_Syntax.bv,FStar_Syntax_Syntax.aqual)
           FStar_Pervasives_Native.tuple2 Prims.list,env)
          FStar_Pervasives_Native.tuple2)
  =
  fun cfg  ->
    fun env  ->
      fun bs  ->
        let uu____6368 =
          FStar_All.pipe_right bs
            (FStar_List.fold_left
               (fun uu____6441  ->
                  fun uu____6442  ->
                    match (uu____6441, uu____6442) with
                    | ((env1,out),(b,imp)) ->
                        let b1 =
                          let uu___302_6560 = b  in
                          let uu____6561 =
                            inline_closure_env cfg env1 []
                              b.FStar_Syntax_Syntax.sort
                             in
                          {
                            FStar_Syntax_Syntax.ppname =
                              (uu___302_6560.FStar_Syntax_Syntax.ppname);
                            FStar_Syntax_Syntax.index =
                              (uu___302_6560.FStar_Syntax_Syntax.index);
                            FStar_Syntax_Syntax.sort = uu____6561
                          }  in
                        let env2 = dummy :: env1  in
                        (env2, ((b1, imp) :: out))) (env, []))
           in
        match uu____6368 with | (env1,bs1) -> ((FStar_List.rev bs1), env1)

and (close_comp :
  cfg ->
    env ->
      FStar_Syntax_Syntax.comp' FStar_Syntax_Syntax.syntax ->
        FStar_Syntax_Syntax.comp' FStar_Syntax_Syntax.syntax)
  =
  fun cfg  ->
    fun env  ->
      fun c  ->
        match env with
        | [] when
            FStar_All.pipe_left Prims.op_Negation (cfg.steps).compress_uvars
            -> c
        | uu____6678 ->
            (match c.FStar_Syntax_Syntax.n with
             | FStar_Syntax_Syntax.Total (t,uopt) ->
                 let uu____6691 = inline_closure_env cfg env [] t  in
                 let uu____6692 =
                   FStar_Option.map (norm_universe cfg env) uopt  in
                 FStar_Syntax_Syntax.mk_Total' uu____6691 uu____6692
             | FStar_Syntax_Syntax.GTotal (t,uopt) ->
                 let uu____6705 = inline_closure_env cfg env [] t  in
                 let uu____6706 =
                   FStar_Option.map (norm_universe cfg env) uopt  in
                 FStar_Syntax_Syntax.mk_GTotal' uu____6705 uu____6706
             | FStar_Syntax_Syntax.Comp c1 ->
                 let rt =
                   inline_closure_env cfg env []
                     c1.FStar_Syntax_Syntax.result_typ
                    in
                 let args =
                   FStar_All.pipe_right c1.FStar_Syntax_Syntax.effect_args
                     (FStar_List.map
                        (fun uu____6750  ->
                           match uu____6750 with
                           | (a,q) ->
                               let uu____6763 =
                                 inline_closure_env cfg env [] a  in
                               (uu____6763, q)))
                    in
                 let flags1 =
                   FStar_All.pipe_right c1.FStar_Syntax_Syntax.flags
                     (FStar_List.map
                        (fun uu___244_6778  ->
                           match uu___244_6778 with
                           | FStar_Syntax_Syntax.DECREASES t ->
                               let uu____6782 =
                                 inline_closure_env cfg env [] t  in
                               FStar_Syntax_Syntax.DECREASES uu____6782
                           | f -> f))
                    in
                 let uu____6786 =
                   let uu___303_6787 = c1  in
                   let uu____6788 =
                     FStar_List.map (norm_universe cfg env)
                       c1.FStar_Syntax_Syntax.comp_univs
                      in
                   {
                     FStar_Syntax_Syntax.comp_univs = uu____6788;
                     FStar_Syntax_Syntax.effect_name =
                       (uu___303_6787.FStar_Syntax_Syntax.effect_name);
                     FStar_Syntax_Syntax.result_typ = rt;
                     FStar_Syntax_Syntax.effect_args = args;
                     FStar_Syntax_Syntax.flags = flags1
                   }  in
                 FStar_Syntax_Syntax.mk_Comp uu____6786)

and (filter_out_lcomp_cflags :
  FStar_Syntax_Syntax.cflags Prims.list ->
    FStar_Syntax_Syntax.cflags Prims.list)
  =
  fun flags1  ->
    FStar_All.pipe_right flags1
      (FStar_List.filter
         (fun uu___245_6798  ->
            match uu___245_6798 with
            | FStar_Syntax_Syntax.DECREASES uu____6799 -> false
            | uu____6802 -> true))

and (close_lcomp_opt :
  cfg ->
    env ->
      FStar_Syntax_Syntax.residual_comp FStar_Pervasives_Native.option ->
        FStar_Syntax_Syntax.residual_comp FStar_Pervasives_Native.option)
  =
  fun cfg  ->
    fun env  ->
      fun lopt  ->
        match lopt with
        | FStar_Pervasives_Native.Some rc ->
            let flags1 =
              FStar_All.pipe_right rc.FStar_Syntax_Syntax.residual_flags
                (FStar_List.filter
                   (fun uu___246_6820  ->
                      match uu___246_6820 with
                      | FStar_Syntax_Syntax.DECREASES uu____6821 -> false
                      | uu____6824 -> true))
               in
            let rc1 =
              let uu___304_6826 = rc  in
              let uu____6827 =
                FStar_Util.map_opt rc.FStar_Syntax_Syntax.residual_typ
                  (inline_closure_env cfg env [])
                 in
              {
                FStar_Syntax_Syntax.residual_effect =
                  (uu___304_6826.FStar_Syntax_Syntax.residual_effect);
                FStar_Syntax_Syntax.residual_typ = uu____6827;
                FStar_Syntax_Syntax.residual_flags = flags1
              }  in
            FStar_Pervasives_Native.Some rc1
        | uu____6836 -> lopt

let (closure_as_term :
  cfg -> env -> FStar_Syntax_Syntax.term -> FStar_Syntax_Syntax.term) =
  fun cfg  -> fun env  -> fun t  -> non_tail_inline_closure_env cfg env t 
let (built_in_primitive_steps : primitive_step FStar_Util.psmap) =
  let arg_as_int a =
    FStar_All.pipe_right (FStar_Pervasives_Native.fst a)
      (FStar_Syntax_Embeddings.try_unembed FStar_Syntax_Embeddings.e_int)
     in
  let arg_as_bool a =
    FStar_All.pipe_right (FStar_Pervasives_Native.fst a)
      (FStar_Syntax_Embeddings.try_unembed FStar_Syntax_Embeddings.e_bool)
     in
  let arg_as_char a =
    FStar_All.pipe_right (FStar_Pervasives_Native.fst a)
      (FStar_Syntax_Embeddings.try_unembed FStar_Syntax_Embeddings.e_char)
     in
  let arg_as_string a =
    FStar_All.pipe_right (FStar_Pervasives_Native.fst a)
      (FStar_Syntax_Embeddings.try_unembed FStar_Syntax_Embeddings.e_string)
     in
  let arg_as_list e a =
    let uu____6941 =
      let uu____6950 = FStar_Syntax_Embeddings.e_list e  in
      FStar_Syntax_Embeddings.try_unembed uu____6950  in
    FStar_All.pipe_right (FStar_Pervasives_Native.fst a) uu____6941  in
  let arg_as_bounded_int uu____6976 =
    match uu____6976 with
    | (a,uu____6988) ->
        let uu____6995 =
          let uu____6996 = FStar_Syntax_Subst.compress a  in
          uu____6996.FStar_Syntax_Syntax.n  in
        (match uu____6995 with
         | FStar_Syntax_Syntax.Tm_app
             ({ FStar_Syntax_Syntax.n = FStar_Syntax_Syntax.Tm_fvar fv1;
                FStar_Syntax_Syntax.pos = uu____7006;
                FStar_Syntax_Syntax.vars = uu____7007;_},({
                                                            FStar_Syntax_Syntax.n
                                                              =
                                                              FStar_Syntax_Syntax.Tm_constant
                                                              (FStar_Const.Const_int
                                                              (i,FStar_Pervasives_Native.None
                                                               ));
                                                            FStar_Syntax_Syntax.pos
                                                              = uu____7009;
                                                            FStar_Syntax_Syntax.vars
                                                              = uu____7010;_},uu____7011)::[])
             when
             let uu____7050 =
               FStar_Ident.text_of_lid
                 (fv1.FStar_Syntax_Syntax.fv_name).FStar_Syntax_Syntax.v
                in
             FStar_Util.ends_with uu____7050 "int_to_t" ->
             let uu____7051 =
               let uu____7056 = FStar_BigInt.big_int_of_string i  in
               (fv1, uu____7056)  in
             FStar_Pervasives_Native.Some uu____7051
         | uu____7061 -> FStar_Pervasives_Native.None)
     in
  let lift_unary f aopts =
    match aopts with
    | (FStar_Pervasives_Native.Some a)::[] ->
        let uu____7109 = f a  in FStar_Pervasives_Native.Some uu____7109
    | uu____7110 -> FStar_Pervasives_Native.None  in
  let lift_binary f aopts =
    match aopts with
    | (FStar_Pervasives_Native.Some a0)::(FStar_Pervasives_Native.Some
        a1)::[] ->
        let uu____7166 = f a0 a1  in FStar_Pervasives_Native.Some uu____7166
    | uu____7167 -> FStar_Pervasives_Native.None  in
  let unary_op as_a f res args =
    let uu____7225 = FStar_List.map as_a args  in
    lift_unary (f res.psc_range) uu____7225  in
  let binary_op as_a f res args =
    let uu____7296 = FStar_List.map as_a args  in
    lift_binary (f res.psc_range) uu____7296  in
  let as_primitive_step is_strong uu____7333 =
    match uu____7333 with
    | (l,arity,f) ->
        {
          name = l;
          arity;
          auto_reflect = FStar_Pervasives_Native.None;
          strong_reduction_ok = is_strong;
          requires_binder_substitution = false;
          interpretation = f
        }
     in
  let unary_int_op f =
    unary_op arg_as_int
      (fun r  ->
         fun x  ->
           let uu____7393 = f x  in
           FStar_Syntax_Embeddings.embed FStar_Syntax_Embeddings.e_int r
             uu____7393)
     in
  let binary_int_op f =
    binary_op arg_as_int
      (fun r  ->
         fun x  ->
           fun y  ->
             let uu____7429 = f x y  in
             FStar_Syntax_Embeddings.embed FStar_Syntax_Embeddings.e_int r
               uu____7429)
     in
  let unary_bool_op f =
    unary_op arg_as_bool
      (fun r  ->
         fun x  ->
           let uu____7458 = f x  in
           FStar_Syntax_Embeddings.embed FStar_Syntax_Embeddings.e_bool r
             uu____7458)
     in
  let binary_bool_op f =
    binary_op arg_as_bool
      (fun r  ->
         fun x  ->
           fun y  ->
             let uu____7494 = f x y  in
             FStar_Syntax_Embeddings.embed FStar_Syntax_Embeddings.e_bool r
               uu____7494)
     in
  let binary_string_op f =
    binary_op arg_as_string
      (fun r  ->
         fun x  ->
           fun y  ->
             let uu____7530 = f x y  in
             FStar_Syntax_Embeddings.embed FStar_Syntax_Embeddings.e_string r
               uu____7530)
     in
  let mixed_binary_op as_a as_b embed_c f res args =
    match args with
    | a::b::[] ->
        let uu____7662 =
          let uu____7671 = as_a a  in
          let uu____7674 = as_b b  in (uu____7671, uu____7674)  in
        (match uu____7662 with
         | (FStar_Pervasives_Native.Some a1,FStar_Pervasives_Native.Some b1)
             ->
             let uu____7689 =
               let uu____7690 = f res.psc_range a1 b1  in
               embed_c res.psc_range uu____7690  in
             FStar_Pervasives_Native.Some uu____7689
         | uu____7691 -> FStar_Pervasives_Native.None)
    | uu____7700 -> FStar_Pervasives_Native.None  in
  let list_of_string' rng s =
    let name l =
      let uu____7720 =
        let uu____7721 =
          FStar_Syntax_Syntax.lid_as_fv l FStar_Syntax_Syntax.delta_constant
            FStar_Pervasives_Native.None
           in
        FStar_Syntax_Syntax.Tm_fvar uu____7721  in
      mk uu____7720 rng  in
    let char_t = name FStar_Parser_Const.char_lid  in
    let charterm c =
      mk (FStar_Syntax_Syntax.Tm_constant (FStar_Const.Const_char c)) rng  in
    let uu____7735 =
      let uu____7738 = FStar_String.list_of_string s  in
      FStar_List.map charterm uu____7738  in
    FStar_All.pipe_left (FStar_Syntax_Util.mk_list char_t rng) uu____7735  in
  let string_of_list' rng l =
    let s = FStar_String.string_of_list l  in FStar_Syntax_Util.exp_string s
     in
  let string_compare' rng s1 s2 =
    let r = FStar_String.compare s1 s2  in
    let uu____7780 =
      let uu____7781 = FStar_Util.string_of_int r  in
      FStar_BigInt.big_int_of_string uu____7781  in
    FStar_Syntax_Embeddings.embed FStar_Syntax_Embeddings.e_int rng
      uu____7780
     in
  let string_concat' psc args =
    match args with
    | a1::a2::[] ->
        let uu____7845 = arg_as_string a1  in
        (match uu____7845 with
         | FStar_Pervasives_Native.Some s1 ->
             let uu____7851 = arg_as_list FStar_Syntax_Embeddings.e_string a2
                in
             (match uu____7851 with
              | FStar_Pervasives_Native.Some s2 ->
                  let r = FStar_String.concat s1 s2  in
                  let uu____7864 =
                    FStar_Syntax_Embeddings.embed
                      FStar_Syntax_Embeddings.e_string psc.psc_range r
                     in
                  FStar_Pervasives_Native.Some uu____7864
              | uu____7865 -> FStar_Pervasives_Native.None)
         | uu____7870 -> FStar_Pervasives_Native.None)
    | uu____7873 -> FStar_Pervasives_Native.None  in
  let string_of_int1 rng i =
    let uu____7893 = FStar_BigInt.string_of_big_int i  in
    FStar_Syntax_Embeddings.embed FStar_Syntax_Embeddings.e_string rng
      uu____7893
     in
  let string_of_bool1 rng b =
    FStar_Syntax_Embeddings.embed FStar_Syntax_Embeddings.e_string rng
      (if b then "true" else "false")
     in
  let mk_range1 psc args =
    match args with
    | fn::from_line::from_col::to_line::to_col::[] ->
        let uu____7930 =
          let uu____7951 = arg_as_string fn  in
          let uu____7954 = arg_as_int from_line  in
          let uu____7957 = arg_as_int from_col  in
          let uu____7960 = arg_as_int to_line  in
          let uu____7963 = arg_as_int to_col  in
          (uu____7951, uu____7954, uu____7957, uu____7960, uu____7963)  in
        (match uu____7930 with
         | (FStar_Pervasives_Native.Some fn1,FStar_Pervasives_Native.Some
            from_l,FStar_Pervasives_Native.Some
            from_c,FStar_Pervasives_Native.Some
            to_l,FStar_Pervasives_Native.Some to_c) ->
             let r =
               let uu____7994 =
                 let uu____7995 = FStar_BigInt.to_int_fs from_l  in
                 let uu____7996 = FStar_BigInt.to_int_fs from_c  in
                 FStar_Range.mk_pos uu____7995 uu____7996  in
               let uu____7997 =
                 let uu____7998 = FStar_BigInt.to_int_fs to_l  in
                 let uu____7999 = FStar_BigInt.to_int_fs to_c  in
                 FStar_Range.mk_pos uu____7998 uu____7999  in
               FStar_Range.mk_range fn1 uu____7994 uu____7997  in
             let uu____8000 =
               FStar_Syntax_Embeddings.embed FStar_Syntax_Embeddings.e_range
                 psc.psc_range r
                in
             FStar_Pervasives_Native.Some uu____8000
         | uu____8001 -> FStar_Pervasives_Native.None)
    | uu____8022 -> FStar_Pervasives_Native.None  in
  let decidable_eq neg psc args =
    let r = psc.psc_range  in
    let tru =
      mk (FStar_Syntax_Syntax.Tm_constant (FStar_Const.Const_bool true)) r
       in
    let fal =
      mk (FStar_Syntax_Syntax.Tm_constant (FStar_Const.Const_bool false)) r
       in
    match args with
    | (_typ,uu____8055)::(a1,uu____8057)::(a2,uu____8059)::[] ->
        let uu____8096 = FStar_Syntax_Util.eq_tm a1 a2  in
        (match uu____8096 with
         | FStar_Syntax_Util.Equal  ->
             FStar_Pervasives_Native.Some (if neg then fal else tru)
         | FStar_Syntax_Util.NotEqual  ->
             FStar_Pervasives_Native.Some (if neg then tru else fal)
         | uu____8101 -> FStar_Pervasives_Native.None)
    | uu____8102 -> failwith "Unexpected number of arguments"  in
  let prims_to_fstar_range_step psc args =
    match args with
    | (a1,uu____8133)::[] ->
        let uu____8142 =
          FStar_Syntax_Embeddings.try_unembed FStar_Syntax_Embeddings.e_range
            a1
           in
        (match uu____8142 with
         | FStar_Pervasives_Native.Some r ->
             let uu____8148 =
               FStar_Syntax_Embeddings.embed FStar_Syntax_Embeddings.e_range
                 psc.psc_range r
                in
             FStar_Pervasives_Native.Some uu____8148
         | FStar_Pervasives_Native.None  -> FStar_Pervasives_Native.None)
    | uu____8149 -> failwith "Unexpected number of arguments"  in
  let basic_ops =
    let uu____8175 =
      let uu____8192 =
        let uu____8209 =
          let uu____8226 =
            let uu____8243 =
              let uu____8260 =
                let uu____8277 =
                  let uu____8294 =
                    let uu____8311 =
                      let uu____8328 =
                        let uu____8345 =
                          let uu____8362 =
                            let uu____8379 =
                              let uu____8396 =
                                let uu____8413 =
                                  let uu____8430 =
                                    let uu____8447 =
                                      let uu____8464 =
                                        let uu____8481 =
                                          let uu____8498 =
                                            let uu____8515 =
                                              let uu____8532 =
                                                let uu____8547 =
                                                  FStar_Parser_Const.p2l
                                                    ["FStar";
                                                    "String";
                                                    "list_of_string"]
                                                   in
                                                (uu____8547,
                                                  (Prims.parse_int "1"),
                                                  (unary_op arg_as_string
                                                     list_of_string'))
                                                 in
                                              let uu____8556 =
                                                let uu____8573 =
                                                  let uu____8588 =
                                                    FStar_Parser_Const.p2l
                                                      ["FStar";
                                                      "String";
                                                      "string_of_list"]
                                                     in
                                                  (uu____8588,
                                                    (Prims.parse_int "1"),
                                                    (unary_op
                                                       (arg_as_list
                                                          FStar_Syntax_Embeddings.e_char)
                                                       string_of_list'))
                                                   in
                                                let uu____8601 =
                                                  let uu____8618 =
                                                    let uu____8633 =
                                                      FStar_Parser_Const.p2l
                                                        ["FStar";
                                                        "String";
                                                        "concat"]
                                                       in
                                                    (uu____8633,
                                                      (Prims.parse_int "2"),
                                                      string_concat')
                                                     in
                                                  let uu____8642 =
                                                    let uu____8659 =
                                                      let uu____8674 =
                                                        FStar_Parser_Const.p2l
                                                          ["Prims";
                                                          "mk_range"]
                                                         in
                                                      (uu____8674,
                                                        (Prims.parse_int "5"),
                                                        mk_range1)
                                                       in
                                                    [uu____8659]  in
                                                  uu____8618 :: uu____8642
                                                   in
                                                uu____8573 :: uu____8601  in
                                              uu____8532 :: uu____8556  in
                                            (FStar_Parser_Const.op_notEq,
                                              (Prims.parse_int "3"),
                                              (decidable_eq true)) ::
                                              uu____8515
                                             in
                                          (FStar_Parser_Const.op_Eq,
                                            (Prims.parse_int "3"),
                                            (decidable_eq false)) ::
                                            uu____8498
                                           in
                                        (FStar_Parser_Const.string_compare,
                                          (Prims.parse_int "2"),
                                          (binary_op arg_as_string
                                             string_compare'))
                                          :: uu____8481
                                         in
                                      (FStar_Parser_Const.string_of_bool_lid,
                                        (Prims.parse_int "1"),
                                        (unary_op arg_as_bool string_of_bool1))
                                        :: uu____8464
                                       in
                                    (FStar_Parser_Const.string_of_int_lid,
                                      (Prims.parse_int "1"),
                                      (unary_op arg_as_int string_of_int1))
                                      :: uu____8447
                                     in
                                  (FStar_Parser_Const.str_make_lid,
                                    (Prims.parse_int "2"),
                                    (mixed_binary_op arg_as_int arg_as_char
                                       (FStar_Syntax_Embeddings.embed
                                          FStar_Syntax_Embeddings.e_string)
                                       (fun r  ->
                                          fun x  ->
                                            fun y  ->
                                              let uu____8894 =
                                                FStar_BigInt.to_int_fs x  in
                                              FStar_String.make uu____8894 y)))
                                    :: uu____8430
                                   in
                                (FStar_Parser_Const.strcat_lid',
                                  (Prims.parse_int "2"),
                                  (binary_string_op
                                     (fun x  -> fun y  -> Prims.strcat x y)))
                                  :: uu____8413
                                 in
                              (FStar_Parser_Const.strcat_lid,
                                (Prims.parse_int "2"),
                                (binary_string_op
                                   (fun x  -> fun y  -> Prims.strcat x y)))
                                :: uu____8396
                               in
                            (FStar_Parser_Const.op_Or, (Prims.parse_int "2"),
                              (binary_bool_op (fun x  -> fun y  -> x || y)))
                              :: uu____8379
                             in
                          (FStar_Parser_Const.op_And, (Prims.parse_int "2"),
                            (binary_bool_op (fun x  -> fun y  -> x && y))) ::
                            uu____8362
                           in
                        (FStar_Parser_Const.op_Negation,
                          (Prims.parse_int "1"),
                          (unary_bool_op (fun x  -> Prims.op_Negation x))) ::
                          uu____8345
                         in
                      (FStar_Parser_Const.op_Modulus, (Prims.parse_int "2"),
                        (binary_int_op
                           (fun x  -> fun y  -> FStar_BigInt.mod_big_int x y)))
                        :: uu____8328
                       in
                    (FStar_Parser_Const.op_GTE, (Prims.parse_int "2"),
                      (binary_op arg_as_int
                         (fun r  ->
                            fun x  ->
                              fun y  ->
                                let uu____9089 = FStar_BigInt.ge_big_int x y
                                   in
                                FStar_Syntax_Embeddings.embed
                                  FStar_Syntax_Embeddings.e_bool r uu____9089)))
                      :: uu____8311
                     in
                  (FStar_Parser_Const.op_GT, (Prims.parse_int "2"),
                    (binary_op arg_as_int
                       (fun r  ->
                          fun x  ->
                            fun y  ->
                              let uu____9119 = FStar_BigInt.gt_big_int x y
                                 in
                              FStar_Syntax_Embeddings.embed
                                FStar_Syntax_Embeddings.e_bool r uu____9119)))
                    :: uu____8294
                   in
                (FStar_Parser_Const.op_LTE, (Prims.parse_int "2"),
                  (binary_op arg_as_int
                     (fun r  ->
                        fun x  ->
                          fun y  ->
                            let uu____9149 = FStar_BigInt.le_big_int x y  in
                            FStar_Syntax_Embeddings.embed
                              FStar_Syntax_Embeddings.e_bool r uu____9149)))
                  :: uu____8277
                 in
              (FStar_Parser_Const.op_LT, (Prims.parse_int "2"),
                (binary_op arg_as_int
                   (fun r  ->
                      fun x  ->
                        fun y  ->
                          let uu____9179 = FStar_BigInt.lt_big_int x y  in
                          FStar_Syntax_Embeddings.embed
                            FStar_Syntax_Embeddings.e_bool r uu____9179)))
                :: uu____8260
               in
            (FStar_Parser_Const.op_Division, (Prims.parse_int "2"),
              (binary_int_op
                 (fun x  -> fun y  -> FStar_BigInt.div_big_int x y)))
              :: uu____8243
             in
          (FStar_Parser_Const.op_Multiply, (Prims.parse_int "2"),
            (binary_int_op
               (fun x  -> fun y  -> FStar_BigInt.mult_big_int x y)))
            :: uu____8226
           in
        (FStar_Parser_Const.op_Subtraction, (Prims.parse_int "2"),
          (binary_int_op (fun x  -> fun y  -> FStar_BigInt.sub_big_int x y)))
          :: uu____8209
         in
      (FStar_Parser_Const.op_Addition, (Prims.parse_int "2"),
        (binary_int_op (fun x  -> fun y  -> FStar_BigInt.add_big_int x y)))
        :: uu____8192
       in
    (FStar_Parser_Const.op_Minus, (Prims.parse_int "1"),
      (unary_int_op (fun x  -> FStar_BigInt.minus_big_int x))) :: uu____8175
     in
  let weak_ops =
    let uu____9334 =
      let uu____9349 =
        FStar_Parser_Const.p2l ["FStar"; "Range"; "prims_to_fstar_range"]  in
      (uu____9349, (Prims.parse_int "1"), prims_to_fstar_range_step)  in
    [uu____9334]  in
  let bounded_arith_ops =
    let bounded_signed_int_types = ["Int8"; "Int16"; "Int32"; "Int64"]  in
    let bounded_unsigned_int_types =
      ["UInt8"; "UInt16"; "UInt32"; "UInt64"; "UInt128"]  in
    let int_as_bounded r int_to_t1 n1 =
      let c =
        FStar_Syntax_Embeddings.embed FStar_Syntax_Embeddings.e_int r n1  in
      let int_to_t2 = FStar_Syntax_Syntax.fv_to_tm int_to_t1  in
      let uu____9429 =
        let uu____9434 =
          let uu____9435 = FStar_Syntax_Syntax.as_arg c  in [uu____9435]  in
        FStar_Syntax_Syntax.mk_Tm_app int_to_t2 uu____9434  in
      uu____9429 FStar_Pervasives_Native.None r  in
    let add_sub_mul_v =
      FStar_All.pipe_right
        (FStar_List.append bounded_signed_int_types
           bounded_unsigned_int_types)
        (FStar_List.collect
           (fun m  ->
              let uu____9509 =
                let uu____9524 = FStar_Parser_Const.p2l ["FStar"; m; "add"]
                   in
                (uu____9524, (Prims.parse_int "2"),
                  (binary_op arg_as_bounded_int
                     (fun r  ->
                        fun uu____9546  ->
                          fun uu____9547  ->
                            match (uu____9546, uu____9547) with
                            | ((int_to_t1,x),(uu____9566,y)) ->
                                let uu____9576 = FStar_BigInt.add_big_int x y
                                   in
                                int_as_bounded r int_to_t1 uu____9576)))
                 in
              let uu____9577 =
                let uu____9594 =
                  let uu____9609 = FStar_Parser_Const.p2l ["FStar"; m; "sub"]
                     in
                  (uu____9609, (Prims.parse_int "2"),
                    (binary_op arg_as_bounded_int
                       (fun r  ->
                          fun uu____9631  ->
                            fun uu____9632  ->
                              match (uu____9631, uu____9632) with
                              | ((int_to_t1,x),(uu____9651,y)) ->
                                  let uu____9661 =
                                    FStar_BigInt.sub_big_int x y  in
                                  int_as_bounded r int_to_t1 uu____9661)))
                   in
                let uu____9662 =
                  let uu____9679 =
                    let uu____9694 =
                      FStar_Parser_Const.p2l ["FStar"; m; "mul"]  in
                    (uu____9694, (Prims.parse_int "2"),
                      (binary_op arg_as_bounded_int
                         (fun r  ->
                            fun uu____9716  ->
                              fun uu____9717  ->
                                match (uu____9716, uu____9717) with
                                | ((int_to_t1,x),(uu____9736,y)) ->
                                    let uu____9746 =
                                      FStar_BigInt.mult_big_int x y  in
                                    int_as_bounded r int_to_t1 uu____9746)))
                     in
                  let uu____9747 =
                    let uu____9764 =
                      let uu____9779 =
                        FStar_Parser_Const.p2l ["FStar"; m; "v"]  in
                      (uu____9779, (Prims.parse_int "1"),
                        (unary_op arg_as_bounded_int
                           (fun r  ->
                              fun uu____9797  ->
                                match uu____9797 with
                                | (int_to_t1,x) ->
                                    FStar_Syntax_Embeddings.embed
                                      FStar_Syntax_Embeddings.e_int r x)))
                       in
                    [uu____9764]  in
                  uu____9679 :: uu____9747  in
                uu____9594 :: uu____9662  in
              uu____9509 :: uu____9577))
       in
    let div_mod_unsigned =
      FStar_All.pipe_right bounded_unsigned_int_types
        (FStar_List.collect
           (fun m  ->
              let uu____9927 =
                let uu____9942 = FStar_Parser_Const.p2l ["FStar"; m; "div"]
                   in
                (uu____9942, (Prims.parse_int "2"),
                  (binary_op arg_as_bounded_int
                     (fun r  ->
                        fun uu____9964  ->
                          fun uu____9965  ->
                            match (uu____9964, uu____9965) with
                            | ((int_to_t1,x),(uu____9984,y)) ->
                                let uu____9994 = FStar_BigInt.div_big_int x y
                                   in
                                int_as_bounded r int_to_t1 uu____9994)))
                 in
              let uu____9995 =
                let uu____10012 =
                  let uu____10027 =
                    FStar_Parser_Const.p2l ["FStar"; m; "rem"]  in
                  (uu____10027, (Prims.parse_int "2"),
                    (binary_op arg_as_bounded_int
                       (fun r  ->
                          fun uu____10049  ->
                            fun uu____10050  ->
                              match (uu____10049, uu____10050) with
                              | ((int_to_t1,x),(uu____10069,y)) ->
                                  let uu____10079 =
                                    FStar_BigInt.mod_big_int x y  in
                                  int_as_bounded r int_to_t1 uu____10079)))
                   in
                [uu____10012]  in
              uu____9927 :: uu____9995))
       in
    FStar_List.append add_sub_mul_v div_mod_unsigned  in
  let strong_steps =
    FStar_List.map (as_primitive_step true)
      (FStar_List.append basic_ops bounded_arith_ops)
     in
  let weak_steps = FStar_List.map (as_primitive_step false) weak_ops  in
  FStar_All.pipe_left prim_from_list
    (FStar_List.append strong_steps weak_steps)
  
let (equality_ops : primitive_step FStar_Util.psmap) =
  let interp_prop psc args =
    let r = psc.psc_range  in
    match args with
    | (_typ,uu____10209)::(a1,uu____10211)::(a2,uu____10213)::[] ->
        let uu____10250 = FStar_Syntax_Util.eq_tm a1 a2  in
        (match uu____10250 with
         | FStar_Syntax_Util.Equal  ->
             FStar_Pervasives_Native.Some
               (let uu___305_10254 = FStar_Syntax_Util.t_true  in
                {
                  FStar_Syntax_Syntax.n =
                    (uu___305_10254.FStar_Syntax_Syntax.n);
                  FStar_Syntax_Syntax.pos = r;
                  FStar_Syntax_Syntax.vars =
                    (uu___305_10254.FStar_Syntax_Syntax.vars)
                })
         | FStar_Syntax_Util.NotEqual  ->
             FStar_Pervasives_Native.Some
               (let uu___306_10256 = FStar_Syntax_Util.t_false  in
                {
                  FStar_Syntax_Syntax.n =
                    (uu___306_10256.FStar_Syntax_Syntax.n);
                  FStar_Syntax_Syntax.pos = r;
                  FStar_Syntax_Syntax.vars =
                    (uu___306_10256.FStar_Syntax_Syntax.vars)
                })
         | uu____10257 -> FStar_Pervasives_Native.None)
    | (_typ,uu____10259)::uu____10260::(a1,uu____10262)::(a2,uu____10264)::[]
        ->
        let uu____10313 = FStar_Syntax_Util.eq_tm a1 a2  in
        (match uu____10313 with
         | FStar_Syntax_Util.Equal  ->
             FStar_Pervasives_Native.Some
               (let uu___305_10317 = FStar_Syntax_Util.t_true  in
                {
                  FStar_Syntax_Syntax.n =
                    (uu___305_10317.FStar_Syntax_Syntax.n);
                  FStar_Syntax_Syntax.pos = r;
                  FStar_Syntax_Syntax.vars =
                    (uu___305_10317.FStar_Syntax_Syntax.vars)
                })
         | FStar_Syntax_Util.NotEqual  ->
             FStar_Pervasives_Native.Some
               (let uu___306_10319 = FStar_Syntax_Util.t_false  in
                {
                  FStar_Syntax_Syntax.n =
                    (uu___306_10319.FStar_Syntax_Syntax.n);
                  FStar_Syntax_Syntax.pos = r;
                  FStar_Syntax_Syntax.vars =
                    (uu___306_10319.FStar_Syntax_Syntax.vars)
                })
         | uu____10320 -> FStar_Pervasives_Native.None)
    | uu____10321 -> failwith "Unexpected number of arguments"  in
  let propositional_equality =
    {
      name = FStar_Parser_Const.eq2_lid;
      arity = (Prims.parse_int "3");
      auto_reflect = FStar_Pervasives_Native.None;
      strong_reduction_ok = true;
      requires_binder_substitution = false;
      interpretation = interp_prop
    }  in
  let hetero_propositional_equality =
    {
      name = FStar_Parser_Const.eq3_lid;
      arity = (Prims.parse_int "4");
      auto_reflect = FStar_Pervasives_Native.None;
      strong_reduction_ok = true;
      requires_binder_substitution = false;
      interpretation = interp_prop
    }  in
  prim_from_list [propositional_equality; hetero_propositional_equality] 
let (unembed_binder_knot :
  FStar_Syntax_Syntax.binder FStar_Syntax_Embeddings.embedding
    FStar_Pervasives_Native.option FStar_ST.ref)
  = FStar_Util.mk_ref FStar_Pervasives_Native.None 
let (unembed_binder :
  FStar_Syntax_Syntax.term ->
    FStar_Syntax_Syntax.binder FStar_Pervasives_Native.option)
  =
  fun t  ->
    let uu____10375 = FStar_ST.op_Bang unembed_binder_knot  in
    match uu____10375 with
    | FStar_Pervasives_Native.Some e -> FStar_Syntax_Embeddings.unembed e t
    | FStar_Pervasives_Native.None  ->
        (FStar_Errors.log_issue t.FStar_Syntax_Syntax.pos
           (FStar_Errors.Warning_UnembedBinderKnot,
             "unembed_binder_knot is unset!");
         FStar_Pervasives_Native.None)
  
let mk_psc_subst :
  'Auu____10427 .
    cfg ->
      ((FStar_Syntax_Syntax.bv,'Auu____10427) FStar_Pervasives_Native.tuple2
         FStar_Pervasives_Native.option,closure)
        FStar_Pervasives_Native.tuple2 Prims.list ->
        FStar_Syntax_Syntax.subst_elt Prims.list
  =
  fun cfg  ->
    fun env  ->
      FStar_List.fold_right
        (fun uu____10489  ->
           fun subst1  ->
             match uu____10489 with
             | (binder_opt,closure) ->
                 (match (binder_opt, closure) with
                  | (FStar_Pervasives_Native.Some b,Clos
                     (env1,term,uu____10530,uu____10531)) ->
                      let uu____10590 = b  in
                      (match uu____10590 with
                       | (bv,uu____10598) ->
                           let uu____10599 =
                             let uu____10600 =
                               FStar_Syntax_Util.is_constructed_typ
                                 bv.FStar_Syntax_Syntax.sort
                                 FStar_Parser_Const.binder_lid
                                in
                             Prims.op_Negation uu____10600  in
                           if uu____10599
                           then subst1
                           else
                             (let term1 = closure_as_term cfg env1 term  in
                              let uu____10605 = unembed_binder term1  in
                              match uu____10605 with
                              | FStar_Pervasives_Native.None  -> subst1
                              | FStar_Pervasives_Native.Some x ->
                                  let b1 =
                                    let uu____10612 =
                                      let uu___307_10613 = bv  in
                                      let uu____10614 =
                                        FStar_Syntax_Subst.subst subst1
                                          (FStar_Pervasives_Native.fst x).FStar_Syntax_Syntax.sort
                                         in
                                      {
                                        FStar_Syntax_Syntax.ppname =
                                          (uu___307_10613.FStar_Syntax_Syntax.ppname);
                                        FStar_Syntax_Syntax.index =
                                          (uu___307_10613.FStar_Syntax_Syntax.index);
                                        FStar_Syntax_Syntax.sort =
                                          uu____10614
                                      }  in
                                    FStar_Syntax_Syntax.freshen_bv
                                      uu____10612
                                     in
                                  let b_for_x =
                                    let uu____10618 =
                                      let uu____10625 =
                                        FStar_Syntax_Syntax.bv_to_name b1  in
                                      ((FStar_Pervasives_Native.fst x),
                                        uu____10625)
                                       in
                                    FStar_Syntax_Syntax.NT uu____10618  in
                                  let subst2 =
                                    FStar_List.filter
                                      (fun uu___247_10639  ->
                                         match uu___247_10639 with
                                         | FStar_Syntax_Syntax.NT
                                             (uu____10640,{
                                                            FStar_Syntax_Syntax.n
                                                              =
                                                              FStar_Syntax_Syntax.Tm_name
                                                              b';
                                                            FStar_Syntax_Syntax.pos
                                                              = uu____10642;
                                                            FStar_Syntax_Syntax.vars
                                                              = uu____10643;_})
                                             ->
                                             let uu____10648 =
                                               FStar_Ident.ident_equals
                                                 b1.FStar_Syntax_Syntax.ppname
                                                 b'.FStar_Syntax_Syntax.ppname
                                                in
                                             Prims.op_Negation uu____10648
                                         | uu____10649 -> true) subst1
                                     in
                                  b_for_x :: subst2))
                  | uu____10650 -> subst1)) env []
  
let reduce_primops :
  'Auu____10673 'Auu____10674 .
    cfg ->
      ((FStar_Syntax_Syntax.bv,'Auu____10673) FStar_Pervasives_Native.tuple2
         FStar_Pervasives_Native.option,closure)
        FStar_Pervasives_Native.tuple2 Prims.list ->
        'Auu____10674 ->
          FStar_Syntax_Syntax.term ->
            FStar_Syntax_Syntax.term' FStar_Syntax_Syntax.syntax
  =
  fun cfg  ->
    fun env  ->
      fun stack  ->
        fun tm  ->
          if Prims.op_Negation (cfg.steps).primops
          then tm
          else
            (let uu____10722 = FStar_Syntax_Util.head_and_args tm  in
             match uu____10722 with
             | (head1,args) ->
                 let uu____10761 =
                   let uu____10762 = FStar_Syntax_Util.un_uinst head1  in
                   uu____10762.FStar_Syntax_Syntax.n  in
                 (match uu____10761 with
                  | FStar_Syntax_Syntax.Tm_fvar fv ->
                      let uu____10768 = find_prim_step cfg fv  in
                      (match uu____10768 with
                       | FStar_Pervasives_Native.Some prim_step when
                           prim_step.strong_reduction_ok ||
                             (Prims.op_Negation cfg.strong)
                           ->
                           let l = FStar_List.length args  in
                           if l < prim_step.arity
                           then
                             (log_primops cfg
                                (fun uu____10794  ->
                                   let uu____10795 =
                                     FStar_Syntax_Print.lid_to_string
                                       prim_step.name
                                      in
                                   let uu____10796 =
                                     FStar_Util.string_of_int l  in
                                   let uu____10803 =
                                     FStar_Util.string_of_int prim_step.arity
                                      in
                                   FStar_Util.print3
                                     "primop: found partially applied %s (%s/%s args)\n"
                                     uu____10795 uu____10796 uu____10803);
                              tm)
                           else
                             (let uu____10805 =
                                if l = prim_step.arity
                                then (args, [])
                                else FStar_List.splitAt prim_step.arity args
                                 in
                              match uu____10805 with
                              | (args_1,args_2) ->
                                  (log_primops cfg
                                     (fun uu____10918  ->
                                        let uu____10919 =
                                          FStar_Syntax_Print.term_to_string
                                            tm
                                           in
                                        FStar_Util.print1
                                          "primop: trying to reduce <%s>\n"
                                          uu____10919);
                                   (let psc =
                                      {
                                        psc_range =
                                          (head1.FStar_Syntax_Syntax.pos);
                                        psc_subst =
                                          (fun uu____10922  ->
                                             if
                                               prim_step.requires_binder_substitution
                                             then mk_psc_subst cfg env
                                             else [])
                                      }  in
                                    let uu____10924 =
                                      prim_step.interpretation psc args_1  in
                                    match uu____10924 with
                                    | FStar_Pervasives_Native.None  ->
                                        (log_primops cfg
                                           (fun uu____10932  ->
                                              let uu____10933 =
                                                FStar_Syntax_Print.term_to_string
                                                  tm
                                                 in
                                              FStar_Util.print1
                                                "primop: <%s> did not reduce\n"
                                                uu____10933);
                                         tm)
                                    | FStar_Pervasives_Native.Some reduced ->
                                        (log_primops cfg
                                           (fun uu____10939  ->
                                              let uu____10940 =
                                                FStar_Syntax_Print.term_to_string
                                                  tm
                                                 in
                                              let uu____10941 =
                                                FStar_Syntax_Print.term_to_string
                                                  reduced
                                                 in
                                              FStar_Util.print2
                                                "primop: <%s> reduced to <%s>\n"
                                                uu____10940 uu____10941);
                                         FStar_Syntax_Util.mk_app reduced
                                           args_2))))
                       | FStar_Pervasives_Native.Some uu____10942 ->
                           (log_primops cfg
                              (fun uu____10946  ->
                                 let uu____10947 =
                                   FStar_Syntax_Print.term_to_string tm  in
                                 FStar_Util.print1
                                   "primop: not reducing <%s> since we're doing strong reduction\n"
                                   uu____10947);
                            tm)
                       | FStar_Pervasives_Native.None  -> tm)
                  | FStar_Syntax_Syntax.Tm_constant
                      (FStar_Const.Const_range_of ) when
                      Prims.op_Negation cfg.strong ->
                      (log_primops cfg
                         (fun uu____10951  ->
                            let uu____10952 =
                              FStar_Syntax_Print.term_to_string tm  in
                            FStar_Util.print1 "primop: reducing <%s>\n"
                              uu____10952);
                       (match args with
                        | (a1,uu____10956)::[] ->
                            FStar_Syntax_Embeddings.embed
                              FStar_Syntax_Embeddings.e_range
                              tm.FStar_Syntax_Syntax.pos
                              a1.FStar_Syntax_Syntax.pos
                        | uu____10973 -> tm))
                  | FStar_Syntax_Syntax.Tm_constant
                      (FStar_Const.Const_set_range_of ) when
                      Prims.op_Negation cfg.strong ->
                      (log_primops cfg
                         (fun uu____10985  ->
                            let uu____10986 =
                              FStar_Syntax_Print.term_to_string tm  in
                            FStar_Util.print1 "primop: reducing <%s>\n"
                              uu____10986);
                       (match args with
                        | (t,uu____10990)::(r,uu____10992)::[] ->
                            let uu____11019 =
                              FStar_Syntax_Embeddings.try_unembed
                                FStar_Syntax_Embeddings.e_range r
                               in
                            (match uu____11019 with
                             | FStar_Pervasives_Native.Some rng ->
                                 FStar_Syntax_Subst.set_use_range rng t
                             | FStar_Pervasives_Native.None  -> tm)
                        | uu____11025 -> tm))
                  | uu____11034 -> tm))
  
let reduce_equality :
  'Auu____11045 'Auu____11046 .
    cfg ->
      ((FStar_Syntax_Syntax.bv,'Auu____11045) FStar_Pervasives_Native.tuple2
         FStar_Pervasives_Native.option,closure)
        FStar_Pervasives_Native.tuple2 Prims.list ->
        'Auu____11046 ->
          FStar_Syntax_Syntax.term ->
            FStar_Syntax_Syntax.term' FStar_Syntax_Syntax.syntax
  =
  fun cfg  ->
    fun tm  ->
      reduce_primops
        (let uu___308_11092 = cfg  in
         {
           steps =
             (let uu___309_11095 = default_steps  in
              {
                beta = (uu___309_11095.beta);
                iota = (uu___309_11095.iota);
                zeta = (uu___309_11095.zeta);
                weak = (uu___309_11095.weak);
                hnf = (uu___309_11095.hnf);
                primops = true;
                do_not_unfold_pure_lets =
                  (uu___309_11095.do_not_unfold_pure_lets);
                unfold_until = (uu___309_11095.unfold_until);
                unfold_only = (uu___309_11095.unfold_only);
                unfold_fully = (uu___309_11095.unfold_fully);
                unfold_attr = (uu___309_11095.unfold_attr);
                unfold_tac = (uu___309_11095.unfold_tac);
                pure_subterms_within_computations =
                  (uu___309_11095.pure_subterms_within_computations);
                simplify = (uu___309_11095.simplify);
                erase_universes = (uu___309_11095.erase_universes);
                allow_unbound_universes =
                  (uu___309_11095.allow_unbound_universes);
                reify_ = (uu___309_11095.reify_);
                compress_uvars = (uu___309_11095.compress_uvars);
                no_full_norm = (uu___309_11095.no_full_norm);
                check_no_uvars = (uu___309_11095.check_no_uvars);
                unmeta = (uu___309_11095.unmeta);
                unascribe = (uu___309_11095.unascribe);
                in_full_norm_request = (uu___309_11095.in_full_norm_request);
                weakly_reduce_scrutinee =
                  (uu___309_11095.weakly_reduce_scrutinee)
              });
           tcenv = (uu___308_11092.tcenv);
           debug = (uu___308_11092.debug);
           delta_level = (uu___308_11092.delta_level);
           primitive_steps = equality_ops;
           strong = (uu___308_11092.strong);
           memoize_lazy = (uu___308_11092.memoize_lazy);
           normalize_pure_lets = (uu___308_11092.normalize_pure_lets)
         }) tm
  
let is_norm_request :
  'Auu____11102 .
    FStar_Syntax_Syntax.term -> 'Auu____11102 Prims.list -> Prims.bool
  =
  fun hd1  ->
    fun args  ->
      let uu____11117 =
        let uu____11124 =
          let uu____11125 = FStar_Syntax_Util.un_uinst hd1  in
          uu____11125.FStar_Syntax_Syntax.n  in
        (uu____11124, args)  in
      match uu____11117 with
      | (FStar_Syntax_Syntax.Tm_fvar fv,uu____11131::uu____11132::[]) ->
          FStar_Syntax_Syntax.fv_eq_lid fv FStar_Parser_Const.normalize_term
      | (FStar_Syntax_Syntax.Tm_fvar fv,uu____11136::[]) ->
          FStar_Syntax_Syntax.fv_eq_lid fv FStar_Parser_Const.normalize
      | (FStar_Syntax_Syntax.Tm_fvar fv,steps::uu____11141::uu____11142::[])
          -> FStar_Syntax_Syntax.fv_eq_lid fv FStar_Parser_Const.norm
      | uu____11145 -> false
  
let (tr_norm_step : FStar_Syntax_Embeddings.norm_step -> step Prims.list) =
  fun uu___248_11158  ->
    match uu___248_11158 with
    | FStar_Syntax_Embeddings.Zeta  -> [Zeta]
    | FStar_Syntax_Embeddings.Iota  -> [Iota]
    | FStar_Syntax_Embeddings.Delta  ->
        [UnfoldUntil FStar_Syntax_Syntax.delta_constant]
    | FStar_Syntax_Embeddings.Simpl  -> [Simplify]
    | FStar_Syntax_Embeddings.Weak  -> [Weak]
    | FStar_Syntax_Embeddings.HNF  -> [HNF]
    | FStar_Syntax_Embeddings.Primops  -> [Primops]
    | FStar_Syntax_Embeddings.UnfoldOnly names1 ->
        let uu____11164 =
          let uu____11167 =
            let uu____11168 = FStar_List.map FStar_Ident.lid_of_str names1
               in
            UnfoldOnly uu____11168  in
          [uu____11167]  in
        (UnfoldUntil FStar_Syntax_Syntax.delta_constant) :: uu____11164
    | FStar_Syntax_Embeddings.UnfoldFully names1 ->
        let uu____11174 =
          let uu____11177 =
            let uu____11178 = FStar_List.map FStar_Ident.lid_of_str names1
               in
            UnfoldFully uu____11178  in
          [uu____11177]  in
        (UnfoldUntil FStar_Syntax_Syntax.delta_constant) :: uu____11174
    | FStar_Syntax_Embeddings.UnfoldAttr t ->
        [UnfoldUntil FStar_Syntax_Syntax.delta_constant; UnfoldAttr t]
  
let (tr_norm_steps :
  FStar_Syntax_Embeddings.norm_step Prims.list -> step Prims.list) =
  fun s  -> FStar_List.concatMap tr_norm_step s 
let get_norm_request :
  'Auu____11201 .
    cfg ->
      (FStar_Syntax_Syntax.term -> FStar_Syntax_Syntax.term) ->
        (FStar_Syntax_Syntax.term,'Auu____11201)
          FStar_Pervasives_Native.tuple2 Prims.list ->
          (step Prims.list,FStar_Syntax_Syntax.term)
            FStar_Pervasives_Native.tuple2 FStar_Pervasives_Native.option
  =
  fun cfg  ->
    fun full_norm  ->
      fun args  ->
        let parse_steps s =
          let uu____11252 =
            let uu____11257 =
              FStar_Syntax_Embeddings.e_list
                FStar_Syntax_Embeddings.e_norm_step
               in
            FStar_Syntax_Embeddings.try_unembed uu____11257 s  in
          match uu____11252 with
          | FStar_Pervasives_Native.Some steps ->
              let uu____11273 = tr_norm_steps steps  in
              FStar_Pervasives_Native.Some uu____11273
          | FStar_Pervasives_Native.None  -> FStar_Pervasives_Native.None  in
        let inherited_steps =
          FStar_List.append
            (if (cfg.steps).erase_universes then [EraseUniverses] else [])
            (if (cfg.steps).allow_unbound_universes
             then [AllowUnboundUniverses]
             else [])
           in
        match args with
        | uu____11299::(tm,uu____11301)::[] ->
            let s =
              [Beta;
              Zeta;
              Iota;
              Primops;
              UnfoldUntil FStar_Syntax_Syntax.delta_constant;
              Reify]  in
            FStar_Pervasives_Native.Some
              ((FStar_List.append inherited_steps s), tm)
        | (tm,uu____11330)::[] ->
            let s =
              [Beta;
              Zeta;
              Iota;
              Primops;
              UnfoldUntil FStar_Syntax_Syntax.delta_constant;
              Reify]  in
            FStar_Pervasives_Native.Some
              ((FStar_List.append inherited_steps s), tm)
        | (steps,uu____11351)::uu____11352::(tm,uu____11354)::[] ->
            let add_exclude s z =
              if FStar_List.contains z s then s else (Exclude z) :: s  in
            let uu____11395 =
              let uu____11400 = full_norm steps  in parse_steps uu____11400
               in
            (match uu____11395 with
             | FStar_Pervasives_Native.None  -> FStar_Pervasives_Native.None
             | FStar_Pervasives_Native.Some s ->
                 let s1 = Beta :: s  in
                 let s2 = add_exclude s1 Zeta  in
                 let s3 = add_exclude s2 Iota  in
                 FStar_Pervasives_Native.Some
                   ((FStar_List.append inherited_steps s3), tm))
        | uu____11439 -> FStar_Pervasives_Native.None
  
let (is_reify_head : stack_elt Prims.list -> Prims.bool) =
  fun uu___249_11458  ->
    match uu___249_11458 with
    | (App
        (uu____11461,{
                       FStar_Syntax_Syntax.n =
                         FStar_Syntax_Syntax.Tm_constant
                         (FStar_Const.Const_reify );
                       FStar_Syntax_Syntax.pos = uu____11462;
                       FStar_Syntax_Syntax.vars = uu____11463;_},uu____11464,uu____11465))::uu____11466
        -> true
    | uu____11471 -> false
  
let firstn :
  'Auu____11480 .
    Prims.int ->
      'Auu____11480 Prims.list ->
        ('Auu____11480 Prims.list,'Auu____11480 Prims.list)
          FStar_Pervasives_Native.tuple2
  =
  fun k  ->
    fun l  ->
      if (FStar_List.length l) < k then (l, []) else FStar_Util.first_N k l
  
let (should_reify : cfg -> stack_elt Prims.list -> Prims.bool) =
  fun cfg  ->
    fun stack  ->
      match stack with
      | (App
          (uu____11522,{
                         FStar_Syntax_Syntax.n =
                           FStar_Syntax_Syntax.Tm_constant
                           (FStar_Const.Const_reify );
                         FStar_Syntax_Syntax.pos = uu____11523;
                         FStar_Syntax_Syntax.vars = uu____11524;_},uu____11525,uu____11526))::uu____11527
          -> (cfg.steps).reify_
      | uu____11532 -> false
  
let rec (maybe_weakly_reduced :
  FStar_Syntax_Syntax.term' FStar_Syntax_Syntax.syntax -> Prims.bool) =
  fun tm  ->
    let aux_comp c =
      match c.FStar_Syntax_Syntax.n with
      | FStar_Syntax_Syntax.GTotal (t,uu____11555) -> maybe_weakly_reduced t
      | FStar_Syntax_Syntax.Total (t,uu____11565) -> maybe_weakly_reduced t
      | FStar_Syntax_Syntax.Comp ct ->
          (maybe_weakly_reduced ct.FStar_Syntax_Syntax.result_typ) ||
            (FStar_Util.for_some
               (fun uu____11584  ->
                  match uu____11584 with
                  | (a,uu____11592) -> maybe_weakly_reduced a)
               ct.FStar_Syntax_Syntax.effect_args)
       in
    let t = FStar_Syntax_Subst.compress tm  in
    match t.FStar_Syntax_Syntax.n with
    | FStar_Syntax_Syntax.Tm_delayed uu____11598 -> failwith "Impossible"
    | FStar_Syntax_Syntax.Tm_name uu____11623 -> false
    | FStar_Syntax_Syntax.Tm_uvar uu____11624 -> false
    | FStar_Syntax_Syntax.Tm_type uu____11639 -> false
    | FStar_Syntax_Syntax.Tm_bvar uu____11640 -> false
    | FStar_Syntax_Syntax.Tm_fvar uu____11641 -> false
    | FStar_Syntax_Syntax.Tm_constant uu____11642 -> false
    | FStar_Syntax_Syntax.Tm_lazy uu____11643 -> false
    | FStar_Syntax_Syntax.Tm_unknown  -> false
    | FStar_Syntax_Syntax.Tm_uinst uu____11644 -> false
    | FStar_Syntax_Syntax.Tm_quoted uu____11651 -> false
    | FStar_Syntax_Syntax.Tm_let uu____11658 -> true
    | FStar_Syntax_Syntax.Tm_abs uu____11671 -> true
    | FStar_Syntax_Syntax.Tm_arrow uu____11688 -> true
    | FStar_Syntax_Syntax.Tm_refine uu____11701 -> true
    | FStar_Syntax_Syntax.Tm_match uu____11708 -> true
    | FStar_Syntax_Syntax.Tm_app (t1,args) ->
        (maybe_weakly_reduced t1) ||
          (FStar_All.pipe_right args
             (FStar_Util.for_some
                (fun uu____11770  ->
                   match uu____11770 with
                   | (a,uu____11778) -> maybe_weakly_reduced a)))
    | FStar_Syntax_Syntax.Tm_ascribed (t1,asc,uu____11785) ->
        ((maybe_weakly_reduced t1) ||
           (match FStar_Pervasives_Native.fst asc with
            | FStar_Util.Inl t2 -> maybe_weakly_reduced t2
            | FStar_Util.Inr c2 -> aux_comp c2))
          ||
          ((match FStar_Pervasives_Native.snd asc with
            | FStar_Pervasives_Native.None  -> false
            | FStar_Pervasives_Native.Some tac -> maybe_weakly_reduced tac))
    | FStar_Syntax_Syntax.Tm_meta (t1,m) ->
        (maybe_weakly_reduced t1) ||
          ((match m with
            | FStar_Syntax_Syntax.Meta_pattern args ->
                FStar_Util.for_some
                  (FStar_Util.for_some
                     (fun uu____11907  ->
                        match uu____11907 with
                        | (a,uu____11915) -> maybe_weakly_reduced a)) args
            | FStar_Syntax_Syntax.Meta_monadic_lift
                (uu____11920,uu____11921,t') -> maybe_weakly_reduced t'
            | FStar_Syntax_Syntax.Meta_monadic (uu____11927,t') ->
                maybe_weakly_reduced t'
            | FStar_Syntax_Syntax.Meta_labeled uu____11933 -> false
            | FStar_Syntax_Syntax.Meta_desugared uu____11940 -> false
            | FStar_Syntax_Syntax.Meta_named uu____11941 -> false))
  
let decide_unfolding :
  'Auu____11956 .
    cfg ->
      'Auu____11956 Prims.list ->
        stack_elt Prims.list ->
          FStar_Range.range ->
            FStar_Syntax_Syntax.fv ->
              (((FStar_Syntax_Syntax.universes,FStar_Syntax_Syntax.typ)
                  FStar_Pervasives_Native.tuple2,(FStar_Syntax_Syntax.sigelt,
                                                   FStar_Syntax_Syntax.universes
                                                     FStar_Pervasives_Native.option)
                                                   FStar_Pervasives_Native.tuple2)
                 FStar_Util.either,FStar_Range.range)
                FStar_Pervasives_Native.tuple2 FStar_Pervasives_Native.option
                ->
                (cfg,stack_elt Prims.list) FStar_Pervasives_Native.tuple2
                  FStar_Pervasives_Native.option
  =
  fun cfg  ->
    fun env  ->
      fun stack  ->
        fun rng  ->
          fun fv  ->
            fun qninfo  ->
              log_unfolding cfg
                (fun uu____12048  ->
                   let uu____12049 = FStar_Syntax_Print.fv_to_string fv  in
                   let uu____12050 =
                     FStar_Util.string_of_int (FStar_List.length env)  in
                   let uu____12051 =
                     let uu____12052 =
                       let uu____12055 = firstn (Prims.parse_int "4") stack
                          in
                       FStar_All.pipe_left FStar_Pervasives_Native.fst
                         uu____12055
                        in
                     stack_to_string uu____12052  in
                   FStar_Util.print3
                     ">>> Deciding unfolding of %s with %s env elements top of the stack %s \n"
                     uu____12049 uu____12050 uu____12051);
              (let attrs =
                 let uu____12081 =
                   FStar_TypeChecker_Env.attrs_of_qninfo qninfo  in
                 match uu____12081 with
                 | FStar_Pervasives_Native.None  -> []
                 | FStar_Pervasives_Native.Some ats -> ats  in
               let yes = (true, false, false)  in
               let no = (false, false, false)  in
               let fully = (true, true, false)  in
               let reif = (true, false, true)  in
               let yesno b = if b then yes else no  in
               let fullyno b = if b then fully else no  in
               let comb_or l =
                 FStar_List.fold_right
                   (fun uu____12209  ->
                      fun uu____12210  ->
                        match (uu____12209, uu____12210) with
                        | ((a,b,c),(x,y,z)) -> ((a || x), (b || y), (c || z)))
                   l (false, false, false)
                  in
               let string_of_res uu____12270 =
                 match uu____12270 with
                 | (x,y,z) ->
                     let uu____12280 = FStar_Util.string_of_bool x  in
                     let uu____12281 = FStar_Util.string_of_bool y  in
                     let uu____12282 = FStar_Util.string_of_bool z  in
                     FStar_Util.format3 "(%s,%s,%s)" uu____12280 uu____12281
                       uu____12282
                  in
               let res =
                 match (qninfo, ((cfg.steps).unfold_only),
                         ((cfg.steps).unfold_fully),
                         ((cfg.steps).unfold_attr))
                 with
                 | uu____12328 when
                     FStar_TypeChecker_Env.qninfo_is_action qninfo ->
                     let b = should_reify cfg stack  in
                     (log_unfolding cfg
                        (fun uu____12374  ->
                           let uu____12375 =
                             FStar_Syntax_Print.fv_to_string fv  in
                           let uu____12376 = FStar_Util.string_of_bool b  in
                           FStar_Util.print2
                             " >> For DM4F action %s, should_reify = %s\n"
                             uu____12375 uu____12376);
                      if b then reif else no)
                 | uu____12384 when
                     let uu____12425 = find_prim_step cfg fv  in
                     FStar_Option.isSome uu____12425 -> no
                 | (FStar_Pervasives_Native.Some
                    (FStar_Util.Inr
                     ({
                        FStar_Syntax_Syntax.sigel =
                          FStar_Syntax_Syntax.Sig_let
                          ((is_rec,uu____12429),uu____12430);
                        FStar_Syntax_Syntax.sigrng = uu____12431;
                        FStar_Syntax_Syntax.sigquals = qs;
                        FStar_Syntax_Syntax.sigmeta = uu____12433;
                        FStar_Syntax_Syntax.sigattrs = uu____12434;_},uu____12435),uu____12436),uu____12437,uu____12438,uu____12439)
                     when
                     FStar_List.contains FStar_Syntax_Syntax.HasMaskedEffect
                       qs
                     -> no
                 | (uu____12542,uu____12543,uu____12544,uu____12545) when
                     (cfg.steps).unfold_tac &&
                       (FStar_Util.for_some
                          (FStar_Syntax_Util.attr_eq
                             FStar_Syntax_Util.tac_opaque_attr) attrs)
                     -> no
                 | (FStar_Pervasives_Native.Some
                    (FStar_Util.Inr
                     ({
                        FStar_Syntax_Syntax.sigel =
                          FStar_Syntax_Syntax.Sig_let
                          ((is_rec,uu____12611),uu____12612);
                        FStar_Syntax_Syntax.sigrng = uu____12613;
                        FStar_Syntax_Syntax.sigquals = qs;
                        FStar_Syntax_Syntax.sigmeta = uu____12615;
                        FStar_Syntax_Syntax.sigattrs = uu____12616;_},uu____12617),uu____12618),uu____12619,uu____12620,uu____12621)
                     when is_rec && (Prims.op_Negation (cfg.steps).zeta) ->
                     no
                 | (uu____12724,FStar_Pervasives_Native.Some
                    uu____12725,uu____12726,uu____12727) ->
                     (log_unfolding cfg
                        (fun uu____12795  ->
                           let uu____12796 =
                             FStar_Syntax_Print.fv_to_string fv  in
                           FStar_Util.print1
                             " >> Reached a %s with selective unfolding\n"
                             uu____12796);
                      (let uu____12797 =
                         let uu____12806 =
                           match (cfg.steps).unfold_only with
                           | FStar_Pervasives_Native.None  -> no
                           | FStar_Pervasives_Native.Some lids ->
                               let uu____12826 =
                                 FStar_Util.for_some
                                   (FStar_Syntax_Syntax.fv_eq_lid fv) lids
                                  in
                               FStar_All.pipe_left yesno uu____12826
                            in
                         let uu____12833 =
                           let uu____12842 =
                             match (cfg.steps).unfold_attr with
                             | FStar_Pervasives_Native.None  -> no
                             | FStar_Pervasives_Native.Some ats ->
                                 let uu____12862 =
                                   FStar_Util.for_some
                                     (fun at  ->
                                        FStar_Util.for_some
                                          (FStar_Syntax_Util.attr_eq at) ats)
                                     attrs
                                    in
                                 FStar_All.pipe_left yesno uu____12862
                              in
                           let uu____12871 =
                             let uu____12880 =
                               match (cfg.steps).unfold_fully with
                               | FStar_Pervasives_Native.None  -> no
                               | FStar_Pervasives_Native.Some lids ->
                                   let uu____12900 =
                                     FStar_Util.for_some
                                       (FStar_Syntax_Syntax.fv_eq_lid fv)
                                       lids
                                      in
                                   FStar_All.pipe_left fullyno uu____12900
                                in
                             [uu____12880]  in
                           uu____12842 :: uu____12871  in
                         uu____12806 :: uu____12833  in
                       comb_or uu____12797))
                 | (uu____12931,uu____12932,FStar_Pervasives_Native.Some
                    uu____12933,uu____12934) ->
                     (log_unfolding cfg
                        (fun uu____13002  ->
                           let uu____13003 =
                             FStar_Syntax_Print.fv_to_string fv  in
                           FStar_Util.print1
                             " >> Reached a %s with selective unfolding\n"
                             uu____13003);
                      (let uu____13004 =
                         let uu____13013 =
                           match (cfg.steps).unfold_only with
                           | FStar_Pervasives_Native.None  -> no
                           | FStar_Pervasives_Native.Some lids ->
                               let uu____13033 =
                                 FStar_Util.for_some
                                   (FStar_Syntax_Syntax.fv_eq_lid fv) lids
                                  in
                               FStar_All.pipe_left yesno uu____13033
                            in
                         let uu____13040 =
                           let uu____13049 =
                             match (cfg.steps).unfold_attr with
                             | FStar_Pervasives_Native.None  -> no
                             | FStar_Pervasives_Native.Some ats ->
                                 let uu____13069 =
                                   FStar_Util.for_some
                                     (fun at  ->
                                        FStar_Util.for_some
                                          (FStar_Syntax_Util.attr_eq at) ats)
                                     attrs
                                    in
                                 FStar_All.pipe_left yesno uu____13069
                              in
                           let uu____13078 =
                             let uu____13087 =
                               match (cfg.steps).unfold_fully with
                               | FStar_Pervasives_Native.None  -> no
                               | FStar_Pervasives_Native.Some lids ->
                                   let uu____13107 =
                                     FStar_Util.for_some
                                       (FStar_Syntax_Syntax.fv_eq_lid fv)
                                       lids
                                      in
                                   FStar_All.pipe_left fullyno uu____13107
                                in
                             [uu____13087]  in
                           uu____13049 :: uu____13078  in
                         uu____13013 :: uu____13040  in
                       comb_or uu____13004))
                 | (uu____13138,uu____13139,uu____13140,FStar_Pervasives_Native.Some
                    uu____13141) ->
                     (log_unfolding cfg
                        (fun uu____13209  ->
                           let uu____13210 =
                             FStar_Syntax_Print.fv_to_string fv  in
                           FStar_Util.print1
                             " >> Reached a %s with selective unfolding\n"
                             uu____13210);
                      (let uu____13211 =
                         let uu____13220 =
                           match (cfg.steps).unfold_only with
                           | FStar_Pervasives_Native.None  -> no
                           | FStar_Pervasives_Native.Some lids ->
                               let uu____13240 =
                                 FStar_Util.for_some
                                   (FStar_Syntax_Syntax.fv_eq_lid fv) lids
                                  in
                               FStar_All.pipe_left yesno uu____13240
                            in
                         let uu____13247 =
                           let uu____13256 =
                             match (cfg.steps).unfold_attr with
                             | FStar_Pervasives_Native.None  -> no
                             | FStar_Pervasives_Native.Some ats ->
                                 let uu____13276 =
                                   FStar_Util.for_some
                                     (fun at  ->
                                        FStar_Util.for_some
                                          (FStar_Syntax_Util.attr_eq at) ats)
                                     attrs
                                    in
                                 FStar_All.pipe_left yesno uu____13276
                              in
                           let uu____13285 =
                             let uu____13294 =
                               match (cfg.steps).unfold_fully with
                               | FStar_Pervasives_Native.None  -> no
                               | FStar_Pervasives_Native.Some lids ->
                                   let uu____13314 =
                                     FStar_Util.for_some
                                       (FStar_Syntax_Syntax.fv_eq_lid fv)
                                       lids
                                      in
                                   FStar_All.pipe_left fullyno uu____13314
                                in
                             [uu____13294]  in
                           uu____13256 :: uu____13285  in
                         uu____13220 :: uu____13247  in
                       comb_or uu____13211))
                 | uu____13345 ->
                     (log_unfolding cfg
                        (fun uu____13391  ->
                           let uu____13392 =
                             FStar_Syntax_Print.fv_to_string fv  in
                           let uu____13393 =
                             FStar_Syntax_Print.delta_depth_to_string
                               fv.FStar_Syntax_Syntax.fv_delta
                              in
                           let uu____13394 =
                             FStar_Common.string_of_list
                               FStar_TypeChecker_Env.string_of_delta_level
                               cfg.delta_level
                              in
                           FStar_Util.print3
                             " >> Reached a %s with delta_depth = %s\n >> Our delta_level is %s\n"
                             uu____13392 uu____13393 uu____13394);
                      (let uu____13395 =
                         FStar_All.pipe_right cfg.delta_level
                           (FStar_Util.for_some
                              (fun uu___250_13399  ->
                                 match uu___250_13399 with
                                 | FStar_TypeChecker_Env.UnfoldTac  -> false
                                 | FStar_TypeChecker_Env.NoDelta  -> false
                                 | FStar_TypeChecker_Env.Inlining  -> true
                                 | FStar_TypeChecker_Env.Eager_unfolding_only
                                      -> true
                                 | FStar_TypeChecker_Env.Unfold l ->
                                     FStar_TypeChecker_Common.delta_depth_greater_than
                                       fv.FStar_Syntax_Syntax.fv_delta l))
                          in
                       FStar_All.pipe_left yesno uu____13395))
                  in
               log_unfolding cfg
                 (fun uu____13412  ->
                    let uu____13413 = FStar_Syntax_Print.fv_to_string fv  in
                    let uu____13414 = FStar_Range.string_of_range rng  in
                    let uu____13415 = string_of_res res  in
                    FStar_Util.print3 " >> For %s (%s), unfolding res = %s\n"
                      uu____13413 uu____13414 uu____13415);
               (match res with
                | (false ,uu____13424,uu____13425) ->
                    FStar_Pervasives_Native.None
                | (true ,false ,false ) ->
                    FStar_Pervasives_Native.Some (cfg, stack)
                | (true ,true ,false ) ->
                    let cfg' =
                      let uu___310_13441 = cfg  in
                      {
                        steps =
                          (let uu___311_13444 = cfg.steps  in
                           {
                             beta = (uu___311_13444.beta);
                             iota = (uu___311_13444.iota);
                             zeta = (uu___311_13444.zeta);
                             weak = (uu___311_13444.weak);
                             hnf = (uu___311_13444.hnf);
                             primops = (uu___311_13444.primops);
                             do_not_unfold_pure_lets =
                               (uu___311_13444.do_not_unfold_pure_lets);
                             unfold_until =
                               (FStar_Pervasives_Native.Some
                                  FStar_Syntax_Syntax.delta_constant);
                             unfold_only = FStar_Pervasives_Native.None;
                             unfold_fully = FStar_Pervasives_Native.None;
                             unfold_attr = FStar_Pervasives_Native.None;
                             unfold_tac = (uu___311_13444.unfold_tac);
                             pure_subterms_within_computations =
                               (uu___311_13444.pure_subterms_within_computations);
                             simplify = (uu___311_13444.simplify);
                             erase_universes =
                               (uu___311_13444.erase_universes);
                             allow_unbound_universes =
                               (uu___311_13444.allow_unbound_universes);
                             reify_ = (uu___311_13444.reify_);
                             compress_uvars = (uu___311_13444.compress_uvars);
                             no_full_norm = (uu___311_13444.no_full_norm);
                             check_no_uvars = (uu___311_13444.check_no_uvars);
                             unmeta = (uu___311_13444.unmeta);
                             unascribe = (uu___311_13444.unascribe);
                             in_full_norm_request =
                               (uu___311_13444.in_full_norm_request);
                             weakly_reduce_scrutinee =
                               (uu___311_13444.weakly_reduce_scrutinee)
                           });
                        tcenv = (uu___310_13441.tcenv);
                        debug = (uu___310_13441.debug);
                        delta_level = (uu___310_13441.delta_level);
                        primitive_steps = (uu___310_13441.primitive_steps);
                        strong = (uu___310_13441.strong);
                        memoize_lazy = (uu___310_13441.memoize_lazy);
                        normalize_pure_lets =
                          (uu___310_13441.normalize_pure_lets)
                      }  in
                    let stack' = (Cfg cfg) :: stack  in
                    FStar_Pervasives_Native.Some (cfg', stack')
                | (true ,false ,true ) ->
                    let uu____13462 =
                      let uu____13469 = FStar_List.tl stack  in
                      (cfg, uu____13469)  in
                    FStar_Pervasives_Native.Some uu____13462
                | uu____13480 ->
                    let uu____13487 =
                      let uu____13488 = string_of_res res  in
                      FStar_Util.format1 "Unexpected unfolding result: %s"
                        uu____13488
                       in
                    FStar_All.pipe_left failwith uu____13487))
  
let rec (norm :
  cfg -> env -> stack -> FStar_Syntax_Syntax.term -> FStar_Syntax_Syntax.term)
  =
  fun cfg  ->
    fun env  ->
      fun stack  ->
        fun t  ->
          let t1 =
            if (cfg.debug).norm_delayed
            then
              (match t.FStar_Syntax_Syntax.n with
               | FStar_Syntax_Syntax.Tm_delayed uu____13796 ->
                   let uu____13821 = FStar_Syntax_Print.term_to_string t  in
                   FStar_Util.print1 "NORM delayed: %s\n" uu____13821
               | uu____13822 -> ())
            else ();
            FStar_Syntax_Subst.compress t  in
          log cfg
            (fun uu____13830  ->
               let uu____13831 = FStar_Syntax_Print.tag_of_term t1  in
               let uu____13832 = FStar_Syntax_Print.term_to_string t1  in
               let uu____13833 =
                 FStar_Util.string_of_int (FStar_List.length env)  in
               let uu____13840 =
                 let uu____13841 =
                   let uu____13844 = firstn (Prims.parse_int "4") stack  in
                   FStar_All.pipe_left FStar_Pervasives_Native.fst
                     uu____13844
                    in
                 stack_to_string uu____13841  in
               FStar_Util.print4
                 ">>> %s\nNorm %s with with %s env elements top of the stack %s \n"
                 uu____13831 uu____13832 uu____13833 uu____13840);
          (match t1.FStar_Syntax_Syntax.n with
           | FStar_Syntax_Syntax.Tm_unknown  ->
               (log_unfolding cfg
                  (fun uu____13870  ->
                     let uu____13871 = FStar_Syntax_Print.term_to_string t1
                        in
                     FStar_Util.print1 ">>> Tm_fvar case 0 for %s\n"
                       uu____13871);
                rebuild cfg env stack t1)
           | FStar_Syntax_Syntax.Tm_constant uu____13872 ->
               (log_unfolding cfg
                  (fun uu____13876  ->
                     let uu____13877 = FStar_Syntax_Print.term_to_string t1
                        in
                     FStar_Util.print1 ">>> Tm_fvar case 0 for %s\n"
                       uu____13877);
                rebuild cfg env stack t1)
           | FStar_Syntax_Syntax.Tm_name uu____13878 ->
               (log_unfolding cfg
                  (fun uu____13882  ->
                     let uu____13883 = FStar_Syntax_Print.term_to_string t1
                        in
                     FStar_Util.print1 ">>> Tm_fvar case 0 for %s\n"
                       uu____13883);
                rebuild cfg env stack t1)
           | FStar_Syntax_Syntax.Tm_lazy uu____13884 ->
               (log_unfolding cfg
                  (fun uu____13888  ->
                     let uu____13889 = FStar_Syntax_Print.term_to_string t1
                        in
                     FStar_Util.print1 ">>> Tm_fvar case 0 for %s\n"
                       uu____13889);
                rebuild cfg env stack t1)
           | FStar_Syntax_Syntax.Tm_fvar
               { FStar_Syntax_Syntax.fv_name = uu____13890;
                 FStar_Syntax_Syntax.fv_delta =
                   FStar_Syntax_Syntax.Delta_constant_at_level _0_17;
                 FStar_Syntax_Syntax.fv_qual = uu____13891;_}
               when _0_17 = (Prims.parse_int "0") ->
               (log_unfolding cfg
                  (fun uu____13897  ->
                     let uu____13898 = FStar_Syntax_Print.term_to_string t1
                        in
                     FStar_Util.print1 ">>> Tm_fvar case 0 for %s\n"
                       uu____13898);
                rebuild cfg env stack t1)
           | FStar_Syntax_Syntax.Tm_fvar
               { FStar_Syntax_Syntax.fv_name = uu____13899;
                 FStar_Syntax_Syntax.fv_delta = uu____13900;
                 FStar_Syntax_Syntax.fv_qual = FStar_Pervasives_Native.Some
                   (FStar_Syntax_Syntax.Data_ctor );_}
               ->
               (log_unfolding cfg
                  (fun uu____13904  ->
                     let uu____13905 = FStar_Syntax_Print.term_to_string t1
                        in
                     FStar_Util.print1 ">>> Tm_fvar case 0 for %s\n"
                       uu____13905);
                rebuild cfg env stack t1)
           | FStar_Syntax_Syntax.Tm_fvar
               { FStar_Syntax_Syntax.fv_name = uu____13906;
                 FStar_Syntax_Syntax.fv_delta = uu____13907;
                 FStar_Syntax_Syntax.fv_qual = FStar_Pervasives_Native.Some
                   (FStar_Syntax_Syntax.Record_ctor uu____13908);_}
               ->
               (log_unfolding cfg
                  (fun uu____13918  ->
                     let uu____13919 = FStar_Syntax_Print.term_to_string t1
                        in
                     FStar_Util.print1 ">>> Tm_fvar case 0 for %s\n"
                       uu____13919);
                rebuild cfg env stack t1)
           | FStar_Syntax_Syntax.Tm_fvar fv ->
               let qninfo =
                 let uu____13922 = FStar_Syntax_Syntax.lid_of_fv fv  in
                 FStar_TypeChecker_Env.lookup_qname cfg.tcenv uu____13922  in
               let uu____13923 =
                 decide_unfolding cfg env stack t1.FStar_Syntax_Syntax.pos fv
                   qninfo
                  in
               (match uu____13923 with
                | FStar_Pervasives_Native.Some (cfg1,stack1) ->
                    do_unfold_fv cfg1 env stack1 t1 qninfo fv
                | FStar_Pervasives_Native.None  -> rebuild cfg env stack t1)
           | FStar_Syntax_Syntax.Tm_quoted uu____13956 ->
               let uu____13963 = closure_as_term cfg env t1  in
               rebuild cfg env stack uu____13963
           | FStar_Syntax_Syntax.Tm_app (hd1,args) when
               ((Prims.op_Negation (cfg.steps).no_full_norm) &&
                  (is_norm_request hd1 args))
                 &&
                 (let uu____13993 =
                    FStar_Ident.lid_equals
                      (cfg.tcenv).FStar_TypeChecker_Env.curmodule
                      FStar_Parser_Const.prims_lid
                     in
                  Prims.op_Negation uu____13993)
               ->
               let cfg' =
                 let uu___312_13995 = cfg  in
                 {
                   steps =
                     (let uu___313_13998 = cfg.steps  in
                      {
                        beta = (uu___313_13998.beta);
                        iota = (uu___313_13998.iota);
                        zeta = (uu___313_13998.zeta);
                        weak = (uu___313_13998.weak);
                        hnf = (uu___313_13998.hnf);
                        primops = (uu___313_13998.primops);
                        do_not_unfold_pure_lets = false;
                        unfold_until = (uu___313_13998.unfold_until);
                        unfold_only = FStar_Pervasives_Native.None;
                        unfold_fully = FStar_Pervasives_Native.None;
                        unfold_attr = (uu___313_13998.unfold_attr);
                        unfold_tac = (uu___313_13998.unfold_tac);
                        pure_subterms_within_computations =
                          (uu___313_13998.pure_subterms_within_computations);
                        simplify = (uu___313_13998.simplify);
                        erase_universes = (uu___313_13998.erase_universes);
                        allow_unbound_universes =
                          (uu___313_13998.allow_unbound_universes);
                        reify_ = (uu___313_13998.reify_);
                        compress_uvars = (uu___313_13998.compress_uvars);
                        no_full_norm = (uu___313_13998.no_full_norm);
                        check_no_uvars = (uu___313_13998.check_no_uvars);
                        unmeta = (uu___313_13998.unmeta);
                        unascribe = (uu___313_13998.unascribe);
                        in_full_norm_request =
                          (uu___313_13998.in_full_norm_request);
                        weakly_reduce_scrutinee =
                          (uu___313_13998.weakly_reduce_scrutinee)
                      });
                   tcenv = (uu___312_13995.tcenv);
                   debug = (uu___312_13995.debug);
                   delta_level =
                     [FStar_TypeChecker_Env.Unfold
                        FStar_Syntax_Syntax.delta_constant];
                   primitive_steps = (uu___312_13995.primitive_steps);
                   strong = (uu___312_13995.strong);
                   memoize_lazy = (uu___312_13995.memoize_lazy);
                   normalize_pure_lets = true
                 }  in
               let uu____14003 = get_norm_request cfg (norm cfg' env []) args
                  in
               (match uu____14003 with
                | FStar_Pervasives_Native.None  ->
                    let stack1 =
                      FStar_All.pipe_right stack
                        (FStar_List.fold_right
                           (fun uu____14032  ->
                              fun stack1  ->
                                match uu____14032 with
                                | (a,aq) ->
                                    let uu____14044 =
                                      let uu____14045 =
                                        let uu____14052 =
                                          let uu____14053 =
                                            let uu____14084 =
                                              FStar_Util.mk_ref
                                                FStar_Pervasives_Native.None
                                               in
                                            (env, a, uu____14084, false)  in
                                          Clos uu____14053  in
                                        (uu____14052, aq,
                                          (t1.FStar_Syntax_Syntax.pos))
                                         in
                                      Arg uu____14045  in
                                    uu____14044 :: stack1) args)
                       in
                    (log cfg
                       (fun uu____14172  ->
                          let uu____14173 =
                            FStar_All.pipe_left FStar_Util.string_of_int
                              (FStar_List.length args)
                             in
                          FStar_Util.print1 "\tPushed %s arguments\n"
                            uu____14173);
                     norm cfg env stack1 hd1)
                | FStar_Pervasives_Native.Some (s,tm) ->
                    let delta_level =
                      let uu____14195 =
                        FStar_All.pipe_right s
                          (FStar_Util.for_some
                             (fun uu___251_14200  ->
                                match uu___251_14200 with
                                | UnfoldUntil uu____14201 -> true
                                | UnfoldOnly uu____14202 -> true
                                | UnfoldFully uu____14205 -> true
                                | uu____14208 -> false))
                         in
                      if uu____14195
                      then
                        [FStar_TypeChecker_Env.Unfold
                           FStar_Syntax_Syntax.delta_constant]
                      else [FStar_TypeChecker_Env.NoDelta]  in
                    let cfg'1 =
                      let uu___314_14213 = cfg  in
                      let uu____14214 =
                        let uu___315_14215 = to_fsteps s  in
                        {
                          beta = (uu___315_14215.beta);
                          iota = (uu___315_14215.iota);
                          zeta = (uu___315_14215.zeta);
                          weak = (uu___315_14215.weak);
                          hnf = (uu___315_14215.hnf);
                          primops = (uu___315_14215.primops);
                          do_not_unfold_pure_lets =
                            (uu___315_14215.do_not_unfold_pure_lets);
                          unfold_until = (uu___315_14215.unfold_until);
                          unfold_only = (uu___315_14215.unfold_only);
                          unfold_fully = (uu___315_14215.unfold_fully);
                          unfold_attr = (uu___315_14215.unfold_attr);
                          unfold_tac = (uu___315_14215.unfold_tac);
                          pure_subterms_within_computations =
                            (uu___315_14215.pure_subterms_within_computations);
                          simplify = (uu___315_14215.simplify);
                          erase_universes = (uu___315_14215.erase_universes);
                          allow_unbound_universes =
                            (uu___315_14215.allow_unbound_universes);
                          reify_ = (uu___315_14215.reify_);
                          compress_uvars = (uu___315_14215.compress_uvars);
                          no_full_norm = (uu___315_14215.no_full_norm);
                          check_no_uvars = (uu___315_14215.check_no_uvars);
                          unmeta = (uu___315_14215.unmeta);
                          unascribe = (uu___315_14215.unascribe);
                          in_full_norm_request = true;
                          weakly_reduce_scrutinee =
                            (uu___315_14215.weakly_reduce_scrutinee)
                        }  in
                      {
                        steps = uu____14214;
                        tcenv = (uu___314_14213.tcenv);
                        debug = (uu___314_14213.debug);
                        delta_level;
                        primitive_steps = (uu___314_14213.primitive_steps);
                        strong = (uu___314_14213.strong);
                        memoize_lazy = (uu___314_14213.memoize_lazy);
                        normalize_pure_lets = true
                      }  in
                    let stack' =
                      let tail1 = (Cfg cfg) :: stack  in
                      if (cfg.debug).print_normalized
                      then
                        let uu____14220 =
                          let uu____14221 =
                            let uu____14226 = FStar_Util.now ()  in
                            (t1, uu____14226)  in
                          Debug uu____14221  in
                        uu____14220 :: tail1
                      else tail1  in
                    norm cfg'1 env stack' tm)
           | FStar_Syntax_Syntax.Tm_type u ->
               let u1 = norm_universe cfg env u  in
               let uu____14230 =
                 mk (FStar_Syntax_Syntax.Tm_type u1)
                   t1.FStar_Syntax_Syntax.pos
                  in
               rebuild cfg env stack uu____14230
           | FStar_Syntax_Syntax.Tm_uinst (t',us) ->
               if (cfg.steps).erase_universes
               then norm cfg env stack t'
               else
                 (let us1 =
                    let uu____14239 =
                      let uu____14246 =
                        FStar_List.map (norm_universe cfg env) us  in
                      (uu____14246, (t1.FStar_Syntax_Syntax.pos))  in
                    UnivArgs uu____14239  in
                  let stack1 = us1 :: stack  in norm cfg env stack1 t')
           | FStar_Syntax_Syntax.Tm_bvar x ->
               let uu____14255 = lookup_bvar env x  in
               (match uu____14255 with
                | Univ uu____14256 ->
                    failwith
                      "Impossible: term variable is bound to a universe"
                | Dummy  -> failwith "Term variable not found"
                | Clos (env1,t0,r,fix) ->
                    if (Prims.op_Negation fix) || (cfg.steps).zeta
                    then
                      let uu____14305 = FStar_ST.op_Bang r  in
                      (match uu____14305 with
                       | FStar_Pervasives_Native.Some (env2,t') ->
                           (log cfg
                              (fun uu____14427  ->
                                 let uu____14428 =
                                   FStar_Syntax_Print.term_to_string t1  in
                                 let uu____14429 =
                                   FStar_Syntax_Print.term_to_string t'  in
                                 FStar_Util.print2
                                   "Lazy hit: %s cached to %s\n" uu____14428
                                   uu____14429);
                            (let uu____14430 = maybe_weakly_reduced t'  in
                             if uu____14430
                             then
                               match stack with
                               | [] when
                                   (cfg.steps).weak ||
                                     (cfg.steps).compress_uvars
                                   -> rebuild cfg env2 stack t'
                               | uu____14431 -> norm cfg env2 stack t'
                             else rebuild cfg env2 stack t'))
                       | FStar_Pervasives_Native.None  ->
                           norm cfg env1 ((MemoLazy r) :: stack) t0)
                    else norm cfg env1 stack t0)
           | FStar_Syntax_Syntax.Tm_abs (bs,body,lopt) ->
               (match stack with
                | (UnivArgs uu____14502)::uu____14503 ->
                    failwith
                      "Ill-typed term: universes cannot be applied to term abstraction"
                | (Arg (c,uu____14513,uu____14514))::stack_rest ->
                    (match c with
                     | Univ uu____14518 ->
                         norm cfg ((FStar_Pervasives_Native.None, c) :: env)
                           stack_rest t1
                     | uu____14527 ->
                         (match bs with
                          | [] -> failwith "Impossible"
                          | b::[] ->
                              (log cfg
                                 (fun uu____14548  ->
                                    let uu____14549 = closure_to_string c  in
                                    FStar_Util.print1 "\tShifted %s\n"
                                      uu____14549);
                               norm cfg
                                 (((FStar_Pervasives_Native.Some b), c) ::
                                 env) stack_rest body)
                          | b::tl1 ->
                              (log cfg
                                 (fun uu____14577  ->
                                    let uu____14578 = closure_to_string c  in
                                    FStar_Util.print1 "\tShifted %s\n"
                                      uu____14578);
                               (let body1 =
                                  mk
                                    (FStar_Syntax_Syntax.Tm_abs
                                       (tl1, body, lopt))
                                    t1.FStar_Syntax_Syntax.pos
                                   in
                                norm cfg
                                  (((FStar_Pervasives_Native.Some b), c) ::
                                  env) stack_rest body1))))
                | (Cfg cfg1)::stack1 -> norm cfg1 env stack1 t1
                | (MemoLazy r)::stack1 ->
                    (set_memo cfg r (env, t1);
                     log cfg
                       (fun uu____14644  ->
                          let uu____14645 =
                            FStar_Syntax_Print.term_to_string t1  in
                          FStar_Util.print1 "\tSet memo %s\n" uu____14645);
                     norm cfg env stack1 t1)
                | (Match uu____14646)::uu____14647 ->
                    if (cfg.steps).weak
                    then
                      let t2 =
                        if (cfg.steps).in_full_norm_request
                        then closure_as_term cfg env t1
                        else
                          (let steps' =
                             let uu___316_14661 = cfg.steps  in
                             {
                               beta = (uu___316_14661.beta);
                               iota = false;
                               zeta = false;
                               weak = false;
                               hnf = (uu___316_14661.hnf);
                               primops = false;
                               do_not_unfold_pure_lets = true;
                               unfold_until = (uu___316_14661.unfold_until);
                               unfold_only = (uu___316_14661.unfold_only);
                               unfold_fully = (uu___316_14661.unfold_fully);
                               unfold_attr = (uu___316_14661.unfold_attr);
                               unfold_tac = (uu___316_14661.unfold_tac);
                               pure_subterms_within_computations = false;
                               simplify = false;
                               erase_universes =
                                 (uu___316_14661.erase_universes);
                               allow_unbound_universes =
                                 (uu___316_14661.allow_unbound_universes);
                               reify_ = false;
                               compress_uvars =
                                 (uu___316_14661.compress_uvars);
                               no_full_norm = true;
                               check_no_uvars =
                                 (uu___316_14661.check_no_uvars);
                               unmeta = false;
                               unascribe = false;
                               in_full_norm_request =
                                 (uu___316_14661.in_full_norm_request);
                               weakly_reduce_scrutinee =
                                 (uu___316_14661.weakly_reduce_scrutinee)
                             }  in
                           let cfg' =
                             let uu___317_14663 = cfg  in
                             {
                               steps = steps';
                               tcenv = (uu___317_14663.tcenv);
                               debug = (uu___317_14663.debug);
                               delta_level = [FStar_TypeChecker_Env.NoDelta];
                               primitive_steps =
                                 (uu___317_14663.primitive_steps);
                               strong = (uu___317_14663.strong);
                               memoize_lazy = (uu___317_14663.memoize_lazy);
                               normalize_pure_lets =
                                 (uu___317_14663.normalize_pure_lets)
                             }  in
                           norm cfg' env [] t1)
                         in
                      rebuild cfg env stack t2
                    else
                      (let uu____14665 =
                         FStar_Syntax_Subst.open_term' bs body  in
                       match uu____14665 with
                       | (bs1,body1,opening) ->
                           let env' =
                             FStar_All.pipe_right bs1
                               (FStar_List.fold_left
                                  (fun env1  ->
                                     fun uu____14697  -> dummy :: env1) env)
                              in
                           let lopt1 =
                             match lopt with
                             | FStar_Pervasives_Native.Some rc ->
                                 let rct =
                                   if (cfg.steps).check_no_uvars
                                   then
                                     FStar_Util.map_opt
                                       rc.FStar_Syntax_Syntax.residual_typ
                                       (fun t2  ->
                                          let uu____14738 =
                                            FStar_Syntax_Subst.subst opening
                                              t2
                                             in
                                          norm cfg env' [] uu____14738)
                                   else
                                     FStar_Util.map_opt
                                       rc.FStar_Syntax_Syntax.residual_typ
                                       (FStar_Syntax_Subst.subst opening)
                                    in
                                 FStar_Pervasives_Native.Some
                                   (let uu___318_14745 = rc  in
                                    {
                                      FStar_Syntax_Syntax.residual_effect =
                                        (uu___318_14745.FStar_Syntax_Syntax.residual_effect);
                                      FStar_Syntax_Syntax.residual_typ = rct;
                                      FStar_Syntax_Syntax.residual_flags =
                                        (uu___318_14745.FStar_Syntax_Syntax.residual_flags)
                                    })
                             | uu____14746 -> lopt  in
                           (log cfg
                              (fun uu____14752  ->
                                 let uu____14753 =
                                   FStar_All.pipe_left
                                     FStar_Util.string_of_int
                                     (FStar_List.length bs1)
                                    in
                                 FStar_Util.print1 "\tShifted %s dummies\n"
                                   uu____14753);
                            (let stack1 = (Cfg cfg) :: stack  in
                             let cfg1 =
                               let uu___319_14762 = cfg  in
                               {
                                 steps = (uu___319_14762.steps);
                                 tcenv = (uu___319_14762.tcenv);
                                 debug = (uu___319_14762.debug);
                                 delta_level = (uu___319_14762.delta_level);
                                 primitive_steps =
                                   (uu___319_14762.primitive_steps);
                                 strong = true;
                                 memoize_lazy = (uu___319_14762.memoize_lazy);
                                 normalize_pure_lets =
                                   (uu___319_14762.normalize_pure_lets)
                               }  in
                             norm cfg1 env'
                               ((Abs
                                   (env, bs1, env', lopt1,
                                     (t1.FStar_Syntax_Syntax.pos))) ::
                               stack1) body1)))
                | (Debug uu____14765)::uu____14766 ->
                    if (cfg.steps).weak
                    then
                      let t2 =
                        if (cfg.steps).in_full_norm_request
                        then closure_as_term cfg env t1
                        else
                          (let steps' =
                             let uu___316_14776 = cfg.steps  in
                             {
                               beta = (uu___316_14776.beta);
                               iota = false;
                               zeta = false;
                               weak = false;
                               hnf = (uu___316_14776.hnf);
                               primops = false;
                               do_not_unfold_pure_lets = true;
                               unfold_until = (uu___316_14776.unfold_until);
                               unfold_only = (uu___316_14776.unfold_only);
                               unfold_fully = (uu___316_14776.unfold_fully);
                               unfold_attr = (uu___316_14776.unfold_attr);
                               unfold_tac = (uu___316_14776.unfold_tac);
                               pure_subterms_within_computations = false;
                               simplify = false;
                               erase_universes =
                                 (uu___316_14776.erase_universes);
                               allow_unbound_universes =
                                 (uu___316_14776.allow_unbound_universes);
                               reify_ = false;
                               compress_uvars =
                                 (uu___316_14776.compress_uvars);
                               no_full_norm = true;
                               check_no_uvars =
                                 (uu___316_14776.check_no_uvars);
                               unmeta = false;
                               unascribe = false;
                               in_full_norm_request =
                                 (uu___316_14776.in_full_norm_request);
                               weakly_reduce_scrutinee =
                                 (uu___316_14776.weakly_reduce_scrutinee)
                             }  in
                           let cfg' =
                             let uu___317_14778 = cfg  in
                             {
                               steps = steps';
                               tcenv = (uu___317_14778.tcenv);
                               debug = (uu___317_14778.debug);
                               delta_level = [FStar_TypeChecker_Env.NoDelta];
                               primitive_steps =
                                 (uu___317_14778.primitive_steps);
                               strong = (uu___317_14778.strong);
                               memoize_lazy = (uu___317_14778.memoize_lazy);
                               normalize_pure_lets =
                                 (uu___317_14778.normalize_pure_lets)
                             }  in
                           norm cfg' env [] t1)
                         in
                      rebuild cfg env stack t2
                    else
                      (let uu____14780 =
                         FStar_Syntax_Subst.open_term' bs body  in
                       match uu____14780 with
                       | (bs1,body1,opening) ->
                           let env' =
                             FStar_All.pipe_right bs1
                               (FStar_List.fold_left
                                  (fun env1  ->
                                     fun uu____14812  -> dummy :: env1) env)
                              in
                           let lopt1 =
                             match lopt with
                             | FStar_Pervasives_Native.Some rc ->
                                 let rct =
                                   if (cfg.steps).check_no_uvars
                                   then
                                     FStar_Util.map_opt
                                       rc.FStar_Syntax_Syntax.residual_typ
                                       (fun t2  ->
                                          let uu____14853 =
                                            FStar_Syntax_Subst.subst opening
                                              t2
                                             in
                                          norm cfg env' [] uu____14853)
                                   else
                                     FStar_Util.map_opt
                                       rc.FStar_Syntax_Syntax.residual_typ
                                       (FStar_Syntax_Subst.subst opening)
                                    in
                                 FStar_Pervasives_Native.Some
                                   (let uu___318_14860 = rc  in
                                    {
                                      FStar_Syntax_Syntax.residual_effect =
                                        (uu___318_14860.FStar_Syntax_Syntax.residual_effect);
                                      FStar_Syntax_Syntax.residual_typ = rct;
                                      FStar_Syntax_Syntax.residual_flags =
                                        (uu___318_14860.FStar_Syntax_Syntax.residual_flags)
                                    })
                             | uu____14861 -> lopt  in
                           (log cfg
                              (fun uu____14867  ->
                                 let uu____14868 =
                                   FStar_All.pipe_left
                                     FStar_Util.string_of_int
                                     (FStar_List.length bs1)
                                    in
                                 FStar_Util.print1 "\tShifted %s dummies\n"
                                   uu____14868);
                            (let stack1 = (Cfg cfg) :: stack  in
                             let cfg1 =
                               let uu___319_14877 = cfg  in
                               {
                                 steps = (uu___319_14877.steps);
                                 tcenv = (uu___319_14877.tcenv);
                                 debug = (uu___319_14877.debug);
                                 delta_level = (uu___319_14877.delta_level);
                                 primitive_steps =
                                   (uu___319_14877.primitive_steps);
                                 strong = true;
                                 memoize_lazy = (uu___319_14877.memoize_lazy);
                                 normalize_pure_lets =
                                   (uu___319_14877.normalize_pure_lets)
                               }  in
                             norm cfg1 env'
                               ((Abs
                                   (env, bs1, env', lopt1,
                                     (t1.FStar_Syntax_Syntax.pos))) ::
                               stack1) body1)))
                | (Meta uu____14880)::uu____14881 ->
                    if (cfg.steps).weak
                    then
                      let t2 =
                        if (cfg.steps).in_full_norm_request
                        then closure_as_term cfg env t1
                        else
                          (let steps' =
                             let uu___316_14893 = cfg.steps  in
                             {
                               beta = (uu___316_14893.beta);
                               iota = false;
                               zeta = false;
                               weak = false;
                               hnf = (uu___316_14893.hnf);
                               primops = false;
                               do_not_unfold_pure_lets = true;
                               unfold_until = (uu___316_14893.unfold_until);
                               unfold_only = (uu___316_14893.unfold_only);
                               unfold_fully = (uu___316_14893.unfold_fully);
                               unfold_attr = (uu___316_14893.unfold_attr);
                               unfold_tac = (uu___316_14893.unfold_tac);
                               pure_subterms_within_computations = false;
                               simplify = false;
                               erase_universes =
                                 (uu___316_14893.erase_universes);
                               allow_unbound_universes =
                                 (uu___316_14893.allow_unbound_universes);
                               reify_ = false;
                               compress_uvars =
                                 (uu___316_14893.compress_uvars);
                               no_full_norm = true;
                               check_no_uvars =
                                 (uu___316_14893.check_no_uvars);
                               unmeta = false;
                               unascribe = false;
                               in_full_norm_request =
                                 (uu___316_14893.in_full_norm_request);
                               weakly_reduce_scrutinee =
                                 (uu___316_14893.weakly_reduce_scrutinee)
                             }  in
                           let cfg' =
                             let uu___317_14895 = cfg  in
                             {
                               steps = steps';
                               tcenv = (uu___317_14895.tcenv);
                               debug = (uu___317_14895.debug);
                               delta_level = [FStar_TypeChecker_Env.NoDelta];
                               primitive_steps =
                                 (uu___317_14895.primitive_steps);
                               strong = (uu___317_14895.strong);
                               memoize_lazy = (uu___317_14895.memoize_lazy);
                               normalize_pure_lets =
                                 (uu___317_14895.normalize_pure_lets)
                             }  in
                           norm cfg' env [] t1)
                         in
                      rebuild cfg env stack t2
                    else
                      (let uu____14897 =
                         FStar_Syntax_Subst.open_term' bs body  in
                       match uu____14897 with
                       | (bs1,body1,opening) ->
                           let env' =
                             FStar_All.pipe_right bs1
                               (FStar_List.fold_left
                                  (fun env1  ->
                                     fun uu____14929  -> dummy :: env1) env)
                              in
                           let lopt1 =
                             match lopt with
                             | FStar_Pervasives_Native.Some rc ->
                                 let rct =
                                   if (cfg.steps).check_no_uvars
                                   then
                                     FStar_Util.map_opt
                                       rc.FStar_Syntax_Syntax.residual_typ
                                       (fun t2  ->
                                          let uu____14970 =
                                            FStar_Syntax_Subst.subst opening
                                              t2
                                             in
                                          norm cfg env' [] uu____14970)
                                   else
                                     FStar_Util.map_opt
                                       rc.FStar_Syntax_Syntax.residual_typ
                                       (FStar_Syntax_Subst.subst opening)
                                    in
                                 FStar_Pervasives_Native.Some
                                   (let uu___318_14977 = rc  in
                                    {
                                      FStar_Syntax_Syntax.residual_effect =
                                        (uu___318_14977.FStar_Syntax_Syntax.residual_effect);
                                      FStar_Syntax_Syntax.residual_typ = rct;
                                      FStar_Syntax_Syntax.residual_flags =
                                        (uu___318_14977.FStar_Syntax_Syntax.residual_flags)
                                    })
                             | uu____14978 -> lopt  in
                           (log cfg
                              (fun uu____14984  ->
                                 let uu____14985 =
                                   FStar_All.pipe_left
                                     FStar_Util.string_of_int
                                     (FStar_List.length bs1)
                                    in
                                 FStar_Util.print1 "\tShifted %s dummies\n"
                                   uu____14985);
                            (let stack1 = (Cfg cfg) :: stack  in
                             let cfg1 =
                               let uu___319_14994 = cfg  in
                               {
                                 steps = (uu___319_14994.steps);
                                 tcenv = (uu___319_14994.tcenv);
                                 debug = (uu___319_14994.debug);
                                 delta_level = (uu___319_14994.delta_level);
                                 primitive_steps =
                                   (uu___319_14994.primitive_steps);
                                 strong = true;
                                 memoize_lazy = (uu___319_14994.memoize_lazy);
                                 normalize_pure_lets =
                                   (uu___319_14994.normalize_pure_lets)
                               }  in
                             norm cfg1 env'
                               ((Abs
                                   (env, bs1, env', lopt1,
                                     (t1.FStar_Syntax_Syntax.pos))) ::
                               stack1) body1)))
                | (Let uu____14997)::uu____14998 ->
                    if (cfg.steps).weak
                    then
                      let t2 =
                        if (cfg.steps).in_full_norm_request
                        then closure_as_term cfg env t1
                        else
                          (let steps' =
                             let uu___316_15012 = cfg.steps  in
                             {
                               beta = (uu___316_15012.beta);
                               iota = false;
                               zeta = false;
                               weak = false;
                               hnf = (uu___316_15012.hnf);
                               primops = false;
                               do_not_unfold_pure_lets = true;
                               unfold_until = (uu___316_15012.unfold_until);
                               unfold_only = (uu___316_15012.unfold_only);
                               unfold_fully = (uu___316_15012.unfold_fully);
                               unfold_attr = (uu___316_15012.unfold_attr);
                               unfold_tac = (uu___316_15012.unfold_tac);
                               pure_subterms_within_computations = false;
                               simplify = false;
                               erase_universes =
                                 (uu___316_15012.erase_universes);
                               allow_unbound_universes =
                                 (uu___316_15012.allow_unbound_universes);
                               reify_ = false;
                               compress_uvars =
                                 (uu___316_15012.compress_uvars);
                               no_full_norm = true;
                               check_no_uvars =
                                 (uu___316_15012.check_no_uvars);
                               unmeta = false;
                               unascribe = false;
                               in_full_norm_request =
                                 (uu___316_15012.in_full_norm_request);
                               weakly_reduce_scrutinee =
                                 (uu___316_15012.weakly_reduce_scrutinee)
                             }  in
                           let cfg' =
                             let uu___317_15014 = cfg  in
                             {
                               steps = steps';
                               tcenv = (uu___317_15014.tcenv);
                               debug = (uu___317_15014.debug);
                               delta_level = [FStar_TypeChecker_Env.NoDelta];
                               primitive_steps =
                                 (uu___317_15014.primitive_steps);
                               strong = (uu___317_15014.strong);
                               memoize_lazy = (uu___317_15014.memoize_lazy);
                               normalize_pure_lets =
                                 (uu___317_15014.normalize_pure_lets)
                             }  in
                           norm cfg' env [] t1)
                         in
                      rebuild cfg env stack t2
                    else
                      (let uu____15016 =
                         FStar_Syntax_Subst.open_term' bs body  in
                       match uu____15016 with
                       | (bs1,body1,opening) ->
                           let env' =
                             FStar_All.pipe_right bs1
                               (FStar_List.fold_left
                                  (fun env1  ->
                                     fun uu____15048  -> dummy :: env1) env)
                              in
                           let lopt1 =
                             match lopt with
                             | FStar_Pervasives_Native.Some rc ->
                                 let rct =
                                   if (cfg.steps).check_no_uvars
                                   then
                                     FStar_Util.map_opt
                                       rc.FStar_Syntax_Syntax.residual_typ
                                       (fun t2  ->
                                          let uu____15089 =
                                            FStar_Syntax_Subst.subst opening
                                              t2
                                             in
                                          norm cfg env' [] uu____15089)
                                   else
                                     FStar_Util.map_opt
                                       rc.FStar_Syntax_Syntax.residual_typ
                                       (FStar_Syntax_Subst.subst opening)
                                    in
                                 FStar_Pervasives_Native.Some
                                   (let uu___318_15096 = rc  in
                                    {
                                      FStar_Syntax_Syntax.residual_effect =
                                        (uu___318_15096.FStar_Syntax_Syntax.residual_effect);
                                      FStar_Syntax_Syntax.residual_typ = rct;
                                      FStar_Syntax_Syntax.residual_flags =
                                        (uu___318_15096.FStar_Syntax_Syntax.residual_flags)
                                    })
                             | uu____15097 -> lopt  in
                           (log cfg
                              (fun uu____15103  ->
                                 let uu____15104 =
                                   FStar_All.pipe_left
                                     FStar_Util.string_of_int
                                     (FStar_List.length bs1)
                                    in
                                 FStar_Util.print1 "\tShifted %s dummies\n"
                                   uu____15104);
                            (let stack1 = (Cfg cfg) :: stack  in
                             let cfg1 =
                               let uu___319_15113 = cfg  in
                               {
                                 steps = (uu___319_15113.steps);
                                 tcenv = (uu___319_15113.tcenv);
                                 debug = (uu___319_15113.debug);
                                 delta_level = (uu___319_15113.delta_level);
                                 primitive_steps =
                                   (uu___319_15113.primitive_steps);
                                 strong = true;
                                 memoize_lazy = (uu___319_15113.memoize_lazy);
                                 normalize_pure_lets =
                                   (uu___319_15113.normalize_pure_lets)
                               }  in
                             norm cfg1 env'
                               ((Abs
                                   (env, bs1, env', lopt1,
                                     (t1.FStar_Syntax_Syntax.pos))) ::
                               stack1) body1)))
                | (App uu____15116)::uu____15117 ->
                    if (cfg.steps).weak
                    then
                      let t2 =
                        if (cfg.steps).in_full_norm_request
                        then closure_as_term cfg env t1
                        else
                          (let steps' =
                             let uu___316_15131 = cfg.steps  in
                             {
                               beta = (uu___316_15131.beta);
                               iota = false;
                               zeta = false;
                               weak = false;
                               hnf = (uu___316_15131.hnf);
                               primops = false;
                               do_not_unfold_pure_lets = true;
                               unfold_until = (uu___316_15131.unfold_until);
                               unfold_only = (uu___316_15131.unfold_only);
                               unfold_fully = (uu___316_15131.unfold_fully);
                               unfold_attr = (uu___316_15131.unfold_attr);
                               unfold_tac = (uu___316_15131.unfold_tac);
                               pure_subterms_within_computations = false;
                               simplify = false;
                               erase_universes =
                                 (uu___316_15131.erase_universes);
                               allow_unbound_universes =
                                 (uu___316_15131.allow_unbound_universes);
                               reify_ = false;
                               compress_uvars =
                                 (uu___316_15131.compress_uvars);
                               no_full_norm = true;
                               check_no_uvars =
                                 (uu___316_15131.check_no_uvars);
                               unmeta = false;
                               unascribe = false;
                               in_full_norm_request =
                                 (uu___316_15131.in_full_norm_request);
                               weakly_reduce_scrutinee =
                                 (uu___316_15131.weakly_reduce_scrutinee)
                             }  in
                           let cfg' =
                             let uu___317_15133 = cfg  in
                             {
                               steps = steps';
                               tcenv = (uu___317_15133.tcenv);
                               debug = (uu___317_15133.debug);
                               delta_level = [FStar_TypeChecker_Env.NoDelta];
                               primitive_steps =
                                 (uu___317_15133.primitive_steps);
                               strong = (uu___317_15133.strong);
                               memoize_lazy = (uu___317_15133.memoize_lazy);
                               normalize_pure_lets =
                                 (uu___317_15133.normalize_pure_lets)
                             }  in
                           norm cfg' env [] t1)
                         in
                      rebuild cfg env stack t2
                    else
                      (let uu____15135 =
                         FStar_Syntax_Subst.open_term' bs body  in
                       match uu____15135 with
                       | (bs1,body1,opening) ->
                           let env' =
                             FStar_All.pipe_right bs1
                               (FStar_List.fold_left
                                  (fun env1  ->
                                     fun uu____15167  -> dummy :: env1) env)
                              in
                           let lopt1 =
                             match lopt with
                             | FStar_Pervasives_Native.Some rc ->
                                 let rct =
                                   if (cfg.steps).check_no_uvars
                                   then
                                     FStar_Util.map_opt
                                       rc.FStar_Syntax_Syntax.residual_typ
                                       (fun t2  ->
                                          let uu____15208 =
                                            FStar_Syntax_Subst.subst opening
                                              t2
                                             in
                                          norm cfg env' [] uu____15208)
                                   else
                                     FStar_Util.map_opt
                                       rc.FStar_Syntax_Syntax.residual_typ
                                       (FStar_Syntax_Subst.subst opening)
                                    in
                                 FStar_Pervasives_Native.Some
                                   (let uu___318_15215 = rc  in
                                    {
                                      FStar_Syntax_Syntax.residual_effect =
                                        (uu___318_15215.FStar_Syntax_Syntax.residual_effect);
                                      FStar_Syntax_Syntax.residual_typ = rct;
                                      FStar_Syntax_Syntax.residual_flags =
                                        (uu___318_15215.FStar_Syntax_Syntax.residual_flags)
                                    })
                             | uu____15216 -> lopt  in
                           (log cfg
                              (fun uu____15222  ->
                                 let uu____15223 =
                                   FStar_All.pipe_left
                                     FStar_Util.string_of_int
                                     (FStar_List.length bs1)
                                    in
                                 FStar_Util.print1 "\tShifted %s dummies\n"
                                   uu____15223);
                            (let stack1 = (Cfg cfg) :: stack  in
                             let cfg1 =
                               let uu___319_15232 = cfg  in
                               {
                                 steps = (uu___319_15232.steps);
                                 tcenv = (uu___319_15232.tcenv);
                                 debug = (uu___319_15232.debug);
                                 delta_level = (uu___319_15232.delta_level);
                                 primitive_steps =
                                   (uu___319_15232.primitive_steps);
                                 strong = true;
                                 memoize_lazy = (uu___319_15232.memoize_lazy);
                                 normalize_pure_lets =
                                   (uu___319_15232.normalize_pure_lets)
                               }  in
                             norm cfg1 env'
                               ((Abs
                                   (env, bs1, env', lopt1,
                                     (t1.FStar_Syntax_Syntax.pos))) ::
                               stack1) body1)))
                | (Abs uu____15235)::uu____15236 ->
                    if (cfg.steps).weak
                    then
                      let t2 =
                        if (cfg.steps).in_full_norm_request
                        then closure_as_term cfg env t1
                        else
                          (let steps' =
                             let uu___316_15254 = cfg.steps  in
                             {
                               beta = (uu___316_15254.beta);
                               iota = false;
                               zeta = false;
                               weak = false;
                               hnf = (uu___316_15254.hnf);
                               primops = false;
                               do_not_unfold_pure_lets = true;
                               unfold_until = (uu___316_15254.unfold_until);
                               unfold_only = (uu___316_15254.unfold_only);
                               unfold_fully = (uu___316_15254.unfold_fully);
                               unfold_attr = (uu___316_15254.unfold_attr);
                               unfold_tac = (uu___316_15254.unfold_tac);
                               pure_subterms_within_computations = false;
                               simplify = false;
                               erase_universes =
                                 (uu___316_15254.erase_universes);
                               allow_unbound_universes =
                                 (uu___316_15254.allow_unbound_universes);
                               reify_ = false;
                               compress_uvars =
                                 (uu___316_15254.compress_uvars);
                               no_full_norm = true;
                               check_no_uvars =
                                 (uu___316_15254.check_no_uvars);
                               unmeta = false;
                               unascribe = false;
                               in_full_norm_request =
                                 (uu___316_15254.in_full_norm_request);
                               weakly_reduce_scrutinee =
                                 (uu___316_15254.weakly_reduce_scrutinee)
                             }  in
                           let cfg' =
                             let uu___317_15256 = cfg  in
                             {
                               steps = steps';
                               tcenv = (uu___317_15256.tcenv);
                               debug = (uu___317_15256.debug);
                               delta_level = [FStar_TypeChecker_Env.NoDelta];
                               primitive_steps =
                                 (uu___317_15256.primitive_steps);
                               strong = (uu___317_15256.strong);
                               memoize_lazy = (uu___317_15256.memoize_lazy);
                               normalize_pure_lets =
                                 (uu___317_15256.normalize_pure_lets)
                             }  in
                           norm cfg' env [] t1)
                         in
                      rebuild cfg env stack t2
                    else
                      (let uu____15258 =
                         FStar_Syntax_Subst.open_term' bs body  in
                       match uu____15258 with
                       | (bs1,body1,opening) ->
                           let env' =
                             FStar_All.pipe_right bs1
                               (FStar_List.fold_left
                                  (fun env1  ->
                                     fun uu____15290  -> dummy :: env1) env)
                              in
                           let lopt1 =
                             match lopt with
                             | FStar_Pervasives_Native.Some rc ->
                                 let rct =
                                   if (cfg.steps).check_no_uvars
                                   then
                                     FStar_Util.map_opt
                                       rc.FStar_Syntax_Syntax.residual_typ
                                       (fun t2  ->
                                          let uu____15331 =
                                            FStar_Syntax_Subst.subst opening
                                              t2
                                             in
                                          norm cfg env' [] uu____15331)
                                   else
                                     FStar_Util.map_opt
                                       rc.FStar_Syntax_Syntax.residual_typ
                                       (FStar_Syntax_Subst.subst opening)
                                    in
                                 FStar_Pervasives_Native.Some
                                   (let uu___318_15338 = rc  in
                                    {
                                      FStar_Syntax_Syntax.residual_effect =
                                        (uu___318_15338.FStar_Syntax_Syntax.residual_effect);
                                      FStar_Syntax_Syntax.residual_typ = rct;
                                      FStar_Syntax_Syntax.residual_flags =
                                        (uu___318_15338.FStar_Syntax_Syntax.residual_flags)
                                    })
                             | uu____15339 -> lopt  in
                           (log cfg
                              (fun uu____15345  ->
                                 let uu____15346 =
                                   FStar_All.pipe_left
                                     FStar_Util.string_of_int
                                     (FStar_List.length bs1)
                                    in
                                 FStar_Util.print1 "\tShifted %s dummies\n"
                                   uu____15346);
                            (let stack1 = (Cfg cfg) :: stack  in
                             let cfg1 =
                               let uu___319_15355 = cfg  in
                               {
                                 steps = (uu___319_15355.steps);
                                 tcenv = (uu___319_15355.tcenv);
                                 debug = (uu___319_15355.debug);
                                 delta_level = (uu___319_15355.delta_level);
                                 primitive_steps =
                                   (uu___319_15355.primitive_steps);
                                 strong = true;
                                 memoize_lazy = (uu___319_15355.memoize_lazy);
                                 normalize_pure_lets =
                                   (uu___319_15355.normalize_pure_lets)
                               }  in
                             norm cfg1 env'
                               ((Abs
                                   (env, bs1, env', lopt1,
                                     (t1.FStar_Syntax_Syntax.pos))) ::
                               stack1) body1)))
                | [] ->
                    if (cfg.steps).weak
                    then
                      let t2 =
                        if (cfg.steps).in_full_norm_request
                        then closure_as_term cfg env t1
                        else
                          (let steps' =
                             let uu___316_15361 = cfg.steps  in
                             {
                               beta = (uu___316_15361.beta);
                               iota = false;
                               zeta = false;
                               weak = false;
                               hnf = (uu___316_15361.hnf);
                               primops = false;
                               do_not_unfold_pure_lets = true;
                               unfold_until = (uu___316_15361.unfold_until);
                               unfold_only = (uu___316_15361.unfold_only);
                               unfold_fully = (uu___316_15361.unfold_fully);
                               unfold_attr = (uu___316_15361.unfold_attr);
                               unfold_tac = (uu___316_15361.unfold_tac);
                               pure_subterms_within_computations = false;
                               simplify = false;
                               erase_universes =
                                 (uu___316_15361.erase_universes);
                               allow_unbound_universes =
                                 (uu___316_15361.allow_unbound_universes);
                               reify_ = false;
                               compress_uvars =
                                 (uu___316_15361.compress_uvars);
                               no_full_norm = true;
                               check_no_uvars =
                                 (uu___316_15361.check_no_uvars);
                               unmeta = false;
                               unascribe = false;
                               in_full_norm_request =
                                 (uu___316_15361.in_full_norm_request);
                               weakly_reduce_scrutinee =
                                 (uu___316_15361.weakly_reduce_scrutinee)
                             }  in
                           let cfg' =
                             let uu___317_15363 = cfg  in
                             {
                               steps = steps';
                               tcenv = (uu___317_15363.tcenv);
                               debug = (uu___317_15363.debug);
                               delta_level = [FStar_TypeChecker_Env.NoDelta];
                               primitive_steps =
                                 (uu___317_15363.primitive_steps);
                               strong = (uu___317_15363.strong);
                               memoize_lazy = (uu___317_15363.memoize_lazy);
                               normalize_pure_lets =
                                 (uu___317_15363.normalize_pure_lets)
                             }  in
                           norm cfg' env [] t1)
                         in
                      rebuild cfg env stack t2
                    else
                      (let uu____15365 =
                         FStar_Syntax_Subst.open_term' bs body  in
                       match uu____15365 with
                       | (bs1,body1,opening) ->
                           let env' =
                             FStar_All.pipe_right bs1
                               (FStar_List.fold_left
                                  (fun env1  ->
                                     fun uu____15397  -> dummy :: env1) env)
                              in
                           let lopt1 =
                             match lopt with
                             | FStar_Pervasives_Native.Some rc ->
                                 let rct =
                                   if (cfg.steps).check_no_uvars
                                   then
                                     FStar_Util.map_opt
                                       rc.FStar_Syntax_Syntax.residual_typ
                                       (fun t2  ->
                                          let uu____15438 =
                                            FStar_Syntax_Subst.subst opening
                                              t2
                                             in
                                          norm cfg env' [] uu____15438)
                                   else
                                     FStar_Util.map_opt
                                       rc.FStar_Syntax_Syntax.residual_typ
                                       (FStar_Syntax_Subst.subst opening)
                                    in
                                 FStar_Pervasives_Native.Some
                                   (let uu___318_15445 = rc  in
                                    {
                                      FStar_Syntax_Syntax.residual_effect =
                                        (uu___318_15445.FStar_Syntax_Syntax.residual_effect);
                                      FStar_Syntax_Syntax.residual_typ = rct;
                                      FStar_Syntax_Syntax.residual_flags =
                                        (uu___318_15445.FStar_Syntax_Syntax.residual_flags)
                                    })
                             | uu____15446 -> lopt  in
                           (log cfg
                              (fun uu____15452  ->
                                 let uu____15453 =
                                   FStar_All.pipe_left
                                     FStar_Util.string_of_int
                                     (FStar_List.length bs1)
                                    in
                                 FStar_Util.print1 "\tShifted %s dummies\n"
                                   uu____15453);
                            (let stack1 = (Cfg cfg) :: stack  in
                             let cfg1 =
                               let uu___319_15462 = cfg  in
                               {
                                 steps = (uu___319_15462.steps);
                                 tcenv = (uu___319_15462.tcenv);
                                 debug = (uu___319_15462.debug);
                                 delta_level = (uu___319_15462.delta_level);
                                 primitive_steps =
                                   (uu___319_15462.primitive_steps);
                                 strong = true;
                                 memoize_lazy = (uu___319_15462.memoize_lazy);
                                 normalize_pure_lets =
                                   (uu___319_15462.normalize_pure_lets)
                               }  in
                             norm cfg1 env'
                               ((Abs
                                   (env, bs1, env', lopt1,
                                     (t1.FStar_Syntax_Syntax.pos))) ::
                               stack1) body1))))
           | FStar_Syntax_Syntax.Tm_app (head1,args) ->
               let stack1 =
                 FStar_All.pipe_right stack
                   (FStar_List.fold_right
                      (fun uu____15501  ->
                         fun stack1  ->
                           match uu____15501 with
                           | (a,aq) ->
                               let uu____15513 =
                                 let uu____15514 =
                                   let uu____15521 =
                                     let uu____15522 =
                                       let uu____15553 =
                                         FStar_Util.mk_ref
                                           FStar_Pervasives_Native.None
                                          in
                                       (env, a, uu____15553, false)  in
                                     Clos uu____15522  in
                                   (uu____15521, aq,
                                     (t1.FStar_Syntax_Syntax.pos))
                                    in
                                 Arg uu____15514  in
                               uu____15513 :: stack1) args)
                  in
               (log cfg
                  (fun uu____15641  ->
                     let uu____15642 =
                       FStar_All.pipe_left FStar_Util.string_of_int
                         (FStar_List.length args)
                        in
                     FStar_Util.print1 "\tPushed %s arguments\n" uu____15642);
                norm cfg env stack1 head1)
           | FStar_Syntax_Syntax.Tm_refine (x,f) ->
               if (cfg.steps).weak
               then
                 (match (env, stack) with
                  | ([],[]) ->
                      let t_x = norm cfg env [] x.FStar_Syntax_Syntax.sort
                         in
                      let t2 =
                        mk
                          (FStar_Syntax_Syntax.Tm_refine
                             ((let uu___320_15688 = x  in
                               {
                                 FStar_Syntax_Syntax.ppname =
                                   (uu___320_15688.FStar_Syntax_Syntax.ppname);
                                 FStar_Syntax_Syntax.index =
                                   (uu___320_15688.FStar_Syntax_Syntax.index);
                                 FStar_Syntax_Syntax.sort = t_x
                               }), f)) t1.FStar_Syntax_Syntax.pos
                         in
                      rebuild cfg env stack t2
                  | uu____15689 ->
                      let uu____15704 = closure_as_term cfg env t1  in
                      rebuild cfg env stack uu____15704)
               else
                 (let t_x = norm cfg env [] x.FStar_Syntax_Syntax.sort  in
                  let uu____15707 =
                    FStar_Syntax_Subst.open_term
                      [(x, FStar_Pervasives_Native.None)] f
                     in
                  match uu____15707 with
                  | (closing,f1) ->
                      let f2 = norm cfg (dummy :: env) [] f1  in
                      let t2 =
                        let uu____15732 =
                          let uu____15733 =
                            let uu____15740 =
                              FStar_Syntax_Subst.close closing f2  in
                            ((let uu___321_15746 = x  in
                              {
                                FStar_Syntax_Syntax.ppname =
                                  (uu___321_15746.FStar_Syntax_Syntax.ppname);
                                FStar_Syntax_Syntax.index =
                                  (uu___321_15746.FStar_Syntax_Syntax.index);
                                FStar_Syntax_Syntax.sort = t_x
                              }), uu____15740)
                             in
                          FStar_Syntax_Syntax.Tm_refine uu____15733  in
                        mk uu____15732 t1.FStar_Syntax_Syntax.pos  in
                      rebuild cfg env stack t2)
           | FStar_Syntax_Syntax.Tm_arrow (bs,c) ->
               if (cfg.steps).weak
               then
                 let uu____15765 = closure_as_term cfg env t1  in
                 rebuild cfg env stack uu____15765
               else
                 (let uu____15767 = FStar_Syntax_Subst.open_comp bs c  in
                  match uu____15767 with
                  | (bs1,c1) ->
                      let c2 =
                        let uu____15775 =
                          FStar_All.pipe_right bs1
                            (FStar_List.fold_left
                               (fun env1  ->
                                  fun uu____15797  -> dummy :: env1) env)
                           in
                        norm_comp cfg uu____15775 c1  in
                      let t2 =
                        let uu____15819 = norm_binders cfg env bs1  in
                        FStar_Syntax_Util.arrow uu____15819 c2  in
                      rebuild cfg env stack t2)
           | FStar_Syntax_Syntax.Tm_ascribed (t11,(tc,tacopt),l) when
               (cfg.steps).unascribe -> norm cfg env stack t11
           | FStar_Syntax_Syntax.Tm_ascribed (t11,(tc,tacopt),l) ->
               (match stack with
                | (Match uu____15930)::uu____15931 ->
                    (log cfg
                       (fun uu____15944  ->
                          FStar_Util.print_string
                            "+++ Dropping ascription \n");
                     norm cfg env stack t11)
                | (Arg uu____15945)::uu____15946 ->
                    (log cfg
                       (fun uu____15957  ->
                          FStar_Util.print_string
                            "+++ Dropping ascription \n");
                     norm cfg env stack t11)
                | (App
                    (uu____15958,{
                                   FStar_Syntax_Syntax.n =
                                     FStar_Syntax_Syntax.Tm_constant
                                     (FStar_Const.Const_reify );
                                   FStar_Syntax_Syntax.pos = uu____15959;
                                   FStar_Syntax_Syntax.vars = uu____15960;_},uu____15961,uu____15962))::uu____15963
                    ->
                    (log cfg
                       (fun uu____15970  ->
                          FStar_Util.print_string
                            "+++ Dropping ascription \n");
                     norm cfg env stack t11)
                | (MemoLazy uu____15971)::uu____15972 ->
                    (log cfg
                       (fun uu____15983  ->
                          FStar_Util.print_string
                            "+++ Dropping ascription \n");
                     norm cfg env stack t11)
                | uu____15984 ->
                    (log cfg
                       (fun uu____15987  ->
                          FStar_Util.print_string "+++ Keeping ascription \n");
                     (let t12 = norm cfg env [] t11  in
                      log cfg
                        (fun uu____15991  ->
                           FStar_Util.print_string
                             "+++ Normalizing ascription \n");
                      (let tc1 =
                         match tc with
                         | FStar_Util.Inl t2 ->
                             let uu____16016 = norm cfg env [] t2  in
                             FStar_Util.Inl uu____16016
                         | FStar_Util.Inr c ->
                             let uu____16030 = norm_comp cfg env c  in
                             FStar_Util.Inr uu____16030
                          in
                       let tacopt1 =
                         FStar_Util.map_opt tacopt (norm cfg env [])  in
                       match stack with
                       | (Cfg cfg1)::stack1 ->
                           let t2 =
                             let uu____16053 =
                               let uu____16054 =
                                 let uu____16081 =
                                   FStar_Syntax_Util.unascribe t12  in
                                 (uu____16081, (tc1, tacopt1), l)  in
                               FStar_Syntax_Syntax.Tm_ascribed uu____16054
                                in
                             mk uu____16053 t1.FStar_Syntax_Syntax.pos  in
                           norm cfg1 env stack1 t2
                       | uu____16116 ->
                           let uu____16117 =
                             let uu____16118 =
                               let uu____16119 =
                                 let uu____16146 =
                                   FStar_Syntax_Util.unascribe t12  in
                                 (uu____16146, (tc1, tacopt1), l)  in
                               FStar_Syntax_Syntax.Tm_ascribed uu____16119
                                in
                             mk uu____16118 t1.FStar_Syntax_Syntax.pos  in
                           rebuild cfg env stack uu____16117))))
           | FStar_Syntax_Syntax.Tm_match (head1,branches) ->
               let stack1 =
                 (Match (env, branches, cfg, (t1.FStar_Syntax_Syntax.pos)))
                 :: stack  in
               if
                 ((cfg.steps).iota && (cfg.steps).weakly_reduce_scrutinee) &&
                   (Prims.op_Negation (cfg.steps).weak)
               then
                 let cfg' =
                   let uu___322_16223 = cfg  in
                   {
                     steps =
                       (let uu___323_16226 = cfg.steps  in
                        {
                          beta = (uu___323_16226.beta);
                          iota = (uu___323_16226.iota);
                          zeta = (uu___323_16226.zeta);
                          weak = true;
                          hnf = (uu___323_16226.hnf);
                          primops = (uu___323_16226.primops);
                          do_not_unfold_pure_lets =
                            (uu___323_16226.do_not_unfold_pure_lets);
                          unfold_until = (uu___323_16226.unfold_until);
                          unfold_only = (uu___323_16226.unfold_only);
                          unfold_fully = (uu___323_16226.unfold_fully);
                          unfold_attr = (uu___323_16226.unfold_attr);
                          unfold_tac = (uu___323_16226.unfold_tac);
                          pure_subterms_within_computations =
                            (uu___323_16226.pure_subterms_within_computations);
                          simplify = (uu___323_16226.simplify);
                          erase_universes = (uu___323_16226.erase_universes);
                          allow_unbound_universes =
                            (uu___323_16226.allow_unbound_universes);
                          reify_ = (uu___323_16226.reify_);
                          compress_uvars = (uu___323_16226.compress_uvars);
                          no_full_norm = (uu___323_16226.no_full_norm);
                          check_no_uvars = (uu___323_16226.check_no_uvars);
                          unmeta = (uu___323_16226.unmeta);
                          unascribe = (uu___323_16226.unascribe);
                          in_full_norm_request =
                            (uu___323_16226.in_full_norm_request);
                          weakly_reduce_scrutinee =
                            (uu___323_16226.weakly_reduce_scrutinee)
                        });
                     tcenv = (uu___322_16223.tcenv);
                     debug = (uu___322_16223.debug);
                     delta_level = (uu___322_16223.delta_level);
                     primitive_steps = (uu___322_16223.primitive_steps);
                     strong = (uu___322_16223.strong);
                     memoize_lazy = (uu___322_16223.memoize_lazy);
                     normalize_pure_lets =
                       (uu___322_16223.normalize_pure_lets)
                   }  in
                 norm cfg' env ((Cfg cfg) :: stack1) head1
               else norm cfg env stack1 head1
           | FStar_Syntax_Syntax.Tm_let ((b,lbs),lbody) when
               (FStar_Syntax_Syntax.is_top_level lbs) &&
                 (cfg.steps).compress_uvars
               ->
               let lbs1 =
                 FStar_All.pipe_right lbs
                   (FStar_List.map
                      (fun lb  ->
                         let uu____16262 =
                           FStar_Syntax_Subst.univ_var_opening
                             lb.FStar_Syntax_Syntax.lbunivs
                            in
                         match uu____16262 with
                         | (openings,lbunivs) ->
                             let cfg1 =
                               let uu___324_16282 = cfg  in
                               let uu____16283 =
                                 FStar_TypeChecker_Env.push_univ_vars
                                   cfg.tcenv lbunivs
                                  in
                               {
                                 steps = (uu___324_16282.steps);
                                 tcenv = uu____16283;
                                 debug = (uu___324_16282.debug);
                                 delta_level = (uu___324_16282.delta_level);
                                 primitive_steps =
                                   (uu___324_16282.primitive_steps);
                                 strong = (uu___324_16282.strong);
                                 memoize_lazy = (uu___324_16282.memoize_lazy);
                                 normalize_pure_lets =
                                   (uu___324_16282.normalize_pure_lets)
                               }  in
                             let norm1 t2 =
                               let uu____16290 =
                                 let uu____16291 =
                                   FStar_Syntax_Subst.subst openings t2  in
                                 norm cfg1 env [] uu____16291  in
                               FStar_Syntax_Subst.close_univ_vars lbunivs
                                 uu____16290
                                in
                             let lbtyp = norm1 lb.FStar_Syntax_Syntax.lbtyp
                                in
                             let lbdef = norm1 lb.FStar_Syntax_Syntax.lbdef
                                in
                             let uu___325_16294 = lb  in
                             {
                               FStar_Syntax_Syntax.lbname =
                                 (uu___325_16294.FStar_Syntax_Syntax.lbname);
                               FStar_Syntax_Syntax.lbunivs = lbunivs;
                               FStar_Syntax_Syntax.lbtyp = lbtyp;
                               FStar_Syntax_Syntax.lbeff =
                                 (uu___325_16294.FStar_Syntax_Syntax.lbeff);
                               FStar_Syntax_Syntax.lbdef = lbdef;
                               FStar_Syntax_Syntax.lbattrs =
                                 (uu___325_16294.FStar_Syntax_Syntax.lbattrs);
                               FStar_Syntax_Syntax.lbpos =
                                 (uu___325_16294.FStar_Syntax_Syntax.lbpos)
                             }))
                  in
               let uu____16295 =
                 mk (FStar_Syntax_Syntax.Tm_let ((b, lbs1), lbody))
                   t1.FStar_Syntax_Syntax.pos
                  in
               rebuild cfg env stack uu____16295
           | FStar_Syntax_Syntax.Tm_let
               ((uu____16306,{
                               FStar_Syntax_Syntax.lbname = FStar_Util.Inr
                                 uu____16307;
                               FStar_Syntax_Syntax.lbunivs = uu____16308;
                               FStar_Syntax_Syntax.lbtyp = uu____16309;
                               FStar_Syntax_Syntax.lbeff = uu____16310;
                               FStar_Syntax_Syntax.lbdef = uu____16311;
                               FStar_Syntax_Syntax.lbattrs = uu____16312;
                               FStar_Syntax_Syntax.lbpos = uu____16313;_}::uu____16314),uu____16315)
               -> rebuild cfg env stack t1
           | FStar_Syntax_Syntax.Tm_let ((false ,lb::[]),body) ->
               let n1 =
                 FStar_TypeChecker_Env.norm_eff_name cfg.tcenv
                   lb.FStar_Syntax_Syntax.lbeff
                  in
               let uu____16355 =
                 (Prims.op_Negation (cfg.steps).do_not_unfold_pure_lets) &&
                   ((((cfg.steps).pure_subterms_within_computations &&
                        (FStar_Syntax_Util.has_attribute
                           lb.FStar_Syntax_Syntax.lbattrs
                           FStar_Parser_Const.inline_let_attr))
                       ||
                       ((FStar_Syntax_Util.is_pure_effect n1) &&
                          (cfg.normalize_pure_lets ||
                             (FStar_Syntax_Util.has_attribute
                                lb.FStar_Syntax_Syntax.lbattrs
                                FStar_Parser_Const.inline_let_attr))))
                      ||
                      ((FStar_Syntax_Util.is_ghost_effect n1) &&
                         (Prims.op_Negation
                            (cfg.steps).pure_subterms_within_computations)))
                  in
               if uu____16355
               then
                 let binder =
                   let uu____16357 =
                     FStar_Util.left lb.FStar_Syntax_Syntax.lbname  in
                   FStar_Syntax_Syntax.mk_binder uu____16357  in
                 let env1 =
                   let uu____16367 =
                     let uu____16374 =
                       let uu____16375 =
                         let uu____16406 =
                           FStar_Util.mk_ref FStar_Pervasives_Native.None  in
                         (env, (lb.FStar_Syntax_Syntax.lbdef), uu____16406,
                           false)
                          in
                       Clos uu____16375  in
                     ((FStar_Pervasives_Native.Some binder), uu____16374)  in
                   uu____16367 :: env  in
                 (log cfg
                    (fun uu____16501  ->
                       FStar_Util.print_string "+++ Reducing Tm_let\n");
                  norm cfg env1 stack body)
               else
                 if (cfg.steps).weak
                 then
                   (log cfg
                      (fun uu____16505  ->
                         FStar_Util.print_string "+++ Not touching Tm_let\n");
                    (let uu____16506 = closure_as_term cfg env t1  in
                     rebuild cfg env stack uu____16506))
                 else
                   (let uu____16508 =
                      let uu____16513 =
                        let uu____16514 =
                          let uu____16519 =
                            FStar_All.pipe_right
                              lb.FStar_Syntax_Syntax.lbname FStar_Util.left
                             in
                          FStar_All.pipe_right uu____16519
                            FStar_Syntax_Syntax.mk_binder
                           in
                        [uu____16514]  in
                      FStar_Syntax_Subst.open_term uu____16513 body  in
                    match uu____16508 with
                    | (bs,body1) ->
                        (log cfg
                           (fun uu____16540  ->
                              FStar_Util.print_string
                                "+++ Normalizing Tm_let -- type");
                         (let ty =
                            norm cfg env [] lb.FStar_Syntax_Syntax.lbtyp  in
                          let lbname =
                            let x =
                              let uu____16548 = FStar_List.hd bs  in
                              FStar_Pervasives_Native.fst uu____16548  in
                            FStar_Util.Inl
                              (let uu___326_16558 = x  in
                               {
                                 FStar_Syntax_Syntax.ppname =
                                   (uu___326_16558.FStar_Syntax_Syntax.ppname);
                                 FStar_Syntax_Syntax.index =
                                   (uu___326_16558.FStar_Syntax_Syntax.index);
                                 FStar_Syntax_Syntax.sort = ty
                               })
                             in
                          log cfg
                            (fun uu____16561  ->
                               FStar_Util.print_string
                                 "+++ Normalizing Tm_let -- definiens\n");
                          (let lb1 =
                             let uu___327_16563 = lb  in
                             let uu____16564 =
                               norm cfg env [] lb.FStar_Syntax_Syntax.lbdef
                                in
                             {
                               FStar_Syntax_Syntax.lbname = lbname;
                               FStar_Syntax_Syntax.lbunivs =
                                 (uu___327_16563.FStar_Syntax_Syntax.lbunivs);
                               FStar_Syntax_Syntax.lbtyp = ty;
                               FStar_Syntax_Syntax.lbeff =
                                 (uu___327_16563.FStar_Syntax_Syntax.lbeff);
                               FStar_Syntax_Syntax.lbdef = uu____16564;
                               FStar_Syntax_Syntax.lbattrs =
                                 (uu___327_16563.FStar_Syntax_Syntax.lbattrs);
                               FStar_Syntax_Syntax.lbpos =
                                 (uu___327_16563.FStar_Syntax_Syntax.lbpos)
                             }  in
                           let env' =
                             FStar_All.pipe_right bs
                               (FStar_List.fold_left
                                  (fun env1  ->
                                     fun uu____16589  -> dummy :: env1) env)
                              in
                           let stack1 = (Cfg cfg) :: stack  in
                           let cfg1 =
                             let uu___328_16612 = cfg  in
                             {
                               steps = (uu___328_16612.steps);
                               tcenv = (uu___328_16612.tcenv);
                               debug = (uu___328_16612.debug);
                               delta_level = (uu___328_16612.delta_level);
                               primitive_steps =
                                 (uu___328_16612.primitive_steps);
                               strong = true;
                               memoize_lazy = (uu___328_16612.memoize_lazy);
                               normalize_pure_lets =
                                 (uu___328_16612.normalize_pure_lets)
                             }  in
                           log cfg1
                             (fun uu____16615  ->
                                FStar_Util.print_string
                                  "+++ Normalizing Tm_let -- body\n");
                           norm cfg1 env'
                             ((Let
                                 (env, bs, lb1, (t1.FStar_Syntax_Syntax.pos)))
                             :: stack1) body1))))
           | FStar_Syntax_Syntax.Tm_let ((true ,lbs),body) when
               (cfg.steps).compress_uvars ||
                 ((Prims.op_Negation (cfg.steps).zeta) &&
                    (cfg.steps).pure_subterms_within_computations)
               ->
               let uu____16632 = FStar_Syntax_Subst.open_let_rec lbs body  in
               (match uu____16632 with
                | (lbs1,body1) ->
                    let lbs2 =
                      FStar_List.map
                        (fun lb  ->
                           let ty =
                             norm cfg env [] lb.FStar_Syntax_Syntax.lbtyp  in
                           let lbname =
                             let uu____16668 =
                               let uu___329_16669 =
                                 FStar_Util.left
                                   lb.FStar_Syntax_Syntax.lbname
                                  in
                               {
                                 FStar_Syntax_Syntax.ppname =
                                   (uu___329_16669.FStar_Syntax_Syntax.ppname);
                                 FStar_Syntax_Syntax.index =
                                   (uu___329_16669.FStar_Syntax_Syntax.index);
                                 FStar_Syntax_Syntax.sort = ty
                               }  in
                             FStar_Util.Inl uu____16668  in
                           let uu____16670 =
                             FStar_Syntax_Util.abs_formals
                               lb.FStar_Syntax_Syntax.lbdef
                              in
                           match uu____16670 with
                           | (xs,def_body,lopt) ->
                               let xs1 = norm_binders cfg env xs  in
                               let env1 =
                                 let uu____16696 =
                                   FStar_List.map (fun uu____16712  -> dummy)
                                     lbs1
                                    in
                                 let uu____16713 =
                                   let uu____16722 =
                                     FStar_List.map
                                       (fun uu____16742  -> dummy) xs1
                                      in
                                   FStar_List.append uu____16722 env  in
                                 FStar_List.append uu____16696 uu____16713
                                  in
                               let def_body1 = norm cfg env1 [] def_body  in
                               let lopt1 =
                                 match lopt with
                                 | FStar_Pervasives_Native.Some rc ->
                                     let uu____16766 =
                                       let uu___330_16767 = rc  in
                                       let uu____16768 =
                                         FStar_Util.map_opt
                                           rc.FStar_Syntax_Syntax.residual_typ
                                           (norm cfg env1 [])
                                          in
                                       {
                                         FStar_Syntax_Syntax.residual_effect
                                           =
                                           (uu___330_16767.FStar_Syntax_Syntax.residual_effect);
                                         FStar_Syntax_Syntax.residual_typ =
                                           uu____16768;
                                         FStar_Syntax_Syntax.residual_flags =
                                           (uu___330_16767.FStar_Syntax_Syntax.residual_flags)
                                       }  in
                                     FStar_Pervasives_Native.Some uu____16766
                                 | uu____16777 -> lopt  in
                               let def =
                                 FStar_Syntax_Util.abs xs1 def_body1 lopt1
                                  in
                               let uu___331_16783 = lb  in
                               {
                                 FStar_Syntax_Syntax.lbname = lbname;
                                 FStar_Syntax_Syntax.lbunivs =
                                   (uu___331_16783.FStar_Syntax_Syntax.lbunivs);
                                 FStar_Syntax_Syntax.lbtyp = ty;
                                 FStar_Syntax_Syntax.lbeff =
                                   (uu___331_16783.FStar_Syntax_Syntax.lbeff);
                                 FStar_Syntax_Syntax.lbdef = def;
                                 FStar_Syntax_Syntax.lbattrs =
                                   (uu___331_16783.FStar_Syntax_Syntax.lbattrs);
                                 FStar_Syntax_Syntax.lbpos =
                                   (uu___331_16783.FStar_Syntax_Syntax.lbpos)
                               }) lbs1
                       in
                    let env' =
                      let uu____16793 =
                        FStar_List.map (fun uu____16809  -> dummy) lbs2  in
                      FStar_List.append uu____16793 env  in
                    let body2 = norm cfg env' [] body1  in
                    let uu____16817 =
                      FStar_Syntax_Subst.close_let_rec lbs2 body2  in
                    (match uu____16817 with
                     | (lbs3,body3) ->
                         let t2 =
                           let uu___332_16833 = t1  in
                           {
                             FStar_Syntax_Syntax.n =
                               (FStar_Syntax_Syntax.Tm_let
                                  ((true, lbs3), body3));
                             FStar_Syntax_Syntax.pos =
                               (uu___332_16833.FStar_Syntax_Syntax.pos);
                             FStar_Syntax_Syntax.vars =
                               (uu___332_16833.FStar_Syntax_Syntax.vars)
                           }  in
                         rebuild cfg env stack t2))
           | FStar_Syntax_Syntax.Tm_let (lbs,body) when
               Prims.op_Negation (cfg.steps).zeta ->
               let uu____16862 = closure_as_term cfg env t1  in
               rebuild cfg env stack uu____16862
           | FStar_Syntax_Syntax.Tm_let (lbs,body) ->
               let uu____16881 =
                 FStar_List.fold_right
                   (fun lb  ->
                      fun uu____16957  ->
                        match uu____16957 with
                        | (rec_env,memos,i) ->
                            let bv =
                              let uu___333_17078 =
                                FStar_Util.left lb.FStar_Syntax_Syntax.lbname
                                 in
                              {
                                FStar_Syntax_Syntax.ppname =
                                  (uu___333_17078.FStar_Syntax_Syntax.ppname);
                                FStar_Syntax_Syntax.index = i;
                                FStar_Syntax_Syntax.sort =
                                  (uu___333_17078.FStar_Syntax_Syntax.sort)
                              }  in
                            let f_i = FStar_Syntax_Syntax.bv_to_tm bv  in
                            let fix_f_i =
                              mk (FStar_Syntax_Syntax.Tm_let (lbs, f_i))
                                t1.FStar_Syntax_Syntax.pos
                               in
                            let memo =
                              FStar_Util.mk_ref FStar_Pervasives_Native.None
                               in
                            let rec_env1 =
                              (FStar_Pervasives_Native.None,
                                (Clos (env, fix_f_i, memo, true)))
                              :: rec_env  in
                            (rec_env1, (memo :: memos),
                              (i + (Prims.parse_int "1"))))
                   (FStar_Pervasives_Native.snd lbs)
                   (env, [], (Prims.parse_int "0"))
                  in
               (match uu____16881 with
                | (rec_env,memos,uu____17305) ->
                    let uu____17358 =
                      FStar_List.map2
                        (fun lb  ->
                           fun memo  ->
                             FStar_ST.op_Colon_Equals memo
                               (FStar_Pervasives_Native.Some
                                  (rec_env, (lb.FStar_Syntax_Syntax.lbdef))))
                        (FStar_Pervasives_Native.snd lbs) memos
                       in
                    let body_env =
                      FStar_List.fold_right
                        (fun lb  ->
                           fun env1  ->
                             let uu____17681 =
                               let uu____17688 =
                                 let uu____17689 =
                                   let uu____17720 =
                                     FStar_Util.mk_ref
                                       FStar_Pervasives_Native.None
                                      in
                                   (rec_env, (lb.FStar_Syntax_Syntax.lbdef),
                                     uu____17720, false)
                                    in
                                 Clos uu____17689  in
                               (FStar_Pervasives_Native.None, uu____17688)
                                in
                             uu____17681 :: env1)
                        (FStar_Pervasives_Native.snd lbs) env
                       in
                    norm cfg body_env stack body)
           | FStar_Syntax_Syntax.Tm_meta (head1,m) ->
               (log cfg
                  (fun uu____17824  ->
                     let uu____17825 =
                       FStar_Syntax_Print.metadata_to_string m  in
                     FStar_Util.print1 ">> metadata = %s\n" uu____17825);
                (match m with
                 | FStar_Syntax_Syntax.Meta_monadic (m1,t2) ->
                     reduce_impure_comp cfg env stack head1
                       (FStar_Util.Inl m1) t2
                 | FStar_Syntax_Syntax.Meta_monadic_lift (m1,m',t2) ->
                     reduce_impure_comp cfg env stack head1
                       (FStar_Util.Inr (m1, m')) t2
                 | uu____17847 ->
                     if (cfg.steps).unmeta
                     then norm cfg env stack head1
                     else
                       (match stack with
                        | uu____17849::uu____17850 ->
                            (match m with
                             | FStar_Syntax_Syntax.Meta_labeled
                                 (l,r,uu____17855) ->
                                 norm cfg env ((Meta (env, m, r)) :: stack)
                                   head1
                             | FStar_Syntax_Syntax.Meta_pattern args ->
                                 let args1 = norm_pattern_args cfg env args
                                    in
                                 norm cfg env
                                   ((Meta
                                       (env,
                                         (FStar_Syntax_Syntax.Meta_pattern
                                            args1),
                                         (t1.FStar_Syntax_Syntax.pos))) ::
                                   stack) head1
                             | uu____17878 -> norm cfg env stack head1)
                        | [] ->
                            let head2 = norm cfg env [] head1  in
                            let m1 =
                              match m with
                              | FStar_Syntax_Syntax.Meta_pattern args ->
                                  let uu____17892 =
                                    norm_pattern_args cfg env args  in
                                  FStar_Syntax_Syntax.Meta_pattern
                                    uu____17892
                              | uu____17903 -> m  in
                            let t2 =
                              mk (FStar_Syntax_Syntax.Tm_meta (head2, m1))
                                t1.FStar_Syntax_Syntax.pos
                               in
                            rebuild cfg env stack t2)))
           | FStar_Syntax_Syntax.Tm_delayed uu____17909 ->
               let t2 = FStar_Syntax_Subst.compress t1  in
               norm cfg env stack t2
           | FStar_Syntax_Syntax.Tm_uvar uu____17935 ->
               let t2 = FStar_Syntax_Subst.compress t1  in
               (match t2.FStar_Syntax_Syntax.n with
                | FStar_Syntax_Syntax.Tm_uvar uu____17951 ->
                    if (cfg.steps).check_no_uvars
                    then
                      let uu____17966 =
                        let uu____17967 =
                          FStar_Range.string_of_range
                            t2.FStar_Syntax_Syntax.pos
                           in
                        let uu____17968 =
                          FStar_Syntax_Print.term_to_string t2  in
                        FStar_Util.format2
                          "(%s) CheckNoUvars: Unexpected unification variable remains: %s"
                          uu____17967 uu____17968
                         in
                      failwith uu____17966
                    else
                      (let uu____17970 = inline_closure_env cfg env [] t2  in
                       rebuild cfg env stack uu____17970)
                | uu____17971 -> norm cfg env stack t2))

and (do_unfold_fv :
  cfg ->
    env ->
      stack_elt Prims.list ->
        FStar_Syntax_Syntax.term ->
          FStar_TypeChecker_Env.qninfo ->
            FStar_Syntax_Syntax.fv -> FStar_Syntax_Syntax.term)
  =
  fun cfg  ->
    fun env  ->
      fun stack  ->
        fun t0  ->
          fun qninfo  ->
            fun f  ->
              let r_env =
                let uu____17981 = FStar_Syntax_Syntax.range_of_fv f  in
                FStar_TypeChecker_Env.set_range cfg.tcenv uu____17981  in
              let uu____17982 =
                FStar_TypeChecker_Env.lookup_definition_qninfo
                  cfg.delta_level
                  (f.FStar_Syntax_Syntax.fv_name).FStar_Syntax_Syntax.v
                  qninfo
                 in
              match uu____17982 with
              | FStar_Pervasives_Native.None  ->
                  (log_unfolding cfg
                     (fun uu____17996  ->
                        let uu____17997 = FStar_Syntax_Print.fv_to_string f
                           in
                        FStar_Util.print1 " >> Tm_fvar case 2 for %s\n"
                          uu____17997);
                   rebuild cfg env stack t0)
              | FStar_Pervasives_Native.Some (us,t) ->
                  (log_unfolding cfg
                     (fun uu____18008  ->
                        let uu____18009 =
                          FStar_Syntax_Print.term_to_string t0  in
                        let uu____18010 = FStar_Syntax_Print.term_to_string t
                           in
                        FStar_Util.print2 " >> Unfolded %s to %s\n"
                          uu____18009 uu____18010);
                   (let t1 =
                      if
                        (cfg.steps).unfold_until =
                          (FStar_Pervasives_Native.Some
                             FStar_Syntax_Syntax.delta_constant)
                      then t
                      else
                        (let uu____18015 =
                           FStar_Ident.range_of_lid
                             (f.FStar_Syntax_Syntax.fv_name).FStar_Syntax_Syntax.v
                            in
                         FStar_Syntax_Subst.set_use_range uu____18015 t)
                       in
                    let n1 = FStar_List.length us  in
                    if n1 > (Prims.parse_int "0")
                    then
                      match stack with
                      | (UnivArgs (us',uu____18024))::stack1 ->
                          let env1 =
                            FStar_All.pipe_right us'
                              (FStar_List.fold_left
                                 (fun env1  ->
                                    fun u  ->
                                      (FStar_Pervasives_Native.None,
                                        (Univ u))
                                      :: env1) env)
                             in
                          norm cfg env1 stack1 t1
                      | uu____18063 when
                          (cfg.steps).erase_universes ||
                            (cfg.steps).allow_unbound_universes
                          -> norm cfg env stack t1
                      | uu____18066 ->
                          let uu____18069 =
                            let uu____18070 =
                              FStar_Syntax_Print.lid_to_string
                                (f.FStar_Syntax_Syntax.fv_name).FStar_Syntax_Syntax.v
                               in
                            FStar_Util.format1
                              "Impossible: missing universe instantiation on %s"
                              uu____18070
                             in
                          failwith uu____18069
                    else norm cfg env stack t1))

and (reduce_impure_comp :
  cfg ->
    env ->
      stack ->
        FStar_Syntax_Syntax.term ->
          (FStar_Syntax_Syntax.monad_name,(FStar_Syntax_Syntax.monad_name,
                                            FStar_Syntax_Syntax.monad_name)
                                            FStar_Pervasives_Native.tuple2)
            FStar_Util.either ->
            FStar_Syntax_Syntax.typ -> FStar_Syntax_Syntax.term)
  =
  fun cfg  ->
    fun env  ->
      fun stack  ->
        fun head1  ->
          fun m  ->
            fun t  ->
              let t1 = norm cfg env [] t  in
              let stack1 = (Cfg cfg) :: stack  in
              let cfg1 =
                if (cfg.steps).pure_subterms_within_computations
                then
                  let new_steps =
                    [PureSubtermsWithinComputations;
                    Primops;
                    AllowUnboundUniverses;
                    EraseUniverses;
                    Exclude Zeta;
                    Inlining]  in
                  let uu___334_18094 = cfg  in
                  let uu____18095 =
                    FStar_List.fold_right fstep_add_one new_steps cfg.steps
                     in
                  {
                    steps = uu____18095;
                    tcenv = (uu___334_18094.tcenv);
                    debug = (uu___334_18094.debug);
                    delta_level =
                      [FStar_TypeChecker_Env.Inlining;
                      FStar_TypeChecker_Env.Eager_unfolding_only];
                    primitive_steps = (uu___334_18094.primitive_steps);
                    strong = (uu___334_18094.strong);
                    memoize_lazy = (uu___334_18094.memoize_lazy);
                    normalize_pure_lets =
                      (uu___334_18094.normalize_pure_lets)
                  }
                else
                  (let uu___335_18097 = cfg  in
                   {
                     steps =
                       (let uu___336_18100 = cfg.steps  in
                        {
                          beta = (uu___336_18100.beta);
                          iota = (uu___336_18100.iota);
                          zeta = false;
                          weak = (uu___336_18100.weak);
                          hnf = (uu___336_18100.hnf);
                          primops = (uu___336_18100.primops);
                          do_not_unfold_pure_lets =
                            (uu___336_18100.do_not_unfold_pure_lets);
                          unfold_until = (uu___336_18100.unfold_until);
                          unfold_only = (uu___336_18100.unfold_only);
                          unfold_fully = (uu___336_18100.unfold_fully);
                          unfold_attr = (uu___336_18100.unfold_attr);
                          unfold_tac = (uu___336_18100.unfold_tac);
                          pure_subterms_within_computations =
                            (uu___336_18100.pure_subterms_within_computations);
                          simplify = (uu___336_18100.simplify);
                          erase_universes = (uu___336_18100.erase_universes);
                          allow_unbound_universes =
                            (uu___336_18100.allow_unbound_universes);
                          reify_ = (uu___336_18100.reify_);
                          compress_uvars = (uu___336_18100.compress_uvars);
                          no_full_norm = (uu___336_18100.no_full_norm);
                          check_no_uvars = (uu___336_18100.check_no_uvars);
                          unmeta = (uu___336_18100.unmeta);
                          unascribe = (uu___336_18100.unascribe);
                          in_full_norm_request =
                            (uu___336_18100.in_full_norm_request);
                          weakly_reduce_scrutinee =
                            (uu___336_18100.weakly_reduce_scrutinee)
                        });
                     tcenv = (uu___335_18097.tcenv);
                     debug = (uu___335_18097.debug);
                     delta_level = (uu___335_18097.delta_level);
                     primitive_steps = (uu___335_18097.primitive_steps);
                     strong = (uu___335_18097.strong);
                     memoize_lazy = (uu___335_18097.memoize_lazy);
                     normalize_pure_lets =
                       (uu___335_18097.normalize_pure_lets)
                   })
                 in
              let metadata =
                match m with
                | FStar_Util.Inl m1 ->
                    FStar_Syntax_Syntax.Meta_monadic (m1, t1)
                | FStar_Util.Inr (m1,m') ->
                    FStar_Syntax_Syntax.Meta_monadic_lift (m1, m', t1)
                 in
              norm cfg1 env
                ((Meta (env, metadata, (head1.FStar_Syntax_Syntax.pos))) ::
                stack1) head1

and (do_reify_monadic :
  (unit -> FStar_Syntax_Syntax.term) ->
    cfg ->
      env ->
        stack_elt Prims.list ->
          FStar_Syntax_Syntax.term ->
            FStar_Syntax_Syntax.monad_name ->
              FStar_Syntax_Syntax.typ -> FStar_Syntax_Syntax.term)
  =
  fun fallback  ->
    fun cfg  ->
      fun env  ->
        fun stack  ->
          fun head1  ->
            fun m  ->
              fun t  ->
                let head0 = head1  in
                let head2 = FStar_Syntax_Util.unascribe head1  in
                log cfg
                  (fun uu____18134  ->
                     let uu____18135 = FStar_Syntax_Print.tag_of_term head2
                        in
                     let uu____18136 =
                       FStar_Syntax_Print.term_to_string head2  in
                     FStar_Util.print2 "Reifying: (%s) %s\n" uu____18135
                       uu____18136);
                (let head3 = FStar_Syntax_Util.unmeta_safe head2  in
                 let uu____18138 =
                   let uu____18139 = FStar_Syntax_Subst.compress head3  in
                   uu____18139.FStar_Syntax_Syntax.n  in
                 match uu____18138 with
                 | FStar_Syntax_Syntax.Tm_let ((false ,lb::[]),body) ->
                     let ed =
                       let uu____18157 =
                         FStar_TypeChecker_Env.norm_eff_name cfg.tcenv m  in
                       FStar_TypeChecker_Env.get_effect_decl cfg.tcenv
                         uu____18157
                        in
                     let uu____18158 = ed.FStar_Syntax_Syntax.bind_repr  in
                     (match uu____18158 with
                      | (uu____18159,bind_repr) ->
                          (match lb.FStar_Syntax_Syntax.lbname with
                           | FStar_Util.Inr uu____18169 ->
                               failwith
                                 "Cannot reify a top-level let binding"
                           | FStar_Util.Inl x ->
                               let is_return e =
                                 let uu____18179 =
                                   let uu____18180 =
                                     FStar_Syntax_Subst.compress e  in
                                   uu____18180.FStar_Syntax_Syntax.n  in
                                 match uu____18179 with
                                 | FStar_Syntax_Syntax.Tm_meta
                                     (e1,FStar_Syntax_Syntax.Meta_monadic
                                      (uu____18186,uu____18187))
                                     ->
                                     let uu____18196 =
                                       let uu____18197 =
                                         FStar_Syntax_Subst.compress e1  in
                                       uu____18197.FStar_Syntax_Syntax.n  in
                                     (match uu____18196 with
                                      | FStar_Syntax_Syntax.Tm_meta
                                          (e2,FStar_Syntax_Syntax.Meta_monadic_lift
                                           (uu____18203,msrc,uu____18205))
                                          when
                                          FStar_Syntax_Util.is_pure_effect
                                            msrc
                                          ->
                                          let uu____18214 =
                                            FStar_Syntax_Subst.compress e2
                                             in
                                          FStar_Pervasives_Native.Some
                                            uu____18214
                                      | uu____18215 ->
                                          FStar_Pervasives_Native.None)
                                 | uu____18216 ->
                                     FStar_Pervasives_Native.None
                                  in
                               let uu____18217 =
                                 is_return lb.FStar_Syntax_Syntax.lbdef  in
                               (match uu____18217 with
                                | FStar_Pervasives_Native.Some e ->
                                    let lb1 =
                                      let uu___337_18222 = lb  in
                                      {
                                        FStar_Syntax_Syntax.lbname =
                                          (uu___337_18222.FStar_Syntax_Syntax.lbname);
                                        FStar_Syntax_Syntax.lbunivs =
                                          (uu___337_18222.FStar_Syntax_Syntax.lbunivs);
                                        FStar_Syntax_Syntax.lbtyp =
                                          (uu___337_18222.FStar_Syntax_Syntax.lbtyp);
                                        FStar_Syntax_Syntax.lbeff =
                                          FStar_Parser_Const.effect_PURE_lid;
                                        FStar_Syntax_Syntax.lbdef = e;
                                        FStar_Syntax_Syntax.lbattrs =
                                          (uu___337_18222.FStar_Syntax_Syntax.lbattrs);
                                        FStar_Syntax_Syntax.lbpos =
                                          (uu___337_18222.FStar_Syntax_Syntax.lbpos)
                                      }  in
                                    let uu____18223 = FStar_List.tl stack  in
                                    let uu____18224 =
                                      let uu____18225 =
                                        let uu____18232 =
                                          let uu____18233 =
                                            let uu____18246 =
                                              FStar_Syntax_Util.mk_reify body
                                               in
                                            ((false, [lb1]), uu____18246)  in
                                          FStar_Syntax_Syntax.Tm_let
                                            uu____18233
                                           in
                                        FStar_Syntax_Syntax.mk uu____18232
                                         in
                                      uu____18225
                                        FStar_Pervasives_Native.None
                                        head3.FStar_Syntax_Syntax.pos
                                       in
                                    norm cfg env uu____18223 uu____18224
                                | FStar_Pervasives_Native.None  ->
                                    let uu____18262 =
                                      let uu____18263 = is_return body  in
                                      match uu____18263 with
                                      | FStar_Pervasives_Native.Some
                                          {
                                            FStar_Syntax_Syntax.n =
                                              FStar_Syntax_Syntax.Tm_bvar y;
                                            FStar_Syntax_Syntax.pos =
                                              uu____18267;
                                            FStar_Syntax_Syntax.vars =
                                              uu____18268;_}
                                          -> FStar_Syntax_Syntax.bv_eq x y
                                      | uu____18271 -> false  in
                                    if uu____18262
                                    then
                                      norm cfg env stack
                                        lb.FStar_Syntax_Syntax.lbdef
                                    else
                                      (let rng =
                                         head3.FStar_Syntax_Syntax.pos  in
                                       let head4 =
                                         FStar_All.pipe_left
                                           FStar_Syntax_Util.mk_reify
                                           lb.FStar_Syntax_Syntax.lbdef
                                          in
                                       let body1 =
                                         FStar_All.pipe_left
                                           FStar_Syntax_Util.mk_reify body
                                          in
                                       let body_rc =
                                         {
                                           FStar_Syntax_Syntax.residual_effect
                                             = m;
                                           FStar_Syntax_Syntax.residual_typ =
                                             (FStar_Pervasives_Native.Some t);
                                           FStar_Syntax_Syntax.residual_flags
                                             = []
                                         }  in
                                       let body2 =
                                         let uu____18292 =
                                           let uu____18299 =
                                             let uu____18300 =
                                               let uu____18317 =
                                                 let uu____18324 =
                                                   FStar_Syntax_Syntax.mk_binder
                                                     x
                                                    in
                                                 [uu____18324]  in
                                               (uu____18317, body1,
                                                 (FStar_Pervasives_Native.Some
                                                    body_rc))
                                                in
                                             FStar_Syntax_Syntax.Tm_abs
                                               uu____18300
                                              in
                                           FStar_Syntax_Syntax.mk uu____18299
                                            in
                                         uu____18292
                                           FStar_Pervasives_Native.None
                                           body1.FStar_Syntax_Syntax.pos
                                          in
                                       let close1 = closure_as_term cfg env
                                          in
                                       let bind_inst =
                                         let uu____18358 =
                                           let uu____18359 =
                                             FStar_Syntax_Subst.compress
                                               bind_repr
                                              in
                                           uu____18359.FStar_Syntax_Syntax.n
                                            in
                                         match uu____18358 with
                                         | FStar_Syntax_Syntax.Tm_uinst
                                             (bind1,uu____18365::uu____18366::[])
                                             ->
                                             let uu____18371 =
                                               let uu____18378 =
                                                 let uu____18379 =
                                                   let uu____18386 =
                                                     let uu____18387 =
                                                       let uu____18388 =
                                                         close1
                                                           lb.FStar_Syntax_Syntax.lbtyp
                                                          in
                                                       (cfg.tcenv).FStar_TypeChecker_Env.universe_of
                                                         cfg.tcenv
                                                         uu____18388
                                                        in
                                                     let uu____18389 =
                                                       let uu____18392 =
                                                         let uu____18393 =
                                                           close1 t  in
                                                         (cfg.tcenv).FStar_TypeChecker_Env.universe_of
                                                           cfg.tcenv
                                                           uu____18393
                                                          in
                                                       [uu____18392]  in
                                                     uu____18387 ::
                                                       uu____18389
                                                      in
                                                   (bind1, uu____18386)  in
                                                 FStar_Syntax_Syntax.Tm_uinst
                                                   uu____18379
                                                  in
                                               FStar_Syntax_Syntax.mk
                                                 uu____18378
                                                in
                                             uu____18371
                                               FStar_Pervasives_Native.None
                                               rng
                                         | uu____18399 ->
                                             failwith
                                               "NIY : Reification of indexed effects"
                                          in
                                       let maybe_range_arg =
                                         let uu____18411 =
                                           FStar_Util.for_some
                                             (FStar_Syntax_Util.attr_eq
                                                FStar_Syntax_Util.dm4f_bind_range_attr)
                                             ed.FStar_Syntax_Syntax.eff_attrs
                                            in
                                         if uu____18411
                                         then
                                           let uu____18420 =
                                             let uu____18427 =
                                               FStar_Syntax_Embeddings.embed
                                                 FStar_Syntax_Embeddings.e_range
                                                 lb.FStar_Syntax_Syntax.lbpos
                                                 lb.FStar_Syntax_Syntax.lbpos
                                                in
                                             FStar_Syntax_Syntax.as_arg
                                               uu____18427
                                              in
                                           let uu____18428 =
                                             let uu____18437 =
                                               let uu____18444 =
                                                 FStar_Syntax_Embeddings.embed
                                                   FStar_Syntax_Embeddings.e_range
                                                   body2.FStar_Syntax_Syntax.pos
                                                   body2.FStar_Syntax_Syntax.pos
                                                  in
                                               FStar_Syntax_Syntax.as_arg
                                                 uu____18444
                                                in
                                             [uu____18437]  in
                                           uu____18420 :: uu____18428
                                         else []  in
                                       let reified =
                                         let uu____18473 =
                                           let uu____18480 =
                                             let uu____18481 =
                                               let uu____18496 =
                                                 let uu____18505 =
                                                   let uu____18514 =
                                                     FStar_Syntax_Syntax.as_arg
                                                       lb.FStar_Syntax_Syntax.lbtyp
                                                      in
                                                   let uu____18521 =
                                                     let uu____18530 =
                                                       FStar_Syntax_Syntax.as_arg
                                                         t
                                                        in
                                                     [uu____18530]  in
                                                   uu____18514 :: uu____18521
                                                    in
                                                 let uu____18555 =
                                                   let uu____18564 =
                                                     let uu____18573 =
                                                       FStar_Syntax_Syntax.as_arg
                                                         FStar_Syntax_Syntax.tun
                                                        in
                                                     let uu____18580 =
                                                       let uu____18589 =
                                                         FStar_Syntax_Syntax.as_arg
                                                           head4
                                                          in
                                                       let uu____18596 =
                                                         let uu____18605 =
                                                           FStar_Syntax_Syntax.as_arg
                                                             FStar_Syntax_Syntax.tun
                                                            in
                                                         let uu____18612 =
                                                           let uu____18621 =
                                                             FStar_Syntax_Syntax.as_arg
                                                               body2
                                                              in
                                                           [uu____18621]  in
                                                         uu____18605 ::
                                                           uu____18612
                                                          in
                                                       uu____18589 ::
                                                         uu____18596
                                                        in
                                                     uu____18573 ::
                                                       uu____18580
                                                      in
                                                   FStar_List.append
                                                     maybe_range_arg
                                                     uu____18564
                                                    in
                                                 FStar_List.append
                                                   uu____18505 uu____18555
                                                  in
                                               (bind_inst, uu____18496)  in
                                             FStar_Syntax_Syntax.Tm_app
                                               uu____18481
                                              in
                                           FStar_Syntax_Syntax.mk uu____18480
                                            in
                                         uu____18473
                                           FStar_Pervasives_Native.None rng
                                          in
                                       log cfg
                                         (fun uu____18687  ->
                                            let uu____18688 =
                                              FStar_Syntax_Print.term_to_string
                                                head0
                                               in
                                            let uu____18689 =
                                              FStar_Syntax_Print.term_to_string
                                                reified
                                               in
                                            FStar_Util.print2
                                              "Reified (1) <%s> to %s\n"
                                              uu____18688 uu____18689);
                                       (let uu____18690 = FStar_List.tl stack
                                           in
                                        norm cfg env uu____18690 reified)))))
                 | FStar_Syntax_Syntax.Tm_app (head_app,args) ->
                     let ed =
                       let uu____18714 =
                         FStar_TypeChecker_Env.norm_eff_name cfg.tcenv m  in
                       FStar_TypeChecker_Env.get_effect_decl cfg.tcenv
                         uu____18714
                        in
                     let uu____18715 = ed.FStar_Syntax_Syntax.bind_repr  in
                     (match uu____18715 with
                      | (uu____18716,bind_repr) ->
                          let maybe_unfold_action head4 =
                            let maybe_extract_fv t1 =
                              let t2 =
                                let uu____18753 =
                                  let uu____18754 =
                                    FStar_Syntax_Subst.compress t1  in
                                  uu____18754.FStar_Syntax_Syntax.n  in
                                match uu____18753 with
                                | FStar_Syntax_Syntax.Tm_uinst
                                    (t2,uu____18758) -> t2
                                | uu____18763 -> head4  in
                              let uu____18764 =
                                let uu____18765 =
                                  FStar_Syntax_Subst.compress t2  in
                                uu____18765.FStar_Syntax_Syntax.n  in
                              match uu____18764 with
                              | FStar_Syntax_Syntax.Tm_fvar x ->
                                  FStar_Pervasives_Native.Some x
                              | uu____18771 -> FStar_Pervasives_Native.None
                               in
                            let uu____18772 = maybe_extract_fv head4  in
                            match uu____18772 with
                            | FStar_Pervasives_Native.Some x when
                                let uu____18782 =
                                  FStar_Syntax_Syntax.lid_of_fv x  in
                                FStar_TypeChecker_Env.is_action cfg.tcenv
                                  uu____18782
                                ->
                                let head5 = norm cfg env [] head4  in
                                let action_unfolded =
                                  let uu____18787 = maybe_extract_fv head5
                                     in
                                  match uu____18787 with
                                  | FStar_Pervasives_Native.Some uu____18792
                                      -> FStar_Pervasives_Native.Some true
                                  | uu____18793 ->
                                      FStar_Pervasives_Native.Some false
                                   in
                                (head5, action_unfolded)
                            | uu____18798 ->
                                (head4, FStar_Pervasives_Native.None)
                             in
                          ((let is_arg_impure uu____18813 =
                              match uu____18813 with
                              | (e,q) ->
                                  let uu____18820 =
                                    let uu____18821 =
                                      FStar_Syntax_Subst.compress e  in
                                    uu____18821.FStar_Syntax_Syntax.n  in
                                  (match uu____18820 with
                                   | FStar_Syntax_Syntax.Tm_meta
                                       (e0,FStar_Syntax_Syntax.Meta_monadic_lift
                                        (m1,m2,t'))
                                       ->
                                       let uu____18836 =
                                         FStar_Syntax_Util.is_pure_effect m1
                                          in
                                       Prims.op_Negation uu____18836
                                   | uu____18837 -> false)
                               in
                            let uu____18838 =
                              let uu____18839 =
                                let uu____18848 =
                                  FStar_Syntax_Syntax.as_arg head_app  in
                                uu____18848 :: args  in
                              FStar_Util.for_some is_arg_impure uu____18839
                               in
                            if uu____18838
                            then
                              let uu____18867 =
                                let uu____18868 =
                                  FStar_Syntax_Print.term_to_string head3  in
                                FStar_Util.format1
                                  "Incompatibility between typechecker and normalizer; this monadic application contains impure terms %s\n"
                                  uu____18868
                                 in
                              failwith uu____18867
                            else ());
                           (let uu____18870 = maybe_unfold_action head_app
                               in
                            match uu____18870 with
                            | (head_app1,found_action) ->
                                let mk1 tm =
                                  FStar_Syntax_Syntax.mk tm
                                    FStar_Pervasives_Native.None
                                    head3.FStar_Syntax_Syntax.pos
                                   in
                                let body =
                                  mk1
                                    (FStar_Syntax_Syntax.Tm_app
                                       (head_app1, args))
                                   in
                                let body1 =
                                  match found_action with
                                  | FStar_Pervasives_Native.None  ->
                                      FStar_Syntax_Util.mk_reify body
                                  | FStar_Pervasives_Native.Some (false ) ->
                                      mk1
                                        (FStar_Syntax_Syntax.Tm_meta
                                           (body,
                                             (FStar_Syntax_Syntax.Meta_monadic
                                                (m, t))))
                                  | FStar_Pervasives_Native.Some (true ) ->
                                      body
                                   in
                                (log cfg
                                   (fun uu____18913  ->
                                      let uu____18914 =
                                        FStar_Syntax_Print.term_to_string
                                          head0
                                         in
                                      let uu____18915 =
                                        FStar_Syntax_Print.term_to_string
                                          body1
                                         in
                                      FStar_Util.print2
                                        "Reified (2) <%s> to %s\n"
                                        uu____18914 uu____18915);
                                 (let uu____18916 = FStar_List.tl stack  in
                                  norm cfg env uu____18916 body1)))))
                 | FStar_Syntax_Syntax.Tm_meta
                     (e,FStar_Syntax_Syntax.Meta_monadic uu____18918) ->
                     do_reify_monadic fallback cfg env stack e m t
                 | FStar_Syntax_Syntax.Tm_meta
                     (e,FStar_Syntax_Syntax.Meta_monadic_lift (msrc,mtgt,t'))
                     ->
                     let lifted =
                       let uu____18942 = closure_as_term cfg env t'  in
                       reify_lift cfg e msrc mtgt uu____18942  in
                     (log cfg
                        (fun uu____18946  ->
                           let uu____18947 =
                             FStar_Syntax_Print.term_to_string lifted  in
                           FStar_Util.print1 "Reified lift to (2): %s\n"
                             uu____18947);
                      (let uu____18948 = FStar_List.tl stack  in
                       norm cfg env uu____18948 lifted))
                 | FStar_Syntax_Syntax.Tm_match (e,branches) ->
                     let branches1 =
                       FStar_All.pipe_right branches
                         (FStar_List.map
                            (fun uu____19069  ->
                               match uu____19069 with
                               | (pat,wopt,tm) ->
                                   let uu____19117 =
                                     FStar_Syntax_Util.mk_reify tm  in
                                   (pat, wopt, uu____19117)))
                        in
                     let tm =
                       mk (FStar_Syntax_Syntax.Tm_match (e, branches1))
                         head3.FStar_Syntax_Syntax.pos
                        in
                     let uu____19149 = FStar_List.tl stack  in
                     norm cfg env uu____19149 tm
                 | uu____19150 -> fallback ())

and (reify_lift :
  cfg ->
    FStar_Syntax_Syntax.term' FStar_Syntax_Syntax.syntax ->
      FStar_Syntax_Syntax.monad_name ->
        FStar_Syntax_Syntax.monad_name ->
          FStar_Syntax_Syntax.term -> FStar_Syntax_Syntax.term)
  =
  fun cfg  ->
    fun e  ->
      fun msrc  ->
        fun mtgt  ->
          fun t  ->
            let env = cfg.tcenv  in
            log cfg
              (fun uu____19164  ->
                 let uu____19165 = FStar_Ident.string_of_lid msrc  in
                 let uu____19166 = FStar_Ident.string_of_lid mtgt  in
                 let uu____19167 = FStar_Syntax_Print.term_to_string e  in
                 FStar_Util.print3 "Reifying lift %s -> %s: %s\n" uu____19165
                   uu____19166 uu____19167);
            (let uu____19168 =
               (FStar_Syntax_Util.is_pure_effect msrc) ||
                 (FStar_Syntax_Util.is_div_effect msrc)
                in
             if uu____19168
             then
               let ed =
                 let uu____19170 =
                   FStar_TypeChecker_Env.norm_eff_name cfg.tcenv mtgt  in
                 FStar_TypeChecker_Env.get_effect_decl env uu____19170  in
               let uu____19171 = ed.FStar_Syntax_Syntax.return_repr  in
               match uu____19171 with
               | (uu____19172,return_repr) ->
                   let return_inst =
                     let uu____19185 =
                       let uu____19186 =
                         FStar_Syntax_Subst.compress return_repr  in
                       uu____19186.FStar_Syntax_Syntax.n  in
                     match uu____19185 with
                     | FStar_Syntax_Syntax.Tm_uinst
                         (return_tm,uu____19192::[]) ->
                         let uu____19197 =
                           let uu____19204 =
                             let uu____19205 =
                               let uu____19212 =
                                 let uu____19213 =
                                   env.FStar_TypeChecker_Env.universe_of env
                                     t
                                    in
                                 [uu____19213]  in
                               (return_tm, uu____19212)  in
                             FStar_Syntax_Syntax.Tm_uinst uu____19205  in
                           FStar_Syntax_Syntax.mk uu____19204  in
                         uu____19197 FStar_Pervasives_Native.None
                           e.FStar_Syntax_Syntax.pos
                     | uu____19219 ->
                         failwith "NIY : Reification of indexed effects"
                      in
                   let uu____19222 =
                     let uu____19229 =
                       let uu____19230 =
                         let uu____19245 =
                           let uu____19254 = FStar_Syntax_Syntax.as_arg t  in
                           let uu____19261 =
                             let uu____19270 = FStar_Syntax_Syntax.as_arg e
                                in
                             [uu____19270]  in
                           uu____19254 :: uu____19261  in
                         (return_inst, uu____19245)  in
                       FStar_Syntax_Syntax.Tm_app uu____19230  in
                     FStar_Syntax_Syntax.mk uu____19229  in
                   uu____19222 FStar_Pervasives_Native.None
                     e.FStar_Syntax_Syntax.pos
             else
               (let uu____19309 =
                  FStar_TypeChecker_Env.monad_leq env msrc mtgt  in
                match uu____19309 with
                | FStar_Pervasives_Native.None  ->
                    let uu____19312 =
                      let uu____19313 = FStar_Ident.text_of_lid msrc  in
                      let uu____19314 = FStar_Ident.text_of_lid mtgt  in
                      FStar_Util.format2
                        "Impossible : trying to reify a lift between unrelated effects (%s and %s)"
                        uu____19313 uu____19314
                       in
                    failwith uu____19312
                | FStar_Pervasives_Native.Some
                    { FStar_TypeChecker_Env.msource = uu____19315;
                      FStar_TypeChecker_Env.mtarget = uu____19316;
                      FStar_TypeChecker_Env.mlift =
                        { FStar_TypeChecker_Env.mlift_wp = uu____19317;
                          FStar_TypeChecker_Env.mlift_term =
                            FStar_Pervasives_Native.None ;_};_}
                    ->
                    let uu____19339 =
                      let uu____19340 = FStar_Ident.text_of_lid msrc  in
                      let uu____19341 = FStar_Ident.text_of_lid mtgt  in
                      FStar_Util.format2
                        "Impossible : trying to reify a non-reifiable lift (from %s to %s)"
                        uu____19340 uu____19341
                       in
                    failwith uu____19339
                | FStar_Pervasives_Native.Some
                    { FStar_TypeChecker_Env.msource = uu____19342;
                      FStar_TypeChecker_Env.mtarget = uu____19343;
                      FStar_TypeChecker_Env.mlift =
                        { FStar_TypeChecker_Env.mlift_wp = uu____19344;
                          FStar_TypeChecker_Env.mlift_term =
                            FStar_Pervasives_Native.Some lift;_};_}
                    ->
                    let uu____19379 =
                      env.FStar_TypeChecker_Env.universe_of env t  in
                    let uu____19380 = FStar_Syntax_Util.mk_reify e  in
                    lift uu____19379 t FStar_Syntax_Syntax.tun uu____19380))

and (norm_pattern_args :
  cfg ->
    env ->
      (FStar_Syntax_Syntax.term' FStar_Syntax_Syntax.syntax,FStar_Syntax_Syntax.aqual)
        FStar_Pervasives_Native.tuple2 Prims.list Prims.list ->
        (FStar_Syntax_Syntax.term' FStar_Syntax_Syntax.syntax,FStar_Syntax_Syntax.aqual)
          FStar_Pervasives_Native.tuple2 Prims.list Prims.list)
  =
  fun cfg  ->
    fun env  ->
      fun args  ->
        FStar_All.pipe_right args
          (FStar_List.map
             (FStar_List.map
                (fun uu____19436  ->
                   match uu____19436 with
                   | (a,imp) ->
                       let uu____19447 = norm cfg env [] a  in
                       (uu____19447, imp))))

and (norm_comp :
  cfg -> env -> FStar_Syntax_Syntax.comp -> FStar_Syntax_Syntax.comp) =
  fun cfg  ->
    fun env  ->
      fun comp  ->
        log cfg
          (fun uu____19455  ->
             let uu____19456 = FStar_Syntax_Print.comp_to_string comp  in
             let uu____19457 =
               FStar_Util.string_of_int (FStar_List.length env)  in
             FStar_Util.print2 ">>> %s\nNormComp with with %s env elements"
               uu____19456 uu____19457);
        (match comp.FStar_Syntax_Syntax.n with
         | FStar_Syntax_Syntax.Total (t,uopt) ->
             let t1 = norm cfg env [] t  in
             let uopt1 =
               match uopt with
               | FStar_Pervasives_Native.Some u ->
                   let uu____19481 = norm_universe cfg env u  in
                   FStar_All.pipe_left
                     (fun _0_18  -> FStar_Pervasives_Native.Some _0_18)
                     uu____19481
               | FStar_Pervasives_Native.None  ->
                   FStar_Pervasives_Native.None
                in
             let uu___338_19484 = comp  in
             {
               FStar_Syntax_Syntax.n =
                 (FStar_Syntax_Syntax.Total (t1, uopt1));
               FStar_Syntax_Syntax.pos =
                 (uu___338_19484.FStar_Syntax_Syntax.pos);
               FStar_Syntax_Syntax.vars =
                 (uu___338_19484.FStar_Syntax_Syntax.vars)
             }
         | FStar_Syntax_Syntax.GTotal (t,uopt) ->
             let t1 = norm cfg env [] t  in
             let uopt1 =
               match uopt with
               | FStar_Pervasives_Native.Some u ->
                   let uu____19506 = norm_universe cfg env u  in
                   FStar_All.pipe_left
                     (fun _0_19  -> FStar_Pervasives_Native.Some _0_19)
                     uu____19506
               | FStar_Pervasives_Native.None  ->
                   FStar_Pervasives_Native.None
                in
             let uu___339_19509 = comp  in
             {
               FStar_Syntax_Syntax.n =
                 (FStar_Syntax_Syntax.GTotal (t1, uopt1));
               FStar_Syntax_Syntax.pos =
                 (uu___339_19509.FStar_Syntax_Syntax.pos);
               FStar_Syntax_Syntax.vars =
                 (uu___339_19509.FStar_Syntax_Syntax.vars)
             }
         | FStar_Syntax_Syntax.Comp ct ->
             let norm_args =
               FStar_List.mapi
                 (fun idx  ->
                    fun uu____19546  ->
                      match uu____19546 with
                      | (a,i) ->
                          let uu____19557 = norm cfg env [] a  in
                          (uu____19557, i))
                in
             let effect_args = norm_args ct.FStar_Syntax_Syntax.effect_args
                in
             let flags1 =
               FStar_All.pipe_right ct.FStar_Syntax_Syntax.flags
                 (FStar_List.map
                    (fun uu___252_19575  ->
                       match uu___252_19575 with
                       | FStar_Syntax_Syntax.DECREASES t ->
                           let uu____19579 = norm cfg env [] t  in
                           FStar_Syntax_Syntax.DECREASES uu____19579
                       | f -> f))
                in
             let comp_univs =
               FStar_List.map (norm_universe cfg env)
                 ct.FStar_Syntax_Syntax.comp_univs
                in
             let result_typ =
               norm cfg env [] ct.FStar_Syntax_Syntax.result_typ  in
             let uu___340_19587 = comp  in
             {
               FStar_Syntax_Syntax.n =
                 (FStar_Syntax_Syntax.Comp
                    (let uu___341_19590 = ct  in
                     {
                       FStar_Syntax_Syntax.comp_univs = comp_univs;
                       FStar_Syntax_Syntax.effect_name =
                         (uu___341_19590.FStar_Syntax_Syntax.effect_name);
                       FStar_Syntax_Syntax.result_typ = result_typ;
                       FStar_Syntax_Syntax.effect_args = effect_args;
                       FStar_Syntax_Syntax.flags = flags1
                     }));
               FStar_Syntax_Syntax.pos =
                 (uu___340_19587.FStar_Syntax_Syntax.pos);
               FStar_Syntax_Syntax.vars =
                 (uu___340_19587.FStar_Syntax_Syntax.vars)
             })

and (norm_binder :
  cfg -> env -> FStar_Syntax_Syntax.binder -> FStar_Syntax_Syntax.binder) =
  fun cfg  ->
    fun env  ->
      fun uu____19593  ->
        match uu____19593 with
        | (x,imp) ->
            let uu____19596 =
              let uu___342_19597 = x  in
              let uu____19598 = norm cfg env [] x.FStar_Syntax_Syntax.sort
                 in
              {
                FStar_Syntax_Syntax.ppname =
                  (uu___342_19597.FStar_Syntax_Syntax.ppname);
                FStar_Syntax_Syntax.index =
                  (uu___342_19597.FStar_Syntax_Syntax.index);
                FStar_Syntax_Syntax.sort = uu____19598
              }  in
            (uu____19596, imp)

and (norm_binders :
  cfg -> env -> FStar_Syntax_Syntax.binders -> FStar_Syntax_Syntax.binders) =
  fun cfg  ->
    fun env  ->
      fun bs  ->
        let uu____19604 =
          FStar_List.fold_left
            (fun uu____19638  ->
               fun b  ->
                 match uu____19638 with
                 | (nbs',env1) ->
                     let b1 = norm_binder cfg env1 b  in
                     ((b1 :: nbs'), (dummy :: env1))) ([], env) bs
           in
        match uu____19604 with | (nbs,uu____19718) -> FStar_List.rev nbs

and (norm_lcomp_opt :
  cfg ->
    env ->
      FStar_Syntax_Syntax.residual_comp FStar_Pervasives_Native.option ->
        FStar_Syntax_Syntax.residual_comp FStar_Pervasives_Native.option)
  =
  fun cfg  ->
    fun env  ->
      fun lopt  ->
        match lopt with
        | FStar_Pervasives_Native.Some rc ->
            let flags1 =
              filter_out_lcomp_cflags rc.FStar_Syntax_Syntax.residual_flags
               in
            let uu____19750 =
              let uu___343_19751 = rc  in
              let uu____19752 =
                FStar_Util.map_opt rc.FStar_Syntax_Syntax.residual_typ
                  (norm cfg env [])
                 in
              {
                FStar_Syntax_Syntax.residual_effect =
                  (uu___343_19751.FStar_Syntax_Syntax.residual_effect);
                FStar_Syntax_Syntax.residual_typ = uu____19752;
                FStar_Syntax_Syntax.residual_flags =
                  (uu___343_19751.FStar_Syntax_Syntax.residual_flags)
              }  in
            FStar_Pervasives_Native.Some uu____19750
        | uu____19761 -> lopt

and (maybe_simplify :
  cfg ->
    ((FStar_Syntax_Syntax.bv,FStar_Syntax_Syntax.aqual)
       FStar_Pervasives_Native.tuple2 FStar_Pervasives_Native.option,
      closure) FStar_Pervasives_Native.tuple2 Prims.list ->
      stack -> FStar_Syntax_Syntax.term -> FStar_Syntax_Syntax.term)
  =
  fun cfg  ->
    fun env  ->
      fun stack  ->
        fun tm  ->
          let tm' = maybe_simplify_aux cfg env stack tm  in
          if (cfg.debug).b380
          then
            (let uu____19782 = FStar_Syntax_Print.term_to_string tm  in
             let uu____19783 = FStar_Syntax_Print.term_to_string tm'  in
             FStar_Util.print3 "%sSimplified\n\t%s to\n\t%s\n"
               (if (cfg.steps).simplify then "" else "NOT ") uu____19782
               uu____19783)
          else ();
          tm'

and (maybe_simplify_aux :
  cfg ->
    ((FStar_Syntax_Syntax.bv,FStar_Syntax_Syntax.aqual)
       FStar_Pervasives_Native.tuple2 FStar_Pervasives_Native.option,
      closure) FStar_Pervasives_Native.tuple2 Prims.list ->
      stack -> FStar_Syntax_Syntax.term -> FStar_Syntax_Syntax.term)
  =
  fun cfg  ->
    fun env  ->
      fun stack  ->
        fun tm  ->
          let tm1 = reduce_primops cfg env stack tm  in
          let uu____19805 =
            FStar_All.pipe_left Prims.op_Negation (cfg.steps).simplify  in
          if uu____19805
          then tm1
          else
            (let w t =
               let uu___344_19819 = t  in
               {
                 FStar_Syntax_Syntax.n =
                   (uu___344_19819.FStar_Syntax_Syntax.n);
                 FStar_Syntax_Syntax.pos = (tm1.FStar_Syntax_Syntax.pos);
                 FStar_Syntax_Syntax.vars =
                   (uu___344_19819.FStar_Syntax_Syntax.vars)
               }  in
             let simp_t t =
               let uu____19830 =
                 let uu____19831 = FStar_Syntax_Util.unmeta t  in
                 uu____19831.FStar_Syntax_Syntax.n  in
               match uu____19830 with
               | FStar_Syntax_Syntax.Tm_fvar fv when
                   FStar_Syntax_Syntax.fv_eq_lid fv
                     FStar_Parser_Const.true_lid
                   -> FStar_Pervasives_Native.Some true
               | FStar_Syntax_Syntax.Tm_fvar fv when
                   FStar_Syntax_Syntax.fv_eq_lid fv
                     FStar_Parser_Const.false_lid
                   -> FStar_Pervasives_Native.Some false
               | uu____19838 -> FStar_Pervasives_Native.None  in
             let rec args_are_binders args bs =
               match (args, bs) with
               | ((t,uu____19887)::args1,(bv,uu____19890)::bs1) ->
                   let uu____19924 =
                     let uu____19925 = FStar_Syntax_Subst.compress t  in
                     uu____19925.FStar_Syntax_Syntax.n  in
                   (match uu____19924 with
                    | FStar_Syntax_Syntax.Tm_name bv' ->
                        (FStar_Syntax_Syntax.bv_eq bv bv') &&
                          (args_are_binders args1 bs1)
                    | uu____19929 -> false)
               | ([],[]) -> true
               | (uu____19950,uu____19951) -> false  in
             let is_applied bs t =
               if (cfg.debug).wpe
               then
                 (let uu____19992 = FStar_Syntax_Print.term_to_string t  in
                  let uu____19993 = FStar_Syntax_Print.tag_of_term t  in
                  FStar_Util.print2 "WPE> is_applied %s -- %s\n" uu____19992
                    uu____19993)
               else ();
               (let uu____19995 = FStar_Syntax_Util.head_and_args' t  in
                match uu____19995 with
                | (hd1,args) ->
                    let uu____20028 =
                      let uu____20029 = FStar_Syntax_Subst.compress hd1  in
                      uu____20029.FStar_Syntax_Syntax.n  in
                    (match uu____20028 with
                     | FStar_Syntax_Syntax.Tm_name bv when
                         args_are_binders args bs ->
                         (if (cfg.debug).wpe
                          then
                            (let uu____20036 =
                               FStar_Syntax_Print.term_to_string t  in
                             let uu____20037 =
                               FStar_Syntax_Print.bv_to_string bv  in
                             let uu____20038 =
                               FStar_Syntax_Print.term_to_string hd1  in
                             FStar_Util.print3
                               "WPE> got it\n>>>>top = %s\n>>>>b = %s\n>>>>hd = %s\n"
                               uu____20036 uu____20037 uu____20038)
                          else ();
                          FStar_Pervasives_Native.Some bv)
                     | uu____20040 -> FStar_Pervasives_Native.None))
                in
             let is_applied_maybe_squashed bs t =
               if (cfg.debug).wpe
               then
                 (let uu____20057 = FStar_Syntax_Print.term_to_string t  in
                  let uu____20058 = FStar_Syntax_Print.tag_of_term t  in
                  FStar_Util.print2
                    "WPE> is_applied_maybe_squashed %s -- %s\n" uu____20057
                    uu____20058)
               else ();
               (let uu____20060 = FStar_Syntax_Util.is_squash t  in
                match uu____20060 with
                | FStar_Pervasives_Native.Some (uu____20071,t') ->
                    is_applied bs t'
                | uu____20083 ->
                    let uu____20092 = FStar_Syntax_Util.is_auto_squash t  in
                    (match uu____20092 with
                     | FStar_Pervasives_Native.Some (uu____20103,t') ->
                         is_applied bs t'
                     | uu____20115 -> is_applied bs t))
                in
             let is_quantified_const bv phi =
               let uu____20139 =
                 FStar_Syntax_Util.destruct_typ_as_formula phi  in
               match uu____20139 with
               | FStar_Pervasives_Native.Some (FStar_Syntax_Util.BaseConn
                   (lid,(p,uu____20146)::(q,uu____20148)::[])) when
                   FStar_Ident.lid_equals lid FStar_Parser_Const.imp_lid ->
                   (if (cfg.debug).wpe
                    then
                      (let uu____20176 = FStar_Syntax_Print.term_to_string p
                          in
                       let uu____20177 = FStar_Syntax_Print.term_to_string q
                          in
                       FStar_Util.print2 "WPE> p = (%s); q = (%s)\n"
                         uu____20176 uu____20177)
                    else ();
                    (let uu____20179 =
                       FStar_Syntax_Util.destruct_typ_as_formula p  in
                     match uu____20179 with
                     | FStar_Pervasives_Native.None  ->
                         let uu____20184 =
                           let uu____20185 = FStar_Syntax_Subst.compress p
                              in
                           uu____20185.FStar_Syntax_Syntax.n  in
                         (match uu____20184 with
                          | FStar_Syntax_Syntax.Tm_bvar bv' when
                              FStar_Syntax_Syntax.bv_eq bv bv' ->
                              (if (cfg.debug).wpe
                               then FStar_Util.print_string "WPE> Case 1\n"
                               else ();
                               (let uu____20193 =
                                  FStar_Syntax_Subst.subst
                                    [FStar_Syntax_Syntax.NT
                                       (bv, FStar_Syntax_Util.t_true)] q
                                   in
                                FStar_Pervasives_Native.Some uu____20193))
                          | uu____20196 -> FStar_Pervasives_Native.None)
                     | FStar_Pervasives_Native.Some
                         (FStar_Syntax_Util.BaseConn
                         (lid1,(p1,uu____20199)::[])) when
                         FStar_Ident.lid_equals lid1
                           FStar_Parser_Const.not_lid
                         ->
                         let uu____20216 =
                           let uu____20217 = FStar_Syntax_Subst.compress p1
                              in
                           uu____20217.FStar_Syntax_Syntax.n  in
                         (match uu____20216 with
                          | FStar_Syntax_Syntax.Tm_bvar bv' when
                              FStar_Syntax_Syntax.bv_eq bv bv' ->
                              (if (cfg.debug).wpe
                               then FStar_Util.print_string "WPE> Case 2\n"
                               else ();
                               (let uu____20225 =
                                  FStar_Syntax_Subst.subst
                                    [FStar_Syntax_Syntax.NT
                                       (bv, FStar_Syntax_Util.t_false)] q
                                   in
                                FStar_Pervasives_Native.Some uu____20225))
                          | uu____20228 -> FStar_Pervasives_Native.None)
                     | FStar_Pervasives_Native.Some (FStar_Syntax_Util.QAll
                         (bs,pats,phi1)) ->
                         let uu____20232 =
                           FStar_Syntax_Util.destruct_typ_as_formula phi1  in
                         (match uu____20232 with
                          | FStar_Pervasives_Native.None  ->
                              let uu____20237 =
                                is_applied_maybe_squashed bs phi1  in
                              (match uu____20237 with
                               | FStar_Pervasives_Native.Some bv' when
                                   FStar_Syntax_Syntax.bv_eq bv bv' ->
                                   (if (cfg.debug).wpe
                                    then
                                      FStar_Util.print_string "WPE> Case 3\n"
                                    else ();
                                    (let ftrue =
                                       FStar_Syntax_Util.abs bs
                                         FStar_Syntax_Util.t_true
                                         (FStar_Pervasives_Native.Some
                                            (FStar_Syntax_Util.residual_tot
                                               FStar_Syntax_Util.ktype0))
                                        in
                                     let uu____20248 =
                                       FStar_Syntax_Subst.subst
                                         [FStar_Syntax_Syntax.NT (bv, ftrue)]
                                         q
                                        in
                                     FStar_Pervasives_Native.Some uu____20248))
                               | uu____20251 -> FStar_Pervasives_Native.None)
                          | FStar_Pervasives_Native.Some
                              (FStar_Syntax_Util.BaseConn
                              (lid1,(p1,uu____20256)::[])) when
                              FStar_Ident.lid_equals lid1
                                FStar_Parser_Const.not_lid
                              ->
                              let uu____20273 =
                                is_applied_maybe_squashed bs p1  in
                              (match uu____20273 with
                               | FStar_Pervasives_Native.Some bv' when
                                   FStar_Syntax_Syntax.bv_eq bv bv' ->
                                   (if (cfg.debug).wpe
                                    then
                                      FStar_Util.print_string "WPE> Case 4\n"
                                    else ();
                                    (let ffalse =
                                       FStar_Syntax_Util.abs bs
                                         FStar_Syntax_Util.t_false
                                         (FStar_Pervasives_Native.Some
                                            (FStar_Syntax_Util.residual_tot
                                               FStar_Syntax_Util.ktype0))
                                        in
                                     let uu____20284 =
                                       FStar_Syntax_Subst.subst
                                         [FStar_Syntax_Syntax.NT (bv, ffalse)]
                                         q
                                        in
                                     FStar_Pervasives_Native.Some uu____20284))
                               | uu____20287 -> FStar_Pervasives_Native.None)
                          | uu____20290 -> FStar_Pervasives_Native.None)
                     | uu____20293 -> FStar_Pervasives_Native.None))
               | uu____20296 -> FStar_Pervasives_Native.None  in
             let is_forall_const phi =
               let uu____20309 =
                 FStar_Syntax_Util.destruct_typ_as_formula phi  in
               match uu____20309 with
               | FStar_Pervasives_Native.Some (FStar_Syntax_Util.QAll
                   ((bv,uu____20315)::[],uu____20316,phi')) ->
                   (if (cfg.debug).wpe
                    then
                      (let uu____20327 = FStar_Syntax_Print.bv_to_string bv
                          in
                       let uu____20328 =
                         FStar_Syntax_Print.term_to_string phi'  in
                       FStar_Util.print2 "WPE> QAll [%s] %s\n" uu____20327
                         uu____20328)
                    else ();
                    is_quantified_const bv phi')
               | uu____20330 -> FStar_Pervasives_Native.None  in
             let is_const_match phi =
               let uu____20343 =
                 let uu____20344 = FStar_Syntax_Subst.compress phi  in
                 uu____20344.FStar_Syntax_Syntax.n  in
               match uu____20343 with
               | FStar_Syntax_Syntax.Tm_match (uu____20349,br::brs) ->
                   let uu____20416 = br  in
                   (match uu____20416 with
                    | (uu____20433,uu____20434,e) ->
                        let r =
                          let uu____20455 = simp_t e  in
                          match uu____20455 with
                          | FStar_Pervasives_Native.None  ->
                              FStar_Pervasives_Native.None
                          | FStar_Pervasives_Native.Some b ->
                              let uu____20461 =
                                FStar_List.for_all
                                  (fun uu____20479  ->
                                     match uu____20479 with
                                     | (uu____20492,uu____20493,e') ->
                                         let uu____20507 = simp_t e'  in
                                         uu____20507 =
                                           (FStar_Pervasives_Native.Some b))
                                  brs
                                 in
                              if uu____20461
                              then FStar_Pervasives_Native.Some b
                              else FStar_Pervasives_Native.None
                           in
                        r)
               | uu____20515 -> FStar_Pervasives_Native.None  in
             let maybe_auto_squash t =
               let uu____20524 = FStar_Syntax_Util.is_sub_singleton t  in
               if uu____20524
               then t
               else
                 FStar_Syntax_Util.mk_auto_squash FStar_Syntax_Syntax.U_zero
                   t
                in
             let squashed_head_un_auto_squash_args t =
               let maybe_un_auto_squash_arg uu____20555 =
                 match uu____20555 with
                 | (t1,q) ->
                     let uu____20568 = FStar_Syntax_Util.is_auto_squash t1
                        in
                     (match uu____20568 with
                      | FStar_Pervasives_Native.Some
                          (FStar_Syntax_Syntax.U_zero ,t2) -> (t2, q)
                      | uu____20596 -> (t1, q))
                  in
               let uu____20607 = FStar_Syntax_Util.head_and_args t  in
               match uu____20607 with
               | (head1,args) ->
                   let args1 = FStar_List.map maybe_un_auto_squash_arg args
                      in
                   FStar_Syntax_Syntax.mk_Tm_app head1 args1
                     FStar_Pervasives_Native.None t.FStar_Syntax_Syntax.pos
                in
             let rec clearly_inhabited ty =
               let uu____20673 =
                 let uu____20674 = FStar_Syntax_Util.unmeta ty  in
                 uu____20674.FStar_Syntax_Syntax.n  in
               match uu____20673 with
               | FStar_Syntax_Syntax.Tm_uinst (t,uu____20678) ->
                   clearly_inhabited t
               | FStar_Syntax_Syntax.Tm_arrow (uu____20683,c) ->
                   clearly_inhabited (FStar_Syntax_Util.comp_result c)
               | FStar_Syntax_Syntax.Tm_fvar fv ->
                   let l = FStar_Syntax_Syntax.lid_of_fv fv  in
                   (((FStar_Ident.lid_equals l FStar_Parser_Const.int_lid) ||
                       (FStar_Ident.lid_equals l FStar_Parser_Const.bool_lid))
                      ||
                      (FStar_Ident.lid_equals l FStar_Parser_Const.string_lid))
                     || (FStar_Ident.lid_equals l FStar_Parser_Const.exn_lid)
               | uu____20703 -> false  in
             let simplify1 arg =
               let uu____20728 = simp_t (FStar_Pervasives_Native.fst arg)  in
               (uu____20728, arg)  in
             let uu____20737 = is_forall_const tm1  in
             match uu____20737 with
             | FStar_Pervasives_Native.Some tm' ->
                 (if (cfg.debug).wpe
                  then
                    (let uu____20742 = FStar_Syntax_Print.term_to_string tm1
                        in
                     let uu____20743 = FStar_Syntax_Print.term_to_string tm'
                        in
                     FStar_Util.print2 "WPE> %s ~> %s\n" uu____20742
                       uu____20743)
                  else ();
                  (let uu____20745 = norm cfg env [] tm'  in
                   maybe_simplify_aux cfg env stack uu____20745))
             | FStar_Pervasives_Native.None  ->
                 let uu____20746 =
                   let uu____20747 = FStar_Syntax_Subst.compress tm1  in
                   uu____20747.FStar_Syntax_Syntax.n  in
                 (match uu____20746 with
                  | FStar_Syntax_Syntax.Tm_app
                      ({
                         FStar_Syntax_Syntax.n = FStar_Syntax_Syntax.Tm_uinst
                           ({
                              FStar_Syntax_Syntax.n =
                                FStar_Syntax_Syntax.Tm_fvar fv;
                              FStar_Syntax_Syntax.pos = uu____20751;
                              FStar_Syntax_Syntax.vars = uu____20752;_},uu____20753);
                         FStar_Syntax_Syntax.pos = uu____20754;
                         FStar_Syntax_Syntax.vars = uu____20755;_},args)
                      ->
                      let uu____20781 =
                        FStar_Syntax_Syntax.fv_eq_lid fv
                          FStar_Parser_Const.and_lid
                         in
                      if uu____20781
                      then
                        let uu____20782 =
                          FStar_All.pipe_right args
                            (FStar_List.map simplify1)
                           in
                        (match uu____20782 with
                         | (FStar_Pervasives_Native.Some (true ),uu____20827)::
                             (uu____20828,(arg,uu____20830))::[] ->
                             maybe_auto_squash arg
                         | (uu____20879,(arg,uu____20881))::(FStar_Pervasives_Native.Some
                                                             (true
                                                             ),uu____20882)::[]
                             -> maybe_auto_squash arg
                         | (FStar_Pervasives_Native.Some (false
                            ),uu____20931)::uu____20932::[] ->
                             w FStar_Syntax_Util.t_false
                         | uu____20983::(FStar_Pervasives_Native.Some (false
                                         ),uu____20984)::[]
                             -> w FStar_Syntax_Util.t_false
                         | uu____21035 ->
                             squashed_head_un_auto_squash_args tm1)
                      else
                        (let uu____21049 =
                           FStar_Syntax_Syntax.fv_eq_lid fv
                             FStar_Parser_Const.or_lid
                            in
                         if uu____21049
                         then
                           let uu____21050 =
                             FStar_All.pipe_right args
                               (FStar_List.map simplify1)
                              in
                           match uu____21050 with
                           | (FStar_Pervasives_Native.Some (true
                              ),uu____21095)::uu____21096::[] ->
                               w FStar_Syntax_Util.t_true
                           | uu____21147::(FStar_Pervasives_Native.Some (true
                                           ),uu____21148)::[]
                               -> w FStar_Syntax_Util.t_true
                           | (FStar_Pervasives_Native.Some (false
                              ),uu____21199)::(uu____21200,(arg,uu____21202))::[]
                               -> maybe_auto_squash arg
                           | (uu____21251,(arg,uu____21253))::(FStar_Pervasives_Native.Some
                                                               (false
                                                               ),uu____21254)::[]
                               -> maybe_auto_squash arg
                           | uu____21303 ->
                               squashed_head_un_auto_squash_args tm1
                         else
                           (let uu____21317 =
                              FStar_Syntax_Syntax.fv_eq_lid fv
                                FStar_Parser_Const.imp_lid
                               in
                            if uu____21317
                            then
                              let uu____21318 =
                                FStar_All.pipe_right args
                                  (FStar_List.map simplify1)
                                 in
                              match uu____21318 with
                              | uu____21363::(FStar_Pervasives_Native.Some
                                              (true ),uu____21364)::[]
                                  -> w FStar_Syntax_Util.t_true
                              | (FStar_Pervasives_Native.Some (false
                                 ),uu____21415)::uu____21416::[] ->
                                  w FStar_Syntax_Util.t_true
                              | (FStar_Pervasives_Native.Some (true
                                 ),uu____21467)::(uu____21468,(arg,uu____21470))::[]
                                  -> maybe_auto_squash arg
                              | (uu____21519,(p,uu____21521))::(uu____21522,
                                                                (q,uu____21524))::[]
                                  ->
                                  let uu____21571 =
                                    FStar_Syntax_Util.term_eq p q  in
                                  (if uu____21571
                                   then w FStar_Syntax_Util.t_true
                                   else squashed_head_un_auto_squash_args tm1)
                              | uu____21573 ->
                                  squashed_head_un_auto_squash_args tm1
                            else
                              (let uu____21587 =
                                 FStar_Syntax_Syntax.fv_eq_lid fv
                                   FStar_Parser_Const.iff_lid
                                  in
                               if uu____21587
                               then
                                 let uu____21588 =
                                   FStar_All.pipe_right args
                                     (FStar_List.map simplify1)
                                    in
                                 match uu____21588 with
                                 | (FStar_Pervasives_Native.Some (true
                                    ),uu____21633)::(FStar_Pervasives_Native.Some
                                                     (true ),uu____21634)::[]
                                     -> w FStar_Syntax_Util.t_true
                                 | (FStar_Pervasives_Native.Some (false
                                    ),uu____21685)::(FStar_Pervasives_Native.Some
                                                     (false ),uu____21686)::[]
                                     -> w FStar_Syntax_Util.t_true
                                 | (FStar_Pervasives_Native.Some (true
                                    ),uu____21737)::(FStar_Pervasives_Native.Some
                                                     (false ),uu____21738)::[]
                                     -> w FStar_Syntax_Util.t_false
                                 | (FStar_Pervasives_Native.Some (false
                                    ),uu____21789)::(FStar_Pervasives_Native.Some
                                                     (true ),uu____21790)::[]
                                     -> w FStar_Syntax_Util.t_false
                                 | (uu____21841,(arg,uu____21843))::(FStar_Pervasives_Native.Some
                                                                    (true
                                                                    ),uu____21844)::[]
                                     -> maybe_auto_squash arg
                                 | (FStar_Pervasives_Native.Some (true
                                    ),uu____21893)::(uu____21894,(arg,uu____21896))::[]
                                     -> maybe_auto_squash arg
                                 | (uu____21945,(arg,uu____21947))::(FStar_Pervasives_Native.Some
                                                                    (false
                                                                    ),uu____21948)::[]
                                     ->
                                     let uu____21997 =
                                       FStar_Syntax_Util.mk_neg arg  in
                                     maybe_auto_squash uu____21997
                                 | (FStar_Pervasives_Native.Some (false
                                    ),uu____21998)::(uu____21999,(arg,uu____22001))::[]
                                     ->
                                     let uu____22050 =
                                       FStar_Syntax_Util.mk_neg arg  in
                                     maybe_auto_squash uu____22050
                                 | (uu____22051,(p,uu____22053))::(uu____22054,
                                                                   (q,uu____22056))::[]
                                     ->
                                     let uu____22103 =
                                       FStar_Syntax_Util.term_eq p q  in
                                     (if uu____22103
                                      then w FStar_Syntax_Util.t_true
                                      else
                                        squashed_head_un_auto_squash_args tm1)
                                 | uu____22105 ->
                                     squashed_head_un_auto_squash_args tm1
                               else
                                 (let uu____22119 =
                                    FStar_Syntax_Syntax.fv_eq_lid fv
                                      FStar_Parser_Const.not_lid
                                     in
                                  if uu____22119
                                  then
                                    let uu____22120 =
                                      FStar_All.pipe_right args
                                        (FStar_List.map simplify1)
                                       in
                                    match uu____22120 with
                                    | (FStar_Pervasives_Native.Some (true
                                       ),uu____22165)::[] ->
                                        w FStar_Syntax_Util.t_false
                                    | (FStar_Pervasives_Native.Some (false
                                       ),uu____22196)::[] ->
                                        w FStar_Syntax_Util.t_true
                                    | uu____22227 ->
                                        squashed_head_un_auto_squash_args tm1
                                  else
                                    (let uu____22241 =
                                       FStar_Syntax_Syntax.fv_eq_lid fv
                                         FStar_Parser_Const.forall_lid
                                        in
                                     if uu____22241
                                     then
                                       match args with
                                       | (t,uu____22243)::[] ->
                                           let uu____22260 =
                                             let uu____22261 =
                                               FStar_Syntax_Subst.compress t
                                                in
                                             uu____22261.FStar_Syntax_Syntax.n
                                              in
                                           (match uu____22260 with
                                            | FStar_Syntax_Syntax.Tm_abs
                                                (uu____22264::[],body,uu____22266)
                                                ->
                                                let uu____22293 = simp_t body
                                                   in
                                                (match uu____22293 with
                                                 | FStar_Pervasives_Native.Some
                                                     (true ) ->
                                                     w
                                                       FStar_Syntax_Util.t_true
                                                 | uu____22296 -> tm1)
                                            | uu____22299 -> tm1)
                                       | (ty,FStar_Pervasives_Native.Some
                                          (FStar_Syntax_Syntax.Implicit
                                          uu____22301))::(t,uu____22303)::[]
                                           ->
                                           let uu____22330 =
                                             let uu____22331 =
                                               FStar_Syntax_Subst.compress t
                                                in
                                             uu____22331.FStar_Syntax_Syntax.n
                                              in
                                           (match uu____22330 with
                                            | FStar_Syntax_Syntax.Tm_abs
                                                (uu____22334::[],body,uu____22336)
                                                ->
                                                let uu____22363 = simp_t body
                                                   in
                                                (match uu____22363 with
                                                 | FStar_Pervasives_Native.Some
                                                     (true ) ->
                                                     w
                                                       FStar_Syntax_Util.t_true
                                                 | FStar_Pervasives_Native.Some
                                                     (false ) when
                                                     clearly_inhabited ty ->
                                                     w
                                                       FStar_Syntax_Util.t_false
                                                 | uu____22366 -> tm1)
                                            | uu____22369 -> tm1)
                                       | uu____22370 -> tm1
                                     else
                                       (let uu____22380 =
                                          FStar_Syntax_Syntax.fv_eq_lid fv
                                            FStar_Parser_Const.exists_lid
                                           in
                                        if uu____22380
                                        then
                                          match args with
                                          | (t,uu____22382)::[] ->
                                              let uu____22399 =
                                                let uu____22400 =
                                                  FStar_Syntax_Subst.compress
                                                    t
                                                   in
                                                uu____22400.FStar_Syntax_Syntax.n
                                                 in
                                              (match uu____22399 with
                                               | FStar_Syntax_Syntax.Tm_abs
                                                   (uu____22403::[],body,uu____22405)
                                                   ->
                                                   let uu____22432 =
                                                     simp_t body  in
                                                   (match uu____22432 with
                                                    | FStar_Pervasives_Native.Some
                                                        (false ) ->
                                                        w
                                                          FStar_Syntax_Util.t_false
                                                    | uu____22435 -> tm1)
                                               | uu____22438 -> tm1)
                                          | (ty,FStar_Pervasives_Native.Some
                                             (FStar_Syntax_Syntax.Implicit
                                             uu____22440))::(t,uu____22442)::[]
                                              ->
                                              let uu____22469 =
                                                let uu____22470 =
                                                  FStar_Syntax_Subst.compress
                                                    t
                                                   in
                                                uu____22470.FStar_Syntax_Syntax.n
                                                 in
                                              (match uu____22469 with
                                               | FStar_Syntax_Syntax.Tm_abs
                                                   (uu____22473::[],body,uu____22475)
                                                   ->
                                                   let uu____22502 =
                                                     simp_t body  in
                                                   (match uu____22502 with
                                                    | FStar_Pervasives_Native.Some
                                                        (false ) ->
                                                        w
                                                          FStar_Syntax_Util.t_false
                                                    | FStar_Pervasives_Native.Some
                                                        (true ) when
                                                        clearly_inhabited ty
                                                        ->
                                                        w
                                                          FStar_Syntax_Util.t_true
                                                    | uu____22505 -> tm1)
                                               | uu____22508 -> tm1)
                                          | uu____22509 -> tm1
                                        else
                                          (let uu____22519 =
                                             FStar_Syntax_Syntax.fv_eq_lid fv
                                               FStar_Parser_Const.b2t_lid
                                              in
                                           if uu____22519
                                           then
                                             match args with
                                             | ({
                                                  FStar_Syntax_Syntax.n =
                                                    FStar_Syntax_Syntax.Tm_constant
                                                    (FStar_Const.Const_bool
                                                    (true ));
                                                  FStar_Syntax_Syntax.pos =
                                                    uu____22520;
                                                  FStar_Syntax_Syntax.vars =
                                                    uu____22521;_},uu____22522)::[]
                                                 ->
                                                 w FStar_Syntax_Util.t_true
                                             | ({
                                                  FStar_Syntax_Syntax.n =
                                                    FStar_Syntax_Syntax.Tm_constant
                                                    (FStar_Const.Const_bool
                                                    (false ));
                                                  FStar_Syntax_Syntax.pos =
                                                    uu____22539;
                                                  FStar_Syntax_Syntax.vars =
                                                    uu____22540;_},uu____22541)::[]
                                                 ->
                                                 w FStar_Syntax_Util.t_false
                                             | uu____22558 -> tm1
                                           else
                                             (let uu____22568 =
                                                FStar_Syntax_Util.is_auto_squash
                                                  tm1
                                                 in
                                              match uu____22568 with
                                              | FStar_Pervasives_Native.Some
                                                  (FStar_Syntax_Syntax.U_zero
                                                   ,t)
                                                  when
                                                  FStar_Syntax_Util.is_sub_singleton
                                                    t
                                                  -> t
                                              | uu____22588 ->
                                                  reduce_equality cfg env
                                                    stack tm1))))))))
                  | FStar_Syntax_Syntax.Tm_app
                      ({
                         FStar_Syntax_Syntax.n = FStar_Syntax_Syntax.Tm_fvar
                           fv;
                         FStar_Syntax_Syntax.pos = uu____22598;
                         FStar_Syntax_Syntax.vars = uu____22599;_},args)
                      ->
                      let uu____22621 =
                        FStar_Syntax_Syntax.fv_eq_lid fv
                          FStar_Parser_Const.and_lid
                         in
                      if uu____22621
                      then
                        let uu____22622 =
                          FStar_All.pipe_right args
                            (FStar_List.map simplify1)
                           in
                        (match uu____22622 with
                         | (FStar_Pervasives_Native.Some (true ),uu____22667)::
                             (uu____22668,(arg,uu____22670))::[] ->
                             maybe_auto_squash arg
                         | (uu____22719,(arg,uu____22721))::(FStar_Pervasives_Native.Some
                                                             (true
                                                             ),uu____22722)::[]
                             -> maybe_auto_squash arg
                         | (FStar_Pervasives_Native.Some (false
                            ),uu____22771)::uu____22772::[] ->
                             w FStar_Syntax_Util.t_false
                         | uu____22823::(FStar_Pervasives_Native.Some (false
                                         ),uu____22824)::[]
                             -> w FStar_Syntax_Util.t_false
                         | uu____22875 ->
                             squashed_head_un_auto_squash_args tm1)
                      else
                        (let uu____22889 =
                           FStar_Syntax_Syntax.fv_eq_lid fv
                             FStar_Parser_Const.or_lid
                            in
                         if uu____22889
                         then
                           let uu____22890 =
                             FStar_All.pipe_right args
                               (FStar_List.map simplify1)
                              in
                           match uu____22890 with
                           | (FStar_Pervasives_Native.Some (true
                              ),uu____22935)::uu____22936::[] ->
                               w FStar_Syntax_Util.t_true
                           | uu____22987::(FStar_Pervasives_Native.Some (true
                                           ),uu____22988)::[]
                               -> w FStar_Syntax_Util.t_true
                           | (FStar_Pervasives_Native.Some (false
                              ),uu____23039)::(uu____23040,(arg,uu____23042))::[]
                               -> maybe_auto_squash arg
                           | (uu____23091,(arg,uu____23093))::(FStar_Pervasives_Native.Some
                                                               (false
                                                               ),uu____23094)::[]
                               -> maybe_auto_squash arg
                           | uu____23143 ->
                               squashed_head_un_auto_squash_args tm1
                         else
                           (let uu____23157 =
                              FStar_Syntax_Syntax.fv_eq_lid fv
                                FStar_Parser_Const.imp_lid
                               in
                            if uu____23157
                            then
                              let uu____23158 =
                                FStar_All.pipe_right args
                                  (FStar_List.map simplify1)
                                 in
                              match uu____23158 with
                              | uu____23203::(FStar_Pervasives_Native.Some
                                              (true ),uu____23204)::[]
                                  -> w FStar_Syntax_Util.t_true
                              | (FStar_Pervasives_Native.Some (false
                                 ),uu____23255)::uu____23256::[] ->
                                  w FStar_Syntax_Util.t_true
                              | (FStar_Pervasives_Native.Some (true
                                 ),uu____23307)::(uu____23308,(arg,uu____23310))::[]
                                  -> maybe_auto_squash arg
                              | (uu____23359,(p,uu____23361))::(uu____23362,
                                                                (q,uu____23364))::[]
                                  ->
                                  let uu____23411 =
                                    FStar_Syntax_Util.term_eq p q  in
                                  (if uu____23411
                                   then w FStar_Syntax_Util.t_true
                                   else squashed_head_un_auto_squash_args tm1)
                              | uu____23413 ->
                                  squashed_head_un_auto_squash_args tm1
                            else
                              (let uu____23427 =
                                 FStar_Syntax_Syntax.fv_eq_lid fv
                                   FStar_Parser_Const.iff_lid
                                  in
                               if uu____23427
                               then
                                 let uu____23428 =
                                   FStar_All.pipe_right args
                                     (FStar_List.map simplify1)
                                    in
                                 match uu____23428 with
                                 | (FStar_Pervasives_Native.Some (true
                                    ),uu____23473)::(FStar_Pervasives_Native.Some
                                                     (true ),uu____23474)::[]
                                     -> w FStar_Syntax_Util.t_true
                                 | (FStar_Pervasives_Native.Some (false
                                    ),uu____23525)::(FStar_Pervasives_Native.Some
                                                     (false ),uu____23526)::[]
                                     -> w FStar_Syntax_Util.t_true
                                 | (FStar_Pervasives_Native.Some (true
                                    ),uu____23577)::(FStar_Pervasives_Native.Some
                                                     (false ),uu____23578)::[]
                                     -> w FStar_Syntax_Util.t_false
                                 | (FStar_Pervasives_Native.Some (false
                                    ),uu____23629)::(FStar_Pervasives_Native.Some
                                                     (true ),uu____23630)::[]
                                     -> w FStar_Syntax_Util.t_false
                                 | (uu____23681,(arg,uu____23683))::(FStar_Pervasives_Native.Some
                                                                    (true
                                                                    ),uu____23684)::[]
                                     -> maybe_auto_squash arg
                                 | (FStar_Pervasives_Native.Some (true
                                    ),uu____23733)::(uu____23734,(arg,uu____23736))::[]
                                     -> maybe_auto_squash arg
                                 | (uu____23785,(arg,uu____23787))::(FStar_Pervasives_Native.Some
                                                                    (false
                                                                    ),uu____23788)::[]
                                     ->
                                     let uu____23837 =
                                       FStar_Syntax_Util.mk_neg arg  in
                                     maybe_auto_squash uu____23837
                                 | (FStar_Pervasives_Native.Some (false
                                    ),uu____23838)::(uu____23839,(arg,uu____23841))::[]
                                     ->
                                     let uu____23890 =
                                       FStar_Syntax_Util.mk_neg arg  in
                                     maybe_auto_squash uu____23890
                                 | (uu____23891,(p,uu____23893))::(uu____23894,
                                                                   (q,uu____23896))::[]
                                     ->
                                     let uu____23943 =
                                       FStar_Syntax_Util.term_eq p q  in
                                     (if uu____23943
                                      then w FStar_Syntax_Util.t_true
                                      else
                                        squashed_head_un_auto_squash_args tm1)
                                 | uu____23945 ->
                                     squashed_head_un_auto_squash_args tm1
                               else
                                 (let uu____23959 =
                                    FStar_Syntax_Syntax.fv_eq_lid fv
                                      FStar_Parser_Const.not_lid
                                     in
                                  if uu____23959
                                  then
                                    let uu____23960 =
                                      FStar_All.pipe_right args
                                        (FStar_List.map simplify1)
                                       in
                                    match uu____23960 with
                                    | (FStar_Pervasives_Native.Some (true
                                       ),uu____24005)::[] ->
                                        w FStar_Syntax_Util.t_false
                                    | (FStar_Pervasives_Native.Some (false
                                       ),uu____24036)::[] ->
                                        w FStar_Syntax_Util.t_true
                                    | uu____24067 ->
                                        squashed_head_un_auto_squash_args tm1
                                  else
                                    (let uu____24081 =
                                       FStar_Syntax_Syntax.fv_eq_lid fv
                                         FStar_Parser_Const.forall_lid
                                        in
                                     if uu____24081
                                     then
                                       match args with
                                       | (t,uu____24083)::[] ->
                                           let uu____24100 =
                                             let uu____24101 =
                                               FStar_Syntax_Subst.compress t
                                                in
                                             uu____24101.FStar_Syntax_Syntax.n
                                              in
                                           (match uu____24100 with
                                            | FStar_Syntax_Syntax.Tm_abs
                                                (uu____24104::[],body,uu____24106)
                                                ->
                                                let uu____24133 = simp_t body
                                                   in
                                                (match uu____24133 with
                                                 | FStar_Pervasives_Native.Some
                                                     (true ) ->
                                                     w
                                                       FStar_Syntax_Util.t_true
                                                 | uu____24136 -> tm1)
                                            | uu____24139 -> tm1)
                                       | (ty,FStar_Pervasives_Native.Some
                                          (FStar_Syntax_Syntax.Implicit
                                          uu____24141))::(t,uu____24143)::[]
                                           ->
                                           let uu____24170 =
                                             let uu____24171 =
                                               FStar_Syntax_Subst.compress t
                                                in
                                             uu____24171.FStar_Syntax_Syntax.n
                                              in
                                           (match uu____24170 with
                                            | FStar_Syntax_Syntax.Tm_abs
                                                (uu____24174::[],body,uu____24176)
                                                ->
                                                let uu____24203 = simp_t body
                                                   in
                                                (match uu____24203 with
                                                 | FStar_Pervasives_Native.Some
                                                     (true ) ->
                                                     w
                                                       FStar_Syntax_Util.t_true
                                                 | FStar_Pervasives_Native.Some
                                                     (false ) when
                                                     clearly_inhabited ty ->
                                                     w
                                                       FStar_Syntax_Util.t_false
                                                 | uu____24206 -> tm1)
                                            | uu____24209 -> tm1)
                                       | uu____24210 -> tm1
                                     else
                                       (let uu____24220 =
                                          FStar_Syntax_Syntax.fv_eq_lid fv
                                            FStar_Parser_Const.exists_lid
                                           in
                                        if uu____24220
                                        then
                                          match args with
                                          | (t,uu____24222)::[] ->
                                              let uu____24239 =
                                                let uu____24240 =
                                                  FStar_Syntax_Subst.compress
                                                    t
                                                   in
                                                uu____24240.FStar_Syntax_Syntax.n
                                                 in
                                              (match uu____24239 with
                                               | FStar_Syntax_Syntax.Tm_abs
                                                   (uu____24243::[],body,uu____24245)
                                                   ->
                                                   let uu____24272 =
                                                     simp_t body  in
                                                   (match uu____24272 with
                                                    | FStar_Pervasives_Native.Some
                                                        (false ) ->
                                                        w
                                                          FStar_Syntax_Util.t_false
                                                    | uu____24275 -> tm1)
                                               | uu____24278 -> tm1)
                                          | (ty,FStar_Pervasives_Native.Some
                                             (FStar_Syntax_Syntax.Implicit
                                             uu____24280))::(t,uu____24282)::[]
                                              ->
                                              let uu____24309 =
                                                let uu____24310 =
                                                  FStar_Syntax_Subst.compress
                                                    t
                                                   in
                                                uu____24310.FStar_Syntax_Syntax.n
                                                 in
                                              (match uu____24309 with
                                               | FStar_Syntax_Syntax.Tm_abs
                                                   (uu____24313::[],body,uu____24315)
                                                   ->
                                                   let uu____24342 =
                                                     simp_t body  in
                                                   (match uu____24342 with
                                                    | FStar_Pervasives_Native.Some
                                                        (false ) ->
                                                        w
                                                          FStar_Syntax_Util.t_false
                                                    | FStar_Pervasives_Native.Some
                                                        (true ) when
                                                        clearly_inhabited ty
                                                        ->
                                                        w
                                                          FStar_Syntax_Util.t_true
                                                    | uu____24345 -> tm1)
                                               | uu____24348 -> tm1)
                                          | uu____24349 -> tm1
                                        else
                                          (let uu____24359 =
                                             FStar_Syntax_Syntax.fv_eq_lid fv
                                               FStar_Parser_Const.b2t_lid
                                              in
                                           if uu____24359
                                           then
                                             match args with
                                             | ({
                                                  FStar_Syntax_Syntax.n =
                                                    FStar_Syntax_Syntax.Tm_constant
                                                    (FStar_Const.Const_bool
                                                    (true ));
                                                  FStar_Syntax_Syntax.pos =
                                                    uu____24360;
                                                  FStar_Syntax_Syntax.vars =
                                                    uu____24361;_},uu____24362)::[]
                                                 ->
                                                 w FStar_Syntax_Util.t_true
                                             | ({
                                                  FStar_Syntax_Syntax.n =
                                                    FStar_Syntax_Syntax.Tm_constant
                                                    (FStar_Const.Const_bool
                                                    (false ));
                                                  FStar_Syntax_Syntax.pos =
                                                    uu____24379;
                                                  FStar_Syntax_Syntax.vars =
                                                    uu____24380;_},uu____24381)::[]
                                                 ->
                                                 w FStar_Syntax_Util.t_false
                                             | uu____24398 -> tm1
                                           else
                                             (let uu____24408 =
                                                FStar_Syntax_Util.is_auto_squash
                                                  tm1
                                                 in
                                              match uu____24408 with
                                              | FStar_Pervasives_Native.Some
                                                  (FStar_Syntax_Syntax.U_zero
                                                   ,t)
                                                  when
                                                  FStar_Syntax_Util.is_sub_singleton
                                                    t
                                                  -> t
                                              | uu____24428 ->
                                                  reduce_equality cfg env
                                                    stack tm1))))))))
                  | FStar_Syntax_Syntax.Tm_refine (bv,t) ->
                      let uu____24443 = simp_t t  in
                      (match uu____24443 with
                       | FStar_Pervasives_Native.Some (true ) ->
                           bv.FStar_Syntax_Syntax.sort
                       | FStar_Pervasives_Native.Some (false ) -> tm1
                       | FStar_Pervasives_Native.None  -> tm1)
                  | FStar_Syntax_Syntax.Tm_match uu____24446 ->
                      let uu____24469 = is_const_match tm1  in
                      (match uu____24469 with
                       | FStar_Pervasives_Native.Some (true ) ->
                           w FStar_Syntax_Util.t_true
                       | FStar_Pervasives_Native.Some (false ) ->
                           w FStar_Syntax_Util.t_false
                       | FStar_Pervasives_Native.None  -> tm1)
                  | uu____24472 -> tm1))

and (rebuild :
  cfg -> env -> stack -> FStar_Syntax_Syntax.term -> FStar_Syntax_Syntax.term)
  =
  fun cfg  ->
    fun env  ->
      fun stack  ->
        fun t  ->
          log cfg
            (fun uu____24482  ->
               (let uu____24484 = FStar_Syntax_Print.tag_of_term t  in
                let uu____24485 = FStar_Syntax_Print.term_to_string t  in
                let uu____24486 =
                  FStar_Util.string_of_int (FStar_List.length env)  in
                let uu____24493 =
                  let uu____24494 =
                    let uu____24497 = firstn (Prims.parse_int "4") stack  in
                    FStar_All.pipe_left FStar_Pervasives_Native.fst
                      uu____24497
                     in
                  stack_to_string uu____24494  in
                FStar_Util.print4
                  ">>> %s\nRebuild %s with %s env elements and top of the stack %s \n"
                  uu____24484 uu____24485 uu____24486 uu____24493);
               (let uu____24520 =
                  FStar_TypeChecker_Env.debug cfg.tcenv
                    (FStar_Options.Other "NormRebuild")
                   in
                if uu____24520
                then
                  let uu____24521 = FStar_Syntax_Util.unbound_variables t  in
                  match uu____24521 with
                  | [] -> ()
                  | bvs ->
                      ((let uu____24528 = FStar_Syntax_Print.tag_of_term t
                           in
                        let uu____24529 = FStar_Syntax_Print.term_to_string t
                           in
                        let uu____24530 =
                          let uu____24531 =
                            FStar_All.pipe_right bvs
                              (FStar_List.map FStar_Syntax_Print.bv_to_string)
                             in
                          FStar_All.pipe_right uu____24531
                            (FStar_String.concat ", ")
                           in
                        FStar_Util.print3
                          "!!! Rebuild (%s) %s, free vars=%s\n" uu____24528
                          uu____24529 uu____24530);
                       failwith "DIE!")
                else ()));
          (let t1 = maybe_simplify cfg env stack t  in
           match stack with
           | [] -> t1
           | (Debug (tm,time_then))::stack1 ->
               (if (cfg.debug).print_normalized
                then
                  (let time_now = FStar_Util.now ()  in
                   let uu____24549 =
                     let uu____24550 =
                       let uu____24551 =
                         FStar_Util.time_diff time_then time_now  in
                       FStar_Pervasives_Native.snd uu____24551  in
                     FStar_Util.string_of_int uu____24550  in
                   let uu____24556 = FStar_Syntax_Print.term_to_string tm  in
                   let uu____24557 = FStar_Syntax_Print.term_to_string t1  in
                   FStar_Util.print3 "Normalized (%s ms) %s\n\tto %s\n"
                     uu____24549 uu____24556 uu____24557)
                else ();
                rebuild cfg env stack1 t1)
           | (Cfg cfg1)::stack1 -> rebuild cfg1 env stack1 t1
           | (Meta (uu____24563,m,r))::stack1 ->
               let t2 = mk (FStar_Syntax_Syntax.Tm_meta (t1, m)) r  in
               rebuild cfg env stack1 t2
           | (MemoLazy r)::stack1 ->
               (set_memo cfg r (env, t1);
                log cfg
                  (fun uu____24614  ->
                     let uu____24615 = FStar_Syntax_Print.term_to_string t1
                        in
                     FStar_Util.print1 "\tSet memo %s\n" uu____24615);
                rebuild cfg env stack1 t1)
           | (Let (env',bs,lb,r))::stack1 ->
               let body = FStar_Syntax_Subst.close bs t1  in
               let t2 =
                 FStar_Syntax_Syntax.mk
                   (FStar_Syntax_Syntax.Tm_let ((false, [lb]), body))
                   FStar_Pervasives_Native.None r
                  in
               rebuild cfg env' stack1 t2
           | (Abs (env',bs,env'',lopt,r))::stack1 ->
               let bs1 = norm_binders cfg env' bs  in
               let lopt1 = norm_lcomp_opt cfg env'' lopt  in
               let uu____24653 =
                 let uu___345_24654 = FStar_Syntax_Util.abs bs1 t1 lopt1  in
                 {
                   FStar_Syntax_Syntax.n =
                     (uu___345_24654.FStar_Syntax_Syntax.n);
                   FStar_Syntax_Syntax.pos = r;
                   FStar_Syntax_Syntax.vars =
                     (uu___345_24654.FStar_Syntax_Syntax.vars)
                 }  in
               rebuild cfg env stack1 uu____24653
           | (Arg (Univ uu____24657,uu____24658,uu____24659))::uu____24660 ->
               failwith "Impossible"
           | (Arg (Dummy ,uu____24663,uu____24664))::uu____24665 ->
               failwith "Impossible"
           | (UnivArgs (us,r))::stack1 ->
               let t2 = FStar_Syntax_Syntax.mk_Tm_uinst t1 us  in
               rebuild cfg env stack1 t2
           | (Arg (Clos (env_arg,tm,uu____24680,uu____24681),aq,r))::stack1
               when
               let uu____24731 = head_of t1  in
               FStar_Syntax_Util.is_fstar_tactics_by_tactic uu____24731 ->
               let t2 =
                 let uu____24735 =
                   let uu____24740 =
                     let uu____24741 = closure_as_term cfg env_arg tm  in
                     (uu____24741, aq)  in
                   FStar_Syntax_Syntax.extend_app t1 uu____24740  in
                 uu____24735 FStar_Pervasives_Native.None r  in
               rebuild cfg env stack1 t2
           | (Arg (Clos (env_arg,tm,m,uu____24751),aq,r))::stack1 ->
               (log cfg
                  (fun uu____24804  ->
                     let uu____24805 = FStar_Syntax_Print.term_to_string tm
                        in
                     FStar_Util.print1 "Rebuilding with arg %s\n" uu____24805);
                if Prims.op_Negation (cfg.steps).iota
                then
                  (if (cfg.steps).hnf
                   then
                     let arg = closure_as_term cfg env_arg tm  in
                     let t2 =
                       FStar_Syntax_Syntax.extend_app t1 (arg, aq)
                         FStar_Pervasives_Native.None r
                        in
                     rebuild cfg env_arg stack1 t2
                   else
                     (let stack2 = (App (env, t1, aq, r)) :: stack1  in
                      norm cfg env_arg stack2 tm))
                else
                  (let uu____24817 = FStar_ST.op_Bang m  in
                   match uu____24817 with
                   | FStar_Pervasives_Native.None  ->
                       if (cfg.steps).hnf
                       then
                         let arg = closure_as_term cfg env_arg tm  in
                         let t2 =
                           FStar_Syntax_Syntax.extend_app t1 (arg, aq)
                             FStar_Pervasives_Native.None r
                            in
                         rebuild cfg env_arg stack1 t2
                       else
                         (let stack2 = (MemoLazy m) :: (App (env, t1, aq, r))
                            :: stack1  in
                          norm cfg env_arg stack2 tm)
                   | FStar_Pervasives_Native.Some (uu____24960,a) ->
                       let t2 =
                         FStar_Syntax_Syntax.extend_app t1 (a, aq)
                           FStar_Pervasives_Native.None r
                          in
                       rebuild cfg env_arg stack1 t2))
           | (App (env1,head1,aq,r))::stack' when should_reify cfg stack ->
               let t0 = t1  in
               let fallback msg uu____25013 =
                 log cfg
                   (fun uu____25017  ->
                      let uu____25018 = FStar_Syntax_Print.term_to_string t1
                         in
                      FStar_Util.print2 "Not reifying%s: %s\n" msg
                        uu____25018);
                 (let t2 =
                    FStar_Syntax_Syntax.extend_app head1 (t1, aq)
                      FStar_Pervasives_Native.None r
                     in
                  rebuild cfg env1 stack' t2)
                  in
               let uu____25024 =
                 let uu____25025 = FStar_Syntax_Subst.compress t1  in
                 uu____25025.FStar_Syntax_Syntax.n  in
               (match uu____25024 with
                | FStar_Syntax_Syntax.Tm_meta
                    (t2,FStar_Syntax_Syntax.Meta_monadic (m,ty)) ->
                    do_reify_monadic (fallback " (1)") cfg env1 stack t2 m ty
                | FStar_Syntax_Syntax.Tm_meta
                    (t2,FStar_Syntax_Syntax.Meta_monadic_lift (msrc,mtgt,ty))
                    ->
                    let lifted =
                      let uu____25052 = closure_as_term cfg env1 ty  in
                      reify_lift cfg t2 msrc mtgt uu____25052  in
                    (log cfg
                       (fun uu____25056  ->
                          let uu____25057 =
                            FStar_Syntax_Print.term_to_string lifted  in
                          FStar_Util.print1 "Reified lift to (1): %s\n"
                            uu____25057);
                     (let uu____25058 = FStar_List.tl stack  in
                      norm cfg env1 uu____25058 lifted))
                | FStar_Syntax_Syntax.Tm_app
                    ({
                       FStar_Syntax_Syntax.n =
                         FStar_Syntax_Syntax.Tm_constant
                         (FStar_Const.Const_reflect uu____25059);
                       FStar_Syntax_Syntax.pos = uu____25060;
                       FStar_Syntax_Syntax.vars = uu____25061;_},(e,uu____25063)::[])
                    -> norm cfg env1 stack' e
                | FStar_Syntax_Syntax.Tm_app uu____25092 when
                    (cfg.steps).primops ->
                    let uu____25107 = FStar_Syntax_Util.head_and_args t1  in
                    (match uu____25107 with
                     | (hd1,args) ->
                         let uu____25144 =
                           let uu____25145 = FStar_Syntax_Util.un_uinst hd1
                              in
                           uu____25145.FStar_Syntax_Syntax.n  in
                         (match uu____25144 with
                          | FStar_Syntax_Syntax.Tm_fvar fv ->
                              let uu____25149 = find_prim_step cfg fv  in
                              (match uu____25149 with
                               | FStar_Pervasives_Native.Some
                                   { name = uu____25152; arity = uu____25153;
                                     auto_reflect =
                                       FStar_Pervasives_Native.Some n1;
                                     strong_reduction_ok = uu____25155;
                                     requires_binder_substitution =
                                       uu____25156;
                                     interpretation = uu____25157;_}
                                   when (FStar_List.length args) = n1 ->
                                   norm cfg env1 stack' t1
                               | uu____25172 -> fallback " (3)" ())
                          | uu____25175 -> fallback " (4)" ()))
                | uu____25176 -> fallback " (2)" ())
           | (App (env1,head1,aq,r))::stack1 ->
               let t2 =
                 FStar_Syntax_Syntax.extend_app head1 (t1, aq)
                   FStar_Pervasives_Native.None r
                  in
               rebuild cfg env1 stack1 t2
           | (Match (env',branches,cfg1,r))::stack1 ->
               (log cfg1
                  (fun uu____25199  ->
                     let uu____25200 = FStar_Syntax_Print.term_to_string t1
                        in
                     FStar_Util.print1
                       "Rebuilding with match, scrutinee is %s ...\n"
                       uu____25200);
                (let scrutinee_env = env  in
                 let env1 = env'  in
                 let scrutinee = t1  in
                 let norm_and_rebuild_match uu____25209 =
                   log cfg1
                     (fun uu____25214  ->
                        let uu____25215 =
                          FStar_Syntax_Print.term_to_string scrutinee  in
                        let uu____25216 =
                          let uu____25217 =
                            FStar_All.pipe_right branches
                              (FStar_List.map
                                 (fun uu____25244  ->
                                    match uu____25244 with
                                    | (p,uu____25254,uu____25255) ->
                                        FStar_Syntax_Print.pat_to_string p))
                             in
                          FStar_All.pipe_right uu____25217
                            (FStar_String.concat "\n\t")
                           in
                        FStar_Util.print2
                          "match is irreducible: scrutinee=%s\nbranches=%s\n"
                          uu____25215 uu____25216);
                   (let whnf = (cfg1.steps).weak || (cfg1.steps).hnf  in
                    let cfg_exclude_zeta =
                      let new_delta =
                        FStar_All.pipe_right cfg1.delta_level
                          (FStar_List.filter
                             (fun uu___253_25272  ->
                                match uu___253_25272 with
                                | FStar_TypeChecker_Env.Inlining  -> true
                                | FStar_TypeChecker_Env.Eager_unfolding_only 
                                    -> true
                                | uu____25273 -> false))
                         in
                      let steps =
                        let uu___346_25275 = cfg1.steps  in
                        {
                          beta = (uu___346_25275.beta);
                          iota = (uu___346_25275.iota);
                          zeta = false;
                          weak = (uu___346_25275.weak);
                          hnf = (uu___346_25275.hnf);
                          primops = (uu___346_25275.primops);
                          do_not_unfold_pure_lets =
                            (uu___346_25275.do_not_unfold_pure_lets);
                          unfold_until = FStar_Pervasives_Native.None;
                          unfold_only = FStar_Pervasives_Native.None;
                          unfold_fully = (uu___346_25275.unfold_fully);
                          unfold_attr = FStar_Pervasives_Native.None;
                          unfold_tac = false;
                          pure_subterms_within_computations =
                            (uu___346_25275.pure_subterms_within_computations);
                          simplify = (uu___346_25275.simplify);
                          erase_universes = (uu___346_25275.erase_universes);
                          allow_unbound_universes =
                            (uu___346_25275.allow_unbound_universes);
                          reify_ = (uu___346_25275.reify_);
                          compress_uvars = (uu___346_25275.compress_uvars);
                          no_full_norm = (uu___346_25275.no_full_norm);
                          check_no_uvars = (uu___346_25275.check_no_uvars);
                          unmeta = (uu___346_25275.unmeta);
                          unascribe = (uu___346_25275.unascribe);
                          in_full_norm_request =
                            (uu___346_25275.in_full_norm_request);
                          weakly_reduce_scrutinee =
                            (uu___346_25275.weakly_reduce_scrutinee)
                        }  in
                      let uu___347_25280 = cfg1  in
                      {
                        steps;
                        tcenv = (uu___347_25280.tcenv);
                        debug = (uu___347_25280.debug);
                        delta_level = new_delta;
                        primitive_steps = (uu___347_25280.primitive_steps);
                        strong = true;
                        memoize_lazy = (uu___347_25280.memoize_lazy);
                        normalize_pure_lets =
                          (uu___347_25280.normalize_pure_lets)
                      }  in
                    let norm_or_whnf env2 t2 =
                      if whnf
                      then closure_as_term cfg_exclude_zeta env2 t2
                      else norm cfg_exclude_zeta env2 [] t2  in
                    let rec norm_pat env2 p =
                      match p.FStar_Syntax_Syntax.v with
                      | FStar_Syntax_Syntax.Pat_constant uu____25352 ->
                          (p, env2)
                      | FStar_Syntax_Syntax.Pat_cons (fv,pats) ->
                          let uu____25381 =
                            FStar_All.pipe_right pats
                              (FStar_List.fold_left
                                 (fun uu____25465  ->
                                    fun uu____25466  ->
                                      match (uu____25465, uu____25466) with
                                      | ((pats1,env3),(p1,b)) ->
                                          let uu____25605 = norm_pat env3 p1
                                             in
                                          (match uu____25605 with
                                           | (p2,env4) ->
                                               (((p2, b) :: pats1), env4)))
                                 ([], env2))
                             in
                          (match uu____25381 with
                           | (pats1,env3) ->
                               ((let uu___348_25767 = p  in
                                 {
                                   FStar_Syntax_Syntax.v =
                                     (FStar_Syntax_Syntax.Pat_cons
                                        (fv, (FStar_List.rev pats1)));
                                   FStar_Syntax_Syntax.p =
                                     (uu___348_25767.FStar_Syntax_Syntax.p)
                                 }), env3))
                      | FStar_Syntax_Syntax.Pat_var x ->
                          let x1 =
                            let uu___349_25786 = x  in
                            let uu____25787 =
                              norm_or_whnf env2 x.FStar_Syntax_Syntax.sort
                               in
                            {
                              FStar_Syntax_Syntax.ppname =
                                (uu___349_25786.FStar_Syntax_Syntax.ppname);
                              FStar_Syntax_Syntax.index =
                                (uu___349_25786.FStar_Syntax_Syntax.index);
                              FStar_Syntax_Syntax.sort = uu____25787
                            }  in
                          ((let uu___350_25801 = p  in
                            {
                              FStar_Syntax_Syntax.v =
                                (FStar_Syntax_Syntax.Pat_var x1);
                              FStar_Syntax_Syntax.p =
                                (uu___350_25801.FStar_Syntax_Syntax.p)
                            }), (dummy :: env2))
                      | FStar_Syntax_Syntax.Pat_wild x ->
                          let x1 =
                            let uu___351_25812 = x  in
                            let uu____25813 =
                              norm_or_whnf env2 x.FStar_Syntax_Syntax.sort
                               in
                            {
                              FStar_Syntax_Syntax.ppname =
                                (uu___351_25812.FStar_Syntax_Syntax.ppname);
                              FStar_Syntax_Syntax.index =
                                (uu___351_25812.FStar_Syntax_Syntax.index);
                              FStar_Syntax_Syntax.sort = uu____25813
                            }  in
                          ((let uu___352_25827 = p  in
                            {
                              FStar_Syntax_Syntax.v =
                                (FStar_Syntax_Syntax.Pat_wild x1);
                              FStar_Syntax_Syntax.p =
                                (uu___352_25827.FStar_Syntax_Syntax.p)
                            }), (dummy :: env2))
                      | FStar_Syntax_Syntax.Pat_dot_term (x,t2) ->
                          let x1 =
                            let uu___353_25843 = x  in
                            let uu____25844 =
                              norm_or_whnf env2 x.FStar_Syntax_Syntax.sort
                               in
                            {
                              FStar_Syntax_Syntax.ppname =
                                (uu___353_25843.FStar_Syntax_Syntax.ppname);
                              FStar_Syntax_Syntax.index =
                                (uu___353_25843.FStar_Syntax_Syntax.index);
                              FStar_Syntax_Syntax.sort = uu____25844
                            }  in
                          let t3 = norm_or_whnf env2 t2  in
                          ((let uu___354_25859 = p  in
                            {
                              FStar_Syntax_Syntax.v =
                                (FStar_Syntax_Syntax.Pat_dot_term (x1, t3));
                              FStar_Syntax_Syntax.p =
                                (uu___354_25859.FStar_Syntax_Syntax.p)
                            }), env2)
                       in
                    let branches1 =
                      match env1 with
                      | [] when whnf -> branches
                      | uu____25903 ->
                          FStar_All.pipe_right branches
                            (FStar_List.map
                               (fun branch1  ->
                                  let uu____25933 =
                                    FStar_Syntax_Subst.open_branch branch1
                                     in
                                  match uu____25933 with
                                  | (p,wopt,e) ->
                                      let uu____25953 = norm_pat env1 p  in
                                      (match uu____25953 with
                                       | (p1,env2) ->
                                           let wopt1 =
                                             match wopt with
                                             | FStar_Pervasives_Native.None 
                                                 ->
                                                 FStar_Pervasives_Native.None
                                             | FStar_Pervasives_Native.Some w
                                                 ->
                                                 let uu____26008 =
                                                   norm_or_whnf env2 w  in
                                                 FStar_Pervasives_Native.Some
                                                   uu____26008
                                              in
                                           let e1 = norm_or_whnf env2 e  in
                                           FStar_Syntax_Util.branch
                                             (p1, wopt1, e1))))
                       in
                    let scrutinee1 =
                      let uu____26025 =
                        ((((cfg1.steps).iota &&
                             (Prims.op_Negation (cfg1.steps).weak))
                            &&
                            (Prims.op_Negation (cfg1.steps).compress_uvars))
                           && (cfg1.steps).weakly_reduce_scrutinee)
                          && (maybe_weakly_reduced scrutinee)
                         in
                      if uu____26025
                      then
                        norm
                          (let uu___355_26030 = cfg1  in
                           {
                             steps =
                               (let uu___356_26033 = cfg1.steps  in
                                {
                                  beta = (uu___356_26033.beta);
                                  iota = (uu___356_26033.iota);
                                  zeta = (uu___356_26033.zeta);
                                  weak = (uu___356_26033.weak);
                                  hnf = (uu___356_26033.hnf);
                                  primops = (uu___356_26033.primops);
                                  do_not_unfold_pure_lets =
                                    (uu___356_26033.do_not_unfold_pure_lets);
                                  unfold_until =
                                    (uu___356_26033.unfold_until);
                                  unfold_only = (uu___356_26033.unfold_only);
                                  unfold_fully =
                                    (uu___356_26033.unfold_fully);
                                  unfold_attr = (uu___356_26033.unfold_attr);
                                  unfold_tac = (uu___356_26033.unfold_tac);
                                  pure_subterms_within_computations =
                                    (uu___356_26033.pure_subterms_within_computations);
                                  simplify = (uu___356_26033.simplify);
                                  erase_universes =
                                    (uu___356_26033.erase_universes);
                                  allow_unbound_universes =
                                    (uu___356_26033.allow_unbound_universes);
                                  reify_ = (uu___356_26033.reify_);
                                  compress_uvars =
                                    (uu___356_26033.compress_uvars);
                                  no_full_norm =
                                    (uu___356_26033.no_full_norm);
                                  check_no_uvars =
                                    (uu___356_26033.check_no_uvars);
                                  unmeta = (uu___356_26033.unmeta);
                                  unascribe = (uu___356_26033.unascribe);
                                  in_full_norm_request =
                                    (uu___356_26033.in_full_norm_request);
                                  weakly_reduce_scrutinee = false
                                });
                             tcenv = (uu___355_26030.tcenv);
                             debug = (uu___355_26030.debug);
                             delta_level = (uu___355_26030.delta_level);
                             primitive_steps =
                               (uu___355_26030.primitive_steps);
                             strong = (uu___355_26030.strong);
                             memoize_lazy = (uu___355_26030.memoize_lazy);
                             normalize_pure_lets =
                               (uu___355_26030.normalize_pure_lets)
                           }) scrutinee_env [] scrutinee
                      else scrutinee  in
                    let uu____26035 =
                      mk
                        (FStar_Syntax_Syntax.Tm_match (scrutinee1, branches1))
                        r
                       in
                    rebuild cfg1 env1 stack1 uu____26035)
                    in
                 let rec is_cons head1 =
                   let uu____26060 =
                     let uu____26061 = FStar_Syntax_Subst.compress head1  in
                     uu____26061.FStar_Syntax_Syntax.n  in
                   match uu____26060 with
                   | FStar_Syntax_Syntax.Tm_uinst (h,uu____26065) ->
                       is_cons h
                   | FStar_Syntax_Syntax.Tm_constant uu____26070 -> true
                   | FStar_Syntax_Syntax.Tm_fvar
                       { FStar_Syntax_Syntax.fv_name = uu____26071;
                         FStar_Syntax_Syntax.fv_delta = uu____26072;
                         FStar_Syntax_Syntax.fv_qual =
                           FStar_Pervasives_Native.Some
                           (FStar_Syntax_Syntax.Data_ctor );_}
                       -> true
                   | FStar_Syntax_Syntax.Tm_fvar
                       { FStar_Syntax_Syntax.fv_name = uu____26073;
                         FStar_Syntax_Syntax.fv_delta = uu____26074;
                         FStar_Syntax_Syntax.fv_qual =
                           FStar_Pervasives_Native.Some
                           (FStar_Syntax_Syntax.Record_ctor uu____26075);_}
                       -> true
                   | uu____26082 -> false  in
                 let guard_when_clause wopt b rest =
                   match wopt with
                   | FStar_Pervasives_Native.None  -> b
                   | FStar_Pervasives_Native.Some w ->
                       let then_branch = b  in
                       let else_branch =
                         mk (FStar_Syntax_Syntax.Tm_match (scrutinee, rest))
                           r
                          in
                       FStar_Syntax_Util.if_then_else w then_branch
                         else_branch
                    in
                 let rec matches_pat scrutinee_orig p =
                   let scrutinee1 = FStar_Syntax_Util.unmeta scrutinee_orig
                      in
                   let uu____26245 =
                     FStar_Syntax_Util.head_and_args scrutinee1  in
                   match uu____26245 with
                   | (head1,args) ->
                       (match p.FStar_Syntax_Syntax.v with
                        | FStar_Syntax_Syntax.Pat_var bv ->
                            FStar_Util.Inl [(bv, scrutinee_orig)]
                        | FStar_Syntax_Syntax.Pat_wild bv ->
                            FStar_Util.Inl [(bv, scrutinee_orig)]
                        | FStar_Syntax_Syntax.Pat_dot_term uu____26332 ->
                            FStar_Util.Inl []
                        | FStar_Syntax_Syntax.Pat_constant s ->
                            (match scrutinee1.FStar_Syntax_Syntax.n with
                             | FStar_Syntax_Syntax.Tm_constant s' when
                                 FStar_Const.eq_const s s' ->
                                 FStar_Util.Inl []
                             | uu____26371 ->
                                 let uu____26372 =
                                   let uu____26373 = is_cons head1  in
                                   Prims.op_Negation uu____26373  in
                                 FStar_Util.Inr uu____26372)
                        | FStar_Syntax_Syntax.Pat_cons (fv,arg_pats) ->
                            let uu____26398 =
                              let uu____26399 =
                                FStar_Syntax_Util.un_uinst head1  in
                              uu____26399.FStar_Syntax_Syntax.n  in
                            (match uu____26398 with
                             | FStar_Syntax_Syntax.Tm_fvar fv' when
                                 FStar_Syntax_Syntax.fv_eq fv fv' ->
                                 matches_args [] args arg_pats
                             | uu____26417 ->
                                 let uu____26418 =
                                   let uu____26419 = is_cons head1  in
                                   Prims.op_Negation uu____26419  in
                                 FStar_Util.Inr uu____26418))
                 
                 and matches_args out a p =
                   match (a, p) with
                   | ([],[]) -> FStar_Util.Inl out
                   | ((t2,uu____26496)::rest_a,(p1,uu____26499)::rest_p) ->
                       let uu____26543 = matches_pat t2 p1  in
                       (match uu____26543 with
                        | FStar_Util.Inl s ->
                            matches_args (FStar_List.append out s) rest_a
                              rest_p
                        | m -> m)
                   | uu____26592 -> FStar_Util.Inr false
                  in
                 let rec matches scrutinee1 p =
                   match p with
                   | [] -> norm_and_rebuild_match ()
                   | (p1,wopt,b)::rest ->
                       let uu____26710 = matches_pat scrutinee1 p1  in
                       (match uu____26710 with
                        | FStar_Util.Inr (false ) -> matches scrutinee1 rest
                        | FStar_Util.Inr (true ) -> norm_and_rebuild_match ()
                        | FStar_Util.Inl s ->
                            (log cfg1
                               (fun uu____26750  ->
                                  let uu____26751 =
                                    FStar_Syntax_Print.pat_to_string p1  in
                                  let uu____26752 =
                                    let uu____26753 =
                                      FStar_List.map
                                        (fun uu____26763  ->
                                           match uu____26763 with
                                           | (uu____26768,t2) ->
                                               FStar_Syntax_Print.term_to_string
                                                 t2) s
                                       in
                                    FStar_All.pipe_right uu____26753
                                      (FStar_String.concat "; ")
                                     in
                                  FStar_Util.print2
                                    "Matches pattern %s with subst = %s\n"
                                    uu____26751 uu____26752);
                             (let env0 = env1  in
                              let env2 =
                                FStar_List.fold_left
                                  (fun env2  ->
                                     fun uu____26800  ->
                                       match uu____26800 with
                                       | (bv,t2) ->
                                           let uu____26823 =
                                             let uu____26830 =
                                               let uu____26833 =
                                                 FStar_Syntax_Syntax.mk_binder
                                                   bv
                                                  in
                                               FStar_Pervasives_Native.Some
                                                 uu____26833
                                                in
                                             let uu____26834 =
                                               let uu____26835 =
                                                 let uu____26866 =
                                                   FStar_Util.mk_ref
                                                     (FStar_Pervasives_Native.Some
                                                        ([], t2))
                                                    in
                                                 ([], t2, uu____26866, false)
                                                  in
                                               Clos uu____26835  in
                                             (uu____26830, uu____26834)  in
                                           uu____26823 :: env2) env1 s
                                 in
                              let uu____26979 = guard_when_clause wopt b rest
                                 in
                              norm cfg1 env2 stack1 uu____26979)))
                    in
                 if (cfg1.steps).iota
                 then matches scrutinee branches
                 else norm_and_rebuild_match ())))

let (plugins :
  (primitive_step -> unit,unit -> primitive_step Prims.list)
    FStar_Pervasives_Native.tuple2)
  =
  let plugins = FStar_Util.mk_ref []  in
  let register p =
    let uu____27006 =
      let uu____27009 = FStar_ST.op_Bang plugins  in p :: uu____27009  in
    FStar_ST.op_Colon_Equals plugins uu____27006  in
  let retrieve uu____27117 = FStar_ST.op_Bang plugins  in
  (register, retrieve) 
let (register_plugin : primitive_step -> unit) =
  fun p  -> FStar_Pervasives_Native.fst plugins p 
let (retrieve_plugins : unit -> primitive_step Prims.list) =
  fun uu____27194  -> FStar_Pervasives_Native.snd plugins () 
let (config' :
  primitive_step Prims.list ->
    step Prims.list -> FStar_TypeChecker_Env.env -> cfg)
  =
  fun psteps  ->
    fun s  ->
      fun e  ->
        let d =
          FStar_All.pipe_right s
            (FStar_List.collect
               (fun uu___254_27235  ->
                  match uu___254_27235 with
                  | UnfoldUntil k -> [FStar_TypeChecker_Env.Unfold k]
                  | Eager_unfolding  ->
                      [FStar_TypeChecker_Env.Eager_unfolding_only]
                  | Inlining  -> [FStar_TypeChecker_Env.Inlining]
                  | UnfoldTac  -> [FStar_TypeChecker_Env.UnfoldTac]
                  | uu____27239 -> []))
           in
        let d1 =
          match d with
          | [] -> [FStar_TypeChecker_Env.NoDelta]
          | uu____27245 -> d  in
        let uu____27248 = to_fsteps s  in
        let uu____27249 =
          let uu____27250 =
            FStar_TypeChecker_Env.debug e (FStar_Options.Other "Norm")  in
          let uu____27251 =
            FStar_TypeChecker_Env.debug e (FStar_Options.Other "Primops")  in
          let uu____27252 =
            FStar_TypeChecker_Env.debug e (FStar_Options.Other "Unfolding")
             in
          let uu____27253 =
            FStar_TypeChecker_Env.debug e (FStar_Options.Other "380")  in
          let uu____27254 =
            FStar_TypeChecker_Env.debug e (FStar_Options.Other "WPE")  in
          let uu____27255 =
            FStar_TypeChecker_Env.debug e (FStar_Options.Other "NormDelayed")
             in
          let uu____27256 =
            FStar_TypeChecker_Env.debug e
              (FStar_Options.Other "print_normalized_terms")
             in
          {
            gen = uu____27250;
            primop = uu____27251;
            unfolding = uu____27252;
            b380 = uu____27253;
            wpe = uu____27254;
            norm_delayed = uu____27255;
            print_normalized = uu____27256
          }  in
        let uu____27257 =
          let uu____27260 =
            let uu____27263 = retrieve_plugins ()  in
            FStar_List.append uu____27263 psteps  in
          add_steps built_in_primitive_steps uu____27260  in
        let uu____27266 =
          (FStar_Options.normalize_pure_terms_for_extraction ()) ||
            (let uu____27268 =
               FStar_All.pipe_right s
                 (FStar_List.contains PureSubtermsWithinComputations)
                in
             Prims.op_Negation uu____27268)
           in
        {
          steps = uu____27248;
          tcenv = e;
          debug = uu____27249;
          delta_level = d1;
          primitive_steps = uu____27257;
          strong = false;
          memoize_lazy = true;
          normalize_pure_lets = uu____27266
        }
  
let (config : step Prims.list -> FStar_TypeChecker_Env.env -> cfg) =
  fun s  -> fun e  -> config' [] s e 
let (normalize_with_primitive_steps :
  primitive_step Prims.list ->
    step Prims.list ->
      FStar_TypeChecker_Env.env ->
        FStar_Syntax_Syntax.term -> FStar_Syntax_Syntax.term)
  =
  fun ps  ->
    fun s  -> fun e  -> fun t  -> let c = config' ps s e  in norm c [] [] t
  
let (normalize :
  steps ->
    FStar_TypeChecker_Env.env ->
      FStar_Syntax_Syntax.term -> FStar_Syntax_Syntax.term)
  = fun s  -> fun e  -> fun t  -> normalize_with_primitive_steps [] s e t 
let (normalize_comp :
  steps ->
    FStar_TypeChecker_Env.env ->
      FStar_Syntax_Syntax.comp -> FStar_Syntax_Syntax.comp)
  =
  fun s  ->
    fun e  ->
      fun t  -> let uu____27350 = config s e  in norm_comp uu____27350 [] t
  
let (normalize_universe :
  FStar_TypeChecker_Env.env ->
    FStar_Syntax_Syntax.universe -> FStar_Syntax_Syntax.universe)
  =
  fun env  ->
    fun u  ->
      let uu____27367 = config [] env  in norm_universe uu____27367 [] u
  
let (ghost_to_pure :
  FStar_TypeChecker_Env.env ->
    FStar_Syntax_Syntax.comp -> FStar_Syntax_Syntax.comp)
  =
  fun env  ->
    fun c  ->
      let cfg =
        config
          [UnfoldUntil FStar_Syntax_Syntax.delta_constant;
          AllowUnboundUniverses;
          EraseUniverses] env
         in
      let non_info t =
        let uu____27391 = norm cfg [] [] t  in
        FStar_Syntax_Util.non_informative uu____27391  in
      match c.FStar_Syntax_Syntax.n with
      | FStar_Syntax_Syntax.Total uu____27398 -> c
      | FStar_Syntax_Syntax.GTotal (t,uopt) when non_info t ->
          let uu___357_27417 = c  in
          {
            FStar_Syntax_Syntax.n = (FStar_Syntax_Syntax.Total (t, uopt));
            FStar_Syntax_Syntax.pos =
              (uu___357_27417.FStar_Syntax_Syntax.pos);
            FStar_Syntax_Syntax.vars =
              (uu___357_27417.FStar_Syntax_Syntax.vars)
          }
      | FStar_Syntax_Syntax.Comp ct ->
          let l =
            FStar_TypeChecker_Env.norm_eff_name cfg.tcenv
              ct.FStar_Syntax_Syntax.effect_name
             in
          let uu____27424 =
            (FStar_Syntax_Util.is_ghost_effect l) &&
              (non_info ct.FStar_Syntax_Syntax.result_typ)
             in
          if uu____27424
          then
            let ct1 =
              let uu____27426 =
                downgrade_ghost_effect_name
                  ct.FStar_Syntax_Syntax.effect_name
                 in
              match uu____27426 with
              | FStar_Pervasives_Native.Some pure_eff ->
                  let flags1 =
                    let uu____27433 =
                      FStar_Ident.lid_equals pure_eff
                        FStar_Parser_Const.effect_Tot_lid
                       in
                    if uu____27433
                    then FStar_Syntax_Syntax.TOTAL ::
                      (ct.FStar_Syntax_Syntax.flags)
                    else ct.FStar_Syntax_Syntax.flags  in
                  let uu___358_27437 = ct  in
                  {
                    FStar_Syntax_Syntax.comp_univs =
                      (uu___358_27437.FStar_Syntax_Syntax.comp_univs);
                    FStar_Syntax_Syntax.effect_name = pure_eff;
                    FStar_Syntax_Syntax.result_typ =
                      (uu___358_27437.FStar_Syntax_Syntax.result_typ);
                    FStar_Syntax_Syntax.effect_args =
                      (uu___358_27437.FStar_Syntax_Syntax.effect_args);
                    FStar_Syntax_Syntax.flags = flags1
                  }
              | FStar_Pervasives_Native.None  ->
                  let ct1 =
                    FStar_TypeChecker_Env.unfold_effect_abbrev cfg.tcenv c
                     in
                  let uu___359_27439 = ct1  in
                  {
                    FStar_Syntax_Syntax.comp_univs =
                      (uu___359_27439.FStar_Syntax_Syntax.comp_univs);
                    FStar_Syntax_Syntax.effect_name =
                      FStar_Parser_Const.effect_PURE_lid;
                    FStar_Syntax_Syntax.result_typ =
                      (uu___359_27439.FStar_Syntax_Syntax.result_typ);
                    FStar_Syntax_Syntax.effect_args =
                      (uu___359_27439.FStar_Syntax_Syntax.effect_args);
                    FStar_Syntax_Syntax.flags =
                      (uu___359_27439.FStar_Syntax_Syntax.flags)
                  }
               in
            let uu___360_27440 = c  in
            {
              FStar_Syntax_Syntax.n = (FStar_Syntax_Syntax.Comp ct1);
              FStar_Syntax_Syntax.pos =
                (uu___360_27440.FStar_Syntax_Syntax.pos);
              FStar_Syntax_Syntax.vars =
                (uu___360_27440.FStar_Syntax_Syntax.vars)
            }
          else c
      | uu____27442 -> c
  
let (ghost_to_pure_lcomp :
  FStar_TypeChecker_Env.env ->
    FStar_Syntax_Syntax.lcomp -> FStar_Syntax_Syntax.lcomp)
  =
  fun env  ->
    fun lc  ->
      let cfg =
        config
          [Eager_unfolding;
          UnfoldUntil FStar_Syntax_Syntax.delta_constant;
          EraseUniverses;
          AllowUnboundUniverses] env
         in
      let non_info t =
        let uu____27460 = norm cfg [] [] t  in
        FStar_Syntax_Util.non_informative uu____27460  in
      let uu____27467 =
        (FStar_Syntax_Util.is_ghost_effect lc.FStar_Syntax_Syntax.eff_name)
          && (non_info lc.FStar_Syntax_Syntax.res_typ)
         in
      if uu____27467
      then
        let uu____27468 =
          downgrade_ghost_effect_name lc.FStar_Syntax_Syntax.eff_name  in
        match uu____27468 with
        | FStar_Pervasives_Native.Some pure_eff ->
            FStar_Syntax_Syntax.mk_lcomp pure_eff
              lc.FStar_Syntax_Syntax.res_typ lc.FStar_Syntax_Syntax.cflags
              (fun uu____27474  ->
                 let uu____27475 = FStar_Syntax_Syntax.lcomp_comp lc  in
                 ghost_to_pure env uu____27475)
        | FStar_Pervasives_Native.None  -> lc
      else lc
  
let (term_to_string :
  FStar_TypeChecker_Env.env -> FStar_Syntax_Syntax.term -> Prims.string) =
  fun env  ->
    fun t  ->
      let t1 =
        try normalize [AllowUnboundUniverses] env t
        with
        | e ->
            ((let uu____27496 =
                let uu____27501 =
                  let uu____27502 = FStar_Util.message_of_exn e  in
                  FStar_Util.format1 "Normalization failed with error %s\n"
                    uu____27502
                   in
                (FStar_Errors.Warning_NormalizationFailure, uu____27501)  in
              FStar_Errors.log_issue t.FStar_Syntax_Syntax.pos uu____27496);
             t)
         in
      FStar_Syntax_Print.term_to_string' env.FStar_TypeChecker_Env.dsenv t1
  
let (comp_to_string :
  FStar_TypeChecker_Env.env -> FStar_Syntax_Syntax.comp -> Prims.string) =
  fun env  ->
    fun c  ->
      let c1 =
        try
          let uu____27517 = config [AllowUnboundUniverses] env  in
          norm_comp uu____27517 [] c
        with
        | e ->
            ((let uu____27530 =
                let uu____27535 =
                  let uu____27536 = FStar_Util.message_of_exn e  in
                  FStar_Util.format1 "Normalization failed with error %s\n"
                    uu____27536
                   in
                (FStar_Errors.Warning_NormalizationFailure, uu____27535)  in
              FStar_Errors.log_issue c.FStar_Syntax_Syntax.pos uu____27530);
             c)
         in
      FStar_Syntax_Print.comp_to_string' env.FStar_TypeChecker_Env.dsenv c1
  
let (normalize_refinement :
  steps ->
    FStar_TypeChecker_Env.env ->
      FStar_Syntax_Syntax.typ -> FStar_Syntax_Syntax.typ)
  =
  fun steps  ->
    fun env  ->
      fun t0  ->
        let t = normalize (FStar_List.append steps [Beta]) env t0  in
        let rec aux t1 =
          let t2 = FStar_Syntax_Subst.compress t1  in
          match t2.FStar_Syntax_Syntax.n with
          | FStar_Syntax_Syntax.Tm_refine (x,phi) ->
              let t01 = aux x.FStar_Syntax_Syntax.sort  in
              (match t01.FStar_Syntax_Syntax.n with
               | FStar_Syntax_Syntax.Tm_refine (y,phi1) ->
                   let uu____27581 =
                     let uu____27582 =
                       let uu____27589 =
                         FStar_Syntax_Util.mk_conj_simp phi1 phi  in
                       (y, uu____27589)  in
                     FStar_Syntax_Syntax.Tm_refine uu____27582  in
                   mk uu____27581 t01.FStar_Syntax_Syntax.pos
               | uu____27594 -> t2)
          | uu____27595 -> t2  in
        aux t
  
let (unfold_whnf :
  FStar_TypeChecker_Env.env ->
    FStar_Syntax_Syntax.term -> FStar_Syntax_Syntax.term)
  =
  fun env  ->
    fun t  ->
      normalize
        [Primops;
        Weak;
        HNF;
        UnfoldUntil FStar_Syntax_Syntax.delta_constant;
        Beta] env t
  
let (reduce_or_remove_uvar_solutions :
  Prims.bool ->
    FStar_TypeChecker_Env.env ->
      FStar_Syntax_Syntax.term -> FStar_Syntax_Syntax.term)
  =
  fun remove  ->
    fun env  ->
      fun t  ->
        normalize
          (FStar_List.append (if remove then [CheckNoUvars] else [])
             [Beta;
             DoNotUnfoldPureLets;
             CompressUvars;
             Exclude Zeta;
             Exclude Iota;
             NoFullNorm]) env t
  
let (reduce_uvar_solutions :
  FStar_TypeChecker_Env.env ->
    FStar_Syntax_Syntax.term -> FStar_Syntax_Syntax.term)
  = fun env  -> fun t  -> reduce_or_remove_uvar_solutions false env t 
let (remove_uvar_solutions :
  FStar_TypeChecker_Env.env ->
    FStar_Syntax_Syntax.term -> FStar_Syntax_Syntax.term)
  = fun env  -> fun t  -> reduce_or_remove_uvar_solutions true env t 
let (eta_expand_with_type :
  FStar_TypeChecker_Env.env ->
    FStar_Syntax_Syntax.term ->
      FStar_Syntax_Syntax.typ -> FStar_Syntax_Syntax.term)
  =
  fun env  ->
    fun e  ->
      fun t_e  ->
        let uu____27659 = FStar_Syntax_Util.arrow_formals_comp t_e  in
        match uu____27659 with
        | (formals,c) ->
            (match formals with
             | [] -> e
             | uu____27688 ->
                 let uu____27695 = FStar_Syntax_Util.abs_formals e  in
                 (match uu____27695 with
                  | (actuals,uu____27705,uu____27706) ->
                      if
                        (FStar_List.length actuals) =
                          (FStar_List.length formals)
                      then e
                      else
                        (let uu____27720 =
                           FStar_All.pipe_right formals
                             FStar_Syntax_Util.args_of_binders
                            in
                         match uu____27720 with
                         | (binders,args) ->
                             let uu____27731 =
                               FStar_Syntax_Syntax.mk_Tm_app e args
                                 FStar_Pervasives_Native.None
                                 e.FStar_Syntax_Syntax.pos
                                in
                             FStar_Syntax_Util.abs binders uu____27731
                               (FStar_Pervasives_Native.Some
                                  (FStar_Syntax_Util.residual_comp_of_comp c)))))
  
let (eta_expand :
  FStar_TypeChecker_Env.env ->
    FStar_Syntax_Syntax.term -> FStar_Syntax_Syntax.term)
  =
  fun env  ->
    fun t  ->
      match t.FStar_Syntax_Syntax.n with
      | FStar_Syntax_Syntax.Tm_name x ->
          eta_expand_with_type env t x.FStar_Syntax_Syntax.sort
      | uu____27745 ->
          let uu____27746 = FStar_Syntax_Util.head_and_args t  in
          (match uu____27746 with
           | (head1,args) ->
               let uu____27783 =
                 let uu____27784 = FStar_Syntax_Subst.compress head1  in
                 uu____27784.FStar_Syntax_Syntax.n  in
               (match uu____27783 with
                | FStar_Syntax_Syntax.Tm_uvar (u,s) ->
                    let uu____27809 =
                      let uu____27822 =
                        FStar_Syntax_Subst.subst' s
                          u.FStar_Syntax_Syntax.ctx_uvar_typ
                         in
                      FStar_Syntax_Util.arrow_formals uu____27822  in
                    (match uu____27809 with
                     | (formals,_tres) ->
                         if
                           (FStar_List.length formals) =
                             (FStar_List.length args)
                         then t
                         else
                           (let uu____27852 =
                              env.FStar_TypeChecker_Env.type_of
                                (let uu___365_27860 = env  in
                                 {
                                   FStar_TypeChecker_Env.solver =
                                     (uu___365_27860.FStar_TypeChecker_Env.solver);
                                   FStar_TypeChecker_Env.range =
                                     (uu___365_27860.FStar_TypeChecker_Env.range);
                                   FStar_TypeChecker_Env.curmodule =
                                     (uu___365_27860.FStar_TypeChecker_Env.curmodule);
                                   FStar_TypeChecker_Env.gamma =
                                     (uu___365_27860.FStar_TypeChecker_Env.gamma);
                                   FStar_TypeChecker_Env.gamma_sig =
                                     (uu___365_27860.FStar_TypeChecker_Env.gamma_sig);
                                   FStar_TypeChecker_Env.gamma_cache =
                                     (uu___365_27860.FStar_TypeChecker_Env.gamma_cache);
                                   FStar_TypeChecker_Env.modules =
                                     (uu___365_27860.FStar_TypeChecker_Env.modules);
                                   FStar_TypeChecker_Env.expected_typ =
                                     FStar_Pervasives_Native.None;
                                   FStar_TypeChecker_Env.sigtab =
                                     (uu___365_27860.FStar_TypeChecker_Env.sigtab);
                                   FStar_TypeChecker_Env.is_pattern =
                                     (uu___365_27860.FStar_TypeChecker_Env.is_pattern);
                                   FStar_TypeChecker_Env.instantiate_imp =
                                     (uu___365_27860.FStar_TypeChecker_Env.instantiate_imp);
                                   FStar_TypeChecker_Env.effects =
                                     (uu___365_27860.FStar_TypeChecker_Env.effects);
                                   FStar_TypeChecker_Env.generalize =
                                     (uu___365_27860.FStar_TypeChecker_Env.generalize);
                                   FStar_TypeChecker_Env.letrecs =
                                     (uu___365_27860.FStar_TypeChecker_Env.letrecs);
                                   FStar_TypeChecker_Env.top_level =
                                     (uu___365_27860.FStar_TypeChecker_Env.top_level);
                                   FStar_TypeChecker_Env.check_uvars =
                                     (uu___365_27860.FStar_TypeChecker_Env.check_uvars);
                                   FStar_TypeChecker_Env.use_eq =
                                     (uu___365_27860.FStar_TypeChecker_Env.use_eq);
                                   FStar_TypeChecker_Env.is_iface =
                                     (uu___365_27860.FStar_TypeChecker_Env.is_iface);
                                   FStar_TypeChecker_Env.admit =
                                     (uu___365_27860.FStar_TypeChecker_Env.admit);
                                   FStar_TypeChecker_Env.lax = true;
                                   FStar_TypeChecker_Env.lax_universes =
                                     (uu___365_27860.FStar_TypeChecker_Env.lax_universes);
                                   FStar_TypeChecker_Env.failhard =
                                     (uu___365_27860.FStar_TypeChecker_Env.failhard);
                                   FStar_TypeChecker_Env.nosynth =
                                     (uu___365_27860.FStar_TypeChecker_Env.nosynth);
                                   FStar_TypeChecker_Env.uvar_subtyping =
                                     (uu___365_27860.FStar_TypeChecker_Env.uvar_subtyping);
                                   FStar_TypeChecker_Env.tc_term =
                                     (uu___365_27860.FStar_TypeChecker_Env.tc_term);
                                   FStar_TypeChecker_Env.type_of =
                                     (uu___365_27860.FStar_TypeChecker_Env.type_of);
                                   FStar_TypeChecker_Env.universe_of =
                                     (uu___365_27860.FStar_TypeChecker_Env.universe_of);
                                   FStar_TypeChecker_Env.check_type_of =
                                     (uu___365_27860.FStar_TypeChecker_Env.check_type_of);
                                   FStar_TypeChecker_Env.use_bv_sorts = true;
                                   FStar_TypeChecker_Env.qtbl_name_and_index
                                     =
                                     (uu___365_27860.FStar_TypeChecker_Env.qtbl_name_and_index);
                                   FStar_TypeChecker_Env.normalized_eff_names
                                     =
                                     (uu___365_27860.FStar_TypeChecker_Env.normalized_eff_names);
                                   FStar_TypeChecker_Env.proof_ns =
                                     (uu___365_27860.FStar_TypeChecker_Env.proof_ns);
                                   FStar_TypeChecker_Env.synth_hook =
                                     (uu___365_27860.FStar_TypeChecker_Env.synth_hook);
                                   FStar_TypeChecker_Env.splice =
                                     (uu___365_27860.FStar_TypeChecker_Env.splice);
                                   FStar_TypeChecker_Env.is_native_tactic =
                                     (uu___365_27860.FStar_TypeChecker_Env.is_native_tactic);
                                   FStar_TypeChecker_Env.identifier_info =
                                     (uu___365_27860.FStar_TypeChecker_Env.identifier_info);
                                   FStar_TypeChecker_Env.tc_hooks =
                                     (uu___365_27860.FStar_TypeChecker_Env.tc_hooks);
                                   FStar_TypeChecker_Env.dsenv =
                                     (uu___365_27860.FStar_TypeChecker_Env.dsenv);
                                   FStar_TypeChecker_Env.dep_graph =
                                     (uu___365_27860.FStar_TypeChecker_Env.dep_graph)
                                 }) t
                               in
                            match uu____27852 with
                            | (uu____27861,ty,uu____27863) ->
                                eta_expand_with_type env t ty))
                | uu____27864 ->
                    let uu____27865 =
                      env.FStar_TypeChecker_Env.type_of
                        (let uu___366_27873 = env  in
                         {
                           FStar_TypeChecker_Env.solver =
                             (uu___366_27873.FStar_TypeChecker_Env.solver);
                           FStar_TypeChecker_Env.range =
                             (uu___366_27873.FStar_TypeChecker_Env.range);
                           FStar_TypeChecker_Env.curmodule =
                             (uu___366_27873.FStar_TypeChecker_Env.curmodule);
                           FStar_TypeChecker_Env.gamma =
                             (uu___366_27873.FStar_TypeChecker_Env.gamma);
                           FStar_TypeChecker_Env.gamma_sig =
                             (uu___366_27873.FStar_TypeChecker_Env.gamma_sig);
                           FStar_TypeChecker_Env.gamma_cache =
                             (uu___366_27873.FStar_TypeChecker_Env.gamma_cache);
                           FStar_TypeChecker_Env.modules =
                             (uu___366_27873.FStar_TypeChecker_Env.modules);
                           FStar_TypeChecker_Env.expected_typ =
                             FStar_Pervasives_Native.None;
                           FStar_TypeChecker_Env.sigtab =
                             (uu___366_27873.FStar_TypeChecker_Env.sigtab);
                           FStar_TypeChecker_Env.is_pattern =
                             (uu___366_27873.FStar_TypeChecker_Env.is_pattern);
                           FStar_TypeChecker_Env.instantiate_imp =
                             (uu___366_27873.FStar_TypeChecker_Env.instantiate_imp);
                           FStar_TypeChecker_Env.effects =
                             (uu___366_27873.FStar_TypeChecker_Env.effects);
                           FStar_TypeChecker_Env.generalize =
                             (uu___366_27873.FStar_TypeChecker_Env.generalize);
                           FStar_TypeChecker_Env.letrecs =
                             (uu___366_27873.FStar_TypeChecker_Env.letrecs);
                           FStar_TypeChecker_Env.top_level =
                             (uu___366_27873.FStar_TypeChecker_Env.top_level);
                           FStar_TypeChecker_Env.check_uvars =
                             (uu___366_27873.FStar_TypeChecker_Env.check_uvars);
                           FStar_TypeChecker_Env.use_eq =
                             (uu___366_27873.FStar_TypeChecker_Env.use_eq);
                           FStar_TypeChecker_Env.is_iface =
                             (uu___366_27873.FStar_TypeChecker_Env.is_iface);
                           FStar_TypeChecker_Env.admit =
                             (uu___366_27873.FStar_TypeChecker_Env.admit);
                           FStar_TypeChecker_Env.lax = true;
                           FStar_TypeChecker_Env.lax_universes =
                             (uu___366_27873.FStar_TypeChecker_Env.lax_universes);
                           FStar_TypeChecker_Env.failhard =
                             (uu___366_27873.FStar_TypeChecker_Env.failhard);
                           FStar_TypeChecker_Env.nosynth =
                             (uu___366_27873.FStar_TypeChecker_Env.nosynth);
                           FStar_TypeChecker_Env.uvar_subtyping =
                             (uu___366_27873.FStar_TypeChecker_Env.uvar_subtyping);
                           FStar_TypeChecker_Env.tc_term =
                             (uu___366_27873.FStar_TypeChecker_Env.tc_term);
                           FStar_TypeChecker_Env.type_of =
                             (uu___366_27873.FStar_TypeChecker_Env.type_of);
                           FStar_TypeChecker_Env.universe_of =
                             (uu___366_27873.FStar_TypeChecker_Env.universe_of);
                           FStar_TypeChecker_Env.check_type_of =
                             (uu___366_27873.FStar_TypeChecker_Env.check_type_of);
                           FStar_TypeChecker_Env.use_bv_sorts = true;
                           FStar_TypeChecker_Env.qtbl_name_and_index =
                             (uu___366_27873.FStar_TypeChecker_Env.qtbl_name_and_index);
                           FStar_TypeChecker_Env.normalized_eff_names =
                             (uu___366_27873.FStar_TypeChecker_Env.normalized_eff_names);
                           FStar_TypeChecker_Env.proof_ns =
                             (uu___366_27873.FStar_TypeChecker_Env.proof_ns);
                           FStar_TypeChecker_Env.synth_hook =
                             (uu___366_27873.FStar_TypeChecker_Env.synth_hook);
                           FStar_TypeChecker_Env.splice =
                             (uu___366_27873.FStar_TypeChecker_Env.splice);
                           FStar_TypeChecker_Env.is_native_tactic =
                             (uu___366_27873.FStar_TypeChecker_Env.is_native_tactic);
                           FStar_TypeChecker_Env.identifier_info =
                             (uu___366_27873.FStar_TypeChecker_Env.identifier_info);
                           FStar_TypeChecker_Env.tc_hooks =
                             (uu___366_27873.FStar_TypeChecker_Env.tc_hooks);
                           FStar_TypeChecker_Env.dsenv =
                             (uu___366_27873.FStar_TypeChecker_Env.dsenv);
                           FStar_TypeChecker_Env.dep_graph =
                             (uu___366_27873.FStar_TypeChecker_Env.dep_graph)
                         }) t
                       in
                    (match uu____27865 with
                     | (uu____27874,ty,uu____27876) ->
                         eta_expand_with_type env t ty)))
  
let rec (elim_delayed_subst_term :
  FStar_Syntax_Syntax.term -> FStar_Syntax_Syntax.term) =
  fun t  ->
    let mk1 x =
      FStar_Syntax_Syntax.mk x FStar_Pervasives_Native.None
        t.FStar_Syntax_Syntax.pos
       in
    let t1 = FStar_Syntax_Subst.compress t  in
    let elim_bv x =
      let uu___367_27949 = x  in
      let uu____27950 = elim_delayed_subst_term x.FStar_Syntax_Syntax.sort
         in
      {
        FStar_Syntax_Syntax.ppname =
          (uu___367_27949.FStar_Syntax_Syntax.ppname);
        FStar_Syntax_Syntax.index =
          (uu___367_27949.FStar_Syntax_Syntax.index);
        FStar_Syntax_Syntax.sort = uu____27950
      }  in
    match t1.FStar_Syntax_Syntax.n with
    | FStar_Syntax_Syntax.Tm_delayed uu____27953 -> failwith "Impossible"
    | FStar_Syntax_Syntax.Tm_bvar uu____27978 -> t1
    | FStar_Syntax_Syntax.Tm_name uu____27979 -> t1
    | FStar_Syntax_Syntax.Tm_fvar uu____27980 -> t1
    | FStar_Syntax_Syntax.Tm_uinst uu____27981 -> t1
    | FStar_Syntax_Syntax.Tm_constant uu____27988 -> t1
    | FStar_Syntax_Syntax.Tm_type uu____27989 -> t1
    | FStar_Syntax_Syntax.Tm_lazy uu____27990 -> t1
    | FStar_Syntax_Syntax.Tm_unknown  -> t1
    | FStar_Syntax_Syntax.Tm_abs (bs,t2,rc_opt) ->
        let elim_rc rc =
          let uu___368_28020 = rc  in
          let uu____28021 =
            FStar_Util.map_opt rc.FStar_Syntax_Syntax.residual_typ
              elim_delayed_subst_term
             in
          let uu____28030 =
            elim_delayed_subst_cflags rc.FStar_Syntax_Syntax.residual_flags
             in
          {
            FStar_Syntax_Syntax.residual_effect =
              (uu___368_28020.FStar_Syntax_Syntax.residual_effect);
            FStar_Syntax_Syntax.residual_typ = uu____28021;
            FStar_Syntax_Syntax.residual_flags = uu____28030
          }  in
        let uu____28033 =
          let uu____28034 =
            let uu____28051 = elim_delayed_subst_binders bs  in
            let uu____28058 = elim_delayed_subst_term t2  in
            let uu____28061 = FStar_Util.map_opt rc_opt elim_rc  in
            (uu____28051, uu____28058, uu____28061)  in
          FStar_Syntax_Syntax.Tm_abs uu____28034  in
        mk1 uu____28033
    | FStar_Syntax_Syntax.Tm_arrow (bs,c) ->
        let uu____28092 =
          let uu____28093 =
            let uu____28106 = elim_delayed_subst_binders bs  in
            let uu____28113 = elim_delayed_subst_comp c  in
            (uu____28106, uu____28113)  in
          FStar_Syntax_Syntax.Tm_arrow uu____28093  in
        mk1 uu____28092
    | FStar_Syntax_Syntax.Tm_refine (bv,phi) ->
        let uu____28130 =
          let uu____28131 =
            let uu____28138 = elim_bv bv  in
            let uu____28139 = elim_delayed_subst_term phi  in
            (uu____28138, uu____28139)  in
          FStar_Syntax_Syntax.Tm_refine uu____28131  in
        mk1 uu____28130
    | FStar_Syntax_Syntax.Tm_app (t2,args) ->
        let uu____28166 =
          let uu____28167 =
            let uu____28182 = elim_delayed_subst_term t2  in
            let uu____28185 = elim_delayed_subst_args args  in
            (uu____28182, uu____28185)  in
          FStar_Syntax_Syntax.Tm_app uu____28167  in
        mk1 uu____28166
    | FStar_Syntax_Syntax.Tm_match (t2,branches) ->
        let rec elim_pat p =
          match p.FStar_Syntax_Syntax.v with
          | FStar_Syntax_Syntax.Pat_var x ->
              let uu___369_28253 = p  in
              let uu____28254 =
                let uu____28255 = elim_bv x  in
                FStar_Syntax_Syntax.Pat_var uu____28255  in
              {
                FStar_Syntax_Syntax.v = uu____28254;
                FStar_Syntax_Syntax.p =
                  (uu___369_28253.FStar_Syntax_Syntax.p)
              }
          | FStar_Syntax_Syntax.Pat_wild x ->
              let uu___370_28257 = p  in
              let uu____28258 =
                let uu____28259 = elim_bv x  in
                FStar_Syntax_Syntax.Pat_wild uu____28259  in
              {
                FStar_Syntax_Syntax.v = uu____28258;
                FStar_Syntax_Syntax.p =
                  (uu___370_28257.FStar_Syntax_Syntax.p)
              }
          | FStar_Syntax_Syntax.Pat_dot_term (x,t0) ->
              let uu___371_28266 = p  in
              let uu____28267 =
                let uu____28268 =
                  let uu____28275 = elim_bv x  in
                  let uu____28276 = elim_delayed_subst_term t0  in
                  (uu____28275, uu____28276)  in
                FStar_Syntax_Syntax.Pat_dot_term uu____28268  in
              {
                FStar_Syntax_Syntax.v = uu____28267;
                FStar_Syntax_Syntax.p =
                  (uu___371_28266.FStar_Syntax_Syntax.p)
              }
          | FStar_Syntax_Syntax.Pat_cons (fv,pats) ->
              let uu___372_28299 = p  in
              let uu____28300 =
                let uu____28301 =
                  let uu____28314 =
                    FStar_List.map
                      (fun uu____28337  ->
                         match uu____28337 with
                         | (x,b) ->
                             let uu____28350 = elim_pat x  in
                             (uu____28350, b)) pats
                     in
                  (fv, uu____28314)  in
                FStar_Syntax_Syntax.Pat_cons uu____28301  in
              {
                FStar_Syntax_Syntax.v = uu____28300;
                FStar_Syntax_Syntax.p =
                  (uu___372_28299.FStar_Syntax_Syntax.p)
              }
          | uu____28363 -> p  in
        let elim_branch uu____28387 =
          match uu____28387 with
          | (pat,wopt,t3) ->
              let uu____28413 = elim_pat pat  in
              let uu____28416 =
                FStar_Util.map_opt wopt elim_delayed_subst_term  in
              let uu____28419 = elim_delayed_subst_term t3  in
              (uu____28413, uu____28416, uu____28419)
           in
        let uu____28424 =
          let uu____28425 =
            let uu____28448 = elim_delayed_subst_term t2  in
            let uu____28451 = FStar_List.map elim_branch branches  in
            (uu____28448, uu____28451)  in
          FStar_Syntax_Syntax.Tm_match uu____28425  in
        mk1 uu____28424
    | FStar_Syntax_Syntax.Tm_ascribed (t2,a,lopt) ->
        let elim_ascription uu____28582 =
          match uu____28582 with
          | (tc,topt) ->
              let uu____28617 =
                match tc with
                | FStar_Util.Inl t3 ->
                    let uu____28627 = elim_delayed_subst_term t3  in
                    FStar_Util.Inl uu____28627
                | FStar_Util.Inr c ->
                    let uu____28629 = elim_delayed_subst_comp c  in
                    FStar_Util.Inr uu____28629
                 in
              let uu____28630 =
                FStar_Util.map_opt topt elim_delayed_subst_term  in
              (uu____28617, uu____28630)
           in
        let uu____28639 =
          let uu____28640 =
            let uu____28667 = elim_delayed_subst_term t2  in
            let uu____28670 = elim_ascription a  in
            (uu____28667, uu____28670, lopt)  in
          FStar_Syntax_Syntax.Tm_ascribed uu____28640  in
        mk1 uu____28639
    | FStar_Syntax_Syntax.Tm_let (lbs,t2) ->
        let elim_lb lb =
          let uu___373_28731 = lb  in
          let uu____28732 =
            elim_delayed_subst_term lb.FStar_Syntax_Syntax.lbtyp  in
          let uu____28735 =
            elim_delayed_subst_term lb.FStar_Syntax_Syntax.lbdef  in
          {
            FStar_Syntax_Syntax.lbname =
              (uu___373_28731.FStar_Syntax_Syntax.lbname);
            FStar_Syntax_Syntax.lbunivs =
              (uu___373_28731.FStar_Syntax_Syntax.lbunivs);
            FStar_Syntax_Syntax.lbtyp = uu____28732;
            FStar_Syntax_Syntax.lbeff =
              (uu___373_28731.FStar_Syntax_Syntax.lbeff);
            FStar_Syntax_Syntax.lbdef = uu____28735;
            FStar_Syntax_Syntax.lbattrs =
              (uu___373_28731.FStar_Syntax_Syntax.lbattrs);
            FStar_Syntax_Syntax.lbpos =
              (uu___373_28731.FStar_Syntax_Syntax.lbpos)
          }  in
        let uu____28738 =
          let uu____28739 =
            let uu____28752 =
              let uu____28759 =
                FStar_List.map elim_lb (FStar_Pervasives_Native.snd lbs)  in
              ((FStar_Pervasives_Native.fst lbs), uu____28759)  in
            let uu____28768 = elim_delayed_subst_term t2  in
            (uu____28752, uu____28768)  in
          FStar_Syntax_Syntax.Tm_let uu____28739  in
        mk1 uu____28738
    | FStar_Syntax_Syntax.Tm_uvar (u,s) ->
        mk1 (FStar_Syntax_Syntax.Tm_uvar (u, s))
    | FStar_Syntax_Syntax.Tm_quoted (tm,qi) ->
        let qi1 =
          FStar_Syntax_Syntax.on_antiquoted elim_delayed_subst_term qi  in
        let uu____28818 =
          let uu____28819 =
            let uu____28826 = elim_delayed_subst_term tm  in
            (uu____28826, qi1)  in
          FStar_Syntax_Syntax.Tm_quoted uu____28819  in
        mk1 uu____28818
    | FStar_Syntax_Syntax.Tm_meta (t2,md) ->
        let uu____28837 =
          let uu____28838 =
            let uu____28845 = elim_delayed_subst_term t2  in
            let uu____28848 = elim_delayed_subst_meta md  in
            (uu____28845, uu____28848)  in
          FStar_Syntax_Syntax.Tm_meta uu____28838  in
        mk1 uu____28837

and (elim_delayed_subst_cflags :
  FStar_Syntax_Syntax.cflags Prims.list ->
    FStar_Syntax_Syntax.cflags Prims.list)
  =
  fun flags1  ->
    FStar_List.map
      (fun uu___255_28857  ->
         match uu___255_28857 with
         | FStar_Syntax_Syntax.DECREASES t ->
             let uu____28861 = elim_delayed_subst_term t  in
             FStar_Syntax_Syntax.DECREASES uu____28861
         | f -> f) flags1

and (elim_delayed_subst_comp :
  FStar_Syntax_Syntax.comp -> FStar_Syntax_Syntax.comp) =
  fun c  ->
    let mk1 x =
      FStar_Syntax_Syntax.mk x FStar_Pervasives_Native.None
        c.FStar_Syntax_Syntax.pos
       in
    match c.FStar_Syntax_Syntax.n with
    | FStar_Syntax_Syntax.Total (t,uopt) ->
        let uu____28884 =
          let uu____28885 =
            let uu____28894 = elim_delayed_subst_term t  in
            (uu____28894, uopt)  in
          FStar_Syntax_Syntax.Total uu____28885  in
        mk1 uu____28884
    | FStar_Syntax_Syntax.GTotal (t,uopt) ->
        let uu____28911 =
          let uu____28912 =
            let uu____28921 = elim_delayed_subst_term t  in
            (uu____28921, uopt)  in
          FStar_Syntax_Syntax.GTotal uu____28912  in
        mk1 uu____28911
    | FStar_Syntax_Syntax.Comp ct ->
        let ct1 =
          let uu___374_28930 = ct  in
          let uu____28931 =
            elim_delayed_subst_term ct.FStar_Syntax_Syntax.result_typ  in
          let uu____28934 =
            elim_delayed_subst_args ct.FStar_Syntax_Syntax.effect_args  in
          let uu____28943 =
            elim_delayed_subst_cflags ct.FStar_Syntax_Syntax.flags  in
          {
            FStar_Syntax_Syntax.comp_univs =
              (uu___374_28930.FStar_Syntax_Syntax.comp_univs);
            FStar_Syntax_Syntax.effect_name =
              (uu___374_28930.FStar_Syntax_Syntax.effect_name);
            FStar_Syntax_Syntax.result_typ = uu____28931;
            FStar_Syntax_Syntax.effect_args = uu____28934;
            FStar_Syntax_Syntax.flags = uu____28943
          }  in
        mk1 (FStar_Syntax_Syntax.Comp ct1)

and (elim_delayed_subst_meta :
  FStar_Syntax_Syntax.metadata -> FStar_Syntax_Syntax.metadata) =
  fun uu___256_28946  ->
    match uu___256_28946 with
    | FStar_Syntax_Syntax.Meta_pattern args ->
        let uu____28958 = FStar_List.map elim_delayed_subst_args args  in
        FStar_Syntax_Syntax.Meta_pattern uu____28958
    | FStar_Syntax_Syntax.Meta_monadic (m,t) ->
        let uu____28991 =
          let uu____28998 = elim_delayed_subst_term t  in (m, uu____28998)
           in
        FStar_Syntax_Syntax.Meta_monadic uu____28991
    | FStar_Syntax_Syntax.Meta_monadic_lift (m1,m2,t) ->
        let uu____29010 =
          let uu____29019 = elim_delayed_subst_term t  in
          (m1, m2, uu____29019)  in
        FStar_Syntax_Syntax.Meta_monadic_lift uu____29010
    | m -> m

and (elim_delayed_subst_args :
  (FStar_Syntax_Syntax.term' FStar_Syntax_Syntax.syntax,FStar_Syntax_Syntax.aqual)
    FStar_Pervasives_Native.tuple2 Prims.list ->
    (FStar_Syntax_Syntax.term' FStar_Syntax_Syntax.syntax,FStar_Syntax_Syntax.aqual)
      FStar_Pervasives_Native.tuple2 Prims.list)
  =
  fun args  ->
    FStar_List.map
      (fun uu____29046  ->
         match uu____29046 with
         | (t,q) ->
             let uu____29057 = elim_delayed_subst_term t  in (uu____29057, q))
      args

and (elim_delayed_subst_binders :
  (FStar_Syntax_Syntax.bv,FStar_Syntax_Syntax.aqual)
    FStar_Pervasives_Native.tuple2 Prims.list ->
    (FStar_Syntax_Syntax.bv,FStar_Syntax_Syntax.aqual)
      FStar_Pervasives_Native.tuple2 Prims.list)
  =
  fun bs  ->
    FStar_List.map
      (fun uu____29077  ->
         match uu____29077 with
         | (x,q) ->
             let uu____29088 =
               let uu___375_29089 = x  in
               let uu____29090 =
                 elim_delayed_subst_term x.FStar_Syntax_Syntax.sort  in
               {
                 FStar_Syntax_Syntax.ppname =
                   (uu___375_29089.FStar_Syntax_Syntax.ppname);
                 FStar_Syntax_Syntax.index =
                   (uu___375_29089.FStar_Syntax_Syntax.index);
                 FStar_Syntax_Syntax.sort = uu____29090
               }  in
             (uu____29088, q)) bs

let (elim_uvars_aux_tc :
  FStar_TypeChecker_Env.env ->
    FStar_Syntax_Syntax.univ_names ->
      FStar_Syntax_Syntax.binders ->
        (FStar_Syntax_Syntax.typ,FStar_Syntax_Syntax.comp) FStar_Util.either
          ->
          (FStar_Syntax_Syntax.univ_names,(FStar_Syntax_Syntax.bv,FStar_Syntax_Syntax.aqual)
                                            FStar_Pervasives_Native.tuple2
                                            Prims.list,(FStar_Syntax_Syntax.term'
                                                          FStar_Syntax_Syntax.syntax,
                                                         FStar_Syntax_Syntax.comp'
                                                           FStar_Syntax_Syntax.syntax)
                                                         FStar_Util.either)
            FStar_Pervasives_Native.tuple3)
  =
  fun env  ->
    fun univ_names  ->
      fun binders  ->
        fun tc  ->
          let t =
            match (binders, tc) with
            | ([],FStar_Util.Inl t) -> t
            | ([],FStar_Util.Inr c) ->
                failwith "Impossible: empty bindes with a comp"
            | (uu____29182,FStar_Util.Inr c) ->
                FStar_Syntax_Syntax.mk
                  (FStar_Syntax_Syntax.Tm_arrow (binders, c))
                  FStar_Pervasives_Native.None c.FStar_Syntax_Syntax.pos
            | (uu____29208,FStar_Util.Inl t) ->
                let uu____29226 =
                  let uu____29233 =
                    let uu____29234 =
                      let uu____29247 = FStar_Syntax_Syntax.mk_Total t  in
                      (binders, uu____29247)  in
                    FStar_Syntax_Syntax.Tm_arrow uu____29234  in
                  FStar_Syntax_Syntax.mk uu____29233  in
                uu____29226 FStar_Pervasives_Native.None
                  t.FStar_Syntax_Syntax.pos
             in
          let uu____29261 = FStar_Syntax_Subst.open_univ_vars univ_names t
             in
          match uu____29261 with
          | (univ_names1,t1) ->
              let t2 = remove_uvar_solutions env t1  in
              let t3 = FStar_Syntax_Subst.close_univ_vars univ_names1 t2  in
              let t4 = elim_delayed_subst_term t3  in
              let uu____29291 =
                match binders with
                | [] -> ([], (FStar_Util.Inl t4))
                | uu____29354 ->
                    let uu____29355 =
                      let uu____29364 =
                        let uu____29365 = FStar_Syntax_Subst.compress t4  in
                        uu____29365.FStar_Syntax_Syntax.n  in
                      (uu____29364, tc)  in
                    (match uu____29355 with
                     | (FStar_Syntax_Syntax.Tm_arrow
                        (binders1,c),FStar_Util.Inr uu____29392) ->
                         (binders1, (FStar_Util.Inr c))
                     | (FStar_Syntax_Syntax.Tm_arrow
                        (binders1,c),FStar_Util.Inl uu____29433) ->
                         (binders1,
                           (FStar_Util.Inl (FStar_Syntax_Util.comp_result c)))
                     | (uu____29472,FStar_Util.Inl uu____29473) ->
                         ([], (FStar_Util.Inl t4))
                     | uu____29500 -> failwith "Impossible")
                 in
              (match uu____29291 with
               | (binders1,tc1) -> (univ_names1, binders1, tc1))
  
let (elim_uvars_aux_t :
  FStar_TypeChecker_Env.env ->
    FStar_Syntax_Syntax.univ_names ->
      FStar_Syntax_Syntax.binders ->
        FStar_Syntax_Syntax.typ ->
          (FStar_Syntax_Syntax.univ_names,(FStar_Syntax_Syntax.bv,FStar_Syntax_Syntax.aqual)
                                            FStar_Pervasives_Native.tuple2
                                            Prims.list,FStar_Syntax_Syntax.term'
                                                         FStar_Syntax_Syntax.syntax)
            FStar_Pervasives_Native.tuple3)
  =
  fun env  ->
    fun univ_names  ->
      fun binders  ->
        fun t  ->
          let uu____29625 =
            elim_uvars_aux_tc env univ_names binders (FStar_Util.Inl t)  in
          match uu____29625 with
          | (univ_names1,binders1,tc) ->
              let uu____29691 = FStar_Util.left tc  in
              (univ_names1, binders1, uu____29691)
  
let (elim_uvars_aux_c :
  FStar_TypeChecker_Env.env ->
    FStar_Syntax_Syntax.univ_names ->
      FStar_Syntax_Syntax.binders ->
        FStar_Syntax_Syntax.comp ->
          (FStar_Syntax_Syntax.univ_names,(FStar_Syntax_Syntax.bv,FStar_Syntax_Syntax.aqual)
                                            FStar_Pervasives_Native.tuple2
                                            Prims.list,FStar_Syntax_Syntax.comp'
                                                         FStar_Syntax_Syntax.syntax)
            FStar_Pervasives_Native.tuple3)
  =
  fun env  ->
    fun univ_names  ->
      fun binders  ->
        fun c  ->
          let uu____29740 =
            elim_uvars_aux_tc env univ_names binders (FStar_Util.Inr c)  in
          match uu____29740 with
          | (univ_names1,binders1,tc) ->
              let uu____29806 = FStar_Util.right tc  in
              (univ_names1, binders1, uu____29806)
  
let rec (elim_uvars :
  FStar_TypeChecker_Env.env ->
    FStar_Syntax_Syntax.sigelt -> FStar_Syntax_Syntax.sigelt)
  =
  fun env  ->
    fun s  ->
      match s.FStar_Syntax_Syntax.sigel with
      | FStar_Syntax_Syntax.Sig_inductive_typ
          (lid,univ_names,binders,typ,lids,lids') ->
          let uu____29845 = elim_uvars_aux_t env univ_names binders typ  in
          (match uu____29845 with
           | (univ_names1,binders1,typ1) ->
               let uu___376_29879 = s  in
               {
                 FStar_Syntax_Syntax.sigel =
                   (FStar_Syntax_Syntax.Sig_inductive_typ
                      (lid, univ_names1, binders1, typ1, lids, lids'));
                 FStar_Syntax_Syntax.sigrng =
                   (uu___376_29879.FStar_Syntax_Syntax.sigrng);
                 FStar_Syntax_Syntax.sigquals =
                   (uu___376_29879.FStar_Syntax_Syntax.sigquals);
                 FStar_Syntax_Syntax.sigmeta =
                   (uu___376_29879.FStar_Syntax_Syntax.sigmeta);
                 FStar_Syntax_Syntax.sigattrs =
                   (uu___376_29879.FStar_Syntax_Syntax.sigattrs)
               })
      | FStar_Syntax_Syntax.Sig_bundle (sigs,lids) ->
          let uu___377_29894 = s  in
          let uu____29895 =
            let uu____29896 =
              let uu____29905 = FStar_List.map (elim_uvars env) sigs  in
              (uu____29905, lids)  in
            FStar_Syntax_Syntax.Sig_bundle uu____29896  in
          {
            FStar_Syntax_Syntax.sigel = uu____29895;
            FStar_Syntax_Syntax.sigrng =
              (uu___377_29894.FStar_Syntax_Syntax.sigrng);
            FStar_Syntax_Syntax.sigquals =
              (uu___377_29894.FStar_Syntax_Syntax.sigquals);
            FStar_Syntax_Syntax.sigmeta =
              (uu___377_29894.FStar_Syntax_Syntax.sigmeta);
            FStar_Syntax_Syntax.sigattrs =
              (uu___377_29894.FStar_Syntax_Syntax.sigattrs)
          }
      | FStar_Syntax_Syntax.Sig_datacon (lid,univ_names,typ,lident,i,lids) ->
          let uu____29922 = elim_uvars_aux_t env univ_names [] typ  in
          (match uu____29922 with
           | (univ_names1,uu____29942,typ1) ->
               let uu___378_29960 = s  in
               {
                 FStar_Syntax_Syntax.sigel =
                   (FStar_Syntax_Syntax.Sig_datacon
                      (lid, univ_names1, typ1, lident, i, lids));
                 FStar_Syntax_Syntax.sigrng =
                   (uu___378_29960.FStar_Syntax_Syntax.sigrng);
                 FStar_Syntax_Syntax.sigquals =
                   (uu___378_29960.FStar_Syntax_Syntax.sigquals);
                 FStar_Syntax_Syntax.sigmeta =
                   (uu___378_29960.FStar_Syntax_Syntax.sigmeta);
                 FStar_Syntax_Syntax.sigattrs =
                   (uu___378_29960.FStar_Syntax_Syntax.sigattrs)
               })
      | FStar_Syntax_Syntax.Sig_declare_typ (lid,univ_names,typ) ->
          let uu____29966 = elim_uvars_aux_t env univ_names [] typ  in
          (match uu____29966 with
           | (univ_names1,uu____29986,typ1) ->
               let uu___379_30004 = s  in
               {
                 FStar_Syntax_Syntax.sigel =
                   (FStar_Syntax_Syntax.Sig_declare_typ
                      (lid, univ_names1, typ1));
                 FStar_Syntax_Syntax.sigrng =
                   (uu___379_30004.FStar_Syntax_Syntax.sigrng);
                 FStar_Syntax_Syntax.sigquals =
                   (uu___379_30004.FStar_Syntax_Syntax.sigquals);
                 FStar_Syntax_Syntax.sigmeta =
                   (uu___379_30004.FStar_Syntax_Syntax.sigmeta);
                 FStar_Syntax_Syntax.sigattrs =
                   (uu___379_30004.FStar_Syntax_Syntax.sigattrs)
               })
      | FStar_Syntax_Syntax.Sig_let ((b,lbs),lids) ->
          let lbs1 =
            FStar_All.pipe_right lbs
              (FStar_List.map
                 (fun lb  ->
                    let uu____30032 =
                      FStar_Syntax_Subst.univ_var_opening
                        lb.FStar_Syntax_Syntax.lbunivs
                       in
                    match uu____30032 with
                    | (opening,lbunivs) ->
                        let elim t =
                          let uu____30057 =
                            let uu____30058 =
                              let uu____30059 =
                                FStar_Syntax_Subst.subst opening t  in
                              remove_uvar_solutions env uu____30059  in
                            FStar_Syntax_Subst.close_univ_vars lbunivs
                              uu____30058
                             in
                          elim_delayed_subst_term uu____30057  in
                        let lbtyp = elim lb.FStar_Syntax_Syntax.lbtyp  in
                        let lbdef = elim lb.FStar_Syntax_Syntax.lbdef  in
                        let uu___380_30062 = lb  in
                        {
                          FStar_Syntax_Syntax.lbname =
                            (uu___380_30062.FStar_Syntax_Syntax.lbname);
                          FStar_Syntax_Syntax.lbunivs = lbunivs;
                          FStar_Syntax_Syntax.lbtyp = lbtyp;
                          FStar_Syntax_Syntax.lbeff =
                            (uu___380_30062.FStar_Syntax_Syntax.lbeff);
                          FStar_Syntax_Syntax.lbdef = lbdef;
                          FStar_Syntax_Syntax.lbattrs =
                            (uu___380_30062.FStar_Syntax_Syntax.lbattrs);
                          FStar_Syntax_Syntax.lbpos =
                            (uu___380_30062.FStar_Syntax_Syntax.lbpos)
                        }))
             in
          let uu___381_30063 = s  in
          {
            FStar_Syntax_Syntax.sigel =
              (FStar_Syntax_Syntax.Sig_let ((b, lbs1), lids));
            FStar_Syntax_Syntax.sigrng =
              (uu___381_30063.FStar_Syntax_Syntax.sigrng);
            FStar_Syntax_Syntax.sigquals =
              (uu___381_30063.FStar_Syntax_Syntax.sigquals);
            FStar_Syntax_Syntax.sigmeta =
              (uu___381_30063.FStar_Syntax_Syntax.sigmeta);
            FStar_Syntax_Syntax.sigattrs =
              (uu___381_30063.FStar_Syntax_Syntax.sigattrs)
          }
      | FStar_Syntax_Syntax.Sig_main t ->
          let uu___382_30069 = s  in
          let uu____30070 =
            let uu____30071 = remove_uvar_solutions env t  in
            FStar_Syntax_Syntax.Sig_main uu____30071  in
          {
            FStar_Syntax_Syntax.sigel = uu____30070;
            FStar_Syntax_Syntax.sigrng =
              (uu___382_30069.FStar_Syntax_Syntax.sigrng);
            FStar_Syntax_Syntax.sigquals =
              (uu___382_30069.FStar_Syntax_Syntax.sigquals);
            FStar_Syntax_Syntax.sigmeta =
              (uu___382_30069.FStar_Syntax_Syntax.sigmeta);
            FStar_Syntax_Syntax.sigattrs =
              (uu___382_30069.FStar_Syntax_Syntax.sigattrs)
          }
      | FStar_Syntax_Syntax.Sig_assume (l,us,t) ->
          let uu____30075 = elim_uvars_aux_t env us [] t  in
          (match uu____30075 with
           | (us1,uu____30095,t1) ->
               let uu___383_30113 = s  in
               {
                 FStar_Syntax_Syntax.sigel =
                   (FStar_Syntax_Syntax.Sig_assume (l, us1, t1));
                 FStar_Syntax_Syntax.sigrng =
                   (uu___383_30113.FStar_Syntax_Syntax.sigrng);
                 FStar_Syntax_Syntax.sigquals =
                   (uu___383_30113.FStar_Syntax_Syntax.sigquals);
                 FStar_Syntax_Syntax.sigmeta =
                   (uu___383_30113.FStar_Syntax_Syntax.sigmeta);
                 FStar_Syntax_Syntax.sigattrs =
                   (uu___383_30113.FStar_Syntax_Syntax.sigattrs)
               })
      | FStar_Syntax_Syntax.Sig_new_effect_for_free uu____30114 ->
          failwith "Impossible: should have been desugared already"
      | FStar_Syntax_Syntax.Sig_new_effect ed ->
          let uu____30116 =
            elim_uvars_aux_t env ed.FStar_Syntax_Syntax.univs
              ed.FStar_Syntax_Syntax.binders ed.FStar_Syntax_Syntax.signature
             in
          (match uu____30116 with
           | (univs1,binders,signature) ->
               let uu____30150 =
                 let uu____30155 = FStar_Syntax_Subst.univ_var_opening univs1
                    in
                 match uu____30155 with
                 | (univs_opening,univs2) ->
                     let uu____30178 =
                       FStar_Syntax_Subst.univ_var_closing univs2  in
                     (univs_opening, uu____30178)
                  in
               (match uu____30150 with
                | (univs_opening,univs_closing) ->
                    let uu____30181 =
                      let binders1 = FStar_Syntax_Subst.open_binders binders
                         in
                      let uu____30187 =
                        FStar_Syntax_Subst.opening_of_binders binders1  in
                      let uu____30188 =
                        FStar_Syntax_Subst.closing_of_binders binders1  in
                      (uu____30187, uu____30188)  in
                    (match uu____30181 with
                     | (b_opening,b_closing) ->
                         let n1 = FStar_List.length univs1  in
                         let n_binders = FStar_List.length binders  in
                         let elim_tscheme uu____30212 =
                           match uu____30212 with
                           | (us,t) ->
                               let n_us = FStar_List.length us  in
                               let uu____30230 =
                                 FStar_Syntax_Subst.open_univ_vars us t  in
                               (match uu____30230 with
                                | (us1,t1) ->
                                    let uu____30241 =
                                      let uu____30250 =
                                        FStar_All.pipe_right b_opening
                                          (FStar_Syntax_Subst.shift_subst
                                             n_us)
                                         in
                                      let uu____30261 =
                                        FStar_All.pipe_right b_closing
                                          (FStar_Syntax_Subst.shift_subst
                                             n_us)
                                         in
                                      (uu____30250, uu____30261)  in
                                    (match uu____30241 with
                                     | (b_opening1,b_closing1) ->
                                         let uu____30290 =
                                           let uu____30299 =
                                             FStar_All.pipe_right
                                               univs_opening
                                               (FStar_Syntax_Subst.shift_subst
                                                  n_us)
                                              in
                                           let uu____30310 =
                                             FStar_All.pipe_right
                                               univs_closing
                                               (FStar_Syntax_Subst.shift_subst
                                                  n_us)
                                              in
                                           (uu____30299, uu____30310)  in
                                         (match uu____30290 with
                                          | (univs_opening1,univs_closing1)
                                              ->
                                              let t2 =
                                                let uu____30340 =
                                                  FStar_Syntax_Subst.subst
                                                    b_opening1 t1
                                                   in
                                                FStar_Syntax_Subst.subst
                                                  univs_opening1 uu____30340
                                                 in
                                              let uu____30341 =
                                                elim_uvars_aux_t env [] [] t2
                                                 in
                                              (match uu____30341 with
                                               | (uu____30364,uu____30365,t3)
                                                   ->
                                                   let t4 =
                                                     let uu____30384 =
                                                       let uu____30385 =
                                                         FStar_Syntax_Subst.close_univ_vars
                                                           us1 t3
                                                          in
                                                       FStar_Syntax_Subst.subst
                                                         b_closing1
                                                         uu____30385
                                                        in
                                                     FStar_Syntax_Subst.subst
                                                       univs_closing1
                                                       uu____30384
                                                      in
                                                   (us1, t4)))))
                            in
                         let elim_term t =
                           let uu____30394 =
                             elim_uvars_aux_t env univs1 binders t  in
                           match uu____30394 with
                           | (uu____30411,uu____30412,t1) -> t1  in
                         let elim_action a =
                           let action_typ_templ =
                             let body =
                               FStar_Syntax_Syntax.mk
                                 (FStar_Syntax_Syntax.Tm_ascribed
                                    ((a.FStar_Syntax_Syntax.action_defn),
                                      ((FStar_Util.Inl
                                          (a.FStar_Syntax_Syntax.action_typ)),
                                        FStar_Pervasives_Native.None),
                                      FStar_Pervasives_Native.None))
                                 FStar_Pervasives_Native.None
                                 (a.FStar_Syntax_Syntax.action_defn).FStar_Syntax_Syntax.pos
                                in
                             match a.FStar_Syntax_Syntax.action_params with
                             | [] -> body
                             | uu____30482 ->
                                 FStar_Syntax_Syntax.mk
                                   (FStar_Syntax_Syntax.Tm_abs
                                      ((a.FStar_Syntax_Syntax.action_params),
                                        body, FStar_Pervasives_Native.None))
                                   FStar_Pervasives_Native.None
                                   (a.FStar_Syntax_Syntax.action_defn).FStar_Syntax_Syntax.pos
                              in
                           let destruct_action_body body =
                             let uu____30507 =
                               let uu____30508 =
                                 FStar_Syntax_Subst.compress body  in
                               uu____30508.FStar_Syntax_Syntax.n  in
                             match uu____30507 with
                             | FStar_Syntax_Syntax.Tm_ascribed
                                 (defn,(FStar_Util.Inl
                                        typ,FStar_Pervasives_Native.None ),FStar_Pervasives_Native.None
                                  )
                                 -> (defn, typ)
                             | uu____30567 -> failwith "Impossible"  in
                           let destruct_action_typ_templ t =
                             let uu____30598 =
                               let uu____30599 =
                                 FStar_Syntax_Subst.compress t  in
                               uu____30599.FStar_Syntax_Syntax.n  in
                             match uu____30598 with
                             | FStar_Syntax_Syntax.Tm_abs
                                 (pars,body,uu____30620) ->
                                 let uu____30641 = destruct_action_body body
                                    in
                                 (match uu____30641 with
                                  | (defn,typ) -> (pars, defn, typ))
                             | uu____30686 ->
                                 let uu____30687 = destruct_action_body t  in
                                 (match uu____30687 with
                                  | (defn,typ) -> ([], defn, typ))
                              in
                           let uu____30736 =
                             elim_tscheme
                               ((a.FStar_Syntax_Syntax.action_univs),
                                 action_typ_templ)
                              in
                           match uu____30736 with
                           | (action_univs,t) ->
                               let uu____30745 = destruct_action_typ_templ t
                                  in
                               (match uu____30745 with
                                | (action_params,action_defn,action_typ) ->
                                    let a' =
                                      let uu___384_30786 = a  in
                                      {
                                        FStar_Syntax_Syntax.action_name =
                                          (uu___384_30786.FStar_Syntax_Syntax.action_name);
                                        FStar_Syntax_Syntax.action_unqualified_name
                                          =
                                          (uu___384_30786.FStar_Syntax_Syntax.action_unqualified_name);
                                        FStar_Syntax_Syntax.action_univs =
                                          action_univs;
                                        FStar_Syntax_Syntax.action_params =
                                          action_params;
                                        FStar_Syntax_Syntax.action_defn =
                                          action_defn;
                                        FStar_Syntax_Syntax.action_typ =
                                          action_typ
                                      }  in
                                    a')
                            in
                         let ed1 =
                           let uu___385_30788 = ed  in
                           let uu____30789 =
                             elim_tscheme ed.FStar_Syntax_Syntax.ret_wp  in
                           let uu____30790 =
                             elim_tscheme ed.FStar_Syntax_Syntax.bind_wp  in
                           let uu____30791 =
                             elim_tscheme ed.FStar_Syntax_Syntax.if_then_else
                              in
                           let uu____30792 =
                             elim_tscheme ed.FStar_Syntax_Syntax.ite_wp  in
                           let uu____30793 =
                             elim_tscheme ed.FStar_Syntax_Syntax.stronger  in
                           let uu____30794 =
                             elim_tscheme ed.FStar_Syntax_Syntax.close_wp  in
                           let uu____30795 =
                             elim_tscheme ed.FStar_Syntax_Syntax.assert_p  in
                           let uu____30796 =
                             elim_tscheme ed.FStar_Syntax_Syntax.assume_p  in
                           let uu____30797 =
                             elim_tscheme ed.FStar_Syntax_Syntax.null_wp  in
                           let uu____30798 =
                             elim_tscheme ed.FStar_Syntax_Syntax.trivial  in
                           let uu____30799 =
                             elim_term ed.FStar_Syntax_Syntax.repr  in
                           let uu____30800 =
                             elim_tscheme ed.FStar_Syntax_Syntax.return_repr
                              in
                           let uu____30801 =
                             elim_tscheme ed.FStar_Syntax_Syntax.bind_repr
                              in
                           let uu____30802 =
                             FStar_List.map elim_action
                               ed.FStar_Syntax_Syntax.actions
                              in
                           {
                             FStar_Syntax_Syntax.cattributes =
                               (uu___385_30788.FStar_Syntax_Syntax.cattributes);
                             FStar_Syntax_Syntax.mname =
                               (uu___385_30788.FStar_Syntax_Syntax.mname);
                             FStar_Syntax_Syntax.univs = univs1;
                             FStar_Syntax_Syntax.binders = binders;
                             FStar_Syntax_Syntax.signature = signature;
                             FStar_Syntax_Syntax.ret_wp = uu____30789;
                             FStar_Syntax_Syntax.bind_wp = uu____30790;
                             FStar_Syntax_Syntax.if_then_else = uu____30791;
                             FStar_Syntax_Syntax.ite_wp = uu____30792;
                             FStar_Syntax_Syntax.stronger = uu____30793;
                             FStar_Syntax_Syntax.close_wp = uu____30794;
                             FStar_Syntax_Syntax.assert_p = uu____30795;
                             FStar_Syntax_Syntax.assume_p = uu____30796;
                             FStar_Syntax_Syntax.null_wp = uu____30797;
                             FStar_Syntax_Syntax.trivial = uu____30798;
                             FStar_Syntax_Syntax.repr = uu____30799;
                             FStar_Syntax_Syntax.return_repr = uu____30800;
                             FStar_Syntax_Syntax.bind_repr = uu____30801;
                             FStar_Syntax_Syntax.actions = uu____30802;
                             FStar_Syntax_Syntax.eff_attrs =
                               (uu___385_30788.FStar_Syntax_Syntax.eff_attrs)
                           }  in
                         let uu___386_30805 = s  in
                         {
                           FStar_Syntax_Syntax.sigel =
                             (FStar_Syntax_Syntax.Sig_new_effect ed1);
                           FStar_Syntax_Syntax.sigrng =
                             (uu___386_30805.FStar_Syntax_Syntax.sigrng);
                           FStar_Syntax_Syntax.sigquals =
                             (uu___386_30805.FStar_Syntax_Syntax.sigquals);
                           FStar_Syntax_Syntax.sigmeta =
                             (uu___386_30805.FStar_Syntax_Syntax.sigmeta);
                           FStar_Syntax_Syntax.sigattrs =
                             (uu___386_30805.FStar_Syntax_Syntax.sigattrs)
                         })))
      | FStar_Syntax_Syntax.Sig_sub_effect sub_eff ->
          let elim_tscheme_opt uu___257_30826 =
            match uu___257_30826 with
            | FStar_Pervasives_Native.None  -> FStar_Pervasives_Native.None
            | FStar_Pervasives_Native.Some (us,t) ->
                let uu____30857 = elim_uvars_aux_t env us [] t  in
                (match uu____30857 with
                 | (us1,uu____30885,t1) ->
                     FStar_Pervasives_Native.Some (us1, t1))
             in
          let sub_eff1 =
            let uu___387_30912 = sub_eff  in
            let uu____30913 =
              elim_tscheme_opt sub_eff.FStar_Syntax_Syntax.lift_wp  in
            let uu____30916 =
              elim_tscheme_opt sub_eff.FStar_Syntax_Syntax.lift  in
            {
              FStar_Syntax_Syntax.source =
                (uu___387_30912.FStar_Syntax_Syntax.source);
              FStar_Syntax_Syntax.target =
                (uu___387_30912.FStar_Syntax_Syntax.target);
              FStar_Syntax_Syntax.lift_wp = uu____30913;
              FStar_Syntax_Syntax.lift = uu____30916
            }  in
          let uu___388_30919 = s  in
          {
            FStar_Syntax_Syntax.sigel =
              (FStar_Syntax_Syntax.Sig_sub_effect sub_eff1);
            FStar_Syntax_Syntax.sigrng =
              (uu___388_30919.FStar_Syntax_Syntax.sigrng);
            FStar_Syntax_Syntax.sigquals =
              (uu___388_30919.FStar_Syntax_Syntax.sigquals);
            FStar_Syntax_Syntax.sigmeta =
              (uu___388_30919.FStar_Syntax_Syntax.sigmeta);
            FStar_Syntax_Syntax.sigattrs =
              (uu___388_30919.FStar_Syntax_Syntax.sigattrs)
          }
      | FStar_Syntax_Syntax.Sig_effect_abbrev
          (lid,univ_names,binders,comp,flags1) ->
          let uu____30929 = elim_uvars_aux_c env univ_names binders comp  in
          (match uu____30929 with
           | (univ_names1,binders1,comp1) ->
               let uu___389_30963 = s  in
               {
                 FStar_Syntax_Syntax.sigel =
                   (FStar_Syntax_Syntax.Sig_effect_abbrev
                      (lid, univ_names1, binders1, comp1, flags1));
                 FStar_Syntax_Syntax.sigrng =
                   (uu___389_30963.FStar_Syntax_Syntax.sigrng);
                 FStar_Syntax_Syntax.sigquals =
                   (uu___389_30963.FStar_Syntax_Syntax.sigquals);
                 FStar_Syntax_Syntax.sigmeta =
                   (uu___389_30963.FStar_Syntax_Syntax.sigmeta);
                 FStar_Syntax_Syntax.sigattrs =
                   (uu___389_30963.FStar_Syntax_Syntax.sigattrs)
               })
      | FStar_Syntax_Syntax.Sig_pragma uu____30966 -> s
      | FStar_Syntax_Syntax.Sig_splice uu____30967 -> s
  
let (erase_universes :
  FStar_TypeChecker_Env.env ->
    FStar_Syntax_Syntax.term -> FStar_Syntax_Syntax.term)
  =
  fun env  ->
    fun t  -> normalize [EraseUniverses; AllowUnboundUniverses] env t
  