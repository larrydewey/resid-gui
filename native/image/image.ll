; ModuleID = 'image/image.c'
source_filename = "image/image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.stbi__result_info = type { i32, i32, i32 }
%struct.stbi__context = type { i32, i32, i32, i32, %struct.stbi_io_callbacks, ptr, i32, i32, [128 x i8], i32, ptr, ptr, ptr, ptr }
%struct.stbi_io_callbacks = type { ptr, ptr, ptr }
%struct.stbi__bmp_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stbi__png = type { ptr, ptr, ptr, ptr, i32 }
%struct.stbi__huffman = type { [512 x i8], [256 x i16], [256 x i8], [257 x i8], [18 x i32], [17 x i32] }
%struct.anon = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.stbi__zhuffman = type { [512 x i16], [16 x i16], [17 x i32], [16 x i16], [288 x i8], [288 x i16] }
%struct.stbi__zbuf = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, %struct.stbi__zhuffman, %struct.stbi__zhuffman }
%struct.stbi__resample = type { ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.stbi__gif = type { i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, [256 x [4 x i8]], [256 x [4 x i8]], [8192 x %struct.stbi__gif_lzw], ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stbi__gif_lzw = type { i16, i8, i8 }

@arena_used = internal unnamed_addr global i64 0, align 8
@arena = internal global [100663296 x i8] zeroinitializer, align 16
@stbi__jpeg_dezigzag = internal unnamed_addr constant [79 x i8] c"\00\01\08\10\09\02\03\0A\11\18 \19\12\0B\04\05\0C\13\1A!(0)\22\1B\14\0D\06\07\0E\15\1C#*1892+$\1D\16\0F\17\1E%,3:;4-&\1F'.5<=6/7>????????????????", align 16
@stbi__process_marker.tag = internal unnamed_addr constant [5 x i8] c"JFIF\00", align 1
@stbi__process_marker.tag.1 = internal unnamed_addr constant [6 x i8] c"Adobe\00", align 1
@stbi__process_frame_header.rgb = internal unnamed_addr constant [3 x i8] c"RGB", align 1
@stbi__depth_scale_table = internal unnamed_addr constant [9 x i8] c"\00\FFU\00\11\00\00\00\01", align 1
@stbi__check_png_header.png_sig = internal unnamed_addr constant [8 x i8] c"\89PNG\0D\0A\1A\0A", align 1
@stbi__zdefault_length = internal constant [288 x i8] c"\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\08\08\08\08\08\08\08\08", align 16
@stbi__zdefault_distance = internal constant [32 x i8] c"\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05", align 16
@stbi__compute_huffman_codes.length_dezigzag = internal unnamed_addr constant [19 x i8] c"\10\11\12\00\08\07\09\06\0A\05\0B\04\0C\03\0D\02\0E\01\0F", align 16
@stbi__zlength_base = internal unnamed_addr constant [31 x i32] [i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 13, i32 15, i32 17, i32 19, i32 23, i32 27, i32 31, i32 35, i32 43, i32 51, i32 59, i32 67, i32 83, i32 99, i32 115, i32 131, i32 163, i32 195, i32 227, i32 258, i32 0, i32 0], align 16
@stbi__zlength_extra = internal unnamed_addr constant [31 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5, i32 0, i32 0, i32 0], align 16
@stbi__zdist_base = internal unnamed_addr constant [32 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 7, i32 9, i32 13, i32 17, i32 25, i32 33, i32 49, i32 65, i32 97, i32 129, i32 193, i32 257, i32 385, i32 513, i32 769, i32 1025, i32 1537, i32 2049, i32 3073, i32 4097, i32 6145, i32 8193, i32 12289, i32 16385, i32 24577, i32 0, i32 0], align 16
@stbi__zdist_extra = internal unnamed_addr constant [32 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7, i32 8, i32 8, i32 9, i32 9, i32 10, i32 10, i32 11, i32 11, i32 12, i32 12, i32 13, i32 13, i32 0, i32 0], align 16
@__const.stbi__create_png_image.xorig = private unnamed_addr constant [7 x i32] [i32 0, i32 4, i32 0, i32 2, i32 0, i32 1, i32 0], align 16
@__const.stbi__create_png_image.yorig = private unnamed_addr constant [7 x i32] [i32 0, i32 0, i32 4, i32 0, i32 2, i32 0, i32 1], align 16
@__const.stbi__create_png_image.xspc = private unnamed_addr constant [7 x i32] [i32 8, i32 8, i32 4, i32 4, i32 2, i32 2, i32 1], align 16
@__const.stbi__create_png_image.yspc = private unnamed_addr constant [7 x i32] [i32 8, i32 8, i32 8, i32 4, i32 4, i32 2, i32 2], align 16
@first_row_filter = internal unnamed_addr constant [5 x i8] c"\00\01\00\05\01", align 1
@stbi__shiftsigned.mul_table = internal unnamed_addr constant [9 x i32] [i32 0, i32 255, i32 85, i32 73, i32 17, i32 33, i32 65, i32 129, i32 1], align 16
@stbi__shiftsigned.shift_table = internal unnamed_addr constant [9 x i32] [i32 0, i32 0, i32 0, i32 1, i32 0, i32 2, i32 4, i32 6, i32 0], align 16
@stbi__bmask = internal unnamed_addr constant [17 x i32] [i32 0, i32 1, i32 3, i32 7, i32 15, i32 31, i32 63, i32 127, i32 255, i32 511, i32 1023, i32 2047, i32 4095, i32 8191, i32 16383, i32 32767, i32 65535], align 16
@stbi__jbias = internal unnamed_addr constant [16 x i32] [i32 0, i32 -1, i32 -3, i32 -7, i32 -15, i32 -31, i32 -63, i32 -127, i32 -255, i32 -511, i32 -1023, i32 -2047, i32 -4095, i32 -8191, i32 -16383, i32 -32767], align 16

; Function Attrs: nounwind
define void @image_decode(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef writeonly captures(none) %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.stbi__result_info, align 4
  %7 = alloca %struct.stbi__context, align 8
  %8 = alloca %struct.stbi__bmp_data, align 4
  %9 = alloca %struct.stbi__png, align 8
  %10 = alloca %struct.stbi__context, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = icmp slt i64 %4, 16
  br i1 %14, label %565, label %15

15:                                               ; preds = %5
  store i32 826885970, ptr %3, align 1
  %16 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 1, ptr %16, align 1
  %17 = icmp slt i64 %2, 1
  br i1 %17, label %565, label %18

18:                                               ; preds = %15
  %19 = icmp sgt i64 %2, %1
  %20 = icmp samesign ugt i64 %2, 2147483647
  %21 = or i1 %19, %20
  br i1 %21, label %565, label %22

22:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  %23 = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr null, ptr %23, align 8, !tbaa !8
  %24 = getelementptr inbounds nuw i8, ptr %10, i64 48
  store i32 0, ptr %24, align 8, !tbaa !13
  %25 = getelementptr inbounds nuw i8, ptr %10, i64 184
  store i32 0, ptr %25, align 8, !tbaa !14
  %26 = getelementptr inbounds nuw i8, ptr %10, i64 208
  store ptr %0, ptr %26, align 8, !tbaa !15
  %27 = getelementptr inbounds nuw i8, ptr %10, i64 192
  store ptr %0, ptr %27, align 8, !tbaa !16
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 %2
  %29 = getelementptr inbounds nuw i8, ptr %10, i64 216
  store ptr %28, ptr %29, align 8, !tbaa !17
  %30 = getelementptr inbounds nuw i8, ptr %10, i64 200
  store ptr %28, ptr %30, align 8, !tbaa !18
  %31 = load i64, ptr @arena_used, align 8, !tbaa !19
  %32 = add i64 %31, -100644705
  %33 = icmp ult i64 %32, 18592
  br i1 %33, label %50, label %34

34:                                               ; preds = %22
  %35 = getelementptr inbounds nuw i8, ptr @arena, i64 %31
  %36 = add i64 %31, 18592
  store i64 %36, ptr @arena_used, align 8, !tbaa !19
  store i64 18568, ptr %35, align 8, !tbaa !19
  %37 = getelementptr inbounds nuw i8, ptr %35, i64 16
  %38 = tail call ptr @memset(ptr noundef nonnull %37, i32 noundef 0, i64 noundef 18568) #16
  store ptr %10, ptr %37, align 8, !tbaa !21
  %39 = call fastcc i32 @stbi__decode_jpeg_header(ptr noundef nonnull %37, i32 noundef 2) #17
  %40 = icmp eq i32 %39, 0
  %41 = load ptr, ptr %37, align 8, !tbaa !21
  br i1 %40, label %42, label %46

42:                                               ; preds = %34
  %43 = getelementptr inbounds nuw i8, ptr %41, i64 208
  %44 = getelementptr inbounds nuw i8, ptr %41, i64 192
  %45 = load <2 x ptr>, ptr %43, align 8, !tbaa !23
  store <2 x ptr> %45, ptr %44, align 8, !tbaa !23
  br label %50

46:                                               ; preds = %34
  %47 = load i32, ptr %41, align 8, !tbaa !24
  store i32 %47, ptr %11, align 4, !tbaa !4
  %48 = getelementptr inbounds nuw i8, ptr %41, i64 4
  %49 = load i32, ptr %48, align 4, !tbaa !25
  store i32 %49, ptr %12, align 4, !tbaa !4
  br label %374

50:                                               ; preds = %42, %22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  store ptr %10, ptr %9, align 8, !tbaa !26
  %51 = call fastcc i32 @stbi__parse_png_file(ptr noundef nonnull %9, i32 noundef 2, i32 noundef 0) #17
  %52 = icmp eq i32 %51, 0
  %53 = load ptr, ptr %9, align 8, !tbaa !26
  br i1 %52, label %58, label %54

54:                                               ; preds = %50
  %55 = load i32, ptr %53, align 8, !tbaa !24
  store i32 %55, ptr %11, align 4, !tbaa !4
  %56 = getelementptr inbounds nuw i8, ptr %53, i64 4
  %57 = load i32, ptr %56, align 4, !tbaa !25
  store i32 %57, ptr %12, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  br label %374

58:                                               ; preds = %50
  %59 = getelementptr inbounds nuw i8, ptr %53, i64 208
  %60 = getelementptr inbounds nuw i8, ptr %53, i64 192
  %61 = load <2 x ptr>, ptr %59, align 8, !tbaa !23
  store <2 x ptr> %61, ptr %60, align 8, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  %62 = load i64, ptr @arena_used, align 8, !tbaa !19
  %63 = add i64 %62, -100628353
  %64 = icmp ult i64 %63, 34944
  br i1 %64, label %77, label %65

65:                                               ; preds = %58
  %66 = getelementptr inbounds nuw i8, ptr @arena, i64 %62
  %67 = add i64 %62, 34944
  store i64 %67, ptr @arena_used, align 8, !tbaa !19
  store i64 34928, ptr %66, align 8, !tbaa !19
  %68 = getelementptr inbounds nuw i8, ptr %66, i64 16
  %69 = call fastcc i32 @stbi__gif_header(ptr noundef nonnull %10, ptr noundef %68, ptr noundef nonnull %13, i32 noundef 1) #17
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = load <2 x ptr>, ptr %26, align 8, !tbaa !23
  store <2 x ptr> %72, ptr %27, align 8, !tbaa !23
  br label %77

73:                                               ; preds = %65
  %74 = load i32, ptr %68, align 8, !tbaa !28
  store i32 %74, ptr %11, align 4, !tbaa !4
  %75 = getelementptr inbounds nuw i8, ptr %66, i64 20
  %76 = load i32, ptr %75, align 4, !tbaa !30
  store i32 %76, ptr %12, align 4, !tbaa !4
  br label %374

77:                                               ; preds = %71, %58
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  %78 = getelementptr inbounds nuw i8, ptr %8, i64 28
  store i32 255, ptr %78, align 4, !tbaa !31
  %79 = call fastcc ptr @stbi__bmp_parse_header(ptr noundef nonnull %10, ptr noundef %8) #17
  %80 = icmp eq ptr %79, null
  br i1 %80, label %85, label %81

81:                                               ; preds = %77
  %82 = load i32, ptr %10, align 8, !tbaa !24
  store i32 %82, ptr %11, align 4, !tbaa !4
  %83 = getelementptr inbounds nuw i8, ptr %10, i64 4
  %84 = load i32, ptr %83, align 4, !tbaa !25
  store i32 %84, ptr %12, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  br label %374

85:                                               ; preds = %77
  %86 = load ptr, ptr %26, align 8, !tbaa !15
  store ptr %86, ptr %27, align 8, !tbaa !16
  %87 = load ptr, ptr %29, align 8, !tbaa !17
  store ptr %87, ptr %30, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  %88 = icmp ult ptr %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = getelementptr inbounds nuw i8, ptr %86, i64 1
  br label %119

91:                                               ; preds = %85
  %92 = load i32, ptr %24, align 8, !tbaa !13
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %122, label %94

94:                                               ; preds = %91
  %95 = load ptr, ptr %23, align 8, !tbaa !8
  %96 = getelementptr inbounds nuw i8, ptr %10, i64 40
  %97 = load ptr, ptr %96, align 8, !tbaa !33
  %98 = getelementptr inbounds nuw i8, ptr %10, i64 56
  %99 = getelementptr inbounds nuw i8, ptr %10, i64 52
  %100 = load i32, ptr %99, align 4, !tbaa !34
  %101 = call i32 %95(ptr noundef %97, ptr noundef nonnull %98, i32 noundef %100) #16
  %102 = load ptr, ptr %27, align 8, !tbaa !16
  %103 = load ptr, ptr %26, align 8, !tbaa !15
  %104 = ptrtoint ptr %102 to i64
  %105 = ptrtoint ptr %103 to i64
  %106 = sub i64 %104, %105
  %107 = trunc i64 %106 to i32
  %108 = load i32, ptr %25, align 8, !tbaa !14
  %109 = add i32 %108, %107
  store i32 %109, ptr %25, align 8, !tbaa !14
  %110 = icmp eq i32 %101, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %94
  store i32 0, ptr %24, align 8, !tbaa !13
  %112 = getelementptr inbounds nuw i8, ptr %10, i64 57
  store i8 0, ptr %98, align 8, !tbaa !35
  br label %116

113:                                              ; preds = %94
  %114 = sext i32 %101 to i64
  %115 = getelementptr inbounds i8, ptr %98, i64 %114
  br label %116

116:                                              ; preds = %113, %111
  %117 = phi ptr [ %112, %111 ], [ %115, %113 ]
  store ptr %117, ptr %30, align 8, !tbaa !18
  %118 = getelementptr inbounds nuw i8, ptr %10, i64 57
  br label %119

119:                                              ; preds = %116, %89
  %120 = phi ptr [ %90, %89 ], [ %118, %116 ]
  %121 = phi ptr [ %87, %89 ], [ %117, %116 ]
  store ptr %120, ptr %27, align 8, !tbaa !16
  br label %122

122:                                              ; preds = %119, %91
  %123 = phi ptr [ %87, %91 ], [ %121, %119 ]
  %124 = phi ptr [ %86, %91 ], [ %120, %119 ]
  %125 = icmp ult ptr %124, %123
  br i1 %125, label %126, label %129

126:                                              ; preds = %122
  %127 = getelementptr inbounds nuw i8, ptr %124, i64 1
  store ptr %127, ptr %27, align 8, !tbaa !16
  %128 = load i8, ptr %124, align 1, !tbaa !35
  br label %159

129:                                              ; preds = %122
  %130 = load i32, ptr %24, align 8, !tbaa !13
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %164, label %132

132:                                              ; preds = %129
  %133 = load ptr, ptr %23, align 8, !tbaa !8
  %134 = getelementptr inbounds nuw i8, ptr %10, i64 40
  %135 = load ptr, ptr %134, align 8, !tbaa !33
  %136 = getelementptr inbounds nuw i8, ptr %10, i64 56
  %137 = getelementptr inbounds nuw i8, ptr %10, i64 52
  %138 = load i32, ptr %137, align 4, !tbaa !34
  %139 = call i32 %133(ptr noundef %135, ptr noundef nonnull %136, i32 noundef %138) #16
  %140 = load ptr, ptr %27, align 8, !tbaa !16
  %141 = load ptr, ptr %26, align 8, !tbaa !15
  %142 = ptrtoint ptr %140 to i64
  %143 = ptrtoint ptr %141 to i64
  %144 = sub i64 %142, %143
  %145 = trunc i64 %144 to i32
  %146 = load i32, ptr %25, align 8, !tbaa !14
  %147 = add i32 %146, %145
  store i32 %147, ptr %25, align 8, !tbaa !14
  %148 = icmp eq i32 %139, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %132
  store i32 0, ptr %24, align 8, !tbaa !13
  %150 = getelementptr inbounds nuw i8, ptr %10, i64 57
  store i8 0, ptr %136, align 8, !tbaa !35
  br label %155

151:                                              ; preds = %132
  %152 = sext i32 %139 to i64
  %153 = getelementptr inbounds i8, ptr %136, i64 %152
  %154 = load i8, ptr %136, align 8, !tbaa !35
  br label %155

155:                                              ; preds = %151, %149
  %156 = phi i8 [ 0, %149 ], [ %154, %151 ]
  %157 = phi ptr [ %150, %149 ], [ %153, %151 ]
  store ptr %157, ptr %30, align 8, !tbaa !18
  %158 = getelementptr inbounds nuw i8, ptr %10, i64 57
  store ptr %158, ptr %27, align 8, !tbaa !16
  br label %159

159:                                              ; preds = %155, %126
  %160 = phi ptr [ %123, %126 ], [ %157, %155 ]
  %161 = phi ptr [ %127, %126 ], [ %158, %155 ]
  %162 = phi i8 [ %128, %126 ], [ %156, %155 ]
  %163 = icmp ugt i8 %162, 1
  br i1 %163, label %373, label %164

164:                                              ; preds = %159, %129
  %165 = phi ptr [ %160, %159 ], [ %123, %129 ]
  %166 = phi ptr [ %161, %159 ], [ %124, %129 ]
  %167 = phi i8 [ %162, %159 ], [ 0, %129 ]
  %168 = icmp ult ptr %166, %165
  br i1 %168, label %169, label %172

169:                                              ; preds = %164
  %170 = getelementptr inbounds nuw i8, ptr %166, i64 1
  store ptr %170, ptr %27, align 8, !tbaa !16
  %171 = load i8, ptr %166, align 1, !tbaa !35
  br label %202

172:                                              ; preds = %164
  %173 = load i32, ptr %24, align 8, !tbaa !13
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %202, label %175

175:                                              ; preds = %172
  %176 = load ptr, ptr %23, align 8, !tbaa !8
  %177 = getelementptr inbounds nuw i8, ptr %10, i64 40
  %178 = load ptr, ptr %177, align 8, !tbaa !33
  %179 = getelementptr inbounds nuw i8, ptr %10, i64 56
  %180 = getelementptr inbounds nuw i8, ptr %10, i64 52
  %181 = load i32, ptr %180, align 4, !tbaa !34
  %182 = call i32 %176(ptr noundef %178, ptr noundef nonnull %179, i32 noundef %181) #16
  %183 = load ptr, ptr %27, align 8, !tbaa !16
  %184 = load ptr, ptr %26, align 8, !tbaa !15
  %185 = ptrtoint ptr %183 to i64
  %186 = ptrtoint ptr %184 to i64
  %187 = sub i64 %185, %186
  %188 = trunc i64 %187 to i32
  %189 = load i32, ptr %25, align 8, !tbaa !14
  %190 = add i32 %189, %188
  store i32 %190, ptr %25, align 8, !tbaa !14
  %191 = icmp eq i32 %182, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %175
  store i32 0, ptr %24, align 8, !tbaa !13
  %193 = getelementptr inbounds nuw i8, ptr %10, i64 57
  store i8 0, ptr %179, align 8, !tbaa !35
  br label %198

194:                                              ; preds = %175
  %195 = sext i32 %182 to i64
  %196 = getelementptr inbounds i8, ptr %179, i64 %195
  %197 = load i8, ptr %179, align 8, !tbaa !35
  br label %198

198:                                              ; preds = %194, %192
  %199 = phi i8 [ 0, %192 ], [ %197, %194 ]
  %200 = phi ptr [ %193, %192 ], [ %196, %194 ]
  store ptr %200, ptr %30, align 8, !tbaa !18
  %201 = getelementptr inbounds nuw i8, ptr %10, i64 57
  br label %202

202:                                              ; preds = %198, %172, %169
  %203 = phi ptr [ %170, %169 ], [ %201, %198 ], [ %166, %172 ]
  %204 = phi ptr [ %165, %169 ], [ %200, %198 ], [ %165, %172 ]
  %205 = phi i8 [ %171, %169 ], [ %199, %198 ], [ 0, %172 ]
  %206 = icmp eq i8 %167, 0
  br i1 %206, label %287, label %207

207:                                              ; preds = %202
  %208 = and i8 %205, -9
  %209 = icmp eq i8 %208, 1
  br i1 %209, label %210, label %373

210:                                              ; preds = %207
  %211 = load ptr, ptr %23, align 8, !tbaa !8
  %212 = icmp eq ptr %211, null
  br i1 %212, label %227, label %213

213:                                              ; preds = %210
  %214 = ptrtoint ptr %204 to i64
  %215 = ptrtoint ptr %203 to i64
  %216 = sub i64 %214, %215
  %217 = trunc i64 %216 to i32
  %218 = icmp slt i32 %217, 4
  br i1 %218, label %219, label %227

219:                                              ; preds = %213
  store ptr %204, ptr %27, align 8, !tbaa !16
  %220 = getelementptr inbounds nuw i8, ptr %10, i64 24
  %221 = load ptr, ptr %220, align 8, !tbaa !36
  %222 = getelementptr inbounds nuw i8, ptr %10, i64 40
  %223 = load ptr, ptr %222, align 8, !tbaa !33
  %224 = sub i32 4, %217
  call void %221(ptr noundef %223, i32 noundef %224) #16
  %225 = load ptr, ptr %27, align 8, !tbaa !16
  %226 = load ptr, ptr %30, align 8, !tbaa !18
  br label %229

227:                                              ; preds = %213, %210
  %228 = getelementptr inbounds nuw i8, ptr %203, i64 4
  store ptr %228, ptr %27, align 8, !tbaa !16
  br label %229

229:                                              ; preds = %227, %219
  %230 = phi ptr [ %226, %219 ], [ %204, %227 ]
  %231 = phi ptr [ %225, %219 ], [ %228, %227 ]
  %232 = icmp ult ptr %231, %230
  br i1 %232, label %233, label %236

233:                                              ; preds = %229
  %234 = getelementptr inbounds nuw i8, ptr %231, i64 1
  store ptr %234, ptr %27, align 8, !tbaa !16
  %235 = load i8, ptr %231, align 1, !tbaa !35
  br label %266

236:                                              ; preds = %229
  %237 = load i32, ptr %24, align 8, !tbaa !13
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %373, label %239

239:                                              ; preds = %236
  %240 = load ptr, ptr %23, align 8, !tbaa !8
  %241 = getelementptr inbounds nuw i8, ptr %10, i64 40
  %242 = load ptr, ptr %241, align 8, !tbaa !33
  %243 = getelementptr inbounds nuw i8, ptr %10, i64 56
  %244 = getelementptr inbounds nuw i8, ptr %10, i64 52
  %245 = load i32, ptr %244, align 4, !tbaa !34
  %246 = call i32 %240(ptr noundef %242, ptr noundef nonnull %243, i32 noundef %245) #16
  %247 = load ptr, ptr %27, align 8, !tbaa !16
  %248 = load ptr, ptr %26, align 8, !tbaa !15
  %249 = ptrtoint ptr %247 to i64
  %250 = ptrtoint ptr %248 to i64
  %251 = sub i64 %249, %250
  %252 = trunc i64 %251 to i32
  %253 = load i32, ptr %25, align 8, !tbaa !14
  %254 = add i32 %253, %252
  store i32 %254, ptr %25, align 8, !tbaa !14
  %255 = icmp eq i32 %246, 0
  br i1 %255, label %256, label %258

256:                                              ; preds = %239
  store i32 0, ptr %24, align 8, !tbaa !13
  %257 = getelementptr inbounds nuw i8, ptr %10, i64 57
  store i8 0, ptr %243, align 8, !tbaa !35
  br label %262

258:                                              ; preds = %239
  %259 = sext i32 %246 to i64
  %260 = getelementptr inbounds i8, ptr %243, i64 %259
  %261 = load i8, ptr %243, align 8, !tbaa !35
  br label %262

262:                                              ; preds = %258, %256
  %263 = phi i8 [ 0, %256 ], [ %261, %258 ]
  %264 = phi ptr [ %257, %256 ], [ %260, %258 ]
  store ptr %264, ptr %30, align 8, !tbaa !18
  %265 = getelementptr inbounds nuw i8, ptr %10, i64 57
  br label %266

266:                                              ; preds = %262, %233
  %267 = phi ptr [ %234, %233 ], [ %265, %262 ]
  %268 = phi ptr [ %230, %233 ], [ %264, %262 ]
  %269 = phi i8 [ %235, %233 ], [ %263, %262 ]
  switch i8 %269, label %373 [
    i8 32, label %270
    i8 24, label %270
    i8 16, label %270
    i8 15, label %270
    i8 8, label %270
  ]

270:                                              ; preds = %266, %266, %266, %266, %266
  %271 = load ptr, ptr %23, align 8, !tbaa !8
  %272 = icmp eq ptr %271, null
  br i1 %272, label %285, label %273

273:                                              ; preds = %270
  %274 = ptrtoint ptr %268 to i64
  %275 = ptrtoint ptr %267 to i64
  %276 = sub i64 %274, %275
  %277 = trunc i64 %276 to i32
  %278 = icmp slt i32 %277, 4
  br i1 %278, label %279, label %285

279:                                              ; preds = %273
  store ptr %268, ptr %27, align 8, !tbaa !16
  %280 = getelementptr inbounds nuw i8, ptr %10, i64 24
  %281 = load ptr, ptr %280, align 8, !tbaa !36
  %282 = getelementptr inbounds nuw i8, ptr %10, i64 40
  %283 = load ptr, ptr %282, align 8, !tbaa !33
  %284 = sub i32 4, %277
  call void %281(ptr noundef %283, i32 noundef %284) #16
  br label %307

285:                                              ; preds = %273, %270
  %286 = getelementptr inbounds nuw i8, ptr %267, i64 4
  store ptr %286, ptr %27, align 8, !tbaa !16
  br label %307

287:                                              ; preds = %202
  %288 = and i8 %205, -10
  %289 = icmp eq i8 %288, 2
  br i1 %289, label %290, label %373

290:                                              ; preds = %287
  %291 = load ptr, ptr %23, align 8, !tbaa !8
  %292 = icmp eq ptr %291, null
  br i1 %292, label %305, label %293

293:                                              ; preds = %290
  %294 = ptrtoint ptr %204 to i64
  %295 = ptrtoint ptr %203 to i64
  %296 = sub i64 %294, %295
  %297 = trunc i64 %296 to i32
  %298 = icmp slt i32 %297, 9
  br i1 %298, label %299, label %305

299:                                              ; preds = %293
  store ptr %204, ptr %27, align 8, !tbaa !16
  %300 = getelementptr inbounds nuw i8, ptr %10, i64 24
  %301 = load ptr, ptr %300, align 8, !tbaa !36
  %302 = getelementptr inbounds nuw i8, ptr %10, i64 40
  %303 = load ptr, ptr %302, align 8, !tbaa !33
  %304 = sub i32 9, %297
  call void %301(ptr noundef %303, i32 noundef %304) #16
  br label %307

305:                                              ; preds = %293, %290
  %306 = getelementptr inbounds nuw i8, ptr %203, i64 9
  store ptr %306, ptr %27, align 8, !tbaa !16
  br label %307

307:                                              ; preds = %305, %299, %285, %279
  %308 = phi i8 [ %269, %285 ], [ %269, %279 ], [ 0, %299 ], [ 0, %305 ]
  %309 = call fastcc i32 @stbi__get16le(ptr noundef nonnull %10) #17
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %373, label %311

311:                                              ; preds = %307
  %312 = call fastcc i32 @stbi__get16le(ptr noundef nonnull %10) #17
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %373, label %314

314:                                              ; preds = %311
  %315 = load ptr, ptr %27, align 8, !tbaa !16
  %316 = load ptr, ptr %30, align 8, !tbaa !18
  %317 = icmp ult ptr %315, %316
  br i1 %317, label %318, label %321

318:                                              ; preds = %314
  %319 = getelementptr inbounds nuw i8, ptr %315, i64 1
  store ptr %319, ptr %27, align 8, !tbaa !16
  %320 = load i8, ptr %315, align 1, !tbaa !35
  br label %351

321:                                              ; preds = %314
  %322 = load i32, ptr %24, align 8, !tbaa !13
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %351, label %324

324:                                              ; preds = %321
  %325 = load ptr, ptr %23, align 8, !tbaa !8
  %326 = getelementptr inbounds nuw i8, ptr %10, i64 40
  %327 = load ptr, ptr %326, align 8, !tbaa !33
  %328 = getelementptr inbounds nuw i8, ptr %10, i64 56
  %329 = getelementptr inbounds nuw i8, ptr %10, i64 52
  %330 = load i32, ptr %329, align 4, !tbaa !34
  %331 = call i32 %325(ptr noundef %327, ptr noundef nonnull %328, i32 noundef %330) #16
  %332 = load ptr, ptr %27, align 8, !tbaa !16
  %333 = load ptr, ptr %26, align 8, !tbaa !15
  %334 = ptrtoint ptr %332 to i64
  %335 = ptrtoint ptr %333 to i64
  %336 = sub i64 %334, %335
  %337 = trunc i64 %336 to i32
  %338 = load i32, ptr %25, align 8, !tbaa !14
  %339 = add i32 %338, %337
  store i32 %339, ptr %25, align 8, !tbaa !14
  %340 = icmp eq i32 %331, 0
  br i1 %340, label %341, label %343

341:                                              ; preds = %324
  store i32 0, ptr %24, align 8, !tbaa !13
  %342 = getelementptr inbounds nuw i8, ptr %10, i64 57
  store i8 0, ptr %328, align 8, !tbaa !35
  br label %347

343:                                              ; preds = %324
  %344 = sext i32 %331 to i64
  %345 = getelementptr inbounds i8, ptr %328, i64 %344
  %346 = load i8, ptr %328, align 8, !tbaa !35
  br label %347

347:                                              ; preds = %343, %341
  %348 = phi i8 [ 0, %341 ], [ %346, %343 ]
  %349 = phi ptr [ %342, %341 ], [ %345, %343 ]
  store ptr %349, ptr %30, align 8, !tbaa !18
  %350 = getelementptr inbounds nuw i8, ptr %10, i64 57
  store ptr %350, ptr %27, align 8, !tbaa !16
  br label %351

351:                                              ; preds = %347, %321, %318
  %352 = phi ptr [ %316, %318 ], [ %349, %347 ], [ %316, %321 ]
  %353 = phi ptr [ %319, %318 ], [ %350, %347 ], [ %315, %321 ]
  %354 = phi i8 [ %320, %318 ], [ %348, %347 ], [ 0, %321 ]
  %355 = icmp ult ptr %353, %352
  %356 = load i32, ptr %24, align 8
  %357 = icmp eq i32 %356, 0
  %358 = select i1 %355, i1 true, i1 %357
  br i1 %358, label %367, label %359

359:                                              ; preds = %351
  %360 = load ptr, ptr %23, align 8, !tbaa !8
  %361 = getelementptr inbounds nuw i8, ptr %10, i64 40
  %362 = load ptr, ptr %361, align 8, !tbaa !33
  %363 = getelementptr inbounds nuw i8, ptr %10, i64 56
  %364 = getelementptr inbounds nuw i8, ptr %10, i64 52
  %365 = load i32, ptr %364, align 4, !tbaa !34
  %366 = call i32 %360(ptr noundef %362, ptr noundef nonnull %363, i32 noundef %365) #16
  br label %367

367:                                              ; preds = %359, %351
  %368 = icmp eq i8 %308, 0
  br i1 %368, label %371, label %369

369:                                              ; preds = %367
  switch i8 %354, label %373 [
    i8 16, label %370
    i8 8, label %370
  ]

370:                                              ; preds = %369, %369
  switch i8 %308, label %373 [
    i8 8, label %372
    i8 16, label %372
    i8 15, label %372
    i8 24, label %372
    i8 32, label %372
  ]

371:                                              ; preds = %367
  switch i8 %354, label %373 [
    i8 8, label %372
    i8 16, label %372
    i8 15, label %372
    i8 24, label %372
    i8 32, label %372
  ]

372:                                              ; preds = %371, %371, %371, %371, %370, %370, %370, %370, %371, %370
  store i32 %309, ptr %11, align 4, !tbaa !4
  store i32 %312, ptr %12, align 4, !tbaa !4
  br label %374

373:                                              ; preds = %236, %159, %207, %287, %307, %311, %369, %266, %371, %370
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  br label %564

374:                                              ; preds = %372, %81, %73, %54, %46
  %375 = phi i32 [ %312, %372 ], [ %84, %81 ], [ %76, %73 ], [ %57, %54 ], [ %49, %46 ]
  %376 = phi i32 [ %309, %372 ], [ %82, %81 ], [ %74, %73 ], [ %55, %54 ], [ %47, %46 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  %377 = icmp slt i32 %376, 1
  %378 = icmp slt i32 %375, 1
  %379 = select i1 %377, i1 true, i1 %378
  br i1 %379, label %387, label %380

380:                                              ; preds = %374
  %381 = zext nneg i32 %376 to i64
  %382 = zext nneg i32 %375 to i64
  %383 = shl nuw nsw i64 %381, 2
  %384 = mul nuw i64 %383, %382
  %385 = add nsw i64 %4, -16
  %386 = icmp sgt i64 %384, %385
  br i1 %386, label %387, label %388

387:                                              ; preds = %380, %374
  store i32 2, ptr %16, align 1
  br label %564

388:                                              ; preds = %380
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %389 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr null, ptr %389, align 8, !tbaa !8
  %390 = getelementptr inbounds nuw i8, ptr %7, i64 48
  store i32 0, ptr %390, align 8, !tbaa !13
  %391 = getelementptr inbounds nuw i8, ptr %7, i64 184
  store i32 0, ptr %391, align 8, !tbaa !14
  %392 = getelementptr inbounds nuw i8, ptr %7, i64 208
  store ptr %0, ptr %392, align 8, !tbaa !15
  %393 = getelementptr inbounds nuw i8, ptr %7, i64 192
  store ptr %0, ptr %393, align 8, !tbaa !16
  %394 = getelementptr inbounds nuw i8, ptr %7, i64 216
  store ptr %28, ptr %394, align 8, !tbaa !17
  %395 = getelementptr inbounds nuw i8, ptr %7, i64 200
  store ptr %28, ptr %395, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %396 = call fastcc ptr @stbi__load_main(ptr noundef nonnull %7, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef %6) #17
  %397 = icmp eq ptr %396, null
  br i1 %397, label %491, label %398

398:                                              ; preds = %388
  %399 = load i32, ptr %6, align 4, !tbaa !37
  %400 = icmp eq i32 %399, 8
  %401 = load i32, ptr %11, align 4, !tbaa !4
  %402 = load i32, ptr %12, align 4, !tbaa !4
  br i1 %400, label %492, label %403

403:                                              ; preds = %398
  %404 = shl i32 %401, 2
  %405 = mul i32 %404, %402
  %406 = sext i32 %405 to i64
  %407 = add nsw i64 %406, 15
  %408 = and i64 %407, -16
  %409 = add nsw i64 %408, 16
  %410 = load i64, ptr @arena_used, align 8, !tbaa !19
  %411 = sub i64 100663296, %410
  %412 = icmp ugt i64 %409, %411
  br i1 %412, label %491, label %413

413:                                              ; preds = %403
  %414 = getelementptr inbounds nuw i8, ptr @arena, i64 %410
  %415 = add i64 %409, %410
  store i64 %415, ptr @arena_used, align 8, !tbaa !19
  store i64 %406, ptr %414, align 8, !tbaa !19
  %416 = getelementptr i8, ptr %414, i64 16
  %417 = icmp sgt i32 %405, 0
  br i1 %417, label %418, label %492

418:                                              ; preds = %413
  %419 = zext nneg i32 %405 to i64
  %420 = getelementptr i8, ptr @arena, i64 %410
  %421 = getelementptr i8, ptr %420, i64 %419
  %422 = getelementptr i8, ptr %421, i64 16
  %423 = shl nuw nsw i64 %419, 1
  %424 = getelementptr i8, ptr %396, i64 %423
  %425 = icmp ult ptr %416, %424
  %426 = icmp ult ptr %396, %422
  %427 = and i1 %425, %426
  br i1 %427, label %453, label %428

428:                                              ; preds = %418
  %429 = icmp ult i32 %405, 16
  br i1 %429, label %451, label %430

430:                                              ; preds = %428
  %431 = and i64 %419, 12
  %432 = and i64 %419, 2147483632
  br label %433

433:                                              ; preds = %433, %430
  %434 = phi i64 [ 0, %430 ], [ %445, %433 ]
  %435 = getelementptr inbounds nuw i16, ptr %396, i64 %434
  %436 = getelementptr inbounds nuw i8, ptr %435, i64 16
  %437 = load <8 x i16>, ptr %435, align 2, !tbaa !39, !alias.scope !41
  %438 = load <8 x i16>, ptr %436, align 2, !tbaa !39, !alias.scope !41
  %439 = lshr <8 x i16> %437, splat (i16 8)
  %440 = lshr <8 x i16> %438, splat (i16 8)
  %441 = trunc nuw <8 x i16> %439 to <8 x i8>
  %442 = trunc nuw <8 x i16> %440 to <8 x i8>
  %443 = getelementptr inbounds nuw i8, ptr %416, i64 %434
  %444 = getelementptr inbounds nuw i8, ptr %443, i64 8
  store <8 x i8> %441, ptr %443, align 1, !tbaa !35, !alias.scope !44, !noalias !41
  store <8 x i8> %442, ptr %444, align 1, !tbaa !35, !alias.scope !44, !noalias !41
  %445 = add nuw i64 %434, 16
  %446 = icmp eq i64 %445, %432
  br i1 %446, label %447, label %433, !llvm.loop !46

447:                                              ; preds = %433
  %448 = icmp eq i64 %432, %419
  br i1 %448, label %492, label %449

449:                                              ; preds = %447
  %450 = icmp eq i64 %431, 0
  br i1 %450, label %453, label %451, !prof !50

451:                                              ; preds = %428, %449
  %452 = phi i64 [ 0, %428 ], [ %432, %449 ]
  br label %455

453:                                              ; preds = %418, %449
  %454 = phi i64 [ %432, %449 ], [ 0, %418 ]
  br label %464

455:                                              ; preds = %451, %455
  %456 = phi i64 [ %462, %455 ], [ %452, %451 ]
  %457 = getelementptr inbounds nuw i16, ptr %396, i64 %456
  %458 = load <4 x i16>, ptr %457, align 2, !tbaa !39, !alias.scope !41
  %459 = lshr <4 x i16> %458, splat (i16 8)
  %460 = trunc nuw <4 x i16> %459 to <4 x i8>
  %461 = getelementptr inbounds nuw i8, ptr %416, i64 %456
  store <4 x i8> %460, ptr %461, align 1, !tbaa !35, !alias.scope !44, !noalias !41
  %462 = add nuw i64 %456, 4
  %463 = icmp eq i64 %462, %419
  br i1 %463, label %492, label %455, !llvm.loop !51

464:                                              ; preds = %464, %453
  %465 = phi i64 [ %454, %453 ], [ %489, %464 ]
  %466 = getelementptr inbounds nuw i16, ptr %396, i64 %465
  %467 = load i16, ptr %466, align 2, !tbaa !39
  %468 = lshr i16 %467, 8
  %469 = trunc nuw i16 %468 to i8
  %470 = getelementptr inbounds nuw i8, ptr %416, i64 %465
  store i8 %469, ptr %470, align 1, !tbaa !35
  %471 = or disjoint i64 %465, 1
  %472 = getelementptr inbounds nuw i16, ptr %396, i64 %471
  %473 = load i16, ptr %472, align 2, !tbaa !39
  %474 = lshr i16 %473, 8
  %475 = trunc nuw i16 %474 to i8
  %476 = getelementptr inbounds nuw i8, ptr %416, i64 %471
  store i8 %475, ptr %476, align 1, !tbaa !35
  %477 = or disjoint i64 %465, 2
  %478 = getelementptr inbounds nuw i16, ptr %396, i64 %477
  %479 = load i16, ptr %478, align 2, !tbaa !39
  %480 = lshr i16 %479, 8
  %481 = trunc nuw i16 %480 to i8
  %482 = getelementptr inbounds nuw i8, ptr %416, i64 %477
  store i8 %481, ptr %482, align 1, !tbaa !35
  %483 = or disjoint i64 %465, 3
  %484 = getelementptr inbounds nuw i16, ptr %396, i64 %483
  %485 = load i16, ptr %484, align 2, !tbaa !39
  %486 = lshr i16 %485, 8
  %487 = trunc nuw i16 %486 to i8
  %488 = getelementptr inbounds nuw i8, ptr %416, i64 %483
  store i8 %487, ptr %488, align 1, !tbaa !35
  %489 = add nuw nsw i64 %465, 4
  %490 = icmp eq i64 %489, %419
  br i1 %490, label %492, label %464, !llvm.loop !52

491:                                              ; preds = %388, %403
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %564

492:                                              ; preds = %455, %464, %447, %398, %413
  %493 = phi ptr [ %396, %398 ], [ %416, %413 ], [ %416, %447 ], [ %416, %464 ], [ %416, %455 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  %494 = sext i32 %401 to i64
  %495 = sext i32 %402 to i64
  %496 = mul nsw i64 %495, %494
  %497 = shl i64 %496, 2
  %498 = icmp sgt i64 %497, %385
  br i1 %498, label %506, label %499

499:                                              ; preds = %492
  %500 = icmp sgt i64 %496, 0
  br i1 %500, label %501, label %526

501:                                              ; preds = %499
  %502 = and i64 %496, 1
  %503 = icmp eq i64 %496, 1
  br i1 %503, label %509, label %504

504:                                              ; preds = %501
  %505 = and i64 %496, 9223372036854775806
  br label %529

506:                                              ; preds = %492
  store i32 2, ptr %16, align 1
  br label %564

507:                                              ; preds = %529
  %508 = icmp eq i64 %502, 0
  br i1 %508, label %526, label %509

509:                                              ; preds = %507, %501
  %510 = phi i64 [ 0, %501 ], [ %561, %507 ]
  %511 = icmp ne i64 %502, 0
  call void @llvm.assume(i1 %511)
  %512 = shl i64 %510, 2
  %513 = getelementptr i8, ptr %493, i64 %512
  %514 = getelementptr i8, ptr %513, i64 2
  %515 = load i8, ptr %514, align 1, !tbaa !35
  %516 = getelementptr i8, ptr %3, i64 %512
  %517 = getelementptr i8, ptr %516, i64 16
  store i8 %515, ptr %517, align 1, !tbaa !35
  %518 = getelementptr i8, ptr %513, i64 1
  %519 = load i8, ptr %518, align 1, !tbaa !35
  %520 = getelementptr i8, ptr %516, i64 17
  store i8 %519, ptr %520, align 1, !tbaa !35
  %521 = load i8, ptr %513, align 1, !tbaa !35
  %522 = getelementptr i8, ptr %516, i64 18
  store i8 %521, ptr %522, align 1, !tbaa !35
  %523 = getelementptr i8, ptr %513, i64 3
  %524 = load i8, ptr %523, align 1, !tbaa !35
  %525 = getelementptr i8, ptr %516, i64 19
  store i8 %524, ptr %525, align 1, !tbaa !35
  br label %526

526:                                              ; preds = %509, %507, %499
  store i32 0, ptr %16, align 1
  %527 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %401, ptr %527, align 1
  %528 = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %402, ptr %528, align 1
  br label %564

529:                                              ; preds = %529, %504
  %530 = phi i64 [ 0, %504 ], [ %561, %529 ]
  %531 = phi i64 [ 0, %504 ], [ %562, %529 ]
  %532 = shl i64 %530, 2
  %533 = getelementptr i8, ptr %493, i64 %532
  %534 = getelementptr i8, ptr %533, i64 2
  %535 = load i8, ptr %534, align 1, !tbaa !35
  %536 = getelementptr i8, ptr %3, i64 %532
  %537 = getelementptr i8, ptr %536, i64 16
  store i8 %535, ptr %537, align 1, !tbaa !35
  %538 = getelementptr i8, ptr %533, i64 1
  %539 = load i8, ptr %538, align 1, !tbaa !35
  %540 = getelementptr i8, ptr %536, i64 17
  store i8 %539, ptr %540, align 1, !tbaa !35
  %541 = load i8, ptr %533, align 1, !tbaa !35
  %542 = getelementptr i8, ptr %536, i64 18
  store i8 %541, ptr %542, align 1, !tbaa !35
  %543 = getelementptr i8, ptr %533, i64 3
  %544 = load i8, ptr %543, align 1, !tbaa !35
  %545 = getelementptr i8, ptr %536, i64 19
  store i8 %544, ptr %545, align 1, !tbaa !35
  %546 = shl i64 %530, 2
  %547 = or disjoint i64 %546, 4
  %548 = getelementptr i8, ptr %493, i64 %547
  %549 = getelementptr i8, ptr %548, i64 2
  %550 = load i8, ptr %549, align 1, !tbaa !35
  %551 = getelementptr i8, ptr %3, i64 %547
  %552 = getelementptr i8, ptr %551, i64 16
  store i8 %550, ptr %552, align 1, !tbaa !35
  %553 = getelementptr i8, ptr %548, i64 1
  %554 = load i8, ptr %553, align 1, !tbaa !35
  %555 = getelementptr i8, ptr %551, i64 17
  store i8 %554, ptr %555, align 1, !tbaa !35
  %556 = load i8, ptr %548, align 1, !tbaa !35
  %557 = getelementptr i8, ptr %551, i64 18
  store i8 %556, ptr %557, align 1, !tbaa !35
  %558 = getelementptr i8, ptr %548, i64 3
  %559 = load i8, ptr %558, align 1, !tbaa !35
  %560 = getelementptr i8, ptr %551, i64 19
  store i8 %559, ptr %560, align 1, !tbaa !35
  %561 = add nuw nsw i64 %530, 2
  %562 = add i64 %531, 2
  %563 = icmp eq i64 %562, %505
  br i1 %563, label %507, label %529, !llvm.loop !53

564:                                              ; preds = %491, %373, %506, %526, %387
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  br label %565

565:                                              ; preds = %15, %18, %5, %564
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare ptr @memset(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define internal fastcc range(i32 0, 2) i32 @stbi__decode_jpeg_header(ptr noundef nonnull initializes((18472, 18473), (18504, 18512)) %0, i32 noundef range(i32 0, 3) %1) unnamed_addr #0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 18504
  store i32 0, ptr %3, align 8, !tbaa !54
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 18508
  store i32 -1, ptr %4, align 4, !tbaa !55
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 18472
  store i8 -1, ptr %5, align 8, !tbaa !56
  %6 = tail call fastcc zeroext i8 @stbi__get_marker(ptr noundef %0) #17
  %7 = icmp eq i8 %6, -40
  br i1 %7, label %8, label %62

8:                                                ; preds = %2
  %9 = icmp eq i32 %1, 1
  br i1 %9, label %62, label %10

10:                                               ; preds = %8
  %11 = tail call fastcc zeroext i8 @stbi__get_marker(ptr noundef %0) #17
  %12 = zext i8 %11 to i32
  %13 = and i32 %12, 254
  %14 = icmp ne i32 %13, 192
  %15 = icmp ne i8 %11, -62
  %16 = and i1 %15, %14
  br i1 %16, label %24, label %56

17:                                               ; preds = %53, %28
  %18 = phi i8 [ %29, %28 ], [ %54, %53 ]
  %19 = zext i8 %18 to i32
  %20 = and i32 %19, 254
  %21 = icmp ne i32 %20, 192
  %22 = icmp ne i8 %18, -62
  %23 = and i1 %22, %21
  br i1 %23, label %24, label %56, !llvm.loop !57

24:                                               ; preds = %10, %17
  %25 = phi i32 [ %19, %17 ], [ %12, %10 ]
  %26 = tail call fastcc i32 @stbi__process_marker(ptr noundef %0, i32 noundef %25) #17
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %62, label %28

28:                                               ; preds = %24
  %29 = tail call fastcc zeroext i8 @stbi__get_marker(ptr noundef %0) #17
  %30 = icmp eq i8 %29, -1
  br i1 %30, label %31, label %17

31:                                               ; preds = %28, %53
  %32 = load ptr, ptr %0, align 8, !tbaa !21
  %33 = getelementptr inbounds nuw i8, ptr %32, i64 16
  %34 = load ptr, ptr %33, align 8, !tbaa !8
  %35 = icmp eq ptr %34, null
  br i1 %35, label %47, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds nuw i8, ptr %32, i64 32
  %38 = load ptr, ptr %37, align 8, !tbaa !58
  %39 = getelementptr inbounds nuw i8, ptr %32, i64 40
  %40 = load ptr, ptr %39, align 8, !tbaa !33
  %41 = tail call i32 %38(ptr noundef %40) #16
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %36
  %44 = getelementptr inbounds nuw i8, ptr %32, i64 48
  %45 = load i32, ptr %44, align 8, !tbaa !13
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %62, label %47

47:                                               ; preds = %31, %43
  %48 = getelementptr inbounds nuw i8, ptr %32, i64 192
  %49 = load ptr, ptr %48, align 8, !tbaa !16
  %50 = getelementptr inbounds nuw i8, ptr %32, i64 200
  %51 = load ptr, ptr %50, align 8, !tbaa !18
  %52 = icmp ult ptr %49, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %36, %47
  %54 = tail call fastcc zeroext i8 @stbi__get_marker(ptr noundef %0) #17
  %55 = icmp eq i8 %54, -1
  br i1 %55, label %31, label %17, !llvm.loop !59

56:                                               ; preds = %17, %10
  %57 = phi i8 [ %11, %10 ], [ %18, %17 ]
  %58 = icmp eq i8 %57, -62
  %59 = zext i1 %58 to i32
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 18480
  store i32 %59, ptr %60, align 8, !tbaa !60
  %61 = tail call fastcc i32 @stbi__process_frame_header(ptr noundef %0, i32 noundef %1) #17
  br label %62

62:                                               ; preds = %24, %43, %47, %56, %8, %2
  %63 = phi i32 [ 0, %2 ], [ 0, %43 ], [ 1, %8 ], [ %61, %56 ], [ 0, %47 ], [ 0, %24 ]
  ret i32 %63
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @stbi__get_marker(ptr noundef nonnull captures(none) %0) unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 18472
  %3 = load i8, ptr %2, align 8, !tbaa !56
  %4 = icmp eq i8 %3, -1
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  store i8 -1, ptr %2, align 8, !tbaa !56
  br label %100

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 8, !tbaa !21
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 192
  %9 = load ptr, ptr %8, align 8, !tbaa !16
  %10 = getelementptr inbounds nuw i8, ptr %7, i64 200
  %11 = load ptr, ptr %10, align 8, !tbaa !18
  %12 = icmp ult ptr %9, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %6
  %14 = getelementptr inbounds nuw i8, ptr %9, i64 1
  store ptr %14, ptr %8, align 8, !tbaa !16
  %15 = load i8, ptr %9, align 1, !tbaa !35
  br label %50

16:                                               ; preds = %6
  %17 = getelementptr inbounds nuw i8, ptr %7, i64 48
  %18 = load i32, ptr %17, align 8, !tbaa !13
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %100, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %22 = load ptr, ptr %21, align 8, !tbaa !8
  %23 = getelementptr inbounds nuw i8, ptr %7, i64 40
  %24 = load ptr, ptr %23, align 8, !tbaa !33
  %25 = getelementptr inbounds nuw i8, ptr %7, i64 56
  %26 = getelementptr inbounds nuw i8, ptr %7, i64 52
  %27 = load i32, ptr %26, align 4, !tbaa !34
  %28 = tail call i32 %22(ptr noundef %24, ptr noundef nonnull %25, i32 noundef %27) #16
  %29 = load ptr, ptr %8, align 8, !tbaa !16
  %30 = getelementptr inbounds nuw i8, ptr %7, i64 208
  %31 = load ptr, ptr %30, align 8, !tbaa !15
  %32 = ptrtoint ptr %29 to i64
  %33 = ptrtoint ptr %31 to i64
  %34 = sub i64 %32, %33
  %35 = trunc i64 %34 to i32
  %36 = getelementptr inbounds nuw i8, ptr %7, i64 184
  %37 = load i32, ptr %36, align 8, !tbaa !14
  %38 = add i32 %37, %35
  store i32 %38, ptr %36, align 8, !tbaa !14
  %39 = icmp eq i32 %28, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %20
  store i32 0, ptr %17, align 8, !tbaa !13
  %41 = getelementptr inbounds nuw i8, ptr %7, i64 57
  store i8 0, ptr %25, align 8, !tbaa !35
  br label %46

42:                                               ; preds = %20
  %43 = sext i32 %28 to i64
  %44 = getelementptr inbounds i8, ptr %25, i64 %43
  %45 = load i8, ptr %25, align 1, !tbaa !35
  br label %46

46:                                               ; preds = %42, %40
  %47 = phi i8 [ 0, %40 ], [ %45, %42 ]
  %48 = phi ptr [ %41, %40 ], [ %44, %42 ]
  store ptr %48, ptr %10, align 8, !tbaa !18
  %49 = getelementptr inbounds nuw i8, ptr %7, i64 57
  store ptr %49, ptr %8, align 8, !tbaa !16
  br label %50

50:                                               ; preds = %13, %46
  %51 = phi i8 [ %15, %13 ], [ %47, %46 ]
  %52 = icmp eq i8 %51, -1
  br i1 %52, label %53, label %100

53:                                               ; preds = %50, %97
  %54 = load ptr, ptr %0, align 8, !tbaa !21
  %55 = getelementptr inbounds nuw i8, ptr %54, i64 192
  %56 = load ptr, ptr %55, align 8, !tbaa !16
  %57 = getelementptr inbounds nuw i8, ptr %54, i64 200
  %58 = load ptr, ptr %57, align 8, !tbaa !18
  %59 = icmp ult ptr %56, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = getelementptr inbounds nuw i8, ptr %56, i64 1
  store ptr %61, ptr %55, align 8, !tbaa !16
  %62 = load i8, ptr %56, align 1, !tbaa !35
  br label %97

63:                                               ; preds = %53
  %64 = getelementptr inbounds nuw i8, ptr %54, i64 48
  %65 = load i32, ptr %64, align 8, !tbaa !13
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %100, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds nuw i8, ptr %54, i64 16
  %69 = load ptr, ptr %68, align 8, !tbaa !8
  %70 = getelementptr inbounds nuw i8, ptr %54, i64 40
  %71 = load ptr, ptr %70, align 8, !tbaa !33
  %72 = getelementptr inbounds nuw i8, ptr %54, i64 56
  %73 = getelementptr inbounds nuw i8, ptr %54, i64 52
  %74 = load i32, ptr %73, align 4, !tbaa !34
  %75 = tail call i32 %69(ptr noundef %71, ptr noundef nonnull %72, i32 noundef %74) #16
  %76 = load ptr, ptr %55, align 8, !tbaa !16
  %77 = getelementptr inbounds nuw i8, ptr %54, i64 208
  %78 = load ptr, ptr %77, align 8, !tbaa !15
  %79 = ptrtoint ptr %76 to i64
  %80 = ptrtoint ptr %78 to i64
  %81 = sub i64 %79, %80
  %82 = trunc i64 %81 to i32
  %83 = getelementptr inbounds nuw i8, ptr %54, i64 184
  %84 = load i32, ptr %83, align 8, !tbaa !14
  %85 = add i32 %84, %82
  store i32 %85, ptr %83, align 8, !tbaa !14
  %86 = icmp eq i32 %75, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %67
  store i32 0, ptr %64, align 8, !tbaa !13
  %88 = getelementptr inbounds nuw i8, ptr %54, i64 57
  store i8 0, ptr %72, align 8, !tbaa !35
  br label %93

89:                                               ; preds = %67
  %90 = sext i32 %75 to i64
  %91 = getelementptr inbounds i8, ptr %72, i64 %90
  %92 = load i8, ptr %72, align 1, !tbaa !35
  br label %93

93:                                               ; preds = %89, %87
  %94 = phi i8 [ 0, %87 ], [ %92, %89 ]
  %95 = phi ptr [ %88, %87 ], [ %91, %89 ]
  store ptr %95, ptr %57, align 8, !tbaa !18
  %96 = getelementptr inbounds nuw i8, ptr %54, i64 57
  store ptr %96, ptr %55, align 8, !tbaa !16
  br label %97

97:                                               ; preds = %60, %93
  %98 = phi i8 [ %62, %60 ], [ %94, %93 ]
  %99 = icmp eq i8 %98, -1
  br i1 %99, label %53, label %100, !llvm.loop !61

100:                                              ; preds = %63, %97, %16, %50, %5
  %101 = phi i8 [ %3, %5 ], [ -1, %50 ], [ -1, %16 ], [ 0, %63 ], [ %98, %97 ]
  ret i8 %101
}

; Function Attrs: nounwind
define internal fastcc range(i32 0, 2) i32 @stbi__process_marker(ptr noundef nonnull %0, i32 noundef range(i32 0, 256) %1) unnamed_addr #0 {
  %3 = alloca [16 x i32], align 16
  %4 = trunc nuw i32 %1 to i8
  switch i8 %4, label %382 [
    i8 -1, label %561
    i8 -35, label %5
    i8 -37, label %13
    i8 -60, label %142
  ]

5:                                                ; preds = %2
  %6 = load ptr, ptr %0, align 8, !tbaa !21
  %7 = tail call fastcc i32 @stbi__get16be(ptr noundef %6) #17
  %8 = icmp eq i32 %7, 4
  br i1 %8, label %9, label %561

9:                                                ; preds = %5
  %10 = load ptr, ptr %0, align 8, !tbaa !21
  %11 = tail call fastcc i32 @stbi__get16be(ptr noundef %10) #17
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 18536
  store i32 %11, ptr %12, align 8, !tbaa !62
  br label %561

13:                                               ; preds = %2
  %14 = load ptr, ptr %0, align 8, !tbaa !21
  %15 = tail call fastcc i32 @stbi__get16be(ptr noundef %14) #17
  %16 = add nsw i32 %15, -2
  %17 = icmp samesign ugt i32 %15, 2
  br i1 %17, label %18, label %139

18:                                               ; preds = %13
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 13448
  br label %20

20:                                               ; preds = %18, %135
  %21 = phi i32 [ %16, %18 ], [ %137, %135 ]
  %22 = load ptr, ptr %0, align 8, !tbaa !21
  %23 = getelementptr inbounds nuw i8, ptr %22, i64 192
  %24 = load ptr, ptr %23, align 8, !tbaa !16
  %25 = getelementptr inbounds nuw i8, ptr %22, i64 200
  %26 = load ptr, ptr %25, align 8, !tbaa !18
  %27 = icmp ult ptr %24, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = getelementptr inbounds nuw i8, ptr %24, i64 1
  store ptr %29, ptr %23, align 8, !tbaa !16
  %30 = load i8, ptr %24, align 1, !tbaa !35
  br label %65

31:                                               ; preds = %20
  %32 = getelementptr inbounds nuw i8, ptr %22, i64 48
  %33 = load i32, ptr %32, align 8, !tbaa !13
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %65, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds nuw i8, ptr %22, i64 16
  %37 = load ptr, ptr %36, align 8, !tbaa !8
  %38 = getelementptr inbounds nuw i8, ptr %22, i64 40
  %39 = load ptr, ptr %38, align 8, !tbaa !33
  %40 = getelementptr inbounds nuw i8, ptr %22, i64 56
  %41 = getelementptr inbounds nuw i8, ptr %22, i64 52
  %42 = load i32, ptr %41, align 4, !tbaa !34
  %43 = tail call i32 %37(ptr noundef %39, ptr noundef nonnull %40, i32 noundef %42) #16
  %44 = load ptr, ptr %23, align 8, !tbaa !16
  %45 = getelementptr inbounds nuw i8, ptr %22, i64 208
  %46 = load ptr, ptr %45, align 8, !tbaa !15
  %47 = ptrtoint ptr %44 to i64
  %48 = ptrtoint ptr %46 to i64
  %49 = sub i64 %47, %48
  %50 = trunc i64 %49 to i32
  %51 = getelementptr inbounds nuw i8, ptr %22, i64 184
  %52 = load i32, ptr %51, align 8, !tbaa !14
  %53 = add i32 %52, %50
  store i32 %53, ptr %51, align 8, !tbaa !14
  %54 = icmp eq i32 %43, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %35
  store i32 0, ptr %32, align 8, !tbaa !13
  %56 = getelementptr inbounds nuw i8, ptr %22, i64 57
  store i8 0, ptr %40, align 8, !tbaa !35
  br label %61

57:                                               ; preds = %35
  %58 = sext i32 %43 to i64
  %59 = getelementptr inbounds i8, ptr %40, i64 %58
  %60 = load i8, ptr %40, align 1, !tbaa !35
  br label %61

61:                                               ; preds = %57, %55
  %62 = phi i8 [ 0, %55 ], [ %60, %57 ]
  %63 = phi ptr [ %56, %55 ], [ %59, %57 ]
  store ptr %63, ptr %25, align 8, !tbaa !18
  %64 = getelementptr inbounds nuw i8, ptr %22, i64 57
  store ptr %64, ptr %23, align 8, !tbaa !16
  br label %65

65:                                               ; preds = %28, %31, %61
  %66 = phi i8 [ %30, %28 ], [ %62, %61 ], [ 0, %31 ]
  %67 = icmp ult i8 %66, 16
  %68 = and i8 %66, 15
  %69 = icmp ugt i8 %66, 31
  %70 = icmp samesign ugt i8 %68, 3
  %71 = select i1 %69, i1 true, i1 %70
  br i1 %71, label %561, label %72

72:                                               ; preds = %65
  %73 = zext nneg i8 %68 to i64
  %74 = getelementptr inbounds nuw [64 x i16], ptr %19, i64 %73
  br label %75

75:                                               ; preds = %72, %126
  %76 = phi i64 [ 0, %72 ], [ %133, %126 ]
  %77 = load ptr, ptr %0, align 8, !tbaa !21
  br i1 %67, label %80, label %78

78:                                               ; preds = %75
  %79 = tail call fastcc i32 @stbi__get16be(ptr noundef %77) #17
  br label %126

80:                                               ; preds = %75
  %81 = getelementptr inbounds nuw i8, ptr %77, i64 192
  %82 = load ptr, ptr %81, align 8, !tbaa !16
  %83 = getelementptr inbounds nuw i8, ptr %77, i64 200
  %84 = load ptr, ptr %83, align 8, !tbaa !18
  %85 = icmp ult ptr %82, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = getelementptr inbounds nuw i8, ptr %82, i64 1
  store ptr %87, ptr %81, align 8, !tbaa !16
  %88 = load i8, ptr %82, align 1, !tbaa !35
  br label %123

89:                                               ; preds = %80
  %90 = getelementptr inbounds nuw i8, ptr %77, i64 48
  %91 = load i32, ptr %90, align 8, !tbaa !13
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %123, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds nuw i8, ptr %77, i64 16
  %95 = load ptr, ptr %94, align 8, !tbaa !8
  %96 = getelementptr inbounds nuw i8, ptr %77, i64 40
  %97 = load ptr, ptr %96, align 8, !tbaa !33
  %98 = getelementptr inbounds nuw i8, ptr %77, i64 56
  %99 = getelementptr inbounds nuw i8, ptr %77, i64 52
  %100 = load i32, ptr %99, align 4, !tbaa !34
  %101 = tail call i32 %95(ptr noundef %97, ptr noundef nonnull %98, i32 noundef %100) #16
  %102 = load ptr, ptr %81, align 8, !tbaa !16
  %103 = getelementptr inbounds nuw i8, ptr %77, i64 208
  %104 = load ptr, ptr %103, align 8, !tbaa !15
  %105 = ptrtoint ptr %102 to i64
  %106 = ptrtoint ptr %104 to i64
  %107 = sub i64 %105, %106
  %108 = trunc i64 %107 to i32
  %109 = getelementptr inbounds nuw i8, ptr %77, i64 184
  %110 = load i32, ptr %109, align 8, !tbaa !14
  %111 = add i32 %110, %108
  store i32 %111, ptr %109, align 8, !tbaa !14
  %112 = icmp eq i32 %101, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %93
  store i32 0, ptr %90, align 8, !tbaa !13
  %114 = getelementptr inbounds nuw i8, ptr %77, i64 57
  store i8 0, ptr %98, align 8, !tbaa !35
  br label %119

115:                                              ; preds = %93
  %116 = sext i32 %101 to i64
  %117 = getelementptr inbounds i8, ptr %98, i64 %116
  %118 = load i8, ptr %98, align 1, !tbaa !35
  br label %119

119:                                              ; preds = %115, %113
  %120 = phi i8 [ 0, %113 ], [ %118, %115 ]
  %121 = phi ptr [ %114, %113 ], [ %117, %115 ]
  store ptr %121, ptr %83, align 8, !tbaa !18
  %122 = getelementptr inbounds nuw i8, ptr %77, i64 57
  store ptr %122, ptr %81, align 8, !tbaa !16
  br label %123

123:                                              ; preds = %86, %89, %119
  %124 = phi i8 [ %88, %86 ], [ %120, %119 ], [ 0, %89 ]
  %125 = zext i8 %124 to i32
  br label %126

126:                                              ; preds = %123, %78
  %127 = phi i32 [ %79, %78 ], [ %125, %123 ]
  %128 = trunc nuw i32 %127 to i16
  %129 = getelementptr inbounds nuw i8, ptr @stbi__jpeg_dezigzag, i64 %76
  %130 = load i8, ptr %129, align 1, !tbaa !35
  %131 = zext i8 %130 to i64
  %132 = getelementptr inbounds nuw i16, ptr %74, i64 %131
  store i16 %128, ptr %132, align 2, !tbaa !39
  %133 = add nuw nsw i64 %76, 1
  %134 = icmp eq i64 %133, 64
  br i1 %134, label %135, label %75, !llvm.loop !63

135:                                              ; preds = %126
  %136 = select i1 %67, i32 -65, i32 -129
  %137 = add nsw i32 %136, %21
  %138 = icmp sgt i32 %137, 0
  br i1 %138, label %20, label %139, !llvm.loop !64

139:                                              ; preds = %135, %13
  %140 = phi i32 [ %16, %13 ], [ %137, %135 ]
  %141 = icmp eq i32 %140, 0
  br label %561

142:                                              ; preds = %2
  %143 = load ptr, ptr %0, align 8, !tbaa !21
  %144 = tail call fastcc i32 @stbi__get16be(ptr noundef %143) #17
  %145 = add nsw i32 %144, -2
  %146 = icmp samesign ugt i32 %144, 2
  br i1 %146, label %147, label %379

147:                                              ; preds = %142
  %148 = getelementptr inbounds nuw i8, ptr %0, i64 6728
  %149 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %150 = getelementptr inbounds nuw i8, ptr %0, i64 13960
  br label %151

151:                                              ; preds = %147, %376
  %152 = phi i32 [ %145, %147 ], [ %377, %376 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %153 = load ptr, ptr %0, align 8, !tbaa !21
  %154 = getelementptr inbounds nuw i8, ptr %153, i64 192
  %155 = load ptr, ptr %154, align 8, !tbaa !16
  %156 = getelementptr inbounds nuw i8, ptr %153, i64 200
  %157 = load ptr, ptr %156, align 8, !tbaa !18
  %158 = icmp ult ptr %155, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %151
  %160 = getelementptr inbounds nuw i8, ptr %155, i64 1
  store ptr %160, ptr %154, align 8, !tbaa !16
  %161 = load i8, ptr %155, align 1, !tbaa !35
  br label %196

162:                                              ; preds = %151
  %163 = getelementptr inbounds nuw i8, ptr %153, i64 48
  %164 = load i32, ptr %163, align 8, !tbaa !13
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %196, label %166

166:                                              ; preds = %162
  %167 = getelementptr inbounds nuw i8, ptr %153, i64 16
  %168 = load ptr, ptr %167, align 8, !tbaa !8
  %169 = getelementptr inbounds nuw i8, ptr %153, i64 40
  %170 = load ptr, ptr %169, align 8, !tbaa !33
  %171 = getelementptr inbounds nuw i8, ptr %153, i64 56
  %172 = getelementptr inbounds nuw i8, ptr %153, i64 52
  %173 = load i32, ptr %172, align 4, !tbaa !34
  %174 = tail call i32 %168(ptr noundef %170, ptr noundef nonnull %171, i32 noundef %173) #16
  %175 = load ptr, ptr %154, align 8, !tbaa !16
  %176 = getelementptr inbounds nuw i8, ptr %153, i64 208
  %177 = load ptr, ptr %176, align 8, !tbaa !15
  %178 = ptrtoint ptr %175 to i64
  %179 = ptrtoint ptr %177 to i64
  %180 = sub i64 %178, %179
  %181 = trunc i64 %180 to i32
  %182 = getelementptr inbounds nuw i8, ptr %153, i64 184
  %183 = load i32, ptr %182, align 8, !tbaa !14
  %184 = add i32 %183, %181
  store i32 %184, ptr %182, align 8, !tbaa !14
  %185 = icmp eq i32 %174, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %166
  store i32 0, ptr %163, align 8, !tbaa !13
  %187 = getelementptr inbounds nuw i8, ptr %153, i64 57
  store i8 0, ptr %171, align 8, !tbaa !35
  br label %192

188:                                              ; preds = %166
  %189 = sext i32 %174 to i64
  %190 = getelementptr inbounds i8, ptr %171, i64 %189
  %191 = load i8, ptr %171, align 1, !tbaa !35
  br label %192

192:                                              ; preds = %188, %186
  %193 = phi i8 [ 0, %186 ], [ %191, %188 ]
  %194 = phi ptr [ %187, %186 ], [ %190, %188 ]
  store ptr %194, ptr %156, align 8, !tbaa !18
  %195 = getelementptr inbounds nuw i8, ptr %153, i64 57
  store ptr %195, ptr %154, align 8, !tbaa !16
  br label %196

196:                                              ; preds = %159, %162, %192
  %197 = phi i8 [ %161, %159 ], [ %193, %192 ], [ 0, %162 ]
  %198 = and i8 %197, 15
  %199 = icmp ugt i8 %197, 31
  %200 = icmp samesign ugt i8 %198, 3
  %201 = select i1 %199, i1 true, i1 %200
  br i1 %201, label %560, label %202

202:                                              ; preds = %196, %248
  %203 = phi i64 [ %253, %248 ], [ 0, %196 ]
  %204 = phi i32 [ %252, %248 ], [ 0, %196 ]
  %205 = load ptr, ptr %0, align 8, !tbaa !21
  %206 = getelementptr inbounds nuw i8, ptr %205, i64 192
  %207 = load ptr, ptr %206, align 8, !tbaa !16
  %208 = getelementptr inbounds nuw i8, ptr %205, i64 200
  %209 = load ptr, ptr %208, align 8, !tbaa !18
  %210 = icmp ult ptr %207, %209
  br i1 %210, label %211, label %214

211:                                              ; preds = %202
  %212 = getelementptr inbounds nuw i8, ptr %207, i64 1
  store ptr %212, ptr %206, align 8, !tbaa !16
  %213 = load i8, ptr %207, align 1, !tbaa !35
  br label %248

214:                                              ; preds = %202
  %215 = getelementptr inbounds nuw i8, ptr %205, i64 48
  %216 = load i32, ptr %215, align 8, !tbaa !13
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %248, label %218

218:                                              ; preds = %214
  %219 = getelementptr inbounds nuw i8, ptr %205, i64 16
  %220 = load ptr, ptr %219, align 8, !tbaa !8
  %221 = getelementptr inbounds nuw i8, ptr %205, i64 40
  %222 = load ptr, ptr %221, align 8, !tbaa !33
  %223 = getelementptr inbounds nuw i8, ptr %205, i64 56
  %224 = getelementptr inbounds nuw i8, ptr %205, i64 52
  %225 = load i32, ptr %224, align 4, !tbaa !34
  %226 = tail call i32 %220(ptr noundef %222, ptr noundef nonnull %223, i32 noundef %225) #16
  %227 = load ptr, ptr %206, align 8, !tbaa !16
  %228 = getelementptr inbounds nuw i8, ptr %205, i64 208
  %229 = load ptr, ptr %228, align 8, !tbaa !15
  %230 = ptrtoint ptr %227 to i64
  %231 = ptrtoint ptr %229 to i64
  %232 = sub i64 %230, %231
  %233 = trunc i64 %232 to i32
  %234 = getelementptr inbounds nuw i8, ptr %205, i64 184
  %235 = load i32, ptr %234, align 8, !tbaa !14
  %236 = add i32 %235, %233
  store i32 %236, ptr %234, align 8, !tbaa !14
  %237 = icmp eq i32 %226, 0
  br i1 %237, label %238, label %240

238:                                              ; preds = %218
  store i32 0, ptr %215, align 8, !tbaa !13
  %239 = getelementptr inbounds nuw i8, ptr %205, i64 57
  store i8 0, ptr %223, align 8, !tbaa !35
  br label %244

240:                                              ; preds = %218
  %241 = sext i32 %226 to i64
  %242 = getelementptr inbounds i8, ptr %223, i64 %241
  %243 = load i8, ptr %223, align 1, !tbaa !35
  br label %244

244:                                              ; preds = %240, %238
  %245 = phi i8 [ 0, %238 ], [ %243, %240 ]
  %246 = phi ptr [ %239, %238 ], [ %242, %240 ]
  store ptr %246, ptr %208, align 8, !tbaa !18
  %247 = getelementptr inbounds nuw i8, ptr %205, i64 57
  store ptr %247, ptr %206, align 8, !tbaa !16
  br label %248

248:                                              ; preds = %211, %214, %244
  %249 = phi i8 [ %213, %211 ], [ %245, %244 ], [ 0, %214 ]
  %250 = zext i8 %249 to i32
  %251 = getelementptr inbounds nuw i32, ptr %3, i64 %203
  store i32 %250, ptr %251, align 4, !tbaa !4
  %252 = add i32 %204, %250
  %253 = add nuw nsw i64 %203, 1
  %254 = icmp eq i64 %253, 16
  br i1 %254, label %255, label %202, !llvm.loop !65

255:                                              ; preds = %248
  %256 = icmp sgt i32 %252, 256
  br i1 %256, label %560, label %257

257:                                              ; preds = %255
  %258 = add nsw i32 %152, -17
  %259 = icmp ult i8 %197, 16
  %260 = zext nneg i8 %198 to i64
  br i1 %259, label %261, label %265

261:                                              ; preds = %257
  %262 = getelementptr inbounds nuw %struct.stbi__huffman, ptr %149, i64 %260
  %263 = call fastcc i32 @stbi__build_huffman(ptr noundef %262, ptr noundef %3) #17
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %560, label %269

265:                                              ; preds = %257
  %266 = getelementptr inbounds nuw %struct.stbi__huffman, ptr %148, i64 %260
  %267 = call fastcc i32 @stbi__build_huffman(ptr noundef %266, ptr noundef %3) #17
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %560, label %269

269:                                              ; preds = %265, %261
  %270 = phi i64 [ 8, %261 ], [ 6728, %265 ]
  %271 = getelementptr inbounds nuw i8, ptr %0, i64 %270
  %272 = getelementptr inbounds nuw %struct.stbi__huffman, ptr %271, i64 %260
  %273 = getelementptr inbounds nuw i8, ptr %272, i64 1024
  %274 = icmp sgt i32 %252, 0
  br i1 %274, label %275, label %327

275:                                              ; preds = %269
  %276 = zext nneg i32 %252 to i64
  br label %277

277:                                              ; preds = %275, %322
  %278 = phi i64 [ 0, %275 ], [ %325, %322 ]
  %279 = load ptr, ptr %0, align 8, !tbaa !21
  %280 = getelementptr inbounds nuw i8, ptr %279, i64 192
  %281 = load ptr, ptr %280, align 8, !tbaa !16
  %282 = getelementptr inbounds nuw i8, ptr %279, i64 200
  %283 = load ptr, ptr %282, align 8, !tbaa !18
  %284 = icmp ult ptr %281, %283
  br i1 %284, label %285, label %288

285:                                              ; preds = %277
  %286 = getelementptr inbounds nuw i8, ptr %281, i64 1
  store ptr %286, ptr %280, align 8, !tbaa !16
  %287 = load i8, ptr %281, align 1, !tbaa !35
  br label %322

288:                                              ; preds = %277
  %289 = getelementptr inbounds nuw i8, ptr %279, i64 48
  %290 = load i32, ptr %289, align 8, !tbaa !13
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %322, label %292

292:                                              ; preds = %288
  %293 = getelementptr inbounds nuw i8, ptr %279, i64 16
  %294 = load ptr, ptr %293, align 8, !tbaa !8
  %295 = getelementptr inbounds nuw i8, ptr %279, i64 40
  %296 = load ptr, ptr %295, align 8, !tbaa !33
  %297 = getelementptr inbounds nuw i8, ptr %279, i64 56
  %298 = getelementptr inbounds nuw i8, ptr %279, i64 52
  %299 = load i32, ptr %298, align 4, !tbaa !34
  %300 = tail call i32 %294(ptr noundef %296, ptr noundef nonnull %297, i32 noundef %299) #16
  %301 = load ptr, ptr %280, align 8, !tbaa !16
  %302 = getelementptr inbounds nuw i8, ptr %279, i64 208
  %303 = load ptr, ptr %302, align 8, !tbaa !15
  %304 = ptrtoint ptr %301 to i64
  %305 = ptrtoint ptr %303 to i64
  %306 = sub i64 %304, %305
  %307 = trunc i64 %306 to i32
  %308 = getelementptr inbounds nuw i8, ptr %279, i64 184
  %309 = load i32, ptr %308, align 8, !tbaa !14
  %310 = add i32 %309, %307
  store i32 %310, ptr %308, align 8, !tbaa !14
  %311 = icmp eq i32 %300, 0
  br i1 %311, label %312, label %314

312:                                              ; preds = %292
  store i32 0, ptr %289, align 8, !tbaa !13
  %313 = getelementptr inbounds nuw i8, ptr %279, i64 57
  store i8 0, ptr %297, align 8, !tbaa !35
  br label %318

314:                                              ; preds = %292
  %315 = sext i32 %300 to i64
  %316 = getelementptr inbounds i8, ptr %297, i64 %315
  %317 = load i8, ptr %297, align 1, !tbaa !35
  br label %318

318:                                              ; preds = %314, %312
  %319 = phi i8 [ 0, %312 ], [ %317, %314 ]
  %320 = phi ptr [ %313, %312 ], [ %316, %314 ]
  store ptr %320, ptr %282, align 8, !tbaa !18
  %321 = getelementptr inbounds nuw i8, ptr %279, i64 57
  store ptr %321, ptr %280, align 8, !tbaa !16
  br label %322

322:                                              ; preds = %285, %288, %318
  %323 = phi i8 [ %287, %285 ], [ %319, %318 ], [ 0, %288 ]
  %324 = getelementptr inbounds nuw i8, ptr %273, i64 %278
  store i8 %323, ptr %324, align 1, !tbaa !35
  %325 = add nuw nsw i64 %278, 1
  %326 = icmp eq i64 %325, %276
  br i1 %326, label %327, label %277, !llvm.loop !66

327:                                              ; preds = %322, %269
  br i1 %259, label %376, label %328

328:                                              ; preds = %327
  %329 = zext nneg i8 %198 to i64
  %330 = getelementptr inbounds nuw [512 x i16], ptr %150, i64 %329
  %331 = getelementptr inbounds nuw %struct.stbi__huffman, ptr %148, i64 %329
  %332 = getelementptr inbounds nuw i8, ptr %331, i64 1024
  %333 = getelementptr inbounds nuw i8, ptr %331, i64 1280
  br label %334

334:                                              ; preds = %373, %328
  %335 = phi i64 [ 0, %328 ], [ %374, %373 ]
  %336 = getelementptr inbounds nuw i8, ptr %331, i64 %335
  %337 = load i8, ptr %336, align 1, !tbaa !35
  %338 = getelementptr inbounds nuw i16, ptr %330, i64 %335
  store i16 0, ptr %338, align 2, !tbaa !39
  %339 = icmp eq i8 %337, -1
  br i1 %339, label %373, label %340

340:                                              ; preds = %334
  %341 = zext i8 %337 to i64
  %342 = getelementptr inbounds nuw i8, ptr %332, i64 %341
  %343 = load i8, ptr %342, align 1, !tbaa !35
  %344 = zext i8 %343 to i32
  %345 = and i32 %344, 240
  %346 = and i32 %344, 15
  %347 = getelementptr inbounds nuw i8, ptr %333, i64 %341
  %348 = load i8, ptr %347, align 1, !tbaa !35
  %349 = zext i8 %348 to i32
  %350 = icmp eq i32 %346, 0
  br i1 %350, label %373, label %351

351:                                              ; preds = %340
  %352 = add nuw nsw i32 %346, %349
  %353 = icmp samesign ult i32 %352, 10
  br i1 %353, label %354, label %373

354:                                              ; preds = %351
  %355 = trunc nuw nsw i64 %335 to i32
  %356 = shl nuw nsw i32 %355, %349
  %357 = and i32 %356, 511
  %358 = sub nsw i32 9, %346
  %359 = lshr i32 %357, %358
  %360 = and i32 %356, 256
  %361 = icmp eq i32 %360, 0
  %362 = shl nsw i32 -1, %346
  %363 = or disjoint i32 %362, 1
  %364 = select i1 %361, i32 %363, i32 0
  %365 = add nsw i32 %364, %359
  %366 = add nsw i32 %365, 128
  %367 = icmp ult i32 %366, 256
  br i1 %367, label %368, label %373

368:                                              ; preds = %354
  %369 = shl nsw i32 %365, 8
  %370 = or disjoint i32 %369, %345
  %371 = or disjoint i32 %370, %352
  %372 = trunc nsw i32 %371 to i16
  store i16 %372, ptr %338, align 2, !tbaa !39
  br label %373

373:                                              ; preds = %368, %354, %351, %340, %334
  %374 = add nuw nsw i64 %335, 1
  %375 = icmp eq i64 %374, 512
  br i1 %375, label %376, label %334, !llvm.loop !67

376:                                              ; preds = %373, %327
  %377 = sub i32 %258, %252
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %378 = icmp sgt i32 %377, 0
  br i1 %378, label %151, label %379, !llvm.loop !68

379:                                              ; preds = %376, %142
  %380 = phi i32 [ %145, %142 ], [ %377, %376 ]
  %381 = icmp eq i32 %380, 0
  br label %561

382:                                              ; preds = %2
  %383 = and i32 %1, 240
  %384 = icmp eq i32 %383, 224
  %385 = icmp eq i32 %1, 254
  %386 = or i1 %385, %384
  br i1 %386, label %387, label %561

387:                                              ; preds = %382
  %388 = load ptr, ptr %0, align 8, !tbaa !21
  %389 = tail call fastcc i32 @stbi__get16be(ptr noundef %388) #17
  %390 = icmp samesign ult i32 %389, 2
  br i1 %390, label %561, label %391

391:                                              ; preds = %387
  %392 = icmp eq i32 %1, 224
  %393 = icmp samesign ugt i32 %389, 6
  %394 = select i1 %392, i1 %393, i1 false
  br i1 %394, label %395, label %454

395:                                              ; preds = %391, %441
  %396 = phi i64 [ %447, %441 ], [ 0, %391 ]
  %397 = phi i32 [ %446, %441 ], [ 1, %391 ]
  %398 = load ptr, ptr %0, align 8, !tbaa !21
  %399 = getelementptr inbounds nuw i8, ptr %398, i64 192
  %400 = load ptr, ptr %399, align 8, !tbaa !16
  %401 = getelementptr inbounds nuw i8, ptr %398, i64 200
  %402 = load ptr, ptr %401, align 8, !tbaa !18
  %403 = icmp ult ptr %400, %402
  br i1 %403, label %404, label %407

404:                                              ; preds = %395
  %405 = getelementptr inbounds nuw i8, ptr %400, i64 1
  store ptr %405, ptr %399, align 8, !tbaa !16
  %406 = load i8, ptr %400, align 1, !tbaa !35
  br label %441

407:                                              ; preds = %395
  %408 = getelementptr inbounds nuw i8, ptr %398, i64 48
  %409 = load i32, ptr %408, align 8, !tbaa !13
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %441, label %411

411:                                              ; preds = %407
  %412 = getelementptr inbounds nuw i8, ptr %398, i64 16
  %413 = load ptr, ptr %412, align 8, !tbaa !8
  %414 = getelementptr inbounds nuw i8, ptr %398, i64 40
  %415 = load ptr, ptr %414, align 8, !tbaa !33
  %416 = getelementptr inbounds nuw i8, ptr %398, i64 56
  %417 = getelementptr inbounds nuw i8, ptr %398, i64 52
  %418 = load i32, ptr %417, align 4, !tbaa !34
  %419 = tail call i32 %413(ptr noundef %415, ptr noundef nonnull %416, i32 noundef %418) #16
  %420 = load ptr, ptr %399, align 8, !tbaa !16
  %421 = getelementptr inbounds nuw i8, ptr %398, i64 208
  %422 = load ptr, ptr %421, align 8, !tbaa !15
  %423 = ptrtoint ptr %420 to i64
  %424 = ptrtoint ptr %422 to i64
  %425 = sub i64 %423, %424
  %426 = trunc i64 %425 to i32
  %427 = getelementptr inbounds nuw i8, ptr %398, i64 184
  %428 = load i32, ptr %427, align 8, !tbaa !14
  %429 = add i32 %428, %426
  store i32 %429, ptr %427, align 8, !tbaa !14
  %430 = icmp eq i32 %419, 0
  br i1 %430, label %431, label %433

431:                                              ; preds = %411
  store i32 0, ptr %408, align 8, !tbaa !13
  %432 = getelementptr inbounds nuw i8, ptr %398, i64 57
  store i8 0, ptr %416, align 8, !tbaa !35
  br label %437

433:                                              ; preds = %411
  %434 = sext i32 %419 to i64
  %435 = getelementptr inbounds i8, ptr %416, i64 %434
  %436 = load i8, ptr %416, align 1, !tbaa !35
  br label %437

437:                                              ; preds = %433, %431
  %438 = phi i8 [ 0, %431 ], [ %436, %433 ]
  %439 = phi ptr [ %432, %431 ], [ %435, %433 ]
  store ptr %439, ptr %401, align 8, !tbaa !18
  %440 = getelementptr inbounds nuw i8, ptr %398, i64 57
  store ptr %440, ptr %399, align 8, !tbaa !16
  br label %441

441:                                              ; preds = %404, %407, %437
  %442 = phi i8 [ %406, %404 ], [ %438, %437 ], [ 0, %407 ]
  %443 = getelementptr inbounds nuw i8, ptr @stbi__process_marker.tag, i64 %396
  %444 = load i8, ptr %443, align 1, !tbaa !35
  %445 = icmp eq i8 %442, %444
  %446 = select i1 %445, i32 %397, i32 0
  %447 = add nuw nsw i64 %396, 1
  %448 = icmp eq i64 %447, 5
  br i1 %448, label %449, label %395, !llvm.loop !69

449:                                              ; preds = %441
  %450 = add nsw i32 %389, -7
  %451 = icmp eq i32 %446, 0
  br i1 %451, label %528, label %452

452:                                              ; preds = %449
  %453 = getelementptr inbounds nuw i8, ptr %0, i64 18504
  store i32 1, ptr %453, align 8, !tbaa !54
  br label %528

454:                                              ; preds = %391
  %455 = add nsw i32 %389, -2
  %456 = icmp eq i32 %1, 238
  %457 = icmp samesign ugt i32 %389, 13
  %458 = select i1 %456, i1 %457, i1 false
  br i1 %458, label %459, label %528

459:                                              ; preds = %454, %505
  %460 = phi i64 [ %511, %505 ], [ 0, %454 ]
  %461 = phi i32 [ %510, %505 ], [ 1, %454 ]
  %462 = load ptr, ptr %0, align 8, !tbaa !21
  %463 = getelementptr inbounds nuw i8, ptr %462, i64 192
  %464 = load ptr, ptr %463, align 8, !tbaa !16
  %465 = getelementptr inbounds nuw i8, ptr %462, i64 200
  %466 = load ptr, ptr %465, align 8, !tbaa !18
  %467 = icmp ult ptr %464, %466
  br i1 %467, label %468, label %471

468:                                              ; preds = %459
  %469 = getelementptr inbounds nuw i8, ptr %464, i64 1
  store ptr %469, ptr %463, align 8, !tbaa !16
  %470 = load i8, ptr %464, align 1, !tbaa !35
  br label %505

471:                                              ; preds = %459
  %472 = getelementptr inbounds nuw i8, ptr %462, i64 48
  %473 = load i32, ptr %472, align 8, !tbaa !13
  %474 = icmp eq i32 %473, 0
  br i1 %474, label %505, label %475

475:                                              ; preds = %471
  %476 = getelementptr inbounds nuw i8, ptr %462, i64 16
  %477 = load ptr, ptr %476, align 8, !tbaa !8
  %478 = getelementptr inbounds nuw i8, ptr %462, i64 40
  %479 = load ptr, ptr %478, align 8, !tbaa !33
  %480 = getelementptr inbounds nuw i8, ptr %462, i64 56
  %481 = getelementptr inbounds nuw i8, ptr %462, i64 52
  %482 = load i32, ptr %481, align 4, !tbaa !34
  %483 = tail call i32 %477(ptr noundef %479, ptr noundef nonnull %480, i32 noundef %482) #16
  %484 = load ptr, ptr %463, align 8, !tbaa !16
  %485 = getelementptr inbounds nuw i8, ptr %462, i64 208
  %486 = load ptr, ptr %485, align 8, !tbaa !15
  %487 = ptrtoint ptr %484 to i64
  %488 = ptrtoint ptr %486 to i64
  %489 = sub i64 %487, %488
  %490 = trunc i64 %489 to i32
  %491 = getelementptr inbounds nuw i8, ptr %462, i64 184
  %492 = load i32, ptr %491, align 8, !tbaa !14
  %493 = add i32 %492, %490
  store i32 %493, ptr %491, align 8, !tbaa !14
  %494 = icmp eq i32 %483, 0
  br i1 %494, label %495, label %497

495:                                              ; preds = %475
  store i32 0, ptr %472, align 8, !tbaa !13
  %496 = getelementptr inbounds nuw i8, ptr %462, i64 57
  store i8 0, ptr %480, align 8, !tbaa !35
  br label %501

497:                                              ; preds = %475
  %498 = sext i32 %483 to i64
  %499 = getelementptr inbounds i8, ptr %480, i64 %498
  %500 = load i8, ptr %480, align 1, !tbaa !35
  br label %501

501:                                              ; preds = %497, %495
  %502 = phi i8 [ 0, %495 ], [ %500, %497 ]
  %503 = phi ptr [ %496, %495 ], [ %499, %497 ]
  store ptr %503, ptr %465, align 8, !tbaa !18
  %504 = getelementptr inbounds nuw i8, ptr %462, i64 57
  store ptr %504, ptr %463, align 8, !tbaa !16
  br label %505

505:                                              ; preds = %468, %471, %501
  %506 = phi i8 [ %470, %468 ], [ %502, %501 ], [ 0, %471 ]
  %507 = getelementptr inbounds nuw i8, ptr @stbi__process_marker.tag.1, i64 %460
  %508 = load i8, ptr %507, align 1, !tbaa !35
  %509 = icmp eq i8 %506, %508
  %510 = select i1 %509, i32 %461, i32 0
  %511 = add nuw nsw i64 %460, 1
  %512 = icmp eq i64 %511, 6
  br i1 %512, label %513, label %459, !llvm.loop !70

513:                                              ; preds = %505
  %514 = add nsw i32 %389, -8
  %515 = icmp eq i32 %510, 0
  br i1 %515, label %528, label %516

516:                                              ; preds = %513
  %517 = load ptr, ptr %0, align 8, !tbaa !21
  %518 = tail call fastcc zeroext i8 @stbi__get8(ptr noundef %517) #17
  %519 = load ptr, ptr %0, align 8, !tbaa !21
  %520 = tail call fastcc i32 @stbi__get16be(ptr noundef %519) #17
  %521 = load ptr, ptr %0, align 8, !tbaa !21
  %522 = tail call fastcc i32 @stbi__get16be(ptr noundef %521) #17
  %523 = load ptr, ptr %0, align 8, !tbaa !21
  %524 = tail call fastcc zeroext i8 @stbi__get8(ptr noundef %523) #17
  %525 = zext i8 %524 to i32
  %526 = getelementptr inbounds nuw i8, ptr %0, i64 18508
  store i32 %525, ptr %526, align 4, !tbaa !55
  %527 = add nsw i32 %389, -14
  br label %528

528:                                              ; preds = %513, %516, %449, %452, %454
  %529 = phi i32 [ %455, %454 ], [ %450, %449 ], [ %450, %452 ], [ %527, %516 ], [ %514, %513 ]
  %530 = load ptr, ptr %0, align 8, !tbaa !21
  %531 = icmp eq i32 %529, 0
  br i1 %531, label %561, label %532

532:                                              ; preds = %528
  %533 = getelementptr inbounds nuw i8, ptr %530, i64 16
  %534 = load ptr, ptr %533, align 8, !tbaa !8
  %535 = icmp eq ptr %534, null
  br i1 %535, label %536, label %539

536:                                              ; preds = %532
  %537 = getelementptr inbounds nuw i8, ptr %530, i64 192
  %538 = load ptr, ptr %537, align 8, !tbaa !16
  br label %555

539:                                              ; preds = %532
  %540 = getelementptr inbounds nuw i8, ptr %530, i64 200
  %541 = load ptr, ptr %540, align 8, !tbaa !18
  %542 = getelementptr inbounds nuw i8, ptr %530, i64 192
  %543 = load ptr, ptr %542, align 8, !tbaa !16
  %544 = ptrtoint ptr %541 to i64
  %545 = ptrtoint ptr %543 to i64
  %546 = sub i64 %544, %545
  %547 = trunc i64 %546 to i32
  %548 = icmp sgt i32 %529, %547
  br i1 %548, label %549, label %555

549:                                              ; preds = %539
  store ptr %541, ptr %542, align 8, !tbaa !16
  %550 = getelementptr inbounds nuw i8, ptr %530, i64 24
  %551 = load ptr, ptr %550, align 8, !tbaa !36
  %552 = getelementptr inbounds nuw i8, ptr %530, i64 40
  %553 = load ptr, ptr %552, align 8, !tbaa !33
  %554 = sub i32 %529, %547
  tail call void %551(ptr noundef %553, i32 noundef %554) #16
  br label %561

555:                                              ; preds = %539, %536
  %556 = phi ptr [ %538, %536 ], [ %543, %539 ]
  %557 = getelementptr inbounds nuw i8, ptr %530, i64 192
  %558 = zext nneg i32 %529 to i64
  %559 = getelementptr inbounds nuw i8, ptr %556, i64 %558
  store ptr %559, ptr %557, align 8, !tbaa !16
  br label %561

560:                                              ; preds = %265, %255, %196, %261
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %561

561:                                              ; preds = %65, %555, %549, %528, %382, %387, %560, %5, %2, %379, %139, %9
  %562 = phi i1 [ false, %5 ], [ true, %555 ], [ false, %387 ], [ %381, %379 ], [ false, %2 ], [ true, %9 ], [ false, %382 ], [ %141, %139 ], [ false, %560 ], [ true, %528 ], [ true, %549 ], [ false, %65 ]
  %563 = zext i1 %562 to i32
  ret i32 %563
}

; Function Attrs: nounwind
define internal fastcc range(i32 0, 2) i32 @stbi__process_frame_header(ptr noundef nonnull captures(none) %0, i32 noundef range(i32 0, 3) %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !21
  %4 = tail call fastcc i32 @stbi__get16be(ptr noundef %3) #17
  %5 = icmp samesign ult i32 %4, 11
  br i1 %5, label %466, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 192
  %8 = load ptr, ptr %7, align 8, !tbaa !16
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 200
  %10 = load ptr, ptr %9, align 8, !tbaa !18
  %11 = icmp ult ptr %8, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %6
  %13 = getelementptr inbounds nuw i8, ptr %8, i64 1
  store ptr %13, ptr %7, align 8, !tbaa !16
  %14 = load i8, ptr %8, align 1, !tbaa !35
  br label %49

15:                                               ; preds = %6
  %16 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %17 = load i32, ptr %16, align 8, !tbaa !13
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %466, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %21 = load ptr, ptr %20, align 8, !tbaa !8
  %22 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %23 = load ptr, ptr %22, align 8, !tbaa !33
  %24 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %25 = getelementptr inbounds nuw i8, ptr %3, i64 52
  %26 = load i32, ptr %25, align 4, !tbaa !34
  %27 = tail call i32 %21(ptr noundef %23, ptr noundef nonnull %24, i32 noundef %26) #16
  %28 = load ptr, ptr %7, align 8, !tbaa !16
  %29 = getelementptr inbounds nuw i8, ptr %3, i64 208
  %30 = load ptr, ptr %29, align 8, !tbaa !15
  %31 = ptrtoint ptr %28 to i64
  %32 = ptrtoint ptr %30 to i64
  %33 = sub i64 %31, %32
  %34 = trunc i64 %33 to i32
  %35 = getelementptr inbounds nuw i8, ptr %3, i64 184
  %36 = load i32, ptr %35, align 8, !tbaa !14
  %37 = add i32 %36, %34
  store i32 %37, ptr %35, align 8, !tbaa !14
  %38 = icmp eq i32 %27, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %19
  store i32 0, ptr %16, align 8, !tbaa !13
  %40 = getelementptr inbounds nuw i8, ptr %3, i64 57
  store i8 0, ptr %24, align 8, !tbaa !35
  br label %45

41:                                               ; preds = %19
  %42 = sext i32 %27 to i64
  %43 = getelementptr inbounds i8, ptr %24, i64 %42
  %44 = load i8, ptr %24, align 1, !tbaa !35
  br label %45

45:                                               ; preds = %41, %39
  %46 = phi i8 [ 0, %39 ], [ %44, %41 ]
  %47 = phi ptr [ %40, %39 ], [ %43, %41 ]
  store ptr %47, ptr %9, align 8, !tbaa !18
  %48 = getelementptr inbounds nuw i8, ptr %3, i64 57
  store ptr %48, ptr %7, align 8, !tbaa !16
  br label %49

49:                                               ; preds = %12, %45
  %50 = phi i8 [ %14, %12 ], [ %46, %45 ]
  %51 = icmp eq i8 %50, 8
  br i1 %51, label %52, label %466

52:                                               ; preds = %49
  %53 = tail call fastcc i32 @stbi__get16be(ptr noundef nonnull %3) #17
  %54 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %53, ptr %54, align 4, !tbaa !25
  %55 = icmp eq i32 %53, 0
  br i1 %55, label %466, label %56

56:                                               ; preds = %52
  %57 = tail call fastcc i32 @stbi__get16be(ptr noundef nonnull %3) #17
  store i32 %57, ptr %3, align 8, !tbaa !24
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %466, label %59

59:                                               ; preds = %56
  %60 = load i32, ptr %54, align 4, !tbaa !25
  %61 = icmp ugt i32 %60, 4096
  %62 = icmp samesign ugt i32 %57, 4096
  %63 = select i1 %61, i1 true, i1 %62
  br i1 %63, label %466, label %64

64:                                               ; preds = %59
  %65 = load ptr, ptr %7, align 8, !tbaa !16
  %66 = load ptr, ptr %9, align 8, !tbaa !18
  %67 = icmp ult ptr %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = getelementptr inbounds nuw i8, ptr %65, i64 1
  store ptr %69, ptr %7, align 8, !tbaa !16
  %70 = load i8, ptr %65, align 1, !tbaa !35
  br label %105

71:                                               ; preds = %64
  %72 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %73 = load i32, ptr %72, align 8, !tbaa !13
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %466, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %77 = load ptr, ptr %76, align 8, !tbaa !8
  %78 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %79 = load ptr, ptr %78, align 8, !tbaa !33
  %80 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %81 = getelementptr inbounds nuw i8, ptr %3, i64 52
  %82 = load i32, ptr %81, align 4, !tbaa !34
  %83 = tail call i32 %77(ptr noundef %79, ptr noundef nonnull %80, i32 noundef %82) #16
  %84 = load ptr, ptr %7, align 8, !tbaa !16
  %85 = getelementptr inbounds nuw i8, ptr %3, i64 208
  %86 = load ptr, ptr %85, align 8, !tbaa !15
  %87 = ptrtoint ptr %84 to i64
  %88 = ptrtoint ptr %86 to i64
  %89 = sub i64 %87, %88
  %90 = trunc i64 %89 to i32
  %91 = getelementptr inbounds nuw i8, ptr %3, i64 184
  %92 = load i32, ptr %91, align 8, !tbaa !14
  %93 = add i32 %92, %90
  store i32 %93, ptr %91, align 8, !tbaa !14
  %94 = icmp eq i32 %83, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %75
  store i32 0, ptr %72, align 8, !tbaa !13
  %96 = getelementptr inbounds nuw i8, ptr %3, i64 57
  store i8 0, ptr %80, align 8, !tbaa !35
  br label %101

97:                                               ; preds = %75
  %98 = sext i32 %83 to i64
  %99 = getelementptr inbounds i8, ptr %80, i64 %98
  %100 = load i8, ptr %80, align 1, !tbaa !35
  br label %101

101:                                              ; preds = %97, %95
  %102 = phi i8 [ 0, %95 ], [ %100, %97 ]
  %103 = phi ptr [ %96, %95 ], [ %99, %97 ]
  store ptr %103, ptr %9, align 8, !tbaa !18
  %104 = getelementptr inbounds nuw i8, ptr %3, i64 57
  store ptr %104, ptr %7, align 8, !tbaa !16
  br label %105

105:                                              ; preds = %68, %101
  %106 = phi ptr [ %66, %68 ], [ %103, %101 ]
  %107 = phi ptr [ %69, %68 ], [ %104, %101 ]
  %108 = phi i8 [ %70, %68 ], [ %102, %101 ]
  %109 = zext i8 %108 to i32
  switch i8 %108, label %466 [
    i8 4, label %110
    i8 3, label %110
    i8 1, label %110
  ]

110:                                              ; preds = %105, %105, %105
  %111 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %109, ptr %111, align 8, !tbaa !71
  %112 = getelementptr inbounds nuw i8, ptr %0, i64 18080
  %113 = zext nneg i8 %108 to i64
  %114 = and i64 %113, 3
  %115 = add i8 %108, -1
  %116 = icmp ult i8 %115, 3
  br i1 %116, label %139, label %117

117:                                              ; preds = %110
  %118 = and i64 %113, 124
  br label %119

119:                                              ; preds = %119, %117
  %120 = phi i64 [ 0, %117 ], [ %134, %119 ]
  %121 = phi i64 [ 0, %117 ], [ %135, %119 ]
  %122 = getelementptr inbounds nuw %struct.anon, ptr %112, i64 %120
  %123 = getelementptr inbounds nuw i8, ptr %122, i64 48
  store ptr null, ptr %123, align 8, !tbaa !72
  %124 = getelementptr inbounds nuw i8, ptr %122, i64 72
  store ptr null, ptr %124, align 8, !tbaa !75
  %125 = getelementptr inbounds nuw %struct.anon, ptr %112, i64 %120
  %126 = getelementptr inbounds nuw i8, ptr %125, i64 144
  store ptr null, ptr %126, align 8, !tbaa !72
  %127 = getelementptr inbounds nuw i8, ptr %125, i64 168
  store ptr null, ptr %127, align 8, !tbaa !75
  %128 = getelementptr inbounds nuw %struct.anon, ptr %112, i64 %120
  %129 = getelementptr inbounds nuw i8, ptr %128, i64 240
  store ptr null, ptr %129, align 8, !tbaa !72
  %130 = getelementptr inbounds nuw i8, ptr %128, i64 264
  store ptr null, ptr %130, align 8, !tbaa !75
  %131 = getelementptr inbounds nuw %struct.anon, ptr %112, i64 %120
  %132 = getelementptr inbounds nuw i8, ptr %131, i64 336
  store ptr null, ptr %132, align 8, !tbaa !72
  %133 = getelementptr inbounds nuw i8, ptr %131, i64 360
  store ptr null, ptr %133, align 8, !tbaa !75
  %134 = add nuw nsw i64 %120, 4
  %135 = add i64 %121, 4
  %136 = icmp eq i64 %135, %118
  br i1 %136, label %137, label %119, !llvm.loop !76

137:                                              ; preds = %119
  %138 = icmp eq i64 %114, 0
  br i1 %138, label %151, label %139

139:                                              ; preds = %137, %110
  %140 = phi i64 [ 0, %110 ], [ %134, %137 ]
  %141 = icmp ne i64 %114, 0
  tail call void @llvm.assume(i1 %141)
  br label %142

142:                                              ; preds = %142, %139
  %143 = phi i64 [ %140, %139 ], [ %148, %142 ]
  %144 = phi i64 [ 0, %139 ], [ %149, %142 ]
  %145 = getelementptr inbounds nuw %struct.anon, ptr %112, i64 %143
  %146 = getelementptr inbounds nuw i8, ptr %145, i64 48
  store ptr null, ptr %146, align 8, !tbaa !72
  %147 = getelementptr inbounds nuw i8, ptr %145, i64 72
  store ptr null, ptr %147, align 8, !tbaa !75
  %148 = add nuw nsw i64 %143, 1
  %149 = add i64 %144, 1
  %150 = icmp eq i64 %149, %114
  br i1 %150, label %151, label %142, !llvm.loop !77

151:                                              ; preds = %142, %137
  %152 = mul nuw nsw i32 %109, 3
  %153 = add nuw nsw i32 %152, 8
  %154 = icmp eq i32 %4, %153
  br i1 %154, label %155, label %466

155:                                              ; preds = %151
  %156 = getelementptr inbounds nuw i8, ptr %0, i64 18512
  store i32 0, ptr %156, align 8, !tbaa !79
  %157 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %158 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %159 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %160 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %161 = getelementptr inbounds nuw i8, ptr %3, i64 52
  %162 = getelementptr inbounds nuw i8, ptr %3, i64 208
  %163 = getelementptr inbounds nuw i8, ptr %3, i64 184
  %164 = getelementptr inbounds nuw i8, ptr %3, i64 57
  %165 = getelementptr inbounds nuw i8, ptr %0, i64 18080
  br label %166

166:                                              ; preds = %155, %302
  %167 = phi ptr [ %106, %155 ], [ %303, %302 ]
  %168 = phi i32 [ %109, %155 ], [ %306, %302 ]
  %169 = phi ptr [ %107, %155 ], [ %304, %302 ]
  %170 = phi i64 [ 0, %155 ], [ %305, %302 ]
  %171 = icmp ult ptr %169, %167
  br i1 %171, label %172, label %175

172:                                              ; preds = %166
  %173 = getelementptr inbounds nuw i8, ptr %169, i64 1
  store ptr %173, ptr %7, align 8, !tbaa !16
  %174 = load i8, ptr %169, align 1, !tbaa !35
  br label %201

175:                                              ; preds = %166
  %176 = load i32, ptr %157, align 8, !tbaa !13
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %201, label %178

178:                                              ; preds = %175
  %179 = load ptr, ptr %158, align 8, !tbaa !8
  %180 = load ptr, ptr %159, align 8, !tbaa !33
  %181 = load i32, ptr %161, align 4, !tbaa !34
  %182 = tail call i32 %179(ptr noundef %180, ptr noundef nonnull %160, i32 noundef %181) #16
  %183 = load ptr, ptr %7, align 8, !tbaa !16
  %184 = load ptr, ptr %162, align 8, !tbaa !15
  %185 = ptrtoint ptr %183 to i64
  %186 = ptrtoint ptr %184 to i64
  %187 = sub i64 %185, %186
  %188 = trunc i64 %187 to i32
  %189 = load i32, ptr %163, align 8, !tbaa !14
  %190 = add i32 %189, %188
  store i32 %190, ptr %163, align 8, !tbaa !14
  %191 = icmp eq i32 %182, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %178
  store i32 0, ptr %157, align 8, !tbaa !13
  store i8 0, ptr %160, align 8, !tbaa !35
  br label %197

193:                                              ; preds = %178
  %194 = sext i32 %182 to i64
  %195 = getelementptr inbounds i8, ptr %160, i64 %194
  %196 = load i8, ptr %160, align 1, !tbaa !35
  br label %197

197:                                              ; preds = %193, %192
  %198 = phi i8 [ 0, %192 ], [ %196, %193 ]
  %199 = phi ptr [ %164, %192 ], [ %195, %193 ]
  store ptr %199, ptr %9, align 8, !tbaa !18
  store ptr %164, ptr %7, align 8, !tbaa !16
  %200 = load i32, ptr %111, align 8, !tbaa !71
  br label %201

201:                                              ; preds = %172, %175, %197
  %202 = phi ptr [ %167, %172 ], [ %199, %197 ], [ %167, %175 ]
  %203 = phi ptr [ %173, %172 ], [ %164, %197 ], [ %169, %175 ]
  %204 = phi i32 [ %168, %172 ], [ %200, %197 ], [ %168, %175 ]
  %205 = phi i8 [ %174, %172 ], [ %198, %197 ], [ 0, %175 ]
  %206 = zext i8 %205 to i32
  %207 = getelementptr inbounds nuw %struct.anon, ptr %165, i64 %170
  store i32 %206, ptr %207, align 8, !tbaa !80
  %208 = icmp eq i32 %204, 3
  br i1 %208, label %209, label %216

209:                                              ; preds = %201
  %210 = getelementptr inbounds nuw i8, ptr @stbi__process_frame_header.rgb, i64 %170
  %211 = load i8, ptr %210, align 1, !tbaa !35
  %212 = icmp eq i8 %205, %211
  br i1 %212, label %213, label %216

213:                                              ; preds = %209
  %214 = load i32, ptr %156, align 8, !tbaa !79
  %215 = add i32 %214, 1
  store i32 %215, ptr %156, align 8, !tbaa !79
  br label %216

216:                                              ; preds = %213, %209, %201
  %217 = icmp ult ptr %203, %202
  br i1 %217, label %218, label %221

218:                                              ; preds = %216
  %219 = getelementptr inbounds nuw i8, ptr %203, i64 1
  store ptr %219, ptr %7, align 8, !tbaa !16
  %220 = load i8, ptr %203, align 1, !tbaa !35
  br label %248

221:                                              ; preds = %216
  %222 = load i32, ptr %157, align 8, !tbaa !13
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %226

224:                                              ; preds = %221
  %225 = getelementptr inbounds nuw i8, ptr %207, i64 4
  store i32 0, ptr %225, align 4, !tbaa !81
  br label %466

226:                                              ; preds = %221
  %227 = load ptr, ptr %158, align 8, !tbaa !8
  %228 = load ptr, ptr %159, align 8, !tbaa !33
  %229 = load i32, ptr %161, align 4, !tbaa !34
  %230 = tail call i32 %227(ptr noundef %228, ptr noundef nonnull %160, i32 noundef %229) #16
  %231 = load ptr, ptr %7, align 8, !tbaa !16
  %232 = load ptr, ptr %162, align 8, !tbaa !15
  %233 = ptrtoint ptr %231 to i64
  %234 = ptrtoint ptr %232 to i64
  %235 = sub i64 %233, %234
  %236 = trunc i64 %235 to i32
  %237 = load i32, ptr %163, align 8, !tbaa !14
  %238 = add i32 %237, %236
  store i32 %238, ptr %163, align 8, !tbaa !14
  %239 = icmp eq i32 %230, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %226
  store i32 0, ptr %157, align 8, !tbaa !13
  store i8 0, ptr %160, align 8, !tbaa !35
  br label %245

241:                                              ; preds = %226
  %242 = sext i32 %230 to i64
  %243 = getelementptr inbounds i8, ptr %160, i64 %242
  %244 = load i8, ptr %160, align 1, !tbaa !35
  br label %245

245:                                              ; preds = %241, %240
  %246 = phi i8 [ 0, %240 ], [ %244, %241 ]
  %247 = phi ptr [ %164, %240 ], [ %243, %241 ]
  store ptr %247, ptr %9, align 8, !tbaa !18
  store ptr %164, ptr %7, align 8, !tbaa !16
  br label %248

248:                                              ; preds = %218, %245
  %249 = phi ptr [ %202, %218 ], [ %247, %245 ]
  %250 = phi ptr [ %219, %218 ], [ %164, %245 ]
  %251 = phi i8 [ %220, %218 ], [ %246, %245 ]
  %252 = zext i8 %251 to i32
  %253 = lshr i32 %252, 4
  %254 = getelementptr inbounds nuw i8, ptr %207, i64 4
  store i32 %253, ptr %254, align 4, !tbaa !81
  %255 = icmp eq i32 %253, 0
  %256 = icmp ugt i8 %251, 79
  %257 = or i1 %256, %255
  br i1 %257, label %466, label %258

258:                                              ; preds = %248
  %259 = and i32 %252, 15
  %260 = getelementptr inbounds nuw i8, ptr %207, i64 8
  store i32 %259, ptr %260, align 8, !tbaa !82
  %261 = add nsw i32 %259, -5
  %262 = icmp ult i32 %261, -4
  br i1 %262, label %466, label %263

263:                                              ; preds = %258
  %264 = icmp ult ptr %250, %249
  br i1 %264, label %265, label %268

265:                                              ; preds = %263
  %266 = getelementptr inbounds nuw i8, ptr %250, i64 1
  store ptr %266, ptr %7, align 8, !tbaa !16
  %267 = load i8, ptr %250, align 1, !tbaa !35
  br label %295

268:                                              ; preds = %263
  %269 = load i32, ptr %157, align 8, !tbaa !13
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %271, label %273

271:                                              ; preds = %268
  %272 = getelementptr inbounds nuw i8, ptr %207, i64 12
  store i32 0, ptr %272, align 4, !tbaa !83
  br label %302

273:                                              ; preds = %268
  %274 = load ptr, ptr %158, align 8, !tbaa !8
  %275 = load ptr, ptr %159, align 8, !tbaa !33
  %276 = load i32, ptr %161, align 4, !tbaa !34
  %277 = tail call i32 %274(ptr noundef %275, ptr noundef nonnull %160, i32 noundef %276) #16
  %278 = load ptr, ptr %7, align 8, !tbaa !16
  %279 = load ptr, ptr %162, align 8, !tbaa !15
  %280 = ptrtoint ptr %278 to i64
  %281 = ptrtoint ptr %279 to i64
  %282 = sub i64 %280, %281
  %283 = trunc i64 %282 to i32
  %284 = load i32, ptr %163, align 8, !tbaa !14
  %285 = add i32 %284, %283
  store i32 %285, ptr %163, align 8, !tbaa !14
  %286 = icmp eq i32 %277, 0
  br i1 %286, label %287, label %288

287:                                              ; preds = %273
  store i32 0, ptr %157, align 8, !tbaa !13
  store i8 0, ptr %160, align 8, !tbaa !35
  br label %292

288:                                              ; preds = %273
  %289 = sext i32 %277 to i64
  %290 = getelementptr inbounds i8, ptr %160, i64 %289
  %291 = load i8, ptr %160, align 1, !tbaa !35
  br label %292

292:                                              ; preds = %288, %287
  %293 = phi i8 [ 0, %287 ], [ %291, %288 ]
  %294 = phi ptr [ %164, %287 ], [ %290, %288 ]
  store ptr %294, ptr %9, align 8, !tbaa !18
  store ptr %164, ptr %7, align 8, !tbaa !16
  br label %295

295:                                              ; preds = %265, %292
  %296 = phi ptr [ %249, %265 ], [ %294, %292 ]
  %297 = phi ptr [ %266, %265 ], [ %164, %292 ]
  %298 = phi i8 [ %267, %265 ], [ %293, %292 ]
  %299 = zext i8 %298 to i32
  %300 = getelementptr inbounds nuw i8, ptr %207, i64 12
  store i32 %299, ptr %300, align 4, !tbaa !83
  %301 = icmp ugt i8 %298, 3
  br i1 %301, label %466, label %302

302:                                              ; preds = %271, %295
  %303 = phi ptr [ %249, %271 ], [ %296, %295 ]
  %304 = phi ptr [ %250, %271 ], [ %297, %295 ]
  %305 = add nuw nsw i64 %170, 1
  %306 = load i32, ptr %111, align 8, !tbaa !71
  %307 = sext i32 %306 to i64
  %308 = icmp slt i64 %305, %307
  br i1 %308, label %166, label %309, !llvm.loop !84

309:                                              ; preds = %302
  %310 = icmp eq i32 %1, 0
  br i1 %310, label %311, label %466

311:                                              ; preds = %309
  %312 = load i32, ptr %3, align 8, !tbaa !24
  %313 = load i32, ptr %54, align 4, !tbaa !25
  %314 = tail call fastcc i32 @stbi__mad3sizes_valid(i32 noundef %312, i32 noundef %313, i32 noundef %306, i32 noundef 0) #17
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %466, label %316

316:                                              ; preds = %311
  %317 = icmp sgt i32 %306, 0
  br i1 %317, label %318, label %381

318:                                              ; preds = %316
  %319 = getelementptr inbounds nuw i8, ptr %0, i64 18080
  %320 = zext nneg i32 %306 to i64
  %321 = and i64 %320, 1
  %322 = icmp eq i32 %306, 1
  br i1 %322, label %327, label %323

323:                                              ; preds = %318
  %324 = and i64 %320, 2147483646
  br label %344

325:                                              ; preds = %344
  %326 = icmp eq i64 %321, 0
  br i1 %326, label %339, label %327

327:                                              ; preds = %325, %318
  %328 = phi i64 [ 0, %318 ], [ %363, %325 ]
  %329 = phi i32 [ 1, %318 ], [ %362, %325 ]
  %330 = phi i32 [ 1, %318 ], [ %359, %325 ]
  %331 = icmp ne i64 %321, 0
  tail call void @llvm.assume(i1 %331)
  %332 = getelementptr inbounds nuw %struct.anon, ptr %319, i64 %328
  %333 = getelementptr inbounds nuw i8, ptr %332, i64 4
  %334 = load i32, ptr %333, align 4, !tbaa !81
  %335 = tail call i32 @llvm.smax.i32(i32 %334, i32 %330)
  %336 = getelementptr inbounds nuw i8, ptr %332, i64 8
  %337 = load i32, ptr %336, align 8, !tbaa !82
  %338 = tail call i32 @llvm.smax.i32(i32 %337, i32 %329)
  br label %339

339:                                              ; preds = %325, %327
  %340 = phi i32 [ %359, %325 ], [ %335, %327 ]
  %341 = phi i32 [ %362, %325 ], [ %338, %327 ]
  %342 = getelementptr inbounds nuw i8, ptr %0, i64 18080
  %343 = zext nneg i32 %306 to i64
  br label %369

344:                                              ; preds = %344, %323
  %345 = phi i64 [ 0, %323 ], [ %363, %344 ]
  %346 = phi i32 [ 1, %323 ], [ %362, %344 ]
  %347 = phi i32 [ 1, %323 ], [ %359, %344 ]
  %348 = phi i64 [ 0, %323 ], [ %364, %344 ]
  %349 = getelementptr inbounds nuw %struct.anon, ptr %319, i64 %345
  %350 = getelementptr inbounds nuw i8, ptr %349, i64 4
  %351 = load i32, ptr %350, align 4, !tbaa !81
  %352 = tail call i32 @llvm.smax.i32(i32 %351, i32 %347)
  %353 = getelementptr inbounds nuw i8, ptr %349, i64 8
  %354 = load i32, ptr %353, align 8, !tbaa !82
  %355 = tail call i32 @llvm.smax.i32(i32 %354, i32 %346)
  %356 = getelementptr inbounds nuw %struct.anon, ptr %319, i64 %345
  %357 = getelementptr inbounds nuw i8, ptr %356, i64 100
  %358 = load i32, ptr %357, align 4, !tbaa !81
  %359 = tail call i32 @llvm.smax.i32(i32 %358, i32 %352)
  %360 = getelementptr inbounds nuw i8, ptr %356, i64 104
  %361 = load i32, ptr %360, align 8, !tbaa !82
  %362 = tail call i32 @llvm.smax.i32(i32 %361, i32 %355)
  %363 = add nuw nsw i64 %345, 2
  %364 = add i64 %348, 2
  %365 = icmp eq i64 %364, %324
  br i1 %365, label %325, label %344, !llvm.loop !85

366:                                              ; preds = %376
  %367 = add nuw nsw i64 %370, 1
  %368 = icmp eq i64 %367, %343
  br i1 %368, label %381, label %369, !llvm.loop !86

369:                                              ; preds = %339, %366
  %370 = phi i64 [ 0, %339 ], [ %367, %366 ]
  %371 = getelementptr inbounds nuw %struct.anon, ptr %342, i64 %370
  %372 = getelementptr inbounds nuw i8, ptr %371, i64 4
  %373 = load i32, ptr %372, align 4, !tbaa !81
  %374 = srem i32 %340, %373
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %376, label %466

376:                                              ; preds = %369
  %377 = getelementptr inbounds nuw i8, ptr %371, i64 8
  %378 = load i32, ptr %377, align 8, !tbaa !82
  %379 = srem i32 %341, %378
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %366, label %466

381:                                              ; preds = %366, %316
  %382 = phi i32 [ 1, %316 ], [ %341, %366 ]
  %383 = phi i32 [ 1, %316 ], [ %340, %366 ]
  %384 = getelementptr inbounds nuw i8, ptr %0, i64 18056
  store i32 %383, ptr %384, align 8, !tbaa !87
  %385 = getelementptr inbounds nuw i8, ptr %0, i64 18060
  store i32 %382, ptr %385, align 4, !tbaa !88
  %386 = shl i32 %383, 3
  %387 = getelementptr inbounds nuw i8, ptr %0, i64 18072
  store i32 %386, ptr %387, align 8, !tbaa !89
  %388 = shl i32 %382, 3
  %389 = getelementptr inbounds nuw i8, ptr %0, i64 18076
  store i32 %388, ptr %389, align 4, !tbaa !90
  %390 = add i32 %312, -1
  %391 = add i32 %390, %386
  %392 = udiv i32 %391, %386
  %393 = getelementptr inbounds nuw i8, ptr %0, i64 18064
  store i32 %392, ptr %393, align 8, !tbaa !91
  %394 = add i32 %313, -1
  %395 = add i32 %394, %388
  %396 = udiv i32 %395, %388
  %397 = getelementptr inbounds nuw i8, ptr %0, i64 18068
  store i32 %396, ptr %397, align 4, !tbaa !92
  br i1 %317, label %398, label %466

398:                                              ; preds = %381
  %399 = getelementptr inbounds nuw i8, ptr %0, i64 18080
  %400 = add nsw i32 %383, -1
  %401 = add nsw i32 %382, -1
  %402 = getelementptr inbounds nuw i8, ptr %0, i64 18480
  br label %403

403:                                              ; preds = %398, %461
  %404 = phi i64 [ 0, %398 ], [ %462, %461 ]
  %405 = load i32, ptr %3, align 8, !tbaa !24
  %406 = getelementptr inbounds nuw %struct.anon, ptr %399, i64 %404
  %407 = getelementptr inbounds nuw i8, ptr %406, i64 4
  %408 = load i32, ptr %407, align 4, !tbaa !81
  %409 = mul i32 %408, %405
  %410 = add i32 %400, %409
  %411 = udiv i32 %410, %383
  %412 = getelementptr inbounds nuw i8, ptr %406, i64 28
  store i32 %411, ptr %412, align 4, !tbaa !93
  %413 = load i32, ptr %54, align 4, !tbaa !25
  %414 = getelementptr inbounds nuw i8, ptr %406, i64 8
  %415 = load i32, ptr %414, align 8, !tbaa !82
  %416 = mul i32 %415, %413
  %417 = add i32 %401, %416
  %418 = udiv i32 %417, %382
  %419 = getelementptr inbounds nuw i8, ptr %406, i64 32
  store i32 %418, ptr %419, align 8, !tbaa !94
  %420 = load i32, ptr %393, align 8, !tbaa !91
  %421 = shl i32 %408, 3
  %422 = mul i32 %421, %420
  %423 = getelementptr inbounds nuw i8, ptr %406, i64 36
  store i32 %422, ptr %423, align 4, !tbaa !95
  %424 = load i32, ptr %397, align 4, !tbaa !92
  %425 = shl i32 %415, 3
  %426 = mul i32 %425, %424
  %427 = getelementptr inbounds nuw i8, ptr %406, i64 40
  store i32 %426, ptr %427, align 8, !tbaa !96
  %428 = getelementptr inbounds nuw i8, ptr %406, i64 80
  store ptr null, ptr %428, align 8, !tbaa !97
  %429 = getelementptr inbounds nuw i8, ptr %406, i64 64
  store ptr null, ptr %429, align 8, !tbaa !98
  %430 = getelementptr inbounds nuw i8, ptr %406, i64 72
  store ptr null, ptr %430, align 8, !tbaa !75
  %431 = tail call fastcc ptr @stbi__malloc_mad2(i32 noundef %422, i32 noundef %426, i32 noundef 15) #17
  %432 = getelementptr inbounds nuw i8, ptr %406, i64 56
  store ptr %431, ptr %432, align 8, !tbaa !99
  %433 = icmp eq ptr %431, null
  br i1 %433, label %434, label %437

434:                                              ; preds = %403
  %435 = trunc nuw nsw i64 %404 to i32
  %436 = add nuw nsw i32 %435, 1
  tail call fastcc void @stbi__free_jpeg_components(ptr noundef %0, i32 noundef %436) #17
  br label %466

437:                                              ; preds = %403
  %438 = ptrtoint ptr %431 to i64
  %439 = add i64 %438, 15
  %440 = and i64 %439, -16
  %441 = inttoptr i64 %440 to ptr
  %442 = getelementptr inbounds nuw i8, ptr %406, i64 48
  store ptr %441, ptr %442, align 8, !tbaa !72
  %443 = load i32, ptr %402, align 8, !tbaa !60
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %461, label %445

445:                                              ; preds = %437
  %446 = getelementptr inbounds nuw i8, ptr %406, i64 88
  %447 = load <2 x i32>, ptr %423, align 4, !tbaa !4
  %448 = sdiv <2 x i32> %447, splat (i32 8)
  store <2 x i32> %448, ptr %446, align 8, !tbaa !4
  %449 = extractelement <2 x i32> %447, i64 0
  %450 = extractelement <2 x i32> %447, i64 1
  %451 = tail call fastcc ptr @stbi__malloc_mad3(i32 noundef %449, i32 noundef %450, i32 noundef 2, i32 noundef 15) #17
  store ptr %451, ptr %429, align 8, !tbaa !98
  %452 = icmp eq ptr %451, null
  br i1 %452, label %453, label %456

453:                                              ; preds = %445
  %454 = trunc nuw nsw i64 %404 to i32
  %455 = add nuw nsw i32 %454, 1
  tail call fastcc void @stbi__free_jpeg_components(ptr noundef %0, i32 noundef %455) #17
  br label %466

456:                                              ; preds = %445
  %457 = ptrtoint ptr %451 to i64
  %458 = add i64 %457, 15
  %459 = and i64 %458, -16
  %460 = inttoptr i64 %459 to ptr
  store ptr %460, ptr %428, align 8, !tbaa !97
  br label %461

461:                                              ; preds = %437, %456
  %462 = add nuw nsw i64 %404, 1
  %463 = load i32, ptr %111, align 8, !tbaa !71
  %464 = sext i32 %463 to i64
  %465 = icmp slt i64 %462, %464
  br i1 %465, label %403, label %466, !llvm.loop !100

466:                                              ; preds = %295, %258, %248, %376, %369, %461, %381, %71, %15, %224, %311, %309, %151, %105, %59, %56, %52, %49, %2, %453, %434
  %467 = phi i32 [ 1, %309 ], [ 0, %2 ], [ 0, %49 ], [ 0, %52 ], [ 0, %56 ], [ 0, %59 ], [ 0, %71 ], [ 0, %105 ], [ 0, %151 ], [ 0, %376 ], [ 0, %224 ], [ 1, %381 ], [ 0, %311 ], [ 0, %15 ], [ 0, %434 ], [ 0, %453 ], [ 1, %461 ], [ 0, %369 ], [ 0, %248 ], [ 0, %258 ], [ 0, %295 ]
  ret i32 %467
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @stbi__get8(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %3 = load ptr, ptr %2, align 8, !tbaa !16
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %5 = load ptr, ptr %4, align 8, !tbaa !18
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 1
  store ptr %8, ptr %2, align 8, !tbaa !16
  %9 = load i8, ptr %3, align 1, !tbaa !35
  br label %44

10:                                               ; preds = %1
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %12 = load i32, ptr %11, align 8, !tbaa !13
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %44, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %16 = load ptr, ptr %15, align 8, !tbaa !8
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %18 = load ptr, ptr %17, align 8, !tbaa !33
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %21 = load i32, ptr %20, align 4, !tbaa !34
  %22 = tail call i32 %16(ptr noundef %18, ptr noundef nonnull %19, i32 noundef %21) #16
  %23 = load ptr, ptr %2, align 8, !tbaa !16
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %25 = load ptr, ptr %24, align 8, !tbaa !15
  %26 = ptrtoint ptr %23 to i64
  %27 = ptrtoint ptr %25 to i64
  %28 = sub i64 %26, %27
  %29 = trunc i64 %28 to i32
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %31 = load i32, ptr %30, align 8, !tbaa !14
  %32 = add i32 %31, %29
  store i32 %32, ptr %30, align 8, !tbaa !14
  %33 = icmp eq i32 %22, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %14
  store i32 0, ptr %11, align 8, !tbaa !13
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %19, align 8, !tbaa !35
  br label %40

36:                                               ; preds = %14
  %37 = sext i32 %22 to i64
  %38 = getelementptr inbounds i8, ptr %19, i64 %37
  %39 = load i8, ptr %19, align 1, !tbaa !35
  br label %40

40:                                               ; preds = %34, %36
  %41 = phi i8 [ 0, %34 ], [ %39, %36 ]
  %42 = phi ptr [ %35, %34 ], [ %38, %36 ]
  store ptr %42, ptr %4, align 8, !tbaa !18
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 57
  store ptr %43, ptr %2, align 8, !tbaa !16
  br label %44

44:                                               ; preds = %10, %40, %7
  %45 = phi i8 [ %9, %7 ], [ %41, %40 ], [ 0, %10 ]
  ret i8 %45
}

; Function Attrs: nounwind
define internal fastcc range(i32 0, 65536) i32 @stbi__get16be(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %3 = load ptr, ptr %2, align 8, !tbaa !16
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %5 = load ptr, ptr %4, align 8, !tbaa !18
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 1
  store ptr %8, ptr %2, align 8, !tbaa !16
  %9 = load i8, ptr %3, align 1, !tbaa !35
  br label %44

10:                                               ; preds = %1
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %12 = load i32, ptr %11, align 8, !tbaa !13
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %44, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %16 = load ptr, ptr %15, align 8, !tbaa !8
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %18 = load ptr, ptr %17, align 8, !tbaa !33
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %21 = load i32, ptr %20, align 4, !tbaa !34
  %22 = tail call i32 %16(ptr noundef %18, ptr noundef nonnull %19, i32 noundef %21) #16
  %23 = load ptr, ptr %2, align 8, !tbaa !16
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %25 = load ptr, ptr %24, align 8, !tbaa !15
  %26 = ptrtoint ptr %23 to i64
  %27 = ptrtoint ptr %25 to i64
  %28 = sub i64 %26, %27
  %29 = trunc i64 %28 to i32
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %31 = load i32, ptr %30, align 8, !tbaa !14
  %32 = add i32 %31, %29
  store i32 %32, ptr %30, align 8, !tbaa !14
  %33 = icmp eq i32 %22, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %14
  store i32 0, ptr %11, align 8, !tbaa !13
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %19, align 8, !tbaa !35
  br label %40

36:                                               ; preds = %14
  %37 = sext i32 %22 to i64
  %38 = getelementptr inbounds i8, ptr %19, i64 %37
  %39 = load i8, ptr %19, align 1, !tbaa !35
  br label %40

40:                                               ; preds = %36, %34
  %41 = phi i8 [ 0, %34 ], [ %39, %36 ]
  %42 = phi ptr [ %35, %34 ], [ %38, %36 ]
  store ptr %42, ptr %4, align 8, !tbaa !18
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 57
  store ptr %43, ptr %2, align 8, !tbaa !16
  br label %44

44:                                               ; preds = %7, %10, %40
  %45 = phi ptr [ %5, %7 ], [ %42, %40 ], [ %5, %10 ]
  %46 = phi ptr [ %8, %7 ], [ %43, %40 ], [ %3, %10 ]
  %47 = phi i8 [ %9, %7 ], [ %41, %40 ], [ 0, %10 ]
  %48 = icmp ult ptr %46, %45
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = getelementptr inbounds nuw i8, ptr %46, i64 1
  store ptr %50, ptr %2, align 8, !tbaa !16
  %51 = load i8, ptr %46, align 1, !tbaa !35
  br label %86

52:                                               ; preds = %44
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %54 = load i32, ptr %53, align 8, !tbaa !13
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %86, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %58 = load ptr, ptr %57, align 8, !tbaa !8
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %60 = load ptr, ptr %59, align 8, !tbaa !33
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %63 = load i32, ptr %62, align 4, !tbaa !34
  %64 = tail call i32 %58(ptr noundef %60, ptr noundef nonnull %61, i32 noundef %63) #16
  %65 = load ptr, ptr %2, align 8, !tbaa !16
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %67 = load ptr, ptr %66, align 8, !tbaa !15
  %68 = ptrtoint ptr %65 to i64
  %69 = ptrtoint ptr %67 to i64
  %70 = sub i64 %68, %69
  %71 = trunc i64 %70 to i32
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %73 = load i32, ptr %72, align 8, !tbaa !14
  %74 = add i32 %73, %71
  store i32 %74, ptr %72, align 8, !tbaa !14
  %75 = icmp eq i32 %64, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %56
  store i32 0, ptr %53, align 8, !tbaa !13
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %61, align 8, !tbaa !35
  br label %82

78:                                               ; preds = %56
  %79 = sext i32 %64 to i64
  %80 = getelementptr inbounds i8, ptr %61, i64 %79
  %81 = load i8, ptr %61, align 1, !tbaa !35
  br label %82

82:                                               ; preds = %78, %76
  %83 = phi i8 [ 0, %76 ], [ %81, %78 ]
  %84 = phi ptr [ %77, %76 ], [ %80, %78 ]
  store ptr %84, ptr %4, align 8, !tbaa !18
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 57
  store ptr %85, ptr %2, align 8, !tbaa !16
  br label %86

86:                                               ; preds = %49, %52, %82
  %87 = phi i8 [ %51, %49 ], [ %83, %82 ], [ 0, %52 ]
  %88 = zext i8 %47 to i32
  %89 = shl nuw nsw i32 %88, 8
  %90 = zext i8 %87 to i32
  %91 = or disjoint i32 %89, %90
  ret i32 %91
}

; Function Attrs: nounwind
define internal fastcc range(i32 0, 2) i32 @stbi__build_huffman(ptr noundef nonnull %0, ptr noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 1280
  br label %4

4:                                                ; preds = %2, %24
  %5 = phi i64 [ 0, %2 ], [ %26, %24 ]
  %6 = phi i32 [ 0, %2 ], [ %25, %24 ]
  %7 = getelementptr inbounds nuw i32, ptr %1, i64 %5
  %8 = load i32, ptr %7, align 4, !tbaa !4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %4
  %11 = trunc i64 %5 to i8
  %12 = add nuw nsw i8 %11, 1
  br label %17

13:                                               ; preds = %17
  %14 = add nuw nsw i32 %18, 1
  %15 = load i32, ptr %7, align 4, !tbaa !4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %24, !llvm.loop !101

17:                                               ; preds = %10, %13
  %18 = phi i32 [ 0, %10 ], [ %14, %13 ]
  %19 = phi i32 [ %6, %10 ], [ %20, %13 ]
  %20 = add i32 %19, 1
  %21 = sext i32 %19 to i64
  %22 = getelementptr inbounds i8, ptr %3, i64 %21
  store i8 %12, ptr %22, align 1, !tbaa !35
  %23 = icmp sgt i32 %20, 256
  br i1 %23, label %103, label %13

24:                                               ; preds = %13, %4
  %25 = phi i32 [ %6, %4 ], [ %20, %13 ]
  %26 = add nuw nsw i64 %5, 1
  %27 = icmp eq i64 %26, 16
  br i1 %27, label %28, label %4, !llvm.loop !102

28:                                               ; preds = %24
  %29 = sext i32 %25 to i64
  %30 = getelementptr inbounds i8, ptr %3, i64 %29
  store i8 0, ptr %30, align 1, !tbaa !35
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 1612
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 1540
  br label %34

34:                                               ; preds = %28, %62
  %35 = phi i64 [ 1, %28 ], [ %70, %62 ]
  %36 = phi i32 [ 0, %28 ], [ %69, %62 ]
  %37 = phi i32 [ 0, %28 ], [ %63, %62 ]
  %38 = sub i32 %37, %36
  %39 = getelementptr inbounds nuw i32, ptr %31, i64 %35
  store i32 %38, ptr %39, align 4, !tbaa !4
  %40 = sext i32 %37 to i64
  %41 = getelementptr inbounds i8, ptr %3, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !35
  %43 = zext i8 %42 to i64
  %44 = icmp eq i64 %35, %43
  br i1 %44, label %45, label %62

45:                                               ; preds = %34, %45
  %46 = phi i64 [ %53, %45 ], [ %40, %34 ]
  %47 = phi i32 [ %49, %45 ], [ %36, %34 ]
  %48 = phi i32 [ %51, %45 ], [ %37, %34 ]
  %49 = add i32 %47, 1
  %50 = trunc i32 %47 to i16
  %51 = add i32 %48, 1
  %52 = getelementptr inbounds i16, ptr %32, i64 %46
  store i16 %50, ptr %52, align 2, !tbaa !39
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i8, ptr %3, i64 %53
  %55 = load i8, ptr %54, align 1, !tbaa !35
  %56 = zext i8 %55 to i64
  %57 = icmp eq i64 %35, %56
  br i1 %57, label %45, label %58, !llvm.loop !103

58:                                               ; preds = %45
  %59 = trunc nuw nsw i64 %35 to i32
  %60 = lshr i32 %47, %59
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %103

62:                                               ; preds = %58, %34
  %63 = phi i32 [ %51, %58 ], [ %37, %34 ]
  %64 = phi i32 [ %49, %58 ], [ %36, %34 ]
  %65 = trunc i64 %35 to i32
  %66 = sub i32 16, %65
  %67 = shl i32 %64, %66
  %68 = getelementptr inbounds nuw i32, ptr %33, i64 %35
  store i32 %67, ptr %68, align 4, !tbaa !4
  %69 = shl i32 %64, 1
  %70 = add nuw nsw i64 %35, 1
  %71 = icmp eq i64 %70, 17
  br i1 %71, label %72, label %34, !llvm.loop !104

72:                                               ; preds = %62
  %73 = getelementptr inbounds nuw i8, ptr %0, i64 1608
  store i32 -1, ptr %73, align 4, !tbaa !4
  %74 = tail call ptr @memset(ptr noundef nonnull %0, i32 noundef 255, i64 noundef 512) #16
  %75 = icmp sgt i32 %63, 0
  br i1 %75, label %76, label %103

76:                                               ; preds = %72
  %77 = zext nneg i32 %63 to i64
  br label %78

78:                                               ; preds = %76, %100
  %79 = phi i64 [ 0, %76 ], [ %101, %100 ]
  %80 = getelementptr inbounds nuw i8, ptr %3, i64 %79
  %81 = load i8, ptr %80, align 1, !tbaa !35
  %82 = icmp ult i8 %81, 10
  br i1 %82, label %83, label %100

83:                                               ; preds = %78
  %84 = getelementptr inbounds nuw i16, ptr %32, i64 %79
  %85 = load i16, ptr %84, align 2, !tbaa !39
  %86 = zext i16 %85 to i32
  %87 = sub nuw nsw i8 9, %81
  %88 = zext nneg i8 %87 to i32
  %89 = shl nuw nsw i32 %86, %88
  %90 = trunc i64 %79 to i8
  %91 = zext nneg i32 %89 to i64
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 %91
  br label %93

93:                                               ; preds = %83, %93
  %94 = phi i64 [ 0, %83 ], [ %96, %93 ]
  %95 = getelementptr inbounds nuw i8, ptr %92, i64 %94
  store i8 %90, ptr %95, align 1, !tbaa !35
  %96 = add nuw nsw i64 %94, 1
  %97 = trunc nuw nsw i64 %96 to i32
  %98 = lshr i32 %97, %88
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %93, label %100, !llvm.loop !105

100:                                              ; preds = %93, %78
  %101 = add nuw nsw i64 %79, 1
  %102 = icmp eq i64 %101, %77
  br i1 %102, label %103, label %78, !llvm.loop !106

103:                                              ; preds = %17, %58, %100, %72
  %104 = phi i32 [ 0, %58 ], [ 1, %72 ], [ 1, %100 ], [ 0, %17 ]
  ret i32 %104
}

; Function Attrs: nounwind
define internal fastcc void @stbi__skip(ptr noundef captures(none) %0, i32 noundef %1) unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %38, label %4

4:                                                ; preds = %2
  %5 = icmp slt i32 %1, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %4
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %8 = load ptr, ptr %7, align 8, !tbaa !18
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %8, ptr %9, align 8, !tbaa !16
  br label %38

10:                                               ; preds = %4
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %12 = load ptr, ptr %11, align 8, !tbaa !8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %16 = load ptr, ptr %15, align 8, !tbaa !16
  br label %33

17:                                               ; preds = %10
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %19 = load ptr, ptr %18, align 8, !tbaa !18
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %21 = load ptr, ptr %20, align 8, !tbaa !16
  %22 = ptrtoint ptr %19 to i64
  %23 = ptrtoint ptr %21 to i64
  %24 = sub i64 %22, %23
  %25 = trunc i64 %24 to i32
  %26 = icmp sgt i32 %1, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %17
  store ptr %19, ptr %20, align 8, !tbaa !16
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %29 = load ptr, ptr %28, align 8, !tbaa !36
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %31 = load ptr, ptr %30, align 8, !tbaa !33
  %32 = sub i32 %1, %25
  tail call void %29(ptr noundef %31, i32 noundef %32) #16
  br label %38

33:                                               ; preds = %14, %17
  %34 = phi ptr [ %16, %14 ], [ %21, %17 ]
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %36 = zext nneg i32 %1 to i64
  %37 = getelementptr inbounds nuw i8, ptr %34, i64 %36
  store ptr %37, ptr %35, align 8, !tbaa !16
  br label %38

38:                                               ; preds = %27, %2, %33, %6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal fastcc range(i32 0, 2) i32 @stbi__mad3sizes_valid(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef range(i32 0, 16) %3) unnamed_addr #3 {
  %5 = or i32 %1, %0
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %7, label %26

7:                                                ; preds = %4
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %7
  %10 = udiv i32 2147483647, %1
  %11 = icmp sgt i32 %0, %10
  br i1 %11, label %26, label %12

12:                                               ; preds = %7, %9
  %13 = mul i32 %1, %0
  %14 = or i32 %2, %13
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %16, label %26

16:                                               ; preds = %12
  %17 = icmp eq i32 %2, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %16
  %19 = udiv i32 2147483647, %2
  %20 = icmp sgt i32 %13, %19
  br i1 %20, label %26, label %21

21:                                               ; preds = %16, %18
  %22 = mul i32 %13, %2
  %23 = xor i32 %3, 2147483647
  %24 = icmp sle i32 %22, %23
  %25 = zext i1 %24 to i32
  br label %26

26:                                               ; preds = %12, %4, %21, %18, %9
  %27 = phi i32 [ 0, %18 ], [ 0, %9 ], [ %25, %21 ], [ 0, %4 ], [ 0, %12 ]
  ret i32 %27
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem0: none, target_mem1: none)
define internal fastcc ptr @stbi__malloc_mad2(i32 noundef %0, i32 noundef %1, i32 noundef range(i32 0, 16) %2) unnamed_addr #4 {
  %4 = or i32 %1, %0
  %5 = icmp sgt i32 %4, -1
  br i1 %5, label %6, label %28

6:                                                ; preds = %3
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %6
  %9 = udiv i32 2147483647, %1
  %10 = icmp sgt i32 %0, %9
  br i1 %10, label %28, label %11

11:                                               ; preds = %6, %8
  %12 = mul i32 %1, %0
  %13 = xor i32 %2, 2147483647
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %28, label %15

15:                                               ; preds = %11
  %16 = add i32 %12, %2
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %17, 15
  %19 = and i64 %18, -16
  %20 = add nsw i64 %19, 16
  %21 = load i64, ptr @arena_used, align 8, !tbaa !19
  %22 = sub i64 100663296, %21
  %23 = icmp ugt i64 %20, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %15
  %25 = getelementptr inbounds nuw i8, ptr @arena, i64 %21
  %26 = add i64 %21, %20
  store i64 %26, ptr @arena_used, align 8, !tbaa !19
  store i64 %17, ptr %25, align 8, !tbaa !19
  %27 = getelementptr inbounds nuw i8, ptr %25, i64 16
  br label %28

28:                                               ; preds = %3, %8, %24, %15, %11
  %29 = phi ptr [ null, %15 ], [ null, %11 ], [ %27, %24 ], [ null, %8 ], [ null, %3 ]
  ret ptr %29
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite)
define internal fastcc void @stbi__free_jpeg_components(ptr noundef nonnull captures(none) %0, i32 noundef %1) unnamed_addr #5 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %29

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 18080
  %6 = zext nneg i32 %1 to i64
  br label %7

7:                                                ; preds = %4, %26
  %8 = phi i64 [ 0, %4 ], [ %27, %26 ]
  %9 = getelementptr inbounds nuw %struct.anon, ptr %5, i64 %8
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 56
  %11 = load ptr, ptr %10, align 8, !tbaa !99
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %7
  store ptr null, ptr %10, align 8, !tbaa !99
  %14 = getelementptr inbounds nuw i8, ptr %9, i64 48
  store ptr null, ptr %14, align 8, !tbaa !72
  br label %15

15:                                               ; preds = %13, %7
  %16 = getelementptr inbounds nuw i8, ptr %9, i64 64
  %17 = load ptr, ptr %16, align 8, !tbaa !98
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  store ptr null, ptr %16, align 8, !tbaa !98
  %20 = getelementptr inbounds nuw i8, ptr %9, i64 80
  store ptr null, ptr %20, align 8, !tbaa !97
  br label %21

21:                                               ; preds = %19, %15
  %22 = getelementptr inbounds nuw i8, ptr %9, i64 72
  %23 = load ptr, ptr %22, align 8, !tbaa !75
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  store ptr null, ptr %22, align 8, !tbaa !75
  br label %26

26:                                               ; preds = %21, %25
  %27 = add nuw nsw i64 %8, 1
  %28 = icmp eq i64 %27, %6
  br i1 %28, label %29, label %7, !llvm.loop !107

29:                                               ; preds = %26, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem0: none, target_mem1: none)
define internal fastcc ptr @stbi__malloc_mad3(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef range(i32 0, 16) %3) unnamed_addr #4 {
  %5 = or i32 %1, %0
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %7, label %38

7:                                                ; preds = %4
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %7
  %10 = udiv i32 2147483647, %1
  %11 = icmp sgt i32 %0, %10
  br i1 %11, label %38, label %12

12:                                               ; preds = %9, %7
  %13 = mul i32 %1, %0
  %14 = or i32 %2, %13
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %16, label %38

16:                                               ; preds = %12
  %17 = icmp eq i32 %2, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %16
  %19 = udiv i32 2147483647, %2
  %20 = icmp sgt i32 %13, %19
  br i1 %20, label %38, label %21

21:                                               ; preds = %16, %18
  %22 = mul i32 %13, %2
  %23 = xor i32 %3, 2147483647
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %38, label %25

25:                                               ; preds = %21
  %26 = add i32 %22, %3
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %27, 15
  %29 = and i64 %28, -16
  %30 = add nsw i64 %29, 16
  %31 = load i64, ptr @arena_used, align 8, !tbaa !19
  %32 = sub i64 100663296, %31
  %33 = icmp ugt i64 %30, %32
  br i1 %33, label %38, label %34

34:                                               ; preds = %25
  %35 = getelementptr inbounds nuw i8, ptr @arena, i64 %31
  %36 = add i64 %31, %30
  store i64 %36, ptr @arena_used, align 8, !tbaa !19
  store i64 %27, ptr %35, align 8, !tbaa !19
  %37 = getelementptr inbounds nuw i8, ptr %35, i64 16
  br label %38

38:                                               ; preds = %12, %4, %9, %18, %34, %25, %21
  %39 = phi ptr [ null, %25 ], [ null, %21 ], [ %37, %34 ], [ null, %18 ], [ null, %9 ], [ null, %4 ], [ null, %12 ]
  ret ptr %39
}

; Function Attrs: nounwind
define internal fastcc range(i32 0, 2) i32 @stbi__parse_png_file(ptr noundef nonnull captures(none) initializes((8, 32)) %0, i32 noundef range(i32 0, 3) %1, i32 noundef range(i32 0, 5) %2) unnamed_addr #0 {
  %4 = alloca %struct.stbi__zhuffman, align 4
  %5 = alloca [455 x i8], align 16
  %6 = alloca [19 x i8], align 16
  %7 = alloca [4 x i8], align 1
  %8 = alloca %struct.stbi__zbuf, align 8
  %9 = alloca [1024 x i8], align 16
  %10 = alloca [3 x i8], align 1
  %11 = alloca [3 x i16], align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %10, i8 0, i64 3, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  %12 = load ptr, ptr %0, align 8, !tbaa !26
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %13, align 8, !tbaa !108
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %14, align 8, !tbaa !109
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %15, align 8, !tbaa !110
  %16 = getelementptr inbounds nuw i8, ptr %12, i64 192
  %17 = getelementptr inbounds nuw i8, ptr %12, i64 200
  %18 = getelementptr inbounds nuw i8, ptr %12, i64 48
  %19 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %20 = getelementptr inbounds nuw i8, ptr %12, i64 40
  %21 = getelementptr inbounds nuw i8, ptr %12, i64 56
  %22 = getelementptr inbounds nuw i8, ptr %12, i64 52
  %23 = getelementptr inbounds nuw i8, ptr %12, i64 208
  %24 = getelementptr inbounds nuw i8, ptr %12, i64 184
  %25 = getelementptr inbounds nuw i8, ptr %12, i64 57
  %26 = load ptr, ptr %16, align 8, !tbaa !16
  %27 = load ptr, ptr %17, align 8, !tbaa !18
  br label %31

28:                                               ; preds = %64
  %29 = add nuw nsw i64 %34, 1
  %30 = icmp eq i64 %29, 8
  br i1 %30, label %71, label %31, !llvm.loop !111

31:                                               ; preds = %28, %3
  %32 = phi ptr [ %27, %3 ], [ %65, %28 ]
  %33 = phi ptr [ %26, %3 ], [ %66, %28 ]
  %34 = phi i64 [ 0, %3 ], [ %29, %28 ]
  %35 = icmp ult ptr %33, %32
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = getelementptr inbounds nuw i8, ptr %33, i64 1
  store ptr %37, ptr %16, align 8, !tbaa !16
  %38 = load i8, ptr %33, align 1, !tbaa !35
  br label %64

39:                                               ; preds = %31
  %40 = load i32, ptr %18, align 8, !tbaa !13
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %64, label %42

42:                                               ; preds = %39
  %43 = load ptr, ptr %19, align 8, !tbaa !8
  %44 = load ptr, ptr %20, align 8, !tbaa !33
  %45 = load i32, ptr %22, align 4, !tbaa !34
  %46 = tail call i32 %43(ptr noundef %44, ptr noundef nonnull %21, i32 noundef %45) #16
  %47 = load ptr, ptr %16, align 8, !tbaa !16
  %48 = load ptr, ptr %23, align 8, !tbaa !15
  %49 = ptrtoint ptr %47 to i64
  %50 = ptrtoint ptr %48 to i64
  %51 = sub i64 %49, %50
  %52 = trunc i64 %51 to i32
  %53 = load i32, ptr %24, align 8, !tbaa !14
  %54 = add i32 %53, %52
  store i32 %54, ptr %24, align 8, !tbaa !14
  %55 = icmp eq i32 %46, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %42
  store i32 0, ptr %18, align 8, !tbaa !13
  store i8 0, ptr %21, align 8, !tbaa !35
  br label %61

57:                                               ; preds = %42
  %58 = sext i32 %46 to i64
  %59 = getelementptr inbounds i8, ptr %21, i64 %58
  %60 = load i8, ptr %21, align 1, !tbaa !35
  br label %61

61:                                               ; preds = %57, %56
  %62 = phi i8 [ 0, %56 ], [ %60, %57 ]
  %63 = phi ptr [ %25, %56 ], [ %59, %57 ]
  store ptr %63, ptr %17, align 8, !tbaa !18
  store ptr %25, ptr %16, align 8, !tbaa !16
  br label %64

64:                                               ; preds = %61, %39, %36
  %65 = phi ptr [ %32, %36 ], [ %63, %61 ], [ %32, %39 ]
  %66 = phi ptr [ %37, %36 ], [ %25, %61 ], [ %33, %39 ]
  %67 = phi i8 [ %38, %36 ], [ %62, %61 ], [ 0, %39 ]
  %68 = getelementptr inbounds nuw i8, ptr @stbi__check_png_header.png_sig, i64 %34
  %69 = load i8, ptr %68, align 1, !tbaa !35
  %70 = icmp eq i8 %67, %69
  br i1 %70, label %28, label %2003

71:                                               ; preds = %28
  %72 = icmp eq i32 %1, 1
  br i1 %72, label %2003, label %73

73:                                               ; preds = %71
  %74 = icmp eq i32 %1, 2
  %75 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %77 = getelementptr inbounds nuw i8, ptr %12, i64 4
  %78 = getelementptr inbounds nuw i8, ptr %12, i64 24
  br label %79

79:                                               ; preds = %73, %1991
  %80 = phi i32 [ %1992, %1991 ], [ 0, %73 ]
  %81 = phi i32 [ %1993, %1991 ], [ 0, %73 ]
  %82 = phi i32 [ %1994, %1991 ], [ 0, %73 ]
  %83 = phi i32 [ %1995, %1991 ], [ 1, %73 ]
  %84 = phi i32 [ %1996, %1991 ], [ 0, %73 ]
  %85 = phi i32 [ %1997, %1991 ], [ 0, %73 ]
  %86 = phi i32 [ %1998, %1991 ], [ 0, %73 ]
  %87 = phi i8 [ %1999, %1991 ], [ 0, %73 ]
  %88 = phi i8 [ %2000, %1991 ], [ 0, %73 ]
  %89 = tail call fastcc i32 @stbi__get16be(ptr noundef %12) #17
  %90 = shl nuw i32 %89, 16
  %91 = tail call fastcc i32 @stbi__get16be(ptr noundef %12) #17
  %92 = or disjoint i32 %90, %91
  %93 = tail call fastcc i32 @stbi__get16be(ptr noundef %12) #17
  %94 = shl nuw i32 %93, 16
  %95 = tail call fastcc i32 @stbi__get16be(ptr noundef %12) #17
  %96 = or disjoint i32 %94, %95
  switch i32 %96, label %1959 [
    i32 1130840649, label %97
    i32 1229472850, label %124
    i32 1347179589, label %259
    i32 1951551059, label %385
    i32 1229209940, label %490
    i32 1229278788, label %566
  ]

97:                                               ; preds = %79
  %98 = icmp eq i32 %92, 0
  br i1 %98, label %1991, label %99

99:                                               ; preds = %97
  %100 = icmp slt i32 %90, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %99
  %102 = load ptr, ptr %17, align 8, !tbaa !18
  store ptr %102, ptr %16, align 8, !tbaa !16
  br label %1991

103:                                              ; preds = %99
  %104 = load ptr, ptr %19, align 8, !tbaa !8
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %108

106:                                              ; preds = %103
  %107 = load ptr, ptr %16, align 8, !tbaa !16
  br label %120

108:                                              ; preds = %103
  %109 = load ptr, ptr %17, align 8, !tbaa !18
  %110 = load ptr, ptr %16, align 8, !tbaa !16
  %111 = ptrtoint ptr %109 to i64
  %112 = ptrtoint ptr %110 to i64
  %113 = sub i64 %111, %112
  %114 = trunc i64 %113 to i32
  %115 = icmp sgt i32 %92, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %108
  store ptr %109, ptr %16, align 8, !tbaa !16
  %117 = load ptr, ptr %78, align 8, !tbaa !36
  %118 = load ptr, ptr %20, align 8, !tbaa !33
  %119 = sub i32 %92, %114
  tail call void %117(ptr noundef %118, i32 noundef %119) #16
  br label %1991

120:                                              ; preds = %108, %106
  %121 = phi ptr [ %107, %106 ], [ %110, %108 ]
  %122 = zext nneg i32 %92 to i64
  %123 = getelementptr inbounds nuw i8, ptr %121, i64 %122
  store ptr %123, ptr %16, align 8, !tbaa !16
  br label %1991

124:                                              ; preds = %79
  %125 = icmp ne i32 %83, 0
  %126 = icmp eq i32 %92, 13
  %127 = and i1 %125, %126
  br i1 %127, label %128, label %2003

128:                                              ; preds = %124
  %129 = tail call fastcc i32 @stbi__get16be(ptr noundef %12) #17
  %130 = shl nuw i32 %129, 16
  %131 = tail call fastcc i32 @stbi__get16be(ptr noundef %12) #17
  %132 = or disjoint i32 %130, %131
  store i32 %132, ptr %12, align 8, !tbaa !24
  %133 = tail call fastcc i32 @stbi__get16be(ptr noundef nonnull %12) #17
  %134 = shl nuw i32 %133, 16
  %135 = tail call fastcc i32 @stbi__get16be(ptr noundef nonnull %12) #17
  %136 = or disjoint i32 %134, %135
  store i32 %136, ptr %77, align 4, !tbaa !25
  %137 = icmp ugt i32 %136, 4096
  br i1 %137, label %2003, label %138

138:                                              ; preds = %128
  %139 = load i32, ptr %12, align 8, !tbaa !24
  %140 = icmp ugt i32 %139, 4096
  br i1 %140, label %2003, label %141

141:                                              ; preds = %138
  %142 = load ptr, ptr %16, align 8, !tbaa !16
  %143 = load ptr, ptr %17, align 8, !tbaa !18
  %144 = icmp ult ptr %142, %143
  br i1 %144, label %145, label %148

145:                                              ; preds = %141
  %146 = getelementptr inbounds nuw i8, ptr %142, i64 1
  store ptr %146, ptr %16, align 8, !tbaa !16
  %147 = load i8, ptr %142, align 1, !tbaa !35
  br label %173

148:                                              ; preds = %141
  %149 = load i32, ptr %18, align 8, !tbaa !13
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %173, label %151

151:                                              ; preds = %148
  %152 = load ptr, ptr %19, align 8, !tbaa !8
  %153 = load ptr, ptr %20, align 8, !tbaa !33
  %154 = load i32, ptr %22, align 4, !tbaa !34
  %155 = tail call i32 %152(ptr noundef %153, ptr noundef nonnull %21, i32 noundef %154) #16
  %156 = load ptr, ptr %16, align 8, !tbaa !16
  %157 = load ptr, ptr %23, align 8, !tbaa !15
  %158 = ptrtoint ptr %156 to i64
  %159 = ptrtoint ptr %157 to i64
  %160 = sub i64 %158, %159
  %161 = trunc i64 %160 to i32
  %162 = load i32, ptr %24, align 8, !tbaa !14
  %163 = add i32 %162, %161
  store i32 %163, ptr %24, align 8, !tbaa !14
  %164 = icmp eq i32 %155, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %151
  store i32 0, ptr %18, align 8, !tbaa !13
  store i8 0, ptr %21, align 8, !tbaa !35
  br label %170

166:                                              ; preds = %151
  %167 = sext i32 %155 to i64
  %168 = getelementptr inbounds i8, ptr %21, i64 %167
  %169 = load i8, ptr %21, align 1, !tbaa !35
  br label %170

170:                                              ; preds = %166, %165
  %171 = phi i8 [ 0, %165 ], [ %169, %166 ]
  %172 = phi ptr [ %25, %165 ], [ %168, %166 ]
  store ptr %172, ptr %17, align 8, !tbaa !18
  store ptr %25, ptr %16, align 8, !tbaa !16
  br label %173

173:                                              ; preds = %145, %148, %170
  %174 = phi ptr [ %143, %145 ], [ %172, %170 ], [ %143, %148 ]
  %175 = phi ptr [ %146, %145 ], [ %25, %170 ], [ %142, %148 ]
  %176 = phi i8 [ %147, %145 ], [ %171, %170 ], [ 0, %148 ]
  %177 = zext i8 %176 to i32
  store i32 %177, ptr %76, align 8, !tbaa !112
  %178 = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %176)
  %179 = icmp eq i8 %178, 1
  %180 = and i8 %176, 31
  %181 = icmp ne i8 %180, 0
  %182 = and i1 %179, %181
  br i1 %182, label %183, label %2003

183:                                              ; preds = %173
  %184 = icmp ult ptr %175, %174
  br i1 %184, label %185, label %188

185:                                              ; preds = %183
  %186 = getelementptr inbounds nuw i8, ptr %175, i64 1
  store ptr %186, ptr %16, align 8, !tbaa !16
  %187 = load i8, ptr %175, align 1, !tbaa !35
  br label %213

188:                                              ; preds = %183
  %189 = load i32, ptr %18, align 8, !tbaa !13
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %225, label %191

191:                                              ; preds = %188
  %192 = load ptr, ptr %19, align 8, !tbaa !8
  %193 = load ptr, ptr %20, align 8, !tbaa !33
  %194 = load i32, ptr %22, align 4, !tbaa !34
  %195 = tail call i32 %192(ptr noundef %193, ptr noundef nonnull %21, i32 noundef %194) #16
  %196 = load ptr, ptr %16, align 8, !tbaa !16
  %197 = load ptr, ptr %23, align 8, !tbaa !15
  %198 = ptrtoint ptr %196 to i64
  %199 = ptrtoint ptr %197 to i64
  %200 = sub i64 %198, %199
  %201 = trunc i64 %200 to i32
  %202 = load i32, ptr %24, align 8, !tbaa !14
  %203 = add i32 %202, %201
  store i32 %203, ptr %24, align 8, !tbaa !14
  %204 = icmp eq i32 %195, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %191
  store i32 0, ptr %18, align 8, !tbaa !13
  store i8 0, ptr %21, align 8, !tbaa !35
  br label %210

206:                                              ; preds = %191
  %207 = sext i32 %195 to i64
  %208 = getelementptr inbounds i8, ptr %21, i64 %207
  %209 = load i8, ptr %21, align 1, !tbaa !35
  br label %210

210:                                              ; preds = %206, %205
  %211 = phi i8 [ 0, %205 ], [ %209, %206 ]
  %212 = phi ptr [ %25, %205 ], [ %208, %206 ]
  store ptr %212, ptr %17, align 8, !tbaa !18
  store ptr %25, ptr %16, align 8, !tbaa !16
  br label %213

213:                                              ; preds = %185, %210
  %214 = phi i8 [ %187, %185 ], [ %211, %210 ]
  %215 = zext nneg i8 %214 to i32
  %216 = icmp ugt i8 %214, 6
  br i1 %216, label %2003, label %217

217:                                              ; preds = %213
  %218 = icmp eq i8 %214, 3
  br i1 %218, label %219, label %222

219:                                              ; preds = %217
  %220 = load i32, ptr %76, align 8, !tbaa !112
  %221 = icmp eq i32 %220, 16
  br i1 %221, label %2003, label %225

222:                                              ; preds = %217
  %223 = and i32 %215, 1
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %2003

225:                                              ; preds = %188, %219, %222
  %226 = phi i8 [ %214, %222 ], [ 3, %219 ], [ 0, %188 ]
  %227 = phi i32 [ %215, %222 ], [ 3, %219 ], [ 0, %188 ]
  %228 = phi i8 [ %88, %222 ], [ 3, %219 ], [ %88, %188 ]
  %229 = tail call fastcc zeroext i8 @stbi__get8(ptr noundef nonnull %12) #17
  %230 = icmp eq i8 %229, 0
  br i1 %230, label %231, label %2003

231:                                              ; preds = %225
  %232 = tail call fastcc zeroext i8 @stbi__get8(ptr noundef nonnull %12) #17
  %233 = icmp eq i8 %232, 0
  br i1 %233, label %234, label %2003

234:                                              ; preds = %231
  %235 = tail call fastcc zeroext i8 @stbi__get8(ptr noundef nonnull %12) #17
  %236 = zext i8 %235 to i32
  %237 = icmp ugt i8 %235, 1
  br i1 %237, label %2003, label %238

238:                                              ; preds = %234
  %239 = load i32, ptr %12, align 8, !tbaa !24
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %2003, label %241

241:                                              ; preds = %238
  %242 = load i32, ptr %77, align 4, !tbaa !25
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %2003, label %244

244:                                              ; preds = %241
  %245 = icmp eq i8 %228, 0
  br i1 %245, label %246, label %255

246:                                              ; preds = %244
  %247 = and i32 %227, 2
  %248 = or disjoint i32 %247, 1
  %249 = icmp samesign ugt i8 %226, 3
  %250 = zext i1 %249 to i32
  %251 = add nuw nsw i32 %248, %250
  store i32 %251, ptr %75, align 8, !tbaa !71
  %252 = udiv i32 1073741824, %239
  %253 = udiv i32 %252, %251
  %254 = icmp ult i32 %253, %242
  br i1 %254, label %2003, label %1991

255:                                              ; preds = %244
  store i32 1, ptr %75, align 8, !tbaa !71
  %256 = udiv i32 1073741824, %239
  %257 = lshr i32 %256, 2
  %258 = icmp ult i32 %257, %242
  br i1 %258, label %2003, label %1991

259:                                              ; preds = %79
  %260 = icmp ne i32 %83, 0
  %261 = icmp ugt i32 %92, 768
  %262 = select i1 %260, i1 true, i1 %261
  br i1 %262, label %2003, label %263

263:                                              ; preds = %259
  %264 = trunc nuw nsw i32 %91 to i16
  %265 = udiv i16 %264, 3
  %266 = zext nneg i16 %265 to i32
  %267 = mul nuw nsw i32 %266, 3
  %268 = icmp eq i32 %267, %92
  br i1 %268, label %269, label %2003

269:                                              ; preds = %263
  %270 = icmp samesign ult i32 %91, 3
  br i1 %270, label %1991, label %271

271:                                              ; preds = %269
  %272 = zext nneg i16 %265 to i64
  %273 = load ptr, ptr %16, align 8, !tbaa !16
  %274 = load ptr, ptr %17, align 8, !tbaa !18
  br label %275

275:                                              ; preds = %271, %377
  %276 = phi ptr [ %274, %271 ], [ %378, %377 ]
  %277 = phi ptr [ %273, %271 ], [ %379, %377 ]
  %278 = phi i64 [ 0, %271 ], [ %383, %377 ]
  %279 = icmp ult ptr %277, %276
  br i1 %279, label %280, label %283

280:                                              ; preds = %275
  %281 = getelementptr inbounds nuw i8, ptr %277, i64 1
  store ptr %281, ptr %16, align 8, !tbaa !16
  %282 = load i8, ptr %277, align 1, !tbaa !35
  br label %308

283:                                              ; preds = %275
  %284 = load i32, ptr %18, align 8, !tbaa !13
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %308, label %286

286:                                              ; preds = %283
  %287 = load ptr, ptr %19, align 8, !tbaa !8
  %288 = load ptr, ptr %20, align 8, !tbaa !33
  %289 = load i32, ptr %22, align 4, !tbaa !34
  %290 = tail call i32 %287(ptr noundef %288, ptr noundef nonnull %21, i32 noundef %289) #16
  %291 = load ptr, ptr %16, align 8, !tbaa !16
  %292 = load ptr, ptr %23, align 8, !tbaa !15
  %293 = ptrtoint ptr %291 to i64
  %294 = ptrtoint ptr %292 to i64
  %295 = sub i64 %293, %294
  %296 = trunc i64 %295 to i32
  %297 = load i32, ptr %24, align 8, !tbaa !14
  %298 = add i32 %297, %296
  store i32 %298, ptr %24, align 8, !tbaa !14
  %299 = icmp eq i32 %290, 0
  br i1 %299, label %300, label %301

300:                                              ; preds = %286
  store i32 0, ptr %18, align 8, !tbaa !13
  store i8 0, ptr %21, align 8, !tbaa !35
  br label %305

301:                                              ; preds = %286
  %302 = sext i32 %290 to i64
  %303 = getelementptr inbounds i8, ptr %21, i64 %302
  %304 = load i8, ptr %21, align 1, !tbaa !35
  br label %305

305:                                              ; preds = %301, %300
  %306 = phi i8 [ 0, %300 ], [ %304, %301 ]
  %307 = phi ptr [ %25, %300 ], [ %303, %301 ]
  store ptr %307, ptr %17, align 8, !tbaa !18
  store ptr %25, ptr %16, align 8, !tbaa !16
  br label %308

308:                                              ; preds = %280, %283, %305
  %309 = phi ptr [ %276, %280 ], [ %307, %305 ], [ %276, %283 ]
  %310 = phi ptr [ %281, %280 ], [ %25, %305 ], [ %277, %283 ]
  %311 = phi i8 [ %282, %280 ], [ %306, %305 ], [ 0, %283 ]
  %312 = shl nuw nsw i64 %278, 2
  %313 = getelementptr inbounds nuw i8, ptr %9, i64 %312
  store i8 %311, ptr %313, align 4, !tbaa !35
  %314 = icmp ult ptr %310, %309
  br i1 %314, label %315, label %318

315:                                              ; preds = %308
  %316 = getelementptr inbounds nuw i8, ptr %310, i64 1
  store ptr %316, ptr %16, align 8, !tbaa !16
  %317 = load i8, ptr %310, align 1, !tbaa !35
  br label %343

318:                                              ; preds = %308
  %319 = load i32, ptr %18, align 8, !tbaa !13
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %343, label %321

321:                                              ; preds = %318
  %322 = load ptr, ptr %19, align 8, !tbaa !8
  %323 = load ptr, ptr %20, align 8, !tbaa !33
  %324 = load i32, ptr %22, align 4, !tbaa !34
  %325 = tail call i32 %322(ptr noundef %323, ptr noundef nonnull %21, i32 noundef %324) #16
  %326 = load ptr, ptr %16, align 8, !tbaa !16
  %327 = load ptr, ptr %23, align 8, !tbaa !15
  %328 = ptrtoint ptr %326 to i64
  %329 = ptrtoint ptr %327 to i64
  %330 = sub i64 %328, %329
  %331 = trunc i64 %330 to i32
  %332 = load i32, ptr %24, align 8, !tbaa !14
  %333 = add i32 %332, %331
  store i32 %333, ptr %24, align 8, !tbaa !14
  %334 = icmp eq i32 %325, 0
  br i1 %334, label %335, label %336

335:                                              ; preds = %321
  store i32 0, ptr %18, align 8, !tbaa !13
  store i8 0, ptr %21, align 8, !tbaa !35
  br label %340

336:                                              ; preds = %321
  %337 = sext i32 %325 to i64
  %338 = getelementptr inbounds i8, ptr %21, i64 %337
  %339 = load i8, ptr %21, align 1, !tbaa !35
  br label %340

340:                                              ; preds = %336, %335
  %341 = phi i8 [ 0, %335 ], [ %339, %336 ]
  %342 = phi ptr [ %25, %335 ], [ %338, %336 ]
  store ptr %342, ptr %17, align 8, !tbaa !18
  store ptr %25, ptr %16, align 8, !tbaa !16
  br label %343

343:                                              ; preds = %315, %318, %340
  %344 = phi ptr [ %309, %315 ], [ %342, %340 ], [ %309, %318 ]
  %345 = phi ptr [ %316, %315 ], [ %25, %340 ], [ %310, %318 ]
  %346 = phi i8 [ %317, %315 ], [ %341, %340 ], [ 0, %318 ]
  %347 = getelementptr inbounds nuw i8, ptr %313, i64 1
  store i8 %346, ptr %347, align 1, !tbaa !35
  %348 = icmp ult ptr %345, %344
  br i1 %348, label %349, label %352

349:                                              ; preds = %343
  %350 = getelementptr inbounds nuw i8, ptr %345, i64 1
  store ptr %350, ptr %16, align 8, !tbaa !16
  %351 = load i8, ptr %345, align 1, !tbaa !35
  br label %377

352:                                              ; preds = %343
  %353 = load i32, ptr %18, align 8, !tbaa !13
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %377, label %355

355:                                              ; preds = %352
  %356 = load ptr, ptr %19, align 8, !tbaa !8
  %357 = load ptr, ptr %20, align 8, !tbaa !33
  %358 = load i32, ptr %22, align 4, !tbaa !34
  %359 = tail call i32 %356(ptr noundef %357, ptr noundef nonnull %21, i32 noundef %358) #16
  %360 = load ptr, ptr %16, align 8, !tbaa !16
  %361 = load ptr, ptr %23, align 8, !tbaa !15
  %362 = ptrtoint ptr %360 to i64
  %363 = ptrtoint ptr %361 to i64
  %364 = sub i64 %362, %363
  %365 = trunc i64 %364 to i32
  %366 = load i32, ptr %24, align 8, !tbaa !14
  %367 = add i32 %366, %365
  store i32 %367, ptr %24, align 8, !tbaa !14
  %368 = icmp eq i32 %359, 0
  br i1 %368, label %369, label %370

369:                                              ; preds = %355
  store i32 0, ptr %18, align 8, !tbaa !13
  store i8 0, ptr %21, align 8, !tbaa !35
  br label %374

370:                                              ; preds = %355
  %371 = sext i32 %359 to i64
  %372 = getelementptr inbounds i8, ptr %21, i64 %371
  %373 = load i8, ptr %21, align 1, !tbaa !35
  br label %374

374:                                              ; preds = %370, %369
  %375 = phi i8 [ 0, %369 ], [ %373, %370 ]
  %376 = phi ptr [ %25, %369 ], [ %372, %370 ]
  store ptr %376, ptr %17, align 8, !tbaa !18
  store ptr %25, ptr %16, align 8, !tbaa !16
  br label %377

377:                                              ; preds = %349, %352, %374
  %378 = phi ptr [ %344, %349 ], [ %376, %374 ], [ %344, %352 ]
  %379 = phi ptr [ %350, %349 ], [ %25, %374 ], [ %345, %352 ]
  %380 = phi i8 [ %351, %349 ], [ %375, %374 ], [ 0, %352 ]
  %381 = getelementptr inbounds nuw i8, ptr %313, i64 2
  store i8 %380, ptr %381, align 2, !tbaa !35
  %382 = getelementptr inbounds nuw i8, ptr %313, i64 3
  store i8 -1, ptr %382, align 1, !tbaa !35
  %383 = add nuw nsw i64 %278, 1
  %384 = icmp eq i64 %383, %272
  br i1 %384, label %1991, label %275, !llvm.loop !113

385:                                              ; preds = %79
  %386 = icmp eq i32 %83, 0
  br i1 %386, label %387, label %2003

387:                                              ; preds = %385
  %388 = load ptr, ptr %14, align 8, !tbaa !109
  %389 = icmp eq ptr %388, null
  br i1 %389, label %390, label %2003

390:                                              ; preds = %387
  %391 = icmp eq i8 %88, 0
  br i1 %391, label %447, label %392

392:                                              ; preds = %390
  br i1 %74, label %393, label %394

393:                                              ; preds = %392
  store i32 4, ptr %75, align 8, !tbaa !71
  br label %2003

394:                                              ; preds = %392
  %395 = icmp eq i32 %84, 0
  %396 = icmp ult i32 %84, %92
  %397 = select i1 %395, i1 true, i1 %396
  br i1 %397, label %2003, label %398

398:                                              ; preds = %394
  %399 = icmp eq i32 %92, 0
  br i1 %399, label %1991, label %400

400:                                              ; preds = %398
  %401 = or disjoint i32 %91, %90
  %402 = zext i32 %401 to i64
  %403 = load ptr, ptr %16, align 8, !tbaa !16
  %404 = load ptr, ptr %17, align 8, !tbaa !18
  br label %405

405:                                              ; preds = %400, %438
  %406 = phi ptr [ %404, %400 ], [ %439, %438 ]
  %407 = phi ptr [ %403, %400 ], [ %440, %438 ]
  %408 = phi i64 [ 0, %400 ], [ %445, %438 ]
  %409 = icmp ult ptr %407, %406
  br i1 %409, label %410, label %413

410:                                              ; preds = %405
  %411 = getelementptr inbounds nuw i8, ptr %407, i64 1
  store ptr %411, ptr %16, align 8, !tbaa !16
  %412 = load i8, ptr %407, align 1, !tbaa !35
  br label %438

413:                                              ; preds = %405
  %414 = load i32, ptr %18, align 8, !tbaa !13
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %438, label %416

416:                                              ; preds = %413
  %417 = load ptr, ptr %19, align 8, !tbaa !8
  %418 = load ptr, ptr %20, align 8, !tbaa !33
  %419 = load i32, ptr %22, align 4, !tbaa !34
  %420 = tail call i32 %417(ptr noundef %418, ptr noundef nonnull %21, i32 noundef %419) #16
  %421 = load ptr, ptr %16, align 8, !tbaa !16
  %422 = load ptr, ptr %23, align 8, !tbaa !15
  %423 = ptrtoint ptr %421 to i64
  %424 = ptrtoint ptr %422 to i64
  %425 = sub i64 %423, %424
  %426 = trunc i64 %425 to i32
  %427 = load i32, ptr %24, align 8, !tbaa !14
  %428 = add i32 %427, %426
  store i32 %428, ptr %24, align 8, !tbaa !14
  %429 = icmp eq i32 %420, 0
  br i1 %429, label %430, label %431

430:                                              ; preds = %416
  store i32 0, ptr %18, align 8, !tbaa !13
  store i8 0, ptr %21, align 8, !tbaa !35
  br label %435

431:                                              ; preds = %416
  %432 = sext i32 %420 to i64
  %433 = getelementptr inbounds i8, ptr %21, i64 %432
  %434 = load i8, ptr %21, align 1, !tbaa !35
  br label %435

435:                                              ; preds = %431, %430
  %436 = phi i8 [ 0, %430 ], [ %434, %431 ]
  %437 = phi ptr [ %25, %430 ], [ %433, %431 ]
  store ptr %437, ptr %17, align 8, !tbaa !18
  store ptr %25, ptr %16, align 8, !tbaa !16
  br label %438

438:                                              ; preds = %410, %413, %435
  %439 = phi ptr [ %406, %410 ], [ %437, %435 ], [ %406, %413 ]
  %440 = phi ptr [ %411, %410 ], [ %25, %435 ], [ %407, %413 ]
  %441 = phi i8 [ %412, %410 ], [ %436, %435 ], [ 0, %413 ]
  %442 = shl nuw nsw i64 %408, 2
  %443 = getelementptr inbounds nuw i8, ptr %9, i64 %442
  %444 = getelementptr inbounds nuw i8, ptr %443, i64 3
  store i8 %441, ptr %444, align 1, !tbaa !35
  %445 = add nuw nsw i64 %408, 1
  %446 = icmp eq i64 %445, %402
  br i1 %446, label %1991, label %405, !llvm.loop !114

447:                                              ; preds = %390
  %448 = load i32, ptr %75, align 8, !tbaa !71
  %449 = and i32 %448, 1
  %450 = icmp ne i32 %449, 0
  %451 = shl i32 %448, 1
  %452 = icmp eq i32 %451, %92
  %453 = and i1 %450, %452
  br i1 %453, label %454, label %2003

454:                                              ; preds = %447
  br i1 %74, label %455, label %457

455:                                              ; preds = %454
  %456 = add i32 %448, 1
  store i32 %456, ptr %75, align 8, !tbaa !71
  br label %2003

457:                                              ; preds = %454
  %458 = load i32, ptr %76, align 8, !tbaa !112
  %459 = icmp eq i32 %458, 16
  %460 = icmp sgt i32 %448, 0
  br i1 %459, label %462, label %461

461:                                              ; preds = %457
  br i1 %460, label %474, label %1991

462:                                              ; preds = %457
  br i1 %460, label %463, label %1991

463:                                              ; preds = %462, %463
  %464 = phi i64 [ %468, %463 ], [ 0, %462 ]
  %465 = tail call fastcc i32 @stbi__get16be(ptr noundef nonnull %12) #17
  %466 = trunc nuw i32 %465 to i16
  %467 = getelementptr inbounds nuw i16, ptr %11, i64 %464
  store i16 %466, ptr %467, align 2, !tbaa !39
  %468 = add nuw nsw i64 %464, 1
  %469 = load i32, ptr %75, align 8, !tbaa !71
  %470 = sext i32 %469 to i64
  %471 = icmp slt i64 %468, %470
  %472 = icmp samesign ult i64 %464, 2
  %473 = select i1 %471, i1 %472, i1 false
  br i1 %473, label %463, label %1991, !llvm.loop !115

474:                                              ; preds = %461, %474
  %475 = phi i64 [ %484, %474 ], [ 0, %461 ]
  %476 = tail call fastcc i32 @stbi__get16be(ptr noundef nonnull %12) #17
  %477 = load i32, ptr %76, align 8, !tbaa !112
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds i8, ptr @stbi__depth_scale_table, i64 %478
  %480 = load i8, ptr %479, align 1, !tbaa !35
  %481 = trunc i32 %476 to i8
  %482 = mul i8 %480, %481
  %483 = getelementptr inbounds nuw i8, ptr %10, i64 %475
  store i8 %482, ptr %483, align 1, !tbaa !35
  %484 = add nuw nsw i64 %475, 1
  %485 = load i32, ptr %75, align 8, !tbaa !71
  %486 = sext i32 %485 to i64
  %487 = icmp slt i64 %484, %486
  %488 = icmp samesign ult i64 %475, 2
  %489 = select i1 %487, i1 %488, i1 false
  br i1 %489, label %474, label %1991, !llvm.loop !116

490:                                              ; preds = %79
  %491 = icmp eq i32 %83, 0
  br i1 %491, label %492, label %2003

492:                                              ; preds = %490
  %493 = icmp eq i8 %88, 0
  %494 = icmp ne i32 %84, 0
  %495 = select i1 %493, i1 true, i1 %494
  br i1 %495, label %496, label %2003

496:                                              ; preds = %492
  br i1 %74, label %497, label %500

497:                                              ; preds = %496
  br i1 %493, label %2003, label %498

498:                                              ; preds = %497
  %499 = zext nneg i8 %88 to i32
  store i32 %499, ptr %75, align 8, !tbaa !71
  br label %2003

500:                                              ; preds = %496
  %501 = icmp ugt i32 %92, 1073741824
  br i1 %501, label %2003, label %502

502:                                              ; preds = %500
  %503 = add i32 %92, %86
  %504 = icmp slt i32 %503, %86
  br i1 %504, label %2003, label %505

505:                                              ; preds = %502
  %506 = icmp ugt i32 %503, %85
  br i1 %506, label %509, label %507

507:                                              ; preds = %505
  %508 = load ptr, ptr %14, align 8, !tbaa !109
  br label %523

509:                                              ; preds = %505
  %510 = icmp eq i32 %85, 0
  %511 = tail call i32 @llvm.umax.i32(i32 %92, i32 4096)
  %512 = select i1 %510, i32 %511, i32 %85
  br label %513

513:                                              ; preds = %513, %509
  %514 = phi i32 [ %512, %509 ], [ %516, %513 ]
  %515 = icmp ugt i32 %503, %514
  %516 = shl i32 %514, 1
  br i1 %515, label %513, label %517, !llvm.loop !117

517:                                              ; preds = %513
  %518 = load ptr, ptr %14, align 8, !tbaa !109
  %519 = zext i32 %514 to i64
  %520 = tail call fastcc ptr @rebump(ptr noundef %518, i64 noundef %519) #17
  %521 = icmp eq ptr %520, null
  br i1 %521, label %2003, label %522

522:                                              ; preds = %517
  store ptr %520, ptr %14, align 8, !tbaa !109
  br label %523

523:                                              ; preds = %507, %522
  %524 = phi ptr [ %520, %522 ], [ %508, %507 ]
  %525 = phi i32 [ %514, %522 ], [ %85, %507 ]
  %526 = zext i32 %86 to i64
  %527 = getelementptr inbounds nuw i8, ptr %524, i64 %526
  %528 = load ptr, ptr %19, align 8, !tbaa !8
  %529 = icmp eq ptr %528, null
  br i1 %529, label %530, label %533

530:                                              ; preds = %523
  %531 = load ptr, ptr %16, align 8, !tbaa !16
  %532 = load ptr, ptr %17, align 8, !tbaa !18
  br label %541

533:                                              ; preds = %523
  %534 = load ptr, ptr %17, align 8, !tbaa !18
  %535 = load ptr, ptr %16, align 8, !tbaa !16
  %536 = ptrtoint ptr %534 to i64
  %537 = ptrtoint ptr %535 to i64
  %538 = sub i64 %536, %537
  %539 = trunc i64 %538 to i32
  %540 = icmp sgt i32 %92, %539
  br i1 %540, label %555, label %541

541:                                              ; preds = %533, %530
  %542 = phi ptr [ %532, %530 ], [ %534, %533 ]
  %543 = phi ptr [ %531, %530 ], [ %535, %533 ]
  %544 = zext nneg i32 %92 to i64
  %545 = getelementptr inbounds nuw i8, ptr %543, i64 %544
  %546 = icmp ugt ptr %545, %542
  br i1 %546, label %2003, label %547

547:                                              ; preds = %541
  %548 = icmp eq i32 %92, 0
  br i1 %548, label %552, label %549

549:                                              ; preds = %547
  %550 = tail call ptr @memcpy(ptr noundef %527, ptr noundef %543, i64 noundef %544) #16
  %551 = load ptr, ptr %16, align 8, !tbaa !16
  br label %552

552:                                              ; preds = %547, %549
  %553 = phi ptr [ %551, %549 ], [ %543, %547 ]
  %554 = getelementptr inbounds nuw i8, ptr %553, i64 %544
  store ptr %554, ptr %16, align 8, !tbaa !16
  br label %1991

555:                                              ; preds = %533
  %556 = shl i64 %538, 32
  %557 = ashr exact i64 %556, 32
  %558 = tail call ptr @memcpy(ptr noundef %527, ptr noundef %535, i64 noundef %557) #16
  %559 = load ptr, ptr %19, align 8, !tbaa !8
  %560 = load ptr, ptr %20, align 8, !tbaa !33
  %561 = getelementptr inbounds i8, ptr %527, i64 %557
  %562 = sub i32 %92, %539
  %563 = tail call i32 %559(ptr noundef %560, ptr noundef %561, i32 noundef %562) #16
  %564 = icmp eq i32 %563, %562
  %565 = load ptr, ptr %17, align 8, !tbaa !18
  store ptr %565, ptr %16, align 8, !tbaa !16
  br i1 %564, label %1991, label %2003

566:                                              ; preds = %79
  %567 = icmp eq i32 %83, 0
  br i1 %567, label %568, label %2003

568:                                              ; preds = %566
  %569 = icmp eq i32 %1, 0
  br i1 %569, label %570, label %2003

570:                                              ; preds = %568
  %571 = load ptr, ptr %14, align 8, !tbaa !109
  %572 = icmp eq ptr %571, null
  br i1 %572, label %2003, label %573

573:                                              ; preds = %570
  %574 = load i32, ptr %12, align 8, !tbaa !24
  %575 = load i32, ptr %76, align 8, !tbaa !112
  %576 = mul i32 %575, %574
  %577 = add i32 %576, 7
  %578 = lshr i32 %577, 3
  %579 = load i32, ptr %77, align 4, !tbaa !25
  %580 = load i32, ptr %75, align 8, !tbaa !71
  %581 = mul i32 %580, %579
  %582 = mul i32 %581, %578
  %583 = add i32 %582, %579
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  %584 = sext i32 %583 to i64
  %585 = add nsw i64 %584, 15
  %586 = and i64 %585, -16
  %587 = add nsw i64 %586, 16
  %588 = load i64, ptr @arena_used, align 8, !tbaa !19
  %589 = sub i64 100663296, %588
  %590 = icmp ugt i64 %587, %589
  br i1 %590, label %1642, label %591

591:                                              ; preds = %573
  %592 = icmp eq i32 %82, 0
  %593 = getelementptr inbounds nuw i8, ptr @arena, i64 %588
  %594 = add i64 %587, %588
  store i64 %594, ptr @arena_used, align 8, !tbaa !19
  store i64 %584, ptr %593, align 8, !tbaa !19
  %595 = getelementptr inbounds nuw i8, ptr %593, i64 16
  store ptr %571, ptr %8, align 8, !tbaa !118
  %596 = sext i32 %86 to i64
  %597 = getelementptr inbounds i8, ptr %571, i64 %596
  %598 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %597, ptr %598, align 8, !tbaa !121
  %599 = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr %595, ptr %599, align 8, !tbaa !122
  %600 = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %595, ptr %600, align 8, !tbaa !123
  %601 = getelementptr inbounds i8, ptr %595, i64 %584
  %602 = getelementptr inbounds nuw i8, ptr %8, i64 48
  store ptr %601, ptr %602, align 8, !tbaa !124
  %603 = getelementptr inbounds nuw i8, ptr %8, i64 56
  store i32 1, ptr %603, align 8, !tbaa !125
  br i1 %592, label %604, label %631

604:                                              ; preds = %591
  %605 = icmp sgt i32 %86, 0
  br i1 %605, label %606, label %610

606:                                              ; preds = %604
  %607 = getelementptr inbounds nuw i8, ptr %571, i64 1
  %608 = load i8, ptr %571, align 1, !tbaa !35
  %609 = zext i8 %608 to i32
  br label %610

610:                                              ; preds = %606, %604
  %611 = phi ptr [ %607, %606 ], [ %571, %604 ]
  %612 = phi i32 [ %609, %606 ], [ 0, %604 ]
  %613 = and i32 %612, 15
  %614 = icmp ult ptr %611, %597
  br i1 %614, label %615, label %1642

615:                                              ; preds = %610
  %616 = getelementptr inbounds nuw i8, ptr %611, i64 1
  store ptr %616, ptr %8, align 8, !tbaa !118
  %617 = icmp ult ptr %616, %597
  br i1 %617, label %618, label %1642

618:                                              ; preds = %615
  %619 = load i8, ptr %611, align 1, !tbaa !35
  %620 = zext i8 %619 to i32
  %621 = shl nuw nsw i32 %612, 8
  %622 = or disjoint i32 %621, %620
  %623 = trunc nuw i32 %622 to i16
  %624 = urem i16 %623, 31
  %625 = icmp eq i16 %624, 0
  %626 = and i32 %620, 32
  %627 = icmp eq i32 %626, 0
  %628 = and i1 %627, %625
  %629 = icmp eq i32 %613, 8
  %630 = select i1 %628, i1 %629, i1 false
  br i1 %630, label %631, label %1642

631:                                              ; preds = %618, %591
  %632 = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 0, ptr %632, align 8, !tbaa !126
  %633 = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i32 0, ptr %633, align 8, !tbaa !127
  %634 = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 0, ptr %634, align 4, !tbaa !128
  %635 = getelementptr inbounds nuw i8, ptr %8, i64 60
  %636 = getelementptr inbounds nuw i8, ptr %8, i64 2080
  %637 = getelementptr inbounds nuw i8, ptr %7, i64 1
  %638 = getelementptr inbounds nuw i8, ptr %7, i64 2
  %639 = getelementptr inbounds nuw i8, ptr %4, i64 1056
  %640 = getelementptr inbounds nuw i8, ptr %4, i64 1024
  %641 = getelementptr inbounds nuw i8, ptr %4, i64 1124
  %642 = getelementptr inbounds nuw i8, ptr %4, i64 1156
  %643 = getelementptr inbounds nuw i8, ptr %4, i64 1444
  br label %647

644:                                              ; preds = %1639
  %645 = load i32, ptr %632, align 8, !tbaa !126
  %646 = load i32, ptr %633, align 8, !tbaa !127
  br label %647

647:                                              ; preds = %644, %631
  %648 = phi ptr [ %1640, %644 ], [ %595, %631 ]
  %649 = phi i32 [ %646, %644 ], [ 0, %631 ]
  %650 = phi i32 [ %645, %644 ], [ 0, %631 ]
  %651 = icmp slt i32 %650, 1
  br i1 %651, label %652, label %675

652:                                              ; preds = %647
  %653 = load ptr, ptr %8, align 8
  %654 = load ptr, ptr %598, align 8
  br label %655

655:                                              ; preds = %668, %652
  %656 = phi ptr [ %669, %668 ], [ %653, %652 ]
  %657 = phi i32 [ %673, %668 ], [ %650, %652 ]
  %658 = phi i32 [ %672, %668 ], [ %649, %652 ]
  %659 = lshr i32 %658, %657
  %660 = icmp eq i32 %659, 0
  br i1 %660, label %662, label %661

661:                                              ; preds = %655
  store ptr %654, ptr %8, align 8, !tbaa !118
  br label %675

662:                                              ; preds = %655
  %663 = icmp ult ptr %656, %654
  br i1 %663, label %664, label %668

664:                                              ; preds = %662
  %665 = getelementptr inbounds nuw i8, ptr %656, i64 1
  store ptr %665, ptr %8, align 8, !tbaa !118
  %666 = load i8, ptr %656, align 1, !tbaa !35
  %667 = zext i8 %666 to i32
  br label %668

668:                                              ; preds = %664, %662
  %669 = phi ptr [ %665, %664 ], [ %656, %662 ]
  %670 = phi i32 [ %667, %664 ], [ 0, %662 ]
  %671 = shl i32 %670, %657
  %672 = or i32 %671, %658
  store i32 %672, ptr %633, align 8, !tbaa !127
  %673 = add nsw i32 %657, 8
  store i32 %673, ptr %632, align 8, !tbaa !126
  %674 = icmp slt i32 %657, 17
  br i1 %674, label %655, label %675, !llvm.loop !129

675:                                              ; preds = %668, %661, %647
  %676 = phi i32 [ %650, %647 ], [ %657, %661 ], [ %673, %668 ]
  %677 = phi i32 [ %649, %647 ], [ %658, %661 ], [ %672, %668 ]
  %678 = and i32 %677, 1
  %679 = lshr i32 %677, 1
  store i32 %679, ptr %633, align 8, !tbaa !127
  %680 = add i32 %676, -1
  store i32 %680, ptr %632, align 8, !tbaa !126
  %681 = icmp slt i32 %680, 2
  br i1 %681, label %682, label %705

682:                                              ; preds = %675
  %683 = load ptr, ptr %8, align 8
  %684 = load ptr, ptr %598, align 8
  br label %685

685:                                              ; preds = %698, %682
  %686 = phi ptr [ %699, %698 ], [ %683, %682 ]
  %687 = phi i32 [ %703, %698 ], [ %680, %682 ]
  %688 = phi i32 [ %702, %698 ], [ %679, %682 ]
  %689 = lshr i32 %688, %687
  %690 = icmp eq i32 %689, 0
  br i1 %690, label %692, label %691

691:                                              ; preds = %685
  store ptr %684, ptr %8, align 8, !tbaa !118
  br label %705

692:                                              ; preds = %685
  %693 = icmp ult ptr %686, %684
  br i1 %693, label %694, label %698

694:                                              ; preds = %692
  %695 = getelementptr inbounds nuw i8, ptr %686, i64 1
  store ptr %695, ptr %8, align 8, !tbaa !118
  %696 = load i8, ptr %686, align 1, !tbaa !35
  %697 = zext i8 %696 to i32
  br label %698

698:                                              ; preds = %694, %692
  %699 = phi ptr [ %695, %694 ], [ %686, %692 ]
  %700 = phi i32 [ %697, %694 ], [ 0, %692 ]
  %701 = shl i32 %700, %687
  %702 = or i32 %701, %688
  store i32 %702, ptr %633, align 8, !tbaa !127
  %703 = add nsw i32 %687, 8
  store i32 %703, ptr %632, align 8, !tbaa !126
  %704 = icmp slt i32 %687, 17
  br i1 %704, label %685, label %705, !llvm.loop !129

705:                                              ; preds = %698, %691, %675
  %706 = phi i32 [ %680, %675 ], [ %687, %691 ], [ %703, %698 ]
  %707 = phi i32 [ %679, %675 ], [ %688, %691 ], [ %702, %698 ]
  %708 = and i32 %707, 3
  %709 = lshr i32 %707, 2
  store i32 %709, ptr %633, align 8, !tbaa !127
  %710 = add i32 %706, -2
  store i32 %710, ptr %632, align 8, !tbaa !126
  switch i32 %708, label %933 [
    i32 0, label %711
    i32 3, label %1642
    i32 1, label %927
    i32 2, label %934
  ]

711:                                              ; preds = %705
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %712 = and i32 %710, 7
  %713 = icmp eq i32 %712, 0
  br i1 %713, label %744, label %714

714:                                              ; preds = %711
  %715 = icmp slt i32 %710, 0
  br i1 %715, label %716, label %739

716:                                              ; preds = %714
  %717 = load ptr, ptr %8, align 8
  %718 = load ptr, ptr %598, align 8
  br label %719

719:                                              ; preds = %732, %716
  %720 = phi ptr [ %733, %732 ], [ %717, %716 ]
  %721 = phi i32 [ %737, %732 ], [ %710, %716 ]
  %722 = phi i32 [ %736, %732 ], [ %709, %716 ]
  %723 = lshr i32 %722, %721
  %724 = icmp eq i32 %723, 0
  br i1 %724, label %726, label %725

725:                                              ; preds = %719
  store ptr %718, ptr %8, align 8, !tbaa !118
  br label %739

726:                                              ; preds = %719
  %727 = icmp ult ptr %720, %718
  br i1 %727, label %728, label %732

728:                                              ; preds = %726
  %729 = getelementptr inbounds nuw i8, ptr %720, i64 1
  store ptr %729, ptr %8, align 8, !tbaa !118
  %730 = load i8, ptr %720, align 1, !tbaa !35
  %731 = zext i8 %730 to i32
  br label %732

732:                                              ; preds = %728, %726
  %733 = phi ptr [ %729, %728 ], [ %720, %726 ]
  %734 = phi i32 [ %731, %728 ], [ 0, %726 ]
  %735 = shl i32 %734, %721
  %736 = or i32 %735, %722
  store i32 %736, ptr %633, align 8, !tbaa !127
  %737 = add nsw i32 %721, 8
  store i32 %737, ptr %632, align 8, !tbaa !126
  %738 = icmp slt i32 %721, 17
  br i1 %738, label %719, label %739, !llvm.loop !129

739:                                              ; preds = %732, %725, %714
  %740 = phi i32 [ %710, %714 ], [ %721, %725 ], [ %737, %732 ]
  %741 = phi i32 [ %709, %714 ], [ %722, %725 ], [ %736, %732 ]
  %742 = lshr i32 %741, %712
  store i32 %742, ptr %633, align 8, !tbaa !127
  %743 = sub i32 %740, %712
  store i32 %743, ptr %632, align 8, !tbaa !126
  br label %744

744:                                              ; preds = %739, %711
  %745 = phi i32 [ %742, %739 ], [ %709, %711 ]
  %746 = phi i32 [ %743, %739 ], [ %710, %711 ]
  %747 = icmp sgt i32 %746, 0
  br i1 %747, label %748, label %804

748:                                              ; preds = %744
  %749 = add nsw i32 %746, -1
  %750 = lshr i32 %749, 3
  %751 = add nuw nsw i32 %750, 1
  %752 = zext nneg i32 %751 to i64
  %753 = and i64 %752, 3
  %754 = icmp ult i32 %746, 25
  br i1 %754, label %780, label %755

755:                                              ; preds = %748
  %756 = and i64 %752, 1073741820
  br label %757

757:                                              ; preds = %757, %755
  %758 = phi i64 [ 0, %755 ], [ %773, %757 ]
  %759 = phi i32 [ %745, %755 ], [ 0, %757 ]
  %760 = phi i64 [ 0, %755 ], [ %776, %757 ]
  %761 = trunc i32 %759 to i8
  %762 = getelementptr inbounds nuw i8, ptr %7, i64 %758
  store i8 %761, ptr %762, align 1, !tbaa !35
  %763 = lshr i32 %759, 8
  %764 = trunc i32 %763 to i8
  %765 = getelementptr inbounds nuw i8, ptr %7, i64 %758
  %766 = getelementptr inbounds nuw i8, ptr %765, i64 1
  store i8 %764, ptr %766, align 1, !tbaa !35
  %767 = lshr i32 %759, 16
  %768 = trunc i32 %767 to i8
  %769 = getelementptr inbounds nuw i8, ptr %7, i64 %758
  %770 = getelementptr inbounds nuw i8, ptr %769, i64 2
  store i8 %768, ptr %770, align 1, !tbaa !35
  %771 = lshr i32 %759, 24
  %772 = trunc nuw i32 %771 to i8
  %773 = add nuw nsw i64 %758, 4
  %774 = getelementptr inbounds nuw i8, ptr %7, i64 %758
  %775 = getelementptr inbounds nuw i8, ptr %774, i64 3
  store i8 %772, ptr %775, align 1, !tbaa !35
  %776 = add i64 %760, 4
  %777 = icmp eq i64 %776, %756
  br i1 %777, label %778, label %757, !llvm.loop !130

778:                                              ; preds = %757
  %779 = icmp eq i64 %753, 0
  br i1 %779, label %796, label %780

780:                                              ; preds = %778, %748
  %781 = phi i64 [ 0, %748 ], [ %773, %778 ]
  %782 = phi i32 [ %745, %748 ], [ 0, %778 ]
  %783 = icmp ne i64 %753, 0
  call void @llvm.assume(i1 %783)
  br label %784

784:                                              ; preds = %784, %780
  %785 = phi i64 [ %781, %780 ], [ %789, %784 ]
  %786 = phi i32 [ %782, %780 ], [ %791, %784 ]
  %787 = phi i64 [ 0, %780 ], [ %792, %784 ]
  %788 = trunc i32 %786 to i8
  %789 = add nuw nsw i64 %785, 1
  %790 = getelementptr inbounds nuw i8, ptr %7, i64 %785
  store i8 %788, ptr %790, align 1, !tbaa !35
  %791 = lshr i32 %786, 8
  %792 = add i64 %787, 1
  %793 = icmp eq i64 %792, %753
  br i1 %793, label %794, label %784, !llvm.loop !131

794:                                              ; preds = %784
  %795 = icmp samesign ult i64 %785, 3
  br label %796

796:                                              ; preds = %778, %794
  %797 = phi i1 [ false, %778 ], [ %795, %794 ]
  %798 = phi i32 [ 0, %778 ], [ %791, %794 ]
  %799 = add nsw i32 %746, -8
  %800 = and i32 %749, -8
  %801 = sub nsw i32 %799, %800
  %802 = sub nsw i32 %746, %800
  store i32 %798, ptr %633, align 8, !tbaa !127
  store i32 %801, ptr %632, align 8, !tbaa !126
  %803 = icmp eq i32 %802, 8
  br i1 %803, label %806, label %918

804:                                              ; preds = %744
  %805 = icmp slt i32 %746, 0
  br i1 %805, label %918, label %807

806:                                              ; preds = %796
  br i1 %797, label %807, label %849

807:                                              ; preds = %806, %804
  %808 = phi i64 [ %752, %806 ], [ 0, %804 ]
  %809 = load ptr, ptr %598, align 8, !tbaa !121
  %810 = load ptr, ptr %8, align 8, !tbaa !118
  %811 = and i64 %808, 1
  %812 = icmp eq i64 %811, 0
  br i1 %812, label %823, label %813

813:                                              ; preds = %807
  %814 = icmp ult ptr %810, %809
  br i1 %814, label %815, label %818

815:                                              ; preds = %813
  %816 = getelementptr inbounds nuw i8, ptr %810, i64 1
  store ptr %816, ptr %8, align 8, !tbaa !118
  %817 = load i8, ptr %810, align 1, !tbaa !35
  br label %818

818:                                              ; preds = %815, %813
  %819 = phi ptr [ %816, %815 ], [ %810, %813 ]
  %820 = phi i8 [ %817, %815 ], [ 0, %813 ]
  %821 = add nuw nsw i64 %808, 1
  %822 = getelementptr inbounds nuw i8, ptr %7, i64 %808
  store i8 %820, ptr %822, align 1, !tbaa !35
  br label %823

823:                                              ; preds = %818, %807
  %824 = phi i64 [ %808, %807 ], [ %821, %818 ]
  %825 = phi ptr [ %810, %807 ], [ %819, %818 ]
  %826 = icmp eq i64 %808, 3
  br i1 %826, label %849, label %827

827:                                              ; preds = %823, %842
  %828 = phi i64 [ %845, %842 ], [ %824, %823 ]
  %829 = phi ptr [ %843, %842 ], [ %825, %823 ]
  %830 = icmp ult ptr %829, %809
  br i1 %830, label %831, label %834

831:                                              ; preds = %827
  %832 = getelementptr inbounds nuw i8, ptr %829, i64 1
  store ptr %832, ptr %8, align 8, !tbaa !118
  %833 = load i8, ptr %829, align 1, !tbaa !35
  br label %834

834:                                              ; preds = %831, %827
  %835 = phi ptr [ %832, %831 ], [ %829, %827 ]
  %836 = phi i8 [ %833, %831 ], [ 0, %827 ]
  %837 = getelementptr inbounds nuw i8, ptr %7, i64 %828
  store i8 %836, ptr %837, align 1, !tbaa !35
  %838 = icmp ult ptr %835, %809
  br i1 %838, label %839, label %842

839:                                              ; preds = %834
  %840 = getelementptr inbounds nuw i8, ptr %835, i64 1
  store ptr %840, ptr %8, align 8, !tbaa !118
  %841 = load i8, ptr %835, align 1, !tbaa !35
  br label %842

842:                                              ; preds = %839, %834
  %843 = phi ptr [ %840, %839 ], [ %835, %834 ]
  %844 = phi i8 [ %841, %839 ], [ 0, %834 ]
  %845 = add nuw nsw i64 %828, 2
  %846 = getelementptr inbounds nuw i8, ptr %7, i64 %828
  %847 = getelementptr inbounds nuw i8, ptr %846, i64 1
  store i8 %844, ptr %847, align 1, !tbaa !35
  %848 = icmp eq i64 %845, 4
  br i1 %848, label %849, label %827, !llvm.loop !132

849:                                              ; preds = %823, %842, %806
  %850 = load i8, ptr %637, align 1, !tbaa !35
  %851 = zext i8 %850 to i32
  %852 = shl nuw nsw i32 %851, 8
  %853 = load i8, ptr %7, align 1, !tbaa !35
  %854 = zext i8 %853 to i32
  %855 = or disjoint i32 %852, %854
  %856 = load i16, ptr %638, align 1
  %857 = zext i16 %856 to i32
  %858 = xor i32 %855, %857
  %859 = icmp eq i32 %858, 65535
  br i1 %859, label %860, label %918

860:                                              ; preds = %849
  %861 = load ptr, ptr %8, align 8, !tbaa !118
  %862 = zext nneg i32 %855 to i64
  %863 = getelementptr inbounds nuw i8, ptr %861, i64 %862
  %864 = load ptr, ptr %598, align 8, !tbaa !121
  %865 = icmp ugt ptr %863, %864
  br i1 %865, label %918, label %866

866:                                              ; preds = %860
  %867 = getelementptr inbounds nuw i8, ptr %648, i64 %862
  %868 = load ptr, ptr %602, align 8, !tbaa !124
  %869 = icmp ugt ptr %867, %868
  br i1 %869, label %870, label %919

870:                                              ; preds = %866
  %871 = load i32, ptr %603, align 8, !tbaa !125
  %872 = icmp eq i32 %871, 0
  br i1 %872, label %918, label %873

873:                                              ; preds = %870
  %874 = load ptr, ptr %599, align 8, !tbaa !122
  %875 = ptrtoint ptr %648 to i64
  %876 = ptrtoint ptr %874 to i64
  %877 = sub i64 %875, %876
  %878 = trunc i64 %877 to i32
  %879 = xor i32 %878, -1
  %880 = icmp ugt i32 %855, %879
  br i1 %880, label %918, label %881

881:                                              ; preds = %873
  %882 = ptrtoint ptr %868 to i64
  %883 = sub i64 %882, %876
  %884 = trunc i64 %883 to i32
  %885 = add i32 %855, %878
  %886 = icmp ugt i32 %885, %884
  br i1 %886, label %887, label %893

887:                                              ; preds = %881, %890
  %888 = phi i32 [ %891, %890 ], [ %884, %881 ]
  %889 = icmp slt i32 %888, 0
  br i1 %889, label %918, label %890

890:                                              ; preds = %887
  %891 = shl nuw i32 %888, 1
  %892 = icmp ugt i32 %885, %891
  br i1 %892, label %887, label %893, !llvm.loop !133

893:                                              ; preds = %890, %881
  %894 = phi i32 [ %884, %881 ], [ %891, %890 ]
  %895 = zext i32 %894 to i64
  %896 = add nuw nsw i64 %895, 15
  %897 = and i64 %896, 8589934576
  %898 = add nuw nsw i64 %897, 16
  %899 = load i64, ptr @arena_used, align 8, !tbaa !19
  %900 = sub i64 100663296, %899
  %901 = icmp ugt i64 %898, %900
  br i1 %901, label %918, label %902

902:                                              ; preds = %893
  %903 = getelementptr inbounds nuw i8, ptr @arena, i64 %899
  %904 = add i64 %898, %899
  store i64 %904, ptr @arena_used, align 8, !tbaa !19
  store i64 %895, ptr %903, align 8, !tbaa !19
  %905 = getelementptr inbounds nuw i8, ptr %903, i64 16
  %906 = icmp eq ptr %874, null
  br i1 %906, label %913, label %907

907:                                              ; preds = %902
  %908 = getelementptr inbounds i8, ptr %874, i64 -16
  %909 = load i64, ptr %908, align 8, !tbaa !19
  %910 = call i64 @llvm.umin.i64(i64 %909, i64 range(i64 0, 4294967296) %895)
  %911 = call ptr @memcpy(ptr noundef nonnull %905, ptr noundef nonnull %874, i64 noundef %910) #16
  %912 = load ptr, ptr %8, align 8, !tbaa !118
  br label %913

913:                                              ; preds = %907, %902
  %914 = phi ptr [ %861, %902 ], [ %912, %907 ]
  store ptr %905, ptr %599, align 8, !tbaa !122
  %915 = and i64 %877, 4294967295
  %916 = getelementptr inbounds nuw i8, ptr %905, i64 %915
  store ptr %916, ptr %600, align 8, !tbaa !123
  %917 = getelementptr inbounds nuw i8, ptr %905, i64 %895
  store ptr %917, ptr %602, align 8, !tbaa !124
  br label %919

918:                                              ; preds = %893, %873, %870, %860, %849, %804, %796, %887
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %1642

919:                                              ; preds = %913, %866
  %920 = phi ptr [ %914, %913 ], [ %861, %866 ]
  %921 = phi ptr [ %916, %913 ], [ %648, %866 ]
  %922 = call ptr @memcpy(ptr noundef %921, ptr noundef %920, i64 noundef %862) #16
  %923 = load ptr, ptr %8, align 8, !tbaa !118
  %924 = getelementptr inbounds nuw i8, ptr %923, i64 %862
  store ptr %924, ptr %8, align 8, !tbaa !118
  %925 = load ptr, ptr %600, align 8, !tbaa !123
  %926 = getelementptr inbounds nuw i8, ptr %925, i64 %862
  store ptr %926, ptr %600, align 8, !tbaa !123
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %1639

927:                                              ; preds = %705
  %928 = call fastcc i32 @stbi__zbuild_huffman(ptr noundef %635, ptr noundef nonnull @stbi__zdefault_length, i32 noundef 288) #17
  %929 = icmp eq i32 %928, 0
  br i1 %929, label %1642, label %930

930:                                              ; preds = %927
  %931 = call fastcc i32 @stbi__zbuild_huffman(ptr noundef %636, ptr noundef nonnull @stbi__zdefault_distance, i32 noundef 32) #17
  %932 = icmp eq i32 %931, 0
  br i1 %932, label %1642, label %1307

933:                                              ; preds = %705
  unreachable

934:                                              ; preds = %705
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %935 = icmp slt i32 %710, 5
  br i1 %935, label %936, label %959

936:                                              ; preds = %934
  %937 = load ptr, ptr %8, align 8
  %938 = load ptr, ptr %598, align 8
  br label %939

939:                                              ; preds = %952, %936
  %940 = phi ptr [ %953, %952 ], [ %937, %936 ]
  %941 = phi i32 [ %957, %952 ], [ %710, %936 ]
  %942 = phi i32 [ %956, %952 ], [ %709, %936 ]
  %943 = lshr i32 %942, %941
  %944 = icmp eq i32 %943, 0
  br i1 %944, label %946, label %945

945:                                              ; preds = %939
  store ptr %938, ptr %8, align 8, !tbaa !118
  br label %959

946:                                              ; preds = %939
  %947 = icmp ult ptr %940, %938
  br i1 %947, label %948, label %952

948:                                              ; preds = %946
  %949 = getelementptr inbounds nuw i8, ptr %940, i64 1
  store ptr %949, ptr %8, align 8, !tbaa !118
  %950 = load i8, ptr %940, align 1, !tbaa !35
  %951 = zext i8 %950 to i32
  br label %952

952:                                              ; preds = %948, %946
  %953 = phi ptr [ %949, %948 ], [ %940, %946 ]
  %954 = phi i32 [ %951, %948 ], [ 0, %946 ]
  %955 = shl i32 %954, %941
  %956 = or i32 %955, %942
  store i32 %956, ptr %633, align 8, !tbaa !127
  %957 = add nsw i32 %941, 8
  store i32 %957, ptr %632, align 8, !tbaa !126
  %958 = icmp slt i32 %941, 17
  br i1 %958, label %939, label %959, !llvm.loop !129

959:                                              ; preds = %952, %945, %934
  %960 = phi i32 [ %710, %934 ], [ %941, %945 ], [ %957, %952 ]
  %961 = phi i32 [ %709, %934 ], [ %942, %945 ], [ %956, %952 ]
  %962 = and i32 %961, 31
  %963 = lshr i32 %961, 5
  store i32 %963, ptr %633, align 8, !tbaa !127
  %964 = add i32 %960, -5
  store i32 %964, ptr %632, align 8, !tbaa !126
  %965 = add nuw nsw i32 %962, 257
  %966 = icmp slt i32 %964, 5
  br i1 %966, label %967, label %990

967:                                              ; preds = %959
  %968 = load ptr, ptr %8, align 8
  %969 = load ptr, ptr %598, align 8
  br label %970

970:                                              ; preds = %983, %967
  %971 = phi ptr [ %984, %983 ], [ %968, %967 ]
  %972 = phi i32 [ %988, %983 ], [ %964, %967 ]
  %973 = phi i32 [ %987, %983 ], [ %963, %967 ]
  %974 = lshr i32 %973, %972
  %975 = icmp eq i32 %974, 0
  br i1 %975, label %977, label %976

976:                                              ; preds = %970
  store ptr %969, ptr %8, align 8, !tbaa !118
  br label %990

977:                                              ; preds = %970
  %978 = icmp ult ptr %971, %969
  br i1 %978, label %979, label %983

979:                                              ; preds = %977
  %980 = getelementptr inbounds nuw i8, ptr %971, i64 1
  store ptr %980, ptr %8, align 8, !tbaa !118
  %981 = load i8, ptr %971, align 1, !tbaa !35
  %982 = zext i8 %981 to i32
  br label %983

983:                                              ; preds = %979, %977
  %984 = phi ptr [ %980, %979 ], [ %971, %977 ]
  %985 = phi i32 [ %982, %979 ], [ 0, %977 ]
  %986 = shl i32 %985, %972
  %987 = or i32 %986, %973
  store i32 %987, ptr %633, align 8, !tbaa !127
  %988 = add nsw i32 %972, 8
  store i32 %988, ptr %632, align 8, !tbaa !126
  %989 = icmp slt i32 %972, 17
  br i1 %989, label %970, label %990, !llvm.loop !129

990:                                              ; preds = %983, %976, %959
  %991 = phi i32 [ %964, %959 ], [ %972, %976 ], [ %988, %983 ]
  %992 = phi i32 [ %963, %959 ], [ %973, %976 ], [ %987, %983 ]
  %993 = and i32 %992, 31
  %994 = lshr i32 %992, 5
  store i32 %994, ptr %633, align 8, !tbaa !127
  %995 = add i32 %991, -5
  store i32 %995, ptr %632, align 8, !tbaa !126
  %996 = add nuw nsw i32 %993, 1
  %997 = icmp slt i32 %995, 4
  br i1 %997, label %998, label %1021

998:                                              ; preds = %990
  %999 = load ptr, ptr %8, align 8
  %1000 = load ptr, ptr %598, align 8
  br label %1001

1001:                                             ; preds = %1014, %998
  %1002 = phi ptr [ %1015, %1014 ], [ %999, %998 ]
  %1003 = phi i32 [ %1019, %1014 ], [ %995, %998 ]
  %1004 = phi i32 [ %1018, %1014 ], [ %994, %998 ]
  %1005 = lshr i32 %1004, %1003
  %1006 = icmp eq i32 %1005, 0
  br i1 %1006, label %1008, label %1007

1007:                                             ; preds = %1001
  store ptr %1000, ptr %8, align 8, !tbaa !118
  br label %1021

1008:                                             ; preds = %1001
  %1009 = icmp ult ptr %1002, %1000
  br i1 %1009, label %1010, label %1014

1010:                                             ; preds = %1008
  %1011 = getelementptr inbounds nuw i8, ptr %1002, i64 1
  store ptr %1011, ptr %8, align 8, !tbaa !118
  %1012 = load i8, ptr %1002, align 1, !tbaa !35
  %1013 = zext i8 %1012 to i32
  br label %1014

1014:                                             ; preds = %1010, %1008
  %1015 = phi ptr [ %1011, %1010 ], [ %1002, %1008 ]
  %1016 = phi i32 [ %1013, %1010 ], [ 0, %1008 ]
  %1017 = shl i32 %1016, %1003
  %1018 = or i32 %1017, %1004
  store i32 %1018, ptr %633, align 8, !tbaa !127
  %1019 = add nsw i32 %1003, 8
  store i32 %1019, ptr %632, align 8, !tbaa !126
  %1020 = icmp slt i32 %1003, 17
  br i1 %1020, label %1001, label %1021, !llvm.loop !129

1021:                                             ; preds = %1014, %1007, %990
  %1022 = phi i32 [ %995, %990 ], [ %1003, %1007 ], [ %1019, %1014 ]
  %1023 = phi i32 [ %994, %990 ], [ %1004, %1007 ], [ %1018, %1014 ]
  %1024 = and i32 %1023, 15
  %1025 = lshr i32 %1023, 4
  store i32 %1025, ptr %633, align 8, !tbaa !127
  %1026 = add i32 %1022, -4
  store i32 %1026, ptr %632, align 8, !tbaa !126
  %1027 = add nuw nsw i32 %1024, 4
  %1028 = call ptr @memset(ptr noundef nonnull %6, i32 noundef 0, i64 noundef 19) #16
  %1029 = load i32, ptr %632, align 8, !tbaa !126
  %1030 = load i32, ptr %633, align 8, !tbaa !127
  %1031 = zext nneg i32 %1027 to i64
  %1032 = load ptr, ptr %8, align 8
  %1033 = load ptr, ptr %598, align 8
  br label %1034

1034:                                             ; preds = %1062, %1021
  %1035 = phi ptr [ %1032, %1021 ], [ %1063, %1062 ]
  %1036 = phi i64 [ 0, %1021 ], [ %1074, %1062 ]
  %1037 = phi i32 [ %1029, %1021 ], [ %1067, %1062 ]
  %1038 = phi i32 [ %1030, %1021 ], [ %1066, %1062 ]
  %1039 = icmp slt i32 %1037, 3
  br i1 %1039, label %1040, label %1062

1040:                                             ; preds = %1034, %1054
  %1041 = phi ptr [ %1055, %1054 ], [ %1035, %1034 ]
  %1042 = phi ptr [ %1056, %1054 ], [ %1035, %1034 ]
  %1043 = phi i32 [ %1060, %1054 ], [ %1037, %1034 ]
  %1044 = phi i32 [ %1059, %1054 ], [ %1038, %1034 ]
  %1045 = lshr i32 %1044, %1043
  %1046 = icmp eq i32 %1045, 0
  br i1 %1046, label %1048, label %1047

1047:                                             ; preds = %1040
  store ptr %1033, ptr %8, align 8, !tbaa !118
  br label %1062

1048:                                             ; preds = %1040
  %1049 = icmp ult ptr %1042, %1033
  br i1 %1049, label %1050, label %1054

1050:                                             ; preds = %1048
  %1051 = getelementptr inbounds nuw i8, ptr %1042, i64 1
  store ptr %1051, ptr %8, align 8, !tbaa !118
  %1052 = load i8, ptr %1042, align 1, !tbaa !35
  %1053 = zext i8 %1052 to i32
  br label %1054

1054:                                             ; preds = %1050, %1048
  %1055 = phi ptr [ %1051, %1050 ], [ %1041, %1048 ]
  %1056 = phi ptr [ %1051, %1050 ], [ %1042, %1048 ]
  %1057 = phi i32 [ %1053, %1050 ], [ 0, %1048 ]
  %1058 = shl i32 %1057, %1043
  %1059 = or i32 %1058, %1044
  store i32 %1059, ptr %633, align 8, !tbaa !127
  %1060 = add nsw i32 %1043, 8
  store i32 %1060, ptr %632, align 8, !tbaa !126
  %1061 = icmp slt i32 %1043, 17
  br i1 %1061, label %1040, label %1062, !llvm.loop !129

1062:                                             ; preds = %1054, %1047, %1034
  %1063 = phi ptr [ %1035, %1034 ], [ %1033, %1047 ], [ %1055, %1054 ]
  %1064 = phi i32 [ %1037, %1034 ], [ %1043, %1047 ], [ %1060, %1054 ]
  %1065 = phi i32 [ %1038, %1034 ], [ %1044, %1047 ], [ %1059, %1054 ]
  %1066 = lshr i32 %1065, 3
  store i32 %1066, ptr %633, align 8, !tbaa !127
  %1067 = add i32 %1064, -3
  store i32 %1067, ptr %632, align 8, !tbaa !126
  %1068 = trunc i32 %1065 to i8
  %1069 = and i8 %1068, 7
  %1070 = getelementptr inbounds nuw i8, ptr @stbi__compute_huffman_codes.length_dezigzag, i64 %1036
  %1071 = load i8, ptr %1070, align 1, !tbaa !35
  %1072 = zext i8 %1071 to i64
  %1073 = getelementptr inbounds nuw i8, ptr %6, i64 %1072
  store i8 %1069, ptr %1073, align 1, !tbaa !35
  %1074 = add nuw nsw i64 %1036, 1
  %1075 = icmp eq i64 %1074, %1031
  br i1 %1075, label %1076, label %1034, !llvm.loop !134

1076:                                             ; preds = %1062
  %1077 = add nuw nsw i32 %996, %965
  %1078 = call fastcc i32 @stbi__zbuild_huffman(ptr noundef %4, ptr noundef nonnull %6, i32 noundef 19) #17
  %1079 = icmp eq i32 %1078, 0
  br i1 %1079, label %1301, label %1080

1080:                                             ; preds = %1076, %1293
  %1081 = phi i32 [ %1294, %1293 ], [ 0, %1076 ]
  %1082 = load i32, ptr %632, align 8, !tbaa !126
  %1083 = icmp slt i32 %1082, 16
  br i1 %1083, label %1084, label %1115

1084:                                             ; preds = %1080
  %1085 = load ptr, ptr %8, align 8, !tbaa !118
  %1086 = load ptr, ptr %598, align 8, !tbaa !121
  %1087 = icmp ult ptr %1085, %1086
  br i1 %1087, label %1093, label %1088

1088:                                             ; preds = %1084
  %1089 = load i32, ptr %634, align 4, !tbaa !128
  %1090 = icmp eq i32 %1089, 0
  br i1 %1090, label %1091, label %1301

1091:                                             ; preds = %1088
  store i32 1, ptr %634, align 4, !tbaa !128
  %1092 = add nsw i32 %1082, 16
  br label %1115

1093:                                             ; preds = %1084
  %1094 = load i32, ptr %633, align 8, !tbaa !127
  br label %1095

1095:                                             ; preds = %1108, %1093
  %1096 = phi ptr [ %1109, %1108 ], [ %1085, %1093 ]
  %1097 = phi i32 [ %1113, %1108 ], [ %1082, %1093 ]
  %1098 = phi i32 [ %1112, %1108 ], [ %1094, %1093 ]
  %1099 = lshr i32 %1098, %1097
  %1100 = icmp eq i32 %1099, 0
  br i1 %1100, label %1102, label %1101

1101:                                             ; preds = %1095
  store ptr %1086, ptr %8, align 8, !tbaa !118
  br label %1115

1102:                                             ; preds = %1095
  %1103 = icmp ult ptr %1096, %1086
  br i1 %1103, label %1104, label %1108

1104:                                             ; preds = %1102
  %1105 = getelementptr inbounds nuw i8, ptr %1096, i64 1
  store ptr %1105, ptr %8, align 8, !tbaa !118
  %1106 = load i8, ptr %1096, align 1, !tbaa !35
  %1107 = zext i8 %1106 to i32
  br label %1108

1108:                                             ; preds = %1104, %1102
  %1109 = phi ptr [ %1105, %1104 ], [ %1096, %1102 ]
  %1110 = phi i32 [ %1107, %1104 ], [ 0, %1102 ]
  %1111 = shl nuw i32 %1110, %1097
  %1112 = or i32 %1111, %1098
  store i32 %1112, ptr %633, align 8, !tbaa !127
  %1113 = add nsw i32 %1097, 8
  store i32 %1113, ptr %632, align 8, !tbaa !126
  %1114 = icmp slt i32 %1097, 17
  br i1 %1114, label %1095, label %1115, !llvm.loop !129

1115:                                             ; preds = %1108, %1101, %1091, %1080
  %1116 = phi i32 [ %1082, %1080 ], [ %1097, %1101 ], [ %1092, %1091 ], [ %1113, %1108 ]
  %1117 = load i32, ptr %633, align 8, !tbaa !127
  %1118 = and i32 %1117, 511
  %1119 = zext nneg i32 %1118 to i64
  %1120 = getelementptr inbounds nuw i16, ptr %4, i64 %1119
  %1121 = load i16, ptr %1120, align 2, !tbaa !39
  %1122 = icmp eq i16 %1121, 0
  br i1 %1122, label %1129, label %1123

1123:                                             ; preds = %1115
  %1124 = zext i16 %1121 to i32
  %1125 = lshr i32 %1124, 9
  %1126 = lshr i32 %1117, %1125
  store i32 %1126, ptr %633, align 8, !tbaa !127
  %1127 = sub i32 %1116, %1125
  store i32 %1127, ptr %632, align 8, !tbaa !126
  %1128 = and i32 %1124, 511
  br label %1166

1129:                                             ; preds = %1115
  %1130 = trunc i32 %1117 to i16
  %1131 = call i16 @llvm.bitreverse.i16(i16 %1130)
  %1132 = zext i16 %1131 to i32
  br label %1133

1133:                                             ; preds = %1133, %1129
  %1134 = phi i32 [ 10, %1129 ], [ %1139, %1133 ]
  %1135 = sext i32 %1134 to i64
  %1136 = getelementptr inbounds i32, ptr %639, i64 %1135
  %1137 = load i32, ptr %1136, align 4, !tbaa !4
  %1138 = icmp sgt i32 %1137, %1132
  %1139 = add i32 %1134, 1
  br i1 %1138, label %1140, label %1133

1140:                                             ; preds = %1133
  %1141 = icmp sgt i32 %1134, 15
  br i1 %1141, label %1301, label %1142

1142:                                             ; preds = %1140
  %1143 = sub i32 16, %1134
  %1144 = lshr i32 %1132, %1143
  %1145 = getelementptr inbounds i16, ptr %640, i64 %1135
  %1146 = load i16, ptr %1145, align 2, !tbaa !39
  %1147 = zext i16 %1146 to i32
  %1148 = sub nsw i32 %1144, %1147
  %1149 = getelementptr inbounds i16, ptr %641, i64 %1135
  %1150 = load i16, ptr %1149, align 2, !tbaa !39
  %1151 = zext i16 %1150 to i32
  %1152 = add nsw i32 %1148, %1151
  %1153 = icmp sgt i32 %1152, 287
  br i1 %1153, label %1301, label %1154

1154:                                             ; preds = %1142
  %1155 = sext i32 %1152 to i64
  %1156 = getelementptr inbounds i8, ptr %642, i64 %1155
  %1157 = load i8, ptr %1156, align 1, !tbaa !35
  %1158 = zext i8 %1157 to i32
  %1159 = icmp eq i32 %1134, %1158
  br i1 %1159, label %1160, label %1301

1160:                                             ; preds = %1154
  %1161 = lshr i32 %1117, %1134
  store i32 %1161, ptr %633, align 8, !tbaa !127
  %1162 = sub i32 %1116, %1134
  store i32 %1162, ptr %632, align 8, !tbaa !126
  %1163 = getelementptr inbounds i16, ptr %643, i64 %1155
  %1164 = load i16, ptr %1163, align 2, !tbaa !39
  %1165 = zext i16 %1164 to i32
  br label %1166

1166:                                             ; preds = %1160, %1123
  %1167 = phi i32 [ %1161, %1160 ], [ %1126, %1123 ]
  %1168 = phi i32 [ %1162, %1160 ], [ %1127, %1123 ]
  %1169 = phi i32 [ %1165, %1160 ], [ %1128, %1123 ]
  %1170 = icmp samesign ugt i32 %1169, 18
  br i1 %1170, label %1301, label %1171

1171:                                             ; preds = %1166
  %1172 = icmp samesign ult i32 %1169, 16
  br i1 %1172, label %1173, label %1178

1173:                                             ; preds = %1171
  %1174 = trunc nuw nsw i32 %1169 to i8
  %1175 = add nsw i32 %1081, 1
  %1176 = sext i32 %1081 to i64
  %1177 = getelementptr inbounds i8, ptr %5, i64 %1176
  store i8 %1174, ptr %1177, align 1, !tbaa !35
  br label %1293

1178:                                             ; preds = %1171
  switch i32 %1169, label %1250 [
    i32 16, label %1179
    i32 17, label %1218
  ]

1179:                                             ; preds = %1178
  %1180 = icmp slt i32 %1168, 2
  br i1 %1180, label %1181, label %1204

1181:                                             ; preds = %1179
  %1182 = load ptr, ptr %8, align 8
  %1183 = load ptr, ptr %598, align 8
  br label %1184

1184:                                             ; preds = %1197, %1181
  %1185 = phi ptr [ %1198, %1197 ], [ %1182, %1181 ]
  %1186 = phi i32 [ %1202, %1197 ], [ %1168, %1181 ]
  %1187 = phi i32 [ %1201, %1197 ], [ %1167, %1181 ]
  %1188 = lshr i32 %1187, %1186
  %1189 = icmp eq i32 %1188, 0
  br i1 %1189, label %1191, label %1190

1190:                                             ; preds = %1184
  store ptr %1183, ptr %8, align 8, !tbaa !118
  br label %1204

1191:                                             ; preds = %1184
  %1192 = icmp ult ptr %1185, %1183
  br i1 %1192, label %1193, label %1197

1193:                                             ; preds = %1191
  %1194 = getelementptr inbounds nuw i8, ptr %1185, i64 1
  store ptr %1194, ptr %8, align 8, !tbaa !118
  %1195 = load i8, ptr %1185, align 1, !tbaa !35
  %1196 = zext i8 %1195 to i32
  br label %1197

1197:                                             ; preds = %1193, %1191
  %1198 = phi ptr [ %1194, %1193 ], [ %1185, %1191 ]
  %1199 = phi i32 [ %1196, %1193 ], [ 0, %1191 ]
  %1200 = shl i32 %1199, %1186
  %1201 = or i32 %1200, %1187
  store i32 %1201, ptr %633, align 8, !tbaa !127
  %1202 = add nsw i32 %1186, 8
  store i32 %1202, ptr %632, align 8, !tbaa !126
  %1203 = icmp slt i32 %1186, 17
  br i1 %1203, label %1184, label %1204, !llvm.loop !129

1204:                                             ; preds = %1197, %1190, %1179
  %1205 = phi i32 [ %1168, %1179 ], [ %1186, %1190 ], [ %1202, %1197 ]
  %1206 = phi i32 [ %1167, %1179 ], [ %1187, %1190 ], [ %1201, %1197 ]
  %1207 = lshr i32 %1206, 2
  store i32 %1207, ptr %633, align 8, !tbaa !127
  %1208 = add i32 %1205, -2
  store i32 %1208, ptr %632, align 8, !tbaa !126
  %1209 = icmp eq i32 %1081, 0
  br i1 %1209, label %1301, label %1210

1210:                                             ; preds = %1204
  %1211 = and i32 %1206, 3
  %1212 = add nuw nsw i32 %1211, 3
  %1213 = add i32 %1081, -1
  %1214 = sext i32 %1213 to i64
  %1215 = getelementptr inbounds i8, ptr %5, i64 %1214
  %1216 = load i8, ptr %1215, align 1, !tbaa !35
  %1217 = zext i8 %1216 to i32
  br label %1282

1218:                                             ; preds = %1178
  %1219 = icmp slt i32 %1168, 3
  br i1 %1219, label %1220, label %1243

1220:                                             ; preds = %1218
  %1221 = load ptr, ptr %8, align 8
  %1222 = load ptr, ptr %598, align 8
  br label %1223

1223:                                             ; preds = %1236, %1220
  %1224 = phi ptr [ %1237, %1236 ], [ %1221, %1220 ]
  %1225 = phi i32 [ %1241, %1236 ], [ %1168, %1220 ]
  %1226 = phi i32 [ %1240, %1236 ], [ %1167, %1220 ]
  %1227 = lshr i32 %1226, %1225
  %1228 = icmp eq i32 %1227, 0
  br i1 %1228, label %1230, label %1229

1229:                                             ; preds = %1223
  store ptr %1222, ptr %8, align 8, !tbaa !118
  br label %1243

1230:                                             ; preds = %1223
  %1231 = icmp ult ptr %1224, %1222
  br i1 %1231, label %1232, label %1236

1232:                                             ; preds = %1230
  %1233 = getelementptr inbounds nuw i8, ptr %1224, i64 1
  store ptr %1233, ptr %8, align 8, !tbaa !118
  %1234 = load i8, ptr %1224, align 1, !tbaa !35
  %1235 = zext i8 %1234 to i32
  br label %1236

1236:                                             ; preds = %1232, %1230
  %1237 = phi ptr [ %1233, %1232 ], [ %1224, %1230 ]
  %1238 = phi i32 [ %1235, %1232 ], [ 0, %1230 ]
  %1239 = shl i32 %1238, %1225
  %1240 = or i32 %1239, %1226
  store i32 %1240, ptr %633, align 8, !tbaa !127
  %1241 = add nsw i32 %1225, 8
  store i32 %1241, ptr %632, align 8, !tbaa !126
  %1242 = icmp slt i32 %1225, 17
  br i1 %1242, label %1223, label %1243, !llvm.loop !129

1243:                                             ; preds = %1236, %1229, %1218
  %1244 = phi i32 [ %1168, %1218 ], [ %1225, %1229 ], [ %1241, %1236 ]
  %1245 = phi i32 [ %1167, %1218 ], [ %1226, %1229 ], [ %1240, %1236 ]
  %1246 = and i32 %1245, 7
  %1247 = lshr i32 %1245, 3
  store i32 %1247, ptr %633, align 8, !tbaa !127
  %1248 = add i32 %1244, -3
  store i32 %1248, ptr %632, align 8, !tbaa !126
  %1249 = add nuw nsw i32 %1246, 3
  br label %1282

1250:                                             ; preds = %1178
  %1251 = icmp slt i32 %1168, 7
  br i1 %1251, label %1252, label %1275

1252:                                             ; preds = %1250
  %1253 = load ptr, ptr %8, align 8
  %1254 = load ptr, ptr %598, align 8
  br label %1255

1255:                                             ; preds = %1268, %1252
  %1256 = phi ptr [ %1269, %1268 ], [ %1253, %1252 ]
  %1257 = phi i32 [ %1273, %1268 ], [ %1168, %1252 ]
  %1258 = phi i32 [ %1272, %1268 ], [ %1167, %1252 ]
  %1259 = lshr i32 %1258, %1257
  %1260 = icmp eq i32 %1259, 0
  br i1 %1260, label %1262, label %1261

1261:                                             ; preds = %1255
  store ptr %1254, ptr %8, align 8, !tbaa !118
  br label %1275

1262:                                             ; preds = %1255
  %1263 = icmp ult ptr %1256, %1254
  br i1 %1263, label %1264, label %1268

1264:                                             ; preds = %1262
  %1265 = getelementptr inbounds nuw i8, ptr %1256, i64 1
  store ptr %1265, ptr %8, align 8, !tbaa !118
  %1266 = load i8, ptr %1256, align 1, !tbaa !35
  %1267 = zext i8 %1266 to i32
  br label %1268

1268:                                             ; preds = %1264, %1262
  %1269 = phi ptr [ %1265, %1264 ], [ %1256, %1262 ]
  %1270 = phi i32 [ %1267, %1264 ], [ 0, %1262 ]
  %1271 = shl i32 %1270, %1257
  %1272 = or i32 %1271, %1258
  store i32 %1272, ptr %633, align 8, !tbaa !127
  %1273 = add nsw i32 %1257, 8
  store i32 %1273, ptr %632, align 8, !tbaa !126
  %1274 = icmp slt i32 %1257, 17
  br i1 %1274, label %1255, label %1275, !llvm.loop !129

1275:                                             ; preds = %1268, %1261, %1250
  %1276 = phi i32 [ %1168, %1250 ], [ %1257, %1261 ], [ %1273, %1268 ]
  %1277 = phi i32 [ %1167, %1250 ], [ %1258, %1261 ], [ %1272, %1268 ]
  %1278 = and i32 %1277, 127
  %1279 = lshr i32 %1277, 7
  store i32 %1279, ptr %633, align 8, !tbaa !127
  %1280 = add i32 %1276, -7
  store i32 %1280, ptr %632, align 8, !tbaa !126
  %1281 = add nuw nsw i32 %1278, 11
  br label %1282

1282:                                             ; preds = %1275, %1243, %1210
  %1283 = phi i32 [ %1212, %1210 ], [ %1249, %1243 ], [ %1281, %1275 ]
  %1284 = phi i32 [ %1217, %1210 ], [ 0, %1243 ], [ 0, %1275 ]
  %1285 = sub i32 %1077, %1081
  %1286 = icmp slt i32 %1285, %1283
  br i1 %1286, label %1301, label %1287

1287:                                             ; preds = %1282
  %1288 = sext i32 %1081 to i64
  %1289 = getelementptr inbounds i8, ptr %5, i64 %1288
  %1290 = zext nneg i32 %1283 to i64
  %1291 = call ptr @memset(ptr noundef nonnull %1289, i32 noundef %1284, i64 noundef %1290) #16
  %1292 = add nsw i32 %1283, %1081
  br label %1293

1293:                                             ; preds = %1287, %1173
  %1294 = phi i32 [ %1175, %1173 ], [ %1292, %1287 ]
  %1295 = icmp slt i32 %1294, %1077
  br i1 %1295, label %1080, label %1296, !llvm.loop !135

1296:                                             ; preds = %1293
  %1297 = icmp eq i32 %1294, %1077
  br i1 %1297, label %1298, label %1301

1298:                                             ; preds = %1296
  %1299 = call fastcc i32 @stbi__zbuild_huffman(ptr noundef %635, ptr noundef nonnull %5, i32 noundef %965) #17
  %1300 = icmp eq i32 %1299, 0
  br i1 %1300, label %1301, label %1302

1301:                                             ; preds = %1298, %1296, %1076, %1282, %1204, %1166, %1154, %1142, %1140, %1088
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %1642

1302:                                             ; preds = %1298
  %1303 = zext nneg i32 %965 to i64
  %1304 = getelementptr inbounds nuw i8, ptr %5, i64 %1303
  %1305 = call fastcc i32 @stbi__zbuild_huffman(ptr noundef %636, ptr noundef nonnull %1304, i32 noundef %996) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %1306 = icmp eq i32 %1305, 0
  br i1 %1306, label %1642, label %1307

1307:                                             ; preds = %1302, %930
  %1308 = load ptr, ptr %600, align 8, !tbaa !123
  br label %1309

1309:                                             ; preds = %1583, %1307
  %1310 = phi ptr [ %1308, %1307 ], [ %1584, %1583 ]
  %1311 = call fastcc i32 @stbi__zhuffman_decode(ptr noundef nonnull %8, ptr noundef %635) #17
  %1312 = icmp slt i32 %1311, 256
  br i1 %1312, label %1313, label %1366

1313:                                             ; preds = %1309
  %1314 = icmp slt i32 %1311, 0
  br i1 %1314, label %1642, label %1315

1315:                                             ; preds = %1313
  %1316 = load ptr, ptr %602, align 8, !tbaa !124
  %1317 = icmp ult ptr %1310, %1316
  br i1 %1317, label %1362, label %1318

1318:                                             ; preds = %1315
  store ptr %1310, ptr %600, align 8, !tbaa !123
  %1319 = load i32, ptr %603, align 8, !tbaa !125
  %1320 = icmp eq i32 %1319, 0
  br i1 %1320, label %1642, label %1321

1321:                                             ; preds = %1318
  %1322 = load ptr, ptr %599, align 8, !tbaa !122
  %1323 = ptrtoint ptr %1310 to i64
  %1324 = ptrtoint ptr %1322 to i64
  %1325 = sub i64 %1323, %1324
  %1326 = trunc i64 %1325 to i32
  %1327 = icmp eq i32 %1326, -1
  br i1 %1327, label %1642, label %1328

1328:                                             ; preds = %1321
  %1329 = ptrtoint ptr %1316 to i64
  %1330 = sub i64 %1329, %1324
  %1331 = trunc i64 %1330 to i32
  %1332 = icmp ult i32 %1326, %1331
  br i1 %1332, label %1339, label %1333

1333:                                             ; preds = %1328, %1336
  %1334 = phi i32 [ %1337, %1336 ], [ %1331, %1328 ]
  %1335 = icmp slt i32 %1334, 0
  br i1 %1335, label %1642, label %1336

1336:                                             ; preds = %1333
  %1337 = shl nuw i32 %1334, 1
  %1338 = icmp ugt i32 %1337, %1326
  br i1 %1338, label %1339, label %1333, !llvm.loop !133

1339:                                             ; preds = %1336, %1328
  %1340 = phi i32 [ %1331, %1328 ], [ %1337, %1336 ]
  %1341 = zext i32 %1340 to i64
  %1342 = add nuw nsw i64 %1341, 15
  %1343 = and i64 %1342, 8589934576
  %1344 = add nuw nsw i64 %1343, 16
  %1345 = load i64, ptr @arena_used, align 8, !tbaa !19
  %1346 = sub i64 100663296, %1345
  %1347 = icmp ugt i64 %1344, %1346
  br i1 %1347, label %1642, label %1348

1348:                                             ; preds = %1339
  %1349 = getelementptr inbounds nuw i8, ptr @arena, i64 %1345
  %1350 = add i64 %1344, %1345
  store i64 %1350, ptr @arena_used, align 8, !tbaa !19
  store i64 %1341, ptr %1349, align 8, !tbaa !19
  %1351 = getelementptr inbounds nuw i8, ptr %1349, i64 16
  %1352 = icmp eq ptr %1322, null
  br i1 %1352, label %1358, label %1353

1353:                                             ; preds = %1348
  %1354 = getelementptr inbounds i8, ptr %1322, i64 -16
  %1355 = load i64, ptr %1354, align 8, !tbaa !19
  %1356 = call i64 @llvm.umin.i64(i64 %1355, i64 range(i64 0, 4294967296) %1341)
  %1357 = call ptr @memcpy(ptr noundef nonnull %1351, ptr noundef nonnull %1322, i64 noundef %1356) #16
  br label %1358

1358:                                             ; preds = %1353, %1348
  store ptr %1351, ptr %599, align 8, !tbaa !122
  %1359 = and i64 %1325, 4294967295
  %1360 = getelementptr inbounds nuw i8, ptr %1351, i64 %1359
  store ptr %1360, ptr %600, align 8, !tbaa !123
  %1361 = getelementptr inbounds nuw i8, ptr %1351, i64 %1341
  store ptr %1361, ptr %602, align 8, !tbaa !124
  br label %1362

1362:                                             ; preds = %1358, %1315
  %1363 = phi ptr [ %1360, %1358 ], [ %1310, %1315 ]
  %1364 = trunc nuw i32 %1311 to i8
  %1365 = getelementptr inbounds nuw i8, ptr %1363, i64 1
  store i8 %1364, ptr %1363, align 1, !tbaa !35
  br label %1583

1366:                                             ; preds = %1309
  %1367 = icmp eq i32 %1311, 256
  br i1 %1367, label %1368, label %1374

1368:                                             ; preds = %1366
  store ptr %1310, ptr %600, align 8, !tbaa !123
  %1369 = load i32, ptr %634, align 4, !tbaa !128
  %1370 = icmp ne i32 %1369, 0
  %1371 = load i32, ptr %632, align 8
  %1372 = icmp slt i32 %1371, 16
  %1373 = select i1 %1370, i1 %1372, i1 false
  br i1 %1373, label %1642, label %1639

1374:                                             ; preds = %1366
  %1375 = icmp samesign ugt i32 %1311, 285
  br i1 %1375, label %1642, label %1376

1376:                                             ; preds = %1374
  %1377 = add nsw i32 %1311, -257
  %1378 = zext nneg i32 %1377 to i64
  %1379 = getelementptr inbounds nuw i32, ptr @stbi__zlength_base, i64 %1378
  %1380 = load i32, ptr %1379, align 4, !tbaa !4
  %1381 = add nsw i32 %1311, -285
  %1382 = icmp ult i32 %1381, -20
  br i1 %1382, label %1421, label %1383

1383:                                             ; preds = %1376
  %1384 = getelementptr inbounds nuw i32, ptr @stbi__zlength_extra, i64 %1378
  %1385 = load i32, ptr %1384, align 4, !tbaa !4
  %1386 = load i32, ptr %632, align 8, !tbaa !126
  %1387 = icmp slt i32 %1386, %1385
  %1388 = load i32, ptr %633, align 8, !tbaa !127
  br i1 %1387, label %1389, label %1412

1389:                                             ; preds = %1383
  %1390 = load ptr, ptr %8, align 8
  %1391 = load ptr, ptr %598, align 8
  br label %1392

1392:                                             ; preds = %1405, %1389
  %1393 = phi ptr [ %1406, %1405 ], [ %1390, %1389 ]
  %1394 = phi i32 [ %1410, %1405 ], [ %1386, %1389 ]
  %1395 = phi i32 [ %1409, %1405 ], [ %1388, %1389 ]
  %1396 = lshr i32 %1395, %1394
  %1397 = icmp eq i32 %1396, 0
  br i1 %1397, label %1399, label %1398

1398:                                             ; preds = %1392
  store ptr %1391, ptr %8, align 8, !tbaa !118
  br label %1412

1399:                                             ; preds = %1392
  %1400 = icmp ult ptr %1393, %1391
  br i1 %1400, label %1401, label %1405

1401:                                             ; preds = %1399
  %1402 = getelementptr inbounds nuw i8, ptr %1393, i64 1
  store ptr %1402, ptr %8, align 8, !tbaa !118
  %1403 = load i8, ptr %1393, align 1, !tbaa !35
  %1404 = zext i8 %1403 to i32
  br label %1405

1405:                                             ; preds = %1401, %1399
  %1406 = phi ptr [ %1402, %1401 ], [ %1393, %1399 ]
  %1407 = phi i32 [ %1404, %1401 ], [ 0, %1399 ]
  %1408 = shl i32 %1407, %1394
  %1409 = or i32 %1408, %1395
  store i32 %1409, ptr %633, align 8, !tbaa !127
  %1410 = add i32 %1394, 8
  store i32 %1410, ptr %632, align 8, !tbaa !126
  %1411 = icmp slt i32 %1410, 25
  br i1 %1411, label %1392, label %1412, !llvm.loop !129

1412:                                             ; preds = %1405, %1398, %1383
  %1413 = phi i32 [ %1386, %1383 ], [ %1394, %1398 ], [ %1410, %1405 ]
  %1414 = phi i32 [ %1388, %1383 ], [ %1395, %1398 ], [ %1409, %1405 ]
  %1415 = shl nsw i32 -1, %1385
  %1416 = xor i32 %1415, -1
  %1417 = and i32 %1414, %1416
  %1418 = lshr i32 %1414, %1385
  store i32 %1418, ptr %633, align 8, !tbaa !127
  %1419 = sub i32 %1413, %1385
  store i32 %1419, ptr %632, align 8, !tbaa !126
  %1420 = add i32 %1417, %1380
  br label %1421

1421:                                             ; preds = %1412, %1376
  %1422 = phi i32 [ %1420, %1412 ], [ %1380, %1376 ]
  %1423 = call fastcc i32 @stbi__zhuffman_decode(ptr noundef nonnull %8, ptr noundef %636) #17
  %1424 = icmp ugt i32 %1423, 29
  br i1 %1424, label %1642, label %1425

1425:                                             ; preds = %1421
  %1426 = zext nneg i32 %1423 to i64
  %1427 = getelementptr inbounds nuw i32, ptr @stbi__zdist_base, i64 %1426
  %1428 = load i32, ptr %1427, align 4, !tbaa !4
  %1429 = icmp samesign ult i32 %1423, 4
  br i1 %1429, label %1468, label %1430

1430:                                             ; preds = %1425
  %1431 = getelementptr inbounds nuw i32, ptr @stbi__zdist_extra, i64 %1426
  %1432 = load i32, ptr %1431, align 4, !tbaa !4
  %1433 = load i32, ptr %632, align 8, !tbaa !126
  %1434 = icmp slt i32 %1433, %1432
  %1435 = load i32, ptr %633, align 8, !tbaa !127
  br i1 %1434, label %1436, label %1459

1436:                                             ; preds = %1430
  %1437 = load ptr, ptr %8, align 8
  %1438 = load ptr, ptr %598, align 8
  br label %1439

1439:                                             ; preds = %1452, %1436
  %1440 = phi ptr [ %1453, %1452 ], [ %1437, %1436 ]
  %1441 = phi i32 [ %1457, %1452 ], [ %1433, %1436 ]
  %1442 = phi i32 [ %1456, %1452 ], [ %1435, %1436 ]
  %1443 = lshr i32 %1442, %1441
  %1444 = icmp eq i32 %1443, 0
  br i1 %1444, label %1446, label %1445

1445:                                             ; preds = %1439
  store ptr %1438, ptr %8, align 8, !tbaa !118
  br label %1459

1446:                                             ; preds = %1439
  %1447 = icmp ult ptr %1440, %1438
  br i1 %1447, label %1448, label %1452

1448:                                             ; preds = %1446
  %1449 = getelementptr inbounds nuw i8, ptr %1440, i64 1
  store ptr %1449, ptr %8, align 8, !tbaa !118
  %1450 = load i8, ptr %1440, align 1, !tbaa !35
  %1451 = zext i8 %1450 to i32
  br label %1452

1452:                                             ; preds = %1448, %1446
  %1453 = phi ptr [ %1449, %1448 ], [ %1440, %1446 ]
  %1454 = phi i32 [ %1451, %1448 ], [ 0, %1446 ]
  %1455 = shl i32 %1454, %1441
  %1456 = or i32 %1455, %1442
  store i32 %1456, ptr %633, align 8, !tbaa !127
  %1457 = add i32 %1441, 8
  store i32 %1457, ptr %632, align 8, !tbaa !126
  %1458 = icmp slt i32 %1457, 25
  br i1 %1458, label %1439, label %1459, !llvm.loop !129

1459:                                             ; preds = %1452, %1445, %1430
  %1460 = phi i32 [ %1433, %1430 ], [ %1441, %1445 ], [ %1457, %1452 ]
  %1461 = phi i32 [ %1435, %1430 ], [ %1442, %1445 ], [ %1456, %1452 ]
  %1462 = shl nsw i32 -1, %1432
  %1463 = xor i32 %1462, -1
  %1464 = and i32 %1461, %1463
  %1465 = lshr i32 %1461, %1432
  store i32 %1465, ptr %633, align 8, !tbaa !127
  %1466 = sub i32 %1460, %1432
  store i32 %1466, ptr %632, align 8, !tbaa !126
  %1467 = add i32 %1464, %1428
  br label %1468

1468:                                             ; preds = %1459, %1425
  %1469 = phi i32 [ %1467, %1459 ], [ %1428, %1425 ]
  %1470 = load ptr, ptr %599, align 8, !tbaa !122
  %1471 = ptrtoint ptr %1310 to i64
  %1472 = ptrtoint ptr %1470 to i64
  %1473 = sub i64 %1471, %1472
  %1474 = sext i32 %1469 to i64
  %1475 = icmp slt i64 %1473, %1474
  br i1 %1475, label %1642, label %1476

1476:                                             ; preds = %1468
  %1477 = sext i32 %1422 to i64
  %1478 = load ptr, ptr %602, align 8, !tbaa !124
  %1479 = ptrtoint ptr %1478 to i64
  %1480 = sub i64 %1479, %1471
  %1481 = icmp slt i64 %1480, %1477
  br i1 %1481, label %1482, label %1523

1482:                                             ; preds = %1476
  store ptr %1310, ptr %600, align 8, !tbaa !123
  %1483 = load i32, ptr %603, align 8, !tbaa !125
  %1484 = icmp eq i32 %1483, 0
  br i1 %1484, label %1642, label %1485

1485:                                             ; preds = %1482
  %1486 = trunc i64 %1473 to i32
  %1487 = xor i32 %1486, -1
  %1488 = icmp ugt i32 %1422, %1487
  br i1 %1488, label %1642, label %1489

1489:                                             ; preds = %1485
  %1490 = sub i64 %1479, %1472
  %1491 = trunc i64 %1490 to i32
  %1492 = add i32 %1422, %1486
  %1493 = icmp ugt i32 %1492, %1491
  br i1 %1493, label %1494, label %1500

1494:                                             ; preds = %1489, %1497
  %1495 = phi i32 [ %1498, %1497 ], [ %1491, %1489 ]
  %1496 = icmp slt i32 %1495, 0
  br i1 %1496, label %1642, label %1497

1497:                                             ; preds = %1494
  %1498 = shl nuw i32 %1495, 1
  %1499 = icmp ugt i32 %1492, %1498
  br i1 %1499, label %1494, label %1500, !llvm.loop !133

1500:                                             ; preds = %1497, %1489
  %1501 = phi i32 [ %1491, %1489 ], [ %1498, %1497 ]
  %1502 = zext i32 %1501 to i64
  %1503 = add nuw nsw i64 %1502, 15
  %1504 = and i64 %1503, 8589934576
  %1505 = add nuw nsw i64 %1504, 16
  %1506 = load i64, ptr @arena_used, align 8, !tbaa !19
  %1507 = sub i64 100663296, %1506
  %1508 = icmp ugt i64 %1505, %1507
  br i1 %1508, label %1642, label %1509

1509:                                             ; preds = %1500
  %1510 = getelementptr inbounds nuw i8, ptr @arena, i64 %1506
  %1511 = add i64 %1505, %1506
  store i64 %1511, ptr @arena_used, align 8, !tbaa !19
  store i64 %1502, ptr %1510, align 8, !tbaa !19
  %1512 = getelementptr inbounds nuw i8, ptr %1510, i64 16
  %1513 = icmp eq ptr %1470, null
  br i1 %1513, label %1519, label %1514

1514:                                             ; preds = %1509
  %1515 = getelementptr inbounds i8, ptr %1470, i64 -16
  %1516 = load i64, ptr %1515, align 8, !tbaa !19
  %1517 = call i64 @llvm.umin.i64(i64 %1516, i64 range(i64 0, 4294967296) %1502)
  %1518 = call ptr @memcpy(ptr noundef nonnull %1512, ptr noundef nonnull %1470, i64 noundef %1517) #16
  br label %1519

1519:                                             ; preds = %1514, %1509
  store ptr %1512, ptr %599, align 8, !tbaa !122
  %1520 = and i64 %1473, 4294967295
  %1521 = getelementptr inbounds nuw i8, ptr %1512, i64 %1520
  store ptr %1521, ptr %600, align 8, !tbaa !123
  %1522 = getelementptr inbounds nuw i8, ptr %1512, i64 %1502
  store ptr %1522, ptr %602, align 8, !tbaa !124
  br label %1523

1523:                                             ; preds = %1519, %1476
  %1524 = phi ptr [ %1521, %1519 ], [ %1310, %1476 ]
  %1525 = sub nsw i64 0, %1474
  %1526 = getelementptr inbounds i8, ptr %1524, i64 %1525
  %1527 = icmp eq i32 %1469, 1
  br i1 %1527, label %1528, label %1558

1528:                                             ; preds = %1523
  %1529 = load i8, ptr %1526, align 1, !tbaa !35
  %1530 = icmp eq i32 %1422, 0
  br i1 %1530, label %1583, label %1531

1531:                                             ; preds = %1528
  %1532 = zext i32 %1422 to i64
  %1533 = icmp ult i32 %1422, 32
  br i1 %1533, label %1549, label %1534

1534:                                             ; preds = %1531
  %1535 = and i64 %1532, 4294967264
  %1536 = getelementptr i8, ptr %1524, i64 %1535
  %1537 = trunc nuw i64 %1535 to i32
  %1538 = sub i32 %1422, %1537
  %1539 = insertelement <16 x i8> poison, i8 %1529, i64 0
  %1540 = shufflevector <16 x i8> %1539, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %1541

1541:                                             ; preds = %1541, %1534
  %1542 = phi i64 [ 0, %1534 ], [ %1545, %1541 ]
  %1543 = getelementptr i8, ptr %1524, i64 %1542
  %1544 = getelementptr i8, ptr %1543, i64 16
  store <16 x i8> %1540, ptr %1543, align 1, !tbaa !35
  store <16 x i8> %1540, ptr %1544, align 1, !tbaa !35
  %1545 = add nuw i64 %1542, 32
  %1546 = icmp eq i64 %1545, %1535
  br i1 %1546, label %1547, label %1541, !llvm.loop !136

1547:                                             ; preds = %1541
  %1548 = icmp eq i64 %1535, %1532
  br i1 %1548, label %1583, label %1549

1549:                                             ; preds = %1531, %1547
  %1550 = phi ptr [ %1524, %1531 ], [ %1536, %1547 ]
  %1551 = phi i32 [ %1422, %1531 ], [ %1538, %1547 ]
  br label %1552

1552:                                             ; preds = %1549, %1552
  %1553 = phi ptr [ %1555, %1552 ], [ %1550, %1549 ]
  %1554 = phi i32 [ %1556, %1552 ], [ %1551, %1549 ]
  %1555 = getelementptr inbounds nuw i8, ptr %1553, i64 1
  store i8 %1529, ptr %1553, align 1, !tbaa !35
  %1556 = add i32 %1554, -1
  %1557 = icmp eq i32 %1556, 0
  br i1 %1557, label %1583, label %1552, !llvm.loop !137

1558:                                             ; preds = %1523
  %1559 = icmp eq i32 %1422, 0
  br i1 %1559, label %1583, label %1560

1560:                                             ; preds = %1558
  %1561 = zext i32 %1422 to i64
  %1562 = icmp ult i32 %1422, 32
  %1563 = icmp ult i32 %1469, 32
  %1564 = or i1 %1562, %1563
  br i1 %1564, label %1585, label %1565

1565:                                             ; preds = %1560
  %1566 = and i64 %1561, 4294967264
  %1567 = getelementptr i8, ptr %1524, i64 %1566
  %1568 = getelementptr i8, ptr %1526, i64 %1566
  %1569 = trunc nuw i64 %1566 to i32
  %1570 = sub i32 %1422, %1569
  br label %1571

1571:                                             ; preds = %1571, %1565
  %1572 = phi i64 [ 0, %1565 ], [ %1579, %1571 ]
  %1573 = getelementptr i8, ptr %1524, i64 %1572
  %1574 = getelementptr i8, ptr %1526, i64 %1572
  %1575 = getelementptr i8, ptr %1574, i64 16
  %1576 = load <16 x i8>, ptr %1574, align 1, !tbaa !35
  %1577 = load <16 x i8>, ptr %1575, align 1, !tbaa !35
  %1578 = getelementptr i8, ptr %1573, i64 16
  store <16 x i8> %1576, ptr %1573, align 1, !tbaa !35
  store <16 x i8> %1577, ptr %1578, align 1, !tbaa !35
  %1579 = add nuw i64 %1572, 32
  %1580 = icmp eq i64 %1579, %1566
  br i1 %1580, label %1581, label %1571, !llvm.loop !138

1581:                                             ; preds = %1571
  %1582 = icmp eq i64 %1566, %1561
  br i1 %1582, label %1583, label %1585

1583:                                             ; preds = %1603, %1609, %1552, %1581, %1547, %1558, %1528, %1362
  %1584 = phi ptr [ %1365, %1362 ], [ %1524, %1558 ], [ %1555, %1552 ], [ %1524, %1528 ], [ %1536, %1547 ], [ %1567, %1581 ], [ %1604, %1603 ], [ %1636, %1609 ]
  br label %1309

1585:                                             ; preds = %1560, %1581
  %1586 = phi ptr [ %1524, %1560 ], [ %1567, %1581 ]
  %1587 = phi ptr [ %1526, %1560 ], [ %1568, %1581 ]
  %1588 = phi i32 [ %1422, %1560 ], [ %1570, %1581 ]
  %1589 = add i32 %1588, -1
  %1590 = and i32 %1588, 7
  %1591 = icmp eq i32 %1590, 0
  br i1 %1591, label %1603, label %1592

1592:                                             ; preds = %1585, %1592
  %1593 = phi ptr [ %1599, %1592 ], [ %1586, %1585 ]
  %1594 = phi ptr [ %1597, %1592 ], [ %1587, %1585 ]
  %1595 = phi i32 [ %1600, %1592 ], [ %1588, %1585 ]
  %1596 = phi i32 [ %1601, %1592 ], [ 0, %1585 ]
  %1597 = getelementptr inbounds nuw i8, ptr %1594, i64 1
  %1598 = load i8, ptr %1594, align 1, !tbaa !35
  %1599 = getelementptr inbounds nuw i8, ptr %1593, i64 1
  store i8 %1598, ptr %1593, align 1, !tbaa !35
  %1600 = add i32 %1595, -1
  %1601 = add i32 %1596, 1
  %1602 = icmp eq i32 %1601, %1590
  br i1 %1602, label %1603, label %1592, !llvm.loop !139

1603:                                             ; preds = %1592, %1585
  %1604 = phi ptr [ poison, %1585 ], [ %1599, %1592 ]
  %1605 = phi ptr [ %1586, %1585 ], [ %1599, %1592 ]
  %1606 = phi ptr [ %1587, %1585 ], [ %1597, %1592 ]
  %1607 = phi i32 [ %1588, %1585 ], [ %1600, %1592 ]
  %1608 = icmp ult i32 %1589, 7
  br i1 %1608, label %1583, label %1609

1609:                                             ; preds = %1603, %1609
  %1610 = phi ptr [ %1636, %1609 ], [ %1605, %1603 ]
  %1611 = phi ptr [ %1634, %1609 ], [ %1606, %1603 ]
  %1612 = phi i32 [ %1637, %1609 ], [ %1607, %1603 ]
  %1613 = getelementptr inbounds nuw i8, ptr %1611, i64 1
  %1614 = load i8, ptr %1611, align 1, !tbaa !35
  %1615 = getelementptr inbounds nuw i8, ptr %1610, i64 1
  store i8 %1614, ptr %1610, align 1, !tbaa !35
  %1616 = getelementptr inbounds nuw i8, ptr %1611, i64 2
  %1617 = load i8, ptr %1613, align 1, !tbaa !35
  %1618 = getelementptr inbounds nuw i8, ptr %1610, i64 2
  store i8 %1617, ptr %1615, align 1, !tbaa !35
  %1619 = getelementptr inbounds nuw i8, ptr %1611, i64 3
  %1620 = load i8, ptr %1616, align 1, !tbaa !35
  %1621 = getelementptr inbounds nuw i8, ptr %1610, i64 3
  store i8 %1620, ptr %1618, align 1, !tbaa !35
  %1622 = getelementptr inbounds nuw i8, ptr %1611, i64 4
  %1623 = load i8, ptr %1619, align 1, !tbaa !35
  %1624 = getelementptr inbounds nuw i8, ptr %1610, i64 4
  store i8 %1623, ptr %1621, align 1, !tbaa !35
  %1625 = getelementptr inbounds nuw i8, ptr %1611, i64 5
  %1626 = load i8, ptr %1622, align 1, !tbaa !35
  %1627 = getelementptr inbounds nuw i8, ptr %1610, i64 5
  store i8 %1626, ptr %1624, align 1, !tbaa !35
  %1628 = getelementptr inbounds nuw i8, ptr %1611, i64 6
  %1629 = load i8, ptr %1625, align 1, !tbaa !35
  %1630 = getelementptr inbounds nuw i8, ptr %1610, i64 6
  store i8 %1629, ptr %1627, align 1, !tbaa !35
  %1631 = getelementptr inbounds nuw i8, ptr %1611, i64 7
  %1632 = load i8, ptr %1628, align 1, !tbaa !35
  %1633 = getelementptr inbounds nuw i8, ptr %1610, i64 7
  store i8 %1632, ptr %1630, align 1, !tbaa !35
  %1634 = getelementptr inbounds nuw i8, ptr %1611, i64 8
  %1635 = load i8, ptr %1631, align 1, !tbaa !35
  %1636 = getelementptr inbounds nuw i8, ptr %1610, i64 8
  store i8 %1635, ptr %1633, align 1, !tbaa !35
  %1637 = add i32 %1612, -8
  %1638 = icmp eq i32 %1637, 0
  br i1 %1638, label %1583, label %1609, !llvm.loop !140

1639:                                             ; preds = %1368, %919
  %1640 = phi ptr [ %926, %919 ], [ %1310, %1368 ]
  %1641 = icmp eq i32 %678, 0
  br i1 %1641, label %644, label %1643, !llvm.loop !141

1642:                                             ; preds = %930, %1302, %927, %705, %1368, %1318, %1313, %1500, %1485, %1482, %1468, %1421, %1374, %1339, %1321, %1494, %1333, %573, %610, %1301, %918, %615, %618
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  store ptr null, ptr %13, align 8, !tbaa !108
  br label %2003

1643:                                             ; preds = %1639
  %1644 = load ptr, ptr %599, align 8, !tbaa !122
  %1645 = ptrtoint ptr %1640 to i64
  %1646 = ptrtoint ptr %1644 to i64
  %1647 = sub i64 %1645, %1646
  %1648 = trunc i64 %1647 to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  store ptr %1644, ptr %13, align 8, !tbaa !108
  %1649 = icmp eq ptr %1644, null
  br i1 %1649, label %2003, label %1650

1650:                                             ; preds = %1643
  store ptr null, ptr %14, align 8, !tbaa !109
  %1651 = load i32, ptr %75, align 8, !tbaa !71
  %1652 = add i32 %1651, 1
  %1653 = icmp eq i32 %2, %1652
  %1654 = icmp ne i32 %2, 3
  %1655 = and i1 %1654, %1653
  %1656 = icmp eq i8 %88, 0
  %1657 = select i1 %1655, i1 %1656, i1 false
  %1658 = icmp ne i8 %87, 0
  %1659 = select i1 %1657, i1 true, i1 %1658
  %1660 = select i1 %1659, i32 %1652, i32 %1651
  %1661 = getelementptr inbounds nuw i8, ptr %12, i64 12
  store i32 %1660, ptr %1661, align 4, !tbaa !142
  %1662 = load i32, ptr %76, align 8, !tbaa !112
  %1663 = icmp eq i32 %1662, 16
  %1664 = zext i1 %1663 to i32
  %1665 = shl i32 %1660, %1664
  %1666 = icmp eq i32 %80, 0
  %1667 = load ptr, ptr %0, align 8, !tbaa !26
  %1668 = load i32, ptr %1667, align 8, !tbaa !24
  %1669 = getelementptr inbounds nuw i8, ptr %1667, i64 4
  %1670 = load i32, ptr %1669, align 4, !tbaa !25
  br i1 %1666, label %1786, label %1671

1671:                                             ; preds = %1650
  %1672 = or i32 %1670, %1668
  %1673 = icmp sgt i32 %1672, -1
  br i1 %1673, label %1674, label %2003

1674:                                             ; preds = %1671
  %1675 = icmp eq i32 %1670, 0
  br i1 %1675, label %1679, label %1676

1676:                                             ; preds = %1674
  %1677 = udiv i32 2147483647, %1670
  %1678 = icmp sgt i32 %1668, %1677
  br i1 %1678, label %2003, label %1679

1679:                                             ; preds = %1676, %1674
  %1680 = mul i32 %1670, %1668
  %1681 = or i32 %1680, %1665
  %1682 = icmp sgt i32 %1681, -1
  br i1 %1682, label %1683, label %2003

1683:                                             ; preds = %1679
  %1684 = icmp eq i32 %1665, 0
  br i1 %1684, label %1688, label %1685

1685:                                             ; preds = %1683
  %1686 = udiv i32 2147483647, %1665
  %1687 = icmp sgt i32 %1680, %1686
  br i1 %1687, label %2003, label %1688

1688:                                             ; preds = %1685, %1683
  %1689 = mul i32 %1680, %1665
  %1690 = sext i32 %1689 to i64
  %1691 = add nsw i64 %1690, 15
  %1692 = and i64 %1691, -16
  %1693 = add nsw i64 %1692, 16
  %1694 = load i64, ptr @arena_used, align 8, !tbaa !19
  %1695 = sub i64 100663296, %1694
  %1696 = icmp ugt i64 %1693, %1695
  br i1 %1696, label %2003, label %1697

1697:                                             ; preds = %1688
  %1698 = getelementptr inbounds nuw i8, ptr @arena, i64 %1694
  %1699 = add i64 %1694, %1693
  store i64 %1699, ptr @arena_used, align 8, !tbaa !19
  store i64 %1690, ptr %1698, align 8, !tbaa !19
  %1700 = getelementptr inbounds nuw i8, ptr %1698, i64 16
  %1701 = sext i32 %1665 to i64
  br label %1702

1702:                                             ; preds = %1780, %1697
  %1703 = phi i64 [ 0, %1697 ], [ %1783, %1780 ]
  %1704 = phi ptr [ %1644, %1697 ], [ %1782, %1780 ]
  %1705 = phi i32 [ %1648, %1697 ], [ %1781, %1780 ]
  %1706 = load ptr, ptr %0, align 8, !tbaa !26
  %1707 = load i32, ptr %1706, align 8, !tbaa !24
  %1708 = getelementptr inbounds nuw i32, ptr @__const.stbi__create_png_image.xorig, i64 %1703
  %1709 = load i32, ptr %1708, align 4, !tbaa !4
  %1710 = getelementptr inbounds nuw i32, ptr @__const.stbi__create_png_image.xspc, i64 %1703
  %1711 = load i32, ptr %1710, align 4, !tbaa !4
  %1712 = xor i32 %1709, -1
  %1713 = add i32 %1707, %1712
  %1714 = add i32 %1713, %1711
  %1715 = udiv i32 %1714, %1711
  %1716 = getelementptr inbounds nuw i8, ptr %1706, i64 4
  %1717 = load i32, ptr %1716, align 4, !tbaa !25
  %1718 = getelementptr inbounds nuw i32, ptr @__const.stbi__create_png_image.yorig, i64 %1703
  %1719 = load i32, ptr %1718, align 4, !tbaa !4
  %1720 = getelementptr inbounds nuw i32, ptr @__const.stbi__create_png_image.yspc, i64 %1703
  %1721 = load i32, ptr %1720, align 4, !tbaa !4
  %1722 = xor i32 %1719, -1
  %1723 = add i32 %1717, %1722
  %1724 = add i32 %1723, %1721
  %1725 = udiv i32 %1724, %1721
  %1726 = icmp ule i32 %1711, %1714
  %1727 = icmp ule i32 %1721, %1724
  %1728 = select i1 %1726, i1 %1727, i1 false
  br i1 %1728, label %1729, label %1780

1729:                                             ; preds = %1702
  %1730 = getelementptr inbounds nuw i8, ptr %1706, i64 8
  %1731 = load i32, ptr %1730, align 8, !tbaa !71
  %1732 = mul i32 %1715, %1662
  %1733 = mul i32 %1732, %1731
  %1734 = add i32 %1733, 7
  %1735 = ashr i32 %1734, 3
  %1736 = add nsw i32 %1735, 1
  %1737 = mul i32 %1736, %1725
  %1738 = call fastcc i32 @stbi__create_png_image_raw(ptr noundef nonnull %0, ptr noundef %1704, i32 noundef %1705, i32 noundef %1660, i32 noundef %1715, i32 noundef %1725, i32 noundef %1662, i32 noundef range(i32 0, 256) %81) #17
  %1739 = icmp eq i32 %1738, 0
  br i1 %1739, label %2003, label %1740

1740:                                             ; preds = %1729
  %1741 = icmp sgt i32 %1725, 0
  br i1 %1741, label %1742, label %1776

1742:                                             ; preds = %1740
  %1743 = icmp sgt i32 %1715, 0
  %1744 = sext i32 %1715 to i64
  br label %1745

1745:                                             ; preds = %1773, %1742
  %1746 = phi i32 [ 0, %1742 ], [ %1774, %1773 ]
  br i1 %1743, label %1747, label %1773

1747:                                             ; preds = %1745
  %1748 = mul i32 %1746, %1721
  %1749 = add i32 %1748, %1719
  %1750 = mul i32 %1749, %1665
  %1751 = mul i32 %1746, %1715
  br label %1752

1752:                                             ; preds = %1752, %1747
  %1753 = phi i64 [ 0, %1747 ], [ %1771, %1752 ]
  %1754 = trunc nuw nsw i64 %1753 to i32
  %1755 = mul i32 %1711, %1754
  %1756 = add i32 %1755, %1709
  %1757 = load ptr, ptr %0, align 8, !tbaa !26
  %1758 = load i32, ptr %1757, align 8, !tbaa !24
  %1759 = mul i32 %1750, %1758
  %1760 = zext i32 %1759 to i64
  %1761 = getelementptr inbounds nuw i8, ptr %1700, i64 %1760
  %1762 = mul i32 %1756, %1665
  %1763 = sext i32 %1762 to i64
  %1764 = getelementptr inbounds i8, ptr %1761, i64 %1763
  %1765 = load ptr, ptr %15, align 8, !tbaa !110
  %1766 = add i32 %1751, %1754
  %1767 = mul i32 %1766, %1665
  %1768 = sext i32 %1767 to i64
  %1769 = getelementptr inbounds i8, ptr %1765, i64 %1768
  %1770 = call ptr @memcpy(ptr noundef nonnull %1764, ptr noundef %1769, i64 noundef %1701) #16
  %1771 = add nuw nsw i64 %1753, 1
  %1772 = icmp slt i64 %1771, %1744
  br i1 %1772, label %1752, label %1773, !llvm.loop !143

1773:                                             ; preds = %1752, %1745
  %1774 = add nuw nsw i32 %1746, 1
  %1775 = icmp slt i32 %1774, %1725
  br i1 %1775, label %1745, label %1776, !llvm.loop !144

1776:                                             ; preds = %1773, %1740
  %1777 = zext i32 %1737 to i64
  %1778 = getelementptr inbounds nuw i8, ptr %1704, i64 %1777
  %1779 = sub i32 %1705, %1737
  br label %1780

1780:                                             ; preds = %1776, %1702
  %1781 = phi i32 [ %1705, %1702 ], [ %1779, %1776 ]
  %1782 = phi ptr [ %1704, %1702 ], [ %1778, %1776 ]
  %1783 = add nuw nsw i64 %1703, 1
  %1784 = icmp eq i64 %1783, 7
  br i1 %1784, label %1785, label %1702, !llvm.loop !145

1785:                                             ; preds = %1780
  store ptr %1700, ptr %15, align 8, !tbaa !110
  br label %1789

1786:                                             ; preds = %1650
  %1787 = call fastcc i32 @stbi__create_png_image_raw(ptr noundef nonnull %0, ptr noundef nonnull %1644, i32 noundef %1648, i32 noundef %1660, i32 noundef %1668, i32 noundef %1670, i32 noundef %1662, i32 noundef range(i32 0, 256) %81) #17
  %1788 = icmp eq i32 %1787, 0
  br i1 %1788, label %2003, label %1789

1789:                                             ; preds = %1785, %1786
  %1790 = icmp eq i8 %87, 0
  br i1 %1790, label %1798, label %1791

1791:                                             ; preds = %1789
  %1792 = load i32, ptr %76, align 8, !tbaa !112
  %1793 = icmp eq i32 %1792, 16
  %1794 = load i32, ptr %1661, align 4, !tbaa !142
  br i1 %1793, label %1795, label %1796

1795:                                             ; preds = %1791
  call fastcc void @stbi__compute_transparency16(ptr noundef %0, ptr noundef %11, i32 noundef %1794) #17
  br label %1797

1796:                                             ; preds = %1791
  call fastcc void @stbi__compute_transparency(ptr noundef %0, ptr noundef %10, i32 noundef %1794) #17
  br label %1797

1797:                                             ; preds = %1795, %1796
  br i1 %1656, label %1953, label %1799

1798:                                             ; preds = %1789
  br i1 %1656, label %1956, label %1799

1799:                                             ; preds = %1798, %1797
  %1800 = zext nneg i8 %88 to i32
  store i32 %1800, ptr %75, align 8, !tbaa !71
  %1801 = icmp samesign ugt i32 %2, 2
  %1802 = select i1 %1801, i32 %2, i32 %1800
  store i32 %1802, ptr %1661, align 4, !tbaa !142
  %1803 = load ptr, ptr %0, align 8, !tbaa !26
  %1804 = load i32, ptr %1803, align 8, !tbaa !24
  %1805 = getelementptr inbounds nuw i8, ptr %1803, i64 4
  %1806 = load i32, ptr %1805, align 4, !tbaa !25
  %1807 = mul i32 %1806, %1804
  %1808 = load ptr, ptr %15, align 8, !tbaa !110
  %1809 = icmp sgt i32 %1807, -1
  br i1 %1809, label %1810, label %2003

1810:                                             ; preds = %1799
  %1811 = udiv i32 2147483647, %1802
  %1812 = icmp samesign ugt i32 %1807, %1811
  br i1 %1812, label %2003, label %1813

1813:                                             ; preds = %1810
  %1814 = mul i32 %1807, %1802
  %1815 = sext i32 %1814 to i64
  %1816 = add nsw i64 %1815, 15
  %1817 = and i64 %1816, -16
  %1818 = add nsw i64 %1817, 16
  %1819 = load i64, ptr @arena_used, align 8, !tbaa !19
  %1820 = sub i64 100663296, %1819
  %1821 = icmp ugt i64 %1818, %1820
  br i1 %1821, label %2003, label %1822

1822:                                             ; preds = %1813
  %1823 = getelementptr inbounds nuw i8, ptr @arena, i64 %1819
  %1824 = add i64 %1819, %1818
  store i64 %1824, ptr @arena_used, align 8, !tbaa !19
  store i64 %1815, ptr %1823, align 8, !tbaa !19
  %1825 = getelementptr inbounds nuw i8, ptr %1823, i64 16
  %1826 = icmp eq i32 %1802, 3
  %1827 = icmp eq i32 %1807, 0
  br i1 %1826, label %1835, label %1828

1828:                                             ; preds = %1822
  br i1 %1827, label %1952, label %1829

1829:                                             ; preds = %1828
  %1830 = zext nneg i32 %1807 to i64
  %1831 = and i64 %1830, 3
  %1832 = icmp ult i32 %1807, 4
  br i1 %1832, label %1934, label %1833

1833:                                             ; preds = %1829
  %1834 = and i64 %1830, 2147483644
  br label %1876

1835:                                             ; preds = %1822
  br i1 %1827, label %1952, label %1836

1836:                                             ; preds = %1835
  %1837 = zext nneg i32 %1807 to i64
  %1838 = and i64 %1837, 1
  %1839 = icmp eq i32 %1807, 1
  br i1 %1839, label %1916, label %1840

1840:                                             ; preds = %1836
  %1841 = and i64 %1837, 2147483646
  br label %1842

1842:                                             ; preds = %1842, %1840
  %1843 = phi i64 [ 0, %1840 ], [ %1873, %1842 ]
  %1844 = phi ptr [ %1825, %1840 ], [ %1872, %1842 ]
  %1845 = phi i64 [ 0, %1840 ], [ %1874, %1842 ]
  %1846 = getelementptr inbounds nuw i8, ptr %1808, i64 %1843
  %1847 = load i8, ptr %1846, align 1, !tbaa !35
  %1848 = zext i8 %1847 to i64
  %1849 = shl nuw nsw i64 %1848, 2
  %1850 = getelementptr inbounds nuw i8, ptr %9, i64 %1849
  %1851 = load i8, ptr %1850, align 4, !tbaa !35
  store i8 %1851, ptr %1844, align 1, !tbaa !35
  %1852 = getelementptr inbounds nuw i8, ptr %1850, i64 1
  %1853 = load i8, ptr %1852, align 1, !tbaa !35
  %1854 = getelementptr inbounds nuw i8, ptr %1844, i64 1
  store i8 %1853, ptr %1854, align 1, !tbaa !35
  %1855 = getelementptr inbounds nuw i8, ptr %1850, i64 2
  %1856 = load i8, ptr %1855, align 2, !tbaa !35
  %1857 = getelementptr inbounds nuw i8, ptr %1844, i64 2
  store i8 %1856, ptr %1857, align 1, !tbaa !35
  %1858 = getelementptr inbounds nuw i8, ptr %1844, i64 3
  %1859 = getelementptr inbounds nuw i8, ptr %1808, i64 %1843
  %1860 = getelementptr inbounds nuw i8, ptr %1859, i64 1
  %1861 = load i8, ptr %1860, align 1, !tbaa !35
  %1862 = zext i8 %1861 to i64
  %1863 = shl nuw nsw i64 %1862, 2
  %1864 = getelementptr inbounds nuw i8, ptr %9, i64 %1863
  %1865 = load i8, ptr %1864, align 4, !tbaa !35
  store i8 %1865, ptr %1858, align 1, !tbaa !35
  %1866 = getelementptr inbounds nuw i8, ptr %1864, i64 1
  %1867 = load i8, ptr %1866, align 1, !tbaa !35
  %1868 = getelementptr inbounds nuw i8, ptr %1844, i64 4
  store i8 %1867, ptr %1868, align 1, !tbaa !35
  %1869 = getelementptr inbounds nuw i8, ptr %1864, i64 2
  %1870 = load i8, ptr %1869, align 2, !tbaa !35
  %1871 = getelementptr inbounds nuw i8, ptr %1844, i64 5
  store i8 %1870, ptr %1871, align 1, !tbaa !35
  %1872 = getelementptr inbounds nuw i8, ptr %1844, i64 6
  %1873 = add nuw nsw i64 %1843, 2
  %1874 = add i64 %1845, 2
  %1875 = icmp eq i64 %1874, %1841
  br i1 %1875, label %1914, label %1842, !llvm.loop !146

1876:                                             ; preds = %1876, %1833
  %1877 = phi i64 [ 0, %1833 ], [ %1911, %1876 ]
  %1878 = phi ptr [ %1825, %1833 ], [ %1910, %1876 ]
  %1879 = phi i64 [ 0, %1833 ], [ %1912, %1876 ]
  %1880 = getelementptr inbounds nuw i8, ptr %1808, i64 %1877
  %1881 = load i8, ptr %1880, align 1, !tbaa !35
  %1882 = zext i8 %1881 to i64
  %1883 = shl nuw nsw i64 %1882, 2
  %1884 = getelementptr inbounds nuw i8, ptr %9, i64 %1883
  %1885 = load <4 x i8>, ptr %1884, align 4, !tbaa !35
  store <4 x i8> %1885, ptr %1878, align 1, !tbaa !35
  %1886 = getelementptr inbounds nuw i8, ptr %1878, i64 4
  %1887 = getelementptr inbounds nuw i8, ptr %1808, i64 %1877
  %1888 = getelementptr inbounds nuw i8, ptr %1887, i64 1
  %1889 = load i8, ptr %1888, align 1, !tbaa !35
  %1890 = zext i8 %1889 to i64
  %1891 = shl nuw nsw i64 %1890, 2
  %1892 = getelementptr inbounds nuw i8, ptr %9, i64 %1891
  %1893 = load <4 x i8>, ptr %1892, align 4, !tbaa !35
  store <4 x i8> %1893, ptr %1886, align 1, !tbaa !35
  %1894 = getelementptr inbounds nuw i8, ptr %1878, i64 8
  %1895 = getelementptr inbounds nuw i8, ptr %1808, i64 %1877
  %1896 = getelementptr inbounds nuw i8, ptr %1895, i64 2
  %1897 = load i8, ptr %1896, align 1, !tbaa !35
  %1898 = zext i8 %1897 to i64
  %1899 = shl nuw nsw i64 %1898, 2
  %1900 = getelementptr inbounds nuw i8, ptr %9, i64 %1899
  %1901 = load <4 x i8>, ptr %1900, align 4, !tbaa !35
  store <4 x i8> %1901, ptr %1894, align 1, !tbaa !35
  %1902 = getelementptr inbounds nuw i8, ptr %1878, i64 12
  %1903 = getelementptr inbounds nuw i8, ptr %1808, i64 %1877
  %1904 = getelementptr inbounds nuw i8, ptr %1903, i64 3
  %1905 = load i8, ptr %1904, align 1, !tbaa !35
  %1906 = zext i8 %1905 to i64
  %1907 = shl nuw nsw i64 %1906, 2
  %1908 = getelementptr inbounds nuw i8, ptr %9, i64 %1907
  %1909 = load <4 x i8>, ptr %1908, align 4, !tbaa !35
  store <4 x i8> %1909, ptr %1902, align 1, !tbaa !35
  %1910 = getelementptr inbounds nuw i8, ptr %1878, i64 16
  %1911 = add nuw nsw i64 %1877, 4
  %1912 = add i64 %1879, 4
  %1913 = icmp eq i64 %1912, %1834
  br i1 %1913, label %1932, label %1876, !llvm.loop !147

1914:                                             ; preds = %1842
  %1915 = icmp eq i64 %1838, 0
  br i1 %1915, label %1952, label %1916

1916:                                             ; preds = %1914, %1836
  %1917 = phi i64 [ 0, %1836 ], [ %1873, %1914 ]
  %1918 = phi ptr [ %1825, %1836 ], [ %1872, %1914 ]
  %1919 = icmp ne i64 %1838, 0
  call void @llvm.assume(i1 %1919)
  %1920 = getelementptr inbounds nuw i8, ptr %1808, i64 %1917
  %1921 = load i8, ptr %1920, align 1, !tbaa !35
  %1922 = zext i8 %1921 to i64
  %1923 = shl nuw nsw i64 %1922, 2
  %1924 = getelementptr inbounds nuw i8, ptr %9, i64 %1923
  %1925 = load i8, ptr %1924, align 4, !tbaa !35
  store i8 %1925, ptr %1918, align 1, !tbaa !35
  %1926 = getelementptr inbounds nuw i8, ptr %1924, i64 1
  %1927 = load i8, ptr %1926, align 1, !tbaa !35
  %1928 = getelementptr inbounds nuw i8, ptr %1918, i64 1
  store i8 %1927, ptr %1928, align 1, !tbaa !35
  %1929 = getelementptr inbounds nuw i8, ptr %1924, i64 2
  %1930 = load i8, ptr %1929, align 2, !tbaa !35
  %1931 = getelementptr inbounds nuw i8, ptr %1918, i64 2
  store i8 %1930, ptr %1931, align 1, !tbaa !35
  br label %1952

1932:                                             ; preds = %1876
  %1933 = icmp eq i64 %1831, 0
  br i1 %1933, label %1952, label %1934

1934:                                             ; preds = %1932, %1829
  %1935 = phi i64 [ 0, %1829 ], [ %1911, %1932 ]
  %1936 = phi ptr [ %1825, %1829 ], [ %1910, %1932 ]
  %1937 = icmp ne i64 %1831, 0
  call void @llvm.assume(i1 %1937)
  br label %1938

1938:                                             ; preds = %1938, %1934
  %1939 = phi i64 [ %1935, %1934 ], [ %1949, %1938 ]
  %1940 = phi ptr [ %1936, %1934 ], [ %1948, %1938 ]
  %1941 = phi i64 [ 0, %1934 ], [ %1950, %1938 ]
  %1942 = getelementptr inbounds nuw i8, ptr %1808, i64 %1939
  %1943 = load i8, ptr %1942, align 1, !tbaa !35
  %1944 = zext i8 %1943 to i64
  %1945 = shl nuw nsw i64 %1944, 2
  %1946 = getelementptr inbounds nuw i8, ptr %9, i64 %1945
  %1947 = load <4 x i8>, ptr %1946, align 4, !tbaa !35
  store <4 x i8> %1947, ptr %1940, align 1, !tbaa !35
  %1948 = getelementptr inbounds nuw i8, ptr %1940, i64 4
  %1949 = add nuw nsw i64 %1939, 1
  %1950 = add i64 %1941, 1
  %1951 = icmp eq i64 %1950, %1831
  br i1 %1951, label %1952, label %1938, !llvm.loop !148

1952:                                             ; preds = %1932, %1938, %1916, %1914, %1828, %1835
  store ptr %1825, ptr %15, align 8, !tbaa !110
  br label %1956

1953:                                             ; preds = %1797
  %1954 = load i32, ptr %75, align 8, !tbaa !71
  %1955 = add i32 %1954, 1
  store i32 %1955, ptr %75, align 8, !tbaa !71
  br label %1956

1956:                                             ; preds = %1798, %1952, %1953
  store ptr null, ptr %13, align 8, !tbaa !108
  %1957 = call fastcc i32 @stbi__get16be(ptr noundef nonnull %12) #17
  %1958 = call fastcc i32 @stbi__get16be(ptr noundef nonnull %12) #17
  br label %2003

1959:                                             ; preds = %79
  %1960 = icmp ne i32 %83, 0
  %1961 = and i32 %93, 8192
  %1962 = icmp eq i32 %1961, 0
  %1963 = or i1 %1960, %1962
  br i1 %1963, label %2003, label %1964

1964:                                             ; preds = %1959
  %1965 = icmp eq i32 %92, 0
  br i1 %1965, label %1991, label %1966

1966:                                             ; preds = %1964
  %1967 = icmp slt i32 %90, 0
  br i1 %1967, label %1968, label %1970

1968:                                             ; preds = %1966
  %1969 = load ptr, ptr %17, align 8, !tbaa !18
  store ptr %1969, ptr %16, align 8, !tbaa !16
  br label %1991

1970:                                             ; preds = %1966
  %1971 = load ptr, ptr %19, align 8, !tbaa !8
  %1972 = icmp eq ptr %1971, null
  br i1 %1972, label %1973, label %1975

1973:                                             ; preds = %1970
  %1974 = load ptr, ptr %16, align 8, !tbaa !16
  br label %1987

1975:                                             ; preds = %1970
  %1976 = load ptr, ptr %17, align 8, !tbaa !18
  %1977 = load ptr, ptr %16, align 8, !tbaa !16
  %1978 = ptrtoint ptr %1976 to i64
  %1979 = ptrtoint ptr %1977 to i64
  %1980 = sub i64 %1978, %1979
  %1981 = trunc i64 %1980 to i32
  %1982 = icmp sgt i32 %92, %1981
  br i1 %1982, label %1983, label %1987

1983:                                             ; preds = %1975
  store ptr %1976, ptr %16, align 8, !tbaa !16
  %1984 = load ptr, ptr %78, align 8, !tbaa !36
  %1985 = load ptr, ptr %20, align 8, !tbaa !33
  %1986 = sub i32 %92, %1981
  tail call void %1984(ptr noundef %1985, i32 noundef %1986) #16
  br label %1991

1987:                                             ; preds = %1975, %1973
  %1988 = phi ptr [ %1974, %1973 ], [ %1977, %1975 ]
  %1989 = zext nneg i32 %92 to i64
  %1990 = getelementptr inbounds nuw i8, ptr %1988, i64 %1989
  store ptr %1990, ptr %16, align 8, !tbaa !16
  br label %1991

1991:                                             ; preds = %438, %474, %463, %377, %398, %461, %462, %269, %555, %97, %101, %116, %120, %246, %255, %552, %1964, %1968, %1983, %1987
  %1992 = phi i32 [ %80, %552 ], [ %80, %555 ], [ %80, %120 ], [ %80, %1987 ], [ %80, %462 ], [ %80, %461 ], [ %80, %269 ], [ %80, %97 ], [ %80, %101 ], [ %80, %116 ], [ %236, %246 ], [ %236, %255 ], [ %80, %1964 ], [ %80, %1968 ], [ %80, %1983 ], [ %80, %398 ], [ %80, %474 ], [ %80, %377 ], [ %80, %463 ], [ %80, %438 ]
  %1993 = phi i32 [ %81, %552 ], [ %81, %555 ], [ %81, %120 ], [ %81, %1987 ], [ %81, %462 ], [ %81, %461 ], [ %81, %269 ], [ %81, %97 ], [ %81, %101 ], [ %81, %116 ], [ %227, %246 ], [ %227, %255 ], [ %81, %1964 ], [ %81, %1968 ], [ %81, %1983 ], [ %81, %398 ], [ %81, %474 ], [ %81, %377 ], [ %81, %463 ], [ %81, %438 ]
  %1994 = phi i32 [ %82, %552 ], [ %82, %555 ], [ 1, %120 ], [ %82, %1987 ], [ %82, %462 ], [ %82, %461 ], [ %82, %269 ], [ 1, %97 ], [ 1, %101 ], [ 1, %116 ], [ %82, %246 ], [ %82, %255 ], [ %82, %1964 ], [ %82, %1968 ], [ %82, %1983 ], [ %82, %398 ], [ %82, %474 ], [ %82, %377 ], [ %82, %463 ], [ %82, %438 ]
  %1995 = phi i32 [ 0, %552 ], [ 0, %555 ], [ %83, %120 ], [ 0, %1987 ], [ 0, %462 ], [ 0, %461 ], [ 0, %269 ], [ %83, %97 ], [ %83, %101 ], [ %83, %116 ], [ 0, %246 ], [ 0, %255 ], [ 0, %1964 ], [ 0, %1968 ], [ 0, %1983 ], [ 0, %398 ], [ 0, %474 ], [ 0, %377 ], [ 0, %463 ], [ 0, %438 ]
  %1996 = phi i32 [ %84, %552 ], [ %84, %555 ], [ %84, %120 ], [ %84, %1987 ], [ %84, %462 ], [ %84, %461 ], [ %266, %269 ], [ %84, %97 ], [ %84, %101 ], [ %84, %116 ], [ %84, %246 ], [ %84, %255 ], [ %84, %1964 ], [ %84, %1968 ], [ %84, %1983 ], [ %84, %398 ], [ %84, %474 ], [ %266, %377 ], [ %84, %463 ], [ %84, %438 ]
  %1997 = phi i32 [ %525, %552 ], [ %525, %555 ], [ %85, %120 ], [ %85, %1987 ], [ %85, %462 ], [ %85, %461 ], [ %85, %269 ], [ %85, %97 ], [ %85, %101 ], [ %85, %116 ], [ %85, %246 ], [ %85, %255 ], [ %85, %1964 ], [ %85, %1968 ], [ %85, %1983 ], [ %85, %398 ], [ %85, %474 ], [ %85, %377 ], [ %85, %463 ], [ %85, %438 ]
  %1998 = phi i32 [ %503, %552 ], [ %503, %555 ], [ %86, %120 ], [ %86, %1987 ], [ %86, %462 ], [ %86, %461 ], [ %86, %269 ], [ %86, %97 ], [ %86, %101 ], [ %86, %116 ], [ %86, %246 ], [ %86, %255 ], [ %86, %1964 ], [ %86, %1968 ], [ %86, %1983 ], [ %86, %398 ], [ %86, %474 ], [ %86, %377 ], [ %86, %463 ], [ %86, %438 ]
  %1999 = phi i8 [ %87, %552 ], [ %87, %555 ], [ %87, %120 ], [ %87, %1987 ], [ 1, %462 ], [ 1, %461 ], [ %87, %269 ], [ %87, %97 ], [ %87, %101 ], [ %87, %116 ], [ %87, %246 ], [ %87, %255 ], [ %87, %1964 ], [ %87, %1968 ], [ %87, %1983 ], [ %87, %398 ], [ 1, %474 ], [ %87, %377 ], [ 1, %463 ], [ %87, %438 ]
  %2000 = phi i8 [ %88, %552 ], [ %88, %555 ], [ %88, %120 ], [ %88, %1987 ], [ 0, %462 ], [ 0, %461 ], [ %88, %269 ], [ %88, %97 ], [ %88, %101 ], [ %88, %116 ], [ 0, %246 ], [ %228, %255 ], [ %88, %1964 ], [ %88, %1968 ], [ %88, %1983 ], [ 4, %398 ], [ 0, %474 ], [ %88, %377 ], [ 0, %463 ], [ 4, %438 ]
  %2001 = tail call fastcc i32 @stbi__get16be(ptr noundef %12) #17
  %2002 = tail call fastcc i32 @stbi__get16be(ptr noundef %12) #17
  br label %79

2003:                                             ; preds = %64, %541, %517, %241, %219, %234, %238, %246, %231, %225, %222, %213, %173, %138, %128, %255, %124, %490, %502, %500, %492, %447, %394, %387, %385, %263, %259, %1959, %555, %1729, %1810, %1799, %1813, %1685, %1679, %1688, %1671, %1676, %1956, %566, %568, %570, %1643, %1786, %1642, %498, %497, %455, %393, %71
  %2004 = phi i32 [ 1, %71 ], [ 0, %1729 ], [ 0, %541 ], [ 0, %1642 ], [ 0, %1685 ], [ 0, %1786 ], [ 1, %1956 ], [ 0, %570 ], [ 1, %568 ], [ 0, %566 ], [ 0, %1643 ], [ 1, %498 ], [ 0, %1676 ], [ 1, %393 ], [ 0, %1671 ], [ 0, %1688 ], [ 1, %497 ], [ 0, %1810 ], [ 0, %1813 ], [ 0, %1799 ], [ 1, %455 ], [ 0, %1679 ], [ 0, %555 ], [ 0, %1959 ], [ 0, %259 ], [ 0, %263 ], [ 0, %385 ], [ 0, %387 ], [ 0, %394 ], [ 0, %447 ], [ 0, %492 ], [ 0, %500 ], [ 0, %502 ], [ 0, %490 ], [ 0, %124 ], [ 0, %255 ], [ 0, %128 ], [ 0, %138 ], [ 0, %173 ], [ 0, %213 ], [ 0, %222 ], [ 0, %225 ], [ 0, %231 ], [ 0, %246 ], [ 0, %238 ], [ 0, %234 ], [ 0, %219 ], [ 0, %241 ], [ 0, %517 ], [ 0, %64 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  ret i32 %2004
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nounwind
define internal fastcc ptr @rebump(ptr noundef %0, i64 noundef range(i64 0, 4294967296) %1) unnamed_addr #0 {
  %3 = add nuw nsw i64 %1, 15
  %4 = and i64 %3, 8589934576
  %5 = add nuw nsw i64 %4, 16
  %6 = load i64, ptr @arena_used, align 8, !tbaa !19
  %7 = sub i64 100663296, %6
  %8 = icmp ugt i64 %5, %7
  br i1 %8, label %19, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds nuw i8, ptr @arena, i64 %6
  %11 = add i64 %6, %5
  store i64 %11, ptr @arena_used, align 8, !tbaa !19
  store i64 %1, ptr %10, align 8, !tbaa !19
  %12 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %13 = icmp eq ptr %0, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds i8, ptr %0, i64 -16
  %16 = load i64, ptr %15, align 8, !tbaa !19
  %17 = tail call i64 @llvm.umin.i64(i64 %16, i64 %1)
  %18 = tail call ptr @memcpy(ptr noundef nonnull %12, ptr noundef nonnull %0, i64 noundef %17) #16
  br label %19

19:                                               ; preds = %2, %14, %9
  %20 = phi ptr [ %12, %9 ], [ %12, %14 ], [ null, %2 ]
  ret ptr %20
}

; Function Attrs: nounwind
define internal fastcc range(i32 0, 2) i32 @stbi__getn(ptr noundef captures(none) %0, ptr noundef %1, i32 noundef range(i32 0, 1073741825) %2) unnamed_addr #0 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5 = load ptr, ptr %4, align 8, !tbaa !8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %9 = load ptr, ptr %8, align 8, !tbaa !16
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %11 = load ptr, ptr %10, align 8, !tbaa !18
  br label %35

12:                                               ; preds = %3
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %14 = load ptr, ptr %13, align 8, !tbaa !18
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %16 = load ptr, ptr %15, align 8, !tbaa !16
  %17 = ptrtoint ptr %14 to i64
  %18 = ptrtoint ptr %16 to i64
  %19 = sub i64 %17, %18
  %20 = trunc i64 %19 to i32
  %21 = icmp sgt i32 %2, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %12
  %23 = shl i64 %19, 32
  %24 = ashr exact i64 %23, 32
  %25 = tail call ptr @memcpy(ptr noundef %1, ptr noundef %16, i64 noundef %24) #16
  %26 = load ptr, ptr %4, align 8, !tbaa !8
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %28 = load ptr, ptr %27, align 8, !tbaa !33
  %29 = getelementptr inbounds i8, ptr %1, i64 %24
  %30 = sub i32 %2, %20
  %31 = tail call i32 %26(ptr noundef %28, ptr noundef %29, i32 noundef %30) #16
  %32 = icmp eq i32 %31, %30
  %33 = zext i1 %32 to i32
  %34 = load ptr, ptr %13, align 8, !tbaa !18
  store ptr %34, ptr %15, align 8, !tbaa !16
  br label %50

35:                                               ; preds = %7, %12
  %36 = phi ptr [ %11, %7 ], [ %14, %12 ]
  %37 = phi ptr [ %9, %7 ], [ %16, %12 ]
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %39 = zext nneg i32 %2 to i64
  %40 = getelementptr inbounds nuw i8, ptr %37, i64 %39
  %41 = icmp ugt ptr %40, %36
  br i1 %41, label %50, label %42

42:                                               ; preds = %35
  %43 = icmp eq i32 %2, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %42
  %45 = tail call ptr @memcpy(ptr noundef %1, ptr noundef %37, i64 noundef %39) #16
  %46 = load ptr, ptr %38, align 8, !tbaa !16
  br label %47

47:                                               ; preds = %44, %42
  %48 = phi ptr [ %46, %44 ], [ %37, %42 ]
  %49 = getelementptr inbounds nuw i8, ptr %48, i64 %39
  store ptr %49, ptr %38, align 8, !tbaa !16
  br label %50

50:                                               ; preds = %22, %35, %47
  %51 = phi i32 [ 1, %47 ], [ %33, %22 ], [ 0, %35 ]
  ret i32 %51
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem0: none, target_mem1: none)
define internal fastcc void @stbi__compute_transparency16(ptr noundef nonnull readonly captures(none) %0, ptr noundef nonnull readonly captures(none) %1, i32 noundef %2) unnamed_addr #7 {
  %4 = load ptr, ptr %0, align 8, !tbaa !26
  %5 = load i32, ptr %4, align 8, !tbaa !24
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %7 = load i32, ptr %6, align 4, !tbaa !25
  %8 = mul i32 %7, %5
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %10 = load ptr, ptr %9, align 8, !tbaa !110
  %11 = icmp eq i32 %2, 2
  %12 = icmp eq i32 %8, 0
  br i1 %11, label %17, label %13

13:                                               ; preds = %3
  br i1 %12, label %138, label %14

14:                                               ; preds = %13
  %15 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %16 = getelementptr inbounds nuw i8, ptr %1, i64 4
  br label %116

17:                                               ; preds = %3
  br i1 %12, label %138, label %18

18:                                               ; preds = %17
  %19 = zext i32 %8 to i64
  %20 = icmp ult i32 %8, 25
  br i1 %20, label %63, label %21

21:                                               ; preds = %18
  %22 = add i32 %8, -1
  %23 = zext i32 %22 to i64
  %24 = shl nuw nsw i64 %23, 2
  %25 = getelementptr i8, ptr %10, i64 %24
  %26 = getelementptr i8, ptr %25, i64 4
  %27 = getelementptr i8, ptr %1, i64 2
  %28 = icmp ult ptr %10, %27
  %29 = icmp ult ptr %1, %26
  %30 = and i1 %28, %29
  br i1 %30, label %63, label %31

31:                                               ; preds = %21
  %32 = and i64 %19, 3
  %33 = icmp eq i64 %32, 0
  %34 = select i1 %33, i64 4, i64 %32
  %35 = sub nsw i64 %19, %34
  %36 = load i16, ptr %1, align 2, !tbaa !39, !alias.scope !149
  %37 = insertelement <4 x i16> poison, i16 %36, i64 0
  %38 = shufflevector <4 x i16> %37, <4 x i16> poison, <4 x i32> zeroinitializer
  %39 = shl nsw i64 %35, 2
  %40 = getelementptr i8, ptr %10, i64 %39
  %41 = trunc i64 %35 to i32
  br label %42

42:                                               ; preds = %42, %31
  %43 = phi i64 [ 0, %31 ], [ %61, %42 ]
  %44 = shl i64 %43, 2
  %45 = getelementptr i8, ptr %10, i64 %44
  %46 = getelementptr i8, ptr %10, i64 %44
  %47 = getelementptr i8, ptr %10, i64 %44
  %48 = getelementptr i8, ptr %10, i64 %44
  %49 = load <8 x i16>, ptr %45, align 2, !tbaa !39, !alias.scope !152, !noalias !149
  %50 = shufflevector <8 x i16> %49, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %51 = icmp ne <4 x i16> %50, %38
  %52 = sext <4 x i1> %51 to <4 x i16>
  %53 = extractelement <4 x i16> %52, i64 0
  %54 = extractelement <4 x i16> %52, i64 1
  %55 = extractelement <4 x i16> %52, i64 2
  %56 = extractelement <4 x i16> %52, i64 3
  %57 = getelementptr inbounds nuw i8, ptr %45, i64 2
  %58 = getelementptr i8, ptr %46, i64 6
  %59 = getelementptr i8, ptr %47, i64 10
  %60 = getelementptr i8, ptr %48, i64 14
  store i16 %53, ptr %57, align 2, !tbaa !39, !alias.scope !152, !noalias !149
  store i16 %54, ptr %58, align 2, !tbaa !39, !alias.scope !152, !noalias !149
  store i16 %55, ptr %59, align 2, !tbaa !39, !alias.scope !152, !noalias !149
  store i16 %56, ptr %60, align 2, !tbaa !39, !alias.scope !152, !noalias !149
  %61 = add nuw i64 %43, 4
  %62 = icmp eq i64 %61, %35
  br i1 %62, label %63, label %42, !llvm.loop !154

63:                                               ; preds = %42, %21, %18
  %64 = phi ptr [ %10, %21 ], [ %10, %18 ], [ %40, %42 ]
  %65 = phi i32 [ 0, %21 ], [ 0, %18 ], [ %41, %42 ]
  %66 = sub i32 %8, %65
  %67 = and i32 %66, 3
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %82, label %69

69:                                               ; preds = %63, %69
  %70 = phi ptr [ %78, %69 ], [ %64, %63 ]
  %71 = phi i32 [ %79, %69 ], [ %65, %63 ]
  %72 = phi i32 [ %80, %69 ], [ 0, %63 ]
  %73 = load i16, ptr %70, align 2, !tbaa !39
  %74 = load i16, ptr %1, align 2, !tbaa !39
  %75 = icmp ne i16 %73, %74
  %76 = sext i1 %75 to i16
  %77 = getelementptr inbounds nuw i8, ptr %70, i64 2
  store i16 %76, ptr %77, align 2, !tbaa !39
  %78 = getelementptr inbounds nuw i8, ptr %70, i64 4
  %79 = add nuw i32 %71, 1
  %80 = add i32 %72, 1
  %81 = icmp eq i32 %80, %67
  br i1 %81, label %82, label %69, !llvm.loop !155

82:                                               ; preds = %69, %63
  %83 = phi ptr [ %64, %63 ], [ %78, %69 ]
  %84 = phi i32 [ %65, %63 ], [ %79, %69 ]
  %85 = sub i32 %65, %8
  %86 = icmp ugt i32 %85, -4
  br i1 %86, label %138, label %87

87:                                               ; preds = %82, %87
  %88 = phi ptr [ %113, %87 ], [ %83, %82 ]
  %89 = phi i32 [ %114, %87 ], [ %84, %82 ]
  %90 = load i16, ptr %88, align 2, !tbaa !39
  %91 = load i16, ptr %1, align 2, !tbaa !39
  %92 = icmp ne i16 %90, %91
  %93 = sext i1 %92 to i16
  %94 = getelementptr inbounds nuw i8, ptr %88, i64 2
  store i16 %93, ptr %94, align 2, !tbaa !39
  %95 = getelementptr inbounds nuw i8, ptr %88, i64 4
  %96 = load i16, ptr %95, align 2, !tbaa !39
  %97 = load i16, ptr %1, align 2, !tbaa !39
  %98 = icmp ne i16 %96, %97
  %99 = sext i1 %98 to i16
  %100 = getelementptr inbounds nuw i8, ptr %88, i64 6
  store i16 %99, ptr %100, align 2, !tbaa !39
  %101 = getelementptr inbounds nuw i8, ptr %88, i64 8
  %102 = load i16, ptr %101, align 2, !tbaa !39
  %103 = load i16, ptr %1, align 2, !tbaa !39
  %104 = icmp ne i16 %102, %103
  %105 = sext i1 %104 to i16
  %106 = getelementptr inbounds nuw i8, ptr %88, i64 10
  store i16 %105, ptr %106, align 2, !tbaa !39
  %107 = getelementptr inbounds nuw i8, ptr %88, i64 12
  %108 = load i16, ptr %107, align 2, !tbaa !39
  %109 = load i16, ptr %1, align 2, !tbaa !39
  %110 = icmp ne i16 %108, %109
  %111 = sext i1 %110 to i16
  %112 = getelementptr inbounds nuw i8, ptr %88, i64 14
  store i16 %111, ptr %112, align 2, !tbaa !39
  %113 = getelementptr inbounds nuw i8, ptr %88, i64 16
  %114 = add nuw i32 %89, 4
  %115 = icmp eq i32 %114, %8
  br i1 %115, label %138, label %87, !llvm.loop !156

116:                                              ; preds = %14, %134
  %117 = phi ptr [ %10, %14 ], [ %135, %134 ]
  %118 = phi i32 [ 0, %14 ], [ %136, %134 ]
  %119 = load i16, ptr %117, align 2, !tbaa !39
  %120 = load i16, ptr %1, align 2, !tbaa !39
  %121 = icmp eq i16 %119, %120
  br i1 %121, label %122, label %134

122:                                              ; preds = %116
  %123 = getelementptr inbounds nuw i8, ptr %117, i64 2
  %124 = load i16, ptr %123, align 2, !tbaa !39
  %125 = load i16, ptr %15, align 2, !tbaa !39
  %126 = icmp eq i16 %124, %125
  br i1 %126, label %127, label %134

127:                                              ; preds = %122
  %128 = getelementptr inbounds nuw i8, ptr %117, i64 4
  %129 = load i16, ptr %128, align 2, !tbaa !39
  %130 = load i16, ptr %16, align 2, !tbaa !39
  %131 = icmp eq i16 %129, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %127
  %133 = getelementptr inbounds nuw i8, ptr %117, i64 6
  store i16 0, ptr %133, align 2, !tbaa !39
  br label %134

134:                                              ; preds = %132, %127, %122, %116
  %135 = getelementptr inbounds nuw i8, ptr %117, i64 8
  %136 = add nuw i32 %118, 1
  %137 = icmp eq i32 %136, %8
  br i1 %137, label %138, label %116, !llvm.loop !157

138:                                              ; preds = %134, %82, %87, %13, %17
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem0: none, target_mem1: none)
define internal fastcc void @stbi__compute_transparency(ptr noundef nonnull readonly captures(none) %0, ptr noundef nonnull readonly captures(none) %1, i32 noundef %2) unnamed_addr #7 {
  %4 = load ptr, ptr %0, align 8, !tbaa !26
  %5 = load i32, ptr %4, align 8, !tbaa !24
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %7 = load i32, ptr %6, align 4, !tbaa !25
  %8 = mul i32 %7, %5
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %10 = load ptr, ptr %9, align 8, !tbaa !110
  %11 = icmp eq i32 %2, 2
  %12 = icmp eq i32 %8, 0
  br i1 %11, label %17, label %13

13:                                               ; preds = %3
  br i1 %12, label %90, label %14

14:                                               ; preds = %13
  %15 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %16 = getelementptr inbounds nuw i8, ptr %1, i64 2
  br label %52

17:                                               ; preds = %3
  br i1 %12, label %90, label %18

18:                                               ; preds = %17
  %19 = and i32 %8, 3
  %20 = icmp ult i32 %8, 4
  br i1 %20, label %76, label %21

21:                                               ; preds = %18
  %22 = and i32 %8, -4
  br label %23

23:                                               ; preds = %23, %21
  %24 = phi ptr [ %10, %21 ], [ %49, %23 ]
  %25 = phi i32 [ 0, %21 ], [ %50, %23 ]
  %26 = load i8, ptr %24, align 1, !tbaa !35
  %27 = load i8, ptr %1, align 1, !tbaa !35
  %28 = icmp ne i8 %26, %27
  %29 = sext i1 %28 to i8
  %30 = getelementptr inbounds nuw i8, ptr %24, i64 1
  store i8 %29, ptr %30, align 1, !tbaa !35
  %31 = getelementptr inbounds nuw i8, ptr %24, i64 2
  %32 = load i8, ptr %31, align 1, !tbaa !35
  %33 = load i8, ptr %1, align 1, !tbaa !35
  %34 = icmp ne i8 %32, %33
  %35 = sext i1 %34 to i8
  %36 = getelementptr inbounds nuw i8, ptr %24, i64 3
  store i8 %35, ptr %36, align 1, !tbaa !35
  %37 = getelementptr inbounds nuw i8, ptr %24, i64 4
  %38 = load i8, ptr %37, align 1, !tbaa !35
  %39 = load i8, ptr %1, align 1, !tbaa !35
  %40 = icmp ne i8 %38, %39
  %41 = sext i1 %40 to i8
  %42 = getelementptr inbounds nuw i8, ptr %24, i64 5
  store i8 %41, ptr %42, align 1, !tbaa !35
  %43 = getelementptr inbounds nuw i8, ptr %24, i64 6
  %44 = load i8, ptr %43, align 1, !tbaa !35
  %45 = load i8, ptr %1, align 1, !tbaa !35
  %46 = icmp ne i8 %44, %45
  %47 = sext i1 %46 to i8
  %48 = getelementptr inbounds nuw i8, ptr %24, i64 7
  store i8 %47, ptr %48, align 1, !tbaa !35
  %49 = getelementptr inbounds nuw i8, ptr %24, i64 8
  %50 = add i32 %25, 4
  %51 = icmp eq i32 %50, %22
  br i1 %51, label %74, label %23, !llvm.loop !158

52:                                               ; preds = %14, %70
  %53 = phi ptr [ %10, %14 ], [ %71, %70 ]
  %54 = phi i32 [ 0, %14 ], [ %72, %70 ]
  %55 = load i8, ptr %53, align 1, !tbaa !35
  %56 = load i8, ptr %1, align 1, !tbaa !35
  %57 = icmp eq i8 %55, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %52
  %59 = getelementptr inbounds nuw i8, ptr %53, i64 1
  %60 = load i8, ptr %59, align 1, !tbaa !35
  %61 = load i8, ptr %15, align 1, !tbaa !35
  %62 = icmp eq i8 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %58
  %64 = getelementptr inbounds nuw i8, ptr %53, i64 2
  %65 = load i8, ptr %64, align 1, !tbaa !35
  %66 = load i8, ptr %16, align 1, !tbaa !35
  %67 = icmp eq i8 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = getelementptr inbounds nuw i8, ptr %53, i64 3
  store i8 0, ptr %69, align 1, !tbaa !35
  br label %70

70:                                               ; preds = %68, %63, %58, %52
  %71 = getelementptr inbounds nuw i8, ptr %53, i64 4
  %72 = add nuw i32 %54, 1
  %73 = icmp eq i32 %72, %8
  br i1 %73, label %90, label %52, !llvm.loop !159

74:                                               ; preds = %23
  %75 = icmp eq i32 %19, 0
  br i1 %75, label %90, label %76

76:                                               ; preds = %74, %18
  %77 = phi ptr [ %10, %18 ], [ %49, %74 ]
  %78 = icmp ne i32 %19, 0
  tail call void @llvm.assume(i1 %78)
  br label %79

79:                                               ; preds = %79, %76
  %80 = phi ptr [ %87, %79 ], [ %77, %76 ]
  %81 = phi i32 [ %88, %79 ], [ 0, %76 ]
  %82 = load i8, ptr %80, align 1, !tbaa !35
  %83 = load i8, ptr %1, align 1, !tbaa !35
  %84 = icmp ne i8 %82, %83
  %85 = sext i1 %84 to i8
  %86 = getelementptr inbounds nuw i8, ptr %80, i64 1
  store i8 %85, ptr %86, align 1, !tbaa !35
  %87 = getelementptr inbounds nuw i8, ptr %80, i64 2
  %88 = add i32 %81, 1
  %89 = icmp eq i32 %88, %19
  br i1 %89, label %90, label %79, !llvm.loop !160

90:                                               ; preds = %70, %74, %79, %13, %17
  ret void
}

declare ptr @memcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nounwind
define internal fastcc range(i32 0, 2) i32 @stbi__zbuild_huffman(ptr noundef nonnull %0, ptr noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca [16 x i32], align 16
  %5 = alloca [17 x i32], align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %6 = call ptr @memset(ptr noundef nonnull %5, i32 noundef 0, i64 noundef 68) #16
  %7 = call ptr @memset(ptr noundef nonnull %0, i32 noundef 0, i64 noundef 1024) #16
  %8 = icmp sgt i32 %2, 0
  br i1 %8, label %9, label %65

9:                                                ; preds = %3
  %10 = zext nneg i32 %2 to i64
  %11 = and i64 %10, 3
  %12 = icmp ult i32 %2, 4
  br i1 %12, label %50, label %13

13:                                               ; preds = %9
  %14 = and i64 %10, 2147483644
  br label %15

15:                                               ; preds = %15, %13
  %16 = phi i64 [ 0, %13 ], [ %45, %15 ]
  %17 = phi i64 [ 0, %13 ], [ %46, %15 ]
  %18 = getelementptr inbounds nuw i8, ptr %1, i64 %16
  %19 = load i8, ptr %18, align 1, !tbaa !35
  %20 = zext i8 %19 to i64
  %21 = getelementptr inbounds nuw i32, ptr %5, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !4
  %23 = add i32 %22, 1
  store i32 %23, ptr %21, align 4, !tbaa !4
  %24 = getelementptr inbounds nuw i8, ptr %1, i64 %16
  %25 = getelementptr inbounds nuw i8, ptr %24, i64 1
  %26 = load i8, ptr %25, align 1, !tbaa !35
  %27 = zext i8 %26 to i64
  %28 = getelementptr inbounds nuw i32, ptr %5, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !4
  %30 = add i32 %29, 1
  store i32 %30, ptr %28, align 4, !tbaa !4
  %31 = getelementptr inbounds nuw i8, ptr %1, i64 %16
  %32 = getelementptr inbounds nuw i8, ptr %31, i64 2
  %33 = load i8, ptr %32, align 1, !tbaa !35
  %34 = zext i8 %33 to i64
  %35 = getelementptr inbounds nuw i32, ptr %5, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !4
  %37 = add i32 %36, 1
  store i32 %37, ptr %35, align 4, !tbaa !4
  %38 = getelementptr inbounds nuw i8, ptr %1, i64 %16
  %39 = getelementptr inbounds nuw i8, ptr %38, i64 3
  %40 = load i8, ptr %39, align 1, !tbaa !35
  %41 = zext i8 %40 to i64
  %42 = getelementptr inbounds nuw i32, ptr %5, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !4
  %44 = add i32 %43, 1
  store i32 %44, ptr %42, align 4, !tbaa !4
  %45 = add nuw nsw i64 %16, 4
  %46 = add i64 %17, 4
  %47 = icmp eq i64 %46, %14
  br i1 %47, label %48, label %15, !llvm.loop !161

48:                                               ; preds = %15
  %49 = icmp eq i64 %11, 0
  br i1 %49, label %65, label %50

50:                                               ; preds = %48, %9
  %51 = phi i64 [ 0, %9 ], [ %45, %48 ]
  %52 = icmp ne i64 %11, 0
  call void @llvm.assume(i1 %52)
  br label %53

53:                                               ; preds = %53, %50
  %54 = phi i64 [ %51, %50 ], [ %62, %53 ]
  %55 = phi i64 [ 0, %50 ], [ %63, %53 ]
  %56 = getelementptr inbounds nuw i8, ptr %1, i64 %54
  %57 = load i8, ptr %56, align 1, !tbaa !35
  %58 = zext i8 %57 to i64
  %59 = getelementptr inbounds nuw i32, ptr %5, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !4
  %61 = add i32 %60, 1
  store i32 %61, ptr %59, align 4, !tbaa !4
  %62 = add nuw nsw i64 %54, 1
  %63 = add i64 %55, 1
  %64 = icmp eq i64 %63, %11
  br i1 %64, label %65, label %53, !llvm.loop !162

65:                                               ; preds = %48, %53, %3
  %66 = getelementptr inbounds nuw i8, ptr %5, i64 4
  %67 = load <8 x i32>, ptr %66, align 4
  %68 = freeze <8 x i32> %67
  %69 = icmp sgt <8 x i32> %68, <i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 256>
  %70 = getelementptr inbounds nuw i8, ptr %5, i64 36
  %71 = load <4 x i32>, ptr %70, align 4
  %72 = freeze <4 x i32> %71
  %73 = icmp sgt <4 x i32> %72, <i32 512, i32 1024, i32 2048, i32 4096>
  %74 = getelementptr inbounds nuw i8, ptr %5, i64 52
  %75 = load i32, ptr %74, align 4
  %76 = icmp sgt i32 %75, 8192
  %77 = getelementptr inbounds nuw i8, ptr %5, i64 56
  %78 = load i32, ptr %77, align 8
  %79 = freeze i32 %78
  %80 = icmp sgt i32 %79, 16384
  %81 = getelementptr inbounds nuw i8, ptr %5, i64 60
  %82 = load i32, ptr %81, align 4
  %83 = icmp sgt i32 %82, 32768
  %84 = shufflevector <8 x i1> %69, <8 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %85 = or <4 x i1> %84, %73
  %86 = shufflevector <4 x i1> %85, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %87 = shufflevector <8 x i1> %86, <8 x i1> %69, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %88 = bitcast <8 x i1> %87 to i8
  %89 = icmp ne i8 %88, 0
  %90 = select i1 %89, i1 true, i1 %76
  %91 = freeze i1 %90
  %92 = or i1 %91, %80
  %93 = select i1 %92, i1 true, i1 %83
  br i1 %93, label %177, label %94

94:                                               ; preds = %65
  %95 = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %96 = getelementptr inbounds nuw i8, ptr %0, i64 1124
  %97 = getelementptr inbounds nuw i8, ptr %0, i64 1056
  br label %98

98:                                               ; preds = %94, %116
  %99 = phi i64 [ 1, %94 ], [ %123, %116 ]
  %100 = phi i32 [ 0, %94 ], [ %122, %116 ]
  %101 = phi i32 [ 0, %94 ], [ %121, %116 ]
  %102 = getelementptr inbounds nuw i32, ptr %4, i64 %99
  store i32 %101, ptr %102, align 4, !tbaa !4
  %103 = trunc i32 %101 to i16
  %104 = getelementptr inbounds nuw i16, ptr %95, i64 %99
  store i16 %103, ptr %104, align 2, !tbaa !39
  %105 = trunc i32 %100 to i16
  %106 = getelementptr inbounds nuw i16, ptr %96, i64 %99
  store i16 %105, ptr %106, align 2, !tbaa !39
  %107 = getelementptr inbounds nuw i32, ptr %5, i64 %99
  %108 = load i32, ptr %107, align 4, !tbaa !4
  %109 = add i32 %108, %101
  %110 = icmp eq i32 %108, 0
  br i1 %110, label %116, label %111

111:                                              ; preds = %98
  %112 = add i32 %109, -1
  %113 = trunc nuw nsw i64 %99 to i32
  %114 = shl nuw nsw i32 1, %113
  %115 = icmp slt i32 %112, %114
  br i1 %115, label %116, label %177

116:                                              ; preds = %111, %98
  %117 = trunc i64 %99 to i32
  %118 = sub i32 16, %117
  %119 = shl i32 %109, %118
  %120 = getelementptr inbounds nuw i32, ptr %97, i64 %99
  store i32 %119, ptr %120, align 4, !tbaa !4
  %121 = shl i32 %109, 1
  %122 = add i32 %108, %100
  %123 = add nuw nsw i64 %99, 1
  %124 = icmp eq i64 %123, 16
  br i1 %124, label %125, label %98, !llvm.loop !163

125:                                              ; preds = %116
  %126 = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store i32 65536, ptr %126, align 4, !tbaa !4
  br i1 %8, label %127, label %177

127:                                              ; preds = %125
  %128 = getelementptr inbounds nuw i8, ptr %0, i64 1156
  %129 = getelementptr inbounds nuw i8, ptr %0, i64 1444
  %130 = zext nneg i32 %2 to i64
  br label %131

131:                                              ; preds = %127, %174
  %132 = phi i64 [ 0, %127 ], [ %175, %174 ]
  %133 = getelementptr inbounds nuw i8, ptr %1, i64 %132
  %134 = load i8, ptr %133, align 1, !tbaa !35
  %135 = zext i8 %134 to i32
  %136 = icmp eq i8 %134, 0
  br i1 %136, label %174, label %137

137:                                              ; preds = %131
  %138 = zext i8 %134 to i64
  %139 = getelementptr inbounds nuw i32, ptr %4, i64 %138
  %140 = load i32, ptr %139, align 4, !tbaa !4
  %141 = getelementptr inbounds nuw i16, ptr %95, i64 %138
  %142 = load i16, ptr %141, align 2, !tbaa !39
  %143 = zext i16 %142 to i32
  %144 = sub i32 %140, %143
  %145 = getelementptr inbounds nuw i16, ptr %96, i64 %138
  %146 = load i16, ptr %145, align 2, !tbaa !39
  %147 = zext i16 %146 to i32
  %148 = add i32 %144, %147
  %149 = shl nuw nsw i32 %135, 9
  %150 = trunc nuw nsw i64 %132 to i32
  %151 = or i32 %149, %150
  %152 = trunc i32 %151 to i16
  %153 = sext i32 %148 to i64
  %154 = getelementptr inbounds i8, ptr %128, i64 %153
  store i8 %134, ptr %154, align 1, !tbaa !35
  %155 = trunc i64 %132 to i16
  %156 = getelementptr inbounds i16, ptr %129, i64 %153
  store i16 %155, ptr %156, align 2, !tbaa !39
  %157 = icmp ult i8 %134, 10
  br i1 %157, label %158, label %172

158:                                              ; preds = %137
  %159 = trunc i32 %140 to i16
  %160 = call i16 @llvm.bitreverse.i16(i16 %159)
  %161 = zext i16 %160 to i32
  %162 = sub nuw nsw i32 16, %135
  %163 = lshr i32 %161, %162
  %164 = shl nuw nsw i32 1, %135
  %165 = zext nneg i32 %163 to i64
  %166 = zext nneg i32 %164 to i64
  br label %167

167:                                              ; preds = %158, %167
  %168 = phi i64 [ %165, %158 ], [ %170, %167 ]
  %169 = getelementptr inbounds nuw i16, ptr %0, i64 %168
  store i16 %152, ptr %169, align 2, !tbaa !39
  %170 = add nuw nsw i64 %168, %166
  %171 = icmp samesign ult i64 %170, 512
  br i1 %171, label %167, label %172, !llvm.loop !164

172:                                              ; preds = %167, %137
  %173 = add i32 %140, 1
  store i32 %173, ptr %139, align 4, !tbaa !4
  br label %174

174:                                              ; preds = %172, %131
  %175 = add nuw nsw i64 %132, 1
  %176 = icmp eq i64 %175, %130
  br i1 %176, label %177, label %131, !llvm.loop !165

177:                                              ; preds = %111, %174, %65, %125
  %178 = phi i32 [ 1, %174 ], [ 1, %125 ], [ 0, %65 ], [ 0, %111 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret i32 %178
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem0: none, target_mem1: none)
define internal fastcc range(i32 -1, 65536) i32 @stbi__zhuffman_decode(ptr noundef nonnull captures(none) %0, ptr noundef nonnull readonly captures(none) %1) unnamed_addr #9 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %4 = load i32, ptr %3, align 8, !tbaa !126
  %5 = icmp slt i32 %4, 16
  br i1 %5, label %6, label %40

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !118
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %9 = load ptr, ptr %8, align 8, !tbaa !121
  %10 = icmp ult ptr %7, %9
  br i1 %10, label %17, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %13 = load i32, ptr %12, align 4, !tbaa !128
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %97

15:                                               ; preds = %11
  store i32 1, ptr %12, align 4, !tbaa !128
  %16 = add nsw i32 %4, 16
  store i32 %16, ptr %3, align 8, !tbaa !126
  br label %40

17:                                               ; preds = %6
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %19 = load i32, ptr %18, align 8, !tbaa !127
  br label %20

20:                                               ; preds = %33, %17
  %21 = phi ptr [ %34, %33 ], [ %7, %17 ]
  %22 = phi i32 [ %38, %33 ], [ %4, %17 ]
  %23 = phi i32 [ %37, %33 ], [ %19, %17 ]
  %24 = lshr i32 %23, %22
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  store ptr %9, ptr %0, align 8, !tbaa !118
  br label %40

27:                                               ; preds = %20
  %28 = icmp ult ptr %21, %9
  br i1 %28, label %29, label %33

29:                                               ; preds = %27
  %30 = getelementptr inbounds nuw i8, ptr %21, i64 1
  store ptr %30, ptr %0, align 8, !tbaa !118
  %31 = load i8, ptr %21, align 1, !tbaa !35
  %32 = zext i8 %31 to i32
  br label %33

33:                                               ; preds = %29, %27
  %34 = phi ptr [ %30, %29 ], [ %21, %27 ]
  %35 = phi i32 [ %32, %29 ], [ 0, %27 ]
  %36 = shl nuw i32 %35, %22
  %37 = or i32 %36, %23
  store i32 %37, ptr %18, align 8, !tbaa !127
  %38 = add nsw i32 %22, 8
  store i32 %38, ptr %3, align 8, !tbaa !126
  %39 = icmp slt i32 %22, 17
  br i1 %39, label %20, label %40, !llvm.loop !129

40:                                               ; preds = %33, %26, %15, %2
  %41 = phi i32 [ %4, %2 ], [ %22, %26 ], [ %16, %15 ], [ %38, %33 ]
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %43 = load i32, ptr %42, align 8, !tbaa !127
  %44 = and i32 %43, 511
  %45 = zext nneg i32 %44 to i64
  %46 = getelementptr inbounds nuw i16, ptr %1, i64 %45
  %47 = load i16, ptr %46, align 2, !tbaa !39
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %40
  %50 = zext i16 %47 to i32
  %51 = lshr i32 %50, 9
  %52 = lshr i32 %43, %51
  store i32 %52, ptr %42, align 8, !tbaa !127
  %53 = sub i32 %41, %51
  store i32 %53, ptr %3, align 8, !tbaa !126
  %54 = and i32 %50, 511
  br label %97

55:                                               ; preds = %40
  %56 = trunc i32 %43 to i16
  %57 = tail call i16 @llvm.bitreverse.i16(i16 %56)
  %58 = zext i16 %57 to i32
  %59 = getelementptr inbounds nuw i8, ptr %1, i64 1056
  br label %60

60:                                               ; preds = %60, %55
  %61 = phi i32 [ 10, %55 ], [ %66, %60 ]
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, ptr %59, i64 %62
  %64 = load i32, ptr %63, align 4, !tbaa !4
  %65 = icmp sgt i32 %64, %58
  %66 = add i32 %61, 1
  br i1 %65, label %67, label %60

67:                                               ; preds = %60
  %68 = icmp sgt i32 %61, 15
  br i1 %68, label %97, label %69

69:                                               ; preds = %67
  %70 = sub i32 16, %61
  %71 = lshr i32 %58, %70
  %72 = getelementptr inbounds nuw i8, ptr %1, i64 1024
  %73 = getelementptr inbounds i16, ptr %72, i64 %62
  %74 = load i16, ptr %73, align 2, !tbaa !39
  %75 = zext i16 %74 to i32
  %76 = sub nsw i32 %71, %75
  %77 = getelementptr inbounds nuw i8, ptr %1, i64 1124
  %78 = getelementptr inbounds i16, ptr %77, i64 %62
  %79 = load i16, ptr %78, align 2, !tbaa !39
  %80 = zext i16 %79 to i32
  %81 = add nsw i32 %76, %80
  %82 = icmp sgt i32 %81, 287
  br i1 %82, label %97, label %83

83:                                               ; preds = %69
  %84 = getelementptr inbounds nuw i8, ptr %1, i64 1156
  %85 = sext i32 %81 to i64
  %86 = getelementptr inbounds i8, ptr %84, i64 %85
  %87 = load i8, ptr %86, align 1, !tbaa !35
  %88 = zext i8 %87 to i32
  %89 = icmp eq i32 %61, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %83
  %91 = lshr i32 %43, %61
  store i32 %91, ptr %42, align 8, !tbaa !127
  %92 = sub i32 %41, %61
  store i32 %92, ptr %3, align 8, !tbaa !126
  %93 = getelementptr inbounds nuw i8, ptr %1, i64 1444
  %94 = getelementptr inbounds i16, ptr %93, i64 %85
  %95 = load i16, ptr %94, align 2, !tbaa !39
  %96 = zext i16 %95 to i32
  br label %97

97:                                               ; preds = %90, %83, %69, %67, %11, %49
  %98 = phi i32 [ -1, %11 ], [ %54, %49 ], [ %96, %90 ], [ -1, %67 ], [ -1, %69 ], [ -1, %83 ]
  ret i32 %98
}

; Function Attrs: nounwind
define internal fastcc range(i32 0, 2) i32 @stbi__create_png_image_raw(ptr noundef nonnull captures(none) initializes((24, 32)) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef range(i32 0, 256) %7) unnamed_addr #0 {
  %9 = ptrtoint ptr %1 to i64
  %10 = icmp eq i32 %6, 16
  %11 = load ptr, ptr %0, align 8, !tbaa !26
  %12 = mul i32 %4, %3
  %13 = zext i1 %10 to i32
  %14 = shl i32 %12, %13
  %15 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %16 = load i32, ptr %15, align 8, !tbaa !71
  %17 = shl i32 %3, %13
  %18 = shl i32 %16, %13
  %19 = or i32 %5, %4
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %21, label %44

21:                                               ; preds = %8
  %22 = icmp eq i32 %5, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %21
  %24 = udiv i32 2147483647, %5
  %25 = icmp sgt i32 %4, %24
  br i1 %25, label %44, label %26

26:                                               ; preds = %23, %21
  %27 = mul i32 %5, %4
  %28 = or i32 %17, %27
  %29 = icmp sgt i32 %28, -1
  br i1 %29, label %30, label %44

30:                                               ; preds = %26
  %31 = icmp eq i32 %17, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %30
  %33 = udiv i32 2147483647, %17
  %34 = icmp sgt i32 %27, %33
  br i1 %34, label %44, label %35

35:                                               ; preds = %32, %30
  %36 = mul i32 %17, %27
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %37, 15
  %39 = and i64 %38, -16
  %40 = add nsw i64 %39, 16
  %41 = load i64, ptr @arena_used, align 8, !tbaa !19
  %42 = sub i64 100663296, %41
  %43 = icmp ugt i64 %40, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %35, %26, %32, %23, %8
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %45, align 8, !tbaa !110
  br label %1449

46:                                               ; preds = %35
  %47 = getelementptr inbounds nuw i8, ptr @arena, i64 %41
  %48 = add i64 %41, %40
  store i64 %48, ptr @arena_used, align 8, !tbaa !19
  store i64 %37, ptr %47, align 8, !tbaa !19
  %49 = getelementptr inbounds nuw i8, ptr %47, i64 16
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %49, ptr %50, align 8, !tbaa !110
  %51 = or i32 %16, %4
  %52 = icmp sgt i32 %51, -1
  br i1 %52, label %53, label %1449

53:                                               ; preds = %46
  %54 = icmp eq i32 %4, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %53
  %56 = udiv i32 2147483647, %4
  %57 = icmp sgt i32 %16, %56
  br i1 %57, label %1449, label %58

58:                                               ; preds = %55, %53
  %59 = mul i32 %16, %4
  %60 = or i32 %59, %6
  %61 = icmp sgt i32 %60, -1
  br i1 %61, label %62, label %1449

62:                                               ; preds = %58
  %63 = icmp eq i32 %6, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %62
  %65 = udiv i32 2147483647, %6
  %66 = icmp sgt i32 %59, %65
  %67 = mul i32 %59, %6
  %68 = icmp sgt i32 %67, 2147483640
  %69 = or i1 %68, %66
  br i1 %69, label %1449, label %70

70:                                               ; preds = %62, %64
  %71 = phi i32 [ %67, %64 ], [ 0, %62 ]
  %72 = add i32 %71, 7
  %73 = lshr i32 %72, 3
  %74 = icmp sgt i32 %5, -1
  br i1 %74, label %75, label %1449

75:                                               ; preds = %70
  br i1 %22, label %79, label %76

76:                                               ; preds = %75
  %77 = udiv i32 2147483647, %5
  %78 = icmp samesign ugt i32 %73, %77
  br i1 %78, label %1449, label %79

79:                                               ; preds = %75, %76
  %80 = mul i32 %73, %5
  %81 = xor i32 %73, 2147483647
  %82 = icmp sgt i32 %80, %81
  br i1 %82, label %1449, label %83

83:                                               ; preds = %79
  %84 = add nuw nsw i32 %73, 1
  %85 = mul i32 %84, %5
  %86 = icmp ult i32 %2, %85
  br i1 %86, label %1449, label %87

87:                                               ; preds = %83
  %88 = shl nuw nsw i32 %73, 1
  %89 = zext nneg i32 %88 to i64
  %90 = add nuw nsw i64 %89, 15
  %91 = and i64 %90, 2147483632
  %92 = add nuw nsw i64 %91, 16
  %93 = sub i64 100663296, %48
  %94 = icmp ugt i64 %92, %93
  br i1 %94, label %1449, label %95

95:                                               ; preds = %87
  %96 = getelementptr inbounds nuw i8, ptr @arena, i64 %48
  %97 = add i64 %48, %92
  store i64 %97, ptr @arena_used, align 8, !tbaa !19
  store i64 %89, ptr %96, align 8, !tbaa !19
  %98 = getelementptr i8, ptr %96, i64 16
  %99 = icmp slt i32 %6, 8
  %100 = select i1 %99, i32 1, i32 %18
  br i1 %22, label %1449, label %101

101:                                              ; preds = %95
  %102 = select i1 %99, i32 %73, i32 %4
  %103 = zext nneg i32 %73 to i64
  %104 = mul i32 %102, %100
  %105 = sext i32 %100 to i64
  %106 = icmp slt i32 %100, %104
  %107 = icmp sgt i32 %100, 0
  %108 = icmp sgt i32 %104, 0
  %109 = sext i32 %104 to i64
  %110 = icmp eq i32 %6, 8
  %111 = icmp eq i32 %16, %3
  %112 = icmp eq i32 %16, 1
  %113 = icmp eq i32 %59, 0
  %114 = add i32 %4, -1
  %115 = icmp sgt i32 %114, -1
  %116 = zext i32 %114 to i64
  %117 = zext i32 %59 to i64
  %118 = icmp eq i32 %7, 0
  %119 = sext i32 %6 to i64
  %120 = getelementptr inbounds i8, ptr @stbi__depth_scale_table, i64 %119
  %121 = zext nneg i32 %5 to i64
  %122 = zext i32 %100 to i64
  %123 = zext nneg i32 %100 to i64
  %124 = zext i32 %104 to i64
  %125 = shl i32 %4, 1
  %126 = add i32 %125, -2
  %127 = sext i32 %126 to i64
  %128 = getelementptr i8, ptr @arena, i64 %41
  %129 = getelementptr i8, ptr %128, i64 %39
  %130 = getelementptr i8, ptr %129, i64 %116
  %131 = getelementptr i8, ptr %130, i64 33
  %132 = shl i32 %4, 1
  %133 = add i32 %132, -2
  %134 = sext i32 %133 to i64
  %135 = shl nuw nsw i64 %116, 1
  %136 = sub nsw i64 %134, %135
  %137 = add nuw nsw i64 %116, 1
  %138 = add i64 %41, ptrtoint (ptr @arena to i64)
  %139 = add i64 %138, %39
  %140 = add i64 %139, 31
  %141 = sub i64 %140, %9
  %142 = xor i64 %109, -1
  %143 = sub nsw i64 %109, %105
  %144 = add i64 %41, ptrtoint (ptr @arena to i64)
  %145 = add i64 %144, %39
  %146 = add i64 %145, 31
  %147 = sub i64 %146, %9
  %148 = xor i64 %109, -1
  %149 = add i64 %41, ptrtoint (ptr @arena to i64)
  %150 = add i64 %149, %39
  %151 = add i64 %150, 31
  %152 = sub i64 %151, %9
  %153 = xor i64 %109, -1
  %154 = add i64 %41, ptrtoint (ptr @arena to i64)
  %155 = add i64 %154, %39
  %156 = add i64 %155, 31
  %157 = sub i64 %156, %9
  %158 = xor i64 %109, -1
  %159 = add i32 %59, -1
  %160 = icmp ugt i64 %143, 3
  %161 = sub nsw i64 %105, %109
  %162 = icmp ugt i64 %161, -2147483649
  %163 = select i1 %160, i1 %162, i1 false
  %164 = icmp ult i32 %100, 32
  %165 = icmp ult i64 %143, 32
  %166 = and i64 %143, 28
  %167 = and i64 %143, -32
  %168 = icmp eq i64 %143, %167
  %169 = add nsw i64 %167, %105
  %170 = icmp eq i64 %166, 0
  %171 = and i64 %143, -4
  %172 = add nsw i64 %171, %105
  %173 = icmp eq i64 %143, %171
  %174 = add nsw i64 %109, -1
  %175 = icmp ult i32 %100, 4
  %176 = icmp ult i32 %100, 32
  %177 = and i64 %122, 28
  %178 = and i64 %122, 2147483616
  %179 = icmp eq i64 %178, %122
  %180 = icmp eq i64 %177, 0
  %181 = and i64 %122, 2147483644
  %182 = icmp eq i64 %181, %122
  %183 = and i64 %122, 3
  %184 = icmp eq i64 %183, 0
  %185 = icmp ugt i64 %143, 3
  %186 = sub nsw i64 %105, %109
  %187 = icmp ugt i64 %186, -2147483649
  %188 = select i1 %185, i1 %187, i1 false
  %189 = icmp ult i32 %100, 16
  %190 = icmp ult i64 %143, 16
  %191 = and i64 %143, 12
  %192 = and i64 %143, -16
  %193 = icmp eq i64 %143, %192
  %194 = add nsw i64 %192, %105
  %195 = icmp eq i64 %191, 0
  %196 = and i64 %143, -4
  %197 = add nsw i64 %196, %105
  %198 = icmp eq i64 %143, %196
  %199 = icmp ult i32 %100, 4
  %200 = icmp ult i32 %100, 32
  %201 = and i64 %122, 28
  %202 = and i64 %122, 2147483616
  %203 = icmp eq i64 %202, %122
  %204 = icmp eq i64 %201, 0
  %205 = and i64 %122, 2147483644
  %206 = icmp eq i64 %205, %122
  %207 = and i64 %122, 1
  %208 = icmp eq i64 %207, 0
  %209 = add nsw i64 %122, -1
  %210 = icmp ugt i64 %143, 3
  %211 = sub nsw i64 %105, %109
  %212 = icmp ugt i64 %211, -2147483649
  %213 = select i1 %210, i1 %212, i1 false
  %214 = icmp ult i32 %100, 16
  %215 = icmp ult i64 %143, 16
  %216 = and i64 %143, 12
  %217 = and i64 %143, -16
  %218 = icmp eq i64 %143, %217
  %219 = add nsw i64 %217, %105
  %220 = icmp eq i64 %216, 0
  %221 = and i64 %143, -4
  %222 = add nsw i64 %221, %105
  %223 = icmp eq i64 %143, %221
  %224 = add nsw i64 %109, -1
  %225 = icmp ult i32 %104, 4
  %226 = icmp ult i32 %104, 32
  %227 = and i64 %124, 28
  %228 = and i64 %124, 2147483616
  %229 = icmp eq i64 %228, %124
  %230 = icmp eq i64 %227, 0
  %231 = and i64 %124, 2147483644
  %232 = icmp eq i64 %231, %124
  %233 = and i64 %124, 3
  %234 = icmp eq i64 %233, 0
  %235 = icmp ugt i64 %143, 3
  %236 = sub nsw i64 %105, %109
  %237 = icmp ugt i64 %236, -2147483649
  %238 = select i1 %235, i1 %237, i1 false
  %239 = icmp ult i32 %100, 32
  %240 = icmp ult i64 %143, 32
  %241 = and i64 %143, 28
  %242 = and i64 %143, -32
  %243 = icmp eq i64 %143, %242
  %244 = add nsw i64 %242, %105
  %245 = icmp eq i64 %241, 0
  %246 = and i64 %143, -4
  %247 = add nsw i64 %246, %105
  %248 = icmp eq i64 %143, %246
  %249 = add nsw i64 %109, -1
  %250 = and i32 %4, 1
  %251 = icmp eq i32 %4, 1
  %252 = and i32 %4, -2
  %253 = icmp eq i32 %250, 0
  %254 = icmp ne i32 %250, 0
  %255 = and i32 %59, 3
  %256 = icmp ult i32 %59, 4
  %257 = and i32 %59, -4
  %258 = icmp eq i32 %255, 0
  %259 = icmp ne i32 %255, 0
  %260 = icmp ult i32 %114, 55
  %261 = shl nuw i32 %114, 1
  %262 = sub i32 %126, %261
  %263 = icmp sgt i32 %262, %126
  %264 = mul nsw i64 %116, -2
  %265 = mul nsw i64 %116, -2
  %266 = and i64 %137, 4294967288
  %267 = sub nsw i64 %116, %266
  %268 = icmp eq i64 %137, %266
  %269 = and i32 %59, 1
  %270 = icmp eq i32 %159, 0
  %271 = and i32 %59, -2
  %272 = icmp eq i32 %269, 0
  %273 = icmp ne i32 %269, 0
  %274 = and i32 %59, 1
  %275 = icmp eq i32 %159, 0
  %276 = and i32 %59, -2
  %277 = icmp eq i32 %274, 0
  %278 = icmp ne i32 %274, 0
  %279 = and i32 %59, 1
  %280 = icmp eq i32 %159, 0
  %281 = and i32 %59, -2
  %282 = icmp eq i32 %279, 0
  %283 = icmp ne i32 %279, 0
  %284 = and i64 %116, 1
  %285 = icmp eq i64 %284, 0
  %286 = shl nuw i32 %114, 1
  %287 = sext i32 %286 to i64
  %288 = add nsw i64 %116, -1
  %289 = icmp eq i32 %114, 0
  br label %290

290:                                              ; preds = %101, %1446
  %291 = phi i64 [ 0, %101 ], [ %1447, %1446 ]
  %292 = phi ptr [ %1, %101 ], [ %1028, %1446 ]
  %293 = mul i64 %291, %158
  %294 = add i64 %157, %293
  %295 = mul i64 %291, %153
  %296 = add i64 %152, %295
  %297 = trunc i64 %291 to i32
  %298 = and i32 %297, 1
  %299 = xor i32 %298, 1
  %300 = mul nuw nsw i32 %73, %299
  %301 = zext nneg i32 %300 to i64
  %302 = mul i64 %291, %153
  %303 = add i64 %152, %302
  %304 = trunc i64 %291 to i32
  %305 = and i32 %304, 1
  %306 = xor i32 %305, 1
  %307 = mul nuw nsw i32 %73, %306
  %308 = zext nneg i32 %307 to i64
  %309 = mul i64 %291, %148
  %310 = add i64 %147, %309
  %311 = trunc i64 %291 to i32
  %312 = and i32 %311, 1
  %313 = xor i32 %312, 1
  %314 = mul nuw nsw i32 %73, %313
  %315 = zext nneg i32 %314 to i64
  %316 = mul i64 %291, %148
  %317 = add i64 %147, %316
  %318 = trunc i64 %291 to i32
  %319 = and i32 %318, 1
  %320 = xor i32 %319, 1
  %321 = mul nuw nsw i32 %73, %320
  %322 = zext nneg i32 %321 to i64
  %323 = mul i64 %291, %142
  %324 = add i64 %141, %323
  %325 = trunc i64 %291 to i32
  %326 = and i32 %325, 1
  %327 = xor i32 %326, 1
  %328 = mul nuw nsw i32 %73, %327
  %329 = zext nneg i32 %328 to i64
  %330 = mul i64 %291, %142
  %331 = add i64 %141, %330
  %332 = trunc i64 %291 to i32
  %333 = mul i32 %14, %332
  %334 = zext i32 %333 to i64
  %335 = trunc i64 %291 to i32
  %336 = mul i32 %14, %335
  %337 = zext i32 %336 to i64
  %338 = trunc nuw i64 %291 to i32
  %339 = trunc i64 %291 to i1
  %340 = select i1 %339, i64 %103, i64 0
  %341 = getelementptr i8, ptr %98, i64 %340
  %342 = and i32 %338, 1
  %343 = xor i32 %342, 1
  %344 = mul nuw nsw i32 %343, %73
  %345 = zext nneg i32 %344 to i64
  %346 = getelementptr inbounds nuw i8, ptr %98, i64 %345
  %347 = load ptr, ptr %50, align 8, !tbaa !110
  %348 = mul i32 %14, %338
  %349 = zext i32 %348 to i64
  %350 = getelementptr inbounds nuw i8, ptr %347, i64 %349
  %351 = getelementptr inbounds nuw i8, ptr %292, i64 1
  %352 = load i8, ptr %292, align 1, !tbaa !35
  %353 = icmp ugt i8 %352, 4
  br i1 %353, label %1449, label %354

354:                                              ; preds = %290
  %355 = icmp eq i64 %291, 0
  br i1 %355, label %356, label %360

356:                                              ; preds = %354
  %357 = zext nneg i8 %352 to i64
  %358 = getelementptr inbounds nuw i8, ptr @first_row_filter, i64 %357
  %359 = load i8, ptr %358, align 1, !tbaa !35
  br label %360

360:                                              ; preds = %356, %354
  %361 = phi i8 [ %359, %356 ], [ %352, %354 ]
  switch i8 %361, label %1027 [
    i8 0, label %535
    i8 1, label %537
    i8 2, label %477
    i8 3, label %420
    i8 4, label %362
    i8 5, label %934
  ]

362:                                              ; preds = %360
  br i1 %107, label %363, label %792

363:                                              ; preds = %362
  br i1 %175, label %402, label %364

364:                                              ; preds = %363
  %365 = add i64 %340, %296
  %366 = icmp ult i64 %365, 32
  %367 = sub nsw i64 %340, %301
  %368 = icmp ult i64 %367, 32
  %369 = or i1 %366, %368
  br i1 %369, label %402, label %370

370:                                              ; preds = %364
  br i1 %176, label %389, label %371

371:                                              ; preds = %370, %371
  %372 = phi i64 [ %385, %371 ], [ 0, %370 ]
  %373 = getelementptr inbounds nuw i8, ptr %351, i64 %372
  %374 = getelementptr inbounds nuw i8, ptr %373, i64 16
  %375 = load <16 x i8>, ptr %373, align 1, !tbaa !35
  %376 = load <16 x i8>, ptr %374, align 1, !tbaa !35
  %377 = getelementptr inbounds nuw i8, ptr %346, i64 %372
  %378 = getelementptr inbounds nuw i8, ptr %377, i64 16
  %379 = load <16 x i8>, ptr %377, align 1, !tbaa !35
  %380 = load <16 x i8>, ptr %378, align 1, !tbaa !35
  %381 = add <16 x i8> %379, %375
  %382 = add <16 x i8> %380, %376
  %383 = getelementptr inbounds nuw i8, ptr %341, i64 %372
  %384 = getelementptr inbounds nuw i8, ptr %383, i64 16
  store <16 x i8> %381, ptr %383, align 1, !tbaa !35
  store <16 x i8> %382, ptr %384, align 1, !tbaa !35
  %385 = add nuw i64 %372, 32
  %386 = icmp eq i64 %385, %178
  br i1 %386, label %387, label %371, !llvm.loop !166

387:                                              ; preds = %371
  br i1 %179, label %792, label %388

388:                                              ; preds = %387
  br i1 %180, label %402, label %389, !prof !167

389:                                              ; preds = %370, %388
  %390 = phi i64 [ %178, %388 ], [ 0, %370 ]
  br label %391

391:                                              ; preds = %391, %389
  %392 = phi i64 [ %390, %389 ], [ %399, %391 ]
  %393 = getelementptr inbounds nuw i8, ptr %351, i64 %392
  %394 = load <4 x i8>, ptr %393, align 1, !tbaa !35
  %395 = getelementptr inbounds nuw i8, ptr %346, i64 %392
  %396 = load <4 x i8>, ptr %395, align 1, !tbaa !35
  %397 = add <4 x i8> %396, %394
  %398 = getelementptr inbounds nuw i8, ptr %341, i64 %392
  store <4 x i8> %397, ptr %398, align 1, !tbaa !35
  %399 = add nuw i64 %392, 4
  %400 = icmp eq i64 %399, %181
  br i1 %400, label %401, label %391, !llvm.loop !168

401:                                              ; preds = %391
  br i1 %182, label %792, label %402

402:                                              ; preds = %364, %363, %388, %401
  %403 = phi i64 [ 0, %363 ], [ 0, %364 ], [ %178, %388 ], [ %181, %401 ]
  br i1 %184, label %416, label %404

404:                                              ; preds = %402, %404
  %405 = phi i64 [ %413, %404 ], [ %403, %402 ]
  %406 = phi i64 [ %414, %404 ], [ 0, %402 ]
  %407 = getelementptr inbounds nuw i8, ptr %351, i64 %405
  %408 = load i8, ptr %407, align 1, !tbaa !35
  %409 = getelementptr inbounds nuw i8, ptr %346, i64 %405
  %410 = load i8, ptr %409, align 1, !tbaa !35
  %411 = add i8 %410, %408
  %412 = getelementptr inbounds nuw i8, ptr %341, i64 %405
  store i8 %411, ptr %412, align 1, !tbaa !35
  %413 = add nuw nsw i64 %405, 1
  %414 = add i64 %406, 1
  %415 = icmp eq i64 %414, %183
  br i1 %415, label %416, label %404, !llvm.loop !169

416:                                              ; preds = %404, %402
  %417 = phi i64 [ %403, %402 ], [ %413, %404 ]
  %418 = sub nsw i64 %403, %122
  %419 = icmp ugt i64 %418, -4
  br i1 %419, label %792, label %873

420:                                              ; preds = %360
  br i1 %107, label %421, label %655

421:                                              ; preds = %420
  br i1 %199, label %463, label %422

422:                                              ; preds = %421
  %423 = add i64 %340, %310
  %424 = icmp ult i64 %423, 32
  %425 = sub nsw i64 %340, %315
  %426 = icmp ult i64 %425, 32
  %427 = or i1 %424, %426
  br i1 %427, label %463, label %428

428:                                              ; preds = %422
  br i1 %200, label %449, label %429

429:                                              ; preds = %428, %429
  %430 = phi i64 [ %445, %429 ], [ 0, %428 ]
  %431 = getelementptr inbounds nuw i8, ptr %351, i64 %430
  %432 = getelementptr inbounds nuw i8, ptr %431, i64 16
  %433 = load <16 x i8>, ptr %431, align 1, !tbaa !35
  %434 = load <16 x i8>, ptr %432, align 1, !tbaa !35
  %435 = getelementptr inbounds nuw i8, ptr %346, i64 %430
  %436 = getelementptr inbounds nuw i8, ptr %435, i64 16
  %437 = load <16 x i8>, ptr %435, align 1, !tbaa !35
  %438 = load <16 x i8>, ptr %436, align 1, !tbaa !35
  %439 = lshr <16 x i8> %437, splat (i8 1)
  %440 = lshr <16 x i8> %438, splat (i8 1)
  %441 = add <16 x i8> %439, %433
  %442 = add <16 x i8> %440, %434
  %443 = getelementptr inbounds nuw i8, ptr %341, i64 %430
  %444 = getelementptr inbounds nuw i8, ptr %443, i64 16
  store <16 x i8> %441, ptr %443, align 1, !tbaa !35
  store <16 x i8> %442, ptr %444, align 1, !tbaa !35
  %445 = add nuw i64 %430, 32
  %446 = icmp eq i64 %445, %202
  br i1 %446, label %447, label %429, !llvm.loop !170

447:                                              ; preds = %429
  br i1 %203, label %655, label %448

448:                                              ; preds = %447
  br i1 %204, label %463, label %449, !prof !167

449:                                              ; preds = %428, %448
  %450 = phi i64 [ %202, %448 ], [ 0, %428 ]
  br label %451

451:                                              ; preds = %451, %449
  %452 = phi i64 [ %450, %449 ], [ %460, %451 ]
  %453 = getelementptr inbounds nuw i8, ptr %351, i64 %452
  %454 = load <4 x i8>, ptr %453, align 1, !tbaa !35
  %455 = getelementptr inbounds nuw i8, ptr %346, i64 %452
  %456 = load <4 x i8>, ptr %455, align 1, !tbaa !35
  %457 = lshr <4 x i8> %456, splat (i8 1)
  %458 = add <4 x i8> %457, %454
  %459 = getelementptr inbounds nuw i8, ptr %341, i64 %452
  store <4 x i8> %458, ptr %459, align 1, !tbaa !35
  %460 = add nuw i64 %452, 4
  %461 = icmp eq i64 %460, %205
  br i1 %461, label %462, label %451, !llvm.loop !171

462:                                              ; preds = %451
  br i1 %206, label %655, label %463

463:                                              ; preds = %422, %421, %448, %462
  %464 = phi i64 [ 0, %421 ], [ 0, %422 ], [ %202, %448 ], [ %205, %462 ]
  br i1 %208, label %474, label %465

465:                                              ; preds = %463
  %466 = getelementptr inbounds nuw i8, ptr %351, i64 %464
  %467 = load i8, ptr %466, align 1, !tbaa !35
  %468 = getelementptr inbounds nuw i8, ptr %346, i64 %464
  %469 = load i8, ptr %468, align 1, !tbaa !35
  %470 = lshr i8 %469, 1
  %471 = add i8 %470, %467
  %472 = getelementptr inbounds nuw i8, ptr %341, i64 %464
  store i8 %471, ptr %472, align 1, !tbaa !35
  %473 = or disjoint i64 %464, 1
  br label %474

474:                                              ; preds = %465, %463
  %475 = phi i64 [ %464, %463 ], [ %473, %465 ]
  %476 = icmp eq i64 %464, %209
  br i1 %476, label %655, label %736

477:                                              ; preds = %360
  br i1 %108, label %478, label %1027

478:                                              ; preds = %477
  br i1 %225, label %517, label %479

479:                                              ; preds = %478
  %480 = add i64 %340, %324
  %481 = icmp ult i64 %480, 32
  %482 = sub nsw i64 %340, %329
  %483 = icmp ult i64 %482, 32
  %484 = or i1 %481, %483
  br i1 %484, label %517, label %485

485:                                              ; preds = %479
  br i1 %226, label %504, label %486

486:                                              ; preds = %485, %486
  %487 = phi i64 [ %500, %486 ], [ 0, %485 ]
  %488 = getelementptr inbounds nuw i8, ptr %351, i64 %487
  %489 = getelementptr inbounds nuw i8, ptr %488, i64 16
  %490 = load <16 x i8>, ptr %488, align 1, !tbaa !35
  %491 = load <16 x i8>, ptr %489, align 1, !tbaa !35
  %492 = getelementptr inbounds nuw i8, ptr %346, i64 %487
  %493 = getelementptr inbounds nuw i8, ptr %492, i64 16
  %494 = load <16 x i8>, ptr %492, align 1, !tbaa !35
  %495 = load <16 x i8>, ptr %493, align 1, !tbaa !35
  %496 = add <16 x i8> %494, %490
  %497 = add <16 x i8> %495, %491
  %498 = getelementptr inbounds nuw i8, ptr %341, i64 %487
  %499 = getelementptr inbounds nuw i8, ptr %498, i64 16
  store <16 x i8> %496, ptr %498, align 1, !tbaa !35
  store <16 x i8> %497, ptr %499, align 1, !tbaa !35
  %500 = add nuw i64 %487, 32
  %501 = icmp eq i64 %500, %228
  br i1 %501, label %502, label %486, !llvm.loop !172

502:                                              ; preds = %486
  br i1 %229, label %1027, label %503

503:                                              ; preds = %502
  br i1 %230, label %517, label %504, !prof !167

504:                                              ; preds = %485, %503
  %505 = phi i64 [ %228, %503 ], [ 0, %485 ]
  br label %506

506:                                              ; preds = %506, %504
  %507 = phi i64 [ %505, %504 ], [ %514, %506 ]
  %508 = getelementptr inbounds nuw i8, ptr %351, i64 %507
  %509 = load <4 x i8>, ptr %508, align 1, !tbaa !35
  %510 = getelementptr inbounds nuw i8, ptr %346, i64 %507
  %511 = load <4 x i8>, ptr %510, align 1, !tbaa !35
  %512 = add <4 x i8> %511, %509
  %513 = getelementptr inbounds nuw i8, ptr %341, i64 %507
  store <4 x i8> %512, ptr %513, align 1, !tbaa !35
  %514 = add nuw i64 %507, 4
  %515 = icmp eq i64 %514, %231
  br i1 %515, label %516, label %506, !llvm.loop !173

516:                                              ; preds = %506
  br i1 %232, label %1027, label %517

517:                                              ; preds = %479, %478, %503, %516
  %518 = phi i64 [ 0, %478 ], [ 0, %479 ], [ %228, %503 ], [ %231, %516 ]
  br i1 %234, label %531, label %519

519:                                              ; preds = %517, %519
  %520 = phi i64 [ %528, %519 ], [ %518, %517 ]
  %521 = phi i64 [ %529, %519 ], [ 0, %517 ]
  %522 = getelementptr inbounds nuw i8, ptr %351, i64 %520
  %523 = load i8, ptr %522, align 1, !tbaa !35
  %524 = getelementptr inbounds nuw i8, ptr %346, i64 %520
  %525 = load i8, ptr %524, align 1, !tbaa !35
  %526 = add i8 %525, %523
  %527 = getelementptr inbounds nuw i8, ptr %341, i64 %520
  store i8 %526, ptr %527, align 1, !tbaa !35
  %528 = add nuw nsw i64 %520, 1
  %529 = add i64 %521, 1
  %530 = icmp eq i64 %529, %233
  br i1 %530, label %531, label %519, !llvm.loop !174

531:                                              ; preds = %519, %517
  %532 = phi i64 [ %518, %517 ], [ %528, %519 ]
  %533 = sub nsw i64 %518, %124
  %534 = icmp ugt i64 %533, -4
  br i1 %534, label %1027, label %624

535:                                              ; preds = %360
  %536 = tail call ptr @memcpy(ptr noundef nonnull %341, ptr noundef nonnull %351, i64 noundef %109) #16
  br label %1027

537:                                              ; preds = %360
  %538 = tail call ptr @memcpy(ptr noundef nonnull %341, ptr noundef nonnull %351, i64 noundef %105) #16
  br i1 %106, label %539, label %1027

539:                                              ; preds = %537
  br i1 %238, label %540, label %582

540:                                              ; preds = %539
  %541 = add i64 %340, %331
  %542 = icmp ult i64 %541, 32
  %543 = or i1 %542, %239
  br i1 %543, label %582, label %544

544:                                              ; preds = %540
  br i1 %240, label %566, label %545

545:                                              ; preds = %544, %545
  %546 = phi i64 [ %562, %545 ], [ 0, %544 ]
  %547 = add i64 %546, %105
  %548 = getelementptr inbounds i8, ptr %351, i64 %547
  %549 = getelementptr inbounds nuw i8, ptr %548, i64 16
  %550 = load <16 x i8>, ptr %548, align 1, !tbaa !35
  %551 = load <16 x i8>, ptr %549, align 1, !tbaa !35
  %552 = shl i64 %546, 32
  %553 = ashr exact i64 %552, 32
  %554 = getelementptr inbounds i8, ptr %341, i64 %553
  %555 = getelementptr inbounds nuw i8, ptr %554, i64 16
  %556 = load <16 x i8>, ptr %554, align 1, !tbaa !35
  %557 = load <16 x i8>, ptr %555, align 1, !tbaa !35
  %558 = add <16 x i8> %556, %550
  %559 = add <16 x i8> %557, %551
  %560 = getelementptr inbounds i8, ptr %341, i64 %547
  %561 = getelementptr inbounds nuw i8, ptr %560, i64 16
  store <16 x i8> %558, ptr %560, align 1, !tbaa !35
  store <16 x i8> %559, ptr %561, align 1, !tbaa !35
  %562 = add nuw i64 %546, 32
  %563 = icmp eq i64 %562, %242
  br i1 %563, label %564, label %545, !llvm.loop !175

564:                                              ; preds = %545
  br i1 %243, label %1027, label %565

565:                                              ; preds = %564
  br i1 %245, label %582, label %566, !prof !167

566:                                              ; preds = %544, %565
  %567 = phi i64 [ %242, %565 ], [ 0, %544 ]
  br label %568

568:                                              ; preds = %568, %566
  %569 = phi i64 [ %567, %566 ], [ %579, %568 ]
  %570 = add i64 %569, %105
  %571 = getelementptr inbounds i8, ptr %351, i64 %570
  %572 = load <4 x i8>, ptr %571, align 1, !tbaa !35
  %573 = shl i64 %569, 32
  %574 = ashr exact i64 %573, 32
  %575 = getelementptr inbounds i8, ptr %341, i64 %574
  %576 = load <4 x i8>, ptr %575, align 1, !tbaa !35
  %577 = add <4 x i8> %576, %572
  %578 = getelementptr inbounds i8, ptr %341, i64 %570
  store <4 x i8> %577, ptr %578, align 1, !tbaa !35
  %579 = add nuw i64 %569, 4
  %580 = icmp eq i64 %579, %246
  br i1 %580, label %581, label %568, !llvm.loop !176

581:                                              ; preds = %568
  br i1 %248, label %1027, label %582

582:                                              ; preds = %540, %539, %565, %581
  %583 = phi i64 [ %105, %539 ], [ %105, %540 ], [ %244, %565 ], [ %247, %581 ]
  %584 = sub nsw i64 %109, %583
  %585 = and i64 %584, 1
  %586 = icmp eq i64 %585, 0
  br i1 %586, label %598, label %587

587:                                              ; preds = %582
  %588 = getelementptr inbounds i8, ptr %351, i64 %583
  %589 = load i8, ptr %588, align 1, !tbaa !35
  %590 = trunc nsw i64 %583 to i32
  %591 = sub i32 %590, %100
  %592 = sext i32 %591 to i64
  %593 = getelementptr inbounds i8, ptr %341, i64 %592
  %594 = load i8, ptr %593, align 1, !tbaa !35
  %595 = add i8 %594, %589
  %596 = getelementptr inbounds i8, ptr %341, i64 %583
  store i8 %595, ptr %596, align 1, !tbaa !35
  %597 = add nsw i64 %583, 1
  br label %598

598:                                              ; preds = %587, %582
  %599 = phi i64 [ %583, %582 ], [ %597, %587 ]
  %600 = icmp eq i64 %583, %249
  br i1 %600, label %1027, label %601

601:                                              ; preds = %598, %601
  %602 = phi i64 [ %622, %601 ], [ %599, %598 ]
  %603 = getelementptr inbounds i8, ptr %351, i64 %602
  %604 = load i8, ptr %603, align 1, !tbaa !35
  %605 = trunc nsw i64 %602 to i32
  %606 = sub i32 %605, %100
  %607 = sext i32 %606 to i64
  %608 = getelementptr inbounds i8, ptr %341, i64 %607
  %609 = load i8, ptr %608, align 1, !tbaa !35
  %610 = add i8 %609, %604
  %611 = getelementptr inbounds i8, ptr %341, i64 %602
  store i8 %610, ptr %611, align 1, !tbaa !35
  %612 = add nsw i64 %602, 1
  %613 = getelementptr inbounds i8, ptr %351, i64 %612
  %614 = load i8, ptr %613, align 1, !tbaa !35
  %615 = trunc nsw i64 %612 to i32
  %616 = sub i32 %615, %100
  %617 = sext i32 %616 to i64
  %618 = getelementptr inbounds i8, ptr %341, i64 %617
  %619 = load i8, ptr %618, align 1, !tbaa !35
  %620 = add i8 %619, %614
  %621 = getelementptr inbounds i8, ptr %341, i64 %612
  store i8 %620, ptr %621, align 1, !tbaa !35
  %622 = add nsw i64 %602, 2
  %623 = icmp eq i64 %622, %109
  br i1 %623, label %1027, label %601, !llvm.loop !177

624:                                              ; preds = %531, %624
  %625 = phi i64 [ %653, %624 ], [ %532, %531 ]
  %626 = getelementptr inbounds nuw i8, ptr %351, i64 %625
  %627 = load i8, ptr %626, align 1, !tbaa !35
  %628 = getelementptr inbounds nuw i8, ptr %346, i64 %625
  %629 = load i8, ptr %628, align 1, !tbaa !35
  %630 = add i8 %629, %627
  %631 = getelementptr inbounds nuw i8, ptr %341, i64 %625
  store i8 %630, ptr %631, align 1, !tbaa !35
  %632 = add nuw nsw i64 %625, 1
  %633 = getelementptr inbounds nuw i8, ptr %351, i64 %632
  %634 = load i8, ptr %633, align 1, !tbaa !35
  %635 = getelementptr inbounds nuw i8, ptr %346, i64 %632
  %636 = load i8, ptr %635, align 1, !tbaa !35
  %637 = add i8 %636, %634
  %638 = getelementptr inbounds nuw i8, ptr %341, i64 %632
  store i8 %637, ptr %638, align 1, !tbaa !35
  %639 = add nuw nsw i64 %625, 2
  %640 = getelementptr inbounds nuw i8, ptr %351, i64 %639
  %641 = load i8, ptr %640, align 1, !tbaa !35
  %642 = getelementptr inbounds nuw i8, ptr %346, i64 %639
  %643 = load i8, ptr %642, align 1, !tbaa !35
  %644 = add i8 %643, %641
  %645 = getelementptr inbounds nuw i8, ptr %341, i64 %639
  store i8 %644, ptr %645, align 1, !tbaa !35
  %646 = add nuw nsw i64 %625, 3
  %647 = getelementptr inbounds nuw i8, ptr %351, i64 %646
  %648 = load i8, ptr %647, align 1, !tbaa !35
  %649 = getelementptr inbounds nuw i8, ptr %346, i64 %646
  %650 = load i8, ptr %649, align 1, !tbaa !35
  %651 = add i8 %650, %648
  %652 = getelementptr inbounds nuw i8, ptr %341, i64 %646
  store i8 %651, ptr %652, align 1, !tbaa !35
  %653 = add nuw nsw i64 %625, 4
  %654 = icmp eq i64 %653, %124
  br i1 %654, label %1027, label %624, !llvm.loop !178

655:                                              ; preds = %474, %736, %447, %462, %420
  br i1 %106, label %656, label %1027

656:                                              ; preds = %655
  br i1 %213, label %657, label %710

657:                                              ; preds = %656
  %658 = add i64 %340, %317
  %659 = icmp ult i64 %658, 16
  %660 = sub nsw i64 %340, %322
  %661 = icmp ult i64 %660, 16
  %662 = or i1 %659, %661
  %663 = or i1 %662, %214
  br i1 %663, label %710, label %664

664:                                              ; preds = %657
  br i1 %215, label %687, label %665

665:                                              ; preds = %664, %665
  %666 = phi i64 [ %683, %665 ], [ 0, %664 ]
  %667 = add i64 %666, %105
  %668 = getelementptr inbounds i8, ptr %351, i64 %667
  %669 = load <16 x i8>, ptr %668, align 1, !tbaa !35
  %670 = getelementptr inbounds i8, ptr %346, i64 %667
  %671 = load <16 x i8>, ptr %670, align 1, !tbaa !35
  %672 = zext <16 x i8> %671 to <16 x i16>
  %673 = shl i64 %666, 32
  %674 = ashr exact i64 %673, 32
  %675 = getelementptr inbounds i8, ptr %341, i64 %674
  %676 = load <16 x i8>, ptr %675, align 1, !tbaa !35
  %677 = zext <16 x i8> %676 to <16 x i16>
  %678 = add nuw nsw <16 x i16> %677, %672
  %679 = lshr <16 x i16> %678, splat (i16 1)
  %680 = trunc nuw <16 x i16> %679 to <16 x i8>
  %681 = add <16 x i8> %669, %680
  %682 = getelementptr inbounds i8, ptr %341, i64 %667
  store <16 x i8> %681, ptr %682, align 1, !tbaa !35
  %683 = add nuw i64 %666, 16
  %684 = icmp eq i64 %683, %217
  br i1 %684, label %685, label %665, !llvm.loop !179

685:                                              ; preds = %665
  br i1 %218, label %1027, label %686

686:                                              ; preds = %685
  br i1 %220, label %710, label %687, !prof !50

687:                                              ; preds = %664, %686
  %688 = phi i64 [ %217, %686 ], [ 0, %664 ]
  br label %689

689:                                              ; preds = %689, %687
  %690 = phi i64 [ %688, %687 ], [ %707, %689 ]
  %691 = add i64 %690, %105
  %692 = getelementptr inbounds i8, ptr %351, i64 %691
  %693 = load <4 x i8>, ptr %692, align 1, !tbaa !35
  %694 = getelementptr inbounds i8, ptr %346, i64 %691
  %695 = load <4 x i8>, ptr %694, align 1, !tbaa !35
  %696 = zext <4 x i8> %695 to <4 x i16>
  %697 = shl i64 %690, 32
  %698 = ashr exact i64 %697, 32
  %699 = getelementptr inbounds i8, ptr %341, i64 %698
  %700 = load <4 x i8>, ptr %699, align 1, !tbaa !35
  %701 = zext <4 x i8> %700 to <4 x i16>
  %702 = add nuw nsw <4 x i16> %701, %696
  %703 = lshr <4 x i16> %702, splat (i16 1)
  %704 = trunc nuw <4 x i16> %703 to <4 x i8>
  %705 = add <4 x i8> %693, %704
  %706 = getelementptr inbounds i8, ptr %341, i64 %691
  store <4 x i8> %705, ptr %706, align 1, !tbaa !35
  %707 = add nuw i64 %690, 4
  %708 = icmp eq i64 %707, %221
  br i1 %708, label %709, label %689, !llvm.loop !180

709:                                              ; preds = %689
  br i1 %223, label %1027, label %710

710:                                              ; preds = %657, %656, %686, %709
  %711 = phi i64 [ %105, %656 ], [ %105, %657 ], [ %219, %686 ], [ %222, %709 ]
  %712 = sub nsw i64 %109, %711
  %713 = and i64 %712, 1
  %714 = icmp eq i64 %713, 0
  br i1 %714, label %733, label %715

715:                                              ; preds = %710
  %716 = getelementptr inbounds i8, ptr %351, i64 %711
  %717 = load i8, ptr %716, align 1, !tbaa !35
  %718 = getelementptr inbounds i8, ptr %346, i64 %711
  %719 = load i8, ptr %718, align 1, !tbaa !35
  %720 = zext i8 %719 to i16
  %721 = trunc nsw i64 %711 to i32
  %722 = sub i32 %721, %100
  %723 = sext i32 %722 to i64
  %724 = getelementptr inbounds i8, ptr %341, i64 %723
  %725 = load i8, ptr %724, align 1, !tbaa !35
  %726 = zext i8 %725 to i16
  %727 = add nuw nsw i16 %726, %720
  %728 = lshr i16 %727, 1
  %729 = trunc nuw i16 %728 to i8
  %730 = add i8 %717, %729
  %731 = getelementptr inbounds i8, ptr %341, i64 %711
  store i8 %730, ptr %731, align 1, !tbaa !35
  %732 = add nsw i64 %711, 1
  br label %733

733:                                              ; preds = %715, %710
  %734 = phi i64 [ %711, %710 ], [ %732, %715 ]
  %735 = icmp eq i64 %711, %224
  br i1 %735, label %1027, label %755

736:                                              ; preds = %474, %736
  %737 = phi i64 [ %753, %736 ], [ %475, %474 ]
  %738 = getelementptr inbounds nuw i8, ptr %351, i64 %737
  %739 = load i8, ptr %738, align 1, !tbaa !35
  %740 = getelementptr inbounds nuw i8, ptr %346, i64 %737
  %741 = load i8, ptr %740, align 1, !tbaa !35
  %742 = lshr i8 %741, 1
  %743 = add i8 %742, %739
  %744 = getelementptr inbounds nuw i8, ptr %341, i64 %737
  store i8 %743, ptr %744, align 1, !tbaa !35
  %745 = add nuw nsw i64 %737, 1
  %746 = getelementptr inbounds nuw i8, ptr %351, i64 %745
  %747 = load i8, ptr %746, align 1, !tbaa !35
  %748 = getelementptr inbounds nuw i8, ptr %346, i64 %745
  %749 = load i8, ptr %748, align 1, !tbaa !35
  %750 = lshr i8 %749, 1
  %751 = add i8 %750, %747
  %752 = getelementptr inbounds nuw i8, ptr %341, i64 %745
  store i8 %751, ptr %752, align 1, !tbaa !35
  %753 = add nuw nsw i64 %737, 2
  %754 = icmp eq i64 %753, %123
  br i1 %754, label %655, label %736, !llvm.loop !181

755:                                              ; preds = %733, %755
  %756 = phi i64 [ %790, %755 ], [ %734, %733 ]
  %757 = getelementptr inbounds i8, ptr %351, i64 %756
  %758 = load i8, ptr %757, align 1, !tbaa !35
  %759 = getelementptr inbounds i8, ptr %346, i64 %756
  %760 = load i8, ptr %759, align 1, !tbaa !35
  %761 = zext i8 %760 to i16
  %762 = trunc nsw i64 %756 to i32
  %763 = sub i32 %762, %100
  %764 = sext i32 %763 to i64
  %765 = getelementptr inbounds i8, ptr %341, i64 %764
  %766 = load i8, ptr %765, align 1, !tbaa !35
  %767 = zext i8 %766 to i16
  %768 = add nuw nsw i16 %767, %761
  %769 = lshr i16 %768, 1
  %770 = trunc nuw i16 %769 to i8
  %771 = add i8 %758, %770
  %772 = getelementptr inbounds i8, ptr %341, i64 %756
  store i8 %771, ptr %772, align 1, !tbaa !35
  %773 = add nsw i64 %756, 1
  %774 = getelementptr inbounds i8, ptr %351, i64 %773
  %775 = load i8, ptr %774, align 1, !tbaa !35
  %776 = getelementptr inbounds i8, ptr %346, i64 %773
  %777 = load i8, ptr %776, align 1, !tbaa !35
  %778 = zext i8 %777 to i16
  %779 = trunc nsw i64 %773 to i32
  %780 = sub i32 %779, %100
  %781 = sext i32 %780 to i64
  %782 = getelementptr inbounds i8, ptr %341, i64 %781
  %783 = load i8, ptr %782, align 1, !tbaa !35
  %784 = zext i8 %783 to i16
  %785 = add nuw nsw i16 %784, %778
  %786 = lshr i16 %785, 1
  %787 = trunc nuw i16 %786 to i8
  %788 = add i8 %775, %787
  %789 = getelementptr inbounds i8, ptr %341, i64 %773
  store i8 %788, ptr %789, align 1, !tbaa !35
  %790 = add nsw i64 %756, 2
  %791 = icmp eq i64 %790, %109
  br i1 %791, label %1027, label %755, !llvm.loop !182

792:                                              ; preds = %416, %873, %387, %401, %362
  br i1 %106, label %793, label %1027

793:                                              ; preds = %792
  br i1 %188, label %794, label %871

794:                                              ; preds = %793
  %795 = add i64 %340, %303
  %796 = icmp ult i64 %795, 16
  %797 = or i1 %796, %189
  %798 = sub nsw i64 %340, %308
  %799 = icmp ult i64 %798, 16
  %800 = or i1 %797, %799
  %801 = add nsw i64 %340, %105
  %802 = sub nsw i64 %801, %308
  %803 = icmp ult i64 %802, 16
  %804 = or i1 %800, %803
  br i1 %804, label %871, label %805

805:                                              ; preds = %794
  br i1 %190, label %838, label %806

806:                                              ; preds = %805, %806
  %807 = phi i64 [ %834, %806 ], [ 0, %805 ]
  %808 = add i64 %807, %105
  %809 = getelementptr inbounds i8, ptr %351, i64 %808
  %810 = load <16 x i8>, ptr %809, align 1, !tbaa !35
  %811 = shl i64 %807, 32
  %812 = ashr exact i64 %811, 32
  %813 = getelementptr inbounds i8, ptr %341, i64 %812
  %814 = load <16 x i8>, ptr %813, align 1, !tbaa !35
  %815 = zext <16 x i8> %814 to <16 x i32>
  %816 = getelementptr inbounds i8, ptr %346, i64 %808
  %817 = load <16 x i8>, ptr %816, align 1, !tbaa !35
  %818 = zext <16 x i8> %817 to <16 x i32>
  %819 = getelementptr inbounds i8, ptr %346, i64 %812
  %820 = load <16 x i8>, ptr %819, align 1, !tbaa !35
  %821 = zext <16 x i8> %820 to <16 x i32>
  %822 = mul nuw nsw <16 x i32> %821, splat (i32 3)
  %823 = add nuw nsw <16 x i32> %818, %815
  %824 = sub nsw <16 x i32> %822, %823
  %825 = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %815, <16 x i32> %818)
  %826 = tail call <16 x i32> @llvm.umax.v16i32(<16 x i32> %815, <16 x i32> %818)
  %827 = icmp sgt <16 x i32> %826, %824
  %828 = select <16 x i1> %827, <16 x i32> %821, <16 x i32> %825
  %829 = icmp sgt <16 x i32> %824, %825
  %830 = select <16 x i1> %829, <16 x i32> %828, <16 x i32> %826
  %831 = trunc nuw <16 x i32> %830 to <16 x i8>
  %832 = add <16 x i8> %810, %831
  %833 = getelementptr inbounds i8, ptr %341, i64 %808
  store <16 x i8> %832, ptr %833, align 1, !tbaa !35
  %834 = add nuw i64 %807, 16
  %835 = icmp eq i64 %834, %192
  br i1 %835, label %836, label %806, !llvm.loop !183

836:                                              ; preds = %806
  br i1 %193, label %1027, label %837

837:                                              ; preds = %836
  br i1 %195, label %871, label %838, !prof !50

838:                                              ; preds = %805, %837
  %839 = phi i64 [ %192, %837 ], [ 0, %805 ]
  br label %840

840:                                              ; preds = %840, %838
  %841 = phi i64 [ %839, %838 ], [ %868, %840 ]
  %842 = add i64 %841, %105
  %843 = getelementptr inbounds i8, ptr %351, i64 %842
  %844 = load <4 x i8>, ptr %843, align 1, !tbaa !35
  %845 = shl i64 %841, 32
  %846 = ashr exact i64 %845, 32
  %847 = getelementptr inbounds i8, ptr %341, i64 %846
  %848 = load <4 x i8>, ptr %847, align 1, !tbaa !35
  %849 = zext <4 x i8> %848 to <4 x i32>
  %850 = getelementptr inbounds i8, ptr %346, i64 %842
  %851 = load <4 x i8>, ptr %850, align 1, !tbaa !35
  %852 = zext <4 x i8> %851 to <4 x i32>
  %853 = getelementptr inbounds i8, ptr %346, i64 %846
  %854 = load <4 x i8>, ptr %853, align 1, !tbaa !35
  %855 = zext <4 x i8> %854 to <4 x i32>
  %856 = mul nuw nsw <4 x i32> %855, splat (i32 3)
  %857 = add nuw nsw <4 x i32> %852, %849
  %858 = sub nsw <4 x i32> %856, %857
  %859 = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %849, <4 x i32> %852)
  %860 = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %849, <4 x i32> %852)
  %861 = icmp sgt <4 x i32> %860, %858
  %862 = select <4 x i1> %861, <4 x i32> %855, <4 x i32> %859
  %863 = icmp sgt <4 x i32> %858, %859
  %864 = select <4 x i1> %863, <4 x i32> %862, <4 x i32> %860
  %865 = trunc nuw <4 x i32> %864 to <4 x i8>
  %866 = add <4 x i8> %844, %865
  %867 = getelementptr inbounds i8, ptr %341, i64 %842
  store <4 x i8> %866, ptr %867, align 1, !tbaa !35
  %868 = add nuw i64 %841, 4
  %869 = icmp eq i64 %868, %196
  br i1 %869, label %870, label %840, !llvm.loop !184

870:                                              ; preds = %840
  br i1 %198, label %1027, label %871

871:                                              ; preds = %794, %793, %837, %870
  %872 = phi i64 [ %105, %793 ], [ %105, %794 ], [ %194, %837 ], [ %197, %870 ]
  br label %904

873:                                              ; preds = %416, %873
  %874 = phi i64 [ %902, %873 ], [ %417, %416 ]
  %875 = getelementptr inbounds nuw i8, ptr %351, i64 %874
  %876 = load i8, ptr %875, align 1, !tbaa !35
  %877 = getelementptr inbounds nuw i8, ptr %346, i64 %874
  %878 = load i8, ptr %877, align 1, !tbaa !35
  %879 = add i8 %878, %876
  %880 = getelementptr inbounds nuw i8, ptr %341, i64 %874
  store i8 %879, ptr %880, align 1, !tbaa !35
  %881 = add nuw nsw i64 %874, 1
  %882 = getelementptr inbounds nuw i8, ptr %351, i64 %881
  %883 = load i8, ptr %882, align 1, !tbaa !35
  %884 = getelementptr inbounds nuw i8, ptr %346, i64 %881
  %885 = load i8, ptr %884, align 1, !tbaa !35
  %886 = add i8 %885, %883
  %887 = getelementptr inbounds nuw i8, ptr %341, i64 %881
  store i8 %886, ptr %887, align 1, !tbaa !35
  %888 = add nuw nsw i64 %874, 2
  %889 = getelementptr inbounds nuw i8, ptr %351, i64 %888
  %890 = load i8, ptr %889, align 1, !tbaa !35
  %891 = getelementptr inbounds nuw i8, ptr %346, i64 %888
  %892 = load i8, ptr %891, align 1, !tbaa !35
  %893 = add i8 %892, %890
  %894 = getelementptr inbounds nuw i8, ptr %341, i64 %888
  store i8 %893, ptr %894, align 1, !tbaa !35
  %895 = add nuw nsw i64 %874, 3
  %896 = getelementptr inbounds nuw i8, ptr %351, i64 %895
  %897 = load i8, ptr %896, align 1, !tbaa !35
  %898 = getelementptr inbounds nuw i8, ptr %346, i64 %895
  %899 = load i8, ptr %898, align 1, !tbaa !35
  %900 = add i8 %899, %897
  %901 = getelementptr inbounds nuw i8, ptr %341, i64 %895
  store i8 %900, ptr %901, align 1, !tbaa !35
  %902 = add nuw nsw i64 %874, 4
  %903 = icmp eq i64 %902, %122
  br i1 %903, label %792, label %873, !llvm.loop !185

904:                                              ; preds = %871, %904
  %905 = phi i64 [ %932, %904 ], [ %872, %871 ]
  %906 = getelementptr inbounds i8, ptr %351, i64 %905
  %907 = load i8, ptr %906, align 1, !tbaa !35
  %908 = trunc nsw i64 %905 to i32
  %909 = sub i32 %908, %100
  %910 = sext i32 %909 to i64
  %911 = getelementptr inbounds i8, ptr %341, i64 %910
  %912 = load i8, ptr %911, align 1, !tbaa !35
  %913 = zext i8 %912 to i32
  %914 = getelementptr inbounds i8, ptr %346, i64 %905
  %915 = load i8, ptr %914, align 1, !tbaa !35
  %916 = zext i8 %915 to i32
  %917 = getelementptr inbounds i8, ptr %346, i64 %910
  %918 = load i8, ptr %917, align 1, !tbaa !35
  %919 = zext i8 %918 to i32
  %920 = mul nuw nsw i32 %919, 3
  %921 = add nuw nsw i32 %916, %913
  %922 = sub nsw i32 %920, %921
  %923 = tail call i32 @llvm.umin.i32(i32 range(i32 0, 256) %913, i32 range(i32 0, 256) %916)
  %924 = tail call i32 @llvm.umax.i32(i32 range(i32 0, 256) %913, i32 range(i32 0, 256) %916)
  %925 = icmp sgt i32 %924, %922
  %926 = select i1 %925, i32 %919, i32 %923
  %927 = icmp sgt i32 %922, %923
  %928 = select i1 %927, i32 %926, i32 %924
  %929 = trunc nuw i32 %928 to i8
  %930 = add i8 %907, %929
  %931 = getelementptr inbounds i8, ptr %341, i64 %905
  store i8 %930, ptr %931, align 1, !tbaa !35
  %932 = add nsw i64 %905, 1
  %933 = icmp eq i64 %932, %109
  br i1 %933, label %1027, label %904, !llvm.loop !186

934:                                              ; preds = %360
  %935 = tail call ptr @memcpy(ptr noundef nonnull %341, ptr noundef nonnull %351, i64 noundef %105) #16
  br i1 %106, label %936, label %1027

936:                                              ; preds = %934
  br i1 %163, label %937, label %982

937:                                              ; preds = %936
  %938 = add i64 %340, %294
  %939 = icmp ult i64 %938, 32
  %940 = or i1 %939, %164
  br i1 %940, label %982, label %941

941:                                              ; preds = %937
  br i1 %165, label %965, label %942

942:                                              ; preds = %941, %942
  %943 = phi i64 [ %961, %942 ], [ 0, %941 ]
  %944 = add i64 %943, %105
  %945 = getelementptr inbounds i8, ptr %351, i64 %944
  %946 = getelementptr inbounds nuw i8, ptr %945, i64 16
  %947 = load <16 x i8>, ptr %945, align 1, !tbaa !35
  %948 = load <16 x i8>, ptr %946, align 1, !tbaa !35
  %949 = shl i64 %943, 32
  %950 = ashr exact i64 %949, 32
  %951 = getelementptr inbounds i8, ptr %341, i64 %950
  %952 = getelementptr inbounds nuw i8, ptr %951, i64 16
  %953 = load <16 x i8>, ptr %951, align 1, !tbaa !35
  %954 = load <16 x i8>, ptr %952, align 1, !tbaa !35
  %955 = lshr <16 x i8> %953, splat (i8 1)
  %956 = lshr <16 x i8> %954, splat (i8 1)
  %957 = add <16 x i8> %955, %947
  %958 = add <16 x i8> %956, %948
  %959 = getelementptr inbounds i8, ptr %341, i64 %944
  %960 = getelementptr inbounds nuw i8, ptr %959, i64 16
  store <16 x i8> %957, ptr %959, align 1, !tbaa !35
  store <16 x i8> %958, ptr %960, align 1, !tbaa !35
  %961 = add nuw i64 %943, 32
  %962 = icmp eq i64 %961, %167
  br i1 %962, label %963, label %942, !llvm.loop !187

963:                                              ; preds = %942
  br i1 %168, label %1027, label %964

964:                                              ; preds = %963
  br i1 %170, label %982, label %965, !prof !167

965:                                              ; preds = %941, %964
  %966 = phi i64 [ %167, %964 ], [ 0, %941 ]
  br label %967

967:                                              ; preds = %967, %965
  %968 = phi i64 [ %966, %965 ], [ %979, %967 ]
  %969 = add i64 %968, %105
  %970 = getelementptr inbounds i8, ptr %351, i64 %969
  %971 = load <4 x i8>, ptr %970, align 1, !tbaa !35
  %972 = shl i64 %968, 32
  %973 = ashr exact i64 %972, 32
  %974 = getelementptr inbounds i8, ptr %341, i64 %973
  %975 = load <4 x i8>, ptr %974, align 1, !tbaa !35
  %976 = lshr <4 x i8> %975, splat (i8 1)
  %977 = add <4 x i8> %976, %971
  %978 = getelementptr inbounds i8, ptr %341, i64 %969
  store <4 x i8> %977, ptr %978, align 1, !tbaa !35
  %979 = add nuw i64 %968, 4
  %980 = icmp eq i64 %979, %171
  br i1 %980, label %981, label %967, !llvm.loop !188

981:                                              ; preds = %967
  br i1 %173, label %1027, label %982

982:                                              ; preds = %937, %936, %964, %981
  %983 = phi i64 [ %105, %936 ], [ %105, %937 ], [ %169, %964 ], [ %172, %981 ]
  %984 = sub nsw i64 %109, %983
  %985 = and i64 %984, 1
  %986 = icmp eq i64 %985, 0
  br i1 %986, label %999, label %987

987:                                              ; preds = %982
  %988 = getelementptr inbounds i8, ptr %351, i64 %983
  %989 = load i8, ptr %988, align 1, !tbaa !35
  %990 = trunc nsw i64 %983 to i32
  %991 = sub i32 %990, %100
  %992 = sext i32 %991 to i64
  %993 = getelementptr inbounds i8, ptr %341, i64 %992
  %994 = load i8, ptr %993, align 1, !tbaa !35
  %995 = lshr i8 %994, 1
  %996 = add i8 %995, %989
  %997 = getelementptr inbounds i8, ptr %341, i64 %983
  store i8 %996, ptr %997, align 1, !tbaa !35
  %998 = add nsw i64 %983, 1
  br label %999

999:                                              ; preds = %987, %982
  %1000 = phi i64 [ %983, %982 ], [ %998, %987 ]
  %1001 = icmp eq i64 %983, %174
  br i1 %1001, label %1027, label %1002

1002:                                             ; preds = %999, %1002
  %1003 = phi i64 [ %1025, %1002 ], [ %1000, %999 ]
  %1004 = getelementptr inbounds i8, ptr %351, i64 %1003
  %1005 = load i8, ptr %1004, align 1, !tbaa !35
  %1006 = trunc nsw i64 %1003 to i32
  %1007 = sub i32 %1006, %100
  %1008 = sext i32 %1007 to i64
  %1009 = getelementptr inbounds i8, ptr %341, i64 %1008
  %1010 = load i8, ptr %1009, align 1, !tbaa !35
  %1011 = lshr i8 %1010, 1
  %1012 = add i8 %1011, %1005
  %1013 = getelementptr inbounds i8, ptr %341, i64 %1003
  store i8 %1012, ptr %1013, align 1, !tbaa !35
  %1014 = add nsw i64 %1003, 1
  %1015 = getelementptr inbounds i8, ptr %351, i64 %1014
  %1016 = load i8, ptr %1015, align 1, !tbaa !35
  %1017 = trunc nsw i64 %1014 to i32
  %1018 = sub i32 %1017, %100
  %1019 = sext i32 %1018 to i64
  %1020 = getelementptr inbounds i8, ptr %341, i64 %1019
  %1021 = load i8, ptr %1020, align 1, !tbaa !35
  %1022 = lshr i8 %1021, 1
  %1023 = add i8 %1022, %1016
  %1024 = getelementptr inbounds i8, ptr %341, i64 %1014
  store i8 %1023, ptr %1024, align 1, !tbaa !35
  %1025 = add nsw i64 %1003, 2
  %1026 = icmp eq i64 %1025, %109
  br i1 %1026, label %1027, label %1002, !llvm.loop !189

1027:                                             ; preds = %999, %1002, %904, %733, %755, %531, %624, %598, %601, %963, %981, %836, %870, %685, %709, %502, %516, %564, %581, %934, %792, %655, %477, %537, %360, %535
  %1028 = getelementptr inbounds i8, ptr %351, i64 %109
  br i1 %99, label %1029, label %1201

1029:                                             ; preds = %1027
  br i1 %118, label %1030, label %1032

1030:                                             ; preds = %1029
  %1031 = load i8, ptr %120, align 1, !tbaa !35
  br label %1032

1032:                                             ; preds = %1029, %1030
  %1033 = phi i8 [ %1031, %1030 ], [ 1, %1029 ]
  switch i32 %6, label %1038 [
    i32 4, label %1036
    i32 2, label %1034
  ]

1034:                                             ; preds = %1032
  br i1 %113, label %1147, label %1035

1035:                                             ; preds = %1034
  br i1 %270, label %1134, label %1056

1036:                                             ; preds = %1032
  br i1 %113, label %1147, label %1037

1037:                                             ; preds = %1036
  br i1 %275, label %1121, label %1040

1038:                                             ; preds = %1032
  br i1 %113, label %1147, label %1039

1039:                                             ; preds = %1038
  br i1 %280, label %1107, label %1081

1040:                                             ; preds = %1037, %1040
  %1041 = phi ptr [ %1052, %1040 ], [ %350, %1037 ]
  %1042 = phi ptr [ %1045, %1040 ], [ %341, %1037 ]
  %1043 = phi i32 [ %1053, %1040 ], [ 0, %1037 ]
  %1044 = phi i32 [ %1054, %1040 ], [ 0, %1037 ]
  %1045 = getelementptr inbounds nuw i8, ptr %1042, i64 1
  %1046 = load i8, ptr %1042, align 1, !tbaa !35
  %1047 = lshr i8 %1046, 4
  %1048 = mul i8 %1047, %1033
  %1049 = getelementptr inbounds nuw i8, ptr %1041, i64 1
  store i8 %1048, ptr %1041, align 1, !tbaa !35
  %1050 = and i8 %1046, 15
  %1051 = mul i8 %1050, %1033
  %1052 = getelementptr inbounds nuw i8, ptr %1041, i64 2
  store i8 %1051, ptr %1049, align 1, !tbaa !35
  %1053 = add nuw i32 %1043, 2
  %1054 = add i32 %1044, 2
  %1055 = icmp eq i32 %1054, %276
  br i1 %1055, label %1120, label %1040, !llvm.loop !190

1056:                                             ; preds = %1035, %1067
  %1057 = phi i8 [ %1077, %1067 ], [ 0, %1035 ]
  %1058 = phi ptr [ %1076, %1067 ], [ %350, %1035 ]
  %1059 = phi ptr [ %1068, %1067 ], [ %341, %1035 ]
  %1060 = phi i32 [ %1078, %1067 ], [ 0, %1035 ]
  %1061 = phi i32 [ %1079, %1067 ], [ 0, %1035 ]
  %1062 = and i32 %1060, 2
  %1063 = icmp eq i32 %1062, 0
  br i1 %1063, label %1064, label %1067

1064:                                             ; preds = %1056
  %1065 = getelementptr inbounds nuw i8, ptr %1059, i64 1
  %1066 = load i8, ptr %1059, align 1, !tbaa !35
  br label %1067

1067:                                             ; preds = %1064, %1056
  %1068 = phi ptr [ %1065, %1064 ], [ %1059, %1056 ]
  %1069 = phi i8 [ %1066, %1064 ], [ %1057, %1056 ]
  %1070 = lshr i8 %1069, 6
  %1071 = mul i8 %1070, %1033
  %1072 = getelementptr inbounds nuw i8, ptr %1058, i64 1
  store i8 %1071, ptr %1058, align 1, !tbaa !35
  %1073 = lshr i8 %1069, 4
  %1074 = and i8 %1073, 3
  %1075 = mul i8 %1074, %1033
  %1076 = getelementptr inbounds nuw i8, ptr %1058, i64 2
  store i8 %1075, ptr %1072, align 1, !tbaa !35
  %1077 = shl i8 %1069, 4
  %1078 = add nuw i32 %1060, 2
  %1079 = add i32 %1061, 2
  %1080 = icmp eq i32 %1079, %271
  br i1 %1080, label %1133, label %1056, !llvm.loop !191

1081:                                             ; preds = %1039, %1092
  %1082 = phi i8 [ %1102, %1092 ], [ 0, %1039 ]
  %1083 = phi ptr [ %1101, %1092 ], [ %350, %1039 ]
  %1084 = phi ptr [ %1093, %1092 ], [ %341, %1039 ]
  %1085 = phi i32 [ %1103, %1092 ], [ 0, %1039 ]
  %1086 = phi i32 [ %1104, %1092 ], [ 0, %1039 ]
  %1087 = and i32 %1085, 6
  %1088 = icmp eq i32 %1087, 0
  br i1 %1088, label %1089, label %1092

1089:                                             ; preds = %1081
  %1090 = getelementptr inbounds nuw i8, ptr %1084, i64 1
  %1091 = load i8, ptr %1084, align 1, !tbaa !35
  br label %1092

1092:                                             ; preds = %1089, %1081
  %1093 = phi ptr [ %1090, %1089 ], [ %1084, %1081 ]
  %1094 = phi i8 [ %1091, %1089 ], [ %1082, %1081 ]
  %1095 = icmp slt i8 %1094, 0
  %1096 = select i1 %1095, i8 %1033, i8 0
  %1097 = getelementptr inbounds nuw i8, ptr %1083, i64 1
  store i8 %1096, ptr %1083, align 1, !tbaa !35
  %1098 = and i8 %1094, 64
  %1099 = icmp eq i8 %1098, 0
  %1100 = select i1 %1099, i8 0, i8 %1033
  %1101 = getelementptr inbounds nuw i8, ptr %1083, i64 2
  store i8 %1100, ptr %1097, align 1, !tbaa !35
  %1102 = shl i8 %1094, 2
  %1103 = add nuw i32 %1085, 2
  %1104 = add i32 %1086, 2
  %1105 = icmp eq i32 %1104, %281
  br i1 %1105, label %1106, label %1081, !llvm.loop !192

1106:                                             ; preds = %1092
  br i1 %282, label %1147, label %1107

1107:                                             ; preds = %1106, %1039
  %1108 = phi i8 [ 0, %1039 ], [ %1102, %1106 ]
  %1109 = phi ptr [ %350, %1039 ], [ %1101, %1106 ]
  %1110 = phi ptr [ %341, %1039 ], [ %1093, %1106 ]
  %1111 = phi i32 [ 0, %1039 ], [ %1103, %1106 ]
  tail call void @llvm.assume(i1 %283)
  %1112 = and i32 %1111, 7
  %1113 = icmp eq i32 %1112, 0
  br i1 %1113, label %1114, label %1116

1114:                                             ; preds = %1107
  %1115 = load i8, ptr %1110, align 1, !tbaa !35
  br label %1116

1116:                                             ; preds = %1114, %1107
  %1117 = phi i8 [ %1115, %1114 ], [ %1108, %1107 ]
  %1118 = icmp slt i8 %1117, 0
  %1119 = select i1 %1118, i8 %1033, i8 0
  store i8 %1119, ptr %1109, align 1, !tbaa !35
  br label %1147

1120:                                             ; preds = %1040
  br i1 %277, label %1147, label %1121

1121:                                             ; preds = %1120, %1037
  %1122 = phi ptr [ %350, %1037 ], [ %1052, %1120 ]
  %1123 = phi ptr [ %341, %1037 ], [ %1045, %1120 ]
  %1124 = phi i32 [ 0, %1037 ], [ %1053, %1120 ]
  tail call void @llvm.assume(i1 %278)
  %1125 = and i32 %1124, 1
  %1126 = icmp eq i32 %1125, 0
  br i1 %1126, label %1127, label %1131

1127:                                             ; preds = %1121
  %1128 = load i8, ptr %1123, align 1, !tbaa !35
  %1129 = lshr i8 %1128, 4
  %1130 = mul i8 %1129, %1033
  br label %1131

1131:                                             ; preds = %1127, %1121
  %1132 = phi i8 [ %1130, %1127 ], [ 0, %1121 ]
  store i8 %1132, ptr %1122, align 1, !tbaa !35
  br label %1147

1133:                                             ; preds = %1067
  br i1 %272, label %1147, label %1134

1134:                                             ; preds = %1133, %1035
  %1135 = phi i8 [ 0, %1035 ], [ %1077, %1133 ]
  %1136 = phi ptr [ %350, %1035 ], [ %1076, %1133 ]
  %1137 = phi ptr [ %341, %1035 ], [ %1068, %1133 ]
  %1138 = phi i32 [ 0, %1035 ], [ %1078, %1133 ]
  tail call void @llvm.assume(i1 %273)
  %1139 = and i32 %1138, 3
  %1140 = icmp eq i32 %1139, 0
  br i1 %1140, label %1141, label %1143

1141:                                             ; preds = %1134
  %1142 = load i8, ptr %1137, align 1, !tbaa !35
  br label %1143

1143:                                             ; preds = %1141, %1134
  %1144 = phi i8 [ %1142, %1141 ], [ %1135, %1134 ]
  %1145 = lshr i8 %1144, 6
  %1146 = mul i8 %1145, %1033
  store i8 %1146, ptr %1136, align 1, !tbaa !35
  br label %1147

1147:                                             ; preds = %1143, %1133, %1131, %1120, %1116, %1106, %1034, %1036, %1038
  br i1 %111, label %1446, label %1148

1148:                                             ; preds = %1147
  br i1 %112, label %1150, label %1149

1149:                                             ; preds = %1148
  br i1 %115, label %1178, label %1446

1150:                                             ; preds = %1148
  br i1 %115, label %1151, label %1446

1151:                                             ; preds = %1150
  br i1 %285, label %1152, label %1157

1152:                                             ; preds = %1151
  %1153 = getelementptr i8, ptr %350, i64 %287
  %1154 = getelementptr i8, ptr %1153, i64 1
  store i8 -1, ptr %1154, align 1, !tbaa !35
  %1155 = getelementptr inbounds nuw i8, ptr %350, i64 %116
  %1156 = load i8, ptr %1155, align 1, !tbaa !35
  store i8 %1156, ptr %1153, align 1, !tbaa !35
  br label %1157

1157:                                             ; preds = %1152, %1151
  %1158 = phi i64 [ %116, %1151 ], [ %288, %1152 ]
  br i1 %289, label %1446, label %1159

1159:                                             ; preds = %1157, %1159
  %1160 = phi i64 [ %1176, %1159 ], [ %1158, %1157 ]
  %1161 = trunc i64 %1160 to i32
  %1162 = shl i32 %1161, 1
  %1163 = sext i32 %1162 to i64
  %1164 = getelementptr i8, ptr %350, i64 %1163
  %1165 = getelementptr i8, ptr %1164, i64 1
  store i8 -1, ptr %1165, align 1, !tbaa !35
  %1166 = getelementptr inbounds nuw i8, ptr %350, i64 %1160
  %1167 = load i8, ptr %1166, align 1, !tbaa !35
  store i8 %1167, ptr %1164, align 1, !tbaa !35
  %1168 = add nsw i64 %1160, -1
  %1169 = trunc i64 %1168 to i32
  %1170 = shl i32 %1169, 1
  %1171 = sext i32 %1170 to i64
  %1172 = getelementptr i8, ptr %350, i64 %1171
  %1173 = getelementptr i8, ptr %1172, i64 1
  store i8 -1, ptr %1173, align 1, !tbaa !35
  %1174 = getelementptr inbounds nuw i8, ptr %350, i64 %1168
  %1175 = load i8, ptr %1174, align 1, !tbaa !35
  store i8 %1175, ptr %1172, align 1, !tbaa !35
  %1176 = add nsw i64 %1160, -2
  %1177 = icmp eq i64 %1168, 0
  br i1 %1177, label %1446, label %1159, !llvm.loop !193

1178:                                             ; preds = %1149, %1178
  %1179 = phi i64 [ %1199, %1178 ], [ %116, %1149 ]
  %1180 = trunc nuw nsw i64 %1179 to i32
  %1181 = shl i32 %1180, 2
  %1182 = sext i32 %1181 to i64
  %1183 = getelementptr i8, ptr %350, i64 %1182
  %1184 = getelementptr i8, ptr %1183, i64 3
  store i8 -1, ptr %1184, align 1, !tbaa !35
  %1185 = mul i32 %1180, 3
  %1186 = add i32 %1185, 2
  %1187 = sext i32 %1186 to i64
  %1188 = getelementptr inbounds i8, ptr %350, i64 %1187
  %1189 = load i8, ptr %1188, align 1, !tbaa !35
  %1190 = getelementptr i8, ptr %1183, i64 2
  store i8 %1189, ptr %1190, align 1, !tbaa !35
  %1191 = add i32 %1185, 1
  %1192 = sext i32 %1191 to i64
  %1193 = getelementptr inbounds i8, ptr %350, i64 %1192
  %1194 = load i8, ptr %1193, align 1, !tbaa !35
  %1195 = getelementptr i8, ptr %1183, i64 1
  store i8 %1194, ptr %1195, align 1, !tbaa !35
  %1196 = sext i32 %1185 to i64
  %1197 = getelementptr inbounds i8, ptr %350, i64 %1196
  %1198 = load i8, ptr %1197, align 1, !tbaa !35
  store i8 %1198, ptr %1183, align 1, !tbaa !35
  %1199 = add nsw i64 %1179, -1
  %1200 = icmp eq i64 %1179, 0
  br i1 %1200, label %1446, label %1178, !llvm.loop !194

1201:                                             ; preds = %1027
  br i1 %110, label %1202, label %1305

1202:                                             ; preds = %1201
  br i1 %111, label %1203, label %1205

1203:                                             ; preds = %1202
  %1204 = tail call ptr @memcpy(ptr noundef %350, ptr noundef nonnull %341, i64 noundef %117) #16
  br label %1446

1205:                                             ; preds = %1202
  br i1 %112, label %1207, label %1206

1206:                                             ; preds = %1205
  br i1 %115, label %1282, label %1446

1207:                                             ; preds = %1205
  br i1 %115, label %1208, label %1446

1208:                                             ; preds = %1207
  br i1 %260, label %1247, label %1209

1209:                                             ; preds = %1208
  %1210 = getelementptr i8, ptr %347, i64 %127
  %1211 = getelementptr i8, ptr %1210, i64 1
  %1212 = getelementptr i8, ptr %1211, i64 %337
  %1213 = getelementptr i8, ptr %1212, i64 %264
  %1214 = icmp ugt ptr %1213, %1212
  %1215 = getelementptr i8, ptr %347, i64 %127
  %1216 = getelementptr i8, ptr %1215, i64 %337
  %1217 = getelementptr i8, ptr %1216, i64 %265
  %1218 = icmp ugt ptr %1217, %1216
  %1219 = or i1 %263, %1214
  %1220 = or i1 %1219, %1218
  br i1 %1220, label %1247, label %1221

1221:                                             ; preds = %1209
  %1222 = getelementptr i8, ptr %131, i64 %340
  %1223 = getelementptr i8, ptr %347, i64 %136
  %1224 = getelementptr i8, ptr %1223, i64 %334
  %1225 = getelementptr i8, ptr %347, i64 %134
  %1226 = getelementptr i8, ptr %1225, i64 2
  %1227 = getelementptr i8, ptr %1226, i64 %334
  %1228 = icmp ult ptr %341, %1227
  %1229 = icmp ult ptr %1224, %1222
  %1230 = and i1 %1228, %1229
  br i1 %1230, label %1247, label %1231

1231:                                             ; preds = %1221, %1231
  %1232 = phi i64 [ %1244, %1231 ], [ 0, %1221 ]
  %1233 = sub i64 %116, %1232
  %1234 = trunc i64 %1232 to i32
  %1235 = sub i32 %114, %1234
  %1236 = shl i32 %1235, 1
  %1237 = sext i32 %1236 to i64
  %1238 = getelementptr i8, ptr %350, i64 %1237
  %1239 = getelementptr inbounds nuw i8, ptr %341, i64 %1233
  %1240 = getelementptr inbounds i8, ptr %1239, i64 -7
  %1241 = load <8 x i8>, ptr %1240, align 1, !tbaa !35, !alias.scope !195, !noalias !198
  %1242 = getelementptr i8, ptr %1238, i64 -14
  %1243 = shufflevector <8 x i8> %1241, <8 x i8> splat (i8 -1), <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %1243, ptr %1242, align 1, !tbaa !35, !alias.scope !198
  %1244 = add nuw i64 %1232, 8
  %1245 = icmp eq i64 %1244, %266
  br i1 %1245, label %1246, label %1231, !llvm.loop !200

1246:                                             ; preds = %1231
  br i1 %268, label %1446, label %1247

1247:                                             ; preds = %1221, %1209, %1208, %1246
  %1248 = phi i64 [ %116, %1221 ], [ %116, %1209 ], [ %116, %1208 ], [ %267, %1246 ]
  %1249 = and i64 %1248, 1
  %1250 = icmp eq i64 %1249, 0
  br i1 %1250, label %1251, label %1260

1251:                                             ; preds = %1247
  %1252 = trunc i64 %1248 to i32
  %1253 = shl i32 %1252, 1
  %1254 = sext i32 %1253 to i64
  %1255 = getelementptr i8, ptr %350, i64 %1254
  %1256 = getelementptr i8, ptr %1255, i64 1
  store i8 -1, ptr %1256, align 1, !tbaa !35
  %1257 = getelementptr inbounds nuw i8, ptr %341, i64 %1248
  %1258 = load i8, ptr %1257, align 1, !tbaa !35
  store i8 %1258, ptr %1255, align 1, !tbaa !35
  %1259 = add nsw i64 %1248, -1
  br label %1260

1260:                                             ; preds = %1251, %1247
  %1261 = phi i64 [ %1248, %1247 ], [ %1259, %1251 ]
  %1262 = icmp eq i64 %1248, 0
  br i1 %1262, label %1446, label %1263

1263:                                             ; preds = %1260, %1263
  %1264 = phi i64 [ %1280, %1263 ], [ %1261, %1260 ]
  %1265 = trunc i64 %1264 to i32
  %1266 = shl i32 %1265, 1
  %1267 = sext i32 %1266 to i64
  %1268 = getelementptr i8, ptr %350, i64 %1267
  %1269 = getelementptr i8, ptr %1268, i64 1
  store i8 -1, ptr %1269, align 1, !tbaa !35
  %1270 = getelementptr inbounds nuw i8, ptr %341, i64 %1264
  %1271 = load i8, ptr %1270, align 1, !tbaa !35
  store i8 %1271, ptr %1268, align 1, !tbaa !35
  %1272 = add nsw i64 %1264, -1
  %1273 = trunc i64 %1272 to i32
  %1274 = shl i32 %1273, 1
  %1275 = sext i32 %1274 to i64
  %1276 = getelementptr i8, ptr %350, i64 %1275
  %1277 = getelementptr i8, ptr %1276, i64 1
  store i8 -1, ptr %1277, align 1, !tbaa !35
  %1278 = getelementptr inbounds nuw i8, ptr %341, i64 %1272
  %1279 = load i8, ptr %1278, align 1, !tbaa !35
  store i8 %1279, ptr %1276, align 1, !tbaa !35
  %1280 = add nsw i64 %1264, -2
  %1281 = icmp eq i64 %1272, 0
  br i1 %1281, label %1446, label %1263, !llvm.loop !201

1282:                                             ; preds = %1206, %1282
  %1283 = phi i64 [ %1303, %1282 ], [ %116, %1206 ]
  %1284 = trunc nuw nsw i64 %1283 to i32
  %1285 = shl i32 %1284, 2
  %1286 = sext i32 %1285 to i64
  %1287 = getelementptr i8, ptr %350, i64 %1286
  %1288 = getelementptr i8, ptr %1287, i64 3
  store i8 -1, ptr %1288, align 1, !tbaa !35
  %1289 = mul i32 %1284, 3
  %1290 = add i32 %1289, 2
  %1291 = sext i32 %1290 to i64
  %1292 = getelementptr inbounds i8, ptr %341, i64 %1291
  %1293 = load i8, ptr %1292, align 1, !tbaa !35
  %1294 = getelementptr i8, ptr %1287, i64 2
  store i8 %1293, ptr %1294, align 1, !tbaa !35
  %1295 = add i32 %1289, 1
  %1296 = sext i32 %1295 to i64
  %1297 = getelementptr inbounds i8, ptr %341, i64 %1296
  %1298 = load i8, ptr %1297, align 1, !tbaa !35
  %1299 = getelementptr i8, ptr %1287, i64 1
  store i8 %1298, ptr %1299, align 1, !tbaa !35
  %1300 = sext i32 %1289 to i64
  %1301 = getelementptr inbounds i8, ptr %341, i64 %1300
  %1302 = load i8, ptr %1301, align 1, !tbaa !35
  store i8 %1302, ptr %1287, align 1, !tbaa !35
  %1303 = add nsw i64 %1283, -1
  %1304 = icmp eq i64 %1283, 0
  br i1 %1304, label %1446, label %1282, !llvm.loop !194

1305:                                             ; preds = %1201
  br i1 %10, label %1306, label %1446

1306:                                             ; preds = %1305
  br i1 %111, label %1307, label %1351

1307:                                             ; preds = %1306
  br i1 %113, label %1446, label %1308

1308:                                             ; preds = %1307
  br i1 %256, label %1416, label %1309

1309:                                             ; preds = %1308, %1309
  %1310 = phi ptr [ %1347, %1309 ], [ %350, %1308 ]
  %1311 = phi ptr [ %1348, %1309 ], [ %341, %1308 ]
  %1312 = phi i32 [ %1349, %1309 ], [ 0, %1308 ]
  %1313 = load i8, ptr %1311, align 1, !tbaa !35
  %1314 = zext i8 %1313 to i16
  %1315 = shl nuw i16 %1314, 8
  %1316 = getelementptr inbounds nuw i8, ptr %1311, i64 1
  %1317 = load i8, ptr %1316, align 1, !tbaa !35
  %1318 = zext i8 %1317 to i16
  %1319 = or disjoint i16 %1315, %1318
  store i16 %1319, ptr %1310, align 2, !tbaa !39
  %1320 = getelementptr inbounds nuw i8, ptr %1310, i64 2
  %1321 = getelementptr inbounds nuw i8, ptr %1311, i64 2
  %1322 = load i8, ptr %1321, align 1, !tbaa !35
  %1323 = zext i8 %1322 to i16
  %1324 = shl nuw i16 %1323, 8
  %1325 = getelementptr inbounds nuw i8, ptr %1311, i64 3
  %1326 = load i8, ptr %1325, align 1, !tbaa !35
  %1327 = zext i8 %1326 to i16
  %1328 = or disjoint i16 %1324, %1327
  store i16 %1328, ptr %1320, align 2, !tbaa !39
  %1329 = getelementptr inbounds nuw i8, ptr %1310, i64 4
  %1330 = getelementptr inbounds nuw i8, ptr %1311, i64 4
  %1331 = load i8, ptr %1330, align 1, !tbaa !35
  %1332 = zext i8 %1331 to i16
  %1333 = shl nuw i16 %1332, 8
  %1334 = getelementptr inbounds nuw i8, ptr %1311, i64 5
  %1335 = load i8, ptr %1334, align 1, !tbaa !35
  %1336 = zext i8 %1335 to i16
  %1337 = or disjoint i16 %1333, %1336
  store i16 %1337, ptr %1329, align 2, !tbaa !39
  %1338 = getelementptr inbounds nuw i8, ptr %1310, i64 6
  %1339 = getelementptr inbounds nuw i8, ptr %1311, i64 6
  %1340 = load i8, ptr %1339, align 1, !tbaa !35
  %1341 = zext i8 %1340 to i16
  %1342 = shl nuw i16 %1341, 8
  %1343 = getelementptr inbounds nuw i8, ptr %1311, i64 7
  %1344 = load i8, ptr %1343, align 1, !tbaa !35
  %1345 = zext i8 %1344 to i16
  %1346 = or disjoint i16 %1342, %1345
  store i16 %1346, ptr %1338, align 2, !tbaa !39
  %1347 = getelementptr inbounds nuw i8, ptr %1310, i64 8
  %1348 = getelementptr inbounds nuw i8, ptr %1311, i64 8
  %1349 = add i32 %1312, 4
  %1350 = icmp eq i32 %1349, %257
  br i1 %1350, label %1415, label %1309, !llvm.loop !202

1351:                                             ; preds = %1306
  br i1 %112, label %1353, label %1352

1352:                                             ; preds = %1351
  br i1 %54, label %1446, label %1381

1353:                                             ; preds = %1351
  br i1 %54, label %1446, label %1354

1354:                                             ; preds = %1353
  br i1 %251, label %1435, label %1355

1355:                                             ; preds = %1354, %1355
  %1356 = phi ptr [ %1377, %1355 ], [ %350, %1354 ]
  %1357 = phi ptr [ %1378, %1355 ], [ %341, %1354 ]
  %1358 = phi i32 [ %1379, %1355 ], [ 0, %1354 ]
  %1359 = load i8, ptr %1357, align 1, !tbaa !35
  %1360 = zext i8 %1359 to i16
  %1361 = shl nuw i16 %1360, 8
  %1362 = getelementptr inbounds nuw i8, ptr %1357, i64 1
  %1363 = load i8, ptr %1362, align 1, !tbaa !35
  %1364 = zext i8 %1363 to i16
  %1365 = or disjoint i16 %1361, %1364
  store i16 %1365, ptr %1356, align 2, !tbaa !39
  %1366 = getelementptr inbounds nuw i8, ptr %1356, i64 2
  store i16 -1, ptr %1366, align 2, !tbaa !39
  %1367 = getelementptr inbounds nuw i8, ptr %1356, i64 4
  %1368 = getelementptr inbounds nuw i8, ptr %1357, i64 2
  %1369 = load i8, ptr %1368, align 1, !tbaa !35
  %1370 = zext i8 %1369 to i16
  %1371 = shl nuw i16 %1370, 8
  %1372 = getelementptr inbounds nuw i8, ptr %1357, i64 3
  %1373 = load i8, ptr %1372, align 1, !tbaa !35
  %1374 = zext i8 %1373 to i16
  %1375 = or disjoint i16 %1371, %1374
  store i16 %1375, ptr %1367, align 2, !tbaa !39
  %1376 = getelementptr inbounds nuw i8, ptr %1356, i64 6
  store i16 -1, ptr %1376, align 2, !tbaa !39
  %1377 = getelementptr inbounds nuw i8, ptr %1356, i64 8
  %1378 = getelementptr inbounds nuw i8, ptr %1357, i64 4
  %1379 = add i32 %1358, 2
  %1380 = icmp eq i32 %1379, %252
  br i1 %1380, label %1434, label %1355, !llvm.loop !203

1381:                                             ; preds = %1352, %1381
  %1382 = phi ptr [ %1412, %1381 ], [ %350, %1352 ]
  %1383 = phi i32 [ %1411, %1381 ], [ 0, %1352 ]
  %1384 = phi ptr [ %1413, %1381 ], [ %341, %1352 ]
  %1385 = load i8, ptr %1384, align 1, !tbaa !35
  %1386 = zext i8 %1385 to i16
  %1387 = shl nuw i16 %1386, 8
  %1388 = getelementptr inbounds nuw i8, ptr %1384, i64 1
  %1389 = load i8, ptr %1388, align 1, !tbaa !35
  %1390 = zext i8 %1389 to i16
  %1391 = or disjoint i16 %1387, %1390
  store i16 %1391, ptr %1382, align 2, !tbaa !39
  %1392 = getelementptr inbounds nuw i8, ptr %1384, i64 2
  %1393 = load i8, ptr %1392, align 1, !tbaa !35
  %1394 = zext i8 %1393 to i16
  %1395 = shl nuw i16 %1394, 8
  %1396 = getelementptr inbounds nuw i8, ptr %1384, i64 3
  %1397 = load i8, ptr %1396, align 1, !tbaa !35
  %1398 = zext i8 %1397 to i16
  %1399 = or disjoint i16 %1395, %1398
  %1400 = getelementptr inbounds nuw i8, ptr %1382, i64 2
  store i16 %1399, ptr %1400, align 2, !tbaa !39
  %1401 = getelementptr inbounds nuw i8, ptr %1384, i64 4
  %1402 = load i8, ptr %1401, align 1, !tbaa !35
  %1403 = zext i8 %1402 to i16
  %1404 = shl nuw i16 %1403, 8
  %1405 = getelementptr inbounds nuw i8, ptr %1384, i64 5
  %1406 = load i8, ptr %1405, align 1, !tbaa !35
  %1407 = zext i8 %1406 to i16
  %1408 = or disjoint i16 %1404, %1407
  %1409 = getelementptr inbounds nuw i8, ptr %1382, i64 4
  store i16 %1408, ptr %1409, align 2, !tbaa !39
  %1410 = getelementptr inbounds nuw i8, ptr %1382, i64 6
  store i16 -1, ptr %1410, align 2, !tbaa !39
  %1411 = add nuw i32 %1383, 1
  %1412 = getelementptr inbounds nuw i8, ptr %1382, i64 8
  %1413 = getelementptr inbounds nuw i8, ptr %1384, i64 6
  %1414 = icmp eq i32 %1411, %4
  br i1 %1414, label %1446, label %1381, !llvm.loop !204

1415:                                             ; preds = %1309
  br i1 %258, label %1446, label %1416

1416:                                             ; preds = %1415, %1308
  %1417 = phi ptr [ %350, %1308 ], [ %1347, %1415 ]
  %1418 = phi ptr [ %341, %1308 ], [ %1348, %1415 ]
  tail call void @llvm.assume(i1 %259)
  br label %1419

1419:                                             ; preds = %1419, %1416
  %1420 = phi ptr [ %1430, %1419 ], [ %1417, %1416 ]
  %1421 = phi ptr [ %1431, %1419 ], [ %1418, %1416 ]
  %1422 = phi i32 [ %1432, %1419 ], [ 0, %1416 ]
  %1423 = load i8, ptr %1421, align 1, !tbaa !35
  %1424 = zext i8 %1423 to i16
  %1425 = shl nuw i16 %1424, 8
  %1426 = getelementptr inbounds nuw i8, ptr %1421, i64 1
  %1427 = load i8, ptr %1426, align 1, !tbaa !35
  %1428 = zext i8 %1427 to i16
  %1429 = or disjoint i16 %1425, %1428
  store i16 %1429, ptr %1420, align 2, !tbaa !39
  %1430 = getelementptr inbounds nuw i8, ptr %1420, i64 2
  %1431 = getelementptr inbounds nuw i8, ptr %1421, i64 2
  %1432 = add i32 %1422, 1
  %1433 = icmp eq i32 %1432, %255
  br i1 %1433, label %1446, label %1419, !llvm.loop !205

1434:                                             ; preds = %1355
  br i1 %253, label %1446, label %1435

1435:                                             ; preds = %1434, %1354
  %1436 = phi ptr [ %350, %1354 ], [ %1377, %1434 ]
  %1437 = phi ptr [ %341, %1354 ], [ %1378, %1434 ]
  tail call void @llvm.assume(i1 %254)
  %1438 = load i8, ptr %1437, align 1, !tbaa !35
  %1439 = zext i8 %1438 to i16
  %1440 = shl nuw i16 %1439, 8
  %1441 = getelementptr inbounds nuw i8, ptr %1437, i64 1
  %1442 = load i8, ptr %1441, align 1, !tbaa !35
  %1443 = zext i8 %1442 to i16
  %1444 = or disjoint i16 %1440, %1443
  store i16 %1444, ptr %1436, align 2, !tbaa !39
  %1445 = getelementptr inbounds nuw i8, ptr %1436, i64 2
  store i16 -1, ptr %1445, align 2, !tbaa !39
  br label %1446

1446:                                             ; preds = %1381, %1435, %1434, %1415, %1419, %1282, %1260, %1263, %1178, %1157, %1159, %1246, %1352, %1353, %1307, %1147, %1305, %1203, %1149, %1150, %1206, %1207
  %1447 = add nuw nsw i64 %291, 1
  %1448 = icmp eq i64 %1447, %121
  br i1 %1448, label %1449, label %290, !llvm.loop !206

1449:                                             ; preds = %290, %1446, %95, %87, %70, %76, %58, %46, %55, %64, %44, %83, %79
  %1450 = phi i32 [ 0, %79 ], [ 0, %70 ], [ 0, %58 ], [ 0, %83 ], [ 1, %95 ], [ 0, %44 ], [ 0, %76 ], [ 0, %87 ], [ 0, %64 ], [ 0, %55 ], [ 0, %46 ], [ 0, %290 ], [ 1, %1446 ]
  ret i32 %1450
}

; Function Attrs: nounwind
define internal fastcc range(i32 0, 2) i32 @stbi__gif_header(ptr noundef nonnull %0, ptr noundef nonnull captures(none) %1, ptr noundef nonnull writeonly captures(none) %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #0 {
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %6 = load ptr, ptr %5, align 8, !tbaa !16
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %8 = load ptr, ptr %7, align 8, !tbaa !18
  %9 = icmp ult ptr %6, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %4
  %11 = getelementptr inbounds nuw i8, ptr %6, i64 1
  store ptr %11, ptr %5, align 8, !tbaa !16
  %12 = load i8, ptr %6, align 1, !tbaa !35
  br label %47

13:                                               ; preds = %4
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %15 = load i32, ptr %14, align 8, !tbaa !13
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %421, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %19 = load ptr, ptr %18, align 8, !tbaa !8
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %21 = load ptr, ptr %20, align 8, !tbaa !33
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %24 = load i32, ptr %23, align 4, !tbaa !34
  %25 = tail call i32 %19(ptr noundef %21, ptr noundef nonnull %22, i32 noundef %24) #16
  %26 = load ptr, ptr %5, align 8, !tbaa !16
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %28 = load ptr, ptr %27, align 8, !tbaa !15
  %29 = ptrtoint ptr %26 to i64
  %30 = ptrtoint ptr %28 to i64
  %31 = sub i64 %29, %30
  %32 = trunc i64 %31 to i32
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %34 = load i32, ptr %33, align 8, !tbaa !14
  %35 = add i32 %34, %32
  store i32 %35, ptr %33, align 8, !tbaa !14
  %36 = icmp eq i32 %25, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %17
  store i32 0, ptr %14, align 8, !tbaa !13
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %22, align 8, !tbaa !35
  br label %43

39:                                               ; preds = %17
  %40 = sext i32 %25 to i64
  %41 = getelementptr inbounds i8, ptr %22, i64 %40
  %42 = load i8, ptr %22, align 1, !tbaa !35
  br label %43

43:                                               ; preds = %39, %37
  %44 = phi i8 [ 0, %37 ], [ %42, %39 ]
  %45 = phi ptr [ %38, %37 ], [ %41, %39 ]
  store ptr %45, ptr %7, align 8, !tbaa !18
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 57
  store ptr %46, ptr %5, align 8, !tbaa !16
  br label %47

47:                                               ; preds = %10, %43
  %48 = phi ptr [ %8, %10 ], [ %45, %43 ]
  %49 = phi ptr [ %11, %10 ], [ %46, %43 ]
  %50 = phi i8 [ %12, %10 ], [ %44, %43 ]
  %51 = icmp eq i8 %50, 71
  br i1 %51, label %52, label %421

52:                                               ; preds = %47
  %53 = icmp ult ptr %49, %48
  br i1 %53, label %54, label %57

54:                                               ; preds = %52
  %55 = getelementptr inbounds nuw i8, ptr %49, i64 1
  store ptr %55, ptr %5, align 8, !tbaa !16
  %56 = load i8, ptr %49, align 1, !tbaa !35
  br label %91

57:                                               ; preds = %52
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %59 = load i32, ptr %58, align 8, !tbaa !13
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %421, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %63 = load ptr, ptr %62, align 8, !tbaa !8
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %65 = load ptr, ptr %64, align 8, !tbaa !33
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %68 = load i32, ptr %67, align 4, !tbaa !34
  %69 = tail call i32 %63(ptr noundef %65, ptr noundef nonnull %66, i32 noundef %68) #16
  %70 = load ptr, ptr %5, align 8, !tbaa !16
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %72 = load ptr, ptr %71, align 8, !tbaa !15
  %73 = ptrtoint ptr %70 to i64
  %74 = ptrtoint ptr %72 to i64
  %75 = sub i64 %73, %74
  %76 = trunc i64 %75 to i32
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %78 = load i32, ptr %77, align 8, !tbaa !14
  %79 = add i32 %78, %76
  store i32 %79, ptr %77, align 8, !tbaa !14
  %80 = icmp eq i32 %69, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %61
  store i32 0, ptr %58, align 8, !tbaa !13
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %66, align 8, !tbaa !35
  br label %87

83:                                               ; preds = %61
  %84 = sext i32 %69 to i64
  %85 = getelementptr inbounds i8, ptr %66, i64 %84
  %86 = load i8, ptr %66, align 1, !tbaa !35
  br label %87

87:                                               ; preds = %83, %81
  %88 = phi i8 [ 0, %81 ], [ %86, %83 ]
  %89 = phi ptr [ %82, %81 ], [ %85, %83 ]
  store ptr %89, ptr %7, align 8, !tbaa !18
  %90 = getelementptr inbounds nuw i8, ptr %0, i64 57
  store ptr %90, ptr %5, align 8, !tbaa !16
  br label %91

91:                                               ; preds = %54, %87
  %92 = phi ptr [ %48, %54 ], [ %89, %87 ]
  %93 = phi ptr [ %55, %54 ], [ %90, %87 ]
  %94 = phi i8 [ %56, %54 ], [ %88, %87 ]
  %95 = icmp eq i8 %94, 73
  br i1 %95, label %96, label %421

96:                                               ; preds = %91
  %97 = icmp ult ptr %93, %92
  br i1 %97, label %98, label %101

98:                                               ; preds = %96
  %99 = getelementptr inbounds nuw i8, ptr %93, i64 1
  store ptr %99, ptr %5, align 8, !tbaa !16
  %100 = load i8, ptr %93, align 1, !tbaa !35
  br label %135

101:                                              ; preds = %96
  %102 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %103 = load i32, ptr %102, align 8, !tbaa !13
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %421, label %105

105:                                              ; preds = %101
  %106 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %107 = load ptr, ptr %106, align 8, !tbaa !8
  %108 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %109 = load ptr, ptr %108, align 8, !tbaa !33
  %110 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %111 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %112 = load i32, ptr %111, align 4, !tbaa !34
  %113 = tail call i32 %107(ptr noundef %109, ptr noundef nonnull %110, i32 noundef %112) #16
  %114 = load ptr, ptr %5, align 8, !tbaa !16
  %115 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %116 = load ptr, ptr %115, align 8, !tbaa !15
  %117 = ptrtoint ptr %114 to i64
  %118 = ptrtoint ptr %116 to i64
  %119 = sub i64 %117, %118
  %120 = trunc i64 %119 to i32
  %121 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %122 = load i32, ptr %121, align 8, !tbaa !14
  %123 = add i32 %122, %120
  store i32 %123, ptr %121, align 8, !tbaa !14
  %124 = icmp eq i32 %113, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %105
  store i32 0, ptr %102, align 8, !tbaa !13
  %126 = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %110, align 8, !tbaa !35
  br label %131

127:                                              ; preds = %105
  %128 = sext i32 %113 to i64
  %129 = getelementptr inbounds i8, ptr %110, i64 %128
  %130 = load i8, ptr %110, align 1, !tbaa !35
  br label %131

131:                                              ; preds = %127, %125
  %132 = phi i8 [ 0, %125 ], [ %130, %127 ]
  %133 = phi ptr [ %126, %125 ], [ %129, %127 ]
  store ptr %133, ptr %7, align 8, !tbaa !18
  %134 = getelementptr inbounds nuw i8, ptr %0, i64 57
  store ptr %134, ptr %5, align 8, !tbaa !16
  br label %135

135:                                              ; preds = %98, %131
  %136 = phi ptr [ %92, %98 ], [ %133, %131 ]
  %137 = phi ptr [ %99, %98 ], [ %134, %131 ]
  %138 = phi i8 [ %100, %98 ], [ %132, %131 ]
  %139 = icmp eq i8 %138, 70
  br i1 %139, label %140, label %421

140:                                              ; preds = %135
  %141 = icmp ult ptr %137, %136
  br i1 %141, label %142, label %145

142:                                              ; preds = %140
  %143 = getelementptr inbounds nuw i8, ptr %137, i64 1
  store ptr %143, ptr %5, align 8, !tbaa !16
  %144 = load i8, ptr %137, align 1, !tbaa !35
  br label %179

145:                                              ; preds = %140
  %146 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %147 = load i32, ptr %146, align 8, !tbaa !13
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %421, label %149

149:                                              ; preds = %145
  %150 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %151 = load ptr, ptr %150, align 8, !tbaa !8
  %152 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %153 = load ptr, ptr %152, align 8, !tbaa !33
  %154 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %155 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %156 = load i32, ptr %155, align 4, !tbaa !34
  %157 = tail call i32 %151(ptr noundef %153, ptr noundef nonnull %154, i32 noundef %156) #16
  %158 = load ptr, ptr %5, align 8, !tbaa !16
  %159 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %160 = load ptr, ptr %159, align 8, !tbaa !15
  %161 = ptrtoint ptr %158 to i64
  %162 = ptrtoint ptr %160 to i64
  %163 = sub i64 %161, %162
  %164 = trunc i64 %163 to i32
  %165 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %166 = load i32, ptr %165, align 8, !tbaa !14
  %167 = add i32 %166, %164
  store i32 %167, ptr %165, align 8, !tbaa !14
  %168 = icmp eq i32 %157, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %149
  store i32 0, ptr %146, align 8, !tbaa !13
  %170 = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %154, align 8, !tbaa !35
  br label %175

171:                                              ; preds = %149
  %172 = sext i32 %157 to i64
  %173 = getelementptr inbounds i8, ptr %154, i64 %172
  %174 = load i8, ptr %154, align 1, !tbaa !35
  br label %175

175:                                              ; preds = %171, %169
  %176 = phi i8 [ 0, %169 ], [ %174, %171 ]
  %177 = phi ptr [ %170, %169 ], [ %173, %171 ]
  store ptr %177, ptr %7, align 8, !tbaa !18
  %178 = getelementptr inbounds nuw i8, ptr %0, i64 57
  store ptr %178, ptr %5, align 8, !tbaa !16
  br label %179

179:                                              ; preds = %142, %175
  %180 = phi ptr [ %136, %142 ], [ %177, %175 ]
  %181 = phi ptr [ %143, %142 ], [ %178, %175 ]
  %182 = phi i8 [ %144, %142 ], [ %176, %175 ]
  %183 = icmp eq i8 %182, 56
  br i1 %183, label %184, label %421

184:                                              ; preds = %179
  %185 = icmp ult ptr %181, %180
  br i1 %185, label %186, label %189

186:                                              ; preds = %184
  %187 = getelementptr inbounds nuw i8, ptr %181, i64 1
  store ptr %187, ptr %5, align 8, !tbaa !16
  %188 = load i8, ptr %181, align 1, !tbaa !35
  br label %223

189:                                              ; preds = %184
  %190 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %191 = load i32, ptr %190, align 8, !tbaa !13
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %421, label %193

193:                                              ; preds = %189
  %194 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %195 = load ptr, ptr %194, align 8, !tbaa !8
  %196 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %197 = load ptr, ptr %196, align 8, !tbaa !33
  %198 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %199 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %200 = load i32, ptr %199, align 4, !tbaa !34
  %201 = tail call i32 %195(ptr noundef %197, ptr noundef nonnull %198, i32 noundef %200) #16
  %202 = load ptr, ptr %5, align 8, !tbaa !16
  %203 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %204 = load ptr, ptr %203, align 8, !tbaa !15
  %205 = ptrtoint ptr %202 to i64
  %206 = ptrtoint ptr %204 to i64
  %207 = sub i64 %205, %206
  %208 = trunc i64 %207 to i32
  %209 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %210 = load i32, ptr %209, align 8, !tbaa !14
  %211 = add i32 %210, %208
  store i32 %211, ptr %209, align 8, !tbaa !14
  %212 = icmp eq i32 %201, 0
  br i1 %212, label %213, label %215

213:                                              ; preds = %193
  store i32 0, ptr %190, align 8, !tbaa !13
  %214 = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %198, align 8, !tbaa !35
  br label %219

215:                                              ; preds = %193
  %216 = sext i32 %201 to i64
  %217 = getelementptr inbounds i8, ptr %198, i64 %216
  %218 = load i8, ptr %198, align 1, !tbaa !35
  br label %219

219:                                              ; preds = %215, %213
  %220 = phi i8 [ 0, %213 ], [ %218, %215 ]
  %221 = phi ptr [ %214, %213 ], [ %217, %215 ]
  store ptr %221, ptr %7, align 8, !tbaa !18
  %222 = getelementptr inbounds nuw i8, ptr %0, i64 57
  store ptr %222, ptr %5, align 8, !tbaa !16
  br label %223

223:                                              ; preds = %186, %219
  %224 = phi ptr [ %180, %186 ], [ %221, %219 ]
  %225 = phi ptr [ %187, %186 ], [ %222, %219 ]
  %226 = phi i8 [ %188, %186 ], [ %220, %219 ]
  switch i8 %226, label %421 [
    i8 57, label %227
    i8 55, label %227
  ]

227:                                              ; preds = %223, %223
  %228 = icmp ult ptr %225, %224
  br i1 %228, label %229, label %232

229:                                              ; preds = %227
  %230 = getelementptr inbounds nuw i8, ptr %225, i64 1
  store ptr %230, ptr %5, align 8, !tbaa !16
  %231 = load i8, ptr %225, align 1, !tbaa !35
  br label %266

232:                                              ; preds = %227
  %233 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %234 = load i32, ptr %233, align 8, !tbaa !13
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %421, label %236

236:                                              ; preds = %232
  %237 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %238 = load ptr, ptr %237, align 8, !tbaa !8
  %239 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %240 = load ptr, ptr %239, align 8, !tbaa !33
  %241 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %242 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %243 = load i32, ptr %242, align 4, !tbaa !34
  %244 = tail call i32 %238(ptr noundef %240, ptr noundef nonnull %241, i32 noundef %243) #16
  %245 = load ptr, ptr %5, align 8, !tbaa !16
  %246 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %247 = load ptr, ptr %246, align 8, !tbaa !15
  %248 = ptrtoint ptr %245 to i64
  %249 = ptrtoint ptr %247 to i64
  %250 = sub i64 %248, %249
  %251 = trunc i64 %250 to i32
  %252 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %253 = load i32, ptr %252, align 8, !tbaa !14
  %254 = add i32 %253, %251
  store i32 %254, ptr %252, align 8, !tbaa !14
  %255 = icmp eq i32 %244, 0
  br i1 %255, label %256, label %258

256:                                              ; preds = %236
  store i32 0, ptr %233, align 8, !tbaa !13
  %257 = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %241, align 8, !tbaa !35
  br label %262

258:                                              ; preds = %236
  %259 = sext i32 %244 to i64
  %260 = getelementptr inbounds i8, ptr %241, i64 %259
  %261 = load i8, ptr %241, align 1, !tbaa !35
  br label %262

262:                                              ; preds = %258, %256
  %263 = phi i8 [ 0, %256 ], [ %261, %258 ]
  %264 = phi ptr [ %257, %256 ], [ %260, %258 ]
  store ptr %264, ptr %7, align 8, !tbaa !18
  %265 = getelementptr inbounds nuw i8, ptr %0, i64 57
  store ptr %265, ptr %5, align 8, !tbaa !16
  br label %266

266:                                              ; preds = %229, %262
  %267 = phi i8 [ %231, %229 ], [ %263, %262 ]
  %268 = icmp eq i8 %267, 97
  br i1 %268, label %269, label %421

269:                                              ; preds = %266
  %270 = tail call fastcc i32 @stbi__get16le(ptr noundef %0) #17
  store i32 %270, ptr %1, align 8, !tbaa !28
  %271 = tail call fastcc i32 @stbi__get16le(ptr noundef %0) #17
  %272 = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %271, ptr %272, align 4, !tbaa !30
  %273 = load ptr, ptr %5, align 8, !tbaa !16
  %274 = load ptr, ptr %7, align 8, !tbaa !18
  %275 = icmp ult ptr %273, %274
  br i1 %275, label %276, label %279

276:                                              ; preds = %269
  %277 = getelementptr inbounds nuw i8, ptr %273, i64 1
  store ptr %277, ptr %5, align 8, !tbaa !16
  %278 = load i8, ptr %273, align 1, !tbaa !35
  br label %313

279:                                              ; preds = %269
  %280 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %281 = load i32, ptr %280, align 8, !tbaa !13
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %313, label %283

283:                                              ; preds = %279
  %284 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %285 = load ptr, ptr %284, align 8, !tbaa !8
  %286 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %287 = load ptr, ptr %286, align 8, !tbaa !33
  %288 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %289 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %290 = load i32, ptr %289, align 4, !tbaa !34
  %291 = tail call i32 %285(ptr noundef %287, ptr noundef nonnull %288, i32 noundef %290) #16
  %292 = load ptr, ptr %5, align 8, !tbaa !16
  %293 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %294 = load ptr, ptr %293, align 8, !tbaa !15
  %295 = ptrtoint ptr %292 to i64
  %296 = ptrtoint ptr %294 to i64
  %297 = sub i64 %295, %296
  %298 = trunc i64 %297 to i32
  %299 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %300 = load i32, ptr %299, align 8, !tbaa !14
  %301 = add i32 %300, %298
  store i32 %301, ptr %299, align 8, !tbaa !14
  %302 = icmp eq i32 %291, 0
  br i1 %302, label %303, label %305

303:                                              ; preds = %283
  store i32 0, ptr %280, align 8, !tbaa !13
  %304 = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %288, align 8, !tbaa !35
  br label %309

305:                                              ; preds = %283
  %306 = sext i32 %291 to i64
  %307 = getelementptr inbounds i8, ptr %288, i64 %306
  %308 = load i8, ptr %288, align 1, !tbaa !35
  br label %309

309:                                              ; preds = %305, %303
  %310 = phi i8 [ 0, %303 ], [ %308, %305 ]
  %311 = phi ptr [ %304, %303 ], [ %307, %305 ]
  store ptr %311, ptr %7, align 8, !tbaa !18
  %312 = getelementptr inbounds nuw i8, ptr %0, i64 57
  store ptr %312, ptr %5, align 8, !tbaa !16
  br label %313

313:                                              ; preds = %276, %279, %309
  %314 = phi ptr [ %274, %276 ], [ %311, %309 ], [ %274, %279 ]
  %315 = phi ptr [ %277, %276 ], [ %312, %309 ], [ %273, %279 ]
  %316 = phi i8 [ %278, %276 ], [ %310, %309 ], [ 0, %279 ]
  %317 = zext i8 %316 to i32
  %318 = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 %317, ptr %318, align 8, !tbaa !207
  %319 = icmp ult ptr %315, %314
  br i1 %319, label %320, label %323

320:                                              ; preds = %313
  %321 = getelementptr inbounds nuw i8, ptr %315, i64 1
  store ptr %321, ptr %5, align 8, !tbaa !16
  %322 = load i8, ptr %315, align 1, !tbaa !35
  br label %357

323:                                              ; preds = %313
  %324 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %325 = load i32, ptr %324, align 8, !tbaa !13
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %357, label %327

327:                                              ; preds = %323
  %328 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %329 = load ptr, ptr %328, align 8, !tbaa !8
  %330 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %331 = load ptr, ptr %330, align 8, !tbaa !33
  %332 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %333 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %334 = load i32, ptr %333, align 4, !tbaa !34
  %335 = tail call i32 %329(ptr noundef %331, ptr noundef nonnull %332, i32 noundef %334) #16
  %336 = load ptr, ptr %5, align 8, !tbaa !16
  %337 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %338 = load ptr, ptr %337, align 8, !tbaa !15
  %339 = ptrtoint ptr %336 to i64
  %340 = ptrtoint ptr %338 to i64
  %341 = sub i64 %339, %340
  %342 = trunc i64 %341 to i32
  %343 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %344 = load i32, ptr %343, align 8, !tbaa !14
  %345 = add i32 %344, %342
  store i32 %345, ptr %343, align 8, !tbaa !14
  %346 = icmp eq i32 %335, 0
  br i1 %346, label %347, label %349

347:                                              ; preds = %327
  store i32 0, ptr %324, align 8, !tbaa !13
  %348 = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %332, align 8, !tbaa !35
  br label %353

349:                                              ; preds = %327
  %350 = sext i32 %335 to i64
  %351 = getelementptr inbounds i8, ptr %332, i64 %350
  %352 = load i8, ptr %332, align 1, !tbaa !35
  br label %353

353:                                              ; preds = %349, %347
  %354 = phi i8 [ 0, %347 ], [ %352, %349 ]
  %355 = phi ptr [ %348, %347 ], [ %351, %349 ]
  store ptr %355, ptr %7, align 8, !tbaa !18
  %356 = getelementptr inbounds nuw i8, ptr %0, i64 57
  store ptr %356, ptr %5, align 8, !tbaa !16
  br label %357

357:                                              ; preds = %320, %323, %353
  %358 = phi ptr [ %314, %320 ], [ %355, %353 ], [ %314, %323 ]
  %359 = phi ptr [ %321, %320 ], [ %356, %353 ], [ %315, %323 ]
  %360 = phi i8 [ %322, %320 ], [ %354, %353 ], [ 0, %323 ]
  %361 = zext i8 %360 to i32
  %362 = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i32 %361, ptr %362, align 4, !tbaa !208
  %363 = icmp ult ptr %359, %358
  br i1 %363, label %364, label %367

364:                                              ; preds = %357
  %365 = getelementptr inbounds nuw i8, ptr %359, i64 1
  store ptr %365, ptr %5, align 8, !tbaa !16
  %366 = load i8, ptr %359, align 1, !tbaa !35
  br label %401

367:                                              ; preds = %357
  %368 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %369 = load i32, ptr %368, align 8, !tbaa !13
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %401, label %371

371:                                              ; preds = %367
  %372 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %373 = load ptr, ptr %372, align 8, !tbaa !8
  %374 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %375 = load ptr, ptr %374, align 8, !tbaa !33
  %376 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %377 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %378 = load i32, ptr %377, align 4, !tbaa !34
  %379 = tail call i32 %373(ptr noundef %375, ptr noundef nonnull %376, i32 noundef %378) #16
  %380 = load ptr, ptr %5, align 8, !tbaa !16
  %381 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %382 = load ptr, ptr %381, align 8, !tbaa !15
  %383 = ptrtoint ptr %380 to i64
  %384 = ptrtoint ptr %382 to i64
  %385 = sub i64 %383, %384
  %386 = trunc i64 %385 to i32
  %387 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %388 = load i32, ptr %387, align 8, !tbaa !14
  %389 = add i32 %388, %386
  store i32 %389, ptr %387, align 8, !tbaa !14
  %390 = icmp eq i32 %379, 0
  br i1 %390, label %391, label %393

391:                                              ; preds = %371
  store i32 0, ptr %368, align 8, !tbaa !13
  %392 = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %376, align 8, !tbaa !35
  br label %397

393:                                              ; preds = %371
  %394 = sext i32 %379 to i64
  %395 = getelementptr inbounds i8, ptr %376, i64 %394
  %396 = load i8, ptr %376, align 1, !tbaa !35
  br label %397

397:                                              ; preds = %393, %391
  %398 = phi i8 [ 0, %391 ], [ %396, %393 ]
  %399 = phi ptr [ %392, %391 ], [ %395, %393 ]
  store ptr %399, ptr %7, align 8, !tbaa !18
  %400 = getelementptr inbounds nuw i8, ptr %0, i64 57
  store ptr %400, ptr %5, align 8, !tbaa !16
  br label %401

401:                                              ; preds = %364, %367, %397
  %402 = phi i8 [ %366, %364 ], [ %398, %397 ], [ 0, %367 ]
  %403 = zext i8 %402 to i32
  %404 = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i32 %403, ptr %404, align 8, !tbaa !209
  %405 = getelementptr inbounds nuw i8, ptr %1, i64 44
  store i32 -1, ptr %405, align 4, !tbaa !210
  %406 = load i32, ptr %1, align 8, !tbaa !28
  %407 = icmp sgt i32 %406, 4096
  br i1 %407, label %421, label %408

408:                                              ; preds = %401
  %409 = load i32, ptr %272, align 4, !tbaa !30
  %410 = icmp sgt i32 %409, 4096
  br i1 %410, label %421, label %411

411:                                              ; preds = %408
  store i32 4, ptr %2, align 4, !tbaa !4
  %412 = icmp eq i32 %3, 0
  br i1 %412, label %413, label %421

413:                                              ; preds = %411
  %414 = load i32, ptr %318, align 8, !tbaa !207
  %415 = and i32 %414, 128
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %421, label %417

417:                                              ; preds = %413
  %418 = getelementptr inbounds nuw i8, ptr %1, i64 52
  %419 = and i32 %414, 7
  %420 = shl nuw nsw i32 2, %419
  tail call fastcc void @stbi__gif_parse_colortable(ptr noundef %0, ptr noundef %418, i32 noundef %420, i32 noundef -1) #17
  br label %421

421:                                              ; preds = %232, %189, %145, %101, %57, %13, %413, %417, %411, %408, %401, %266, %223, %47, %91, %135, %179
  %422 = phi i32 [ 1, %411 ], [ 0, %47 ], [ 0, %223 ], [ 0, %266 ], [ 0, %401 ], [ 0, %408 ], [ 0, %179 ], [ 0, %135 ], [ 0, %91 ], [ 1, %417 ], [ 1, %413 ], [ 0, %189 ], [ 0, %13 ], [ 0, %57 ], [ 0, %101 ], [ 0, %145 ], [ 0, %232 ]
  ret i32 %422
}

; Function Attrs: nounwind
define internal fastcc range(i32 0, 65536) i32 @stbi__get16le(ptr noundef nonnull %0) unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %3 = load ptr, ptr %2, align 8, !tbaa !16
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %5 = load ptr, ptr %4, align 8, !tbaa !18
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 1
  store ptr %8, ptr %2, align 8, !tbaa !16
  %9 = load i8, ptr %3, align 1, !tbaa !35
  br label %44

10:                                               ; preds = %1
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %12 = load i32, ptr %11, align 8, !tbaa !13
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %44, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %16 = load ptr, ptr %15, align 8, !tbaa !8
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %18 = load ptr, ptr %17, align 8, !tbaa !33
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %21 = load i32, ptr %20, align 4, !tbaa !34
  %22 = tail call i32 %16(ptr noundef %18, ptr noundef nonnull %19, i32 noundef %21) #16
  %23 = load ptr, ptr %2, align 8, !tbaa !16
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %25 = load ptr, ptr %24, align 8, !tbaa !15
  %26 = ptrtoint ptr %23 to i64
  %27 = ptrtoint ptr %25 to i64
  %28 = sub i64 %26, %27
  %29 = trunc i64 %28 to i32
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %31 = load i32, ptr %30, align 8, !tbaa !14
  %32 = add i32 %31, %29
  store i32 %32, ptr %30, align 8, !tbaa !14
  %33 = icmp eq i32 %22, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %14
  store i32 0, ptr %11, align 8, !tbaa !13
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %19, align 8, !tbaa !35
  br label %40

36:                                               ; preds = %14
  %37 = sext i32 %22 to i64
  %38 = getelementptr inbounds i8, ptr %19, i64 %37
  %39 = load i8, ptr %19, align 1, !tbaa !35
  br label %40

40:                                               ; preds = %36, %34
  %41 = phi i8 [ 0, %34 ], [ %39, %36 ]
  %42 = phi ptr [ %35, %34 ], [ %38, %36 ]
  store ptr %42, ptr %4, align 8, !tbaa !18
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 57
  store ptr %43, ptr %2, align 8, !tbaa !16
  br label %44

44:                                               ; preds = %7, %10, %40
  %45 = phi ptr [ %5, %7 ], [ %42, %40 ], [ %5, %10 ]
  %46 = phi ptr [ %8, %7 ], [ %43, %40 ], [ %3, %10 ]
  %47 = phi i8 [ %9, %7 ], [ %41, %40 ], [ 0, %10 ]
  %48 = icmp ult ptr %46, %45
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = getelementptr inbounds nuw i8, ptr %46, i64 1
  store ptr %50, ptr %2, align 8, !tbaa !16
  %51 = load i8, ptr %46, align 1, !tbaa !35
  br label %86

52:                                               ; preds = %44
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %54 = load i32, ptr %53, align 8, !tbaa !13
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %86, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %58 = load ptr, ptr %57, align 8, !tbaa !8
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %60 = load ptr, ptr %59, align 8, !tbaa !33
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %63 = load i32, ptr %62, align 4, !tbaa !34
  %64 = tail call i32 %58(ptr noundef %60, ptr noundef nonnull %61, i32 noundef %63) #16
  %65 = load ptr, ptr %2, align 8, !tbaa !16
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %67 = load ptr, ptr %66, align 8, !tbaa !15
  %68 = ptrtoint ptr %65 to i64
  %69 = ptrtoint ptr %67 to i64
  %70 = sub i64 %68, %69
  %71 = trunc i64 %70 to i32
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %73 = load i32, ptr %72, align 8, !tbaa !14
  %74 = add i32 %73, %71
  store i32 %74, ptr %72, align 8, !tbaa !14
  %75 = icmp eq i32 %64, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %56
  store i32 0, ptr %53, align 8, !tbaa !13
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %61, align 8, !tbaa !35
  br label %82

78:                                               ; preds = %56
  %79 = sext i32 %64 to i64
  %80 = getelementptr inbounds i8, ptr %61, i64 %79
  %81 = load i8, ptr %61, align 1, !tbaa !35
  br label %82

82:                                               ; preds = %78, %76
  %83 = phi i8 [ 0, %76 ], [ %81, %78 ]
  %84 = phi ptr [ %77, %76 ], [ %80, %78 ]
  store ptr %84, ptr %4, align 8, !tbaa !18
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 57
  store ptr %85, ptr %2, align 8, !tbaa !16
  br label %86

86:                                               ; preds = %49, %52, %82
  %87 = phi i8 [ %51, %49 ], [ %83, %82 ], [ 0, %52 ]
  %88 = zext i8 %47 to i32
  %89 = zext i8 %87 to i32
  %90 = shl nuw nsw i32 %89, 8
  %91 = or disjoint i32 %90, %88
  ret i32 %91
}

; Function Attrs: nounwind
define internal fastcc void @stbi__gif_parse_colortable(ptr noundef nonnull %0, ptr noundef nonnull writeonly captures(none) %1, i32 noundef range(i32 2, 257) %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 57
  %15 = zext i32 %3 to i64
  %16 = zext nneg i32 %2 to i64
  br label %17

17:                                               ; preds = %4, %119
  %18 = phi i64 [ 0, %4 ], [ %124, %119 ]
  %19 = load ptr, ptr %5, align 8, !tbaa !16
  %20 = load ptr, ptr %6, align 8, !tbaa !18
  %21 = icmp ult ptr %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = getelementptr inbounds nuw i8, ptr %19, i64 1
  store ptr %23, ptr %5, align 8, !tbaa !16
  %24 = load i8, ptr %19, align 1, !tbaa !35
  br label %50

25:                                               ; preds = %17
  %26 = load i32, ptr %7, align 8, !tbaa !13
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %50, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %8, align 8, !tbaa !8
  %30 = load ptr, ptr %9, align 8, !tbaa !33
  %31 = load i32, ptr %11, align 4, !tbaa !34
  %32 = tail call i32 %29(ptr noundef %30, ptr noundef nonnull %10, i32 noundef %31) #16
  %33 = load ptr, ptr %5, align 8, !tbaa !16
  %34 = load ptr, ptr %12, align 8, !tbaa !15
  %35 = ptrtoint ptr %33 to i64
  %36 = ptrtoint ptr %34 to i64
  %37 = sub i64 %35, %36
  %38 = trunc i64 %37 to i32
  %39 = load i32, ptr %13, align 8, !tbaa !14
  %40 = add i32 %39, %38
  store i32 %40, ptr %13, align 8, !tbaa !14
  %41 = icmp eq i32 %32, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %28
  store i32 0, ptr %7, align 8, !tbaa !13
  store i8 0, ptr %10, align 8, !tbaa !35
  br label %47

43:                                               ; preds = %28
  %44 = sext i32 %32 to i64
  %45 = getelementptr inbounds i8, ptr %10, i64 %44
  %46 = load i8, ptr %10, align 1, !tbaa !35
  br label %47

47:                                               ; preds = %43, %42
  %48 = phi i8 [ 0, %42 ], [ %46, %43 ]
  %49 = phi ptr [ %14, %42 ], [ %45, %43 ]
  store ptr %49, ptr %6, align 8, !tbaa !18
  store ptr %14, ptr %5, align 8, !tbaa !16
  br label %50

50:                                               ; preds = %22, %25, %47
  %51 = phi i8 [ %24, %22 ], [ %48, %47 ], [ 0, %25 ]
  %52 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %18
  %53 = getelementptr inbounds nuw i8, ptr %52, i64 2
  store i8 %51, ptr %53, align 1, !tbaa !35
  %54 = load ptr, ptr %5, align 8, !tbaa !16
  %55 = load ptr, ptr %6, align 8, !tbaa !18
  %56 = icmp ult ptr %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = getelementptr inbounds nuw i8, ptr %54, i64 1
  store ptr %58, ptr %5, align 8, !tbaa !16
  %59 = load i8, ptr %54, align 1, !tbaa !35
  br label %85

60:                                               ; preds = %50
  %61 = load i32, ptr %7, align 8, !tbaa !13
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %85, label %63

63:                                               ; preds = %60
  %64 = load ptr, ptr %8, align 8, !tbaa !8
  %65 = load ptr, ptr %9, align 8, !tbaa !33
  %66 = load i32, ptr %11, align 4, !tbaa !34
  %67 = tail call i32 %64(ptr noundef %65, ptr noundef nonnull %10, i32 noundef %66) #16
  %68 = load ptr, ptr %5, align 8, !tbaa !16
  %69 = load ptr, ptr %12, align 8, !tbaa !15
  %70 = ptrtoint ptr %68 to i64
  %71 = ptrtoint ptr %69 to i64
  %72 = sub i64 %70, %71
  %73 = trunc i64 %72 to i32
  %74 = load i32, ptr %13, align 8, !tbaa !14
  %75 = add i32 %74, %73
  store i32 %75, ptr %13, align 8, !tbaa !14
  %76 = icmp eq i32 %67, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %63
  store i32 0, ptr %7, align 8, !tbaa !13
  store i8 0, ptr %10, align 8, !tbaa !35
  br label %82

78:                                               ; preds = %63
  %79 = sext i32 %67 to i64
  %80 = getelementptr inbounds i8, ptr %10, i64 %79
  %81 = load i8, ptr %10, align 1, !tbaa !35
  br label %82

82:                                               ; preds = %78, %77
  %83 = phi i8 [ 0, %77 ], [ %81, %78 ]
  %84 = phi ptr [ %14, %77 ], [ %80, %78 ]
  store ptr %84, ptr %6, align 8, !tbaa !18
  store ptr %14, ptr %5, align 8, !tbaa !16
  br label %85

85:                                               ; preds = %57, %60, %82
  %86 = phi i8 [ %59, %57 ], [ %83, %82 ], [ 0, %60 ]
  %87 = getelementptr inbounds nuw i8, ptr %52, i64 1
  store i8 %86, ptr %87, align 1, !tbaa !35
  %88 = load ptr, ptr %5, align 8, !tbaa !16
  %89 = load ptr, ptr %6, align 8, !tbaa !18
  %90 = icmp ult ptr %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %85
  %92 = getelementptr inbounds nuw i8, ptr %88, i64 1
  store ptr %92, ptr %5, align 8, !tbaa !16
  %93 = load i8, ptr %88, align 1, !tbaa !35
  br label %119

94:                                               ; preds = %85
  %95 = load i32, ptr %7, align 8, !tbaa !13
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %119, label %97

97:                                               ; preds = %94
  %98 = load ptr, ptr %8, align 8, !tbaa !8
  %99 = load ptr, ptr %9, align 8, !tbaa !33
  %100 = load i32, ptr %11, align 4, !tbaa !34
  %101 = tail call i32 %98(ptr noundef %99, ptr noundef nonnull %10, i32 noundef %100) #16
  %102 = load ptr, ptr %5, align 8, !tbaa !16
  %103 = load ptr, ptr %12, align 8, !tbaa !15
  %104 = ptrtoint ptr %102 to i64
  %105 = ptrtoint ptr %103 to i64
  %106 = sub i64 %104, %105
  %107 = trunc i64 %106 to i32
  %108 = load i32, ptr %13, align 8, !tbaa !14
  %109 = add i32 %108, %107
  store i32 %109, ptr %13, align 8, !tbaa !14
  %110 = icmp eq i32 %101, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %97
  store i32 0, ptr %7, align 8, !tbaa !13
  store i8 0, ptr %10, align 8, !tbaa !35
  br label %116

112:                                              ; preds = %97
  %113 = sext i32 %101 to i64
  %114 = getelementptr inbounds i8, ptr %10, i64 %113
  %115 = load i8, ptr %10, align 1, !tbaa !35
  br label %116

116:                                              ; preds = %112, %111
  %117 = phi i8 [ 0, %111 ], [ %115, %112 ]
  %118 = phi ptr [ %14, %111 ], [ %114, %112 ]
  store ptr %118, ptr %6, align 8, !tbaa !18
  store ptr %14, ptr %5, align 8, !tbaa !16
  br label %119

119:                                              ; preds = %91, %94, %116
  %120 = phi i8 [ %93, %91 ], [ %117, %116 ], [ 0, %94 ]
  store i8 %120, ptr %52, align 1, !tbaa !35
  %121 = icmp ne i64 %18, %15
  %122 = sext i1 %121 to i8
  %123 = getelementptr inbounds nuw i8, ptr %52, i64 3
  store i8 %122, ptr %123, align 1, !tbaa !35
  %124 = add nuw nsw i64 %18, 1
  %125 = icmp eq i64 %124, %16
  br i1 %125, label %126, label %17, !llvm.loop !211

126:                                              ; preds = %119
  ret void
}

; Function Attrs: nounwind
define internal fastcc noundef ptr @stbi__bmp_parse_header(ptr noundef nonnull %0, ptr noundef nonnull captures(none) %1) unnamed_addr #0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %4 = load ptr, ptr %3, align 8, !tbaa !16
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %6 = load ptr, ptr %5, align 8, !tbaa !18
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = getelementptr inbounds nuw i8, ptr %4, i64 1
  store ptr %9, ptr %3, align 8, !tbaa !16
  %10 = load i8, ptr %4, align 1, !tbaa !35
  br label %45

11:                                               ; preds = %2
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %13 = load i32, ptr %12, align 8, !tbaa !13
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %254, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %17 = load ptr, ptr %16, align 8, !tbaa !8
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %19 = load ptr, ptr %18, align 8, !tbaa !33
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %22 = load i32, ptr %21, align 4, !tbaa !34
  %23 = tail call i32 %17(ptr noundef %19, ptr noundef nonnull %20, i32 noundef %22) #16
  %24 = load ptr, ptr %3, align 8, !tbaa !16
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %26 = load ptr, ptr %25, align 8, !tbaa !15
  %27 = ptrtoint ptr %24 to i64
  %28 = ptrtoint ptr %26 to i64
  %29 = sub i64 %27, %28
  %30 = trunc i64 %29 to i32
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %32 = load i32, ptr %31, align 8, !tbaa !14
  %33 = add i32 %32, %30
  store i32 %33, ptr %31, align 8, !tbaa !14
  %34 = icmp eq i32 %23, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %15
  store i32 0, ptr %12, align 8, !tbaa !13
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %20, align 8, !tbaa !35
  br label %41

37:                                               ; preds = %15
  %38 = sext i32 %23 to i64
  %39 = getelementptr inbounds i8, ptr %20, i64 %38
  %40 = load i8, ptr %20, align 1, !tbaa !35
  br label %41

41:                                               ; preds = %37, %35
  %42 = phi i8 [ 0, %35 ], [ %40, %37 ]
  %43 = phi ptr [ %36, %35 ], [ %39, %37 ]
  store ptr %43, ptr %5, align 8, !tbaa !18
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 57
  store ptr %44, ptr %3, align 8, !tbaa !16
  br label %45

45:                                               ; preds = %8, %41
  %46 = phi ptr [ %6, %8 ], [ %43, %41 ]
  %47 = phi ptr [ %9, %8 ], [ %44, %41 ]
  %48 = phi i8 [ %10, %8 ], [ %42, %41 ]
  %49 = icmp eq i8 %48, 66
  br i1 %49, label %50, label %254

50:                                               ; preds = %45
  %51 = icmp ult ptr %47, %46
  br i1 %51, label %52, label %55

52:                                               ; preds = %50
  %53 = getelementptr inbounds nuw i8, ptr %47, i64 1
  store ptr %53, ptr %3, align 8, !tbaa !16
  %54 = load i8, ptr %47, align 1, !tbaa !35
  br label %89

55:                                               ; preds = %50
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %57 = load i32, ptr %56, align 8, !tbaa !13
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %254, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %61 = load ptr, ptr %60, align 8, !tbaa !8
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %63 = load ptr, ptr %62, align 8, !tbaa !33
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %66 = load i32, ptr %65, align 4, !tbaa !34
  %67 = tail call i32 %61(ptr noundef %63, ptr noundef nonnull %64, i32 noundef %66) #16
  %68 = load ptr, ptr %3, align 8, !tbaa !16
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %70 = load ptr, ptr %69, align 8, !tbaa !15
  %71 = ptrtoint ptr %68 to i64
  %72 = ptrtoint ptr %70 to i64
  %73 = sub i64 %71, %72
  %74 = trunc i64 %73 to i32
  %75 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %76 = load i32, ptr %75, align 8, !tbaa !14
  %77 = add i32 %76, %74
  store i32 %77, ptr %75, align 8, !tbaa !14
  %78 = icmp eq i32 %67, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %59
  store i32 0, ptr %56, align 8, !tbaa !13
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %64, align 8, !tbaa !35
  br label %85

81:                                               ; preds = %59
  %82 = sext i32 %67 to i64
  %83 = getelementptr inbounds i8, ptr %64, i64 %82
  %84 = load i8, ptr %64, align 1, !tbaa !35
  br label %85

85:                                               ; preds = %81, %79
  %86 = phi i8 [ 0, %79 ], [ %84, %81 ]
  %87 = phi ptr [ %80, %79 ], [ %83, %81 ]
  store ptr %87, ptr %5, align 8, !tbaa !18
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 57
  store ptr %88, ptr %3, align 8, !tbaa !16
  br label %89

89:                                               ; preds = %52, %85
  %90 = phi i8 [ %54, %52 ], [ %86, %85 ]
  %91 = icmp eq i8 %90, 77
  br i1 %91, label %92, label %254

92:                                               ; preds = %89
  %93 = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) #17
  %94 = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) #17
  %95 = tail call fastcc i32 @stbi__get16le(ptr noundef %0) #17
  %96 = tail call fastcc i32 @stbi__get16le(ptr noundef %0) #17
  %97 = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) #17
  %98 = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) #17
  %99 = shl nuw i32 %98, 16
  %100 = or disjoint i32 %99, %97
  %101 = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %100, ptr %101, align 4, !tbaa !212
  %102 = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) #17
  %103 = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) #17
  %104 = shl nuw i32 %103, 16
  %105 = or disjoint i32 %104, %102
  %106 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %105, ptr %106, align 4, !tbaa !213
  %107 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %108 = getelementptr inbounds nuw i8, ptr %1, i64 20
  %109 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %110 = getelementptr inbounds nuw i8, ptr %1, i64 12
  store <4 x i32> zeroinitializer, ptr %110, align 4, !tbaa !4
  %111 = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 14, ptr %111, align 4, !tbaa !214
  %112 = load i32, ptr %101, align 4, !tbaa !212
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %254, label %114

114:                                              ; preds = %92
  %115 = icmp eq i32 %105, 12
  switch i32 %105, label %254 [
    i32 12, label %116
    i32 40, label %119
    i32 56, label %119
    i32 108, label %119
    i32 124, label %119
  ]

116:                                              ; preds = %114
  %117 = tail call fastcc i32 @stbi__get16le(ptr noundef %0) #17
  store i32 %117, ptr %0, align 8, !tbaa !24
  %118 = tail call fastcc i32 @stbi__get16le(ptr noundef %0) #17
  br label %128

119:                                              ; preds = %114, %114, %114, %114
  %120 = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) #17
  %121 = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) #17
  %122 = shl nuw i32 %121, 16
  %123 = or disjoint i32 %122, %120
  store i32 %123, ptr %0, align 8, !tbaa !24
  %124 = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) #17
  %125 = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) #17
  %126 = shl nuw i32 %125, 16
  %127 = or disjoint i32 %126, %124
  br label %128

128:                                              ; preds = %119, %116
  %129 = phi i32 [ %127, %119 ], [ %118, %116 ]
  %130 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %129, ptr %130, align 4, !tbaa !25
  %131 = tail call fastcc i32 @stbi__get16le(ptr noundef %0) #17
  %132 = icmp eq i32 %131, 1
  br i1 %132, label %133, label %254

133:                                              ; preds = %128
  %134 = tail call fastcc i32 @stbi__get16le(ptr noundef %0) #17
  store i32 %134, ptr %1, align 4, !tbaa !215
  br i1 %115, label %254, label %135

135:                                              ; preds = %133
  %136 = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) #17
  %137 = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) #17
  %138 = shl nuw i32 %137, 16
  %139 = or disjoint i32 %138, %136
  %140 = add i32 %139, -1
  %141 = icmp ult i32 %140, 2
  %142 = icmp sgt i32 %139, 3
  %143 = or i1 %142, %141
  br i1 %143, label %254, label %144

144:                                              ; preds = %135
  %145 = icmp eq i32 %139, 3
  br i1 %145, label %146, label %148

146:                                              ; preds = %144
  %147 = load i32, ptr %1, align 4, !tbaa !215
  switch i32 %147, label %254 [
    i32 16, label %148
    i32 32, label %148
  ]

148:                                              ; preds = %146, %146, %144
  %149 = tail call fastcc i32 @stbi__get32le(ptr noundef %0) #17
  %150 = tail call fastcc i32 @stbi__get32le(ptr noundef %0) #17
  %151 = tail call fastcc i32 @stbi__get32le(ptr noundef %0) #17
  %152 = tail call fastcc i32 @stbi__get32le(ptr noundef %0) #17
  %153 = tail call fastcc i32 @stbi__get32le(ptr noundef %0) #17
  switch i32 %105, label %254 [
    i32 56, label %154
    i32 40, label %159
    i32 124, label %195
    i32 108, label %195
  ]

154:                                              ; preds = %148
  %155 = tail call fastcc i32 @stbi__get32le(ptr noundef %0) #17
  %156 = tail call fastcc i32 @stbi__get32le(ptr noundef %0) #17
  %157 = tail call fastcc i32 @stbi__get32le(ptr noundef %0) #17
  %158 = tail call fastcc i32 @stbi__get32le(ptr noundef %0) #17
  br label %159

159:                                              ; preds = %148, %154
  %160 = load i32, ptr %1, align 4, !tbaa !215
  switch i32 %160, label %253 [
    i32 16, label %161
    i32 32, label %161
  ]

161:                                              ; preds = %159, %159
  %162 = icmp eq i32 %139, 0
  br i1 %162, label %163, label %183

163:                                              ; preds = %161
  switch i32 %160, label %165 [
    i32 16, label %173
    i32 32, label %164
  ]

164:                                              ; preds = %163
  store i32 16711680, ptr %110, align 4, !tbaa !216
  br label %165

165:                                              ; preds = %164, %163
  %166 = phi i64 [ 16, %164 ], [ 24, %163 ]
  %167 = phi i32 [ 65280, %164 ], [ 0, %163 ]
  %168 = phi i32 [ 255, %164 ], [ 0, %163 ]
  %169 = phi i64 [ 24, %164 ], [ 16, %163 ]
  %170 = phi i32 [ -16777216, %164 ], [ 0, %163 ]
  %171 = phi i64 [ 28, %164 ], [ 12, %163 ]
  %172 = getelementptr inbounds nuw i8, ptr %1, i64 %166
  store i32 %167, ptr %172, align 4, !tbaa !4
  br label %173

173:                                              ; preds = %163, %165
  %174 = phi i64 [ 12, %163 ], [ 20, %165 ]
  %175 = phi i32 [ 31744, %163 ], [ %168, %165 ]
  %176 = phi i64 [ 16, %163 ], [ %169, %165 ]
  %177 = phi i32 [ 992, %163 ], [ %170, %165 ]
  %178 = phi i64 [ 20, %163 ], [ %171, %165 ]
  %179 = phi i32 [ 31, %163 ], [ 0, %165 ]
  %180 = getelementptr inbounds nuw i8, ptr %1, i64 %174
  store i32 %175, ptr %180, align 4, !tbaa !4
  %181 = getelementptr inbounds nuw i8, ptr %1, i64 %176
  store i32 %177, ptr %181, align 4, !tbaa !4
  %182 = getelementptr inbounds nuw i8, ptr %1, i64 %178
  store i32 %179, ptr %182, align 4, !tbaa !4
  br label %253

183:                                              ; preds = %161
  br i1 %145, label %184, label %254

184:                                              ; preds = %183
  %185 = tail call fastcc i32 @stbi__get32le(ptr noundef %0) #17
  store i32 %185, ptr %110, align 4, !tbaa !216
  %186 = tail call fastcc i32 @stbi__get32le(ptr noundef %0) #17
  store i32 %186, ptr %109, align 4, !tbaa !217
  %187 = tail call fastcc i32 @stbi__get32le(ptr noundef %0) #17
  store i32 %187, ptr %108, align 4, !tbaa !218
  %188 = load i32, ptr %111, align 4, !tbaa !214
  %189 = add i32 %188, 12
  store i32 %189, ptr %111, align 4, !tbaa !214
  %190 = load i32, ptr %110, align 4, !tbaa !216
  %191 = load i32, ptr %109, align 4, !tbaa !217
  %192 = icmp eq i32 %190, %191
  %193 = icmp eq i32 %191, %187
  %194 = select i1 %192, i1 %193, i1 false
  br i1 %194, label %254, label %253

195:                                              ; preds = %148, %148
  %196 = tail call fastcc i32 @stbi__get32le(ptr noundef %0) #17
  store i32 %196, ptr %110, align 4, !tbaa !216
  %197 = tail call fastcc i32 @stbi__get32le(ptr noundef %0) #17
  store i32 %197, ptr %109, align 4, !tbaa !217
  %198 = tail call fastcc i32 @stbi__get32le(ptr noundef %0) #17
  store i32 %198, ptr %108, align 4, !tbaa !218
  %199 = tail call fastcc i32 @stbi__get32le(ptr noundef %0) #17
  store i32 %199, ptr %107, align 4, !tbaa !219
  %200 = icmp eq i32 %139, 0
  br i1 %200, label %201, label %222

201:                                              ; preds = %195
  %202 = load i32, ptr %1, align 4, !tbaa !215
  switch i32 %202, label %204 [
    i32 16, label %212
    i32 32, label %203
  ]

203:                                              ; preds = %201
  store i32 16711680, ptr %110, align 4, !tbaa !216
  br label %204

204:                                              ; preds = %203, %201
  %205 = phi i64 [ 16, %203 ], [ 24, %201 ]
  %206 = phi i32 [ 65280, %203 ], [ 0, %201 ]
  %207 = phi i32 [ 255, %203 ], [ 0, %201 ]
  %208 = phi i64 [ 24, %203 ], [ 16, %201 ]
  %209 = phi i32 [ -16777216, %203 ], [ 0, %201 ]
  %210 = phi i64 [ 28, %203 ], [ 12, %201 ]
  %211 = getelementptr inbounds nuw i8, ptr %1, i64 %205
  store i32 %206, ptr %211, align 4, !tbaa !4
  br label %212

212:                                              ; preds = %204, %201
  %213 = phi i64 [ 12, %201 ], [ 20, %204 ]
  %214 = phi i32 [ 31744, %201 ], [ %207, %204 ]
  %215 = phi i64 [ 16, %201 ], [ %208, %204 ]
  %216 = phi i32 [ 992, %201 ], [ %209, %204 ]
  %217 = phi i64 [ 20, %201 ], [ %210, %204 ]
  %218 = phi i32 [ 31, %201 ], [ 0, %204 ]
  %219 = getelementptr inbounds nuw i8, ptr %1, i64 %213
  store i32 %214, ptr %219, align 4, !tbaa !4
  %220 = getelementptr inbounds nuw i8, ptr %1, i64 %215
  store i32 %216, ptr %220, align 4, !tbaa !4
  %221 = getelementptr inbounds nuw i8, ptr %1, i64 %217
  store i32 %218, ptr %221, align 4, !tbaa !4
  br label %222

222:                                              ; preds = %212, %195
  %223 = tail call fastcc i32 @stbi__get32le(ptr noundef %0) #17
  %224 = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) #17
  %225 = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) #17
  %226 = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) #17
  %227 = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) #17
  %228 = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) #17
  %229 = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) #17
  %230 = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) #17
  %231 = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) #17
  %232 = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) #17
  %233 = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) #17
  %234 = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) #17
  %235 = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) #17
  %236 = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) #17
  %237 = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) #17
  %238 = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) #17
  %239 = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) #17
  %240 = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) #17
  %241 = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) #17
  %242 = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) #17
  %243 = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) #17
  %244 = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) #17
  %245 = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) #17
  %246 = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) #17
  %247 = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) #17
  switch i32 %105, label %254 [
    i32 124, label %248
    i32 108, label %253
  ]

248:                                              ; preds = %222
  %249 = tail call fastcc i32 @stbi__get32le(ptr noundef %0) #17
  %250 = tail call fastcc i32 @stbi__get32le(ptr noundef %0) #17
  %251 = tail call fastcc i32 @stbi__get32le(ptr noundef %0) #17
  %252 = tail call fastcc i32 @stbi__get32le(ptr noundef %0) #17
  br label %253

253:                                              ; preds = %248, %222, %159, %184, %173
  br label %254

254:                                              ; preds = %184, %55, %11, %148, %222, %135, %146, %183, %133, %253, %128, %114, %92, %45, %89
  %255 = phi ptr [ inttoptr (i64 1 to ptr), %133 ], [ null, %45 ], [ null, %92 ], [ null, %114 ], [ null, %128 ], [ null, %89 ], [ inttoptr (i64 1 to ptr), %253 ], [ null, %183 ], [ null, %184 ], [ null, %146 ], [ null, %148 ], [ null, %135 ], [ null, %222 ], [ null, %11 ], [ null, %55 ]
  ret ptr %255
}

; Function Attrs: nounwind
define internal fastcc i32 @stbi__get32le(ptr noundef nonnull %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @stbi__get16le(ptr noundef %0) #17
  %3 = tail call fastcc i32 @stbi__get16le(ptr noundef %0) #17
  %4 = shl nuw i32 %3, 16
  %5 = or disjoint i32 %4, %2
  ret i32 %5
}

; Function Attrs: nounwind
define internal fastcc ptr @stbi__load_main(ptr noundef nonnull %0, ptr noundef nonnull writeonly captures(none) %1, ptr noundef nonnull writeonly captures(none) %2, ptr noundef nonnull writeonly captures(none) %3, ptr noundef nonnull %4) unnamed_addr #0 {
  %6 = alloca [64 x i16], align 16
  %7 = alloca [64 x i16], align 16
  %8 = alloca [4 x ptr], align 16
  %9 = alloca [4 x %struct.stbi__resample], align 16
  %10 = alloca %struct.stbi__gif, align 8
  %11 = alloca [256 x [4 x i8]], align 16
  %12 = alloca %struct.stbi__bmp_data, align 4
  %13 = alloca %struct.stbi__png, align 8
  %14 = tail call ptr @memset(ptr noundef nonnull %4, i32 noundef 0, i64 noundef 12) #16
  store i32 8, ptr %4, align 4, !tbaa !37
  %15 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 0, ptr %15, align 4, !tbaa !220
  %16 = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %16, align 4, !tbaa !221
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 57
  %27 = load ptr, ptr %17, align 8, !tbaa !16
  %28 = load ptr, ptr %18, align 8, !tbaa !18
  br label %32

29:                                               ; preds = %65
  %30 = add nuw nsw i64 %35, 1
  %31 = icmp eq i64 %30, 8
  br i1 %31, label %72, label %32, !llvm.loop !111

32:                                               ; preds = %29, %5
  %33 = phi ptr [ %28, %5 ], [ %66, %29 ]
  %34 = phi ptr [ %27, %5 ], [ %67, %29 ]
  %35 = phi i64 [ 0, %5 ], [ %30, %29 ]
  %36 = icmp ult ptr %34, %33
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = getelementptr inbounds nuw i8, ptr %34, i64 1
  store ptr %38, ptr %17, align 8, !tbaa !16
  %39 = load i8, ptr %34, align 1, !tbaa !35
  br label %65

40:                                               ; preds = %32
  %41 = load i32, ptr %19, align 8, !tbaa !13
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %65, label %43

43:                                               ; preds = %40
  %44 = load ptr, ptr %20, align 8, !tbaa !8
  %45 = load ptr, ptr %21, align 8, !tbaa !33
  %46 = load i32, ptr %23, align 4, !tbaa !34
  %47 = tail call i32 %44(ptr noundef %45, ptr noundef nonnull %22, i32 noundef %46) #16
  %48 = load ptr, ptr %17, align 8, !tbaa !16
  %49 = load ptr, ptr %24, align 8, !tbaa !15
  %50 = ptrtoint ptr %48 to i64
  %51 = ptrtoint ptr %49 to i64
  %52 = sub i64 %50, %51
  %53 = trunc i64 %52 to i32
  %54 = load i32, ptr %25, align 8, !tbaa !14
  %55 = add i32 %54, %53
  store i32 %55, ptr %25, align 8, !tbaa !14
  %56 = icmp eq i32 %47, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %43
  store i32 0, ptr %19, align 8, !tbaa !13
  store i8 0, ptr %22, align 8, !tbaa !35
  br label %62

58:                                               ; preds = %43
  %59 = sext i32 %47 to i64
  %60 = getelementptr inbounds i8, ptr %22, i64 %59
  %61 = load i8, ptr %22, align 1, !tbaa !35
  br label %62

62:                                               ; preds = %58, %57
  %63 = phi i8 [ 0, %57 ], [ %61, %58 ]
  %64 = phi ptr [ %26, %57 ], [ %60, %58 ]
  store ptr %64, ptr %18, align 8, !tbaa !18
  store ptr %26, ptr %17, align 8, !tbaa !16
  br label %65

65:                                               ; preds = %62, %40, %37
  %66 = phi ptr [ %33, %37 ], [ %64, %62 ], [ %33, %40 ]
  %67 = phi ptr [ %38, %37 ], [ %26, %62 ], [ %34, %40 ]
  %68 = phi i8 [ %39, %37 ], [ %63, %62 ], [ 0, %40 ]
  %69 = getelementptr inbounds nuw i8, ptr @stbi__check_png_header.png_sig, i64 %35
  %70 = load i8, ptr %69, align 1, !tbaa !35
  %71 = icmp eq i8 %68, %70
  br i1 %71, label %29, label %288

72:                                               ; preds = %29
  %73 = load <2 x ptr>, ptr %24, align 8, !tbaa !23
  store <2 x ptr> %73, ptr %17, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15
  store ptr %0, ptr %13, align 8, !tbaa !26
  %74 = call fastcc i32 @stbi__parse_png_file(ptr noundef nonnull %13, i32 noundef 0, i32 noundef 4) #17
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %286, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds nuw i8, ptr %13, i64 32
  %78 = load i32, ptr %77, align 8, !tbaa !112
  %79 = icmp slt i32 %78, 9
  br i1 %79, label %82, label %80

80:                                               ; preds = %76
  %81 = icmp eq i32 %78, 16
  br i1 %81, label %89, label %286

82:                                               ; preds = %76
  store i32 8, ptr %4, align 4, !tbaa !37
  %83 = getelementptr inbounds nuw i8, ptr %13, i64 24
  %84 = load ptr, ptr %83, align 8, !tbaa !110
  %85 = load ptr, ptr %13, align 8, !tbaa !26
  %86 = getelementptr inbounds nuw i8, ptr %85, i64 12
  %87 = load i32, ptr %86, align 4, !tbaa !142
  %88 = icmp eq i32 %87, 4
  br i1 %88, label %278, label %272

89:                                               ; preds = %80
  store i32 16, ptr %4, align 4, !tbaa !37
  %90 = getelementptr inbounds nuw i8, ptr %13, i64 24
  %91 = load ptr, ptr %90, align 8, !tbaa !110
  %92 = load ptr, ptr %13, align 8, !tbaa !26
  %93 = getelementptr inbounds nuw i8, ptr %92, i64 12
  %94 = load i32, ptr %93, align 4, !tbaa !142
  %95 = icmp eq i32 %94, 4
  br i1 %95, label %278, label %96

96:                                               ; preds = %89
  %97 = load i32, ptr %92, align 8, !tbaa !24
  %98 = getelementptr inbounds nuw i8, ptr %92, i64 4
  %99 = load i32, ptr %98, align 4, !tbaa !25
  %100 = shl i32 %97, 3
  %101 = mul i32 %100, %99
  %102 = zext i32 %101 to i64
  %103 = add nuw nsw i64 %102, 15
  %104 = and i64 %103, 8589934576
  %105 = add nuw nsw i64 %104, 16
  %106 = load i64, ptr @arena_used, align 8, !tbaa !19
  %107 = sub i64 100663296, %106
  %108 = icmp ugt i64 %105, %107
  br i1 %108, label %270, label %109

109:                                              ; preds = %96
  %110 = getelementptr inbounds nuw i8, ptr @arena, i64 %106
  %111 = add i64 %105, %106
  store i64 %111, ptr @arena_used, align 8, !tbaa !19
  store i64 %102, ptr %110, align 8, !tbaa !19
  %112 = getelementptr inbounds nuw i8, ptr %110, i64 16
  %113 = icmp sgt i32 %99, 0
  br i1 %113, label %114, label %271

114:                                              ; preds = %109
  %115 = shl i32 %94, 3
  %116 = or disjoint i32 %115, 4
  %117 = add i32 %97, -1
  %118 = icmp sgt i32 %117, -1
  switch i32 %116, label %270 [
    i32 20, label %119
    i32 28, label %119
    i32 12, label %119
  ]

119:                                              ; preds = %114, %114, %114
  %120 = zext nneg i32 %99 to i64
  %121 = and i32 %97, 1
  %122 = icmp eq i32 %121, 0
  %123 = add i32 %97, -2
  %124 = icmp eq i32 %117, 0
  %125 = and i32 %97, 1
  %126 = icmp eq i32 %125, 0
  %127 = add i32 %97, -2
  %128 = icmp eq i32 %117, 0
  %129 = and i32 %97, 3
  %130 = icmp eq i32 %129, 0
  %131 = icmp ult i32 %117, 3
  br label %132

132:                                              ; preds = %267, %119
  %133 = phi i64 [ 0, %119 ], [ %268, %267 ]
  %134 = trunc nuw nsw i64 %133 to i32
  %135 = mul i32 %97, %134
  %136 = mul i32 %135, %94
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds nuw i16, ptr %91, i64 %137
  %139 = shl i32 %135, 2
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds nuw i16, ptr %112, i64 %140
  switch i32 %116, label %142 [
    i32 20, label %178
    i32 28, label %161
  ]

142:                                              ; preds = %132
  br i1 %118, label %143, label %267

143:                                              ; preds = %142
  br i1 %130, label %157, label %144

144:                                              ; preds = %143, %144
  %145 = phi i32 [ %154, %144 ], [ %117, %143 ]
  %146 = phi ptr [ %153, %144 ], [ %141, %143 ]
  %147 = phi ptr [ %152, %144 ], [ %138, %143 ]
  %148 = phi i32 [ %155, %144 ], [ 0, %143 ]
  %149 = load i16, ptr %147, align 2, !tbaa !39
  %150 = insertelement <4 x i16> <i16 poison, i16 -1, i16 poison, i16 poison>, i16 %149, i64 0
  %151 = shufflevector <4 x i16> %150, <4 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x i16> %151, ptr %146, align 2, !tbaa !39
  %152 = getelementptr inbounds nuw i8, ptr %147, i64 2
  %153 = getelementptr inbounds nuw i8, ptr %146, i64 8
  %154 = add nsw i32 %145, -1
  %155 = add i32 %148, 1
  %156 = icmp eq i32 %155, %129
  br i1 %156, label %157, label %144, !llvm.loop !222

157:                                              ; preds = %144, %143
  %158 = phi i32 [ %117, %143 ], [ %154, %144 ]
  %159 = phi ptr [ %141, %143 ], [ %153, %144 ]
  %160 = phi ptr [ %138, %143 ], [ %152, %144 ]
  br i1 %131, label %267, label %193

161:                                              ; preds = %132
  br i1 %118, label %162, label %267

162:                                              ; preds = %161
  br i1 %122, label %174, label %163

163:                                              ; preds = %162
  %164 = load i16, ptr %138, align 2, !tbaa !39
  store i16 %164, ptr %141, align 2, !tbaa !39
  %165 = getelementptr inbounds nuw i8, ptr %138, i64 2
  %166 = load i16, ptr %165, align 2, !tbaa !39
  %167 = getelementptr inbounds nuw i8, ptr %141, i64 2
  store i16 %166, ptr %167, align 2, !tbaa !39
  %168 = getelementptr inbounds nuw i8, ptr %138, i64 4
  %169 = load i16, ptr %168, align 2, !tbaa !39
  %170 = getelementptr inbounds nuw i8, ptr %141, i64 4
  store i16 %169, ptr %170, align 2, !tbaa !39
  %171 = getelementptr inbounds nuw i8, ptr %141, i64 6
  store i16 -1, ptr %171, align 2, !tbaa !39
  %172 = getelementptr inbounds nuw i8, ptr %138, i64 6
  %173 = getelementptr inbounds nuw i8, ptr %141, i64 8
  br label %174

174:                                              ; preds = %163, %162
  %175 = phi i32 [ %117, %162 ], [ %123, %163 ]
  %176 = phi ptr [ %141, %162 ], [ %173, %163 ]
  %177 = phi ptr [ %138, %162 ], [ %172, %163 ]
  br i1 %124, label %267, label %241

178:                                              ; preds = %132
  br i1 %118, label %179, label %267

179:                                              ; preds = %178
  br i1 %126, label %189, label %180

180:                                              ; preds = %179
  %181 = load i16, ptr %138, align 2, !tbaa !39
  %182 = getelementptr inbounds nuw i8, ptr %141, i64 4
  store i16 %181, ptr %182, align 2, !tbaa !39
  %183 = getelementptr inbounds nuw i8, ptr %141, i64 2
  store i16 %181, ptr %183, align 2, !tbaa !39
  store i16 %181, ptr %141, align 2, !tbaa !39
  %184 = getelementptr inbounds nuw i8, ptr %138, i64 2
  %185 = load i16, ptr %184, align 2, !tbaa !39
  %186 = getelementptr inbounds nuw i8, ptr %141, i64 6
  store i16 %185, ptr %186, align 2, !tbaa !39
  %187 = getelementptr inbounds nuw i8, ptr %138, i64 4
  %188 = getelementptr inbounds nuw i8, ptr %141, i64 8
  br label %189

189:                                              ; preds = %180, %179
  %190 = phi i32 [ %117, %179 ], [ %127, %180 ]
  %191 = phi ptr [ %141, %179 ], [ %188, %180 ]
  %192 = phi ptr [ %138, %179 ], [ %187, %180 ]
  br i1 %128, label %267, label %219

193:                                              ; preds = %157, %193
  %194 = phi i32 [ %217, %193 ], [ %158, %157 ]
  %195 = phi ptr [ %216, %193 ], [ %159, %157 ]
  %196 = phi ptr [ %215, %193 ], [ %160, %157 ]
  %197 = load i16, ptr %196, align 2, !tbaa !39
  %198 = insertelement <4 x i16> <i16 poison, i16 -1, i16 poison, i16 poison>, i16 %197, i64 0
  %199 = shufflevector <4 x i16> %198, <4 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x i16> %199, ptr %195, align 2, !tbaa !39
  %200 = getelementptr inbounds nuw i8, ptr %196, i64 2
  %201 = getelementptr inbounds nuw i8, ptr %195, i64 8
  %202 = load i16, ptr %200, align 2, !tbaa !39
  %203 = insertelement <4 x i16> <i16 poison, i16 -1, i16 poison, i16 poison>, i16 %202, i64 0
  %204 = shufflevector <4 x i16> %203, <4 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x i16> %204, ptr %201, align 2, !tbaa !39
  %205 = getelementptr inbounds nuw i8, ptr %196, i64 4
  %206 = getelementptr inbounds nuw i8, ptr %195, i64 16
  %207 = load i16, ptr %205, align 2, !tbaa !39
  %208 = insertelement <4 x i16> <i16 poison, i16 -1, i16 poison, i16 poison>, i16 %207, i64 0
  %209 = shufflevector <4 x i16> %208, <4 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x i16> %209, ptr %206, align 2, !tbaa !39
  %210 = getelementptr inbounds nuw i8, ptr %196, i64 6
  %211 = getelementptr inbounds nuw i8, ptr %195, i64 24
  %212 = load i16, ptr %210, align 2, !tbaa !39
  %213 = insertelement <4 x i16> <i16 poison, i16 -1, i16 poison, i16 poison>, i16 %212, i64 0
  %214 = shufflevector <4 x i16> %213, <4 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x i16> %214, ptr %211, align 2, !tbaa !39
  %215 = getelementptr inbounds nuw i8, ptr %196, i64 8
  %216 = getelementptr inbounds nuw i8, ptr %195, i64 32
  %217 = add nsw i32 %194, -4
  %218 = icmp eq i32 %194, 3
  br i1 %218, label %267, label %193, !llvm.loop !223

219:                                              ; preds = %189, %219
  %220 = phi i32 [ %239, %219 ], [ %190, %189 ]
  %221 = phi ptr [ %238, %219 ], [ %191, %189 ]
  %222 = phi ptr [ %237, %219 ], [ %192, %189 ]
  %223 = load i16, ptr %222, align 2, !tbaa !39
  %224 = getelementptr inbounds nuw i8, ptr %221, i64 4
  store i16 %223, ptr %224, align 2, !tbaa !39
  %225 = getelementptr inbounds nuw i8, ptr %221, i64 2
  store i16 %223, ptr %225, align 2, !tbaa !39
  store i16 %223, ptr %221, align 2, !tbaa !39
  %226 = getelementptr inbounds nuw i8, ptr %222, i64 2
  %227 = load i16, ptr %226, align 2, !tbaa !39
  %228 = getelementptr inbounds nuw i8, ptr %221, i64 6
  store i16 %227, ptr %228, align 2, !tbaa !39
  %229 = getelementptr inbounds nuw i8, ptr %222, i64 4
  %230 = getelementptr inbounds nuw i8, ptr %221, i64 8
  %231 = load i16, ptr %229, align 2, !tbaa !39
  %232 = getelementptr inbounds nuw i8, ptr %221, i64 12
  store i16 %231, ptr %232, align 2, !tbaa !39
  %233 = getelementptr inbounds nuw i8, ptr %221, i64 10
  store i16 %231, ptr %233, align 2, !tbaa !39
  store i16 %231, ptr %230, align 2, !tbaa !39
  %234 = getelementptr inbounds nuw i8, ptr %222, i64 6
  %235 = load i16, ptr %234, align 2, !tbaa !39
  %236 = getelementptr inbounds nuw i8, ptr %221, i64 14
  store i16 %235, ptr %236, align 2, !tbaa !39
  %237 = getelementptr inbounds nuw i8, ptr %222, i64 8
  %238 = getelementptr inbounds nuw i8, ptr %221, i64 16
  %239 = add nsw i32 %220, -2
  %240 = icmp eq i32 %220, 1
  br i1 %240, label %267, label %219, !llvm.loop !224

241:                                              ; preds = %174, %241
  %242 = phi i32 [ %265, %241 ], [ %175, %174 ]
  %243 = phi ptr [ %264, %241 ], [ %176, %174 ]
  %244 = phi ptr [ %263, %241 ], [ %177, %174 ]
  %245 = load i16, ptr %244, align 2, !tbaa !39
  store i16 %245, ptr %243, align 2, !tbaa !39
  %246 = getelementptr inbounds nuw i8, ptr %244, i64 2
  %247 = load i16, ptr %246, align 2, !tbaa !39
  %248 = getelementptr inbounds nuw i8, ptr %243, i64 2
  store i16 %247, ptr %248, align 2, !tbaa !39
  %249 = getelementptr inbounds nuw i8, ptr %244, i64 4
  %250 = load i16, ptr %249, align 2, !tbaa !39
  %251 = getelementptr inbounds nuw i8, ptr %243, i64 4
  store i16 %250, ptr %251, align 2, !tbaa !39
  %252 = getelementptr inbounds nuw i8, ptr %243, i64 6
  store i16 -1, ptr %252, align 2, !tbaa !39
  %253 = getelementptr inbounds nuw i8, ptr %244, i64 6
  %254 = getelementptr inbounds nuw i8, ptr %243, i64 8
  %255 = load i16, ptr %253, align 2, !tbaa !39
  store i16 %255, ptr %254, align 2, !tbaa !39
  %256 = getelementptr inbounds nuw i8, ptr %244, i64 8
  %257 = load i16, ptr %256, align 2, !tbaa !39
  %258 = getelementptr inbounds nuw i8, ptr %243, i64 10
  store i16 %257, ptr %258, align 2, !tbaa !39
  %259 = getelementptr inbounds nuw i8, ptr %244, i64 10
  %260 = load i16, ptr %259, align 2, !tbaa !39
  %261 = getelementptr inbounds nuw i8, ptr %243, i64 12
  store i16 %260, ptr %261, align 2, !tbaa !39
  %262 = getelementptr inbounds nuw i8, ptr %243, i64 14
  store i16 -1, ptr %262, align 2, !tbaa !39
  %263 = getelementptr inbounds nuw i8, ptr %244, i64 12
  %264 = getelementptr inbounds nuw i8, ptr %243, i64 16
  %265 = add nsw i32 %242, -2
  %266 = icmp eq i32 %242, 1
  br i1 %266, label %267, label %241, !llvm.loop !225

267:                                              ; preds = %174, %241, %189, %219, %157, %193, %178, %161, %142
  %268 = add nuw nsw i64 %133, 1
  %269 = icmp eq i64 %268, %120
  br i1 %269, label %271, label %132, !llvm.loop !226

270:                                              ; preds = %114, %96
  store i32 4, ptr %93, align 4, !tbaa !142
  br label %286

271:                                              ; preds = %267, %109
  store i32 4, ptr %93, align 4, !tbaa !142
  br label %278

272:                                              ; preds = %82
  %273 = load i32, ptr %85, align 8, !tbaa !24
  %274 = getelementptr inbounds nuw i8, ptr %85, i64 4
  %275 = load i32, ptr %274, align 4, !tbaa !25
  %276 = tail call fastcc ptr @stbi__convert_format(ptr noundef %84, i32 noundef %87, i32 noundef %273, i32 noundef %275) #17
  store i32 4, ptr %86, align 4, !tbaa !142
  %277 = icmp eq ptr %276, null
  br i1 %277, label %286, label %278

278:                                              ; preds = %272, %271, %89, %82
  %279 = phi ptr [ %85, %272 ], [ %85, %82 ], [ %92, %271 ], [ %92, %89 ]
  %280 = phi ptr [ %276, %272 ], [ %84, %82 ], [ %112, %271 ], [ %91, %89 ]
  %281 = load i32, ptr %279, align 8, !tbaa !24
  store i32 %281, ptr %1, align 4, !tbaa !4
  %282 = getelementptr inbounds nuw i8, ptr %279, i64 4
  %283 = load i32, ptr %282, align 4, !tbaa !25
  store i32 %283, ptr %2, align 4, !tbaa !4
  %284 = getelementptr inbounds nuw i8, ptr %279, i64 8
  %285 = load i32, ptr %284, align 8, !tbaa !71
  store i32 %285, ptr %3, align 4, !tbaa !4
  br label %286

286:                                              ; preds = %72, %80, %270, %272, %278
  %287 = phi ptr [ null, %270 ], [ null, %80 ], [ null, %272 ], [ %280, %278 ], [ null, %72 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  br label %4513

288:                                              ; preds = %65
  %289 = load ptr, ptr %24, align 8, !tbaa !15
  store ptr %289, ptr %17, align 8, !tbaa !16
  %290 = getelementptr inbounds nuw i8, ptr %0, i64 216
  %291 = load ptr, ptr %290, align 8, !tbaa !17
  store ptr %291, ptr %18, align 8, !tbaa !18
  %292 = icmp ult ptr %289, %291
  br i1 %292, label %293, label %296

293:                                              ; preds = %288
  %294 = getelementptr inbounds nuw i8, ptr %289, i64 1
  store ptr %294, ptr %17, align 8, !tbaa !16
  %295 = load i8, ptr %289, align 1, !tbaa !35
  br label %321

296:                                              ; preds = %288
  %297 = load i32, ptr %19, align 8, !tbaa !13
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %372, label %299

299:                                              ; preds = %296
  %300 = load ptr, ptr %20, align 8, !tbaa !8
  %301 = load ptr, ptr %21, align 8, !tbaa !33
  %302 = load i32, ptr %23, align 4, !tbaa !34
  %303 = tail call i32 %300(ptr noundef %301, ptr noundef nonnull %22, i32 noundef %302) #16
  %304 = load ptr, ptr %17, align 8, !tbaa !16
  %305 = load ptr, ptr %24, align 8, !tbaa !15
  %306 = ptrtoint ptr %304 to i64
  %307 = ptrtoint ptr %305 to i64
  %308 = sub i64 %306, %307
  %309 = trunc i64 %308 to i32
  %310 = load i32, ptr %25, align 8, !tbaa !14
  %311 = add i32 %310, %309
  store i32 %311, ptr %25, align 8, !tbaa !14
  %312 = icmp eq i32 %303, 0
  br i1 %312, label %313, label %314

313:                                              ; preds = %299
  store i32 0, ptr %19, align 8, !tbaa !13
  store i8 0, ptr %22, align 8, !tbaa !35
  br label %318

314:                                              ; preds = %299
  %315 = sext i32 %303 to i64
  %316 = getelementptr inbounds i8, ptr %22, i64 %315
  %317 = load i8, ptr %22, align 1, !tbaa !35
  br label %318

318:                                              ; preds = %314, %313
  %319 = phi i8 [ 0, %313 ], [ %317, %314 ]
  %320 = phi ptr [ %26, %313 ], [ %316, %314 ]
  store ptr %320, ptr %18, align 8, !tbaa !18
  store ptr %26, ptr %17, align 8, !tbaa !16
  br label %321

321:                                              ; preds = %318, %293
  %322 = phi ptr [ %289, %293 ], [ %305, %318 ]
  %323 = phi ptr [ %291, %293 ], [ %320, %318 ]
  %324 = phi ptr [ %294, %293 ], [ %26, %318 ]
  %325 = phi i8 [ %295, %293 ], [ %319, %318 ]
  %326 = icmp eq i8 %325, 66
  br i1 %326, label %327, label %372

327:                                              ; preds = %321
  %328 = icmp ult ptr %324, %323
  br i1 %328, label %329, label %332

329:                                              ; preds = %327
  %330 = getelementptr inbounds nuw i8, ptr %324, i64 1
  store ptr %330, ptr %17, align 8, !tbaa !16
  %331 = load i8, ptr %324, align 1, !tbaa !35
  br label %357

332:                                              ; preds = %327
  %333 = load i32, ptr %19, align 8, !tbaa !13
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %372, label %335

335:                                              ; preds = %332
  %336 = load ptr, ptr %20, align 8, !tbaa !8
  %337 = load ptr, ptr %21, align 8, !tbaa !33
  %338 = load i32, ptr %23, align 4, !tbaa !34
  %339 = tail call i32 %336(ptr noundef %337, ptr noundef nonnull %22, i32 noundef %338) #16
  %340 = load ptr, ptr %17, align 8, !tbaa !16
  %341 = load ptr, ptr %24, align 8, !tbaa !15
  %342 = ptrtoint ptr %340 to i64
  %343 = ptrtoint ptr %341 to i64
  %344 = sub i64 %342, %343
  %345 = trunc i64 %344 to i32
  %346 = load i32, ptr %25, align 8, !tbaa !14
  %347 = add i32 %346, %345
  store i32 %347, ptr %25, align 8, !tbaa !14
  %348 = icmp eq i32 %339, 0
  br i1 %348, label %349, label %350

349:                                              ; preds = %335
  store i32 0, ptr %19, align 8, !tbaa !13
  store i8 0, ptr %22, align 8, !tbaa !35
  br label %354

350:                                              ; preds = %335
  %351 = sext i32 %339 to i64
  %352 = getelementptr inbounds i8, ptr %22, i64 %351
  %353 = load i8, ptr %22, align 1, !tbaa !35
  br label %354

354:                                              ; preds = %350, %349
  %355 = phi i8 [ 0, %349 ], [ %353, %350 ]
  %356 = phi ptr [ %26, %349 ], [ %352, %350 ]
  store ptr %356, ptr %18, align 8, !tbaa !18
  store ptr %26, ptr %17, align 8, !tbaa !16
  br label %357

357:                                              ; preds = %354, %329
  %358 = phi ptr [ %322, %329 ], [ %341, %354 ]
  %359 = phi i8 [ %331, %329 ], [ %355, %354 ]
  %360 = icmp eq i8 %359, 77
  br i1 %360, label %361, label %372

361:                                              ; preds = %357
  %362 = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) #17
  %363 = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) #17
  %364 = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) #17
  %365 = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) #17
  %366 = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) #17
  %367 = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) #17
  %368 = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) #17
  %369 = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) #17
  %370 = shl nuw i32 %369, 16
  %371 = or disjoint i32 %370, %368
  switch i32 %371, label %377 [
    i32 108, label %375
    i32 56, label %375
    i32 40, label %375
    i32 12, label %375
  ]

372:                                              ; preds = %357, %321, %296, %332
  %373 = phi ptr [ %358, %357 ], [ %322, %321 ], [ %289, %296 ], [ %322, %332 ]
  store ptr %373, ptr %17, align 8, !tbaa !16
  %374 = load ptr, ptr %290, align 8, !tbaa !17
  store ptr %374, ptr %18, align 8, !tbaa !18
  br label %1457

375:                                              ; preds = %361, %361, %361, %361
  %376 = load <2 x ptr>, ptr %24, align 8, !tbaa !23
  store <2 x ptr> %376, ptr %17, align 8, !tbaa !23
  br label %381

377:                                              ; preds = %361
  %378 = icmp eq i32 %371, 124
  %379 = load ptr, ptr %24, align 8, !tbaa !15
  store ptr %379, ptr %17, align 8, !tbaa !16
  %380 = load ptr, ptr %290, align 8, !tbaa !17
  store ptr %380, ptr %18, align 8, !tbaa !18
  br i1 %378, label %381, label %1457

381:                                              ; preds = %375, %377
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15
  %382 = getelementptr inbounds nuw i8, ptr %12, i64 28
  store i32 255, ptr %382, align 4, !tbaa !31
  %383 = call fastcc ptr @stbi__bmp_parse_header(ptr noundef nonnull %0, ptr noundef %12) #17
  %384 = icmp eq ptr %383, null
  br i1 %384, label %1455, label %385

385:                                              ; preds = %381
  %386 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %387 = load i32, ptr %386, align 4, !tbaa !25
  %388 = icmp sgt i32 %387, 0
  %389 = tail call noundef range(i32 0, -2147483647) i32 @llvm.abs.i32(i32 %387, i1 false)
  store i32 %389, ptr %386, align 4, !tbaa !25
  %390 = icmp ugt i32 %389, 4096
  br i1 %390, label %1455, label %391

391:                                              ; preds = %385
  %392 = load i32, ptr %0, align 8, !tbaa !24
  %393 = icmp ugt i32 %392, 4096
  br i1 %393, label %1455, label %394

394:                                              ; preds = %391
  %395 = getelementptr inbounds nuw i8, ptr %12, i64 12
  %396 = load i32, ptr %395, align 4, !tbaa !216
  %397 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %398 = load i32, ptr %397, align 4, !tbaa !217
  %399 = getelementptr inbounds nuw i8, ptr %12, i64 20
  %400 = load i32, ptr %399, align 4, !tbaa !218
  %401 = getelementptr inbounds nuw i8, ptr %12, i64 24
  %402 = load i32, ptr %401, align 4, !tbaa !219
  %403 = load i32, ptr %382, align 4, !tbaa !31
  %404 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %405 = load i32, ptr %404, align 4, !tbaa !213
  %406 = icmp eq i32 %405, 12
  %407 = load i32, ptr %12, align 4, !tbaa !215
  br i1 %406, label %408, label %418

408:                                              ; preds = %394
  %409 = icmp slt i32 %407, 24
  br i1 %409, label %410, label %434

410:                                              ; preds = %408
  %411 = getelementptr inbounds nuw i8, ptr %12, i64 4
  %412 = load i32, ptr %411, align 4, !tbaa !212
  %413 = getelementptr inbounds nuw i8, ptr %12, i64 32
  %414 = load i32, ptr %413, align 4, !tbaa !214
  %415 = add i32 %412, -24
  %416 = sub i32 %415, %414
  %417 = sdiv i32 %416, 3
  br label %428

418:                                              ; preds = %394
  %419 = icmp slt i32 %407, 16
  br i1 %419, label %420, label %434

420:                                              ; preds = %418
  %421 = getelementptr inbounds nuw i8, ptr %12, i64 4
  %422 = load i32, ptr %421, align 4, !tbaa !212
  %423 = getelementptr inbounds nuw i8, ptr %12, i64 32
  %424 = load i32, ptr %423, align 4, !tbaa !214
  %425 = add i32 %405, %424
  %426 = sub i32 %422, %425
  %427 = ashr i32 %426, 2
  br label %428

428:                                              ; preds = %420, %410
  %429 = phi i32 [ %412, %410 ], [ %422, %420 ]
  %430 = phi i32 [ %417, %410 ], [ %427, %420 ]
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %434, label %432

432:                                              ; preds = %428
  %433 = icmp eq i32 %402, -16777216
  br label %456

434:                                              ; preds = %428, %418, %408
  %435 = load i32, ptr %25, align 8, !tbaa !14
  %436 = load ptr, ptr %17, align 8, !tbaa !16
  %437 = load ptr, ptr %24, align 8, !tbaa !15
  %438 = ptrtoint ptr %436 to i64
  %439 = ptrtoint ptr %437 to i64
  %440 = sub i64 %438, %439
  %441 = trunc i64 %440 to i32
  %442 = add i32 %435, %441
  %443 = add i32 %442, -1025
  %444 = icmp ult i32 %443, -1024
  br i1 %444, label %1455, label %445

445:                                              ; preds = %434
  %446 = getelementptr inbounds nuw i8, ptr %12, i64 4
  %447 = load i32, ptr %446, align 4, !tbaa !212
  %448 = icmp slt i32 %447, %442
  br i1 %448, label %1455, label %449

449:                                              ; preds = %445
  %450 = sub nsw i32 %447, %442
  %451 = icmp sgt i32 %450, 1024
  br i1 %451, label %1455, label %452

452:                                              ; preds = %449
  tail call fastcc void @stbi__skip(ptr noundef nonnull %0, i32 noundef %450) #17
  %453 = icmp eq i32 %407, 24
  %454 = icmp eq i32 %402, -16777216
  %455 = select i1 %453, i1 %454, i1 false
  br i1 %455, label %463, label %456

456:                                              ; preds = %452, %432
  %457 = phi i1 [ %433, %432 ], [ %454, %452 ]
  %458 = phi i32 [ %430, %432 ], [ 0, %452 ]
  %459 = phi i1 [ false, %432 ], [ true, %452 ]
  %460 = phi i32 [ %429, %432 ], [ %447, %452 ]
  %461 = icmp eq i32 %402, 0
  %462 = select i1 %461, i32 3, i32 4
  br label %463

463:                                              ; preds = %456, %452
  %464 = phi i1 [ %457, %456 ], [ true, %452 ]
  %465 = phi i32 [ %458, %456 ], [ 0, %452 ]
  %466 = phi i1 [ %459, %456 ], [ true, %452 ]
  %467 = phi i32 [ %407, %456 ], [ 24, %452 ]
  %468 = phi i32 [ %460, %456 ], [ %447, %452 ]
  %469 = phi i32 [ %462, %456 ], [ 3, %452 ]
  %470 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %469, ptr %470, align 8, !tbaa !71
  %471 = load i32, ptr %0, align 8, !tbaa !24
  %472 = load i32, ptr %386, align 4, !tbaa !25
  %473 = icmp ugt i32 %471, 536870911
  br i1 %473, label %1455, label %474

474:                                              ; preds = %463
  %475 = shl nuw nsw i32 %471, 2
  %476 = icmp sgt i32 %472, -1
  br i1 %476, label %477, label %1455

477:                                              ; preds = %474
  %478 = icmp eq i32 %472, 0
  br i1 %478, label %482, label %479

479:                                              ; preds = %477
  %480 = udiv i32 2147483647, %472
  %481 = icmp samesign ugt i32 %475, %480
  br i1 %481, label %1455, label %482

482:                                              ; preds = %479, %477
  %483 = mul i32 %475, %472
  %484 = sext i32 %483 to i64
  %485 = add nsw i64 %484, 15
  %486 = and i64 %485, -16
  %487 = add nsw i64 %486, 16
  %488 = load i64, ptr @arena_used, align 8, !tbaa !19
  %489 = sub i64 100663296, %488
  %490 = icmp ugt i64 %487, %489
  br i1 %490, label %1455, label %491

491:                                              ; preds = %482
  %492 = getelementptr inbounds nuw i8, ptr @arena, i64 %488
  %493 = add i64 %488, %487
  store i64 %493, ptr @arena_used, align 8, !tbaa !19
  store i64 %484, ptr %492, align 8, !tbaa !19
  %494 = getelementptr inbounds nuw i8, ptr %492, i64 16
  %495 = icmp slt i32 %467, 16
  br i1 %495, label %496, label %989

496:                                              ; preds = %491
  %497 = icmp sgt i32 %465, 256
  %498 = or i1 %466, %497
  br i1 %498, label %1455, label %499

499:                                              ; preds = %496
  %500 = icmp sgt i32 %465, 0
  br i1 %500, label %501, label %657

501:                                              ; preds = %499
  %502 = zext nneg i32 %465 to i64
  %503 = load ptr, ptr %17, align 8, !tbaa !16
  %504 = load ptr, ptr %18, align 8, !tbaa !18
  br label %505

505:                                              ; preds = %649, %501
  %506 = phi ptr [ %504, %501 ], [ %650, %649 ]
  %507 = phi ptr [ %503, %501 ], [ %651, %649 ]
  %508 = phi ptr [ %504, %501 ], [ %652, %649 ]
  %509 = phi ptr [ %503, %501 ], [ %653, %649 ]
  %510 = phi i64 [ 0, %501 ], [ %655, %649 ]
  %511 = icmp ult ptr %509, %508
  br i1 %511, label %512, label %515

512:                                              ; preds = %505
  %513 = getelementptr inbounds nuw i8, ptr %509, i64 1
  store ptr %513, ptr %17, align 8, !tbaa !16
  %514 = load i8, ptr %509, align 1, !tbaa !35
  br label %540

515:                                              ; preds = %505
  %516 = load i32, ptr %19, align 8, !tbaa !13
  %517 = icmp eq i32 %516, 0
  br i1 %517, label %540, label %518

518:                                              ; preds = %515
  %519 = load ptr, ptr %20, align 8, !tbaa !8
  %520 = load ptr, ptr %21, align 8, !tbaa !33
  %521 = load i32, ptr %23, align 4, !tbaa !34
  %522 = tail call i32 %519(ptr noundef %520, ptr noundef nonnull %22, i32 noundef %521) #16
  %523 = load ptr, ptr %17, align 8, !tbaa !16
  %524 = load ptr, ptr %24, align 8, !tbaa !15
  %525 = ptrtoint ptr %523 to i64
  %526 = ptrtoint ptr %524 to i64
  %527 = sub i64 %525, %526
  %528 = trunc i64 %527 to i32
  %529 = load i32, ptr %25, align 8, !tbaa !14
  %530 = add i32 %529, %528
  store i32 %530, ptr %25, align 8, !tbaa !14
  %531 = icmp eq i32 %522, 0
  br i1 %531, label %532, label %533

532:                                              ; preds = %518
  store i32 0, ptr %19, align 8, !tbaa !13
  store i8 0, ptr %22, align 8, !tbaa !35
  br label %537

533:                                              ; preds = %518
  %534 = sext i32 %522 to i64
  %535 = getelementptr inbounds i8, ptr %22, i64 %534
  %536 = load i8, ptr %22, align 1, !tbaa !35
  br label %537

537:                                              ; preds = %533, %532
  %538 = phi i8 [ 0, %532 ], [ %536, %533 ]
  %539 = phi ptr [ %26, %532 ], [ %535, %533 ]
  store ptr %539, ptr %18, align 8, !tbaa !18
  store ptr %26, ptr %17, align 8, !tbaa !16
  br label %540

540:                                              ; preds = %537, %515, %512
  %541 = phi ptr [ %506, %512 ], [ %539, %537 ], [ %506, %515 ]
  %542 = phi ptr [ %513, %512 ], [ %26, %537 ], [ %507, %515 ]
  %543 = phi ptr [ %508, %512 ], [ %539, %537 ], [ %508, %515 ]
  %544 = phi ptr [ %513, %512 ], [ %26, %537 ], [ %509, %515 ]
  %545 = phi i8 [ %514, %512 ], [ %538, %537 ], [ 0, %515 ]
  %546 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %510
  %547 = getelementptr inbounds nuw i8, ptr %546, i64 2
  store i8 %545, ptr %547, align 2, !tbaa !35
  %548 = icmp ult ptr %544, %543
  br i1 %548, label %549, label %552

549:                                              ; preds = %540
  %550 = getelementptr inbounds nuw i8, ptr %544, i64 1
  store ptr %550, ptr %17, align 8, !tbaa !16
  %551 = load i8, ptr %544, align 1, !tbaa !35
  br label %577

552:                                              ; preds = %540
  %553 = load i32, ptr %19, align 8, !tbaa !13
  %554 = icmp eq i32 %553, 0
  br i1 %554, label %577, label %555

555:                                              ; preds = %552
  %556 = load ptr, ptr %20, align 8, !tbaa !8
  %557 = load ptr, ptr %21, align 8, !tbaa !33
  %558 = load i32, ptr %23, align 4, !tbaa !34
  %559 = tail call i32 %556(ptr noundef %557, ptr noundef nonnull %22, i32 noundef %558) #16
  %560 = load ptr, ptr %17, align 8, !tbaa !16
  %561 = load ptr, ptr %24, align 8, !tbaa !15
  %562 = ptrtoint ptr %560 to i64
  %563 = ptrtoint ptr %561 to i64
  %564 = sub i64 %562, %563
  %565 = trunc i64 %564 to i32
  %566 = load i32, ptr %25, align 8, !tbaa !14
  %567 = add i32 %566, %565
  store i32 %567, ptr %25, align 8, !tbaa !14
  %568 = icmp eq i32 %559, 0
  br i1 %568, label %569, label %570

569:                                              ; preds = %555
  store i32 0, ptr %19, align 8, !tbaa !13
  store i8 0, ptr %22, align 8, !tbaa !35
  br label %574

570:                                              ; preds = %555
  %571 = sext i32 %559 to i64
  %572 = getelementptr inbounds i8, ptr %22, i64 %571
  %573 = load i8, ptr %22, align 1, !tbaa !35
  br label %574

574:                                              ; preds = %570, %569
  %575 = phi i8 [ 0, %569 ], [ %573, %570 ]
  %576 = phi ptr [ %26, %569 ], [ %572, %570 ]
  store ptr %576, ptr %18, align 8, !tbaa !18
  store ptr %26, ptr %17, align 8, !tbaa !16
  br label %577

577:                                              ; preds = %574, %552, %549
  %578 = phi ptr [ %541, %549 ], [ %576, %574 ], [ %541, %552 ]
  %579 = phi ptr [ %550, %549 ], [ %26, %574 ], [ %542, %552 ]
  %580 = phi ptr [ %543, %549 ], [ %576, %574 ], [ %543, %552 ]
  %581 = phi ptr [ %550, %549 ], [ %26, %574 ], [ %544, %552 ]
  %582 = phi i8 [ %551, %549 ], [ %575, %574 ], [ 0, %552 ]
  %583 = getelementptr inbounds nuw i8, ptr %546, i64 1
  store i8 %582, ptr %583, align 1, !tbaa !35
  %584 = icmp ult ptr %581, %580
  br i1 %584, label %585, label %588

585:                                              ; preds = %577
  %586 = getelementptr inbounds nuw i8, ptr %581, i64 1
  store ptr %586, ptr %17, align 8, !tbaa !16
  %587 = load i8, ptr %581, align 1, !tbaa !35
  br label %613

588:                                              ; preds = %577
  %589 = load i32, ptr %19, align 8, !tbaa !13
  %590 = icmp eq i32 %589, 0
  br i1 %590, label %613, label %591

591:                                              ; preds = %588
  %592 = load ptr, ptr %20, align 8, !tbaa !8
  %593 = load ptr, ptr %21, align 8, !tbaa !33
  %594 = load i32, ptr %23, align 4, !tbaa !34
  %595 = tail call i32 %592(ptr noundef %593, ptr noundef nonnull %22, i32 noundef %594) #16
  %596 = load ptr, ptr %17, align 8, !tbaa !16
  %597 = load ptr, ptr %24, align 8, !tbaa !15
  %598 = ptrtoint ptr %596 to i64
  %599 = ptrtoint ptr %597 to i64
  %600 = sub i64 %598, %599
  %601 = trunc i64 %600 to i32
  %602 = load i32, ptr %25, align 8, !tbaa !14
  %603 = add i32 %602, %601
  store i32 %603, ptr %25, align 8, !tbaa !14
  %604 = icmp eq i32 %595, 0
  br i1 %604, label %605, label %606

605:                                              ; preds = %591
  store i32 0, ptr %19, align 8, !tbaa !13
  store i8 0, ptr %22, align 8, !tbaa !35
  br label %610

606:                                              ; preds = %591
  %607 = sext i32 %595 to i64
  %608 = getelementptr inbounds i8, ptr %22, i64 %607
  %609 = load i8, ptr %22, align 1, !tbaa !35
  br label %610

610:                                              ; preds = %606, %605
  %611 = phi i8 [ 0, %605 ], [ %609, %606 ]
  %612 = phi ptr [ %26, %605 ], [ %608, %606 ]
  store ptr %612, ptr %18, align 8, !tbaa !18
  store ptr %26, ptr %17, align 8, !tbaa !16
  br label %613

613:                                              ; preds = %610, %588, %585
  %614 = phi ptr [ %578, %585 ], [ %612, %610 ], [ %578, %588 ]
  %615 = phi ptr [ %586, %585 ], [ %26, %610 ], [ %579, %588 ]
  %616 = phi ptr [ %580, %585 ], [ %612, %610 ], [ %580, %588 ]
  %617 = phi ptr [ %586, %585 ], [ %26, %610 ], [ %581, %588 ]
  %618 = phi i8 [ %587, %585 ], [ %611, %610 ], [ 0, %588 ]
  store i8 %618, ptr %546, align 4, !tbaa !35
  br i1 %406, label %649, label %619

619:                                              ; preds = %613
  %620 = icmp ult ptr %615, %614
  br i1 %620, label %621, label %623

621:                                              ; preds = %619
  %622 = getelementptr inbounds nuw i8, ptr %615, i64 1
  br label %646

623:                                              ; preds = %619
  %624 = load i32, ptr %19, align 8, !tbaa !13
  %625 = icmp eq i32 %624, 0
  br i1 %625, label %649, label %626

626:                                              ; preds = %623
  %627 = load ptr, ptr %20, align 8, !tbaa !8
  %628 = load ptr, ptr %21, align 8, !tbaa !33
  %629 = load i32, ptr %23, align 4, !tbaa !34
  %630 = tail call i32 %627(ptr noundef %628, ptr noundef nonnull %22, i32 noundef %629) #16
  %631 = load ptr, ptr %17, align 8, !tbaa !16
  %632 = load ptr, ptr %24, align 8, !tbaa !15
  %633 = ptrtoint ptr %631 to i64
  %634 = ptrtoint ptr %632 to i64
  %635 = sub i64 %633, %634
  %636 = trunc i64 %635 to i32
  %637 = load i32, ptr %25, align 8, !tbaa !14
  %638 = add i32 %637, %636
  store i32 %638, ptr %25, align 8, !tbaa !14
  %639 = icmp eq i32 %630, 0
  br i1 %639, label %640, label %641

640:                                              ; preds = %626
  store i32 0, ptr %19, align 8, !tbaa !13
  store i8 0, ptr %22, align 8, !tbaa !35
  br label %644

641:                                              ; preds = %626
  %642 = sext i32 %630 to i64
  %643 = getelementptr inbounds i8, ptr %22, i64 %642
  br label %644

644:                                              ; preds = %641, %640
  %645 = phi ptr [ %26, %640 ], [ %643, %641 ]
  store ptr %645, ptr %18, align 8, !tbaa !18
  br label %646

646:                                              ; preds = %644, %621
  %647 = phi ptr [ %26, %644 ], [ %622, %621 ]
  %648 = phi ptr [ %645, %644 ], [ %614, %621 ]
  store ptr %647, ptr %17, align 8, !tbaa !16
  br label %649

649:                                              ; preds = %646, %623, %613
  %650 = phi ptr [ %614, %613 ], [ %614, %623 ], [ %648, %646 ]
  %651 = phi ptr [ %615, %613 ], [ %615, %623 ], [ %647, %646 ]
  %652 = phi ptr [ %616, %613 ], [ %614, %623 ], [ %648, %646 ]
  %653 = phi ptr [ %617, %613 ], [ %615, %623 ], [ %647, %646 ]
  %654 = getelementptr inbounds nuw i8, ptr %546, i64 3
  store i8 -1, ptr %654, align 1, !tbaa !35
  %655 = add nuw nsw i64 %510, 1
  %656 = icmp eq i64 %655, %502
  br i1 %656, label %657, label %505, !llvm.loop !227

657:                                              ; preds = %649, %499
  %658 = getelementptr inbounds nuw i8, ptr %12, i64 32
  %659 = load i32, ptr %658, align 4, !tbaa !214
  %660 = select i1 %406, i32 -3, i32 -4
  %661 = mul i32 %465, %660
  %662 = add i32 %661, %468
  %663 = add i32 %405, %659
  %664 = sub i32 %662, %663
  tail call fastcc void @stbi__skip(ptr noundef nonnull %0, i32 noundef %664) #17
  switch i32 %467, label %1455 [
    i32 1, label %683
    i32 4, label %665
    i32 8, label %669
  ]

665:                                              ; preds = %657
  %666 = load i32, ptr %0, align 8, !tbaa !24
  %667 = add i32 %666, 1
  %668 = lshr i32 %667, 1
  br label %671

669:                                              ; preds = %657
  %670 = load i32, ptr %0, align 8, !tbaa !24
  br label %671

671:                                              ; preds = %669, %665
  %672 = phi i32 [ %670, %669 ], [ %668, %665 ]
  %673 = sub i32 0, %672
  %674 = and i32 %673, 3
  %675 = load i32, ptr %386, align 4, !tbaa !25
  %676 = icmp sgt i32 %675, 0
  br i1 %676, label %677, label %1366

677:                                              ; preds = %671
  %678 = icmp eq i32 %467, 4
  %679 = icmp eq i32 %467, 8
  %680 = icmp eq i32 %674, 0
  %681 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %682 = zext nneg i32 %674 to i64
  br label %835

683:                                              ; preds = %657
  %684 = load i32, ptr %0, align 8, !tbaa !24
  %685 = add i32 %684, 7
  %686 = lshr i32 %685, 3
  %687 = sub nsw i32 0, %686
  %688 = and i32 %687, 3
  %689 = load i32, ptr %386, align 4, !tbaa !25
  %690 = icmp sgt i32 %689, 0
  br i1 %690, label %691, label %1366

691:                                              ; preds = %683
  %692 = icmp eq i32 %688, 0
  %693 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %694 = zext nneg i32 %688 to i64
  br label %695

695:                                              ; preds = %831, %691
  %696 = phi i32 [ 0, %691 ], [ %810, %831 ]
  %697 = phi i32 [ 0, %691 ], [ %832, %831 ]
  %698 = load ptr, ptr %17, align 8, !tbaa !16
  %699 = load ptr, ptr %18, align 8, !tbaa !18
  %700 = icmp ult ptr %698, %699
  br i1 %700, label %701, label %704

701:                                              ; preds = %695
  %702 = getelementptr inbounds nuw i8, ptr %698, i64 1
  store ptr %702, ptr %17, align 8, !tbaa !16
  %703 = load i8, ptr %698, align 1, !tbaa !35
  br label %729

704:                                              ; preds = %695
  %705 = load i32, ptr %19, align 8, !tbaa !13
  %706 = icmp eq i32 %705, 0
  br i1 %706, label %729, label %707

707:                                              ; preds = %704
  %708 = load ptr, ptr %20, align 8, !tbaa !8
  %709 = load ptr, ptr %21, align 8, !tbaa !33
  %710 = load i32, ptr %23, align 4, !tbaa !34
  %711 = tail call i32 %708(ptr noundef %709, ptr noundef nonnull %22, i32 noundef %710) #16
  %712 = load ptr, ptr %17, align 8, !tbaa !16
  %713 = load ptr, ptr %24, align 8, !tbaa !15
  %714 = ptrtoint ptr %712 to i64
  %715 = ptrtoint ptr %713 to i64
  %716 = sub i64 %714, %715
  %717 = trunc i64 %716 to i32
  %718 = load i32, ptr %25, align 8, !tbaa !14
  %719 = add i32 %718, %717
  store i32 %719, ptr %25, align 8, !tbaa !14
  %720 = icmp eq i32 %711, 0
  br i1 %720, label %721, label %722

721:                                              ; preds = %707
  store i32 0, ptr %19, align 8, !tbaa !13
  store i8 0, ptr %22, align 8, !tbaa !35
  br label %726

722:                                              ; preds = %707
  %723 = sext i32 %711 to i64
  %724 = getelementptr inbounds i8, ptr %22, i64 %723
  %725 = load i8, ptr %22, align 1, !tbaa !35
  br label %726

726:                                              ; preds = %722, %721
  %727 = phi i8 [ 0, %721 ], [ %725, %722 ]
  %728 = phi ptr [ %26, %721 ], [ %724, %722 ]
  store ptr %728, ptr %18, align 8, !tbaa !18
  store ptr %26, ptr %17, align 8, !tbaa !16
  br label %729

729:                                              ; preds = %726, %704, %701
  %730 = phi i8 [ %703, %701 ], [ %727, %726 ], [ 0, %704 ]
  %731 = load i32, ptr %0, align 8, !tbaa !24
  %732 = icmp sgt i32 %731, 0
  br i1 %732, label %733, label %809

733:                                              ; preds = %729
  %734 = zext i8 %730 to i32
  br label %735

735:                                              ; preds = %804, %733
  %736 = phi i32 [ %807, %804 ], [ %734, %733 ]
  %737 = phi i32 [ %806, %804 ], [ 7, %733 ]
  %738 = phi i32 [ %758, %804 ], [ %696, %733 ]
  %739 = phi i32 [ %761, %804 ], [ 0, %733 ]
  %740 = lshr i32 %736, %737
  %741 = and i32 %740, 1
  %742 = zext nneg i32 %741 to i64
  %743 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %742
  %744 = load i8, ptr %743, align 4, !tbaa !35
  %745 = add i32 %738, 1
  %746 = sext i32 %738 to i64
  %747 = getelementptr inbounds i8, ptr %494, i64 %746
  store i8 %744, ptr %747, align 1, !tbaa !35
  %748 = getelementptr inbounds nuw i8, ptr %743, i64 1
  %749 = load i8, ptr %748, align 1, !tbaa !35
  %750 = add i32 %738, 2
  %751 = sext i32 %745 to i64
  %752 = getelementptr inbounds i8, ptr %494, i64 %751
  store i8 %749, ptr %752, align 1, !tbaa !35
  %753 = getelementptr inbounds nuw i8, ptr %743, i64 2
  %754 = load i8, ptr %753, align 2, !tbaa !35
  %755 = sext i32 %750 to i64
  %756 = getelementptr inbounds i8, ptr %494, i64 %755
  store i8 %754, ptr %756, align 1, !tbaa !35
  %757 = add i32 %738, 3
  %758 = add i32 %738, 4
  %759 = sext i32 %757 to i64
  %760 = getelementptr inbounds i8, ptr %494, i64 %759
  store i8 -1, ptr %760, align 1, !tbaa !35
  %761 = add nuw nsw i32 %739, 1
  %762 = load i32, ptr %0, align 8, !tbaa !24
  %763 = icmp eq i32 %761, %762
  br i1 %763, label %809, label %764

764:                                              ; preds = %735
  %765 = add nsw i32 %737, -1
  %766 = icmp slt i32 %737, 1
  br i1 %766, label %767, label %804

767:                                              ; preds = %764
  %768 = load ptr, ptr %17, align 8, !tbaa !16
  %769 = load ptr, ptr %18, align 8, !tbaa !18
  %770 = icmp ult ptr %768, %769
  br i1 %770, label %771, label %774

771:                                              ; preds = %767
  %772 = getelementptr inbounds nuw i8, ptr %768, i64 1
  store ptr %772, ptr %17, align 8, !tbaa !16
  %773 = load i8, ptr %768, align 1, !tbaa !35
  br label %800

774:                                              ; preds = %767
  %775 = load i32, ptr %19, align 8, !tbaa !13
  %776 = icmp eq i32 %775, 0
  br i1 %776, label %800, label %777

777:                                              ; preds = %774
  %778 = load ptr, ptr %20, align 8, !tbaa !8
  %779 = load ptr, ptr %21, align 8, !tbaa !33
  %780 = load i32, ptr %23, align 4, !tbaa !34
  %781 = tail call i32 %778(ptr noundef %779, ptr noundef nonnull %22, i32 noundef %780) #16
  %782 = load ptr, ptr %17, align 8, !tbaa !16
  %783 = load ptr, ptr %24, align 8, !tbaa !15
  %784 = ptrtoint ptr %782 to i64
  %785 = ptrtoint ptr %783 to i64
  %786 = sub i64 %784, %785
  %787 = trunc i64 %786 to i32
  %788 = load i32, ptr %25, align 8, !tbaa !14
  %789 = add i32 %788, %787
  store i32 %789, ptr %25, align 8, !tbaa !14
  %790 = icmp eq i32 %781, 0
  br i1 %790, label %791, label %792

791:                                              ; preds = %777
  store i32 0, ptr %19, align 8, !tbaa !13
  store i8 0, ptr %22, align 8, !tbaa !35
  br label %796

792:                                              ; preds = %777
  %793 = sext i32 %781 to i64
  %794 = getelementptr inbounds i8, ptr %22, i64 %793
  %795 = load i8, ptr %22, align 1, !tbaa !35
  br label %796

796:                                              ; preds = %792, %791
  %797 = phi i8 [ 0, %791 ], [ %795, %792 ]
  %798 = phi ptr [ %26, %791 ], [ %794, %792 ]
  store ptr %798, ptr %18, align 8, !tbaa !18
  store ptr %26, ptr %17, align 8, !tbaa !16
  %799 = load i32, ptr %0, align 8, !tbaa !24
  br label %800

800:                                              ; preds = %796, %774, %771
  %801 = phi i32 [ %762, %771 ], [ %799, %796 ], [ %762, %774 ]
  %802 = phi i8 [ %773, %771 ], [ %797, %796 ], [ 0, %774 ]
  %803 = zext i8 %802 to i32
  br label %804

804:                                              ; preds = %800, %764
  %805 = phi i32 [ %762, %764 ], [ %801, %800 ]
  %806 = phi i32 [ %765, %764 ], [ 7, %800 ]
  %807 = phi i32 [ %736, %764 ], [ %803, %800 ]
  %808 = icmp slt i32 %761, %805
  br i1 %808, label %735, label %809, !llvm.loop !228

809:                                              ; preds = %804, %735, %729
  %810 = phi i32 [ %696, %729 ], [ %758, %735 ], [ %758, %804 ]
  br i1 %692, label %831, label %811

811:                                              ; preds = %809
  %812 = load ptr, ptr %20, align 8, !tbaa !8
  %813 = icmp eq ptr %812, null
  br i1 %813, label %814, label %816

814:                                              ; preds = %811
  %815 = load ptr, ptr %17, align 8, !tbaa !16
  br label %828

816:                                              ; preds = %811
  %817 = load ptr, ptr %18, align 8, !tbaa !18
  %818 = load ptr, ptr %17, align 8, !tbaa !16
  %819 = ptrtoint ptr %817 to i64
  %820 = ptrtoint ptr %818 to i64
  %821 = sub i64 %819, %820
  %822 = trunc i64 %821 to i32
  %823 = icmp sgt i32 %688, %822
  br i1 %823, label %824, label %828

824:                                              ; preds = %816
  store ptr %817, ptr %17, align 8, !tbaa !16
  %825 = load ptr, ptr %693, align 8, !tbaa !36
  %826 = load ptr, ptr %21, align 8, !tbaa !33
  %827 = sub i32 %688, %822
  tail call void %825(ptr noundef %826, i32 noundef %827) #16
  br label %831

828:                                              ; preds = %816, %814
  %829 = phi ptr [ %815, %814 ], [ %818, %816 ]
  %830 = getelementptr inbounds nuw i8, ptr %829, i64 %694
  store ptr %830, ptr %17, align 8, !tbaa !16
  br label %831

831:                                              ; preds = %828, %824, %809
  %832 = add nuw nsw i32 %697, 1
  %833 = load i32, ptr %386, align 4, !tbaa !25
  %834 = icmp slt i32 %832, %833
  br i1 %834, label %695, label %1366, !llvm.loop !229

835:                                              ; preds = %985, %677
  %836 = phi i32 [ 0, %677 ], [ %964, %985 ]
  %837 = phi i32 [ 0, %677 ], [ %986, %985 ]
  %838 = load i32, ptr %0, align 8, !tbaa !24
  %839 = icmp sgt i32 %838, 0
  br i1 %839, label %840, label %963

840:                                              ; preds = %835, %939
  %841 = phi i32 [ %959, %939 ], [ %836, %835 ]
  %842 = phi i32 [ %960, %939 ], [ 0, %835 ]
  %843 = load ptr, ptr %17, align 8, !tbaa !16
  %844 = load ptr, ptr %18, align 8, !tbaa !18
  %845 = icmp ult ptr %843, %844
  br i1 %845, label %846, label %849

846:                                              ; preds = %840
  %847 = getelementptr inbounds nuw i8, ptr %843, i64 1
  store ptr %847, ptr %17, align 8, !tbaa !16
  %848 = load i8, ptr %843, align 1, !tbaa !35
  br label %874

849:                                              ; preds = %840
  %850 = load i32, ptr %19, align 8, !tbaa !13
  %851 = icmp eq i32 %850, 0
  br i1 %851, label %874, label %852

852:                                              ; preds = %849
  %853 = load ptr, ptr %20, align 8, !tbaa !8
  %854 = load ptr, ptr %21, align 8, !tbaa !33
  %855 = load i32, ptr %23, align 4, !tbaa !34
  %856 = tail call i32 %853(ptr noundef %854, ptr noundef nonnull %22, i32 noundef %855) #16
  %857 = load ptr, ptr %17, align 8, !tbaa !16
  %858 = load ptr, ptr %24, align 8, !tbaa !15
  %859 = ptrtoint ptr %857 to i64
  %860 = ptrtoint ptr %858 to i64
  %861 = sub i64 %859, %860
  %862 = trunc i64 %861 to i32
  %863 = load i32, ptr %25, align 8, !tbaa !14
  %864 = add i32 %863, %862
  store i32 %864, ptr %25, align 8, !tbaa !14
  %865 = icmp eq i32 %856, 0
  br i1 %865, label %866, label %867

866:                                              ; preds = %852
  store i32 0, ptr %19, align 8, !tbaa !13
  store i8 0, ptr %22, align 8, !tbaa !35
  br label %871

867:                                              ; preds = %852
  %868 = sext i32 %856 to i64
  %869 = getelementptr inbounds i8, ptr %22, i64 %868
  %870 = load i8, ptr %22, align 1, !tbaa !35
  br label %871

871:                                              ; preds = %867, %866
  %872 = phi i8 [ 0, %866 ], [ %870, %867 ]
  %873 = phi ptr [ %26, %866 ], [ %869, %867 ]
  store ptr %873, ptr %18, align 8, !tbaa !18
  store ptr %26, ptr %17, align 8, !tbaa !16
  br label %874

874:                                              ; preds = %871, %849, %846
  %875 = phi i8 [ %848, %846 ], [ %872, %871 ], [ 0, %849 ]
  %876 = zext i8 %875 to i32
  %877 = lshr i32 %876, 4
  %878 = select i1 %678, i32 %877, i32 %876
  %879 = zext nneg i32 %878 to i64
  %880 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %879
  %881 = load i8, ptr %880, align 4, !tbaa !35
  %882 = add i32 %841, 1
  %883 = sext i32 %841 to i64
  %884 = getelementptr inbounds i8, ptr %494, i64 %883
  store i8 %881, ptr %884, align 1, !tbaa !35
  %885 = getelementptr inbounds nuw i8, ptr %880, i64 1
  %886 = load i8, ptr %885, align 1, !tbaa !35
  %887 = add i32 %841, 2
  %888 = sext i32 %882 to i64
  %889 = getelementptr inbounds i8, ptr %494, i64 %888
  store i8 %886, ptr %889, align 1, !tbaa !35
  %890 = getelementptr inbounds nuw i8, ptr %880, i64 2
  %891 = load i8, ptr %890, align 2, !tbaa !35
  %892 = sext i32 %887 to i64
  %893 = getelementptr inbounds i8, ptr %494, i64 %892
  store i8 %891, ptr %893, align 1, !tbaa !35
  %894 = add i32 %841, 3
  %895 = add i32 %841, 4
  %896 = sext i32 %894 to i64
  %897 = getelementptr inbounds i8, ptr %494, i64 %896
  store i8 -1, ptr %897, align 1, !tbaa !35
  %898 = or disjoint i32 %842, 1
  %899 = load i32, ptr %0, align 8, !tbaa !24
  %900 = icmp eq i32 %898, %899
  br i1 %900, label %963, label %901

901:                                              ; preds = %874
  %902 = and i32 %876, 15
  %903 = select i1 %678, i32 %902, i32 0
  br i1 %679, label %904, label %939

904:                                              ; preds = %901
  %905 = load ptr, ptr %17, align 8, !tbaa !16
  %906 = load ptr, ptr %18, align 8, !tbaa !18
  %907 = icmp ult ptr %905, %906
  br i1 %907, label %908, label %911

908:                                              ; preds = %904
  %909 = getelementptr inbounds nuw i8, ptr %905, i64 1
  store ptr %909, ptr %17, align 8, !tbaa !16
  %910 = load i8, ptr %905, align 1, !tbaa !35
  br label %936

911:                                              ; preds = %904
  %912 = load i32, ptr %19, align 8, !tbaa !13
  %913 = icmp eq i32 %912, 0
  br i1 %913, label %936, label %914

914:                                              ; preds = %911
  %915 = load ptr, ptr %20, align 8, !tbaa !8
  %916 = load ptr, ptr %21, align 8, !tbaa !33
  %917 = load i32, ptr %23, align 4, !tbaa !34
  %918 = tail call i32 %915(ptr noundef %916, ptr noundef nonnull %22, i32 noundef %917) #16
  %919 = load ptr, ptr %17, align 8, !tbaa !16
  %920 = load ptr, ptr %24, align 8, !tbaa !15
  %921 = ptrtoint ptr %919 to i64
  %922 = ptrtoint ptr %920 to i64
  %923 = sub i64 %921, %922
  %924 = trunc i64 %923 to i32
  %925 = load i32, ptr %25, align 8, !tbaa !14
  %926 = add i32 %925, %924
  store i32 %926, ptr %25, align 8, !tbaa !14
  %927 = icmp eq i32 %918, 0
  br i1 %927, label %928, label %929

928:                                              ; preds = %914
  store i32 0, ptr %19, align 8, !tbaa !13
  store i8 0, ptr %22, align 8, !tbaa !35
  br label %933

929:                                              ; preds = %914
  %930 = sext i32 %918 to i64
  %931 = getelementptr inbounds i8, ptr %22, i64 %930
  %932 = load i8, ptr %22, align 1, !tbaa !35
  br label %933

933:                                              ; preds = %929, %928
  %934 = phi i8 [ 0, %928 ], [ %932, %929 ]
  %935 = phi ptr [ %26, %928 ], [ %931, %929 ]
  store ptr %935, ptr %18, align 8, !tbaa !18
  store ptr %26, ptr %17, align 8, !tbaa !16
  br label %936

936:                                              ; preds = %933, %911, %908
  %937 = phi i8 [ %910, %908 ], [ %934, %933 ], [ 0, %911 ]
  %938 = zext i8 %937 to i32
  br label %939

939:                                              ; preds = %936, %901
  %940 = phi i32 [ %938, %936 ], [ %903, %901 ]
  %941 = zext nneg i32 %940 to i64
  %942 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %941
  %943 = load i8, ptr %942, align 4, !tbaa !35
  %944 = add i32 %841, 5
  %945 = sext i32 %895 to i64
  %946 = getelementptr inbounds i8, ptr %494, i64 %945
  store i8 %943, ptr %946, align 1, !tbaa !35
  %947 = getelementptr inbounds nuw i8, ptr %942, i64 1
  %948 = load i8, ptr %947, align 1, !tbaa !35
  %949 = add i32 %841, 6
  %950 = sext i32 %944 to i64
  %951 = getelementptr inbounds i8, ptr %494, i64 %950
  store i8 %948, ptr %951, align 1, !tbaa !35
  %952 = getelementptr inbounds nuw i8, ptr %942, i64 2
  %953 = load i8, ptr %952, align 2, !tbaa !35
  %954 = sext i32 %949 to i64
  %955 = getelementptr inbounds i8, ptr %494, i64 %954
  store i8 %953, ptr %955, align 1, !tbaa !35
  %956 = add i32 %841, 7
  %957 = sext i32 %956 to i64
  %958 = getelementptr inbounds i8, ptr %494, i64 %957
  store i8 -1, ptr %958, align 1, !tbaa !35
  %959 = add i32 %841, 8
  %960 = add i32 %842, 2
  %961 = load i32, ptr %0, align 8, !tbaa !24
  %962 = icmp slt i32 %960, %961
  br i1 %962, label %840, label %963, !llvm.loop !230

963:                                              ; preds = %939, %874, %835
  %964 = phi i32 [ %836, %835 ], [ %959, %939 ], [ %895, %874 ]
  br i1 %680, label %985, label %965

965:                                              ; preds = %963
  %966 = load ptr, ptr %20, align 8, !tbaa !8
  %967 = icmp eq ptr %966, null
  br i1 %967, label %968, label %970

968:                                              ; preds = %965
  %969 = load ptr, ptr %17, align 8, !tbaa !16
  br label %982

970:                                              ; preds = %965
  %971 = load ptr, ptr %18, align 8, !tbaa !18
  %972 = load ptr, ptr %17, align 8, !tbaa !16
  %973 = ptrtoint ptr %971 to i64
  %974 = ptrtoint ptr %972 to i64
  %975 = sub i64 %973, %974
  %976 = trunc i64 %975 to i32
  %977 = icmp sgt i32 %674, %976
  br i1 %977, label %978, label %982

978:                                              ; preds = %970
  store ptr %971, ptr %17, align 8, !tbaa !16
  %979 = load ptr, ptr %681, align 8, !tbaa !36
  %980 = load ptr, ptr %21, align 8, !tbaa !33
  %981 = sub i32 %674, %976
  tail call void %979(ptr noundef %980, i32 noundef %981) #16
  br label %985

982:                                              ; preds = %970, %968
  %983 = phi ptr [ %969, %968 ], [ %972, %970 ]
  %984 = getelementptr inbounds nuw i8, ptr %983, i64 %682
  store ptr %984, ptr %17, align 8, !tbaa !16
  br label %985

985:                                              ; preds = %982, %978, %963
  %986 = add nuw nsw i32 %837, 1
  %987 = load i32, ptr %386, align 4, !tbaa !25
  %988 = icmp slt i32 %986, %987
  br i1 %988, label %835, label %1366, !llvm.loop !231

989:                                              ; preds = %491
  %990 = getelementptr inbounds nuw i8, ptr %12, i64 32
  %991 = load i32, ptr %990, align 4, !tbaa !214
  %992 = add i32 %991, %405
  %993 = sub i32 %468, %992
  %994 = icmp eq i32 %468, %992
  br i1 %994, label %1021, label %995

995:                                              ; preds = %989
  %996 = icmp slt i32 %993, 0
  br i1 %996, label %997, label %999

997:                                              ; preds = %995
  %998 = load ptr, ptr %18, align 8, !tbaa !18
  store ptr %998, ptr %17, align 8, !tbaa !16
  br label %1021

999:                                              ; preds = %995
  %1000 = load ptr, ptr %20, align 8, !tbaa !8
  %1001 = icmp eq ptr %1000, null
  br i1 %1001, label %1002, label %1004

1002:                                             ; preds = %999
  %1003 = load ptr, ptr %17, align 8, !tbaa !16
  br label %1017

1004:                                             ; preds = %999
  %1005 = load ptr, ptr %18, align 8, !tbaa !18
  %1006 = load ptr, ptr %17, align 8, !tbaa !16
  %1007 = ptrtoint ptr %1005 to i64
  %1008 = ptrtoint ptr %1006 to i64
  %1009 = sub i64 %1007, %1008
  %1010 = trunc i64 %1009 to i32
  %1011 = icmp sgt i32 %993, %1010
  br i1 %1011, label %1012, label %1017

1012:                                             ; preds = %1004
  store ptr %1005, ptr %17, align 8, !tbaa !16
  %1013 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %1014 = load ptr, ptr %1013, align 8, !tbaa !36
  %1015 = load ptr, ptr %21, align 8, !tbaa !33
  %1016 = sub i32 %993, %1010
  tail call void %1014(ptr noundef %1015, i32 noundef %1016) #16
  br label %1021

1017:                                             ; preds = %1004, %1002
  %1018 = phi ptr [ %1003, %1002 ], [ %1006, %1004 ]
  %1019 = zext nneg i32 %993 to i64
  %1020 = getelementptr inbounds nuw i8, ptr %1018, i64 %1019
  store ptr %1020, ptr %17, align 8, !tbaa !16
  br label %1021

1021:                                             ; preds = %1017, %1012, %997, %989
  switch i32 %467, label %1036 [
    i32 24, label %1022
    i32 16, label %1025
    i32 32, label %1029
  ]

1022:                                             ; preds = %1021
  %1023 = load i32, ptr %0, align 8, !tbaa !24
  %1024 = and i32 %1023, 3
  br label %1063

1025:                                             ; preds = %1021
  %1026 = load i32, ptr %0, align 8, !tbaa !24
  %1027 = shl i32 %1026, 1
  %1028 = and i32 %1027, 2
  br label %1036

1029:                                             ; preds = %1021
  %1030 = icmp eq i32 %400, 255
  %1031 = icmp eq i32 %398, 65280
  %1032 = select i1 %1030, i1 %1031, i1 false
  %1033 = icmp eq i32 %396, 16711680
  %1034 = select i1 %1032, i1 %1033, i1 false
  %1035 = select i1 %1034, i1 %464, i1 false
  br i1 %1035, label %1063, label %1036

1036:                                             ; preds = %1029, %1025, %1021
  %1037 = phi i32 [ 0, %1029 ], [ %1028, %1025 ], [ 0, %1021 ]
  %1038 = icmp ne i32 %396, 0
  %1039 = icmp ne i32 %398, 0
  %1040 = select i1 %1038, i1 %1039, i1 false
  %1041 = icmp ne i32 %400, 0
  %1042 = select i1 %1040, i1 %1041, i1 false
  br i1 %1042, label %1043, label %1455

1043:                                             ; preds = %1036
  %1044 = tail call fastcc i32 @stbi__high_bit(i32 noundef %396) #17
  %1045 = add nsw i32 %1044, -7
  %1046 = tail call fastcc i32 @stbi__bitcount(i32 noundef %396) #17
  %1047 = tail call fastcc i32 @stbi__high_bit(i32 noundef %398) #17
  %1048 = add nsw i32 %1047, -7
  %1049 = tail call fastcc i32 @stbi__bitcount(i32 noundef %398) #17
  %1050 = tail call fastcc i32 @stbi__high_bit(i32 noundef %400) #17
  %1051 = add nsw i32 %1050, -7
  %1052 = tail call fastcc i32 @stbi__bitcount(i32 noundef %400) #17
  %1053 = tail call fastcc i32 @stbi__high_bit(i32 noundef %402) #17
  %1054 = add nsw i32 %1053, -7
  %1055 = tail call fastcc i32 @stbi__bitcount(i32 noundef %402) #17
  %1056 = icmp samesign ugt i32 %1046, 8
  %1057 = icmp samesign ugt i32 %1049, 8
  %1058 = select i1 %1056, i1 true, i1 %1057
  %1059 = icmp samesign ugt i32 %1052, 8
  %1060 = select i1 %1058, i1 true, i1 %1059
  %1061 = icmp samesign ugt i32 %1055, 8
  %1062 = select i1 %1060, i1 true, i1 %1061
  br i1 %1062, label %1455, label %1063

1063:                                             ; preds = %1043, %1029, %1022
  %1064 = phi i1 [ true, %1029 ], [ false, %1043 ], [ false, %1022 ]
  %1065 = phi i1 [ false, %1029 ], [ true, %1043 ], [ false, %1022 ]
  %1066 = phi i32 [ 0, %1029 ], [ %1037, %1043 ], [ %1024, %1022 ]
  %1067 = phi i32 [ 0, %1029 ], [ %1045, %1043 ], [ 0, %1022 ]
  %1068 = phi i32 [ 0, %1029 ], [ %1048, %1043 ], [ 0, %1022 ]
  %1069 = phi i32 [ 0, %1029 ], [ %1051, %1043 ], [ 0, %1022 ]
  %1070 = phi i32 [ 0, %1029 ], [ %1054, %1043 ], [ 0, %1022 ]
  %1071 = phi i32 [ 0, %1029 ], [ %1046, %1043 ], [ 0, %1022 ]
  %1072 = phi i32 [ 0, %1029 ], [ %1049, %1043 ], [ 0, %1022 ]
  %1073 = phi i32 [ 0, %1029 ], [ %1052, %1043 ], [ 0, %1022 ]
  %1074 = phi i32 [ 0, %1029 ], [ %1055, %1043 ], [ 0, %1022 ]
  %1075 = load i32, ptr %386, align 4, !tbaa !25
  %1076 = icmp sgt i32 %1075, 0
  br i1 %1076, label %1077, label %1366

1077:                                             ; preds = %1063
  %1078 = icmp eq i32 %467, 16
  %1079 = icmp slt i32 %1067, 0
  %1080 = sub nsw i32 0, %1067
  %1081 = sub nuw nsw i32 8, %1071
  %1082 = zext nneg i32 %1071 to i64
  %1083 = getelementptr inbounds nuw i32, ptr @stbi__shiftsigned.mul_table, i64 %1082
  %1084 = getelementptr inbounds nuw i32, ptr @stbi__shiftsigned.shift_table, i64 %1082
  %1085 = icmp slt i32 %1068, 0
  %1086 = sub nsw i32 0, %1068
  %1087 = sub nuw nsw i32 8, %1072
  %1088 = zext nneg i32 %1072 to i64
  %1089 = getelementptr inbounds nuw i32, ptr @stbi__shiftsigned.mul_table, i64 %1088
  %1090 = getelementptr inbounds nuw i32, ptr @stbi__shiftsigned.shift_table, i64 %1088
  %1091 = icmp slt i32 %1069, 0
  %1092 = sub nsw i32 0, %1069
  %1093 = sub nuw nsw i32 8, %1073
  %1094 = zext nneg i32 %1073 to i64
  %1095 = getelementptr inbounds nuw i32, ptr @stbi__shiftsigned.mul_table, i64 %1094
  %1096 = getelementptr inbounds nuw i32, ptr @stbi__shiftsigned.shift_table, i64 %1094
  %1097 = icmp eq i32 %402, 0
  %1098 = icmp slt i32 %1070, 0
  %1099 = sub nsw i32 0, %1070
  %1100 = sub nuw nsw i32 8, %1074
  %1101 = zext nneg i32 %1074 to i64
  %1102 = getelementptr inbounds nuw i32, ptr @stbi__shiftsigned.mul_table, i64 %1101
  %1103 = getelementptr inbounds nuw i32, ptr @stbi__shiftsigned.shift_table, i64 %1101
  %1104 = icmp eq i32 %1066, 0
  %1105 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %1106 = zext nneg i32 %1066 to i64
  br label %1107

1107:                                             ; preds = %1362, %1077
  %1108 = phi i32 [ %403, %1077 ], [ %1341, %1362 ]
  %1109 = phi i32 [ 0, %1077 ], [ %1340, %1362 ]
  %1110 = phi i32 [ 0, %1077 ], [ %1363, %1362 ]
  %1111 = load i32, ptr %0, align 8, !tbaa !24
  %1112 = icmp sgt i32 %1111, 0
  br i1 %1065, label %1114, label %1113

1113:                                             ; preds = %1107
  br i1 %1112, label %1115, label %1339

1114:                                             ; preds = %1107
  br i1 %1112, label %1269, label %1339

1115:                                             ; preds = %1113, %1259
  %1116 = phi i32 [ %1262, %1259 ], [ %1108, %1113 ]
  %1117 = phi i32 [ %1265, %1259 ], [ %1109, %1113 ]
  %1118 = phi i32 [ %1266, %1259 ], [ 0, %1113 ]
  %1119 = load ptr, ptr %17, align 8, !tbaa !16
  %1120 = load ptr, ptr %18, align 8, !tbaa !18
  %1121 = icmp ult ptr %1119, %1120
  br i1 %1121, label %1122, label %1125

1122:                                             ; preds = %1115
  %1123 = getelementptr inbounds nuw i8, ptr %1119, i64 1
  store ptr %1123, ptr %17, align 8, !tbaa !16
  %1124 = load i8, ptr %1119, align 1, !tbaa !35
  br label %1150

1125:                                             ; preds = %1115
  %1126 = load i32, ptr %19, align 8, !tbaa !13
  %1127 = icmp eq i32 %1126, 0
  br i1 %1127, label %1150, label %1128

1128:                                             ; preds = %1125
  %1129 = load ptr, ptr %20, align 8, !tbaa !8
  %1130 = load ptr, ptr %21, align 8, !tbaa !33
  %1131 = load i32, ptr %23, align 4, !tbaa !34
  %1132 = tail call i32 %1129(ptr noundef %1130, ptr noundef nonnull %22, i32 noundef %1131) #16
  %1133 = load ptr, ptr %17, align 8, !tbaa !16
  %1134 = load ptr, ptr %24, align 8, !tbaa !15
  %1135 = ptrtoint ptr %1133 to i64
  %1136 = ptrtoint ptr %1134 to i64
  %1137 = sub i64 %1135, %1136
  %1138 = trunc i64 %1137 to i32
  %1139 = load i32, ptr %25, align 8, !tbaa !14
  %1140 = add i32 %1139, %1138
  store i32 %1140, ptr %25, align 8, !tbaa !14
  %1141 = icmp eq i32 %1132, 0
  br i1 %1141, label %1142, label %1143

1142:                                             ; preds = %1128
  store i32 0, ptr %19, align 8, !tbaa !13
  store i8 0, ptr %22, align 8, !tbaa !35
  br label %1147

1143:                                             ; preds = %1128
  %1144 = sext i32 %1132 to i64
  %1145 = getelementptr inbounds i8, ptr %22, i64 %1144
  %1146 = load i8, ptr %22, align 1, !tbaa !35
  br label %1147

1147:                                             ; preds = %1143, %1142
  %1148 = phi i8 [ 0, %1142 ], [ %1146, %1143 ]
  %1149 = phi ptr [ %26, %1142 ], [ %1145, %1143 ]
  store ptr %1149, ptr %18, align 8, !tbaa !18
  store ptr %26, ptr %17, align 8, !tbaa !16
  br label %1150

1150:                                             ; preds = %1147, %1125, %1122
  %1151 = phi i8 [ %1124, %1122 ], [ %1148, %1147 ], [ 0, %1125 ]
  %1152 = add i32 %1117, 2
  %1153 = sext i32 %1152 to i64
  %1154 = getelementptr inbounds i8, ptr %494, i64 %1153
  store i8 %1151, ptr %1154, align 1, !tbaa !35
  %1155 = load ptr, ptr %17, align 8, !tbaa !16
  %1156 = load ptr, ptr %18, align 8, !tbaa !18
  %1157 = icmp ult ptr %1155, %1156
  br i1 %1157, label %1158, label %1161

1158:                                             ; preds = %1150
  %1159 = getelementptr inbounds nuw i8, ptr %1155, i64 1
  store ptr %1159, ptr %17, align 8, !tbaa !16
  %1160 = load i8, ptr %1155, align 1, !tbaa !35
  br label %1186

1161:                                             ; preds = %1150
  %1162 = load i32, ptr %19, align 8, !tbaa !13
  %1163 = icmp eq i32 %1162, 0
  br i1 %1163, label %1186, label %1164

1164:                                             ; preds = %1161
  %1165 = load ptr, ptr %20, align 8, !tbaa !8
  %1166 = load ptr, ptr %21, align 8, !tbaa !33
  %1167 = load i32, ptr %23, align 4, !tbaa !34
  %1168 = tail call i32 %1165(ptr noundef %1166, ptr noundef nonnull %22, i32 noundef %1167) #16
  %1169 = load ptr, ptr %17, align 8, !tbaa !16
  %1170 = load ptr, ptr %24, align 8, !tbaa !15
  %1171 = ptrtoint ptr %1169 to i64
  %1172 = ptrtoint ptr %1170 to i64
  %1173 = sub i64 %1171, %1172
  %1174 = trunc i64 %1173 to i32
  %1175 = load i32, ptr %25, align 8, !tbaa !14
  %1176 = add i32 %1175, %1174
  store i32 %1176, ptr %25, align 8, !tbaa !14
  %1177 = icmp eq i32 %1168, 0
  br i1 %1177, label %1178, label %1179

1178:                                             ; preds = %1164
  store i32 0, ptr %19, align 8, !tbaa !13
  store i8 0, ptr %22, align 8, !tbaa !35
  br label %1183

1179:                                             ; preds = %1164
  %1180 = sext i32 %1168 to i64
  %1181 = getelementptr inbounds i8, ptr %22, i64 %1180
  %1182 = load i8, ptr %22, align 1, !tbaa !35
  br label %1183

1183:                                             ; preds = %1179, %1178
  %1184 = phi i8 [ 0, %1178 ], [ %1182, %1179 ]
  %1185 = phi ptr [ %26, %1178 ], [ %1181, %1179 ]
  store ptr %1185, ptr %18, align 8, !tbaa !18
  store ptr %26, ptr %17, align 8, !tbaa !16
  br label %1186

1186:                                             ; preds = %1183, %1161, %1158
  %1187 = phi i8 [ %1160, %1158 ], [ %1184, %1183 ], [ 0, %1161 ]
  %1188 = add i32 %1117, 1
  %1189 = sext i32 %1188 to i64
  %1190 = getelementptr inbounds i8, ptr %494, i64 %1189
  store i8 %1187, ptr %1190, align 1, !tbaa !35
  %1191 = load ptr, ptr %17, align 8, !tbaa !16
  %1192 = load ptr, ptr %18, align 8, !tbaa !18
  %1193 = icmp ult ptr %1191, %1192
  br i1 %1193, label %1194, label %1197

1194:                                             ; preds = %1186
  %1195 = getelementptr inbounds nuw i8, ptr %1191, i64 1
  store ptr %1195, ptr %17, align 8, !tbaa !16
  %1196 = load i8, ptr %1191, align 1, !tbaa !35
  br label %1222

1197:                                             ; preds = %1186
  %1198 = load i32, ptr %19, align 8, !tbaa !13
  %1199 = icmp eq i32 %1198, 0
  br i1 %1199, label %1222, label %1200

1200:                                             ; preds = %1197
  %1201 = load ptr, ptr %20, align 8, !tbaa !8
  %1202 = load ptr, ptr %21, align 8, !tbaa !33
  %1203 = load i32, ptr %23, align 4, !tbaa !34
  %1204 = tail call i32 %1201(ptr noundef %1202, ptr noundef nonnull %22, i32 noundef %1203) #16
  %1205 = load ptr, ptr %17, align 8, !tbaa !16
  %1206 = load ptr, ptr %24, align 8, !tbaa !15
  %1207 = ptrtoint ptr %1205 to i64
  %1208 = ptrtoint ptr %1206 to i64
  %1209 = sub i64 %1207, %1208
  %1210 = trunc i64 %1209 to i32
  %1211 = load i32, ptr %25, align 8, !tbaa !14
  %1212 = add i32 %1211, %1210
  store i32 %1212, ptr %25, align 8, !tbaa !14
  %1213 = icmp eq i32 %1204, 0
  br i1 %1213, label %1214, label %1215

1214:                                             ; preds = %1200
  store i32 0, ptr %19, align 8, !tbaa !13
  store i8 0, ptr %22, align 8, !tbaa !35
  br label %1219

1215:                                             ; preds = %1200
  %1216 = sext i32 %1204 to i64
  %1217 = getelementptr inbounds i8, ptr %22, i64 %1216
  %1218 = load i8, ptr %22, align 1, !tbaa !35
  br label %1219

1219:                                             ; preds = %1215, %1214
  %1220 = phi i8 [ 0, %1214 ], [ %1218, %1215 ]
  %1221 = phi ptr [ %26, %1214 ], [ %1217, %1215 ]
  store ptr %1221, ptr %18, align 8, !tbaa !18
  store ptr %26, ptr %17, align 8, !tbaa !16
  br label %1222

1222:                                             ; preds = %1219, %1197, %1194
  %1223 = phi i8 [ %1196, %1194 ], [ %1220, %1219 ], [ 0, %1197 ]
  %1224 = sext i32 %1117 to i64
  %1225 = getelementptr inbounds i8, ptr %494, i64 %1224
  store i8 %1223, ptr %1225, align 1, !tbaa !35
  %1226 = add i32 %1117, 3
  br i1 %1064, label %1227, label %1259

1227:                                             ; preds = %1222
  %1228 = load ptr, ptr %17, align 8, !tbaa !16
  %1229 = load ptr, ptr %18, align 8, !tbaa !18
  %1230 = icmp ult ptr %1228, %1229
  br i1 %1230, label %1231, label %1234

1231:                                             ; preds = %1227
  %1232 = getelementptr inbounds nuw i8, ptr %1228, i64 1
  store ptr %1232, ptr %17, align 8, !tbaa !16
  %1233 = load i8, ptr %1228, align 1, !tbaa !35
  br label %1259

1234:                                             ; preds = %1227
  %1235 = load i32, ptr %19, align 8, !tbaa !13
  %1236 = icmp eq i32 %1235, 0
  br i1 %1236, label %1259, label %1237

1237:                                             ; preds = %1234
  %1238 = load ptr, ptr %20, align 8, !tbaa !8
  %1239 = load ptr, ptr %21, align 8, !tbaa !33
  %1240 = load i32, ptr %23, align 4, !tbaa !34
  %1241 = tail call i32 %1238(ptr noundef %1239, ptr noundef nonnull %22, i32 noundef %1240) #16
  %1242 = load ptr, ptr %17, align 8, !tbaa !16
  %1243 = load ptr, ptr %24, align 8, !tbaa !15
  %1244 = ptrtoint ptr %1242 to i64
  %1245 = ptrtoint ptr %1243 to i64
  %1246 = sub i64 %1244, %1245
  %1247 = trunc i64 %1246 to i32
  %1248 = load i32, ptr %25, align 8, !tbaa !14
  %1249 = add i32 %1248, %1247
  store i32 %1249, ptr %25, align 8, !tbaa !14
  %1250 = icmp eq i32 %1241, 0
  br i1 %1250, label %1251, label %1252

1251:                                             ; preds = %1237
  store i32 0, ptr %19, align 8, !tbaa !13
  store i8 0, ptr %22, align 8, !tbaa !35
  br label %1256

1252:                                             ; preds = %1237
  %1253 = sext i32 %1241 to i64
  %1254 = getelementptr inbounds i8, ptr %22, i64 %1253
  %1255 = load i8, ptr %22, align 1, !tbaa !35
  br label %1256

1256:                                             ; preds = %1252, %1251
  %1257 = phi i8 [ 0, %1251 ], [ %1255, %1252 ]
  %1258 = phi ptr [ %26, %1251 ], [ %1254, %1252 ]
  store ptr %1258, ptr %18, align 8, !tbaa !18
  store ptr %26, ptr %17, align 8, !tbaa !16
  br label %1259

1259:                                             ; preds = %1256, %1234, %1231, %1222
  %1260 = phi i8 [ -1, %1222 ], [ %1233, %1231 ], [ %1257, %1256 ], [ 0, %1234 ]
  %1261 = zext i8 %1260 to i32
  %1262 = or i32 %1116, %1261
  %1263 = sext i32 %1226 to i64
  %1264 = getelementptr inbounds i8, ptr %494, i64 %1263
  store i8 %1260, ptr %1264, align 1, !tbaa !35
  %1265 = add i32 %1117, 4
  %1266 = add nuw nsw i32 %1118, 1
  %1267 = load i32, ptr %0, align 8, !tbaa !24
  %1268 = icmp slt i32 %1266, %1267
  br i1 %1268, label %1115, label %1339, !llvm.loop !232

1269:                                             ; preds = %1114, %1329
  %1270 = phi i32 [ %1331, %1329 ], [ %1108, %1114 ]
  %1271 = phi i32 [ %1335, %1329 ], [ %1109, %1114 ]
  %1272 = phi i32 [ %1336, %1329 ], [ 0, %1114 ]
  %1273 = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) #17
  br i1 %1078, label %1278, label %1274

1274:                                             ; preds = %1269
  %1275 = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) #17
  %1276 = shl nuw i32 %1275, 16
  %1277 = or disjoint i32 %1276, %1273
  br label %1278

1278:                                             ; preds = %1274, %1269
  %1279 = phi i32 [ %1277, %1274 ], [ %1273, %1269 ]
  %1280 = and i32 %1279, %396
  %1281 = shl i32 %1280, %1080
  %1282 = lshr i32 %1280, %1067
  %1283 = select i1 %1079, i32 %1281, i32 %1282
  %1284 = lshr i32 %1283, %1081
  %1285 = load i32, ptr %1083, align 4, !tbaa !4
  %1286 = mul i32 %1284, %1285
  %1287 = load i32, ptr %1084, align 4, !tbaa !4
  %1288 = ashr i32 %1286, %1287
  %1289 = trunc i32 %1288 to i8
  %1290 = add i32 %1271, 1
  %1291 = sext i32 %1271 to i64
  %1292 = getelementptr inbounds i8, ptr %494, i64 %1291
  store i8 %1289, ptr %1292, align 1, !tbaa !35
  %1293 = and i32 %1279, %398
  %1294 = shl i32 %1293, %1086
  %1295 = lshr i32 %1293, %1068
  %1296 = select i1 %1085, i32 %1294, i32 %1295
  %1297 = lshr i32 %1296, %1087
  %1298 = load i32, ptr %1089, align 4, !tbaa !4
  %1299 = mul i32 %1298, %1297
  %1300 = load i32, ptr %1090, align 4, !tbaa !4
  %1301 = ashr i32 %1299, %1300
  %1302 = trunc i32 %1301 to i8
  %1303 = add i32 %1271, 2
  %1304 = sext i32 %1290 to i64
  %1305 = getelementptr inbounds i8, ptr %494, i64 %1304
  store i8 %1302, ptr %1305, align 1, !tbaa !35
  %1306 = and i32 %1279, %400
  %1307 = shl i32 %1306, %1092
  %1308 = lshr i32 %1306, %1069
  %1309 = select i1 %1091, i32 %1307, i32 %1308
  %1310 = lshr i32 %1309, %1093
  %1311 = load i32, ptr %1095, align 4, !tbaa !4
  %1312 = mul i32 %1311, %1310
  %1313 = load i32, ptr %1096, align 4, !tbaa !4
  %1314 = ashr i32 %1312, %1313
  %1315 = trunc i32 %1314 to i8
  %1316 = add i32 %1271, 3
  %1317 = sext i32 %1303 to i64
  %1318 = getelementptr inbounds i8, ptr %494, i64 %1317
  store i8 %1315, ptr %1318, align 1, !tbaa !35
  br i1 %1097, label %1329, label %1319

1319:                                             ; preds = %1278
  %1320 = and i32 %1279, %402
  %1321 = shl i32 %1320, %1099
  %1322 = lshr i32 %1320, %1070
  %1323 = select i1 %1098, i32 %1321, i32 %1322
  %1324 = lshr i32 %1323, %1100
  %1325 = load i32, ptr %1102, align 4, !tbaa !4
  %1326 = mul i32 %1325, %1324
  %1327 = load i32, ptr %1103, align 4, !tbaa !4
  %1328 = ashr i32 %1326, %1327
  br label %1329

1329:                                             ; preds = %1319, %1278
  %1330 = phi i32 [ %1328, %1319 ], [ 255, %1278 ]
  %1331 = or i32 %1330, %1270
  %1332 = trunc i32 %1330 to i8
  %1333 = sext i32 %1316 to i64
  %1334 = getelementptr inbounds i8, ptr %494, i64 %1333
  store i8 %1332, ptr %1334, align 1, !tbaa !35
  %1335 = add i32 %1271, 4
  %1336 = add nuw nsw i32 %1272, 1
  %1337 = load i32, ptr %0, align 8, !tbaa !24
  %1338 = icmp slt i32 %1336, %1337
  br i1 %1338, label %1269, label %1339, !llvm.loop !233

1339:                                             ; preds = %1259, %1329, %1114, %1113
  %1340 = phi i32 [ %1335, %1329 ], [ %1109, %1114 ], [ %1109, %1113 ], [ %1265, %1259 ]
  %1341 = phi i32 [ %1331, %1329 ], [ %1108, %1114 ], [ %1108, %1113 ], [ %1262, %1259 ]
  br i1 %1104, label %1362, label %1342

1342:                                             ; preds = %1339
  %1343 = load ptr, ptr %20, align 8, !tbaa !8
  %1344 = icmp eq ptr %1343, null
  br i1 %1344, label %1345, label %1347

1345:                                             ; preds = %1342
  %1346 = load ptr, ptr %17, align 8, !tbaa !16
  br label %1359

1347:                                             ; preds = %1342
  %1348 = load ptr, ptr %18, align 8, !tbaa !18
  %1349 = load ptr, ptr %17, align 8, !tbaa !16
  %1350 = ptrtoint ptr %1348 to i64
  %1351 = ptrtoint ptr %1349 to i64
  %1352 = sub i64 %1350, %1351
  %1353 = trunc i64 %1352 to i32
  %1354 = icmp sgt i32 %1066, %1353
  br i1 %1354, label %1355, label %1359

1355:                                             ; preds = %1347
  store ptr %1348, ptr %17, align 8, !tbaa !16
  %1356 = load ptr, ptr %1105, align 8, !tbaa !36
  %1357 = load ptr, ptr %21, align 8, !tbaa !33
  %1358 = sub i32 %1066, %1353
  tail call void %1356(ptr noundef %1357, i32 noundef %1358) #16
  br label %1362

1359:                                             ; preds = %1347, %1345
  %1360 = phi ptr [ %1346, %1345 ], [ %1349, %1347 ]
  %1361 = getelementptr inbounds nuw i8, ptr %1360, i64 %1106
  store ptr %1361, ptr %17, align 8, !tbaa !16
  br label %1362

1362:                                             ; preds = %1359, %1355, %1339
  %1363 = add nuw nsw i32 %1110, 1
  %1364 = load i32, ptr %386, align 4, !tbaa !25
  %1365 = icmp slt i32 %1363, %1364
  br i1 %1365, label %1107, label %1366, !llvm.loop !234

1366:                                             ; preds = %1362, %985, %831, %1063, %683, %671
  %1367 = phi i32 [ %675, %671 ], [ %689, %683 ], [ %833, %831 ], [ %987, %985 ], [ %1075, %1063 ], [ %1364, %1362 ]
  %1368 = phi i32 [ %403, %671 ], [ %403, %683 ], [ %403, %831 ], [ %403, %985 ], [ %403, %1063 ], [ %1341, %1362 ]
  %1369 = icmp eq i32 %1368, 0
  br i1 %1369, label %1370, label %1411

1370:                                             ; preds = %1366
  %1371 = load i32, ptr %0, align 8, !tbaa !24
  %1372 = shl i32 %1367, 2
  %1373 = mul i32 %1372, %1371
  %1374 = add i32 %1373, -1
  %1375 = icmp sgt i32 %1374, -1
  br i1 %1375, label %1376, label %1411

1376:                                             ; preds = %1370
  %1377 = zext nneg i32 %1374 to i64
  %1378 = lshr i64 %1377, 2
  %1379 = add nuw nsw i64 %1378, 1
  %1380 = and i64 %1379, 7
  %1381 = and i64 %1377, 28
  %1382 = icmp eq i64 %1381, 28
  br i1 %1382, label %1390, label %1383

1383:                                             ; preds = %1376, %1383
  %1384 = phi i64 [ %1387, %1383 ], [ %1377, %1376 ]
  %1385 = phi i64 [ %1388, %1383 ], [ 0, %1376 ]
  %1386 = getelementptr inbounds nuw i8, ptr %494, i64 %1384
  store i8 -1, ptr %1386, align 1, !tbaa !35
  %1387 = add nsw i64 %1384, -4
  %1388 = add i64 %1385, 1
  %1389 = icmp eq i64 %1388, %1380
  br i1 %1389, label %1390, label %1383, !llvm.loop !235

1390:                                             ; preds = %1383, %1376
  %1391 = phi i64 [ %1377, %1376 ], [ %1387, %1383 ]
  %1392 = icmp ult i32 %1374, 28
  br i1 %1392, label %1411, label %1393

1393:                                             ; preds = %1390, %1393
  %1394 = phi i64 [ %1409, %1393 ], [ %1391, %1390 ]
  %1395 = getelementptr inbounds nuw i8, ptr %494, i64 %1394
  store i8 -1, ptr %1395, align 1, !tbaa !35
  %1396 = getelementptr i8, ptr %494, i64 %1394
  %1397 = getelementptr i8, ptr %1396, i64 -4
  store i8 -1, ptr %1397, align 1, !tbaa !35
  %1398 = getelementptr i8, ptr %494, i64 %1394
  %1399 = getelementptr i8, ptr %1398, i64 -8
  store i8 -1, ptr %1399, align 1, !tbaa !35
  %1400 = getelementptr i8, ptr %494, i64 %1394
  %1401 = getelementptr i8, ptr %1400, i64 -12
  store i8 -1, ptr %1401, align 1, !tbaa !35
  %1402 = getelementptr i8, ptr %492, i64 %1394
  store i8 -1, ptr %1402, align 1, !tbaa !35
  %1403 = getelementptr i8, ptr %494, i64 %1394
  %1404 = getelementptr i8, ptr %1403, i64 -20
  store i8 -1, ptr %1404, align 1, !tbaa !35
  %1405 = getelementptr i8, ptr %494, i64 %1394
  %1406 = getelementptr i8, ptr %1405, i64 -24
  store i8 -1, ptr %1406, align 1, !tbaa !35
  %1407 = getelementptr i8, ptr %494, i64 %1394
  %1408 = getelementptr i8, ptr %1407, i64 -28
  store i8 -1, ptr %1408, align 1, !tbaa !35
  %1409 = add nsw i64 %1394, -32
  %1410 = icmp sgt i64 %1394, 31
  br i1 %1410, label %1393, label %1411, !llvm.loop !236

1411:                                             ; preds = %1390, %1393, %1370, %1366
  br i1 %388, label %1414, label %1412

1412:                                             ; preds = %1411
  %1413 = load i32, ptr %0, align 8, !tbaa !24
  br label %1451

1414:                                             ; preds = %1411
  %1415 = load i32, ptr %386, align 4, !tbaa !25
  %1416 = icmp sgt i32 %1415, 1
  %1417 = load i32, ptr %0, align 8, !tbaa !24
  br i1 %1416, label %1418, label %1451

1418:                                             ; preds = %1414, %1445
  %1419 = phi i32 [ %1446, %1445 ], [ %1415, %1414 ]
  %1420 = phi i32 [ %1447, %1445 ], [ %1417, %1414 ]
  %1421 = phi i32 [ %1448, %1445 ], [ 0, %1414 ]
  %1422 = shl i32 %1420, 2
  %1423 = mul i32 %1422, %1421
  %1424 = zext i32 %1423 to i64
  %1425 = getelementptr inbounds nuw i8, ptr %494, i64 %1424
  %1426 = xor i32 %1421, -1
  %1427 = add i32 %1419, %1426
  %1428 = mul i32 %1422, %1427
  %1429 = zext i32 %1428 to i64
  %1430 = getelementptr inbounds nuw i8, ptr %494, i64 %1429
  %1431 = icmp sgt i32 %1422, 0
  br i1 %1431, label %1432, label %1445

1432:                                             ; preds = %1418, %1432
  %1433 = phi i64 [ %1438, %1432 ], [ 0, %1418 ]
  %1434 = getelementptr inbounds nuw i8, ptr %1425, i64 %1433
  %1435 = load i8, ptr %1434, align 1, !tbaa !35
  %1436 = getelementptr inbounds nuw i8, ptr %1430, i64 %1433
  %1437 = load i8, ptr %1436, align 1, !tbaa !35
  store i8 %1437, ptr %1434, align 1, !tbaa !35
  store i8 %1435, ptr %1436, align 1, !tbaa !35
  %1438 = add nuw nsw i64 %1433, 1
  %1439 = load i32, ptr %0, align 8, !tbaa !24
  %1440 = shl i32 %1439, 2
  %1441 = sext i32 %1440 to i64
  %1442 = icmp slt i64 %1438, %1441
  br i1 %1442, label %1432, label %1443, !llvm.loop !237

1443:                                             ; preds = %1432
  %1444 = load i32, ptr %386, align 4, !tbaa !25
  br label %1445

1445:                                             ; preds = %1443, %1418
  %1446 = phi i32 [ %1444, %1443 ], [ %1419, %1418 ]
  %1447 = phi i32 [ %1439, %1443 ], [ %1420, %1418 ]
  %1448 = add nuw nsw i32 %1421, 1
  %1449 = ashr i32 %1446, 1
  %1450 = icmp slt i32 %1448, %1449
  br i1 %1450, label %1418, label %1451, !llvm.loop !238

1451:                                             ; preds = %1445, %1414, %1412
  %1452 = phi i32 [ %1413, %1412 ], [ %1417, %1414 ], [ %1447, %1445 ]
  store i32 %1452, ptr %1, align 4, !tbaa !4
  %1453 = load i32, ptr %386, align 4, !tbaa !25
  store i32 %1453, ptr %2, align 4, !tbaa !4
  %1454 = load i32, ptr %470, align 8, !tbaa !71
  store i32 %1454, ptr %3, align 4, !tbaa !4
  br label %1455

1455:                                             ; preds = %381, %385, %391, %434, %445, %449, %463, %474, %479, %482, %496, %657, %1036, %1043, %1451
  %1456 = phi ptr [ null, %434 ], [ null, %381 ], [ null, %385 ], [ null, %391 ], [ %494, %1451 ], [ null, %474 ], [ null, %1043 ], [ null, %496 ], [ null, %445 ], [ null, %449 ], [ null, %657 ], [ null, %479 ], [ null, %1036 ], [ null, %463 ], [ null, %482 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  br label %4513

1457:                                             ; preds = %372, %377
  %1458 = phi ptr [ %374, %372 ], [ %380, %377 ]
  %1459 = phi ptr [ %373, %372 ], [ %379, %377 ]
  %1460 = icmp ult ptr %1459, %1458
  br i1 %1460, label %1461, label %1464

1461:                                             ; preds = %1457
  %1462 = getelementptr inbounds nuw i8, ptr %1459, i64 1
  store ptr %1462, ptr %17, align 8, !tbaa !16
  %1463 = load i8, ptr %1459, align 1, !tbaa !35
  br label %1489

1464:                                             ; preds = %1457
  %1465 = load i32, ptr %19, align 8, !tbaa !13
  %1466 = icmp eq i32 %1465, 0
  br i1 %1466, label %1663, label %1467

1467:                                             ; preds = %1464
  %1468 = load ptr, ptr %20, align 8, !tbaa !8
  %1469 = load ptr, ptr %21, align 8, !tbaa !33
  %1470 = load i32, ptr %23, align 4, !tbaa !34
  %1471 = tail call i32 %1468(ptr noundef %1469, ptr noundef nonnull %22, i32 noundef %1470) #16
  %1472 = load ptr, ptr %17, align 8, !tbaa !16
  %1473 = load ptr, ptr %24, align 8, !tbaa !15
  %1474 = ptrtoint ptr %1472 to i64
  %1475 = ptrtoint ptr %1473 to i64
  %1476 = sub i64 %1474, %1475
  %1477 = trunc i64 %1476 to i32
  %1478 = load i32, ptr %25, align 8, !tbaa !14
  %1479 = add i32 %1478, %1477
  store i32 %1479, ptr %25, align 8, !tbaa !14
  %1480 = icmp eq i32 %1471, 0
  br i1 %1480, label %1481, label %1482

1481:                                             ; preds = %1467
  store i32 0, ptr %19, align 8, !tbaa !13
  store i8 0, ptr %22, align 8, !tbaa !35
  br label %1486

1482:                                             ; preds = %1467
  %1483 = sext i32 %1471 to i64
  %1484 = getelementptr inbounds i8, ptr %22, i64 %1483
  %1485 = load i8, ptr %22, align 1, !tbaa !35
  br label %1486

1486:                                             ; preds = %1482, %1481
  %1487 = phi i8 [ 0, %1481 ], [ %1485, %1482 ]
  %1488 = phi ptr [ %26, %1481 ], [ %1484, %1482 ]
  store ptr %1488, ptr %18, align 8, !tbaa !18
  store ptr %26, ptr %17, align 8, !tbaa !16
  br label %1489

1489:                                             ; preds = %1486, %1461
  %1490 = phi ptr [ %1459, %1461 ], [ %1473, %1486 ]
  %1491 = phi ptr [ %1458, %1461 ], [ %1488, %1486 ]
  %1492 = phi ptr [ %1462, %1461 ], [ %26, %1486 ]
  %1493 = phi i8 [ %1463, %1461 ], [ %1487, %1486 ]
  %1494 = icmp eq i8 %1493, 71
  br i1 %1494, label %1495, label %1663

1495:                                             ; preds = %1489
  %1496 = icmp ult ptr %1492, %1491
  br i1 %1496, label %1497, label %1500

1497:                                             ; preds = %1495
  %1498 = getelementptr inbounds nuw i8, ptr %1492, i64 1
  store ptr %1498, ptr %17, align 8, !tbaa !16
  %1499 = load i8, ptr %1492, align 1, !tbaa !35
  br label %1525

1500:                                             ; preds = %1495
  %1501 = load i32, ptr %19, align 8, !tbaa !13
  %1502 = icmp eq i32 %1501, 0
  br i1 %1502, label %1663, label %1503

1503:                                             ; preds = %1500
  %1504 = load ptr, ptr %20, align 8, !tbaa !8
  %1505 = load ptr, ptr %21, align 8, !tbaa !33
  %1506 = load i32, ptr %23, align 4, !tbaa !34
  %1507 = tail call i32 %1504(ptr noundef %1505, ptr noundef nonnull %22, i32 noundef %1506) #16
  %1508 = load ptr, ptr %17, align 8, !tbaa !16
  %1509 = load ptr, ptr %24, align 8, !tbaa !15
  %1510 = ptrtoint ptr %1508 to i64
  %1511 = ptrtoint ptr %1509 to i64
  %1512 = sub i64 %1510, %1511
  %1513 = trunc i64 %1512 to i32
  %1514 = load i32, ptr %25, align 8, !tbaa !14
  %1515 = add i32 %1514, %1513
  store i32 %1515, ptr %25, align 8, !tbaa !14
  %1516 = icmp eq i32 %1507, 0
  br i1 %1516, label %1517, label %1518

1517:                                             ; preds = %1503
  store i32 0, ptr %19, align 8, !tbaa !13
  store i8 0, ptr %22, align 8, !tbaa !35
  br label %1522

1518:                                             ; preds = %1503
  %1519 = sext i32 %1507 to i64
  %1520 = getelementptr inbounds i8, ptr %22, i64 %1519
  %1521 = load i8, ptr %22, align 1, !tbaa !35
  br label %1522

1522:                                             ; preds = %1518, %1517
  %1523 = phi i8 [ 0, %1517 ], [ %1521, %1518 ]
  %1524 = phi ptr [ %26, %1517 ], [ %1520, %1518 ]
  store ptr %1524, ptr %18, align 8, !tbaa !18
  store ptr %26, ptr %17, align 8, !tbaa !16
  br label %1525

1525:                                             ; preds = %1522, %1497
  %1526 = phi ptr [ %1490, %1497 ], [ %1509, %1522 ]
  %1527 = phi ptr [ %1491, %1497 ], [ %1524, %1522 ]
  %1528 = phi ptr [ %1498, %1497 ], [ %26, %1522 ]
  %1529 = phi i8 [ %1499, %1497 ], [ %1523, %1522 ]
  %1530 = icmp eq i8 %1529, 73
  br i1 %1530, label %1531, label %1663

1531:                                             ; preds = %1525
  %1532 = icmp ult ptr %1528, %1527
  br i1 %1532, label %1533, label %1536

1533:                                             ; preds = %1531
  %1534 = getelementptr inbounds nuw i8, ptr %1528, i64 1
  store ptr %1534, ptr %17, align 8, !tbaa !16
  %1535 = load i8, ptr %1528, align 1, !tbaa !35
  br label %1561

1536:                                             ; preds = %1531
  %1537 = load i32, ptr %19, align 8, !tbaa !13
  %1538 = icmp eq i32 %1537, 0
  br i1 %1538, label %1663, label %1539

1539:                                             ; preds = %1536
  %1540 = load ptr, ptr %20, align 8, !tbaa !8
  %1541 = load ptr, ptr %21, align 8, !tbaa !33
  %1542 = load i32, ptr %23, align 4, !tbaa !34
  %1543 = tail call i32 %1540(ptr noundef %1541, ptr noundef nonnull %22, i32 noundef %1542) #16
  %1544 = load ptr, ptr %17, align 8, !tbaa !16
  %1545 = load ptr, ptr %24, align 8, !tbaa !15
  %1546 = ptrtoint ptr %1544 to i64
  %1547 = ptrtoint ptr %1545 to i64
  %1548 = sub i64 %1546, %1547
  %1549 = trunc i64 %1548 to i32
  %1550 = load i32, ptr %25, align 8, !tbaa !14
  %1551 = add i32 %1550, %1549
  store i32 %1551, ptr %25, align 8, !tbaa !14
  %1552 = icmp eq i32 %1543, 0
  br i1 %1552, label %1553, label %1554

1553:                                             ; preds = %1539
  store i32 0, ptr %19, align 8, !tbaa !13
  store i8 0, ptr %22, align 8, !tbaa !35
  br label %1558

1554:                                             ; preds = %1539
  %1555 = sext i32 %1543 to i64
  %1556 = getelementptr inbounds i8, ptr %22, i64 %1555
  %1557 = load i8, ptr %22, align 1, !tbaa !35
  br label %1558

1558:                                             ; preds = %1554, %1553
  %1559 = phi i8 [ 0, %1553 ], [ %1557, %1554 ]
  %1560 = phi ptr [ %26, %1553 ], [ %1556, %1554 ]
  store ptr %1560, ptr %18, align 8, !tbaa !18
  store ptr %26, ptr %17, align 8, !tbaa !16
  br label %1561

1561:                                             ; preds = %1558, %1533
  %1562 = phi ptr [ %1526, %1533 ], [ %1545, %1558 ]
  %1563 = phi ptr [ %1527, %1533 ], [ %1560, %1558 ]
  %1564 = phi ptr [ %1534, %1533 ], [ %26, %1558 ]
  %1565 = phi i8 [ %1535, %1533 ], [ %1559, %1558 ]
  %1566 = icmp eq i8 %1565, 70
  br i1 %1566, label %1567, label %1663

1567:                                             ; preds = %1561
  %1568 = icmp ult ptr %1564, %1563
  br i1 %1568, label %1569, label %1572

1569:                                             ; preds = %1567
  %1570 = getelementptr inbounds nuw i8, ptr %1564, i64 1
  store ptr %1570, ptr %17, align 8, !tbaa !16
  %1571 = load i8, ptr %1564, align 1, !tbaa !35
  br label %1597

1572:                                             ; preds = %1567
  %1573 = load i32, ptr %19, align 8, !tbaa !13
  %1574 = icmp eq i32 %1573, 0
  br i1 %1574, label %1663, label %1575

1575:                                             ; preds = %1572
  %1576 = load ptr, ptr %20, align 8, !tbaa !8
  %1577 = load ptr, ptr %21, align 8, !tbaa !33
  %1578 = load i32, ptr %23, align 4, !tbaa !34
  %1579 = tail call i32 %1576(ptr noundef %1577, ptr noundef nonnull %22, i32 noundef %1578) #16
  %1580 = load ptr, ptr %17, align 8, !tbaa !16
  %1581 = load ptr, ptr %24, align 8, !tbaa !15
  %1582 = ptrtoint ptr %1580 to i64
  %1583 = ptrtoint ptr %1581 to i64
  %1584 = sub i64 %1582, %1583
  %1585 = trunc i64 %1584 to i32
  %1586 = load i32, ptr %25, align 8, !tbaa !14
  %1587 = add i32 %1586, %1585
  store i32 %1587, ptr %25, align 8, !tbaa !14
  %1588 = icmp eq i32 %1579, 0
  br i1 %1588, label %1589, label %1590

1589:                                             ; preds = %1575
  store i32 0, ptr %19, align 8, !tbaa !13
  store i8 0, ptr %22, align 8, !tbaa !35
  br label %1594

1590:                                             ; preds = %1575
  %1591 = sext i32 %1579 to i64
  %1592 = getelementptr inbounds i8, ptr %22, i64 %1591
  %1593 = load i8, ptr %22, align 1, !tbaa !35
  br label %1594

1594:                                             ; preds = %1590, %1589
  %1595 = phi i8 [ 0, %1589 ], [ %1593, %1590 ]
  %1596 = phi ptr [ %26, %1589 ], [ %1592, %1590 ]
  store ptr %1596, ptr %18, align 8, !tbaa !18
  store ptr %26, ptr %17, align 8, !tbaa !16
  br label %1597

1597:                                             ; preds = %1594, %1569
  %1598 = phi ptr [ %1562, %1569 ], [ %1581, %1594 ]
  %1599 = phi ptr [ %1563, %1569 ], [ %1596, %1594 ]
  %1600 = phi ptr [ %1570, %1569 ], [ %26, %1594 ]
  %1601 = phi i8 [ %1571, %1569 ], [ %1595, %1594 ]
  %1602 = icmp eq i8 %1601, 56
  br i1 %1602, label %1603, label %1663

1603:                                             ; preds = %1597
  %1604 = icmp ult ptr %1600, %1599
  br i1 %1604, label %1605, label %1608

1605:                                             ; preds = %1603
  %1606 = getelementptr inbounds nuw i8, ptr %1600, i64 1
  store ptr %1606, ptr %17, align 8, !tbaa !16
  %1607 = load i8, ptr %1600, align 1, !tbaa !35
  br label %1633

1608:                                             ; preds = %1603
  %1609 = load i32, ptr %19, align 8, !tbaa !13
  %1610 = icmp eq i32 %1609, 0
  br i1 %1610, label %1663, label %1611

1611:                                             ; preds = %1608
  %1612 = load ptr, ptr %20, align 8, !tbaa !8
  %1613 = load ptr, ptr %21, align 8, !tbaa !33
  %1614 = load i32, ptr %23, align 4, !tbaa !34
  %1615 = tail call i32 %1612(ptr noundef %1613, ptr noundef nonnull %22, i32 noundef %1614) #16
  %1616 = load ptr, ptr %17, align 8, !tbaa !16
  %1617 = load ptr, ptr %24, align 8, !tbaa !15
  %1618 = ptrtoint ptr %1616 to i64
  %1619 = ptrtoint ptr %1617 to i64
  %1620 = sub i64 %1618, %1619
  %1621 = trunc i64 %1620 to i32
  %1622 = load i32, ptr %25, align 8, !tbaa !14
  %1623 = add i32 %1622, %1621
  store i32 %1623, ptr %25, align 8, !tbaa !14
  %1624 = icmp eq i32 %1615, 0
  br i1 %1624, label %1625, label %1626

1625:                                             ; preds = %1611
  store i32 0, ptr %19, align 8, !tbaa !13
  store i8 0, ptr %22, align 8, !tbaa !35
  br label %1630

1626:                                             ; preds = %1611
  %1627 = sext i32 %1615 to i64
  %1628 = getelementptr inbounds i8, ptr %22, i64 %1627
  %1629 = load i8, ptr %22, align 1, !tbaa !35
  br label %1630

1630:                                             ; preds = %1626, %1625
  %1631 = phi i8 [ 0, %1625 ], [ %1629, %1626 ]
  %1632 = phi ptr [ %26, %1625 ], [ %1628, %1626 ]
  store ptr %1632, ptr %18, align 8, !tbaa !18
  store ptr %26, ptr %17, align 8, !tbaa !16
  br label %1633

1633:                                             ; preds = %1630, %1605
  %1634 = phi ptr [ %1598, %1605 ], [ %1617, %1630 ]
  %1635 = phi ptr [ %1599, %1605 ], [ %1632, %1630 ]
  %1636 = phi ptr [ %1606, %1605 ], [ %26, %1630 ]
  %1637 = phi i8 [ %1607, %1605 ], [ %1631, %1630 ]
  switch i8 %1637, label %1663 [
    i8 57, label %1638
    i8 55, label %1638
  ]

1638:                                             ; preds = %1633, %1633
  %1639 = icmp ult ptr %1636, %1635
  br i1 %1639, label %1640, label %1643

1640:                                             ; preds = %1638
  %1641 = getelementptr inbounds nuw i8, ptr %1636, i64 1
  store ptr %1641, ptr %17, align 8, !tbaa !16
  %1642 = load i8, ptr %1636, align 1, !tbaa !35
  br label %1666

1643:                                             ; preds = %1638
  %1644 = load i32, ptr %19, align 8, !tbaa !13
  %1645 = icmp eq i32 %1644, 0
  br i1 %1645, label %1663, label %1646

1646:                                             ; preds = %1643
  %1647 = load ptr, ptr %20, align 8, !tbaa !8
  %1648 = load ptr, ptr %21, align 8, !tbaa !33
  %1649 = load i32, ptr %23, align 4, !tbaa !34
  %1650 = tail call i32 %1647(ptr noundef %1648, ptr noundef nonnull %22, i32 noundef %1649) #16
  %1651 = load ptr, ptr %17, align 8, !tbaa !16
  %1652 = load ptr, ptr %24, align 8, !tbaa !15
  %1653 = ptrtoint ptr %1651 to i64
  %1654 = ptrtoint ptr %1652 to i64
  %1655 = sub i64 %1653, %1654
  %1656 = trunc i64 %1655 to i32
  %1657 = load i32, ptr %25, align 8, !tbaa !14
  %1658 = add i32 %1657, %1656
  store i32 %1658, ptr %25, align 8, !tbaa !14
  %1659 = icmp eq i32 %1650, 0
  br i1 %1659, label %1660, label %1661

1660:                                             ; preds = %1646
  store i32 0, ptr %19, align 8, !tbaa !13
  store i8 0, ptr %22, align 8, !tbaa !35
  br label %1666

1661:                                             ; preds = %1646
  %1662 = load i8, ptr %22, align 1, !tbaa !35
  br label %1666

1663:                                             ; preds = %1633, %1489, %1572, %1597, %1561, %1525, %1608, %1464, %1500, %1536, %1643
  %1664 = phi ptr [ %1634, %1633 ], [ %1490, %1489 ], [ %1562, %1572 ], [ %1598, %1597 ], [ %1562, %1561 ], [ %1526, %1525 ], [ %1598, %1608 ], [ %1459, %1464 ], [ %1490, %1500 ], [ %1526, %1536 ], [ %1634, %1643 ]
  store ptr %1664, ptr %17, align 8, !tbaa !16
  %1665 = load ptr, ptr %290, align 8, !tbaa !17
  store ptr %1665, ptr %18, align 8, !tbaa !18
  br label %2558

1666:                                             ; preds = %1660, %1661, %1640
  %1667 = phi ptr [ %1634, %1640 ], [ %1652, %1661 ], [ %1652, %1660 ]
  %1668 = phi i8 [ %1642, %1640 ], [ %1662, %1661 ], [ 0, %1660 ]
  %1669 = freeze i8 %1668
  %1670 = icmp eq i8 %1669, 97
  store ptr %1667, ptr %17, align 8, !tbaa !16
  %1671 = load ptr, ptr %290, align 8, !tbaa !17
  store ptr %1671, ptr %18, align 8, !tbaa !18
  br i1 %1670, label %1672, label %2558

1672:                                             ; preds = %1666
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  %1673 = call ptr @memset(ptr noundef nonnull %10, i32 noundef 0, i64 noundef 34928) #16
  %1674 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %1675 = load ptr, ptr %1674, align 8, !tbaa !239
  %1676 = icmp eq ptr %1675, null
  br i1 %1676, label %1677, label %1746

1677:                                             ; preds = %1672
  %1678 = call fastcc i32 @stbi__gif_header(ptr noundef nonnull %0, ptr noundef nonnull %10, ptr noundef nonnull %3, i32 noundef 0) #17
  %1679 = icmp eq i32 %1678, 0
  br i1 %1679, label %2556, label %1680

1680:                                             ; preds = %1677
  %1681 = load i32, ptr %10, align 8, !tbaa !28
  %1682 = getelementptr inbounds nuw i8, ptr %10, i64 4
  %1683 = load i32, ptr %1682, align 4, !tbaa !30
  %1684 = icmp ugt i32 %1681, 536870911
  br i1 %1684, label %2556, label %1685

1685:                                             ; preds = %1680
  %1686 = shl nuw nsw i32 %1681, 2
  %1687 = icmp sgt i32 %1683, -1
  br i1 %1687, label %1688, label %2556

1688:                                             ; preds = %1685
  %1689 = icmp eq i32 %1683, 0
  br i1 %1689, label %1693, label %1690

1690:                                             ; preds = %1688
  %1691 = udiv i32 2147483647, %1683
  %1692 = icmp samesign ugt i32 %1686, %1691
  br i1 %1692, label %2556, label %1693

1693:                                             ; preds = %1690, %1688
  %1694 = mul i32 %1683, %1681
  %1695 = shl i32 %1694, 2
  %1696 = sext i32 %1695 to i64
  %1697 = add nsw i64 %1696, 15
  %1698 = and i64 %1697, -16
  %1699 = add nsw i64 %1698, 16
  %1700 = load i64, ptr @arena_used, align 8, !tbaa !19
  %1701 = sub i64 100663296, %1700
  %1702 = icmp ugt i64 %1699, %1701
  br i1 %1702, label %1708, label %1703

1703:                                             ; preds = %1693
  %1704 = getelementptr inbounds nuw i8, ptr @arena, i64 %1700
  %1705 = add i64 %1700, %1699
  store i64 %1705, ptr @arena_used, align 8, !tbaa !19
  store i64 %1696, ptr %1704, align 8, !tbaa !19
  %1706 = getelementptr inbounds nuw i8, ptr %1704, i64 16
  %1707 = sub i64 100663296, %1705
  br label %1708

1708:                                             ; preds = %1703, %1693
  %1709 = phi i64 [ %1701, %1693 ], [ %1707, %1703 ]
  %1710 = phi i64 [ %1700, %1693 ], [ %1705, %1703 ]
  %1711 = phi ptr [ null, %1693 ], [ %1706, %1703 ]
  store ptr %1711, ptr %1674, align 8, !tbaa !239
  %1712 = icmp ugt i64 %1699, %1709
  br i1 %1712, label %1718, label %1713

1713:                                             ; preds = %1708
  %1714 = getelementptr inbounds nuw i8, ptr @arena, i64 %1710
  %1715 = add i64 %1710, %1699
  store i64 %1715, ptr @arena_used, align 8, !tbaa !19
  store i64 %1696, ptr %1714, align 8, !tbaa !19
  %1716 = getelementptr inbounds nuw i8, ptr %1714, i64 16
  %1717 = sub i64 100663296, %1715
  br label %1718

1718:                                             ; preds = %1713, %1708
  %1719 = phi i64 [ %1709, %1708 ], [ %1717, %1713 ]
  %1720 = phi i64 [ %1710, %1708 ], [ %1715, %1713 ]
  %1721 = phi ptr [ null, %1708 ], [ %1716, %1713 ]
  %1722 = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %1721, ptr %1722, align 8, !tbaa !240
  %1723 = sext i32 %1694 to i64
  %1724 = add nsw i64 %1723, 15
  %1725 = and i64 %1724, -16
  %1726 = add nsw i64 %1725, 16
  %1727 = icmp ugt i64 %1726, %1719
  br i1 %1727, label %1732, label %1728

1728:                                             ; preds = %1718
  %1729 = getelementptr inbounds nuw i8, ptr @arena, i64 %1720
  %1730 = add i64 %1720, %1726
  store i64 %1730, ptr @arena_used, align 8, !tbaa !19
  store i64 %1723, ptr %1729, align 8, !tbaa !19
  %1731 = getelementptr inbounds nuw i8, ptr %1729, i64 16
  br label %1732

1732:                                             ; preds = %1728, %1718
  %1733 = phi ptr [ %1731, %1728 ], [ null, %1718 ]
  %1734 = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %1733, ptr %1734, align 8, !tbaa !241
  %1735 = icmp eq ptr %1711, null
  br i1 %1735, label %2556, label %1736

1736:                                             ; preds = %1732
  %1737 = icmp eq ptr %1721, null
  %1738 = icmp eq ptr %1733, null
  %1739 = select i1 %1737, i1 true, i1 %1738
  br i1 %1739, label %2556, label %1740

1740:                                             ; preds = %1736
  %1741 = call ptr @memset(ptr noundef nonnull %1711, i32 noundef 0, i64 noundef %1696) #16
  %1742 = load ptr, ptr %1722, align 8, !tbaa !240
  %1743 = call ptr @memset(ptr noundef %1742, i32 noundef 0, i64 noundef %1696) #16
  %1744 = load ptr, ptr %1734, align 8, !tbaa !241
  %1745 = call ptr @memset(ptr noundef %1744, i32 noundef 0, i64 noundef %1723) #16
  br label %1793

1746:                                             ; preds = %1672
  %1747 = load i32, ptr %10, align 8, !tbaa !28
  %1748 = getelementptr inbounds nuw i8, ptr %10, i64 4
  %1749 = load i32, ptr %1748, align 4, !tbaa !30
  %1750 = mul i32 %1749, %1747
  %1751 = getelementptr inbounds nuw i8, ptr %10, i64 48
  %1752 = load i32, ptr %1751, align 8, !tbaa !242
  %1753 = and i32 %1752, 24
  %1754 = icmp eq i32 %1753, 8
  %1755 = icmp sgt i32 %1750, 0
  %1756 = select i1 %1754, i1 %1755, i1 false
  br i1 %1756, label %1757, label %1783

1757:                                             ; preds = %1746
  %1758 = getelementptr inbounds nuw i8, ptr %10, i64 24
  %1759 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %1760 = zext nneg i32 %1750 to i64
  br label %1761

1761:                                             ; preds = %1776, %1757
  %1762 = phi i64 [ 0, %1757 ], [ %1777, %1776 ]
  %1763 = load ptr, ptr %1758, align 8, !tbaa !241
  %1764 = getelementptr inbounds nuw i8, ptr %1763, i64 %1762
  %1765 = load i8, ptr %1764, align 1, !tbaa !35
  %1766 = icmp eq i8 %1765, 0
  br i1 %1766, label %1776, label %1767

1767:                                             ; preds = %1761
  %1768 = load ptr, ptr %1674, align 8, !tbaa !239
  %1769 = trunc nuw nsw i64 %1762 to i32
  %1770 = shl i32 %1769, 2
  %1771 = sext i32 %1770 to i64
  %1772 = getelementptr inbounds i8, ptr %1768, i64 %1771
  %1773 = load ptr, ptr %1759, align 8, !tbaa !240
  %1774 = getelementptr inbounds i8, ptr %1773, i64 %1771
  %1775 = call ptr @memcpy(ptr noundef %1772, ptr noundef %1774, i64 noundef 4) #16
  br label %1776

1776:                                             ; preds = %1767, %1761
  %1777 = add nuw nsw i64 %1762, 1
  %1778 = icmp eq i64 %1777, %1760
  br i1 %1778, label %1779, label %1761, !llvm.loop !243

1779:                                             ; preds = %1776
  %1780 = load ptr, ptr %1674, align 8, !tbaa !239
  %1781 = load i32, ptr %10, align 8, !tbaa !28
  %1782 = load i32, ptr %1748, align 4, !tbaa !30
  br label %1783

1783:                                             ; preds = %1779, %1746
  %1784 = phi i32 [ %1782, %1779 ], [ %1749, %1746 ]
  %1785 = phi i32 [ %1781, %1779 ], [ %1747, %1746 ]
  %1786 = phi ptr [ %1780, %1779 ], [ %1675, %1746 ]
  %1787 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %1788 = load ptr, ptr %1787, align 8, !tbaa !240
  %1789 = shl i32 %1784, 2
  %1790 = mul i32 %1789, %1785
  %1791 = sext i32 %1790 to i64
  %1792 = call ptr @memcpy(ptr noundef %1788, ptr noundef %1786, i64 noundef %1791) #16
  br label %1793

1793:                                             ; preds = %1783, %1740
  %1794 = getelementptr inbounds nuw i8, ptr %10, i64 24
  %1795 = load ptr, ptr %1794, align 8, !tbaa !241
  %1796 = load i32, ptr %10, align 8, !tbaa !28
  %1797 = getelementptr inbounds nuw i8, ptr %10, i64 4
  %1798 = load i32, ptr %1797, align 4, !tbaa !30
  %1799 = mul i32 %1798, %1796
  %1800 = sext i32 %1799 to i64
  %1801 = call ptr @memset(ptr noundef %1795, i32 noundef 0, i64 noundef %1800) #16
  %1802 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %1803 = getelementptr inbounds nuw i8, ptr %10, i64 48
  %1804 = getelementptr inbounds nuw i8, ptr %10, i64 34920
  %1805 = getelementptr inbounds nuw i8, ptr %10, i64 44
  br label %1806

1806:                                             ; preds = %2495, %1793
  %1807 = load ptr, ptr %17, align 8, !tbaa !16
  %1808 = load ptr, ptr %18, align 8, !tbaa !18
  %1809 = icmp ult ptr %1807, %1808
  br i1 %1809, label %1810, label %1813

1810:                                             ; preds = %1806
  %1811 = getelementptr inbounds nuw i8, ptr %1807, i64 1
  store ptr %1811, ptr %17, align 8, !tbaa !16
  %1812 = load i8, ptr %1807, align 1, !tbaa !35
  br label %1838

1813:                                             ; preds = %1806
  %1814 = load i32, ptr %19, align 8, !tbaa !13
  %1815 = icmp eq i32 %1814, 0
  br i1 %1815, label %2556, label %1816

1816:                                             ; preds = %1813
  %1817 = load ptr, ptr %20, align 8, !tbaa !8
  %1818 = load ptr, ptr %21, align 8, !tbaa !33
  %1819 = load i32, ptr %23, align 4, !tbaa !34
  %1820 = call i32 %1817(ptr noundef %1818, ptr noundef nonnull %22, i32 noundef %1819) #16
  %1821 = load ptr, ptr %17, align 8, !tbaa !16
  %1822 = load ptr, ptr %24, align 8, !tbaa !15
  %1823 = ptrtoint ptr %1821 to i64
  %1824 = ptrtoint ptr %1822 to i64
  %1825 = sub i64 %1823, %1824
  %1826 = trunc i64 %1825 to i32
  %1827 = load i32, ptr %25, align 8, !tbaa !14
  %1828 = add i32 %1827, %1826
  store i32 %1828, ptr %25, align 8, !tbaa !14
  %1829 = icmp eq i32 %1820, 0
  br i1 %1829, label %1830, label %1831

1830:                                             ; preds = %1816
  store i32 0, ptr %19, align 8, !tbaa !13
  store i8 0, ptr %22, align 8, !tbaa !35
  br label %1835

1831:                                             ; preds = %1816
  %1832 = sext i32 %1820 to i64
  %1833 = getelementptr inbounds i8, ptr %22, i64 %1832
  %1834 = load i8, ptr %22, align 1, !tbaa !35
  br label %1835

1835:                                             ; preds = %1831, %1830
  %1836 = phi i8 [ 0, %1830 ], [ %1834, %1831 ]
  %1837 = phi ptr [ %26, %1830 ], [ %1833, %1831 ]
  store ptr %1837, ptr %18, align 8, !tbaa !18
  store ptr %26, ptr %17, align 8, !tbaa !16
  br label %1838

1838:                                             ; preds = %1835, %1810
  %1839 = phi ptr [ %1808, %1810 ], [ %1837, %1835 ]
  %1840 = phi ptr [ %1811, %1810 ], [ %26, %1835 ]
  %1841 = phi i8 [ %1812, %1810 ], [ %1836, %1835 ]
  switch i8 %1841, label %2556 [
    i8 44, label %1842
    i8 33, label %2301
  ]

1842:                                             ; preds = %1838
  %1843 = call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) #17
  %1844 = call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) #17
  %1845 = call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) #17
  %1846 = call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) #17
  %1847 = add nuw nsw i32 %1845, %1843
  %1848 = load i32, ptr %10, align 8, !tbaa !28
  %1849 = icmp sgt i32 %1847, %1848
  br i1 %1849, label %2556, label %1850

1850:                                             ; preds = %1842
  %1851 = add nuw nsw i32 %1846, %1844
  %1852 = load i32, ptr %1797, align 4, !tbaa !30
  %1853 = icmp sgt i32 %1851, %1852
  br i1 %1853, label %2556, label %1854

1854:                                             ; preds = %1850
  %1855 = shl i32 %1848, 2
  %1856 = getelementptr inbounds nuw i8, ptr %10, i64 34916
  store i32 %1855, ptr %1856, align 4, !tbaa !244
  %1857 = shl nuw nsw i32 %1843, 2
  %1858 = getelementptr inbounds nuw i8, ptr %10, i64 34892
  store i32 %1857, ptr %1858, align 4, !tbaa !245
  %1859 = mul i32 %1855, %1844
  %1860 = getelementptr inbounds nuw i8, ptr %10, i64 34896
  store i32 %1859, ptr %1860, align 8, !tbaa !246
  %1861 = shl nuw nsw i32 %1847, 2
  %1862 = getelementptr inbounds nuw i8, ptr %10, i64 34900
  store i32 %1861, ptr %1862, align 4, !tbaa !247
  %1863 = mul i32 %1855, %1851
  %1864 = getelementptr inbounds nuw i8, ptr %10, i64 34904
  store i32 %1863, ptr %1864, align 8, !tbaa !248
  %1865 = getelementptr inbounds nuw i8, ptr %10, i64 34908
  store i32 %1857, ptr %1865, align 4, !tbaa !249
  %1866 = getelementptr inbounds nuw i8, ptr %10, i64 34912
  %1867 = icmp eq i32 %1845, 0
  %1868 = select i1 %1867, i32 %1863, i32 %1859
  store i32 %1868, ptr %1866, align 8
  %1869 = load ptr, ptr %17, align 8, !tbaa !16
  %1870 = load ptr, ptr %18, align 8, !tbaa !18
  %1871 = icmp ult ptr %1869, %1870
  br i1 %1871, label %1872, label %1875

1872:                                             ; preds = %1854
  %1873 = getelementptr inbounds nuw i8, ptr %1869, i64 1
  store ptr %1873, ptr %17, align 8, !tbaa !16
  %1874 = load i8, ptr %1869, align 1, !tbaa !35
  br label %1905

1875:                                             ; preds = %1854
  %1876 = load i32, ptr %19, align 8, !tbaa !13
  %1877 = icmp eq i32 %1876, 0
  br i1 %1877, label %1878, label %1882

1878:                                             ; preds = %1875
  %1879 = getelementptr inbounds nuw i8, ptr %10, i64 34888
  store i32 0, ptr %1879, align 8, !tbaa !250
  %1880 = getelementptr inbounds nuw i8, ptr %10, i64 34884
  store i32 %1855, ptr %1880, align 4, !tbaa !251
  %1881 = getelementptr inbounds nuw i8, ptr %10, i64 34880
  store i32 0, ptr %1881, align 8, !tbaa !252
  br label %1932

1882:                                             ; preds = %1875
  %1883 = load ptr, ptr %20, align 8, !tbaa !8
  %1884 = load ptr, ptr %21, align 8, !tbaa !33
  %1885 = load i32, ptr %23, align 4, !tbaa !34
  %1886 = call i32 %1883(ptr noundef %1884, ptr noundef nonnull %22, i32 noundef %1885) #16
  %1887 = load ptr, ptr %17, align 8, !tbaa !16
  %1888 = load ptr, ptr %24, align 8, !tbaa !15
  %1889 = ptrtoint ptr %1887 to i64
  %1890 = ptrtoint ptr %1888 to i64
  %1891 = sub i64 %1889, %1890
  %1892 = trunc i64 %1891 to i32
  %1893 = load i32, ptr %25, align 8, !tbaa !14
  %1894 = add i32 %1893, %1892
  store i32 %1894, ptr %25, align 8, !tbaa !14
  %1895 = icmp eq i32 %1886, 0
  br i1 %1895, label %1896, label %1897

1896:                                             ; preds = %1882
  store i32 0, ptr %19, align 8, !tbaa !13
  store i8 0, ptr %22, align 8, !tbaa !35
  br label %1901

1897:                                             ; preds = %1882
  %1898 = sext i32 %1886 to i64
  %1899 = getelementptr inbounds i8, ptr %22, i64 %1898
  %1900 = load i8, ptr %22, align 1, !tbaa !35
  br label %1901

1901:                                             ; preds = %1897, %1896
  %1902 = phi i8 [ 0, %1896 ], [ %1900, %1897 ]
  %1903 = phi ptr [ %26, %1896 ], [ %1899, %1897 ]
  store ptr %1903, ptr %18, align 8, !tbaa !18
  store ptr %26, ptr %17, align 8, !tbaa !16
  %1904 = load i32, ptr %1856, align 4, !tbaa !244
  br label %1905

1905:                                             ; preds = %1901, %1872
  %1906 = phi i32 [ %1855, %1872 ], [ %1904, %1901 ]
  %1907 = phi ptr [ %1870, %1872 ], [ %1903, %1901 ]
  %1908 = phi ptr [ %1873, %1872 ], [ %26, %1901 ]
  %1909 = phi i8 [ %1874, %1872 ], [ %1902, %1901 ]
  %1910 = zext i8 %1909 to i32
  %1911 = getelementptr inbounds nuw i8, ptr %10, i64 34888
  store i32 %1910, ptr %1911, align 8, !tbaa !250
  %1912 = and i32 %1910, 64
  %1913 = icmp eq i32 %1912, 0
  %1914 = shl i32 %1906, 3
  %1915 = select i1 %1913, i32 %1906, i32 %1914
  %1916 = select i1 %1913, i32 0, i32 3
  %1917 = getelementptr inbounds nuw i8, ptr %10, i64 34884
  store i32 %1915, ptr %1917, align 4, !tbaa !251
  %1918 = getelementptr inbounds nuw i8, ptr %10, i64 34880
  store i32 %1916, ptr %1918, align 8, !tbaa !252
  %1919 = icmp sgt i8 %1909, -1
  br i1 %1919, label %1932, label %1920

1920:                                             ; preds = %1905
  %1921 = getelementptr inbounds nuw i8, ptr %10, i64 1076
  %1922 = and i32 %1910, 7
  %1923 = shl nuw nsw i32 2, %1922
  %1924 = load i32, ptr %1803, align 8, !tbaa !242
  %1925 = and i32 %1924, 1
  %1926 = icmp eq i32 %1925, 0
  %1927 = load i32, ptr %1805, align 4
  %1928 = select i1 %1926, i32 -1, i32 %1927
  call fastcc void @stbi__gif_parse_colortable(ptr noundef nonnull %0, ptr noundef %1921, i32 noundef %1923, i32 noundef %1928) #17
  %1929 = getelementptr inbounds nuw i8, ptr %10, i64 34872
  store ptr %1921, ptr %1929, align 8, !tbaa !253
  %1930 = load ptr, ptr %17, align 8, !tbaa !16
  %1931 = load ptr, ptr %18, align 8, !tbaa !18
  br label %1942

1932:                                             ; preds = %1905, %1878
  %1933 = phi ptr [ %1869, %1878 ], [ %1908, %1905 ]
  %1934 = phi ptr [ %1870, %1878 ], [ %1907, %1905 ]
  %1935 = getelementptr inbounds nuw i8, ptr %10, i64 32
  %1936 = load i32, ptr %1935, align 8, !tbaa !207
  %1937 = and i32 %1936, 128
  %1938 = icmp eq i32 %1937, 0
  br i1 %1938, label %2556, label %1939

1939:                                             ; preds = %1932
  %1940 = getelementptr inbounds nuw i8, ptr %10, i64 52
  %1941 = getelementptr inbounds nuw i8, ptr %10, i64 34872
  store ptr %1940, ptr %1941, align 8, !tbaa !253
  br label %1942

1942:                                             ; preds = %1939, %1920
  %1943 = phi ptr [ %1934, %1939 ], [ %1931, %1920 ]
  %1944 = phi ptr [ %1933, %1939 ], [ %1930, %1920 ]
  %1945 = icmp ult ptr %1944, %1943
  br i1 %1945, label %1946, label %1949

1946:                                             ; preds = %1942
  %1947 = getelementptr inbounds nuw i8, ptr %1944, i64 1
  store ptr %1947, ptr %17, align 8, !tbaa !16
  %1948 = load i8, ptr %1944, align 1, !tbaa !35
  br label %1974

1949:                                             ; preds = %1942
  %1950 = load i32, ptr %19, align 8, !tbaa !13
  %1951 = icmp eq i32 %1950, 0
  br i1 %1951, label %1977, label %1952

1952:                                             ; preds = %1949
  %1953 = load ptr, ptr %20, align 8, !tbaa !8
  %1954 = load ptr, ptr %21, align 8, !tbaa !33
  %1955 = load i32, ptr %23, align 4, !tbaa !34
  %1956 = call i32 %1953(ptr noundef %1954, ptr noundef nonnull %22, i32 noundef %1955) #16
  %1957 = load ptr, ptr %17, align 8, !tbaa !16
  %1958 = load ptr, ptr %24, align 8, !tbaa !15
  %1959 = ptrtoint ptr %1957 to i64
  %1960 = ptrtoint ptr %1958 to i64
  %1961 = sub i64 %1959, %1960
  %1962 = trunc i64 %1961 to i32
  %1963 = load i32, ptr %25, align 8, !tbaa !14
  %1964 = add i32 %1963, %1962
  store i32 %1964, ptr %25, align 8, !tbaa !14
  %1965 = icmp eq i32 %1956, 0
  br i1 %1965, label %1966, label %1967

1966:                                             ; preds = %1952
  store i32 0, ptr %19, align 8, !tbaa !13
  store i8 0, ptr %22, align 8, !tbaa !35
  br label %1971

1967:                                             ; preds = %1952
  %1968 = sext i32 %1956 to i64
  %1969 = getelementptr inbounds i8, ptr %22, i64 %1968
  %1970 = load i8, ptr %22, align 1, !tbaa !35
  br label %1971

1971:                                             ; preds = %1967, %1966
  %1972 = phi i8 [ 0, %1966 ], [ %1970, %1967 ]
  %1973 = phi ptr [ %26, %1966 ], [ %1969, %1967 ]
  store ptr %1973, ptr %18, align 8, !tbaa !18
  store ptr %26, ptr %17, align 8, !tbaa !16
  br label %1974

1974:                                             ; preds = %1971, %1946
  %1975 = phi i8 [ %1948, %1946 ], [ %1972, %1971 ]
  %1976 = icmp ugt i8 %1975, 12
  br i1 %1976, label %2556, label %1977

1977:                                             ; preds = %1974, %1949
  %1978 = phi i8 [ %1975, %1974 ], [ 0, %1949 ]
  %1979 = zext nneg i8 %1978 to i32
  %1980 = shl nuw nsw i32 1, %1979
  %1981 = getelementptr inbounds nuw i8, ptr %10, i64 2100
  %1982 = zext nneg i32 %1980 to i64
  %1983 = and i64 %1982, 3
  %1984 = icmp samesign ult i8 %1978, 2
  br i1 %1984, label %2014, label %1985

1985:                                             ; preds = %1977
  %1986 = and i64 %1982, 65532
  br label %1987

1987:                                             ; preds = %1987, %1985
  %1988 = phi i64 [ 0, %1985 ], [ %2009, %1987 ]
  %1989 = phi i64 [ 0, %1985 ], [ %2010, %1987 ]
  %1990 = getelementptr inbounds nuw %struct.stbi__gif_lzw, ptr %1981, i64 %1988
  store i16 -1, ptr %1990, align 4, !tbaa !254
  %1991 = trunc i64 %1988 to i8
  %1992 = getelementptr inbounds nuw i8, ptr %1990, i64 2
  store i8 %1991, ptr %1992, align 2, !tbaa !256
  %1993 = getelementptr inbounds nuw i8, ptr %1990, i64 3
  store i8 %1991, ptr %1993, align 1, !tbaa !257
  %1994 = or disjoint i64 %1988, 1
  %1995 = getelementptr inbounds nuw %struct.stbi__gif_lzw, ptr %1981, i64 %1994
  store i16 -1, ptr %1995, align 8, !tbaa !254
  %1996 = trunc i64 %1994 to i8
  %1997 = getelementptr inbounds nuw i8, ptr %1995, i64 2
  store i8 %1996, ptr %1997, align 2, !tbaa !256
  %1998 = getelementptr inbounds nuw i8, ptr %1995, i64 3
  store i8 %1996, ptr %1998, align 1, !tbaa !257
  %1999 = or disjoint i64 %1988, 2
  %2000 = getelementptr inbounds nuw %struct.stbi__gif_lzw, ptr %1981, i64 %1999
  store i16 -1, ptr %2000, align 4, !tbaa !254
  %2001 = trunc i64 %1999 to i8
  %2002 = getelementptr inbounds nuw i8, ptr %2000, i64 2
  store i8 %2001, ptr %2002, align 2, !tbaa !256
  %2003 = getelementptr inbounds nuw i8, ptr %2000, i64 3
  store i8 %2001, ptr %2003, align 1, !tbaa !257
  %2004 = or disjoint i64 %1988, 3
  %2005 = getelementptr inbounds nuw %struct.stbi__gif_lzw, ptr %1981, i64 %2004
  store i16 -1, ptr %2005, align 8, !tbaa !254
  %2006 = trunc i64 %2004 to i8
  %2007 = getelementptr inbounds nuw i8, ptr %2005, i64 2
  store i8 %2006, ptr %2007, align 2, !tbaa !256
  %2008 = getelementptr inbounds nuw i8, ptr %2005, i64 3
  store i8 %2006, ptr %2008, align 1, !tbaa !257
  %2009 = add nuw nsw i64 %1988, 4
  %2010 = add i64 %1989, 4
  %2011 = icmp eq i64 %2010, %1986
  br i1 %2011, label %2012, label %1987, !llvm.loop !258

2012:                                             ; preds = %1987
  %2013 = icmp eq i64 %1983, 0
  br i1 %2013, label %2027, label %2014

2014:                                             ; preds = %2012, %1977
  %2015 = phi i64 [ 0, %1977 ], [ %2009, %2012 ]
  %2016 = icmp ne i64 %1983, 0
  call void @llvm.assume(i1 %2016)
  br label %2017

2017:                                             ; preds = %2017, %2014
  %2018 = phi i64 [ %2015, %2014 ], [ %2024, %2017 ]
  %2019 = phi i64 [ 0, %2014 ], [ %2025, %2017 ]
  %2020 = getelementptr inbounds nuw %struct.stbi__gif_lzw, ptr %1981, i64 %2018
  store i16 -1, ptr %2020, align 4, !tbaa !254
  %2021 = trunc i64 %2018 to i8
  %2022 = getelementptr inbounds nuw i8, ptr %2020, i64 2
  store i8 %2021, ptr %2022, align 2, !tbaa !256
  %2023 = getelementptr inbounds nuw i8, ptr %2020, i64 3
  store i8 %2021, ptr %2023, align 1, !tbaa !257
  %2024 = add nuw nsw i64 %2018, 1
  %2025 = add i64 %2019, 1
  %2026 = icmp eq i64 %2025, %1983
  br i1 %2026, label %2027, label %2017, !llvm.loop !259

2027:                                             ; preds = %2017, %2012
  %2028 = add nuw nsw i32 %1979, 1
  %2029 = shl nuw nsw i32 2, %1979
  %2030 = add nsw i32 %2029, -1
  %2031 = add nuw nsw i32 %1980, 2
  %2032 = add nuw nsw i32 %1980, 1
  br label %2033

2033:                                             ; preds = %2257, %2027
  %2034 = phi i1 [ false, %2027 ], [ true, %2257 ]
  %2035 = phi i32 [ %2028, %2027 ], [ %2258, %2257 ]
  %2036 = phi i32 [ %2030, %2027 ], [ %2259, %2257 ]
  %2037 = phi i32 [ %2031, %2027 ], [ %2260, %2257 ]
  %2038 = phi i32 [ -1, %2027 ], [ %2261, %2257 ]
  %2039 = phi i32 [ 0, %2027 ], [ %2129, %2257 ]
  %2040 = phi i32 [ 0, %2027 ], [ %2130, %2257 ]
  %2041 = phi i32 [ 0, %2027 ], [ %2045, %2257 ]
  br label %2042

2042:                                             ; preds = %2033, %2121
  %2043 = phi i32 [ %2125, %2121 ], [ %2039, %2033 ]
  %2044 = phi i32 [ %2126, %2121 ], [ %2040, %2033 ]
  %2045 = phi i32 [ %2091, %2121 ], [ %2041, %2033 ]
  %2046 = icmp slt i32 %2044, %2035
  br i1 %2046, label %2047, label %2127

2047:                                             ; preds = %2042
  %2048 = icmp eq i32 %2045, 0
  %2049 = load ptr, ptr %17, align 8, !tbaa !16
  %2050 = load ptr, ptr %18, align 8, !tbaa !18
  br i1 %2048, label %2051, label %2087

2051:                                             ; preds = %2047
  %2052 = icmp ult ptr %2049, %2050
  br i1 %2052, label %2053, label %2056

2053:                                             ; preds = %2051
  %2054 = getelementptr inbounds nuw i8, ptr %2049, i64 1
  store ptr %2054, ptr %17, align 8, !tbaa !16
  %2055 = load i8, ptr %2049, align 1, !tbaa !35
  br label %2081

2056:                                             ; preds = %2051
  %2057 = load i32, ptr %19, align 8, !tbaa !13
  %2058 = icmp eq i32 %2057, 0
  br i1 %2058, label %2262, label %2059

2059:                                             ; preds = %2056
  %2060 = load ptr, ptr %20, align 8, !tbaa !8
  %2061 = load ptr, ptr %21, align 8, !tbaa !33
  %2062 = load i32, ptr %23, align 4, !tbaa !34
  %2063 = call i32 %2060(ptr noundef %2061, ptr noundef nonnull %22, i32 noundef %2062) #16
  %2064 = load ptr, ptr %17, align 8, !tbaa !16
  %2065 = load ptr, ptr %24, align 8, !tbaa !15
  %2066 = ptrtoint ptr %2064 to i64
  %2067 = ptrtoint ptr %2065 to i64
  %2068 = sub i64 %2066, %2067
  %2069 = trunc i64 %2068 to i32
  %2070 = load i32, ptr %25, align 8, !tbaa !14
  %2071 = add i32 %2070, %2069
  store i32 %2071, ptr %25, align 8, !tbaa !14
  %2072 = icmp eq i32 %2063, 0
  br i1 %2072, label %2073, label %2074

2073:                                             ; preds = %2059
  store i32 0, ptr %19, align 8, !tbaa !13
  store i8 0, ptr %22, align 8, !tbaa !35
  br label %2078

2074:                                             ; preds = %2059
  %2075 = sext i32 %2063 to i64
  %2076 = getelementptr inbounds i8, ptr %22, i64 %2075
  %2077 = load i8, ptr %22, align 1, !tbaa !35
  br label %2078

2078:                                             ; preds = %2074, %2073
  %2079 = phi i8 [ 0, %2073 ], [ %2077, %2074 ]
  %2080 = phi ptr [ %26, %2073 ], [ %2076, %2074 ]
  store ptr %2080, ptr %18, align 8, !tbaa !18
  store ptr %26, ptr %17, align 8, !tbaa !16
  br label %2081

2081:                                             ; preds = %2078, %2053
  %2082 = phi ptr [ %2050, %2053 ], [ %2080, %2078 ]
  %2083 = phi ptr [ %2054, %2053 ], [ %26, %2078 ]
  %2084 = phi i8 [ %2055, %2053 ], [ %2079, %2078 ]
  %2085 = zext i8 %2084 to i32
  %2086 = icmp eq i8 %2084, 0
  br i1 %2086, label %2262, label %2087

2087:                                             ; preds = %2081, %2047
  %2088 = phi ptr [ %2082, %2081 ], [ %2050, %2047 ]
  %2089 = phi ptr [ %2083, %2081 ], [ %2049, %2047 ]
  %2090 = phi i32 [ %2085, %2081 ], [ %2045, %2047 ]
  %2091 = add nsw i32 %2090, -1
  %2092 = icmp ult ptr %2089, %2088
  br i1 %2092, label %2093, label %2096

2093:                                             ; preds = %2087
  %2094 = getelementptr inbounds nuw i8, ptr %2089, i64 1
  store ptr %2094, ptr %17, align 8, !tbaa !16
  %2095 = load i8, ptr %2089, align 1, !tbaa !35
  br label %2121

2096:                                             ; preds = %2087
  %2097 = load i32, ptr %19, align 8, !tbaa !13
  %2098 = icmp eq i32 %2097, 0
  br i1 %2098, label %2121, label %2099

2099:                                             ; preds = %2096
  %2100 = load ptr, ptr %20, align 8, !tbaa !8
  %2101 = load ptr, ptr %21, align 8, !tbaa !33
  %2102 = load i32, ptr %23, align 4, !tbaa !34
  %2103 = call i32 %2100(ptr noundef %2101, ptr noundef nonnull %22, i32 noundef %2102) #16
  %2104 = load ptr, ptr %17, align 8, !tbaa !16
  %2105 = load ptr, ptr %24, align 8, !tbaa !15
  %2106 = ptrtoint ptr %2104 to i64
  %2107 = ptrtoint ptr %2105 to i64
  %2108 = sub i64 %2106, %2107
  %2109 = trunc i64 %2108 to i32
  %2110 = load i32, ptr %25, align 8, !tbaa !14
  %2111 = add i32 %2110, %2109
  store i32 %2111, ptr %25, align 8, !tbaa !14
  %2112 = icmp eq i32 %2103, 0
  br i1 %2112, label %2113, label %2114

2113:                                             ; preds = %2099
  store i32 0, ptr %19, align 8, !tbaa !13
  store i8 0, ptr %22, align 8, !tbaa !35
  br label %2118

2114:                                             ; preds = %2099
  %2115 = sext i32 %2103 to i64
  %2116 = getelementptr inbounds i8, ptr %22, i64 %2115
  %2117 = load i8, ptr %22, align 1, !tbaa !35
  br label %2118

2118:                                             ; preds = %2114, %2113
  %2119 = phi i8 [ 0, %2113 ], [ %2117, %2114 ]
  %2120 = phi ptr [ %26, %2113 ], [ %2116, %2114 ]
  store ptr %2120, ptr %18, align 8, !tbaa !18
  store ptr %26, ptr %17, align 8, !tbaa !16
  br label %2121

2121:                                             ; preds = %2118, %2096, %2093
  %2122 = phi i8 [ %2095, %2093 ], [ %2119, %2118 ], [ 0, %2096 ]
  %2123 = zext i8 %2122 to i32
  %2124 = shl i32 %2123, %2044
  %2125 = or i32 %2124, %2043
  %2126 = add i32 %2044, 8
  br label %2042

2127:                                             ; preds = %2042
  %2128 = and i32 %2043, %2036
  %2129 = ashr i32 %2043, %2035
  %2130 = sub i32 %2044, %2035
  %2131 = icmp eq i32 %2128, %1980
  br i1 %2131, label %2257, label %2132

2132:                                             ; preds = %2127
  %2133 = icmp eq i32 %2128, %2032
  br i1 %2133, label %2134, label %2217

2134:                                             ; preds = %2132
  %2135 = icmp eq i32 %2045, 0
  br i1 %2135, label %2161, label %2136

2136:                                             ; preds = %2134
  %2137 = icmp slt i32 %2045, 0
  br i1 %2137, label %2138, label %2140

2138:                                             ; preds = %2136
  %2139 = load ptr, ptr %18, align 8, !tbaa !18
  store ptr %2139, ptr %17, align 8, !tbaa !16
  br label %2161

2140:                                             ; preds = %2136
  %2141 = load ptr, ptr %20, align 8, !tbaa !8
  %2142 = icmp eq ptr %2141, null
  br i1 %2142, label %2143, label %2145

2143:                                             ; preds = %2140
  %2144 = load ptr, ptr %17, align 8, !tbaa !16
  br label %2157

2145:                                             ; preds = %2140
  %2146 = load ptr, ptr %18, align 8, !tbaa !18
  %2147 = load ptr, ptr %17, align 8, !tbaa !16
  %2148 = ptrtoint ptr %2146 to i64
  %2149 = ptrtoint ptr %2147 to i64
  %2150 = sub i64 %2148, %2149
  %2151 = trunc i64 %2150 to i32
  %2152 = icmp sgt i32 %2045, %2151
  br i1 %2152, label %2153, label %2157

2153:                                             ; preds = %2145
  store ptr %2146, ptr %17, align 8, !tbaa !16
  %2154 = load ptr, ptr %1802, align 8, !tbaa !36
  %2155 = load ptr, ptr %21, align 8, !tbaa !33
  %2156 = sub i32 %2045, %2151
  call void %2154(ptr noundef %2155, i32 noundef %2156) #16
  br label %2161

2157:                                             ; preds = %2145, %2143
  %2158 = phi ptr [ %2144, %2143 ], [ %2147, %2145 ]
  %2159 = zext nneg i32 %2045 to i64
  %2160 = getelementptr inbounds nuw i8, ptr %2158, i64 %2159
  store ptr %2160, ptr %17, align 8, !tbaa !16
  br label %2161

2161:                                             ; preds = %2157, %2153, %2138, %2134
  br label %2162

2162:                                             ; preds = %2216, %2161
  %2163 = load ptr, ptr %17, align 8, !tbaa !16
  %2164 = load ptr, ptr %18, align 8, !tbaa !18
  %2165 = icmp ult ptr %2163, %2164
  br i1 %2165, label %2166, label %2169

2166:                                             ; preds = %2162
  %2167 = getelementptr inbounds nuw i8, ptr %2163, i64 1
  store ptr %2167, ptr %17, align 8, !tbaa !16
  %2168 = load i8, ptr %2163, align 1, !tbaa !35
  br label %2194

2169:                                             ; preds = %2162
  %2170 = load i32, ptr %19, align 8, !tbaa !13
  %2171 = icmp eq i32 %2170, 0
  br i1 %2171, label %2262, label %2172

2172:                                             ; preds = %2169
  %2173 = load ptr, ptr %20, align 8, !tbaa !8
  %2174 = load ptr, ptr %21, align 8, !tbaa !33
  %2175 = load i32, ptr %23, align 4, !tbaa !34
  %2176 = call i32 %2173(ptr noundef %2174, ptr noundef nonnull %22, i32 noundef %2175) #16
  %2177 = load ptr, ptr %17, align 8, !tbaa !16
  %2178 = load ptr, ptr %24, align 8, !tbaa !15
  %2179 = ptrtoint ptr %2177 to i64
  %2180 = ptrtoint ptr %2178 to i64
  %2181 = sub i64 %2179, %2180
  %2182 = trunc i64 %2181 to i32
  %2183 = load i32, ptr %25, align 8, !tbaa !14
  %2184 = add i32 %2183, %2182
  store i32 %2184, ptr %25, align 8, !tbaa !14
  %2185 = icmp eq i32 %2176, 0
  br i1 %2185, label %2186, label %2187

2186:                                             ; preds = %2172
  store i32 0, ptr %19, align 8, !tbaa !13
  store i8 0, ptr %22, align 8, !tbaa !35
  br label %2191

2187:                                             ; preds = %2172
  %2188 = sext i32 %2176 to i64
  %2189 = getelementptr inbounds i8, ptr %22, i64 %2188
  %2190 = load i8, ptr %22, align 1, !tbaa !35
  br label %2191

2191:                                             ; preds = %2187, %2186
  %2192 = phi i8 [ 0, %2186 ], [ %2190, %2187 ]
  %2193 = phi ptr [ %26, %2186 ], [ %2189, %2187 ]
  store ptr %2193, ptr %18, align 8, !tbaa !18
  store ptr %26, ptr %17, align 8, !tbaa !16
  br label %2194

2194:                                             ; preds = %2191, %2166
  %2195 = phi ptr [ %2167, %2166 ], [ %26, %2191 ]
  %2196 = phi ptr [ %2164, %2166 ], [ %2193, %2191 ]
  %2197 = phi i8 [ %2168, %2166 ], [ %2192, %2191 ]
  %2198 = icmp eq i8 %2197, 0
  br i1 %2198, label %2262, label %2199

2199:                                             ; preds = %2194
  %2200 = zext i8 %2197 to i32
  %2201 = load ptr, ptr %20, align 8, !tbaa !8
  %2202 = icmp eq ptr %2201, null
  br i1 %2202, label %2213, label %2203

2203:                                             ; preds = %2199
  %2204 = ptrtoint ptr %2196 to i64
  %2205 = ptrtoint ptr %2195 to i64
  %2206 = sub i64 %2204, %2205
  %2207 = trunc i64 %2206 to i32
  %2208 = icmp sgt i32 %2200, %2207
  br i1 %2208, label %2209, label %2213

2209:                                             ; preds = %2203
  store ptr %2196, ptr %17, align 8, !tbaa !16
  %2210 = load ptr, ptr %1802, align 8, !tbaa !36
  %2211 = load ptr, ptr %21, align 8, !tbaa !33
  %2212 = sub i32 %2200, %2207
  call void %2210(ptr noundef %2211, i32 noundef %2212) #16
  br label %2216

2213:                                             ; preds = %2203, %2199
  %2214 = zext i8 %2197 to i64
  %2215 = getelementptr inbounds nuw i8, ptr %2195, i64 %2214
  store ptr %2215, ptr %17, align 8, !tbaa !16
  br label %2216

2216:                                             ; preds = %2213, %2209
  br label %2162, !llvm.loop !260

2217:                                             ; preds = %2132
  %2218 = icmp sle i32 %2128, %2037
  %2219 = and i1 %2218, %2034
  br i1 %2219, label %2220, label %2556

2220:                                             ; preds = %2217
  %2221 = icmp sgt i32 %2038, -1
  br i1 %2221, label %2222, label %2243

2222:                                             ; preds = %2220
  %2223 = add i32 %2037, 1
  %2224 = sext i32 %2037 to i64
  %2225 = getelementptr inbounds %struct.stbi__gif_lzw, ptr %1981, i64 %2224
  %2226 = icmp sgt i32 %2223, 8192
  br i1 %2226, label %2556, label %2227

2227:                                             ; preds = %2222
  %2228 = trunc i32 %2038 to i16
  store i16 %2228, ptr %2225, align 4, !tbaa !254
  %2229 = zext nneg i32 %2038 to i64
  %2230 = getelementptr inbounds nuw %struct.stbi__gif_lzw, ptr %1981, i64 %2229
  %2231 = getelementptr inbounds nuw i8, ptr %2230, i64 2
  %2232 = load i8, ptr %2231, align 2, !tbaa !256
  %2233 = getelementptr inbounds nuw i8, ptr %2225, i64 2
  store i8 %2232, ptr %2233, align 2, !tbaa !256
  %2234 = icmp eq i32 %2128, %2223
  br i1 %2234, label %2240, label %2235

2235:                                             ; preds = %2227
  %2236 = sext i32 %2128 to i64
  %2237 = getelementptr inbounds %struct.stbi__gif_lzw, ptr %1981, i64 %2236
  %2238 = getelementptr inbounds nuw i8, ptr %2237, i64 2
  %2239 = load i8, ptr %2238, align 2, !tbaa !256
  br label %2240

2240:                                             ; preds = %2235, %2227
  %2241 = phi i8 [ %2239, %2235 ], [ %2232, %2227 ]
  %2242 = getelementptr inbounds nuw i8, ptr %2225, i64 3
  store i8 %2241, ptr %2242, align 1, !tbaa !257
  br label %2245

2243:                                             ; preds = %2220
  %2244 = icmp eq i32 %2128, %2037
  br i1 %2244, label %2556, label %2245

2245:                                             ; preds = %2243, %2240
  %2246 = phi i32 [ %2223, %2240 ], [ %2037, %2243 ]
  %2247 = trunc i32 %2128 to i16
  call fastcc void @stbi__out_gif_code(ptr noundef nonnull %10, i16 noundef zeroext %2247) #17
  %2248 = and i32 %2246, %2036
  %2249 = icmp eq i32 %2248, 0
  %2250 = icmp slt i32 %2246, 4096
  %2251 = and i1 %2250, %2249
  %2252 = add i32 %2035, 1
  %2253 = shl nsw i32 -1, %2252
  %2254 = xor i32 %2253, -1
  %2255 = select i1 %2251, i32 %2252, i32 %2035
  %2256 = select i1 %2251, i32 %2254, i32 %2036
  br label %2257

2257:                                             ; preds = %2245, %2127
  %2258 = phi i32 [ %2028, %2127 ], [ %2255, %2245 ]
  %2259 = phi i32 [ %2030, %2127 ], [ %2256, %2245 ]
  %2260 = phi i32 [ %2031, %2127 ], [ %2246, %2245 ]
  %2261 = phi i32 [ -1, %2127 ], [ %2128, %2245 ]
  br label %2033

2262:                                             ; preds = %2081, %2056, %2194, %2169
  %2263 = load ptr, ptr %1674, align 8, !tbaa !239
  %2264 = icmp eq ptr %2263, null
  br i1 %2264, label %2556, label %2265

2265:                                             ; preds = %2262
  %2266 = load i32, ptr %10, align 8, !tbaa !28
  %2267 = load i32, ptr %1797, align 4, !tbaa !30
  %2268 = mul i32 %2267, %2266
  br i1 %1676, label %2269, label %2551

2269:                                             ; preds = %2265
  %2270 = getelementptr inbounds nuw i8, ptr %10, i64 36
  %2271 = load i32, ptr %2270, align 4, !tbaa !208
  %2272 = icmp sgt i32 %2271, 0
  %2273 = icmp sgt i32 %2268, 0
  %2274 = select i1 %2272, i1 %2273, i1 false
  br i1 %2274, label %2275, label %2551

2275:                                             ; preds = %2269
  %2276 = getelementptr inbounds nuw i8, ptr %10, i64 52
  %2277 = zext nneg i32 %2268 to i64
  br label %2278

2278:                                             ; preds = %2298, %2275
  %2279 = phi i64 [ 0, %2275 ], [ %2299, %2298 ]
  %2280 = load ptr, ptr %1794, align 8, !tbaa !241
  %2281 = getelementptr inbounds nuw i8, ptr %2280, i64 %2279
  %2282 = load i8, ptr %2281, align 1, !tbaa !35
  %2283 = icmp eq i8 %2282, 0
  br i1 %2283, label %2284, label %2298

2284:                                             ; preds = %2278
  %2285 = load i32, ptr %2270, align 4, !tbaa !208
  %2286 = sext i32 %2285 to i64
  %2287 = getelementptr inbounds [4 x i8], ptr %2276, i64 %2286
  %2288 = getelementptr inbounds nuw i8, ptr %2287, i64 3
  store i8 -1, ptr %2288, align 1, !tbaa !35
  %2289 = load ptr, ptr %1674, align 8, !tbaa !239
  %2290 = trunc nuw nsw i64 %2279 to i32
  %2291 = shl i32 %2290, 2
  %2292 = sext i32 %2291 to i64
  %2293 = getelementptr inbounds i8, ptr %2289, i64 %2292
  %2294 = load i32, ptr %2270, align 4, !tbaa !208
  %2295 = sext i32 %2294 to i64
  %2296 = getelementptr inbounds [4 x i8], ptr %2276, i64 %2295
  %2297 = call ptr @memcpy(ptr noundef %2293, ptr noundef nonnull %2296, i64 noundef 4) #16
  br label %2298

2298:                                             ; preds = %2284, %2278
  %2299 = add nuw nsw i64 %2279, 1
  %2300 = icmp eq i64 %2299, %2277
  br i1 %2300, label %2551, label %2278, !llvm.loop !261

2301:                                             ; preds = %1838
  %2302 = icmp ult ptr %1840, %1839
  br i1 %2302, label %2303, label %2306

2303:                                             ; preds = %2301
  %2304 = getelementptr inbounds nuw i8, ptr %1840, i64 1
  store ptr %2304, ptr %17, align 8, !tbaa !16
  %2305 = load i8, ptr %1840, align 1, !tbaa !35
  br label %2332

2306:                                             ; preds = %2301
  %2307 = load i32, ptr %19, align 8, !tbaa !13
  %2308 = icmp eq i32 %2307, 0
  br i1 %2308, label %2309, label %2310

2309:                                             ; preds = %2475, %2449, %2332, %2306
  br label %2496

2310:                                             ; preds = %2306
  %2311 = load ptr, ptr %20, align 8, !tbaa !8
  %2312 = load ptr, ptr %21, align 8, !tbaa !33
  %2313 = load i32, ptr %23, align 4, !tbaa !34
  %2314 = call i32 %2311(ptr noundef %2312, ptr noundef nonnull %22, i32 noundef %2313) #16
  %2315 = load ptr, ptr %17, align 8, !tbaa !16
  %2316 = load ptr, ptr %24, align 8, !tbaa !15
  %2317 = ptrtoint ptr %2315 to i64
  %2318 = ptrtoint ptr %2316 to i64
  %2319 = sub i64 %2317, %2318
  %2320 = trunc i64 %2319 to i32
  %2321 = load i32, ptr %25, align 8, !tbaa !14
  %2322 = add i32 %2321, %2320
  store i32 %2322, ptr %25, align 8, !tbaa !14
  %2323 = icmp eq i32 %2314, 0
  br i1 %2323, label %2324, label %2325

2324:                                             ; preds = %2310
  store i32 0, ptr %19, align 8, !tbaa !13
  store i8 0, ptr %22, align 8, !tbaa !35
  br label %2329

2325:                                             ; preds = %2310
  %2326 = sext i32 %2314 to i64
  %2327 = getelementptr inbounds i8, ptr %22, i64 %2326
  %2328 = load i8, ptr %22, align 1, !tbaa !35
  br label %2329

2329:                                             ; preds = %2325, %2324
  %2330 = phi i8 [ 0, %2324 ], [ %2328, %2325 ]
  %2331 = phi ptr [ %26, %2324 ], [ %2327, %2325 ]
  store ptr %2331, ptr %18, align 8, !tbaa !18
  store ptr %26, ptr %17, align 8, !tbaa !16
  br label %2332

2332:                                             ; preds = %2329, %2303
  %2333 = phi ptr [ %1839, %2303 ], [ %2331, %2329 ]
  %2334 = phi ptr [ %2304, %2303 ], [ %26, %2329 ]
  %2335 = phi i8 [ %2305, %2303 ], [ %2330, %2329 ]
  %2336 = icmp eq i8 %2335, -7
  br i1 %2336, label %2337, label %2309

2337:                                             ; preds = %2332
  %2338 = icmp ult ptr %2334, %2333
  br i1 %2338, label %2339, label %2342

2339:                                             ; preds = %2337
  %2340 = getelementptr inbounds nuw i8, ptr %2334, i64 1
  store ptr %2340, ptr %17, align 8, !tbaa !16
  %2341 = load i8, ptr %2334, align 1, !tbaa !35
  br label %2367

2342:                                             ; preds = %2337
  %2343 = load i32, ptr %19, align 8, !tbaa !13
  %2344 = icmp eq i32 %2343, 0
  br i1 %2344, label %2495, label %2345

2345:                                             ; preds = %2342
  %2346 = load ptr, ptr %20, align 8, !tbaa !8
  %2347 = load ptr, ptr %21, align 8, !tbaa !33
  %2348 = load i32, ptr %23, align 4, !tbaa !34
  %2349 = call i32 %2346(ptr noundef %2347, ptr noundef nonnull %22, i32 noundef %2348) #16
  %2350 = load ptr, ptr %17, align 8, !tbaa !16
  %2351 = load ptr, ptr %24, align 8, !tbaa !15
  %2352 = ptrtoint ptr %2350 to i64
  %2353 = ptrtoint ptr %2351 to i64
  %2354 = sub i64 %2352, %2353
  %2355 = trunc i64 %2354 to i32
  %2356 = load i32, ptr %25, align 8, !tbaa !14
  %2357 = add i32 %2356, %2355
  store i32 %2357, ptr %25, align 8, !tbaa !14
  %2358 = icmp eq i32 %2349, 0
  br i1 %2358, label %2359, label %2360

2359:                                             ; preds = %2345
  store i32 0, ptr %19, align 8, !tbaa !13
  store i8 0, ptr %22, align 8, !tbaa !35
  br label %2364

2360:                                             ; preds = %2345
  %2361 = sext i32 %2349 to i64
  %2362 = getelementptr inbounds i8, ptr %22, i64 %2361
  %2363 = load i8, ptr %22, align 1, !tbaa !35
  br label %2364

2364:                                             ; preds = %2360, %2359
  %2365 = phi i8 [ 0, %2359 ], [ %2363, %2360 ]
  %2366 = phi ptr [ %26, %2359 ], [ %2362, %2360 ]
  store ptr %2366, ptr %18, align 8, !tbaa !18
  store ptr %26, ptr %17, align 8, !tbaa !16
  br label %2367

2367:                                             ; preds = %2364, %2339
  %2368 = phi ptr [ %2340, %2339 ], [ %26, %2364 ]
  %2369 = phi ptr [ %2333, %2339 ], [ %2366, %2364 ]
  %2370 = phi i8 [ %2341, %2339 ], [ %2365, %2364 ]
  %2371 = icmp eq i8 %2370, 4
  br i1 %2371, label %2372, label %2476

2372:                                             ; preds = %2367
  %2373 = icmp ult ptr %2368, %2369
  br i1 %2373, label %2374, label %2377

2374:                                             ; preds = %2372
  %2375 = getelementptr inbounds nuw i8, ptr %2368, i64 1
  store ptr %2375, ptr %17, align 8, !tbaa !16
  %2376 = load i8, ptr %2368, align 1, !tbaa !35
  br label %2402

2377:                                             ; preds = %2372
  %2378 = load i32, ptr %19, align 8, !tbaa !13
  %2379 = icmp eq i32 %2378, 0
  br i1 %2379, label %2402, label %2380

2380:                                             ; preds = %2377
  %2381 = load ptr, ptr %20, align 8, !tbaa !8
  %2382 = load ptr, ptr %21, align 8, !tbaa !33
  %2383 = load i32, ptr %23, align 4, !tbaa !34
  %2384 = call i32 %2381(ptr noundef %2382, ptr noundef nonnull %22, i32 noundef %2383) #16
  %2385 = load ptr, ptr %17, align 8, !tbaa !16
  %2386 = load ptr, ptr %24, align 8, !tbaa !15
  %2387 = ptrtoint ptr %2385 to i64
  %2388 = ptrtoint ptr %2386 to i64
  %2389 = sub i64 %2387, %2388
  %2390 = trunc i64 %2389 to i32
  %2391 = load i32, ptr %25, align 8, !tbaa !14
  %2392 = add i32 %2391, %2390
  store i32 %2392, ptr %25, align 8, !tbaa !14
  %2393 = icmp eq i32 %2384, 0
  br i1 %2393, label %2394, label %2395

2394:                                             ; preds = %2380
  store i32 0, ptr %19, align 8, !tbaa !13
  store i8 0, ptr %22, align 8, !tbaa !35
  br label %2399

2395:                                             ; preds = %2380
  %2396 = sext i32 %2384 to i64
  %2397 = getelementptr inbounds i8, ptr %22, i64 %2396
  %2398 = load i8, ptr %22, align 1, !tbaa !35
  br label %2399

2399:                                             ; preds = %2395, %2394
  %2400 = phi i8 [ 0, %2394 ], [ %2398, %2395 ]
  %2401 = phi ptr [ %26, %2394 ], [ %2397, %2395 ]
  store ptr %2401, ptr %18, align 8, !tbaa !18
  store ptr %26, ptr %17, align 8, !tbaa !16
  br label %2402

2402:                                             ; preds = %2399, %2377, %2374
  %2403 = phi i8 [ %2376, %2374 ], [ %2400, %2399 ], [ 0, %2377 ]
  %2404 = zext i8 %2403 to i32
  store i32 %2404, ptr %1803, align 8, !tbaa !242
  %2405 = call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) #17
  %2406 = mul nuw nsw i32 %2405, 10
  store i32 %2406, ptr %1804, align 8, !tbaa !262
  %2407 = load i32, ptr %1805, align 4, !tbaa !210
  %2408 = icmp sgt i32 %2407, -1
  br i1 %2408, label %2409, label %2413

2409:                                             ; preds = %2402
  %2410 = zext nneg i32 %2407 to i64
  %2411 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %2410
  %2412 = getelementptr inbounds nuw i8, ptr %2411, i64 55
  store i8 -1, ptr %2412, align 1, !tbaa !35
  br label %2413

2413:                                             ; preds = %2409, %2402
  %2414 = load i32, ptr %1803, align 8, !tbaa !242
  %2415 = and i32 %2414, 1
  %2416 = icmp eq i32 %2415, 0
  br i1 %2416, label %2455, label %2417

2417:                                             ; preds = %2413
  %2418 = load ptr, ptr %17, align 8, !tbaa !16
  %2419 = load ptr, ptr %18, align 8, !tbaa !18
  %2420 = icmp ult ptr %2418, %2419
  br i1 %2420, label %2421, label %2424

2421:                                             ; preds = %2417
  %2422 = getelementptr inbounds nuw i8, ptr %2418, i64 1
  store ptr %2422, ptr %17, align 8, !tbaa !16
  %2423 = load i8, ptr %2418, align 1, !tbaa !35
  br label %2449

2424:                                             ; preds = %2417
  %2425 = load i32, ptr %19, align 8, !tbaa !13
  %2426 = icmp eq i32 %2425, 0
  br i1 %2426, label %2449, label %2427

2427:                                             ; preds = %2424
  %2428 = load ptr, ptr %20, align 8, !tbaa !8
  %2429 = load ptr, ptr %21, align 8, !tbaa !33
  %2430 = load i32, ptr %23, align 4, !tbaa !34
  %2431 = call i32 %2428(ptr noundef %2429, ptr noundef nonnull %22, i32 noundef %2430) #16
  %2432 = load ptr, ptr %17, align 8, !tbaa !16
  %2433 = load ptr, ptr %24, align 8, !tbaa !15
  %2434 = ptrtoint ptr %2432 to i64
  %2435 = ptrtoint ptr %2433 to i64
  %2436 = sub i64 %2434, %2435
  %2437 = trunc i64 %2436 to i32
  %2438 = load i32, ptr %25, align 8, !tbaa !14
  %2439 = add i32 %2438, %2437
  store i32 %2439, ptr %25, align 8, !tbaa !14
  %2440 = icmp eq i32 %2431, 0
  br i1 %2440, label %2441, label %2442

2441:                                             ; preds = %2427
  store i32 0, ptr %19, align 8, !tbaa !13
  store i8 0, ptr %22, align 8, !tbaa !35
  br label %2446

2442:                                             ; preds = %2427
  %2443 = sext i32 %2431 to i64
  %2444 = getelementptr inbounds i8, ptr %22, i64 %2443
  %2445 = load i8, ptr %22, align 1, !tbaa !35
  br label %2446

2446:                                             ; preds = %2442, %2441
  %2447 = phi i8 [ 0, %2441 ], [ %2445, %2442 ]
  %2448 = phi ptr [ %26, %2441 ], [ %2444, %2442 ]
  store ptr %2448, ptr %18, align 8, !tbaa !18
  store ptr %26, ptr %17, align 8, !tbaa !16
  br label %2449

2449:                                             ; preds = %2446, %2424, %2421
  %2450 = phi i8 [ %2423, %2421 ], [ %2447, %2446 ], [ 0, %2424 ]
  %2451 = zext i8 %2450 to i32
  store i32 %2451, ptr %1805, align 4, !tbaa !210
  %2452 = zext i8 %2450 to i64
  %2453 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %2452
  %2454 = getelementptr inbounds nuw i8, ptr %2453, i64 55
  store i8 0, ptr %2454, align 1, !tbaa !35
  br label %2309

2455:                                             ; preds = %2413
  %2456 = load ptr, ptr %20, align 8, !tbaa !8
  %2457 = icmp eq ptr %2456, null
  br i1 %2457, label %2458, label %2460

2458:                                             ; preds = %2455
  %2459 = load ptr, ptr %17, align 8, !tbaa !16
  br label %2472

2460:                                             ; preds = %2455
  %2461 = load ptr, ptr %18, align 8, !tbaa !18
  %2462 = load ptr, ptr %17, align 8, !tbaa !16
  %2463 = ptrtoint ptr %2461 to i64
  %2464 = ptrtoint ptr %2462 to i64
  %2465 = sub i64 %2463, %2464
  %2466 = trunc i64 %2465 to i32
  %2467 = icmp slt i32 %2466, 1
  br i1 %2467, label %2468, label %2472

2468:                                             ; preds = %2460
  store ptr %2461, ptr %17, align 8, !tbaa !16
  %2469 = load ptr, ptr %1802, align 8, !tbaa !36
  %2470 = load ptr, ptr %21, align 8, !tbaa !33
  %2471 = sub i32 1, %2466
  call void %2469(ptr noundef %2470, i32 noundef %2471) #16
  br label %2475

2472:                                             ; preds = %2460, %2458
  %2473 = phi ptr [ %2459, %2458 ], [ %2462, %2460 ]
  %2474 = getelementptr inbounds nuw i8, ptr %2473, i64 1
  store ptr %2474, ptr %17, align 8, !tbaa !16
  br label %2475

2475:                                             ; preds = %2472, %2468
  store i32 -1, ptr %1805, align 4, !tbaa !210
  br label %2309

2476:                                             ; preds = %2367
  %2477 = zext i8 %2370 to i32
  %2478 = icmp eq i8 %2370, 0
  br i1 %2478, label %2495, label %2479

2479:                                             ; preds = %2476
  %2480 = load ptr, ptr %20, align 8, !tbaa !8
  %2481 = icmp eq ptr %2480, null
  br i1 %2481, label %2492, label %2482

2482:                                             ; preds = %2479
  %2483 = ptrtoint ptr %2369 to i64
  %2484 = ptrtoint ptr %2368 to i64
  %2485 = sub i64 %2483, %2484
  %2486 = trunc i64 %2485 to i32
  %2487 = icmp sgt i32 %2477, %2486
  br i1 %2487, label %2488, label %2492

2488:                                             ; preds = %2482
  store ptr %2369, ptr %17, align 8, !tbaa !16
  %2489 = load ptr, ptr %1802, align 8, !tbaa !36
  %2490 = load ptr, ptr %21, align 8, !tbaa !33
  %2491 = sub i32 %2477, %2486
  call void %2489(ptr noundef %2490, i32 noundef %2491) #16
  br label %2495

2492:                                             ; preds = %2482, %2479
  %2493 = zext i8 %2370 to i64
  %2494 = getelementptr inbounds nuw i8, ptr %2368, i64 %2493
  store ptr %2494, ptr %17, align 8, !tbaa !16
  br label %2495

2495:                                             ; preds = %2503, %2528, %2492, %2488, %2476, %2342
  br label %1806

2496:                                             ; preds = %2550, %2309
  %2497 = load ptr, ptr %17, align 8, !tbaa !16
  %2498 = load ptr, ptr %18, align 8, !tbaa !18
  %2499 = icmp ult ptr %2497, %2498
  br i1 %2499, label %2500, label %2503

2500:                                             ; preds = %2496
  %2501 = getelementptr inbounds nuw i8, ptr %2497, i64 1
  store ptr %2501, ptr %17, align 8, !tbaa !16
  %2502 = load i8, ptr %2497, align 1, !tbaa !35
  br label %2528

2503:                                             ; preds = %2496
  %2504 = load i32, ptr %19, align 8, !tbaa !13
  %2505 = icmp eq i32 %2504, 0
  br i1 %2505, label %2495, label %2506

2506:                                             ; preds = %2503
  %2507 = load ptr, ptr %20, align 8, !tbaa !8
  %2508 = load ptr, ptr %21, align 8, !tbaa !33
  %2509 = load i32, ptr %23, align 4, !tbaa !34
  %2510 = call i32 %2507(ptr noundef %2508, ptr noundef nonnull %22, i32 noundef %2509) #16
  %2511 = load ptr, ptr %17, align 8, !tbaa !16
  %2512 = load ptr, ptr %24, align 8, !tbaa !15
  %2513 = ptrtoint ptr %2511 to i64
  %2514 = ptrtoint ptr %2512 to i64
  %2515 = sub i64 %2513, %2514
  %2516 = trunc i64 %2515 to i32
  %2517 = load i32, ptr %25, align 8, !tbaa !14
  %2518 = add i32 %2517, %2516
  store i32 %2518, ptr %25, align 8, !tbaa !14
  %2519 = icmp eq i32 %2510, 0
  br i1 %2519, label %2520, label %2521

2520:                                             ; preds = %2506
  store i32 0, ptr %19, align 8, !tbaa !13
  store i8 0, ptr %22, align 8, !tbaa !35
  br label %2525

2521:                                             ; preds = %2506
  %2522 = sext i32 %2510 to i64
  %2523 = getelementptr inbounds i8, ptr %22, i64 %2522
  %2524 = load i8, ptr %22, align 1, !tbaa !35
  br label %2525

2525:                                             ; preds = %2521, %2520
  %2526 = phi i8 [ 0, %2520 ], [ %2524, %2521 ]
  %2527 = phi ptr [ %26, %2520 ], [ %2523, %2521 ]
  store ptr %2527, ptr %18, align 8, !tbaa !18
  store ptr %26, ptr %17, align 8, !tbaa !16
  br label %2528

2528:                                             ; preds = %2525, %2500
  %2529 = phi ptr [ %2501, %2500 ], [ %26, %2525 ]
  %2530 = phi ptr [ %2498, %2500 ], [ %2527, %2525 ]
  %2531 = phi i8 [ %2502, %2500 ], [ %2526, %2525 ]
  %2532 = icmp eq i8 %2531, 0
  br i1 %2532, label %2495, label %2533

2533:                                             ; preds = %2528
  %2534 = zext i8 %2531 to i32
  %2535 = load ptr, ptr %20, align 8, !tbaa !8
  %2536 = icmp eq ptr %2535, null
  br i1 %2536, label %2547, label %2537

2537:                                             ; preds = %2533
  %2538 = ptrtoint ptr %2530 to i64
  %2539 = ptrtoint ptr %2529 to i64
  %2540 = sub i64 %2538, %2539
  %2541 = trunc i64 %2540 to i32
  %2542 = icmp sgt i32 %2534, %2541
  br i1 %2542, label %2543, label %2547

2543:                                             ; preds = %2537
  store ptr %2530, ptr %17, align 8, !tbaa !16
  %2544 = load ptr, ptr %1802, align 8, !tbaa !36
  %2545 = load ptr, ptr %21, align 8, !tbaa !33
  %2546 = sub i32 %2534, %2541
  call void %2544(ptr noundef %2545, i32 noundef %2546) #16
  br label %2550

2547:                                             ; preds = %2537, %2533
  %2548 = zext i8 %2531 to i64
  %2549 = getelementptr inbounds nuw i8, ptr %2529, i64 %2548
  store ptr %2549, ptr %17, align 8, !tbaa !16
  br label %2550

2550:                                             ; preds = %2547, %2543
  br label %2496, !llvm.loop !263

2551:                                             ; preds = %2298, %2269, %2265
  %2552 = icmp eq ptr %2263, %0
  br i1 %2552, label %2556, label %2553

2553:                                             ; preds = %2551
  %2554 = load i32, ptr %10, align 8, !tbaa !28
  store i32 %2554, ptr %1, align 4, !tbaa !4
  %2555 = load i32, ptr %1797, align 4, !tbaa !30
  store i32 %2555, ptr %2, align 4, !tbaa !4
  br label %2556

2556:                                             ; preds = %1813, %1838, %2217, %2222, %2243, %1677, %1680, %1685, %1690, %1732, %1736, %1842, %1850, %1932, %1974, %2262, %2551, %2553
  %2557 = phi ptr [ %2263, %2553 ], [ null, %2551 ], [ null, %1685 ], [ null, %1732 ], [ null, %1677 ], [ null, %1736 ], [ null, %1690 ], [ null, %1680 ], [ null, %2217 ], [ null, %1850 ], [ null, %1932 ], [ null, %2262 ], [ null, %1842 ], [ null, %1974 ], [ null, %2243 ], [ null, %2222 ], [ null, %1838 ], [ null, %1813 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  br label %4513

2558:                                             ; preds = %1663, %1666
  %2559 = load i64, ptr @arena_used, align 8, !tbaa !19
  %2560 = add i64 %2559, -100644705
  %2561 = icmp ult i64 %2560, 18592
  br i1 %2561, label %4508, label %2562

2562:                                             ; preds = %2558
  %2563 = getelementptr inbounds nuw i8, ptr @arena, i64 %2559
  %2564 = add i64 %2559, 18592
  store i64 %2564, ptr @arena_used, align 8, !tbaa !19
  store i64 18568, ptr %2563, align 8, !tbaa !19
  %2565 = getelementptr inbounds nuw i8, ptr %2563, i64 16
  %2566 = tail call ptr @memset(ptr noundef nonnull %2565, i32 noundef 0, i64 noundef 18568) #16
  store ptr %0, ptr %2565, align 8, !tbaa !21
  %2567 = getelementptr inbounds nuw i8, ptr %2563, i64 18560
  store ptr @stbi__idct_block, ptr %2567, align 8, !tbaa !264
  %2568 = getelementptr inbounds nuw i8, ptr %2563, i64 18568
  store ptr @stbi__YCbCr_to_RGB_row, ptr %2568, align 8, !tbaa !265
  %2569 = getelementptr inbounds nuw i8, ptr %2563, i64 18576
  store ptr @stbi__resample_row_hv_2, ptr %2569, align 8, !tbaa !266
  %2570 = getelementptr inbounds nuw i8, ptr %2563, i64 18520
  store i32 0, ptr %2570, align 8, !tbaa !54
  %2571 = getelementptr inbounds nuw i8, ptr %2563, i64 18524
  store i32 -1, ptr %2571, align 4, !tbaa !55
  %2572 = getelementptr inbounds nuw i8, ptr %2563, i64 18488
  store i8 -1, ptr %2572, align 8, !tbaa !56
  %2573 = tail call fastcc zeroext i8 @stbi__get_marker(ptr noundef nonnull %2565) #17
  %2574 = icmp eq i8 %2573, -40
  %2575 = load <2 x ptr>, ptr %24, align 8, !tbaa !23
  store <2 x ptr> %2575, ptr %17, align 8, !tbaa !23
  br i1 %2574, label %2576, label %4508

2576:                                             ; preds = %2562
  %2577 = load i64, ptr @arena_used, align 8, !tbaa !19
  %2578 = add i64 %2577, -100644705
  %2579 = icmp ult i64 %2578, 18592
  br i1 %2579, label %4513, label %2580

2580:                                             ; preds = %2576
  %2581 = getelementptr inbounds nuw i8, ptr @arena, i64 %2577
  %2582 = add i64 %2577, 18592
  store i64 %2582, ptr @arena_used, align 8, !tbaa !19
  store i64 18568, ptr %2581, align 8, !tbaa !19
  %2583 = getelementptr inbounds nuw i8, ptr %2581, i64 16
  %2584 = tail call ptr @memset(ptr noundef nonnull %2583, i32 noundef 0, i64 noundef 18568) #16
  store ptr %0, ptr %2583, align 8, !tbaa !21
  %2585 = getelementptr inbounds nuw i8, ptr %2581, i64 18560
  store ptr @stbi__idct_block, ptr %2585, align 8, !tbaa !264
  %2586 = getelementptr inbounds nuw i8, ptr %2581, i64 18568
  store ptr @stbi__YCbCr_to_RGB_row, ptr %2586, align 8, !tbaa !265
  %2587 = getelementptr inbounds nuw i8, ptr %2581, i64 18576
  store ptr @stbi__resample_row_hv_2, ptr %2587, align 8, !tbaa !266
  %2588 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %2588, align 8, !tbaa !71
  %2589 = getelementptr inbounds nuw i8, ptr %2581, i64 18096
  %2590 = getelementptr inbounds nuw i8, ptr %2581, i64 18152
  store ptr null, ptr %2590, align 8, !tbaa !99
  %2591 = getelementptr inbounds nuw i8, ptr %2581, i64 18160
  store ptr null, ptr %2591, align 8, !tbaa !98
  %2592 = getelementptr inbounds nuw i8, ptr %2581, i64 18248
  store ptr null, ptr %2592, align 8, !tbaa !99
  %2593 = getelementptr inbounds nuw i8, ptr %2581, i64 18256
  store ptr null, ptr %2593, align 8, !tbaa !98
  %2594 = getelementptr inbounds nuw i8, ptr %2581, i64 18344
  store ptr null, ptr %2594, align 8, !tbaa !99
  %2595 = getelementptr inbounds nuw i8, ptr %2581, i64 18352
  store ptr null, ptr %2595, align 8, !tbaa !98
  %2596 = getelementptr inbounds nuw i8, ptr %2581, i64 18440
  store ptr null, ptr %2596, align 8, !tbaa !99
  %2597 = getelementptr inbounds nuw i8, ptr %2581, i64 18448
  store ptr null, ptr %2597, align 8, !tbaa !98
  %2598 = getelementptr inbounds nuw i8, ptr %2581, i64 18552
  store i32 0, ptr %2598, align 8, !tbaa !62
  %2599 = tail call fastcc i32 @stbi__decode_jpeg_header(ptr noundef nonnull %2583, i32 noundef 0) #17
  %2600 = icmp eq i32 %2599, 0
  br i1 %2600, label %4072, label %2601

2601:                                             ; preds = %2580
  %2602 = tail call fastcc zeroext i8 @stbi__get_marker(ptr noundef nonnull %2583) #17
  %2603 = getelementptr inbounds nuw i8, ptr %2581, i64 18532
  %2604 = getelementptr inbounds nuw i8, ptr %2581, i64 18536
  %2605 = getelementptr inbounds nuw i8, ptr %2581, i64 18500
  %2606 = getelementptr inbounds nuw i8, ptr %2581, i64 18504
  %2607 = getelementptr inbounds nuw i8, ptr %2581, i64 18508
  %2608 = getelementptr inbounds nuw i8, ptr %2581, i64 18512
  %2609 = getelementptr inbounds nuw i8, ptr %2581, i64 18496
  %2610 = getelementptr inbounds nuw i8, ptr %2581, i64 18484
  %2611 = getelementptr inbounds nuw i8, ptr %2581, i64 18480
  %2612 = getelementptr inbounds nuw i8, ptr %2581, i64 18492
  %2613 = getelementptr inbounds nuw i8, ptr %2581, i64 18408
  %2614 = getelementptr inbounds nuw i8, ptr %2581, i64 18312
  %2615 = getelementptr inbounds nuw i8, ptr %2581, i64 18216
  %2616 = getelementptr inbounds nuw i8, ptr %2581, i64 18120
  %2617 = getelementptr inbounds nuw i8, ptr %2581, i64 18488
  %2618 = getelementptr inbounds nuw i8, ptr %2581, i64 18556
  %2619 = getelementptr inbounds nuw i8, ptr %2581, i64 18516
  %2620 = getelementptr inbounds nuw i8, ptr %2581, i64 18084
  %2621 = getelementptr inbounds nuw i8, ptr %2581, i64 18080
  %2622 = getelementptr inbounds nuw i8, ptr %2581, i64 24
  %2623 = getelementptr inbounds nuw i8, ptr %2581, i64 6744
  %2624 = getelementptr inbounds nuw i8, ptr %2581, i64 13976
  %2625 = getelementptr inbounds nuw i8, ptr %2581, i64 13464
  br label %2626

2626:                                             ; preds = %3924, %2601
  %2627 = phi i8 [ %2602, %2601 ], [ %3925, %3924 ]
  switch i8 %2627, label %3918 [
    i8 -39, label %3926
    i8 -38, label %2628
    i8 -36, label %3907
  ]

2628:                                             ; preds = %2626
  %2629 = load ptr, ptr %2583, align 8, !tbaa !21
  %2630 = call fastcc i32 @stbi__get16be(ptr noundef %2629) #17
  %2631 = load ptr, ptr %2583, align 8, !tbaa !21
  %2632 = getelementptr inbounds nuw i8, ptr %2631, i64 192
  %2633 = load ptr, ptr %2632, align 8, !tbaa !16
  %2634 = getelementptr inbounds nuw i8, ptr %2631, i64 200
  %2635 = load ptr, ptr %2634, align 8, !tbaa !18
  %2636 = icmp ult ptr %2633, %2635
  br i1 %2636, label %2637, label %2640

2637:                                             ; preds = %2628
  %2638 = getelementptr inbounds nuw i8, ptr %2633, i64 1
  store ptr %2638, ptr %2632, align 8, !tbaa !16
  %2639 = load i8, ptr %2633, align 1, !tbaa !35
  br label %2675

2640:                                             ; preds = %2628
  %2641 = getelementptr inbounds nuw i8, ptr %2631, i64 48
  %2642 = load i32, ptr %2641, align 8, !tbaa !13
  %2643 = icmp eq i32 %2642, 0
  br i1 %2643, label %2644, label %2645

2644:                                             ; preds = %2640
  store i32 0, ptr %2603, align 4, !tbaa !267
  br label %4072

2645:                                             ; preds = %2640
  %2646 = getelementptr inbounds nuw i8, ptr %2631, i64 16
  %2647 = load ptr, ptr %2646, align 8, !tbaa !8
  %2648 = getelementptr inbounds nuw i8, ptr %2631, i64 40
  %2649 = load ptr, ptr %2648, align 8, !tbaa !33
  %2650 = getelementptr inbounds nuw i8, ptr %2631, i64 56
  %2651 = getelementptr inbounds nuw i8, ptr %2631, i64 52
  %2652 = load i32, ptr %2651, align 4, !tbaa !34
  %2653 = call i32 %2647(ptr noundef %2649, ptr noundef nonnull %2650, i32 noundef %2652) #16
  %2654 = load ptr, ptr %2632, align 8, !tbaa !16
  %2655 = getelementptr inbounds nuw i8, ptr %2631, i64 208
  %2656 = load ptr, ptr %2655, align 8, !tbaa !15
  %2657 = ptrtoint ptr %2654 to i64
  %2658 = ptrtoint ptr %2656 to i64
  %2659 = sub i64 %2657, %2658
  %2660 = trunc i64 %2659 to i32
  %2661 = getelementptr inbounds nuw i8, ptr %2631, i64 184
  %2662 = load i32, ptr %2661, align 8, !tbaa !14
  %2663 = add i32 %2662, %2660
  store i32 %2663, ptr %2661, align 8, !tbaa !14
  %2664 = icmp eq i32 %2653, 0
  br i1 %2664, label %2665, label %2667

2665:                                             ; preds = %2645
  store i32 0, ptr %2641, align 8, !tbaa !13
  %2666 = getelementptr inbounds nuw i8, ptr %2631, i64 57
  store i8 0, ptr %2650, align 8, !tbaa !35
  br label %2671

2667:                                             ; preds = %2645
  %2668 = sext i32 %2653 to i64
  %2669 = getelementptr inbounds i8, ptr %2650, i64 %2668
  %2670 = load i8, ptr %2650, align 1, !tbaa !35
  br label %2671

2671:                                             ; preds = %2667, %2665
  %2672 = phi i8 [ 0, %2665 ], [ %2670, %2667 ]
  %2673 = phi ptr [ %2666, %2665 ], [ %2669, %2667 ]
  store ptr %2673, ptr %2634, align 8, !tbaa !18
  %2674 = getelementptr inbounds nuw i8, ptr %2631, i64 57
  store ptr %2674, ptr %2632, align 8, !tbaa !16
  br label %2675

2675:                                             ; preds = %2671, %2637
  %2676 = phi i8 [ %2639, %2637 ], [ %2672, %2671 ]
  %2677 = zext i8 %2676 to i32
  store i32 %2677, ptr %2603, align 4, !tbaa !267
  %2678 = add i8 %2676, -5
  %2679 = icmp ult i8 %2678, -4
  br i1 %2679, label %4072, label %2680

2680:                                             ; preds = %2675
  %2681 = load ptr, ptr %2583, align 8, !tbaa !21
  %2682 = getelementptr inbounds nuw i8, ptr %2681, i64 8
  %2683 = load i32, ptr %2682, align 8, !tbaa !71
  %2684 = icmp slt i32 %2683, %2677
  br i1 %2684, label %4072, label %2685

2685:                                             ; preds = %2680
  %2686 = shl nuw nsw i32 %2677, 1
  %2687 = add nuw nsw i32 %2686, 6
  %2688 = icmp eq i32 %2630, %2687
  br i1 %2688, label %2689, label %4072

2689:                                             ; preds = %2685, %2818
  %2690 = phi ptr [ %2787, %2818 ], [ %2681, %2685 ]
  %2691 = phi i64 [ %2820, %2818 ], [ 0, %2685 ]
  %2692 = getelementptr inbounds nuw i8, ptr %2690, i64 192
  %2693 = load ptr, ptr %2692, align 8, !tbaa !16
  %2694 = getelementptr inbounds nuw i8, ptr %2690, i64 200
  %2695 = load ptr, ptr %2694, align 8, !tbaa !18
  %2696 = icmp ult ptr %2693, %2695
  br i1 %2696, label %2697, label %2700

2697:                                             ; preds = %2689
  %2698 = getelementptr inbounds nuw i8, ptr %2693, i64 1
  store ptr %2698, ptr %2692, align 8, !tbaa !16
  %2699 = load i8, ptr %2693, align 1, !tbaa !35
  br label %2739

2700:                                             ; preds = %2689
  %2701 = getelementptr inbounds nuw i8, ptr %2690, i64 48
  %2702 = load i32, ptr %2701, align 8, !tbaa !13
  %2703 = icmp eq i32 %2702, 0
  br i1 %2703, label %2739, label %2704

2704:                                             ; preds = %2700
  %2705 = getelementptr inbounds nuw i8, ptr %2690, i64 16
  %2706 = load ptr, ptr %2705, align 8, !tbaa !8
  %2707 = getelementptr inbounds nuw i8, ptr %2690, i64 40
  %2708 = load ptr, ptr %2707, align 8, !tbaa !33
  %2709 = getelementptr inbounds nuw i8, ptr %2690, i64 56
  %2710 = getelementptr inbounds nuw i8, ptr %2690, i64 52
  %2711 = load i32, ptr %2710, align 4, !tbaa !34
  %2712 = call i32 %2706(ptr noundef %2708, ptr noundef nonnull %2709, i32 noundef %2711) #16
  %2713 = load ptr, ptr %2692, align 8, !tbaa !16
  %2714 = getelementptr inbounds nuw i8, ptr %2690, i64 208
  %2715 = load ptr, ptr %2714, align 8, !tbaa !15
  %2716 = ptrtoint ptr %2713 to i64
  %2717 = ptrtoint ptr %2715 to i64
  %2718 = sub i64 %2716, %2717
  %2719 = trunc i64 %2718 to i32
  %2720 = getelementptr inbounds nuw i8, ptr %2690, i64 184
  %2721 = load i32, ptr %2720, align 8, !tbaa !14
  %2722 = add i32 %2721, %2719
  store i32 %2722, ptr %2720, align 8, !tbaa !14
  %2723 = icmp eq i32 %2712, 0
  br i1 %2723, label %2724, label %2726

2724:                                             ; preds = %2704
  store i32 0, ptr %2701, align 8, !tbaa !13
  %2725 = getelementptr inbounds nuw i8, ptr %2690, i64 57
  store i8 0, ptr %2709, align 8, !tbaa !35
  br label %2730

2726:                                             ; preds = %2704
  %2727 = sext i32 %2712 to i64
  %2728 = getelementptr inbounds i8, ptr %2709, i64 %2727
  %2729 = load i8, ptr %2709, align 1, !tbaa !35
  br label %2730

2730:                                             ; preds = %2726, %2724
  %2731 = phi i8 [ 0, %2724 ], [ %2729, %2726 ]
  %2732 = phi ptr [ %2725, %2724 ], [ %2728, %2726 ]
  store ptr %2732, ptr %2694, align 8, !tbaa !18
  %2733 = getelementptr inbounds nuw i8, ptr %2690, i64 57
  store ptr %2733, ptr %2692, align 8, !tbaa !16
  %2734 = load ptr, ptr %2583, align 8, !tbaa !21
  %2735 = getelementptr inbounds nuw i8, ptr %2734, i64 192
  %2736 = load ptr, ptr %2735, align 8, !tbaa !16
  %2737 = getelementptr inbounds nuw i8, ptr %2734, i64 200
  %2738 = load ptr, ptr %2737, align 8, !tbaa !18
  br label %2739

2739:                                             ; preds = %2730, %2700, %2697
  %2740 = phi ptr [ %2690, %2697 ], [ %2734, %2730 ], [ %2690, %2700 ]
  %2741 = phi ptr [ %2695, %2697 ], [ %2738, %2730 ], [ %2695, %2700 ]
  %2742 = phi ptr [ %2698, %2697 ], [ %2736, %2730 ], [ %2693, %2700 ]
  %2743 = phi i8 [ %2699, %2697 ], [ %2731, %2730 ], [ 0, %2700 ]
  %2744 = zext i8 %2743 to i32
  %2745 = getelementptr inbounds nuw i8, ptr %2740, i64 192
  %2746 = getelementptr inbounds nuw i8, ptr %2740, i64 200
  %2747 = icmp ult ptr %2742, %2741
  br i1 %2747, label %2748, label %2751

2748:                                             ; preds = %2739
  %2749 = getelementptr inbounds nuw i8, ptr %2742, i64 1
  store ptr %2749, ptr %2745, align 8, !tbaa !16
  %2750 = load i8, ptr %2742, align 1, !tbaa !35
  br label %2786

2751:                                             ; preds = %2739
  %2752 = getelementptr inbounds nuw i8, ptr %2740, i64 48
  %2753 = load i32, ptr %2752, align 8, !tbaa !13
  %2754 = icmp eq i32 %2753, 0
  br i1 %2754, label %2786, label %2755

2755:                                             ; preds = %2751
  %2756 = getelementptr inbounds nuw i8, ptr %2740, i64 16
  %2757 = load ptr, ptr %2756, align 8, !tbaa !8
  %2758 = getelementptr inbounds nuw i8, ptr %2740, i64 40
  %2759 = load ptr, ptr %2758, align 8, !tbaa !33
  %2760 = getelementptr inbounds nuw i8, ptr %2740, i64 56
  %2761 = getelementptr inbounds nuw i8, ptr %2740, i64 52
  %2762 = load i32, ptr %2761, align 4, !tbaa !34
  %2763 = call i32 %2757(ptr noundef %2759, ptr noundef nonnull %2760, i32 noundef %2762) #16
  %2764 = load ptr, ptr %2745, align 8, !tbaa !16
  %2765 = getelementptr inbounds nuw i8, ptr %2740, i64 208
  %2766 = load ptr, ptr %2765, align 8, !tbaa !15
  %2767 = ptrtoint ptr %2764 to i64
  %2768 = ptrtoint ptr %2766 to i64
  %2769 = sub i64 %2767, %2768
  %2770 = trunc i64 %2769 to i32
  %2771 = getelementptr inbounds nuw i8, ptr %2740, i64 184
  %2772 = load i32, ptr %2771, align 8, !tbaa !14
  %2773 = add i32 %2772, %2770
  store i32 %2773, ptr %2771, align 8, !tbaa !14
  %2774 = icmp eq i32 %2763, 0
  br i1 %2774, label %2775, label %2777

2775:                                             ; preds = %2755
  store i32 0, ptr %2752, align 8, !tbaa !13
  %2776 = getelementptr inbounds nuw i8, ptr %2740, i64 57
  store i8 0, ptr %2760, align 8, !tbaa !35
  br label %2781

2777:                                             ; preds = %2755
  %2778 = sext i32 %2763 to i64
  %2779 = getelementptr inbounds i8, ptr %2760, i64 %2778
  %2780 = load i8, ptr %2760, align 1, !tbaa !35
  br label %2781

2781:                                             ; preds = %2777, %2775
  %2782 = phi i8 [ 0, %2775 ], [ %2780, %2777 ]
  %2783 = phi ptr [ %2776, %2775 ], [ %2779, %2777 ]
  store ptr %2783, ptr %2746, align 8, !tbaa !18
  %2784 = getelementptr inbounds nuw i8, ptr %2740, i64 57
  store ptr %2784, ptr %2745, align 8, !tbaa !16
  %2785 = load ptr, ptr %2583, align 8, !tbaa !21
  br label %2786

2786:                                             ; preds = %2781, %2751, %2748
  %2787 = phi ptr [ %2740, %2748 ], [ %2785, %2781 ], [ %2740, %2751 ]
  %2788 = phi i8 [ %2750, %2748 ], [ %2782, %2781 ], [ 0, %2751 ]
  %2789 = zext i8 %2788 to i32
  %2790 = getelementptr inbounds nuw i8, ptr %2787, i64 8
  %2791 = load i32, ptr %2790, align 8, !tbaa !71
  %2792 = icmp sgt i32 %2791, 0
  br i1 %2792, label %2793, label %2805

2793:                                             ; preds = %2786
  %2794 = zext nneg i32 %2791 to i64
  br label %2795

2795:                                             ; preds = %2800, %2793
  %2796 = phi i64 [ 0, %2793 ], [ %2801, %2800 ]
  %2797 = getelementptr inbounds nuw %struct.anon, ptr %2589, i64 %2796
  %2798 = load i32, ptr %2797, align 8, !tbaa !80
  %2799 = icmp eq i32 %2798, %2744
  br i1 %2799, label %2803, label %2800

2800:                                             ; preds = %2795
  %2801 = add nuw nsw i64 %2796, 1
  %2802 = icmp eq i64 %2801, %2794
  br i1 %2802, label %4072, label %2795, !llvm.loop !268

2803:                                             ; preds = %2795
  %2804 = trunc nuw nsw i64 %2796 to i32
  br label %2805

2805:                                             ; preds = %2803, %2786
  %2806 = phi i32 [ 0, %2786 ], [ %2804, %2803 ]
  %2807 = icmp eq i32 %2806, %2791
  br i1 %2807, label %4072, label %2808

2808:                                             ; preds = %2805
  %2809 = lshr i32 %2789, 4
  %2810 = zext nneg i32 %2806 to i64
  %2811 = getelementptr inbounds nuw %struct.anon, ptr %2589, i64 %2810
  %2812 = getelementptr inbounds nuw i8, ptr %2811, i64 16
  store i32 %2809, ptr %2812, align 8, !tbaa !269
  %2813 = icmp ugt i8 %2788, 63
  br i1 %2813, label %4072, label %2814

2814:                                             ; preds = %2808
  %2815 = and i32 %2789, 15
  %2816 = getelementptr inbounds nuw i8, ptr %2811, i64 20
  store i32 %2815, ptr %2816, align 4, !tbaa !270
  %2817 = icmp samesign ugt i32 %2815, 3
  br i1 %2817, label %4072, label %2818

2818:                                             ; preds = %2814
  %2819 = getelementptr inbounds nuw i32, ptr %2604, i64 %2691
  store i32 %2806, ptr %2819, align 4, !tbaa !4
  %2820 = add nuw nsw i64 %2691, 1
  %2821 = load i32, ptr %2603, align 4, !tbaa !267
  %2822 = sext i32 %2821 to i64
  %2823 = icmp slt i64 %2820, %2822
  br i1 %2823, label %2689, label %2824, !llvm.loop !271

2824:                                             ; preds = %2818
  %2825 = getelementptr inbounds nuw i8, ptr %2787, i64 192
  %2826 = load ptr, ptr %2825, align 8, !tbaa !16
  %2827 = getelementptr inbounds nuw i8, ptr %2787, i64 200
  %2828 = load ptr, ptr %2827, align 8, !tbaa !18
  %2829 = icmp ult ptr %2826, %2828
  br i1 %2829, label %2830, label %2833

2830:                                             ; preds = %2824
  %2831 = getelementptr inbounds nuw i8, ptr %2826, i64 1
  store ptr %2831, ptr %2825, align 8, !tbaa !16
  %2832 = load i8, ptr %2826, align 1, !tbaa !35
  br label %2872

2833:                                             ; preds = %2824
  %2834 = getelementptr inbounds nuw i8, ptr %2787, i64 48
  %2835 = load i32, ptr %2834, align 8, !tbaa !13
  %2836 = icmp eq i32 %2835, 0
  br i1 %2836, label %2872, label %2837

2837:                                             ; preds = %2833
  %2838 = getelementptr inbounds nuw i8, ptr %2787, i64 16
  %2839 = load ptr, ptr %2838, align 8, !tbaa !8
  %2840 = getelementptr inbounds nuw i8, ptr %2787, i64 40
  %2841 = load ptr, ptr %2840, align 8, !tbaa !33
  %2842 = getelementptr inbounds nuw i8, ptr %2787, i64 56
  %2843 = getelementptr inbounds nuw i8, ptr %2787, i64 52
  %2844 = load i32, ptr %2843, align 4, !tbaa !34
  %2845 = call i32 %2839(ptr noundef %2841, ptr noundef nonnull %2842, i32 noundef %2844) #16
  %2846 = load ptr, ptr %2825, align 8, !tbaa !16
  %2847 = getelementptr inbounds nuw i8, ptr %2787, i64 208
  %2848 = load ptr, ptr %2847, align 8, !tbaa !15
  %2849 = ptrtoint ptr %2846 to i64
  %2850 = ptrtoint ptr %2848 to i64
  %2851 = sub i64 %2849, %2850
  %2852 = trunc i64 %2851 to i32
  %2853 = getelementptr inbounds nuw i8, ptr %2787, i64 184
  %2854 = load i32, ptr %2853, align 8, !tbaa !14
  %2855 = add i32 %2854, %2852
  store i32 %2855, ptr %2853, align 8, !tbaa !14
  %2856 = icmp eq i32 %2845, 0
  br i1 %2856, label %2857, label %2859

2857:                                             ; preds = %2837
  store i32 0, ptr %2834, align 8, !tbaa !13
  %2858 = getelementptr inbounds nuw i8, ptr %2787, i64 57
  store i8 0, ptr %2842, align 8, !tbaa !35
  br label %2863

2859:                                             ; preds = %2837
  %2860 = sext i32 %2845 to i64
  %2861 = getelementptr inbounds i8, ptr %2842, i64 %2860
  %2862 = load i8, ptr %2842, align 1, !tbaa !35
  br label %2863

2863:                                             ; preds = %2859, %2857
  %2864 = phi i8 [ 0, %2857 ], [ %2862, %2859 ]
  %2865 = phi ptr [ %2858, %2857 ], [ %2861, %2859 ]
  store ptr %2865, ptr %2827, align 8, !tbaa !18
  %2866 = getelementptr inbounds nuw i8, ptr %2787, i64 57
  store ptr %2866, ptr %2825, align 8, !tbaa !16
  %2867 = load ptr, ptr %2583, align 8, !tbaa !21
  %2868 = getelementptr inbounds nuw i8, ptr %2867, i64 192
  %2869 = load ptr, ptr %2868, align 8, !tbaa !16
  %2870 = getelementptr inbounds nuw i8, ptr %2867, i64 200
  %2871 = load ptr, ptr %2870, align 8, !tbaa !18
  br label %2872

2872:                                             ; preds = %2863, %2833, %2830
  %2873 = phi ptr [ %2828, %2830 ], [ %2871, %2863 ], [ %2828, %2833 ]
  %2874 = phi ptr [ %2831, %2830 ], [ %2869, %2863 ], [ %2826, %2833 ]
  %2875 = phi ptr [ %2787, %2830 ], [ %2867, %2863 ], [ %2787, %2833 ]
  %2876 = phi i8 [ %2832, %2830 ], [ %2864, %2863 ], [ 0, %2833 ]
  %2877 = zext i8 %2876 to i32
  store i32 %2877, ptr %2605, align 4, !tbaa !272
  %2878 = getelementptr inbounds nuw i8, ptr %2875, i64 192
  %2879 = getelementptr inbounds nuw i8, ptr %2875, i64 200
  %2880 = icmp ult ptr %2874, %2873
  br i1 %2880, label %2881, label %2884

2881:                                             ; preds = %2872
  %2882 = getelementptr inbounds nuw i8, ptr %2874, i64 1
  store ptr %2882, ptr %2878, align 8, !tbaa !16
  %2883 = load i8, ptr %2874, align 1, !tbaa !35
  br label %2923

2884:                                             ; preds = %2872
  %2885 = getelementptr inbounds nuw i8, ptr %2875, i64 48
  %2886 = load i32, ptr %2885, align 8, !tbaa !13
  %2887 = icmp eq i32 %2886, 0
  br i1 %2887, label %2923, label %2888

2888:                                             ; preds = %2884
  %2889 = getelementptr inbounds nuw i8, ptr %2875, i64 16
  %2890 = load ptr, ptr %2889, align 8, !tbaa !8
  %2891 = getelementptr inbounds nuw i8, ptr %2875, i64 40
  %2892 = load ptr, ptr %2891, align 8, !tbaa !33
  %2893 = getelementptr inbounds nuw i8, ptr %2875, i64 56
  %2894 = getelementptr inbounds nuw i8, ptr %2875, i64 52
  %2895 = load i32, ptr %2894, align 4, !tbaa !34
  %2896 = call i32 %2890(ptr noundef %2892, ptr noundef nonnull %2893, i32 noundef %2895) #16
  %2897 = load ptr, ptr %2878, align 8, !tbaa !16
  %2898 = getelementptr inbounds nuw i8, ptr %2875, i64 208
  %2899 = load ptr, ptr %2898, align 8, !tbaa !15
  %2900 = ptrtoint ptr %2897 to i64
  %2901 = ptrtoint ptr %2899 to i64
  %2902 = sub i64 %2900, %2901
  %2903 = trunc i64 %2902 to i32
  %2904 = getelementptr inbounds nuw i8, ptr %2875, i64 184
  %2905 = load i32, ptr %2904, align 8, !tbaa !14
  %2906 = add i32 %2905, %2903
  store i32 %2906, ptr %2904, align 8, !tbaa !14
  %2907 = icmp eq i32 %2896, 0
  br i1 %2907, label %2908, label %2910

2908:                                             ; preds = %2888
  store i32 0, ptr %2885, align 8, !tbaa !13
  %2909 = getelementptr inbounds nuw i8, ptr %2875, i64 57
  store i8 0, ptr %2893, align 8, !tbaa !35
  br label %2914

2910:                                             ; preds = %2888
  %2911 = sext i32 %2896 to i64
  %2912 = getelementptr inbounds i8, ptr %2893, i64 %2911
  %2913 = load i8, ptr %2893, align 1, !tbaa !35
  br label %2914

2914:                                             ; preds = %2910, %2908
  %2915 = phi i8 [ 0, %2908 ], [ %2913, %2910 ]
  %2916 = phi ptr [ %2909, %2908 ], [ %2912, %2910 ]
  store ptr %2916, ptr %2879, align 8, !tbaa !18
  %2917 = getelementptr inbounds nuw i8, ptr %2875, i64 57
  store ptr %2917, ptr %2878, align 8, !tbaa !16
  %2918 = load ptr, ptr %2583, align 8, !tbaa !21
  %2919 = getelementptr inbounds nuw i8, ptr %2918, i64 192
  %2920 = load ptr, ptr %2919, align 8, !tbaa !16
  %2921 = getelementptr inbounds nuw i8, ptr %2918, i64 200
  %2922 = load ptr, ptr %2921, align 8, !tbaa !18
  br label %2923

2923:                                             ; preds = %2914, %2884, %2881
  %2924 = phi ptr [ %2873, %2881 ], [ %2922, %2914 ], [ %2873, %2884 ]
  %2925 = phi ptr [ %2882, %2881 ], [ %2920, %2914 ], [ %2874, %2884 ]
  %2926 = phi ptr [ %2875, %2881 ], [ %2918, %2914 ], [ %2875, %2884 ]
  %2927 = phi i8 [ %2883, %2881 ], [ %2915, %2914 ], [ 0, %2884 ]
  %2928 = zext i8 %2927 to i32
  store i32 %2928, ptr %2606, align 8, !tbaa !273
  %2929 = getelementptr inbounds nuw i8, ptr %2926, i64 192
  %2930 = getelementptr inbounds nuw i8, ptr %2926, i64 200
  %2931 = icmp ult ptr %2925, %2924
  br i1 %2931, label %2932, label %2935

2932:                                             ; preds = %2923
  %2933 = getelementptr inbounds nuw i8, ptr %2925, i64 1
  store ptr %2933, ptr %2929, align 8, !tbaa !16
  %2934 = load i8, ptr %2925, align 1, !tbaa !35
  br label %2969

2935:                                             ; preds = %2923
  %2936 = getelementptr inbounds nuw i8, ptr %2926, i64 48
  %2937 = load i32, ptr %2936, align 8, !tbaa !13
  %2938 = icmp eq i32 %2937, 0
  br i1 %2938, label %2969, label %2939

2939:                                             ; preds = %2935
  %2940 = getelementptr inbounds nuw i8, ptr %2926, i64 16
  %2941 = load ptr, ptr %2940, align 8, !tbaa !8
  %2942 = getelementptr inbounds nuw i8, ptr %2926, i64 40
  %2943 = load ptr, ptr %2942, align 8, !tbaa !33
  %2944 = getelementptr inbounds nuw i8, ptr %2926, i64 56
  %2945 = getelementptr inbounds nuw i8, ptr %2926, i64 52
  %2946 = load i32, ptr %2945, align 4, !tbaa !34
  %2947 = call i32 %2941(ptr noundef %2943, ptr noundef nonnull %2944, i32 noundef %2946) #16
  %2948 = load ptr, ptr %2929, align 8, !tbaa !16
  %2949 = getelementptr inbounds nuw i8, ptr %2926, i64 208
  %2950 = load ptr, ptr %2949, align 8, !tbaa !15
  %2951 = ptrtoint ptr %2948 to i64
  %2952 = ptrtoint ptr %2950 to i64
  %2953 = sub i64 %2951, %2952
  %2954 = trunc i64 %2953 to i32
  %2955 = getelementptr inbounds nuw i8, ptr %2926, i64 184
  %2956 = load i32, ptr %2955, align 8, !tbaa !14
  %2957 = add i32 %2956, %2954
  store i32 %2957, ptr %2955, align 8, !tbaa !14
  %2958 = icmp eq i32 %2947, 0
  br i1 %2958, label %2959, label %2961

2959:                                             ; preds = %2939
  store i32 0, ptr %2936, align 8, !tbaa !13
  %2960 = getelementptr inbounds nuw i8, ptr %2926, i64 57
  store i8 0, ptr %2944, align 8, !tbaa !35
  br label %2965

2961:                                             ; preds = %2939
  %2962 = sext i32 %2947 to i64
  %2963 = getelementptr inbounds i8, ptr %2944, i64 %2962
  %2964 = load i8, ptr %2944, align 1, !tbaa !35
  br label %2965

2965:                                             ; preds = %2961, %2959
  %2966 = phi i8 [ 0, %2959 ], [ %2964, %2961 ]
  %2967 = phi ptr [ %2960, %2959 ], [ %2963, %2961 ]
  store ptr %2967, ptr %2930, align 8, !tbaa !18
  %2968 = getelementptr inbounds nuw i8, ptr %2926, i64 57
  store ptr %2968, ptr %2929, align 8, !tbaa !16
  br label %2969

2969:                                             ; preds = %2965, %2935, %2932
  %2970 = phi i8 [ %2934, %2932 ], [ %2966, %2965 ], [ 0, %2935 ]
  %2971 = zext i8 %2970 to i32
  %2972 = lshr i32 %2971, 4
  store i32 %2972, ptr %2607, align 4, !tbaa !274
  %2973 = and i32 %2971, 15
  store i32 %2973, ptr %2608, align 8, !tbaa !275
  %2974 = load i32, ptr %2609, align 8, !tbaa !60
  %2975 = icmp eq i32 %2974, 0
  %2976 = load i32, ptr %2605, align 4, !tbaa !272
  br i1 %2975, label %2988, label %2977

2977:                                             ; preds = %2969
  %2978 = icmp sgt i32 %2976, 63
  br i1 %2978, label %4072, label %2979

2979:                                             ; preds = %2977
  %2980 = load i32, ptr %2606, align 8, !tbaa !273
  %2981 = icmp sgt i32 %2980, 63
  %2982 = icmp sgt i32 %2976, %2980
  %2983 = or i1 %2981, %2982
  br i1 %2983, label %4072, label %2984

2984:                                             ; preds = %2979
  %2985 = icmp ugt i8 %2970, -33
  %2986 = icmp samesign ugt i32 %2973, 13
  %2987 = select i1 %2985, i1 true, i1 %2986
  br i1 %2987, label %4072, label %2994

2988:                                             ; preds = %2969
  %2989 = icmp eq i32 %2976, 0
  %2990 = or i32 %2972, %2973
  %2991 = icmp eq i32 %2990, 0
  %2992 = select i1 %2989, i1 %2991, i1 false
  br i1 %2992, label %2993, label %4072

2993:                                             ; preds = %2988
  store i32 63, ptr %2606, align 8, !tbaa !273
  br label %2994

2994:                                             ; preds = %2993, %2984
  store i32 0, ptr %2610, align 4, !tbaa !276
  store i32 0, ptr %2611, align 8, !tbaa !277
  store i32 0, ptr %2612, align 4, !tbaa !278
  store i32 0, ptr %2613, align 8, !tbaa !279
  store i32 0, ptr %2614, align 8, !tbaa !279
  store i32 0, ptr %2615, align 8, !tbaa !279
  store i32 0, ptr %2616, align 8, !tbaa !279
  store i8 -1, ptr %2617, align 8, !tbaa !56
  %2995 = load i32, ptr %2598, align 8, !tbaa !62
  %2996 = icmp eq i32 %2995, 0
  %2997 = select i1 %2996, i32 2147483647, i32 %2995
  store i32 %2997, ptr %2618, align 4, !tbaa !280
  store i32 0, ptr %2619, align 4, !tbaa !281
  %2998 = load i32, ptr %2603, align 4, !tbaa !267
  %2999 = icmp eq i32 %2998, 1
  br i1 %2975, label %3000, label %3192

3000:                                             ; preds = %2994
  br i1 %2999, label %3001, label %3072

3001:                                             ; preds = %3000
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %3002 = load i32, ptr %2604, align 8, !tbaa !4
  %3003 = sext i32 %3002 to i64
  %3004 = getelementptr inbounds %struct.anon, ptr %2589, i64 %3003
  %3005 = getelementptr inbounds nuw i8, ptr %3004, i64 32
  %3006 = load i32, ptr %3005, align 8, !tbaa !94
  %3007 = add i32 %3006, 7
  %3008 = ashr i32 %3007, 3
  %3009 = icmp sgt i32 %3008, 0
  br i1 %3009, label %3010, label %3070

3010:                                             ; preds = %3001
  %3011 = getelementptr inbounds nuw i8, ptr %3004, i64 28
  %3012 = load i32, ptr %3011, align 4, !tbaa !93
  %3013 = add i32 %3012, 7
  %3014 = ashr i32 %3013, 3
  %3015 = icmp sgt i32 %3014, 0
  %3016 = getelementptr inbounds nuw i8, ptr %3004, i64 20
  %3017 = getelementptr inbounds nuw i8, ptr %3004, i64 16
  %3018 = getelementptr inbounds nuw i8, ptr %3004, i64 12
  %3019 = getelementptr inbounds nuw i8, ptr %3004, i64 48
  %3020 = getelementptr inbounds nuw i8, ptr %3004, i64 36
  %3021 = zext nneg i32 %3014 to i64
  br label %3022

3022:                                             ; preds = %3067, %3010
  %3023 = phi i32 [ 0, %3010 ], [ %3068, %3067 ]
  br i1 %3015, label %3024, label %3067

3024:                                             ; preds = %3022
  %3025 = shl i32 %3023, 3
  br label %3026

3026:                                             ; preds = %3064, %3024
  %3027 = phi i64 [ 0, %3024 ], [ %3065, %3064 ]
  %3028 = load i32, ptr %3016, align 4, !tbaa !270
  %3029 = load i32, ptr %3017, align 8, !tbaa !269
  %3030 = sext i32 %3029 to i64
  %3031 = getelementptr inbounds %struct.stbi__huffman, ptr %2622, i64 %3030
  %3032 = sext i32 %3028 to i64
  %3033 = getelementptr inbounds %struct.stbi__huffman, ptr %2623, i64 %3032
  %3034 = getelementptr inbounds [512 x i16], ptr %2624, i64 %3032
  %3035 = load i32, ptr %3018, align 4, !tbaa !83
  %3036 = sext i32 %3035 to i64
  %3037 = getelementptr inbounds [64 x i16], ptr %2625, i64 %3036
  %3038 = call fastcc i32 @stbi__jpeg_decode_block(ptr noundef nonnull %2583, ptr noundef %6, ptr noundef %3031, ptr noundef %3033, ptr noundef %3034, i32 noundef %3002, ptr noundef %3037) #17
  %3039 = icmp eq i32 %3038, 0
  br i1 %3039, label %3070, label %3040

3040:                                             ; preds = %3026
  %3041 = load ptr, ptr %2585, align 8, !tbaa !264
  %3042 = load ptr, ptr %3019, align 8, !tbaa !72
  %3043 = load i32, ptr %3020, align 4, !tbaa !95
  %3044 = mul i32 %3025, %3043
  %3045 = sext i32 %3044 to i64
  %3046 = getelementptr inbounds i8, ptr %3042, i64 %3045
  %3047 = shl i64 %3027, 3
  %3048 = getelementptr inbounds i8, ptr %3046, i64 %3047
  call void %3041(ptr noundef %3048, i32 noundef %3043, ptr noundef nonnull %6) #16
  %3049 = load i32, ptr %2618, align 4, !tbaa !280
  %3050 = add i32 %3049, -1
  store i32 %3050, ptr %2618, align 4, !tbaa !280
  %3051 = icmp slt i32 %3050, 1
  br i1 %3051, label %3052, label %3064

3052:                                             ; preds = %3040
  %3053 = load i32, ptr %2610, align 4, !tbaa !276
  %3054 = icmp slt i32 %3053, 24
  br i1 %3054, label %3055, label %3056

3055:                                             ; preds = %3052
  call fastcc void @stbi__grow_buffer_unsafe(ptr noundef nonnull %2583) #17
  br label %3056

3056:                                             ; preds = %3055, %3052
  %3057 = load i8, ptr %2617, align 8, !tbaa !56
  %3058 = and i8 %3057, -8
  %3059 = icmp eq i8 %3058, -48
  br i1 %3059, label %3060, label %3070

3060:                                             ; preds = %3056
  store i32 0, ptr %2610, align 4, !tbaa !276
  store i32 0, ptr %2611, align 8, !tbaa !277
  store i32 0, ptr %2612, align 4, !tbaa !278
  store i32 0, ptr %2613, align 8, !tbaa !279
  store i32 0, ptr %2614, align 8, !tbaa !279
  store i32 0, ptr %2615, align 8, !tbaa !279
  store i32 0, ptr %2616, align 8, !tbaa !279
  store i8 -1, ptr %2617, align 8, !tbaa !56
  %3061 = load i32, ptr %2598, align 8, !tbaa !62
  %3062 = icmp eq i32 %3061, 0
  %3063 = select i1 %3062, i32 2147483647, i32 %3061
  store i32 %3063, ptr %2618, align 4, !tbaa !280
  store i32 0, ptr %2619, align 4, !tbaa !281
  br label %3064

3064:                                             ; preds = %3060, %3040
  %3065 = add nuw nsw i64 %3027, 1
  %3066 = icmp eq i64 %3065, %3021
  br i1 %3066, label %3067, label %3026, !llvm.loop !282

3067:                                             ; preds = %3064, %3022
  %3068 = add nuw nsw i32 %3023, 1
  %3069 = icmp eq i32 %3068, %3008
  br i1 %3069, label %3070, label %3022, !llvm.loop !283

3070:                                             ; preds = %3067, %3056, %3026, %3001
  %3071 = phi i32 [ 1, %3056 ], [ 1, %3001 ], [ 0, %3026 ], [ 1, %3067 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %3752

3072:                                             ; preds = %3000
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %3073 = load i32, ptr %2620, align 4, !tbaa !92
  %3074 = icmp sgt i32 %3073, 0
  br i1 %3074, label %3075, label %3190

3075:                                             ; preds = %3072
  %3076 = load i32, ptr %2621, align 8, !tbaa !91
  br label %3077

3077:                                             ; preds = %3184, %3075
  %3078 = phi i32 [ %3073, %3075 ], [ %3185, %3184 ]
  %3079 = phi i32 [ %2997, %3075 ], [ %3186, %3184 ]
  %3080 = phi i32 [ %3076, %3075 ], [ %3187, %3184 ]
  %3081 = phi i32 [ 0, %3075 ], [ %3188, %3184 ]
  %3082 = icmp sgt i32 %3080, 0
  br i1 %3082, label %3083, label %3184

3083:                                             ; preds = %3077, %3177
  %3084 = phi i32 [ %3178, %3177 ], [ %3079, %3077 ]
  %3085 = phi i32 [ %3179, %3177 ], [ 0, %3077 ]
  %3086 = load i32, ptr %2603, align 4, !tbaa !267
  %3087 = icmp sgt i32 %3086, 0
  br i1 %3087, label %3088, label %3161

3088:                                             ; preds = %3083, %3154
  %3089 = phi i32 [ %3155, %3154 ], [ %3086, %3083 ]
  %3090 = phi i64 [ %3156, %3154 ], [ 0, %3083 ]
  %3091 = getelementptr inbounds nuw i32, ptr %2604, i64 %3090
  %3092 = load i32, ptr %3091, align 4, !tbaa !4
  %3093 = sext i32 %3092 to i64
  %3094 = getelementptr inbounds %struct.anon, ptr %2589, i64 %3093
  %3095 = getelementptr inbounds nuw i8, ptr %3094, i64 8
  %3096 = load i32, ptr %3095, align 8, !tbaa !82
  %3097 = icmp sgt i32 %3096, 0
  br i1 %3097, label %3098, label %3154

3098:                                             ; preds = %3088
  %3099 = getelementptr inbounds nuw i8, ptr %3094, i64 4
  %3100 = getelementptr inbounds nuw i8, ptr %3094, i64 20
  %3101 = getelementptr inbounds nuw i8, ptr %3094, i64 16
  %3102 = getelementptr inbounds nuw i8, ptr %3094, i64 12
  %3103 = getelementptr inbounds nuw i8, ptr %3094, i64 48
  %3104 = getelementptr inbounds nuw i8, ptr %3094, i64 36
  %3105 = load i32, ptr %3099, align 4, !tbaa !81
  br label %3106

3106:                                             ; preds = %3147, %3098
  %3107 = phi i32 [ %3096, %3098 ], [ %3148, %3147 ]
  %3108 = phi i32 [ %3105, %3098 ], [ %3149, %3147 ]
  %3109 = phi i32 [ 0, %3098 ], [ %3150, %3147 ]
  %3110 = icmp sgt i32 %3108, 0
  br i1 %3110, label %3111, label %3147

3111:                                             ; preds = %3106, %3127
  %3112 = phi i32 [ %3143, %3127 ], [ %3108, %3106 ]
  %3113 = phi i32 [ %3142, %3127 ], [ 0, %3106 ]
  %3114 = load i32, ptr %3095, align 8, !tbaa !82
  %3115 = load i32, ptr %3100, align 4, !tbaa !270
  %3116 = load i32, ptr %3101, align 8, !tbaa !269
  %3117 = sext i32 %3116 to i64
  %3118 = getelementptr inbounds %struct.stbi__huffman, ptr %2622, i64 %3117
  %3119 = sext i32 %3115 to i64
  %3120 = getelementptr inbounds %struct.stbi__huffman, ptr %2623, i64 %3119
  %3121 = getelementptr inbounds [512 x i16], ptr %2624, i64 %3119
  %3122 = load i32, ptr %3102, align 4, !tbaa !83
  %3123 = sext i32 %3122 to i64
  %3124 = getelementptr inbounds [64 x i16], ptr %2625, i64 %3123
  %3125 = call fastcc i32 @stbi__jpeg_decode_block(ptr noundef nonnull %2583, ptr noundef %7, ptr noundef %3118, ptr noundef %3120, ptr noundef %3121, i32 noundef %3092, ptr noundef %3124) #17
  %3126 = icmp eq i32 %3125, 0
  br i1 %3126, label %3190, label %3127

3127:                                             ; preds = %3111
  %3128 = mul i32 %3114, %3081
  %3129 = add i32 %3128, %3109
  %3130 = shl i32 %3129, 3
  %3131 = mul i32 %3112, %3085
  %3132 = add i32 %3131, %3113
  %3133 = shl i32 %3132, 3
  %3134 = load ptr, ptr %2585, align 8, !tbaa !264
  %3135 = load ptr, ptr %3103, align 8, !tbaa !72
  %3136 = load i32, ptr %3104, align 4, !tbaa !95
  %3137 = mul i32 %3130, %3136
  %3138 = sext i32 %3137 to i64
  %3139 = getelementptr inbounds i8, ptr %3135, i64 %3138
  %3140 = sext i32 %3133 to i64
  %3141 = getelementptr inbounds i8, ptr %3139, i64 %3140
  call void %3134(ptr noundef %3141, i32 noundef %3136, ptr noundef nonnull %7) #16
  %3142 = add nuw nsw i32 %3113, 1
  %3143 = load i32, ptr %3099, align 4, !tbaa !81
  %3144 = icmp slt i32 %3142, %3143
  br i1 %3144, label %3111, label %3145, !llvm.loop !284

3145:                                             ; preds = %3127
  %3146 = load i32, ptr %3095, align 8, !tbaa !82
  br label %3147

3147:                                             ; preds = %3145, %3106
  %3148 = phi i32 [ %3146, %3145 ], [ %3107, %3106 ]
  %3149 = phi i32 [ %3143, %3145 ], [ %3108, %3106 ]
  %3150 = add nuw nsw i32 %3109, 1
  %3151 = icmp slt i32 %3150, %3148
  br i1 %3151, label %3106, label %3152, !llvm.loop !285

3152:                                             ; preds = %3147
  %3153 = load i32, ptr %2603, align 4, !tbaa !267
  br label %3154

3154:                                             ; preds = %3152, %3088
  %3155 = phi i32 [ %3153, %3152 ], [ %3089, %3088 ]
  %3156 = add nuw nsw i64 %3090, 1
  %3157 = sext i32 %3155 to i64
  %3158 = icmp slt i64 %3156, %3157
  br i1 %3158, label %3088, label %3159, !llvm.loop !286

3159:                                             ; preds = %3154
  %3160 = load i32, ptr %2618, align 4, !tbaa !280
  br label %3161

3161:                                             ; preds = %3159, %3083
  %3162 = phi i32 [ %3160, %3159 ], [ %3084, %3083 ]
  %3163 = add i32 %3162, -1
  store i32 %3163, ptr %2618, align 4, !tbaa !280
  %3164 = icmp slt i32 %3163, 1
  br i1 %3164, label %3165, label %3177

3165:                                             ; preds = %3161
  %3166 = load i32, ptr %2610, align 4, !tbaa !276
  %3167 = icmp slt i32 %3166, 24
  br i1 %3167, label %3168, label %3169

3168:                                             ; preds = %3165
  call fastcc void @stbi__grow_buffer_unsafe(ptr noundef nonnull %2583) #17
  br label %3169

3169:                                             ; preds = %3168, %3165
  %3170 = load i8, ptr %2617, align 8, !tbaa !56
  %3171 = and i8 %3170, -8
  %3172 = icmp eq i8 %3171, -48
  br i1 %3172, label %3173, label %3190

3173:                                             ; preds = %3169
  store i32 0, ptr %2610, align 4, !tbaa !276
  store i32 0, ptr %2611, align 8, !tbaa !277
  store i32 0, ptr %2612, align 4, !tbaa !278
  store i32 0, ptr %2613, align 8, !tbaa !279
  store i32 0, ptr %2614, align 8, !tbaa !279
  store i32 0, ptr %2615, align 8, !tbaa !279
  store i32 0, ptr %2616, align 8, !tbaa !279
  store i8 -1, ptr %2617, align 8, !tbaa !56
  %3174 = load i32, ptr %2598, align 8, !tbaa !62
  %3175 = icmp eq i32 %3174, 0
  %3176 = select i1 %3175, i32 2147483647, i32 %3174
  store i32 %3176, ptr %2618, align 4, !tbaa !280
  store i32 0, ptr %2619, align 4, !tbaa !281
  br label %3177

3177:                                             ; preds = %3173, %3161
  %3178 = phi i32 [ %3163, %3161 ], [ %3176, %3173 ]
  %3179 = add nuw nsw i32 %3085, 1
  %3180 = load i32, ptr %2621, align 8, !tbaa !91
  %3181 = icmp slt i32 %3179, %3180
  br i1 %3181, label %3083, label %3182, !llvm.loop !287

3182:                                             ; preds = %3177
  %3183 = load i32, ptr %2620, align 4, !tbaa !92
  br label %3184

3184:                                             ; preds = %3182, %3077
  %3185 = phi i32 [ %3183, %3182 ], [ %3078, %3077 ]
  %3186 = phi i32 [ %3178, %3182 ], [ %3079, %3077 ]
  %3187 = phi i32 [ %3180, %3182 ], [ %3080, %3077 ]
  %3188 = add nuw nsw i32 %3081, 1
  %3189 = icmp slt i32 %3188, %3185
  br i1 %3189, label %3077, label %3190, !llvm.loop !288

3190:                                             ; preds = %3184, %3169, %3111, %3072
  %3191 = phi i32 [ 1, %3072 ], [ 1, %3169 ], [ 0, %3111 ], [ 1, %3184 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %3752

3192:                                             ; preds = %2994
  br i1 %2999, label %3198, label %3193

3193:                                             ; preds = %3192
  %3194 = load i32, ptr %2620, align 4, !tbaa !92
  %3195 = icmp sgt i32 %3194, 0
  br i1 %3195, label %3196, label %3755

3196:                                             ; preds = %3193
  %3197 = load i32, ptr %2621, align 8, !tbaa !91
  br label %3651

3198:                                             ; preds = %3192
  %3199 = load i32, ptr %2604, align 8, !tbaa !4
  %3200 = sext i32 %3199 to i64
  %3201 = getelementptr inbounds %struct.anon, ptr %2589, i64 %3200
  %3202 = getelementptr inbounds nuw i8, ptr %3201, i64 28
  %3203 = load i32, ptr %3202, align 4, !tbaa !93
  %3204 = add i32 %3203, 7
  %3205 = ashr i32 %3204, 3
  %3206 = getelementptr inbounds nuw i8, ptr %3201, i64 32
  %3207 = load i32, ptr %3206, align 8, !tbaa !94
  %3208 = add i32 %3207, 7
  %3209 = ashr i32 %3208, 3
  %3210 = icmp sgt i32 %3209, 0
  br i1 %3210, label %3211, label %3755

3211:                                             ; preds = %3198
  %3212 = icmp sgt i32 %3205, 0
  %3213 = getelementptr inbounds nuw i8, ptr %3201, i64 80
  %3214 = getelementptr inbounds nuw i8, ptr %3201, i64 88
  %3215 = getelementptr inbounds nuw i8, ptr %3201, i64 20
  %3216 = getelementptr inbounds nuw i8, ptr %3201, i64 16
  br label %3217

3217:                                             ; preds = %3648, %3211
  %3218 = phi i32 [ 0, %3211 ], [ %3649, %3648 ]
  br i1 %3212, label %3219, label %3648

3219:                                             ; preds = %3217, %3645
  %3220 = phi i32 [ %3646, %3645 ], [ 0, %3217 ]
  %3221 = load ptr, ptr %3213, align 8, !tbaa !97
  %3222 = load i32, ptr %3214, align 8, !tbaa !289
  %3223 = mul i32 %3222, %3218
  %3224 = add i32 %3223, %3220
  %3225 = shl i32 %3224, 6
  %3226 = sext i32 %3225 to i64
  %3227 = getelementptr inbounds i16, ptr %3221, i64 %3226
  %3228 = load i32, ptr %2605, align 4, !tbaa !272
  %3229 = icmp eq i32 %3228, 0
  br i1 %3229, label %3230, label %3236

3230:                                             ; preds = %3219
  %3231 = load i32, ptr %3216, align 8, !tbaa !269
  %3232 = sext i32 %3231 to i64
  %3233 = getelementptr inbounds %struct.stbi__huffman, ptr %2622, i64 %3232
  %3234 = call fastcc i32 @stbi__jpeg_decode_block_prog_dc(ptr noundef nonnull %2583, ptr noundef %3227, ptr noundef %3233, i32 noundef %3199) #17
  %3235 = icmp eq i32 %3234, 0
  br i1 %3235, label %4072, label %3629

3236:                                             ; preds = %3219
  %3237 = load i32, ptr %3215, align 4, !tbaa !270
  %3238 = sext i32 %3237 to i64
  %3239 = getelementptr inbounds %struct.stbi__huffman, ptr %2623, i64 %3238
  %3240 = getelementptr inbounds [512 x i16], ptr %2624, i64 %3238
  %3241 = load i32, ptr %2607, align 4, !tbaa !274
  %3242 = icmp eq i32 %3241, 0
  %3243 = load i32, ptr %2608, align 8, !tbaa !275
  %3244 = load i32, ptr %2619, align 4, !tbaa !281
  %3245 = icmp eq i32 %3244, 0
  br i1 %3242, label %3246, label %3417

3246:                                             ; preds = %3236
  br i1 %3245, label %3247, label %3253

3247:                                             ; preds = %3246
  %3248 = getelementptr inbounds nuw i8, ptr %3239, i64 1280
  %3249 = getelementptr inbounds nuw i8, ptr %3239, i64 1024
  %3250 = getelementptr inbounds nuw i8, ptr %3239, i64 1540
  %3251 = getelementptr inbounds nuw i8, ptr %3239, i64 1612
  %3252 = load i32, ptr %2610, align 4, !tbaa !276
  br label %3255

3253:                                             ; preds = %3246
  %3254 = add i32 %3244, -1
  br label %3627

3255:                                             ; preds = %3412, %3247
  %3256 = phi i32 [ %3413, %3412 ], [ %3252, %3247 ]
  %3257 = phi i32 [ %3414, %3412 ], [ %3228, %3247 ]
  %3258 = icmp slt i32 %3256, 16
  br i1 %3258, label %3259, label %3260

3259:                                             ; preds = %3255
  call fastcc void @stbi__grow_buffer_unsafe(ptr noundef nonnull %2583) #17
  br label %3260

3260:                                             ; preds = %3259, %3255
  %3261 = load i32, ptr %2611, align 8, !tbaa !277
  %3262 = lshr i32 %3261, 23
  %3263 = zext nneg i32 %3262 to i64
  %3264 = getelementptr inbounds nuw i16, ptr %3240, i64 %3263
  %3265 = load i16, ptr %3264, align 2, !tbaa !39
  %3266 = sext i16 %3265 to i32
  %3267 = icmp eq i16 %3265, 0
  br i1 %3267, label %3287, label %3268

3268:                                             ; preds = %3260
  %3269 = and i32 %3266, 15
  %3270 = load i32, ptr %2610, align 4, !tbaa !276
  %3271 = icmp sgt i32 %3269, %3270
  br i1 %3271, label %4072, label %3272

3272:                                             ; preds = %3268
  %3273 = lshr i32 %3266, 4
  %3274 = and i32 %3273, 15
  %3275 = add i32 %3274, %3257
  %3276 = shl i32 %3261, %3269
  store i32 %3276, ptr %2611, align 8, !tbaa !277
  %3277 = sub nsw i32 %3270, %3269
  store i32 %3277, ptr %2610, align 4, !tbaa !276
  %3278 = add i32 %3275, 1
  %3279 = sext i32 %3275 to i64
  %3280 = getelementptr inbounds i8, ptr @stbi__jpeg_dezigzag, i64 %3279
  %3281 = load i8, ptr %3280, align 1, !tbaa !35
  %3282 = lshr i32 %3266, 8
  %3283 = shl i32 %3282, %3243
  %3284 = trunc i32 %3283 to i16
  %3285 = zext i8 %3281 to i64
  %3286 = getelementptr inbounds nuw i16, ptr %3227, i64 %3285
  store i16 %3284, ptr %3286, align 2, !tbaa !39
  br label %3412

3287:                                             ; preds = %3260
  %3288 = load i32, ptr %2610, align 4, !tbaa !276
  %3289 = icmp slt i32 %3288, 16
  br i1 %3289, label %3290, label %3294

3290:                                             ; preds = %3287
  call fastcc void @stbi__grow_buffer_unsafe(ptr noundef nonnull %2583) #17
  %3291 = load i32, ptr %2611, align 8, !tbaa !277
  %3292 = lshr i32 %3291, 23
  %3293 = zext nneg i32 %3292 to i64
  br label %3294

3294:                                             ; preds = %3290, %3287
  %3295 = phi i64 [ %3293, %3290 ], [ %3263, %3287 ]
  %3296 = phi i32 [ %3291, %3290 ], [ %3261, %3287 ]
  %3297 = getelementptr inbounds nuw i8, ptr %3239, i64 %3295
  %3298 = load i8, ptr %3297, align 1, !tbaa !35
  %3299 = icmp eq i8 %3298, -1
  br i1 %3299, label %3310, label %3300

3300:                                             ; preds = %3294
  %3301 = zext i8 %3298 to i64
  %3302 = getelementptr inbounds nuw i8, ptr %3248, i64 %3301
  %3303 = load i8, ptr %3302, align 1, !tbaa !35
  %3304 = zext i8 %3303 to i32
  %3305 = load i32, ptr %2610, align 4, !tbaa !276
  %3306 = icmp slt i32 %3305, %3304
  br i1 %3306, label %4072, label %3307

3307:                                             ; preds = %3300
  %3308 = shl i32 %3296, %3304
  store i32 %3308, ptr %2611, align 8, !tbaa !277
  %3309 = sub nsw i32 %3305, %3304
  store i32 %3309, ptr %2610, align 4, !tbaa !276
  br label %3340

3310:                                             ; preds = %3294
  %3311 = lshr i32 %3296, 16
  br label %3312

3312:                                             ; preds = %3312, %3310
  %3313 = phi i32 [ 10, %3310 ], [ %3318, %3312 ]
  %3314 = sext i32 %3313 to i64
  %3315 = getelementptr inbounds i32, ptr %3250, i64 %3314
  %3316 = load i32, ptr %3315, align 4, !tbaa !4
  %3317 = icmp ult i32 %3311, %3316
  %3318 = add i32 %3313, 1
  br i1 %3317, label %3319, label %3312

3319:                                             ; preds = %3312
  %3320 = icmp eq i32 %3313, 17
  %3321 = load i32, ptr %2610, align 4, !tbaa !276
  br i1 %3320, label %3322, label %3324

3322:                                             ; preds = %3319
  %3323 = add i32 %3321, -16
  store i32 %3323, ptr %2610, align 4, !tbaa !276
  br label %4072

3324:                                             ; preds = %3319
  %3325 = icmp sgt i32 %3313, %3321
  br i1 %3325, label %4072, label %3326

3326:                                             ; preds = %3324
  %3327 = sub i32 32, %3313
  %3328 = lshr i32 %3296, %3327
  %3329 = getelementptr inbounds i32, ptr @stbi__bmask, i64 %3314
  %3330 = load i32, ptr %3329, align 4, !tbaa !4
  %3331 = and i32 %3330, %3328
  %3332 = getelementptr inbounds i32, ptr %3251, i64 %3314
  %3333 = load i32, ptr %3332, align 4, !tbaa !4
  %3334 = add i32 %3331, %3333
  %3335 = icmp ugt i32 %3334, 255
  br i1 %3335, label %4072, label %3336

3336:                                             ; preds = %3326
  %3337 = sub i32 %3321, %3313
  store i32 %3337, ptr %2610, align 4, !tbaa !276
  %3338 = shl i32 %3296, %3313
  store i32 %3338, ptr %2611, align 8, !tbaa !277
  %3339 = zext nneg i32 %3334 to i64
  br label %3340

3340:                                             ; preds = %3336, %3307
  %3341 = phi i32 [ %3337, %3336 ], [ %3309, %3307 ]
  %3342 = phi i64 [ %3339, %3336 ], [ %3301, %3307 ]
  %3343 = getelementptr inbounds nuw i8, ptr %3249, i64 %3342
  %3344 = load i8, ptr %3343, align 1, !tbaa !35
  %3345 = zext i8 %3344 to i32
  %3346 = and i32 %3345, 15
  %3347 = lshr i32 %3345, 4
  %3348 = icmp eq i32 %3346, 0
  br i1 %3348, label %3349, label %3378

3349:                                             ; preds = %3340
  %3350 = icmp ult i8 %3344, -16
  br i1 %3350, label %3351, label %3376

3351:                                             ; preds = %3349
  %3352 = shl nuw nsw i32 1, %3347
  store i32 %3352, ptr %2619, align 4, !tbaa !281
  %3353 = icmp eq i32 %3347, 0
  br i1 %3353, label %3627, label %3354

3354:                                             ; preds = %3351
  %3355 = icmp slt i32 %3341, %3347
  br i1 %3355, label %3356, label %3358

3356:                                             ; preds = %3354
  call fastcc void @stbi__grow_buffer_unsafe(ptr noundef nonnull %2583) #17
  %3357 = load i32, ptr %2610, align 4, !tbaa !276
  br label %3358

3358:                                             ; preds = %3356, %3354
  %3359 = phi i32 [ %3357, %3356 ], [ %3341, %3354 ]
  %3360 = icmp slt i32 %3359, %3347
  br i1 %3360, label %3372, label %3361

3361:                                             ; preds = %3358
  %3362 = load i32, ptr %2611, align 8, !tbaa !277
  %3363 = call i32 @llvm.fshl.i32(i32 %3362, i32 %3362, i32 range(i32 1, 15) %3347)
  %3364 = zext nneg i32 %3347 to i64
  %3365 = getelementptr inbounds nuw i32, ptr @stbi__bmask, i64 %3364
  %3366 = load i32, ptr %3365, align 4, !tbaa !4
  %3367 = xor i32 %3366, -1
  %3368 = and i32 %3363, %3367
  store i32 %3368, ptr %2611, align 8, !tbaa !277
  %3369 = and i32 %3363, %3366
  %3370 = sub nsw i32 %3359, %3347
  store i32 %3370, ptr %2610, align 4, !tbaa !276
  %3371 = add i32 %3369, -1
  br label %3372

3372:                                             ; preds = %3361, %3358
  %3373 = phi i32 [ %3371, %3361 ], [ -1, %3358 ]
  %3374 = load i32, ptr %2619, align 4, !tbaa !281
  %3375 = add i32 %3374, %3373
  br label %3627

3376:                                             ; preds = %3349
  %3377 = add i32 %3257, 16
  br label %3412

3378:                                             ; preds = %3340
  %3379 = add i32 %3347, %3257
  %3380 = add i32 %3379, 1
  %3381 = sext i32 %3379 to i64
  %3382 = getelementptr inbounds i8, ptr @stbi__jpeg_dezigzag, i64 %3381
  %3383 = load i8, ptr %3382, align 1, !tbaa !35
  %3384 = icmp slt i32 %3341, %3346
  br i1 %3384, label %3385, label %3387

3385:                                             ; preds = %3378
  call fastcc void @stbi__grow_buffer_unsafe(ptr noundef nonnull %2583) #17
  %3386 = load i32, ptr %2610, align 4, !tbaa !276
  br label %3387

3387:                                             ; preds = %3385, %3378
  %3388 = phi i32 [ %3386, %3385 ], [ %3341, %3378 ]
  %3389 = icmp slt i32 %3388, %3346
  br i1 %3389, label %3405, label %3390

3390:                                             ; preds = %3387
  %3391 = load i32, ptr %2611, align 8, !tbaa !277
  %3392 = call i32 @llvm.fshl.i32(i32 %3391, i32 %3391, i32 range(i32 1, 16) %3346)
  %3393 = zext nneg i32 %3346 to i64
  %3394 = getelementptr inbounds nuw i32, ptr @stbi__bmask, i64 %3393
  %3395 = load i32, ptr %3394, align 4, !tbaa !4
  %3396 = xor i32 %3395, -1
  %3397 = and i32 %3392, %3396
  store i32 %3397, ptr %2611, align 8, !tbaa !277
  %3398 = and i32 %3392, %3395
  %3399 = sub nsw i32 %3388, %3346
  store i32 %3399, ptr %2610, align 4, !tbaa !276
  %3400 = getelementptr inbounds nuw i32, ptr @stbi__jbias, i64 %3393
  %3401 = load i32, ptr %3400, align 4, !tbaa !4
  %3402 = icmp slt i32 %3391, 0
  %3403 = select i1 %3402, i32 0, i32 %3401
  %3404 = add i32 %3403, %3398
  br label %3405

3405:                                             ; preds = %3390, %3387
  %3406 = phi i32 [ %3399, %3390 ], [ %3388, %3387 ]
  %3407 = phi i32 [ %3404, %3390 ], [ 0, %3387 ]
  %3408 = shl i32 %3407, %3243
  %3409 = trunc i32 %3408 to i16
  %3410 = zext i8 %3383 to i64
  %3411 = getelementptr inbounds nuw i16, ptr %3227, i64 %3410
  store i16 %3409, ptr %3411, align 2, !tbaa !39
  br label %3412

3412:                                             ; preds = %3405, %3376, %3272
  %3413 = phi i32 [ %3341, %3376 ], [ %3406, %3405 ], [ %3277, %3272 ]
  %3414 = phi i32 [ %3377, %3376 ], [ %3380, %3405 ], [ %3278, %3272 ]
  %3415 = load i32, ptr %2606, align 8, !tbaa !273
  %3416 = icmp sgt i32 %3414, %3415
  br i1 %3416, label %3629, label %3255, !llvm.loop !290

3417:                                             ; preds = %3236
  br i1 %3245, label %3418, label %3428

3418:                                             ; preds = %3417
  %3419 = getelementptr inbounds nuw i8, ptr %3239, i64 1280
  %3420 = getelementptr inbounds nuw i8, ptr %3239, i64 1024
  %3421 = getelementptr inbounds nuw i8, ptr %3239, i64 1540
  %3422 = getelementptr inbounds nuw i8, ptr %3239, i64 1612
  %3423 = shl i32 65536, %3243
  %3424 = ashr exact i32 %3423, 16
  %3425 = sub nsw i32 0, %3424
  %3426 = trunc nsw i32 %3424 to i16
  %3427 = load i32, ptr %2610, align 4, !tbaa !276
  br label %3471

3428:                                             ; preds = %3417
  %3429 = add i32 %3244, -1
  store i32 %3429, ptr %2619, align 4, !tbaa !281
  %3430 = load i32, ptr %2606, align 8, !tbaa !273
  %3431 = icmp sgt i32 %3228, %3430
  br i1 %3431, label %3629, label %3432

3432:                                             ; preds = %3428
  %3433 = shl i32 65536, %3243
  %3434 = ashr exact i32 %3433, 16
  %3435 = trunc nsw i32 %3434 to i16
  %3436 = sub i16 0, %3435
  br label %3437

3437:                                             ; preds = %3467, %3432
  %3438 = phi i32 [ %3228, %3432 ], [ %3468, %3467 ]
  %3439 = sext i32 %3438 to i64
  %3440 = getelementptr inbounds i8, ptr @stbi__jpeg_dezigzag, i64 %3439
  %3441 = load i8, ptr %3440, align 1, !tbaa !35
  %3442 = zext i8 %3441 to i64
  %3443 = getelementptr inbounds nuw i16, ptr %3227, i64 %3442
  %3444 = load i16, ptr %3443, align 2, !tbaa !39
  %3445 = icmp eq i16 %3444, 0
  br i1 %3445, label %3467, label %3446

3446:                                             ; preds = %3437
  %3447 = load i32, ptr %2610, align 4, !tbaa !276
  %3448 = icmp slt i32 %3447, 1
  br i1 %3448, label %3449, label %3452

3449:                                             ; preds = %3446
  call fastcc void @stbi__grow_buffer_unsafe(ptr noundef nonnull %2583) #17
  %3450 = load i32, ptr %2610, align 4, !tbaa !276
  %3451 = icmp slt i32 %3450, 1
  br i1 %3451, label %3467, label %3452

3452:                                             ; preds = %3449, %3446
  %3453 = phi i32 [ %3450, %3449 ], [ %3447, %3446 ]
  %3454 = load i32, ptr %2611, align 8, !tbaa !277
  %3455 = shl i32 %3454, 1
  store i32 %3455, ptr %2611, align 8, !tbaa !277
  %3456 = add nsw i32 %3453, -1
  store i32 %3456, ptr %2610, align 4, !tbaa !276
  %3457 = icmp sgt i32 %3454, -1
  br i1 %3457, label %3467, label %3458

3458:                                             ; preds = %3452
  %3459 = load i16, ptr %3443, align 2, !tbaa !39
  %3460 = sext i16 %3459 to i32
  %3461 = and i32 %3434, %3460
  %3462 = icmp eq i32 %3461, 0
  br i1 %3462, label %3463, label %3467

3463:                                             ; preds = %3458
  %3464 = icmp sgt i16 %3459, 0
  %3465 = select i1 %3464, i16 %3435, i16 %3436
  %3466 = add i16 %3465, %3459
  store i16 %3466, ptr %3443, align 2, !tbaa !39
  br label %3467

3467:                                             ; preds = %3463, %3458, %3452, %3449, %3437
  %3468 = add i32 %3438, 1
  %3469 = load i32, ptr %2606, align 8, !tbaa !273
  %3470 = icmp sgt i32 %3468, %3469
  br i1 %3470, label %3629, label %3437, !llvm.loop !291

3471:                                             ; preds = %3624, %3418
  %3472 = phi i32 [ %3582, %3624 ], [ %3427, %3418 ]
  %3473 = phi i32 [ %3585, %3624 ], [ %3228, %3418 ]
  %3474 = icmp slt i32 %3472, 16
  br i1 %3474, label %3475, label %3476

3475:                                             ; preds = %3471
  call fastcc void @stbi__grow_buffer_unsafe(ptr noundef nonnull %2583) #17
  br label %3476

3476:                                             ; preds = %3475, %3471
  %3477 = load i32, ptr %2611, align 8, !tbaa !277
  %3478 = lshr i32 %3477, 23
  %3479 = zext nneg i32 %3478 to i64
  %3480 = getelementptr inbounds nuw i8, ptr %3239, i64 %3479
  %3481 = load i8, ptr %3480, align 1, !tbaa !35
  %3482 = icmp eq i8 %3481, -1
  br i1 %3482, label %3493, label %3483

3483:                                             ; preds = %3476
  %3484 = zext i8 %3481 to i64
  %3485 = getelementptr inbounds nuw i8, ptr %3419, i64 %3484
  %3486 = load i8, ptr %3485, align 1, !tbaa !35
  %3487 = zext i8 %3486 to i32
  %3488 = load i32, ptr %2610, align 4, !tbaa !276
  %3489 = icmp slt i32 %3488, %3487
  br i1 %3489, label %4072, label %3490

3490:                                             ; preds = %3483
  %3491 = shl i32 %3477, %3487
  store i32 %3491, ptr %2611, align 8, !tbaa !277
  %3492 = sub nsw i32 %3488, %3487
  store i32 %3492, ptr %2610, align 4, !tbaa !276
  br label %3523

3493:                                             ; preds = %3476
  %3494 = lshr i32 %3477, 16
  br label %3495

3495:                                             ; preds = %3495, %3493
  %3496 = phi i32 [ 10, %3493 ], [ %3501, %3495 ]
  %3497 = sext i32 %3496 to i64
  %3498 = getelementptr inbounds i32, ptr %3421, i64 %3497
  %3499 = load i32, ptr %3498, align 4, !tbaa !4
  %3500 = icmp ult i32 %3494, %3499
  %3501 = add i32 %3496, 1
  br i1 %3500, label %3502, label %3495

3502:                                             ; preds = %3495
  %3503 = icmp eq i32 %3496, 17
  %3504 = load i32, ptr %2610, align 4, !tbaa !276
  br i1 %3503, label %3505, label %3507

3505:                                             ; preds = %3502
  %3506 = add i32 %3504, -16
  store i32 %3506, ptr %2610, align 4, !tbaa !276
  br label %4072

3507:                                             ; preds = %3502
  %3508 = icmp sgt i32 %3496, %3504
  br i1 %3508, label %4072, label %3509

3509:                                             ; preds = %3507
  %3510 = sub i32 32, %3496
  %3511 = lshr i32 %3477, %3510
  %3512 = getelementptr inbounds i32, ptr @stbi__bmask, i64 %3497
  %3513 = load i32, ptr %3512, align 4, !tbaa !4
  %3514 = and i32 %3513, %3511
  %3515 = getelementptr inbounds i32, ptr %3422, i64 %3497
  %3516 = load i32, ptr %3515, align 4, !tbaa !4
  %3517 = add i32 %3514, %3516
  %3518 = icmp ugt i32 %3517, 255
  br i1 %3518, label %4072, label %3519

3519:                                             ; preds = %3509
  %3520 = sub i32 %3504, %3496
  store i32 %3520, ptr %2610, align 4, !tbaa !276
  %3521 = shl i32 %3477, %3496
  store i32 %3521, ptr %2611, align 8, !tbaa !277
  %3522 = zext nneg i32 %3517 to i64
  br label %3523

3523:                                             ; preds = %3519, %3490
  %3524 = phi i32 [ %3521, %3519 ], [ %3491, %3490 ]
  %3525 = phi i32 [ %3520, %3519 ], [ %3492, %3490 ]
  %3526 = phi i64 [ %3522, %3519 ], [ %3484, %3490 ]
  %3527 = getelementptr inbounds nuw i8, ptr %3420, i64 %3526
  %3528 = load i8, ptr %3527, align 1, !tbaa !35
  %3529 = zext i8 %3528 to i32
  %3530 = and i32 %3529, 15
  %3531 = lshr i32 %3529, 4
  switch i32 %3530, label %4072 [
    i32 0, label %3532
    i32 1, label %3560
  ]

3532:                                             ; preds = %3523
  %3533 = icmp ult i8 %3528, -16
  br i1 %3533, label %3534, label %3574

3534:                                             ; preds = %3532
  %3535 = shl nsw i32 -1, %3531
  %3536 = xor i32 %3535, -1
  store i32 %3536, ptr %2619, align 4, !tbaa !281
  %3537 = icmp eq i32 %3531, 0
  br i1 %3537, label %3574, label %3538

3538:                                             ; preds = %3534
  %3539 = icmp slt i32 %3525, %3531
  br i1 %3539, label %3540, label %3542

3540:                                             ; preds = %3538
  call fastcc void @stbi__grow_buffer_unsafe(ptr noundef nonnull %2583) #17
  %3541 = load i32, ptr %2610, align 4, !tbaa !276
  br label %3542

3542:                                             ; preds = %3540, %3538
  %3543 = phi i32 [ %3541, %3540 ], [ %3525, %3538 ]
  %3544 = icmp slt i32 %3543, %3531
  br i1 %3544, label %3555, label %3545

3545:                                             ; preds = %3542
  %3546 = load i32, ptr %2611, align 8, !tbaa !277
  %3547 = call i32 @llvm.fshl.i32(i32 %3546, i32 %3546, i32 range(i32 1, 15) %3531)
  %3548 = zext nneg i32 %3531 to i64
  %3549 = getelementptr inbounds nuw i32, ptr @stbi__bmask, i64 %3548
  %3550 = load i32, ptr %3549, align 4, !tbaa !4
  %3551 = xor i32 %3550, -1
  %3552 = and i32 %3547, %3551
  store i32 %3552, ptr %2611, align 8, !tbaa !277
  %3553 = and i32 %3547, %3550
  %3554 = sub nsw i32 %3543, %3531
  store i32 %3554, ptr %2610, align 4, !tbaa !276
  br label %3555

3555:                                             ; preds = %3545, %3542
  %3556 = phi i32 [ %3554, %3545 ], [ %3543, %3542 ]
  %3557 = phi i32 [ %3553, %3545 ], [ 0, %3542 ]
  %3558 = load i32, ptr %2619, align 4, !tbaa !281
  %3559 = add i32 %3558, %3557
  store i32 %3559, ptr %2619, align 4, !tbaa !281
  br label %3574

3560:                                             ; preds = %3523
  %3561 = icmp slt i32 %3525, 1
  br i1 %3561, label %3562, label %3567

3562:                                             ; preds = %3560
  call fastcc void @stbi__grow_buffer_unsafe(ptr noundef nonnull %2583) #17
  %3563 = load i32, ptr %2610, align 4, !tbaa !276
  %3564 = icmp slt i32 %3563, 1
  br i1 %3564, label %3574, label %3565

3565:                                             ; preds = %3562
  %3566 = load i32, ptr %2611, align 8, !tbaa !277
  br label %3567

3567:                                             ; preds = %3565, %3560
  %3568 = phi i32 [ %3566, %3565 ], [ %3524, %3560 ]
  %3569 = phi i32 [ %3563, %3565 ], [ %3525, %3560 ]
  %3570 = shl i32 %3568, 1
  store i32 %3570, ptr %2611, align 8, !tbaa !277
  %3571 = add nsw i32 %3569, -1
  store i32 %3571, ptr %2610, align 4, !tbaa !276
  %3572 = icmp slt i32 %3568, 0
  %3573 = select i1 %3572, i32 %3424, i32 %3425
  br label %3574

3574:                                             ; preds = %3567, %3562, %3555, %3534, %3532
  %3575 = phi i32 [ %3571, %3567 ], [ %3525, %3532 ], [ %3525, %3534 ], [ %3556, %3555 ], [ %3563, %3562 ]
  %3576 = phi i32 [ %3531, %3567 ], [ 15, %3532 ], [ 64, %3534 ], [ 64, %3555 ], [ %3531, %3562 ]
  %3577 = phi i32 [ %3573, %3567 ], [ 0, %3532 ], [ 0, %3534 ], [ 0, %3555 ], [ %3425, %3562 ]
  %3578 = load i32, ptr %2606, align 8, !tbaa !273
  %3579 = icmp sgt i32 %3473, %3578
  br i1 %3579, label %3629, label %3580

3580:                                             ; preds = %3574, %3619
  %3581 = phi i32 [ %3622, %3619 ], [ %3578, %3574 ]
  %3582 = phi i32 [ %3620, %3619 ], [ %3575, %3574 ]
  %3583 = phi i32 [ %3585, %3619 ], [ %3473, %3574 ]
  %3584 = phi i32 [ %3621, %3619 ], [ %3576, %3574 ]
  %3585 = add i32 %3583, 1
  %3586 = sext i32 %3583 to i64
  %3587 = getelementptr inbounds i8, ptr @stbi__jpeg_dezigzag, i64 %3586
  %3588 = load i8, ptr %3587, align 1, !tbaa !35
  %3589 = zext i8 %3588 to i64
  %3590 = getelementptr inbounds nuw i16, ptr %3227, i64 %3589
  %3591 = load i16, ptr %3590, align 2, !tbaa !39
  %3592 = icmp eq i16 %3591, 0
  br i1 %3592, label %3615, label %3593

3593:                                             ; preds = %3580
  %3594 = icmp slt i32 %3582, 1
  br i1 %3594, label %3595, label %3598

3595:                                             ; preds = %3593
  call fastcc void @stbi__grow_buffer_unsafe(ptr noundef nonnull %2583) #17
  %3596 = load i32, ptr %2610, align 4, !tbaa !276
  %3597 = icmp slt i32 %3596, 1
  br i1 %3597, label %3619, label %3598

3598:                                             ; preds = %3595, %3593
  %3599 = phi i32 [ %3596, %3595 ], [ %3582, %3593 ]
  %3600 = load i32, ptr %2611, align 8, !tbaa !277
  %3601 = shl i32 %3600, 1
  store i32 %3601, ptr %2611, align 8, !tbaa !277
  %3602 = add nsw i32 %3599, -1
  store i32 %3602, ptr %2610, align 4, !tbaa !276
  %3603 = icmp sgt i32 %3600, -1
  br i1 %3603, label %3619, label %3604

3604:                                             ; preds = %3598
  %3605 = load i16, ptr %3590, align 2, !tbaa !39
  %3606 = sext i16 %3605 to i32
  %3607 = and i32 %3424, %3606
  %3608 = icmp eq i32 %3607, 0
  br i1 %3608, label %3609, label %3619

3609:                                             ; preds = %3604
  %3610 = icmp sgt i16 %3605, 0
  br i1 %3610, label %3611, label %3613

3611:                                             ; preds = %3609
  %3612 = add i16 %3605, %3426
  store i16 %3612, ptr %3590, align 2, !tbaa !39
  br label %3619

3613:                                             ; preds = %3609
  %3614 = sub i16 %3605, %3426
  store i16 %3614, ptr %3590, align 2, !tbaa !39
  br label %3619

3615:                                             ; preds = %3580
  %3616 = icmp eq i32 %3584, 0
  br i1 %3616, label %3624, label %3617

3617:                                             ; preds = %3615
  %3618 = add nsw i32 %3584, -1
  br label %3619

3619:                                             ; preds = %3617, %3613, %3611, %3604, %3598, %3595
  %3620 = phi i32 [ %3582, %3617 ], [ %3602, %3611 ], [ %3602, %3613 ], [ %3602, %3604 ], [ %3602, %3598 ], [ %3596, %3595 ]
  %3621 = phi i32 [ %3618, %3617 ], [ %3584, %3611 ], [ %3584, %3613 ], [ %3584, %3604 ], [ %3584, %3598 ], [ %3584, %3595 ]
  %3622 = load i32, ptr %2606, align 8, !tbaa !273
  %3623 = icmp sgt i32 %3585, %3622
  br i1 %3623, label %3629, label %3580

3624:                                             ; preds = %3615
  %3625 = trunc i32 %3577 to i16
  store i16 %3625, ptr %3590, align 2, !tbaa !39
  %3626 = icmp sgt i32 %3585, %3581
  br i1 %3626, label %3629, label %3471, !llvm.loop !292

3627:                                             ; preds = %3372, %3351, %3253
  %3628 = phi i32 [ %3254, %3253 ], [ 0, %3351 ], [ %3375, %3372 ]
  store i32 %3628, ptr %2619, align 4, !tbaa !281
  br label %3629

3629:                                             ; preds = %3467, %3624, %3574, %3412, %3619, %3627, %3428, %3230
  %3630 = load i32, ptr %2618, align 4, !tbaa !280
  %3631 = add i32 %3630, -1
  store i32 %3631, ptr %2618, align 4, !tbaa !280
  %3632 = icmp slt i32 %3631, 1
  br i1 %3632, label %3633, label %3645

3633:                                             ; preds = %3629
  %3634 = load i32, ptr %2610, align 4, !tbaa !276
  %3635 = icmp slt i32 %3634, 24
  br i1 %3635, label %3636, label %3637

3636:                                             ; preds = %3633
  call fastcc void @stbi__grow_buffer_unsafe(ptr noundef nonnull %2583) #17
  br label %3637

3637:                                             ; preds = %3636, %3633
  %3638 = load i8, ptr %2617, align 8, !tbaa !56
  %3639 = and i8 %3638, -8
  %3640 = icmp eq i8 %3639, -48
  br i1 %3640, label %3641, label %3757

3641:                                             ; preds = %3637
  store i32 0, ptr %2610, align 4, !tbaa !276
  store i32 0, ptr %2611, align 8, !tbaa !277
  store i32 0, ptr %2612, align 4, !tbaa !278
  store i32 0, ptr %2613, align 8, !tbaa !279
  store i32 0, ptr %2614, align 8, !tbaa !279
  store i32 0, ptr %2615, align 8, !tbaa !279
  store i32 0, ptr %2616, align 8, !tbaa !279
  store i8 -1, ptr %2617, align 8, !tbaa !56
  %3642 = load i32, ptr %2598, align 8, !tbaa !62
  %3643 = icmp eq i32 %3642, 0
  %3644 = select i1 %3643, i32 2147483647, i32 %3642
  store i32 %3644, ptr %2618, align 4, !tbaa !280
  store i32 0, ptr %2619, align 4, !tbaa !281
  br label %3645

3645:                                             ; preds = %3641, %3629
  %3646 = add nuw nsw i32 %3220, 1
  %3647 = icmp eq i32 %3646, %3205
  br i1 %3647, label %3648, label %3219, !llvm.loop !293

3648:                                             ; preds = %3645, %3217
  %3649 = add nuw nsw i32 %3218, 1
  %3650 = icmp eq i32 %3649, %3209
  br i1 %3650, label %3755, label %3217, !llvm.loop !294

3651:                                             ; preds = %3746, %3196
  %3652 = phi i32 [ %3194, %3196 ], [ %3747, %3746 ]
  %3653 = phi i32 [ %2997, %3196 ], [ %3748, %3746 ]
  %3654 = phi i32 [ %3197, %3196 ], [ %3749, %3746 ]
  %3655 = phi i32 [ 0, %3196 ], [ %3750, %3746 ]
  %3656 = icmp sgt i32 %3654, 0
  br i1 %3656, label %3657, label %3746

3657:                                             ; preds = %3651, %3739
  %3658 = phi i32 [ %3740, %3739 ], [ %3653, %3651 ]
  %3659 = phi i32 [ %3741, %3739 ], [ 0, %3651 ]
  %3660 = load i32, ptr %2603, align 4, !tbaa !267
  %3661 = icmp sgt i32 %3660, 0
  br i1 %3661, label %3662, label %3723

3662:                                             ; preds = %3657, %3716
  %3663 = phi i32 [ %3717, %3716 ], [ %3660, %3657 ]
  %3664 = phi i64 [ %3718, %3716 ], [ 0, %3657 ]
  %3665 = getelementptr inbounds nuw i32, ptr %2604, i64 %3664
  %3666 = load i32, ptr %3665, align 4, !tbaa !4
  %3667 = sext i32 %3666 to i64
  %3668 = getelementptr inbounds %struct.anon, ptr %2589, i64 %3667
  %3669 = getelementptr inbounds nuw i8, ptr %3668, i64 8
  %3670 = load i32, ptr %3669, align 8, !tbaa !82
  %3671 = icmp sgt i32 %3670, 0
  br i1 %3671, label %3672, label %3716

3672:                                             ; preds = %3662
  %3673 = getelementptr inbounds nuw i8, ptr %3668, i64 4
  %3674 = getelementptr inbounds nuw i8, ptr %3668, i64 80
  %3675 = getelementptr inbounds nuw i8, ptr %3668, i64 88
  %3676 = getelementptr inbounds nuw i8, ptr %3668, i64 16
  %3677 = load i32, ptr %3673, align 4, !tbaa !81
  br label %3678

3678:                                             ; preds = %3709, %3672
  %3679 = phi i32 [ %3670, %3672 ], [ %3710, %3709 ]
  %3680 = phi i32 [ %3677, %3672 ], [ %3711, %3709 ]
  %3681 = phi i32 [ 0, %3672 ], [ %3712, %3709 ]
  %3682 = icmp sgt i32 %3680, 0
  br i1 %3682, label %3687, label %3709

3683:                                             ; preds = %3687
  %3684 = add nuw nsw i32 %3689, 1
  %3685 = load i32, ptr %3673, align 4, !tbaa !81
  %3686 = icmp slt i32 %3684, %3685
  br i1 %3686, label %3687, label %3707, !llvm.loop !295

3687:                                             ; preds = %3678, %3683
  %3688 = phi i32 [ %3685, %3683 ], [ %3680, %3678 ]
  %3689 = phi i32 [ %3684, %3683 ], [ 0, %3678 ]
  %3690 = mul i32 %3688, %3659
  %3691 = add i32 %3690, %3689
  %3692 = load i32, ptr %3669, align 8, !tbaa !82
  %3693 = mul i32 %3692, %3655
  %3694 = add i32 %3693, %3681
  %3695 = load ptr, ptr %3674, align 8, !tbaa !97
  %3696 = load i32, ptr %3675, align 8, !tbaa !289
  %3697 = mul i32 %3694, %3696
  %3698 = add i32 %3691, %3697
  %3699 = shl i32 %3698, 6
  %3700 = sext i32 %3699 to i64
  %3701 = getelementptr inbounds i16, ptr %3695, i64 %3700
  %3702 = load i32, ptr %3676, align 8, !tbaa !269
  %3703 = sext i32 %3702 to i64
  %3704 = getelementptr inbounds %struct.stbi__huffman, ptr %2622, i64 %3703
  %3705 = call fastcc i32 @stbi__jpeg_decode_block_prog_dc(ptr noundef nonnull %2583, ptr noundef %3701, ptr noundef %3704, i32 noundef %3666) #17
  %3706 = icmp eq i32 %3705, 0
  br i1 %3706, label %4072, label %3683

3707:                                             ; preds = %3683
  %3708 = load i32, ptr %3669, align 8, !tbaa !82
  br label %3709

3709:                                             ; preds = %3707, %3678
  %3710 = phi i32 [ %3708, %3707 ], [ %3679, %3678 ]
  %3711 = phi i32 [ %3685, %3707 ], [ %3680, %3678 ]
  %3712 = add nuw nsw i32 %3681, 1
  %3713 = icmp slt i32 %3712, %3710
  br i1 %3713, label %3678, label %3714, !llvm.loop !296

3714:                                             ; preds = %3709
  %3715 = load i32, ptr %2603, align 4, !tbaa !267
  br label %3716

3716:                                             ; preds = %3714, %3662
  %3717 = phi i32 [ %3715, %3714 ], [ %3663, %3662 ]
  %3718 = add nuw nsw i64 %3664, 1
  %3719 = sext i32 %3717 to i64
  %3720 = icmp slt i64 %3718, %3719
  br i1 %3720, label %3662, label %3721, !llvm.loop !297

3721:                                             ; preds = %3716
  %3722 = load i32, ptr %2618, align 4, !tbaa !280
  br label %3723

3723:                                             ; preds = %3721, %3657
  %3724 = phi i32 [ %3722, %3721 ], [ %3658, %3657 ]
  %3725 = add i32 %3724, -1
  store i32 %3725, ptr %2618, align 4, !tbaa !280
  %3726 = icmp slt i32 %3725, 1
  br i1 %3726, label %3727, label %3739

3727:                                             ; preds = %3723
  %3728 = load i32, ptr %2610, align 4, !tbaa !276
  %3729 = icmp slt i32 %3728, 24
  br i1 %3729, label %3730, label %3731

3730:                                             ; preds = %3727
  call fastcc void @stbi__grow_buffer_unsafe(ptr noundef nonnull %2583) #17
  br label %3731

3731:                                             ; preds = %3730, %3727
  %3732 = load i8, ptr %2617, align 8, !tbaa !56
  %3733 = and i8 %3732, -8
  %3734 = icmp eq i8 %3733, -48
  br i1 %3734, label %3735, label %3757

3735:                                             ; preds = %3731
  store i32 0, ptr %2610, align 4, !tbaa !276
  store i32 0, ptr %2611, align 8, !tbaa !277
  store i32 0, ptr %2612, align 4, !tbaa !278
  store i32 0, ptr %2613, align 8, !tbaa !279
  store i32 0, ptr %2614, align 8, !tbaa !279
  store i32 0, ptr %2615, align 8, !tbaa !279
  store i32 0, ptr %2616, align 8, !tbaa !279
  store i8 -1, ptr %2617, align 8, !tbaa !56
  %3736 = load i32, ptr %2598, align 8, !tbaa !62
  %3737 = icmp eq i32 %3736, 0
  %3738 = select i1 %3737, i32 2147483647, i32 %3736
  store i32 %3738, ptr %2618, align 4, !tbaa !280
  store i32 0, ptr %2619, align 4, !tbaa !281
  br label %3739

3739:                                             ; preds = %3735, %3723
  %3740 = phi i32 [ %3725, %3723 ], [ %3738, %3735 ]
  %3741 = add nuw nsw i32 %3659, 1
  %3742 = load i32, ptr %2621, align 8, !tbaa !91
  %3743 = icmp slt i32 %3741, %3742
  br i1 %3743, label %3657, label %3744, !llvm.loop !298

3744:                                             ; preds = %3739
  %3745 = load i32, ptr %2620, align 4, !tbaa !92
  br label %3746

3746:                                             ; preds = %3744, %3651
  %3747 = phi i32 [ %3745, %3744 ], [ %3652, %3651 ]
  %3748 = phi i32 [ %3740, %3744 ], [ %3653, %3651 ]
  %3749 = phi i32 [ %3742, %3744 ], [ %3654, %3651 ]
  %3750 = add nuw nsw i32 %3655, 1
  %3751 = icmp slt i32 %3750, %3747
  br i1 %3751, label %3651, label %3755, !llvm.loop !299

3752:                                             ; preds = %3190, %3070
  %3753 = phi i32 [ %3191, %3190 ], [ %3071, %3070 ]
  %3754 = icmp eq i32 %3753, 0
  br i1 %3754, label %4072, label %3755

3755:                                             ; preds = %3746, %3648, %3752, %3198, %3193
  %3756 = load i8, ptr %2617, align 8, !tbaa !56
  br label %3757

3757:                                             ; preds = %3731, %3637, %3755
  %3758 = phi i8 [ %3756, %3755 ], [ %3638, %3637 ], [ %3732, %3731 ]
  %3759 = icmp eq i8 %3758, -1
  br i1 %3759, label %3760, label %3903

3760:                                             ; preds = %3828, %3757
  %3761 = load ptr, ptr %2583, align 8, !tbaa !21
  %3762 = getelementptr inbounds nuw i8, ptr %3761, i64 16
  %3763 = load ptr, ptr %3762, align 8, !tbaa !8
  %3764 = icmp eq ptr %3763, null
  br i1 %3764, label %3776, label %3765

3765:                                             ; preds = %3760
  %3766 = getelementptr inbounds nuw i8, ptr %3761, i64 32
  %3767 = load ptr, ptr %3766, align 8, !tbaa !58
  %3768 = getelementptr inbounds nuw i8, ptr %3761, i64 40
  %3769 = load ptr, ptr %3768, align 8, !tbaa !33
  %3770 = call i32 %3767(ptr noundef %3769) #16
  %3771 = icmp eq i32 %3770, 0
  br i1 %3771, label %3782, label %3772

3772:                                             ; preds = %3765
  %3773 = getelementptr inbounds nuw i8, ptr %3761, i64 48
  %3774 = load i32, ptr %3773, align 8, !tbaa !13
  %3775 = icmp eq i32 %3774, 0
  br i1 %3775, label %3901, label %3776

3776:                                             ; preds = %3772, %3760
  %3777 = getelementptr inbounds nuw i8, ptr %3761, i64 192
  %3778 = load ptr, ptr %3777, align 8, !tbaa !16
  %3779 = getelementptr inbounds nuw i8, ptr %3761, i64 200
  %3780 = load ptr, ptr %3779, align 8, !tbaa !18
  %3781 = icmp ult ptr %3778, %3780
  br i1 %3781, label %3782, label %3901

3782:                                             ; preds = %3776, %3765
  %3783 = load ptr, ptr %2583, align 8, !tbaa !21
  %3784 = getelementptr inbounds nuw i8, ptr %3783, i64 192
  %3785 = load ptr, ptr %3784, align 8, !tbaa !16
  %3786 = getelementptr inbounds nuw i8, ptr %3783, i64 200
  %3787 = load ptr, ptr %3786, align 8, !tbaa !18
  %3788 = icmp ult ptr %3785, %3787
  br i1 %3788, label %3789, label %3792

3789:                                             ; preds = %3782
  %3790 = getelementptr inbounds nuw i8, ptr %3785, i64 1
  store ptr %3790, ptr %3784, align 8, !tbaa !16
  %3791 = load i8, ptr %3785, align 1, !tbaa !35
  br label %3826

3792:                                             ; preds = %3782
  %3793 = getelementptr inbounds nuw i8, ptr %3783, i64 48
  %3794 = load i32, ptr %3793, align 8, !tbaa !13
  %3795 = icmp eq i32 %3794, 0
  br i1 %3795, label %3826, label %3796

3796:                                             ; preds = %3792
  %3797 = getelementptr inbounds nuw i8, ptr %3783, i64 16
  %3798 = load ptr, ptr %3797, align 8, !tbaa !8
  %3799 = getelementptr inbounds nuw i8, ptr %3783, i64 40
  %3800 = load ptr, ptr %3799, align 8, !tbaa !33
  %3801 = getelementptr inbounds nuw i8, ptr %3783, i64 56
  %3802 = getelementptr inbounds nuw i8, ptr %3783, i64 52
  %3803 = load i32, ptr %3802, align 4, !tbaa !34
  %3804 = call i32 %3798(ptr noundef %3800, ptr noundef nonnull %3801, i32 noundef %3803) #16
  %3805 = load ptr, ptr %3784, align 8, !tbaa !16
  %3806 = getelementptr inbounds nuw i8, ptr %3783, i64 208
  %3807 = load ptr, ptr %3806, align 8, !tbaa !15
  %3808 = ptrtoint ptr %3805 to i64
  %3809 = ptrtoint ptr %3807 to i64
  %3810 = sub i64 %3808, %3809
  %3811 = trunc i64 %3810 to i32
  %3812 = getelementptr inbounds nuw i8, ptr %3783, i64 184
  %3813 = load i32, ptr %3812, align 8, !tbaa !14
  %3814 = add i32 %3813, %3811
  store i32 %3814, ptr %3812, align 8, !tbaa !14
  %3815 = icmp eq i32 %3804, 0
  br i1 %3815, label %3816, label %3818

3816:                                             ; preds = %3796
  store i32 0, ptr %3793, align 8, !tbaa !13
  %3817 = getelementptr inbounds nuw i8, ptr %3783, i64 57
  store i8 0, ptr %3801, align 8, !tbaa !35
  br label %3822

3818:                                             ; preds = %3796
  %3819 = sext i32 %3804 to i64
  %3820 = getelementptr inbounds i8, ptr %3801, i64 %3819
  %3821 = load i8, ptr %3801, align 1, !tbaa !35
  br label %3822

3822:                                             ; preds = %3818, %3816
  %3823 = phi i8 [ 0, %3816 ], [ %3821, %3818 ]
  %3824 = phi ptr [ %3817, %3816 ], [ %3820, %3818 ]
  store ptr %3824, ptr %3786, align 8, !tbaa !18
  %3825 = getelementptr inbounds nuw i8, ptr %3783, i64 57
  store ptr %3825, ptr %3784, align 8, !tbaa !16
  br label %3826

3826:                                             ; preds = %3822, %3792, %3789
  %3827 = phi i8 [ 0, %3792 ], [ %3823, %3822 ], [ %3791, %3789 ]
  br label %3828

3828:                                             ; preds = %3826, %3897
  %3829 = phi i8 [ %3898, %3897 ], [ %3827, %3826 ]
  %3830 = icmp eq i8 %3829, -1
  br i1 %3830, label %3831, label %3760

3831:                                             ; preds = %3828
  %3832 = load ptr, ptr %2583, align 8, !tbaa !21
  %3833 = getelementptr inbounds nuw i8, ptr %3832, i64 16
  %3834 = load ptr, ptr %3833, align 8, !tbaa !8
  %3835 = icmp eq ptr %3834, null
  br i1 %3835, label %3847, label %3836

3836:                                             ; preds = %3831
  %3837 = getelementptr inbounds nuw i8, ptr %3832, i64 32
  %3838 = load ptr, ptr %3837, align 8, !tbaa !58
  %3839 = getelementptr inbounds nuw i8, ptr %3832, i64 40
  %3840 = load ptr, ptr %3839, align 8, !tbaa !33
  %3841 = call i32 %3838(ptr noundef %3840) #16
  %3842 = icmp eq i32 %3841, 0
  br i1 %3842, label %3853, label %3843

3843:                                             ; preds = %3836
  %3844 = getelementptr inbounds nuw i8, ptr %3832, i64 48
  %3845 = load i32, ptr %3844, align 8, !tbaa !13
  %3846 = icmp eq i32 %3845, 0
  br i1 %3846, label %3901, label %3847

3847:                                             ; preds = %3843, %3831
  %3848 = getelementptr inbounds nuw i8, ptr %3832, i64 192
  %3849 = load ptr, ptr %3848, align 8, !tbaa !16
  %3850 = getelementptr inbounds nuw i8, ptr %3832, i64 200
  %3851 = load ptr, ptr %3850, align 8, !tbaa !18
  %3852 = icmp ult ptr %3849, %3851
  br i1 %3852, label %3853, label %3901

3853:                                             ; preds = %3847, %3836
  %3854 = load ptr, ptr %2583, align 8, !tbaa !21
  %3855 = getelementptr inbounds nuw i8, ptr %3854, i64 192
  %3856 = load ptr, ptr %3855, align 8, !tbaa !16
  %3857 = getelementptr inbounds nuw i8, ptr %3854, i64 200
  %3858 = load ptr, ptr %3857, align 8, !tbaa !18
  %3859 = icmp ult ptr %3856, %3858
  br i1 %3859, label %3860, label %3863

3860:                                             ; preds = %3853
  %3861 = getelementptr inbounds nuw i8, ptr %3856, i64 1
  store ptr %3861, ptr %3855, align 8, !tbaa !16
  %3862 = load i8, ptr %3856, align 1, !tbaa !35
  br label %3897

3863:                                             ; preds = %3853
  %3864 = getelementptr inbounds nuw i8, ptr %3854, i64 48
  %3865 = load i32, ptr %3864, align 8, !tbaa !13
  %3866 = icmp eq i32 %3865, 0
  br i1 %3866, label %3897, label %3867

3867:                                             ; preds = %3863
  %3868 = getelementptr inbounds nuw i8, ptr %3854, i64 16
  %3869 = load ptr, ptr %3868, align 8, !tbaa !8
  %3870 = getelementptr inbounds nuw i8, ptr %3854, i64 40
  %3871 = load ptr, ptr %3870, align 8, !tbaa !33
  %3872 = getelementptr inbounds nuw i8, ptr %3854, i64 56
  %3873 = getelementptr inbounds nuw i8, ptr %3854, i64 52
  %3874 = load i32, ptr %3873, align 4, !tbaa !34
  %3875 = call i32 %3869(ptr noundef %3871, ptr noundef nonnull %3872, i32 noundef %3874) #16
  %3876 = load ptr, ptr %3855, align 8, !tbaa !16
  %3877 = getelementptr inbounds nuw i8, ptr %3854, i64 208
  %3878 = load ptr, ptr %3877, align 8, !tbaa !15
  %3879 = ptrtoint ptr %3876 to i64
  %3880 = ptrtoint ptr %3878 to i64
  %3881 = sub i64 %3879, %3880
  %3882 = trunc i64 %3881 to i32
  %3883 = getelementptr inbounds nuw i8, ptr %3854, i64 184
  %3884 = load i32, ptr %3883, align 8, !tbaa !14
  %3885 = add i32 %3884, %3882
  store i32 %3885, ptr %3883, align 8, !tbaa !14
  %3886 = icmp eq i32 %3875, 0
  br i1 %3886, label %3887, label %3889

3887:                                             ; preds = %3867
  store i32 0, ptr %3864, align 8, !tbaa !13
  %3888 = getelementptr inbounds nuw i8, ptr %3854, i64 57
  store i8 0, ptr %3872, align 8, !tbaa !35
  br label %3893

3889:                                             ; preds = %3867
  %3890 = sext i32 %3875 to i64
  %3891 = getelementptr inbounds i8, ptr %3872, i64 %3890
  %3892 = load i8, ptr %3872, align 1, !tbaa !35
  br label %3893

3893:                                             ; preds = %3889, %3887
  %3894 = phi i8 [ 0, %3887 ], [ %3892, %3889 ]
  %3895 = phi ptr [ %3888, %3887 ], [ %3891, %3889 ]
  store ptr %3895, ptr %3857, align 8, !tbaa !18
  %3896 = getelementptr inbounds nuw i8, ptr %3854, i64 57
  store ptr %3896, ptr %3855, align 8, !tbaa !16
  br label %3897

3897:                                             ; preds = %3893, %3863, %3860
  %3898 = phi i8 [ %3862, %3860 ], [ %3894, %3893 ], [ 0, %3863 ]
  %3899 = add i8 %3898, -1
  %3900 = icmp ult i8 %3899, -2
  br i1 %3900, label %3901, label %3828, !llvm.loop !300

3901:                                             ; preds = %3776, %3772, %3897, %3847, %3843
  %3902 = phi i8 [ %3898, %3897 ], [ -1, %3843 ], [ -1, %3847 ], [ -1, %3772 ], [ -1, %3776 ]
  store i8 %3902, ptr %2617, align 8, !tbaa !56
  br label %3903

3903:                                             ; preds = %3901, %3757
  %3904 = call fastcc zeroext i8 @stbi__get_marker(ptr noundef nonnull %2583) #17
  %3905 = and i8 %3904, -8
  %3906 = icmp eq i8 %3905, -48
  br i1 %3906, label %3922, label %3924

3907:                                             ; preds = %2626
  %3908 = load ptr, ptr %2583, align 8, !tbaa !21
  %3909 = call fastcc i32 @stbi__get16be(ptr noundef %3908) #17
  %3910 = load ptr, ptr %2583, align 8, !tbaa !21
  %3911 = call fastcc i32 @stbi__get16be(ptr noundef %3910) #17
  %3912 = icmp eq i32 %3909, 4
  br i1 %3912, label %3913, label %4072

3913:                                             ; preds = %3907
  %3914 = load ptr, ptr %2583, align 8, !tbaa !21
  %3915 = getelementptr inbounds nuw i8, ptr %3914, i64 4
  %3916 = load i32, ptr %3915, align 4, !tbaa !25
  %3917 = icmp eq i32 %3911, %3916
  br i1 %3917, label %3922, label %4072

3918:                                             ; preds = %2626
  %3919 = zext i8 %2627 to i32
  %3920 = call fastcc i32 @stbi__process_marker(ptr noundef nonnull %2583, i32 noundef %3919) #17
  %3921 = icmp eq i32 %3920, 0
  br i1 %3921, label %4101, label %3922

3922:                                             ; preds = %3918, %3913, %3903
  %3923 = call fastcc zeroext i8 @stbi__get_marker(ptr noundef nonnull %2583) #17
  br label %3924

3924:                                             ; preds = %3922, %3903
  %3925 = phi i8 [ %3904, %3903 ], [ %3923, %3922 ]
  br label %2626, !llvm.loop !301

3926:                                             ; preds = %2626
  %3927 = load i32, ptr %2609, align 8, !tbaa !60
  %3928 = icmp eq i32 %3927, 0
  %3929 = load ptr, ptr %2583, align 8, !tbaa !21
  br i1 %3928, label %4103, label %3930

3930:                                             ; preds = %3926
  %3931 = getelementptr inbounds nuw i8, ptr %3929, i64 8
  %3932 = load i32, ptr %3931, align 8, !tbaa !71
  %3933 = icmp sgt i32 %3932, 0
  br i1 %3933, label %3934, label %4103

3934:                                             ; preds = %3930
  %3935 = getelementptr i8, ptr @arena, i64 %2577
  %3936 = getelementptr i8, ptr %3935, i64 13592
  br label %3937

3937:                                             ; preds = %3934, %4065
  %3938 = phi ptr [ %4066, %4065 ], [ %3929, %3934 ]
  %3939 = phi i64 [ %4067, %4065 ], [ 0, %3934 ]
  %3940 = getelementptr inbounds nuw %struct.anon, ptr %2589, i64 %3939
  %3941 = getelementptr inbounds nuw i8, ptr %3940, i64 32
  %3942 = load i32, ptr %3941, align 8, !tbaa !94
  %3943 = add i32 %3942, 7
  %3944 = ashr i32 %3943, 3
  %3945 = icmp sgt i32 %3944, 0
  br i1 %3945, label %3946, label %4065

3946:                                             ; preds = %3937
  %3947 = getelementptr inbounds nuw i8, ptr %3940, i64 28
  %3948 = load i32, ptr %3947, align 4, !tbaa !93
  %3949 = add i32 %3948, 7
  %3950 = ashr i32 %3949, 3
  %3951 = icmp sgt i32 %3950, 0
  %3952 = getelementptr inbounds nuw i8, ptr %3940, i64 80
  %3953 = getelementptr inbounds nuw i8, ptr %3940, i64 88
  %3954 = getelementptr inbounds nuw i8, ptr %3940, i64 12
  %3955 = getelementptr inbounds nuw i8, ptr %3940, i64 48
  %3956 = getelementptr inbounds nuw i8, ptr %3940, i64 36
  %3957 = zext nneg i32 %3950 to i64
  br label %3958

3958:                                             ; preds = %4060, %3946
  %3959 = phi i32 [ 0, %3946 ], [ %4061, %4060 ]
  br i1 %3951, label %3960, label %4060

3960:                                             ; preds = %3958
  %3961 = shl i32 %3959, 3
  br label %3962

3962:                                             ; preds = %4049, %3960
  %3963 = phi i64 [ 0, %3960 ], [ %4058, %4049 ]
  %3964 = load ptr, ptr %3952, align 8, !tbaa !97
  %3965 = load i32, ptr %3953, align 8, !tbaa !289
  %3966 = mul i32 %3965, %3959
  %3967 = trunc nuw nsw i64 %3963 to i32
  %3968 = add i32 %3966, %3967
  %3969 = shl i32 %3968, 6
  %3970 = sext i32 %3969 to i64
  %3971 = getelementptr inbounds i16, ptr %3964, i64 %3970
  %3972 = load i32, ptr %3954, align 4, !tbaa !83
  %3973 = sext i32 %3972 to i64
  %3974 = getelementptr inbounds [64 x i16], ptr %2625, i64 %3973
  %3975 = getelementptr i8, ptr %3964, i64 128
  %3976 = shl nsw i64 %3970, 1
  %3977 = getelementptr i8, ptr %3975, i64 %3976
  %3978 = shl nsw i64 %3973, 7
  %3979 = getelementptr i8, ptr %3936, i64 %3978
  %3980 = icmp ult ptr %3971, %3979
  %3981 = icmp ult ptr %3974, %3977
  %3982 = and i1 %3980, %3981
  br i1 %3982, label %4022, label %3983

3983:                                             ; preds = %3962
  %3984 = getelementptr inbounds nuw i8, ptr %3974, i64 16
  %3985 = load <8 x i16>, ptr %3974, align 2, !tbaa !39, !alias.scope !302
  %3986 = load <8 x i16>, ptr %3984, align 2, !tbaa !39, !alias.scope !302
  %3987 = getelementptr inbounds nuw i8, ptr %3971, i64 16
  %3988 = load <8 x i16>, ptr %3971, align 2, !tbaa !39, !alias.scope !305, !noalias !302
  %3989 = load <8 x i16>, ptr %3987, align 2, !tbaa !39, !alias.scope !305, !noalias !302
  %3990 = mul <8 x i16> %3988, %3985
  %3991 = mul <8 x i16> %3989, %3986
  store <8 x i16> %3990, ptr %3971, align 2, !tbaa !39, !alias.scope !305, !noalias !302
  store <8 x i16> %3991, ptr %3987, align 2, !tbaa !39, !alias.scope !305, !noalias !302
  %3992 = getelementptr inbounds nuw i8, ptr %3974, i64 32
  %3993 = getelementptr inbounds nuw i8, ptr %3974, i64 48
  %3994 = load <8 x i16>, ptr %3992, align 2, !tbaa !39, !alias.scope !302
  %3995 = load <8 x i16>, ptr %3993, align 2, !tbaa !39, !alias.scope !302
  %3996 = getelementptr inbounds nuw i8, ptr %3971, i64 32
  %3997 = getelementptr inbounds nuw i8, ptr %3971, i64 48
  %3998 = load <8 x i16>, ptr %3996, align 2, !tbaa !39, !alias.scope !305, !noalias !302
  %3999 = load <8 x i16>, ptr %3997, align 2, !tbaa !39, !alias.scope !305, !noalias !302
  %4000 = mul <8 x i16> %3998, %3994
  %4001 = mul <8 x i16> %3999, %3995
  store <8 x i16> %4000, ptr %3996, align 2, !tbaa !39, !alias.scope !305, !noalias !302
  store <8 x i16> %4001, ptr %3997, align 2, !tbaa !39, !alias.scope !305, !noalias !302
  %4002 = getelementptr inbounds nuw i8, ptr %3974, i64 64
  %4003 = getelementptr inbounds nuw i8, ptr %3974, i64 80
  %4004 = load <8 x i16>, ptr %4002, align 2, !tbaa !39, !alias.scope !302
  %4005 = load <8 x i16>, ptr %4003, align 2, !tbaa !39, !alias.scope !302
  %4006 = getelementptr inbounds nuw i8, ptr %3971, i64 64
  %4007 = getelementptr inbounds nuw i8, ptr %3971, i64 80
  %4008 = load <8 x i16>, ptr %4006, align 2, !tbaa !39, !alias.scope !305, !noalias !302
  %4009 = load <8 x i16>, ptr %4007, align 2, !tbaa !39, !alias.scope !305, !noalias !302
  %4010 = mul <8 x i16> %4008, %4004
  %4011 = mul <8 x i16> %4009, %4005
  store <8 x i16> %4010, ptr %4006, align 2, !tbaa !39, !alias.scope !305, !noalias !302
  store <8 x i16> %4011, ptr %4007, align 2, !tbaa !39, !alias.scope !305, !noalias !302
  %4012 = getelementptr inbounds nuw i8, ptr %3974, i64 96
  %4013 = getelementptr inbounds nuw i8, ptr %3974, i64 112
  %4014 = load <8 x i16>, ptr %4012, align 2, !tbaa !39, !alias.scope !302
  %4015 = load <8 x i16>, ptr %4013, align 2, !tbaa !39, !alias.scope !302
  %4016 = getelementptr inbounds nuw i8, ptr %3971, i64 96
  %4017 = getelementptr inbounds nuw i8, ptr %3971, i64 112
  %4018 = load <8 x i16>, ptr %4016, align 2, !tbaa !39, !alias.scope !305, !noalias !302
  %4019 = load <8 x i16>, ptr %4017, align 2, !tbaa !39, !alias.scope !305, !noalias !302
  %4020 = mul <8 x i16> %4018, %4014
  %4021 = mul <8 x i16> %4019, %4015
  store <8 x i16> %4020, ptr %4016, align 2, !tbaa !39, !alias.scope !305, !noalias !302
  store <8 x i16> %4021, ptr %4017, align 2, !tbaa !39, !alias.scope !305, !noalias !302
  br label %4049

4022:                                             ; preds = %3962, %4022
  %4023 = phi i64 [ %4047, %4022 ], [ 0, %3962 ]
  %4024 = getelementptr inbounds nuw i16, ptr %3974, i64 %4023
  %4025 = load i16, ptr %4024, align 2, !tbaa !39
  %4026 = getelementptr inbounds nuw i16, ptr %3971, i64 %4023
  %4027 = load i16, ptr %4026, align 2, !tbaa !39
  %4028 = mul i16 %4027, %4025
  store i16 %4028, ptr %4026, align 2, !tbaa !39
  %4029 = or disjoint i64 %4023, 1
  %4030 = getelementptr inbounds nuw i16, ptr %3974, i64 %4029
  %4031 = load i16, ptr %4030, align 2, !tbaa !39
  %4032 = getelementptr inbounds nuw i16, ptr %3971, i64 %4029
  %4033 = load i16, ptr %4032, align 2, !tbaa !39
  %4034 = mul i16 %4033, %4031
  store i16 %4034, ptr %4032, align 2, !tbaa !39
  %4035 = or disjoint i64 %4023, 2
  %4036 = getelementptr inbounds nuw i16, ptr %3974, i64 %4035
  %4037 = load i16, ptr %4036, align 2, !tbaa !39
  %4038 = getelementptr inbounds nuw i16, ptr %3971, i64 %4035
  %4039 = load i16, ptr %4038, align 2, !tbaa !39
  %4040 = mul i16 %4039, %4037
  store i16 %4040, ptr %4038, align 2, !tbaa !39
  %4041 = or disjoint i64 %4023, 3
  %4042 = getelementptr inbounds nuw i16, ptr %3974, i64 %4041
  %4043 = load i16, ptr %4042, align 2, !tbaa !39
  %4044 = getelementptr inbounds nuw i16, ptr %3971, i64 %4041
  %4045 = load i16, ptr %4044, align 2, !tbaa !39
  %4046 = mul i16 %4045, %4043
  store i16 %4046, ptr %4044, align 2, !tbaa !39
  %4047 = add nuw nsw i64 %4023, 4
  %4048 = icmp eq i64 %4047, 64
  br i1 %4048, label %4049, label %4022, !llvm.loop !307

4049:                                             ; preds = %4022, %3983
  %4050 = load ptr, ptr %2585, align 8, !tbaa !264
  %4051 = load ptr, ptr %3955, align 8, !tbaa !72
  %4052 = load i32, ptr %3956, align 4, !tbaa !95
  %4053 = mul i32 %3961, %4052
  %4054 = sext i32 %4053 to i64
  %4055 = getelementptr inbounds i8, ptr %4051, i64 %4054
  %4056 = shl i64 %3963, 3
  %4057 = getelementptr inbounds i8, ptr %4055, i64 %4056
  call void %4050(ptr noundef %4057, i32 noundef %4052, ptr noundef nonnull %3971) #16
  %4058 = add nuw nsw i64 %3963, 1
  %4059 = icmp eq i64 %4058, %3957
  br i1 %4059, label %4060, label %3962, !llvm.loop !308

4060:                                             ; preds = %4049, %3958
  %4061 = add nuw nsw i32 %3959, 1
  %4062 = icmp eq i32 %4061, %3944
  br i1 %4062, label %4063, label %3958, !llvm.loop !309

4063:                                             ; preds = %4060
  %4064 = load ptr, ptr %2583, align 8, !tbaa !21
  br label %4065

4065:                                             ; preds = %4063, %3937
  %4066 = phi ptr [ %4064, %4063 ], [ %3938, %3937 ]
  %4067 = add nuw nsw i64 %3939, 1
  %4068 = getelementptr inbounds nuw i8, ptr %4066, i64 8
  %4069 = load i32, ptr %4068, align 8, !tbaa !71
  %4070 = sext i32 %4069 to i64
  %4071 = icmp slt i64 %4067, %4070
  br i1 %4071, label %3937, label %4103, !llvm.loop !310

4072:                                             ; preds = %3913, %3907, %3752, %2988, %2984, %2979, %2977, %2685, %2680, %2675, %2814, %2808, %2805, %2800, %3230, %3523, %3509, %3507, %3483, %3326, %3324, %3300, %3268, %3687, %3505, %3322, %2644, %2580
  %4073 = load ptr, ptr %2583, align 8, !tbaa !21
  %4074 = getelementptr inbounds nuw i8, ptr %4073, i64 8
  %4075 = load i32, ptr %4074, align 8, !tbaa !71
  %4076 = icmp sgt i32 %4075, 0
  br i1 %4076, label %4077, label %4513

4077:                                             ; preds = %4072
  %4078 = zext nneg i32 %4075 to i64
  br label %4079

4079:                                             ; preds = %4098, %4077
  %4080 = phi i64 [ 0, %4077 ], [ %4099, %4098 ]
  %4081 = getelementptr inbounds nuw %struct.anon, ptr %2589, i64 %4080
  %4082 = getelementptr inbounds nuw i8, ptr %4081, i64 56
  %4083 = load ptr, ptr %4082, align 8, !tbaa !99
  %4084 = icmp eq ptr %4083, null
  br i1 %4084, label %4087, label %4085

4085:                                             ; preds = %4079
  store ptr null, ptr %4082, align 8, !tbaa !99
  %4086 = getelementptr inbounds nuw i8, ptr %4081, i64 48
  store ptr null, ptr %4086, align 8, !tbaa !72
  br label %4087

4087:                                             ; preds = %4085, %4079
  %4088 = getelementptr inbounds nuw i8, ptr %4081, i64 64
  %4089 = load ptr, ptr %4088, align 8, !tbaa !98
  %4090 = icmp eq ptr %4089, null
  br i1 %4090, label %4093, label %4091

4091:                                             ; preds = %4087
  store ptr null, ptr %4088, align 8, !tbaa !98
  %4092 = getelementptr inbounds nuw i8, ptr %4081, i64 80
  store ptr null, ptr %4092, align 8, !tbaa !97
  br label %4093

4093:                                             ; preds = %4091, %4087
  %4094 = getelementptr inbounds nuw i8, ptr %4081, i64 72
  %4095 = load ptr, ptr %4094, align 8, !tbaa !75
  %4096 = icmp eq ptr %4095, null
  br i1 %4096, label %4098, label %4097

4097:                                             ; preds = %4093
  store ptr null, ptr %4094, align 8, !tbaa !75
  br label %4098

4098:                                             ; preds = %4097, %4093
  %4099 = add nuw nsw i64 %4080, 1
  %4100 = icmp eq i64 %4099, %4078
  br i1 %4100, label %4513, label %4079, !llvm.loop !107

4101:                                             ; preds = %3918
  %4102 = load ptr, ptr %2583, align 8, !tbaa !21
  br label %4103

4103:                                             ; preds = %4065, %4101, %3930, %3926
  %4104 = phi ptr [ %4102, %4101 ], [ %3929, %3926 ], [ %3929, %3930 ], [ %4066, %4065 ]
  %4105 = getelementptr inbounds nuw i8, ptr %4104, i64 8
  %4106 = load i32, ptr %4105, align 8, !tbaa !71
  %4107 = icmp eq i32 %4106, 3
  br i1 %4107, label %4108, label %4120

4108:                                             ; preds = %4103
  %4109 = getelementptr inbounds nuw i8, ptr %2581, i64 18528
  %4110 = load i32, ptr %4109, align 8, !tbaa !79
  %4111 = icmp eq i32 %4110, 3
  br i1 %4111, label %4122, label %4112

4112:                                             ; preds = %4108
  %4113 = getelementptr inbounds nuw i8, ptr %2581, i64 18524
  %4114 = load i32, ptr %4113, align 4, !tbaa !55
  %4115 = icmp eq i32 %4114, 0
  br i1 %4115, label %4116, label %4122

4116:                                             ; preds = %4112
  %4117 = getelementptr inbounds nuw i8, ptr %2581, i64 18520
  %4118 = load i32, ptr %4117, align 8, !tbaa !54
  %4119 = icmp eq i32 %4118, 0
  br label %4122

4120:                                             ; preds = %4103
  %4121 = icmp slt i32 %4106, 1
  br i1 %4121, label %4513, label %4122

4122:                                             ; preds = %4120, %4116, %4112, %4108
  %4123 = phi i1 [ false, %4120 ], [ %4119, %4116 ], [ false, %4112 ], [ true, %4108 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %8, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  %4124 = load i32, ptr %4104, align 8, !tbaa !24
  %4125 = load i64, ptr @arena_used, align 8
  %4126 = add i32 %4124, 3
  %4127 = zext i32 %4126 to i64
  %4128 = add nuw nsw i64 %4127, 15
  %4129 = and i64 %4128, 8589934576
  %4130 = add nuw nsw i64 %4129, 16
  %4131 = getelementptr inbounds nuw i8, ptr %2581, i64 18072
  %4132 = getelementptr inbounds nuw i8, ptr %2581, i64 18076
  %4133 = add i32 %4124, -1
  %4134 = zext nneg i32 %4106 to i64
  br label %4135

4135:                                             ; preds = %4201, %4122
  %4136 = phi i64 [ 0, %4122 ], [ %4203, %4201 ]
  %4137 = phi i64 [ %4125, %4122 ], [ %4168, %4201 ]
  %4138 = getelementptr inbounds nuw %struct.stbi__resample, ptr %9, i64 %4136
  %4139 = sub i64 100663296, %4137
  %4140 = icmp ugt i64 %4130, %4139
  br i1 %4140, label %4141, label %4166

4141:                                             ; preds = %4135
  %4142 = getelementptr inbounds nuw %struct.anon, ptr %2589, i64 %4136
  %4143 = getelementptr inbounds nuw i8, ptr %4142, i64 72
  store ptr null, ptr %4143, align 8, !tbaa !75
  br label %4144

4144:                                             ; preds = %4163, %4141
  %4145 = phi i64 [ 0, %4141 ], [ %4164, %4163 ]
  %4146 = getelementptr inbounds nuw %struct.anon, ptr %2589, i64 %4145
  %4147 = getelementptr inbounds nuw i8, ptr %4146, i64 56
  %4148 = load ptr, ptr %4147, align 8, !tbaa !99
  %4149 = icmp eq ptr %4148, null
  br i1 %4149, label %4152, label %4150

4150:                                             ; preds = %4144
  store ptr null, ptr %4147, align 8, !tbaa !99
  %4151 = getelementptr inbounds nuw i8, ptr %4146, i64 48
  store ptr null, ptr %4151, align 8, !tbaa !72
  br label %4152

4152:                                             ; preds = %4150, %4144
  %4153 = getelementptr inbounds nuw i8, ptr %4146, i64 64
  %4154 = load ptr, ptr %4153, align 8, !tbaa !98
  %4155 = icmp eq ptr %4154, null
  br i1 %4155, label %4158, label %4156

4156:                                             ; preds = %4152
  store ptr null, ptr %4153, align 8, !tbaa !98
  %4157 = getelementptr inbounds nuw i8, ptr %4146, i64 80
  store ptr null, ptr %4157, align 8, !tbaa !97
  br label %4158

4158:                                             ; preds = %4156, %4152
  %4159 = getelementptr inbounds nuw i8, ptr %4146, i64 72
  %4160 = load ptr, ptr %4159, align 8, !tbaa !75
  %4161 = icmp eq ptr %4160, null
  br i1 %4161, label %4163, label %4162

4162:                                             ; preds = %4158
  store ptr null, ptr %4159, align 8, !tbaa !75
  br label %4163

4163:                                             ; preds = %4162, %4158
  %4164 = add nuw nsw i64 %4145, 1
  %4165 = icmp eq i64 %4164, %4134
  br i1 %4165, label %4506, label %4144, !llvm.loop !107

4166:                                             ; preds = %4135
  %4167 = getelementptr inbounds nuw i8, ptr @arena, i64 %4137
  %4168 = add i64 %4137, %4130
  store i64 %4168, ptr @arena_used, align 8, !tbaa !19
  store i64 %4127, ptr %4167, align 8, !tbaa !19
  %4169 = getelementptr inbounds nuw i8, ptr %4167, i64 16
  %4170 = getelementptr inbounds nuw %struct.anon, ptr %2589, i64 %4136
  %4171 = getelementptr inbounds nuw i8, ptr %4170, i64 72
  store ptr %4169, ptr %4171, align 8, !tbaa !75
  %4172 = load i32, ptr %4131, align 8, !tbaa !87
  %4173 = getelementptr inbounds nuw i8, ptr %4170, i64 4
  %4174 = load i32, ptr %4173, align 4, !tbaa !81
  %4175 = sdiv i32 %4172, %4174
  %4176 = getelementptr inbounds nuw i8, ptr %4138, i64 24
  store i32 %4175, ptr %4176, align 8, !tbaa !311
  %4177 = load i32, ptr %4132, align 4, !tbaa !88
  %4178 = getelementptr inbounds nuw i8, ptr %4170, i64 8
  %4179 = load i32, ptr %4178, align 8, !tbaa !82
  %4180 = sdiv i32 %4177, %4179
  %4181 = getelementptr inbounds nuw i8, ptr %4138, i64 28
  store i32 %4180, ptr %4181, align 4, !tbaa !313
  %4182 = ashr i32 %4180, 1
  %4183 = getelementptr inbounds nuw i8, ptr %4138, i64 36
  store i32 %4182, ptr %4183, align 4, !tbaa !314
  %4184 = add i32 %4133, %4175
  %4185 = udiv i32 %4184, %4175
  %4186 = getelementptr inbounds nuw i8, ptr %4138, i64 32
  store i32 %4185, ptr %4186, align 16, !tbaa !315
  %4187 = getelementptr inbounds nuw i8, ptr %4138, i64 40
  store i32 0, ptr %4187, align 8, !tbaa !316
  %4188 = getelementptr inbounds nuw i8, ptr %4170, i64 48
  %4189 = load ptr, ptr %4188, align 8, !tbaa !72
  %4190 = getelementptr inbounds nuw i8, ptr %4138, i64 16
  store ptr %4189, ptr %4190, align 16, !tbaa !317
  %4191 = getelementptr inbounds nuw i8, ptr %4138, i64 8
  store ptr %4189, ptr %4191, align 8, !tbaa !318
  switch i32 %4175, label %4200 [
    i32 1, label %4192
    i32 2, label %4197
  ]

4192:                                             ; preds = %4166
  %4193 = icmp eq i32 %4180, 2
  %4194 = select i1 %4193, ptr @stbi__resample_row_v_2, ptr @stbi__resample_row_generic
  %4195 = icmp eq i32 %4180, 1
  %4196 = select i1 %4195, ptr @resample_row_1, ptr %4194
  br label %4201

4197:                                             ; preds = %4166
  switch i32 %4180, label %4200 [
    i32 1, label %4201
    i32 2, label %4198
  ]

4198:                                             ; preds = %4197
  %4199 = load ptr, ptr %2587, align 8, !tbaa !266
  br label %4201

4200:                                             ; preds = %4197, %4166
  br label %4201

4201:                                             ; preds = %4200, %4198, %4197, %4192
  %4202 = phi ptr [ %4196, %4192 ], [ %4199, %4198 ], [ @stbi__resample_row_generic, %4200 ], [ @stbi__resample_row_h_2, %4197 ]
  store ptr %4202, ptr %4138, align 16, !tbaa !319
  %4203 = add nuw nsw i64 %4136, 1
  %4204 = icmp eq i64 %4203, %4134
  br i1 %4204, label %4205, label %4135, !llvm.loop !320

4205:                                             ; preds = %4201
  %4206 = getelementptr inbounds nuw i8, ptr %4104, i64 4
  %4207 = load i32, ptr %4206, align 4, !tbaa !25
  %4208 = icmp ugt i32 %4124, 536870911
  br i1 %4208, label %4209, label %4210

4209:                                             ; preds = %4218, %4215, %4210, %4205
  br label %4236

4210:                                             ; preds = %4205
  %4211 = shl nuw nsw i32 %4124, 2
  %4212 = icmp sgt i32 %4207, -1
  br i1 %4212, label %4213, label %4209

4213:                                             ; preds = %4210
  %4214 = icmp eq i32 %4207, 0
  br i1 %4214, label %4218, label %4215

4215:                                             ; preds = %4213
  %4216 = udiv i32 2147483647, %4207
  %4217 = icmp samesign ugt i32 %4211, %4216
  br i1 %4217, label %4209, label %4218

4218:                                             ; preds = %4215, %4213
  %4219 = mul i32 %4207, %4211
  %4220 = or disjoint i32 %4219, 1
  %4221 = sext i32 %4220 to i64
  %4222 = add nsw i64 %4221, 15
  %4223 = and i64 %4222, -16
  %4224 = add nsw i64 %4223, 16
  %4225 = sub i64 100663296, %4168
  %4226 = icmp ugt i64 %4224, %4225
  br i1 %4226, label %4209, label %4227

4227:                                             ; preds = %4218
  %4228 = getelementptr inbounds nuw i8, ptr @arena, i64 %4168
  %4229 = add i64 %4224, %4168
  store i64 %4229, ptr @arena_used, align 8, !tbaa !19
  store i64 %4221, ptr %4228, align 8, !tbaa !19
  %4230 = getelementptr inbounds nuw i8, ptr %4228, i64 16
  br i1 %4214, label %4470, label %4231

4231:                                             ; preds = %4227
  %4232 = getelementptr inbounds nuw i8, ptr %2581, i64 18524
  %4233 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %4234 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %4235 = getelementptr inbounds nuw i8, ptr %8, i64 24
  br label %4258

4236:                                             ; preds = %4209, %4255
  %4237 = phi i64 [ %4256, %4255 ], [ 0, %4209 ]
  %4238 = getelementptr inbounds nuw %struct.anon, ptr %2589, i64 %4237
  %4239 = getelementptr inbounds nuw i8, ptr %4238, i64 56
  %4240 = load ptr, ptr %4239, align 8, !tbaa !99
  %4241 = icmp eq ptr %4240, null
  br i1 %4241, label %4244, label %4242

4242:                                             ; preds = %4236
  store ptr null, ptr %4239, align 8, !tbaa !99
  %4243 = getelementptr inbounds nuw i8, ptr %4238, i64 48
  store ptr null, ptr %4243, align 8, !tbaa !72
  br label %4244

4244:                                             ; preds = %4242, %4236
  %4245 = getelementptr inbounds nuw i8, ptr %4238, i64 64
  %4246 = load ptr, ptr %4245, align 8, !tbaa !98
  %4247 = icmp eq ptr %4246, null
  br i1 %4247, label %4250, label %4248

4248:                                             ; preds = %4244
  store ptr null, ptr %4245, align 8, !tbaa !98
  %4249 = getelementptr inbounds nuw i8, ptr %4238, i64 80
  store ptr null, ptr %4249, align 8, !tbaa !97
  br label %4250

4250:                                             ; preds = %4248, %4244
  %4251 = getelementptr inbounds nuw i8, ptr %4238, i64 72
  %4252 = load ptr, ptr %4251, align 8, !tbaa !75
  %4253 = icmp eq ptr %4252, null
  br i1 %4253, label %4255, label %4254

4254:                                             ; preds = %4250
  store ptr null, ptr %4251, align 8, !tbaa !75
  br label %4255

4255:                                             ; preds = %4254, %4250
  %4256 = add nuw nsw i64 %4237, 1
  %4257 = icmp eq i64 %4256, %4134
  br i1 %4257, label %4506, label %4236, !llvm.loop !107

4258:                                             ; preds = %4464, %4231
  %4259 = phi ptr [ %4104, %4231 ], [ %4465, %4464 ]
  %4260 = phi i32 [ 0, %4231 ], [ %4466, %4464 ]
  %4261 = load i32, ptr %4259, align 8, !tbaa !24
  br label %4262

4262:                                             ; preds = %4302, %4258
  %4263 = phi i64 [ 0, %4258 ], [ %4303, %4302 ]
  %4264 = getelementptr inbounds nuw %struct.stbi__resample, ptr %9, i64 %4263
  %4265 = getelementptr inbounds nuw i8, ptr %4264, i64 36
  %4266 = load i32, ptr %4265, align 4, !tbaa !314
  %4267 = getelementptr inbounds nuw i8, ptr %4264, i64 28
  %4268 = load i32, ptr %4267, align 4, !tbaa !313
  %4269 = ashr i32 %4268, 1
  %4270 = icmp slt i32 %4266, %4269
  %4271 = load ptr, ptr %4264, align 16, !tbaa !319
  %4272 = getelementptr inbounds nuw %struct.anon, ptr %2589, i64 %4263
  %4273 = getelementptr inbounds nuw i8, ptr %4272, i64 72
  %4274 = load ptr, ptr %4273, align 8, !tbaa !75
  %4275 = getelementptr inbounds nuw i8, ptr %4264, i64 16
  %4276 = getelementptr inbounds nuw i8, ptr %4264, i64 8
  %4277 = select i1 %4270, ptr %4276, ptr %4275
  %4278 = load ptr, ptr %4277, align 8, !tbaa !23
  %4279 = select i1 %4270, ptr %4275, ptr %4276
  %4280 = load ptr, ptr %4279, align 8, !tbaa !23
  %4281 = getelementptr inbounds nuw i8, ptr %4264, i64 32
  %4282 = load i32, ptr %4281, align 16, !tbaa !315
  %4283 = getelementptr inbounds nuw i8, ptr %4264, i64 24
  %4284 = load i32, ptr %4283, align 8, !tbaa !311
  %4285 = call ptr %4271(ptr noundef %4274, ptr noundef %4278, ptr noundef %4280, i32 noundef %4282, i32 noundef %4284) #16
  %4286 = getelementptr inbounds nuw ptr, ptr %8, i64 %4263
  store ptr %4285, ptr %4286, align 8, !tbaa !23
  %4287 = add i32 %4266, 1
  store i32 %4287, ptr %4265, align 4, !tbaa !314
  %4288 = icmp slt i32 %4287, %4268
  br i1 %4288, label %4302, label %4289

4289:                                             ; preds = %4262
  store i32 0, ptr %4265, align 4, !tbaa !314
  %4290 = load ptr, ptr %4275, align 16, !tbaa !317
  store ptr %4290, ptr %4276, align 8, !tbaa !318
  %4291 = getelementptr inbounds nuw i8, ptr %4264, i64 40
  %4292 = load i32, ptr %4291, align 8, !tbaa !316
  %4293 = add i32 %4292, 1
  store i32 %4293, ptr %4291, align 8, !tbaa !316
  %4294 = getelementptr inbounds nuw i8, ptr %4272, i64 32
  %4295 = load i32, ptr %4294, align 8, !tbaa !94
  %4296 = icmp slt i32 %4293, %4295
  br i1 %4296, label %4297, label %4302

4297:                                             ; preds = %4289
  %4298 = getelementptr inbounds nuw i8, ptr %4272, i64 36
  %4299 = load i32, ptr %4298, align 4, !tbaa !95
  %4300 = sext i32 %4299 to i64
  %4301 = getelementptr inbounds i8, ptr %4290, i64 %4300
  store ptr %4301, ptr %4275, align 16, !tbaa !317
  br label %4302

4302:                                             ; preds = %4297, %4289, %4262
  %4303 = add nuw nsw i64 %4263, 1
  %4304 = icmp eq i64 %4303, %4134
  br i1 %4304, label %4305, label %4262, !llvm.loop !321

4305:                                             ; preds = %4302
  %4306 = shl i32 %4260, 2
  %4307 = mul i32 %4306, %4261
  %4308 = zext i32 %4307 to i64
  %4309 = getelementptr inbounds nuw i8, ptr %4230, i64 %4308
  %4310 = load ptr, ptr %8, align 16, !tbaa !23
  %4311 = load ptr, ptr %2583, align 8, !tbaa !21
  %4312 = getelementptr inbounds nuw i8, ptr %4311, i64 8
  %4313 = load i32, ptr %4312, align 8, !tbaa !71
  switch i32 %4313, label %4314 [
    i32 3, label %4317
    i32 4, label %4342
  ]

4314:                                             ; preds = %4305
  %4315 = load i32, ptr %4311, align 8, !tbaa !24
  %4316 = icmp eq i32 %4315, 0
  br i1 %4316, label %4464, label %4444

4317:                                             ; preds = %4305
  br i1 %4123, label %4318, label %4458

4318:                                             ; preds = %4317
  %4319 = load i32, ptr %4311, align 8, !tbaa !24
  %4320 = icmp eq i32 %4319, 0
  br i1 %4320, label %4464, label %4321

4321:                                             ; preds = %4318
  %4322 = load ptr, ptr %4233, align 8, !tbaa !23
  %4323 = load ptr, ptr %4234, align 16, !tbaa !23
  br label %4324

4324:                                             ; preds = %4324, %4321
  %4325 = phi i64 [ 0, %4321 ], [ %4337, %4324 ]
  %4326 = phi ptr [ %4309, %4321 ], [ %4336, %4324 ]
  %4327 = getelementptr inbounds nuw i8, ptr %4310, i64 %4325
  %4328 = load i8, ptr %4327, align 1, !tbaa !35
  store i8 %4328, ptr %4326, align 1, !tbaa !35
  %4329 = getelementptr inbounds nuw i8, ptr %4322, i64 %4325
  %4330 = load i8, ptr %4329, align 1, !tbaa !35
  %4331 = getelementptr inbounds nuw i8, ptr %4326, i64 1
  store i8 %4330, ptr %4331, align 1, !tbaa !35
  %4332 = getelementptr inbounds nuw i8, ptr %4323, i64 %4325
  %4333 = load i8, ptr %4332, align 1, !tbaa !35
  %4334 = getelementptr inbounds nuw i8, ptr %4326, i64 2
  store i8 %4333, ptr %4334, align 1, !tbaa !35
  %4335 = getelementptr inbounds nuw i8, ptr %4326, i64 3
  store i8 -1, ptr %4335, align 1, !tbaa !35
  %4336 = getelementptr inbounds nuw i8, ptr %4326, i64 4
  %4337 = add nuw nsw i64 %4325, 1
  %4338 = load ptr, ptr %2583, align 8, !tbaa !21
  %4339 = load i32, ptr %4338, align 8, !tbaa !24
  %4340 = zext i32 %4339 to i64
  %4341 = icmp samesign ult i64 %4337, %4340
  br i1 %4341, label %4324, label %4464, !llvm.loop !322

4342:                                             ; preds = %4305
  %4343 = load i32, ptr %4232, align 4, !tbaa !55
  switch i32 %4343, label %4458 [
    i32 0, label %4344
    i32 2, label %4393
  ]

4344:                                             ; preds = %4342
  %4345 = load i32, ptr %4311, align 8, !tbaa !24
  %4346 = icmp eq i32 %4345, 0
  br i1 %4346, label %4464, label %4347

4347:                                             ; preds = %4344
  %4348 = load ptr, ptr %4235, align 8, !tbaa !23
  %4349 = load ptr, ptr %4233, align 8, !tbaa !23
  %4350 = load ptr, ptr %4234, align 16, !tbaa !23
  br label %4351

4351:                                             ; preds = %4351, %4347
  %4352 = phi i64 [ 0, %4347 ], [ %4388, %4351 ]
  %4353 = phi ptr [ %4309, %4347 ], [ %4387, %4351 ]
  %4354 = getelementptr inbounds nuw i8, ptr %4348, i64 %4352
  %4355 = load i8, ptr %4354, align 1, !tbaa !35
  %4356 = getelementptr inbounds nuw i8, ptr %4310, i64 %4352
  %4357 = load i8, ptr %4356, align 1, !tbaa !35
  %4358 = zext i8 %4357 to i32
  %4359 = zext i8 %4355 to i32
  %4360 = mul nuw nsw i32 %4358, %4359
  %4361 = add nuw nsw i32 %4360, 128
  %4362 = lshr i32 %4361, 8
  %4363 = add nuw nsw i32 %4362, %4361
  %4364 = lshr i32 %4363, 8
  %4365 = trunc nuw i32 %4364 to i8
  store i8 %4365, ptr %4353, align 1, !tbaa !35
  %4366 = getelementptr inbounds nuw i8, ptr %4349, i64 %4352
  %4367 = load i8, ptr %4366, align 1, !tbaa !35
  %4368 = zext i8 %4367 to i32
  %4369 = mul nuw nsw i32 %4368, %4359
  %4370 = add nuw nsw i32 %4369, 128
  %4371 = lshr i32 %4370, 8
  %4372 = add nuw nsw i32 %4371, %4370
  %4373 = lshr i32 %4372, 8
  %4374 = trunc nuw i32 %4373 to i8
  %4375 = getelementptr inbounds nuw i8, ptr %4353, i64 1
  store i8 %4374, ptr %4375, align 1, !tbaa !35
  %4376 = getelementptr inbounds nuw i8, ptr %4350, i64 %4352
  %4377 = load i8, ptr %4376, align 1, !tbaa !35
  %4378 = zext i8 %4377 to i32
  %4379 = mul nuw nsw i32 %4378, %4359
  %4380 = add nuw nsw i32 %4379, 128
  %4381 = lshr i32 %4380, 8
  %4382 = add nuw nsw i32 %4381, %4380
  %4383 = lshr i32 %4382, 8
  %4384 = trunc nuw i32 %4383 to i8
  %4385 = getelementptr inbounds nuw i8, ptr %4353, i64 2
  store i8 %4384, ptr %4385, align 1, !tbaa !35
  %4386 = getelementptr inbounds nuw i8, ptr %4353, i64 3
  store i8 -1, ptr %4386, align 1, !tbaa !35
  %4387 = getelementptr inbounds nuw i8, ptr %4353, i64 4
  %4388 = add nuw nsw i64 %4352, 1
  %4389 = load ptr, ptr %2583, align 8, !tbaa !21
  %4390 = load i32, ptr %4389, align 8, !tbaa !24
  %4391 = zext i32 %4390 to i64
  %4392 = icmp samesign ult i64 %4388, %4391
  br i1 %4392, label %4351, label %4464, !llvm.loop !323

4393:                                             ; preds = %4342
  %4394 = load ptr, ptr %2586, align 8, !tbaa !265
  %4395 = load ptr, ptr %4233, align 8, !tbaa !23
  %4396 = load ptr, ptr %4234, align 16, !tbaa !23
  %4397 = load i32, ptr %4311, align 8, !tbaa !24
  call void %4394(ptr noundef nonnull %4309, ptr noundef %4310, ptr noundef %4395, ptr noundef %4396, i32 noundef %4397, i32 noundef 4) #16
  %4398 = load ptr, ptr %2583, align 8, !tbaa !21
  %4399 = load i32, ptr %4398, align 8, !tbaa !24
  %4400 = icmp eq i32 %4399, 0
  br i1 %4400, label %4464, label %4401

4401:                                             ; preds = %4393
  %4402 = load ptr, ptr %4235, align 8, !tbaa !23
  br label %4403

4403:                                             ; preds = %4403, %4401
  %4404 = phi i64 [ 0, %4401 ], [ %4439, %4403 ]
  %4405 = phi ptr [ %4309, %4401 ], [ %4438, %4403 ]
  %4406 = getelementptr inbounds nuw i8, ptr %4402, i64 %4404
  %4407 = load i8, ptr %4406, align 1, !tbaa !35
  %4408 = load i8, ptr %4405, align 1, !tbaa !35
  %4409 = xor i8 %4408, -1
  %4410 = zext i8 %4409 to i32
  %4411 = zext i8 %4407 to i32
  %4412 = mul nuw nsw i32 %4410, %4411
  %4413 = add nuw nsw i32 %4412, 128
  %4414 = lshr i32 %4413, 8
  %4415 = add nuw nsw i32 %4414, %4413
  %4416 = lshr i32 %4415, 8
  %4417 = trunc nuw i32 %4416 to i8
  store i8 %4417, ptr %4405, align 1, !tbaa !35
  %4418 = getelementptr inbounds nuw i8, ptr %4405, i64 1
  %4419 = load i8, ptr %4418, align 1, !tbaa !35
  %4420 = xor i8 %4419, -1
  %4421 = zext i8 %4420 to i32
  %4422 = mul nuw nsw i32 %4421, %4411
  %4423 = add nuw nsw i32 %4422, 128
  %4424 = lshr i32 %4423, 8
  %4425 = add nuw nsw i32 %4424, %4423
  %4426 = lshr i32 %4425, 8
  %4427 = trunc nuw i32 %4426 to i8
  store i8 %4427, ptr %4418, align 1, !tbaa !35
  %4428 = getelementptr inbounds nuw i8, ptr %4405, i64 2
  %4429 = load i8, ptr %4428, align 1, !tbaa !35
  %4430 = xor i8 %4429, -1
  %4431 = zext i8 %4430 to i32
  %4432 = mul nuw nsw i32 %4431, %4411
  %4433 = add nuw nsw i32 %4432, 128
  %4434 = lshr i32 %4433, 8
  %4435 = add nuw nsw i32 %4434, %4433
  %4436 = lshr i32 %4435, 8
  %4437 = trunc nuw i32 %4436 to i8
  store i8 %4437, ptr %4428, align 1, !tbaa !35
  %4438 = getelementptr inbounds nuw i8, ptr %4405, i64 4
  %4439 = add nuw nsw i64 %4404, 1
  %4440 = load ptr, ptr %2583, align 8, !tbaa !21
  %4441 = load i32, ptr %4440, align 8, !tbaa !24
  %4442 = zext i32 %4441 to i64
  %4443 = icmp samesign ult i64 %4439, %4442
  br i1 %4443, label %4403, label %4464, !llvm.loop !324

4444:                                             ; preds = %4314, %4444
  %4445 = phi i64 [ %4453, %4444 ], [ 0, %4314 ]
  %4446 = phi ptr [ %4452, %4444 ], [ %4309, %4314 ]
  %4447 = getelementptr inbounds nuw i8, ptr %4310, i64 %4445
  %4448 = load i8, ptr %4447, align 1, !tbaa !35
  %4449 = getelementptr inbounds nuw i8, ptr %4446, i64 2
  store i8 %4448, ptr %4449, align 1, !tbaa !35
  %4450 = getelementptr inbounds nuw i8, ptr %4446, i64 1
  store i8 %4448, ptr %4450, align 1, !tbaa !35
  store i8 %4448, ptr %4446, align 1, !tbaa !35
  %4451 = getelementptr inbounds nuw i8, ptr %4446, i64 3
  store i8 -1, ptr %4451, align 1, !tbaa !35
  %4452 = getelementptr inbounds nuw i8, ptr %4446, i64 4
  %4453 = add nuw nsw i64 %4445, 1
  %4454 = load ptr, ptr %2583, align 8, !tbaa !21
  %4455 = load i32, ptr %4454, align 8, !tbaa !24
  %4456 = zext i32 %4455 to i64
  %4457 = icmp samesign ult i64 %4453, %4456
  br i1 %4457, label %4444, label %4464, !llvm.loop !325

4458:                                             ; preds = %4342, %4317
  %4459 = load ptr, ptr %2586, align 8, !tbaa !265
  %4460 = load ptr, ptr %4233, align 8, !tbaa !23
  %4461 = load ptr, ptr %4234, align 16, !tbaa !23
  %4462 = load i32, ptr %4311, align 8, !tbaa !24
  call void %4459(ptr noundef nonnull %4309, ptr noundef %4310, ptr noundef %4460, ptr noundef %4461, i32 noundef %4462, i32 noundef 4) #16
  %4463 = load ptr, ptr %2583, align 8, !tbaa !21
  br label %4464

4464:                                             ; preds = %4403, %4351, %4324, %4444, %4458, %4393, %4344, %4318, %4314
  %4465 = phi ptr [ %4389, %4351 ], [ %4338, %4324 ], [ %4454, %4444 ], [ %4311, %4314 ], [ %4463, %4458 ], [ %4398, %4393 ], [ %4311, %4344 ], [ %4311, %4318 ], [ %4440, %4403 ]
  %4466 = add nuw i32 %4260, 1
  %4467 = getelementptr inbounds nuw i8, ptr %4465, i64 4
  %4468 = load i32, ptr %4467, align 4, !tbaa !25
  %4469 = icmp ult i32 %4466, %4468
  br i1 %4469, label %4258, label %4470, !llvm.loop !326

4470:                                             ; preds = %4464, %4227
  %4471 = phi ptr [ %4104, %4227 ], [ %4465, %4464 ]
  %4472 = getelementptr inbounds nuw i8, ptr %4471, i64 4
  %4473 = getelementptr inbounds nuw i8, ptr %4471, i64 8
  %4474 = load i32, ptr %4473, align 8, !tbaa !71
  %4475 = icmp sgt i32 %4474, 0
  br i1 %4475, label %4476, label %4500

4476:                                             ; preds = %4470
  %4477 = zext nneg i32 %4474 to i64
  br label %4478

4478:                                             ; preds = %4497, %4476
  %4479 = phi i64 [ 0, %4476 ], [ %4498, %4497 ]
  %4480 = getelementptr inbounds nuw %struct.anon, ptr %2589, i64 %4479
  %4481 = getelementptr inbounds nuw i8, ptr %4480, i64 56
  %4482 = load ptr, ptr %4481, align 8, !tbaa !99
  %4483 = icmp eq ptr %4482, null
  br i1 %4483, label %4486, label %4484

4484:                                             ; preds = %4478
  store ptr null, ptr %4481, align 8, !tbaa !99
  %4485 = getelementptr inbounds nuw i8, ptr %4480, i64 48
  store ptr null, ptr %4485, align 8, !tbaa !72
  br label %4486

4486:                                             ; preds = %4484, %4478
  %4487 = getelementptr inbounds nuw i8, ptr %4480, i64 64
  %4488 = load ptr, ptr %4487, align 8, !tbaa !98
  %4489 = icmp eq ptr %4488, null
  br i1 %4489, label %4492, label %4490

4490:                                             ; preds = %4486
  store ptr null, ptr %4487, align 8, !tbaa !98
  %4491 = getelementptr inbounds nuw i8, ptr %4480, i64 80
  store ptr null, ptr %4491, align 8, !tbaa !97
  br label %4492

4492:                                             ; preds = %4490, %4486
  %4493 = getelementptr inbounds nuw i8, ptr %4480, i64 72
  %4494 = load ptr, ptr %4493, align 8, !tbaa !75
  %4495 = icmp eq ptr %4494, null
  br i1 %4495, label %4497, label %4496

4496:                                             ; preds = %4492
  store ptr null, ptr %4493, align 8, !tbaa !75
  br label %4497

4497:                                             ; preds = %4496, %4492
  %4498 = add nuw nsw i64 %4479, 1
  %4499 = icmp eq i64 %4498, %4477
  br i1 %4499, label %4500, label %4478, !llvm.loop !107

4500:                                             ; preds = %4497, %4470
  %4501 = load i32, ptr %4471, align 8, !tbaa !24
  store i32 %4501, ptr %1, align 4, !tbaa !4
  %4502 = load i32, ptr %4472, align 4, !tbaa !25
  store i32 %4502, ptr %2, align 4, !tbaa !4
  %4503 = load i32, ptr %4473, align 8, !tbaa !71
  %4504 = icmp slt i32 %4503, 3
  %4505 = select i1 %4504, i32 1, i32 3
  store i32 %4505, ptr %3, align 4, !tbaa !4
  br label %4506

4506:                                             ; preds = %4255, %4163, %4500
  %4507 = phi ptr [ null, %4163 ], [ %4230, %4500 ], [ null, %4255 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  br label %4513

4508:                                             ; preds = %2558, %2562
  %4509 = tail call fastcc i32 @stbi__tga_test(ptr noundef %0) #17
  %4510 = icmp eq i32 %4509, 0
  br i1 %4510, label %4513, label %4511

4511:                                             ; preds = %4508
  %4512 = tail call fastcc ptr @stbi__tga_load(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #17
  br label %4513

4513:                                             ; preds = %4098, %4506, %4120, %4072, %2576, %4508, %4511, %2556, %1455, %286
  %4514 = phi ptr [ %287, %286 ], [ %1456, %1455 ], [ %2557, %2556 ], [ null, %4508 ], [ %4512, %4511 ], [ null, %2576 ], [ %4507, %4506 ], [ null, %4120 ], [ null, %4072 ], [ null, %4098 ]
  ret ptr %4514
}

; Function Attrs: nounwind
define internal fastcc range(i32 0, 2) i32 @stbi__tga_test(ptr noundef nonnull %0) unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %3 = load ptr, ptr %2, align 8, !tbaa !16
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %5 = load ptr, ptr %4, align 8, !tbaa !18
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 1
  br label %41

9:                                                ; preds = %1
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %11 = load i32, ptr %10, align 8, !tbaa !13
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %44, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %15 = load ptr, ptr %14, align 8, !tbaa !8
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %17 = load ptr, ptr %16, align 8, !tbaa !33
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %20 = load i32, ptr %19, align 4, !tbaa !34
  %21 = tail call i32 %15(ptr noundef %17, ptr noundef nonnull %18, i32 noundef %20) #16
  %22 = load ptr, ptr %2, align 8, !tbaa !16
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %24 = load ptr, ptr %23, align 8, !tbaa !15
  %25 = ptrtoint ptr %22 to i64
  %26 = ptrtoint ptr %24 to i64
  %27 = sub i64 %25, %26
  %28 = trunc i64 %27 to i32
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %30 = load i32, ptr %29, align 8, !tbaa !14
  %31 = add i32 %30, %28
  store i32 %31, ptr %29, align 8, !tbaa !14
  %32 = icmp eq i32 %21, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %13
  store i32 0, ptr %10, align 8, !tbaa !13
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %18, align 8, !tbaa !35
  br label %38

35:                                               ; preds = %13
  %36 = sext i32 %21 to i64
  %37 = getelementptr inbounds i8, ptr %18, i64 %36
  br label %38

38:                                               ; preds = %35, %33
  %39 = phi ptr [ %34, %33 ], [ %37, %35 ]
  store ptr %39, ptr %4, align 8, !tbaa !18
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 57
  br label %41

41:                                               ; preds = %38, %7
  %42 = phi ptr [ %8, %7 ], [ %40, %38 ]
  %43 = phi ptr [ %5, %7 ], [ %39, %38 ]
  store ptr %42, ptr %2, align 8, !tbaa !16
  br label %44

44:                                               ; preds = %41, %9
  %45 = phi ptr [ %5, %9 ], [ %43, %41 ]
  %46 = phi ptr [ %3, %9 ], [ %42, %41 ]
  %47 = icmp ult ptr %46, %45
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = getelementptr inbounds nuw i8, ptr %46, i64 1
  store ptr %49, ptr %2, align 8, !tbaa !16
  %50 = load i8, ptr %46, align 1, !tbaa !35
  br label %85

51:                                               ; preds = %44
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %53 = load i32, ptr %52, align 8, !tbaa !13
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %90, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %57 = load ptr, ptr %56, align 8, !tbaa !8
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %59 = load ptr, ptr %58, align 8, !tbaa !33
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %62 = load i32, ptr %61, align 4, !tbaa !34
  %63 = tail call i32 %57(ptr noundef %59, ptr noundef nonnull %60, i32 noundef %62) #16
  %64 = load ptr, ptr %2, align 8, !tbaa !16
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %66 = load ptr, ptr %65, align 8, !tbaa !15
  %67 = ptrtoint ptr %64 to i64
  %68 = ptrtoint ptr %66 to i64
  %69 = sub i64 %67, %68
  %70 = trunc i64 %69 to i32
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %72 = load i32, ptr %71, align 8, !tbaa !14
  %73 = add i32 %72, %70
  store i32 %73, ptr %71, align 8, !tbaa !14
  %74 = icmp eq i32 %63, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %55
  store i32 0, ptr %52, align 8, !tbaa !13
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %60, align 8, !tbaa !35
  br label %81

77:                                               ; preds = %55
  %78 = sext i32 %63 to i64
  %79 = getelementptr inbounds i8, ptr %60, i64 %78
  %80 = load i8, ptr %60, align 1, !tbaa !35
  br label %81

81:                                               ; preds = %77, %75
  %82 = phi i8 [ 0, %75 ], [ %80, %77 ]
  %83 = phi ptr [ %76, %75 ], [ %79, %77 ]
  store ptr %83, ptr %4, align 8, !tbaa !18
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 57
  store ptr %84, ptr %2, align 8, !tbaa !16
  br label %85

85:                                               ; preds = %48, %81
  %86 = phi ptr [ %45, %48 ], [ %83, %81 ]
  %87 = phi ptr [ %49, %48 ], [ %84, %81 ]
  %88 = phi i8 [ %50, %48 ], [ %82, %81 ]
  %89 = icmp ugt i8 %88, 1
  br i1 %89, label %297, label %90

90:                                               ; preds = %51, %85
  %91 = phi ptr [ %86, %85 ], [ %45, %51 ]
  %92 = phi ptr [ %87, %85 ], [ %46, %51 ]
  %93 = phi i8 [ %88, %85 ], [ 0, %51 ]
  %94 = icmp ult ptr %92, %91
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = getelementptr inbounds nuw i8, ptr %92, i64 1
  store ptr %96, ptr %2, align 8, !tbaa !16
  %97 = load i8, ptr %92, align 1, !tbaa !35
  br label %132

98:                                               ; preds = %90
  %99 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %100 = load i32, ptr %99, align 8, !tbaa !13
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %132, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %104 = load ptr, ptr %103, align 8, !tbaa !8
  %105 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %106 = load ptr, ptr %105, align 8, !tbaa !33
  %107 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %108 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %109 = load i32, ptr %108, align 4, !tbaa !34
  %110 = tail call i32 %104(ptr noundef %106, ptr noundef nonnull %107, i32 noundef %109) #16
  %111 = load ptr, ptr %2, align 8, !tbaa !16
  %112 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %113 = load ptr, ptr %112, align 8, !tbaa !15
  %114 = ptrtoint ptr %111 to i64
  %115 = ptrtoint ptr %113 to i64
  %116 = sub i64 %114, %115
  %117 = trunc i64 %116 to i32
  %118 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %119 = load i32, ptr %118, align 8, !tbaa !14
  %120 = add i32 %119, %117
  store i32 %120, ptr %118, align 8, !tbaa !14
  %121 = icmp eq i32 %110, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %102
  store i32 0, ptr %99, align 8, !tbaa !13
  %123 = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %107, align 8, !tbaa !35
  br label %128

124:                                              ; preds = %102
  %125 = sext i32 %110 to i64
  %126 = getelementptr inbounds i8, ptr %107, i64 %125
  %127 = load i8, ptr %107, align 1, !tbaa !35
  br label %128

128:                                              ; preds = %124, %122
  %129 = phi i8 [ 0, %122 ], [ %127, %124 ]
  %130 = phi ptr [ %123, %122 ], [ %126, %124 ]
  store ptr %130, ptr %4, align 8, !tbaa !18
  %131 = getelementptr inbounds nuw i8, ptr %0, i64 57
  br label %132

132:                                              ; preds = %95, %98, %128
  %133 = phi ptr [ %96, %95 ], [ %131, %128 ], [ %92, %98 ]
  %134 = phi ptr [ %91, %95 ], [ %130, %128 ], [ %91, %98 ]
  %135 = phi i8 [ %97, %95 ], [ %129, %128 ], [ 0, %98 ]
  %136 = icmp eq i8 %93, 0
  br i1 %136, label %221, label %137

137:                                              ; preds = %132
  %138 = and i8 %135, -9
  %139 = icmp eq i8 %138, 1
  br i1 %139, label %140, label %297

140:                                              ; preds = %137
  %141 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %142 = load ptr, ptr %141, align 8, !tbaa !8
  %143 = icmp eq ptr %142, null
  br i1 %143, label %158, label %144

144:                                              ; preds = %140
  %145 = ptrtoint ptr %134 to i64
  %146 = ptrtoint ptr %133 to i64
  %147 = sub i64 %145, %146
  %148 = trunc i64 %147 to i32
  %149 = icmp slt i32 %148, 4
  br i1 %149, label %150, label %158

150:                                              ; preds = %144
  store ptr %134, ptr %2, align 8, !tbaa !16
  %151 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %152 = load ptr, ptr %151, align 8, !tbaa !36
  %153 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %154 = load ptr, ptr %153, align 8, !tbaa !33
  %155 = sub i32 4, %148
  tail call void %152(ptr noundef %154, i32 noundef %155) #16
  %156 = load ptr, ptr %2, align 8, !tbaa !16
  %157 = load ptr, ptr %4, align 8, !tbaa !18
  br label %160

158:                                              ; preds = %140, %144
  %159 = getelementptr inbounds nuw i8, ptr %133, i64 4
  store ptr %159, ptr %2, align 8, !tbaa !16
  br label %160

160:                                              ; preds = %150, %158
  %161 = phi ptr [ %157, %150 ], [ %134, %158 ]
  %162 = phi ptr [ %156, %150 ], [ %159, %158 ]
  %163 = icmp ult ptr %162, %161
  br i1 %163, label %164, label %167

164:                                              ; preds = %160
  %165 = getelementptr inbounds nuw i8, ptr %162, i64 1
  store ptr %165, ptr %2, align 8, !tbaa !16
  %166 = load i8, ptr %162, align 1, !tbaa !35
  br label %200

167:                                              ; preds = %160
  %168 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %169 = load i32, ptr %168, align 8, !tbaa !13
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %297, label %171

171:                                              ; preds = %167
  %172 = load ptr, ptr %141, align 8, !tbaa !8
  %173 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %174 = load ptr, ptr %173, align 8, !tbaa !33
  %175 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %176 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %177 = load i32, ptr %176, align 4, !tbaa !34
  %178 = tail call i32 %172(ptr noundef %174, ptr noundef nonnull %175, i32 noundef %177) #16
  %179 = load ptr, ptr %2, align 8, !tbaa !16
  %180 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %181 = load ptr, ptr %180, align 8, !tbaa !15
  %182 = ptrtoint ptr %179 to i64
  %183 = ptrtoint ptr %181 to i64
  %184 = sub i64 %182, %183
  %185 = trunc i64 %184 to i32
  %186 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %187 = load i32, ptr %186, align 8, !tbaa !14
  %188 = add i32 %187, %185
  store i32 %188, ptr %186, align 8, !tbaa !14
  %189 = icmp eq i32 %178, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %171
  store i32 0, ptr %168, align 8, !tbaa !13
  %191 = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %175, align 8, !tbaa !35
  br label %196

192:                                              ; preds = %171
  %193 = sext i32 %178 to i64
  %194 = getelementptr inbounds i8, ptr %175, i64 %193
  %195 = load i8, ptr %175, align 1, !tbaa !35
  br label %196

196:                                              ; preds = %192, %190
  %197 = phi i8 [ 0, %190 ], [ %195, %192 ]
  %198 = phi ptr [ %191, %190 ], [ %194, %192 ]
  store ptr %198, ptr %4, align 8, !tbaa !18
  %199 = getelementptr inbounds nuw i8, ptr %0, i64 57
  br label %200

200:                                              ; preds = %164, %196
  %201 = phi ptr [ %165, %164 ], [ %199, %196 ]
  %202 = phi ptr [ %161, %164 ], [ %198, %196 ]
  %203 = phi i8 [ %166, %164 ], [ %197, %196 ]
  switch i8 %203, label %297 [
    i8 32, label %204
    i8 24, label %204
    i8 16, label %204
    i8 15, label %204
    i8 8, label %204
  ]

204:                                              ; preds = %200, %200, %200, %200, %200
  %205 = load ptr, ptr %141, align 8, !tbaa !8
  %206 = icmp eq ptr %205, null
  br i1 %206, label %219, label %207

207:                                              ; preds = %204
  %208 = ptrtoint ptr %202 to i64
  %209 = ptrtoint ptr %201 to i64
  %210 = sub i64 %208, %209
  %211 = trunc i64 %210 to i32
  %212 = icmp slt i32 %211, 4
  br i1 %212, label %213, label %219

213:                                              ; preds = %207
  store ptr %202, ptr %2, align 8, !tbaa !16
  %214 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %215 = load ptr, ptr %214, align 8, !tbaa !36
  %216 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %217 = load ptr, ptr %216, align 8, !tbaa !33
  %218 = sub i32 4, %211
  tail call void %215(ptr noundef %217, i32 noundef %218) #16
  br label %242

219:                                              ; preds = %204, %207
  %220 = getelementptr inbounds nuw i8, ptr %201, i64 4
  store ptr %220, ptr %2, align 8, !tbaa !16
  br label %242

221:                                              ; preds = %132
  %222 = and i8 %135, -10
  %223 = icmp eq i8 %222, 2
  br i1 %223, label %224, label %297

224:                                              ; preds = %221
  %225 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %226 = load ptr, ptr %225, align 8, !tbaa !8
  %227 = icmp eq ptr %226, null
  br i1 %227, label %240, label %228

228:                                              ; preds = %224
  %229 = ptrtoint ptr %134 to i64
  %230 = ptrtoint ptr %133 to i64
  %231 = sub i64 %229, %230
  %232 = trunc i64 %231 to i32
  %233 = icmp slt i32 %232, 9
  br i1 %233, label %234, label %240

234:                                              ; preds = %228
  store ptr %134, ptr %2, align 8, !tbaa !16
  %235 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %236 = load ptr, ptr %235, align 8, !tbaa !36
  %237 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %238 = load ptr, ptr %237, align 8, !tbaa !33
  %239 = sub i32 9, %232
  tail call void %236(ptr noundef %238, i32 noundef %239) #16
  br label %242

240:                                              ; preds = %224, %228
  %241 = getelementptr inbounds nuw i8, ptr %133, i64 9
  store ptr %241, ptr %2, align 8, !tbaa !16
  br label %242

242:                                              ; preds = %240, %234, %219, %213
  %243 = tail call fastcc i32 @stbi__get16le(ptr noundef %0) #17
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %297, label %245

245:                                              ; preds = %242
  %246 = tail call fastcc i32 @stbi__get16le(ptr noundef %0) #17
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %297, label %248

248:                                              ; preds = %245
  %249 = load ptr, ptr %2, align 8, !tbaa !16
  %250 = load ptr, ptr %4, align 8, !tbaa !18
  %251 = icmp ult ptr %249, %250
  br i1 %251, label %252, label %255

252:                                              ; preds = %248
  %253 = getelementptr inbounds nuw i8, ptr %249, i64 1
  store ptr %253, ptr %2, align 8, !tbaa !16
  %254 = load i8, ptr %249, align 1, !tbaa !35
  br label %288

255:                                              ; preds = %248
  %256 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %257 = load i32, ptr %256, align 8, !tbaa !13
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %288, label %259

259:                                              ; preds = %255
  %260 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %261 = load ptr, ptr %260, align 8, !tbaa !8
  %262 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %263 = load ptr, ptr %262, align 8, !tbaa !33
  %264 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %265 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %266 = load i32, ptr %265, align 4, !tbaa !34
  %267 = tail call i32 %261(ptr noundef %263, ptr noundef nonnull %264, i32 noundef %266) #16
  %268 = load ptr, ptr %2, align 8, !tbaa !16
  %269 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %270 = load ptr, ptr %269, align 8, !tbaa !15
  %271 = ptrtoint ptr %268 to i64
  %272 = ptrtoint ptr %270 to i64
  %273 = sub i64 %271, %272
  %274 = trunc i64 %273 to i32
  %275 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %276 = load i32, ptr %275, align 8, !tbaa !14
  %277 = add i32 %276, %274
  store i32 %277, ptr %275, align 8, !tbaa !14
  %278 = icmp eq i32 %267, 0
  br i1 %278, label %279, label %281

279:                                              ; preds = %259
  store i32 0, ptr %256, align 8, !tbaa !13
  %280 = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %264, align 8, !tbaa !35
  br label %285

281:                                              ; preds = %259
  %282 = sext i32 %267 to i64
  %283 = getelementptr inbounds i8, ptr %264, i64 %282
  %284 = load i8, ptr %264, align 1, !tbaa !35
  br label %285

285:                                              ; preds = %281, %279
  %286 = phi i8 [ 0, %279 ], [ %284, %281 ]
  %287 = phi ptr [ %280, %279 ], [ %283, %281 ]
  store ptr %287, ptr %4, align 8, !tbaa !18
  br label %288

288:                                              ; preds = %252, %255, %285
  %289 = phi i8 [ %254, %252 ], [ %286, %285 ], [ 0, %255 ]
  br i1 %136, label %295, label %290

290:                                              ; preds = %288
  %291 = add i8 %289, -8
  %292 = and i8 %291, -9
  %293 = icmp eq i8 %292, 0
  %294 = zext i1 %293 to i32
  br label %297

295:                                              ; preds = %288
  switch i8 %289, label %297 [
    i8 32, label %296
    i8 24, label %296
    i8 16, label %296
    i8 15, label %296
    i8 8, label %296
  ]

296:                                              ; preds = %295, %295, %295, %295, %295
  br label %297

297:                                              ; preds = %167, %290, %295, %200, %245, %242, %221, %137, %85, %296
  %298 = phi i32 [ 0, %85 ], [ 0, %137 ], [ 0, %200 ], [ 0, %242 ], [ 0, %245 ], [ 0, %221 ], [ 0, %295 ], [ 1, %296 ], [ %294, %290 ], [ 0, %167 ]
  %299 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %300 = load <2 x ptr>, ptr %299, align 8, !tbaa !23
  store <2 x ptr> %300, ptr %2, align 8, !tbaa !23
  ret i32 %298
}

; Function Attrs: nounwind
define internal fastcc ptr @stbi__tga_load(ptr noundef nonnull %0, ptr noundef nonnull writeonly captures(none) %1, ptr noundef nonnull writeonly captures(none) %2, ptr noundef nonnull writeonly captures(none) %3) unnamed_addr #0 {
  %5 = alloca [4 x i8], align 16
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %7 = load ptr, ptr %6, align 8, !tbaa !16
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %9 = load ptr, ptr %8, align 8, !tbaa !18
  %10 = icmp ult ptr %7, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %4
  %12 = getelementptr inbounds nuw i8, ptr %7, i64 1
  store ptr %12, ptr %6, align 8, !tbaa !16
  %13 = load i8, ptr %7, align 1, !tbaa !35
  br label %48

14:                                               ; preds = %4
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %16 = load i32, ptr %15, align 8, !tbaa !13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %48, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %20 = load ptr, ptr %19, align 8, !tbaa !8
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %22 = load ptr, ptr %21, align 8, !tbaa !33
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %25 = load i32, ptr %24, align 4, !tbaa !34
  %26 = tail call i32 %20(ptr noundef %22, ptr noundef nonnull %23, i32 noundef %25) #16
  %27 = load ptr, ptr %6, align 8, !tbaa !16
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %29 = load ptr, ptr %28, align 8, !tbaa !15
  %30 = ptrtoint ptr %27 to i64
  %31 = ptrtoint ptr %29 to i64
  %32 = sub i64 %30, %31
  %33 = trunc i64 %32 to i32
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %35 = load i32, ptr %34, align 8, !tbaa !14
  %36 = add i32 %35, %33
  store i32 %36, ptr %34, align 8, !tbaa !14
  %37 = icmp eq i32 %26, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %18
  store i32 0, ptr %15, align 8, !tbaa !13
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %23, align 8, !tbaa !35
  br label %44

40:                                               ; preds = %18
  %41 = sext i32 %26 to i64
  %42 = getelementptr inbounds i8, ptr %23, i64 %41
  %43 = load i8, ptr %23, align 1, !tbaa !35
  br label %44

44:                                               ; preds = %40, %38
  %45 = phi i8 [ 0, %38 ], [ %43, %40 ]
  %46 = phi ptr [ %39, %38 ], [ %42, %40 ]
  store ptr %46, ptr %8, align 8, !tbaa !18
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 57
  store ptr %47, ptr %6, align 8, !tbaa !16
  br label %48

48:                                               ; preds = %11, %14, %44
  %49 = phi ptr [ %9, %11 ], [ %46, %44 ], [ %9, %14 ]
  %50 = phi ptr [ %12, %11 ], [ %47, %44 ], [ %7, %14 ]
  %51 = phi i8 [ %13, %11 ], [ %45, %44 ], [ 0, %14 ]
  %52 = zext i8 %51 to i32
  %53 = icmp ult ptr %50, %49
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = getelementptr inbounds nuw i8, ptr %50, i64 1
  store ptr %55, ptr %6, align 8, !tbaa !16
  %56 = load i8, ptr %50, align 1, !tbaa !35
  br label %91

57:                                               ; preds = %48
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %59 = load i32, ptr %58, align 8, !tbaa !13
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %91, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %63 = load ptr, ptr %62, align 8, !tbaa !8
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %65 = load ptr, ptr %64, align 8, !tbaa !33
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %68 = load i32, ptr %67, align 4, !tbaa !34
  %69 = tail call i32 %63(ptr noundef %65, ptr noundef nonnull %66, i32 noundef %68) #16
  %70 = load ptr, ptr %6, align 8, !tbaa !16
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %72 = load ptr, ptr %71, align 8, !tbaa !15
  %73 = ptrtoint ptr %70 to i64
  %74 = ptrtoint ptr %72 to i64
  %75 = sub i64 %73, %74
  %76 = trunc i64 %75 to i32
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %78 = load i32, ptr %77, align 8, !tbaa !14
  %79 = add i32 %78, %76
  store i32 %79, ptr %77, align 8, !tbaa !14
  %80 = icmp eq i32 %69, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %61
  store i32 0, ptr %58, align 8, !tbaa !13
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %66, align 8, !tbaa !35
  br label %87

83:                                               ; preds = %61
  %84 = sext i32 %69 to i64
  %85 = getelementptr inbounds i8, ptr %66, i64 %84
  %86 = load i8, ptr %66, align 1, !tbaa !35
  br label %87

87:                                               ; preds = %83, %81
  %88 = phi i8 [ 0, %81 ], [ %86, %83 ]
  %89 = phi ptr [ %82, %81 ], [ %85, %83 ]
  store ptr %89, ptr %8, align 8, !tbaa !18
  %90 = getelementptr inbounds nuw i8, ptr %0, i64 57
  store ptr %90, ptr %6, align 8, !tbaa !16
  br label %91

91:                                               ; preds = %54, %57, %87
  %92 = phi ptr [ %49, %54 ], [ %89, %87 ], [ %49, %57 ]
  %93 = phi ptr [ %55, %54 ], [ %90, %87 ], [ %50, %57 ]
  %94 = phi i8 [ %56, %54 ], [ %88, %87 ], [ 0, %57 ]
  %95 = icmp ult ptr %93, %92
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = getelementptr inbounds nuw i8, ptr %93, i64 1
  store ptr %97, ptr %6, align 8, !tbaa !16
  %98 = load i8, ptr %93, align 1, !tbaa !35
  br label %133

99:                                               ; preds = %91
  %100 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %101 = load i32, ptr %100, align 8, !tbaa !13
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %133, label %103

103:                                              ; preds = %99
  %104 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %105 = load ptr, ptr %104, align 8, !tbaa !8
  %106 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %107 = load ptr, ptr %106, align 8, !tbaa !33
  %108 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %109 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %110 = load i32, ptr %109, align 4, !tbaa !34
  %111 = tail call i32 %105(ptr noundef %107, ptr noundef nonnull %108, i32 noundef %110) #16
  %112 = load ptr, ptr %6, align 8, !tbaa !16
  %113 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %114 = load ptr, ptr %113, align 8, !tbaa !15
  %115 = ptrtoint ptr %112 to i64
  %116 = ptrtoint ptr %114 to i64
  %117 = sub i64 %115, %116
  %118 = trunc i64 %117 to i32
  %119 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %120 = load i32, ptr %119, align 8, !tbaa !14
  %121 = add i32 %120, %118
  store i32 %121, ptr %119, align 8, !tbaa !14
  %122 = icmp eq i32 %111, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %103
  store i32 0, ptr %100, align 8, !tbaa !13
  %124 = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %108, align 8, !tbaa !35
  br label %129

125:                                              ; preds = %103
  %126 = sext i32 %111 to i64
  %127 = getelementptr inbounds i8, ptr %108, i64 %126
  %128 = load i8, ptr %108, align 1, !tbaa !35
  br label %129

129:                                              ; preds = %125, %123
  %130 = phi i8 [ 0, %123 ], [ %128, %125 ]
  %131 = phi ptr [ %124, %123 ], [ %127, %125 ]
  store ptr %131, ptr %8, align 8, !tbaa !18
  %132 = getelementptr inbounds nuw i8, ptr %0, i64 57
  store ptr %132, ptr %6, align 8, !tbaa !16
  br label %133

133:                                              ; preds = %96, %99, %129
  %134 = phi i8 [ %98, %96 ], [ %130, %129 ], [ 0, %99 ]
  %135 = zext i8 %134 to i32
  %136 = tail call fastcc i32 @stbi__get16le(ptr noundef %0) #17
  %137 = tail call fastcc i32 @stbi__get16le(ptr noundef %0) #17
  %138 = load ptr, ptr %6, align 8, !tbaa !16
  %139 = load ptr, ptr %8, align 8, !tbaa !18
  %140 = icmp ult ptr %138, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %133
  %142 = getelementptr inbounds nuw i8, ptr %138, i64 1
  store ptr %142, ptr %6, align 8, !tbaa !16
  %143 = load i8, ptr %138, align 1, !tbaa !35
  br label %178

144:                                              ; preds = %133
  %145 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %146 = load i32, ptr %145, align 8, !tbaa !13
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %178, label %148

148:                                              ; preds = %144
  %149 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %150 = load ptr, ptr %149, align 8, !tbaa !8
  %151 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %152 = load ptr, ptr %151, align 8, !tbaa !33
  %153 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %154 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %155 = load i32, ptr %154, align 4, !tbaa !34
  %156 = tail call i32 %150(ptr noundef %152, ptr noundef nonnull %153, i32 noundef %155) #16
  %157 = load ptr, ptr %6, align 8, !tbaa !16
  %158 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %159 = load ptr, ptr %158, align 8, !tbaa !15
  %160 = ptrtoint ptr %157 to i64
  %161 = ptrtoint ptr %159 to i64
  %162 = sub i64 %160, %161
  %163 = trunc i64 %162 to i32
  %164 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %165 = load i32, ptr %164, align 8, !tbaa !14
  %166 = add i32 %165, %163
  store i32 %166, ptr %164, align 8, !tbaa !14
  %167 = icmp eq i32 %156, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %148
  store i32 0, ptr %145, align 8, !tbaa !13
  %169 = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %153, align 8, !tbaa !35
  br label %174

170:                                              ; preds = %148
  %171 = sext i32 %156 to i64
  %172 = getelementptr inbounds i8, ptr %153, i64 %171
  %173 = load i8, ptr %153, align 1, !tbaa !35
  br label %174

174:                                              ; preds = %170, %168
  %175 = phi i8 [ 0, %168 ], [ %173, %170 ]
  %176 = phi ptr [ %169, %168 ], [ %172, %170 ]
  store ptr %176, ptr %8, align 8, !tbaa !18
  %177 = getelementptr inbounds nuw i8, ptr %0, i64 57
  store ptr %177, ptr %6, align 8, !tbaa !16
  br label %178

178:                                              ; preds = %141, %144, %174
  %179 = phi i8 [ %143, %141 ], [ %175, %174 ], [ 0, %144 ]
  %180 = tail call fastcc i32 @stbi__get16le(ptr noundef %0) #17
  %181 = tail call fastcc i32 @stbi__get16le(ptr noundef %0) #17
  %182 = tail call fastcc i32 @stbi__get16le(ptr noundef %0) #17
  %183 = tail call fastcc i32 @stbi__get16le(ptr noundef %0) #17
  %184 = load ptr, ptr %6, align 8, !tbaa !16
  %185 = load ptr, ptr %8, align 8, !tbaa !18
  %186 = icmp ult ptr %184, %185
  br i1 %186, label %187, label %190

187:                                              ; preds = %178
  %188 = getelementptr inbounds nuw i8, ptr %184, i64 1
  store ptr %188, ptr %6, align 8, !tbaa !16
  %189 = load i8, ptr %184, align 1, !tbaa !35
  br label %224

190:                                              ; preds = %178
  %191 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %192 = load i32, ptr %191, align 8, !tbaa !13
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %224, label %194

194:                                              ; preds = %190
  %195 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %196 = load ptr, ptr %195, align 8, !tbaa !8
  %197 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %198 = load ptr, ptr %197, align 8, !tbaa !33
  %199 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %200 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %201 = load i32, ptr %200, align 4, !tbaa !34
  %202 = tail call i32 %196(ptr noundef %198, ptr noundef nonnull %199, i32 noundef %201) #16
  %203 = load ptr, ptr %6, align 8, !tbaa !16
  %204 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %205 = load ptr, ptr %204, align 8, !tbaa !15
  %206 = ptrtoint ptr %203 to i64
  %207 = ptrtoint ptr %205 to i64
  %208 = sub i64 %206, %207
  %209 = trunc i64 %208 to i32
  %210 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %211 = load i32, ptr %210, align 8, !tbaa !14
  %212 = add i32 %211, %209
  store i32 %212, ptr %210, align 8, !tbaa !14
  %213 = icmp eq i32 %202, 0
  br i1 %213, label %214, label %216

214:                                              ; preds = %194
  store i32 0, ptr %191, align 8, !tbaa !13
  %215 = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %199, align 8, !tbaa !35
  br label %220

216:                                              ; preds = %194
  %217 = sext i32 %202 to i64
  %218 = getelementptr inbounds i8, ptr %199, i64 %217
  %219 = load i8, ptr %199, align 1, !tbaa !35
  br label %220

220:                                              ; preds = %216, %214
  %221 = phi i8 [ 0, %214 ], [ %219, %216 ]
  %222 = phi ptr [ %215, %214 ], [ %218, %216 ]
  store ptr %222, ptr %8, align 8, !tbaa !18
  %223 = getelementptr inbounds nuw i8, ptr %0, i64 57
  store ptr %223, ptr %6, align 8, !tbaa !16
  br label %224

224:                                              ; preds = %187, %190, %220
  %225 = phi ptr [ %185, %187 ], [ %222, %220 ], [ %185, %190 ]
  %226 = phi ptr [ %188, %187 ], [ %223, %220 ], [ %184, %190 ]
  %227 = phi i8 [ %189, %187 ], [ %221, %220 ], [ 0, %190 ]
  %228 = icmp ult ptr %226, %225
  br i1 %228, label %229, label %232

229:                                              ; preds = %224
  %230 = getelementptr inbounds nuw i8, ptr %226, i64 1
  store ptr %230, ptr %6, align 8, !tbaa !16
  %231 = load i8, ptr %226, align 1, !tbaa !35
  br label %266

232:                                              ; preds = %224
  %233 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %234 = load i32, ptr %233, align 8, !tbaa !13
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %266, label %236

236:                                              ; preds = %232
  %237 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %238 = load ptr, ptr %237, align 8, !tbaa !8
  %239 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %240 = load ptr, ptr %239, align 8, !tbaa !33
  %241 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %242 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %243 = load i32, ptr %242, align 4, !tbaa !34
  %244 = tail call i32 %238(ptr noundef %240, ptr noundef nonnull %241, i32 noundef %243) #16
  %245 = load ptr, ptr %6, align 8, !tbaa !16
  %246 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %247 = load ptr, ptr %246, align 8, !tbaa !15
  %248 = ptrtoint ptr %245 to i64
  %249 = ptrtoint ptr %247 to i64
  %250 = sub i64 %248, %249
  %251 = trunc i64 %250 to i32
  %252 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %253 = load i32, ptr %252, align 8, !tbaa !14
  %254 = add i32 %253, %251
  store i32 %254, ptr %252, align 8, !tbaa !14
  %255 = icmp eq i32 %244, 0
  br i1 %255, label %256, label %258

256:                                              ; preds = %236
  store i32 0, ptr %233, align 8, !tbaa !13
  %257 = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %241, align 8, !tbaa !35
  br label %262

258:                                              ; preds = %236
  %259 = sext i32 %244 to i64
  %260 = getelementptr inbounds i8, ptr %241, i64 %259
  %261 = load i8, ptr %241, align 1, !tbaa !35
  br label %262

262:                                              ; preds = %258, %256
  %263 = phi i8 [ 0, %256 ], [ %261, %258 ]
  %264 = phi ptr [ %257, %256 ], [ %260, %258 ]
  store ptr %264, ptr %8, align 8, !tbaa !18
  %265 = getelementptr inbounds nuw i8, ptr %0, i64 57
  store ptr %265, ptr %6, align 8, !tbaa !16
  br label %266

266:                                              ; preds = %229, %232, %262
  %267 = phi ptr [ %230, %229 ], [ %265, %262 ], [ %226, %232 ]
  %268 = phi ptr [ %225, %229 ], [ %264, %262 ], [ %225, %232 ]
  %269 = phi i8 [ %231, %229 ], [ %263, %262 ], [ 0, %232 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  store i32 0, ptr %5, align 16
  %270 = icmp samesign ugt i32 %183, 4096
  %271 = icmp samesign ugt i32 %182, 4096
  %272 = select i1 %270, i1 true, i1 %271
  br i1 %272, label %974, label %273

273:                                              ; preds = %266
  %274 = icmp ugt i8 %134, 7
  %275 = lshr i8 %269, 5
  %276 = and i8 %275, 1
  %277 = icmp ne i8 %94, 0
  br i1 %277, label %278, label %282

278:                                              ; preds = %273
  switch i8 %179, label %974 [
    i8 8, label %290
    i8 16, label %279
    i8 15, label %279
    i8 24, label %280
    i8 32, label %280
  ]

279:                                              ; preds = %278, %278
  br label %290

280:                                              ; preds = %278, %278
  %281 = lshr i8 %179, 3
  br label %290

282:                                              ; preds = %273
  switch i8 %227, label %974 [
    i8 8, label %290
    i8 16, label %283
    i8 15, label %287
    i8 24, label %288
    i8 32, label %288
  ]

283:                                              ; preds = %282
  %284 = add nsw i32 %135, -8
  %285 = select i1 %274, i32 %284, i32 %135
  %286 = icmp eq i32 %285, 3
  br i1 %286, label %290, label %287

287:                                              ; preds = %282, %283
  br label %290

288:                                              ; preds = %282, %282
  %289 = lshr i8 %227, 3
  br label %290

290:                                              ; preds = %279, %280, %278, %288, %282, %283, %287
  %291 = phi i1 [ false, %288 ], [ true, %287 ], [ false, %283 ], [ false, %282 ], [ true, %279 ], [ false, %278 ], [ false, %280 ]
  %292 = phi i1 [ true, %288 ], [ false, %287 ], [ true, %283 ], [ true, %282 ], [ false, %279 ], [ true, %278 ], [ true, %280 ]
  %293 = phi i8 [ %289, %288 ], [ 3, %287 ], [ 2, %283 ], [ 1, %282 ], [ 3, %279 ], [ 1, %278 ], [ %281, %280 ]
  %294 = zext nneg i8 %293 to i32
  store i32 %182, ptr %1, align 4, !tbaa !4
  store i32 %183, ptr %2, align 4, !tbaa !4
  store i32 %294, ptr %3, align 4, !tbaa !4
  %295 = mul nuw nsw i32 %183, %182
  %296 = mul nuw nsw i32 %295, %294
  %297 = zext nneg i32 %296 to i64
  %298 = add nuw nsw i64 %297, 15
  %299 = and i64 %298, 4294967280
  %300 = add nuw nsw i64 %299, 16
  %301 = load i64, ptr @arena_used, align 8, !tbaa !19
  %302 = sub i64 100663296, %301
  %303 = icmp ugt i64 %300, %302
  br i1 %303, label %974, label %304

304:                                              ; preds = %290
  %305 = getelementptr inbounds nuw i8, ptr @arena, i64 %301
  %306 = add i64 %300, %301
  store i64 %306, ptr @arena_used, align 8, !tbaa !19
  store i64 %297, ptr %305, align 8, !tbaa !19
  %307 = getelementptr inbounds nuw i8, ptr %305, i64 16
  %308 = icmp eq i8 %51, 0
  br i1 %308, label %328, label %309

309:                                              ; preds = %304
  %310 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %311 = load ptr, ptr %310, align 8, !tbaa !8
  %312 = icmp eq ptr %311, null
  br i1 %312, label %325, label %313

313:                                              ; preds = %309
  %314 = ptrtoint ptr %268 to i64
  %315 = ptrtoint ptr %267 to i64
  %316 = sub i64 %314, %315
  %317 = trunc i64 %316 to i32
  %318 = icmp sgt i32 %52, %317
  br i1 %318, label %319, label %325

319:                                              ; preds = %313
  store ptr %268, ptr %6, align 8, !tbaa !16
  %320 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %321 = load ptr, ptr %320, align 8, !tbaa !36
  %322 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %323 = load ptr, ptr %322, align 8, !tbaa !33
  %324 = sub i32 %52, %317
  tail call void %321(ptr noundef %323, i32 noundef %324) #16
  br label %328

325:                                              ; preds = %309, %313
  %326 = zext i8 %51 to i64
  %327 = getelementptr inbounds nuw i8, ptr %267, i64 %326
  store ptr %327, ptr %6, align 8, !tbaa !16
  br label %328

328:                                              ; preds = %304, %319, %325
  %329 = or i1 %277, %274
  %330 = or i1 %329, %291
  br i1 %330, label %388, label %331

331:                                              ; preds = %328
  %332 = icmp eq i32 %183, 0
  br i1 %332, label %970, label %333

333:                                              ; preds = %331
  %334 = icmp eq i8 %276, 0
  %335 = mul nuw nsw i32 %182, %294
  %336 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %337 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %338 = zext nneg i32 %335 to i64
  %339 = icmp eq i32 %335, 0
  br label %340

340:                                              ; preds = %333, %385
  %341 = phi i32 [ 0, %333 ], [ %386, %385 ]
  %342 = xor i32 %341, -1
  %343 = add nsw i32 %183, %342
  %344 = select i1 %334, i32 %343, i32 %341
  %345 = mul i32 %335, %344
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i8, ptr %307, i64 %346
  %348 = load ptr, ptr %336, align 8, !tbaa !8
  %349 = icmp eq ptr %348, null
  br i1 %349, label %350, label %353

350:                                              ; preds = %340
  %351 = load ptr, ptr %6, align 8, !tbaa !16
  %352 = load ptr, ptr %8, align 8, !tbaa !18
  br label %371

353:                                              ; preds = %340
  %354 = load ptr, ptr %8, align 8, !tbaa !18
  %355 = load ptr, ptr %6, align 8, !tbaa !16
  %356 = ptrtoint ptr %354 to i64
  %357 = ptrtoint ptr %355 to i64
  %358 = sub i64 %356, %357
  %359 = trunc i64 %358 to i32
  %360 = icmp sgt i32 %335, %359
  br i1 %360, label %361, label %371

361:                                              ; preds = %353
  %362 = shl i64 %358, 32
  %363 = ashr exact i64 %362, 32
  %364 = tail call ptr @memcpy(ptr noundef nonnull %347, ptr noundef %355, i64 noundef %363) #16
  %365 = load ptr, ptr %336, align 8, !tbaa !8
  %366 = load ptr, ptr %337, align 8, !tbaa !33
  %367 = getelementptr inbounds i8, ptr %347, i64 %363
  %368 = sub i32 %335, %359
  %369 = tail call i32 %365(ptr noundef %366, ptr noundef nonnull %367, i32 noundef %368) #16
  %370 = load ptr, ptr %8, align 8, !tbaa !18
  br label %383

371:                                              ; preds = %353, %350
  %372 = phi ptr [ %352, %350 ], [ %354, %353 ]
  %373 = phi ptr [ %351, %350 ], [ %355, %353 ]
  %374 = getelementptr inbounds nuw i8, ptr %373, i64 %338
  %375 = icmp ugt ptr %374, %372
  br i1 %375, label %385, label %376

376:                                              ; preds = %371
  br i1 %339, label %380, label %377

377:                                              ; preds = %376
  %378 = tail call ptr @memcpy(ptr noundef nonnull %347, ptr noundef %373, i64 noundef %338) #16
  %379 = load ptr, ptr %6, align 8, !tbaa !16
  br label %380

380:                                              ; preds = %377, %376
  %381 = phi ptr [ %379, %377 ], [ %373, %376 ]
  %382 = getelementptr inbounds nuw i8, ptr %381, i64 %338
  br label %383

383:                                              ; preds = %380, %361
  %384 = phi ptr [ %370, %361 ], [ %382, %380 ]
  store ptr %384, ptr %6, align 8, !tbaa !16
  br label %385

385:                                              ; preds = %383, %371
  %386 = add nuw nsw i32 %341, 1
  %387 = icmp eq i32 %386, %183
  br i1 %387, label %923, label %340, !llvm.loop !327

388:                                              ; preds = %328
  br i1 %277, label %389, label %459

389:                                              ; preds = %388
  %390 = icmp eq i32 %137, 0
  br i1 %390, label %974, label %391

391:                                              ; preds = %389
  %392 = icmp eq i32 %136, 0
  br i1 %392, label %417, label %393

393:                                              ; preds = %391
  %394 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %395 = load ptr, ptr %394, align 8, !tbaa !8
  %396 = icmp eq ptr %395, null
  br i1 %396, label %397, label %399

397:                                              ; preds = %393
  %398 = load ptr, ptr %6, align 8, !tbaa !16
  br label %413

399:                                              ; preds = %393
  %400 = load ptr, ptr %8, align 8, !tbaa !18
  %401 = load ptr, ptr %6, align 8, !tbaa !16
  %402 = ptrtoint ptr %400 to i64
  %403 = ptrtoint ptr %401 to i64
  %404 = sub i64 %402, %403
  %405 = trunc i64 %404 to i32
  %406 = icmp sgt i32 %136, %405
  br i1 %406, label %407, label %413

407:                                              ; preds = %399
  store ptr %400, ptr %6, align 8, !tbaa !16
  %408 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %409 = load ptr, ptr %408, align 8, !tbaa !36
  %410 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %411 = load ptr, ptr %410, align 8, !tbaa !33
  %412 = sub i32 %136, %405
  tail call void %409(ptr noundef %411, i32 noundef %412) #16
  br label %417

413:                                              ; preds = %399, %397
  %414 = phi ptr [ %398, %397 ], [ %401, %399 ]
  %415 = zext nneg i32 %136 to i64
  %416 = getelementptr inbounds nuw i8, ptr %414, i64 %415
  store ptr %416, ptr %6, align 8, !tbaa !16
  br label %417

417:                                              ; preds = %391, %407, %413
  %418 = mul nuw nsw i32 %137, %294
  %419 = zext nneg i32 %418 to i64
  %420 = add nuw nsw i64 %419, 15
  %421 = and i64 %420, 16777200
  %422 = add nuw nsw i64 %421, 16
  %423 = load i64, ptr @arena_used, align 8, !tbaa !19
  %424 = sub i64 100663296, %423
  %425 = icmp ugt i64 %422, %424
  br i1 %425, label %974, label %426

426:                                              ; preds = %417
  %427 = getelementptr inbounds nuw i8, ptr @arena, i64 %423
  %428 = add i64 %423, %422
  store i64 %428, ptr @arena_used, align 8, !tbaa !19
  store i64 %419, ptr %427, align 8, !tbaa !19
  %429 = getelementptr inbounds nuw i8, ptr %427, i64 16
  br i1 %292, label %456, label %430

430:                                              ; preds = %426
  %431 = zext nneg i8 %293 to i64
  br label %432

432:                                              ; preds = %430, %432
  %433 = phi ptr [ %429, %430 ], [ %453, %432 ]
  %434 = phi i32 [ 0, %430 ], [ %454, %432 ]
  %435 = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) #17
  %436 = trunc nuw i32 %435 to i16
  %437 = lshr i16 %436, 10
  %438 = and i16 %437, 31
  %439 = mul nuw nsw i16 %438, 255
  %440 = udiv i16 %439, 31
  %441 = trunc nuw i16 %440 to i8
  store i8 %441, ptr %433, align 1, !tbaa !35
  %442 = lshr i16 %436, 5
  %443 = and i16 %442, 31
  %444 = mul nuw nsw i16 %443, 255
  %445 = udiv i16 %444, 31
  %446 = trunc nuw i16 %445 to i8
  %447 = getelementptr inbounds nuw i8, ptr %433, i64 1
  store i8 %446, ptr %447, align 1, !tbaa !35
  %448 = and i16 %436, 31
  %449 = mul nuw nsw i16 %448, 255
  %450 = udiv i16 %449, 31
  %451 = trunc nuw i16 %450 to i8
  %452 = getelementptr inbounds nuw i8, ptr %433, i64 2
  store i8 %451, ptr %452, align 1, !tbaa !35
  %453 = getelementptr inbounds nuw i8, ptr %433, i64 %431
  %454 = add nuw nsw i32 %434, 1
  %455 = icmp eq i32 %454, %137
  br i1 %455, label %459, label %432, !llvm.loop !328

456:                                              ; preds = %426
  %457 = tail call fastcc i32 @stbi__getn(ptr noundef nonnull %0, ptr noundef nonnull %429, i32 noundef %418) #17
  %458 = icmp eq i32 %457, 0
  br i1 %458, label %974, label %459

459:                                              ; preds = %432, %456, %388
  %460 = phi ptr [ null, %388 ], [ %429, %456 ], [ %429, %432 ]
  %461 = icmp eq i32 %295, 0
  br i1 %461, label %798, label %462

462:                                              ; preds = %459
  %463 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %464 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %465 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %466 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %467 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %468 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %469 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %470 = getelementptr inbounds nuw i8, ptr %0, i64 57
  %471 = getelementptr inbounds nuw i8, ptr %5, i64 1
  %472 = getelementptr inbounds nuw i8, ptr %5, i64 2
  %473 = icmp eq i8 %227, 8
  %474 = zext nneg i8 %293 to i64
  %475 = zext nneg i8 %293 to i64
  %476 = zext nneg i8 %293 to i64
  %477 = add nsw i64 %474, -1
  %478 = icmp samesign ult i8 %293, 4
  %479 = and i64 %474, 28
  %480 = icmp eq i64 %479, 4
  %481 = getelementptr inbounds nuw i8, ptr %5, i64 4
  %482 = icmp eq i64 %479, 8
  %483 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %484 = icmp eq i64 %479, 12
  %485 = getelementptr inbounds nuw i8, ptr %5, i64 12
  %486 = icmp eq i64 %479, 16
  %487 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %488 = icmp eq i64 %479, 20
  %489 = getelementptr inbounds nuw i8, ptr %5, i64 20
  %490 = icmp eq i64 %479, 24
  %491 = getelementptr inbounds nuw i8, ptr %5, i64 24
  %492 = icmp eq i64 %479, %474
  %493 = icmp samesign ult i8 %293, 4
  %494 = trunc nsw i64 %477 to i32
  %495 = icmp ugt i64 %477, 4294967295
  %496 = and i64 %474, 28
  %497 = icmp eq i64 %496, 4
  %498 = getelementptr inbounds nuw i8, ptr %5, i64 4
  %499 = icmp eq i64 %496, 8
  %500 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %501 = icmp eq i64 %496, 12
  %502 = getelementptr inbounds nuw i8, ptr %5, i64 12
  %503 = icmp eq i64 %496, 16
  %504 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %505 = icmp eq i64 %496, 20
  %506 = getelementptr inbounds nuw i8, ptr %5, i64 20
  %507 = icmp eq i64 %496, 24
  %508 = getelementptr inbounds nuw i8, ptr %5, i64 24
  %509 = icmp eq i64 %496, %474
  %510 = and i64 %474, 3
  %511 = icmp eq i64 %510, 0
  br label %512

512:                                              ; preds = %462, %794
  %513 = phi i1 [ true, %462 ], [ false, %794 ]
  %514 = phi i32 [ 0, %462 ], [ %704, %794 ]
  %515 = phi i32 [ 0, %462 ], [ %795, %794 ]
  %516 = phi i32 [ 0, %462 ], [ %796, %794 ]
  %517 = mul i32 %516, %294
  br i1 %274, label %518, label %563

518:                                              ; preds = %512
  %519 = icmp eq i32 %515, 0
  br i1 %519, label %520, label %558

520:                                              ; preds = %518
  %521 = load ptr, ptr %6, align 8, !tbaa !16
  %522 = load ptr, ptr %8, align 8, !tbaa !18
  %523 = icmp ult ptr %521, %522
  br i1 %523, label %524, label %527

524:                                              ; preds = %520
  %525 = getelementptr inbounds nuw i8, ptr %521, i64 1
  store ptr %525, ptr %6, align 8, !tbaa !16
  %526 = load i8, ptr %521, align 1, !tbaa !35
  br label %552

527:                                              ; preds = %520
  %528 = load i32, ptr %463, align 8, !tbaa !13
  %529 = icmp eq i32 %528, 0
  br i1 %529, label %552, label %530

530:                                              ; preds = %527
  %531 = load ptr, ptr %464, align 8, !tbaa !8
  %532 = load ptr, ptr %465, align 8, !tbaa !33
  %533 = load i32, ptr %467, align 4, !tbaa !34
  %534 = tail call i32 %531(ptr noundef %532, ptr noundef nonnull %466, i32 noundef %533) #16
  %535 = load ptr, ptr %6, align 8, !tbaa !16
  %536 = load ptr, ptr %468, align 8, !tbaa !15
  %537 = ptrtoint ptr %535 to i64
  %538 = ptrtoint ptr %536 to i64
  %539 = sub i64 %537, %538
  %540 = trunc i64 %539 to i32
  %541 = load i32, ptr %469, align 8, !tbaa !14
  %542 = add i32 %541, %540
  store i32 %542, ptr %469, align 8, !tbaa !14
  %543 = icmp eq i32 %534, 0
  br i1 %543, label %544, label %545

544:                                              ; preds = %530
  store i32 0, ptr %463, align 8, !tbaa !13
  store i8 0, ptr %466, align 8, !tbaa !35
  br label %549

545:                                              ; preds = %530
  %546 = sext i32 %534 to i64
  %547 = getelementptr inbounds i8, ptr %466, i64 %546
  %548 = load i8, ptr %466, align 1, !tbaa !35
  br label %549

549:                                              ; preds = %545, %544
  %550 = phi i8 [ 0, %544 ], [ %548, %545 ]
  %551 = phi ptr [ %470, %544 ], [ %547, %545 ]
  store ptr %551, ptr %8, align 8, !tbaa !18
  store ptr %470, ptr %6, align 8, !tbaa !16
  br label %552

552:                                              ; preds = %524, %527, %549
  %553 = phi i8 [ %526, %524 ], [ %550, %549 ], [ 0, %527 ]
  %554 = zext i8 %553 to i32
  %555 = and i32 %554, 127
  %556 = add nuw nsw i32 %555, 1
  %557 = lshr i32 %554, 7
  br label %563

558:                                              ; preds = %518
  %559 = icmp eq i32 %514, 0
  %560 = or i1 %559, %513
  %561 = xor i1 %559, true
  %562 = zext i1 %561 to i32
  br i1 %560, label %563, label %702

563:                                              ; preds = %558, %512, %552
  %564 = phi i32 [ %562, %558 ], [ %557, %552 ], [ %514, %512 ]
  %565 = phi i32 [ %515, %558 ], [ %556, %552 ], [ %515, %512 ]
  br i1 %277, label %566, label %641

566:                                              ; preds = %563
  br i1 %473, label %567, label %602

567:                                              ; preds = %566
  %568 = load ptr, ptr %6, align 8, !tbaa !16
  %569 = load ptr, ptr %8, align 8, !tbaa !18
  %570 = icmp ult ptr %568, %569
  br i1 %570, label %571, label %574

571:                                              ; preds = %567
  %572 = getelementptr inbounds nuw i8, ptr %568, i64 1
  store ptr %572, ptr %6, align 8, !tbaa !16
  %573 = load i8, ptr %568, align 1, !tbaa !35
  br label %599

574:                                              ; preds = %567
  %575 = load i32, ptr %463, align 8, !tbaa !13
  %576 = icmp eq i32 %575, 0
  br i1 %576, label %599, label %577

577:                                              ; preds = %574
  %578 = load ptr, ptr %464, align 8, !tbaa !8
  %579 = load ptr, ptr %465, align 8, !tbaa !33
  %580 = load i32, ptr %467, align 4, !tbaa !34
  %581 = tail call i32 %578(ptr noundef %579, ptr noundef nonnull %466, i32 noundef %580) #16
  %582 = load ptr, ptr %6, align 8, !tbaa !16
  %583 = load ptr, ptr %468, align 8, !tbaa !15
  %584 = ptrtoint ptr %582 to i64
  %585 = ptrtoint ptr %583 to i64
  %586 = sub i64 %584, %585
  %587 = trunc i64 %586 to i32
  %588 = load i32, ptr %469, align 8, !tbaa !14
  %589 = add i32 %588, %587
  store i32 %589, ptr %469, align 8, !tbaa !14
  %590 = icmp eq i32 %581, 0
  br i1 %590, label %591, label %592

591:                                              ; preds = %577
  store i32 0, ptr %463, align 8, !tbaa !13
  store i8 0, ptr %466, align 8, !tbaa !35
  br label %596

592:                                              ; preds = %577
  %593 = sext i32 %581 to i64
  %594 = getelementptr inbounds i8, ptr %466, i64 %593
  %595 = load i8, ptr %466, align 1, !tbaa !35
  br label %596

596:                                              ; preds = %592, %591
  %597 = phi i8 [ 0, %591 ], [ %595, %592 ]
  %598 = phi ptr [ %470, %591 ], [ %594, %592 ]
  store ptr %598, ptr %8, align 8, !tbaa !18
  store ptr %470, ptr %6, align 8, !tbaa !16
  br label %599

599:                                              ; preds = %571, %574, %596
  %600 = phi i8 [ %573, %571 ], [ %597, %596 ], [ 0, %574 ]
  %601 = zext i8 %600 to i32
  br label %604

602:                                              ; preds = %566
  %603 = tail call fastcc i32 @stbi__get16le(ptr noundef %0) #17
  br label %604

604:                                              ; preds = %599, %602
  %605 = phi i32 [ %601, %599 ], [ %603, %602 ]
  %606 = icmp samesign ult i32 %605, %137
  %607 = select i1 %606, i32 %605, i32 0
  %608 = mul nuw nsw i32 %607, %294
  %609 = zext nneg i32 %608 to i64
  %610 = getelementptr inbounds nuw i8, ptr %460, i64 %609
  br i1 %478, label %632, label %611

611:                                              ; preds = %604
  %612 = load <4 x i8>, ptr %610, align 1, !tbaa !35
  store <4 x i8> %612, ptr %5, align 16, !tbaa !35
  br i1 %480, label %631, label %613, !llvm.loop !329

613:                                              ; preds = %611
  %614 = getelementptr inbounds nuw i8, ptr %610, i64 4
  %615 = load <4 x i8>, ptr %614, align 1, !tbaa !35
  store <4 x i8> %615, ptr %481, align 4, !tbaa !35
  br i1 %482, label %631, label %616, !llvm.loop !329

616:                                              ; preds = %613
  %617 = getelementptr inbounds nuw i8, ptr %610, i64 8
  %618 = load <4 x i8>, ptr %617, align 1, !tbaa !35
  store <4 x i8> %618, ptr %483, align 8, !tbaa !35
  br i1 %484, label %631, label %619, !llvm.loop !329

619:                                              ; preds = %616
  %620 = getelementptr inbounds nuw i8, ptr %610, i64 12
  %621 = load <4 x i8>, ptr %620, align 1, !tbaa !35
  store <4 x i8> %621, ptr %485, align 4, !tbaa !35
  br i1 %486, label %631, label %622, !llvm.loop !329

622:                                              ; preds = %619
  %623 = getelementptr inbounds nuw i8, ptr %610, i64 16
  %624 = load <4 x i8>, ptr %623, align 1, !tbaa !35
  store <4 x i8> %624, ptr %487, align 16, !tbaa !35
  br i1 %488, label %631, label %625, !llvm.loop !329

625:                                              ; preds = %622
  %626 = getelementptr inbounds nuw i8, ptr %610, i64 20
  %627 = load <4 x i8>, ptr %626, align 1, !tbaa !35
  store <4 x i8> %627, ptr %489, align 4, !tbaa !35
  br i1 %490, label %631, label %628, !llvm.loop !329

628:                                              ; preds = %625
  %629 = getelementptr inbounds nuw i8, ptr %610, i64 24
  %630 = load <4 x i8>, ptr %629, align 1, !tbaa !35
  store <4 x i8> %630, ptr %491, align 8, !tbaa !35
  br label %631

631:                                              ; preds = %628, %625, %622, %619, %616, %613, %611
  br i1 %492, label %702, label %632

632:                                              ; preds = %604, %631
  %633 = phi i64 [ 0, %604 ], [ %479, %631 ]
  br label %634

634:                                              ; preds = %632, %634
  %635 = phi i64 [ %639, %634 ], [ %633, %632 ]
  %636 = getelementptr inbounds nuw i8, ptr %610, i64 %635
  %637 = load i8, ptr %636, align 1, !tbaa !35
  %638 = getelementptr inbounds nuw i8, ptr %5, i64 %635
  store i8 %637, ptr %638, align 1, !tbaa !35
  %639 = add nuw nsw i64 %635, 1
  %640 = icmp eq i64 %639, %475
  br i1 %640, label %702, label %634, !llvm.loop !330

641:                                              ; preds = %563
  br i1 %292, label %642, label %645

642:                                              ; preds = %641
  %643 = load ptr, ptr %6, align 8, !tbaa !16
  %644 = load ptr, ptr %8, align 8, !tbaa !18
  br label %662

645:                                              ; preds = %641
  %646 = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) #17
  %647 = trunc nuw i32 %646 to i16
  %648 = lshr i16 %647, 10
  %649 = and i16 %648, 31
  %650 = mul nuw nsw i16 %649, 255
  %651 = udiv i16 %650, 31
  %652 = trunc nuw i16 %651 to i8
  store i8 %652, ptr %5, align 16, !tbaa !35
  %653 = lshr i16 %647, 5
  %654 = and i16 %653, 31
  %655 = mul nuw nsw i16 %654, 255
  %656 = udiv i16 %655, 31
  %657 = trunc nuw i16 %656 to i8
  store i8 %657, ptr %471, align 1, !tbaa !35
  %658 = and i16 %647, 31
  %659 = mul nuw nsw i16 %658, 255
  %660 = udiv i16 %659, 31
  %661 = trunc nuw i16 %660 to i8
  store i8 %661, ptr %472, align 2, !tbaa !35
  br label %702

662:                                              ; preds = %642, %695
  %663 = phi ptr [ %644, %642 ], [ %696, %695 ]
  %664 = phi ptr [ %643, %642 ], [ %697, %695 ]
  %665 = phi i64 [ 0, %642 ], [ %700, %695 ]
  %666 = icmp ult ptr %664, %663
  br i1 %666, label %667, label %670

667:                                              ; preds = %662
  %668 = getelementptr inbounds nuw i8, ptr %664, i64 1
  store ptr %668, ptr %6, align 8, !tbaa !16
  %669 = load i8, ptr %664, align 1, !tbaa !35
  br label %695

670:                                              ; preds = %662
  %671 = load i32, ptr %463, align 8, !tbaa !13
  %672 = icmp eq i32 %671, 0
  br i1 %672, label %695, label %673

673:                                              ; preds = %670
  %674 = load ptr, ptr %464, align 8, !tbaa !8
  %675 = load ptr, ptr %465, align 8, !tbaa !33
  %676 = load i32, ptr %467, align 4, !tbaa !34
  %677 = tail call i32 %674(ptr noundef %675, ptr noundef nonnull %466, i32 noundef %676) #16
  %678 = load ptr, ptr %6, align 8, !tbaa !16
  %679 = load ptr, ptr %468, align 8, !tbaa !15
  %680 = ptrtoint ptr %678 to i64
  %681 = ptrtoint ptr %679 to i64
  %682 = sub i64 %680, %681
  %683 = trunc i64 %682 to i32
  %684 = load i32, ptr %469, align 8, !tbaa !14
  %685 = add i32 %684, %683
  store i32 %685, ptr %469, align 8, !tbaa !14
  %686 = icmp eq i32 %677, 0
  br i1 %686, label %687, label %688

687:                                              ; preds = %673
  store i32 0, ptr %463, align 8, !tbaa !13
  store i8 0, ptr %466, align 8, !tbaa !35
  br label %692

688:                                              ; preds = %673
  %689 = sext i32 %677 to i64
  %690 = getelementptr inbounds i8, ptr %466, i64 %689
  %691 = load i8, ptr %466, align 1, !tbaa !35
  br label %692

692:                                              ; preds = %688, %687
  %693 = phi i8 [ 0, %687 ], [ %691, %688 ]
  %694 = phi ptr [ %470, %687 ], [ %690, %688 ]
  store ptr %694, ptr %8, align 8, !tbaa !18
  store ptr %470, ptr %6, align 8, !tbaa !16
  br label %695

695:                                              ; preds = %667, %670, %692
  %696 = phi ptr [ %663, %667 ], [ %694, %692 ], [ %663, %670 ]
  %697 = phi ptr [ %668, %667 ], [ %470, %692 ], [ %664, %670 ]
  %698 = phi i8 [ %669, %667 ], [ %693, %692 ], [ 0, %670 ]
  %699 = getelementptr inbounds nuw i8, ptr %5, i64 %665
  store i8 %698, ptr %699, align 1, !tbaa !35
  %700 = add nuw nsw i64 %665, 1
  %701 = icmp eq i64 %700, %474
  br i1 %701, label %702, label %662, !llvm.loop !331

702:                                              ; preds = %695, %634, %631, %645, %558
  %703 = phi i32 [ %565, %631 ], [ %515, %558 ], [ %565, %645 ], [ %565, %634 ], [ %565, %695 ]
  %704 = phi i32 [ %564, %631 ], [ 1, %558 ], [ %564, %645 ], [ %564, %634 ], [ %564, %695 ]
  %705 = mul i32 %516, %294
  br i1 %493, label %745, label %706

706:                                              ; preds = %702
  %707 = add i32 %517, %494
  %708 = icmp slt i32 %707, %517
  %709 = or i1 %708, %495
  br i1 %709, label %745, label %710

710:                                              ; preds = %706
  %711 = load <4 x i8>, ptr %5, align 16, !tbaa !35
  %712 = sext i32 %705 to i64
  %713 = getelementptr inbounds i8, ptr %307, i64 %712
  store <4 x i8> %711, ptr %713, align 1, !tbaa !35
  br i1 %497, label %744, label %714, !llvm.loop !332

714:                                              ; preds = %710
  %715 = load <4 x i8>, ptr %498, align 4, !tbaa !35
  %716 = add i32 %705, 4
  %717 = sext i32 %716 to i64
  %718 = getelementptr inbounds i8, ptr %307, i64 %717
  store <4 x i8> %715, ptr %718, align 1, !tbaa !35
  br i1 %499, label %744, label %719, !llvm.loop !332

719:                                              ; preds = %714
  %720 = load <4 x i8>, ptr %500, align 8, !tbaa !35
  %721 = add i32 %705, 8
  %722 = sext i32 %721 to i64
  %723 = getelementptr inbounds i8, ptr %307, i64 %722
  store <4 x i8> %720, ptr %723, align 1, !tbaa !35
  br i1 %501, label %744, label %724, !llvm.loop !332

724:                                              ; preds = %719
  %725 = load <4 x i8>, ptr %502, align 4, !tbaa !35
  %726 = add i32 %705, 12
  %727 = sext i32 %726 to i64
  %728 = getelementptr inbounds i8, ptr %307, i64 %727
  store <4 x i8> %725, ptr %728, align 1, !tbaa !35
  br i1 %503, label %744, label %729, !llvm.loop !332

729:                                              ; preds = %724
  %730 = load <4 x i8>, ptr %504, align 16, !tbaa !35
  %731 = add i32 %705, 16
  %732 = sext i32 %731 to i64
  %733 = getelementptr inbounds i8, ptr %307, i64 %732
  store <4 x i8> %730, ptr %733, align 1, !tbaa !35
  br i1 %505, label %744, label %734, !llvm.loop !332

734:                                              ; preds = %729
  %735 = load <4 x i8>, ptr %506, align 4, !tbaa !35
  %736 = add i32 %705, 20
  %737 = sext i32 %736 to i64
  %738 = getelementptr inbounds i8, ptr %307, i64 %737
  store <4 x i8> %735, ptr %738, align 1, !tbaa !35
  br i1 %507, label %744, label %739, !llvm.loop !332

739:                                              ; preds = %734
  %740 = load <4 x i8>, ptr %508, align 8, !tbaa !35
  %741 = add i32 %705, 24
  %742 = sext i32 %741 to i64
  %743 = getelementptr inbounds i8, ptr %307, i64 %742
  store <4 x i8> %740, ptr %743, align 1, !tbaa !35
  br label %744

744:                                              ; preds = %739, %734, %729, %724, %719, %714, %710
  br i1 %509, label %794, label %745

745:                                              ; preds = %706, %702, %744
  %746 = phi i64 [ 0, %706 ], [ 0, %702 ], [ %496, %744 ]
  br i1 %511, label %759, label %747

747:                                              ; preds = %745, %747
  %748 = phi i64 [ %756, %747 ], [ %746, %745 ]
  %749 = phi i64 [ %757, %747 ], [ 0, %745 ]
  %750 = getelementptr inbounds nuw i8, ptr %5, i64 %748
  %751 = load i8, ptr %750, align 1, !tbaa !35
  %752 = trunc nuw nsw i64 %748 to i32
  %753 = add i32 %705, %752
  %754 = sext i32 %753 to i64
  %755 = getelementptr inbounds i8, ptr %307, i64 %754
  store i8 %751, ptr %755, align 1, !tbaa !35
  %756 = add nuw nsw i64 %748, 1
  %757 = add i64 %749, 1
  %758 = icmp eq i64 %757, %510
  br i1 %758, label %759, label %747, !llvm.loop !333

759:                                              ; preds = %747, %745
  %760 = phi i64 [ %746, %745 ], [ %756, %747 ]
  %761 = sub nsw i64 %746, %474
  %762 = icmp ugt i64 %761, -4
  br i1 %762, label %794, label %763

763:                                              ; preds = %759, %763
  %764 = phi i64 [ %792, %763 ], [ %760, %759 ]
  %765 = getelementptr inbounds nuw i8, ptr %5, i64 %764
  %766 = load i8, ptr %765, align 1, !tbaa !35
  %767 = trunc nuw nsw i64 %764 to i32
  %768 = add i32 %705, %767
  %769 = sext i32 %768 to i64
  %770 = getelementptr inbounds i8, ptr %307, i64 %769
  store i8 %766, ptr %770, align 1, !tbaa !35
  %771 = add nuw nsw i64 %764, 1
  %772 = getelementptr inbounds nuw i8, ptr %5, i64 %771
  %773 = load i8, ptr %772, align 1, !tbaa !35
  %774 = trunc nuw nsw i64 %771 to i32
  %775 = add i32 %705, %774
  %776 = sext i32 %775 to i64
  %777 = getelementptr inbounds i8, ptr %307, i64 %776
  store i8 %773, ptr %777, align 1, !tbaa !35
  %778 = add nuw nsw i64 %764, 2
  %779 = getelementptr inbounds nuw i8, ptr %5, i64 %778
  %780 = load i8, ptr %779, align 1, !tbaa !35
  %781 = trunc nuw nsw i64 %778 to i32
  %782 = add i32 %705, %781
  %783 = sext i32 %782 to i64
  %784 = getelementptr inbounds i8, ptr %307, i64 %783
  store i8 %780, ptr %784, align 1, !tbaa !35
  %785 = add nuw nsw i64 %764, 3
  %786 = getelementptr inbounds nuw i8, ptr %5, i64 %785
  %787 = load i8, ptr %786, align 1, !tbaa !35
  %788 = trunc nuw nsw i64 %785 to i32
  %789 = add i32 %705, %788
  %790 = sext i32 %789 to i64
  %791 = getelementptr inbounds i8, ptr %307, i64 %790
  store i8 %787, ptr %791, align 1, !tbaa !35
  %792 = add nuw nsw i64 %764, 4
  %793 = icmp eq i64 %792, %476
  br i1 %793, label %794, label %763, !llvm.loop !334

794:                                              ; preds = %759, %763, %744
  %795 = add i32 %703, -1
  %796 = add nuw i32 %516, 1
  %797 = icmp eq i32 %796, %295
  br i1 %797, label %798, label %512, !llvm.loop !335

798:                                              ; preds = %794, %459
  %799 = icmp eq i8 %276, 0
  %800 = icmp ne i32 %183, 0
  %801 = select i1 %799, i1 %800, i1 false
  br i1 %801, label %802, label %923

802:                                              ; preds = %798
  %803 = mul nuw nsw i32 %182, %294
  %804 = icmp eq i32 %803, 0
  %805 = add nsw i32 %183, -1
  %806 = lshr i32 %805, 1
  %807 = add nsw i32 %803, -1
  %808 = mul nuw nsw i32 %182, %294
  %809 = mul nsw i32 %182, %805
  %810 = mul i32 %809, %294
  %811 = mul nuw nsw i32 %182, %294
  %812 = add i64 %301, 16
  %813 = getelementptr i8, ptr @arena, i64 %812
  %814 = mul nuw nsw i32 %182, %294
  %815 = add nsw i32 %803, -1
  %816 = zext i32 %815 to i64
  %817 = add i64 %301, %816
  %818 = add i64 %817, 17
  %819 = getelementptr i8, ptr @arena, i64 %818
  %820 = getelementptr i8, ptr @arena, i64 %812
  %821 = mul nsw i32 %182, %805
  %822 = mul i32 %821, %294
  %823 = mul nuw nsw i32 %182, %294
  %824 = getelementptr i8, ptr @arena, i64 %818
  %825 = icmp samesign ult i32 %803, 4
  %826 = icmp samesign ult i32 %803, 32
  %827 = and i32 %803, 28
  %828 = and i32 %803, 262112
  %829 = icmp eq i32 %803, %828
  %830 = and i32 %803, 31
  %831 = icmp eq i32 %827, 0
  %832 = and i32 %803, 262140
  %833 = and i32 %803, 3
  %834 = icmp eq i32 %803, %832
  br label %835

835:                                              ; preds = %802, %920
  %836 = phi i32 [ 0, %802 ], [ %921, %920 ]
  %837 = mul i32 %814, %836
  %838 = sext i32 %837 to i64
  %839 = getelementptr i8, ptr %813, i64 %838
  %840 = getelementptr i8, ptr %819, i64 %838
  %841 = mul i32 %823, %836
  %842 = sub i32 %822, %841
  %843 = sext i32 %842 to i64
  %844 = getelementptr i8, ptr %820, i64 %843
  %845 = getelementptr i8, ptr %824, i64 %843
  %846 = mul i32 %808, %836
  %847 = mul i32 %811, %836
  %848 = sub i32 %810, %847
  br i1 %804, label %920, label %849

849:                                              ; preds = %835
  %850 = xor i32 %836, -1
  %851 = add nsw i32 %183, %850
  %852 = mul i32 %803, %851
  %853 = mul i32 %803, %836
  br i1 %825, label %902, label %854

854:                                              ; preds = %849
  %855 = add i32 %846, %807
  %856 = icmp slt i32 %855, %846
  %857 = add i32 %848, %807
  %858 = icmp slt i32 %857, %848
  %859 = or i1 %856, %858
  br i1 %859, label %902, label %860

860:                                              ; preds = %854
  %861 = icmp ult ptr %839, %845
  %862 = icmp ult ptr %844, %840
  %863 = and i1 %861, %862
  br i1 %863, label %902, label %864

864:                                              ; preds = %860
  br i1 %826, label %885, label %865

865:                                              ; preds = %864, %865
  %866 = phi i32 [ %879, %865 ], [ 0, %864 ]
  %867 = add i32 %852, %866
  %868 = add i32 %853, %866
  %869 = sext i32 %868 to i64
  %870 = getelementptr inbounds i8, ptr %307, i64 %869
  %871 = getelementptr inbounds nuw i8, ptr %870, i64 16
  %872 = load <16 x i8>, ptr %870, align 1, !tbaa !35, !alias.scope !336, !noalias !339
  %873 = load <16 x i8>, ptr %871, align 1, !tbaa !35, !alias.scope !336, !noalias !339
  %874 = sext i32 %867 to i64
  %875 = getelementptr inbounds i8, ptr %307, i64 %874
  %876 = getelementptr inbounds nuw i8, ptr %875, i64 16
  %877 = load <16 x i8>, ptr %875, align 1, !tbaa !35, !alias.scope !339
  %878 = load <16 x i8>, ptr %876, align 1, !tbaa !35, !alias.scope !339
  store <16 x i8> %877, ptr %870, align 1, !tbaa !35, !alias.scope !336, !noalias !339
  store <16 x i8> %878, ptr %871, align 1, !tbaa !35, !alias.scope !336, !noalias !339
  store <16 x i8> %872, ptr %875, align 1, !tbaa !35, !alias.scope !339
  store <16 x i8> %873, ptr %876, align 1, !tbaa !35, !alias.scope !339
  %879 = add nuw i32 %866, 32
  %880 = icmp eq i32 %879, %828
  br i1 %880, label %881, label %865, !llvm.loop !341

881:                                              ; preds = %865
  br i1 %829, label %920, label %882

882:                                              ; preds = %881
  %883 = add i32 %852, %828
  %884 = add i32 %853, %828
  br i1 %831, label %902, label %885, !prof !167

885:                                              ; preds = %864, %882
  %886 = phi i32 [ %828, %882 ], [ 0, %864 ]
  %887 = add i32 %852, %832
  %888 = add i32 %853, %832
  br label %889

889:                                              ; preds = %889, %885
  %890 = phi i32 [ %886, %885 ], [ %899, %889 ]
  %891 = add i32 %852, %890
  %892 = add i32 %853, %890
  %893 = sext i32 %892 to i64
  %894 = getelementptr inbounds i8, ptr %307, i64 %893
  %895 = load <4 x i8>, ptr %894, align 1, !tbaa !35, !alias.scope !336, !noalias !339
  %896 = sext i32 %891 to i64
  %897 = getelementptr inbounds i8, ptr %307, i64 %896
  %898 = load <4 x i8>, ptr %897, align 1, !tbaa !35, !alias.scope !339
  store <4 x i8> %898, ptr %894, align 1, !tbaa !35, !alias.scope !336, !noalias !339
  store <4 x i8> %895, ptr %897, align 1, !tbaa !35, !alias.scope !339
  %899 = add nuw i32 %890, 4
  %900 = icmp eq i32 %899, %832
  br i1 %900, label %901, label %889, !llvm.loop !342

901:                                              ; preds = %889
  br i1 %834, label %920, label %902

902:                                              ; preds = %860, %854, %849, %882, %901
  %903 = phi i32 [ %852, %849 ], [ %852, %854 ], [ %852, %860 ], [ %883, %882 ], [ %887, %901 ]
  %904 = phi i32 [ %853, %849 ], [ %853, %854 ], [ %853, %860 ], [ %884, %882 ], [ %888, %901 ]
  %905 = phi i32 [ %803, %849 ], [ %803, %854 ], [ %803, %860 ], [ %830, %882 ], [ %833, %901 ]
  br label %906

906:                                              ; preds = %902, %906
  %907 = phi i32 [ %917, %906 ], [ %903, %902 ]
  %908 = phi i32 [ %916, %906 ], [ %904, %902 ]
  %909 = phi i32 [ %918, %906 ], [ %905, %902 ]
  %910 = sext i32 %908 to i64
  %911 = getelementptr inbounds i8, ptr %307, i64 %910
  %912 = load i8, ptr %911, align 1, !tbaa !35
  %913 = sext i32 %907 to i64
  %914 = getelementptr inbounds i8, ptr %307, i64 %913
  %915 = load i8, ptr %914, align 1, !tbaa !35
  store i8 %915, ptr %911, align 1, !tbaa !35
  store i8 %912, ptr %914, align 1, !tbaa !35
  %916 = add i32 %908, 1
  %917 = add i32 %907, 1
  %918 = add nsw i32 %909, -1
  %919 = icmp sgt i32 %909, 1
  br i1 %919, label %906, label %920, !llvm.loop !343

920:                                              ; preds = %906, %881, %901, %835
  %921 = add nuw nsw i32 %836, 1
  %922 = icmp eq i32 %836, %806
  br i1 %922, label %923, label %835, !llvm.loop !344

923:                                              ; preds = %385, %920, %798
  %924 = icmp samesign ult i8 %293, 3
  %925 = icmp eq i32 %295, 0
  %926 = or i1 %924, %925
  %927 = or i1 %926, %291
  br i1 %927, label %970, label %928

928:                                              ; preds = %923
  %929 = zext nneg i8 %293 to i64
  %930 = add nsw i32 %295, -1
  %931 = and i32 %295, 3
  %932 = icmp ult i32 %930, 3
  br i1 %932, label %958, label %933

933:                                              ; preds = %928
  %934 = and i32 %295, 67108860
  br label %935

935:                                              ; preds = %935, %933
  %936 = phi ptr [ %307, %933 ], [ %953, %935 ]
  %937 = phi i32 [ 0, %933 ], [ %954, %935 ]
  %938 = load i8, ptr %936, align 1, !tbaa !35
  %939 = getelementptr inbounds nuw i8, ptr %936, i64 2
  %940 = load i8, ptr %939, align 1, !tbaa !35
  store i8 %940, ptr %936, align 1, !tbaa !35
  store i8 %938, ptr %939, align 1, !tbaa !35
  %941 = getelementptr inbounds nuw i8, ptr %936, i64 %929
  %942 = load i8, ptr %941, align 1, !tbaa !35
  %943 = getelementptr inbounds nuw i8, ptr %941, i64 2
  %944 = load i8, ptr %943, align 1, !tbaa !35
  store i8 %944, ptr %941, align 1, !tbaa !35
  store i8 %942, ptr %943, align 1, !tbaa !35
  %945 = getelementptr inbounds nuw i8, ptr %941, i64 %929
  %946 = load i8, ptr %945, align 1, !tbaa !35
  %947 = getelementptr inbounds nuw i8, ptr %945, i64 2
  %948 = load i8, ptr %947, align 1, !tbaa !35
  store i8 %948, ptr %945, align 1, !tbaa !35
  store i8 %946, ptr %947, align 1, !tbaa !35
  %949 = getelementptr inbounds nuw i8, ptr %945, i64 %929
  %950 = load i8, ptr %949, align 1, !tbaa !35
  %951 = getelementptr inbounds nuw i8, ptr %949, i64 2
  %952 = load i8, ptr %951, align 1, !tbaa !35
  store i8 %952, ptr %949, align 1, !tbaa !35
  store i8 %950, ptr %951, align 1, !tbaa !35
  %953 = getelementptr inbounds nuw i8, ptr %949, i64 %929
  %954 = add i32 %937, 4
  %955 = icmp eq i32 %954, %934
  br i1 %955, label %956, label %935, !llvm.loop !345

956:                                              ; preds = %935
  %957 = icmp eq i32 %931, 0
  br i1 %957, label %970, label %958

958:                                              ; preds = %956, %928
  %959 = phi ptr [ %307, %928 ], [ %953, %956 ]
  %960 = icmp ne i32 %931, 0
  tail call void @llvm.assume(i1 %960)
  br label %961

961:                                              ; preds = %961, %958
  %962 = phi ptr [ %959, %958 ], [ %967, %961 ]
  %963 = phi i32 [ 0, %958 ], [ %968, %961 ]
  %964 = load i8, ptr %962, align 1, !tbaa !35
  %965 = getelementptr inbounds nuw i8, ptr %962, i64 2
  %966 = load i8, ptr %965, align 1, !tbaa !35
  store i8 %966, ptr %962, align 1, !tbaa !35
  store i8 %964, ptr %965, align 1, !tbaa !35
  %967 = getelementptr inbounds nuw i8, ptr %962, i64 %929
  %968 = add i32 %963, 1
  %969 = icmp eq i32 %968, %931
  br i1 %969, label %970, label %961, !llvm.loop !346

970:                                              ; preds = %956, %961, %331, %923
  %971 = icmp eq i8 %293, 4
  br i1 %971, label %974, label %972

972:                                              ; preds = %970
  %973 = tail call fastcc ptr @stbi__convert_format(ptr noundef nonnull %307, i32 noundef %294, i32 noundef %182, i32 noundef %183) #17
  br label %974

974:                                              ; preds = %417, %290, %282, %278, %970, %972, %456, %389, %266
  %975 = phi ptr [ %307, %970 ], [ null, %266 ], [ null, %417 ], [ null, %456 ], [ null, %290 ], [ null, %389 ], [ null, %282 ], [ %973, %972 ], [ null, %278 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  ret ptr %975
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none, target_mem0: none, target_mem1: none)
define internal fastcc ptr @stbi__convert_format(ptr noundef readonly captures(ret: address, provenance) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #10 {
  %5 = icmp eq i32 %1, 4
  br i1 %5, label %94, label %6

6:                                                ; preds = %4
  %7 = icmp ugt i32 %2, 536870911
  br i1 %7, label %94, label %8

8:                                                ; preds = %6
  %9 = shl nuw nsw i32 %2, 2
  %10 = icmp sgt i32 %3, -1
  br i1 %10, label %11, label %94

11:                                               ; preds = %8
  %12 = icmp eq i32 %3, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %11
  %14 = udiv i32 2147483647, %3
  %15 = icmp samesign ugt i32 %9, %14
  br i1 %15, label %94, label %16

16:                                               ; preds = %13, %11
  %17 = mul i32 %9, %3
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %18, 15
  %20 = and i64 %19, -16
  %21 = add nsw i64 %20, 16
  %22 = load i64, ptr @arena_used, align 8, !tbaa !19
  %23 = sub i64 100663296, %22
  %24 = icmp ugt i64 %21, %23
  br i1 %24, label %94, label %25

25:                                               ; preds = %16
  %26 = getelementptr inbounds nuw i8, ptr @arena, i64 %22
  %27 = add i64 %22, %21
  store i64 %27, ptr @arena_used, align 8, !tbaa !19
  store i64 %18, ptr %26, align 8, !tbaa !19
  %28 = getelementptr inbounds nuw i8, ptr %26, i64 16
  br i1 %12, label %94, label %29

29:                                               ; preds = %25
  %30 = shl i32 %1, 3
  %31 = or disjoint i32 %30, 4
  %32 = add nsw i32 %2, -1
  %33 = icmp eq i32 %2, 0
  switch i32 %31, label %94 [
    i32 20, label %34
    i32 28, label %34
    i32 12, label %34
  ]

34:                                               ; preds = %29, %29, %29
  %35 = zext nneg i32 %3 to i64
  br label %36

36:                                               ; preds = %34, %91
  %37 = phi i64 [ 0, %34 ], [ %92, %91 ]
  %38 = trunc nuw nsw i64 %37 to i32
  %39 = mul i32 %2, %38
  %40 = mul i32 %39, %1
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 %41
  %43 = shl i32 %39, 2
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds nuw i8, ptr %28, i64 %44
  switch i32 %31, label %46 [
    i32 20, label %48
    i32 28, label %47
  ]

46:                                               ; preds = %36
  br i1 %33, label %91, label %49

47:                                               ; preds = %36
  br i1 %33, label %91, label %75

48:                                               ; preds = %36
  br i1 %33, label %91, label %61

49:                                               ; preds = %46, %49
  %50 = phi i32 [ %59, %49 ], [ %32, %46 ]
  %51 = phi ptr [ %58, %49 ], [ %45, %46 ]
  %52 = phi ptr [ %57, %49 ], [ %42, %46 ]
  %53 = load i8, ptr %52, align 1, !tbaa !35
  %54 = getelementptr inbounds nuw i8, ptr %51, i64 2
  store i8 %53, ptr %54, align 1, !tbaa !35
  %55 = getelementptr inbounds nuw i8, ptr %51, i64 1
  store i8 %53, ptr %55, align 1, !tbaa !35
  store i8 %53, ptr %51, align 1, !tbaa !35
  %56 = getelementptr inbounds nuw i8, ptr %51, i64 3
  store i8 -1, ptr %56, align 1, !tbaa !35
  %57 = getelementptr inbounds nuw i8, ptr %52, i64 1
  %58 = getelementptr inbounds nuw i8, ptr %51, i64 4
  %59 = add i32 %50, -1
  %60 = icmp sgt i32 %59, -1
  br i1 %60, label %49, label %91, !llvm.loop !347

61:                                               ; preds = %48, %61
  %62 = phi i32 [ %73, %61 ], [ %32, %48 ]
  %63 = phi ptr [ %72, %61 ], [ %45, %48 ]
  %64 = phi ptr [ %71, %61 ], [ %42, %48 ]
  %65 = load i8, ptr %64, align 1, !tbaa !35
  %66 = getelementptr inbounds nuw i8, ptr %63, i64 2
  store i8 %65, ptr %66, align 1, !tbaa !35
  %67 = getelementptr inbounds nuw i8, ptr %63, i64 1
  store i8 %65, ptr %67, align 1, !tbaa !35
  store i8 %65, ptr %63, align 1, !tbaa !35
  %68 = getelementptr inbounds nuw i8, ptr %64, i64 1
  %69 = load i8, ptr %68, align 1, !tbaa !35
  %70 = getelementptr inbounds nuw i8, ptr %63, i64 3
  store i8 %69, ptr %70, align 1, !tbaa !35
  %71 = getelementptr inbounds nuw i8, ptr %64, i64 2
  %72 = getelementptr inbounds nuw i8, ptr %63, i64 4
  %73 = add i32 %62, -1
  %74 = icmp sgt i32 %73, -1
  br i1 %74, label %61, label %91, !llvm.loop !348

75:                                               ; preds = %47, %75
  %76 = phi i32 [ %89, %75 ], [ %32, %47 ]
  %77 = phi ptr [ %88, %75 ], [ %45, %47 ]
  %78 = phi ptr [ %87, %75 ], [ %42, %47 ]
  %79 = load i8, ptr %78, align 1, !tbaa !35
  store i8 %79, ptr %77, align 1, !tbaa !35
  %80 = getelementptr inbounds nuw i8, ptr %78, i64 1
  %81 = load i8, ptr %80, align 1, !tbaa !35
  %82 = getelementptr inbounds nuw i8, ptr %77, i64 1
  store i8 %81, ptr %82, align 1, !tbaa !35
  %83 = getelementptr inbounds nuw i8, ptr %78, i64 2
  %84 = load i8, ptr %83, align 1, !tbaa !35
  %85 = getelementptr inbounds nuw i8, ptr %77, i64 2
  store i8 %84, ptr %85, align 1, !tbaa !35
  %86 = getelementptr inbounds nuw i8, ptr %77, i64 3
  store i8 -1, ptr %86, align 1, !tbaa !35
  %87 = getelementptr inbounds nuw i8, ptr %78, i64 3
  %88 = getelementptr inbounds nuw i8, ptr %77, i64 4
  %89 = add i32 %76, -1
  %90 = icmp sgt i32 %89, -1
  br i1 %90, label %75, label %91, !llvm.loop !349

91:                                               ; preds = %75, %61, %49, %46, %47, %48
  %92 = add nuw nsw i64 %37, 1
  %93 = icmp eq i64 %92, %35
  br i1 %93, label %94, label %36, !llvm.loop !350

94:                                               ; preds = %91, %25, %29, %6, %13, %8, %16, %4
  %95 = phi ptr [ null, %13 ], [ %0, %4 ], [ null, %6 ], [ null, %16 ], [ null, %8 ], [ %28, %25 ], [ null, %29 ], [ %28, %91 ]
  ret ptr %95
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal fastcc range(i32 -1, 32) i32 @stbi__high_bit(i32 noundef %0) unnamed_addr #3 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %26, label %3

3:                                                ; preds = %1
  %4 = icmp ugt i32 %0, 65535
  %5 = lshr i32 %0, 16
  %6 = select i1 %4, i32 %5, i32 %0
  %7 = select i1 %4, i32 16, i32 0
  %8 = icmp samesign ugt i32 %6, 255
  %9 = or disjoint i32 %7, 8
  %10 = lshr i32 %6, 8
  %11 = select i1 %8, i32 %10, i32 %6
  %12 = select i1 %8, i32 %9, i32 %7
  %13 = icmp samesign ugt i32 %11, 15
  %14 = or disjoint i32 %12, 4
  %15 = lshr i32 %11, 4
  %16 = select i1 %13, i32 %15, i32 %11
  %17 = select i1 %13, i32 %14, i32 %12
  %18 = icmp samesign ugt i32 %16, 3
  %19 = or disjoint i32 %17, 2
  %20 = lshr i32 %16, 2
  %21 = select i1 %18, i32 %20, i32 %16
  %22 = select i1 %18, i32 %19, i32 %17
  %23 = icmp samesign ugt i32 %21, 1
  %24 = zext i1 %23 to i32
  %25 = add nuw nsw i32 %22, %24
  br label %26

26:                                               ; preds = %1, %3
  %27 = phi i32 [ %25, %3 ], [ -1, %1 ]
  ret i32 %27
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal fastcc range(i32 0, 64) i32 @stbi__bitcount(i32 noundef %0) unnamed_addr #3 {
  %2 = and i32 %0, 1431655765
  %3 = lshr i32 %0, 1
  %4 = and i32 %3, 1431655765
  %5 = add nuw i32 %4, %2
  %6 = and i32 %5, 858993459
  %7 = lshr i32 %5, 2
  %8 = and i32 %7, 858993459
  %9 = add nuw nsw i32 %8, %6
  %10 = lshr i32 %9, 4
  %11 = add nuw nsw i32 %10, %9
  %12 = and i32 %11, 252645135
  %13 = lshr i32 %12, 8
  %14 = add nuw nsw i32 %13, %12
  %15 = lshr i32 %14, 16
  %16 = add nuw nsw i32 %15, %14
  %17 = and i32 %16, 63
  ret i32 %17
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem0: none, target_mem1: none)
define internal fastcc void @stbi__out_gif_code(ptr noundef nonnull captures(none) %0, i16 noundef zeroext %1) unnamed_addr #11 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 2100
  %4 = zext i16 %1 to i64
  %5 = getelementptr inbounds nuw %struct.stbi__gif_lzw, ptr %3, i64 %4
  %6 = load i16, ptr %5, align 4, !tbaa !254
  %7 = icmp sgt i16 %6, -1
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  tail call fastcc void @stbi__out_gif_code(ptr noundef %0, i16 noundef zeroext %6) #17
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 34912
  %11 = load i32, ptr %10, align 8, !tbaa !351
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 34904
  %13 = load i32, ptr %12, align 8, !tbaa !248
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %79

15:                                               ; preds = %9
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 34908
  %17 = load i32, ptr %16, align 4, !tbaa !249
  %18 = add i32 %17, %11
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %20 = load ptr, ptr %19, align 8, !tbaa !239
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %22 = load ptr, ptr %21, align 8, !tbaa !241
  %23 = sdiv i32 %18, 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, ptr %22, i64 %24
  store i8 1, ptr %25, align 1, !tbaa !35
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 34872
  %27 = load ptr, ptr %26, align 8, !tbaa !253
  %28 = getelementptr inbounds nuw i8, ptr %5, i64 3
  %29 = load i8, ptr %28, align 1, !tbaa !257
  %30 = zext i8 %29 to i64
  %31 = shl nuw nsw i64 %30, 2
  %32 = getelementptr inbounds nuw i8, ptr %27, i64 %31
  %33 = getelementptr inbounds nuw i8, ptr %32, i64 3
  %34 = load i8, ptr %33, align 1, !tbaa !35
  %35 = icmp ugt i8 %34, -128
  br i1 %35, label %36, label %48

36:                                               ; preds = %15
  %37 = sext i32 %18 to i64
  %38 = getelementptr inbounds i8, ptr %20, i64 %37
  %39 = getelementptr inbounds nuw i8, ptr %32, i64 2
  %40 = load i8, ptr %39, align 1, !tbaa !35
  store i8 %40, ptr %38, align 1, !tbaa !35
  %41 = getelementptr inbounds nuw i8, ptr %32, i64 1
  %42 = load i8, ptr %41, align 1, !tbaa !35
  %43 = getelementptr inbounds nuw i8, ptr %38, i64 1
  store i8 %42, ptr %43, align 1, !tbaa !35
  %44 = load i8, ptr %32, align 1, !tbaa !35
  %45 = getelementptr inbounds nuw i8, ptr %38, i64 2
  store i8 %44, ptr %45, align 1, !tbaa !35
  %46 = load i8, ptr %33, align 1, !tbaa !35
  %47 = getelementptr inbounds nuw i8, ptr %38, i64 3
  store i8 %46, ptr %47, align 1, !tbaa !35
  br label %48

48:                                               ; preds = %36, %15
  %49 = load i32, ptr %16, align 4, !tbaa !249
  %50 = add i32 %49, 4
  store i32 %50, ptr %16, align 4, !tbaa !249
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 34900
  %52 = load i32, ptr %51, align 4, !tbaa !247
  %53 = icmp slt i32 %50, %52
  br i1 %53, label %79, label %54

54:                                               ; preds = %48
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 34892
  %56 = load i32, ptr %55, align 4, !tbaa !245
  store i32 %56, ptr %16, align 4, !tbaa !249
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 34884
  %58 = load i32, ptr %57, align 4, !tbaa !251
  %59 = load i32, ptr %10, align 8, !tbaa !351
  %60 = add i32 %59, %58
  store i32 %60, ptr %10, align 8, !tbaa !351
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 34880
  %62 = load i32, ptr %12, align 8, !tbaa !248
  %63 = icmp slt i32 %60, %62
  br i1 %63, label %79, label %64

64:                                               ; preds = %54
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 34916
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 34896
  %67 = load i32, ptr %61, align 8, !tbaa !252
  br label %68

68:                                               ; preds = %64, %71
  %69 = phi i32 [ %67, %64 ], [ %77, %71 ]
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %68
  %72 = load i32, ptr %65, align 4, !tbaa !244
  %73 = shl i32 %72, %69
  store i32 %73, ptr %57, align 4, !tbaa !251
  %74 = load i32, ptr %66, align 8, !tbaa !246
  %75 = ashr i32 %73, 1
  %76 = add i32 %74, %75
  store i32 %76, ptr %10, align 8, !tbaa !351
  %77 = add nsw i32 %69, -1
  store i32 %77, ptr %61, align 8, !tbaa !252
  %78 = icmp slt i32 %76, %62
  br i1 %78, label %79, label %68, !llvm.loop !352

79:                                               ; preds = %68, %71, %54, %48, %9
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite)
define internal void @stbi__idct_block(ptr noundef writeonly captures(none) %0, i32 noundef %1, ptr noundef readonly captures(none) %2) #5 {
  %4 = alloca [64 x i32], align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  br label %7

5:                                                ; preds = %135
  %6 = sext i32 %1 to i64
  br label %140

7:                                                ; preds = %3, %135
  %8 = phi i32 [ 0, %3 ], [ %136, %135 ]
  %9 = phi ptr [ %4, %3 ], [ %138, %135 ]
  %10 = phi ptr [ %2, %3 ], [ %137, %135 ]
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %12 = load i16, ptr %11, align 2, !tbaa !39
  %13 = icmp eq i16 %12, 0
  %14 = getelementptr inbounds nuw i8, ptr %10, i64 32
  %15 = load i16, ptr %14, align 2, !tbaa !39
  %16 = icmp eq i16 %15, 0
  %17 = select i1 %13, i1 %16, i1 false
  br i1 %17, label %18, label %49

18:                                               ; preds = %7
  %19 = getelementptr inbounds nuw i8, ptr %10, i64 48
  %20 = load i16, ptr %19, align 2, !tbaa !39
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %49

22:                                               ; preds = %18
  %23 = getelementptr inbounds nuw i8, ptr %10, i64 64
  %24 = load i16, ptr %23, align 2, !tbaa !39
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %26, label %49

26:                                               ; preds = %22
  %27 = getelementptr inbounds nuw i8, ptr %10, i64 80
  %28 = load i16, ptr %27, align 2, !tbaa !39
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %30, label %49

30:                                               ; preds = %26
  %31 = getelementptr inbounds nuw i8, ptr %10, i64 96
  %32 = load i16, ptr %31, align 2, !tbaa !39
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %30
  %35 = getelementptr inbounds nuw i8, ptr %10, i64 112
  %36 = load i16, ptr %35, align 2, !tbaa !39
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %34
  %39 = load i16, ptr %10, align 2, !tbaa !39
  %40 = sext i16 %39 to i32
  %41 = shl nsw i32 %40, 2
  %42 = getelementptr inbounds nuw i8, ptr %9, i64 224
  store i32 %41, ptr %42, align 4, !tbaa !4
  %43 = getelementptr inbounds nuw i8, ptr %9, i64 192
  store i32 %41, ptr %43, align 4, !tbaa !4
  %44 = getelementptr inbounds nuw i8, ptr %9, i64 160
  store i32 %41, ptr %44, align 4, !tbaa !4
  %45 = getelementptr inbounds nuw i8, ptr %9, i64 128
  store i32 %41, ptr %45, align 4, !tbaa !4
  %46 = getelementptr inbounds nuw i8, ptr %9, i64 96
  store i32 %41, ptr %46, align 4, !tbaa !4
  %47 = getelementptr inbounds nuw i8, ptr %9, i64 64
  store i32 %41, ptr %47, align 4, !tbaa !4
  %48 = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i32 %41, ptr %48, align 4, !tbaa !4
  store i32 %41, ptr %9, align 4, !tbaa !4
  br label %135

49:                                               ; preds = %7, %34, %30, %26, %22, %18
  %50 = phi i16 [ %15, %7 ], [ 0, %34 ], [ 0, %30 ], [ 0, %26 ], [ 0, %22 ], [ 0, %18 ]
  %51 = sext i16 %50 to i32
  %52 = getelementptr inbounds nuw i8, ptr %10, i64 96
  %53 = load i16, ptr %52, align 2, !tbaa !39
  %54 = sext i16 %53 to i32
  %55 = add nsw i32 %54, %51
  %56 = mul nsw i32 %55, 2217
  %57 = mul nsw i32 %54, -7567
  %58 = add nsw i32 %56, %57
  %59 = mul nsw i32 %51, 3135
  %60 = add nsw i32 %56, %59
  %61 = load i16, ptr %10, align 2, !tbaa !39
  %62 = sext i16 %61 to i32
  %63 = getelementptr inbounds nuw i8, ptr %10, i64 64
  %64 = load i16, ptr %63, align 2, !tbaa !39
  %65 = sext i16 %64 to i32
  %66 = add nsw i32 %65, %62
  %67 = shl nsw i32 %66, 12
  %68 = sub nsw i32 %62, %65
  %69 = shl nsw i32 %68, 12
  %70 = sub nsw i32 %67, %60
  %71 = sub nsw i32 %69, %58
  %72 = getelementptr inbounds nuw i8, ptr %10, i64 112
  %73 = load i16, ptr %72, align 2, !tbaa !39
  %74 = sext i16 %73 to i32
  %75 = getelementptr inbounds nuw i8, ptr %10, i64 80
  %76 = load i16, ptr %75, align 2, !tbaa !39
  %77 = sext i16 %76 to i32
  %78 = getelementptr inbounds nuw i8, ptr %10, i64 48
  %79 = load i16, ptr %78, align 2, !tbaa !39
  %80 = sext i16 %79 to i32
  %81 = sext i16 %12 to i32
  %82 = add nsw i32 %80, %74
  %83 = add nsw i32 %77, %81
  %84 = add nsw i32 %74, %81
  %85 = add nsw i32 %80, %77
  %86 = add nsw i32 %82, %83
  %87 = mul nsw i32 %86, 4816
  %88 = mul nsw i32 %74, 1223
  %89 = mul nsw i32 %77, 8410
  %90 = mul nsw i32 %80, 12586
  %91 = mul nsw i32 %81, 6149
  %92 = mul nsw i32 %84, -3685
  %93 = add nsw i32 %87, %92
  %94 = mul nsw i32 %85, -10497
  %95 = add nsw i32 %87, %94
  %96 = mul nsw i32 %82, -8034
  %97 = mul nsw i32 %83, -1597
  %98 = add nsw i32 %97, %91
  %99 = add nsw i32 %98, %93
  %100 = add nsw i32 %96, %90
  %101 = add i32 %100, %95
  %102 = add nsw i32 %97, %89
  %103 = add nsw i32 %102, %95
  %104 = add nsw i32 %96, %88
  %105 = add nsw i32 %104, %93
  %106 = add nsw i32 %60, 512
  %107 = add nsw i32 %106, %67
  %108 = add nsw i32 %58, 512
  %109 = add nsw i32 %108, %69
  %110 = add nsw i32 %71, 512
  %111 = add nsw i32 %70, 512
  %112 = add nsw i32 %99, %107
  %113 = ashr i32 %112, 10
  store i32 %113, ptr %9, align 4, !tbaa !4
  %114 = sub nsw i32 %107, %99
  %115 = ashr i32 %114, 10
  %116 = getelementptr inbounds nuw i8, ptr %9, i64 224
  store i32 %115, ptr %116, align 4, !tbaa !4
  %117 = add i32 %101, %109
  %118 = ashr i32 %117, 10
  %119 = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i32 %118, ptr %119, align 4, !tbaa !4
  %120 = sub i32 %109, %101
  %121 = ashr i32 %120, 10
  %122 = getelementptr inbounds nuw i8, ptr %9, i64 192
  store i32 %121, ptr %122, align 4, !tbaa !4
  %123 = add i32 %103, %110
  %124 = ashr i32 %123, 10
  %125 = getelementptr inbounds nuw i8, ptr %9, i64 64
  store i32 %124, ptr %125, align 4, !tbaa !4
  %126 = sub i32 %110, %103
  %127 = ashr i32 %126, 10
  %128 = getelementptr inbounds nuw i8, ptr %9, i64 160
  store i32 %127, ptr %128, align 4, !tbaa !4
  %129 = add nsw i32 %105, %111
  %130 = ashr i32 %129, 10
  %131 = getelementptr inbounds nuw i8, ptr %9, i64 96
  store i32 %130, ptr %131, align 4, !tbaa !4
  %132 = sub nsw i32 %111, %105
  %133 = ashr i32 %132, 10
  %134 = getelementptr inbounds nuw i8, ptr %9, i64 128
  store i32 %133, ptr %134, align 4, !tbaa !4
  br label %135

135:                                              ; preds = %38, %49
  %136 = add nuw nsw i32 %8, 1
  %137 = getelementptr inbounds nuw i8, ptr %10, i64 2
  %138 = getelementptr inbounds nuw i8, ptr %9, i64 4
  %139 = icmp eq i32 %136, 8
  br i1 %139, label %5, label %7, !llvm.loop !353

140:                                              ; preds = %5, %140
  %141 = phi i32 [ 0, %5 ], [ %230, %140 ]
  %142 = phi ptr [ %4, %5 ], [ %231, %140 ]
  %143 = phi ptr [ %0, %5 ], [ %232, %140 ]
  %144 = getelementptr inbounds nuw i8, ptr %142, i64 8
  %145 = load i32, ptr %144, align 4, !tbaa !4
  %146 = getelementptr inbounds nuw i8, ptr %142, i64 24
  %147 = load i32, ptr %146, align 4, !tbaa !4
  %148 = add i32 %147, %145
  %149 = mul i32 %148, 2217
  %150 = mul i32 %147, -7567
  %151 = mul i32 %145, 3135
  %152 = load i32, ptr %142, align 4, !tbaa !4
  %153 = getelementptr inbounds nuw i8, ptr %142, i64 16
  %154 = load i32, ptr %153, align 4, !tbaa !4
  %155 = add i32 %154, %152
  %156 = sub i32 %152, %154
  %157 = getelementptr inbounds nuw i8, ptr %142, i64 28
  %158 = load i32, ptr %157, align 4, !tbaa !4
  %159 = getelementptr inbounds nuw i8, ptr %142, i64 20
  %160 = load i32, ptr %159, align 4, !tbaa !4
  %161 = getelementptr inbounds nuw i8, ptr %142, i64 12
  %162 = load i32, ptr %161, align 4, !tbaa !4
  %163 = getelementptr inbounds nuw i8, ptr %142, i64 4
  %164 = load i32, ptr %163, align 4, !tbaa !4
  %165 = getelementptr inbounds nuw i8, ptr %143, i64 4
  %166 = add i32 %149, %151
  %167 = add i32 %149, %150
  %168 = shl i32 %156, 12
  %169 = shl i32 %155, 12
  %170 = add i32 %164, %160
  %171 = add i32 %162, %158
  %172 = add i32 %162, %160
  %173 = add i32 %164, %158
  %174 = add i32 %170, %171
  %175 = mul i32 %174, 4816
  %176 = mul i32 %164, 6149
  %177 = mul i32 %162, 12586
  %178 = mul i32 %160, 8410
  %179 = mul i32 %158, 1223
  %180 = mul i32 %172, -10497
  %181 = mul i32 %173, -3685
  %182 = add i32 %175, %180
  %183 = add i32 %175, %181
  %184 = mul i32 %170, -1597
  %185 = mul i32 %171, -8034
  %186 = add i32 %184, %176
  %187 = add i32 %185, %177
  %188 = add i32 %184, %178
  %189 = add i32 %185, %179
  %190 = add i32 %186, %183
  %191 = add i32 %187, %182
  %192 = add i32 %188, %182
  %193 = add i32 %189, %183
  %194 = add i32 %166, 16842752
  %195 = add i32 %167, 16842752
  %196 = sub i32 %168, %167
  %197 = sub i32 %169, %166
  %198 = add i32 %194, %169
  %199 = add i32 %195, %168
  %200 = add i32 %196, 16842752
  %201 = add i32 %197, 16842752
  %202 = add i32 %193, %201
  %203 = add i32 %192, %200
  %204 = add i32 %191, %199
  %205 = add i32 %190, %198
  %206 = insertelement <4 x i32> poison, i32 %205, i64 0
  %207 = insertelement <4 x i32> %206, i32 %204, i64 1
  %208 = insertelement <4 x i32> %207, i32 %203, i64 2
  %209 = insertelement <4 x i32> %208, i32 %202, i64 3
  %210 = ashr <4 x i32> %209, splat (i32 17)
  %211 = icmp ugt <4 x i32> %210, splat (i32 255)
  %212 = trunc <4 x i32> %210 to <4 x i8>
  %213 = icmp sgt <4 x i32> %210, splat (i32 -1)
  %214 = sext <4 x i1> %213 to <4 x i8>
  %215 = select <4 x i1> %211, <4 x i8> %214, <4 x i8> %212
  store <4 x i8> %215, ptr %143, align 1, !tbaa !35
  %216 = sub i32 %198, %190
  %217 = sub i32 %199, %191
  %218 = sub i32 %200, %192
  %219 = sub i32 %201, %193
  %220 = insertelement <4 x i32> poison, i32 %219, i64 0
  %221 = insertelement <4 x i32> %220, i32 %218, i64 1
  %222 = insertelement <4 x i32> %221, i32 %217, i64 2
  %223 = insertelement <4 x i32> %222, i32 %216, i64 3
  %224 = ashr <4 x i32> %223, splat (i32 17)
  %225 = icmp ugt <4 x i32> %224, splat (i32 255)
  %226 = trunc <4 x i32> %224 to <4 x i8>
  %227 = icmp sgt <4 x i32> %224, splat (i32 -1)
  %228 = sext <4 x i1> %227 to <4 x i8>
  %229 = select <4 x i1> %225, <4 x i8> %228, <4 x i8> %226
  store <4 x i8> %229, ptr %165, align 1, !tbaa !35
  %230 = add nuw nsw i32 %141, 1
  %231 = getelementptr inbounds nuw i8, ptr %142, i64 32
  %232 = getelementptr inbounds i8, ptr %143, i64 %6
  %233 = icmp eq i32 %230, 8
  br i1 %233, label %234, label %140, !llvm.loop !354

234:                                              ; preds = %140
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite)
define internal void @stbi__YCbCr_to_RGB_row(ptr noundef writeonly captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5) #5 {
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %8, label %54

8:                                                ; preds = %6
  %9 = sext i32 %5 to i64
  %10 = zext nneg i32 %4 to i64
  br label %11

11:                                               ; preds = %8, %11
  %12 = phi i64 [ 0, %8 ], [ %52, %11 ]
  %13 = phi ptr [ %0, %8 ], [ %51, %11 ]
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 %12
  %15 = load i8, ptr %14, align 1, !tbaa !35
  %16 = zext i8 %15 to i32
  %17 = shl nuw nsw i32 %16, 20
  %18 = or disjoint i32 %17, 524288
  %19 = getelementptr inbounds nuw i8, ptr %3, i64 %12
  %20 = load i8, ptr %19, align 1, !tbaa !35
  %21 = zext i8 %20 to i32
  %22 = add nsw i32 %21, -128
  %23 = getelementptr inbounds nuw i8, ptr %2, i64 %12
  %24 = load i8, ptr %23, align 1, !tbaa !35
  %25 = zext i8 %24 to i32
  %26 = add nsw i32 %25, -128
  %27 = mul nsw i32 %22, 1470208
  %28 = add nsw i32 %27, %18
  %29 = mul nsw i32 %22, -748800
  %30 = add nsw i32 %29, %18
  %31 = mul nsw i32 %26, -360960
  %32 = and i32 %31, -65536
  %33 = add i32 %30, %32
  %34 = mul nsw i32 %26, 1858048
  %35 = add nsw i32 %34, %18
  %36 = ashr i32 %28, 20
  %37 = ashr i32 %33, 20
  %38 = ashr i32 %35, 20
  %39 = tail call i32 @llvm.smax.i32(i32 %36, i32 0)
  %40 = tail call i32 @llvm.umin.i32(i32 %39, i32 255)
  %41 = tail call i32 @llvm.smax.i32(i32 %37, i32 0)
  %42 = tail call i32 @llvm.umin.i32(i32 %41, i32 255)
  %43 = tail call i32 @llvm.smax.i32(i32 %38, i32 0)
  %44 = tail call i32 @llvm.umin.i32(i32 %43, i32 255)
  %45 = trunc nuw i32 %40 to i8
  store i8 %45, ptr %13, align 1, !tbaa !35
  %46 = trunc nuw i32 %42 to i8
  %47 = getelementptr inbounds nuw i8, ptr %13, i64 1
  store i8 %46, ptr %47, align 1, !tbaa !35
  %48 = trunc nuw i32 %44 to i8
  %49 = getelementptr inbounds nuw i8, ptr %13, i64 2
  store i8 %48, ptr %49, align 1, !tbaa !35
  %50 = getelementptr inbounds nuw i8, ptr %13, i64 3
  store i8 -1, ptr %50, align 1, !tbaa !35
  %51 = getelementptr inbounds i8, ptr %13, i64 %9
  %52 = add nuw nsw i64 %12, 1
  %53 = icmp eq i64 %52, %10
  br i1 %53, label %54, label %11, !llvm.loop !355

54:                                               ; preds = %11, %6
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite)
define internal noundef ptr @stbi__resample_row_hv_2(ptr noundef returned writeonly captures(ret: address, provenance) initializes((0, 1)) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, i32 noundef %3, i32 %4) #5 {
  %6 = icmp eq i32 %3, 1
  %7 = load i8, ptr %1, align 1, !tbaa !35
  %8 = load i8, ptr %2, align 1, !tbaa !35
  br i1 %6, label %9, label %18

9:                                                ; preds = %5
  %10 = zext i8 %7 to i16
  %11 = mul nuw nsw i16 %10, 3
  %12 = zext i8 %8 to i16
  %13 = add nuw nsw i16 %12, 2
  %14 = add nuw nsw i16 %13, %11
  %15 = lshr i16 %14, 2
  %16 = trunc nuw i16 %15 to i8
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %16, ptr %17, align 1, !tbaa !35
  store i8 %16, ptr %0, align 1, !tbaa !35
  br label %135

18:                                               ; preds = %5
  %19 = zext i8 %7 to i32
  %20 = mul nuw nsw i32 %19, 3
  %21 = zext i8 %8 to i32
  %22 = add nuw nsw i32 %20, %21
  %23 = add nuw nsw i32 %22, 2
  %24 = lshr i32 %23, 2
  %25 = trunc nuw i32 %24 to i8
  store i8 %25, ptr %0, align 1, !tbaa !35
  %26 = icmp sgt i32 %3, 1
  br i1 %26, label %27, label %129

27:                                               ; preds = %18
  %28 = zext nneg i32 %3 to i64
  %29 = add nsw i64 %28, -1
  %30 = icmp ult i32 %3, 17
  br i1 %30, label %90, label %31

31:                                               ; preds = %27
  %32 = add nsw i64 %28, -2
  %33 = trunc i64 %32 to i32
  %34 = shl i32 %33, 1
  %35 = icmp ugt i32 %34, 2147483645
  %36 = icmp ugt i64 %32, 2147483647
  %37 = or i1 %35, %36
  br i1 %37, label %90, label %38

38:                                               ; preds = %31
  %39 = getelementptr i8, ptr %1, i64 1
  %40 = getelementptr i8, ptr %1, i64 %28
  %41 = getelementptr i8, ptr %0, i64 1
  %42 = shl nuw nsw i64 %28, 1
  %43 = getelementptr i8, ptr %0, i64 %42
  %44 = getelementptr i8, ptr %43, i64 -1
  %45 = getelementptr i8, ptr %2, i64 1
  %46 = getelementptr i8, ptr %2, i64 %28
  %47 = icmp ult ptr %39, %44
  %48 = icmp ult ptr %41, %40
  %49 = and i1 %47, %48
  %50 = icmp ult ptr %45, %44
  %51 = icmp ult ptr %41, %46
  %52 = and i1 %50, %51
  %53 = or i1 %49, %52
  br i1 %53, label %90, label %54

54:                                               ; preds = %38
  %55 = and i64 %29, -8
  %56 = or disjoint i64 %55, 1
  %57 = insertelement <8 x i32> poison, i32 %22, i64 7
  br label %58

58:                                               ; preds = %58, %54
  %59 = phi i64 [ 0, %54 ], [ %85, %58 ]
  %60 = phi <8 x i32> [ %57, %54 ], [ %69, %58 ]
  %61 = or disjoint i64 %59, 1
  %62 = getelementptr inbounds nuw i8, ptr %1, i64 %61
  %63 = load <8 x i8>, ptr %62, align 1, !tbaa !35, !alias.scope !356, !noalias !359
  %64 = zext <8 x i8> %63 to <8 x i32>
  %65 = mul nuw nsw <8 x i32> %64, splat (i32 3)
  %66 = getelementptr inbounds nuw i8, ptr %2, i64 %61
  %67 = load <8 x i8>, ptr %66, align 1, !tbaa !35, !alias.scope !361, !noalias !359
  %68 = zext <8 x i8> %67 to <8 x i32>
  %69 = add nuw nsw <8 x i32> %65, %68
  %70 = shufflevector <8 x i32> %60, <8 x i32> %69, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %71 = mul nuw nsw <8 x i32> %70, splat (i32 3)
  %72 = add nuw nsw <8 x i32> %71, splat (i32 8)
  %73 = add nuw nsw <8 x i32> %72, %69
  %74 = lshr <8 x i32> %73, splat (i32 4)
  %75 = shl i64 %61, 33
  %76 = add nsw i64 %75, -4294967296
  %77 = ashr exact i64 %76, 32
  %78 = getelementptr inbounds i8, ptr %0, i64 %77
  %79 = mul nuw nsw <8 x i32> %69, splat (i32 3)
  %80 = add nuw nsw <8 x i32> %70, splat (i32 8)
  %81 = add nuw nsw <8 x i32> %80, %79
  %82 = lshr <8 x i32> %81, splat (i32 4)
  %83 = shufflevector <8 x i32> %74, <8 x i32> %82, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %84 = trunc nuw <16 x i32> %83 to <16 x i8>
  store <16 x i8> %84, ptr %78, align 1, !tbaa !35, !alias.scope !359
  %85 = add nuw i64 %59, 8
  %86 = icmp eq i64 %85, %55
  br i1 %86, label %87, label %58, !llvm.loop !363

87:                                               ; preds = %58
  %88 = extractelement <8 x i32> %69, i64 7
  %89 = icmp eq i64 %29, %55
  br i1 %89, label %124, label %90

90:                                               ; preds = %38, %31, %27, %87
  %91 = phi i64 [ 1, %38 ], [ 1, %31 ], [ 1, %27 ], [ %56, %87 ]
  %92 = phi i32 [ %22, %38 ], [ %22, %31 ], [ %22, %27 ], [ %88, %87 ]
  br label %93

93:                                               ; preds = %90, %93
  %94 = phi i64 [ %122, %93 ], [ %91, %90 ]
  %95 = phi i32 [ %103, %93 ], [ %92, %90 ]
  %96 = getelementptr inbounds nuw i8, ptr %1, i64 %94
  %97 = load i8, ptr %96, align 1, !tbaa !35
  %98 = zext i8 %97 to i32
  %99 = mul nuw nsw i32 %98, 3
  %100 = getelementptr inbounds nuw i8, ptr %2, i64 %94
  %101 = load i8, ptr %100, align 1, !tbaa !35
  %102 = zext i8 %101 to i32
  %103 = add nuw nsw i32 %99, %102
  %104 = mul nuw nsw i32 %95, 3
  %105 = add nuw nsw i32 %104, 8
  %106 = add nuw nsw i32 %105, %103
  %107 = lshr i32 %106, 4
  %108 = trunc nuw i32 %107 to i8
  %109 = shl i64 %94, 33
  %110 = add i64 %109, -4294967296
  %111 = ashr exact i64 %110, 32
  %112 = getelementptr inbounds i8, ptr %0, i64 %111
  store i8 %108, ptr %112, align 1, !tbaa !35
  %113 = mul nuw nsw i32 %103, 3
  %114 = add nuw nsw i32 %95, 8
  %115 = add nuw nsw i32 %114, %113
  %116 = lshr i32 %115, 4
  %117 = trunc nuw i32 %116 to i8
  %118 = trunc i64 %94 to i32
  %119 = shl i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, ptr %0, i64 %120
  store i8 %117, ptr %121, align 1, !tbaa !35
  %122 = add nuw nsw i64 %94, 1
  %123 = icmp eq i64 %122, %28
  br i1 %123, label %124, label %93, !llvm.loop !364

124:                                              ; preds = %93, %87
  %125 = phi i32 [ %88, %87 ], [ %103, %93 ]
  %126 = add nuw nsw i32 %125, 2
  %127 = lshr i32 %126, 2
  %128 = trunc nuw i32 %127 to i8
  br label %129

129:                                              ; preds = %124, %18
  %130 = phi i8 [ %128, %124 ], [ %25, %18 ]
  %131 = shl i32 %3, 1
  %132 = add i32 %131, -1
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, ptr %0, i64 %133
  store i8 %130, ptr %134, align 1, !tbaa !35
  br label %135

135:                                              ; preds = %129, %9
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal noundef ptr @resample_row_1(ptr readnone captures(none) %0, ptr noundef readnone returned captures(ret: address, provenance) %1, ptr readnone captures(none) %2, i32 %3, i32 %4) #3 {
  ret ptr %1
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite)
define internal noundef ptr @stbi__resample_row_v_2(ptr noundef returned writeonly captures(ret: address, provenance) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, i32 noundef %3, i32 %4) #5 {
  %6 = ptrtoint ptr %2 to i64
  %7 = ptrtoint ptr %1 to i64
  %8 = ptrtoint ptr %0 to i64
  %9 = icmp sgt i32 %3, 0
  br i1 %9, label %10, label %116

10:                                               ; preds = %5
  %11 = zext nneg i32 %3 to i64
  %12 = icmp ult i32 %3, 4
  br i1 %12, label %65, label %13

13:                                               ; preds = %10
  %14 = sub i64 %8, %7
  %15 = icmp ult i64 %14, 16
  %16 = sub i64 %8, %6
  %17 = icmp ult i64 %16, 16
  %18 = or i1 %15, %17
  br i1 %18, label %65, label %19

19:                                               ; preds = %13
  %20 = icmp ult i32 %3, 16
  br i1 %20, label %44, label %21

21:                                               ; preds = %19
  %22 = and i64 %11, 12
  %23 = and i64 %11, 2147483632
  br label %24

24:                                               ; preds = %24, %21
  %25 = phi i64 [ 0, %21 ], [ %38, %24 ]
  %26 = getelementptr inbounds nuw i8, ptr %1, i64 %25
  %27 = load <16 x i8>, ptr %26, align 1, !tbaa !35
  %28 = zext <16 x i8> %27 to <16 x i16>
  %29 = mul nuw nsw <16 x i16> %28, splat (i16 3)
  %30 = getelementptr inbounds nuw i8, ptr %2, i64 %25
  %31 = load <16 x i8>, ptr %30, align 1, !tbaa !35
  %32 = zext <16 x i8> %31 to <16 x i16>
  %33 = add nuw nsw <16 x i16> %32, splat (i16 2)
  %34 = add nuw nsw <16 x i16> %33, %29
  %35 = lshr <16 x i16> %34, splat (i16 2)
  %36 = trunc nuw <16 x i16> %35 to <16 x i8>
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 %25
  store <16 x i8> %36, ptr %37, align 1, !tbaa !35
  %38 = add nuw i64 %25, 16
  %39 = icmp eq i64 %38, %23
  br i1 %39, label %40, label %24, !llvm.loop !365

40:                                               ; preds = %24
  %41 = icmp eq i64 %23, %11
  br i1 %41, label %116, label %42

42:                                               ; preds = %40
  %43 = icmp eq i64 %22, 0
  br i1 %43, label %65, label %44, !prof !50

44:                                               ; preds = %19, %42
  %45 = phi i64 [ %23, %42 ], [ 0, %19 ]
  %46 = and i64 %11, 2147483644
  br label %47

47:                                               ; preds = %47, %44
  %48 = phi i64 [ %45, %44 ], [ %61, %47 ]
  %49 = getelementptr inbounds nuw i8, ptr %1, i64 %48
  %50 = load <4 x i8>, ptr %49, align 1, !tbaa !35
  %51 = zext <4 x i8> %50 to <4 x i16>
  %52 = mul nuw nsw <4 x i16> %51, splat (i16 3)
  %53 = getelementptr inbounds nuw i8, ptr %2, i64 %48
  %54 = load <4 x i8>, ptr %53, align 1, !tbaa !35
  %55 = zext <4 x i8> %54 to <4 x i16>
  %56 = add nuw nsw <4 x i16> %55, splat (i16 2)
  %57 = add nuw nsw <4 x i16> %56, %52
  %58 = lshr <4 x i16> %57, splat (i16 2)
  %59 = trunc nuw <4 x i16> %58 to <4 x i8>
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 %48
  store <4 x i8> %59, ptr %60, align 1, !tbaa !35
  %61 = add nuw i64 %48, 4
  %62 = icmp eq i64 %61, %46
  br i1 %62, label %63, label %47, !llvm.loop !366

63:                                               ; preds = %47
  %64 = icmp eq i64 %46, %11
  br i1 %64, label %116, label %65

65:                                               ; preds = %13, %10, %42, %63
  %66 = phi i64 [ 0, %10 ], [ 0, %13 ], [ %23, %42 ], [ %46, %63 ]
  %67 = and i64 %11, 1
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %83, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds nuw i8, ptr %1, i64 %66
  %71 = load i8, ptr %70, align 1, !tbaa !35
  %72 = zext i8 %71 to i16
  %73 = mul nuw nsw i16 %72, 3
  %74 = getelementptr inbounds nuw i8, ptr %2, i64 %66
  %75 = load i8, ptr %74, align 1, !tbaa !35
  %76 = zext i8 %75 to i16
  %77 = add nuw nsw i16 %76, 2
  %78 = add nuw nsw i16 %77, %73
  %79 = lshr i16 %78, 2
  %80 = trunc nuw i16 %79 to i8
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 %66
  store i8 %80, ptr %81, align 1, !tbaa !35
  %82 = or disjoint i64 %66, 1
  br label %83

83:                                               ; preds = %69, %65
  %84 = phi i64 [ %66, %65 ], [ %82, %69 ]
  %85 = add nsw i64 %11, -1
  %86 = icmp eq i64 %66, %85
  br i1 %86, label %116, label %87

87:                                               ; preds = %83, %87
  %88 = phi i64 [ %114, %87 ], [ %84, %83 ]
  %89 = getelementptr inbounds nuw i8, ptr %1, i64 %88
  %90 = load i8, ptr %89, align 1, !tbaa !35
  %91 = zext i8 %90 to i16
  %92 = mul nuw nsw i16 %91, 3
  %93 = getelementptr inbounds nuw i8, ptr %2, i64 %88
  %94 = load i8, ptr %93, align 1, !tbaa !35
  %95 = zext i8 %94 to i16
  %96 = add nuw nsw i16 %95, 2
  %97 = add nuw nsw i16 %96, %92
  %98 = lshr i16 %97, 2
  %99 = trunc nuw i16 %98 to i8
  %100 = getelementptr inbounds nuw i8, ptr %0, i64 %88
  store i8 %99, ptr %100, align 1, !tbaa !35
  %101 = add nuw nsw i64 %88, 1
  %102 = getelementptr inbounds nuw i8, ptr %1, i64 %101
  %103 = load i8, ptr %102, align 1, !tbaa !35
  %104 = zext i8 %103 to i16
  %105 = mul nuw nsw i16 %104, 3
  %106 = getelementptr inbounds nuw i8, ptr %2, i64 %101
  %107 = load i8, ptr %106, align 1, !tbaa !35
  %108 = zext i8 %107 to i16
  %109 = add nuw nsw i16 %108, 2
  %110 = add nuw nsw i16 %109, %105
  %111 = lshr i16 %110, 2
  %112 = trunc nuw i16 %111 to i8
  %113 = getelementptr inbounds nuw i8, ptr %0, i64 %101
  store i8 %112, ptr %113, align 1, !tbaa !35
  %114 = add nuw nsw i64 %88, 2
  %115 = icmp eq i64 %114, %11
  br i1 %115, label %116, label %87, !llvm.loop !367

116:                                              ; preds = %83, %87, %40, %63, %5
  ret ptr %0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite)
define internal noundef ptr @stbi__resample_row_h_2(ptr noundef returned writeonly captures(ret: address, provenance) initializes((0, 2)) %0, ptr noundef readonly captures(none) %1, ptr readnone captures(none) %2, i32 noundef %3, i32 %4) #5 {
  %6 = icmp eq i32 %3, 1
  %7 = load i8, ptr %1, align 1, !tbaa !35
  br i1 %6, label %8, label %10

8:                                                ; preds = %5
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %7, ptr %9, align 1, !tbaa !35
  store i8 %7, ptr %0, align 1, !tbaa !35
  br label %130

10:                                               ; preds = %5
  store i8 %7, ptr %0, align 1, !tbaa !35
  %11 = zext i8 %7 to i16
  %12 = mul nuw nsw i16 %11, 3
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %14 = load i8, ptr %13, align 1, !tbaa !35
  %15 = zext i8 %14 to i16
  %16 = add nuw nsw i16 %15, 2
  %17 = add nuw nsw i16 %16, %12
  %18 = lshr i16 %17, 2
  %19 = trunc nuw i16 %18 to i8
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %19, ptr %20, align 1, !tbaa !35
  %21 = add i32 %3, -1
  %22 = icmp sgt i32 %21, 1
  br i1 %22, label %23, label %111

23:                                               ; preds = %10
  %24 = zext nneg i32 %21 to i64
  %25 = add nsw i64 %24, -1
  %26 = icmp ult i32 %21, 25
  br i1 %26, label %80, label %27

27:                                               ; preds = %23
  %28 = add nsw i64 %24, -2
  %29 = trunc i64 %28 to i32
  %30 = shl i32 %29, 1
  %31 = icmp ugt i32 %30, 2147483645
  %32 = icmp ugt i64 %28, 2147483647
  %33 = or i1 %31, %32
  %34 = getelementptr i8, ptr %0, i64 3
  %35 = shl nsw i64 %28, 1
  %36 = getelementptr i8, ptr %34, i64 %35
  %37 = icmp ult ptr %36, %34
  %38 = or i1 %33, %37
  br i1 %38, label %80, label %39

39:                                               ; preds = %27
  %40 = getelementptr i8, ptr %1, i64 %24
  %41 = getelementptr i8, ptr %40, i64 1
  %42 = getelementptr i8, ptr %0, i64 2
  %43 = shl nuw nsw i64 %24, 1
  %44 = getelementptr i8, ptr %0, i64 %43
  %45 = icmp ult ptr %1, %44
  %46 = icmp ult ptr %42, %41
  %47 = and i1 %45, %46
  br i1 %47, label %80, label %48

48:                                               ; preds = %39
  %49 = and i64 %25, -8
  %50 = or disjoint i64 %49, 1
  br label %51

51:                                               ; preds = %51, %48
  %52 = phi i64 [ 0, %48 ], [ %76, %51 ]
  %53 = trunc i64 %52 to i32
  %54 = getelementptr inbounds nuw i8, ptr %1, i64 %52
  %55 = getelementptr inbounds nuw i8, ptr %54, i64 1
  %56 = load <8 x i8>, ptr %55, align 1, !tbaa !35, !alias.scope !368, !noalias !371
  %57 = zext <8 x i8> %56 to <8 x i32>
  %58 = mul nuw nsw <8 x i32> %57, splat (i32 3)
  %59 = add nuw nsw <8 x i32> %58, splat (i32 2)
  %60 = load <8 x i8>, ptr %54, align 1, !tbaa !35, !alias.scope !368, !noalias !371
  %61 = zext <8 x i8> %60 to <8 x i32>
  %62 = add nuw nsw <8 x i32> %59, %61
  %63 = lshr <8 x i32> %62, splat (i32 2)
  %64 = shl i32 %53, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr i8, ptr %0, i64 %65
  %67 = getelementptr i8, ptr %66, i64 2
  %68 = getelementptr inbounds nuw i8, ptr %1, i64 %52
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 2
  %70 = load <8 x i8>, ptr %69, align 1, !tbaa !35, !alias.scope !368, !noalias !371
  %71 = zext <8 x i8> %70 to <8 x i32>
  %72 = add nuw nsw <8 x i32> %59, %71
  %73 = lshr <8 x i32> %72, splat (i32 2)
  %74 = shufflevector <8 x i32> %63, <8 x i32> %73, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %75 = trunc nuw <16 x i32> %74 to <16 x i8>
  store <16 x i8> %75, ptr %67, align 1, !tbaa !35, !alias.scope !371
  %76 = add nuw i64 %52, 8
  %77 = icmp eq i64 %76, %49
  br i1 %77, label %78, label %51, !llvm.loop !373

78:                                               ; preds = %51
  %79 = icmp eq i64 %25, %49
  br i1 %79, label %108, label %80

80:                                               ; preds = %39, %27, %23, %78
  %81 = phi i64 [ 1, %39 ], [ 1, %27 ], [ 1, %23 ], [ %50, %78 ]
  br label %82

82:                                               ; preds = %80, %82
  %83 = phi i64 [ %99, %82 ], [ %81, %80 ]
  %84 = getelementptr inbounds nuw i8, ptr %1, i64 %83
  %85 = load i8, ptr %84, align 1, !tbaa !35
  %86 = zext i8 %85 to i32
  %87 = mul nuw nsw i32 %86, 3
  %88 = add nuw nsw i32 %87, 2
  %89 = getelementptr i8, ptr %84, i64 -1
  %90 = load i8, ptr %89, align 1, !tbaa !35
  %91 = zext i8 %90 to i32
  %92 = add nuw nsw i32 %88, %91
  %93 = lshr i32 %92, 2
  %94 = trunc nuw i32 %93 to i8
  %95 = trunc i64 %83 to i32
  %96 = shl i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, ptr %0, i64 %97
  store i8 %94, ptr %98, align 1, !tbaa !35
  %99 = add nuw nsw i64 %83, 1
  %100 = getelementptr inbounds nuw i8, ptr %1, i64 %99
  %101 = load i8, ptr %100, align 1, !tbaa !35
  %102 = zext i8 %101 to i32
  %103 = add nuw nsw i32 %88, %102
  %104 = lshr i32 %103, 2
  %105 = trunc nuw i32 %104 to i8
  %106 = getelementptr i8, ptr %98, i64 1
  store i8 %105, ptr %106, align 1, !tbaa !35
  %107 = icmp eq i64 %99, %24
  br i1 %107, label %108, label %82, !llvm.loop !374

108:                                              ; preds = %82, %78
  %109 = shl nuw i32 %21, 1
  %110 = sext i32 %109 to i64
  br label %111

111:                                              ; preds = %108, %10
  %112 = phi i64 [ 2, %10 ], [ %110, %108 ]
  %113 = add i32 %3, -2
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, ptr %1, i64 %114
  %116 = load i8, ptr %115, align 1, !tbaa !35
  %117 = zext i8 %116 to i16
  %118 = mul nuw nsw i16 %117, 3
  %119 = sext i32 %21 to i64
  %120 = getelementptr inbounds i8, ptr %1, i64 %119
  %121 = load i8, ptr %120, align 1, !tbaa !35
  %122 = zext i8 %121 to i16
  %123 = add nuw nsw i16 %122, 2
  %124 = add nuw nsw i16 %123, %118
  %125 = lshr i16 %124, 2
  %126 = trunc nuw i16 %125 to i8
  %127 = getelementptr inbounds i8, ptr %0, i64 %112
  store i8 %126, ptr %127, align 1, !tbaa !35
  %128 = load i8, ptr %120, align 1, !tbaa !35
  %129 = getelementptr i8, ptr %127, i64 1
  store i8 %128, ptr %129, align 1, !tbaa !35
  br label %130

130:                                              ; preds = %111, %8
  ret ptr %0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite)
define internal noundef ptr @stbi__resample_row_generic(ptr noundef returned writeonly captures(ret: address, provenance) %0, ptr noundef readonly captures(none) %1, ptr readnone captures(none) %2, i32 noundef %3, i32 noundef %4) #5 {
  %6 = icmp sgt i32 %3, 0
  br i1 %6, label %7, label %108

7:                                                ; preds = %5
  %8 = icmp sgt i32 %4, 0
  %9 = zext nneg i32 %3 to i64
  %10 = zext i32 %4 to i64
  %11 = add nsw i64 %10, -1
  %12 = icmp ult i32 %4, 4
  %13 = trunc i64 %11 to i32
  %14 = icmp ugt i64 %11, 4294967295
  %15 = icmp ult i32 %4, 32
  %16 = and i64 %10, 28
  %17 = and i64 %10, 2147483616
  %18 = icmp eq i64 %17, %10
  %19 = icmp eq i64 %16, 0
  %20 = and i64 %10, 2147483644
  %21 = icmp eq i64 %20, %10
  %22 = and i64 %10, 3
  %23 = icmp eq i64 %22, 0
  br label %24

24:                                               ; preds = %7, %105
  %25 = phi i64 [ 0, %7 ], [ %106, %105 ]
  %26 = trunc i64 %25 to i32
  %27 = mul i32 %4, %26
  br i1 %8, label %28, label %105

28:                                               ; preds = %24
  %29 = getelementptr inbounds nuw i8, ptr %1, i64 %25
  %30 = trunc nuw nsw i64 %25 to i32
  %31 = mul i32 %4, %30
  %32 = load i8, ptr %29, align 1, !tbaa !35
  br i1 %12, label %65, label %33

33:                                               ; preds = %28
  %34 = add i32 %27, %13
  %35 = icmp slt i32 %34, %27
  %36 = or i1 %35, %14
  br i1 %36, label %65, label %37

37:                                               ; preds = %33
  br i1 %15, label %52, label %38

38:                                               ; preds = %37
  %39 = insertelement <16 x i8> poison, i8 %32, i64 0
  %40 = shufflevector <16 x i8> %39, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %41

41:                                               ; preds = %41, %38
  %42 = phi i64 [ 0, %38 ], [ %48, %41 ]
  %43 = trunc i64 %42 to i32
  %44 = add i32 %31, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, ptr %0, i64 %45
  %47 = getelementptr inbounds nuw i8, ptr %46, i64 16
  store <16 x i8> %40, ptr %46, align 1, !tbaa !35
  store <16 x i8> %40, ptr %47, align 1, !tbaa !35
  %48 = add nuw i64 %42, 32
  %49 = icmp eq i64 %48, %17
  br i1 %49, label %50, label %41, !llvm.loop !375

50:                                               ; preds = %41
  br i1 %18, label %105, label %51

51:                                               ; preds = %50
  br i1 %19, label %65, label %52, !prof !167

52:                                               ; preds = %37, %51
  %53 = phi i64 [ %17, %51 ], [ 0, %37 ]
  %54 = insertelement <4 x i8> poison, i8 %32, i64 0
  %55 = shufflevector <4 x i8> %54, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %56

56:                                               ; preds = %56, %52
  %57 = phi i64 [ %53, %52 ], [ %62, %56 ]
  %58 = trunc i64 %57 to i32
  %59 = add i32 %31, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, ptr %0, i64 %60
  store <4 x i8> %55, ptr %61, align 1, !tbaa !35
  %62 = add nuw i64 %57, 4
  %63 = icmp eq i64 %62, %20
  br i1 %63, label %64, label %56, !llvm.loop !376

64:                                               ; preds = %56
  br i1 %21, label %105, label %65

65:                                               ; preds = %33, %28, %51, %64
  %66 = phi i64 [ 0, %28 ], [ 0, %33 ], [ %17, %51 ], [ %20, %64 ]
  br i1 %23, label %77, label %67

67:                                               ; preds = %65, %67
  %68 = phi i64 [ %74, %67 ], [ %66, %65 ]
  %69 = phi i64 [ %75, %67 ], [ 0, %65 ]
  %70 = trunc nuw nsw i64 %68 to i32
  %71 = add i32 %31, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, ptr %0, i64 %72
  store i8 %32, ptr %73, align 1, !tbaa !35
  %74 = add nuw nsw i64 %68, 1
  %75 = add i64 %69, 1
  %76 = icmp eq i64 %75, %22
  br i1 %76, label %77, label %67, !llvm.loop !377

77:                                               ; preds = %67, %65
  %78 = phi i64 [ %66, %65 ], [ %74, %67 ]
  %79 = sub nsw i64 %66, %10
  %80 = icmp ugt i64 %79, -4
  br i1 %80, label %105, label %81

81:                                               ; preds = %77
  %82 = add i32 1, %31
  %83 = add i32 2, %31
  %84 = add i32 3, %31
  br label %85

85:                                               ; preds = %85, %81
  %86 = phi i64 [ %78, %81 ], [ %103, %85 ]
  %87 = trunc nuw nsw i64 %86 to i32
  %88 = add i32 %31, %87
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, ptr %0, i64 %89
  store i8 %32, ptr %90, align 1, !tbaa !35
  %91 = trunc i64 %86 to i32
  %92 = add i32 %91, %82
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, ptr %0, i64 %93
  store i8 %32, ptr %94, align 1, !tbaa !35
  %95 = trunc i64 %86 to i32
  %96 = add i32 %95, %83
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, ptr %0, i64 %97
  store i8 %32, ptr %98, align 1, !tbaa !35
  %99 = trunc i64 %86 to i32
  %100 = add i32 %99, %84
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, ptr %0, i64 %101
  store i8 %32, ptr %102, align 1, !tbaa !35
  %103 = add nuw nsw i64 %86, 4
  %104 = icmp eq i64 %103, %10
  br i1 %104, label %105, label %85, !llvm.loop !378

105:                                              ; preds = %77, %85, %50, %64, %24
  %106 = add nuw nsw i64 %25, 1
  %107 = icmp eq i64 %106, %9
  br i1 %107, label %108, label %24, !llvm.loop !379

108:                                              ; preds = %105, %5
  ret ptr %0
}

; Function Attrs: nounwind
define internal fastcc range(i32 0, 2) i32 @stbi__jpeg_decode_block(ptr noundef nonnull captures(none) %0, ptr noundef nonnull %1, ptr noundef nonnull readonly captures(none) %2, ptr noundef nonnull readonly captures(none) %3, ptr noundef nonnull readonly captures(none) %4, i32 noundef %5, ptr noundef nonnull readonly captures(none) %6) unnamed_addr #0 {
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 18468
  %9 = load i32, ptr %8, align 4, !tbaa !276
  %10 = icmp slt i32 %9, 16
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  tail call fastcc void @stbi__grow_buffer_unsafe(ptr noundef %0) #17
  %12 = load i32, ptr %8, align 4, !tbaa !276
  %13 = icmp slt i32 %12, 16
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  tail call fastcc void @stbi__grow_buffer_unsafe(ptr noundef nonnull %0) #17
  br label %15

15:                                               ; preds = %7, %14, %11
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 18464
  %17 = load i32, ptr %16, align 8, !tbaa !277
  %18 = lshr i32 %17, 23
  %19 = zext nneg i32 %18 to i64
  %20 = getelementptr inbounds nuw i8, ptr %2, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !35
  %22 = icmp eq i8 %21, -1
  br i1 %22, label %36, label %23

23:                                               ; preds = %15
  %24 = getelementptr inbounds nuw i8, ptr %2, i64 1280
  %25 = zext i8 %21 to i64
  %26 = getelementptr inbounds nuw i8, ptr %24, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !35
  %28 = zext i8 %27 to i32
  %29 = load i32, ptr %8, align 4, !tbaa !276
  %30 = icmp slt i32 %29, %28
  br i1 %30, label %278, label %31

31:                                               ; preds = %23
  %32 = shl i32 %17, %28
  store i32 %32, ptr %16, align 8, !tbaa !277
  %33 = sub nsw i32 %29, %28
  store i32 %33, ptr %8, align 4, !tbaa !276
  %34 = getelementptr inbounds nuw i8, ptr %2, i64 1024
  %35 = getelementptr inbounds nuw i8, ptr %34, i64 %25
  br label %68

36:                                               ; preds = %15
  %37 = lshr i32 %17, 16
  %38 = getelementptr inbounds nuw i8, ptr %2, i64 1540
  br label %39

39:                                               ; preds = %39, %36
  %40 = phi i32 [ 10, %36 ], [ %45, %39 ]
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, ptr %38, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !4
  %44 = icmp ult i32 %37, %43
  %45 = add i32 %40, 1
  br i1 %44, label %46, label %39

46:                                               ; preds = %39
  %47 = icmp eq i32 %40, 17
  %48 = load i32, ptr %8, align 4, !tbaa !276
  br i1 %47, label %275, label %49

49:                                               ; preds = %46
  %50 = icmp sgt i32 %40, %48
  br i1 %50, label %278, label %51

51:                                               ; preds = %49
  %52 = sub i32 32, %40
  %53 = lshr i32 %17, %52
  %54 = getelementptr inbounds i32, ptr @stbi__bmask, i64 %41
  %55 = load i32, ptr %54, align 4, !tbaa !4
  %56 = and i32 %55, %53
  %57 = getelementptr inbounds nuw i8, ptr %2, i64 1612
  %58 = getelementptr inbounds i32, ptr %57, i64 %41
  %59 = load i32, ptr %58, align 4, !tbaa !4
  %60 = add i32 %56, %59
  %61 = icmp ugt i32 %60, 255
  br i1 %61, label %278, label %62

62:                                               ; preds = %51
  %63 = sub i32 %48, %40
  store i32 %63, ptr %8, align 4, !tbaa !276
  %64 = shl i32 %17, %40
  store i32 %64, ptr %16, align 8, !tbaa !277
  %65 = getelementptr inbounds nuw i8, ptr %2, i64 1024
  %66 = zext nneg i32 %60 to i64
  %67 = getelementptr inbounds nuw i8, ptr %65, i64 %66
  br label %68

68:                                               ; preds = %31, %62
  %69 = phi ptr [ %67, %62 ], [ %35, %31 ]
  %70 = load i8, ptr %69, align 1, !tbaa !35
  %71 = zext i8 %70 to i32
  %72 = icmp ugt i8 %70, 15
  br i1 %72, label %278, label %73

73:                                               ; preds = %68
  %74 = tail call ptr @memset(ptr noundef nonnull %1, i32 noundef 0, i64 noundef 128) #16
  %75 = icmp eq i8 %70, 0
  br i1 %75, label %99, label %76

76:                                               ; preds = %73
  %77 = load i32, ptr %8, align 4, !tbaa !276
  %78 = icmp slt i32 %77, %71
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  tail call fastcc void @stbi__grow_buffer_unsafe(ptr noundef nonnull %0) #17
  %80 = load i32, ptr %8, align 4, !tbaa !276
  br label %81

81:                                               ; preds = %79, %76
  %82 = phi i32 [ %80, %79 ], [ %77, %76 ]
  %83 = icmp slt i32 %82, %71
  br i1 %83, label %99, label %84

84:                                               ; preds = %81
  %85 = load i32, ptr %16, align 8, !tbaa !277
  %86 = tail call i32 @llvm.fshl.i32(i32 %85, i32 %85, i32 range(i32 1, 16) %71)
  %87 = zext nneg i8 %70 to i64
  %88 = getelementptr inbounds nuw i32, ptr @stbi__bmask, i64 %87
  %89 = load i32, ptr %88, align 4, !tbaa !4
  %90 = xor i32 %89, -1
  %91 = and i32 %86, %90
  store i32 %91, ptr %16, align 8, !tbaa !277
  %92 = and i32 %86, %89
  %93 = sub nsw i32 %82, %71
  store i32 %93, ptr %8, align 4, !tbaa !276
  %94 = getelementptr inbounds nuw i32, ptr @stbi__jbias, i64 %87
  %95 = load i32, ptr %94, align 4, !tbaa !4
  %96 = icmp slt i32 %85, 0
  %97 = select i1 %96, i32 0, i32 %95
  %98 = add i32 %97, %92
  br label %99

99:                                               ; preds = %84, %81, %73
  %100 = phi i32 [ 0, %73 ], [ %98, %84 ], [ 0, %81 ]
  %101 = sext i32 %5 to i64
  %102 = getelementptr %struct.anon, ptr %0, i64 %101
  %103 = getelementptr i8, ptr %102, i64 18104
  %104 = load i32, ptr %103, align 8, !tbaa !279
  %105 = xor i32 %104, %100
  %106 = icmp sgt i32 %105, -1
  br i1 %106, label %107, label %115

107:                                              ; preds = %99
  %108 = and i32 %104, %100
  %109 = sub i32 2147483647, %100
  %110 = icmp sgt i32 %104, %109
  %111 = sub nsw i32 -2147483648, %100
  %112 = icmp slt i32 %104, %111
  %113 = icmp slt i32 %108, 0
  %114 = select i1 %113, i1 %112, i1 %110
  br i1 %114, label %278, label %115

115:                                              ; preds = %99, %107
  %116 = add i32 %104, %100
  store i32 %116, ptr %103, align 8, !tbaa !279
  %117 = load i16, ptr %6, align 2, !tbaa !39
  %118 = icmp eq i16 %117, 0
  br i1 %118, label %130, label %119

119:                                              ; preds = %115
  %120 = icmp sgt i32 %116, -1
  br i1 %120, label %126, label %121

121:                                              ; preds = %119
  %122 = udiv i16 -32768, %117
  %123 = zext i16 %122 to i32
  %124 = sub nsw i32 0, %123
  %125 = icmp slt i32 %116, %124
  br i1 %125, label %278, label %130

126:                                              ; preds = %119
  %127 = udiv i16 32767, %117
  %128 = zext nneg i16 %127 to i32
  %129 = icmp samesign ugt i32 %116, %128
  br i1 %129, label %278, label %130

130:                                              ; preds = %121, %115, %126
  %131 = trunc i32 %116 to i16
  %132 = mul i16 %117, %131
  store i16 %132, ptr %1, align 2, !tbaa !39
  %133 = getelementptr inbounds nuw i8, ptr %3, i64 1280
  %134 = getelementptr inbounds nuw i8, ptr %3, i64 1024
  %135 = getelementptr inbounds nuw i8, ptr %3, i64 1540
  %136 = getelementptr inbounds nuw i8, ptr %3, i64 1612
  %137 = load i32, ptr %8, align 4, !tbaa !276
  br label %138

138:                                              ; preds = %271, %130
  %139 = phi i32 [ %137, %130 ], [ %272, %271 ]
  %140 = phi i32 [ 1, %130 ], [ %273, %271 ]
  %141 = icmp slt i32 %139, 16
  br i1 %141, label %142, label %143

142:                                              ; preds = %138
  tail call fastcc void @stbi__grow_buffer_unsafe(ptr noundef %0) #17
  br label %143

143:                                              ; preds = %142, %138
  %144 = load i32, ptr %16, align 8, !tbaa !277
  %145 = lshr i32 %144, 23
  %146 = zext nneg i32 %145 to i64
  %147 = getelementptr inbounds nuw i16, ptr %4, i64 %146
  %148 = load i16, ptr %147, align 2, !tbaa !39
  %149 = icmp eq i16 %148, 0
  br i1 %149, label %171, label %150

150:                                              ; preds = %143
  %151 = zext i16 %148 to i32
  %152 = and i32 %151, 15
  %153 = load i32, ptr %8, align 4, !tbaa !276
  %154 = icmp sgt i32 %152, %153
  br i1 %154, label %278, label %155

155:                                              ; preds = %150
  %156 = lshr i32 %151, 4
  %157 = and i32 %156, 15
  %158 = add nsw i32 %157, %140
  %159 = shl i32 %144, %152
  store i32 %159, ptr %16, align 8, !tbaa !277
  %160 = sub nsw i32 %153, %152
  store i32 %160, ptr %8, align 4, !tbaa !276
  %161 = add nsw i32 %158, 1
  %162 = sext i32 %158 to i64
  %163 = getelementptr inbounds i8, ptr @stbi__jpeg_dezigzag, i64 %162
  %164 = load i8, ptr %163, align 1, !tbaa !35
  %165 = ashr i16 %148, 8
  %166 = zext i8 %164 to i64
  %167 = getelementptr inbounds nuw i16, ptr %6, i64 %166
  %168 = load i16, ptr %167, align 2, !tbaa !39
  %169 = mul i16 %168, %165
  %170 = getelementptr inbounds nuw i16, ptr %1, i64 %166
  store i16 %169, ptr %170, align 2, !tbaa !39
  br label %271

171:                                              ; preds = %143
  %172 = load i32, ptr %8, align 4, !tbaa !276
  %173 = icmp slt i32 %172, 16
  br i1 %173, label %174, label %178

174:                                              ; preds = %171
  tail call fastcc void @stbi__grow_buffer_unsafe(ptr noundef nonnull %0) #17
  %175 = load i32, ptr %16, align 8, !tbaa !277
  %176 = lshr i32 %175, 23
  %177 = zext nneg i32 %176 to i64
  br label %178

178:                                              ; preds = %174, %171
  %179 = phi i64 [ %177, %174 ], [ %146, %171 ]
  %180 = phi i32 [ %175, %174 ], [ %144, %171 ]
  %181 = getelementptr inbounds nuw i8, ptr %3, i64 %179
  %182 = load i8, ptr %181, align 1, !tbaa !35
  %183 = icmp eq i8 %182, -1
  br i1 %183, label %194, label %184

184:                                              ; preds = %178
  %185 = zext i8 %182 to i64
  %186 = getelementptr inbounds nuw i8, ptr %133, i64 %185
  %187 = load i8, ptr %186, align 1, !tbaa !35
  %188 = zext i8 %187 to i32
  %189 = load i32, ptr %8, align 4, !tbaa !276
  %190 = icmp slt i32 %189, %188
  br i1 %190, label %278, label %191

191:                                              ; preds = %184
  %192 = shl i32 %180, %188
  store i32 %192, ptr %16, align 8, !tbaa !277
  %193 = sub nsw i32 %189, %188
  store i32 %193, ptr %8, align 4, !tbaa !276
  br label %222

194:                                              ; preds = %178
  %195 = lshr i32 %180, 16
  br label %196

196:                                              ; preds = %196, %194
  %197 = phi i32 [ 10, %194 ], [ %202, %196 ]
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, ptr %135, i64 %198
  %200 = load i32, ptr %199, align 4, !tbaa !4
  %201 = icmp ult i32 %195, %200
  %202 = add i32 %197, 1
  br i1 %201, label %203, label %196

203:                                              ; preds = %196
  %204 = icmp eq i32 %197, 17
  %205 = load i32, ptr %8, align 4, !tbaa !276
  br i1 %204, label %275, label %206

206:                                              ; preds = %203
  %207 = icmp sgt i32 %197, %205
  br i1 %207, label %278, label %208

208:                                              ; preds = %206
  %209 = sub i32 32, %197
  %210 = lshr i32 %180, %209
  %211 = getelementptr inbounds i32, ptr @stbi__bmask, i64 %198
  %212 = load i32, ptr %211, align 4, !tbaa !4
  %213 = and i32 %212, %210
  %214 = getelementptr inbounds i32, ptr %136, i64 %198
  %215 = load i32, ptr %214, align 4, !tbaa !4
  %216 = add i32 %213, %215
  %217 = icmp ugt i32 %216, 255
  br i1 %217, label %278, label %218

218:                                              ; preds = %208
  %219 = sub i32 %205, %197
  store i32 %219, ptr %8, align 4, !tbaa !276
  %220 = shl i32 %180, %197
  store i32 %220, ptr %16, align 8, !tbaa !277
  %221 = zext nneg i32 %216 to i64
  br label %222

222:                                              ; preds = %218, %191
  %223 = phi i32 [ %219, %218 ], [ %193, %191 ]
  %224 = phi i64 [ %221, %218 ], [ %185, %191 ]
  %225 = getelementptr inbounds nuw i8, ptr %134, i64 %224
  %226 = load i8, ptr %225, align 1, !tbaa !35
  %227 = zext i8 %226 to i32
  %228 = and i32 %227, 15
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %234

230:                                              ; preds = %222
  %231 = icmp eq i8 %226, -16
  br i1 %231, label %232, label %278

232:                                              ; preds = %230
  %233 = add nsw i32 %140, 16
  br label %271

234:                                              ; preds = %222
  %235 = lshr i32 %227, 4
  %236 = add nsw i32 %235, %140
  %237 = add nsw i32 %236, 1
  %238 = sext i32 %236 to i64
  %239 = getelementptr inbounds i8, ptr @stbi__jpeg_dezigzag, i64 %238
  %240 = load i8, ptr %239, align 1, !tbaa !35
  %241 = icmp slt i32 %223, %228
  br i1 %241, label %242, label %244

242:                                              ; preds = %234
  tail call fastcc void @stbi__grow_buffer_unsafe(ptr noundef nonnull %0) #17
  %243 = load i32, ptr %8, align 4, !tbaa !276
  br label %244

244:                                              ; preds = %242, %234
  %245 = phi i32 [ %243, %242 ], [ %223, %234 ]
  %246 = icmp slt i32 %245, %228
  br i1 %246, label %263, label %247

247:                                              ; preds = %244
  %248 = load i32, ptr %16, align 8, !tbaa !277
  %249 = tail call i32 @llvm.fshl.i32(i32 %248, i32 %248, i32 range(i32 1, 16) %228)
  %250 = zext nneg i32 %228 to i64
  %251 = getelementptr inbounds nuw i32, ptr @stbi__bmask, i64 %250
  %252 = load i32, ptr %251, align 4, !tbaa !4
  %253 = xor i32 %252, -1
  %254 = and i32 %249, %253
  store i32 %254, ptr %16, align 8, !tbaa !277
  %255 = and i32 %249, %252
  %256 = sub nsw i32 %245, %228
  store i32 %256, ptr %8, align 4, !tbaa !276
  %257 = getelementptr inbounds nuw i32, ptr @stbi__jbias, i64 %250
  %258 = load i32, ptr %257, align 4, !tbaa !4
  %259 = icmp slt i32 %248, 0
  %260 = select i1 %259, i32 0, i32 %258
  %261 = add i32 %260, %255
  %262 = trunc i32 %261 to i16
  br label %263

263:                                              ; preds = %244, %247
  %264 = phi i32 [ %256, %247 ], [ %245, %244 ]
  %265 = phi i16 [ %262, %247 ], [ 0, %244 ]
  %266 = zext i8 %240 to i64
  %267 = getelementptr inbounds nuw i16, ptr %6, i64 %266
  %268 = load i16, ptr %267, align 2, !tbaa !39
  %269 = mul i16 %268, %265
  %270 = getelementptr inbounds nuw i16, ptr %1, i64 %266
  store i16 %269, ptr %270, align 2, !tbaa !39
  br label %271

271:                                              ; preds = %155, %263, %232
  %272 = phi i32 [ %223, %232 ], [ %264, %263 ], [ %160, %155 ]
  %273 = phi i32 [ %233, %232 ], [ %237, %263 ], [ %161, %155 ]
  %274 = icmp slt i32 %273, 64
  br i1 %274, label %138, label %278, !llvm.loop !380

275:                                              ; preds = %203, %46
  %276 = phi i32 [ %48, %46 ], [ %205, %203 ]
  %277 = add i32 %276, -16
  store i32 %277, ptr %8, align 4, !tbaa !276
  br label %278

278:                                              ; preds = %208, %206, %184, %150, %271, %230, %275, %121, %51, %49, %23, %126, %107, %68
  %279 = phi i32 [ 0, %68 ], [ 0, %51 ], [ 0, %49 ], [ 0, %107 ], [ 0, %126 ], [ 0, %121 ], [ 0, %275 ], [ 0, %23 ], [ 1, %230 ], [ 1, %271 ], [ 0, %208 ], [ 0, %206 ], [ 0, %184 ], [ 0, %150 ]
  ret i32 %279
}

; Function Attrs: nounwind
define internal fastcc void @stbi__grow_buffer_unsafe(ptr noundef nonnull captures(none) %0) unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 18476
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 18468
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 18464
  br label %5

5:                                                ; preds = %151, %1
  %6 = load i32, ptr %2, align 4, !tbaa !278
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %151

8:                                                ; preds = %5
  %9 = load ptr, ptr %0, align 8, !tbaa !21
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 192
  %11 = load ptr, ptr %10, align 8, !tbaa !16
  %12 = getelementptr inbounds nuw i8, ptr %9, i64 200
  %13 = load ptr, ptr %12, align 8, !tbaa !18
  %14 = icmp ult ptr %11, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %8
  %16 = getelementptr inbounds nuw i8, ptr %11, i64 1
  store ptr %16, ptr %10, align 8, !tbaa !16
  %17 = load i8, ptr %11, align 1, !tbaa !35
  br label %52

18:                                               ; preds = %8
  %19 = getelementptr inbounds nuw i8, ptr %9, i64 48
  %20 = load i32, ptr %19, align 8, !tbaa !13
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %151, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %24 = load ptr, ptr %23, align 8, !tbaa !8
  %25 = getelementptr inbounds nuw i8, ptr %9, i64 40
  %26 = load ptr, ptr %25, align 8, !tbaa !33
  %27 = getelementptr inbounds nuw i8, ptr %9, i64 56
  %28 = getelementptr inbounds nuw i8, ptr %9, i64 52
  %29 = load i32, ptr %28, align 4, !tbaa !34
  %30 = tail call i32 %24(ptr noundef %26, ptr noundef nonnull %27, i32 noundef %29) #16
  %31 = load ptr, ptr %10, align 8, !tbaa !16
  %32 = getelementptr inbounds nuw i8, ptr %9, i64 208
  %33 = load ptr, ptr %32, align 8, !tbaa !15
  %34 = ptrtoint ptr %31 to i64
  %35 = ptrtoint ptr %33 to i64
  %36 = sub i64 %34, %35
  %37 = trunc i64 %36 to i32
  %38 = getelementptr inbounds nuw i8, ptr %9, i64 184
  %39 = load i32, ptr %38, align 8, !tbaa !14
  %40 = add i32 %39, %37
  store i32 %40, ptr %38, align 8, !tbaa !14
  %41 = icmp eq i32 %30, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %22
  store i32 0, ptr %19, align 8, !tbaa !13
  %43 = getelementptr inbounds nuw i8, ptr %9, i64 57
  store i8 0, ptr %27, align 8, !tbaa !35
  br label %48

44:                                               ; preds = %22
  %45 = sext i32 %30 to i64
  %46 = getelementptr inbounds i8, ptr %27, i64 %45
  %47 = load i8, ptr %27, align 1, !tbaa !35
  br label %48

48:                                               ; preds = %44, %42
  %49 = phi i8 [ 0, %42 ], [ %47, %44 ]
  %50 = phi ptr [ %43, %42 ], [ %46, %44 ]
  store ptr %50, ptr %12, align 8, !tbaa !18
  %51 = getelementptr inbounds nuw i8, ptr %9, i64 57
  store ptr %51, ptr %10, align 8, !tbaa !16
  br label %52

52:                                               ; preds = %48, %15
  %53 = phi i8 [ %17, %15 ], [ %49, %48 ]
  %54 = icmp eq i8 %53, -1
  br i1 %54, label %55, label %151

55:                                               ; preds = %52
  %56 = load ptr, ptr %0, align 8, !tbaa !21
  %57 = getelementptr inbounds nuw i8, ptr %56, i64 192
  %58 = load ptr, ptr %57, align 8, !tbaa !16
  %59 = getelementptr inbounds nuw i8, ptr %56, i64 200
  %60 = load ptr, ptr %59, align 8, !tbaa !18
  %61 = icmp ult ptr %58, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = getelementptr inbounds nuw i8, ptr %58, i64 1
  store ptr %63, ptr %57, align 8, !tbaa !16
  %64 = load i8, ptr %58, align 1, !tbaa !35
  br label %99

65:                                               ; preds = %55
  %66 = getelementptr inbounds nuw i8, ptr %56, i64 48
  %67 = load i32, ptr %66, align 8, !tbaa !13
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %99, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds nuw i8, ptr %56, i64 16
  %71 = load ptr, ptr %70, align 8, !tbaa !8
  %72 = getelementptr inbounds nuw i8, ptr %56, i64 40
  %73 = load ptr, ptr %72, align 8, !tbaa !33
  %74 = getelementptr inbounds nuw i8, ptr %56, i64 56
  %75 = getelementptr inbounds nuw i8, ptr %56, i64 52
  %76 = load i32, ptr %75, align 4, !tbaa !34
  %77 = tail call i32 %71(ptr noundef %73, ptr noundef nonnull %74, i32 noundef %76) #16
  %78 = load ptr, ptr %57, align 8, !tbaa !16
  %79 = getelementptr inbounds nuw i8, ptr %56, i64 208
  %80 = load ptr, ptr %79, align 8, !tbaa !15
  %81 = ptrtoint ptr %78 to i64
  %82 = ptrtoint ptr %80 to i64
  %83 = sub i64 %81, %82
  %84 = trunc i64 %83 to i32
  %85 = getelementptr inbounds nuw i8, ptr %56, i64 184
  %86 = load i32, ptr %85, align 8, !tbaa !14
  %87 = add i32 %86, %84
  store i32 %87, ptr %85, align 8, !tbaa !14
  %88 = icmp eq i32 %77, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %69
  store i32 0, ptr %66, align 8, !tbaa !13
  %90 = getelementptr inbounds nuw i8, ptr %56, i64 57
  store i8 0, ptr %74, align 8, !tbaa !35
  br label %95

91:                                               ; preds = %69
  %92 = sext i32 %77 to i64
  %93 = getelementptr inbounds i8, ptr %74, i64 %92
  %94 = load i8, ptr %74, align 1, !tbaa !35
  br label %95

95:                                               ; preds = %91, %89
  %96 = phi i8 [ 0, %89 ], [ %94, %91 ]
  %97 = phi ptr [ %90, %89 ], [ %93, %91 ]
  store ptr %97, ptr %59, align 8, !tbaa !18
  %98 = getelementptr inbounds nuw i8, ptr %56, i64 57
  store ptr %98, ptr %57, align 8, !tbaa !16
  br label %99

99:                                               ; preds = %62, %65, %95
  %100 = phi i8 [ %96, %95 ], [ %64, %62 ], [ 0, %65 ]
  br label %101

101:                                              ; preds = %113, %99
  %102 = phi i8 [ %100, %99 ], [ %114, %113 ]
  switch i8 %102, label %149 [
    i8 -1, label %103
    i8 0, label %151
  ]

103:                                              ; preds = %101
  %104 = load ptr, ptr %0, align 8, !tbaa !21
  %105 = getelementptr inbounds nuw i8, ptr %104, i64 192
  %106 = load ptr, ptr %105, align 8, !tbaa !16
  %107 = getelementptr inbounds nuw i8, ptr %104, i64 200
  %108 = load ptr, ptr %107, align 8, !tbaa !18
  %109 = icmp ult ptr %106, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %103
  %111 = getelementptr inbounds nuw i8, ptr %106, i64 1
  store ptr %111, ptr %105, align 8, !tbaa !16
  %112 = load i8, ptr %106, align 1, !tbaa !35
  br label %113

113:                                              ; preds = %110, %115, %145
  %114 = phi i8 [ %112, %110 ], [ %146, %145 ], [ 0, %115 ]
  br label %101, !llvm.loop !381

115:                                              ; preds = %103
  %116 = getelementptr inbounds nuw i8, ptr %104, i64 48
  %117 = load i32, ptr %116, align 8, !tbaa !13
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %113, label %119

119:                                              ; preds = %115
  %120 = getelementptr inbounds nuw i8, ptr %104, i64 16
  %121 = load ptr, ptr %120, align 8, !tbaa !8
  %122 = getelementptr inbounds nuw i8, ptr %104, i64 40
  %123 = load ptr, ptr %122, align 8, !tbaa !33
  %124 = getelementptr inbounds nuw i8, ptr %104, i64 56
  %125 = getelementptr inbounds nuw i8, ptr %104, i64 52
  %126 = load i32, ptr %125, align 4, !tbaa !34
  %127 = tail call i32 %121(ptr noundef %123, ptr noundef nonnull %124, i32 noundef %126) #16
  %128 = load ptr, ptr %105, align 8, !tbaa !16
  %129 = getelementptr inbounds nuw i8, ptr %104, i64 208
  %130 = load ptr, ptr %129, align 8, !tbaa !15
  %131 = ptrtoint ptr %128 to i64
  %132 = ptrtoint ptr %130 to i64
  %133 = sub i64 %131, %132
  %134 = trunc i64 %133 to i32
  %135 = getelementptr inbounds nuw i8, ptr %104, i64 184
  %136 = load i32, ptr %135, align 8, !tbaa !14
  %137 = add i32 %136, %134
  store i32 %137, ptr %135, align 8, !tbaa !14
  %138 = icmp eq i32 %127, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %119
  store i32 0, ptr %116, align 8, !tbaa !13
  %140 = getelementptr inbounds nuw i8, ptr %104, i64 57
  store i8 0, ptr %124, align 8, !tbaa !35
  br label %145

141:                                              ; preds = %119
  %142 = sext i32 %127 to i64
  %143 = getelementptr inbounds i8, ptr %124, i64 %142
  %144 = load i8, ptr %124, align 1, !tbaa !35
  br label %145

145:                                              ; preds = %141, %139
  %146 = phi i8 [ 0, %139 ], [ %144, %141 ]
  %147 = phi ptr [ %140, %139 ], [ %143, %141 ]
  store ptr %147, ptr %107, align 8, !tbaa !18
  %148 = getelementptr inbounds nuw i8, ptr %104, i64 57
  store ptr %148, ptr %105, align 8, !tbaa !16
  br label %113

149:                                              ; preds = %101
  %150 = getelementptr inbounds nuw i8, ptr %0, i64 18472
  store i8 %102, ptr %150, align 8, !tbaa !56
  store i32 1, ptr %2, align 4, !tbaa !278
  br label %161

151:                                              ; preds = %101, %18, %5, %52
  %152 = phi i8 [ 0, %5 ], [ 0, %18 ], [ %53, %52 ], [ -1, %101 ]
  %153 = zext i8 %152 to i32
  %154 = load i32, ptr %3, align 4, !tbaa !276
  %155 = sub i32 24, %154
  %156 = shl i32 %153, %155
  %157 = load i32, ptr %4, align 8, !tbaa !277
  %158 = or i32 %156, %157
  store i32 %158, ptr %4, align 8, !tbaa !277
  %159 = add i32 %154, 8
  store i32 %159, ptr %3, align 4, !tbaa !276
  %160 = icmp slt i32 %159, 25
  br i1 %160, label %5, label %161, !llvm.loop !382

161:                                              ; preds = %151, %149
  ret void
}

; Function Attrs: nounwind
define internal fastcc range(i32 0, 2) i32 @stbi__jpeg_decode_block_prog_dc(ptr noundef nonnull captures(none) %0, ptr noundef %1, ptr noundef nonnull readonly captures(none) %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 18488
  %6 = load i32, ptr %5, align 8, !tbaa !273
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %164

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 18468
  %10 = load i32, ptr %9, align 4, !tbaa !276
  %11 = icmp slt i32 %10, 16
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  tail call fastcc void @stbi__grow_buffer_unsafe(ptr noundef %0) #17
  br label %13

13:                                               ; preds = %12, %8
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 18492
  %15 = load i32, ptr %14, align 4, !tbaa !274
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %144

17:                                               ; preds = %13
  %18 = tail call ptr @memset(ptr noundef %1, i32 noundef 0, i64 noundef 128) #16
  %19 = load i32, ptr %9, align 4, !tbaa !276
  %20 = icmp slt i32 %19, 16
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  tail call fastcc void @stbi__grow_buffer_unsafe(ptr noundef nonnull %0) #17
  br label %22

22:                                               ; preds = %21, %17
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 18464
  %24 = load i32, ptr %23, align 8, !tbaa !277
  %25 = lshr i32 %24, 23
  %26 = zext nneg i32 %25 to i64
  %27 = getelementptr inbounds nuw i8, ptr %2, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !35
  %29 = icmp eq i8 %28, -1
  br i1 %29, label %43, label %30

30:                                               ; preds = %22
  %31 = getelementptr inbounds nuw i8, ptr %2, i64 1280
  %32 = zext i8 %28 to i64
  %33 = getelementptr inbounds nuw i8, ptr %31, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !35
  %35 = zext i8 %34 to i32
  %36 = load i32, ptr %9, align 4, !tbaa !276
  %37 = icmp slt i32 %36, %35
  br i1 %37, label %164, label %38

38:                                               ; preds = %30
  %39 = shl i32 %24, %35
  store i32 %39, ptr %23, align 8, !tbaa !277
  %40 = sub nsw i32 %36, %35
  store i32 %40, ptr %9, align 4, !tbaa !276
  %41 = getelementptr inbounds nuw i8, ptr %2, i64 1024
  %42 = getelementptr inbounds nuw i8, ptr %41, i64 %32
  br label %77

43:                                               ; preds = %22
  %44 = lshr i32 %24, 16
  %45 = getelementptr inbounds nuw i8, ptr %2, i64 1540
  br label %46

46:                                               ; preds = %46, %43
  %47 = phi i32 [ 10, %43 ], [ %52, %46 ]
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, ptr %45, i64 %48
  %50 = load i32, ptr %49, align 4, !tbaa !4
  %51 = icmp ult i32 %44, %50
  %52 = add i32 %47, 1
  br i1 %51, label %53, label %46

53:                                               ; preds = %46
  %54 = icmp eq i32 %47, 17
  %55 = load i32, ptr %9, align 4, !tbaa !276
  br i1 %54, label %56, label %58

56:                                               ; preds = %53
  %57 = add i32 %55, -16
  store i32 %57, ptr %9, align 4, !tbaa !276
  br label %164

58:                                               ; preds = %53
  %59 = icmp sgt i32 %47, %55
  br i1 %59, label %164, label %60

60:                                               ; preds = %58
  %61 = sub i32 32, %47
  %62 = lshr i32 %24, %61
  %63 = getelementptr inbounds i32, ptr @stbi__bmask, i64 %48
  %64 = load i32, ptr %63, align 4, !tbaa !4
  %65 = and i32 %64, %62
  %66 = getelementptr inbounds nuw i8, ptr %2, i64 1612
  %67 = getelementptr inbounds i32, ptr %66, i64 %48
  %68 = load i32, ptr %67, align 4, !tbaa !4
  %69 = add i32 %65, %68
  %70 = icmp ugt i32 %69, 255
  br i1 %70, label %164, label %71

71:                                               ; preds = %60
  %72 = sub i32 %55, %47
  store i32 %72, ptr %9, align 4, !tbaa !276
  %73 = shl i32 %24, %47
  store i32 %73, ptr %23, align 8, !tbaa !277
  %74 = getelementptr inbounds nuw i8, ptr %2, i64 1024
  %75 = zext nneg i32 %69 to i64
  %76 = getelementptr inbounds nuw i8, ptr %74, i64 %75
  br label %77

77:                                               ; preds = %38, %71
  %78 = phi i32 [ %72, %71 ], [ %40, %38 ]
  %79 = phi ptr [ %76, %71 ], [ %42, %38 ]
  %80 = load i8, ptr %79, align 1, !tbaa !35
  %81 = zext i8 %80 to i32
  %82 = icmp ugt i8 %80, 15
  br i1 %82, label %164, label %83

83:                                               ; preds = %77
  %84 = icmp eq i8 %80, 0
  br i1 %84, label %107, label %85

85:                                               ; preds = %83
  %86 = icmp slt i32 %78, %81
  br i1 %86, label %87, label %89

87:                                               ; preds = %85
  tail call fastcc void @stbi__grow_buffer_unsafe(ptr noundef nonnull %0) #17
  %88 = load i32, ptr %9, align 4, !tbaa !276
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi i32 [ %88, %87 ], [ %78, %85 ]
  %91 = icmp slt i32 %90, %81
  br i1 %91, label %107, label %92

92:                                               ; preds = %89
  %93 = load i32, ptr %23, align 8, !tbaa !277
  %94 = tail call i32 @llvm.fshl.i32(i32 %93, i32 %93, i32 range(i32 1, 16) %81)
  %95 = zext nneg i8 %80 to i64
  %96 = getelementptr inbounds nuw i32, ptr @stbi__bmask, i64 %95
  %97 = load i32, ptr %96, align 4, !tbaa !4
  %98 = xor i32 %97, -1
  %99 = and i32 %94, %98
  store i32 %99, ptr %23, align 8, !tbaa !277
  %100 = and i32 %94, %97
  %101 = sub nsw i32 %90, %81
  store i32 %101, ptr %9, align 4, !tbaa !276
  %102 = getelementptr inbounds nuw i32, ptr @stbi__jbias, i64 %95
  %103 = load i32, ptr %102, align 4, !tbaa !4
  %104 = icmp slt i32 %93, 0
  %105 = select i1 %104, i32 0, i32 %103
  %106 = add i32 %105, %100
  br label %107

107:                                              ; preds = %92, %89, %83
  %108 = phi i32 [ 0, %83 ], [ %106, %92 ], [ 0, %89 ]
  %109 = sext i32 %3 to i64
  %110 = getelementptr %struct.anon, ptr %0, i64 %109
  %111 = getelementptr i8, ptr %110, i64 18104
  %112 = load i32, ptr %111, align 8, !tbaa !279
  %113 = xor i32 %112, %108
  %114 = icmp sgt i32 %113, -1
  br i1 %114, label %115, label %123

115:                                              ; preds = %107
  %116 = and i32 %112, %108
  %117 = sub i32 2147483647, %108
  %118 = icmp sgt i32 %112, %117
  %119 = sub nsw i32 -2147483648, %108
  %120 = icmp slt i32 %112, %119
  %121 = icmp slt i32 %116, 0
  %122 = select i1 %121, i1 %120, i1 %118
  br i1 %122, label %164, label %123

123:                                              ; preds = %107, %115
  %124 = add i32 %112, %108
  store i32 %124, ptr %111, align 8, !tbaa !279
  %125 = getelementptr inbounds nuw i8, ptr %0, i64 18496
  %126 = load i32, ptr %125, align 8, !tbaa !275
  %127 = shl nuw i32 1, %126
  %128 = xor i32 %127, %124
  %129 = icmp sgt i32 %128, -1
  br i1 %129, label %138, label %130

130:                                              ; preds = %123
  %131 = icmp eq i32 %126, 31
  br i1 %131, label %132, label %134

132:                                              ; preds = %130
  %133 = icmp slt i32 %124, 1
  br i1 %133, label %141, label %164

134:                                              ; preds = %130
  %135 = lshr i32 32768, %126
  %136 = sub nsw i32 0, %135
  %137 = icmp slt i32 %124, %136
  br i1 %137, label %164, label %141

138:                                              ; preds = %123
  %139 = lshr i32 32767, %126
  %140 = icmp sgt i32 %124, %139
  br i1 %140, label %164, label %141

141:                                              ; preds = %132, %134, %138
  %142 = shl i32 %124, %126
  %143 = trunc i32 %142 to i16
  store i16 %143, ptr %1, align 2, !tbaa !39
  br label %164

144:                                              ; preds = %13
  %145 = load i32, ptr %9, align 4, !tbaa !276
  %146 = icmp slt i32 %145, 1
  br i1 %146, label %147, label %150

147:                                              ; preds = %144
  tail call fastcc void @stbi__grow_buffer_unsafe(ptr noundef nonnull %0) #17
  %148 = load i32, ptr %9, align 4, !tbaa !276
  %149 = icmp slt i32 %148, 1
  br i1 %149, label %164, label %150

150:                                              ; preds = %144, %147
  %151 = phi i32 [ %148, %147 ], [ %145, %144 ]
  %152 = getelementptr inbounds nuw i8, ptr %0, i64 18464
  %153 = load i32, ptr %152, align 8, !tbaa !277
  %154 = shl i32 %153, 1
  store i32 %154, ptr %152, align 8, !tbaa !277
  %155 = add nsw i32 %151, -1
  store i32 %155, ptr %9, align 4, !tbaa !276
  %156 = icmp sgt i32 %153, -1
  br i1 %156, label %164, label %157

157:                                              ; preds = %150
  %158 = getelementptr inbounds nuw i8, ptr %0, i64 18496
  %159 = load i32, ptr %158, align 8, !tbaa !275
  %160 = shl nuw i32 1, %159
  %161 = load i16, ptr %1, align 2, !tbaa !39
  %162 = trunc i32 %160 to i16
  %163 = add i16 %161, %162
  store i16 %163, ptr %1, align 2, !tbaa !39
  br label %164

164:                                              ; preds = %132, %134, %147, %60, %58, %30, %56, %141, %157, %150, %138, %115, %77, %4
  %165 = phi i32 [ 0, %77 ], [ 0, %4 ], [ 0, %138 ], [ 0, %115 ], [ 1, %150 ], [ 1, %157 ], [ 1, %141 ], [ 0, %60 ], [ 0, %56 ], [ 0, %30 ], [ 0, %58 ], [ 1, %147 ], [ 0, %134 ], [ 0, %132 ]
  ret i32 %165
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.ctpop.i8(i8) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bitreverse.i16(i16) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.umin.v16i32(<16 x i32>, <16 x i32>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.umax.v16i32(<16 x i32>, <16 x i32>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umax.v4i32(<4 x i32>, <4 x i32>) #12

attributes #0 = { nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem0: none, target_mem1: none) "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: readwrite) "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem0: none, target_mem1: none) "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem0: none, target_mem1: none) "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none, target_mem0: none, target_mem1: none) "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem0: none, target_mem1: none) "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }
attributes #16 = { nobuiltin nounwind "no-builtins" }
attributes #17 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{!"clang version 22.1.8"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !11, i64 16}
!9 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !10, i64 16, !11, i64 40, !5, i64 48, !5, i64 52, !6, i64 56, !5, i64 184, !12, i64 192, !12, i64 200, !12, i64 208, !12, i64 216}
!10 = !{!"", !11, i64 0, !11, i64 8, !11, i64 16}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!9, !5, i64 48}
!14 = !{!9, !5, i64 184}
!15 = !{!9, !12, i64 208}
!16 = !{!9, !12, i64 192}
!17 = !{!9, !12, i64 216}
!18 = !{!9, !12, i64 200}
!19 = !{!20, !20, i64 0}
!20 = !{!"long", !6, i64 0}
!21 = !{!22, !11, i64 0}
!22 = !{!"", !11, i64 0, !6, i64 8, !6, i64 6728, !6, i64 13448, !6, i64 13960, !5, i64 18056, !5, i64 18060, !5, i64 18064, !5, i64 18068, !5, i64 18072, !5, i64 18076, !6, i64 18080, !5, i64 18464, !5, i64 18468, !6, i64 18472, !5, i64 18476, !5, i64 18480, !5, i64 18484, !5, i64 18488, !5, i64 18492, !5, i64 18496, !5, i64 18500, !5, i64 18504, !5, i64 18508, !5, i64 18512, !5, i64 18516, !6, i64 18520, !5, i64 18536, !5, i64 18540, !11, i64 18544, !11, i64 18552, !11, i64 18560}
!23 = !{!12, !12, i64 0}
!24 = !{!9, !5, i64 0}
!25 = !{!9, !5, i64 4}
!26 = !{!27, !11, i64 0}
!27 = !{!"", !11, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !5, i64 32}
!28 = !{!29, !5, i64 0}
!29 = !{!"", !5, i64 0, !5, i64 4, !12, i64 8, !12, i64 16, !12, i64 24, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !6, i64 52, !6, i64 1076, !6, i64 2100, !12, i64 34872, !5, i64 34880, !5, i64 34884, !5, i64 34888, !5, i64 34892, !5, i64 34896, !5, i64 34900, !5, i64 34904, !5, i64 34908, !5, i64 34912, !5, i64 34916, !5, i64 34920}
!30 = !{!29, !5, i64 4}
!31 = !{!32, !5, i64 28}
!32 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32}
!33 = !{!9, !11, i64 40}
!34 = !{!9, !5, i64 52}
!35 = !{!6, !6, i64 0}
!36 = !{!9, !11, i64 24}
!37 = !{!38, !5, i64 0}
!38 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8}
!39 = !{!40, !40, i64 0}
!40 = !{!"short", !6, i64 0}
!41 = !{!42}
!42 = distinct !{!42, !43}
!43 = distinct !{!43, !"LVerDomain"}
!44 = !{!45}
!45 = distinct !{!45, !43}
!46 = distinct !{!46, !47, !48, !49}
!47 = !{!"llvm.loop.mustprogress"}
!48 = !{!"llvm.loop.isvectorized", i32 1}
!49 = !{!"llvm.loop.unroll.runtime.disable"}
!50 = !{!"branch_weights", i32 4, i32 12}
!51 = distinct !{!51, !47, !48, !49}
!52 = distinct !{!52, !47, !48}
!53 = distinct !{!53, !47}
!54 = !{!22, !5, i64 18504}
!55 = !{!22, !5, i64 18508}
!56 = !{!22, !6, i64 18472}
!57 = distinct !{!57, !47}
!58 = !{!9, !11, i64 32}
!59 = distinct !{!59, !47}
!60 = !{!22, !5, i64 18480}
!61 = distinct !{!61, !47}
!62 = !{!22, !5, i64 18536}
!63 = distinct !{!63, !47}
!64 = distinct !{!64, !47}
!65 = distinct !{!65, !47}
!66 = distinct !{!66, !47}
!67 = distinct !{!67, !47}
!68 = distinct !{!68, !47}
!69 = distinct !{!69, !47}
!70 = distinct !{!70, !47}
!71 = !{!9, !5, i64 8}
!72 = !{!73, !12, i64 48}
!73 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !12, i64 48, !11, i64 56, !11, i64 64, !12, i64 72, !74, i64 80, !5, i64 88, !5, i64 92}
!74 = !{!"p1 short", !11, i64 0}
!75 = !{!73, !12, i64 72}
!76 = distinct !{!76, !47}
!77 = distinct !{!77, !78}
!78 = !{!"llvm.loop.unroll.disable"}
!79 = !{!22, !5, i64 18512}
!80 = !{!73, !5, i64 0}
!81 = !{!73, !5, i64 4}
!82 = !{!73, !5, i64 8}
!83 = !{!73, !5, i64 12}
!84 = distinct !{!84, !47}
!85 = distinct !{!85, !47}
!86 = distinct !{!86, !47}
!87 = !{!22, !5, i64 18056}
!88 = !{!22, !5, i64 18060}
!89 = !{!22, !5, i64 18072}
!90 = !{!22, !5, i64 18076}
!91 = !{!22, !5, i64 18064}
!92 = !{!22, !5, i64 18068}
!93 = !{!73, !5, i64 28}
!94 = !{!73, !5, i64 32}
!95 = !{!73, !5, i64 36}
!96 = !{!73, !5, i64 40}
!97 = !{!73, !74, i64 80}
!98 = !{!73, !11, i64 64}
!99 = !{!73, !11, i64 56}
!100 = distinct !{!100, !47}
!101 = distinct !{!101, !47}
!102 = distinct !{!102, !47}
!103 = distinct !{!103, !47}
!104 = distinct !{!104, !47}
!105 = distinct !{!105, !47}
!106 = distinct !{!106, !47}
!107 = distinct !{!107, !47}
!108 = !{!27, !12, i64 16}
!109 = !{!27, !12, i64 8}
!110 = !{!27, !12, i64 24}
!111 = distinct !{!111, !47}
!112 = !{!27, !5, i64 32}
!113 = distinct !{!113, !47}
!114 = distinct !{!114, !47}
!115 = distinct !{!115, !47}
!116 = distinct !{!116, !47}
!117 = distinct !{!117, !47}
!118 = !{!119, !12, i64 0}
!119 = !{!"", !12, i64 0, !12, i64 8, !5, i64 16, !5, i64 20, !5, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !5, i64 56, !120, i64 60, !120, i64 2080}
!120 = !{!"", !6, i64 0, !6, i64 1024, !6, i64 1056, !6, i64 1124, !6, i64 1156, !6, i64 1444}
!121 = !{!119, !12, i64 8}
!122 = !{!119, !12, i64 40}
!123 = !{!119, !12, i64 32}
!124 = !{!119, !12, i64 48}
!125 = !{!119, !5, i64 56}
!126 = !{!119, !5, i64 16}
!127 = !{!119, !5, i64 24}
!128 = !{!119, !5, i64 20}
!129 = distinct !{!129, !47}
!130 = distinct !{!130, !47}
!131 = distinct !{!131, !78}
!132 = distinct !{!132, !47}
!133 = distinct !{!133, !47}
!134 = distinct !{!134, !47}
!135 = distinct !{!135, !47}
!136 = distinct !{!136, !47, !48, !49}
!137 = distinct !{!137, !47, !49, !48}
!138 = distinct !{!138, !47, !48, !49}
!139 = distinct !{!139, !78}
!140 = distinct !{!140, !47, !48}
!141 = distinct !{!141, !47}
!142 = !{!9, !5, i64 12}
!143 = distinct !{!143, !47}
!144 = distinct !{!144, !47}
!145 = distinct !{!145, !47}
!146 = distinct !{!146, !47}
!147 = distinct !{!147, !47}
!148 = distinct !{!148, !78}
!149 = !{!150}
!150 = distinct !{!150, !151}
!151 = distinct !{!151, !"LVerDomain"}
!152 = !{!153}
!153 = distinct !{!153, !151}
!154 = distinct !{!154, !47, !48, !49}
!155 = distinct !{!155, !78}
!156 = distinct !{!156, !47, !48}
!157 = distinct !{!157, !47}
!158 = distinct !{!158, !47}
!159 = distinct !{!159, !47}
!160 = distinct !{!160, !78}
!161 = distinct !{!161, !47}
!162 = distinct !{!162, !78}
!163 = distinct !{!163, !47}
!164 = distinct !{!164, !47, !48}
!165 = distinct !{!165, !47}
!166 = distinct !{!166, !47, !48, !49}
!167 = !{!"branch_weights", i32 4, i32 28}
!168 = distinct !{!168, !47, !48, !49}
!169 = distinct !{!169, !78}
!170 = distinct !{!170, !47, !48, !49}
!171 = distinct !{!171, !47, !48, !49}
!172 = distinct !{!172, !47, !48, !49}
!173 = distinct !{!173, !47, !48, !49}
!174 = distinct !{!174, !78}
!175 = distinct !{!175, !47, !48, !49}
!176 = distinct !{!176, !47, !48, !49}
!177 = distinct !{!177, !47, !48}
!178 = distinct !{!178, !47, !48}
!179 = distinct !{!179, !47, !48, !49}
!180 = distinct !{!180, !47, !48, !49}
!181 = distinct !{!181, !47, !48}
!182 = distinct !{!182, !47, !48}
!183 = distinct !{!183, !47, !48, !49}
!184 = distinct !{!184, !47, !48, !49}
!185 = distinct !{!185, !47, !48}
!186 = distinct !{!186, !47, !48}
!187 = distinct !{!187, !47, !48, !49}
!188 = distinct !{!188, !47, !48, !49}
!189 = distinct !{!189, !47, !48}
!190 = distinct !{!190, !47}
!191 = distinct !{!191, !47}
!192 = distinct !{!192, !47}
!193 = distinct !{!193, !47}
!194 = distinct !{!194, !47}
!195 = !{!196}
!196 = distinct !{!196, !197}
!197 = distinct !{!197, !"LVerDomain"}
!198 = !{!199}
!199 = distinct !{!199, !197}
!200 = distinct !{!200, !47, !48, !49}
!201 = distinct !{!201, !47, !48}
!202 = distinct !{!202, !47}
!203 = distinct !{!203, !47}
!204 = distinct !{!204, !47}
!205 = distinct !{!205, !78}
!206 = distinct !{!206, !47}
!207 = !{!29, !5, i64 32}
!208 = !{!29, !5, i64 36}
!209 = !{!29, !5, i64 40}
!210 = !{!29, !5, i64 44}
!211 = distinct !{!211, !47}
!212 = !{!32, !5, i64 4}
!213 = !{!32, !5, i64 8}
!214 = !{!32, !5, i64 32}
!215 = !{!32, !5, i64 0}
!216 = !{!32, !5, i64 12}
!217 = !{!32, !5, i64 16}
!218 = !{!32, !5, i64 20}
!219 = !{!32, !5, i64 24}
!220 = !{!38, !5, i64 8}
!221 = !{!38, !5, i64 4}
!222 = distinct !{!222, !78}
!223 = distinct !{!223, !47}
!224 = distinct !{!224, !47}
!225 = distinct !{!225, !47}
!226 = distinct !{!226, !47}
!227 = distinct !{!227, !47}
!228 = distinct !{!228, !47}
!229 = distinct !{!229, !47}
!230 = distinct !{!230, !47}
!231 = distinct !{!231, !47}
!232 = distinct !{!232, !47}
!233 = distinct !{!233, !47}
!234 = distinct !{!234, !47}
!235 = distinct !{!235, !78}
!236 = distinct !{!236, !47}
!237 = distinct !{!237, !47}
!238 = distinct !{!238, !47}
!239 = !{!29, !12, i64 8}
!240 = !{!29, !12, i64 16}
!241 = !{!29, !12, i64 24}
!242 = !{!29, !5, i64 48}
!243 = distinct !{!243, !47}
!244 = !{!29, !5, i64 34916}
!245 = !{!29, !5, i64 34892}
!246 = !{!29, !5, i64 34896}
!247 = !{!29, !5, i64 34900}
!248 = !{!29, !5, i64 34904}
!249 = !{!29, !5, i64 34908}
!250 = !{!29, !5, i64 34888}
!251 = !{!29, !5, i64 34884}
!252 = !{!29, !5, i64 34880}
!253 = !{!29, !12, i64 34872}
!254 = !{!255, !40, i64 0}
!255 = !{!"", !40, i64 0, !6, i64 2, !6, i64 3}
!256 = !{!255, !6, i64 2}
!257 = !{!255, !6, i64 3}
!258 = distinct !{!258, !47}
!259 = distinct !{!259, !78}
!260 = distinct !{!260, !47}
!261 = distinct !{!261, !47}
!262 = !{!29, !5, i64 34920}
!263 = distinct !{!263, !47}
!264 = !{!22, !11, i64 18544}
!265 = !{!22, !11, i64 18552}
!266 = !{!22, !11, i64 18560}
!267 = !{!22, !5, i64 18516}
!268 = distinct !{!268, !47}
!269 = !{!73, !5, i64 16}
!270 = !{!73, !5, i64 20}
!271 = distinct !{!271, !47}
!272 = !{!22, !5, i64 18484}
!273 = !{!22, !5, i64 18488}
!274 = !{!22, !5, i64 18492}
!275 = !{!22, !5, i64 18496}
!276 = !{!22, !5, i64 18468}
!277 = !{!22, !5, i64 18464}
!278 = !{!22, !5, i64 18476}
!279 = !{!73, !5, i64 24}
!280 = !{!22, !5, i64 18540}
!281 = !{!22, !5, i64 18500}
!282 = distinct !{!282, !47}
!283 = distinct !{!283, !47}
!284 = distinct !{!284, !47}
!285 = distinct !{!285, !47}
!286 = distinct !{!286, !47}
!287 = distinct !{!287, !47}
!288 = distinct !{!288, !47}
!289 = !{!73, !5, i64 88}
!290 = distinct !{!290, !47}
!291 = distinct !{!291, !47}
!292 = distinct !{!292, !47}
!293 = distinct !{!293, !47}
!294 = distinct !{!294, !47}
!295 = distinct !{!295, !47}
!296 = distinct !{!296, !47}
!297 = distinct !{!297, !47}
!298 = distinct !{!298, !47}
!299 = distinct !{!299, !47}
!300 = distinct !{!300, !47}
!301 = distinct !{!301, !47}
!302 = !{!303}
!303 = distinct !{!303, !304}
!304 = distinct !{!304, !"LVerDomain"}
!305 = !{!306}
!306 = distinct !{!306, !304}
!307 = distinct !{!307, !47, !48}
!308 = distinct !{!308, !47}
!309 = distinct !{!309, !47}
!310 = distinct !{!310, !47}
!311 = !{!312, !5, i64 24}
!312 = !{!"", !11, i64 0, !12, i64 8, !12, i64 16, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40}
!313 = !{!312, !5, i64 28}
!314 = !{!312, !5, i64 36}
!315 = !{!312, !5, i64 32}
!316 = !{!312, !5, i64 40}
!317 = !{!312, !12, i64 16}
!318 = !{!312, !12, i64 8}
!319 = !{!312, !11, i64 0}
!320 = distinct !{!320, !47}
!321 = distinct !{!321, !47}
!322 = distinct !{!322, !47}
!323 = distinct !{!323, !47}
!324 = distinct !{!324, !47}
!325 = distinct !{!325, !47}
!326 = distinct !{!326, !47}
!327 = distinct !{!327, !47}
!328 = distinct !{!328, !47}
!329 = distinct !{!329, !47, !48, !49}
!330 = distinct !{!330, !47, !49, !48}
!331 = distinct !{!331, !47}
!332 = distinct !{!332, !47, !48, !49}
!333 = distinct !{!333, !78}
!334 = distinct !{!334, !47, !48}
!335 = distinct !{!335, !47}
!336 = !{!337}
!337 = distinct !{!337, !338}
!338 = distinct !{!338, !"LVerDomain"}
!339 = !{!340}
!340 = distinct !{!340, !338}
!341 = distinct !{!341, !47, !48, !49}
!342 = distinct !{!342, !47, !48, !49}
!343 = distinct !{!343, !47, !48}
!344 = distinct !{!344, !47}
!345 = distinct !{!345, !47}
!346 = distinct !{!346, !78}
!347 = distinct !{!347, !47}
!348 = distinct !{!348, !47}
!349 = distinct !{!349, !47}
!350 = distinct !{!350, !47}
!351 = !{!29, !5, i64 34912}
!352 = distinct !{!352, !47}
!353 = distinct !{!353, !47}
!354 = distinct !{!354, !47}
!355 = distinct !{!355, !47}
!356 = !{!357}
!357 = distinct !{!357, !358}
!358 = distinct !{!358, !"LVerDomain"}
!359 = !{!360}
!360 = distinct !{!360, !358}
!361 = !{!362}
!362 = distinct !{!362, !358}
!363 = distinct !{!363, !47, !48, !49}
!364 = distinct !{!364, !47, !48}
!365 = distinct !{!365, !47, !48, !49}
!366 = distinct !{!366, !47, !48, !49}
!367 = distinct !{!367, !47, !48}
!368 = !{!369}
!369 = distinct !{!369, !370}
!370 = distinct !{!370, !"LVerDomain"}
!371 = !{!372}
!372 = distinct !{!372, !370}
!373 = distinct !{!373, !47, !48, !49}
!374 = distinct !{!374, !47, !48}
!375 = distinct !{!375, !47, !48, !49}
!376 = distinct !{!376, !47, !48, !49}
!377 = distinct !{!377, !78}
!378 = distinct !{!378, !47, !48}
!379 = distinct !{!379, !47}
!380 = distinct !{!380, !47}
!381 = distinct !{!381, !47}
!382 = distinct !{!382, !47}
