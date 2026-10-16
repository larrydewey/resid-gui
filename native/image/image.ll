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
  %109 = add nsw i32 %108, %107
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
  %147 = add nsw i32 %146, %145
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
  %190 = add nsw i32 %189, %188
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
  %224 = sub nsw i32 4, %217
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
  %254 = add nsw i32 %253, %252
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
  %284 = sub nsw i32 4, %277
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
  %304 = sub nsw i32 9, %297
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
  %339 = add nsw i32 %338, %337
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
  %386 = icmp samesign ugt i64 %384, %385
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
  %497 = shl nsw i64 %496, 2
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
  %512 = shl nsw i64 %510, 2
  %513 = getelementptr inbounds nuw i8, ptr %493, i64 %512
  %514 = getelementptr inbounds nuw i8, ptr %513, i64 2
  %515 = load i8, ptr %514, align 1, !tbaa !35
  %516 = getelementptr inbounds nuw i8, ptr %3, i64 %512
  %517 = getelementptr inbounds nuw i8, ptr %516, i64 16
  store i8 %515, ptr %517, align 1, !tbaa !35
  %518 = getelementptr inbounds nuw i8, ptr %513, i64 1
  %519 = load i8, ptr %518, align 1, !tbaa !35
  %520 = getelementptr inbounds nuw i8, ptr %516, i64 17
  store i8 %519, ptr %520, align 1, !tbaa !35
  %521 = load i8, ptr %513, align 1, !tbaa !35
  %522 = getelementptr inbounds nuw i8, ptr %516, i64 18
  store i8 %521, ptr %522, align 1, !tbaa !35
  %523 = getelementptr inbounds nuw i8, ptr %513, i64 3
  %524 = load i8, ptr %523, align 1, !tbaa !35
  %525 = getelementptr inbounds nuw i8, ptr %516, i64 19
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
  %532 = shl nsw i64 %530, 2
  %533 = getelementptr inbounds nuw i8, ptr %493, i64 %532
  %534 = getelementptr inbounds nuw i8, ptr %533, i64 2
  %535 = load i8, ptr %534, align 1, !tbaa !35
  %536 = getelementptr inbounds nuw i8, ptr %3, i64 %532
  %537 = getelementptr inbounds nuw i8, ptr %536, i64 16
  store i8 %535, ptr %537, align 1, !tbaa !35
  %538 = getelementptr inbounds nuw i8, ptr %533, i64 1
  %539 = load i8, ptr %538, align 1, !tbaa !35
  %540 = getelementptr inbounds nuw i8, ptr %536, i64 17
  store i8 %539, ptr %540, align 1, !tbaa !35
  %541 = load i8, ptr %533, align 1, !tbaa !35
  %542 = getelementptr inbounds nuw i8, ptr %536, i64 18
  store i8 %541, ptr %542, align 1, !tbaa !35
  %543 = getelementptr inbounds nuw i8, ptr %533, i64 3
  %544 = load i8, ptr %543, align 1, !tbaa !35
  %545 = getelementptr inbounds nuw i8, ptr %536, i64 19
  store i8 %544, ptr %545, align 1, !tbaa !35
  %546 = shl i64 %530, 2
  %547 = or disjoint i64 %546, 4
  %548 = getelementptr inbounds nuw i8, ptr %493, i64 %547
  %549 = getelementptr inbounds nuw i8, ptr %548, i64 2
  %550 = load i8, ptr %549, align 1, !tbaa !35
  %551 = getelementptr inbounds nuw i8, ptr %3, i64 %547
  %552 = getelementptr inbounds nuw i8, ptr %551, i64 16
  store i8 %550, ptr %552, align 1, !tbaa !35
  %553 = getelementptr inbounds nuw i8, ptr %548, i64 1
  %554 = load i8, ptr %553, align 1, !tbaa !35
  %555 = getelementptr inbounds nuw i8, ptr %551, i64 17
  store i8 %554, ptr %555, align 1, !tbaa !35
  %556 = load i8, ptr %548, align 1, !tbaa !35
  %557 = getelementptr inbounds nuw i8, ptr %551, i64 18
  store i8 %556, ptr %557, align 1, !tbaa !35
  %558 = getelementptr inbounds nuw i8, ptr %548, i64 3
  %559 = load i8, ptr %558, align 1, !tbaa !35
  %560 = getelementptr inbounds nuw i8, ptr %551, i64 19
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
  %38 = add nsw i32 %37, %35
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
  %85 = add nsw i32 %84, %82
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
  %53 = add nsw i32 %52, %50
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
  %111 = add nsw i32 %110, %108
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
  %184 = add nsw i32 %183, %181
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
  %236 = add nsw i32 %235, %233
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
  %252 = add nuw nsw i32 %204, %250
  %253 = add nuw nsw i64 %203, 1
  %254 = icmp eq i64 %253, 16
  br i1 %254, label %255, label %202, !llvm.loop !65

255:                                              ; preds = %248
  %256 = icmp samesign ugt i32 %252, 256
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
  %274 = icmp eq i32 %252, 0
  br i1 %274, label %327, label %275

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
  %310 = add nsw i32 %309, %307
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
  %377 = sub nsw i32 %258, %252
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
  %429 = add nsw i32 %428, %426
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
  %493 = add nsw i32 %492, %490
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
  %554 = sub nsw i32 %529, %547
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
  %37 = add nsw i32 %36, %34
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
  %93 = add nsw i32 %92, %90
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
  %190 = add nsw i32 %189, %188
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
  %215 = add nsw i32 %214, 1
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
  %238 = add nsw i32 %237, %236
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
  %285 = add nsw i32 %284, %283
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
  %386 = shl nsw i32 %383, 3
  %387 = getelementptr inbounds nuw i8, ptr %0, i64 18072
  store i32 %386, ptr %387, align 8, !tbaa !89
  %388 = shl nsw i32 %382, 3
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
  %32 = add nsw i32 %31, %29
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
  %32 = add nsw i32 %31, %29
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
  %74 = add nsw i32 %73, %71
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

4:                                                ; preds = %2, %28
  %5 = phi i64 [ 0, %2 ], [ %30, %28 ]
  %6 = phi i32 [ 0, %2 ], [ %29, %28 ]
  %7 = getelementptr inbounds nuw i32, ptr %1, i64 %5
  %8 = load i32, ptr %7, align 4, !tbaa !4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %28

10:                                               ; preds = %4
  %11 = trunc i64 %5 to i8
  %12 = add nuw nsw i8 %11, 1
  %13 = sext i32 %6 to i64
  %14 = tail call i32 @llvm.smax.i32(i32 %6, i32 256)
  %15 = sub i32 %14, %6
  br label %16

16:                                               ; preds = %10, %21
  %17 = phi i64 [ %13, %10 ], [ %22, %21 ]
  %18 = phi i32 [ 0, %10 ], [ %23, %21 ]
  %19 = getelementptr inbounds i8, ptr %3, i64 %17
  store i8 %12, ptr %19, align 1, !tbaa !35
  %20 = icmp eq i32 %18, %15
  br i1 %20, label %106, label %21

21:                                               ; preds = %16
  %22 = add nsw i64 %17, 1
  %23 = add nuw nsw i32 %18, 1
  %24 = load i32, ptr %7, align 4, !tbaa !4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %16, label %26, !llvm.loop !101

26:                                               ; preds = %21
  %27 = trunc nsw i64 %22 to i32
  br label %28

28:                                               ; preds = %26, %4
  %29 = phi i32 [ %6, %4 ], [ %27, %26 ]
  %30 = add nuw nsw i64 %5, 1
  %31 = icmp eq i64 %30, 16
  br i1 %31, label %32, label %4, !llvm.loop !102

32:                                               ; preds = %28
  %33 = sext i32 %29 to i64
  %34 = getelementptr inbounds i8, ptr %3, i64 %33
  store i8 0, ptr %34, align 1, !tbaa !35
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 1612
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 1540
  br label %38

38:                                               ; preds = %32, %65
  %39 = phi i64 [ 1, %32 ], [ %73, %65 ]
  %40 = phi i32 [ 0, %32 ], [ %72, %65 ]
  %41 = phi i32 [ 0, %32 ], [ %66, %65 ]
  %42 = sub i32 %41, %40
  %43 = getelementptr inbounds nuw i32, ptr %35, i64 %39
  store i32 %42, ptr %43, align 4, !tbaa !4
  %44 = sext i32 %41 to i64
  %45 = getelementptr inbounds i8, ptr %3, i64 %44
  %46 = load i8, ptr %45, align 1, !tbaa !35
  %47 = zext i8 %46 to i64
  %48 = icmp eq i64 %39, %47
  br i1 %48, label %49, label %65

49:                                               ; preds = %38, %49
  %50 = phi i64 [ %54, %49 ], [ %44, %38 ]
  %51 = phi i32 [ %52, %49 ], [ %40, %38 ]
  %52 = add i32 %51, 1
  %53 = trunc i32 %51 to i16
  %54 = add nsw i64 %50, 1
  %55 = getelementptr inbounds i16, ptr %36, i64 %50
  store i16 %53, ptr %55, align 2, !tbaa !39
  %56 = getelementptr inbounds i8, ptr %3, i64 %54
  %57 = load i8, ptr %56, align 1, !tbaa !35
  %58 = zext i8 %57 to i64
  %59 = icmp eq i64 %39, %58
  br i1 %59, label %49, label %60, !llvm.loop !103

60:                                               ; preds = %49
  %61 = trunc nsw i64 %54 to i32
  %62 = trunc nuw nsw i64 %39 to i32
  %63 = lshr i32 %51, %62
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %106

65:                                               ; preds = %60, %38
  %66 = phi i32 [ %61, %60 ], [ %41, %38 ]
  %67 = phi i32 [ %52, %60 ], [ %40, %38 ]
  %68 = trunc i64 %39 to i32
  %69 = sub i32 16, %68
  %70 = shl i32 %67, %69
  %71 = getelementptr inbounds nuw i32, ptr %37, i64 %39
  store i32 %70, ptr %71, align 4, !tbaa !4
  %72 = shl i32 %67, 1
  %73 = add nuw nsw i64 %39, 1
  %74 = icmp eq i64 %73, 17
  br i1 %74, label %75, label %38, !llvm.loop !104

75:                                               ; preds = %65
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 1608
  store i32 -1, ptr %76, align 4, !tbaa !4
  %77 = tail call ptr @memset(ptr noundef nonnull %0, i32 noundef 255, i64 noundef 512) #16
  %78 = icmp sgt i32 %66, 0
  br i1 %78, label %79, label %106

79:                                               ; preds = %75
  %80 = zext nneg i32 %66 to i64
  br label %81

81:                                               ; preds = %79, %103
  %82 = phi i64 [ 0, %79 ], [ %104, %103 ]
  %83 = getelementptr inbounds nuw i8, ptr %3, i64 %82
  %84 = load i8, ptr %83, align 1, !tbaa !35
  %85 = icmp ult i8 %84, 10
  br i1 %85, label %86, label %103

86:                                               ; preds = %81
  %87 = getelementptr inbounds nuw i16, ptr %36, i64 %82
  %88 = load i16, ptr %87, align 2, !tbaa !39
  %89 = zext i16 %88 to i32
  %90 = sub nuw nsw i8 9, %84
  %91 = zext nneg i8 %90 to i32
  %92 = shl nuw nsw i32 %89, %91
  %93 = trunc i64 %82 to i8
  %94 = zext nneg i32 %92 to i64
  %95 = getelementptr inbounds nuw i8, ptr %0, i64 %94
  br label %96

96:                                               ; preds = %86, %96
  %97 = phi i64 [ 0, %86 ], [ %99, %96 ]
  %98 = getelementptr inbounds nuw i8, ptr %95, i64 %97
  store i8 %93, ptr %98, align 1, !tbaa !35
  %99 = add nuw nsw i64 %97, 1
  %100 = trunc nuw nsw i64 %99 to i32
  %101 = lshr i32 %100, %91
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %96, label %103, !llvm.loop !105

103:                                              ; preds = %96, %81
  %104 = add nuw nsw i64 %82, 1
  %105 = icmp eq i64 %104, %80
  br i1 %105, label %106, label %81, !llvm.loop !106

106:                                              ; preds = %16, %60, %103, %75
  %107 = phi i32 [ 0, %60 ], [ 1, %75 ], [ 1, %103 ], [ 0, %16 ]
  ret i32 %107
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
  %32 = sub nsw i32 %1, %25
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
  %13 = mul nsw i32 %1, %0
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
  %22 = mul nsw i32 %13, %2
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
  %12 = mul nsw i32 %1, %0
  %13 = xor i32 %2, 2147483647
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %28, label %15

15:                                               ; preds = %11
  %16 = add nsw i32 %12, %2
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
  %13 = mul nsw i32 %1, %0
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
  %22 = mul nsw i32 %13, %2
  %23 = xor i32 %3, 2147483647
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %38, label %25

25:                                               ; preds = %21
  %26 = add nsw i32 %22, %3
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
  %54 = add nsw i32 %53, %52
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
  br i1 %70, label %28, label %2004

71:                                               ; preds = %28
  %72 = icmp eq i32 %1, 1
  br i1 %72, label %2004, label %73

73:                                               ; preds = %71
  %74 = icmp eq i32 %1, 2
  %75 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %77 = getelementptr inbounds nuw i8, ptr %12, i64 4
  %78 = getelementptr inbounds nuw i8, ptr %12, i64 24
  br label %79

79:                                               ; preds = %73, %1992
  %80 = phi i32 [ %1993, %1992 ], [ 0, %73 ]
  %81 = phi i32 [ %1994, %1992 ], [ 0, %73 ]
  %82 = phi i32 [ %1995, %1992 ], [ 0, %73 ]
  %83 = phi i32 [ %1996, %1992 ], [ 1, %73 ]
  %84 = phi i32 [ %1997, %1992 ], [ 0, %73 ]
  %85 = phi i32 [ %1998, %1992 ], [ 0, %73 ]
  %86 = phi i32 [ %1999, %1992 ], [ 0, %73 ]
  %87 = phi i8 [ %2000, %1992 ], [ 0, %73 ]
  %88 = phi i8 [ %2001, %1992 ], [ 0, %73 ]
  %89 = tail call fastcc i32 @stbi__get16be(ptr noundef %12) #17
  %90 = shl nuw i32 %89, 16
  %91 = tail call fastcc i32 @stbi__get16be(ptr noundef %12) #17
  %92 = or disjoint i32 %90, %91
  %93 = tail call fastcc i32 @stbi__get16be(ptr noundef %12) #17
  %94 = shl nuw i32 %93, 16
  %95 = tail call fastcc i32 @stbi__get16be(ptr noundef %12) #17
  %96 = or disjoint i32 %94, %95
  switch i32 %96, label %1960 [
    i32 1130840649, label %97
    i32 1229472850, label %124
    i32 1347179589, label %259
    i32 1951551059, label %385
    i32 1229209940, label %490
    i32 1229278788, label %562
  ]

97:                                               ; preds = %79
  %98 = icmp eq i32 %92, 0
  br i1 %98, label %1992, label %99

99:                                               ; preds = %97
  %100 = icmp slt i32 %90, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %99
  %102 = load ptr, ptr %17, align 8, !tbaa !18
  store ptr %102, ptr %16, align 8, !tbaa !16
  br label %1992

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
  %119 = sub nsw i32 %92, %114
  tail call void %117(ptr noundef %118, i32 noundef %119) #16
  br label %1992

120:                                              ; preds = %108, %106
  %121 = phi ptr [ %107, %106 ], [ %110, %108 ]
  %122 = zext nneg i32 %92 to i64
  %123 = getelementptr inbounds nuw i8, ptr %121, i64 %122
  store ptr %123, ptr %16, align 8, !tbaa !16
  br label %1992

124:                                              ; preds = %79
  %125 = icmp ne i32 %83, 0
  %126 = icmp eq i32 %92, 13
  %127 = and i1 %125, %126
  br i1 %127, label %128, label %2004

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
  br i1 %137, label %2004, label %138

138:                                              ; preds = %128
  %139 = load i32, ptr %12, align 8, !tbaa !24
  %140 = icmp ugt i32 %139, 4096
  br i1 %140, label %2004, label %141

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
  %163 = add nsw i32 %162, %161
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
  br i1 %182, label %183, label %2004

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
  %203 = add nsw i32 %202, %201
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
  br i1 %216, label %2004, label %217

217:                                              ; preds = %213
  %218 = icmp eq i8 %214, 3
  br i1 %218, label %219, label %222

219:                                              ; preds = %217
  %220 = load i32, ptr %76, align 8, !tbaa !112
  %221 = icmp eq i32 %220, 16
  br i1 %221, label %2004, label %225

222:                                              ; preds = %217
  %223 = and i32 %215, 1
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %2004

225:                                              ; preds = %188, %219, %222
  %226 = phi i8 [ %214, %222 ], [ 3, %219 ], [ 0, %188 ]
  %227 = phi i32 [ %215, %222 ], [ 3, %219 ], [ 0, %188 ]
  %228 = phi i8 [ %88, %222 ], [ 3, %219 ], [ %88, %188 ]
  %229 = tail call fastcc zeroext i8 @stbi__get8(ptr noundef nonnull %12) #17
  %230 = icmp eq i8 %229, 0
  br i1 %230, label %231, label %2004

231:                                              ; preds = %225
  %232 = tail call fastcc zeroext i8 @stbi__get8(ptr noundef nonnull %12) #17
  %233 = icmp eq i8 %232, 0
  br i1 %233, label %234, label %2004

234:                                              ; preds = %231
  %235 = tail call fastcc zeroext i8 @stbi__get8(ptr noundef nonnull %12) #17
  %236 = zext i8 %235 to i32
  %237 = icmp ugt i8 %235, 1
  br i1 %237, label %2004, label %238

238:                                              ; preds = %234
  %239 = load i32, ptr %12, align 8, !tbaa !24
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %2004, label %241

241:                                              ; preds = %238
  %242 = load i32, ptr %77, align 4, !tbaa !25
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %2004, label %244

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
  br i1 %254, label %2004, label %1992

255:                                              ; preds = %244
  store i32 1, ptr %75, align 8, !tbaa !71
  %256 = udiv i32 1073741824, %239
  %257 = lshr i32 %256, 2
  %258 = icmp ult i32 %257, %242
  br i1 %258, label %2004, label %1992

259:                                              ; preds = %79
  %260 = icmp ne i32 %83, 0
  %261 = icmp ugt i32 %92, 768
  %262 = select i1 %260, i1 true, i1 %261
  br i1 %262, label %2004, label %263

263:                                              ; preds = %259
  %264 = trunc nuw nsw i32 %91 to i16
  %265 = udiv i16 %264, 3
  %266 = zext nneg i16 %265 to i32
  %267 = mul nuw nsw i32 %266, 3
  %268 = icmp eq i32 %267, %92
  br i1 %268, label %269, label %2004

269:                                              ; preds = %263
  %270 = icmp samesign ult i32 %91, 3
  br i1 %270, label %1992, label %271

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
  %298 = add nsw i32 %297, %296
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
  %333 = add nsw i32 %332, %331
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
  %367 = add nsw i32 %366, %365
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
  br i1 %384, label %1992, label %275, !llvm.loop !113

385:                                              ; preds = %79
  %386 = icmp eq i32 %83, 0
  br i1 %386, label %387, label %2004

387:                                              ; preds = %385
  %388 = load ptr, ptr %14, align 8, !tbaa !109
  %389 = icmp eq ptr %388, null
  br i1 %389, label %390, label %2004

390:                                              ; preds = %387
  %391 = icmp eq i8 %88, 0
  br i1 %391, label %447, label %392

392:                                              ; preds = %390
  br i1 %74, label %393, label %394

393:                                              ; preds = %392
  store i32 4, ptr %75, align 8, !tbaa !71
  br label %2004

394:                                              ; preds = %392
  %395 = icmp eq i32 %84, 0
  %396 = icmp ult i32 %84, %92
  %397 = select i1 %395, i1 true, i1 %396
  br i1 %397, label %2004, label %398

398:                                              ; preds = %394
  %399 = icmp eq i32 %92, 0
  br i1 %399, label %1992, label %400

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
  %428 = add nsw i32 %427, %426
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
  br i1 %446, label %1992, label %405, !llvm.loop !114

447:                                              ; preds = %390
  %448 = load i32, ptr %75, align 8, !tbaa !71
  %449 = and i32 %448, 1
  %450 = icmp ne i32 %449, 0
  %451 = shl i32 %448, 1
  %452 = icmp eq i32 %451, %92
  %453 = and i1 %450, %452
  br i1 %453, label %454, label %2004

454:                                              ; preds = %447
  br i1 %74, label %455, label %457

455:                                              ; preds = %454
  %456 = add nsw i32 %448, 1
  store i32 %456, ptr %75, align 8, !tbaa !71
  br label %2004

457:                                              ; preds = %454
  %458 = load i32, ptr %76, align 8, !tbaa !112
  %459 = icmp eq i32 %458, 16
  %460 = icmp sgt i32 %448, 0
  br i1 %459, label %462, label %461

461:                                              ; preds = %457
  br i1 %460, label %474, label %1992

462:                                              ; preds = %457
  br i1 %460, label %463, label %1992

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
  br i1 %473, label %463, label %1992, !llvm.loop !115

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
  br i1 %489, label %474, label %1992, !llvm.loop !116

490:                                              ; preds = %79
  %491 = icmp eq i32 %83, 0
  br i1 %491, label %492, label %2004

492:                                              ; preds = %490
  %493 = icmp eq i8 %88, 0
  %494 = icmp ne i32 %84, 0
  %495 = select i1 %493, i1 true, i1 %494
  br i1 %495, label %496, label %2004

496:                                              ; preds = %492
  br i1 %74, label %497, label %500

497:                                              ; preds = %496
  br i1 %493, label %2004, label %498

498:                                              ; preds = %497
  %499 = zext nneg i8 %88 to i32
  store i32 %499, ptr %75, align 8, !tbaa !71
  br label %2004

500:                                              ; preds = %496
  %501 = icmp ugt i32 %92, 1073741824
  br i1 %501, label %2004, label %502

502:                                              ; preds = %500
  %503 = add i32 %92, %86
  %504 = icmp slt i32 %503, %86
  br i1 %504, label %2004, label %505

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
  br i1 %521, label %2004, label %522

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
  br i1 %540, label %551, label %541

541:                                              ; preds = %533, %530
  %542 = phi ptr [ %532, %530 ], [ %534, %533 ]
  %543 = phi ptr [ %531, %530 ], [ %535, %533 ]
  %544 = zext nneg i32 %92 to i64
  %545 = getelementptr inbounds nuw i8, ptr %543, i64 %544
  %546 = icmp ugt ptr %545, %542
  br i1 %546, label %2004, label %547

547:                                              ; preds = %541
  %548 = tail call ptr @memcpy(ptr noundef %527, ptr noundef %543, i64 noundef %544) #16
  %549 = load ptr, ptr %16, align 8, !tbaa !16
  %550 = getelementptr inbounds nuw i8, ptr %549, i64 %544
  store ptr %550, ptr %16, align 8, !tbaa !16
  br label %1992

551:                                              ; preds = %533
  %552 = shl i64 %538, 32
  %553 = ashr exact i64 %552, 32
  %554 = tail call ptr @memcpy(ptr noundef %527, ptr noundef %535, i64 noundef %553) #16
  %555 = load ptr, ptr %19, align 8, !tbaa !8
  %556 = load ptr, ptr %20, align 8, !tbaa !33
  %557 = getelementptr inbounds i8, ptr %527, i64 %553
  %558 = sub nsw i32 %92, %539
  %559 = tail call i32 %555(ptr noundef %556, ptr noundef %557, i32 noundef %558) #16
  %560 = icmp eq i32 %559, %558
  %561 = load ptr, ptr %17, align 8, !tbaa !18
  store ptr %561, ptr %16, align 8, !tbaa !16
  br i1 %560, label %1992, label %2004

562:                                              ; preds = %79
  %563 = icmp eq i32 %83, 0
  br i1 %563, label %564, label %2004

564:                                              ; preds = %562
  %565 = icmp eq i32 %1, 0
  br i1 %565, label %566, label %2004

566:                                              ; preds = %564
  %567 = load ptr, ptr %14, align 8, !tbaa !109
  %568 = icmp eq ptr %567, null
  br i1 %568, label %2004, label %569

569:                                              ; preds = %566
  %570 = load i32, ptr %12, align 8, !tbaa !24
  %571 = load i32, ptr %76, align 8, !tbaa !112
  %572 = mul i32 %571, %570
  %573 = add i32 %572, 7
  %574 = lshr i32 %573, 3
  %575 = load i32, ptr %77, align 4, !tbaa !25
  %576 = load i32, ptr %75, align 8, !tbaa !71
  %577 = mul i32 %576, %575
  %578 = mul i32 %577, %574
  %579 = add i32 %578, %575
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  %580 = sext i32 %579 to i64
  %581 = add nsw i64 %580, 15
  %582 = and i64 %581, -16
  %583 = add nsw i64 %582, 16
  %584 = load i64, ptr @arena_used, align 8, !tbaa !19
  %585 = sub i64 100663296, %584
  %586 = icmp ugt i64 %583, %585
  br i1 %586, label %1642, label %587

587:                                              ; preds = %569
  %588 = icmp eq i32 %82, 0
  %589 = getelementptr inbounds nuw i8, ptr @arena, i64 %584
  %590 = add i64 %583, %584
  store i64 %590, ptr @arena_used, align 8, !tbaa !19
  store i64 %580, ptr %589, align 8, !tbaa !19
  %591 = getelementptr inbounds nuw i8, ptr %589, i64 16
  store ptr %567, ptr %8, align 8, !tbaa !118
  %592 = sext i32 %86 to i64
  %593 = getelementptr inbounds i8, ptr %567, i64 %592
  %594 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %593, ptr %594, align 8, !tbaa !121
  %595 = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr %591, ptr %595, align 8, !tbaa !122
  %596 = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %591, ptr %596, align 8, !tbaa !123
  %597 = getelementptr inbounds i8, ptr %591, i64 %580
  %598 = getelementptr inbounds nuw i8, ptr %8, i64 48
  store ptr %597, ptr %598, align 8, !tbaa !124
  %599 = getelementptr inbounds nuw i8, ptr %8, i64 56
  store i32 1, ptr %599, align 8, !tbaa !125
  br i1 %588, label %600, label %627

600:                                              ; preds = %587
  %601 = icmp sgt i32 %86, 0
  br i1 %601, label %602, label %606

602:                                              ; preds = %600
  %603 = getelementptr inbounds nuw i8, ptr %567, i64 1
  %604 = load i8, ptr %567, align 1, !tbaa !35
  %605 = zext i8 %604 to i32
  br label %606

606:                                              ; preds = %602, %600
  %607 = phi ptr [ %603, %602 ], [ %567, %600 ]
  %608 = phi i32 [ %605, %602 ], [ 0, %600 ]
  %609 = and i32 %608, 15
  %610 = icmp ult ptr %607, %593
  br i1 %610, label %611, label %1642

611:                                              ; preds = %606
  %612 = getelementptr inbounds nuw i8, ptr %607, i64 1
  store ptr %612, ptr %8, align 8, !tbaa !118
  %613 = icmp ult ptr %612, %593
  br i1 %613, label %614, label %1642

614:                                              ; preds = %611
  %615 = load i8, ptr %607, align 1, !tbaa !35
  %616 = zext i8 %615 to i32
  %617 = shl nuw nsw i32 %608, 8
  %618 = or disjoint i32 %617, %616
  %619 = trunc nuw i32 %618 to i16
  %620 = urem i16 %619, 31
  %621 = icmp eq i16 %620, 0
  %622 = and i32 %616, 32
  %623 = icmp eq i32 %622, 0
  %624 = and i1 %623, %621
  %625 = icmp eq i32 %609, 8
  %626 = select i1 %624, i1 %625, i1 false
  br i1 %626, label %627, label %1642

627:                                              ; preds = %614, %587
  %628 = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 0, ptr %628, align 8, !tbaa !126
  %629 = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i32 0, ptr %629, align 8, !tbaa !127
  %630 = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 0, ptr %630, align 4, !tbaa !128
  %631 = getelementptr inbounds nuw i8, ptr %8, i64 60
  %632 = getelementptr inbounds nuw i8, ptr %8, i64 2080
  %633 = getelementptr inbounds nuw i8, ptr %7, i64 1
  %634 = getelementptr inbounds nuw i8, ptr %7, i64 2
  %635 = getelementptr inbounds nuw i8, ptr %4, i64 1056
  %636 = getelementptr inbounds nuw i8, ptr %4, i64 1024
  %637 = getelementptr inbounds nuw i8, ptr %4, i64 1124
  %638 = getelementptr inbounds nuw i8, ptr %4, i64 1156
  %639 = getelementptr inbounds nuw i8, ptr %4, i64 1444
  br label %643

640:                                              ; preds = %1639
  %641 = load i32, ptr %628, align 8, !tbaa !126
  %642 = load i32, ptr %629, align 8, !tbaa !127
  br label %643

643:                                              ; preds = %640, %627
  %644 = phi ptr [ %1640, %640 ], [ %591, %627 ]
  %645 = phi i32 [ %642, %640 ], [ 0, %627 ]
  %646 = phi i32 [ %641, %640 ], [ 0, %627 ]
  %647 = icmp slt i32 %646, 1
  br i1 %647, label %648, label %674

648:                                              ; preds = %643
  %649 = load ptr, ptr %8, align 8
  %650 = load ptr, ptr %594, align 8
  br label %651

651:                                              ; preds = %664, %648
  %652 = phi ptr [ %665, %664 ], [ %649, %648 ]
  %653 = phi i32 [ %669, %664 ], [ %646, %648 ]
  %654 = phi i32 [ %668, %664 ], [ %645, %648 ]
  %655 = lshr i32 %654, %653
  %656 = icmp eq i32 %655, 0
  br i1 %656, label %658, label %657

657:                                              ; preds = %651
  store ptr %650, ptr %8, align 8, !tbaa !118
  br label %674

658:                                              ; preds = %651
  %659 = icmp ult ptr %652, %650
  br i1 %659, label %660, label %664

660:                                              ; preds = %658
  %661 = getelementptr inbounds nuw i8, ptr %652, i64 1
  store ptr %661, ptr %8, align 8, !tbaa !118
  %662 = load i8, ptr %652, align 1, !tbaa !35
  %663 = zext i8 %662 to i32
  br label %664

664:                                              ; preds = %660, %658
  %665 = phi ptr [ %661, %660 ], [ %652, %658 ]
  %666 = phi i32 [ %663, %660 ], [ 0, %658 ]
  %667 = shl i32 %666, %653
  %668 = or i32 %667, %654
  store i32 %668, ptr %629, align 8, !tbaa !127
  %669 = add nsw i32 %653, 8
  store i32 %669, ptr %628, align 8, !tbaa !126
  %670 = icmp slt i32 %653, 17
  br i1 %670, label %651, label %671, !llvm.loop !129

671:                                              ; preds = %664
  %672 = lshr i32 %668, 1
  %673 = add nuw nsw i32 %653, 7
  br label %703

674:                                              ; preds = %657, %643
  %675 = phi i32 [ %646, %643 ], [ %653, %657 ]
  %676 = phi i32 [ %645, %643 ], [ %654, %657 ]
  %677 = lshr i32 %676, 1
  store i32 %677, ptr %629, align 8, !tbaa !127
  %678 = add nsw i32 %675, -1
  store i32 %678, ptr %628, align 8, !tbaa !126
  %679 = icmp slt i32 %675, 3
  br i1 %679, label %680, label %703

680:                                              ; preds = %674
  %681 = load ptr, ptr %8, align 8
  %682 = load ptr, ptr %594, align 8
  br label %683

683:                                              ; preds = %696, %680
  %684 = phi ptr [ %697, %696 ], [ %681, %680 ]
  %685 = phi i32 [ %701, %696 ], [ %678, %680 ]
  %686 = phi i32 [ %700, %696 ], [ %677, %680 ]
  %687 = lshr i32 %686, %685
  %688 = icmp eq i32 %687, 0
  br i1 %688, label %690, label %689

689:                                              ; preds = %683
  store ptr %682, ptr %8, align 8, !tbaa !118
  br label %703

690:                                              ; preds = %683
  %691 = icmp ult ptr %684, %682
  br i1 %691, label %692, label %696

692:                                              ; preds = %690
  %693 = getelementptr inbounds nuw i8, ptr %684, i64 1
  store ptr %693, ptr %8, align 8, !tbaa !118
  %694 = load i8, ptr %684, align 1, !tbaa !35
  %695 = zext i8 %694 to i32
  br label %696

696:                                              ; preds = %692, %690
  %697 = phi ptr [ %693, %692 ], [ %684, %690 ]
  %698 = phi i32 [ %695, %692 ], [ 0, %690 ]
  %699 = shl i32 %698, %685
  %700 = or i32 %699, %686
  store i32 %700, ptr %629, align 8, !tbaa !127
  %701 = add nsw i32 %685, 8
  store i32 %701, ptr %628, align 8, !tbaa !126
  %702 = icmp slt i32 %685, 17
  br i1 %702, label %683, label %703, !llvm.loop !129

703:                                              ; preds = %696, %689, %674, %671
  %704 = phi i32 [ %676, %674 ], [ %676, %689 ], [ %668, %671 ], [ %676, %696 ]
  %705 = phi i32 [ %678, %674 ], [ %685, %689 ], [ %673, %671 ], [ %701, %696 ]
  %706 = phi i32 [ %677, %674 ], [ %686, %689 ], [ %672, %671 ], [ %700, %696 ]
  %707 = and i32 %704, 1
  %708 = and i32 %706, 3
  %709 = lshr i32 %706, 2
  store i32 %709, ptr %629, align 8, !tbaa !127
  %710 = add nsw i32 %705, -2
  store i32 %710, ptr %628, align 8, !tbaa !126
  switch i32 %708, label %933 [
    i32 0, label %711
    i32 3, label %1642
    i32 1, label %927
    i32 2, label %934
  ]

711:                                              ; preds = %703
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %712 = and i32 %710, 7
  %713 = icmp eq i32 %712, 0
  br i1 %713, label %744, label %714

714:                                              ; preds = %711
  %715 = icmp slt i32 %705, 2
  br i1 %715, label %716, label %739

716:                                              ; preds = %714
  %717 = load ptr, ptr %8, align 8
  %718 = load ptr, ptr %594, align 8
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
  store i32 %736, ptr %629, align 8, !tbaa !127
  %737 = add nsw i32 %721, 8
  store i32 %737, ptr %628, align 8, !tbaa !126
  %738 = icmp slt i32 %721, 17
  br i1 %738, label %719, label %739, !llvm.loop !129

739:                                              ; preds = %732, %725, %714
  %740 = phi i32 [ %710, %714 ], [ %721, %725 ], [ %737, %732 ]
  %741 = phi i32 [ %709, %714 ], [ %722, %725 ], [ %736, %732 ]
  %742 = lshr i32 %741, %712
  store i32 %742, ptr %629, align 8, !tbaa !127
  %743 = sub nsw i32 %740, %712
  store i32 %743, ptr %628, align 8, !tbaa !126
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
  store i32 %798, ptr %629, align 8, !tbaa !127
  store i32 %801, ptr %628, align 8, !tbaa !126
  %803 = icmp eq i32 %802, 8
  br i1 %803, label %806, label %918

804:                                              ; preds = %744
  %805 = icmp slt i32 %746, 0
  br i1 %805, label %918, label %807

806:                                              ; preds = %796
  br i1 %797, label %807, label %849

807:                                              ; preds = %806, %804
  %808 = phi i64 [ %752, %806 ], [ 0, %804 ]
  %809 = load ptr, ptr %594, align 8, !tbaa !121
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
  %850 = load i8, ptr %633, align 1, !tbaa !35
  %851 = zext i8 %850 to i32
  %852 = shl nuw nsw i32 %851, 8
  %853 = load i8, ptr %7, align 1, !tbaa !35
  %854 = zext i8 %853 to i32
  %855 = or disjoint i32 %852, %854
  %856 = load i16, ptr %634, align 1
  %857 = zext i16 %856 to i32
  %858 = xor i32 %855, %857
  %859 = icmp eq i32 %858, 65535
  br i1 %859, label %860, label %918

860:                                              ; preds = %849
  %861 = load ptr, ptr %8, align 8, !tbaa !118
  %862 = zext nneg i32 %855 to i64
  %863 = getelementptr inbounds nuw i8, ptr %861, i64 %862
  %864 = load ptr, ptr %594, align 8, !tbaa !121
  %865 = icmp ugt ptr %863, %864
  br i1 %865, label %918, label %866

866:                                              ; preds = %860
  %867 = getelementptr inbounds nuw i8, ptr %644, i64 %862
  %868 = load ptr, ptr %598, align 8, !tbaa !124
  %869 = icmp ugt ptr %867, %868
  br i1 %869, label %870, label %919

870:                                              ; preds = %866
  %871 = load i32, ptr %599, align 8, !tbaa !125
  %872 = icmp eq i32 %871, 0
  br i1 %872, label %918, label %873

873:                                              ; preds = %870
  %874 = load ptr, ptr %595, align 8, !tbaa !122
  %875 = ptrtoint ptr %644 to i64
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
  store ptr %905, ptr %595, align 8, !tbaa !122
  %915 = and i64 %877, 4294967295
  %916 = getelementptr inbounds nuw i8, ptr %905, i64 %915
  store ptr %916, ptr %596, align 8, !tbaa !123
  %917 = getelementptr inbounds nuw i8, ptr %905, i64 %895
  store ptr %917, ptr %598, align 8, !tbaa !124
  br label %919

918:                                              ; preds = %893, %873, %870, %860, %849, %804, %796, %887
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %1642

919:                                              ; preds = %913, %866
  %920 = phi ptr [ %914, %913 ], [ %861, %866 ]
  %921 = phi ptr [ %916, %913 ], [ %644, %866 ]
  %922 = call ptr @memcpy(ptr noundef %921, ptr noundef %920, i64 noundef %862) #16
  %923 = load ptr, ptr %8, align 8, !tbaa !118
  %924 = getelementptr inbounds nuw i8, ptr %923, i64 %862
  store ptr %924, ptr %8, align 8, !tbaa !118
  %925 = load ptr, ptr %596, align 8, !tbaa !123
  %926 = getelementptr inbounds nuw i8, ptr %925, i64 %862
  store ptr %926, ptr %596, align 8, !tbaa !123
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %1639

927:                                              ; preds = %703
  %928 = call fastcc i32 @stbi__zbuild_huffman(ptr noundef %631, ptr noundef nonnull @stbi__zdefault_length, i32 noundef 288) #17
  %929 = icmp eq i32 %928, 0
  br i1 %929, label %1642, label %930

930:                                              ; preds = %927
  %931 = call fastcc i32 @stbi__zbuild_huffman(ptr noundef %632, ptr noundef nonnull @stbi__zdefault_distance, i32 noundef 32) #17
  %932 = icmp eq i32 %931, 0
  br i1 %932, label %1642, label %1307

933:                                              ; preds = %703
  unreachable

934:                                              ; preds = %703
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %935 = icmp slt i32 %705, 7
  br i1 %935, label %936, label %959

936:                                              ; preds = %934
  %937 = load ptr, ptr %8, align 8
  %938 = load ptr, ptr %594, align 8
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
  store i32 %956, ptr %629, align 8, !tbaa !127
  %957 = add nsw i32 %941, 8
  store i32 %957, ptr %628, align 8, !tbaa !126
  %958 = icmp slt i32 %941, 17
  br i1 %958, label %939, label %959, !llvm.loop !129

959:                                              ; preds = %952, %945, %934
  %960 = phi i32 [ %710, %934 ], [ %941, %945 ], [ %957, %952 ]
  %961 = phi i32 [ %709, %934 ], [ %942, %945 ], [ %956, %952 ]
  %962 = and i32 %961, 31
  %963 = lshr i32 %961, 5
  store i32 %963, ptr %629, align 8, !tbaa !127
  %964 = add nsw i32 %960, -5
  store i32 %964, ptr %628, align 8, !tbaa !126
  %965 = add nuw nsw i32 %962, 257
  %966 = icmp slt i32 %960, 10
  br i1 %966, label %967, label %990

967:                                              ; preds = %959
  %968 = load ptr, ptr %8, align 8
  %969 = load ptr, ptr %594, align 8
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
  store i32 %987, ptr %629, align 8, !tbaa !127
  %988 = add nsw i32 %972, 8
  store i32 %988, ptr %628, align 8, !tbaa !126
  %989 = icmp slt i32 %972, 17
  br i1 %989, label %970, label %990, !llvm.loop !129

990:                                              ; preds = %983, %976, %959
  %991 = phi i32 [ %964, %959 ], [ %972, %976 ], [ %988, %983 ]
  %992 = phi i32 [ %963, %959 ], [ %973, %976 ], [ %987, %983 ]
  %993 = and i32 %992, 31
  %994 = lshr i32 %992, 5
  store i32 %994, ptr %629, align 8, !tbaa !127
  %995 = add nsw i32 %991, -5
  store i32 %995, ptr %628, align 8, !tbaa !126
  %996 = add nuw nsw i32 %993, 1
  %997 = icmp slt i32 %991, 9
  br i1 %997, label %998, label %1021

998:                                              ; preds = %990
  %999 = load ptr, ptr %8, align 8
  %1000 = load ptr, ptr %594, align 8
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
  store i32 %1018, ptr %629, align 8, !tbaa !127
  %1019 = add nsw i32 %1003, 8
  store i32 %1019, ptr %628, align 8, !tbaa !126
  %1020 = icmp slt i32 %1003, 17
  br i1 %1020, label %1001, label %1021, !llvm.loop !129

1021:                                             ; preds = %1014, %1007, %990
  %1022 = phi i32 [ %995, %990 ], [ %1003, %1007 ], [ %1019, %1014 ]
  %1023 = phi i32 [ %994, %990 ], [ %1004, %1007 ], [ %1018, %1014 ]
  %1024 = and i32 %1023, 15
  %1025 = lshr i32 %1023, 4
  store i32 %1025, ptr %629, align 8, !tbaa !127
  %1026 = add nsw i32 %1022, -4
  store i32 %1026, ptr %628, align 8, !tbaa !126
  %1027 = add nuw nsw i32 %1024, 4
  %1028 = call ptr @memset(ptr noundef nonnull %6, i32 noundef 0, i64 noundef 19) #16
  %1029 = load i32, ptr %628, align 8, !tbaa !126
  %1030 = load i32, ptr %629, align 8, !tbaa !127
  %1031 = zext nneg i32 %1027 to i64
  %1032 = load ptr, ptr %8, align 8
  %1033 = load ptr, ptr %594, align 8
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
  store i32 %1059, ptr %629, align 8, !tbaa !127
  %1060 = add nsw i32 %1043, 8
  store i32 %1060, ptr %628, align 8, !tbaa !126
  %1061 = icmp slt i32 %1043, 17
  br i1 %1061, label %1040, label %1062, !llvm.loop !129

1062:                                             ; preds = %1054, %1047, %1034
  %1063 = phi ptr [ %1035, %1034 ], [ %1033, %1047 ], [ %1055, %1054 ]
  %1064 = phi i32 [ %1037, %1034 ], [ %1043, %1047 ], [ %1060, %1054 ]
  %1065 = phi i32 [ %1038, %1034 ], [ %1044, %1047 ], [ %1059, %1054 ]
  %1066 = lshr i32 %1065, 3
  store i32 %1066, ptr %629, align 8, !tbaa !127
  %1067 = add nsw i32 %1064, -3
  store i32 %1067, ptr %628, align 8, !tbaa !126
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
  %1082 = load i32, ptr %628, align 8, !tbaa !126
  %1083 = icmp slt i32 %1082, 16
  br i1 %1083, label %1084, label %1115

1084:                                             ; preds = %1080
  %1085 = load ptr, ptr %8, align 8, !tbaa !118
  %1086 = load ptr, ptr %594, align 8, !tbaa !121
  %1087 = icmp ult ptr %1085, %1086
  br i1 %1087, label %1093, label %1088

1088:                                             ; preds = %1084
  %1089 = load i32, ptr %630, align 4, !tbaa !128
  %1090 = icmp eq i32 %1089, 0
  br i1 %1090, label %1091, label %1301

1091:                                             ; preds = %1088
  store i32 1, ptr %630, align 4, !tbaa !128
  %1092 = add nsw i32 %1082, 16
  br label %1115

1093:                                             ; preds = %1084
  %1094 = load i32, ptr %629, align 8, !tbaa !127
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
  %1111 = shl i32 %1110, %1097
  %1112 = or i32 %1111, %1098
  store i32 %1112, ptr %629, align 8, !tbaa !127
  %1113 = add nsw i32 %1097, 8
  store i32 %1113, ptr %628, align 8, !tbaa !126
  %1114 = icmp slt i32 %1097, 17
  br i1 %1114, label %1095, label %1115, !llvm.loop !129

1115:                                             ; preds = %1108, %1101, %1091, %1080
  %1116 = phi i32 [ %1082, %1080 ], [ %1097, %1101 ], [ %1092, %1091 ], [ %1113, %1108 ]
  %1117 = load i32, ptr %629, align 8, !tbaa !127
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
  store i32 %1126, ptr %629, align 8, !tbaa !127
  %1127 = sub nsw i32 %1116, %1125
  store i32 %1127, ptr %628, align 8, !tbaa !126
  %1128 = and i32 %1124, 511
  br label %1166

1129:                                             ; preds = %1115
  %1130 = trunc i32 %1117 to i16
  %1131 = call i16 @llvm.bitreverse.i16(i16 %1130)
  %1132 = zext i16 %1131 to i32
  br label %1133

1133:                                             ; preds = %1133, %1129
  %1134 = phi i64 [ %1138, %1133 ], [ 10, %1129 ]
  %1135 = getelementptr inbounds nuw i32, ptr %635, i64 %1134
  %1136 = load i32, ptr %1135, align 4, !tbaa !4
  %1137 = icmp sgt i32 %1136, %1132
  %1138 = add nuw nsw i64 %1134, 1
  br i1 %1137, label %1139, label %1133

1139:                                             ; preds = %1133
  %1140 = trunc nuw nsw i64 %1134 to i32
  %1141 = icmp samesign ugt i64 %1134, 15
  br i1 %1141, label %1301, label %1142

1142:                                             ; preds = %1139
  %1143 = sub nuw nsw i32 16, %1140
  %1144 = lshr i32 %1132, %1143
  %1145 = getelementptr inbounds nuw i16, ptr %636, i64 %1134
  %1146 = load i16, ptr %1145, align 2, !tbaa !39
  %1147 = zext i16 %1146 to i32
  %1148 = sub nsw i32 %1144, %1147
  %1149 = getelementptr inbounds nuw i16, ptr %637, i64 %1134
  %1150 = load i16, ptr %1149, align 2, !tbaa !39
  %1151 = zext i16 %1150 to i32
  %1152 = add nsw i32 %1148, %1151
  %1153 = icmp sgt i32 %1152, 287
  br i1 %1153, label %1301, label %1154

1154:                                             ; preds = %1142
  %1155 = sext i32 %1152 to i64
  %1156 = getelementptr inbounds i8, ptr %638, i64 %1155
  %1157 = load i8, ptr %1156, align 1, !tbaa !35
  %1158 = zext i8 %1157 to i64
  %1159 = icmp eq i64 %1134, %1158
  br i1 %1159, label %1160, label %1301

1160:                                             ; preds = %1154
  %1161 = lshr i32 %1117, %1140
  store i32 %1161, ptr %629, align 8, !tbaa !127
  %1162 = sub nsw i32 %1116, %1140
  store i32 %1162, ptr %628, align 8, !tbaa !126
  %1163 = getelementptr inbounds i16, ptr %639, i64 %1155
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
  %1183 = load ptr, ptr %594, align 8
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
  store i32 %1201, ptr %629, align 8, !tbaa !127
  %1202 = add nsw i32 %1186, 8
  store i32 %1202, ptr %628, align 8, !tbaa !126
  %1203 = icmp slt i32 %1186, 17
  br i1 %1203, label %1184, label %1204, !llvm.loop !129

1204:                                             ; preds = %1197, %1190, %1179
  %1205 = phi i32 [ %1168, %1179 ], [ %1186, %1190 ], [ %1202, %1197 ]
  %1206 = phi i32 [ %1167, %1179 ], [ %1187, %1190 ], [ %1201, %1197 ]
  %1207 = lshr i32 %1206, 2
  store i32 %1207, ptr %629, align 8, !tbaa !127
  %1208 = add nsw i32 %1205, -2
  store i32 %1208, ptr %628, align 8, !tbaa !126
  %1209 = icmp eq i32 %1081, 0
  br i1 %1209, label %1301, label %1210

1210:                                             ; preds = %1204
  %1211 = and i32 %1206, 3
  %1212 = add nuw nsw i32 %1211, 3
  %1213 = sext i32 %1081 to i64
  %1214 = getelementptr i8, ptr %5, i64 %1213
  %1215 = getelementptr i8, ptr %1214, i64 -1
  %1216 = load i8, ptr %1215, align 1, !tbaa !35
  %1217 = zext i8 %1216 to i32
  br label %1282

1218:                                             ; preds = %1178
  %1219 = icmp slt i32 %1168, 3
  br i1 %1219, label %1220, label %1243

1220:                                             ; preds = %1218
  %1221 = load ptr, ptr %8, align 8
  %1222 = load ptr, ptr %594, align 8
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
  store i32 %1240, ptr %629, align 8, !tbaa !127
  %1241 = add nsw i32 %1225, 8
  store i32 %1241, ptr %628, align 8, !tbaa !126
  %1242 = icmp slt i32 %1225, 17
  br i1 %1242, label %1223, label %1243, !llvm.loop !129

1243:                                             ; preds = %1236, %1229, %1218
  %1244 = phi i32 [ %1168, %1218 ], [ %1225, %1229 ], [ %1241, %1236 ]
  %1245 = phi i32 [ %1167, %1218 ], [ %1226, %1229 ], [ %1240, %1236 ]
  %1246 = and i32 %1245, 7
  %1247 = lshr i32 %1245, 3
  store i32 %1247, ptr %629, align 8, !tbaa !127
  %1248 = add nsw i32 %1244, -3
  store i32 %1248, ptr %628, align 8, !tbaa !126
  %1249 = add nuw nsw i32 %1246, 3
  br label %1282

1250:                                             ; preds = %1178
  %1251 = icmp slt i32 %1168, 7
  br i1 %1251, label %1252, label %1275

1252:                                             ; preds = %1250
  %1253 = load ptr, ptr %8, align 8
  %1254 = load ptr, ptr %594, align 8
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
  store i32 %1272, ptr %629, align 8, !tbaa !127
  %1273 = add nsw i32 %1257, 8
  store i32 %1273, ptr %628, align 8, !tbaa !126
  %1274 = icmp slt i32 %1257, 17
  br i1 %1274, label %1255, label %1275, !llvm.loop !129

1275:                                             ; preds = %1268, %1261, %1250
  %1276 = phi i32 [ %1168, %1250 ], [ %1257, %1261 ], [ %1273, %1268 ]
  %1277 = phi i32 [ %1167, %1250 ], [ %1258, %1261 ], [ %1272, %1268 ]
  %1278 = and i32 %1277, 127
  %1279 = lshr i32 %1277, 7
  store i32 %1279, ptr %629, align 8, !tbaa !127
  %1280 = add nsw i32 %1276, -7
  store i32 %1280, ptr %628, align 8, !tbaa !126
  %1281 = add nuw nsw i32 %1278, 11
  br label %1282

1282:                                             ; preds = %1275, %1243, %1210
  %1283 = phi i32 [ %1212, %1210 ], [ %1249, %1243 ], [ %1281, %1275 ]
  %1284 = phi i32 [ %1217, %1210 ], [ 0, %1243 ], [ 0, %1275 ]
  %1285 = sub nsw i32 %1077, %1081
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
  %1299 = call fastcc i32 @stbi__zbuild_huffman(ptr noundef %631, ptr noundef nonnull %5, i32 noundef %965) #17
  %1300 = icmp eq i32 %1299, 0
  br i1 %1300, label %1301, label %1302

1301:                                             ; preds = %1298, %1296, %1076, %1282, %1204, %1166, %1154, %1142, %1139, %1088
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %1642

1302:                                             ; preds = %1298
  %1303 = zext nneg i32 %965 to i64
  %1304 = getelementptr inbounds nuw i8, ptr %5, i64 %1303
  %1305 = call fastcc i32 @stbi__zbuild_huffman(ptr noundef %632, ptr noundef nonnull %1304, i32 noundef %996) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %1306 = icmp eq i32 %1305, 0
  br i1 %1306, label %1642, label %1307

1307:                                             ; preds = %1302, %930
  %1308 = load ptr, ptr %596, align 8, !tbaa !123
  br label %1309

1309:                                             ; preds = %1583, %1307
  %1310 = phi ptr [ %1308, %1307 ], [ %1584, %1583 ]
  %1311 = call fastcc i32 @stbi__zhuffman_decode(ptr noundef nonnull %8, ptr noundef %631) #17
  %1312 = icmp slt i32 %1311, 256
  br i1 %1312, label %1313, label %1366

1313:                                             ; preds = %1309
  %1314 = icmp slt i32 %1311, 0
  br i1 %1314, label %1642, label %1315

1315:                                             ; preds = %1313
  %1316 = load ptr, ptr %598, align 8, !tbaa !124
  %1317 = icmp ult ptr %1310, %1316
  br i1 %1317, label %1362, label %1318

1318:                                             ; preds = %1315
  store ptr %1310, ptr %596, align 8, !tbaa !123
  %1319 = load i32, ptr %599, align 8, !tbaa !125
  %1320 = icmp eq i32 %1319, 0
  br i1 %1320, label %1642, label %1321

1321:                                             ; preds = %1318
  %1322 = load ptr, ptr %595, align 8, !tbaa !122
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
  store ptr %1351, ptr %595, align 8, !tbaa !122
  %1359 = and i64 %1325, 4294967295
  %1360 = getelementptr inbounds nuw i8, ptr %1351, i64 %1359
  store ptr %1360, ptr %596, align 8, !tbaa !123
  %1361 = getelementptr inbounds nuw i8, ptr %1351, i64 %1341
  store ptr %1361, ptr %598, align 8, !tbaa !124
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
  store ptr %1310, ptr %596, align 8, !tbaa !123
  %1369 = load i32, ptr %630, align 4, !tbaa !128
  %1370 = icmp ne i32 %1369, 0
  %1371 = load i32, ptr %628, align 8
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
  %1386 = load i32, ptr %628, align 8, !tbaa !126
  %1387 = icmp slt i32 %1386, %1385
  %1388 = load i32, ptr %629, align 8, !tbaa !127
  br i1 %1387, label %1389, label %1412

1389:                                             ; preds = %1383
  %1390 = load ptr, ptr %8, align 8
  %1391 = load ptr, ptr %594, align 8
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
  store i32 %1409, ptr %629, align 8, !tbaa !127
  %1410 = add nsw i32 %1394, 8
  store i32 %1410, ptr %628, align 8, !tbaa !126
  %1411 = icmp slt i32 %1394, 17
  br i1 %1411, label %1392, label %1412, !llvm.loop !129

1412:                                             ; preds = %1405, %1398, %1383
  %1413 = phi i32 [ %1386, %1383 ], [ %1394, %1398 ], [ %1410, %1405 ]
  %1414 = phi i32 [ %1388, %1383 ], [ %1395, %1398 ], [ %1409, %1405 ]
  %1415 = shl nsw i32 -1, %1385
  %1416 = xor i32 %1415, -1
  %1417 = and i32 %1414, %1416
  %1418 = lshr i32 %1414, %1385
  store i32 %1418, ptr %629, align 8, !tbaa !127
  %1419 = sub nsw i32 %1413, %1385
  store i32 %1419, ptr %628, align 8, !tbaa !126
  %1420 = add i32 %1417, %1380
  br label %1421

1421:                                             ; preds = %1412, %1376
  %1422 = phi i32 [ %1420, %1412 ], [ %1380, %1376 ]
  %1423 = call fastcc i32 @stbi__zhuffman_decode(ptr noundef nonnull %8, ptr noundef %632) #17
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
  %1433 = load i32, ptr %628, align 8, !tbaa !126
  %1434 = icmp slt i32 %1433, %1432
  %1435 = load i32, ptr %629, align 8, !tbaa !127
  br i1 %1434, label %1436, label %1459

1436:                                             ; preds = %1430
  %1437 = load ptr, ptr %8, align 8
  %1438 = load ptr, ptr %594, align 8
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
  store i32 %1456, ptr %629, align 8, !tbaa !127
  %1457 = add nsw i32 %1441, 8
  store i32 %1457, ptr %628, align 8, !tbaa !126
  %1458 = icmp slt i32 %1441, 17
  br i1 %1458, label %1439, label %1459, !llvm.loop !129

1459:                                             ; preds = %1452, %1445, %1430
  %1460 = phi i32 [ %1433, %1430 ], [ %1441, %1445 ], [ %1457, %1452 ]
  %1461 = phi i32 [ %1435, %1430 ], [ %1442, %1445 ], [ %1456, %1452 ]
  %1462 = shl nsw i32 -1, %1432
  %1463 = xor i32 %1462, -1
  %1464 = and i32 %1461, %1463
  %1465 = lshr i32 %1461, %1432
  store i32 %1465, ptr %629, align 8, !tbaa !127
  %1466 = sub nsw i32 %1460, %1432
  store i32 %1466, ptr %628, align 8, !tbaa !126
  %1467 = add i32 %1464, %1428
  br label %1468

1468:                                             ; preds = %1459, %1425
  %1469 = phi i32 [ %1467, %1459 ], [ %1428, %1425 ]
  %1470 = load ptr, ptr %595, align 8, !tbaa !122
  %1471 = ptrtoint ptr %1310 to i64
  %1472 = ptrtoint ptr %1470 to i64
  %1473 = sub i64 %1471, %1472
  %1474 = sext i32 %1469 to i64
  %1475 = icmp slt i64 %1473, %1474
  br i1 %1475, label %1642, label %1476

1476:                                             ; preds = %1468
  %1477 = sext i32 %1422 to i64
  %1478 = load ptr, ptr %598, align 8, !tbaa !124
  %1479 = ptrtoint ptr %1478 to i64
  %1480 = sub i64 %1479, %1471
  %1481 = icmp slt i64 %1480, %1477
  br i1 %1481, label %1482, label %1523

1482:                                             ; preds = %1476
  store ptr %1310, ptr %596, align 8, !tbaa !123
  %1483 = load i32, ptr %599, align 8, !tbaa !125
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
  store ptr %1512, ptr %595, align 8, !tbaa !122
  %1520 = and i64 %1473, 4294967295
  %1521 = getelementptr inbounds nuw i8, ptr %1512, i64 %1520
  store ptr %1521, ptr %596, align 8, !tbaa !123
  %1522 = getelementptr inbounds nuw i8, ptr %1512, i64 %1502
  store ptr %1522, ptr %598, align 8, !tbaa !124
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
  %1556 = add nsw i32 %1554, -1
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
  %1589 = add nsw i32 %1588, -1
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
  %1600 = add nsw i32 %1595, -1
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
  %1637 = add nsw i32 %1612, -8
  %1638 = icmp eq i32 %1637, 0
  br i1 %1638, label %1583, label %1609, !llvm.loop !140

1639:                                             ; preds = %1368, %919
  %1640 = phi ptr [ %926, %919 ], [ %1310, %1368 ]
  %1641 = icmp eq i32 %707, 0
  br i1 %1641, label %640, label %1643, !llvm.loop !141

1642:                                             ; preds = %930, %1302, %927, %703, %1368, %1318, %1313, %1500, %1485, %1482, %1468, %1421, %1374, %1339, %1321, %1494, %1333, %569, %606, %1301, %918, %611, %614
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  store ptr null, ptr %13, align 8, !tbaa !108
  br label %2004

1643:                                             ; preds = %1639
  %1644 = load ptr, ptr %595, align 8, !tbaa !122
  %1645 = ptrtoint ptr %1640 to i64
  %1646 = ptrtoint ptr %1644 to i64
  %1647 = sub i64 %1645, %1646
  %1648 = trunc i64 %1647 to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  store ptr %1644, ptr %13, align 8, !tbaa !108
  %1649 = icmp eq ptr %1644, null
  br i1 %1649, label %2004, label %1650

1650:                                             ; preds = %1643
  store ptr null, ptr %14, align 8, !tbaa !109
  %1651 = load i32, ptr %75, align 8, !tbaa !71
  %1652 = add nsw i32 %1651, 1
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
  br i1 %1666, label %1787, label %1671

1671:                                             ; preds = %1650
  %1672 = or i32 %1670, %1668
  %1673 = icmp sgt i32 %1672, -1
  br i1 %1673, label %1674, label %2004

1674:                                             ; preds = %1671
  %1675 = icmp eq i32 %1670, 0
  br i1 %1675, label %1679, label %1676

1676:                                             ; preds = %1674
  %1677 = udiv i32 2147483647, %1670
  %1678 = icmp sgt i32 %1668, %1677
  br i1 %1678, label %2004, label %1679

1679:                                             ; preds = %1676, %1674
  %1680 = mul nsw i32 %1670, %1668
  %1681 = or i32 %1680, %1665
  %1682 = icmp sgt i32 %1681, -1
  br i1 %1682, label %1683, label %2004

1683:                                             ; preds = %1679
  %1684 = icmp eq i32 %1665, 0
  br i1 %1684, label %1688, label %1685

1685:                                             ; preds = %1683
  %1686 = udiv i32 2147483647, %1665
  %1687 = icmp sgt i32 %1680, %1686
  br i1 %1687, label %2004, label %1688

1688:                                             ; preds = %1685, %1683
  %1689 = mul nsw i32 %1680, %1665
  %1690 = sext i32 %1689 to i64
  %1691 = add nsw i64 %1690, 15
  %1692 = and i64 %1691, -16
  %1693 = add nsw i64 %1692, 16
  %1694 = load i64, ptr @arena_used, align 8, !tbaa !19
  %1695 = sub i64 100663296, %1694
  %1696 = icmp ugt i64 %1693, %1695
  br i1 %1696, label %2004, label %1697

1697:                                             ; preds = %1688
  %1698 = getelementptr inbounds nuw i8, ptr @arena, i64 %1694
  %1699 = add i64 %1694, %1693
  store i64 %1699, ptr @arena_used, align 8, !tbaa !19
  store i64 %1690, ptr %1698, align 8, !tbaa !19
  %1700 = getelementptr inbounds nuw i8, ptr %1698, i64 16
  %1701 = sext i32 %1665 to i64
  br label %1702

1702:                                             ; preds = %1781, %1697
  %1703 = phi i64 [ 0, %1697 ], [ %1784, %1781 ]
  %1704 = phi ptr [ %1644, %1697 ], [ %1783, %1781 ]
  %1705 = phi i32 [ %1648, %1697 ], [ %1782, %1781 ]
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
  br i1 %1728, label %1729, label %1781

1729:                                             ; preds = %1702
  %1730 = getelementptr inbounds nuw i8, ptr %1706, i64 8
  %1731 = load i32, ptr %1730, align 8, !tbaa !71
  %1732 = mul i32 %1715, %1662
  %1733 = mul i32 %1732, %1731
  %1734 = add nsw i32 %1733, 7
  %1735 = ashr i32 %1734, 3
  %1736 = add nsw i32 %1735, 1
  %1737 = mul nsw i32 %1736, %1725
  %1738 = call fastcc i32 @stbi__create_png_image_raw(ptr noundef nonnull %0, ptr noundef %1704, i32 noundef %1705, i32 noundef %1660, i32 noundef %1715, i32 noundef %1725, i32 noundef %1662, i32 noundef range(i32 0, 256) %81) #17
  %1739 = icmp eq i32 %1738, 0
  br i1 %1739, label %2004, label %1740

1740:                                             ; preds = %1729
  %1741 = icmp sgt i32 %1725, 0
  br i1 %1741, label %1742, label %1777

1742:                                             ; preds = %1740
  %1743 = icmp sgt i32 %1715, 0
  %1744 = sext i32 %1711 to i64
  %1745 = sext i32 %1709 to i64
  %1746 = sext i32 %1715 to i64
  %1747 = zext nneg i32 %1725 to i64
  br label %1748

1748:                                             ; preds = %1774, %1742
  %1749 = phi i64 [ 0, %1742 ], [ %1775, %1774 ]
  br i1 %1743, label %1750, label %1774

1750:                                             ; preds = %1748
  %1751 = trunc i64 %1749 to i32
  %1752 = mul i32 %1721, %1751
  %1753 = add i32 %1752, %1719
  %1754 = mul i32 %1753, %1665
  %1755 = mul nuw nsw i64 %1749, %1746
  br label %1756

1756:                                             ; preds = %1756, %1750
  %1757 = phi i64 [ 0, %1750 ], [ %1772, %1756 ]
  %1758 = mul nsw i64 %1757, %1744
  %1759 = add nsw i64 %1758, %1745
  %1760 = load ptr, ptr %0, align 8, !tbaa !26
  %1761 = load i32, ptr %1760, align 8, !tbaa !24
  %1762 = mul i32 %1754, %1761
  %1763 = zext i32 %1762 to i64
  %1764 = getelementptr inbounds nuw i8, ptr %1700, i64 %1763
  %1765 = mul nsw i64 %1759, %1701
  %1766 = getelementptr inbounds i8, ptr %1764, i64 %1765
  %1767 = load ptr, ptr %15, align 8, !tbaa !110
  %1768 = add nuw nsw i64 %1757, %1755
  %1769 = mul nsw i64 %1768, %1701
  %1770 = getelementptr inbounds i8, ptr %1767, i64 %1769
  %1771 = call ptr @memcpy(ptr noundef nonnull %1766, ptr noundef %1770, i64 noundef %1701) #16
  %1772 = add nuw nsw i64 %1757, 1
  %1773 = icmp slt i64 %1772, %1746
  br i1 %1773, label %1756, label %1774, !llvm.loop !143

1774:                                             ; preds = %1756, %1748
  %1775 = add nuw nsw i64 %1749, 1
  %1776 = icmp samesign ult i64 %1775, %1747
  br i1 %1776, label %1748, label %1777, !llvm.loop !144

1777:                                             ; preds = %1774, %1740
  %1778 = zext i32 %1737 to i64
  %1779 = getelementptr inbounds nuw i8, ptr %1704, i64 %1778
  %1780 = sub i32 %1705, %1737
  br label %1781

1781:                                             ; preds = %1777, %1702
  %1782 = phi i32 [ %1705, %1702 ], [ %1780, %1777 ]
  %1783 = phi ptr [ %1704, %1702 ], [ %1779, %1777 ]
  %1784 = add nuw nsw i64 %1703, 1
  %1785 = icmp eq i64 %1784, 7
  br i1 %1785, label %1786, label %1702, !llvm.loop !145

1786:                                             ; preds = %1781
  store ptr %1700, ptr %15, align 8, !tbaa !110
  br label %1790

1787:                                             ; preds = %1650
  %1788 = call fastcc i32 @stbi__create_png_image_raw(ptr noundef nonnull %0, ptr noundef nonnull %1644, i32 noundef %1648, i32 noundef %1660, i32 noundef %1668, i32 noundef %1670, i32 noundef %1662, i32 noundef range(i32 0, 256) %81) #17
  %1789 = icmp eq i32 %1788, 0
  br i1 %1789, label %2004, label %1790

1790:                                             ; preds = %1786, %1787
  %1791 = icmp eq i8 %87, 0
  br i1 %1791, label %1799, label %1792

1792:                                             ; preds = %1790
  %1793 = load i32, ptr %76, align 8, !tbaa !112
  %1794 = icmp eq i32 %1793, 16
  %1795 = load i32, ptr %1661, align 4, !tbaa !142
  br i1 %1794, label %1796, label %1797

1796:                                             ; preds = %1792
  call fastcc void @stbi__compute_transparency16(ptr noundef %0, ptr noundef %11, i32 noundef %1795) #17
  br label %1798

1797:                                             ; preds = %1792
  call fastcc void @stbi__compute_transparency(ptr noundef %0, ptr noundef %10, i32 noundef %1795) #17
  br label %1798

1798:                                             ; preds = %1796, %1797
  br i1 %1656, label %1954, label %1800

1799:                                             ; preds = %1790
  br i1 %1656, label %1957, label %1800

1800:                                             ; preds = %1799, %1798
  %1801 = zext nneg i8 %88 to i32
  store i32 %1801, ptr %75, align 8, !tbaa !71
  %1802 = icmp samesign ugt i32 %2, 2
  %1803 = select i1 %1802, i32 %2, i32 %1801
  store i32 %1803, ptr %1661, align 4, !tbaa !142
  %1804 = load ptr, ptr %0, align 8, !tbaa !26
  %1805 = load i32, ptr %1804, align 8, !tbaa !24
  %1806 = getelementptr inbounds nuw i8, ptr %1804, i64 4
  %1807 = load i32, ptr %1806, align 4, !tbaa !25
  %1808 = mul i32 %1807, %1805
  %1809 = load ptr, ptr %15, align 8, !tbaa !110
  %1810 = icmp sgt i32 %1808, -1
  br i1 %1810, label %1811, label %2004

1811:                                             ; preds = %1800
  %1812 = udiv i32 2147483647, %1803
  %1813 = icmp samesign ugt i32 %1808, %1812
  br i1 %1813, label %2004, label %1814

1814:                                             ; preds = %1811
  %1815 = mul nuw nsw i32 %1808, %1803
  %1816 = zext nneg i32 %1815 to i64
  %1817 = add nuw nsw i64 %1816, 15
  %1818 = and i64 %1817, 4294967280
  %1819 = add nuw nsw i64 %1818, 16
  %1820 = load i64, ptr @arena_used, align 8, !tbaa !19
  %1821 = sub i64 100663296, %1820
  %1822 = icmp ugt i64 %1819, %1821
  br i1 %1822, label %2004, label %1823

1823:                                             ; preds = %1814
  %1824 = getelementptr inbounds nuw i8, ptr @arena, i64 %1820
  %1825 = add i64 %1820, %1819
  store i64 %1825, ptr @arena_used, align 8, !tbaa !19
  store i64 %1816, ptr %1824, align 8, !tbaa !19
  %1826 = getelementptr inbounds nuw i8, ptr %1824, i64 16
  %1827 = icmp eq i32 %1803, 3
  %1828 = icmp eq i32 %1808, 0
  br i1 %1827, label %1836, label %1829

1829:                                             ; preds = %1823
  br i1 %1828, label %1953, label %1830

1830:                                             ; preds = %1829
  %1831 = zext nneg i32 %1808 to i64
  %1832 = and i64 %1831, 3
  %1833 = icmp ult i32 %1808, 4
  br i1 %1833, label %1935, label %1834

1834:                                             ; preds = %1830
  %1835 = and i64 %1831, 2147483644
  br label %1877

1836:                                             ; preds = %1823
  br i1 %1828, label %1953, label %1837

1837:                                             ; preds = %1836
  %1838 = zext nneg i32 %1808 to i64
  %1839 = and i64 %1838, 1
  %1840 = icmp eq i32 %1808, 1
  br i1 %1840, label %1917, label %1841

1841:                                             ; preds = %1837
  %1842 = and i64 %1838, 2147483646
  br label %1843

1843:                                             ; preds = %1843, %1841
  %1844 = phi i64 [ 0, %1841 ], [ %1874, %1843 ]
  %1845 = phi ptr [ %1826, %1841 ], [ %1873, %1843 ]
  %1846 = phi i64 [ 0, %1841 ], [ %1875, %1843 ]
  %1847 = getelementptr inbounds nuw i8, ptr %1809, i64 %1844
  %1848 = load i8, ptr %1847, align 1, !tbaa !35
  %1849 = zext i8 %1848 to i64
  %1850 = shl nuw nsw i64 %1849, 2
  %1851 = getelementptr inbounds nuw i8, ptr %9, i64 %1850
  %1852 = load i8, ptr %1851, align 4, !tbaa !35
  store i8 %1852, ptr %1845, align 1, !tbaa !35
  %1853 = getelementptr inbounds nuw i8, ptr %1851, i64 1
  %1854 = load i8, ptr %1853, align 1, !tbaa !35
  %1855 = getelementptr inbounds nuw i8, ptr %1845, i64 1
  store i8 %1854, ptr %1855, align 1, !tbaa !35
  %1856 = getelementptr inbounds nuw i8, ptr %1851, i64 2
  %1857 = load i8, ptr %1856, align 2, !tbaa !35
  %1858 = getelementptr inbounds nuw i8, ptr %1845, i64 2
  store i8 %1857, ptr %1858, align 1, !tbaa !35
  %1859 = getelementptr inbounds nuw i8, ptr %1845, i64 3
  %1860 = getelementptr inbounds nuw i8, ptr %1809, i64 %1844
  %1861 = getelementptr inbounds nuw i8, ptr %1860, i64 1
  %1862 = load i8, ptr %1861, align 1, !tbaa !35
  %1863 = zext i8 %1862 to i64
  %1864 = shl nuw nsw i64 %1863, 2
  %1865 = getelementptr inbounds nuw i8, ptr %9, i64 %1864
  %1866 = load i8, ptr %1865, align 4, !tbaa !35
  store i8 %1866, ptr %1859, align 1, !tbaa !35
  %1867 = getelementptr inbounds nuw i8, ptr %1865, i64 1
  %1868 = load i8, ptr %1867, align 1, !tbaa !35
  %1869 = getelementptr inbounds nuw i8, ptr %1845, i64 4
  store i8 %1868, ptr %1869, align 1, !tbaa !35
  %1870 = getelementptr inbounds nuw i8, ptr %1865, i64 2
  %1871 = load i8, ptr %1870, align 2, !tbaa !35
  %1872 = getelementptr inbounds nuw i8, ptr %1845, i64 5
  store i8 %1871, ptr %1872, align 1, !tbaa !35
  %1873 = getelementptr inbounds nuw i8, ptr %1845, i64 6
  %1874 = add nuw nsw i64 %1844, 2
  %1875 = add i64 %1846, 2
  %1876 = icmp eq i64 %1875, %1842
  br i1 %1876, label %1915, label %1843, !llvm.loop !146

1877:                                             ; preds = %1877, %1834
  %1878 = phi i64 [ 0, %1834 ], [ %1912, %1877 ]
  %1879 = phi ptr [ %1826, %1834 ], [ %1911, %1877 ]
  %1880 = phi i64 [ 0, %1834 ], [ %1913, %1877 ]
  %1881 = getelementptr inbounds nuw i8, ptr %1809, i64 %1878
  %1882 = load i8, ptr %1881, align 1, !tbaa !35
  %1883 = zext i8 %1882 to i64
  %1884 = shl nuw nsw i64 %1883, 2
  %1885 = getelementptr inbounds nuw i8, ptr %9, i64 %1884
  %1886 = load <4 x i8>, ptr %1885, align 4, !tbaa !35
  store <4 x i8> %1886, ptr %1879, align 1, !tbaa !35
  %1887 = getelementptr inbounds nuw i8, ptr %1879, i64 4
  %1888 = getelementptr inbounds nuw i8, ptr %1809, i64 %1878
  %1889 = getelementptr inbounds nuw i8, ptr %1888, i64 1
  %1890 = load i8, ptr %1889, align 1, !tbaa !35
  %1891 = zext i8 %1890 to i64
  %1892 = shl nuw nsw i64 %1891, 2
  %1893 = getelementptr inbounds nuw i8, ptr %9, i64 %1892
  %1894 = load <4 x i8>, ptr %1893, align 4, !tbaa !35
  store <4 x i8> %1894, ptr %1887, align 1, !tbaa !35
  %1895 = getelementptr inbounds nuw i8, ptr %1879, i64 8
  %1896 = getelementptr inbounds nuw i8, ptr %1809, i64 %1878
  %1897 = getelementptr inbounds nuw i8, ptr %1896, i64 2
  %1898 = load i8, ptr %1897, align 1, !tbaa !35
  %1899 = zext i8 %1898 to i64
  %1900 = shl nuw nsw i64 %1899, 2
  %1901 = getelementptr inbounds nuw i8, ptr %9, i64 %1900
  %1902 = load <4 x i8>, ptr %1901, align 4, !tbaa !35
  store <4 x i8> %1902, ptr %1895, align 1, !tbaa !35
  %1903 = getelementptr inbounds nuw i8, ptr %1879, i64 12
  %1904 = getelementptr inbounds nuw i8, ptr %1809, i64 %1878
  %1905 = getelementptr inbounds nuw i8, ptr %1904, i64 3
  %1906 = load i8, ptr %1905, align 1, !tbaa !35
  %1907 = zext i8 %1906 to i64
  %1908 = shl nuw nsw i64 %1907, 2
  %1909 = getelementptr inbounds nuw i8, ptr %9, i64 %1908
  %1910 = load <4 x i8>, ptr %1909, align 4, !tbaa !35
  store <4 x i8> %1910, ptr %1903, align 1, !tbaa !35
  %1911 = getelementptr inbounds nuw i8, ptr %1879, i64 16
  %1912 = add nuw nsw i64 %1878, 4
  %1913 = add i64 %1880, 4
  %1914 = icmp eq i64 %1913, %1835
  br i1 %1914, label %1933, label %1877, !llvm.loop !147

1915:                                             ; preds = %1843
  %1916 = icmp eq i64 %1839, 0
  br i1 %1916, label %1953, label %1917

1917:                                             ; preds = %1915, %1837
  %1918 = phi i64 [ 0, %1837 ], [ %1874, %1915 ]
  %1919 = phi ptr [ %1826, %1837 ], [ %1873, %1915 ]
  %1920 = icmp ne i64 %1839, 0
  call void @llvm.assume(i1 %1920)
  %1921 = getelementptr inbounds nuw i8, ptr %1809, i64 %1918
  %1922 = load i8, ptr %1921, align 1, !tbaa !35
  %1923 = zext i8 %1922 to i64
  %1924 = shl nuw nsw i64 %1923, 2
  %1925 = getelementptr inbounds nuw i8, ptr %9, i64 %1924
  %1926 = load i8, ptr %1925, align 4, !tbaa !35
  store i8 %1926, ptr %1919, align 1, !tbaa !35
  %1927 = getelementptr inbounds nuw i8, ptr %1925, i64 1
  %1928 = load i8, ptr %1927, align 1, !tbaa !35
  %1929 = getelementptr inbounds nuw i8, ptr %1919, i64 1
  store i8 %1928, ptr %1929, align 1, !tbaa !35
  %1930 = getelementptr inbounds nuw i8, ptr %1925, i64 2
  %1931 = load i8, ptr %1930, align 2, !tbaa !35
  %1932 = getelementptr inbounds nuw i8, ptr %1919, i64 2
  store i8 %1931, ptr %1932, align 1, !tbaa !35
  br label %1953

1933:                                             ; preds = %1877
  %1934 = icmp eq i64 %1832, 0
  br i1 %1934, label %1953, label %1935

1935:                                             ; preds = %1933, %1830
  %1936 = phi i64 [ 0, %1830 ], [ %1912, %1933 ]
  %1937 = phi ptr [ %1826, %1830 ], [ %1911, %1933 ]
  %1938 = icmp ne i64 %1832, 0
  call void @llvm.assume(i1 %1938)
  br label %1939

1939:                                             ; preds = %1939, %1935
  %1940 = phi i64 [ %1936, %1935 ], [ %1950, %1939 ]
  %1941 = phi ptr [ %1937, %1935 ], [ %1949, %1939 ]
  %1942 = phi i64 [ 0, %1935 ], [ %1951, %1939 ]
  %1943 = getelementptr inbounds nuw i8, ptr %1809, i64 %1940
  %1944 = load i8, ptr %1943, align 1, !tbaa !35
  %1945 = zext i8 %1944 to i64
  %1946 = shl nuw nsw i64 %1945, 2
  %1947 = getelementptr inbounds nuw i8, ptr %9, i64 %1946
  %1948 = load <4 x i8>, ptr %1947, align 4, !tbaa !35
  store <4 x i8> %1948, ptr %1941, align 1, !tbaa !35
  %1949 = getelementptr inbounds nuw i8, ptr %1941, i64 4
  %1950 = add nuw nsw i64 %1940, 1
  %1951 = add i64 %1942, 1
  %1952 = icmp eq i64 %1951, %1832
  br i1 %1952, label %1953, label %1939, !llvm.loop !148

1953:                                             ; preds = %1933, %1939, %1917, %1915, %1829, %1836
  store ptr %1826, ptr %15, align 8, !tbaa !110
  br label %1957

1954:                                             ; preds = %1798
  %1955 = load i32, ptr %75, align 8, !tbaa !71
  %1956 = add nsw i32 %1955, 1
  store i32 %1956, ptr %75, align 8, !tbaa !71
  br label %1957

1957:                                             ; preds = %1799, %1953, %1954
  store ptr null, ptr %13, align 8, !tbaa !108
  %1958 = call fastcc i32 @stbi__get16be(ptr noundef nonnull %12) #17
  %1959 = call fastcc i32 @stbi__get16be(ptr noundef nonnull %12) #17
  br label %2004

1960:                                             ; preds = %79
  %1961 = icmp ne i32 %83, 0
  %1962 = and i32 %93, 8192
  %1963 = icmp eq i32 %1962, 0
  %1964 = or i1 %1961, %1963
  br i1 %1964, label %2004, label %1965

1965:                                             ; preds = %1960
  %1966 = icmp eq i32 %92, 0
  br i1 %1966, label %1992, label %1967

1967:                                             ; preds = %1965
  %1968 = icmp slt i32 %90, 0
  br i1 %1968, label %1969, label %1971

1969:                                             ; preds = %1967
  %1970 = load ptr, ptr %17, align 8, !tbaa !18
  store ptr %1970, ptr %16, align 8, !tbaa !16
  br label %1992

1971:                                             ; preds = %1967
  %1972 = load ptr, ptr %19, align 8, !tbaa !8
  %1973 = icmp eq ptr %1972, null
  br i1 %1973, label %1974, label %1976

1974:                                             ; preds = %1971
  %1975 = load ptr, ptr %16, align 8, !tbaa !16
  br label %1988

1976:                                             ; preds = %1971
  %1977 = load ptr, ptr %17, align 8, !tbaa !18
  %1978 = load ptr, ptr %16, align 8, !tbaa !16
  %1979 = ptrtoint ptr %1977 to i64
  %1980 = ptrtoint ptr %1978 to i64
  %1981 = sub i64 %1979, %1980
  %1982 = trunc i64 %1981 to i32
  %1983 = icmp sgt i32 %92, %1982
  br i1 %1983, label %1984, label %1988

1984:                                             ; preds = %1976
  store ptr %1977, ptr %16, align 8, !tbaa !16
  %1985 = load ptr, ptr %78, align 8, !tbaa !36
  %1986 = load ptr, ptr %20, align 8, !tbaa !33
  %1987 = sub nsw i32 %92, %1982
  tail call void %1985(ptr noundef %1986, i32 noundef %1987) #16
  br label %1992

1988:                                             ; preds = %1976, %1974
  %1989 = phi ptr [ %1975, %1974 ], [ %1978, %1976 ]
  %1990 = zext nneg i32 %92 to i64
  %1991 = getelementptr inbounds nuw i8, ptr %1989, i64 %1990
  store ptr %1991, ptr %16, align 8, !tbaa !16
  br label %1992

1992:                                             ; preds = %438, %474, %463, %377, %398, %461, %462, %269, %551, %97, %101, %116, %120, %246, %255, %547, %1965, %1969, %1984, %1988
  %1993 = phi i32 [ %80, %547 ], [ %80, %551 ], [ %80, %120 ], [ %80, %1988 ], [ %80, %462 ], [ %80, %461 ], [ %80, %269 ], [ %80, %97 ], [ %80, %101 ], [ %80, %116 ], [ %236, %246 ], [ %236, %255 ], [ %80, %1965 ], [ %80, %1969 ], [ %80, %1984 ], [ %80, %398 ], [ %80, %474 ], [ %80, %377 ], [ %80, %463 ], [ %80, %438 ]
  %1994 = phi i32 [ %81, %547 ], [ %81, %551 ], [ %81, %120 ], [ %81, %1988 ], [ %81, %462 ], [ %81, %461 ], [ %81, %269 ], [ %81, %97 ], [ %81, %101 ], [ %81, %116 ], [ %227, %246 ], [ %227, %255 ], [ %81, %1965 ], [ %81, %1969 ], [ %81, %1984 ], [ %81, %398 ], [ %81, %474 ], [ %81, %377 ], [ %81, %463 ], [ %81, %438 ]
  %1995 = phi i32 [ %82, %547 ], [ %82, %551 ], [ 1, %120 ], [ %82, %1988 ], [ %82, %462 ], [ %82, %461 ], [ %82, %269 ], [ 1, %97 ], [ 1, %101 ], [ 1, %116 ], [ %82, %246 ], [ %82, %255 ], [ %82, %1965 ], [ %82, %1969 ], [ %82, %1984 ], [ %82, %398 ], [ %82, %474 ], [ %82, %377 ], [ %82, %463 ], [ %82, %438 ]
  %1996 = phi i32 [ 0, %547 ], [ 0, %551 ], [ %83, %120 ], [ 0, %1988 ], [ 0, %462 ], [ 0, %461 ], [ 0, %269 ], [ %83, %97 ], [ %83, %101 ], [ %83, %116 ], [ 0, %246 ], [ 0, %255 ], [ 0, %1965 ], [ 0, %1969 ], [ 0, %1984 ], [ 0, %398 ], [ 0, %474 ], [ 0, %377 ], [ 0, %463 ], [ 0, %438 ]
  %1997 = phi i32 [ %84, %547 ], [ %84, %551 ], [ %84, %120 ], [ %84, %1988 ], [ %84, %462 ], [ %84, %461 ], [ %266, %269 ], [ %84, %97 ], [ %84, %101 ], [ %84, %116 ], [ %84, %246 ], [ %84, %255 ], [ %84, %1965 ], [ %84, %1969 ], [ %84, %1984 ], [ %84, %398 ], [ %84, %474 ], [ %266, %377 ], [ %84, %463 ], [ %84, %438 ]
  %1998 = phi i32 [ %525, %547 ], [ %525, %551 ], [ %85, %120 ], [ %85, %1988 ], [ %85, %462 ], [ %85, %461 ], [ %85, %269 ], [ %85, %97 ], [ %85, %101 ], [ %85, %116 ], [ %85, %246 ], [ %85, %255 ], [ %85, %1965 ], [ %85, %1969 ], [ %85, %1984 ], [ %85, %398 ], [ %85, %474 ], [ %85, %377 ], [ %85, %463 ], [ %85, %438 ]
  %1999 = phi i32 [ %503, %547 ], [ %503, %551 ], [ %86, %120 ], [ %86, %1988 ], [ %86, %462 ], [ %86, %461 ], [ %86, %269 ], [ %86, %97 ], [ %86, %101 ], [ %86, %116 ], [ %86, %246 ], [ %86, %255 ], [ %86, %1965 ], [ %86, %1969 ], [ %86, %1984 ], [ %86, %398 ], [ %86, %474 ], [ %86, %377 ], [ %86, %463 ], [ %86, %438 ]
  %2000 = phi i8 [ %87, %547 ], [ %87, %551 ], [ %87, %120 ], [ %87, %1988 ], [ 1, %462 ], [ 1, %461 ], [ %87, %269 ], [ %87, %97 ], [ %87, %101 ], [ %87, %116 ], [ %87, %246 ], [ %87, %255 ], [ %87, %1965 ], [ %87, %1969 ], [ %87, %1984 ], [ %87, %398 ], [ 1, %474 ], [ %87, %377 ], [ 1, %463 ], [ %87, %438 ]
  %2001 = phi i8 [ %88, %547 ], [ %88, %551 ], [ %88, %120 ], [ %88, %1988 ], [ 0, %462 ], [ 0, %461 ], [ %88, %269 ], [ %88, %97 ], [ %88, %101 ], [ %88, %116 ], [ 0, %246 ], [ %228, %255 ], [ %88, %1965 ], [ %88, %1969 ], [ %88, %1984 ], [ 4, %398 ], [ 0, %474 ], [ %88, %377 ], [ 0, %463 ], [ 4, %438 ]
  %2002 = tail call fastcc i32 @stbi__get16be(ptr noundef %12) #17
  %2003 = tail call fastcc i32 @stbi__get16be(ptr noundef %12) #17
  br label %79

2004:                                             ; preds = %64, %541, %517, %241, %219, %234, %238, %246, %231, %225, %222, %213, %173, %138, %128, %255, %124, %490, %502, %500, %492, %447, %394, %387, %385, %263, %259, %1960, %551, %1729, %1811, %1800, %1814, %1685, %1679, %1688, %1671, %1676, %1957, %562, %564, %566, %1643, %1787, %1642, %498, %497, %455, %393, %71
  %2005 = phi i32 [ 1, %71 ], [ 0, %1729 ], [ 0, %541 ], [ 0, %1642 ], [ 0, %1685 ], [ 0, %1787 ], [ 1, %1957 ], [ 0, %566 ], [ 1, %564 ], [ 0, %562 ], [ 0, %1643 ], [ 1, %498 ], [ 0, %1676 ], [ 1, %393 ], [ 0, %1671 ], [ 0, %1688 ], [ 1, %497 ], [ 0, %1811 ], [ 0, %1814 ], [ 0, %1800 ], [ 1, %455 ], [ 0, %1679 ], [ 0, %551 ], [ 0, %1960 ], [ 0, %259 ], [ 0, %263 ], [ 0, %385 ], [ 0, %387 ], [ 0, %394 ], [ 0, %447 ], [ 0, %492 ], [ 0, %500 ], [ 0, %502 ], [ 0, %490 ], [ 0, %124 ], [ 0, %255 ], [ 0, %128 ], [ 0, %138 ], [ 0, %173 ], [ 0, %213 ], [ 0, %222 ], [ 0, %225 ], [ 0, %231 ], [ 0, %246 ], [ 0, %238 ], [ 0, %234 ], [ 0, %219 ], [ 0, %241 ], [ 0, %517 ], [ 0, %64 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  ret i32 %2005
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
  %30 = sub nsw i32 %2, %20
  %31 = tail call i32 %26(ptr noundef %28, ptr noundef %29, i32 noundef %30) #16
  %32 = icmp eq i32 %31, %30
  %33 = zext i1 %32 to i32
  %34 = load ptr, ptr %13, align 8, !tbaa !18
  store ptr %34, ptr %15, align 8, !tbaa !16
  br label %46

35:                                               ; preds = %7, %12
  %36 = phi ptr [ %11, %7 ], [ %14, %12 ]
  %37 = phi ptr [ %9, %7 ], [ %16, %12 ]
  %38 = zext nneg i32 %2 to i64
  %39 = getelementptr inbounds nuw i8, ptr %37, i64 %38
  %40 = icmp ugt ptr %39, %36
  br i1 %40, label %46, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %43 = tail call ptr @memcpy(ptr noundef %1, ptr noundef %37, i64 noundef %38) #16
  %44 = load ptr, ptr %42, align 8, !tbaa !16
  %45 = getelementptr inbounds nuw i8, ptr %44, i64 %38
  store ptr %45, ptr %42, align 8, !tbaa !16
  br label %46

46:                                               ; preds = %22, %35, %41
  %47 = phi i32 [ 1, %41 ], [ %33, %22 ], [ 0, %35 ]
  ret i32 %47
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
  %23 = add nsw i32 %22, 1
  store i32 %23, ptr %21, align 4, !tbaa !4
  %24 = getelementptr inbounds nuw i8, ptr %1, i64 %16
  %25 = getelementptr inbounds nuw i8, ptr %24, i64 1
  %26 = load i8, ptr %25, align 1, !tbaa !35
  %27 = zext i8 %26 to i64
  %28 = getelementptr inbounds nuw i32, ptr %5, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !4
  %30 = add nsw i32 %29, 1
  store i32 %30, ptr %28, align 4, !tbaa !4
  %31 = getelementptr inbounds nuw i8, ptr %1, i64 %16
  %32 = getelementptr inbounds nuw i8, ptr %31, i64 2
  %33 = load i8, ptr %32, align 1, !tbaa !35
  %34 = zext i8 %33 to i64
  %35 = getelementptr inbounds nuw i32, ptr %5, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !4
  %37 = add nsw i32 %36, 1
  store i32 %37, ptr %35, align 4, !tbaa !4
  %38 = getelementptr inbounds nuw i8, ptr %1, i64 %16
  %39 = getelementptr inbounds nuw i8, ptr %38, i64 3
  %40 = load i8, ptr %39, align 1, !tbaa !35
  %41 = zext i8 %40 to i64
  %42 = getelementptr inbounds nuw i32, ptr %5, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !4
  %44 = add nsw i32 %43, 1
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
  %61 = add nsw i32 %60, 1
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
  br i1 %93, label %176, label %94

94:                                               ; preds = %65
  %95 = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %96 = getelementptr inbounds nuw i8, ptr %0, i64 1124
  %97 = getelementptr inbounds nuw i8, ptr %0, i64 1056
  br label %98

98:                                               ; preds = %94, %115
  %99 = phi i64 [ 1, %94 ], [ %122, %115 ]
  %100 = phi i32 [ 0, %94 ], [ %121, %115 ]
  %101 = phi i32 [ 0, %94 ], [ %120, %115 ]
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
  %109 = add nsw i32 %108, %101
  %110 = icmp ne i32 %108, 0
  %111 = trunc nuw nsw i64 %99 to i32
  %112 = shl nuw nsw i32 1, %111
  %113 = icmp sgt i32 %109, %112
  %114 = select i1 %110, i1 %113, i1 false
  br i1 %114, label %176, label %115

115:                                              ; preds = %98
  %116 = trunc i64 %99 to i32
  %117 = sub i32 16, %116
  %118 = shl i32 %109, %117
  %119 = getelementptr inbounds nuw i32, ptr %97, i64 %99
  store i32 %118, ptr %119, align 4, !tbaa !4
  %120 = shl i32 %109, 1
  %121 = add nsw i32 %108, %100
  %122 = add nuw nsw i64 %99, 1
  %123 = icmp eq i64 %122, 16
  br i1 %123, label %124, label %98, !llvm.loop !163

124:                                              ; preds = %115
  %125 = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store i32 65536, ptr %125, align 4, !tbaa !4
  br i1 %8, label %126, label %176

126:                                              ; preds = %124
  %127 = getelementptr inbounds nuw i8, ptr %0, i64 1156
  %128 = getelementptr inbounds nuw i8, ptr %0, i64 1444
  %129 = zext nneg i32 %2 to i64
  br label %130

130:                                              ; preds = %126, %173
  %131 = phi i64 [ 0, %126 ], [ %174, %173 ]
  %132 = getelementptr inbounds nuw i8, ptr %1, i64 %131
  %133 = load i8, ptr %132, align 1, !tbaa !35
  %134 = zext i8 %133 to i32
  %135 = icmp eq i8 %133, 0
  br i1 %135, label %173, label %136

136:                                              ; preds = %130
  %137 = zext i8 %133 to i64
  %138 = getelementptr inbounds nuw i32, ptr %4, i64 %137
  %139 = load i32, ptr %138, align 4, !tbaa !4
  %140 = getelementptr inbounds nuw i16, ptr %95, i64 %137
  %141 = load i16, ptr %140, align 2, !tbaa !39
  %142 = zext i16 %141 to i32
  %143 = sub i32 %139, %142
  %144 = getelementptr inbounds nuw i16, ptr %96, i64 %137
  %145 = load i16, ptr %144, align 2, !tbaa !39
  %146 = zext i16 %145 to i32
  %147 = add nsw i32 %143, %146
  %148 = shl nuw nsw i32 %134, 9
  %149 = trunc nuw nsw i64 %131 to i32
  %150 = or i32 %148, %149
  %151 = trunc i32 %150 to i16
  %152 = sext i32 %147 to i64
  %153 = getelementptr inbounds i8, ptr %127, i64 %152
  store i8 %133, ptr %153, align 1, !tbaa !35
  %154 = trunc i64 %131 to i16
  %155 = getelementptr inbounds i16, ptr %128, i64 %152
  store i16 %154, ptr %155, align 2, !tbaa !39
  %156 = icmp ult i8 %133, 10
  br i1 %156, label %157, label %171

157:                                              ; preds = %136
  %158 = trunc i32 %139 to i16
  %159 = call i16 @llvm.bitreverse.i16(i16 %158)
  %160 = zext i16 %159 to i32
  %161 = sub nuw nsw i32 16, %134
  %162 = lshr i32 %160, %161
  %163 = shl nuw nsw i32 1, %134
  %164 = zext nneg i32 %162 to i64
  %165 = zext nneg i32 %163 to i64
  br label %166

166:                                              ; preds = %157, %166
  %167 = phi i64 [ %164, %157 ], [ %169, %166 ]
  %168 = getelementptr inbounds nuw i16, ptr %0, i64 %167
  store i16 %151, ptr %168, align 2, !tbaa !39
  %169 = add nuw nsw i64 %167, %165
  %170 = icmp samesign ult i64 %169, 512
  br i1 %170, label %166, label %171, !llvm.loop !164

171:                                              ; preds = %166, %136
  %172 = add nsw i32 %139, 1
  store i32 %172, ptr %138, align 4, !tbaa !4
  br label %173

173:                                              ; preds = %171, %130
  %174 = add nuw nsw i64 %131, 1
  %175 = icmp eq i64 %174, %129
  br i1 %175, label %176, label %130, !llvm.loop !165

176:                                              ; preds = %98, %173, %65, %124
  %177 = phi i32 [ 1, %173 ], [ 1, %124 ], [ 0, %65 ], [ 0, %98 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret i32 %177
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
  %36 = shl i32 %35, %22
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
  %53 = sub nsw i32 %41, %51
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
  %61 = phi i64 [ %65, %60 ], [ 10, %55 ]
  %62 = getelementptr inbounds nuw i32, ptr %59, i64 %61
  %63 = load i32, ptr %62, align 4, !tbaa !4
  %64 = icmp sgt i32 %63, %58
  %65 = add nuw nsw i64 %61, 1
  br i1 %64, label %66, label %60

66:                                               ; preds = %60
  %67 = trunc nuw nsw i64 %61 to i32
  %68 = icmp samesign ugt i64 %61, 15
  br i1 %68, label %97, label %69

69:                                               ; preds = %66
  %70 = sub nuw nsw i32 16, %67
  %71 = lshr i32 %58, %70
  %72 = getelementptr inbounds nuw i8, ptr %1, i64 1024
  %73 = getelementptr inbounds nuw i16, ptr %72, i64 %61
  %74 = load i16, ptr %73, align 2, !tbaa !39
  %75 = zext i16 %74 to i32
  %76 = sub nsw i32 %71, %75
  %77 = getelementptr inbounds nuw i8, ptr %1, i64 1124
  %78 = getelementptr inbounds nuw i16, ptr %77, i64 %61
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
  %88 = zext i8 %87 to i64
  %89 = icmp eq i64 %61, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %83
  %91 = lshr i32 %43, %67
  store i32 %91, ptr %42, align 8, !tbaa !127
  %92 = sub nsw i32 %41, %67
  store i32 %92, ptr %3, align 8, !tbaa !126
  %93 = getelementptr inbounds nuw i8, ptr %1, i64 1444
  %94 = getelementptr inbounds i16, ptr %93, i64 %85
  %95 = load i16, ptr %94, align 2, !tbaa !39
  %96 = zext i16 %95 to i32
  br label %97

97:                                               ; preds = %90, %83, %69, %66, %11, %49
  %98 = phi i32 [ -1, %11 ], [ %54, %49 ], [ %96, %90 ], [ -1, %66 ], [ -1, %69 ], [ -1, %83 ]
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
  %27 = mul nsw i32 %5, %4
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
  %36 = mul nsw i32 %17, %27
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
  br label %1444

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
  br i1 %52, label %53, label %1444

53:                                               ; preds = %46
  %54 = icmp eq i32 %4, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %53
  %56 = udiv i32 2147483647, %4
  %57 = icmp sgt i32 %16, %56
  br i1 %57, label %1444, label %58

58:                                               ; preds = %55, %53
  %59 = mul i32 %16, %4
  %60 = or i32 %59, %6
  %61 = icmp sgt i32 %60, -1
  br i1 %61, label %62, label %1444

62:                                               ; preds = %58
  %63 = icmp eq i32 %6, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %62
  %65 = udiv i32 2147483647, %6
  %66 = icmp sgt i32 %59, %65
  %67 = mul i32 %59, %6
  %68 = icmp sgt i32 %67, 2147483640
  %69 = or i1 %66, %68
  br i1 %69, label %1444, label %70

70:                                               ; preds = %62, %64
  %71 = phi i32 [ %67, %64 ], [ 0, %62 ]
  %72 = add i32 %71, 7
  %73 = lshr i32 %72, 3
  %74 = icmp sgt i32 %5, -1
  br i1 %74, label %75, label %1444

75:                                               ; preds = %70
  br i1 %22, label %79, label %76

76:                                               ; preds = %75
  %77 = udiv i32 2147483647, %5
  %78 = icmp samesign ugt i32 %73, %77
  br i1 %78, label %1444, label %79

79:                                               ; preds = %75, %76
  %80 = mul nuw nsw i32 %73, %5
  %81 = xor i32 %73, 2147483647
  %82 = icmp samesign ugt i32 %80, %81
  br i1 %82, label %1444, label %83

83:                                               ; preds = %79
  %84 = add nuw nsw i32 %73, 1
  %85 = mul i32 %84, %5
  %86 = icmp ult i32 %2, %85
  br i1 %86, label %1444, label %87

87:                                               ; preds = %83
  %88 = shl nuw nsw i32 %73, 1
  %89 = zext nneg i32 %88 to i64
  %90 = add nuw nsw i64 %89, 15
  %91 = and i64 %90, 2147483632
  %92 = add nuw nsw i64 %91, 16
  %93 = sub i64 100663296, %48
  %94 = icmp ugt i64 %92, %93
  br i1 %94, label %1444, label %95

95:                                               ; preds = %87
  %96 = getelementptr inbounds nuw i8, ptr @arena, i64 %48
  %97 = add i64 %48, %92
  store i64 %97, ptr @arena_used, align 8, !tbaa !19
  store i64 %89, ptr %96, align 8, !tbaa !19
  %98 = getelementptr i8, ptr %96, i64 16
  %99 = icmp slt i32 %6, 8
  br i1 %22, label %1444, label %100

100:                                              ; preds = %95
  %101 = select i1 %99, i32 1, i32 %18
  %102 = select i1 %99, i32 %73, i32 %4
  %103 = zext nneg i32 %73 to i64
  %104 = mul i32 %102, %101
  %105 = sext i32 %101 to i64
  %106 = icmp slt i32 %101, %104
  %107 = icmp sgt i32 %101, 0
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
  %122 = zext i32 %101 to i64
  %123 = zext nneg i32 %101 to i64
  %124 = zext i32 %104 to i64
  %125 = shl nuw nsw i64 %116, 1
  %126 = getelementptr i8, ptr @arena, i64 %41
  %127 = getelementptr i8, ptr %126, i64 %39
  %128 = getelementptr i8, ptr %127, i64 %116
  %129 = getelementptr i8, ptr %128, i64 33
  %130 = add nuw nsw i64 %116, 1
  %131 = add i64 %41, ptrtoint (ptr @arena to i64)
  %132 = add i64 %131, %39
  %133 = add i64 %132, 31
  %134 = sub i64 %133, %9
  %135 = xor i64 %109, -1
  %136 = sub nsw i64 %109, %105
  %137 = add i32 %59, -1
  %138 = add nuw nsw i64 %116, 1
  %139 = icmp ult i64 %136, 4
  %140 = icmp ult i32 %101, 32
  %141 = icmp ult i64 %136, 32
  %142 = and i64 %136, 28
  %143 = and i64 %136, -32
  %144 = icmp eq i64 %136, %143
  %145 = add nsw i64 %143, %105
  %146 = icmp eq i64 %142, 0
  %147 = and i64 %136, -4
  %148 = add nsw i64 %147, %105
  %149 = icmp eq i64 %136, %147
  %150 = add nsw i64 %109, -1
  %151 = icmp ult i32 %101, 4
  %152 = icmp ult i32 %101, 32
  %153 = and i64 %122, 28
  %154 = and i64 %122, 2147483616
  %155 = icmp eq i64 %154, %122
  %156 = icmp eq i64 %153, 0
  %157 = and i64 %122, 2147483644
  %158 = icmp eq i64 %157, %122
  %159 = and i64 %122, 3
  %160 = icmp eq i64 %159, 0
  %161 = icmp ult i64 %136, 4
  %162 = icmp ult i32 %101, 16
  %163 = icmp ult i64 %136, 16
  %164 = and i64 %136, 12
  %165 = and i64 %136, -16
  %166 = icmp eq i64 %136, %165
  %167 = add nsw i64 %165, %105
  %168 = icmp eq i64 %164, 0
  %169 = and i64 %136, -4
  %170 = add nsw i64 %169, %105
  %171 = icmp eq i64 %136, %169
  %172 = icmp ult i32 %101, 4
  %173 = icmp ult i32 %101, 32
  %174 = and i64 %122, 28
  %175 = and i64 %122, 2147483616
  %176 = icmp eq i64 %175, %122
  %177 = icmp eq i64 %174, 0
  %178 = and i64 %122, 2147483644
  %179 = icmp eq i64 %178, %122
  %180 = and i64 %122, 1
  %181 = icmp eq i64 %180, 0
  %182 = add nsw i64 %122, -1
  %183 = icmp ult i64 %136, 8
  %184 = icmp ult i32 %101, 32
  %185 = icmp ult i64 %136, 32
  %186 = and i64 %136, 24
  %187 = and i64 %136, -32
  %188 = icmp eq i64 %136, %187
  %189 = add nsw i64 %187, %105
  %190 = icmp eq i64 %186, 0
  %191 = and i64 %136, -8
  %192 = add nsw i64 %191, %105
  %193 = icmp eq i64 %136, %191
  %194 = add nsw i64 %109, -1
  %195 = icmp ult i32 %104, 4
  %196 = icmp ult i32 %104, 32
  %197 = and i64 %124, 28
  %198 = and i64 %124, 2147483616
  %199 = icmp eq i64 %198, %124
  %200 = icmp eq i64 %197, 0
  %201 = and i64 %124, 2147483644
  %202 = icmp eq i64 %201, %124
  %203 = and i64 %124, 3
  %204 = icmp eq i64 %203, 0
  %205 = icmp ult i64 %136, 4
  %206 = icmp ult i32 %101, 32
  %207 = icmp ult i64 %136, 32
  %208 = and i64 %136, 28
  %209 = and i64 %136, -32
  %210 = icmp eq i64 %136, %209
  %211 = add nsw i64 %209, %105
  %212 = icmp eq i64 %208, 0
  %213 = and i64 %136, -4
  %214 = add nsw i64 %213, %105
  %215 = icmp eq i64 %136, %213
  %216 = add nsw i64 %109, -1
  %217 = and i32 %4, 1
  %218 = icmp eq i32 %4, 1
  %219 = and i32 %4, -2
  %220 = icmp eq i32 %217, 0
  %221 = icmp ne i32 %217, 0
  %222 = and i32 %59, 3
  %223 = icmp ult i32 %59, 4
  %224 = and i32 %59, -4
  %225 = icmp eq i32 %222, 0
  %226 = icmp ne i32 %222, 0
  %227 = and i64 %116, 1
  %228 = icmp eq i64 %227, 0
  %229 = shl nuw nsw i64 %116, 2
  %230 = mul nuw nsw i64 %116, 3
  %231 = add nsw i64 %116, -1
  %232 = icmp eq i32 %114, 0
  %233 = icmp ult i32 %114, 7
  %234 = and i64 %130, 4294967288
  %235 = sub nsw i64 %116, %234
  %236 = icmp eq i64 %130, %234
  %237 = and i32 %59, 1
  %238 = icmp eq i32 %137, 0
  %239 = and i32 %59, -2
  %240 = icmp eq i32 %237, 0
  %241 = icmp ne i32 %237, 0
  %242 = and i32 %59, 1
  %243 = icmp eq i32 %137, 0
  %244 = and i32 %59, -2
  %245 = icmp eq i32 %242, 0
  %246 = icmp ne i32 %242, 0
  %247 = and i32 %59, 1
  %248 = icmp eq i32 %137, 0
  %249 = and i32 %59, -2
  %250 = icmp eq i32 %247, 0
  %251 = icmp ne i32 %247, 0
  %252 = and i64 %116, 1
  %253 = icmp eq i64 %252, 0
  %254 = shl nuw nsw i64 %116, 2
  %255 = mul nuw nsw i64 %116, 3
  %256 = add nsw i64 %116, -1
  %257 = icmp eq i32 %114, 0
  %258 = and i64 %138, 3
  %259 = and i64 %116, 3
  %260 = icmp eq i64 %259, 3
  %261 = icmp ult i32 %114, 3
  br label %262

262:                                              ; preds = %100, %1441
  %263 = phi i64 [ 0, %100 ], [ %1442, %1441 ]
  %264 = phi ptr [ %1, %100 ], [ %974, %1441 ]
  %265 = mul i64 %263, %135
  %266 = add i64 %134, %265
  %267 = mul i64 %263, %135
  %268 = add i64 %134, %267
  %269 = trunc i64 %263 to i32
  %270 = and i32 %269, 1
  %271 = xor i32 %270, 1
  %272 = mul nuw nsw i32 %73, %271
  %273 = zext nneg i32 %272 to i64
  %274 = mul i64 %263, %135
  %275 = add i64 %134, %274
  %276 = trunc i64 %263 to i32
  %277 = and i32 %276, 1
  %278 = xor i32 %277, 1
  %279 = mul nuw nsw i32 %73, %278
  %280 = zext nneg i32 %279 to i64
  %281 = mul i64 %263, %135
  %282 = add i64 %134, %281
  %283 = trunc i64 %263 to i32
  %284 = and i32 %283, 1
  %285 = xor i32 %284, 1
  %286 = mul nuw nsw i32 %73, %285
  %287 = zext nneg i32 %286 to i64
  %288 = mul i64 %263, %135
  %289 = add i64 %134, %288
  %290 = trunc i64 %263 to i32
  %291 = and i32 %290, 1
  %292 = xor i32 %291, 1
  %293 = mul nuw nsw i32 %73, %292
  %294 = zext nneg i32 %293 to i64
  %295 = mul i64 %263, %135
  %296 = add i64 %134, %295
  %297 = trunc i64 %263 to i32
  %298 = and i32 %297, 1
  %299 = xor i32 %298, 1
  %300 = mul nuw nsw i32 %73, %299
  %301 = zext nneg i32 %300 to i64
  %302 = mul i64 %263, %135
  %303 = add i64 %134, %302
  %304 = trunc i64 %263 to i32
  %305 = mul i32 %14, %304
  %306 = zext i32 %305 to i64
  %307 = trunc i64 %263 to i32
  %308 = trunc i64 %263 to i1
  %309 = select i1 %308, i64 %103, i64 0
  %310 = getelementptr i8, ptr %98, i64 %309
  %311 = and i32 %307, 1
  %312 = xor i32 %311, 1
  %313 = mul nuw nsw i32 %312, %73
  %314 = zext nneg i32 %313 to i64
  %315 = getelementptr inbounds nuw i8, ptr %98, i64 %314
  %316 = load ptr, ptr %50, align 8, !tbaa !110
  %317 = mul i32 %14, %307
  %318 = zext i32 %317 to i64
  %319 = getelementptr i8, ptr %316, i64 %318
  %320 = getelementptr inbounds nuw i8, ptr %264, i64 1
  %321 = load i8, ptr %264, align 1, !tbaa !35
  %322 = icmp ugt i8 %321, 4
  br i1 %322, label %1444, label %323

323:                                              ; preds = %262
  %324 = icmp eq i64 %263, 0
  br i1 %324, label %325, label %329

325:                                              ; preds = %323
  %326 = zext nneg i8 %321 to i64
  %327 = getelementptr inbounds nuw i8, ptr @first_row_filter, i64 %326
  %328 = load i8, ptr %327, align 1, !tbaa !35
  br label %329

329:                                              ; preds = %325, %323
  %330 = phi i8 [ %328, %325 ], [ %321, %323 ]
  switch i8 %330, label %973 [
    i8 0, label %504
    i8 1, label %506
    i8 2, label %446
    i8 3, label %389
    i8 4, label %331
    i8 5, label %890
  ]

331:                                              ; preds = %329
  br i1 %107, label %332, label %754

332:                                              ; preds = %331
  br i1 %151, label %371, label %333

333:                                              ; preds = %332
  %334 = add i64 %309, %268
  %335 = icmp ult i64 %334, 32
  %336 = sub nsw i64 %309, %273
  %337 = icmp ult i64 %336, 32
  %338 = or i1 %335, %337
  br i1 %338, label %371, label %339

339:                                              ; preds = %333
  br i1 %152, label %358, label %340

340:                                              ; preds = %339, %340
  %341 = phi i64 [ %354, %340 ], [ 0, %339 ]
  %342 = getelementptr inbounds nuw i8, ptr %320, i64 %341
  %343 = getelementptr inbounds nuw i8, ptr %342, i64 16
  %344 = load <16 x i8>, ptr %342, align 1, !tbaa !35
  %345 = load <16 x i8>, ptr %343, align 1, !tbaa !35
  %346 = getelementptr inbounds nuw i8, ptr %315, i64 %341
  %347 = getelementptr inbounds nuw i8, ptr %346, i64 16
  %348 = load <16 x i8>, ptr %346, align 1, !tbaa !35
  %349 = load <16 x i8>, ptr %347, align 1, !tbaa !35
  %350 = add <16 x i8> %348, %344
  %351 = add <16 x i8> %349, %345
  %352 = getelementptr inbounds nuw i8, ptr %310, i64 %341
  %353 = getelementptr inbounds nuw i8, ptr %352, i64 16
  store <16 x i8> %350, ptr %352, align 1, !tbaa !35
  store <16 x i8> %351, ptr %353, align 1, !tbaa !35
  %354 = add nuw i64 %341, 32
  %355 = icmp eq i64 %354, %154
  br i1 %355, label %356, label %340, !llvm.loop !166

356:                                              ; preds = %340
  br i1 %155, label %754, label %357

357:                                              ; preds = %356
  br i1 %156, label %371, label %358, !prof !167

358:                                              ; preds = %339, %357
  %359 = phi i64 [ %154, %357 ], [ 0, %339 ]
  br label %360

360:                                              ; preds = %360, %358
  %361 = phi i64 [ %359, %358 ], [ %368, %360 ]
  %362 = getelementptr inbounds nuw i8, ptr %320, i64 %361
  %363 = load <4 x i8>, ptr %362, align 1, !tbaa !35
  %364 = getelementptr inbounds nuw i8, ptr %315, i64 %361
  %365 = load <4 x i8>, ptr %364, align 1, !tbaa !35
  %366 = add <4 x i8> %365, %363
  %367 = getelementptr inbounds nuw i8, ptr %310, i64 %361
  store <4 x i8> %366, ptr %367, align 1, !tbaa !35
  %368 = add nuw i64 %361, 4
  %369 = icmp eq i64 %368, %157
  br i1 %369, label %370, label %360, !llvm.loop !168

370:                                              ; preds = %360
  br i1 %158, label %754, label %371

371:                                              ; preds = %333, %332, %357, %370
  %372 = phi i64 [ 0, %332 ], [ 0, %333 ], [ %154, %357 ], [ %157, %370 ]
  br i1 %160, label %385, label %373

373:                                              ; preds = %371, %373
  %374 = phi i64 [ %382, %373 ], [ %372, %371 ]
  %375 = phi i64 [ %383, %373 ], [ 0, %371 ]
  %376 = getelementptr inbounds nuw i8, ptr %320, i64 %374
  %377 = load i8, ptr %376, align 1, !tbaa !35
  %378 = getelementptr inbounds nuw i8, ptr %315, i64 %374
  %379 = load i8, ptr %378, align 1, !tbaa !35
  %380 = add i8 %379, %377
  %381 = getelementptr inbounds nuw i8, ptr %310, i64 %374
  store i8 %380, ptr %381, align 1, !tbaa !35
  %382 = add nuw nsw i64 %374, 1
  %383 = add i64 %375, 1
  %384 = icmp eq i64 %383, %159
  br i1 %384, label %385, label %373, !llvm.loop !169

385:                                              ; preds = %373, %371
  %386 = phi i64 [ %372, %371 ], [ %382, %373 ]
  %387 = sub nsw i64 %372, %122
  %388 = icmp ugt i64 %387, -4
  br i1 %388, label %754, label %831

389:                                              ; preds = %329
  br i1 %107, label %390, label %614

390:                                              ; preds = %389
  br i1 %172, label %432, label %391

391:                                              ; preds = %390
  %392 = add i64 %309, %282
  %393 = icmp ult i64 %392, 32
  %394 = sub nsw i64 %309, %287
  %395 = icmp ult i64 %394, 32
  %396 = or i1 %393, %395
  br i1 %396, label %432, label %397

397:                                              ; preds = %391
  br i1 %173, label %418, label %398

398:                                              ; preds = %397, %398
  %399 = phi i64 [ %414, %398 ], [ 0, %397 ]
  %400 = getelementptr inbounds nuw i8, ptr %320, i64 %399
  %401 = getelementptr inbounds nuw i8, ptr %400, i64 16
  %402 = load <16 x i8>, ptr %400, align 1, !tbaa !35
  %403 = load <16 x i8>, ptr %401, align 1, !tbaa !35
  %404 = getelementptr inbounds nuw i8, ptr %315, i64 %399
  %405 = getelementptr inbounds nuw i8, ptr %404, i64 16
  %406 = load <16 x i8>, ptr %404, align 1, !tbaa !35
  %407 = load <16 x i8>, ptr %405, align 1, !tbaa !35
  %408 = lshr <16 x i8> %406, splat (i8 1)
  %409 = lshr <16 x i8> %407, splat (i8 1)
  %410 = add <16 x i8> %408, %402
  %411 = add <16 x i8> %409, %403
  %412 = getelementptr inbounds nuw i8, ptr %310, i64 %399
  %413 = getelementptr inbounds nuw i8, ptr %412, i64 16
  store <16 x i8> %410, ptr %412, align 1, !tbaa !35
  store <16 x i8> %411, ptr %413, align 1, !tbaa !35
  %414 = add nuw i64 %399, 32
  %415 = icmp eq i64 %414, %175
  br i1 %415, label %416, label %398, !llvm.loop !170

416:                                              ; preds = %398
  br i1 %176, label %614, label %417

417:                                              ; preds = %416
  br i1 %177, label %432, label %418, !prof !167

418:                                              ; preds = %397, %417
  %419 = phi i64 [ %175, %417 ], [ 0, %397 ]
  br label %420

420:                                              ; preds = %420, %418
  %421 = phi i64 [ %419, %418 ], [ %429, %420 ]
  %422 = getelementptr inbounds nuw i8, ptr %320, i64 %421
  %423 = load <4 x i8>, ptr %422, align 1, !tbaa !35
  %424 = getelementptr inbounds nuw i8, ptr %315, i64 %421
  %425 = load <4 x i8>, ptr %424, align 1, !tbaa !35
  %426 = lshr <4 x i8> %425, splat (i8 1)
  %427 = add <4 x i8> %426, %423
  %428 = getelementptr inbounds nuw i8, ptr %310, i64 %421
  store <4 x i8> %427, ptr %428, align 1, !tbaa !35
  %429 = add nuw i64 %421, 4
  %430 = icmp eq i64 %429, %178
  br i1 %430, label %431, label %420, !llvm.loop !171

431:                                              ; preds = %420
  br i1 %179, label %614, label %432

432:                                              ; preds = %391, %390, %417, %431
  %433 = phi i64 [ 0, %390 ], [ 0, %391 ], [ %175, %417 ], [ %178, %431 ]
  br i1 %181, label %443, label %434

434:                                              ; preds = %432
  %435 = getelementptr inbounds nuw i8, ptr %320, i64 %433
  %436 = load i8, ptr %435, align 1, !tbaa !35
  %437 = getelementptr inbounds nuw i8, ptr %315, i64 %433
  %438 = load i8, ptr %437, align 1, !tbaa !35
  %439 = lshr i8 %438, 1
  %440 = add i8 %439, %436
  %441 = getelementptr inbounds nuw i8, ptr %310, i64 %433
  store i8 %440, ptr %441, align 1, !tbaa !35
  %442 = or disjoint i64 %433, 1
  br label %443

443:                                              ; preds = %434, %432
  %444 = phi i64 [ %433, %432 ], [ %442, %434 ]
  %445 = icmp eq i64 %433, %182
  br i1 %445, label %614, label %702

446:                                              ; preds = %329
  br i1 %108, label %447, label %973

447:                                              ; preds = %446
  br i1 %195, label %486, label %448

448:                                              ; preds = %447
  %449 = add i64 %309, %296
  %450 = icmp ult i64 %449, 32
  %451 = sub nsw i64 %309, %301
  %452 = icmp ult i64 %451, 32
  %453 = or i1 %450, %452
  br i1 %453, label %486, label %454

454:                                              ; preds = %448
  br i1 %196, label %473, label %455

455:                                              ; preds = %454, %455
  %456 = phi i64 [ %469, %455 ], [ 0, %454 ]
  %457 = getelementptr inbounds nuw i8, ptr %320, i64 %456
  %458 = getelementptr inbounds nuw i8, ptr %457, i64 16
  %459 = load <16 x i8>, ptr %457, align 1, !tbaa !35
  %460 = load <16 x i8>, ptr %458, align 1, !tbaa !35
  %461 = getelementptr inbounds nuw i8, ptr %315, i64 %456
  %462 = getelementptr inbounds nuw i8, ptr %461, i64 16
  %463 = load <16 x i8>, ptr %461, align 1, !tbaa !35
  %464 = load <16 x i8>, ptr %462, align 1, !tbaa !35
  %465 = add <16 x i8> %463, %459
  %466 = add <16 x i8> %464, %460
  %467 = getelementptr inbounds nuw i8, ptr %310, i64 %456
  %468 = getelementptr inbounds nuw i8, ptr %467, i64 16
  store <16 x i8> %465, ptr %467, align 1, !tbaa !35
  store <16 x i8> %466, ptr %468, align 1, !tbaa !35
  %469 = add nuw i64 %456, 32
  %470 = icmp eq i64 %469, %198
  br i1 %470, label %471, label %455, !llvm.loop !172

471:                                              ; preds = %455
  br i1 %199, label %973, label %472

472:                                              ; preds = %471
  br i1 %200, label %486, label %473, !prof !167

473:                                              ; preds = %454, %472
  %474 = phi i64 [ %198, %472 ], [ 0, %454 ]
  br label %475

475:                                              ; preds = %475, %473
  %476 = phi i64 [ %474, %473 ], [ %483, %475 ]
  %477 = getelementptr inbounds nuw i8, ptr %320, i64 %476
  %478 = load <4 x i8>, ptr %477, align 1, !tbaa !35
  %479 = getelementptr inbounds nuw i8, ptr %315, i64 %476
  %480 = load <4 x i8>, ptr %479, align 1, !tbaa !35
  %481 = add <4 x i8> %480, %478
  %482 = getelementptr inbounds nuw i8, ptr %310, i64 %476
  store <4 x i8> %481, ptr %482, align 1, !tbaa !35
  %483 = add nuw i64 %476, 4
  %484 = icmp eq i64 %483, %201
  br i1 %484, label %485, label %475, !llvm.loop !173

485:                                              ; preds = %475
  br i1 %202, label %973, label %486

486:                                              ; preds = %448, %447, %472, %485
  %487 = phi i64 [ 0, %447 ], [ 0, %448 ], [ %198, %472 ], [ %201, %485 ]
  br i1 %204, label %500, label %488

488:                                              ; preds = %486, %488
  %489 = phi i64 [ %497, %488 ], [ %487, %486 ]
  %490 = phi i64 [ %498, %488 ], [ 0, %486 ]
  %491 = getelementptr inbounds nuw i8, ptr %320, i64 %489
  %492 = load i8, ptr %491, align 1, !tbaa !35
  %493 = getelementptr inbounds nuw i8, ptr %315, i64 %489
  %494 = load i8, ptr %493, align 1, !tbaa !35
  %495 = add i8 %494, %492
  %496 = getelementptr inbounds nuw i8, ptr %310, i64 %489
  store i8 %495, ptr %496, align 1, !tbaa !35
  %497 = add nuw nsw i64 %489, 1
  %498 = add i64 %490, 1
  %499 = icmp eq i64 %498, %203
  br i1 %499, label %500, label %488, !llvm.loop !174

500:                                              ; preds = %488, %486
  %501 = phi i64 [ %487, %486 ], [ %497, %488 ]
  %502 = sub nsw i64 %487, %124
  %503 = icmp ugt i64 %502, -4
  br i1 %503, label %973, label %583

504:                                              ; preds = %329
  %505 = tail call ptr @memcpy(ptr noundef nonnull %310, ptr noundef nonnull %320, i64 noundef %109) #16
  br label %973

506:                                              ; preds = %329
  %507 = tail call ptr @memcpy(ptr noundef nonnull %310, ptr noundef nonnull %320, i64 noundef %105) #16
  br i1 %106, label %508, label %973

508:                                              ; preds = %506
  br i1 %205, label %547, label %509

509:                                              ; preds = %508
  %510 = add i64 %309, %303
  %511 = icmp ult i64 %510, 32
  %512 = or i1 %511, %206
  br i1 %512, label %547, label %513

513:                                              ; preds = %509
  br i1 %207, label %533, label %514

514:                                              ; preds = %513, %514
  %515 = phi i64 [ %529, %514 ], [ 0, %513 ]
  %516 = add i64 %515, %105
  %517 = getelementptr inbounds i8, ptr %320, i64 %516
  %518 = getelementptr inbounds nuw i8, ptr %517, i64 16
  %519 = load <16 x i8>, ptr %517, align 1, !tbaa !35
  %520 = load <16 x i8>, ptr %518, align 1, !tbaa !35
  %521 = getelementptr inbounds i8, ptr %310, i64 %515
  %522 = getelementptr inbounds nuw i8, ptr %521, i64 16
  %523 = load <16 x i8>, ptr %521, align 1, !tbaa !35
  %524 = load <16 x i8>, ptr %522, align 1, !tbaa !35
  %525 = add <16 x i8> %523, %519
  %526 = add <16 x i8> %524, %520
  %527 = getelementptr inbounds i8, ptr %310, i64 %516
  %528 = getelementptr inbounds nuw i8, ptr %527, i64 16
  store <16 x i8> %525, ptr %527, align 1, !tbaa !35
  store <16 x i8> %526, ptr %528, align 1, !tbaa !35
  %529 = add nuw i64 %515, 32
  %530 = icmp eq i64 %529, %209
  br i1 %530, label %531, label %514, !llvm.loop !175

531:                                              ; preds = %514
  br i1 %210, label %973, label %532

532:                                              ; preds = %531
  br i1 %212, label %547, label %533, !prof !167

533:                                              ; preds = %513, %532
  %534 = phi i64 [ %209, %532 ], [ 0, %513 ]
  br label %535

535:                                              ; preds = %535, %533
  %536 = phi i64 [ %534, %533 ], [ %544, %535 ]
  %537 = add i64 %536, %105
  %538 = getelementptr inbounds i8, ptr %320, i64 %537
  %539 = load <4 x i8>, ptr %538, align 1, !tbaa !35
  %540 = getelementptr inbounds i8, ptr %310, i64 %536
  %541 = load <4 x i8>, ptr %540, align 1, !tbaa !35
  %542 = add <4 x i8> %541, %539
  %543 = getelementptr inbounds i8, ptr %310, i64 %537
  store <4 x i8> %542, ptr %543, align 1, !tbaa !35
  %544 = add nuw i64 %536, 4
  %545 = icmp eq i64 %544, %213
  br i1 %545, label %546, label %535, !llvm.loop !176

546:                                              ; preds = %535
  br i1 %215, label %973, label %547

547:                                              ; preds = %509, %508, %532, %546
  %548 = phi i64 [ %105, %508 ], [ %105, %509 ], [ %211, %532 ], [ %214, %546 ]
  %549 = sub nsw i64 %109, %548
  %550 = and i64 %549, 1
  %551 = icmp eq i64 %550, 0
  br i1 %551, label %561, label %552

552:                                              ; preds = %547
  %553 = getelementptr inbounds i8, ptr %320, i64 %548
  %554 = load i8, ptr %553, align 1, !tbaa !35
  %555 = sub nsw i64 %548, %105
  %556 = getelementptr inbounds i8, ptr %310, i64 %555
  %557 = load i8, ptr %556, align 1, !tbaa !35
  %558 = add i8 %557, %554
  %559 = getelementptr inbounds i8, ptr %310, i64 %548
  store i8 %558, ptr %559, align 1, !tbaa !35
  %560 = add nsw i64 %548, 1
  br label %561

561:                                              ; preds = %552, %547
  %562 = phi i64 [ %548, %547 ], [ %560, %552 ]
  %563 = icmp eq i64 %548, %216
  br i1 %563, label %973, label %564

564:                                              ; preds = %561, %564
  %565 = phi i64 [ %581, %564 ], [ %562, %561 ]
  %566 = getelementptr inbounds i8, ptr %320, i64 %565
  %567 = load i8, ptr %566, align 1, !tbaa !35
  %568 = sub nsw i64 %565, %105
  %569 = getelementptr inbounds i8, ptr %310, i64 %568
  %570 = load i8, ptr %569, align 1, !tbaa !35
  %571 = add i8 %570, %567
  %572 = getelementptr inbounds i8, ptr %310, i64 %565
  store i8 %571, ptr %572, align 1, !tbaa !35
  %573 = add nsw i64 %565, 1
  %574 = getelementptr inbounds i8, ptr %320, i64 %573
  %575 = load i8, ptr %574, align 1, !tbaa !35
  %576 = sub nsw i64 %573, %105
  %577 = getelementptr inbounds i8, ptr %310, i64 %576
  %578 = load i8, ptr %577, align 1, !tbaa !35
  %579 = add i8 %578, %575
  %580 = getelementptr inbounds i8, ptr %310, i64 %573
  store i8 %579, ptr %580, align 1, !tbaa !35
  %581 = add nsw i64 %565, 2
  %582 = icmp eq i64 %581, %109
  br i1 %582, label %973, label %564, !llvm.loop !177

583:                                              ; preds = %500, %583
  %584 = phi i64 [ %612, %583 ], [ %501, %500 ]
  %585 = getelementptr inbounds nuw i8, ptr %320, i64 %584
  %586 = load i8, ptr %585, align 1, !tbaa !35
  %587 = getelementptr inbounds nuw i8, ptr %315, i64 %584
  %588 = load i8, ptr %587, align 1, !tbaa !35
  %589 = add i8 %588, %586
  %590 = getelementptr inbounds nuw i8, ptr %310, i64 %584
  store i8 %589, ptr %590, align 1, !tbaa !35
  %591 = add nuw nsw i64 %584, 1
  %592 = getelementptr inbounds nuw i8, ptr %320, i64 %591
  %593 = load i8, ptr %592, align 1, !tbaa !35
  %594 = getelementptr inbounds nuw i8, ptr %315, i64 %591
  %595 = load i8, ptr %594, align 1, !tbaa !35
  %596 = add i8 %595, %593
  %597 = getelementptr inbounds nuw i8, ptr %310, i64 %591
  store i8 %596, ptr %597, align 1, !tbaa !35
  %598 = add nuw nsw i64 %584, 2
  %599 = getelementptr inbounds nuw i8, ptr %320, i64 %598
  %600 = load i8, ptr %599, align 1, !tbaa !35
  %601 = getelementptr inbounds nuw i8, ptr %315, i64 %598
  %602 = load i8, ptr %601, align 1, !tbaa !35
  %603 = add i8 %602, %600
  %604 = getelementptr inbounds nuw i8, ptr %310, i64 %598
  store i8 %603, ptr %604, align 1, !tbaa !35
  %605 = add nuw nsw i64 %584, 3
  %606 = getelementptr inbounds nuw i8, ptr %320, i64 %605
  %607 = load i8, ptr %606, align 1, !tbaa !35
  %608 = getelementptr inbounds nuw i8, ptr %315, i64 %605
  %609 = load i8, ptr %608, align 1, !tbaa !35
  %610 = add i8 %609, %607
  %611 = getelementptr inbounds nuw i8, ptr %310, i64 %605
  store i8 %610, ptr %611, align 1, !tbaa !35
  %612 = add nuw nsw i64 %584, 4
  %613 = icmp eq i64 %612, %124
  br i1 %613, label %973, label %583, !llvm.loop !178

614:                                              ; preds = %443, %702, %416, %431, %389
  br i1 %106, label %615, label %973

615:                                              ; preds = %614
  br i1 %183, label %678, label %616

616:                                              ; preds = %615
  %617 = add i64 %309, %289
  %618 = icmp ult i64 %617, 32
  %619 = sub nsw i64 %309, %294
  %620 = icmp ult i64 %619, 32
  %621 = or i1 %618, %620
  %622 = or i1 %621, %184
  br i1 %622, label %678, label %623

623:                                              ; preds = %616
  br i1 %185, label %657, label %624

624:                                              ; preds = %623, %624
  %625 = phi i64 [ %653, %624 ], [ 0, %623 ]
  %626 = add i64 %625, %105
  %627 = getelementptr inbounds i8, ptr %320, i64 %626
  %628 = getelementptr inbounds nuw i8, ptr %627, i64 16
  %629 = load <16 x i8>, ptr %627, align 1, !tbaa !35
  %630 = load <16 x i8>, ptr %628, align 1, !tbaa !35
  %631 = getelementptr inbounds i8, ptr %315, i64 %626
  %632 = getelementptr inbounds nuw i8, ptr %631, i64 16
  %633 = load <16 x i8>, ptr %631, align 1, !tbaa !35
  %634 = load <16 x i8>, ptr %632, align 1, !tbaa !35
  %635 = zext <16 x i8> %633 to <16 x i16>
  %636 = zext <16 x i8> %634 to <16 x i16>
  %637 = getelementptr inbounds i8, ptr %310, i64 %625
  %638 = getelementptr inbounds nuw i8, ptr %637, i64 16
  %639 = load <16 x i8>, ptr %637, align 1, !tbaa !35
  %640 = load <16 x i8>, ptr %638, align 1, !tbaa !35
  %641 = zext <16 x i8> %639 to <16 x i16>
  %642 = zext <16 x i8> %640 to <16 x i16>
  %643 = add nuw nsw <16 x i16> %641, %635
  %644 = add nuw nsw <16 x i16> %642, %636
  %645 = lshr <16 x i16> %643, splat (i16 1)
  %646 = lshr <16 x i16> %644, splat (i16 1)
  %647 = trunc nuw <16 x i16> %645 to <16 x i8>
  %648 = trunc nuw <16 x i16> %646 to <16 x i8>
  %649 = add <16 x i8> %629, %647
  %650 = add <16 x i8> %630, %648
  %651 = getelementptr inbounds i8, ptr %310, i64 %626
  %652 = getelementptr inbounds nuw i8, ptr %651, i64 16
  store <16 x i8> %649, ptr %651, align 1, !tbaa !35
  store <16 x i8> %650, ptr %652, align 1, !tbaa !35
  %653 = add nuw i64 %625, 32
  %654 = icmp eq i64 %653, %187
  br i1 %654, label %655, label %624, !llvm.loop !179

655:                                              ; preds = %624
  br i1 %188, label %973, label %656

656:                                              ; preds = %655
  br i1 %190, label %678, label %657, !prof !180

657:                                              ; preds = %623, %656
  %658 = phi i64 [ %187, %656 ], [ 0, %623 ]
  br label %659

659:                                              ; preds = %659, %657
  %660 = phi i64 [ %658, %657 ], [ %675, %659 ]
  %661 = add i64 %660, %105
  %662 = getelementptr inbounds i8, ptr %320, i64 %661
  %663 = load <8 x i8>, ptr %662, align 1, !tbaa !35
  %664 = getelementptr inbounds i8, ptr %315, i64 %661
  %665 = load <8 x i8>, ptr %664, align 1, !tbaa !35
  %666 = zext <8 x i8> %665 to <8 x i16>
  %667 = getelementptr inbounds i8, ptr %310, i64 %660
  %668 = load <8 x i8>, ptr %667, align 1, !tbaa !35
  %669 = zext <8 x i8> %668 to <8 x i16>
  %670 = add nuw nsw <8 x i16> %669, %666
  %671 = lshr <8 x i16> %670, splat (i16 1)
  %672 = trunc nuw <8 x i16> %671 to <8 x i8>
  %673 = add <8 x i8> %663, %672
  %674 = getelementptr inbounds i8, ptr %310, i64 %661
  store <8 x i8> %673, ptr %674, align 1, !tbaa !35
  %675 = add nuw i64 %660, 8
  %676 = icmp eq i64 %675, %191
  br i1 %676, label %677, label %659, !llvm.loop !181

677:                                              ; preds = %659
  br i1 %193, label %973, label %678

678:                                              ; preds = %616, %615, %656, %677
  %679 = phi i64 [ %105, %615 ], [ %105, %616 ], [ %189, %656 ], [ %192, %677 ]
  %680 = sub nsw i64 %109, %679
  %681 = and i64 %680, 1
  %682 = icmp eq i64 %681, 0
  br i1 %682, label %699, label %683

683:                                              ; preds = %678
  %684 = getelementptr inbounds i8, ptr %320, i64 %679
  %685 = load i8, ptr %684, align 1, !tbaa !35
  %686 = getelementptr inbounds i8, ptr %315, i64 %679
  %687 = load i8, ptr %686, align 1, !tbaa !35
  %688 = zext i8 %687 to i16
  %689 = sub nsw i64 %679, %105
  %690 = getelementptr inbounds i8, ptr %310, i64 %689
  %691 = load i8, ptr %690, align 1, !tbaa !35
  %692 = zext i8 %691 to i16
  %693 = add nuw nsw i16 %692, %688
  %694 = lshr i16 %693, 1
  %695 = trunc nuw i16 %694 to i8
  %696 = add i8 %685, %695
  %697 = getelementptr inbounds i8, ptr %310, i64 %679
  store i8 %696, ptr %697, align 1, !tbaa !35
  %698 = add nsw i64 %679, 1
  br label %699

699:                                              ; preds = %683, %678
  %700 = phi i64 [ %679, %678 ], [ %698, %683 ]
  %701 = icmp eq i64 %679, %194
  br i1 %701, label %973, label %721

702:                                              ; preds = %443, %702
  %703 = phi i64 [ %719, %702 ], [ %444, %443 ]
  %704 = getelementptr inbounds nuw i8, ptr %320, i64 %703
  %705 = load i8, ptr %704, align 1, !tbaa !35
  %706 = getelementptr inbounds nuw i8, ptr %315, i64 %703
  %707 = load i8, ptr %706, align 1, !tbaa !35
  %708 = lshr i8 %707, 1
  %709 = add i8 %708, %705
  %710 = getelementptr inbounds nuw i8, ptr %310, i64 %703
  store i8 %709, ptr %710, align 1, !tbaa !35
  %711 = add nuw nsw i64 %703, 1
  %712 = getelementptr inbounds nuw i8, ptr %320, i64 %711
  %713 = load i8, ptr %712, align 1, !tbaa !35
  %714 = getelementptr inbounds nuw i8, ptr %315, i64 %711
  %715 = load i8, ptr %714, align 1, !tbaa !35
  %716 = lshr i8 %715, 1
  %717 = add i8 %716, %713
  %718 = getelementptr inbounds nuw i8, ptr %310, i64 %711
  store i8 %717, ptr %718, align 1, !tbaa !35
  %719 = add nuw nsw i64 %703, 2
  %720 = icmp eq i64 %719, %123
  br i1 %720, label %614, label %702, !llvm.loop !182

721:                                              ; preds = %699, %721
  %722 = phi i64 [ %752, %721 ], [ %700, %699 ]
  %723 = getelementptr inbounds i8, ptr %320, i64 %722
  %724 = load i8, ptr %723, align 1, !tbaa !35
  %725 = getelementptr inbounds i8, ptr %315, i64 %722
  %726 = load i8, ptr %725, align 1, !tbaa !35
  %727 = zext i8 %726 to i16
  %728 = sub nsw i64 %722, %105
  %729 = getelementptr inbounds i8, ptr %310, i64 %728
  %730 = load i8, ptr %729, align 1, !tbaa !35
  %731 = zext i8 %730 to i16
  %732 = add nuw nsw i16 %731, %727
  %733 = lshr i16 %732, 1
  %734 = trunc nuw i16 %733 to i8
  %735 = add i8 %724, %734
  %736 = getelementptr inbounds i8, ptr %310, i64 %722
  store i8 %735, ptr %736, align 1, !tbaa !35
  %737 = add nsw i64 %722, 1
  %738 = getelementptr inbounds i8, ptr %320, i64 %737
  %739 = load i8, ptr %738, align 1, !tbaa !35
  %740 = getelementptr inbounds i8, ptr %315, i64 %737
  %741 = load i8, ptr %740, align 1, !tbaa !35
  %742 = zext i8 %741 to i16
  %743 = sub nsw i64 %737, %105
  %744 = getelementptr inbounds i8, ptr %310, i64 %743
  %745 = load i8, ptr %744, align 1, !tbaa !35
  %746 = zext i8 %745 to i16
  %747 = add nuw nsw i16 %746, %742
  %748 = lshr i16 %747, 1
  %749 = trunc nuw i16 %748 to i8
  %750 = add i8 %739, %749
  %751 = getelementptr inbounds i8, ptr %310, i64 %737
  store i8 %750, ptr %751, align 1, !tbaa !35
  %752 = add nsw i64 %722, 2
  %753 = icmp eq i64 %752, %109
  br i1 %753, label %973, label %721, !llvm.loop !183

754:                                              ; preds = %385, %831, %356, %370, %331
  br i1 %106, label %755, label %973

755:                                              ; preds = %754
  br i1 %161, label %829, label %756

756:                                              ; preds = %755
  %757 = add i64 %309, %275
  %758 = icmp ult i64 %757, 16
  %759 = or i1 %758, %162
  %760 = sub nsw i64 %309, %280
  %761 = icmp ult i64 %760, 16
  %762 = or i1 %759, %761
  %763 = add nsw i64 %309, %105
  %764 = sub nsw i64 %763, %280
  %765 = icmp ult i64 %764, 16
  %766 = or i1 %762, %765
  br i1 %766, label %829, label %767

767:                                              ; preds = %756
  br i1 %163, label %798, label %768

768:                                              ; preds = %767, %768
  %769 = phi i64 [ %794, %768 ], [ 0, %767 ]
  %770 = add i64 %769, %105
  %771 = getelementptr inbounds i8, ptr %320, i64 %770
  %772 = load <16 x i8>, ptr %771, align 1, !tbaa !35
  %773 = getelementptr inbounds i8, ptr %310, i64 %769
  %774 = load <16 x i8>, ptr %773, align 1, !tbaa !35
  %775 = zext <16 x i8> %774 to <16 x i32>
  %776 = getelementptr inbounds i8, ptr %315, i64 %770
  %777 = load <16 x i8>, ptr %776, align 1, !tbaa !35
  %778 = zext <16 x i8> %777 to <16 x i32>
  %779 = getelementptr inbounds i8, ptr %315, i64 %769
  %780 = load <16 x i8>, ptr %779, align 1, !tbaa !35
  %781 = zext <16 x i8> %780 to <16 x i32>
  %782 = mul nuw nsw <16 x i32> %781, splat (i32 3)
  %783 = add nuw nsw <16 x i32> %778, %775
  %784 = sub nsw <16 x i32> %782, %783
  %785 = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %775, <16 x i32> %778)
  %786 = tail call <16 x i32> @llvm.umax.v16i32(<16 x i32> %775, <16 x i32> %778)
  %787 = icmp sgt <16 x i32> %786, %784
  %788 = select <16 x i1> %787, <16 x i32> %781, <16 x i32> %785
  %789 = icmp sgt <16 x i32> %784, %785
  %790 = select <16 x i1> %789, <16 x i32> %788, <16 x i32> %786
  %791 = trunc nuw <16 x i32> %790 to <16 x i8>
  %792 = add <16 x i8> %772, %791
  %793 = getelementptr inbounds i8, ptr %310, i64 %770
  store <16 x i8> %792, ptr %793, align 1, !tbaa !35
  %794 = add nuw i64 %769, 16
  %795 = icmp eq i64 %794, %165
  br i1 %795, label %796, label %768, !llvm.loop !184

796:                                              ; preds = %768
  br i1 %166, label %973, label %797

797:                                              ; preds = %796
  br i1 %168, label %829, label %798, !prof !50

798:                                              ; preds = %767, %797
  %799 = phi i64 [ %165, %797 ], [ 0, %767 ]
  br label %800

800:                                              ; preds = %800, %798
  %801 = phi i64 [ %799, %798 ], [ %826, %800 ]
  %802 = add i64 %801, %105
  %803 = getelementptr inbounds i8, ptr %320, i64 %802
  %804 = load <4 x i8>, ptr %803, align 1, !tbaa !35
  %805 = getelementptr inbounds i8, ptr %310, i64 %801
  %806 = load <4 x i8>, ptr %805, align 1, !tbaa !35
  %807 = zext <4 x i8> %806 to <4 x i32>
  %808 = getelementptr inbounds i8, ptr %315, i64 %802
  %809 = load <4 x i8>, ptr %808, align 1, !tbaa !35
  %810 = zext <4 x i8> %809 to <4 x i32>
  %811 = getelementptr inbounds i8, ptr %315, i64 %801
  %812 = load <4 x i8>, ptr %811, align 1, !tbaa !35
  %813 = zext <4 x i8> %812 to <4 x i32>
  %814 = mul nuw nsw <4 x i32> %813, splat (i32 3)
  %815 = add nuw nsw <4 x i32> %810, %807
  %816 = sub nsw <4 x i32> %814, %815
  %817 = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %807, <4 x i32> %810)
  %818 = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %807, <4 x i32> %810)
  %819 = icmp sgt <4 x i32> %818, %816
  %820 = select <4 x i1> %819, <4 x i32> %813, <4 x i32> %817
  %821 = icmp sgt <4 x i32> %816, %817
  %822 = select <4 x i1> %821, <4 x i32> %820, <4 x i32> %818
  %823 = trunc nuw <4 x i32> %822 to <4 x i8>
  %824 = add <4 x i8> %804, %823
  %825 = getelementptr inbounds i8, ptr %310, i64 %802
  store <4 x i8> %824, ptr %825, align 1, !tbaa !35
  %826 = add nuw i64 %801, 4
  %827 = icmp eq i64 %826, %169
  br i1 %827, label %828, label %800, !llvm.loop !185

828:                                              ; preds = %800
  br i1 %171, label %973, label %829

829:                                              ; preds = %756, %755, %797, %828
  %830 = phi i64 [ %105, %755 ], [ %105, %756 ], [ %167, %797 ], [ %170, %828 ]
  br label %862

831:                                              ; preds = %385, %831
  %832 = phi i64 [ %860, %831 ], [ %386, %385 ]
  %833 = getelementptr inbounds nuw i8, ptr %320, i64 %832
  %834 = load i8, ptr %833, align 1, !tbaa !35
  %835 = getelementptr inbounds nuw i8, ptr %315, i64 %832
  %836 = load i8, ptr %835, align 1, !tbaa !35
  %837 = add i8 %836, %834
  %838 = getelementptr inbounds nuw i8, ptr %310, i64 %832
  store i8 %837, ptr %838, align 1, !tbaa !35
  %839 = add nuw nsw i64 %832, 1
  %840 = getelementptr inbounds nuw i8, ptr %320, i64 %839
  %841 = load i8, ptr %840, align 1, !tbaa !35
  %842 = getelementptr inbounds nuw i8, ptr %315, i64 %839
  %843 = load i8, ptr %842, align 1, !tbaa !35
  %844 = add i8 %843, %841
  %845 = getelementptr inbounds nuw i8, ptr %310, i64 %839
  store i8 %844, ptr %845, align 1, !tbaa !35
  %846 = add nuw nsw i64 %832, 2
  %847 = getelementptr inbounds nuw i8, ptr %320, i64 %846
  %848 = load i8, ptr %847, align 1, !tbaa !35
  %849 = getelementptr inbounds nuw i8, ptr %315, i64 %846
  %850 = load i8, ptr %849, align 1, !tbaa !35
  %851 = add i8 %850, %848
  %852 = getelementptr inbounds nuw i8, ptr %310, i64 %846
  store i8 %851, ptr %852, align 1, !tbaa !35
  %853 = add nuw nsw i64 %832, 3
  %854 = getelementptr inbounds nuw i8, ptr %320, i64 %853
  %855 = load i8, ptr %854, align 1, !tbaa !35
  %856 = getelementptr inbounds nuw i8, ptr %315, i64 %853
  %857 = load i8, ptr %856, align 1, !tbaa !35
  %858 = add i8 %857, %855
  %859 = getelementptr inbounds nuw i8, ptr %310, i64 %853
  store i8 %858, ptr %859, align 1, !tbaa !35
  %860 = add nuw nsw i64 %832, 4
  %861 = icmp eq i64 %860, %122
  br i1 %861, label %754, label %831, !llvm.loop !186

862:                                              ; preds = %829, %862
  %863 = phi i64 [ %888, %862 ], [ %830, %829 ]
  %864 = getelementptr inbounds i8, ptr %320, i64 %863
  %865 = load i8, ptr %864, align 1, !tbaa !35
  %866 = sub nsw i64 %863, %105
  %867 = getelementptr inbounds i8, ptr %310, i64 %866
  %868 = load i8, ptr %867, align 1, !tbaa !35
  %869 = zext i8 %868 to i32
  %870 = getelementptr inbounds i8, ptr %315, i64 %863
  %871 = load i8, ptr %870, align 1, !tbaa !35
  %872 = zext i8 %871 to i32
  %873 = getelementptr inbounds i8, ptr %315, i64 %866
  %874 = load i8, ptr %873, align 1, !tbaa !35
  %875 = zext i8 %874 to i32
  %876 = mul nuw nsw i32 %875, 3
  %877 = add nuw nsw i32 %872, %869
  %878 = sub nsw i32 %876, %877
  %879 = tail call i32 @llvm.umin.i32(i32 range(i32 0, 256) %869, i32 range(i32 0, 256) %872)
  %880 = tail call i32 @llvm.umax.i32(i32 range(i32 0, 256) %869, i32 range(i32 0, 256) %872)
  %881 = icmp sgt i32 %880, %878
  %882 = select i1 %881, i32 %875, i32 %879
  %883 = icmp sgt i32 %878, %879
  %884 = select i1 %883, i32 %882, i32 %880
  %885 = trunc nuw i32 %884 to i8
  %886 = add i8 %865, %885
  %887 = getelementptr inbounds i8, ptr %310, i64 %863
  store i8 %886, ptr %887, align 1, !tbaa !35
  %888 = add nsw i64 %863, 1
  %889 = icmp eq i64 %888, %109
  br i1 %889, label %973, label %862, !llvm.loop !187

890:                                              ; preds = %329
  %891 = tail call ptr @memcpy(ptr noundef nonnull %310, ptr noundef nonnull %320, i64 noundef %105) #16
  br i1 %106, label %892, label %973

892:                                              ; preds = %890
  br i1 %139, label %934, label %893

893:                                              ; preds = %892
  %894 = add i64 %309, %266
  %895 = icmp ult i64 %894, 32
  %896 = or i1 %895, %140
  br i1 %896, label %934, label %897

897:                                              ; preds = %893
  br i1 %141, label %919, label %898

898:                                              ; preds = %897, %898
  %899 = phi i64 [ %915, %898 ], [ 0, %897 ]
  %900 = add i64 %899, %105
  %901 = getelementptr inbounds i8, ptr %320, i64 %900
  %902 = getelementptr inbounds nuw i8, ptr %901, i64 16
  %903 = load <16 x i8>, ptr %901, align 1, !tbaa !35
  %904 = load <16 x i8>, ptr %902, align 1, !tbaa !35
  %905 = getelementptr inbounds i8, ptr %310, i64 %899
  %906 = getelementptr inbounds nuw i8, ptr %905, i64 16
  %907 = load <16 x i8>, ptr %905, align 1, !tbaa !35
  %908 = load <16 x i8>, ptr %906, align 1, !tbaa !35
  %909 = lshr <16 x i8> %907, splat (i8 1)
  %910 = lshr <16 x i8> %908, splat (i8 1)
  %911 = add <16 x i8> %909, %903
  %912 = add <16 x i8> %910, %904
  %913 = getelementptr inbounds i8, ptr %310, i64 %900
  %914 = getelementptr inbounds nuw i8, ptr %913, i64 16
  store <16 x i8> %911, ptr %913, align 1, !tbaa !35
  store <16 x i8> %912, ptr %914, align 1, !tbaa !35
  %915 = add nuw i64 %899, 32
  %916 = icmp eq i64 %915, %143
  br i1 %916, label %917, label %898, !llvm.loop !188

917:                                              ; preds = %898
  br i1 %144, label %973, label %918

918:                                              ; preds = %917
  br i1 %146, label %934, label %919, !prof !167

919:                                              ; preds = %897, %918
  %920 = phi i64 [ %143, %918 ], [ 0, %897 ]
  br label %921

921:                                              ; preds = %921, %919
  %922 = phi i64 [ %920, %919 ], [ %931, %921 ]
  %923 = add i64 %922, %105
  %924 = getelementptr inbounds i8, ptr %320, i64 %923
  %925 = load <4 x i8>, ptr %924, align 1, !tbaa !35
  %926 = getelementptr inbounds i8, ptr %310, i64 %922
  %927 = load <4 x i8>, ptr %926, align 1, !tbaa !35
  %928 = lshr <4 x i8> %927, splat (i8 1)
  %929 = add <4 x i8> %928, %925
  %930 = getelementptr inbounds i8, ptr %310, i64 %923
  store <4 x i8> %929, ptr %930, align 1, !tbaa !35
  %931 = add nuw i64 %922, 4
  %932 = icmp eq i64 %931, %147
  br i1 %932, label %933, label %921, !llvm.loop !189

933:                                              ; preds = %921
  br i1 %149, label %973, label %934

934:                                              ; preds = %893, %892, %918, %933
  %935 = phi i64 [ %105, %892 ], [ %105, %893 ], [ %145, %918 ], [ %148, %933 ]
  %936 = sub nsw i64 %109, %935
  %937 = and i64 %936, 1
  %938 = icmp eq i64 %937, 0
  br i1 %938, label %949, label %939

939:                                              ; preds = %934
  %940 = getelementptr inbounds i8, ptr %320, i64 %935
  %941 = load i8, ptr %940, align 1, !tbaa !35
  %942 = sub nsw i64 %935, %105
  %943 = getelementptr inbounds i8, ptr %310, i64 %942
  %944 = load i8, ptr %943, align 1, !tbaa !35
  %945 = lshr i8 %944, 1
  %946 = add i8 %945, %941
  %947 = getelementptr inbounds i8, ptr %310, i64 %935
  store i8 %946, ptr %947, align 1, !tbaa !35
  %948 = add nsw i64 %935, 1
  br label %949

949:                                              ; preds = %939, %934
  %950 = phi i64 [ %935, %934 ], [ %948, %939 ]
  %951 = icmp eq i64 %935, %150
  br i1 %951, label %973, label %952

952:                                              ; preds = %949, %952
  %953 = phi i64 [ %971, %952 ], [ %950, %949 ]
  %954 = getelementptr inbounds i8, ptr %320, i64 %953
  %955 = load i8, ptr %954, align 1, !tbaa !35
  %956 = sub nsw i64 %953, %105
  %957 = getelementptr inbounds i8, ptr %310, i64 %956
  %958 = load i8, ptr %957, align 1, !tbaa !35
  %959 = lshr i8 %958, 1
  %960 = add i8 %959, %955
  %961 = getelementptr inbounds i8, ptr %310, i64 %953
  store i8 %960, ptr %961, align 1, !tbaa !35
  %962 = add nsw i64 %953, 1
  %963 = getelementptr inbounds i8, ptr %320, i64 %962
  %964 = load i8, ptr %963, align 1, !tbaa !35
  %965 = sub nsw i64 %962, %105
  %966 = getelementptr inbounds i8, ptr %310, i64 %965
  %967 = load i8, ptr %966, align 1, !tbaa !35
  %968 = lshr i8 %967, 1
  %969 = add i8 %968, %964
  %970 = getelementptr inbounds i8, ptr %310, i64 %962
  store i8 %969, ptr %970, align 1, !tbaa !35
  %971 = add nsw i64 %953, 2
  %972 = icmp eq i64 %971, %109
  br i1 %972, label %973, label %952, !llvm.loop !190

973:                                              ; preds = %949, %952, %862, %699, %721, %500, %583, %561, %564, %917, %933, %796, %828, %655, %677, %471, %485, %531, %546, %890, %754, %614, %446, %506, %329, %504
  %974 = getelementptr inbounds i8, ptr %320, i64 %109
  br i1 %99, label %975, label %1181

975:                                              ; preds = %973
  br i1 %118, label %976, label %978

976:                                              ; preds = %975
  %977 = load i8, ptr %120, align 1, !tbaa !35
  br label %978

978:                                              ; preds = %975, %976
  %979 = phi i8 [ %977, %976 ], [ 1, %975 ]
  switch i32 %6, label %984 [
    i32 4, label %982
    i32 2, label %980
  ]

980:                                              ; preds = %978
  br i1 %113, label %1093, label %981

981:                                              ; preds = %980
  br i1 %238, label %1080, label %1002

982:                                              ; preds = %978
  br i1 %113, label %1093, label %983

983:                                              ; preds = %982
  br i1 %243, label %1067, label %986

984:                                              ; preds = %978
  br i1 %113, label %1093, label %985

985:                                              ; preds = %984
  br i1 %248, label %1053, label %1027

986:                                              ; preds = %983, %986
  %987 = phi ptr [ %998, %986 ], [ %319, %983 ]
  %988 = phi ptr [ %991, %986 ], [ %310, %983 ]
  %989 = phi i32 [ %999, %986 ], [ 0, %983 ]
  %990 = phi i32 [ %1000, %986 ], [ 0, %983 ]
  %991 = getelementptr inbounds nuw i8, ptr %988, i64 1
  %992 = load i8, ptr %988, align 1, !tbaa !35
  %993 = lshr i8 %992, 4
  %994 = mul i8 %993, %979
  %995 = getelementptr inbounds nuw i8, ptr %987, i64 1
  store i8 %994, ptr %987, align 1, !tbaa !35
  %996 = and i8 %992, 15
  %997 = mul i8 %996, %979
  %998 = getelementptr inbounds nuw i8, ptr %987, i64 2
  store i8 %997, ptr %995, align 1, !tbaa !35
  %999 = add nuw i32 %989, 2
  %1000 = add i32 %990, 2
  %1001 = icmp eq i32 %1000, %244
  br i1 %1001, label %1066, label %986, !llvm.loop !191

1002:                                             ; preds = %981, %1013
  %1003 = phi i8 [ %1023, %1013 ], [ 0, %981 ]
  %1004 = phi ptr [ %1022, %1013 ], [ %319, %981 ]
  %1005 = phi ptr [ %1014, %1013 ], [ %310, %981 ]
  %1006 = phi i32 [ %1024, %1013 ], [ 0, %981 ]
  %1007 = phi i32 [ %1025, %1013 ], [ 0, %981 ]
  %1008 = and i32 %1006, 2
  %1009 = icmp eq i32 %1008, 0
  br i1 %1009, label %1010, label %1013

1010:                                             ; preds = %1002
  %1011 = getelementptr inbounds nuw i8, ptr %1005, i64 1
  %1012 = load i8, ptr %1005, align 1, !tbaa !35
  br label %1013

1013:                                             ; preds = %1010, %1002
  %1014 = phi ptr [ %1011, %1010 ], [ %1005, %1002 ]
  %1015 = phi i8 [ %1012, %1010 ], [ %1003, %1002 ]
  %1016 = lshr i8 %1015, 6
  %1017 = mul i8 %1016, %979
  %1018 = getelementptr inbounds nuw i8, ptr %1004, i64 1
  store i8 %1017, ptr %1004, align 1, !tbaa !35
  %1019 = lshr i8 %1015, 4
  %1020 = and i8 %1019, 3
  %1021 = mul i8 %1020, %979
  %1022 = getelementptr inbounds nuw i8, ptr %1004, i64 2
  store i8 %1021, ptr %1018, align 1, !tbaa !35
  %1023 = shl i8 %1015, 4
  %1024 = add nuw i32 %1006, 2
  %1025 = add i32 %1007, 2
  %1026 = icmp eq i32 %1025, %239
  br i1 %1026, label %1079, label %1002, !llvm.loop !192

1027:                                             ; preds = %985, %1038
  %1028 = phi i8 [ %1048, %1038 ], [ 0, %985 ]
  %1029 = phi ptr [ %1047, %1038 ], [ %319, %985 ]
  %1030 = phi ptr [ %1039, %1038 ], [ %310, %985 ]
  %1031 = phi i32 [ %1049, %1038 ], [ 0, %985 ]
  %1032 = phi i32 [ %1050, %1038 ], [ 0, %985 ]
  %1033 = and i32 %1031, 6
  %1034 = icmp eq i32 %1033, 0
  br i1 %1034, label %1035, label %1038

1035:                                             ; preds = %1027
  %1036 = getelementptr inbounds nuw i8, ptr %1030, i64 1
  %1037 = load i8, ptr %1030, align 1, !tbaa !35
  br label %1038

1038:                                             ; preds = %1035, %1027
  %1039 = phi ptr [ %1036, %1035 ], [ %1030, %1027 ]
  %1040 = phi i8 [ %1037, %1035 ], [ %1028, %1027 ]
  %1041 = icmp slt i8 %1040, 0
  %1042 = select i1 %1041, i8 %979, i8 0
  %1043 = getelementptr inbounds nuw i8, ptr %1029, i64 1
  store i8 %1042, ptr %1029, align 1, !tbaa !35
  %1044 = and i8 %1040, 64
  %1045 = icmp eq i8 %1044, 0
  %1046 = select i1 %1045, i8 0, i8 %979
  %1047 = getelementptr inbounds nuw i8, ptr %1029, i64 2
  store i8 %1046, ptr %1043, align 1, !tbaa !35
  %1048 = shl i8 %1040, 2
  %1049 = add nuw i32 %1031, 2
  %1050 = add i32 %1032, 2
  %1051 = icmp eq i32 %1050, %249
  br i1 %1051, label %1052, label %1027, !llvm.loop !193

1052:                                             ; preds = %1038
  br i1 %250, label %1093, label %1053

1053:                                             ; preds = %1052, %985
  %1054 = phi i8 [ 0, %985 ], [ %1048, %1052 ]
  %1055 = phi ptr [ %319, %985 ], [ %1047, %1052 ]
  %1056 = phi ptr [ %310, %985 ], [ %1039, %1052 ]
  %1057 = phi i32 [ 0, %985 ], [ %1049, %1052 ]
  tail call void @llvm.assume(i1 %251)
  %1058 = and i32 %1057, 7
  %1059 = icmp eq i32 %1058, 0
  br i1 %1059, label %1060, label %1062

1060:                                             ; preds = %1053
  %1061 = load i8, ptr %1056, align 1, !tbaa !35
  br label %1062

1062:                                             ; preds = %1060, %1053
  %1063 = phi i8 [ %1061, %1060 ], [ %1054, %1053 ]
  %1064 = icmp slt i8 %1063, 0
  %1065 = select i1 %1064, i8 %979, i8 0
  store i8 %1065, ptr %1055, align 1, !tbaa !35
  br label %1093

1066:                                             ; preds = %986
  br i1 %245, label %1093, label %1067

1067:                                             ; preds = %1066, %983
  %1068 = phi ptr [ %319, %983 ], [ %998, %1066 ]
  %1069 = phi ptr [ %310, %983 ], [ %991, %1066 ]
  %1070 = phi i32 [ 0, %983 ], [ %999, %1066 ]
  tail call void @llvm.assume(i1 %246)
  %1071 = and i32 %1070, 1
  %1072 = icmp eq i32 %1071, 0
  br i1 %1072, label %1073, label %1077

1073:                                             ; preds = %1067
  %1074 = load i8, ptr %1069, align 1, !tbaa !35
  %1075 = lshr i8 %1074, 4
  %1076 = mul i8 %1075, %979
  br label %1077

1077:                                             ; preds = %1073, %1067
  %1078 = phi i8 [ %1076, %1073 ], [ 0, %1067 ]
  store i8 %1078, ptr %1068, align 1, !tbaa !35
  br label %1093

1079:                                             ; preds = %1013
  br i1 %240, label %1093, label %1080

1080:                                             ; preds = %1079, %981
  %1081 = phi i8 [ 0, %981 ], [ %1023, %1079 ]
  %1082 = phi ptr [ %319, %981 ], [ %1022, %1079 ]
  %1083 = phi ptr [ %310, %981 ], [ %1014, %1079 ]
  %1084 = phi i32 [ 0, %981 ], [ %1024, %1079 ]
  tail call void @llvm.assume(i1 %241)
  %1085 = and i32 %1084, 3
  %1086 = icmp eq i32 %1085, 0
  br i1 %1086, label %1087, label %1089

1087:                                             ; preds = %1080
  %1088 = load i8, ptr %1083, align 1, !tbaa !35
  br label %1089

1089:                                             ; preds = %1087, %1080
  %1090 = phi i8 [ %1088, %1087 ], [ %1081, %1080 ]
  %1091 = lshr i8 %1090, 6
  %1092 = mul i8 %1091, %979
  store i8 %1092, ptr %1082, align 1, !tbaa !35
  br label %1093

1093:                                             ; preds = %1089, %1079, %1077, %1066, %1062, %1052, %980, %982, %984
  br i1 %111, label %1441, label %1094

1094:                                             ; preds = %1093
  br i1 %112, label %1110, label %1095

1095:                                             ; preds = %1094
  br i1 %115, label %1096, label %1441

1096:                                             ; preds = %1095
  br i1 %253, label %1097, label %1108

1097:                                             ; preds = %1096
  %1098 = getelementptr inbounds nuw i8, ptr %319, i64 %254
  %1099 = getelementptr inbounds nuw i8, ptr %1098, i64 3
  store i8 -1, ptr %1099, align 1, !tbaa !35
  %1100 = getelementptr inbounds nuw i8, ptr %319, i64 %255
  %1101 = getelementptr inbounds nuw i8, ptr %1100, i64 2
  %1102 = load i8, ptr %1101, align 1, !tbaa !35
  %1103 = getelementptr inbounds nuw i8, ptr %1098, i64 2
  store i8 %1102, ptr %1103, align 1, !tbaa !35
  %1104 = getelementptr inbounds nuw i8, ptr %1100, i64 1
  %1105 = load i8, ptr %1104, align 1, !tbaa !35
  %1106 = getelementptr inbounds nuw i8, ptr %1098, i64 1
  store i8 %1105, ptr %1106, align 1, !tbaa !35
  %1107 = load i8, ptr %1100, align 1, !tbaa !35
  store i8 %1107, ptr %1098, align 1, !tbaa !35
  br label %1108

1108:                                             ; preds = %1097, %1096
  %1109 = phi i64 [ %116, %1096 ], [ %256, %1097 ]
  br i1 %257, label %1441, label %1152

1110:                                             ; preds = %1094
  br i1 %115, label %1111, label %1441

1111:                                             ; preds = %1110
  br i1 %260, label %1123, label %1112

1112:                                             ; preds = %1111, %1112
  %1113 = phi i64 [ %1120, %1112 ], [ %116, %1111 ]
  %1114 = phi i64 [ %1121, %1112 ], [ 0, %1111 ]
  %1115 = shl nuw nsw i64 %1113, 1
  %1116 = getelementptr inbounds nuw i8, ptr %319, i64 %1115
  %1117 = getelementptr inbounds nuw i8, ptr %1116, i64 1
  store i8 -1, ptr %1117, align 1, !tbaa !35
  %1118 = getelementptr inbounds nuw i8, ptr %319, i64 %1113
  %1119 = load i8, ptr %1118, align 1, !tbaa !35
  store i8 %1119, ptr %1116, align 1, !tbaa !35
  %1120 = add nsw i64 %1113, -1
  %1121 = add i64 %1114, 1
  %1122 = icmp eq i64 %1121, %258
  br i1 %1122, label %1123, label %1112, !llvm.loop !194

1123:                                             ; preds = %1112, %1111
  %1124 = phi i64 [ %116, %1111 ], [ %1120, %1112 ]
  br i1 %261, label %1441, label %1125

1125:                                             ; preds = %1123, %1125
  %1126 = phi i64 [ %1150, %1125 ], [ %1124, %1123 ]
  %1127 = shl nuw nsw i64 %1126, 1
  %1128 = getelementptr inbounds nuw i8, ptr %319, i64 %1127
  %1129 = getelementptr inbounds nuw i8, ptr %1128, i64 1
  store i8 -1, ptr %1129, align 1, !tbaa !35
  %1130 = getelementptr inbounds nuw i8, ptr %319, i64 %1126
  %1131 = load i8, ptr %1130, align 1, !tbaa !35
  store i8 %1131, ptr %1128, align 1, !tbaa !35
  %1132 = add nsw i64 %1126, -1
  %1133 = shl nuw nsw i64 %1132, 1
  %1134 = getelementptr inbounds nuw i8, ptr %319, i64 %1133
  %1135 = getelementptr inbounds nuw i8, ptr %1134, i64 1
  store i8 -1, ptr %1135, align 1, !tbaa !35
  %1136 = getelementptr inbounds nuw i8, ptr %319, i64 %1132
  %1137 = load i8, ptr %1136, align 1, !tbaa !35
  store i8 %1137, ptr %1134, align 1, !tbaa !35
  %1138 = add nsw i64 %1126, -2
  %1139 = shl nuw nsw i64 %1138, 1
  %1140 = getelementptr inbounds nuw i8, ptr %319, i64 %1139
  %1141 = getelementptr inbounds nuw i8, ptr %1140, i64 1
  store i8 -1, ptr %1141, align 1, !tbaa !35
  %1142 = getelementptr inbounds nuw i8, ptr %319, i64 %1138
  %1143 = load i8, ptr %1142, align 1, !tbaa !35
  store i8 %1143, ptr %1140, align 1, !tbaa !35
  %1144 = add nsw i64 %1126, -3
  %1145 = shl nuw nsw i64 %1144, 1
  %1146 = getelementptr inbounds nuw i8, ptr %319, i64 %1145
  %1147 = getelementptr inbounds nuw i8, ptr %1146, i64 1
  store i8 -1, ptr %1147, align 1, !tbaa !35
  %1148 = getelementptr inbounds nuw i8, ptr %319, i64 %1144
  %1149 = load i8, ptr %1148, align 1, !tbaa !35
  store i8 %1149, ptr %1146, align 1, !tbaa !35
  %1150 = add nsw i64 %1126, -4
  %1151 = icmp eq i64 %1144, 0
  br i1 %1151, label %1441, label %1125, !llvm.loop !195

1152:                                             ; preds = %1108, %1152
  %1153 = phi i64 [ %1179, %1152 ], [ %1109, %1108 ]
  %1154 = shl nsw i64 %1153, 2
  %1155 = getelementptr inbounds nuw i8, ptr %319, i64 %1154
  %1156 = getelementptr inbounds nuw i8, ptr %1155, i64 3
  store i8 -1, ptr %1156, align 1, !tbaa !35
  %1157 = mul nuw nsw i64 %1153, 3
  %1158 = getelementptr inbounds nuw i8, ptr %319, i64 %1157
  %1159 = getelementptr inbounds nuw i8, ptr %1158, i64 2
  %1160 = load i8, ptr %1159, align 1, !tbaa !35
  %1161 = getelementptr inbounds nuw i8, ptr %1155, i64 2
  store i8 %1160, ptr %1161, align 1, !tbaa !35
  %1162 = getelementptr inbounds nuw i8, ptr %1158, i64 1
  %1163 = load i8, ptr %1162, align 1, !tbaa !35
  %1164 = getelementptr inbounds nuw i8, ptr %1155, i64 1
  store i8 %1163, ptr %1164, align 1, !tbaa !35
  %1165 = load i8, ptr %1158, align 1, !tbaa !35
  store i8 %1165, ptr %1155, align 1, !tbaa !35
  %1166 = add nsw i64 %1153, -1
  %1167 = shl nsw i64 %1166, 2
  %1168 = getelementptr inbounds nuw i8, ptr %319, i64 %1167
  %1169 = getelementptr inbounds nuw i8, ptr %1168, i64 3
  store i8 -1, ptr %1169, align 1, !tbaa !35
  %1170 = mul nuw nsw i64 %1166, 3
  %1171 = getelementptr inbounds nuw i8, ptr %319, i64 %1170
  %1172 = getelementptr inbounds nuw i8, ptr %1171, i64 2
  %1173 = load i8, ptr %1172, align 1, !tbaa !35
  %1174 = getelementptr inbounds nuw i8, ptr %1168, i64 2
  store i8 %1173, ptr %1174, align 1, !tbaa !35
  %1175 = getelementptr inbounds nuw i8, ptr %1171, i64 1
  %1176 = load i8, ptr %1175, align 1, !tbaa !35
  %1177 = getelementptr inbounds nuw i8, ptr %1168, i64 1
  store i8 %1176, ptr %1177, align 1, !tbaa !35
  %1178 = load i8, ptr %1171, align 1, !tbaa !35
  store i8 %1178, ptr %1168, align 1, !tbaa !35
  %1179 = add nsw i64 %1153, -2
  %1180 = icmp eq i64 %1166, 0
  br i1 %1180, label %1441, label %1152, !llvm.loop !196

1181:                                             ; preds = %973
  br i1 %110, label %1182, label %1300

1182:                                             ; preds = %1181
  br i1 %111, label %1183, label %1185

1183:                                             ; preds = %1182
  %1184 = tail call ptr @memcpy(ptr noundef %319, ptr noundef nonnull %310, i64 noundef %117) #16
  br label %1441

1185:                                             ; preds = %1182
  br i1 %112, label %1201, label %1186

1186:                                             ; preds = %1185
  br i1 %115, label %1187, label %1441

1187:                                             ; preds = %1186
  br i1 %228, label %1188, label %1199

1188:                                             ; preds = %1187
  %1189 = getelementptr inbounds nuw i8, ptr %319, i64 %229
  %1190 = getelementptr inbounds nuw i8, ptr %1189, i64 3
  store i8 -1, ptr %1190, align 1, !tbaa !35
  %1191 = getelementptr inbounds nuw i8, ptr %310, i64 %230
  %1192 = getelementptr inbounds nuw i8, ptr %1191, i64 2
  %1193 = load i8, ptr %1192, align 1, !tbaa !35
  %1194 = getelementptr inbounds nuw i8, ptr %1189, i64 2
  store i8 %1193, ptr %1194, align 1, !tbaa !35
  %1195 = getelementptr inbounds nuw i8, ptr %1191, i64 1
  %1196 = load i8, ptr %1195, align 1, !tbaa !35
  %1197 = getelementptr inbounds nuw i8, ptr %1189, i64 1
  store i8 %1196, ptr %1197, align 1, !tbaa !35
  %1198 = load i8, ptr %1191, align 1, !tbaa !35
  store i8 %1198, ptr %1189, align 1, !tbaa !35
  br label %1199

1199:                                             ; preds = %1188, %1187
  %1200 = phi i64 [ %116, %1187 ], [ %231, %1188 ]
  br i1 %232, label %1441, label %1271

1201:                                             ; preds = %1185
  br i1 %115, label %1202, label %1441

1202:                                             ; preds = %1201
  br i1 %233, label %1224, label %1203

1203:                                             ; preds = %1202
  %1204 = getelementptr i8, ptr %316, i64 %125
  %1205 = getelementptr i8, ptr %1204, i64 2
  %1206 = getelementptr i8, ptr %1205, i64 %306
  %1207 = getelementptr i8, ptr %129, i64 %309
  %1208 = icmp ult ptr %319, %1207
  %1209 = icmp ult ptr %310, %1206
  %1210 = and i1 %1208, %1209
  br i1 %1210, label %1224, label %1211

1211:                                             ; preds = %1203, %1211
  %1212 = phi i64 [ %1221, %1211 ], [ 0, %1203 ]
  %1213 = sub i64 %116, %1212
  %1214 = shl nuw nsw i64 %1213, 1
  %1215 = getelementptr inbounds nuw i8, ptr %319, i64 %1214
  %1216 = getelementptr inbounds nuw i8, ptr %310, i64 %1213
  %1217 = getelementptr inbounds i8, ptr %1216, i64 -7
  %1218 = load <8 x i8>, ptr %1217, align 1, !tbaa !35, !alias.scope !197
  %1219 = getelementptr inbounds i8, ptr %1215, i64 -14
  %1220 = shufflevector <8 x i8> %1218, <8 x i8> splat (i8 -1), <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %1220, ptr %1219, align 1, !tbaa !35, !alias.scope !200, !noalias !197
  %1221 = add nuw i64 %1212, 8
  %1222 = icmp eq i64 %1221, %234
  br i1 %1222, label %1223, label %1211, !llvm.loop !202

1223:                                             ; preds = %1211
  br i1 %236, label %1441, label %1224

1224:                                             ; preds = %1203, %1202, %1223
  %1225 = phi i64 [ %116, %1203 ], [ %116, %1202 ], [ %235, %1223 ]
  %1226 = add nsw i64 %1225, 1
  %1227 = and i64 %1226, 3
  %1228 = and i64 %1225, 3
  %1229 = icmp eq i64 %1228, 3
  br i1 %1229, label %1241, label %1230

1230:                                             ; preds = %1224, %1230
  %1231 = phi i64 [ %1238, %1230 ], [ %1225, %1224 ]
  %1232 = phi i64 [ %1239, %1230 ], [ 0, %1224 ]
  %1233 = shl nuw nsw i64 %1231, 1
  %1234 = getelementptr inbounds nuw i8, ptr %319, i64 %1233
  %1235 = getelementptr inbounds nuw i8, ptr %1234, i64 1
  store i8 -1, ptr %1235, align 1, !tbaa !35
  %1236 = getelementptr inbounds nuw i8, ptr %310, i64 %1231
  %1237 = load i8, ptr %1236, align 1, !tbaa !35
  store i8 %1237, ptr %1234, align 1, !tbaa !35
  %1238 = add nsw i64 %1231, -1
  %1239 = add i64 %1232, 1
  %1240 = icmp eq i64 %1239, %1227
  br i1 %1240, label %1241, label %1230, !llvm.loop !203

1241:                                             ; preds = %1230, %1224
  %1242 = phi i64 [ %1225, %1224 ], [ %1238, %1230 ]
  %1243 = icmp ult i64 %1225, 3
  br i1 %1243, label %1441, label %1244

1244:                                             ; preds = %1241, %1244
  %1245 = phi i64 [ %1269, %1244 ], [ %1242, %1241 ]
  %1246 = shl nuw nsw i64 %1245, 1
  %1247 = getelementptr inbounds nuw i8, ptr %319, i64 %1246
  %1248 = getelementptr inbounds nuw i8, ptr %1247, i64 1
  store i8 -1, ptr %1248, align 1, !tbaa !35
  %1249 = getelementptr inbounds nuw i8, ptr %310, i64 %1245
  %1250 = load i8, ptr %1249, align 1, !tbaa !35
  store i8 %1250, ptr %1247, align 1, !tbaa !35
  %1251 = add nsw i64 %1245, -1
  %1252 = shl nuw nsw i64 %1251, 1
  %1253 = getelementptr inbounds nuw i8, ptr %319, i64 %1252
  %1254 = getelementptr inbounds nuw i8, ptr %1253, i64 1
  store i8 -1, ptr %1254, align 1, !tbaa !35
  %1255 = getelementptr inbounds nuw i8, ptr %310, i64 %1251
  %1256 = load i8, ptr %1255, align 1, !tbaa !35
  store i8 %1256, ptr %1253, align 1, !tbaa !35
  %1257 = add nsw i64 %1245, -2
  %1258 = shl nuw nsw i64 %1257, 1
  %1259 = getelementptr inbounds nuw i8, ptr %319, i64 %1258
  %1260 = getelementptr inbounds nuw i8, ptr %1259, i64 1
  store i8 -1, ptr %1260, align 1, !tbaa !35
  %1261 = getelementptr inbounds nuw i8, ptr %310, i64 %1257
  %1262 = load i8, ptr %1261, align 1, !tbaa !35
  store i8 %1262, ptr %1259, align 1, !tbaa !35
  %1263 = add nsw i64 %1245, -3
  %1264 = shl nuw nsw i64 %1263, 1
  %1265 = getelementptr inbounds nuw i8, ptr %319, i64 %1264
  %1266 = getelementptr inbounds nuw i8, ptr %1265, i64 1
  store i8 -1, ptr %1266, align 1, !tbaa !35
  %1267 = getelementptr inbounds nuw i8, ptr %310, i64 %1263
  %1268 = load i8, ptr %1267, align 1, !tbaa !35
  store i8 %1268, ptr %1265, align 1, !tbaa !35
  %1269 = add nsw i64 %1245, -4
  %1270 = icmp eq i64 %1263, 0
  br i1 %1270, label %1441, label %1244, !llvm.loop !204

1271:                                             ; preds = %1199, %1271
  %1272 = phi i64 [ %1298, %1271 ], [ %1200, %1199 ]
  %1273 = shl nsw i64 %1272, 2
  %1274 = getelementptr inbounds nuw i8, ptr %319, i64 %1273
  %1275 = getelementptr inbounds nuw i8, ptr %1274, i64 3
  store i8 -1, ptr %1275, align 1, !tbaa !35
  %1276 = mul nuw nsw i64 %1272, 3
  %1277 = getelementptr inbounds nuw i8, ptr %310, i64 %1276
  %1278 = getelementptr inbounds nuw i8, ptr %1277, i64 2
  %1279 = load i8, ptr %1278, align 1, !tbaa !35
  %1280 = getelementptr inbounds nuw i8, ptr %1274, i64 2
  store i8 %1279, ptr %1280, align 1, !tbaa !35
  %1281 = getelementptr inbounds nuw i8, ptr %1277, i64 1
  %1282 = load i8, ptr %1281, align 1, !tbaa !35
  %1283 = getelementptr inbounds nuw i8, ptr %1274, i64 1
  store i8 %1282, ptr %1283, align 1, !tbaa !35
  %1284 = load i8, ptr %1277, align 1, !tbaa !35
  store i8 %1284, ptr %1274, align 1, !tbaa !35
  %1285 = add nsw i64 %1272, -1
  %1286 = shl nsw i64 %1285, 2
  %1287 = getelementptr inbounds nuw i8, ptr %319, i64 %1286
  %1288 = getelementptr inbounds nuw i8, ptr %1287, i64 3
  store i8 -1, ptr %1288, align 1, !tbaa !35
  %1289 = mul nuw nsw i64 %1285, 3
  %1290 = getelementptr inbounds nuw i8, ptr %310, i64 %1289
  %1291 = getelementptr inbounds nuw i8, ptr %1290, i64 2
  %1292 = load i8, ptr %1291, align 1, !tbaa !35
  %1293 = getelementptr inbounds nuw i8, ptr %1287, i64 2
  store i8 %1292, ptr %1293, align 1, !tbaa !35
  %1294 = getelementptr inbounds nuw i8, ptr %1290, i64 1
  %1295 = load i8, ptr %1294, align 1, !tbaa !35
  %1296 = getelementptr inbounds nuw i8, ptr %1287, i64 1
  store i8 %1295, ptr %1296, align 1, !tbaa !35
  %1297 = load i8, ptr %1290, align 1, !tbaa !35
  store i8 %1297, ptr %1287, align 1, !tbaa !35
  %1298 = add nsw i64 %1272, -2
  %1299 = icmp eq i64 %1285, 0
  br i1 %1299, label %1441, label %1271, !llvm.loop !196

1300:                                             ; preds = %1181
  br i1 %10, label %1301, label %1441

1301:                                             ; preds = %1300
  br i1 %111, label %1302, label %1346

1302:                                             ; preds = %1301
  br i1 %113, label %1441, label %1303

1303:                                             ; preds = %1302
  br i1 %223, label %1411, label %1304

1304:                                             ; preds = %1303, %1304
  %1305 = phi ptr [ %1342, %1304 ], [ %319, %1303 ]
  %1306 = phi ptr [ %1343, %1304 ], [ %310, %1303 ]
  %1307 = phi i32 [ %1344, %1304 ], [ 0, %1303 ]
  %1308 = load i8, ptr %1306, align 1, !tbaa !35
  %1309 = zext i8 %1308 to i16
  %1310 = shl nuw i16 %1309, 8
  %1311 = getelementptr inbounds nuw i8, ptr %1306, i64 1
  %1312 = load i8, ptr %1311, align 1, !tbaa !35
  %1313 = zext i8 %1312 to i16
  %1314 = or disjoint i16 %1310, %1313
  store i16 %1314, ptr %1305, align 2, !tbaa !39
  %1315 = getelementptr inbounds nuw i8, ptr %1305, i64 2
  %1316 = getelementptr inbounds nuw i8, ptr %1306, i64 2
  %1317 = load i8, ptr %1316, align 1, !tbaa !35
  %1318 = zext i8 %1317 to i16
  %1319 = shl nuw i16 %1318, 8
  %1320 = getelementptr inbounds nuw i8, ptr %1306, i64 3
  %1321 = load i8, ptr %1320, align 1, !tbaa !35
  %1322 = zext i8 %1321 to i16
  %1323 = or disjoint i16 %1319, %1322
  store i16 %1323, ptr %1315, align 2, !tbaa !39
  %1324 = getelementptr inbounds nuw i8, ptr %1305, i64 4
  %1325 = getelementptr inbounds nuw i8, ptr %1306, i64 4
  %1326 = load i8, ptr %1325, align 1, !tbaa !35
  %1327 = zext i8 %1326 to i16
  %1328 = shl nuw i16 %1327, 8
  %1329 = getelementptr inbounds nuw i8, ptr %1306, i64 5
  %1330 = load i8, ptr %1329, align 1, !tbaa !35
  %1331 = zext i8 %1330 to i16
  %1332 = or disjoint i16 %1328, %1331
  store i16 %1332, ptr %1324, align 2, !tbaa !39
  %1333 = getelementptr inbounds nuw i8, ptr %1305, i64 6
  %1334 = getelementptr inbounds nuw i8, ptr %1306, i64 6
  %1335 = load i8, ptr %1334, align 1, !tbaa !35
  %1336 = zext i8 %1335 to i16
  %1337 = shl nuw i16 %1336, 8
  %1338 = getelementptr inbounds nuw i8, ptr %1306, i64 7
  %1339 = load i8, ptr %1338, align 1, !tbaa !35
  %1340 = zext i8 %1339 to i16
  %1341 = or disjoint i16 %1337, %1340
  store i16 %1341, ptr %1333, align 2, !tbaa !39
  %1342 = getelementptr inbounds nuw i8, ptr %1305, i64 8
  %1343 = getelementptr inbounds nuw i8, ptr %1306, i64 8
  %1344 = add i32 %1307, 4
  %1345 = icmp eq i32 %1344, %224
  br i1 %1345, label %1410, label %1304, !llvm.loop !205

1346:                                             ; preds = %1301
  br i1 %112, label %1348, label %1347

1347:                                             ; preds = %1346
  br i1 %54, label %1441, label %1376

1348:                                             ; preds = %1346
  br i1 %54, label %1441, label %1349

1349:                                             ; preds = %1348
  br i1 %218, label %1430, label %1350

1350:                                             ; preds = %1349, %1350
  %1351 = phi ptr [ %1372, %1350 ], [ %319, %1349 ]
  %1352 = phi ptr [ %1373, %1350 ], [ %310, %1349 ]
  %1353 = phi i32 [ %1374, %1350 ], [ 0, %1349 ]
  %1354 = load i8, ptr %1352, align 1, !tbaa !35
  %1355 = zext i8 %1354 to i16
  %1356 = shl nuw i16 %1355, 8
  %1357 = getelementptr inbounds nuw i8, ptr %1352, i64 1
  %1358 = load i8, ptr %1357, align 1, !tbaa !35
  %1359 = zext i8 %1358 to i16
  %1360 = or disjoint i16 %1356, %1359
  store i16 %1360, ptr %1351, align 2, !tbaa !39
  %1361 = getelementptr inbounds nuw i8, ptr %1351, i64 2
  store i16 -1, ptr %1361, align 2, !tbaa !39
  %1362 = getelementptr inbounds nuw i8, ptr %1351, i64 4
  %1363 = getelementptr inbounds nuw i8, ptr %1352, i64 2
  %1364 = load i8, ptr %1363, align 1, !tbaa !35
  %1365 = zext i8 %1364 to i16
  %1366 = shl nuw i16 %1365, 8
  %1367 = getelementptr inbounds nuw i8, ptr %1352, i64 3
  %1368 = load i8, ptr %1367, align 1, !tbaa !35
  %1369 = zext i8 %1368 to i16
  %1370 = or disjoint i16 %1366, %1369
  store i16 %1370, ptr %1362, align 2, !tbaa !39
  %1371 = getelementptr inbounds nuw i8, ptr %1351, i64 6
  store i16 -1, ptr %1371, align 2, !tbaa !39
  %1372 = getelementptr inbounds nuw i8, ptr %1351, i64 8
  %1373 = getelementptr inbounds nuw i8, ptr %1352, i64 4
  %1374 = add i32 %1353, 2
  %1375 = icmp eq i32 %1374, %219
  br i1 %1375, label %1429, label %1350, !llvm.loop !206

1376:                                             ; preds = %1347, %1376
  %1377 = phi ptr [ %1407, %1376 ], [ %319, %1347 ]
  %1378 = phi i32 [ %1406, %1376 ], [ 0, %1347 ]
  %1379 = phi ptr [ %1408, %1376 ], [ %310, %1347 ]
  %1380 = load i8, ptr %1379, align 1, !tbaa !35
  %1381 = zext i8 %1380 to i16
  %1382 = shl nuw i16 %1381, 8
  %1383 = getelementptr inbounds nuw i8, ptr %1379, i64 1
  %1384 = load i8, ptr %1383, align 1, !tbaa !35
  %1385 = zext i8 %1384 to i16
  %1386 = or disjoint i16 %1382, %1385
  store i16 %1386, ptr %1377, align 2, !tbaa !39
  %1387 = getelementptr inbounds nuw i8, ptr %1379, i64 2
  %1388 = load i8, ptr %1387, align 1, !tbaa !35
  %1389 = zext i8 %1388 to i16
  %1390 = shl nuw i16 %1389, 8
  %1391 = getelementptr inbounds nuw i8, ptr %1379, i64 3
  %1392 = load i8, ptr %1391, align 1, !tbaa !35
  %1393 = zext i8 %1392 to i16
  %1394 = or disjoint i16 %1390, %1393
  %1395 = getelementptr inbounds nuw i8, ptr %1377, i64 2
  store i16 %1394, ptr %1395, align 2, !tbaa !39
  %1396 = getelementptr inbounds nuw i8, ptr %1379, i64 4
  %1397 = load i8, ptr %1396, align 1, !tbaa !35
  %1398 = zext i8 %1397 to i16
  %1399 = shl nuw i16 %1398, 8
  %1400 = getelementptr inbounds nuw i8, ptr %1379, i64 5
  %1401 = load i8, ptr %1400, align 1, !tbaa !35
  %1402 = zext i8 %1401 to i16
  %1403 = or disjoint i16 %1399, %1402
  %1404 = getelementptr inbounds nuw i8, ptr %1377, i64 4
  store i16 %1403, ptr %1404, align 2, !tbaa !39
  %1405 = getelementptr inbounds nuw i8, ptr %1377, i64 6
  store i16 -1, ptr %1405, align 2, !tbaa !39
  %1406 = add nuw i32 %1378, 1
  %1407 = getelementptr inbounds nuw i8, ptr %1377, i64 8
  %1408 = getelementptr inbounds nuw i8, ptr %1379, i64 6
  %1409 = icmp eq i32 %1406, %4
  br i1 %1409, label %1441, label %1376, !llvm.loop !207

1410:                                             ; preds = %1304
  br i1 %225, label %1441, label %1411

1411:                                             ; preds = %1410, %1303
  %1412 = phi ptr [ %319, %1303 ], [ %1342, %1410 ]
  %1413 = phi ptr [ %310, %1303 ], [ %1343, %1410 ]
  tail call void @llvm.assume(i1 %226)
  br label %1414

1414:                                             ; preds = %1414, %1411
  %1415 = phi ptr [ %1425, %1414 ], [ %1412, %1411 ]
  %1416 = phi ptr [ %1426, %1414 ], [ %1413, %1411 ]
  %1417 = phi i32 [ %1427, %1414 ], [ 0, %1411 ]
  %1418 = load i8, ptr %1416, align 1, !tbaa !35
  %1419 = zext i8 %1418 to i16
  %1420 = shl nuw i16 %1419, 8
  %1421 = getelementptr inbounds nuw i8, ptr %1416, i64 1
  %1422 = load i8, ptr %1421, align 1, !tbaa !35
  %1423 = zext i8 %1422 to i16
  %1424 = or disjoint i16 %1420, %1423
  store i16 %1424, ptr %1415, align 2, !tbaa !39
  %1425 = getelementptr inbounds nuw i8, ptr %1415, i64 2
  %1426 = getelementptr inbounds nuw i8, ptr %1416, i64 2
  %1427 = add i32 %1417, 1
  %1428 = icmp eq i32 %1427, %222
  br i1 %1428, label %1441, label %1414, !llvm.loop !208

1429:                                             ; preds = %1350
  br i1 %220, label %1441, label %1430

1430:                                             ; preds = %1429, %1349
  %1431 = phi ptr [ %319, %1349 ], [ %1372, %1429 ]
  %1432 = phi ptr [ %310, %1349 ], [ %1373, %1429 ]
  tail call void @llvm.assume(i1 %221)
  %1433 = load i8, ptr %1432, align 1, !tbaa !35
  %1434 = zext i8 %1433 to i16
  %1435 = shl nuw i16 %1434, 8
  %1436 = getelementptr inbounds nuw i8, ptr %1432, i64 1
  %1437 = load i8, ptr %1436, align 1, !tbaa !35
  %1438 = zext i8 %1437 to i16
  %1439 = or disjoint i16 %1435, %1438
  store i16 %1439, ptr %1431, align 2, !tbaa !39
  %1440 = getelementptr inbounds nuw i8, ptr %1431, i64 2
  store i16 -1, ptr %1440, align 2, !tbaa !39
  br label %1441

1441:                                             ; preds = %1376, %1430, %1429, %1410, %1414, %1199, %1271, %1241, %1244, %1108, %1152, %1123, %1125, %1223, %1347, %1348, %1302, %1093, %1300, %1183, %1095, %1110, %1186, %1201
  %1442 = add nuw nsw i64 %263, 1
  %1443 = icmp eq i64 %1442, %121
  br i1 %1443, label %1444, label %262, !llvm.loop !209

1444:                                             ; preds = %262, %1441, %95, %87, %70, %76, %58, %46, %55, %64, %44, %83, %79
  %1445 = phi i32 [ 0, %79 ], [ 0, %70 ], [ 0, %58 ], [ 0, %83 ], [ 1, %95 ], [ 0, %44 ], [ 0, %76 ], [ 0, %87 ], [ 0, %64 ], [ 0, %55 ], [ 0, %46 ], [ 0, %262 ], [ 1, %1441 ]
  ret i32 %1445
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
  %35 = add nsw i32 %34, %32
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
  %79 = add nsw i32 %78, %76
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
  %123 = add nsw i32 %122, %120
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
  %167 = add nsw i32 %166, %164
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
  %211 = add nsw i32 %210, %208
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
  %254 = add nsw i32 %253, %251
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
  %301 = add nsw i32 %300, %298
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
  store i32 %317, ptr %318, align 8, !tbaa !210
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
  %345 = add nsw i32 %344, %342
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
  store i32 %361, ptr %362, align 4, !tbaa !211
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
  %389 = add nsw i32 %388, %386
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
  store i32 %403, ptr %404, align 8, !tbaa !212
  %405 = getelementptr inbounds nuw i8, ptr %1, i64 44
  store i32 -1, ptr %405, align 4, !tbaa !213
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
  %414 = load i32, ptr %318, align 8, !tbaa !210
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
  %32 = add nsw i32 %31, %29
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
  %74 = add nsw i32 %73, %71
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
  %40 = add nsw i32 %39, %38
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
  %75 = add nsw i32 %74, %73
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
  %109 = add nsw i32 %108, %107
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
  br i1 %125, label %126, label %17, !llvm.loop !214

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
  %33 = add nsw i32 %32, %30
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
  %77 = add nsw i32 %76, %74
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
  store i32 %100, ptr %101, align 4, !tbaa !215
  %102 = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) #17
  %103 = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) #17
  %104 = shl nuw i32 %103, 16
  %105 = or disjoint i32 %104, %102
  %106 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %105, ptr %106, align 4, !tbaa !216
  %107 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %108 = getelementptr inbounds nuw i8, ptr %1, i64 20
  %109 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %110 = getelementptr inbounds nuw i8, ptr %1, i64 12
  store <4 x i32> zeroinitializer, ptr %110, align 4, !tbaa !4
  %111 = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 14, ptr %111, align 4, !tbaa !217
  %112 = load i32, ptr %101, align 4, !tbaa !215
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
  store i32 %134, ptr %1, align 4, !tbaa !218
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
  %147 = load i32, ptr %1, align 4, !tbaa !218
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
  %160 = load i32, ptr %1, align 4, !tbaa !218
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
  store i32 16711680, ptr %110, align 4, !tbaa !219
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
  store i32 %185, ptr %110, align 4, !tbaa !219
  %186 = tail call fastcc i32 @stbi__get32le(ptr noundef %0) #17
  store i32 %186, ptr %109, align 4, !tbaa !220
  %187 = tail call fastcc i32 @stbi__get32le(ptr noundef %0) #17
  store i32 %187, ptr %108, align 4, !tbaa !221
  %188 = load i32, ptr %111, align 4, !tbaa !217
  %189 = add nsw i32 %188, 12
  store i32 %189, ptr %111, align 4, !tbaa !217
  %190 = load i32, ptr %110, align 4, !tbaa !219
  %191 = load i32, ptr %109, align 4, !tbaa !220
  %192 = icmp eq i32 %190, %191
  %193 = icmp eq i32 %191, %187
  %194 = select i1 %192, i1 %193, i1 false
  br i1 %194, label %254, label %253

195:                                              ; preds = %148, %148
  %196 = tail call fastcc i32 @stbi__get32le(ptr noundef %0) #17
  store i32 %196, ptr %110, align 4, !tbaa !219
  %197 = tail call fastcc i32 @stbi__get32le(ptr noundef %0) #17
  store i32 %197, ptr %109, align 4, !tbaa !220
  %198 = tail call fastcc i32 @stbi__get32le(ptr noundef %0) #17
  store i32 %198, ptr %108, align 4, !tbaa !221
  %199 = tail call fastcc i32 @stbi__get32le(ptr noundef %0) #17
  store i32 %199, ptr %107, align 4, !tbaa !222
  %200 = icmp eq i32 %139, 0
  br i1 %200, label %201, label %222

201:                                              ; preds = %195
  %202 = load i32, ptr %1, align 4, !tbaa !218
  switch i32 %202, label %204 [
    i32 16, label %212
    i32 32, label %203
  ]

203:                                              ; preds = %201
  store i32 16711680, ptr %110, align 4, !tbaa !219
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
  store i32 0, ptr %15, align 4, !tbaa !223
  %16 = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %16, align 4, !tbaa !224
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
  %55 = add nsw i32 %54, %53
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
  %115 = shl nsw i32 %94, 3
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
  br i1 %156, label %157, label %144, !llvm.loop !225

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
  br i1 %218, label %267, label %193, !llvm.loop !226

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
  br i1 %240, label %267, label %219, !llvm.loop !227

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
  br i1 %266, label %267, label %241, !llvm.loop !228

267:                                              ; preds = %174, %241, %189, %219, %157, %193, %178, %161, %142
  %268 = add nuw nsw i64 %133, 1
  %269 = icmp eq i64 %268, %120
  br i1 %269, label %271, label %132, !llvm.loop !229

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
  br label %4501

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
  %311 = add nsw i32 %310, %309
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
  %347 = add nsw i32 %346, %345
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
  br label %1439

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
  br i1 %378, label %381, label %1439

381:                                              ; preds = %375, %377
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15
  %382 = getelementptr inbounds nuw i8, ptr %12, i64 28
  store i32 255, ptr %382, align 4, !tbaa !31
  %383 = call fastcc ptr @stbi__bmp_parse_header(ptr noundef nonnull %0, ptr noundef %12) #17
  %384 = icmp eq ptr %383, null
  br i1 %384, label %1437, label %385

385:                                              ; preds = %381
  %386 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %387 = load i32, ptr %386, align 4, !tbaa !25
  %388 = icmp sgt i32 %387, 0
  %389 = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %387, i1 true)
  store i32 %389, ptr %386, align 4, !tbaa !25
  %390 = icmp samesign ugt i32 %389, 4096
  br i1 %390, label %1437, label %391

391:                                              ; preds = %385
  %392 = load i32, ptr %0, align 8, !tbaa !24
  %393 = icmp ugt i32 %392, 4096
  br i1 %393, label %1437, label %394

394:                                              ; preds = %391
  %395 = getelementptr inbounds nuw i8, ptr %12, i64 12
  %396 = load i32, ptr %395, align 4, !tbaa !219
  %397 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %398 = load i32, ptr %397, align 4, !tbaa !220
  %399 = getelementptr inbounds nuw i8, ptr %12, i64 20
  %400 = load i32, ptr %399, align 4, !tbaa !221
  %401 = getelementptr inbounds nuw i8, ptr %12, i64 24
  %402 = load i32, ptr %401, align 4, !tbaa !222
  %403 = load i32, ptr %382, align 4, !tbaa !31
  %404 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %405 = load i32, ptr %404, align 4, !tbaa !216
  %406 = icmp eq i32 %405, 12
  %407 = load i32, ptr %12, align 4, !tbaa !218
  br i1 %406, label %408, label %418

408:                                              ; preds = %394
  %409 = icmp slt i32 %407, 24
  br i1 %409, label %410, label %434

410:                                              ; preds = %408
  %411 = getelementptr inbounds nuw i8, ptr %12, i64 4
  %412 = load i32, ptr %411, align 4, !tbaa !215
  %413 = getelementptr inbounds nuw i8, ptr %12, i64 32
  %414 = load i32, ptr %413, align 4, !tbaa !217
  %415 = add i32 %412, -24
  %416 = sub i32 %415, %414
  %417 = sdiv i32 %416, 3
  br label %428

418:                                              ; preds = %394
  %419 = icmp slt i32 %407, 16
  br i1 %419, label %420, label %434

420:                                              ; preds = %418
  %421 = getelementptr inbounds nuw i8, ptr %12, i64 4
  %422 = load i32, ptr %421, align 4, !tbaa !215
  %423 = getelementptr inbounds nuw i8, ptr %12, i64 32
  %424 = load i32, ptr %423, align 4, !tbaa !217
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
  %442 = add nsw i32 %435, %441
  %443 = add i32 %442, -1025
  %444 = icmp ult i32 %443, -1024
  br i1 %444, label %1437, label %445

445:                                              ; preds = %434
  %446 = getelementptr inbounds nuw i8, ptr %12, i64 4
  %447 = load i32, ptr %446, align 4, !tbaa !215
  %448 = icmp slt i32 %447, %442
  br i1 %448, label %1437, label %449

449:                                              ; preds = %445
  %450 = sub nsw i32 %447, %442
  %451 = icmp sgt i32 %450, 1024
  br i1 %451, label %1437, label %452

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
  br i1 %473, label %1437, label %474

474:                                              ; preds = %463
  %475 = shl nuw nsw i32 %471, 2
  %476 = icmp sgt i32 %472, -1
  br i1 %476, label %477, label %1437

477:                                              ; preds = %474
  %478 = icmp eq i32 %472, 0
  br i1 %478, label %482, label %479

479:                                              ; preds = %477
  %480 = udiv i32 2147483647, %472
  %481 = icmp samesign ugt i32 %475, %480
  br i1 %481, label %1437, label %482

482:                                              ; preds = %479, %477
  %483 = mul nuw nsw i32 %475, %472
  %484 = zext nneg i32 %483 to i64
  %485 = add nuw nsw i64 %484, 15
  %486 = and i64 %485, 4294967280
  %487 = add nuw nsw i64 %486, 16
  %488 = load i64, ptr @arena_used, align 8, !tbaa !19
  %489 = sub i64 100663296, %488
  %490 = icmp ugt i64 %487, %489
  br i1 %490, label %1437, label %491

491:                                              ; preds = %482
  %492 = getelementptr inbounds nuw i8, ptr @arena, i64 %488
  %493 = add i64 %488, %487
  store i64 %493, ptr @arena_used, align 8, !tbaa !19
  store i64 %484, ptr %492, align 8, !tbaa !19
  %494 = getelementptr inbounds nuw i8, ptr %492, i64 16
  %495 = icmp slt i32 %467, 16
  br i1 %495, label %496, label %977

496:                                              ; preds = %491
  %497 = icmp sgt i32 %465, 256
  %498 = or i1 %466, %497
  br i1 %498, label %1437, label %499

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
  %530 = add nsw i32 %529, %528
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
  %567 = add nsw i32 %566, %565
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
  %603 = add nsw i32 %602, %601
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
  %638 = add nsw i32 %637, %636
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
  br i1 %656, label %657, label %505, !llvm.loop !230

657:                                              ; preds = %649, %499
  %658 = getelementptr inbounds nuw i8, ptr %12, i64 32
  %659 = load i32, ptr %658, align 4, !tbaa !217
  %660 = select i1 %406, i32 -3, i32 -4
  %661 = mul i32 %465, %660
  %662 = add i32 %661, %468
  %663 = add i32 %405, %659
  %664 = sub i32 %662, %663
  tail call fastcc void @stbi__skip(ptr noundef nonnull %0, i32 noundef %664) #17
  switch i32 %467, label %1437 [
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
  %673 = sub nsw i32 0, %672
  %674 = and i32 %673, 3
  %675 = load i32, ptr %386, align 4, !tbaa !25
  %676 = icmp sgt i32 %675, 0
  br i1 %676, label %677, label %1348

677:                                              ; preds = %671
  %678 = icmp eq i32 %467, 4
  %679 = icmp eq i32 %467, 8
  %680 = icmp eq i32 %674, 0
  %681 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %682 = zext nneg i32 %674 to i64
  br label %831

683:                                              ; preds = %657
  %684 = load i32, ptr %0, align 8, !tbaa !24
  %685 = add i32 %684, 7
  %686 = lshr i32 %685, 3
  %687 = sub nsw i32 0, %686
  %688 = and i32 %687, 3
  %689 = load i32, ptr %386, align 4, !tbaa !25
  %690 = icmp sgt i32 %689, 0
  br i1 %690, label %691, label %1348

691:                                              ; preds = %683
  %692 = icmp eq i32 %688, 0
  %693 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %694 = zext nneg i32 %688 to i64
  br label %695

695:                                              ; preds = %827, %691
  %696 = phi i32 [ 0, %691 ], [ %806, %827 ]
  %697 = phi i32 [ 0, %691 ], [ %828, %827 ]
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
  %719 = add nsw i32 %718, %717
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
  br i1 %732, label %733, label %805

733:                                              ; preds = %729
  %734 = zext i8 %730 to i32
  %735 = sext i32 %696 to i64
  br label %736

736:                                              ; preds = %798, %733
  %737 = phi i64 [ %735, %733 ], [ %753, %798 ]
  %738 = phi i32 [ %734, %733 ], [ %801, %798 ]
  %739 = phi i32 [ 7, %733 ], [ %800, %798 ]
  %740 = phi i32 [ 0, %733 ], [ %755, %798 ]
  %741 = lshr i32 %738, %739
  %742 = and i32 %741, 1
  %743 = zext nneg i32 %742 to i64
  %744 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %743
  %745 = load i8, ptr %744, align 4, !tbaa !35
  %746 = getelementptr inbounds i8, ptr %494, i64 %737
  store i8 %745, ptr %746, align 1, !tbaa !35
  %747 = getelementptr inbounds nuw i8, ptr %744, i64 1
  %748 = load i8, ptr %747, align 1, !tbaa !35
  %749 = getelementptr i8, ptr %746, i64 1
  store i8 %748, ptr %749, align 1, !tbaa !35
  %750 = getelementptr inbounds nuw i8, ptr %744, i64 2
  %751 = load i8, ptr %750, align 2, !tbaa !35
  %752 = getelementptr i8, ptr %746, i64 2
  store i8 %751, ptr %752, align 1, !tbaa !35
  %753 = add nsw i64 %737, 4
  %754 = getelementptr i8, ptr %746, i64 3
  store i8 -1, ptr %754, align 1, !tbaa !35
  %755 = add nuw nsw i32 %740, 1
  %756 = load i32, ptr %0, align 8, !tbaa !24
  %757 = icmp eq i32 %755, %756
  br i1 %757, label %803, label %758

758:                                              ; preds = %736
  %759 = add nsw i32 %739, -1
  %760 = icmp slt i32 %739, 1
  br i1 %760, label %761, label %798

761:                                              ; preds = %758
  %762 = load ptr, ptr %17, align 8, !tbaa !16
  %763 = load ptr, ptr %18, align 8, !tbaa !18
  %764 = icmp ult ptr %762, %763
  br i1 %764, label %765, label %768

765:                                              ; preds = %761
  %766 = getelementptr inbounds nuw i8, ptr %762, i64 1
  store ptr %766, ptr %17, align 8, !tbaa !16
  %767 = load i8, ptr %762, align 1, !tbaa !35
  br label %794

768:                                              ; preds = %761
  %769 = load i32, ptr %19, align 8, !tbaa !13
  %770 = icmp eq i32 %769, 0
  br i1 %770, label %794, label %771

771:                                              ; preds = %768
  %772 = load ptr, ptr %20, align 8, !tbaa !8
  %773 = load ptr, ptr %21, align 8, !tbaa !33
  %774 = load i32, ptr %23, align 4, !tbaa !34
  %775 = tail call i32 %772(ptr noundef %773, ptr noundef nonnull %22, i32 noundef %774) #16
  %776 = load ptr, ptr %17, align 8, !tbaa !16
  %777 = load ptr, ptr %24, align 8, !tbaa !15
  %778 = ptrtoint ptr %776 to i64
  %779 = ptrtoint ptr %777 to i64
  %780 = sub i64 %778, %779
  %781 = trunc i64 %780 to i32
  %782 = load i32, ptr %25, align 8, !tbaa !14
  %783 = add nsw i32 %782, %781
  store i32 %783, ptr %25, align 8, !tbaa !14
  %784 = icmp eq i32 %775, 0
  br i1 %784, label %785, label %786

785:                                              ; preds = %771
  store i32 0, ptr %19, align 8, !tbaa !13
  store i8 0, ptr %22, align 8, !tbaa !35
  br label %790

786:                                              ; preds = %771
  %787 = sext i32 %775 to i64
  %788 = getelementptr inbounds i8, ptr %22, i64 %787
  %789 = load i8, ptr %22, align 1, !tbaa !35
  br label %790

790:                                              ; preds = %786, %785
  %791 = phi i8 [ 0, %785 ], [ %789, %786 ]
  %792 = phi ptr [ %26, %785 ], [ %788, %786 ]
  store ptr %792, ptr %18, align 8, !tbaa !18
  store ptr %26, ptr %17, align 8, !tbaa !16
  %793 = load i32, ptr %0, align 8, !tbaa !24
  br label %794

794:                                              ; preds = %790, %768, %765
  %795 = phi i32 [ %756, %765 ], [ %793, %790 ], [ %756, %768 ]
  %796 = phi i8 [ %767, %765 ], [ %791, %790 ], [ 0, %768 ]
  %797 = zext i8 %796 to i32
  br label %798

798:                                              ; preds = %794, %758
  %799 = phi i32 [ %756, %758 ], [ %795, %794 ]
  %800 = phi i32 [ %759, %758 ], [ 7, %794 ]
  %801 = phi i32 [ %738, %758 ], [ %797, %794 ]
  %802 = icmp slt i32 %755, %799
  br i1 %802, label %736, label %803, !llvm.loop !231

803:                                              ; preds = %798, %736
  %804 = trunc nsw i64 %753 to i32
  br label %805

805:                                              ; preds = %803, %729
  %806 = phi i32 [ %696, %729 ], [ %804, %803 ]
  br i1 %692, label %827, label %807

807:                                              ; preds = %805
  %808 = load ptr, ptr %20, align 8, !tbaa !8
  %809 = icmp eq ptr %808, null
  br i1 %809, label %810, label %812

810:                                              ; preds = %807
  %811 = load ptr, ptr %17, align 8, !tbaa !16
  br label %824

812:                                              ; preds = %807
  %813 = load ptr, ptr %18, align 8, !tbaa !18
  %814 = load ptr, ptr %17, align 8, !tbaa !16
  %815 = ptrtoint ptr %813 to i64
  %816 = ptrtoint ptr %814 to i64
  %817 = sub i64 %815, %816
  %818 = trunc i64 %817 to i32
  %819 = icmp sgt i32 %688, %818
  br i1 %819, label %820, label %824

820:                                              ; preds = %812
  store ptr %813, ptr %17, align 8, !tbaa !16
  %821 = load ptr, ptr %693, align 8, !tbaa !36
  %822 = load ptr, ptr %21, align 8, !tbaa !33
  %823 = sub nsw i32 %688, %818
  tail call void %821(ptr noundef %822, i32 noundef %823) #16
  br label %827

824:                                              ; preds = %812, %810
  %825 = phi ptr [ %811, %810 ], [ %814, %812 ]
  %826 = getelementptr inbounds nuw i8, ptr %825, i64 %694
  store ptr %826, ptr %17, align 8, !tbaa !16
  br label %827

827:                                              ; preds = %824, %820, %805
  %828 = add nuw nsw i32 %697, 1
  %829 = load i32, ptr %386, align 4, !tbaa !25
  %830 = icmp slt i32 %828, %829
  br i1 %830, label %695, label %1348, !llvm.loop !232

831:                                              ; preds = %973, %677
  %832 = phi i32 [ 0, %677 ], [ %952, %973 ]
  %833 = phi i32 [ 0, %677 ], [ %974, %973 ]
  %834 = load i32, ptr %0, align 8, !tbaa !24
  %835 = icmp sgt i32 %834, 0
  br i1 %835, label %836, label %951

836:                                              ; preds = %831
  %837 = sext i32 %832 to i64
  br label %838

838:                                              ; preds = %929, %836
  %839 = phi i64 [ %837, %836 ], [ %942, %929 ]
  %840 = phi i32 [ 0, %836 ], [ %943, %929 ]
  %841 = load ptr, ptr %17, align 8, !tbaa !16
  %842 = load ptr, ptr %18, align 8, !tbaa !18
  %843 = icmp ult ptr %841, %842
  br i1 %843, label %844, label %847

844:                                              ; preds = %838
  %845 = getelementptr inbounds nuw i8, ptr %841, i64 1
  store ptr %845, ptr %17, align 8, !tbaa !16
  %846 = load i8, ptr %841, align 1, !tbaa !35
  br label %872

847:                                              ; preds = %838
  %848 = load i32, ptr %19, align 8, !tbaa !13
  %849 = icmp eq i32 %848, 0
  br i1 %849, label %872, label %850

850:                                              ; preds = %847
  %851 = load ptr, ptr %20, align 8, !tbaa !8
  %852 = load ptr, ptr %21, align 8, !tbaa !33
  %853 = load i32, ptr %23, align 4, !tbaa !34
  %854 = tail call i32 %851(ptr noundef %852, ptr noundef nonnull %22, i32 noundef %853) #16
  %855 = load ptr, ptr %17, align 8, !tbaa !16
  %856 = load ptr, ptr %24, align 8, !tbaa !15
  %857 = ptrtoint ptr %855 to i64
  %858 = ptrtoint ptr %856 to i64
  %859 = sub i64 %857, %858
  %860 = trunc i64 %859 to i32
  %861 = load i32, ptr %25, align 8, !tbaa !14
  %862 = add nsw i32 %861, %860
  store i32 %862, ptr %25, align 8, !tbaa !14
  %863 = icmp eq i32 %854, 0
  br i1 %863, label %864, label %865

864:                                              ; preds = %850
  store i32 0, ptr %19, align 8, !tbaa !13
  store i8 0, ptr %22, align 8, !tbaa !35
  br label %869

865:                                              ; preds = %850
  %866 = sext i32 %854 to i64
  %867 = getelementptr inbounds i8, ptr %22, i64 %866
  %868 = load i8, ptr %22, align 1, !tbaa !35
  br label %869

869:                                              ; preds = %865, %864
  %870 = phi i8 [ 0, %864 ], [ %868, %865 ]
  %871 = phi ptr [ %26, %864 ], [ %867, %865 ]
  store ptr %871, ptr %18, align 8, !tbaa !18
  store ptr %26, ptr %17, align 8, !tbaa !16
  br label %872

872:                                              ; preds = %869, %847, %844
  %873 = phi i8 [ %846, %844 ], [ %870, %869 ], [ 0, %847 ]
  %874 = zext i8 %873 to i32
  %875 = lshr i32 %874, 4
  %876 = select i1 %678, i32 %875, i32 %874
  %877 = zext nneg i32 %876 to i64
  %878 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %877
  %879 = load i8, ptr %878, align 4, !tbaa !35
  %880 = getelementptr inbounds i8, ptr %494, i64 %839
  store i8 %879, ptr %880, align 1, !tbaa !35
  %881 = getelementptr inbounds nuw i8, ptr %878, i64 1
  %882 = load i8, ptr %881, align 1, !tbaa !35
  %883 = getelementptr i8, ptr %880, i64 1
  store i8 %882, ptr %883, align 1, !tbaa !35
  %884 = getelementptr inbounds nuw i8, ptr %878, i64 2
  %885 = load i8, ptr %884, align 2, !tbaa !35
  %886 = getelementptr i8, ptr %880, i64 2
  store i8 %885, ptr %886, align 1, !tbaa !35
  %887 = getelementptr i8, ptr %880, i64 3
  store i8 -1, ptr %887, align 1, !tbaa !35
  %888 = or disjoint i32 %840, 1
  %889 = load i32, ptr %0, align 8, !tbaa !24
  %890 = icmp eq i32 %888, %889
  br i1 %890, label %946, label %891

891:                                              ; preds = %872
  %892 = and i32 %874, 15
  %893 = select i1 %678, i32 %892, i32 0
  br i1 %679, label %894, label %929

894:                                              ; preds = %891
  %895 = load ptr, ptr %17, align 8, !tbaa !16
  %896 = load ptr, ptr %18, align 8, !tbaa !18
  %897 = icmp ult ptr %895, %896
  br i1 %897, label %898, label %901

898:                                              ; preds = %894
  %899 = getelementptr inbounds nuw i8, ptr %895, i64 1
  store ptr %899, ptr %17, align 8, !tbaa !16
  %900 = load i8, ptr %895, align 1, !tbaa !35
  br label %926

901:                                              ; preds = %894
  %902 = load i32, ptr %19, align 8, !tbaa !13
  %903 = icmp eq i32 %902, 0
  br i1 %903, label %926, label %904

904:                                              ; preds = %901
  %905 = load ptr, ptr %20, align 8, !tbaa !8
  %906 = load ptr, ptr %21, align 8, !tbaa !33
  %907 = load i32, ptr %23, align 4, !tbaa !34
  %908 = tail call i32 %905(ptr noundef %906, ptr noundef nonnull %22, i32 noundef %907) #16
  %909 = load ptr, ptr %17, align 8, !tbaa !16
  %910 = load ptr, ptr %24, align 8, !tbaa !15
  %911 = ptrtoint ptr %909 to i64
  %912 = ptrtoint ptr %910 to i64
  %913 = sub i64 %911, %912
  %914 = trunc i64 %913 to i32
  %915 = load i32, ptr %25, align 8, !tbaa !14
  %916 = add nsw i32 %915, %914
  store i32 %916, ptr %25, align 8, !tbaa !14
  %917 = icmp eq i32 %908, 0
  br i1 %917, label %918, label %919

918:                                              ; preds = %904
  store i32 0, ptr %19, align 8, !tbaa !13
  store i8 0, ptr %22, align 8, !tbaa !35
  br label %923

919:                                              ; preds = %904
  %920 = sext i32 %908 to i64
  %921 = getelementptr inbounds i8, ptr %22, i64 %920
  %922 = load i8, ptr %22, align 1, !tbaa !35
  br label %923

923:                                              ; preds = %919, %918
  %924 = phi i8 [ 0, %918 ], [ %922, %919 ]
  %925 = phi ptr [ %26, %918 ], [ %921, %919 ]
  store ptr %925, ptr %18, align 8, !tbaa !18
  store ptr %26, ptr %17, align 8, !tbaa !16
  br label %926

926:                                              ; preds = %923, %901, %898
  %927 = phi i8 [ %900, %898 ], [ %924, %923 ], [ 0, %901 ]
  %928 = zext i8 %927 to i32
  br label %929

929:                                              ; preds = %926, %891
  %930 = phi i32 [ %928, %926 ], [ %893, %891 ]
  %931 = zext nneg i32 %930 to i64
  %932 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %931
  %933 = load i8, ptr %932, align 4, !tbaa !35
  %934 = getelementptr i8, ptr %880, i64 4
  store i8 %933, ptr %934, align 1, !tbaa !35
  %935 = getelementptr inbounds nuw i8, ptr %932, i64 1
  %936 = load i8, ptr %935, align 1, !tbaa !35
  %937 = getelementptr i8, ptr %880, i64 5
  store i8 %936, ptr %937, align 1, !tbaa !35
  %938 = getelementptr inbounds nuw i8, ptr %932, i64 2
  %939 = load i8, ptr %938, align 2, !tbaa !35
  %940 = getelementptr i8, ptr %880, i64 6
  store i8 %939, ptr %940, align 1, !tbaa !35
  %941 = getelementptr i8, ptr %880, i64 7
  store i8 -1, ptr %941, align 1, !tbaa !35
  %942 = add nsw i64 %839, 8
  %943 = add nuw nsw i32 %840, 2
  %944 = load i32, ptr %0, align 8, !tbaa !24
  %945 = icmp slt i32 %943, %944
  br i1 %945, label %838, label %949, !llvm.loop !233

946:                                              ; preds = %872
  %947 = trunc i64 %839 to i32
  %948 = add nsw i32 %947, 4
  br label %951

949:                                              ; preds = %929
  %950 = trunc nsw i64 %942 to i32
  br label %951

951:                                              ; preds = %949, %946, %831
  %952 = phi i32 [ %832, %831 ], [ %948, %946 ], [ %950, %949 ]
  br i1 %680, label %973, label %953

953:                                              ; preds = %951
  %954 = load ptr, ptr %20, align 8, !tbaa !8
  %955 = icmp eq ptr %954, null
  br i1 %955, label %956, label %958

956:                                              ; preds = %953
  %957 = load ptr, ptr %17, align 8, !tbaa !16
  br label %970

958:                                              ; preds = %953
  %959 = load ptr, ptr %18, align 8, !tbaa !18
  %960 = load ptr, ptr %17, align 8, !tbaa !16
  %961 = ptrtoint ptr %959 to i64
  %962 = ptrtoint ptr %960 to i64
  %963 = sub i64 %961, %962
  %964 = trunc i64 %963 to i32
  %965 = icmp sgt i32 %674, %964
  br i1 %965, label %966, label %970

966:                                              ; preds = %958
  store ptr %959, ptr %17, align 8, !tbaa !16
  %967 = load ptr, ptr %681, align 8, !tbaa !36
  %968 = load ptr, ptr %21, align 8, !tbaa !33
  %969 = sub nsw i32 %674, %964
  tail call void %967(ptr noundef %968, i32 noundef %969) #16
  br label %973

970:                                              ; preds = %958, %956
  %971 = phi ptr [ %957, %956 ], [ %960, %958 ]
  %972 = getelementptr inbounds nuw i8, ptr %971, i64 %682
  store ptr %972, ptr %17, align 8, !tbaa !16
  br label %973

973:                                              ; preds = %970, %966, %951
  %974 = add nuw nsw i32 %833, 1
  %975 = load i32, ptr %386, align 4, !tbaa !25
  %976 = icmp slt i32 %974, %975
  br i1 %976, label %831, label %1348, !llvm.loop !234

977:                                              ; preds = %491
  %978 = getelementptr inbounds nuw i8, ptr %12, i64 32
  %979 = load i32, ptr %978, align 4, !tbaa !217
  %980 = add i32 %979, %405
  %981 = sub i32 %468, %980
  %982 = icmp eq i32 %468, %980
  br i1 %982, label %1009, label %983

983:                                              ; preds = %977
  %984 = icmp slt i32 %981, 0
  br i1 %984, label %985, label %987

985:                                              ; preds = %983
  %986 = load ptr, ptr %18, align 8, !tbaa !18
  store ptr %986, ptr %17, align 8, !tbaa !16
  br label %1009

987:                                              ; preds = %983
  %988 = load ptr, ptr %20, align 8, !tbaa !8
  %989 = icmp eq ptr %988, null
  br i1 %989, label %990, label %992

990:                                              ; preds = %987
  %991 = load ptr, ptr %17, align 8, !tbaa !16
  br label %1005

992:                                              ; preds = %987
  %993 = load ptr, ptr %18, align 8, !tbaa !18
  %994 = load ptr, ptr %17, align 8, !tbaa !16
  %995 = ptrtoint ptr %993 to i64
  %996 = ptrtoint ptr %994 to i64
  %997 = sub i64 %995, %996
  %998 = trunc i64 %997 to i32
  %999 = icmp sgt i32 %981, %998
  br i1 %999, label %1000, label %1005

1000:                                             ; preds = %992
  store ptr %993, ptr %17, align 8, !tbaa !16
  %1001 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %1002 = load ptr, ptr %1001, align 8, !tbaa !36
  %1003 = load ptr, ptr %21, align 8, !tbaa !33
  %1004 = sub nsw i32 %981, %998
  tail call void %1002(ptr noundef %1003, i32 noundef %1004) #16
  br label %1009

1005:                                             ; preds = %992, %990
  %1006 = phi ptr [ %991, %990 ], [ %994, %992 ]
  %1007 = zext nneg i32 %981 to i64
  %1008 = getelementptr inbounds nuw i8, ptr %1006, i64 %1007
  store ptr %1008, ptr %17, align 8, !tbaa !16
  br label %1009

1009:                                             ; preds = %1005, %1000, %985, %977
  switch i32 %467, label %1024 [
    i32 24, label %1010
    i32 16, label %1013
    i32 32, label %1017
  ]

1010:                                             ; preds = %1009
  %1011 = load i32, ptr %0, align 8, !tbaa !24
  %1012 = and i32 %1011, 3
  br label %1051

1013:                                             ; preds = %1009
  %1014 = load i32, ptr %0, align 8, !tbaa !24
  %1015 = shl i32 %1014, 1
  %1016 = and i32 %1015, 2
  br label %1024

1017:                                             ; preds = %1009
  %1018 = icmp eq i32 %400, 255
  %1019 = icmp eq i32 %398, 65280
  %1020 = select i1 %1018, i1 %1019, i1 false
  %1021 = icmp eq i32 %396, 16711680
  %1022 = select i1 %1020, i1 %1021, i1 false
  %1023 = select i1 %1022, i1 %464, i1 false
  br i1 %1023, label %1051, label %1024

1024:                                             ; preds = %1017, %1013, %1009
  %1025 = phi i32 [ 0, %1017 ], [ %1016, %1013 ], [ 0, %1009 ]
  %1026 = icmp ne i32 %396, 0
  %1027 = icmp ne i32 %398, 0
  %1028 = select i1 %1026, i1 %1027, i1 false
  %1029 = icmp ne i32 %400, 0
  %1030 = select i1 %1028, i1 %1029, i1 false
  br i1 %1030, label %1031, label %1437

1031:                                             ; preds = %1024
  %1032 = tail call fastcc i32 @stbi__high_bit(i32 noundef %396) #17
  %1033 = add nsw i32 %1032, -7
  %1034 = tail call fastcc i32 @stbi__bitcount(i32 noundef %396) #17
  %1035 = tail call fastcc i32 @stbi__high_bit(i32 noundef %398) #17
  %1036 = add nsw i32 %1035, -7
  %1037 = tail call fastcc i32 @stbi__bitcount(i32 noundef %398) #17
  %1038 = tail call fastcc i32 @stbi__high_bit(i32 noundef %400) #17
  %1039 = add nsw i32 %1038, -7
  %1040 = tail call fastcc i32 @stbi__bitcount(i32 noundef %400) #17
  %1041 = tail call fastcc i32 @stbi__high_bit(i32 noundef %402) #17
  %1042 = add nsw i32 %1041, -7
  %1043 = tail call fastcc i32 @stbi__bitcount(i32 noundef %402) #17
  %1044 = icmp samesign ugt i32 %1034, 8
  %1045 = icmp samesign ugt i32 %1037, 8
  %1046 = select i1 %1044, i1 true, i1 %1045
  %1047 = icmp samesign ugt i32 %1040, 8
  %1048 = select i1 %1046, i1 true, i1 %1047
  %1049 = icmp samesign ugt i32 %1043, 8
  %1050 = select i1 %1048, i1 true, i1 %1049
  br i1 %1050, label %1437, label %1051

1051:                                             ; preds = %1031, %1017, %1010
  %1052 = phi i1 [ true, %1017 ], [ false, %1031 ], [ false, %1010 ]
  %1053 = phi i1 [ false, %1017 ], [ true, %1031 ], [ false, %1010 ]
  %1054 = phi i32 [ 0, %1017 ], [ %1025, %1031 ], [ %1012, %1010 ]
  %1055 = phi i32 [ 0, %1017 ], [ %1033, %1031 ], [ 0, %1010 ]
  %1056 = phi i32 [ 0, %1017 ], [ %1036, %1031 ], [ 0, %1010 ]
  %1057 = phi i32 [ 0, %1017 ], [ %1039, %1031 ], [ 0, %1010 ]
  %1058 = phi i32 [ 0, %1017 ], [ %1042, %1031 ], [ 0, %1010 ]
  %1059 = phi i32 [ 0, %1017 ], [ %1034, %1031 ], [ 0, %1010 ]
  %1060 = phi i32 [ 0, %1017 ], [ %1037, %1031 ], [ 0, %1010 ]
  %1061 = phi i32 [ 0, %1017 ], [ %1040, %1031 ], [ 0, %1010 ]
  %1062 = phi i32 [ 0, %1017 ], [ %1043, %1031 ], [ 0, %1010 ]
  %1063 = load i32, ptr %386, align 4, !tbaa !25
  %1064 = icmp sgt i32 %1063, 0
  br i1 %1064, label %1065, label %1348

1065:                                             ; preds = %1051
  %1066 = icmp eq i32 %467, 16
  %1067 = icmp slt i32 %1055, 0
  %1068 = sub nsw i32 0, %1055
  %1069 = sub nuw nsw i32 8, %1059
  %1070 = zext nneg i32 %1059 to i64
  %1071 = getelementptr inbounds nuw i32, ptr @stbi__shiftsigned.mul_table, i64 %1070
  %1072 = getelementptr inbounds nuw i32, ptr @stbi__shiftsigned.shift_table, i64 %1070
  %1073 = icmp slt i32 %1056, 0
  %1074 = sub nsw i32 0, %1056
  %1075 = sub nuw nsw i32 8, %1060
  %1076 = zext nneg i32 %1060 to i64
  %1077 = getelementptr inbounds nuw i32, ptr @stbi__shiftsigned.mul_table, i64 %1076
  %1078 = getelementptr inbounds nuw i32, ptr @stbi__shiftsigned.shift_table, i64 %1076
  %1079 = icmp slt i32 %1057, 0
  %1080 = sub nsw i32 0, %1057
  %1081 = sub nuw nsw i32 8, %1061
  %1082 = zext nneg i32 %1061 to i64
  %1083 = getelementptr inbounds nuw i32, ptr @stbi__shiftsigned.mul_table, i64 %1082
  %1084 = getelementptr inbounds nuw i32, ptr @stbi__shiftsigned.shift_table, i64 %1082
  %1085 = icmp eq i32 %402, 0
  %1086 = icmp slt i32 %1058, 0
  %1087 = sub nsw i32 0, %1058
  %1088 = sub nuw nsw i32 8, %1062
  %1089 = zext nneg i32 %1062 to i64
  %1090 = getelementptr inbounds nuw i32, ptr @stbi__shiftsigned.mul_table, i64 %1089
  %1091 = getelementptr inbounds nuw i32, ptr @stbi__shiftsigned.shift_table, i64 %1089
  %1092 = icmp eq i32 %1054, 0
  %1093 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %1094 = zext nneg i32 %1054 to i64
  br label %1095

1095:                                             ; preds = %1344, %1065
  %1096 = phi i32 [ %403, %1065 ], [ %1323, %1344 ]
  %1097 = phi i32 [ 0, %1065 ], [ %1322, %1344 ]
  %1098 = phi i32 [ 0, %1065 ], [ %1345, %1344 ]
  %1099 = load i32, ptr %0, align 8, !tbaa !24
  %1100 = icmp sgt i32 %1099, 0
  br i1 %1053, label %1104, label %1101

1101:                                             ; preds = %1095
  br i1 %1100, label %1102, label %1321

1102:                                             ; preds = %1101
  %1103 = sext i32 %1097 to i64
  br label %1107

1104:                                             ; preds = %1095
  br i1 %1100, label %1105, label %1321

1105:                                             ; preds = %1104
  %1106 = sext i32 %1097 to i64
  br label %1254

1107:                                             ; preds = %1245, %1102
  %1108 = phi i64 [ %1103, %1102 ], [ %1250, %1245 ]
  %1109 = phi i32 [ %1096, %1102 ], [ %1248, %1245 ]
  %1110 = phi i32 [ 0, %1102 ], [ %1251, %1245 ]
  %1111 = load ptr, ptr %17, align 8, !tbaa !16
  %1112 = load ptr, ptr %18, align 8, !tbaa !18
  %1113 = icmp ult ptr %1111, %1112
  br i1 %1113, label %1114, label %1117

1114:                                             ; preds = %1107
  %1115 = getelementptr inbounds nuw i8, ptr %1111, i64 1
  store ptr %1115, ptr %17, align 8, !tbaa !16
  %1116 = load i8, ptr %1111, align 1, !tbaa !35
  br label %1142

1117:                                             ; preds = %1107
  %1118 = load i32, ptr %19, align 8, !tbaa !13
  %1119 = icmp eq i32 %1118, 0
  br i1 %1119, label %1142, label %1120

1120:                                             ; preds = %1117
  %1121 = load ptr, ptr %20, align 8, !tbaa !8
  %1122 = load ptr, ptr %21, align 8, !tbaa !33
  %1123 = load i32, ptr %23, align 4, !tbaa !34
  %1124 = tail call i32 %1121(ptr noundef %1122, ptr noundef nonnull %22, i32 noundef %1123) #16
  %1125 = load ptr, ptr %17, align 8, !tbaa !16
  %1126 = load ptr, ptr %24, align 8, !tbaa !15
  %1127 = ptrtoint ptr %1125 to i64
  %1128 = ptrtoint ptr %1126 to i64
  %1129 = sub i64 %1127, %1128
  %1130 = trunc i64 %1129 to i32
  %1131 = load i32, ptr %25, align 8, !tbaa !14
  %1132 = add nsw i32 %1131, %1130
  store i32 %1132, ptr %25, align 8, !tbaa !14
  %1133 = icmp eq i32 %1124, 0
  br i1 %1133, label %1134, label %1135

1134:                                             ; preds = %1120
  store i32 0, ptr %19, align 8, !tbaa !13
  store i8 0, ptr %22, align 8, !tbaa !35
  br label %1139

1135:                                             ; preds = %1120
  %1136 = sext i32 %1124 to i64
  %1137 = getelementptr inbounds i8, ptr %22, i64 %1136
  %1138 = load i8, ptr %22, align 1, !tbaa !35
  br label %1139

1139:                                             ; preds = %1135, %1134
  %1140 = phi i8 [ 0, %1134 ], [ %1138, %1135 ]
  %1141 = phi ptr [ %26, %1134 ], [ %1137, %1135 ]
  store ptr %1141, ptr %18, align 8, !tbaa !18
  store ptr %26, ptr %17, align 8, !tbaa !16
  br label %1142

1142:                                             ; preds = %1139, %1117, %1114
  %1143 = phi i8 [ %1116, %1114 ], [ %1140, %1139 ], [ 0, %1117 ]
  %1144 = getelementptr i8, ptr %494, i64 %1108
  %1145 = getelementptr i8, ptr %1144, i64 2
  store i8 %1143, ptr %1145, align 1, !tbaa !35
  %1146 = load ptr, ptr %17, align 8, !tbaa !16
  %1147 = load ptr, ptr %18, align 8, !tbaa !18
  %1148 = icmp ult ptr %1146, %1147
  br i1 %1148, label %1149, label %1152

1149:                                             ; preds = %1142
  %1150 = getelementptr inbounds nuw i8, ptr %1146, i64 1
  store ptr %1150, ptr %17, align 8, !tbaa !16
  %1151 = load i8, ptr %1146, align 1, !tbaa !35
  br label %1177

1152:                                             ; preds = %1142
  %1153 = load i32, ptr %19, align 8, !tbaa !13
  %1154 = icmp eq i32 %1153, 0
  br i1 %1154, label %1177, label %1155

1155:                                             ; preds = %1152
  %1156 = load ptr, ptr %20, align 8, !tbaa !8
  %1157 = load ptr, ptr %21, align 8, !tbaa !33
  %1158 = load i32, ptr %23, align 4, !tbaa !34
  %1159 = tail call i32 %1156(ptr noundef %1157, ptr noundef nonnull %22, i32 noundef %1158) #16
  %1160 = load ptr, ptr %17, align 8, !tbaa !16
  %1161 = load ptr, ptr %24, align 8, !tbaa !15
  %1162 = ptrtoint ptr %1160 to i64
  %1163 = ptrtoint ptr %1161 to i64
  %1164 = sub i64 %1162, %1163
  %1165 = trunc i64 %1164 to i32
  %1166 = load i32, ptr %25, align 8, !tbaa !14
  %1167 = add nsw i32 %1166, %1165
  store i32 %1167, ptr %25, align 8, !tbaa !14
  %1168 = icmp eq i32 %1159, 0
  br i1 %1168, label %1169, label %1170

1169:                                             ; preds = %1155
  store i32 0, ptr %19, align 8, !tbaa !13
  store i8 0, ptr %22, align 8, !tbaa !35
  br label %1174

1170:                                             ; preds = %1155
  %1171 = sext i32 %1159 to i64
  %1172 = getelementptr inbounds i8, ptr %22, i64 %1171
  %1173 = load i8, ptr %22, align 1, !tbaa !35
  br label %1174

1174:                                             ; preds = %1170, %1169
  %1175 = phi i8 [ 0, %1169 ], [ %1173, %1170 ]
  %1176 = phi ptr [ %26, %1169 ], [ %1172, %1170 ]
  store ptr %1176, ptr %18, align 8, !tbaa !18
  store ptr %26, ptr %17, align 8, !tbaa !16
  br label %1177

1177:                                             ; preds = %1174, %1152, %1149
  %1178 = phi i8 [ %1151, %1149 ], [ %1175, %1174 ], [ 0, %1152 ]
  %1179 = getelementptr i8, ptr %1144, i64 1
  store i8 %1178, ptr %1179, align 1, !tbaa !35
  %1180 = load ptr, ptr %17, align 8, !tbaa !16
  %1181 = load ptr, ptr %18, align 8, !tbaa !18
  %1182 = icmp ult ptr %1180, %1181
  br i1 %1182, label %1183, label %1186

1183:                                             ; preds = %1177
  %1184 = getelementptr inbounds nuw i8, ptr %1180, i64 1
  store ptr %1184, ptr %17, align 8, !tbaa !16
  %1185 = load i8, ptr %1180, align 1, !tbaa !35
  br label %1211

1186:                                             ; preds = %1177
  %1187 = load i32, ptr %19, align 8, !tbaa !13
  %1188 = icmp eq i32 %1187, 0
  br i1 %1188, label %1211, label %1189

1189:                                             ; preds = %1186
  %1190 = load ptr, ptr %20, align 8, !tbaa !8
  %1191 = load ptr, ptr %21, align 8, !tbaa !33
  %1192 = load i32, ptr %23, align 4, !tbaa !34
  %1193 = tail call i32 %1190(ptr noundef %1191, ptr noundef nonnull %22, i32 noundef %1192) #16
  %1194 = load ptr, ptr %17, align 8, !tbaa !16
  %1195 = load ptr, ptr %24, align 8, !tbaa !15
  %1196 = ptrtoint ptr %1194 to i64
  %1197 = ptrtoint ptr %1195 to i64
  %1198 = sub i64 %1196, %1197
  %1199 = trunc i64 %1198 to i32
  %1200 = load i32, ptr %25, align 8, !tbaa !14
  %1201 = add nsw i32 %1200, %1199
  store i32 %1201, ptr %25, align 8, !tbaa !14
  %1202 = icmp eq i32 %1193, 0
  br i1 %1202, label %1203, label %1204

1203:                                             ; preds = %1189
  store i32 0, ptr %19, align 8, !tbaa !13
  store i8 0, ptr %22, align 8, !tbaa !35
  br label %1208

1204:                                             ; preds = %1189
  %1205 = sext i32 %1193 to i64
  %1206 = getelementptr inbounds i8, ptr %22, i64 %1205
  %1207 = load i8, ptr %22, align 1, !tbaa !35
  br label %1208

1208:                                             ; preds = %1204, %1203
  %1209 = phi i8 [ 0, %1203 ], [ %1207, %1204 ]
  %1210 = phi ptr [ %26, %1203 ], [ %1206, %1204 ]
  store ptr %1210, ptr %18, align 8, !tbaa !18
  store ptr %26, ptr %17, align 8, !tbaa !16
  br label %1211

1211:                                             ; preds = %1208, %1186, %1183
  %1212 = phi i8 [ %1185, %1183 ], [ %1209, %1208 ], [ 0, %1186 ]
  store i8 %1212, ptr %1144, align 1, !tbaa !35
  br i1 %1052, label %1213, label %1245

1213:                                             ; preds = %1211
  %1214 = load ptr, ptr %17, align 8, !tbaa !16
  %1215 = load ptr, ptr %18, align 8, !tbaa !18
  %1216 = icmp ult ptr %1214, %1215
  br i1 %1216, label %1217, label %1220

1217:                                             ; preds = %1213
  %1218 = getelementptr inbounds nuw i8, ptr %1214, i64 1
  store ptr %1218, ptr %17, align 8, !tbaa !16
  %1219 = load i8, ptr %1214, align 1, !tbaa !35
  br label %1245

1220:                                             ; preds = %1213
  %1221 = load i32, ptr %19, align 8, !tbaa !13
  %1222 = icmp eq i32 %1221, 0
  br i1 %1222, label %1245, label %1223

1223:                                             ; preds = %1220
  %1224 = load ptr, ptr %20, align 8, !tbaa !8
  %1225 = load ptr, ptr %21, align 8, !tbaa !33
  %1226 = load i32, ptr %23, align 4, !tbaa !34
  %1227 = tail call i32 %1224(ptr noundef %1225, ptr noundef nonnull %22, i32 noundef %1226) #16
  %1228 = load ptr, ptr %17, align 8, !tbaa !16
  %1229 = load ptr, ptr %24, align 8, !tbaa !15
  %1230 = ptrtoint ptr %1228 to i64
  %1231 = ptrtoint ptr %1229 to i64
  %1232 = sub i64 %1230, %1231
  %1233 = trunc i64 %1232 to i32
  %1234 = load i32, ptr %25, align 8, !tbaa !14
  %1235 = add nsw i32 %1234, %1233
  store i32 %1235, ptr %25, align 8, !tbaa !14
  %1236 = icmp eq i32 %1227, 0
  br i1 %1236, label %1237, label %1238

1237:                                             ; preds = %1223
  store i32 0, ptr %19, align 8, !tbaa !13
  store i8 0, ptr %22, align 8, !tbaa !35
  br label %1242

1238:                                             ; preds = %1223
  %1239 = sext i32 %1227 to i64
  %1240 = getelementptr inbounds i8, ptr %22, i64 %1239
  %1241 = load i8, ptr %22, align 1, !tbaa !35
  br label %1242

1242:                                             ; preds = %1238, %1237
  %1243 = phi i8 [ 0, %1237 ], [ %1241, %1238 ]
  %1244 = phi ptr [ %26, %1237 ], [ %1240, %1238 ]
  store ptr %1244, ptr %18, align 8, !tbaa !18
  store ptr %26, ptr %17, align 8, !tbaa !16
  br label %1245

1245:                                             ; preds = %1242, %1220, %1217, %1211
  %1246 = phi i8 [ -1, %1211 ], [ %1219, %1217 ], [ %1243, %1242 ], [ 0, %1220 ]
  %1247 = zext i8 %1246 to i32
  %1248 = or i32 %1109, %1247
  %1249 = getelementptr i8, ptr %1144, i64 3
  store i8 %1246, ptr %1249, align 1, !tbaa !35
  %1250 = add nsw i64 %1108, 4
  %1251 = add nuw nsw i32 %1110, 1
  %1252 = load i32, ptr %0, align 8, !tbaa !24
  %1253 = icmp slt i32 %1251, %1252
  br i1 %1253, label %1107, label %1319, !llvm.loop !235

1254:                                             ; preds = %1308, %1105
  %1255 = phi i64 [ %1106, %1105 ], [ %1313, %1308 ]
  %1256 = phi i32 [ %1096, %1105 ], [ %1310, %1308 ]
  %1257 = phi i32 [ 0, %1105 ], [ %1314, %1308 ]
  %1258 = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) #17
  br i1 %1066, label %1263, label %1259

1259:                                             ; preds = %1254
  %1260 = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) #17
  %1261 = shl nuw i32 %1260, 16
  %1262 = or disjoint i32 %1261, %1258
  br label %1263

1263:                                             ; preds = %1259, %1254
  %1264 = phi i32 [ %1262, %1259 ], [ %1258, %1254 ]
  %1265 = and i32 %1264, %396
  %1266 = shl i32 %1265, %1068
  %1267 = lshr i32 %1265, %1055
  %1268 = select i1 %1067, i32 %1266, i32 %1267
  %1269 = lshr i32 %1268, %1069
  %1270 = load i32, ptr %1071, align 4, !tbaa !4
  %1271 = mul i32 %1269, %1270
  %1272 = load i32, ptr %1072, align 4, !tbaa !4
  %1273 = ashr i32 %1271, %1272
  %1274 = trunc i32 %1273 to i8
  %1275 = getelementptr inbounds i8, ptr %494, i64 %1255
  store i8 %1274, ptr %1275, align 1, !tbaa !35
  %1276 = and i32 %1264, %398
  %1277 = shl i32 %1276, %1074
  %1278 = lshr i32 %1276, %1056
  %1279 = select i1 %1073, i32 %1277, i32 %1278
  %1280 = lshr i32 %1279, %1075
  %1281 = load i32, ptr %1077, align 4, !tbaa !4
  %1282 = mul i32 %1281, %1280
  %1283 = load i32, ptr %1078, align 4, !tbaa !4
  %1284 = ashr i32 %1282, %1283
  %1285 = trunc i32 %1284 to i8
  %1286 = getelementptr i8, ptr %1275, i64 1
  store i8 %1285, ptr %1286, align 1, !tbaa !35
  %1287 = and i32 %1264, %400
  %1288 = shl i32 %1287, %1080
  %1289 = lshr i32 %1287, %1057
  %1290 = select i1 %1079, i32 %1288, i32 %1289
  %1291 = lshr i32 %1290, %1081
  %1292 = load i32, ptr %1083, align 4, !tbaa !4
  %1293 = mul i32 %1292, %1291
  %1294 = load i32, ptr %1084, align 4, !tbaa !4
  %1295 = ashr i32 %1293, %1294
  %1296 = trunc i32 %1295 to i8
  %1297 = getelementptr i8, ptr %1275, i64 2
  store i8 %1296, ptr %1297, align 1, !tbaa !35
  br i1 %1085, label %1308, label %1298

1298:                                             ; preds = %1263
  %1299 = and i32 %1264, %402
  %1300 = shl i32 %1299, %1087
  %1301 = lshr i32 %1299, %1058
  %1302 = select i1 %1086, i32 %1300, i32 %1301
  %1303 = lshr i32 %1302, %1088
  %1304 = load i32, ptr %1090, align 4, !tbaa !4
  %1305 = mul i32 %1304, %1303
  %1306 = load i32, ptr %1091, align 4, !tbaa !4
  %1307 = ashr i32 %1305, %1306
  br label %1308

1308:                                             ; preds = %1298, %1263
  %1309 = phi i32 [ %1307, %1298 ], [ 255, %1263 ]
  %1310 = or i32 %1309, %1256
  %1311 = trunc i32 %1309 to i8
  %1312 = getelementptr i8, ptr %1275, i64 3
  store i8 %1311, ptr %1312, align 1, !tbaa !35
  %1313 = add nsw i64 %1255, 4
  %1314 = add nuw nsw i32 %1257, 1
  %1315 = load i32, ptr %0, align 8, !tbaa !24
  %1316 = icmp slt i32 %1314, %1315
  br i1 %1316, label %1254, label %1317, !llvm.loop !236

1317:                                             ; preds = %1308
  %1318 = trunc nsw i64 %1313 to i32
  br label %1321

1319:                                             ; preds = %1245
  %1320 = trunc nsw i64 %1250 to i32
  br label %1321

1321:                                             ; preds = %1319, %1317, %1104, %1101
  %1322 = phi i32 [ %1318, %1317 ], [ %1097, %1104 ], [ %1097, %1101 ], [ %1320, %1319 ]
  %1323 = phi i32 [ %1310, %1317 ], [ %1096, %1104 ], [ %1096, %1101 ], [ %1248, %1319 ]
  br i1 %1092, label %1344, label %1324

1324:                                             ; preds = %1321
  %1325 = load ptr, ptr %20, align 8, !tbaa !8
  %1326 = icmp eq ptr %1325, null
  br i1 %1326, label %1327, label %1329

1327:                                             ; preds = %1324
  %1328 = load ptr, ptr %17, align 8, !tbaa !16
  br label %1341

1329:                                             ; preds = %1324
  %1330 = load ptr, ptr %18, align 8, !tbaa !18
  %1331 = load ptr, ptr %17, align 8, !tbaa !16
  %1332 = ptrtoint ptr %1330 to i64
  %1333 = ptrtoint ptr %1331 to i64
  %1334 = sub i64 %1332, %1333
  %1335 = trunc i64 %1334 to i32
  %1336 = icmp sgt i32 %1054, %1335
  br i1 %1336, label %1337, label %1341

1337:                                             ; preds = %1329
  store ptr %1330, ptr %17, align 8, !tbaa !16
  %1338 = load ptr, ptr %1093, align 8, !tbaa !36
  %1339 = load ptr, ptr %21, align 8, !tbaa !33
  %1340 = sub nsw i32 %1054, %1335
  tail call void %1338(ptr noundef %1339, i32 noundef %1340) #16
  br label %1344

1341:                                             ; preds = %1329, %1327
  %1342 = phi ptr [ %1328, %1327 ], [ %1331, %1329 ]
  %1343 = getelementptr inbounds nuw i8, ptr %1342, i64 %1094
  store ptr %1343, ptr %17, align 8, !tbaa !16
  br label %1344

1344:                                             ; preds = %1341, %1337, %1321
  %1345 = add nuw nsw i32 %1098, 1
  %1346 = load i32, ptr %386, align 4, !tbaa !25
  %1347 = icmp slt i32 %1345, %1346
  br i1 %1347, label %1095, label %1348, !llvm.loop !237

1348:                                             ; preds = %1344, %973, %827, %1051, %683, %671
  %1349 = phi i32 [ %675, %671 ], [ %689, %683 ], [ %829, %827 ], [ %975, %973 ], [ %1063, %1051 ], [ %1346, %1344 ]
  %1350 = phi i32 [ %403, %671 ], [ %403, %683 ], [ %403, %827 ], [ %403, %973 ], [ %403, %1051 ], [ %1323, %1344 ]
  %1351 = icmp eq i32 %1350, 0
  br i1 %1351, label %1352, label %1393

1352:                                             ; preds = %1348
  %1353 = load i32, ptr %0, align 8, !tbaa !24
  %1354 = shl i32 %1349, 2
  %1355 = mul i32 %1354, %1353
  %1356 = add i32 %1355, -1
  %1357 = icmp sgt i32 %1356, -1
  br i1 %1357, label %1358, label %1393

1358:                                             ; preds = %1352
  %1359 = zext nneg i32 %1356 to i64
  %1360 = lshr i64 %1359, 2
  %1361 = add nuw nsw i64 %1360, 1
  %1362 = and i64 %1361, 7
  %1363 = and i64 %1359, 28
  %1364 = icmp eq i64 %1363, 28
  br i1 %1364, label %1372, label %1365

1365:                                             ; preds = %1358, %1365
  %1366 = phi i64 [ %1369, %1365 ], [ %1359, %1358 ]
  %1367 = phi i64 [ %1370, %1365 ], [ 0, %1358 ]
  %1368 = getelementptr inbounds nuw i8, ptr %494, i64 %1366
  store i8 -1, ptr %1368, align 1, !tbaa !35
  %1369 = add nsw i64 %1366, -4
  %1370 = add i64 %1367, 1
  %1371 = icmp eq i64 %1370, %1362
  br i1 %1371, label %1372, label %1365, !llvm.loop !238

1372:                                             ; preds = %1365, %1358
  %1373 = phi i64 [ %1359, %1358 ], [ %1369, %1365 ]
  %1374 = icmp ult i32 %1356, 28
  br i1 %1374, label %1393, label %1375

1375:                                             ; preds = %1372, %1375
  %1376 = phi i64 [ %1391, %1375 ], [ %1373, %1372 ]
  %1377 = getelementptr inbounds nuw i8, ptr %494, i64 %1376
  store i8 -1, ptr %1377, align 1, !tbaa !35
  %1378 = getelementptr i8, ptr %494, i64 %1376
  %1379 = getelementptr i8, ptr %1378, i64 -4
  store i8 -1, ptr %1379, align 1, !tbaa !35
  %1380 = getelementptr i8, ptr %494, i64 %1376
  %1381 = getelementptr i8, ptr %1380, i64 -8
  store i8 -1, ptr %1381, align 1, !tbaa !35
  %1382 = getelementptr i8, ptr %494, i64 %1376
  %1383 = getelementptr i8, ptr %1382, i64 -12
  store i8 -1, ptr %1383, align 1, !tbaa !35
  %1384 = getelementptr i8, ptr %492, i64 %1376
  store i8 -1, ptr %1384, align 1, !tbaa !35
  %1385 = getelementptr i8, ptr %494, i64 %1376
  %1386 = getelementptr i8, ptr %1385, i64 -20
  store i8 -1, ptr %1386, align 1, !tbaa !35
  %1387 = getelementptr i8, ptr %494, i64 %1376
  %1388 = getelementptr i8, ptr %1387, i64 -24
  store i8 -1, ptr %1388, align 1, !tbaa !35
  %1389 = getelementptr i8, ptr %494, i64 %1376
  %1390 = getelementptr i8, ptr %1389, i64 -28
  store i8 -1, ptr %1390, align 1, !tbaa !35
  %1391 = add nsw i64 %1376, -32
  %1392 = icmp sgt i64 %1376, 31
  br i1 %1392, label %1375, label %1393, !llvm.loop !239

1393:                                             ; preds = %1372, %1375, %1352, %1348
  br i1 %388, label %1396, label %1394

1394:                                             ; preds = %1393
  %1395 = load i32, ptr %0, align 8, !tbaa !24
  br label %1433

1396:                                             ; preds = %1393
  %1397 = load i32, ptr %386, align 4, !tbaa !25
  %1398 = icmp sgt i32 %1397, 1
  %1399 = load i32, ptr %0, align 8, !tbaa !24
  br i1 %1398, label %1400, label %1433

1400:                                             ; preds = %1396, %1427
  %1401 = phi i32 [ %1428, %1427 ], [ %1397, %1396 ]
  %1402 = phi i32 [ %1429, %1427 ], [ %1399, %1396 ]
  %1403 = phi i32 [ %1430, %1427 ], [ 0, %1396 ]
  %1404 = shl i32 %1402, 2
  %1405 = mul i32 %1404, %1403
  %1406 = zext i32 %1405 to i64
  %1407 = getelementptr inbounds nuw i8, ptr %494, i64 %1406
  %1408 = xor i32 %1403, -1
  %1409 = add i32 %1401, %1408
  %1410 = mul i32 %1404, %1409
  %1411 = zext i32 %1410 to i64
  %1412 = getelementptr inbounds nuw i8, ptr %494, i64 %1411
  %1413 = icmp sgt i32 %1402, 0
  br i1 %1413, label %1414, label %1427

1414:                                             ; preds = %1400, %1414
  %1415 = phi i64 [ %1420, %1414 ], [ 0, %1400 ]
  %1416 = getelementptr inbounds nuw i8, ptr %1407, i64 %1415
  %1417 = load i8, ptr %1416, align 1, !tbaa !35
  %1418 = getelementptr inbounds nuw i8, ptr %1412, i64 %1415
  %1419 = load i8, ptr %1418, align 1, !tbaa !35
  store i8 %1419, ptr %1416, align 1, !tbaa !35
  store i8 %1417, ptr %1418, align 1, !tbaa !35
  %1420 = add nuw nsw i64 %1415, 1
  %1421 = load i32, ptr %0, align 8, !tbaa !24
  %1422 = shl nsw i32 %1421, 2
  %1423 = sext i32 %1422 to i64
  %1424 = icmp slt i64 %1420, %1423
  br i1 %1424, label %1414, label %1425, !llvm.loop !240

1425:                                             ; preds = %1414
  %1426 = load i32, ptr %386, align 4, !tbaa !25
  br label %1427

1427:                                             ; preds = %1425, %1400
  %1428 = phi i32 [ %1426, %1425 ], [ %1401, %1400 ]
  %1429 = phi i32 [ %1421, %1425 ], [ %1402, %1400 ]
  %1430 = add nuw nsw i32 %1403, 1
  %1431 = ashr i32 %1428, 1
  %1432 = icmp slt i32 %1430, %1431
  br i1 %1432, label %1400, label %1433, !llvm.loop !241

1433:                                             ; preds = %1427, %1396, %1394
  %1434 = phi i32 [ %1395, %1394 ], [ %1399, %1396 ], [ %1429, %1427 ]
  store i32 %1434, ptr %1, align 4, !tbaa !4
  %1435 = load i32, ptr %386, align 4, !tbaa !25
  store i32 %1435, ptr %2, align 4, !tbaa !4
  %1436 = load i32, ptr %470, align 8, !tbaa !71
  store i32 %1436, ptr %3, align 4, !tbaa !4
  br label %1437

1437:                                             ; preds = %381, %385, %391, %434, %445, %449, %463, %474, %479, %482, %496, %657, %1024, %1031, %1433
  %1438 = phi ptr [ null, %434 ], [ null, %381 ], [ null, %385 ], [ null, %391 ], [ %494, %1433 ], [ null, %474 ], [ null, %1031 ], [ null, %496 ], [ null, %445 ], [ null, %449 ], [ null, %657 ], [ null, %479 ], [ null, %1024 ], [ null, %463 ], [ null, %482 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  br label %4501

1439:                                             ; preds = %372, %377
  %1440 = phi ptr [ %374, %372 ], [ %380, %377 ]
  %1441 = phi ptr [ %373, %372 ], [ %379, %377 ]
  %1442 = icmp ult ptr %1441, %1440
  br i1 %1442, label %1443, label %1446

1443:                                             ; preds = %1439
  %1444 = getelementptr inbounds nuw i8, ptr %1441, i64 1
  store ptr %1444, ptr %17, align 8, !tbaa !16
  %1445 = load i8, ptr %1441, align 1, !tbaa !35
  br label %1471

1446:                                             ; preds = %1439
  %1447 = load i32, ptr %19, align 8, !tbaa !13
  %1448 = icmp eq i32 %1447, 0
  br i1 %1448, label %1645, label %1449

1449:                                             ; preds = %1446
  %1450 = load ptr, ptr %20, align 8, !tbaa !8
  %1451 = load ptr, ptr %21, align 8, !tbaa !33
  %1452 = load i32, ptr %23, align 4, !tbaa !34
  %1453 = tail call i32 %1450(ptr noundef %1451, ptr noundef nonnull %22, i32 noundef %1452) #16
  %1454 = load ptr, ptr %17, align 8, !tbaa !16
  %1455 = load ptr, ptr %24, align 8, !tbaa !15
  %1456 = ptrtoint ptr %1454 to i64
  %1457 = ptrtoint ptr %1455 to i64
  %1458 = sub i64 %1456, %1457
  %1459 = trunc i64 %1458 to i32
  %1460 = load i32, ptr %25, align 8, !tbaa !14
  %1461 = add nsw i32 %1460, %1459
  store i32 %1461, ptr %25, align 8, !tbaa !14
  %1462 = icmp eq i32 %1453, 0
  br i1 %1462, label %1463, label %1464

1463:                                             ; preds = %1449
  store i32 0, ptr %19, align 8, !tbaa !13
  store i8 0, ptr %22, align 8, !tbaa !35
  br label %1468

1464:                                             ; preds = %1449
  %1465 = sext i32 %1453 to i64
  %1466 = getelementptr inbounds i8, ptr %22, i64 %1465
  %1467 = load i8, ptr %22, align 1, !tbaa !35
  br label %1468

1468:                                             ; preds = %1464, %1463
  %1469 = phi i8 [ 0, %1463 ], [ %1467, %1464 ]
  %1470 = phi ptr [ %26, %1463 ], [ %1466, %1464 ]
  store ptr %1470, ptr %18, align 8, !tbaa !18
  store ptr %26, ptr %17, align 8, !tbaa !16
  br label %1471

1471:                                             ; preds = %1468, %1443
  %1472 = phi ptr [ %1441, %1443 ], [ %1455, %1468 ]
  %1473 = phi ptr [ %1440, %1443 ], [ %1470, %1468 ]
  %1474 = phi ptr [ %1444, %1443 ], [ %26, %1468 ]
  %1475 = phi i8 [ %1445, %1443 ], [ %1469, %1468 ]
  %1476 = icmp eq i8 %1475, 71
  br i1 %1476, label %1477, label %1645

1477:                                             ; preds = %1471
  %1478 = icmp ult ptr %1474, %1473
  br i1 %1478, label %1479, label %1482

1479:                                             ; preds = %1477
  %1480 = getelementptr inbounds nuw i8, ptr %1474, i64 1
  store ptr %1480, ptr %17, align 8, !tbaa !16
  %1481 = load i8, ptr %1474, align 1, !tbaa !35
  br label %1507

1482:                                             ; preds = %1477
  %1483 = load i32, ptr %19, align 8, !tbaa !13
  %1484 = icmp eq i32 %1483, 0
  br i1 %1484, label %1645, label %1485

1485:                                             ; preds = %1482
  %1486 = load ptr, ptr %20, align 8, !tbaa !8
  %1487 = load ptr, ptr %21, align 8, !tbaa !33
  %1488 = load i32, ptr %23, align 4, !tbaa !34
  %1489 = tail call i32 %1486(ptr noundef %1487, ptr noundef nonnull %22, i32 noundef %1488) #16
  %1490 = load ptr, ptr %17, align 8, !tbaa !16
  %1491 = load ptr, ptr %24, align 8, !tbaa !15
  %1492 = ptrtoint ptr %1490 to i64
  %1493 = ptrtoint ptr %1491 to i64
  %1494 = sub i64 %1492, %1493
  %1495 = trunc i64 %1494 to i32
  %1496 = load i32, ptr %25, align 8, !tbaa !14
  %1497 = add nsw i32 %1496, %1495
  store i32 %1497, ptr %25, align 8, !tbaa !14
  %1498 = icmp eq i32 %1489, 0
  br i1 %1498, label %1499, label %1500

1499:                                             ; preds = %1485
  store i32 0, ptr %19, align 8, !tbaa !13
  store i8 0, ptr %22, align 8, !tbaa !35
  br label %1504

1500:                                             ; preds = %1485
  %1501 = sext i32 %1489 to i64
  %1502 = getelementptr inbounds i8, ptr %22, i64 %1501
  %1503 = load i8, ptr %22, align 1, !tbaa !35
  br label %1504

1504:                                             ; preds = %1500, %1499
  %1505 = phi i8 [ 0, %1499 ], [ %1503, %1500 ]
  %1506 = phi ptr [ %26, %1499 ], [ %1502, %1500 ]
  store ptr %1506, ptr %18, align 8, !tbaa !18
  store ptr %26, ptr %17, align 8, !tbaa !16
  br label %1507

1507:                                             ; preds = %1504, %1479
  %1508 = phi ptr [ %1472, %1479 ], [ %1491, %1504 ]
  %1509 = phi ptr [ %1473, %1479 ], [ %1506, %1504 ]
  %1510 = phi ptr [ %1480, %1479 ], [ %26, %1504 ]
  %1511 = phi i8 [ %1481, %1479 ], [ %1505, %1504 ]
  %1512 = icmp eq i8 %1511, 73
  br i1 %1512, label %1513, label %1645

1513:                                             ; preds = %1507
  %1514 = icmp ult ptr %1510, %1509
  br i1 %1514, label %1515, label %1518

1515:                                             ; preds = %1513
  %1516 = getelementptr inbounds nuw i8, ptr %1510, i64 1
  store ptr %1516, ptr %17, align 8, !tbaa !16
  %1517 = load i8, ptr %1510, align 1, !tbaa !35
  br label %1543

1518:                                             ; preds = %1513
  %1519 = load i32, ptr %19, align 8, !tbaa !13
  %1520 = icmp eq i32 %1519, 0
  br i1 %1520, label %1645, label %1521

1521:                                             ; preds = %1518
  %1522 = load ptr, ptr %20, align 8, !tbaa !8
  %1523 = load ptr, ptr %21, align 8, !tbaa !33
  %1524 = load i32, ptr %23, align 4, !tbaa !34
  %1525 = tail call i32 %1522(ptr noundef %1523, ptr noundef nonnull %22, i32 noundef %1524) #16
  %1526 = load ptr, ptr %17, align 8, !tbaa !16
  %1527 = load ptr, ptr %24, align 8, !tbaa !15
  %1528 = ptrtoint ptr %1526 to i64
  %1529 = ptrtoint ptr %1527 to i64
  %1530 = sub i64 %1528, %1529
  %1531 = trunc i64 %1530 to i32
  %1532 = load i32, ptr %25, align 8, !tbaa !14
  %1533 = add nsw i32 %1532, %1531
  store i32 %1533, ptr %25, align 8, !tbaa !14
  %1534 = icmp eq i32 %1525, 0
  br i1 %1534, label %1535, label %1536

1535:                                             ; preds = %1521
  store i32 0, ptr %19, align 8, !tbaa !13
  store i8 0, ptr %22, align 8, !tbaa !35
  br label %1540

1536:                                             ; preds = %1521
  %1537 = sext i32 %1525 to i64
  %1538 = getelementptr inbounds i8, ptr %22, i64 %1537
  %1539 = load i8, ptr %22, align 1, !tbaa !35
  br label %1540

1540:                                             ; preds = %1536, %1535
  %1541 = phi i8 [ 0, %1535 ], [ %1539, %1536 ]
  %1542 = phi ptr [ %26, %1535 ], [ %1538, %1536 ]
  store ptr %1542, ptr %18, align 8, !tbaa !18
  store ptr %26, ptr %17, align 8, !tbaa !16
  br label %1543

1543:                                             ; preds = %1540, %1515
  %1544 = phi ptr [ %1508, %1515 ], [ %1527, %1540 ]
  %1545 = phi ptr [ %1509, %1515 ], [ %1542, %1540 ]
  %1546 = phi ptr [ %1516, %1515 ], [ %26, %1540 ]
  %1547 = phi i8 [ %1517, %1515 ], [ %1541, %1540 ]
  %1548 = icmp eq i8 %1547, 70
  br i1 %1548, label %1549, label %1645

1549:                                             ; preds = %1543
  %1550 = icmp ult ptr %1546, %1545
  br i1 %1550, label %1551, label %1554

1551:                                             ; preds = %1549
  %1552 = getelementptr inbounds nuw i8, ptr %1546, i64 1
  store ptr %1552, ptr %17, align 8, !tbaa !16
  %1553 = load i8, ptr %1546, align 1, !tbaa !35
  br label %1579

1554:                                             ; preds = %1549
  %1555 = load i32, ptr %19, align 8, !tbaa !13
  %1556 = icmp eq i32 %1555, 0
  br i1 %1556, label %1645, label %1557

1557:                                             ; preds = %1554
  %1558 = load ptr, ptr %20, align 8, !tbaa !8
  %1559 = load ptr, ptr %21, align 8, !tbaa !33
  %1560 = load i32, ptr %23, align 4, !tbaa !34
  %1561 = tail call i32 %1558(ptr noundef %1559, ptr noundef nonnull %22, i32 noundef %1560) #16
  %1562 = load ptr, ptr %17, align 8, !tbaa !16
  %1563 = load ptr, ptr %24, align 8, !tbaa !15
  %1564 = ptrtoint ptr %1562 to i64
  %1565 = ptrtoint ptr %1563 to i64
  %1566 = sub i64 %1564, %1565
  %1567 = trunc i64 %1566 to i32
  %1568 = load i32, ptr %25, align 8, !tbaa !14
  %1569 = add nsw i32 %1568, %1567
  store i32 %1569, ptr %25, align 8, !tbaa !14
  %1570 = icmp eq i32 %1561, 0
  br i1 %1570, label %1571, label %1572

1571:                                             ; preds = %1557
  store i32 0, ptr %19, align 8, !tbaa !13
  store i8 0, ptr %22, align 8, !tbaa !35
  br label %1576

1572:                                             ; preds = %1557
  %1573 = sext i32 %1561 to i64
  %1574 = getelementptr inbounds i8, ptr %22, i64 %1573
  %1575 = load i8, ptr %22, align 1, !tbaa !35
  br label %1576

1576:                                             ; preds = %1572, %1571
  %1577 = phi i8 [ 0, %1571 ], [ %1575, %1572 ]
  %1578 = phi ptr [ %26, %1571 ], [ %1574, %1572 ]
  store ptr %1578, ptr %18, align 8, !tbaa !18
  store ptr %26, ptr %17, align 8, !tbaa !16
  br label %1579

1579:                                             ; preds = %1576, %1551
  %1580 = phi ptr [ %1544, %1551 ], [ %1563, %1576 ]
  %1581 = phi ptr [ %1545, %1551 ], [ %1578, %1576 ]
  %1582 = phi ptr [ %1552, %1551 ], [ %26, %1576 ]
  %1583 = phi i8 [ %1553, %1551 ], [ %1577, %1576 ]
  %1584 = icmp eq i8 %1583, 56
  br i1 %1584, label %1585, label %1645

1585:                                             ; preds = %1579
  %1586 = icmp ult ptr %1582, %1581
  br i1 %1586, label %1587, label %1590

1587:                                             ; preds = %1585
  %1588 = getelementptr inbounds nuw i8, ptr %1582, i64 1
  store ptr %1588, ptr %17, align 8, !tbaa !16
  %1589 = load i8, ptr %1582, align 1, !tbaa !35
  br label %1615

1590:                                             ; preds = %1585
  %1591 = load i32, ptr %19, align 8, !tbaa !13
  %1592 = icmp eq i32 %1591, 0
  br i1 %1592, label %1645, label %1593

1593:                                             ; preds = %1590
  %1594 = load ptr, ptr %20, align 8, !tbaa !8
  %1595 = load ptr, ptr %21, align 8, !tbaa !33
  %1596 = load i32, ptr %23, align 4, !tbaa !34
  %1597 = tail call i32 %1594(ptr noundef %1595, ptr noundef nonnull %22, i32 noundef %1596) #16
  %1598 = load ptr, ptr %17, align 8, !tbaa !16
  %1599 = load ptr, ptr %24, align 8, !tbaa !15
  %1600 = ptrtoint ptr %1598 to i64
  %1601 = ptrtoint ptr %1599 to i64
  %1602 = sub i64 %1600, %1601
  %1603 = trunc i64 %1602 to i32
  %1604 = load i32, ptr %25, align 8, !tbaa !14
  %1605 = add nsw i32 %1604, %1603
  store i32 %1605, ptr %25, align 8, !tbaa !14
  %1606 = icmp eq i32 %1597, 0
  br i1 %1606, label %1607, label %1608

1607:                                             ; preds = %1593
  store i32 0, ptr %19, align 8, !tbaa !13
  store i8 0, ptr %22, align 8, !tbaa !35
  br label %1612

1608:                                             ; preds = %1593
  %1609 = sext i32 %1597 to i64
  %1610 = getelementptr inbounds i8, ptr %22, i64 %1609
  %1611 = load i8, ptr %22, align 1, !tbaa !35
  br label %1612

1612:                                             ; preds = %1608, %1607
  %1613 = phi i8 [ 0, %1607 ], [ %1611, %1608 ]
  %1614 = phi ptr [ %26, %1607 ], [ %1610, %1608 ]
  store ptr %1614, ptr %18, align 8, !tbaa !18
  store ptr %26, ptr %17, align 8, !tbaa !16
  br label %1615

1615:                                             ; preds = %1612, %1587
  %1616 = phi ptr [ %1580, %1587 ], [ %1599, %1612 ]
  %1617 = phi ptr [ %1581, %1587 ], [ %1614, %1612 ]
  %1618 = phi ptr [ %1588, %1587 ], [ %26, %1612 ]
  %1619 = phi i8 [ %1589, %1587 ], [ %1613, %1612 ]
  switch i8 %1619, label %1645 [
    i8 57, label %1620
    i8 55, label %1620
  ]

1620:                                             ; preds = %1615, %1615
  %1621 = icmp ult ptr %1618, %1617
  br i1 %1621, label %1622, label %1625

1622:                                             ; preds = %1620
  %1623 = getelementptr inbounds nuw i8, ptr %1618, i64 1
  store ptr %1623, ptr %17, align 8, !tbaa !16
  %1624 = load i8, ptr %1618, align 1, !tbaa !35
  br label %1648

1625:                                             ; preds = %1620
  %1626 = load i32, ptr %19, align 8, !tbaa !13
  %1627 = icmp eq i32 %1626, 0
  br i1 %1627, label %1645, label %1628

1628:                                             ; preds = %1625
  %1629 = load ptr, ptr %20, align 8, !tbaa !8
  %1630 = load ptr, ptr %21, align 8, !tbaa !33
  %1631 = load i32, ptr %23, align 4, !tbaa !34
  %1632 = tail call i32 %1629(ptr noundef %1630, ptr noundef nonnull %22, i32 noundef %1631) #16
  %1633 = load ptr, ptr %17, align 8, !tbaa !16
  %1634 = load ptr, ptr %24, align 8, !tbaa !15
  %1635 = ptrtoint ptr %1633 to i64
  %1636 = ptrtoint ptr %1634 to i64
  %1637 = sub i64 %1635, %1636
  %1638 = trunc i64 %1637 to i32
  %1639 = load i32, ptr %25, align 8, !tbaa !14
  %1640 = add nsw i32 %1639, %1638
  store i32 %1640, ptr %25, align 8, !tbaa !14
  %1641 = icmp eq i32 %1632, 0
  br i1 %1641, label %1642, label %1643

1642:                                             ; preds = %1628
  store i32 0, ptr %19, align 8, !tbaa !13
  store i8 0, ptr %22, align 8, !tbaa !35
  br label %1648

1643:                                             ; preds = %1628
  %1644 = load i8, ptr %22, align 1, !tbaa !35
  br label %1648

1645:                                             ; preds = %1615, %1471, %1554, %1579, %1543, %1507, %1590, %1446, %1482, %1518, %1625
  %1646 = phi ptr [ %1616, %1615 ], [ %1472, %1471 ], [ %1544, %1554 ], [ %1580, %1579 ], [ %1544, %1543 ], [ %1508, %1507 ], [ %1580, %1590 ], [ %1441, %1446 ], [ %1472, %1482 ], [ %1508, %1518 ], [ %1616, %1625 ]
  store ptr %1646, ptr %17, align 8, !tbaa !16
  %1647 = load ptr, ptr %290, align 8, !tbaa !17
  store ptr %1647, ptr %18, align 8, !tbaa !18
  br label %2536

1648:                                             ; preds = %1642, %1643, %1622
  %1649 = phi ptr [ %1616, %1622 ], [ %1634, %1643 ], [ %1634, %1642 ]
  %1650 = phi i8 [ %1624, %1622 ], [ %1644, %1643 ], [ 0, %1642 ]
  %1651 = freeze i8 %1650
  %1652 = icmp eq i8 %1651, 97
  store ptr %1649, ptr %17, align 8, !tbaa !16
  %1653 = load ptr, ptr %290, align 8, !tbaa !17
  store ptr %1653, ptr %18, align 8, !tbaa !18
  br i1 %1652, label %1654, label %2536

1654:                                             ; preds = %1648
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  %1655 = call ptr @memset(ptr noundef nonnull %10, i32 noundef 0, i64 noundef 34928) #16
  %1656 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %1657 = load ptr, ptr %1656, align 8, !tbaa !242
  %1658 = icmp eq ptr %1657, null
  br i1 %1658, label %1659, label %1728

1659:                                             ; preds = %1654
  %1660 = call fastcc i32 @stbi__gif_header(ptr noundef nonnull %0, ptr noundef nonnull %10, ptr noundef nonnull %3, i32 noundef 0) #17
  %1661 = icmp eq i32 %1660, 0
  br i1 %1661, label %2534, label %1662

1662:                                             ; preds = %1659
  %1663 = load i32, ptr %10, align 8, !tbaa !28
  %1664 = getelementptr inbounds nuw i8, ptr %10, i64 4
  %1665 = load i32, ptr %1664, align 4, !tbaa !30
  %1666 = icmp ugt i32 %1663, 536870911
  br i1 %1666, label %2534, label %1667

1667:                                             ; preds = %1662
  %1668 = shl nuw nsw i32 %1663, 2
  %1669 = icmp sgt i32 %1665, -1
  br i1 %1669, label %1670, label %2534

1670:                                             ; preds = %1667
  %1671 = icmp eq i32 %1665, 0
  br i1 %1671, label %1675, label %1672

1672:                                             ; preds = %1670
  %1673 = udiv i32 2147483647, %1665
  %1674 = icmp samesign ugt i32 %1668, %1673
  br i1 %1674, label %2534, label %1675

1675:                                             ; preds = %1672, %1670
  %1676 = mul nuw nsw i32 %1665, %1663
  %1677 = shl nsw i32 %1676, 2
  %1678 = zext nneg i32 %1677 to i64
  %1679 = add nuw nsw i64 %1678, 15
  %1680 = and i64 %1679, 4294967280
  %1681 = add nuw nsw i64 %1680, 16
  %1682 = load i64, ptr @arena_used, align 8, !tbaa !19
  %1683 = sub i64 100663296, %1682
  %1684 = icmp ugt i64 %1681, %1683
  br i1 %1684, label %1690, label %1685

1685:                                             ; preds = %1675
  %1686 = getelementptr inbounds nuw i8, ptr @arena, i64 %1682
  %1687 = add i64 %1682, %1681
  store i64 %1687, ptr @arena_used, align 8, !tbaa !19
  store i64 %1678, ptr %1686, align 8, !tbaa !19
  %1688 = getelementptr inbounds nuw i8, ptr %1686, i64 16
  %1689 = sub i64 100663296, %1687
  br label %1690

1690:                                             ; preds = %1685, %1675
  %1691 = phi i64 [ %1683, %1675 ], [ %1689, %1685 ]
  %1692 = phi i64 [ %1682, %1675 ], [ %1687, %1685 ]
  %1693 = phi ptr [ null, %1675 ], [ %1688, %1685 ]
  store ptr %1693, ptr %1656, align 8, !tbaa !242
  %1694 = icmp ugt i64 %1681, %1691
  br i1 %1694, label %1700, label %1695

1695:                                             ; preds = %1690
  %1696 = getelementptr inbounds nuw i8, ptr @arena, i64 %1692
  %1697 = add i64 %1692, %1681
  store i64 %1697, ptr @arena_used, align 8, !tbaa !19
  store i64 %1678, ptr %1696, align 8, !tbaa !19
  %1698 = getelementptr inbounds nuw i8, ptr %1696, i64 16
  %1699 = sub i64 100663296, %1697
  br label %1700

1700:                                             ; preds = %1695, %1690
  %1701 = phi i64 [ %1691, %1690 ], [ %1699, %1695 ]
  %1702 = phi i64 [ %1692, %1690 ], [ %1697, %1695 ]
  %1703 = phi ptr [ null, %1690 ], [ %1698, %1695 ]
  %1704 = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %1703, ptr %1704, align 8, !tbaa !243
  %1705 = zext nneg i32 %1676 to i64
  %1706 = add nuw nsw i64 %1705, 15
  %1707 = and i64 %1706, 4294967280
  %1708 = add nuw nsw i64 %1707, 16
  %1709 = icmp ugt i64 %1708, %1701
  br i1 %1709, label %1714, label %1710

1710:                                             ; preds = %1700
  %1711 = getelementptr inbounds nuw i8, ptr @arena, i64 %1702
  %1712 = add i64 %1702, %1708
  store i64 %1712, ptr @arena_used, align 8, !tbaa !19
  store i64 %1705, ptr %1711, align 8, !tbaa !19
  %1713 = getelementptr inbounds nuw i8, ptr %1711, i64 16
  br label %1714

1714:                                             ; preds = %1710, %1700
  %1715 = phi ptr [ %1713, %1710 ], [ null, %1700 ]
  %1716 = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %1715, ptr %1716, align 8, !tbaa !244
  %1717 = icmp eq ptr %1693, null
  br i1 %1717, label %2534, label %1718

1718:                                             ; preds = %1714
  %1719 = icmp eq ptr %1703, null
  %1720 = icmp eq ptr %1715, null
  %1721 = select i1 %1719, i1 true, i1 %1720
  br i1 %1721, label %2534, label %1722

1722:                                             ; preds = %1718
  %1723 = call ptr @memset(ptr noundef nonnull %1693, i32 noundef 0, i64 noundef %1678) #16
  %1724 = load ptr, ptr %1704, align 8, !tbaa !243
  %1725 = call ptr @memset(ptr noundef %1724, i32 noundef 0, i64 noundef %1678) #16
  %1726 = load ptr, ptr %1716, align 8, !tbaa !244
  %1727 = call ptr @memset(ptr noundef %1726, i32 noundef 0, i64 noundef %1705) #16
  br label %1773

1728:                                             ; preds = %1654
  %1729 = load i32, ptr %10, align 8, !tbaa !28
  %1730 = getelementptr inbounds nuw i8, ptr %10, i64 4
  %1731 = load i32, ptr %1730, align 4, !tbaa !30
  %1732 = mul i32 %1731, %1729
  %1733 = getelementptr inbounds nuw i8, ptr %10, i64 48
  %1734 = load i32, ptr %1733, align 8, !tbaa !245
  %1735 = and i32 %1734, 24
  %1736 = icmp eq i32 %1735, 8
  %1737 = icmp sgt i32 %1732, 0
  %1738 = select i1 %1736, i1 %1737, i1 false
  br i1 %1738, label %1739, label %1763

1739:                                             ; preds = %1728
  %1740 = getelementptr inbounds nuw i8, ptr %10, i64 24
  %1741 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %1742 = zext nneg i32 %1732 to i64
  br label %1743

1743:                                             ; preds = %1756, %1739
  %1744 = phi i64 [ 0, %1739 ], [ %1757, %1756 ]
  %1745 = load ptr, ptr %1740, align 8, !tbaa !244
  %1746 = getelementptr inbounds nuw i8, ptr %1745, i64 %1744
  %1747 = load i8, ptr %1746, align 1, !tbaa !35
  %1748 = icmp eq i8 %1747, 0
  br i1 %1748, label %1756, label %1749

1749:                                             ; preds = %1743
  %1750 = load ptr, ptr %1656, align 8, !tbaa !242
  %1751 = shl nsw i64 %1744, 2
  %1752 = getelementptr inbounds nuw i8, ptr %1750, i64 %1751
  %1753 = load ptr, ptr %1741, align 8, !tbaa !243
  %1754 = getelementptr inbounds nuw i8, ptr %1753, i64 %1751
  %1755 = call ptr @memcpy(ptr noundef %1752, ptr noundef %1754, i64 noundef 4) #16
  br label %1756

1756:                                             ; preds = %1749, %1743
  %1757 = add nuw nsw i64 %1744, 1
  %1758 = icmp eq i64 %1757, %1742
  br i1 %1758, label %1759, label %1743, !llvm.loop !246

1759:                                             ; preds = %1756
  %1760 = load ptr, ptr %1656, align 8, !tbaa !242
  %1761 = load i32, ptr %10, align 8, !tbaa !28
  %1762 = load i32, ptr %1730, align 4, !tbaa !30
  br label %1763

1763:                                             ; preds = %1759, %1728
  %1764 = phi i32 [ %1762, %1759 ], [ %1731, %1728 ]
  %1765 = phi i32 [ %1761, %1759 ], [ %1729, %1728 ]
  %1766 = phi ptr [ %1760, %1759 ], [ %1657, %1728 ]
  %1767 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %1768 = load ptr, ptr %1767, align 8, !tbaa !243
  %1769 = shl i32 %1764, 2
  %1770 = mul i32 %1769, %1765
  %1771 = sext i32 %1770 to i64
  %1772 = call ptr @memcpy(ptr noundef %1768, ptr noundef %1766, i64 noundef %1771) #16
  br label %1773

1773:                                             ; preds = %1763, %1722
  %1774 = getelementptr inbounds nuw i8, ptr %10, i64 24
  %1775 = load ptr, ptr %1774, align 8, !tbaa !244
  %1776 = load i32, ptr %10, align 8, !tbaa !28
  %1777 = getelementptr inbounds nuw i8, ptr %10, i64 4
  %1778 = load i32, ptr %1777, align 4, !tbaa !30
  %1779 = mul nsw i32 %1778, %1776
  %1780 = sext i32 %1779 to i64
  %1781 = call ptr @memset(ptr noundef %1775, i32 noundef 0, i64 noundef %1780) #16
  %1782 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %1783 = getelementptr inbounds nuw i8, ptr %10, i64 48
  %1784 = getelementptr inbounds nuw i8, ptr %10, i64 34920
  %1785 = getelementptr inbounds nuw i8, ptr %10, i64 44
  br label %1786

1786:                                             ; preds = %2473, %1773
  %1787 = load ptr, ptr %17, align 8, !tbaa !16
  %1788 = load ptr, ptr %18, align 8, !tbaa !18
  %1789 = icmp ult ptr %1787, %1788
  br i1 %1789, label %1790, label %1793

1790:                                             ; preds = %1786
  %1791 = getelementptr inbounds nuw i8, ptr %1787, i64 1
  store ptr %1791, ptr %17, align 8, !tbaa !16
  %1792 = load i8, ptr %1787, align 1, !tbaa !35
  br label %1818

1793:                                             ; preds = %1786
  %1794 = load i32, ptr %19, align 8, !tbaa !13
  %1795 = icmp eq i32 %1794, 0
  br i1 %1795, label %2534, label %1796

1796:                                             ; preds = %1793
  %1797 = load ptr, ptr %20, align 8, !tbaa !8
  %1798 = load ptr, ptr %21, align 8, !tbaa !33
  %1799 = load i32, ptr %23, align 4, !tbaa !34
  %1800 = call i32 %1797(ptr noundef %1798, ptr noundef nonnull %22, i32 noundef %1799) #16
  %1801 = load ptr, ptr %17, align 8, !tbaa !16
  %1802 = load ptr, ptr %24, align 8, !tbaa !15
  %1803 = ptrtoint ptr %1801 to i64
  %1804 = ptrtoint ptr %1802 to i64
  %1805 = sub i64 %1803, %1804
  %1806 = trunc i64 %1805 to i32
  %1807 = load i32, ptr %25, align 8, !tbaa !14
  %1808 = add nsw i32 %1807, %1806
  store i32 %1808, ptr %25, align 8, !tbaa !14
  %1809 = icmp eq i32 %1800, 0
  br i1 %1809, label %1810, label %1811

1810:                                             ; preds = %1796
  store i32 0, ptr %19, align 8, !tbaa !13
  store i8 0, ptr %22, align 8, !tbaa !35
  br label %1815

1811:                                             ; preds = %1796
  %1812 = sext i32 %1800 to i64
  %1813 = getelementptr inbounds i8, ptr %22, i64 %1812
  %1814 = load i8, ptr %22, align 1, !tbaa !35
  br label %1815

1815:                                             ; preds = %1811, %1810
  %1816 = phi i8 [ 0, %1810 ], [ %1814, %1811 ]
  %1817 = phi ptr [ %26, %1810 ], [ %1813, %1811 ]
  store ptr %1817, ptr %18, align 8, !tbaa !18
  store ptr %26, ptr %17, align 8, !tbaa !16
  br label %1818

1818:                                             ; preds = %1815, %1790
  %1819 = phi ptr [ %1788, %1790 ], [ %1817, %1815 ]
  %1820 = phi ptr [ %1791, %1790 ], [ %26, %1815 ]
  %1821 = phi i8 [ %1792, %1790 ], [ %1816, %1815 ]
  switch i8 %1821, label %2534 [
    i8 44, label %1822
    i8 33, label %2279
  ]

1822:                                             ; preds = %1818
  %1823 = call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) #17
  %1824 = call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) #17
  %1825 = call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) #17
  %1826 = call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) #17
  %1827 = add nuw nsw i32 %1825, %1823
  %1828 = load i32, ptr %10, align 8, !tbaa !28
  %1829 = icmp sgt i32 %1827, %1828
  br i1 %1829, label %2534, label %1830

1830:                                             ; preds = %1822
  %1831 = add nuw nsw i32 %1826, %1824
  %1832 = load i32, ptr %1777, align 4, !tbaa !30
  %1833 = icmp sgt i32 %1831, %1832
  br i1 %1833, label %2534, label %1834

1834:                                             ; preds = %1830
  %1835 = shl nsw i32 %1828, 2
  %1836 = getelementptr inbounds nuw i8, ptr %10, i64 34916
  store i32 %1835, ptr %1836, align 4, !tbaa !247
  %1837 = shl nuw nsw i32 %1823, 2
  %1838 = getelementptr inbounds nuw i8, ptr %10, i64 34892
  store i32 %1837, ptr %1838, align 4, !tbaa !248
  %1839 = mul nsw i32 %1835, %1824
  %1840 = getelementptr inbounds nuw i8, ptr %10, i64 34896
  store i32 %1839, ptr %1840, align 8, !tbaa !249
  %1841 = shl nuw nsw i32 %1827, 2
  %1842 = getelementptr inbounds nuw i8, ptr %10, i64 34900
  store i32 %1841, ptr %1842, align 4, !tbaa !250
  %1843 = mul i32 %1835, %1831
  %1844 = getelementptr inbounds nuw i8, ptr %10, i64 34904
  store i32 %1843, ptr %1844, align 8, !tbaa !251
  %1845 = getelementptr inbounds nuw i8, ptr %10, i64 34908
  store i32 %1837, ptr %1845, align 4, !tbaa !252
  %1846 = getelementptr inbounds nuw i8, ptr %10, i64 34912
  %1847 = icmp eq i32 %1825, 0
  %1848 = select i1 %1847, i32 %1843, i32 %1839
  store i32 %1848, ptr %1846, align 8
  %1849 = load ptr, ptr %17, align 8, !tbaa !16
  %1850 = load ptr, ptr %18, align 8, !tbaa !18
  %1851 = icmp ult ptr %1849, %1850
  br i1 %1851, label %1852, label %1855

1852:                                             ; preds = %1834
  %1853 = getelementptr inbounds nuw i8, ptr %1849, i64 1
  store ptr %1853, ptr %17, align 8, !tbaa !16
  %1854 = load i8, ptr %1849, align 1, !tbaa !35
  br label %1885

1855:                                             ; preds = %1834
  %1856 = load i32, ptr %19, align 8, !tbaa !13
  %1857 = icmp eq i32 %1856, 0
  br i1 %1857, label %1858, label %1862

1858:                                             ; preds = %1855
  %1859 = getelementptr inbounds nuw i8, ptr %10, i64 34888
  store i32 0, ptr %1859, align 8, !tbaa !253
  %1860 = getelementptr inbounds nuw i8, ptr %10, i64 34884
  store i32 %1835, ptr %1860, align 4, !tbaa !254
  %1861 = getelementptr inbounds nuw i8, ptr %10, i64 34880
  store i32 0, ptr %1861, align 8, !tbaa !255
  br label %1912

1862:                                             ; preds = %1855
  %1863 = load ptr, ptr %20, align 8, !tbaa !8
  %1864 = load ptr, ptr %21, align 8, !tbaa !33
  %1865 = load i32, ptr %23, align 4, !tbaa !34
  %1866 = call i32 %1863(ptr noundef %1864, ptr noundef nonnull %22, i32 noundef %1865) #16
  %1867 = load ptr, ptr %17, align 8, !tbaa !16
  %1868 = load ptr, ptr %24, align 8, !tbaa !15
  %1869 = ptrtoint ptr %1867 to i64
  %1870 = ptrtoint ptr %1868 to i64
  %1871 = sub i64 %1869, %1870
  %1872 = trunc i64 %1871 to i32
  %1873 = load i32, ptr %25, align 8, !tbaa !14
  %1874 = add nsw i32 %1873, %1872
  store i32 %1874, ptr %25, align 8, !tbaa !14
  %1875 = icmp eq i32 %1866, 0
  br i1 %1875, label %1876, label %1877

1876:                                             ; preds = %1862
  store i32 0, ptr %19, align 8, !tbaa !13
  store i8 0, ptr %22, align 8, !tbaa !35
  br label %1881

1877:                                             ; preds = %1862
  %1878 = sext i32 %1866 to i64
  %1879 = getelementptr inbounds i8, ptr %22, i64 %1878
  %1880 = load i8, ptr %22, align 1, !tbaa !35
  br label %1881

1881:                                             ; preds = %1877, %1876
  %1882 = phi i8 [ 0, %1876 ], [ %1880, %1877 ]
  %1883 = phi ptr [ %26, %1876 ], [ %1879, %1877 ]
  store ptr %1883, ptr %18, align 8, !tbaa !18
  store ptr %26, ptr %17, align 8, !tbaa !16
  %1884 = load i32, ptr %1836, align 4, !tbaa !247
  br label %1885

1885:                                             ; preds = %1881, %1852
  %1886 = phi i32 [ %1835, %1852 ], [ %1884, %1881 ]
  %1887 = phi ptr [ %1850, %1852 ], [ %1883, %1881 ]
  %1888 = phi ptr [ %1853, %1852 ], [ %26, %1881 ]
  %1889 = phi i8 [ %1854, %1852 ], [ %1882, %1881 ]
  %1890 = zext i8 %1889 to i32
  %1891 = getelementptr inbounds nuw i8, ptr %10, i64 34888
  store i32 %1890, ptr %1891, align 8, !tbaa !253
  %1892 = and i32 %1890, 64
  %1893 = icmp eq i32 %1892, 0
  %1894 = shl nsw i32 %1886, 3
  %1895 = select i1 %1893, i32 %1886, i32 %1894
  %1896 = select i1 %1893, i32 0, i32 3
  %1897 = getelementptr inbounds nuw i8, ptr %10, i64 34884
  store i32 %1895, ptr %1897, align 4, !tbaa !254
  %1898 = getelementptr inbounds nuw i8, ptr %10, i64 34880
  store i32 %1896, ptr %1898, align 8, !tbaa !255
  %1899 = icmp sgt i8 %1889, -1
  br i1 %1899, label %1912, label %1900

1900:                                             ; preds = %1885
  %1901 = getelementptr inbounds nuw i8, ptr %10, i64 1076
  %1902 = and i32 %1890, 7
  %1903 = shl nuw nsw i32 2, %1902
  %1904 = load i32, ptr %1783, align 8, !tbaa !245
  %1905 = and i32 %1904, 1
  %1906 = icmp eq i32 %1905, 0
  %1907 = load i32, ptr %1785, align 4
  %1908 = select i1 %1906, i32 -1, i32 %1907
  call fastcc void @stbi__gif_parse_colortable(ptr noundef nonnull %0, ptr noundef %1901, i32 noundef %1903, i32 noundef %1908) #17
  %1909 = getelementptr inbounds nuw i8, ptr %10, i64 34872
  store ptr %1901, ptr %1909, align 8, !tbaa !256
  %1910 = load ptr, ptr %17, align 8, !tbaa !16
  %1911 = load ptr, ptr %18, align 8, !tbaa !18
  br label %1922

1912:                                             ; preds = %1885, %1858
  %1913 = phi ptr [ %1849, %1858 ], [ %1888, %1885 ]
  %1914 = phi ptr [ %1850, %1858 ], [ %1887, %1885 ]
  %1915 = getelementptr inbounds nuw i8, ptr %10, i64 32
  %1916 = load i32, ptr %1915, align 8, !tbaa !210
  %1917 = and i32 %1916, 128
  %1918 = icmp eq i32 %1917, 0
  br i1 %1918, label %2534, label %1919

1919:                                             ; preds = %1912
  %1920 = getelementptr inbounds nuw i8, ptr %10, i64 52
  %1921 = getelementptr inbounds nuw i8, ptr %10, i64 34872
  store ptr %1920, ptr %1921, align 8, !tbaa !256
  br label %1922

1922:                                             ; preds = %1919, %1900
  %1923 = phi ptr [ %1914, %1919 ], [ %1911, %1900 ]
  %1924 = phi ptr [ %1913, %1919 ], [ %1910, %1900 ]
  %1925 = icmp ult ptr %1924, %1923
  br i1 %1925, label %1926, label %1929

1926:                                             ; preds = %1922
  %1927 = getelementptr inbounds nuw i8, ptr %1924, i64 1
  store ptr %1927, ptr %17, align 8, !tbaa !16
  %1928 = load i8, ptr %1924, align 1, !tbaa !35
  br label %1954

1929:                                             ; preds = %1922
  %1930 = load i32, ptr %19, align 8, !tbaa !13
  %1931 = icmp eq i32 %1930, 0
  br i1 %1931, label %1957, label %1932

1932:                                             ; preds = %1929
  %1933 = load ptr, ptr %20, align 8, !tbaa !8
  %1934 = load ptr, ptr %21, align 8, !tbaa !33
  %1935 = load i32, ptr %23, align 4, !tbaa !34
  %1936 = call i32 %1933(ptr noundef %1934, ptr noundef nonnull %22, i32 noundef %1935) #16
  %1937 = load ptr, ptr %17, align 8, !tbaa !16
  %1938 = load ptr, ptr %24, align 8, !tbaa !15
  %1939 = ptrtoint ptr %1937 to i64
  %1940 = ptrtoint ptr %1938 to i64
  %1941 = sub i64 %1939, %1940
  %1942 = trunc i64 %1941 to i32
  %1943 = load i32, ptr %25, align 8, !tbaa !14
  %1944 = add nsw i32 %1943, %1942
  store i32 %1944, ptr %25, align 8, !tbaa !14
  %1945 = icmp eq i32 %1936, 0
  br i1 %1945, label %1946, label %1947

1946:                                             ; preds = %1932
  store i32 0, ptr %19, align 8, !tbaa !13
  store i8 0, ptr %22, align 8, !tbaa !35
  br label %1951

1947:                                             ; preds = %1932
  %1948 = sext i32 %1936 to i64
  %1949 = getelementptr inbounds i8, ptr %22, i64 %1948
  %1950 = load i8, ptr %22, align 1, !tbaa !35
  br label %1951

1951:                                             ; preds = %1947, %1946
  %1952 = phi i8 [ 0, %1946 ], [ %1950, %1947 ]
  %1953 = phi ptr [ %26, %1946 ], [ %1949, %1947 ]
  store ptr %1953, ptr %18, align 8, !tbaa !18
  store ptr %26, ptr %17, align 8, !tbaa !16
  br label %1954

1954:                                             ; preds = %1951, %1926
  %1955 = phi i8 [ %1928, %1926 ], [ %1952, %1951 ]
  %1956 = icmp ugt i8 %1955, 12
  br i1 %1956, label %2534, label %1957

1957:                                             ; preds = %1954, %1929
  %1958 = phi i8 [ %1955, %1954 ], [ 0, %1929 ]
  %1959 = zext nneg i8 %1958 to i32
  %1960 = shl nuw nsw i32 1, %1959
  %1961 = getelementptr inbounds nuw i8, ptr %10, i64 2100
  %1962 = zext nneg i32 %1960 to i64
  %1963 = and i64 %1962, 3
  %1964 = icmp samesign ult i8 %1958, 2
  br i1 %1964, label %1994, label %1965

1965:                                             ; preds = %1957
  %1966 = and i64 %1962, 65532
  br label %1967

1967:                                             ; preds = %1967, %1965
  %1968 = phi i64 [ 0, %1965 ], [ %1989, %1967 ]
  %1969 = phi i64 [ 0, %1965 ], [ %1990, %1967 ]
  %1970 = getelementptr inbounds nuw %struct.stbi__gif_lzw, ptr %1961, i64 %1968
  store i16 -1, ptr %1970, align 4, !tbaa !257
  %1971 = trunc i64 %1968 to i8
  %1972 = getelementptr inbounds nuw i8, ptr %1970, i64 2
  store i8 %1971, ptr %1972, align 2, !tbaa !259
  %1973 = getelementptr inbounds nuw i8, ptr %1970, i64 3
  store i8 %1971, ptr %1973, align 1, !tbaa !260
  %1974 = or disjoint i64 %1968, 1
  %1975 = getelementptr inbounds nuw %struct.stbi__gif_lzw, ptr %1961, i64 %1974
  store i16 -1, ptr %1975, align 8, !tbaa !257
  %1976 = trunc i64 %1974 to i8
  %1977 = getelementptr inbounds nuw i8, ptr %1975, i64 2
  store i8 %1976, ptr %1977, align 2, !tbaa !259
  %1978 = getelementptr inbounds nuw i8, ptr %1975, i64 3
  store i8 %1976, ptr %1978, align 1, !tbaa !260
  %1979 = or disjoint i64 %1968, 2
  %1980 = getelementptr inbounds nuw %struct.stbi__gif_lzw, ptr %1961, i64 %1979
  store i16 -1, ptr %1980, align 4, !tbaa !257
  %1981 = trunc i64 %1979 to i8
  %1982 = getelementptr inbounds nuw i8, ptr %1980, i64 2
  store i8 %1981, ptr %1982, align 2, !tbaa !259
  %1983 = getelementptr inbounds nuw i8, ptr %1980, i64 3
  store i8 %1981, ptr %1983, align 1, !tbaa !260
  %1984 = or disjoint i64 %1968, 3
  %1985 = getelementptr inbounds nuw %struct.stbi__gif_lzw, ptr %1961, i64 %1984
  store i16 -1, ptr %1985, align 8, !tbaa !257
  %1986 = trunc i64 %1984 to i8
  %1987 = getelementptr inbounds nuw i8, ptr %1985, i64 2
  store i8 %1986, ptr %1987, align 2, !tbaa !259
  %1988 = getelementptr inbounds nuw i8, ptr %1985, i64 3
  store i8 %1986, ptr %1988, align 1, !tbaa !260
  %1989 = add nuw nsw i64 %1968, 4
  %1990 = add i64 %1969, 4
  %1991 = icmp eq i64 %1990, %1966
  br i1 %1991, label %1992, label %1967, !llvm.loop !261

1992:                                             ; preds = %1967
  %1993 = icmp eq i64 %1963, 0
  br i1 %1993, label %2007, label %1994

1994:                                             ; preds = %1992, %1957
  %1995 = phi i64 [ 0, %1957 ], [ %1989, %1992 ]
  %1996 = icmp ne i64 %1963, 0
  call void @llvm.assume(i1 %1996)
  br label %1997

1997:                                             ; preds = %1997, %1994
  %1998 = phi i64 [ %1995, %1994 ], [ %2004, %1997 ]
  %1999 = phi i64 [ 0, %1994 ], [ %2005, %1997 ]
  %2000 = getelementptr inbounds nuw %struct.stbi__gif_lzw, ptr %1961, i64 %1998
  store i16 -1, ptr %2000, align 4, !tbaa !257
  %2001 = trunc i64 %1998 to i8
  %2002 = getelementptr inbounds nuw i8, ptr %2000, i64 2
  store i8 %2001, ptr %2002, align 2, !tbaa !259
  %2003 = getelementptr inbounds nuw i8, ptr %2000, i64 3
  store i8 %2001, ptr %2003, align 1, !tbaa !260
  %2004 = add nuw nsw i64 %1998, 1
  %2005 = add i64 %1999, 1
  %2006 = icmp eq i64 %2005, %1963
  br i1 %2006, label %2007, label %1997, !llvm.loop !262

2007:                                             ; preds = %1997, %1992
  %2008 = add nuw nsw i32 %1959, 1
  %2009 = shl nuw nsw i32 2, %1959
  %2010 = add nsw i32 %2009, -1
  %2011 = add nuw nsw i32 %1960, 2
  %2012 = add nuw nsw i32 %1960, 1
  br label %2013

2013:                                             ; preds = %2237, %2007
  %2014 = phi i1 [ false, %2007 ], [ true, %2237 ]
  %2015 = phi i32 [ %2008, %2007 ], [ %2238, %2237 ]
  %2016 = phi i32 [ %2010, %2007 ], [ %2239, %2237 ]
  %2017 = phi i32 [ %2011, %2007 ], [ %2240, %2237 ]
  %2018 = phi i32 [ -1, %2007 ], [ %2241, %2237 ]
  %2019 = phi i32 [ 0, %2007 ], [ %2109, %2237 ]
  %2020 = phi i32 [ 0, %2007 ], [ %2110, %2237 ]
  %2021 = phi i32 [ 0, %2007 ], [ %2025, %2237 ]
  br label %2022

2022:                                             ; preds = %2013, %2101
  %2023 = phi i32 [ %2105, %2101 ], [ %2019, %2013 ]
  %2024 = phi i32 [ %2106, %2101 ], [ %2020, %2013 ]
  %2025 = phi i32 [ %2071, %2101 ], [ %2021, %2013 ]
  %2026 = icmp slt i32 %2024, %2015
  br i1 %2026, label %2027, label %2107

2027:                                             ; preds = %2022
  %2028 = icmp eq i32 %2025, 0
  %2029 = load ptr, ptr %17, align 8, !tbaa !16
  %2030 = load ptr, ptr %18, align 8, !tbaa !18
  br i1 %2028, label %2031, label %2067

2031:                                             ; preds = %2027
  %2032 = icmp ult ptr %2029, %2030
  br i1 %2032, label %2033, label %2036

2033:                                             ; preds = %2031
  %2034 = getelementptr inbounds nuw i8, ptr %2029, i64 1
  store ptr %2034, ptr %17, align 8, !tbaa !16
  %2035 = load i8, ptr %2029, align 1, !tbaa !35
  br label %2061

2036:                                             ; preds = %2031
  %2037 = load i32, ptr %19, align 8, !tbaa !13
  %2038 = icmp eq i32 %2037, 0
  br i1 %2038, label %2242, label %2039

2039:                                             ; preds = %2036
  %2040 = load ptr, ptr %20, align 8, !tbaa !8
  %2041 = load ptr, ptr %21, align 8, !tbaa !33
  %2042 = load i32, ptr %23, align 4, !tbaa !34
  %2043 = call i32 %2040(ptr noundef %2041, ptr noundef nonnull %22, i32 noundef %2042) #16
  %2044 = load ptr, ptr %17, align 8, !tbaa !16
  %2045 = load ptr, ptr %24, align 8, !tbaa !15
  %2046 = ptrtoint ptr %2044 to i64
  %2047 = ptrtoint ptr %2045 to i64
  %2048 = sub i64 %2046, %2047
  %2049 = trunc i64 %2048 to i32
  %2050 = load i32, ptr %25, align 8, !tbaa !14
  %2051 = add nsw i32 %2050, %2049
  store i32 %2051, ptr %25, align 8, !tbaa !14
  %2052 = icmp eq i32 %2043, 0
  br i1 %2052, label %2053, label %2054

2053:                                             ; preds = %2039
  store i32 0, ptr %19, align 8, !tbaa !13
  store i8 0, ptr %22, align 8, !tbaa !35
  br label %2058

2054:                                             ; preds = %2039
  %2055 = sext i32 %2043 to i64
  %2056 = getelementptr inbounds i8, ptr %22, i64 %2055
  %2057 = load i8, ptr %22, align 1, !tbaa !35
  br label %2058

2058:                                             ; preds = %2054, %2053
  %2059 = phi i8 [ 0, %2053 ], [ %2057, %2054 ]
  %2060 = phi ptr [ %26, %2053 ], [ %2056, %2054 ]
  store ptr %2060, ptr %18, align 8, !tbaa !18
  store ptr %26, ptr %17, align 8, !tbaa !16
  br label %2061

2061:                                             ; preds = %2058, %2033
  %2062 = phi ptr [ %2030, %2033 ], [ %2060, %2058 ]
  %2063 = phi ptr [ %2034, %2033 ], [ %26, %2058 ]
  %2064 = phi i8 [ %2035, %2033 ], [ %2059, %2058 ]
  %2065 = zext i8 %2064 to i32
  %2066 = icmp eq i8 %2064, 0
  br i1 %2066, label %2242, label %2067

2067:                                             ; preds = %2061, %2027
  %2068 = phi ptr [ %2062, %2061 ], [ %2030, %2027 ]
  %2069 = phi ptr [ %2063, %2061 ], [ %2029, %2027 ]
  %2070 = phi i32 [ %2065, %2061 ], [ %2025, %2027 ]
  %2071 = add nsw i32 %2070, -1
  %2072 = icmp ult ptr %2069, %2068
  br i1 %2072, label %2073, label %2076

2073:                                             ; preds = %2067
  %2074 = getelementptr inbounds nuw i8, ptr %2069, i64 1
  store ptr %2074, ptr %17, align 8, !tbaa !16
  %2075 = load i8, ptr %2069, align 1, !tbaa !35
  br label %2101

2076:                                             ; preds = %2067
  %2077 = load i32, ptr %19, align 8, !tbaa !13
  %2078 = icmp eq i32 %2077, 0
  br i1 %2078, label %2101, label %2079

2079:                                             ; preds = %2076
  %2080 = load ptr, ptr %20, align 8, !tbaa !8
  %2081 = load ptr, ptr %21, align 8, !tbaa !33
  %2082 = load i32, ptr %23, align 4, !tbaa !34
  %2083 = call i32 %2080(ptr noundef %2081, ptr noundef nonnull %22, i32 noundef %2082) #16
  %2084 = load ptr, ptr %17, align 8, !tbaa !16
  %2085 = load ptr, ptr %24, align 8, !tbaa !15
  %2086 = ptrtoint ptr %2084 to i64
  %2087 = ptrtoint ptr %2085 to i64
  %2088 = sub i64 %2086, %2087
  %2089 = trunc i64 %2088 to i32
  %2090 = load i32, ptr %25, align 8, !tbaa !14
  %2091 = add nsw i32 %2090, %2089
  store i32 %2091, ptr %25, align 8, !tbaa !14
  %2092 = icmp eq i32 %2083, 0
  br i1 %2092, label %2093, label %2094

2093:                                             ; preds = %2079
  store i32 0, ptr %19, align 8, !tbaa !13
  store i8 0, ptr %22, align 8, !tbaa !35
  br label %2098

2094:                                             ; preds = %2079
  %2095 = sext i32 %2083 to i64
  %2096 = getelementptr inbounds i8, ptr %22, i64 %2095
  %2097 = load i8, ptr %22, align 1, !tbaa !35
  br label %2098

2098:                                             ; preds = %2094, %2093
  %2099 = phi i8 [ 0, %2093 ], [ %2097, %2094 ]
  %2100 = phi ptr [ %26, %2093 ], [ %2096, %2094 ]
  store ptr %2100, ptr %18, align 8, !tbaa !18
  store ptr %26, ptr %17, align 8, !tbaa !16
  br label %2101

2101:                                             ; preds = %2098, %2076, %2073
  %2102 = phi i8 [ %2075, %2073 ], [ %2099, %2098 ], [ 0, %2076 ]
  %2103 = zext i8 %2102 to i32
  %2104 = shl i32 %2103, %2024
  %2105 = or i32 %2104, %2023
  %2106 = add nsw i32 %2024, 8
  br label %2022

2107:                                             ; preds = %2022
  %2108 = and i32 %2023, %2016
  %2109 = ashr i32 %2023, %2015
  %2110 = sub nsw i32 %2024, %2015
  %2111 = icmp eq i32 %2108, %1960
  br i1 %2111, label %2237, label %2112

2112:                                             ; preds = %2107
  %2113 = icmp eq i32 %2108, %2012
  br i1 %2113, label %2114, label %2197

2114:                                             ; preds = %2112
  %2115 = icmp eq i32 %2025, 0
  br i1 %2115, label %2141, label %2116

2116:                                             ; preds = %2114
  %2117 = icmp slt i32 %2025, 0
  br i1 %2117, label %2118, label %2120

2118:                                             ; preds = %2116
  %2119 = load ptr, ptr %18, align 8, !tbaa !18
  store ptr %2119, ptr %17, align 8, !tbaa !16
  br label %2141

2120:                                             ; preds = %2116
  %2121 = load ptr, ptr %20, align 8, !tbaa !8
  %2122 = icmp eq ptr %2121, null
  br i1 %2122, label %2123, label %2125

2123:                                             ; preds = %2120
  %2124 = load ptr, ptr %17, align 8, !tbaa !16
  br label %2137

2125:                                             ; preds = %2120
  %2126 = load ptr, ptr %18, align 8, !tbaa !18
  %2127 = load ptr, ptr %17, align 8, !tbaa !16
  %2128 = ptrtoint ptr %2126 to i64
  %2129 = ptrtoint ptr %2127 to i64
  %2130 = sub i64 %2128, %2129
  %2131 = trunc i64 %2130 to i32
  %2132 = icmp sgt i32 %2025, %2131
  br i1 %2132, label %2133, label %2137

2133:                                             ; preds = %2125
  store ptr %2126, ptr %17, align 8, !tbaa !16
  %2134 = load ptr, ptr %1782, align 8, !tbaa !36
  %2135 = load ptr, ptr %21, align 8, !tbaa !33
  %2136 = sub nsw i32 %2025, %2131
  call void %2134(ptr noundef %2135, i32 noundef %2136) #16
  br label %2141

2137:                                             ; preds = %2125, %2123
  %2138 = phi ptr [ %2124, %2123 ], [ %2127, %2125 ]
  %2139 = zext nneg i32 %2025 to i64
  %2140 = getelementptr inbounds nuw i8, ptr %2138, i64 %2139
  store ptr %2140, ptr %17, align 8, !tbaa !16
  br label %2141

2141:                                             ; preds = %2137, %2133, %2118, %2114
  br label %2142

2142:                                             ; preds = %2196, %2141
  %2143 = load ptr, ptr %17, align 8, !tbaa !16
  %2144 = load ptr, ptr %18, align 8, !tbaa !18
  %2145 = icmp ult ptr %2143, %2144
  br i1 %2145, label %2146, label %2149

2146:                                             ; preds = %2142
  %2147 = getelementptr inbounds nuw i8, ptr %2143, i64 1
  store ptr %2147, ptr %17, align 8, !tbaa !16
  %2148 = load i8, ptr %2143, align 1, !tbaa !35
  br label %2174

2149:                                             ; preds = %2142
  %2150 = load i32, ptr %19, align 8, !tbaa !13
  %2151 = icmp eq i32 %2150, 0
  br i1 %2151, label %2242, label %2152

2152:                                             ; preds = %2149
  %2153 = load ptr, ptr %20, align 8, !tbaa !8
  %2154 = load ptr, ptr %21, align 8, !tbaa !33
  %2155 = load i32, ptr %23, align 4, !tbaa !34
  %2156 = call i32 %2153(ptr noundef %2154, ptr noundef nonnull %22, i32 noundef %2155) #16
  %2157 = load ptr, ptr %17, align 8, !tbaa !16
  %2158 = load ptr, ptr %24, align 8, !tbaa !15
  %2159 = ptrtoint ptr %2157 to i64
  %2160 = ptrtoint ptr %2158 to i64
  %2161 = sub i64 %2159, %2160
  %2162 = trunc i64 %2161 to i32
  %2163 = load i32, ptr %25, align 8, !tbaa !14
  %2164 = add nsw i32 %2163, %2162
  store i32 %2164, ptr %25, align 8, !tbaa !14
  %2165 = icmp eq i32 %2156, 0
  br i1 %2165, label %2166, label %2167

2166:                                             ; preds = %2152
  store i32 0, ptr %19, align 8, !tbaa !13
  store i8 0, ptr %22, align 8, !tbaa !35
  br label %2171

2167:                                             ; preds = %2152
  %2168 = sext i32 %2156 to i64
  %2169 = getelementptr inbounds i8, ptr %22, i64 %2168
  %2170 = load i8, ptr %22, align 1, !tbaa !35
  br label %2171

2171:                                             ; preds = %2167, %2166
  %2172 = phi i8 [ 0, %2166 ], [ %2170, %2167 ]
  %2173 = phi ptr [ %26, %2166 ], [ %2169, %2167 ]
  store ptr %2173, ptr %18, align 8, !tbaa !18
  store ptr %26, ptr %17, align 8, !tbaa !16
  br label %2174

2174:                                             ; preds = %2171, %2146
  %2175 = phi ptr [ %2147, %2146 ], [ %26, %2171 ]
  %2176 = phi ptr [ %2144, %2146 ], [ %2173, %2171 ]
  %2177 = phi i8 [ %2148, %2146 ], [ %2172, %2171 ]
  %2178 = icmp eq i8 %2177, 0
  br i1 %2178, label %2242, label %2179

2179:                                             ; preds = %2174
  %2180 = zext i8 %2177 to i32
  %2181 = load ptr, ptr %20, align 8, !tbaa !8
  %2182 = icmp eq ptr %2181, null
  br i1 %2182, label %2193, label %2183

2183:                                             ; preds = %2179
  %2184 = ptrtoint ptr %2176 to i64
  %2185 = ptrtoint ptr %2175 to i64
  %2186 = sub i64 %2184, %2185
  %2187 = trunc i64 %2186 to i32
  %2188 = icmp sgt i32 %2180, %2187
  br i1 %2188, label %2189, label %2193

2189:                                             ; preds = %2183
  store ptr %2176, ptr %17, align 8, !tbaa !16
  %2190 = load ptr, ptr %1782, align 8, !tbaa !36
  %2191 = load ptr, ptr %21, align 8, !tbaa !33
  %2192 = sub nsw i32 %2180, %2187
  call void %2190(ptr noundef %2191, i32 noundef %2192) #16
  br label %2196

2193:                                             ; preds = %2183, %2179
  %2194 = zext i8 %2177 to i64
  %2195 = getelementptr inbounds nuw i8, ptr %2175, i64 %2194
  store ptr %2195, ptr %17, align 8, !tbaa !16
  br label %2196

2196:                                             ; preds = %2193, %2189
  br label %2142, !llvm.loop !263

2197:                                             ; preds = %2112
  %2198 = icmp sle i32 %2108, %2017
  %2199 = and i1 %2198, %2014
  br i1 %2199, label %2200, label %2534

2200:                                             ; preds = %2197
  %2201 = icmp sgt i32 %2018, -1
  br i1 %2201, label %2202, label %2223

2202:                                             ; preds = %2200
  %2203 = add nsw i32 %2017, 1
  %2204 = sext i32 %2017 to i64
  %2205 = getelementptr inbounds %struct.stbi__gif_lzw, ptr %1961, i64 %2204
  %2206 = icmp sgt i32 %2017, 8191
  br i1 %2206, label %2534, label %2207

2207:                                             ; preds = %2202
  %2208 = trunc i32 %2018 to i16
  store i16 %2208, ptr %2205, align 4, !tbaa !257
  %2209 = zext nneg i32 %2018 to i64
  %2210 = getelementptr inbounds nuw %struct.stbi__gif_lzw, ptr %1961, i64 %2209
  %2211 = getelementptr inbounds nuw i8, ptr %2210, i64 2
  %2212 = load i8, ptr %2211, align 2, !tbaa !259
  %2213 = getelementptr inbounds nuw i8, ptr %2205, i64 2
  store i8 %2212, ptr %2213, align 2, !tbaa !259
  %2214 = icmp eq i32 %2108, %2203
  br i1 %2214, label %2220, label %2215

2215:                                             ; preds = %2207
  %2216 = sext i32 %2108 to i64
  %2217 = getelementptr inbounds %struct.stbi__gif_lzw, ptr %1961, i64 %2216
  %2218 = getelementptr inbounds nuw i8, ptr %2217, i64 2
  %2219 = load i8, ptr %2218, align 2, !tbaa !259
  br label %2220

2220:                                             ; preds = %2215, %2207
  %2221 = phi i8 [ %2219, %2215 ], [ %2212, %2207 ]
  %2222 = getelementptr inbounds nuw i8, ptr %2205, i64 3
  store i8 %2221, ptr %2222, align 1, !tbaa !260
  br label %2225

2223:                                             ; preds = %2200
  %2224 = icmp eq i32 %2108, %2017
  br i1 %2224, label %2534, label %2225

2225:                                             ; preds = %2223, %2220
  %2226 = phi i32 [ %2203, %2220 ], [ %2017, %2223 ]
  %2227 = trunc i32 %2108 to i16
  call fastcc void @stbi__out_gif_code(ptr noundef nonnull %10, i16 noundef zeroext %2227) #17
  %2228 = and i32 %2226, %2016
  %2229 = icmp eq i32 %2228, 0
  %2230 = icmp slt i32 %2226, 4096
  %2231 = and i1 %2230, %2229
  %2232 = add nsw i32 %2015, 1
  %2233 = shl nsw i32 -1, %2232
  %2234 = xor i32 %2233, -1
  %2235 = select i1 %2231, i32 %2232, i32 %2015
  %2236 = select i1 %2231, i32 %2234, i32 %2016
  br label %2237

2237:                                             ; preds = %2225, %2107
  %2238 = phi i32 [ %2008, %2107 ], [ %2235, %2225 ]
  %2239 = phi i32 [ %2010, %2107 ], [ %2236, %2225 ]
  %2240 = phi i32 [ %2011, %2107 ], [ %2226, %2225 ]
  %2241 = phi i32 [ -1, %2107 ], [ %2108, %2225 ]
  br label %2013

2242:                                             ; preds = %2061, %2036, %2174, %2149
  %2243 = load ptr, ptr %1656, align 8, !tbaa !242
  %2244 = icmp eq ptr %2243, null
  br i1 %2244, label %2534, label %2245

2245:                                             ; preds = %2242
  %2246 = load i32, ptr %10, align 8, !tbaa !28
  %2247 = load i32, ptr %1777, align 4, !tbaa !30
  %2248 = mul i32 %2247, %2246
  br i1 %1658, label %2249, label %2529

2249:                                             ; preds = %2245
  %2250 = getelementptr inbounds nuw i8, ptr %10, i64 36
  %2251 = load i32, ptr %2250, align 4, !tbaa !211
  %2252 = icmp sgt i32 %2251, 0
  %2253 = icmp sgt i32 %2248, 0
  %2254 = select i1 %2252, i1 %2253, i1 false
  br i1 %2254, label %2255, label %2529

2255:                                             ; preds = %2249
  %2256 = getelementptr inbounds nuw i8, ptr %10, i64 52
  %2257 = zext nneg i32 %2248 to i64
  br label %2258

2258:                                             ; preds = %2276, %2255
  %2259 = phi i64 [ 0, %2255 ], [ %2277, %2276 ]
  %2260 = load ptr, ptr %1774, align 8, !tbaa !244
  %2261 = getelementptr inbounds nuw i8, ptr %2260, i64 %2259
  %2262 = load i8, ptr %2261, align 1, !tbaa !35
  %2263 = icmp eq i8 %2262, 0
  br i1 %2263, label %2264, label %2276

2264:                                             ; preds = %2258
  %2265 = load i32, ptr %2250, align 4, !tbaa !211
  %2266 = sext i32 %2265 to i64
  %2267 = getelementptr inbounds [4 x i8], ptr %2256, i64 %2266
  %2268 = getelementptr inbounds nuw i8, ptr %2267, i64 3
  store i8 -1, ptr %2268, align 1, !tbaa !35
  %2269 = load ptr, ptr %1656, align 8, !tbaa !242
  %2270 = shl nsw i64 %2259, 2
  %2271 = getelementptr inbounds nuw i8, ptr %2269, i64 %2270
  %2272 = load i32, ptr %2250, align 4, !tbaa !211
  %2273 = sext i32 %2272 to i64
  %2274 = getelementptr inbounds [4 x i8], ptr %2256, i64 %2273
  %2275 = call ptr @memcpy(ptr noundef %2271, ptr noundef nonnull %2274, i64 noundef 4) #16
  br label %2276

2276:                                             ; preds = %2264, %2258
  %2277 = add nuw nsw i64 %2259, 1
  %2278 = icmp eq i64 %2277, %2257
  br i1 %2278, label %2529, label %2258, !llvm.loop !264

2279:                                             ; preds = %1818
  %2280 = icmp ult ptr %1820, %1819
  br i1 %2280, label %2281, label %2284

2281:                                             ; preds = %2279
  %2282 = getelementptr inbounds nuw i8, ptr %1820, i64 1
  store ptr %2282, ptr %17, align 8, !tbaa !16
  %2283 = load i8, ptr %1820, align 1, !tbaa !35
  br label %2310

2284:                                             ; preds = %2279
  %2285 = load i32, ptr %19, align 8, !tbaa !13
  %2286 = icmp eq i32 %2285, 0
  br i1 %2286, label %2287, label %2288

2287:                                             ; preds = %2453, %2427, %2310, %2284
  br label %2474

2288:                                             ; preds = %2284
  %2289 = load ptr, ptr %20, align 8, !tbaa !8
  %2290 = load ptr, ptr %21, align 8, !tbaa !33
  %2291 = load i32, ptr %23, align 4, !tbaa !34
  %2292 = call i32 %2289(ptr noundef %2290, ptr noundef nonnull %22, i32 noundef %2291) #16
  %2293 = load ptr, ptr %17, align 8, !tbaa !16
  %2294 = load ptr, ptr %24, align 8, !tbaa !15
  %2295 = ptrtoint ptr %2293 to i64
  %2296 = ptrtoint ptr %2294 to i64
  %2297 = sub i64 %2295, %2296
  %2298 = trunc i64 %2297 to i32
  %2299 = load i32, ptr %25, align 8, !tbaa !14
  %2300 = add nsw i32 %2299, %2298
  store i32 %2300, ptr %25, align 8, !tbaa !14
  %2301 = icmp eq i32 %2292, 0
  br i1 %2301, label %2302, label %2303

2302:                                             ; preds = %2288
  store i32 0, ptr %19, align 8, !tbaa !13
  store i8 0, ptr %22, align 8, !tbaa !35
  br label %2307

2303:                                             ; preds = %2288
  %2304 = sext i32 %2292 to i64
  %2305 = getelementptr inbounds i8, ptr %22, i64 %2304
  %2306 = load i8, ptr %22, align 1, !tbaa !35
  br label %2307

2307:                                             ; preds = %2303, %2302
  %2308 = phi i8 [ 0, %2302 ], [ %2306, %2303 ]
  %2309 = phi ptr [ %26, %2302 ], [ %2305, %2303 ]
  store ptr %2309, ptr %18, align 8, !tbaa !18
  store ptr %26, ptr %17, align 8, !tbaa !16
  br label %2310

2310:                                             ; preds = %2307, %2281
  %2311 = phi ptr [ %1819, %2281 ], [ %2309, %2307 ]
  %2312 = phi ptr [ %2282, %2281 ], [ %26, %2307 ]
  %2313 = phi i8 [ %2283, %2281 ], [ %2308, %2307 ]
  %2314 = icmp eq i8 %2313, -7
  br i1 %2314, label %2315, label %2287

2315:                                             ; preds = %2310
  %2316 = icmp ult ptr %2312, %2311
  br i1 %2316, label %2317, label %2320

2317:                                             ; preds = %2315
  %2318 = getelementptr inbounds nuw i8, ptr %2312, i64 1
  store ptr %2318, ptr %17, align 8, !tbaa !16
  %2319 = load i8, ptr %2312, align 1, !tbaa !35
  br label %2345

2320:                                             ; preds = %2315
  %2321 = load i32, ptr %19, align 8, !tbaa !13
  %2322 = icmp eq i32 %2321, 0
  br i1 %2322, label %2473, label %2323

2323:                                             ; preds = %2320
  %2324 = load ptr, ptr %20, align 8, !tbaa !8
  %2325 = load ptr, ptr %21, align 8, !tbaa !33
  %2326 = load i32, ptr %23, align 4, !tbaa !34
  %2327 = call i32 %2324(ptr noundef %2325, ptr noundef nonnull %22, i32 noundef %2326) #16
  %2328 = load ptr, ptr %17, align 8, !tbaa !16
  %2329 = load ptr, ptr %24, align 8, !tbaa !15
  %2330 = ptrtoint ptr %2328 to i64
  %2331 = ptrtoint ptr %2329 to i64
  %2332 = sub i64 %2330, %2331
  %2333 = trunc i64 %2332 to i32
  %2334 = load i32, ptr %25, align 8, !tbaa !14
  %2335 = add nsw i32 %2334, %2333
  store i32 %2335, ptr %25, align 8, !tbaa !14
  %2336 = icmp eq i32 %2327, 0
  br i1 %2336, label %2337, label %2338

2337:                                             ; preds = %2323
  store i32 0, ptr %19, align 8, !tbaa !13
  store i8 0, ptr %22, align 8, !tbaa !35
  br label %2342

2338:                                             ; preds = %2323
  %2339 = sext i32 %2327 to i64
  %2340 = getelementptr inbounds i8, ptr %22, i64 %2339
  %2341 = load i8, ptr %22, align 1, !tbaa !35
  br label %2342

2342:                                             ; preds = %2338, %2337
  %2343 = phi i8 [ 0, %2337 ], [ %2341, %2338 ]
  %2344 = phi ptr [ %26, %2337 ], [ %2340, %2338 ]
  store ptr %2344, ptr %18, align 8, !tbaa !18
  store ptr %26, ptr %17, align 8, !tbaa !16
  br label %2345

2345:                                             ; preds = %2342, %2317
  %2346 = phi ptr [ %2318, %2317 ], [ %26, %2342 ]
  %2347 = phi ptr [ %2311, %2317 ], [ %2344, %2342 ]
  %2348 = phi i8 [ %2319, %2317 ], [ %2343, %2342 ]
  %2349 = icmp eq i8 %2348, 4
  br i1 %2349, label %2350, label %2454

2350:                                             ; preds = %2345
  %2351 = icmp ult ptr %2346, %2347
  br i1 %2351, label %2352, label %2355

2352:                                             ; preds = %2350
  %2353 = getelementptr inbounds nuw i8, ptr %2346, i64 1
  store ptr %2353, ptr %17, align 8, !tbaa !16
  %2354 = load i8, ptr %2346, align 1, !tbaa !35
  br label %2380

2355:                                             ; preds = %2350
  %2356 = load i32, ptr %19, align 8, !tbaa !13
  %2357 = icmp eq i32 %2356, 0
  br i1 %2357, label %2380, label %2358

2358:                                             ; preds = %2355
  %2359 = load ptr, ptr %20, align 8, !tbaa !8
  %2360 = load ptr, ptr %21, align 8, !tbaa !33
  %2361 = load i32, ptr %23, align 4, !tbaa !34
  %2362 = call i32 %2359(ptr noundef %2360, ptr noundef nonnull %22, i32 noundef %2361) #16
  %2363 = load ptr, ptr %17, align 8, !tbaa !16
  %2364 = load ptr, ptr %24, align 8, !tbaa !15
  %2365 = ptrtoint ptr %2363 to i64
  %2366 = ptrtoint ptr %2364 to i64
  %2367 = sub i64 %2365, %2366
  %2368 = trunc i64 %2367 to i32
  %2369 = load i32, ptr %25, align 8, !tbaa !14
  %2370 = add nsw i32 %2369, %2368
  store i32 %2370, ptr %25, align 8, !tbaa !14
  %2371 = icmp eq i32 %2362, 0
  br i1 %2371, label %2372, label %2373

2372:                                             ; preds = %2358
  store i32 0, ptr %19, align 8, !tbaa !13
  store i8 0, ptr %22, align 8, !tbaa !35
  br label %2377

2373:                                             ; preds = %2358
  %2374 = sext i32 %2362 to i64
  %2375 = getelementptr inbounds i8, ptr %22, i64 %2374
  %2376 = load i8, ptr %22, align 1, !tbaa !35
  br label %2377

2377:                                             ; preds = %2373, %2372
  %2378 = phi i8 [ 0, %2372 ], [ %2376, %2373 ]
  %2379 = phi ptr [ %26, %2372 ], [ %2375, %2373 ]
  store ptr %2379, ptr %18, align 8, !tbaa !18
  store ptr %26, ptr %17, align 8, !tbaa !16
  br label %2380

2380:                                             ; preds = %2377, %2355, %2352
  %2381 = phi i8 [ %2354, %2352 ], [ %2378, %2377 ], [ 0, %2355 ]
  %2382 = zext i8 %2381 to i32
  store i32 %2382, ptr %1783, align 8, !tbaa !245
  %2383 = call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) #17
  %2384 = mul nuw nsw i32 %2383, 10
  store i32 %2384, ptr %1784, align 8, !tbaa !265
  %2385 = load i32, ptr %1785, align 4, !tbaa !213
  %2386 = icmp sgt i32 %2385, -1
  br i1 %2386, label %2387, label %2391

2387:                                             ; preds = %2380
  %2388 = zext nneg i32 %2385 to i64
  %2389 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %2388
  %2390 = getelementptr inbounds nuw i8, ptr %2389, i64 55
  store i8 -1, ptr %2390, align 1, !tbaa !35
  br label %2391

2391:                                             ; preds = %2387, %2380
  %2392 = load i32, ptr %1783, align 8, !tbaa !245
  %2393 = and i32 %2392, 1
  %2394 = icmp eq i32 %2393, 0
  br i1 %2394, label %2433, label %2395

2395:                                             ; preds = %2391
  %2396 = load ptr, ptr %17, align 8, !tbaa !16
  %2397 = load ptr, ptr %18, align 8, !tbaa !18
  %2398 = icmp ult ptr %2396, %2397
  br i1 %2398, label %2399, label %2402

2399:                                             ; preds = %2395
  %2400 = getelementptr inbounds nuw i8, ptr %2396, i64 1
  store ptr %2400, ptr %17, align 8, !tbaa !16
  %2401 = load i8, ptr %2396, align 1, !tbaa !35
  br label %2427

2402:                                             ; preds = %2395
  %2403 = load i32, ptr %19, align 8, !tbaa !13
  %2404 = icmp eq i32 %2403, 0
  br i1 %2404, label %2427, label %2405

2405:                                             ; preds = %2402
  %2406 = load ptr, ptr %20, align 8, !tbaa !8
  %2407 = load ptr, ptr %21, align 8, !tbaa !33
  %2408 = load i32, ptr %23, align 4, !tbaa !34
  %2409 = call i32 %2406(ptr noundef %2407, ptr noundef nonnull %22, i32 noundef %2408) #16
  %2410 = load ptr, ptr %17, align 8, !tbaa !16
  %2411 = load ptr, ptr %24, align 8, !tbaa !15
  %2412 = ptrtoint ptr %2410 to i64
  %2413 = ptrtoint ptr %2411 to i64
  %2414 = sub i64 %2412, %2413
  %2415 = trunc i64 %2414 to i32
  %2416 = load i32, ptr %25, align 8, !tbaa !14
  %2417 = add nsw i32 %2416, %2415
  store i32 %2417, ptr %25, align 8, !tbaa !14
  %2418 = icmp eq i32 %2409, 0
  br i1 %2418, label %2419, label %2420

2419:                                             ; preds = %2405
  store i32 0, ptr %19, align 8, !tbaa !13
  store i8 0, ptr %22, align 8, !tbaa !35
  br label %2424

2420:                                             ; preds = %2405
  %2421 = sext i32 %2409 to i64
  %2422 = getelementptr inbounds i8, ptr %22, i64 %2421
  %2423 = load i8, ptr %22, align 1, !tbaa !35
  br label %2424

2424:                                             ; preds = %2420, %2419
  %2425 = phi i8 [ 0, %2419 ], [ %2423, %2420 ]
  %2426 = phi ptr [ %26, %2419 ], [ %2422, %2420 ]
  store ptr %2426, ptr %18, align 8, !tbaa !18
  store ptr %26, ptr %17, align 8, !tbaa !16
  br label %2427

2427:                                             ; preds = %2424, %2402, %2399
  %2428 = phi i8 [ %2401, %2399 ], [ %2425, %2424 ], [ 0, %2402 ]
  %2429 = zext i8 %2428 to i32
  store i32 %2429, ptr %1785, align 4, !tbaa !213
  %2430 = zext i8 %2428 to i64
  %2431 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %2430
  %2432 = getelementptr inbounds nuw i8, ptr %2431, i64 55
  store i8 0, ptr %2432, align 1, !tbaa !35
  br label %2287

2433:                                             ; preds = %2391
  %2434 = load ptr, ptr %20, align 8, !tbaa !8
  %2435 = icmp eq ptr %2434, null
  br i1 %2435, label %2436, label %2438

2436:                                             ; preds = %2433
  %2437 = load ptr, ptr %17, align 8, !tbaa !16
  br label %2450

2438:                                             ; preds = %2433
  %2439 = load ptr, ptr %18, align 8, !tbaa !18
  %2440 = load ptr, ptr %17, align 8, !tbaa !16
  %2441 = ptrtoint ptr %2439 to i64
  %2442 = ptrtoint ptr %2440 to i64
  %2443 = sub i64 %2441, %2442
  %2444 = trunc i64 %2443 to i32
  %2445 = icmp slt i32 %2444, 1
  br i1 %2445, label %2446, label %2450

2446:                                             ; preds = %2438
  store ptr %2439, ptr %17, align 8, !tbaa !16
  %2447 = load ptr, ptr %1782, align 8, !tbaa !36
  %2448 = load ptr, ptr %21, align 8, !tbaa !33
  %2449 = sub nsw i32 1, %2444
  call void %2447(ptr noundef %2448, i32 noundef %2449) #16
  br label %2453

2450:                                             ; preds = %2438, %2436
  %2451 = phi ptr [ %2437, %2436 ], [ %2440, %2438 ]
  %2452 = getelementptr inbounds nuw i8, ptr %2451, i64 1
  store ptr %2452, ptr %17, align 8, !tbaa !16
  br label %2453

2453:                                             ; preds = %2450, %2446
  store i32 -1, ptr %1785, align 4, !tbaa !213
  br label %2287

2454:                                             ; preds = %2345
  %2455 = zext i8 %2348 to i32
  %2456 = icmp eq i8 %2348, 0
  br i1 %2456, label %2473, label %2457

2457:                                             ; preds = %2454
  %2458 = load ptr, ptr %20, align 8, !tbaa !8
  %2459 = icmp eq ptr %2458, null
  br i1 %2459, label %2470, label %2460

2460:                                             ; preds = %2457
  %2461 = ptrtoint ptr %2347 to i64
  %2462 = ptrtoint ptr %2346 to i64
  %2463 = sub i64 %2461, %2462
  %2464 = trunc i64 %2463 to i32
  %2465 = icmp sgt i32 %2455, %2464
  br i1 %2465, label %2466, label %2470

2466:                                             ; preds = %2460
  store ptr %2347, ptr %17, align 8, !tbaa !16
  %2467 = load ptr, ptr %1782, align 8, !tbaa !36
  %2468 = load ptr, ptr %21, align 8, !tbaa !33
  %2469 = sub nsw i32 %2455, %2464
  call void %2467(ptr noundef %2468, i32 noundef %2469) #16
  br label %2473

2470:                                             ; preds = %2460, %2457
  %2471 = zext i8 %2348 to i64
  %2472 = getelementptr inbounds nuw i8, ptr %2346, i64 %2471
  store ptr %2472, ptr %17, align 8, !tbaa !16
  br label %2473

2473:                                             ; preds = %2481, %2506, %2470, %2466, %2454, %2320
  br label %1786

2474:                                             ; preds = %2528, %2287
  %2475 = load ptr, ptr %17, align 8, !tbaa !16
  %2476 = load ptr, ptr %18, align 8, !tbaa !18
  %2477 = icmp ult ptr %2475, %2476
  br i1 %2477, label %2478, label %2481

2478:                                             ; preds = %2474
  %2479 = getelementptr inbounds nuw i8, ptr %2475, i64 1
  store ptr %2479, ptr %17, align 8, !tbaa !16
  %2480 = load i8, ptr %2475, align 1, !tbaa !35
  br label %2506

2481:                                             ; preds = %2474
  %2482 = load i32, ptr %19, align 8, !tbaa !13
  %2483 = icmp eq i32 %2482, 0
  br i1 %2483, label %2473, label %2484

2484:                                             ; preds = %2481
  %2485 = load ptr, ptr %20, align 8, !tbaa !8
  %2486 = load ptr, ptr %21, align 8, !tbaa !33
  %2487 = load i32, ptr %23, align 4, !tbaa !34
  %2488 = call i32 %2485(ptr noundef %2486, ptr noundef nonnull %22, i32 noundef %2487) #16
  %2489 = load ptr, ptr %17, align 8, !tbaa !16
  %2490 = load ptr, ptr %24, align 8, !tbaa !15
  %2491 = ptrtoint ptr %2489 to i64
  %2492 = ptrtoint ptr %2490 to i64
  %2493 = sub i64 %2491, %2492
  %2494 = trunc i64 %2493 to i32
  %2495 = load i32, ptr %25, align 8, !tbaa !14
  %2496 = add nsw i32 %2495, %2494
  store i32 %2496, ptr %25, align 8, !tbaa !14
  %2497 = icmp eq i32 %2488, 0
  br i1 %2497, label %2498, label %2499

2498:                                             ; preds = %2484
  store i32 0, ptr %19, align 8, !tbaa !13
  store i8 0, ptr %22, align 8, !tbaa !35
  br label %2503

2499:                                             ; preds = %2484
  %2500 = sext i32 %2488 to i64
  %2501 = getelementptr inbounds i8, ptr %22, i64 %2500
  %2502 = load i8, ptr %22, align 1, !tbaa !35
  br label %2503

2503:                                             ; preds = %2499, %2498
  %2504 = phi i8 [ 0, %2498 ], [ %2502, %2499 ]
  %2505 = phi ptr [ %26, %2498 ], [ %2501, %2499 ]
  store ptr %2505, ptr %18, align 8, !tbaa !18
  store ptr %26, ptr %17, align 8, !tbaa !16
  br label %2506

2506:                                             ; preds = %2503, %2478
  %2507 = phi ptr [ %2479, %2478 ], [ %26, %2503 ]
  %2508 = phi ptr [ %2476, %2478 ], [ %2505, %2503 ]
  %2509 = phi i8 [ %2480, %2478 ], [ %2504, %2503 ]
  %2510 = icmp eq i8 %2509, 0
  br i1 %2510, label %2473, label %2511

2511:                                             ; preds = %2506
  %2512 = zext i8 %2509 to i32
  %2513 = load ptr, ptr %20, align 8, !tbaa !8
  %2514 = icmp eq ptr %2513, null
  br i1 %2514, label %2525, label %2515

2515:                                             ; preds = %2511
  %2516 = ptrtoint ptr %2508 to i64
  %2517 = ptrtoint ptr %2507 to i64
  %2518 = sub i64 %2516, %2517
  %2519 = trunc i64 %2518 to i32
  %2520 = icmp sgt i32 %2512, %2519
  br i1 %2520, label %2521, label %2525

2521:                                             ; preds = %2515
  store ptr %2508, ptr %17, align 8, !tbaa !16
  %2522 = load ptr, ptr %1782, align 8, !tbaa !36
  %2523 = load ptr, ptr %21, align 8, !tbaa !33
  %2524 = sub nsw i32 %2512, %2519
  call void %2522(ptr noundef %2523, i32 noundef %2524) #16
  br label %2528

2525:                                             ; preds = %2515, %2511
  %2526 = zext i8 %2509 to i64
  %2527 = getelementptr inbounds nuw i8, ptr %2507, i64 %2526
  store ptr %2527, ptr %17, align 8, !tbaa !16
  br label %2528

2528:                                             ; preds = %2525, %2521
  br label %2474, !llvm.loop !266

2529:                                             ; preds = %2276, %2249, %2245
  %2530 = icmp eq ptr %2243, %0
  br i1 %2530, label %2534, label %2531

2531:                                             ; preds = %2529
  %2532 = load i32, ptr %10, align 8, !tbaa !28
  store i32 %2532, ptr %1, align 4, !tbaa !4
  %2533 = load i32, ptr %1777, align 4, !tbaa !30
  store i32 %2533, ptr %2, align 4, !tbaa !4
  br label %2534

2534:                                             ; preds = %1793, %1818, %2197, %2202, %2223, %1659, %1662, %1667, %1672, %1714, %1718, %1822, %1830, %1912, %1954, %2242, %2529, %2531
  %2535 = phi ptr [ %2243, %2531 ], [ null, %2529 ], [ null, %1667 ], [ null, %1714 ], [ null, %1659 ], [ null, %1718 ], [ null, %1672 ], [ null, %1662 ], [ null, %2197 ], [ null, %1830 ], [ null, %1912 ], [ null, %2242 ], [ null, %1822 ], [ null, %1954 ], [ null, %2223 ], [ null, %2202 ], [ null, %1818 ], [ null, %1793 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  br label %4501

2536:                                             ; preds = %1645, %1648
  %2537 = load i64, ptr @arena_used, align 8, !tbaa !19
  %2538 = add i64 %2537, -100644705
  %2539 = icmp ult i64 %2538, 18592
  br i1 %2539, label %4496, label %2540

2540:                                             ; preds = %2536
  %2541 = getelementptr inbounds nuw i8, ptr @arena, i64 %2537
  %2542 = add i64 %2537, 18592
  store i64 %2542, ptr @arena_used, align 8, !tbaa !19
  store i64 18568, ptr %2541, align 8, !tbaa !19
  %2543 = getelementptr inbounds nuw i8, ptr %2541, i64 16
  %2544 = tail call ptr @memset(ptr noundef nonnull %2543, i32 noundef 0, i64 noundef 18568) #16
  store ptr %0, ptr %2543, align 8, !tbaa !21
  %2545 = getelementptr inbounds nuw i8, ptr %2541, i64 18560
  store ptr @stbi__idct_block, ptr %2545, align 8, !tbaa !267
  %2546 = getelementptr inbounds nuw i8, ptr %2541, i64 18568
  store ptr @stbi__YCbCr_to_RGB_row, ptr %2546, align 8, !tbaa !268
  %2547 = getelementptr inbounds nuw i8, ptr %2541, i64 18576
  store ptr @stbi__resample_row_hv_2, ptr %2547, align 8, !tbaa !269
  %2548 = getelementptr inbounds nuw i8, ptr %2541, i64 18520
  store i32 0, ptr %2548, align 8, !tbaa !54
  %2549 = getelementptr inbounds nuw i8, ptr %2541, i64 18524
  store i32 -1, ptr %2549, align 4, !tbaa !55
  %2550 = getelementptr inbounds nuw i8, ptr %2541, i64 18488
  store i8 -1, ptr %2550, align 8, !tbaa !56
  %2551 = tail call fastcc zeroext i8 @stbi__get_marker(ptr noundef nonnull %2543) #17
  %2552 = icmp eq i8 %2551, -40
  %2553 = load <2 x ptr>, ptr %24, align 8, !tbaa !23
  store <2 x ptr> %2553, ptr %17, align 8, !tbaa !23
  br i1 %2552, label %2554, label %4496

2554:                                             ; preds = %2540
  %2555 = load i64, ptr @arena_used, align 8, !tbaa !19
  %2556 = add i64 %2555, -100644705
  %2557 = icmp ult i64 %2556, 18592
  br i1 %2557, label %4501, label %2558

2558:                                             ; preds = %2554
  %2559 = getelementptr inbounds nuw i8, ptr @arena, i64 %2555
  %2560 = add i64 %2555, 18592
  store i64 %2560, ptr @arena_used, align 8, !tbaa !19
  store i64 18568, ptr %2559, align 8, !tbaa !19
  %2561 = getelementptr inbounds nuw i8, ptr %2559, i64 16
  %2562 = tail call ptr @memset(ptr noundef nonnull %2561, i32 noundef 0, i64 noundef 18568) #16
  store ptr %0, ptr %2561, align 8, !tbaa !21
  %2563 = getelementptr inbounds nuw i8, ptr %2559, i64 18560
  store ptr @stbi__idct_block, ptr %2563, align 8, !tbaa !267
  %2564 = getelementptr inbounds nuw i8, ptr %2559, i64 18568
  store ptr @stbi__YCbCr_to_RGB_row, ptr %2564, align 8, !tbaa !268
  %2565 = getelementptr inbounds nuw i8, ptr %2559, i64 18576
  store ptr @stbi__resample_row_hv_2, ptr %2565, align 8, !tbaa !269
  %2566 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %2566, align 8, !tbaa !71
  %2567 = getelementptr inbounds nuw i8, ptr %2559, i64 18096
  %2568 = getelementptr inbounds nuw i8, ptr %2559, i64 18152
  store ptr null, ptr %2568, align 8, !tbaa !99
  %2569 = getelementptr inbounds nuw i8, ptr %2559, i64 18160
  store ptr null, ptr %2569, align 8, !tbaa !98
  %2570 = getelementptr inbounds nuw i8, ptr %2559, i64 18248
  store ptr null, ptr %2570, align 8, !tbaa !99
  %2571 = getelementptr inbounds nuw i8, ptr %2559, i64 18256
  store ptr null, ptr %2571, align 8, !tbaa !98
  %2572 = getelementptr inbounds nuw i8, ptr %2559, i64 18344
  store ptr null, ptr %2572, align 8, !tbaa !99
  %2573 = getelementptr inbounds nuw i8, ptr %2559, i64 18352
  store ptr null, ptr %2573, align 8, !tbaa !98
  %2574 = getelementptr inbounds nuw i8, ptr %2559, i64 18440
  store ptr null, ptr %2574, align 8, !tbaa !99
  %2575 = getelementptr inbounds nuw i8, ptr %2559, i64 18448
  store ptr null, ptr %2575, align 8, !tbaa !98
  %2576 = getelementptr inbounds nuw i8, ptr %2559, i64 18552
  store i32 0, ptr %2576, align 8, !tbaa !62
  %2577 = tail call fastcc i32 @stbi__decode_jpeg_header(ptr noundef nonnull %2561, i32 noundef 0) #17
  %2578 = icmp eq i32 %2577, 0
  br i1 %2578, label %4060, label %2579

2579:                                             ; preds = %2558
  %2580 = tail call fastcc zeroext i8 @stbi__get_marker(ptr noundef nonnull %2561) #17
  %2581 = getelementptr inbounds nuw i8, ptr %2559, i64 18532
  %2582 = getelementptr inbounds nuw i8, ptr %2559, i64 18536
  %2583 = getelementptr inbounds nuw i8, ptr %2559, i64 18500
  %2584 = getelementptr inbounds nuw i8, ptr %2559, i64 18504
  %2585 = getelementptr inbounds nuw i8, ptr %2559, i64 18508
  %2586 = getelementptr inbounds nuw i8, ptr %2559, i64 18512
  %2587 = getelementptr inbounds nuw i8, ptr %2559, i64 18496
  %2588 = getelementptr inbounds nuw i8, ptr %2559, i64 18484
  %2589 = getelementptr inbounds nuw i8, ptr %2559, i64 18480
  %2590 = getelementptr inbounds nuw i8, ptr %2559, i64 18492
  %2591 = getelementptr inbounds nuw i8, ptr %2559, i64 18408
  %2592 = getelementptr inbounds nuw i8, ptr %2559, i64 18312
  %2593 = getelementptr inbounds nuw i8, ptr %2559, i64 18216
  %2594 = getelementptr inbounds nuw i8, ptr %2559, i64 18120
  %2595 = getelementptr inbounds nuw i8, ptr %2559, i64 18488
  %2596 = getelementptr inbounds nuw i8, ptr %2559, i64 18556
  %2597 = getelementptr inbounds nuw i8, ptr %2559, i64 18516
  %2598 = getelementptr inbounds nuw i8, ptr %2559, i64 18084
  %2599 = getelementptr inbounds nuw i8, ptr %2559, i64 18080
  %2600 = getelementptr inbounds nuw i8, ptr %2559, i64 24
  %2601 = getelementptr inbounds nuw i8, ptr %2559, i64 6744
  %2602 = getelementptr inbounds nuw i8, ptr %2559, i64 13976
  %2603 = getelementptr inbounds nuw i8, ptr %2559, i64 13464
  br label %2604

2604:                                             ; preds = %3912, %2579
  %2605 = phi i8 [ %2580, %2579 ], [ %3913, %3912 ]
  switch i8 %2605, label %3906 [
    i8 -39, label %3914
    i8 -38, label %2606
    i8 -36, label %3895
  ]

2606:                                             ; preds = %2604
  %2607 = load ptr, ptr %2561, align 8, !tbaa !21
  %2608 = call fastcc i32 @stbi__get16be(ptr noundef %2607) #17
  %2609 = load ptr, ptr %2561, align 8, !tbaa !21
  %2610 = getelementptr inbounds nuw i8, ptr %2609, i64 192
  %2611 = load ptr, ptr %2610, align 8, !tbaa !16
  %2612 = getelementptr inbounds nuw i8, ptr %2609, i64 200
  %2613 = load ptr, ptr %2612, align 8, !tbaa !18
  %2614 = icmp ult ptr %2611, %2613
  br i1 %2614, label %2615, label %2618

2615:                                             ; preds = %2606
  %2616 = getelementptr inbounds nuw i8, ptr %2611, i64 1
  store ptr %2616, ptr %2610, align 8, !tbaa !16
  %2617 = load i8, ptr %2611, align 1, !tbaa !35
  br label %2653

2618:                                             ; preds = %2606
  %2619 = getelementptr inbounds nuw i8, ptr %2609, i64 48
  %2620 = load i32, ptr %2619, align 8, !tbaa !13
  %2621 = icmp eq i32 %2620, 0
  br i1 %2621, label %2622, label %2623

2622:                                             ; preds = %2618
  store i32 0, ptr %2581, align 4, !tbaa !270
  br label %4060

2623:                                             ; preds = %2618
  %2624 = getelementptr inbounds nuw i8, ptr %2609, i64 16
  %2625 = load ptr, ptr %2624, align 8, !tbaa !8
  %2626 = getelementptr inbounds nuw i8, ptr %2609, i64 40
  %2627 = load ptr, ptr %2626, align 8, !tbaa !33
  %2628 = getelementptr inbounds nuw i8, ptr %2609, i64 56
  %2629 = getelementptr inbounds nuw i8, ptr %2609, i64 52
  %2630 = load i32, ptr %2629, align 4, !tbaa !34
  %2631 = call i32 %2625(ptr noundef %2627, ptr noundef nonnull %2628, i32 noundef %2630) #16
  %2632 = load ptr, ptr %2610, align 8, !tbaa !16
  %2633 = getelementptr inbounds nuw i8, ptr %2609, i64 208
  %2634 = load ptr, ptr %2633, align 8, !tbaa !15
  %2635 = ptrtoint ptr %2632 to i64
  %2636 = ptrtoint ptr %2634 to i64
  %2637 = sub i64 %2635, %2636
  %2638 = trunc i64 %2637 to i32
  %2639 = getelementptr inbounds nuw i8, ptr %2609, i64 184
  %2640 = load i32, ptr %2639, align 8, !tbaa !14
  %2641 = add nsw i32 %2640, %2638
  store i32 %2641, ptr %2639, align 8, !tbaa !14
  %2642 = icmp eq i32 %2631, 0
  br i1 %2642, label %2643, label %2645

2643:                                             ; preds = %2623
  store i32 0, ptr %2619, align 8, !tbaa !13
  %2644 = getelementptr inbounds nuw i8, ptr %2609, i64 57
  store i8 0, ptr %2628, align 8, !tbaa !35
  br label %2649

2645:                                             ; preds = %2623
  %2646 = sext i32 %2631 to i64
  %2647 = getelementptr inbounds i8, ptr %2628, i64 %2646
  %2648 = load i8, ptr %2628, align 1, !tbaa !35
  br label %2649

2649:                                             ; preds = %2645, %2643
  %2650 = phi i8 [ 0, %2643 ], [ %2648, %2645 ]
  %2651 = phi ptr [ %2644, %2643 ], [ %2647, %2645 ]
  store ptr %2651, ptr %2612, align 8, !tbaa !18
  %2652 = getelementptr inbounds nuw i8, ptr %2609, i64 57
  store ptr %2652, ptr %2610, align 8, !tbaa !16
  br label %2653

2653:                                             ; preds = %2649, %2615
  %2654 = phi i8 [ %2617, %2615 ], [ %2650, %2649 ]
  %2655 = zext i8 %2654 to i32
  store i32 %2655, ptr %2581, align 4, !tbaa !270
  %2656 = add i8 %2654, -5
  %2657 = icmp ult i8 %2656, -4
  br i1 %2657, label %4060, label %2658

2658:                                             ; preds = %2653
  %2659 = load ptr, ptr %2561, align 8, !tbaa !21
  %2660 = getelementptr inbounds nuw i8, ptr %2659, i64 8
  %2661 = load i32, ptr %2660, align 8, !tbaa !71
  %2662 = icmp slt i32 %2661, %2655
  br i1 %2662, label %4060, label %2663

2663:                                             ; preds = %2658
  %2664 = shl nuw nsw i32 %2655, 1
  %2665 = add nuw nsw i32 %2664, 6
  %2666 = icmp eq i32 %2608, %2665
  br i1 %2666, label %2667, label %4060

2667:                                             ; preds = %2663, %2796
  %2668 = phi ptr [ %2765, %2796 ], [ %2659, %2663 ]
  %2669 = phi i64 [ %2798, %2796 ], [ 0, %2663 ]
  %2670 = getelementptr inbounds nuw i8, ptr %2668, i64 192
  %2671 = load ptr, ptr %2670, align 8, !tbaa !16
  %2672 = getelementptr inbounds nuw i8, ptr %2668, i64 200
  %2673 = load ptr, ptr %2672, align 8, !tbaa !18
  %2674 = icmp ult ptr %2671, %2673
  br i1 %2674, label %2675, label %2678

2675:                                             ; preds = %2667
  %2676 = getelementptr inbounds nuw i8, ptr %2671, i64 1
  store ptr %2676, ptr %2670, align 8, !tbaa !16
  %2677 = load i8, ptr %2671, align 1, !tbaa !35
  br label %2717

2678:                                             ; preds = %2667
  %2679 = getelementptr inbounds nuw i8, ptr %2668, i64 48
  %2680 = load i32, ptr %2679, align 8, !tbaa !13
  %2681 = icmp eq i32 %2680, 0
  br i1 %2681, label %2717, label %2682

2682:                                             ; preds = %2678
  %2683 = getelementptr inbounds nuw i8, ptr %2668, i64 16
  %2684 = load ptr, ptr %2683, align 8, !tbaa !8
  %2685 = getelementptr inbounds nuw i8, ptr %2668, i64 40
  %2686 = load ptr, ptr %2685, align 8, !tbaa !33
  %2687 = getelementptr inbounds nuw i8, ptr %2668, i64 56
  %2688 = getelementptr inbounds nuw i8, ptr %2668, i64 52
  %2689 = load i32, ptr %2688, align 4, !tbaa !34
  %2690 = call i32 %2684(ptr noundef %2686, ptr noundef nonnull %2687, i32 noundef %2689) #16
  %2691 = load ptr, ptr %2670, align 8, !tbaa !16
  %2692 = getelementptr inbounds nuw i8, ptr %2668, i64 208
  %2693 = load ptr, ptr %2692, align 8, !tbaa !15
  %2694 = ptrtoint ptr %2691 to i64
  %2695 = ptrtoint ptr %2693 to i64
  %2696 = sub i64 %2694, %2695
  %2697 = trunc i64 %2696 to i32
  %2698 = getelementptr inbounds nuw i8, ptr %2668, i64 184
  %2699 = load i32, ptr %2698, align 8, !tbaa !14
  %2700 = add nsw i32 %2699, %2697
  store i32 %2700, ptr %2698, align 8, !tbaa !14
  %2701 = icmp eq i32 %2690, 0
  br i1 %2701, label %2702, label %2704

2702:                                             ; preds = %2682
  store i32 0, ptr %2679, align 8, !tbaa !13
  %2703 = getelementptr inbounds nuw i8, ptr %2668, i64 57
  store i8 0, ptr %2687, align 8, !tbaa !35
  br label %2708

2704:                                             ; preds = %2682
  %2705 = sext i32 %2690 to i64
  %2706 = getelementptr inbounds i8, ptr %2687, i64 %2705
  %2707 = load i8, ptr %2687, align 1, !tbaa !35
  br label %2708

2708:                                             ; preds = %2704, %2702
  %2709 = phi i8 [ 0, %2702 ], [ %2707, %2704 ]
  %2710 = phi ptr [ %2703, %2702 ], [ %2706, %2704 ]
  store ptr %2710, ptr %2672, align 8, !tbaa !18
  %2711 = getelementptr inbounds nuw i8, ptr %2668, i64 57
  store ptr %2711, ptr %2670, align 8, !tbaa !16
  %2712 = load ptr, ptr %2561, align 8, !tbaa !21
  %2713 = getelementptr inbounds nuw i8, ptr %2712, i64 192
  %2714 = load ptr, ptr %2713, align 8, !tbaa !16
  %2715 = getelementptr inbounds nuw i8, ptr %2712, i64 200
  %2716 = load ptr, ptr %2715, align 8, !tbaa !18
  br label %2717

2717:                                             ; preds = %2708, %2678, %2675
  %2718 = phi ptr [ %2668, %2675 ], [ %2712, %2708 ], [ %2668, %2678 ]
  %2719 = phi ptr [ %2673, %2675 ], [ %2716, %2708 ], [ %2673, %2678 ]
  %2720 = phi ptr [ %2676, %2675 ], [ %2714, %2708 ], [ %2671, %2678 ]
  %2721 = phi i8 [ %2677, %2675 ], [ %2709, %2708 ], [ 0, %2678 ]
  %2722 = zext i8 %2721 to i32
  %2723 = getelementptr inbounds nuw i8, ptr %2718, i64 192
  %2724 = getelementptr inbounds nuw i8, ptr %2718, i64 200
  %2725 = icmp ult ptr %2720, %2719
  br i1 %2725, label %2726, label %2729

2726:                                             ; preds = %2717
  %2727 = getelementptr inbounds nuw i8, ptr %2720, i64 1
  store ptr %2727, ptr %2723, align 8, !tbaa !16
  %2728 = load i8, ptr %2720, align 1, !tbaa !35
  br label %2764

2729:                                             ; preds = %2717
  %2730 = getelementptr inbounds nuw i8, ptr %2718, i64 48
  %2731 = load i32, ptr %2730, align 8, !tbaa !13
  %2732 = icmp eq i32 %2731, 0
  br i1 %2732, label %2764, label %2733

2733:                                             ; preds = %2729
  %2734 = getelementptr inbounds nuw i8, ptr %2718, i64 16
  %2735 = load ptr, ptr %2734, align 8, !tbaa !8
  %2736 = getelementptr inbounds nuw i8, ptr %2718, i64 40
  %2737 = load ptr, ptr %2736, align 8, !tbaa !33
  %2738 = getelementptr inbounds nuw i8, ptr %2718, i64 56
  %2739 = getelementptr inbounds nuw i8, ptr %2718, i64 52
  %2740 = load i32, ptr %2739, align 4, !tbaa !34
  %2741 = call i32 %2735(ptr noundef %2737, ptr noundef nonnull %2738, i32 noundef %2740) #16
  %2742 = load ptr, ptr %2723, align 8, !tbaa !16
  %2743 = getelementptr inbounds nuw i8, ptr %2718, i64 208
  %2744 = load ptr, ptr %2743, align 8, !tbaa !15
  %2745 = ptrtoint ptr %2742 to i64
  %2746 = ptrtoint ptr %2744 to i64
  %2747 = sub i64 %2745, %2746
  %2748 = trunc i64 %2747 to i32
  %2749 = getelementptr inbounds nuw i8, ptr %2718, i64 184
  %2750 = load i32, ptr %2749, align 8, !tbaa !14
  %2751 = add nsw i32 %2750, %2748
  store i32 %2751, ptr %2749, align 8, !tbaa !14
  %2752 = icmp eq i32 %2741, 0
  br i1 %2752, label %2753, label %2755

2753:                                             ; preds = %2733
  store i32 0, ptr %2730, align 8, !tbaa !13
  %2754 = getelementptr inbounds nuw i8, ptr %2718, i64 57
  store i8 0, ptr %2738, align 8, !tbaa !35
  br label %2759

2755:                                             ; preds = %2733
  %2756 = sext i32 %2741 to i64
  %2757 = getelementptr inbounds i8, ptr %2738, i64 %2756
  %2758 = load i8, ptr %2738, align 1, !tbaa !35
  br label %2759

2759:                                             ; preds = %2755, %2753
  %2760 = phi i8 [ 0, %2753 ], [ %2758, %2755 ]
  %2761 = phi ptr [ %2754, %2753 ], [ %2757, %2755 ]
  store ptr %2761, ptr %2724, align 8, !tbaa !18
  %2762 = getelementptr inbounds nuw i8, ptr %2718, i64 57
  store ptr %2762, ptr %2723, align 8, !tbaa !16
  %2763 = load ptr, ptr %2561, align 8, !tbaa !21
  br label %2764

2764:                                             ; preds = %2759, %2729, %2726
  %2765 = phi ptr [ %2718, %2726 ], [ %2763, %2759 ], [ %2718, %2729 ]
  %2766 = phi i8 [ %2728, %2726 ], [ %2760, %2759 ], [ 0, %2729 ]
  %2767 = zext i8 %2766 to i32
  %2768 = getelementptr inbounds nuw i8, ptr %2765, i64 8
  %2769 = load i32, ptr %2768, align 8, !tbaa !71
  %2770 = icmp sgt i32 %2769, 0
  br i1 %2770, label %2771, label %2783

2771:                                             ; preds = %2764
  %2772 = zext nneg i32 %2769 to i64
  br label %2773

2773:                                             ; preds = %2778, %2771
  %2774 = phi i64 [ 0, %2771 ], [ %2779, %2778 ]
  %2775 = getelementptr inbounds nuw %struct.anon, ptr %2567, i64 %2774
  %2776 = load i32, ptr %2775, align 8, !tbaa !80
  %2777 = icmp eq i32 %2776, %2722
  br i1 %2777, label %2781, label %2778

2778:                                             ; preds = %2773
  %2779 = add nuw nsw i64 %2774, 1
  %2780 = icmp eq i64 %2779, %2772
  br i1 %2780, label %4060, label %2773, !llvm.loop !271

2781:                                             ; preds = %2773
  %2782 = trunc nuw nsw i64 %2774 to i32
  br label %2783

2783:                                             ; preds = %2781, %2764
  %2784 = phi i32 [ 0, %2764 ], [ %2782, %2781 ]
  %2785 = icmp eq i32 %2784, %2769
  br i1 %2785, label %4060, label %2786

2786:                                             ; preds = %2783
  %2787 = lshr i32 %2767, 4
  %2788 = zext nneg i32 %2784 to i64
  %2789 = getelementptr inbounds nuw %struct.anon, ptr %2567, i64 %2788
  %2790 = getelementptr inbounds nuw i8, ptr %2789, i64 16
  store i32 %2787, ptr %2790, align 8, !tbaa !272
  %2791 = icmp ugt i8 %2766, 63
  br i1 %2791, label %4060, label %2792

2792:                                             ; preds = %2786
  %2793 = and i32 %2767, 15
  %2794 = getelementptr inbounds nuw i8, ptr %2789, i64 20
  store i32 %2793, ptr %2794, align 4, !tbaa !273
  %2795 = icmp samesign ugt i32 %2793, 3
  br i1 %2795, label %4060, label %2796

2796:                                             ; preds = %2792
  %2797 = getelementptr inbounds nuw i32, ptr %2582, i64 %2669
  store i32 %2784, ptr %2797, align 4, !tbaa !4
  %2798 = add nuw nsw i64 %2669, 1
  %2799 = load i32, ptr %2581, align 4, !tbaa !270
  %2800 = sext i32 %2799 to i64
  %2801 = icmp slt i64 %2798, %2800
  br i1 %2801, label %2667, label %2802, !llvm.loop !274

2802:                                             ; preds = %2796
  %2803 = getelementptr inbounds nuw i8, ptr %2765, i64 192
  %2804 = load ptr, ptr %2803, align 8, !tbaa !16
  %2805 = getelementptr inbounds nuw i8, ptr %2765, i64 200
  %2806 = load ptr, ptr %2805, align 8, !tbaa !18
  %2807 = icmp ult ptr %2804, %2806
  br i1 %2807, label %2808, label %2811

2808:                                             ; preds = %2802
  %2809 = getelementptr inbounds nuw i8, ptr %2804, i64 1
  store ptr %2809, ptr %2803, align 8, !tbaa !16
  %2810 = load i8, ptr %2804, align 1, !tbaa !35
  br label %2850

2811:                                             ; preds = %2802
  %2812 = getelementptr inbounds nuw i8, ptr %2765, i64 48
  %2813 = load i32, ptr %2812, align 8, !tbaa !13
  %2814 = icmp eq i32 %2813, 0
  br i1 %2814, label %2850, label %2815

2815:                                             ; preds = %2811
  %2816 = getelementptr inbounds nuw i8, ptr %2765, i64 16
  %2817 = load ptr, ptr %2816, align 8, !tbaa !8
  %2818 = getelementptr inbounds nuw i8, ptr %2765, i64 40
  %2819 = load ptr, ptr %2818, align 8, !tbaa !33
  %2820 = getelementptr inbounds nuw i8, ptr %2765, i64 56
  %2821 = getelementptr inbounds nuw i8, ptr %2765, i64 52
  %2822 = load i32, ptr %2821, align 4, !tbaa !34
  %2823 = call i32 %2817(ptr noundef %2819, ptr noundef nonnull %2820, i32 noundef %2822) #16
  %2824 = load ptr, ptr %2803, align 8, !tbaa !16
  %2825 = getelementptr inbounds nuw i8, ptr %2765, i64 208
  %2826 = load ptr, ptr %2825, align 8, !tbaa !15
  %2827 = ptrtoint ptr %2824 to i64
  %2828 = ptrtoint ptr %2826 to i64
  %2829 = sub i64 %2827, %2828
  %2830 = trunc i64 %2829 to i32
  %2831 = getelementptr inbounds nuw i8, ptr %2765, i64 184
  %2832 = load i32, ptr %2831, align 8, !tbaa !14
  %2833 = add nsw i32 %2832, %2830
  store i32 %2833, ptr %2831, align 8, !tbaa !14
  %2834 = icmp eq i32 %2823, 0
  br i1 %2834, label %2835, label %2837

2835:                                             ; preds = %2815
  store i32 0, ptr %2812, align 8, !tbaa !13
  %2836 = getelementptr inbounds nuw i8, ptr %2765, i64 57
  store i8 0, ptr %2820, align 8, !tbaa !35
  br label %2841

2837:                                             ; preds = %2815
  %2838 = sext i32 %2823 to i64
  %2839 = getelementptr inbounds i8, ptr %2820, i64 %2838
  %2840 = load i8, ptr %2820, align 1, !tbaa !35
  br label %2841

2841:                                             ; preds = %2837, %2835
  %2842 = phi i8 [ 0, %2835 ], [ %2840, %2837 ]
  %2843 = phi ptr [ %2836, %2835 ], [ %2839, %2837 ]
  store ptr %2843, ptr %2805, align 8, !tbaa !18
  %2844 = getelementptr inbounds nuw i8, ptr %2765, i64 57
  store ptr %2844, ptr %2803, align 8, !tbaa !16
  %2845 = load ptr, ptr %2561, align 8, !tbaa !21
  %2846 = getelementptr inbounds nuw i8, ptr %2845, i64 192
  %2847 = load ptr, ptr %2846, align 8, !tbaa !16
  %2848 = getelementptr inbounds nuw i8, ptr %2845, i64 200
  %2849 = load ptr, ptr %2848, align 8, !tbaa !18
  br label %2850

2850:                                             ; preds = %2841, %2811, %2808
  %2851 = phi ptr [ %2806, %2808 ], [ %2849, %2841 ], [ %2806, %2811 ]
  %2852 = phi ptr [ %2809, %2808 ], [ %2847, %2841 ], [ %2804, %2811 ]
  %2853 = phi ptr [ %2765, %2808 ], [ %2845, %2841 ], [ %2765, %2811 ]
  %2854 = phi i8 [ %2810, %2808 ], [ %2842, %2841 ], [ 0, %2811 ]
  %2855 = zext i8 %2854 to i32
  store i32 %2855, ptr %2583, align 4, !tbaa !275
  %2856 = getelementptr inbounds nuw i8, ptr %2853, i64 192
  %2857 = getelementptr inbounds nuw i8, ptr %2853, i64 200
  %2858 = icmp ult ptr %2852, %2851
  br i1 %2858, label %2859, label %2862

2859:                                             ; preds = %2850
  %2860 = getelementptr inbounds nuw i8, ptr %2852, i64 1
  store ptr %2860, ptr %2856, align 8, !tbaa !16
  %2861 = load i8, ptr %2852, align 1, !tbaa !35
  br label %2901

2862:                                             ; preds = %2850
  %2863 = getelementptr inbounds nuw i8, ptr %2853, i64 48
  %2864 = load i32, ptr %2863, align 8, !tbaa !13
  %2865 = icmp eq i32 %2864, 0
  br i1 %2865, label %2901, label %2866

2866:                                             ; preds = %2862
  %2867 = getelementptr inbounds nuw i8, ptr %2853, i64 16
  %2868 = load ptr, ptr %2867, align 8, !tbaa !8
  %2869 = getelementptr inbounds nuw i8, ptr %2853, i64 40
  %2870 = load ptr, ptr %2869, align 8, !tbaa !33
  %2871 = getelementptr inbounds nuw i8, ptr %2853, i64 56
  %2872 = getelementptr inbounds nuw i8, ptr %2853, i64 52
  %2873 = load i32, ptr %2872, align 4, !tbaa !34
  %2874 = call i32 %2868(ptr noundef %2870, ptr noundef nonnull %2871, i32 noundef %2873) #16
  %2875 = load ptr, ptr %2856, align 8, !tbaa !16
  %2876 = getelementptr inbounds nuw i8, ptr %2853, i64 208
  %2877 = load ptr, ptr %2876, align 8, !tbaa !15
  %2878 = ptrtoint ptr %2875 to i64
  %2879 = ptrtoint ptr %2877 to i64
  %2880 = sub i64 %2878, %2879
  %2881 = trunc i64 %2880 to i32
  %2882 = getelementptr inbounds nuw i8, ptr %2853, i64 184
  %2883 = load i32, ptr %2882, align 8, !tbaa !14
  %2884 = add nsw i32 %2883, %2881
  store i32 %2884, ptr %2882, align 8, !tbaa !14
  %2885 = icmp eq i32 %2874, 0
  br i1 %2885, label %2886, label %2888

2886:                                             ; preds = %2866
  store i32 0, ptr %2863, align 8, !tbaa !13
  %2887 = getelementptr inbounds nuw i8, ptr %2853, i64 57
  store i8 0, ptr %2871, align 8, !tbaa !35
  br label %2892

2888:                                             ; preds = %2866
  %2889 = sext i32 %2874 to i64
  %2890 = getelementptr inbounds i8, ptr %2871, i64 %2889
  %2891 = load i8, ptr %2871, align 1, !tbaa !35
  br label %2892

2892:                                             ; preds = %2888, %2886
  %2893 = phi i8 [ 0, %2886 ], [ %2891, %2888 ]
  %2894 = phi ptr [ %2887, %2886 ], [ %2890, %2888 ]
  store ptr %2894, ptr %2857, align 8, !tbaa !18
  %2895 = getelementptr inbounds nuw i8, ptr %2853, i64 57
  store ptr %2895, ptr %2856, align 8, !tbaa !16
  %2896 = load ptr, ptr %2561, align 8, !tbaa !21
  %2897 = getelementptr inbounds nuw i8, ptr %2896, i64 192
  %2898 = load ptr, ptr %2897, align 8, !tbaa !16
  %2899 = getelementptr inbounds nuw i8, ptr %2896, i64 200
  %2900 = load ptr, ptr %2899, align 8, !tbaa !18
  br label %2901

2901:                                             ; preds = %2892, %2862, %2859
  %2902 = phi ptr [ %2851, %2859 ], [ %2900, %2892 ], [ %2851, %2862 ]
  %2903 = phi ptr [ %2860, %2859 ], [ %2898, %2892 ], [ %2852, %2862 ]
  %2904 = phi ptr [ %2853, %2859 ], [ %2896, %2892 ], [ %2853, %2862 ]
  %2905 = phi i8 [ %2861, %2859 ], [ %2893, %2892 ], [ 0, %2862 ]
  %2906 = zext i8 %2905 to i32
  store i32 %2906, ptr %2584, align 8, !tbaa !276
  %2907 = getelementptr inbounds nuw i8, ptr %2904, i64 192
  %2908 = getelementptr inbounds nuw i8, ptr %2904, i64 200
  %2909 = icmp ult ptr %2903, %2902
  br i1 %2909, label %2910, label %2913

2910:                                             ; preds = %2901
  %2911 = getelementptr inbounds nuw i8, ptr %2903, i64 1
  store ptr %2911, ptr %2907, align 8, !tbaa !16
  %2912 = load i8, ptr %2903, align 1, !tbaa !35
  br label %2947

2913:                                             ; preds = %2901
  %2914 = getelementptr inbounds nuw i8, ptr %2904, i64 48
  %2915 = load i32, ptr %2914, align 8, !tbaa !13
  %2916 = icmp eq i32 %2915, 0
  br i1 %2916, label %2947, label %2917

2917:                                             ; preds = %2913
  %2918 = getelementptr inbounds nuw i8, ptr %2904, i64 16
  %2919 = load ptr, ptr %2918, align 8, !tbaa !8
  %2920 = getelementptr inbounds nuw i8, ptr %2904, i64 40
  %2921 = load ptr, ptr %2920, align 8, !tbaa !33
  %2922 = getelementptr inbounds nuw i8, ptr %2904, i64 56
  %2923 = getelementptr inbounds nuw i8, ptr %2904, i64 52
  %2924 = load i32, ptr %2923, align 4, !tbaa !34
  %2925 = call i32 %2919(ptr noundef %2921, ptr noundef nonnull %2922, i32 noundef %2924) #16
  %2926 = load ptr, ptr %2907, align 8, !tbaa !16
  %2927 = getelementptr inbounds nuw i8, ptr %2904, i64 208
  %2928 = load ptr, ptr %2927, align 8, !tbaa !15
  %2929 = ptrtoint ptr %2926 to i64
  %2930 = ptrtoint ptr %2928 to i64
  %2931 = sub i64 %2929, %2930
  %2932 = trunc i64 %2931 to i32
  %2933 = getelementptr inbounds nuw i8, ptr %2904, i64 184
  %2934 = load i32, ptr %2933, align 8, !tbaa !14
  %2935 = add nsw i32 %2934, %2932
  store i32 %2935, ptr %2933, align 8, !tbaa !14
  %2936 = icmp eq i32 %2925, 0
  br i1 %2936, label %2937, label %2939

2937:                                             ; preds = %2917
  store i32 0, ptr %2914, align 8, !tbaa !13
  %2938 = getelementptr inbounds nuw i8, ptr %2904, i64 57
  store i8 0, ptr %2922, align 8, !tbaa !35
  br label %2943

2939:                                             ; preds = %2917
  %2940 = sext i32 %2925 to i64
  %2941 = getelementptr inbounds i8, ptr %2922, i64 %2940
  %2942 = load i8, ptr %2922, align 1, !tbaa !35
  br label %2943

2943:                                             ; preds = %2939, %2937
  %2944 = phi i8 [ 0, %2937 ], [ %2942, %2939 ]
  %2945 = phi ptr [ %2938, %2937 ], [ %2941, %2939 ]
  store ptr %2945, ptr %2908, align 8, !tbaa !18
  %2946 = getelementptr inbounds nuw i8, ptr %2904, i64 57
  store ptr %2946, ptr %2907, align 8, !tbaa !16
  br label %2947

2947:                                             ; preds = %2943, %2913, %2910
  %2948 = phi i8 [ %2912, %2910 ], [ %2944, %2943 ], [ 0, %2913 ]
  %2949 = zext i8 %2948 to i32
  %2950 = lshr i32 %2949, 4
  store i32 %2950, ptr %2585, align 4, !tbaa !277
  %2951 = and i32 %2949, 15
  store i32 %2951, ptr %2586, align 8, !tbaa !278
  %2952 = load i32, ptr %2587, align 8, !tbaa !60
  %2953 = icmp eq i32 %2952, 0
  %2954 = load i32, ptr %2583, align 4, !tbaa !275
  br i1 %2953, label %2966, label %2955

2955:                                             ; preds = %2947
  %2956 = icmp sgt i32 %2954, 63
  br i1 %2956, label %4060, label %2957

2957:                                             ; preds = %2955
  %2958 = load i32, ptr %2584, align 8, !tbaa !276
  %2959 = icmp sgt i32 %2958, 63
  %2960 = icmp sgt i32 %2954, %2958
  %2961 = or i1 %2959, %2960
  br i1 %2961, label %4060, label %2962

2962:                                             ; preds = %2957
  %2963 = icmp ugt i8 %2948, -33
  %2964 = icmp samesign ugt i32 %2951, 13
  %2965 = select i1 %2963, i1 true, i1 %2964
  br i1 %2965, label %4060, label %2972

2966:                                             ; preds = %2947
  %2967 = icmp eq i32 %2954, 0
  %2968 = or i32 %2950, %2951
  %2969 = icmp eq i32 %2968, 0
  %2970 = select i1 %2967, i1 %2969, i1 false
  br i1 %2970, label %2971, label %4060

2971:                                             ; preds = %2966
  store i32 63, ptr %2584, align 8, !tbaa !276
  br label %2972

2972:                                             ; preds = %2971, %2962
  store i32 0, ptr %2588, align 4, !tbaa !279
  store i32 0, ptr %2589, align 8, !tbaa !280
  store i32 0, ptr %2590, align 4, !tbaa !281
  store i32 0, ptr %2591, align 8, !tbaa !282
  store i32 0, ptr %2592, align 8, !tbaa !282
  store i32 0, ptr %2593, align 8, !tbaa !282
  store i32 0, ptr %2594, align 8, !tbaa !282
  store i8 -1, ptr %2595, align 8, !tbaa !56
  %2973 = load i32, ptr %2576, align 8, !tbaa !62
  %2974 = icmp eq i32 %2973, 0
  %2975 = select i1 %2974, i32 2147483647, i32 %2973
  store i32 %2975, ptr %2596, align 4, !tbaa !283
  store i32 0, ptr %2597, align 4, !tbaa !284
  %2976 = load i32, ptr %2581, align 4, !tbaa !270
  %2977 = icmp eq i32 %2976, 1
  br i1 %2953, label %2978, label %3170

2978:                                             ; preds = %2972
  br i1 %2977, label %2979, label %3050

2979:                                             ; preds = %2978
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %2980 = load i32, ptr %2582, align 8, !tbaa !4
  %2981 = sext i32 %2980 to i64
  %2982 = getelementptr inbounds %struct.anon, ptr %2567, i64 %2981
  %2983 = getelementptr inbounds nuw i8, ptr %2982, i64 32
  %2984 = load i32, ptr %2983, align 8, !tbaa !94
  %2985 = add nsw i32 %2984, 7
  %2986 = ashr i32 %2985, 3
  %2987 = icmp sgt i32 %2986, 0
  br i1 %2987, label %2988, label %3048

2988:                                             ; preds = %2979
  %2989 = getelementptr inbounds nuw i8, ptr %2982, i64 28
  %2990 = load i32, ptr %2989, align 4, !tbaa !93
  %2991 = add nsw i32 %2990, 7
  %2992 = ashr i32 %2991, 3
  %2993 = icmp sgt i32 %2992, 0
  %2994 = getelementptr inbounds nuw i8, ptr %2982, i64 20
  %2995 = getelementptr inbounds nuw i8, ptr %2982, i64 16
  %2996 = getelementptr inbounds nuw i8, ptr %2982, i64 12
  %2997 = getelementptr inbounds nuw i8, ptr %2982, i64 48
  %2998 = getelementptr inbounds nuw i8, ptr %2982, i64 36
  %2999 = zext nneg i32 %2992 to i64
  br label %3000

3000:                                             ; preds = %3045, %2988
  %3001 = phi i32 [ 0, %2988 ], [ %3046, %3045 ]
  br i1 %2993, label %3002, label %3045

3002:                                             ; preds = %3000
  %3003 = shl i32 %3001, 3
  br label %3004

3004:                                             ; preds = %3042, %3002
  %3005 = phi i64 [ 0, %3002 ], [ %3043, %3042 ]
  %3006 = load i32, ptr %2994, align 4, !tbaa !273
  %3007 = load i32, ptr %2995, align 8, !tbaa !272
  %3008 = sext i32 %3007 to i64
  %3009 = getelementptr inbounds %struct.stbi__huffman, ptr %2600, i64 %3008
  %3010 = sext i32 %3006 to i64
  %3011 = getelementptr inbounds %struct.stbi__huffman, ptr %2601, i64 %3010
  %3012 = getelementptr inbounds [512 x i16], ptr %2602, i64 %3010
  %3013 = load i32, ptr %2996, align 4, !tbaa !83
  %3014 = sext i32 %3013 to i64
  %3015 = getelementptr inbounds [64 x i16], ptr %2603, i64 %3014
  %3016 = call fastcc i32 @stbi__jpeg_decode_block(ptr noundef nonnull %2561, ptr noundef %6, ptr noundef %3009, ptr noundef %3011, ptr noundef %3012, i32 noundef %2980, ptr noundef %3015) #17
  %3017 = icmp eq i32 %3016, 0
  br i1 %3017, label %3048, label %3018

3018:                                             ; preds = %3004
  %3019 = load ptr, ptr %2563, align 8, !tbaa !267
  %3020 = load ptr, ptr %2997, align 8, !tbaa !72
  %3021 = load i32, ptr %2998, align 4, !tbaa !95
  %3022 = mul i32 %3003, %3021
  %3023 = sext i32 %3022 to i64
  %3024 = getelementptr inbounds i8, ptr %3020, i64 %3023
  %3025 = shl nsw i64 %3005, 3
  %3026 = getelementptr inbounds nuw i8, ptr %3024, i64 %3025
  call void %3019(ptr noundef %3026, i32 noundef %3021, ptr noundef nonnull %6) #16
  %3027 = load i32, ptr %2596, align 4, !tbaa !283
  %3028 = add nsw i32 %3027, -1
  store i32 %3028, ptr %2596, align 4, !tbaa !283
  %3029 = icmp slt i32 %3027, 2
  br i1 %3029, label %3030, label %3042

3030:                                             ; preds = %3018
  %3031 = load i32, ptr %2588, align 4, !tbaa !279
  %3032 = icmp slt i32 %3031, 24
  br i1 %3032, label %3033, label %3034

3033:                                             ; preds = %3030
  call fastcc void @stbi__grow_buffer_unsafe(ptr noundef nonnull %2561) #17
  br label %3034

3034:                                             ; preds = %3033, %3030
  %3035 = load i8, ptr %2595, align 8, !tbaa !56
  %3036 = and i8 %3035, -8
  %3037 = icmp eq i8 %3036, -48
  br i1 %3037, label %3038, label %3048

3038:                                             ; preds = %3034
  store i32 0, ptr %2588, align 4, !tbaa !279
  store i32 0, ptr %2589, align 8, !tbaa !280
  store i32 0, ptr %2590, align 4, !tbaa !281
  store i32 0, ptr %2591, align 8, !tbaa !282
  store i32 0, ptr %2592, align 8, !tbaa !282
  store i32 0, ptr %2593, align 8, !tbaa !282
  store i32 0, ptr %2594, align 8, !tbaa !282
  store i8 -1, ptr %2595, align 8, !tbaa !56
  %3039 = load i32, ptr %2576, align 8, !tbaa !62
  %3040 = icmp eq i32 %3039, 0
  %3041 = select i1 %3040, i32 2147483647, i32 %3039
  store i32 %3041, ptr %2596, align 4, !tbaa !283
  store i32 0, ptr %2597, align 4, !tbaa !284
  br label %3042

3042:                                             ; preds = %3038, %3018
  %3043 = add nuw nsw i64 %3005, 1
  %3044 = icmp eq i64 %3043, %2999
  br i1 %3044, label %3045, label %3004, !llvm.loop !285

3045:                                             ; preds = %3042, %3000
  %3046 = add nuw nsw i32 %3001, 1
  %3047 = icmp eq i32 %3046, %2986
  br i1 %3047, label %3048, label %3000, !llvm.loop !286

3048:                                             ; preds = %3045, %3034, %3004, %2979
  %3049 = phi i32 [ 1, %3034 ], [ 1, %2979 ], [ 0, %3004 ], [ 1, %3045 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %3740

3050:                                             ; preds = %2978
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %3051 = load i32, ptr %2598, align 4, !tbaa !92
  %3052 = icmp sgt i32 %3051, 0
  br i1 %3052, label %3053, label %3168

3053:                                             ; preds = %3050
  %3054 = load i32, ptr %2599, align 8, !tbaa !91
  br label %3055

3055:                                             ; preds = %3162, %3053
  %3056 = phi i32 [ %3051, %3053 ], [ %3163, %3162 ]
  %3057 = phi i32 [ %2975, %3053 ], [ %3164, %3162 ]
  %3058 = phi i32 [ %3054, %3053 ], [ %3165, %3162 ]
  %3059 = phi i32 [ 0, %3053 ], [ %3166, %3162 ]
  %3060 = icmp sgt i32 %3058, 0
  br i1 %3060, label %3061, label %3162

3061:                                             ; preds = %3055, %3155
  %3062 = phi i32 [ %3156, %3155 ], [ %3057, %3055 ]
  %3063 = phi i32 [ %3157, %3155 ], [ 0, %3055 ]
  %3064 = load i32, ptr %2581, align 4, !tbaa !270
  %3065 = icmp sgt i32 %3064, 0
  br i1 %3065, label %3066, label %3139

3066:                                             ; preds = %3061, %3132
  %3067 = phi i32 [ %3133, %3132 ], [ %3064, %3061 ]
  %3068 = phi i64 [ %3134, %3132 ], [ 0, %3061 ]
  %3069 = getelementptr inbounds nuw i32, ptr %2582, i64 %3068
  %3070 = load i32, ptr %3069, align 4, !tbaa !4
  %3071 = sext i32 %3070 to i64
  %3072 = getelementptr inbounds %struct.anon, ptr %2567, i64 %3071
  %3073 = getelementptr inbounds nuw i8, ptr %3072, i64 8
  %3074 = load i32, ptr %3073, align 8, !tbaa !82
  %3075 = icmp sgt i32 %3074, 0
  br i1 %3075, label %3076, label %3132

3076:                                             ; preds = %3066
  %3077 = getelementptr inbounds nuw i8, ptr %3072, i64 4
  %3078 = getelementptr inbounds nuw i8, ptr %3072, i64 20
  %3079 = getelementptr inbounds nuw i8, ptr %3072, i64 16
  %3080 = getelementptr inbounds nuw i8, ptr %3072, i64 12
  %3081 = getelementptr inbounds nuw i8, ptr %3072, i64 48
  %3082 = getelementptr inbounds nuw i8, ptr %3072, i64 36
  %3083 = load i32, ptr %3077, align 4, !tbaa !81
  br label %3084

3084:                                             ; preds = %3125, %3076
  %3085 = phi i32 [ %3074, %3076 ], [ %3126, %3125 ]
  %3086 = phi i32 [ %3083, %3076 ], [ %3127, %3125 ]
  %3087 = phi i32 [ 0, %3076 ], [ %3128, %3125 ]
  %3088 = icmp sgt i32 %3086, 0
  br i1 %3088, label %3089, label %3125

3089:                                             ; preds = %3084, %3105
  %3090 = phi i32 [ %3121, %3105 ], [ %3086, %3084 ]
  %3091 = phi i32 [ %3120, %3105 ], [ 0, %3084 ]
  %3092 = load i32, ptr %3073, align 8, !tbaa !82
  %3093 = load i32, ptr %3078, align 4, !tbaa !273
  %3094 = load i32, ptr %3079, align 8, !tbaa !272
  %3095 = sext i32 %3094 to i64
  %3096 = getelementptr inbounds %struct.stbi__huffman, ptr %2600, i64 %3095
  %3097 = sext i32 %3093 to i64
  %3098 = getelementptr inbounds %struct.stbi__huffman, ptr %2601, i64 %3097
  %3099 = getelementptr inbounds [512 x i16], ptr %2602, i64 %3097
  %3100 = load i32, ptr %3080, align 4, !tbaa !83
  %3101 = sext i32 %3100 to i64
  %3102 = getelementptr inbounds [64 x i16], ptr %2603, i64 %3101
  %3103 = call fastcc i32 @stbi__jpeg_decode_block(ptr noundef nonnull %2561, ptr noundef %7, ptr noundef %3096, ptr noundef %3098, ptr noundef %3099, i32 noundef %3070, ptr noundef %3102) #17
  %3104 = icmp eq i32 %3103, 0
  br i1 %3104, label %3168, label %3105

3105:                                             ; preds = %3089
  %3106 = mul nsw i32 %3092, %3059
  %3107 = add nsw i32 %3106, %3087
  %3108 = shl nsw i32 %3107, 3
  %3109 = mul nsw i32 %3090, %3063
  %3110 = add nsw i32 %3109, %3091
  %3111 = shl nsw i32 %3110, 3
  %3112 = load ptr, ptr %2563, align 8, !tbaa !267
  %3113 = load ptr, ptr %3081, align 8, !tbaa !72
  %3114 = load i32, ptr %3082, align 4, !tbaa !95
  %3115 = mul nsw i32 %3108, %3114
  %3116 = sext i32 %3115 to i64
  %3117 = getelementptr inbounds i8, ptr %3113, i64 %3116
  %3118 = sext i32 %3111 to i64
  %3119 = getelementptr inbounds i8, ptr %3117, i64 %3118
  call void %3112(ptr noundef %3119, i32 noundef %3114, ptr noundef nonnull %7) #16
  %3120 = add nuw nsw i32 %3091, 1
  %3121 = load i32, ptr %3077, align 4, !tbaa !81
  %3122 = icmp slt i32 %3120, %3121
  br i1 %3122, label %3089, label %3123, !llvm.loop !287

3123:                                             ; preds = %3105
  %3124 = load i32, ptr %3073, align 8, !tbaa !82
  br label %3125

3125:                                             ; preds = %3123, %3084
  %3126 = phi i32 [ %3124, %3123 ], [ %3085, %3084 ]
  %3127 = phi i32 [ %3121, %3123 ], [ %3086, %3084 ]
  %3128 = add nuw nsw i32 %3087, 1
  %3129 = icmp slt i32 %3128, %3126
  br i1 %3129, label %3084, label %3130, !llvm.loop !288

3130:                                             ; preds = %3125
  %3131 = load i32, ptr %2581, align 4, !tbaa !270
  br label %3132

3132:                                             ; preds = %3130, %3066
  %3133 = phi i32 [ %3131, %3130 ], [ %3067, %3066 ]
  %3134 = add nuw nsw i64 %3068, 1
  %3135 = sext i32 %3133 to i64
  %3136 = icmp slt i64 %3134, %3135
  br i1 %3136, label %3066, label %3137, !llvm.loop !289

3137:                                             ; preds = %3132
  %3138 = load i32, ptr %2596, align 4, !tbaa !283
  br label %3139

3139:                                             ; preds = %3137, %3061
  %3140 = phi i32 [ %3138, %3137 ], [ %3062, %3061 ]
  %3141 = add nsw i32 %3140, -1
  store i32 %3141, ptr %2596, align 4, !tbaa !283
  %3142 = icmp slt i32 %3140, 2
  br i1 %3142, label %3143, label %3155

3143:                                             ; preds = %3139
  %3144 = load i32, ptr %2588, align 4, !tbaa !279
  %3145 = icmp slt i32 %3144, 24
  br i1 %3145, label %3146, label %3147

3146:                                             ; preds = %3143
  call fastcc void @stbi__grow_buffer_unsafe(ptr noundef nonnull %2561) #17
  br label %3147

3147:                                             ; preds = %3146, %3143
  %3148 = load i8, ptr %2595, align 8, !tbaa !56
  %3149 = and i8 %3148, -8
  %3150 = icmp eq i8 %3149, -48
  br i1 %3150, label %3151, label %3168

3151:                                             ; preds = %3147
  store i32 0, ptr %2588, align 4, !tbaa !279
  store i32 0, ptr %2589, align 8, !tbaa !280
  store i32 0, ptr %2590, align 4, !tbaa !281
  store i32 0, ptr %2591, align 8, !tbaa !282
  store i32 0, ptr %2592, align 8, !tbaa !282
  store i32 0, ptr %2593, align 8, !tbaa !282
  store i32 0, ptr %2594, align 8, !tbaa !282
  store i8 -1, ptr %2595, align 8, !tbaa !56
  %3152 = load i32, ptr %2576, align 8, !tbaa !62
  %3153 = icmp eq i32 %3152, 0
  %3154 = select i1 %3153, i32 2147483647, i32 %3152
  store i32 %3154, ptr %2596, align 4, !tbaa !283
  store i32 0, ptr %2597, align 4, !tbaa !284
  br label %3155

3155:                                             ; preds = %3151, %3139
  %3156 = phi i32 [ %3141, %3139 ], [ %3154, %3151 ]
  %3157 = add nuw nsw i32 %3063, 1
  %3158 = load i32, ptr %2599, align 8, !tbaa !91
  %3159 = icmp slt i32 %3157, %3158
  br i1 %3159, label %3061, label %3160, !llvm.loop !290

3160:                                             ; preds = %3155
  %3161 = load i32, ptr %2598, align 4, !tbaa !92
  br label %3162

3162:                                             ; preds = %3160, %3055
  %3163 = phi i32 [ %3161, %3160 ], [ %3056, %3055 ]
  %3164 = phi i32 [ %3156, %3160 ], [ %3057, %3055 ]
  %3165 = phi i32 [ %3158, %3160 ], [ %3058, %3055 ]
  %3166 = add nuw nsw i32 %3059, 1
  %3167 = icmp slt i32 %3166, %3163
  br i1 %3167, label %3055, label %3168, !llvm.loop !291

3168:                                             ; preds = %3162, %3147, %3089, %3050
  %3169 = phi i32 [ 1, %3050 ], [ 1, %3147 ], [ 0, %3089 ], [ 1, %3162 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %3740

3170:                                             ; preds = %2972
  br i1 %2977, label %3176, label %3171

3171:                                             ; preds = %3170
  %3172 = load i32, ptr %2598, align 4, !tbaa !92
  %3173 = icmp sgt i32 %3172, 0
  br i1 %3173, label %3174, label %3743

3174:                                             ; preds = %3171
  %3175 = load i32, ptr %2599, align 8, !tbaa !91
  br label %3639

3176:                                             ; preds = %3170
  %3177 = load i32, ptr %2582, align 8, !tbaa !4
  %3178 = sext i32 %3177 to i64
  %3179 = getelementptr inbounds %struct.anon, ptr %2567, i64 %3178
  %3180 = getelementptr inbounds nuw i8, ptr %3179, i64 28
  %3181 = load i32, ptr %3180, align 4, !tbaa !93
  %3182 = add nsw i32 %3181, 7
  %3183 = ashr i32 %3182, 3
  %3184 = getelementptr inbounds nuw i8, ptr %3179, i64 32
  %3185 = load i32, ptr %3184, align 8, !tbaa !94
  %3186 = add nsw i32 %3185, 7
  %3187 = ashr i32 %3186, 3
  %3188 = icmp sgt i32 %3187, 0
  br i1 %3188, label %3189, label %3743

3189:                                             ; preds = %3176
  %3190 = icmp sgt i32 %3183, 0
  %3191 = getelementptr inbounds nuw i8, ptr %3179, i64 80
  %3192 = getelementptr inbounds nuw i8, ptr %3179, i64 88
  %3193 = getelementptr inbounds nuw i8, ptr %3179, i64 20
  %3194 = getelementptr inbounds nuw i8, ptr %3179, i64 16
  br label %3195

3195:                                             ; preds = %3636, %3189
  %3196 = phi i32 [ 0, %3189 ], [ %3637, %3636 ]
  br i1 %3190, label %3197, label %3636

3197:                                             ; preds = %3195, %3633
  %3198 = phi i32 [ %3634, %3633 ], [ 0, %3195 ]
  %3199 = load ptr, ptr %3191, align 8, !tbaa !97
  %3200 = load i32, ptr %3192, align 8, !tbaa !292
  %3201 = mul nsw i32 %3200, %3196
  %3202 = add nsw i32 %3201, %3198
  %3203 = shl nsw i32 %3202, 6
  %3204 = sext i32 %3203 to i64
  %3205 = getelementptr inbounds i16, ptr %3199, i64 %3204
  %3206 = load i32, ptr %2583, align 4, !tbaa !275
  %3207 = icmp eq i32 %3206, 0
  br i1 %3207, label %3208, label %3214

3208:                                             ; preds = %3197
  %3209 = load i32, ptr %3194, align 8, !tbaa !272
  %3210 = sext i32 %3209 to i64
  %3211 = getelementptr inbounds %struct.stbi__huffman, ptr %2600, i64 %3210
  %3212 = call fastcc i32 @stbi__jpeg_decode_block_prog_dc(ptr noundef nonnull %2561, ptr noundef %3205, ptr noundef %3211, i32 noundef %3177) #17
  %3213 = icmp eq i32 %3212, 0
  br i1 %3213, label %4060, label %3617

3214:                                             ; preds = %3197
  %3215 = load i32, ptr %3193, align 4, !tbaa !273
  %3216 = sext i32 %3215 to i64
  %3217 = getelementptr inbounds %struct.stbi__huffman, ptr %2601, i64 %3216
  %3218 = getelementptr inbounds [512 x i16], ptr %2602, i64 %3216
  %3219 = load i32, ptr %2585, align 4, !tbaa !277
  %3220 = icmp eq i32 %3219, 0
  %3221 = load i32, ptr %2586, align 8, !tbaa !278
  %3222 = load i32, ptr %2597, align 4, !tbaa !284
  %3223 = icmp eq i32 %3222, 0
  br i1 %3220, label %3224, label %3395

3224:                                             ; preds = %3214
  br i1 %3223, label %3225, label %3231

3225:                                             ; preds = %3224
  %3226 = getelementptr inbounds nuw i8, ptr %3217, i64 1280
  %3227 = getelementptr inbounds nuw i8, ptr %3217, i64 1024
  %3228 = getelementptr inbounds nuw i8, ptr %3217, i64 1540
  %3229 = getelementptr inbounds nuw i8, ptr %3217, i64 1612
  %3230 = load i32, ptr %2588, align 4, !tbaa !279
  br label %3233

3231:                                             ; preds = %3224
  %3232 = add nsw i32 %3222, -1
  br label %3615

3233:                                             ; preds = %3390, %3225
  %3234 = phi i32 [ %3391, %3390 ], [ %3230, %3225 ]
  %3235 = phi i32 [ %3392, %3390 ], [ %3206, %3225 ]
  %3236 = icmp slt i32 %3234, 16
  br i1 %3236, label %3237, label %3238

3237:                                             ; preds = %3233
  call fastcc void @stbi__grow_buffer_unsafe(ptr noundef nonnull %2561) #17
  br label %3238

3238:                                             ; preds = %3237, %3233
  %3239 = load i32, ptr %2589, align 8, !tbaa !280
  %3240 = lshr i32 %3239, 23
  %3241 = zext nneg i32 %3240 to i64
  %3242 = getelementptr inbounds nuw i16, ptr %3218, i64 %3241
  %3243 = load i16, ptr %3242, align 2, !tbaa !39
  %3244 = sext i16 %3243 to i32
  %3245 = icmp eq i16 %3243, 0
  br i1 %3245, label %3265, label %3246

3246:                                             ; preds = %3238
  %3247 = and i32 %3244, 15
  %3248 = load i32, ptr %2588, align 4, !tbaa !279
  %3249 = icmp sgt i32 %3247, %3248
  br i1 %3249, label %4060, label %3250

3250:                                             ; preds = %3246
  %3251 = lshr i32 %3244, 4
  %3252 = and i32 %3251, 15
  %3253 = add nsw i32 %3252, %3235
  %3254 = shl i32 %3239, %3247
  store i32 %3254, ptr %2589, align 8, !tbaa !280
  %3255 = sub nsw i32 %3248, %3247
  store i32 %3255, ptr %2588, align 4, !tbaa !279
  %3256 = add nsw i32 %3253, 1
  %3257 = sext i32 %3253 to i64
  %3258 = getelementptr inbounds i8, ptr @stbi__jpeg_dezigzag, i64 %3257
  %3259 = load i8, ptr %3258, align 1, !tbaa !35
  %3260 = lshr i32 %3244, 8
  %3261 = shl i32 %3260, %3221
  %3262 = trunc i32 %3261 to i16
  %3263 = zext i8 %3259 to i64
  %3264 = getelementptr inbounds nuw i16, ptr %3205, i64 %3263
  store i16 %3262, ptr %3264, align 2, !tbaa !39
  br label %3390

3265:                                             ; preds = %3238
  %3266 = load i32, ptr %2588, align 4, !tbaa !279
  %3267 = icmp slt i32 %3266, 16
  br i1 %3267, label %3268, label %3272

3268:                                             ; preds = %3265
  call fastcc void @stbi__grow_buffer_unsafe(ptr noundef nonnull %2561) #17
  %3269 = load i32, ptr %2589, align 8, !tbaa !280
  %3270 = lshr i32 %3269, 23
  %3271 = zext nneg i32 %3270 to i64
  br label %3272

3272:                                             ; preds = %3268, %3265
  %3273 = phi i64 [ %3271, %3268 ], [ %3241, %3265 ]
  %3274 = phi i32 [ %3269, %3268 ], [ %3239, %3265 ]
  %3275 = getelementptr inbounds nuw i8, ptr %3217, i64 %3273
  %3276 = load i8, ptr %3275, align 1, !tbaa !35
  %3277 = icmp eq i8 %3276, -1
  br i1 %3277, label %3288, label %3278

3278:                                             ; preds = %3272
  %3279 = zext i8 %3276 to i64
  %3280 = getelementptr inbounds nuw i8, ptr %3226, i64 %3279
  %3281 = load i8, ptr %3280, align 1, !tbaa !35
  %3282 = zext i8 %3281 to i32
  %3283 = load i32, ptr %2588, align 4, !tbaa !279
  %3284 = icmp slt i32 %3283, %3282
  br i1 %3284, label %4060, label %3285

3285:                                             ; preds = %3278
  %3286 = shl i32 %3274, %3282
  store i32 %3286, ptr %2589, align 8, !tbaa !280
  %3287 = sub nsw i32 %3283, %3282
  store i32 %3287, ptr %2588, align 4, !tbaa !279
  br label %3318

3288:                                             ; preds = %3272
  %3289 = lshr i32 %3274, 16
  br label %3290

3290:                                             ; preds = %3290, %3288
  %3291 = phi i64 [ %3295, %3290 ], [ 10, %3288 ]
  %3292 = getelementptr inbounds nuw i32, ptr %3228, i64 %3291
  %3293 = load i32, ptr %3292, align 4, !tbaa !4
  %3294 = icmp ult i32 %3289, %3293
  %3295 = add nuw nsw i64 %3291, 1
  br i1 %3294, label %3296, label %3290

3296:                                             ; preds = %3290
  %3297 = trunc nuw nsw i64 %3291 to i32
  %3298 = icmp eq i64 %3291, 17
  %3299 = load i32, ptr %2588, align 4, !tbaa !279
  br i1 %3298, label %3300, label %3302

3300:                                             ; preds = %3296
  %3301 = add nsw i32 %3299, -16
  store i32 %3301, ptr %2588, align 4, !tbaa !279
  br label %4060

3302:                                             ; preds = %3296
  %3303 = icmp slt i32 %3299, %3297
  br i1 %3303, label %4060, label %3304

3304:                                             ; preds = %3302
  %3305 = sub nsw i32 32, %3297
  %3306 = lshr i32 %3274, %3305
  %3307 = getelementptr inbounds nuw i32, ptr @stbi__bmask, i64 %3291
  %3308 = load i32, ptr %3307, align 4, !tbaa !4
  %3309 = and i32 %3308, %3306
  %3310 = getelementptr inbounds nuw i32, ptr %3229, i64 %3291
  %3311 = load i32, ptr %3310, align 4, !tbaa !4
  %3312 = add i32 %3309, %3311
  %3313 = icmp ugt i32 %3312, 255
  br i1 %3313, label %4060, label %3314

3314:                                             ; preds = %3304
  %3315 = sub nsw i32 %3299, %3297
  store i32 %3315, ptr %2588, align 4, !tbaa !279
  %3316 = shl i32 %3274, %3297
  store i32 %3316, ptr %2589, align 8, !tbaa !280
  %3317 = zext nneg i32 %3312 to i64
  br label %3318

3318:                                             ; preds = %3314, %3285
  %3319 = phi i32 [ %3315, %3314 ], [ %3287, %3285 ]
  %3320 = phi i64 [ %3317, %3314 ], [ %3279, %3285 ]
  %3321 = getelementptr inbounds nuw i8, ptr %3227, i64 %3320
  %3322 = load i8, ptr %3321, align 1, !tbaa !35
  %3323 = zext i8 %3322 to i32
  %3324 = and i32 %3323, 15
  %3325 = lshr i32 %3323, 4
  %3326 = icmp eq i32 %3324, 0
  br i1 %3326, label %3327, label %3356

3327:                                             ; preds = %3318
  %3328 = icmp ult i8 %3322, -16
  br i1 %3328, label %3329, label %3354

3329:                                             ; preds = %3327
  %3330 = shl nuw nsw i32 1, %3325
  store i32 %3330, ptr %2597, align 4, !tbaa !284
  %3331 = icmp eq i32 %3325, 0
  br i1 %3331, label %3615, label %3332

3332:                                             ; preds = %3329
  %3333 = icmp slt i32 %3319, %3325
  br i1 %3333, label %3334, label %3336

3334:                                             ; preds = %3332
  call fastcc void @stbi__grow_buffer_unsafe(ptr noundef nonnull %2561) #17
  %3335 = load i32, ptr %2588, align 4, !tbaa !279
  br label %3336

3336:                                             ; preds = %3334, %3332
  %3337 = phi i32 [ %3335, %3334 ], [ %3319, %3332 ]
  %3338 = icmp slt i32 %3337, %3325
  br i1 %3338, label %3350, label %3339

3339:                                             ; preds = %3336
  %3340 = load i32, ptr %2589, align 8, !tbaa !280
  %3341 = call i32 @llvm.fshl.i32(i32 %3340, i32 %3340, i32 range(i32 1, 15) %3325)
  %3342 = zext nneg i32 %3325 to i64
  %3343 = getelementptr inbounds nuw i32, ptr @stbi__bmask, i64 %3342
  %3344 = load i32, ptr %3343, align 4, !tbaa !4
  %3345 = xor i32 %3344, -1
  %3346 = and i32 %3341, %3345
  store i32 %3346, ptr %2589, align 8, !tbaa !280
  %3347 = and i32 %3341, %3344
  %3348 = sub nsw i32 %3337, %3325
  store i32 %3348, ptr %2588, align 4, !tbaa !279
  %3349 = add i32 %3347, -1
  br label %3350

3350:                                             ; preds = %3339, %3336
  %3351 = phi i32 [ %3349, %3339 ], [ -1, %3336 ]
  %3352 = load i32, ptr %2597, align 4, !tbaa !284
  %3353 = add i32 %3352, %3351
  br label %3615

3354:                                             ; preds = %3327
  %3355 = add nsw i32 %3235, 16
  br label %3390

3356:                                             ; preds = %3318
  %3357 = add nsw i32 %3325, %3235
  %3358 = add nsw i32 %3357, 1
  %3359 = sext i32 %3357 to i64
  %3360 = getelementptr inbounds i8, ptr @stbi__jpeg_dezigzag, i64 %3359
  %3361 = load i8, ptr %3360, align 1, !tbaa !35
  %3362 = icmp slt i32 %3319, %3324
  br i1 %3362, label %3363, label %3365

3363:                                             ; preds = %3356
  call fastcc void @stbi__grow_buffer_unsafe(ptr noundef nonnull %2561) #17
  %3364 = load i32, ptr %2588, align 4, !tbaa !279
  br label %3365

3365:                                             ; preds = %3363, %3356
  %3366 = phi i32 [ %3364, %3363 ], [ %3319, %3356 ]
  %3367 = icmp slt i32 %3366, %3324
  br i1 %3367, label %3383, label %3368

3368:                                             ; preds = %3365
  %3369 = load i32, ptr %2589, align 8, !tbaa !280
  %3370 = call i32 @llvm.fshl.i32(i32 %3369, i32 %3369, i32 range(i32 1, 16) %3324)
  %3371 = zext nneg i32 %3324 to i64
  %3372 = getelementptr inbounds nuw i32, ptr @stbi__bmask, i64 %3371
  %3373 = load i32, ptr %3372, align 4, !tbaa !4
  %3374 = xor i32 %3373, -1
  %3375 = and i32 %3370, %3374
  store i32 %3375, ptr %2589, align 8, !tbaa !280
  %3376 = and i32 %3370, %3373
  %3377 = sub nsw i32 %3366, %3324
  store i32 %3377, ptr %2588, align 4, !tbaa !279
  %3378 = getelementptr inbounds nuw i32, ptr @stbi__jbias, i64 %3371
  %3379 = load i32, ptr %3378, align 4, !tbaa !4
  %3380 = icmp slt i32 %3369, 0
  %3381 = select i1 %3380, i32 0, i32 %3379
  %3382 = add i32 %3381, %3376
  br label %3383

3383:                                             ; preds = %3368, %3365
  %3384 = phi i32 [ %3377, %3368 ], [ %3366, %3365 ]
  %3385 = phi i32 [ %3382, %3368 ], [ 0, %3365 ]
  %3386 = shl i32 %3385, %3221
  %3387 = trunc i32 %3386 to i16
  %3388 = zext i8 %3361 to i64
  %3389 = getelementptr inbounds nuw i16, ptr %3205, i64 %3388
  store i16 %3387, ptr %3389, align 2, !tbaa !39
  br label %3390

3390:                                             ; preds = %3383, %3354, %3250
  %3391 = phi i32 [ %3319, %3354 ], [ %3384, %3383 ], [ %3255, %3250 ]
  %3392 = phi i32 [ %3355, %3354 ], [ %3358, %3383 ], [ %3256, %3250 ]
  %3393 = load i32, ptr %2584, align 8, !tbaa !276
  %3394 = icmp sgt i32 %3392, %3393
  br i1 %3394, label %3617, label %3233, !llvm.loop !293

3395:                                             ; preds = %3214
  br i1 %3223, label %3396, label %3406

3396:                                             ; preds = %3395
  %3397 = getelementptr inbounds nuw i8, ptr %3217, i64 1280
  %3398 = getelementptr inbounds nuw i8, ptr %3217, i64 1024
  %3399 = getelementptr inbounds nuw i8, ptr %3217, i64 1540
  %3400 = getelementptr inbounds nuw i8, ptr %3217, i64 1612
  %3401 = shl i32 65536, %3221
  %3402 = ashr exact i32 %3401, 16
  %3403 = sub nsw i32 0, %3402
  %3404 = trunc nsw i32 %3402 to i16
  %3405 = load i32, ptr %2588, align 4, !tbaa !279
  br label %3450

3406:                                             ; preds = %3395
  %3407 = add nsw i32 %3222, -1
  store i32 %3407, ptr %2597, align 4, !tbaa !284
  %3408 = load i32, ptr %2584, align 8, !tbaa !276
  %3409 = icmp sgt i32 %3206, %3408
  br i1 %3409, label %3617, label %3410

3410:                                             ; preds = %3406
  %3411 = shl i32 65536, %3221
  %3412 = ashr exact i32 %3411, 16
  %3413 = trunc nsw i32 %3412 to i16
  %3414 = sext i32 %3206 to i64
  %3415 = sub i16 0, %3413
  br label %3416

3416:                                             ; preds = %3445, %3410
  %3417 = phi i64 [ %3414, %3410 ], [ %3446, %3445 ]
  %3418 = getelementptr inbounds i8, ptr @stbi__jpeg_dezigzag, i64 %3417
  %3419 = load i8, ptr %3418, align 1, !tbaa !35
  %3420 = zext i8 %3419 to i64
  %3421 = getelementptr inbounds nuw i16, ptr %3205, i64 %3420
  %3422 = load i16, ptr %3421, align 2, !tbaa !39
  %3423 = icmp eq i16 %3422, 0
  br i1 %3423, label %3445, label %3424

3424:                                             ; preds = %3416
  %3425 = load i32, ptr %2588, align 4, !tbaa !279
  %3426 = icmp slt i32 %3425, 1
  br i1 %3426, label %3427, label %3430

3427:                                             ; preds = %3424
  call fastcc void @stbi__grow_buffer_unsafe(ptr noundef nonnull %2561) #17
  %3428 = load i32, ptr %2588, align 4, !tbaa !279
  %3429 = icmp slt i32 %3428, 1
  br i1 %3429, label %3445, label %3430

3430:                                             ; preds = %3427, %3424
  %3431 = phi i32 [ %3428, %3427 ], [ %3425, %3424 ]
  %3432 = load i32, ptr %2589, align 8, !tbaa !280
  %3433 = shl i32 %3432, 1
  store i32 %3433, ptr %2589, align 8, !tbaa !280
  %3434 = add nsw i32 %3431, -1
  store i32 %3434, ptr %2588, align 4, !tbaa !279
  %3435 = icmp sgt i32 %3432, -1
  br i1 %3435, label %3445, label %3436

3436:                                             ; preds = %3430
  %3437 = load i16, ptr %3421, align 2, !tbaa !39
  %3438 = sext i16 %3437 to i32
  %3439 = and i32 %3412, %3438
  %3440 = icmp eq i32 %3439, 0
  br i1 %3440, label %3441, label %3445

3441:                                             ; preds = %3436
  %3442 = icmp sgt i16 %3437, 0
  %3443 = select i1 %3442, i16 %3413, i16 %3415
  %3444 = add i16 %3443, %3437
  store i16 %3444, ptr %3421, align 2, !tbaa !39
  br label %3445

3445:                                             ; preds = %3441, %3436, %3430, %3427, %3416
  %3446 = add nsw i64 %3417, 1
  %3447 = load i32, ptr %2584, align 8, !tbaa !276
  %3448 = sext i32 %3447 to i64
  %3449 = icmp slt i64 %3417, %3448
  br i1 %3449, label %3416, label %3617, !llvm.loop !294

3450:                                             ; preds = %3610, %3396
  %3451 = phi i32 [ %3612, %3610 ], [ %3405, %3396 ]
  %3452 = phi i32 [ %3613, %3610 ], [ %3206, %3396 ]
  %3453 = icmp slt i32 %3451, 16
  br i1 %3453, label %3454, label %3455

3454:                                             ; preds = %3450
  call fastcc void @stbi__grow_buffer_unsafe(ptr noundef nonnull %2561) #17
  br label %3455

3455:                                             ; preds = %3454, %3450
  %3456 = load i32, ptr %2589, align 8, !tbaa !280
  %3457 = lshr i32 %3456, 23
  %3458 = zext nneg i32 %3457 to i64
  %3459 = getelementptr inbounds nuw i8, ptr %3217, i64 %3458
  %3460 = load i8, ptr %3459, align 1, !tbaa !35
  %3461 = icmp eq i8 %3460, -1
  br i1 %3461, label %3472, label %3462

3462:                                             ; preds = %3455
  %3463 = zext i8 %3460 to i64
  %3464 = getelementptr inbounds nuw i8, ptr %3397, i64 %3463
  %3465 = load i8, ptr %3464, align 1, !tbaa !35
  %3466 = zext i8 %3465 to i32
  %3467 = load i32, ptr %2588, align 4, !tbaa !279
  %3468 = icmp slt i32 %3467, %3466
  br i1 %3468, label %4060, label %3469

3469:                                             ; preds = %3462
  %3470 = shl i32 %3456, %3466
  store i32 %3470, ptr %2589, align 8, !tbaa !280
  %3471 = sub nsw i32 %3467, %3466
  store i32 %3471, ptr %2588, align 4, !tbaa !279
  br label %3502

3472:                                             ; preds = %3455
  %3473 = lshr i32 %3456, 16
  br label %3474

3474:                                             ; preds = %3474, %3472
  %3475 = phi i64 [ %3479, %3474 ], [ 10, %3472 ]
  %3476 = getelementptr inbounds nuw i32, ptr %3399, i64 %3475
  %3477 = load i32, ptr %3476, align 4, !tbaa !4
  %3478 = icmp ult i32 %3473, %3477
  %3479 = add nuw nsw i64 %3475, 1
  br i1 %3478, label %3480, label %3474

3480:                                             ; preds = %3474
  %3481 = trunc nuw nsw i64 %3475 to i32
  %3482 = icmp eq i64 %3475, 17
  %3483 = load i32, ptr %2588, align 4, !tbaa !279
  br i1 %3482, label %3484, label %3486

3484:                                             ; preds = %3480
  %3485 = add nsw i32 %3483, -16
  store i32 %3485, ptr %2588, align 4, !tbaa !279
  br label %4060

3486:                                             ; preds = %3480
  %3487 = icmp slt i32 %3483, %3481
  br i1 %3487, label %4060, label %3488

3488:                                             ; preds = %3486
  %3489 = sub nsw i32 32, %3481
  %3490 = lshr i32 %3456, %3489
  %3491 = getelementptr inbounds nuw i32, ptr @stbi__bmask, i64 %3475
  %3492 = load i32, ptr %3491, align 4, !tbaa !4
  %3493 = and i32 %3492, %3490
  %3494 = getelementptr inbounds nuw i32, ptr %3400, i64 %3475
  %3495 = load i32, ptr %3494, align 4, !tbaa !4
  %3496 = add i32 %3493, %3495
  %3497 = icmp ugt i32 %3496, 255
  br i1 %3497, label %4060, label %3498

3498:                                             ; preds = %3488
  %3499 = sub nsw i32 %3483, %3481
  store i32 %3499, ptr %2588, align 4, !tbaa !279
  %3500 = shl i32 %3456, %3481
  store i32 %3500, ptr %2589, align 8, !tbaa !280
  %3501 = zext nneg i32 %3496 to i64
  br label %3502

3502:                                             ; preds = %3498, %3469
  %3503 = phi i32 [ %3500, %3498 ], [ %3470, %3469 ]
  %3504 = phi i32 [ %3499, %3498 ], [ %3471, %3469 ]
  %3505 = phi i64 [ %3501, %3498 ], [ %3463, %3469 ]
  %3506 = getelementptr inbounds nuw i8, ptr %3398, i64 %3505
  %3507 = load i8, ptr %3506, align 1, !tbaa !35
  %3508 = zext i8 %3507 to i32
  %3509 = and i32 %3508, 15
  %3510 = lshr i32 %3508, 4
  switch i32 %3509, label %4060 [
    i32 0, label %3511
    i32 1, label %3539
  ]

3511:                                             ; preds = %3502
  %3512 = icmp ult i8 %3507, -16
  br i1 %3512, label %3513, label %3553

3513:                                             ; preds = %3511
  %3514 = shl nsw i32 -1, %3510
  %3515 = xor i32 %3514, -1
  store i32 %3515, ptr %2597, align 4, !tbaa !284
  %3516 = icmp eq i32 %3510, 0
  br i1 %3516, label %3553, label %3517

3517:                                             ; preds = %3513
  %3518 = icmp slt i32 %3504, %3510
  br i1 %3518, label %3519, label %3521

3519:                                             ; preds = %3517
  call fastcc void @stbi__grow_buffer_unsafe(ptr noundef nonnull %2561) #17
  %3520 = load i32, ptr %2588, align 4, !tbaa !279
  br label %3521

3521:                                             ; preds = %3519, %3517
  %3522 = phi i32 [ %3520, %3519 ], [ %3504, %3517 ]
  %3523 = icmp slt i32 %3522, %3510
  br i1 %3523, label %3534, label %3524

3524:                                             ; preds = %3521
  %3525 = load i32, ptr %2589, align 8, !tbaa !280
  %3526 = call i32 @llvm.fshl.i32(i32 %3525, i32 %3525, i32 range(i32 1, 15) %3510)
  %3527 = zext nneg i32 %3510 to i64
  %3528 = getelementptr inbounds nuw i32, ptr @stbi__bmask, i64 %3527
  %3529 = load i32, ptr %3528, align 4, !tbaa !4
  %3530 = xor i32 %3529, -1
  %3531 = and i32 %3526, %3530
  store i32 %3531, ptr %2589, align 8, !tbaa !280
  %3532 = and i32 %3526, %3529
  %3533 = sub nsw i32 %3522, %3510
  store i32 %3533, ptr %2588, align 4, !tbaa !279
  br label %3534

3534:                                             ; preds = %3524, %3521
  %3535 = phi i32 [ %3533, %3524 ], [ %3522, %3521 ]
  %3536 = phi i32 [ %3532, %3524 ], [ 0, %3521 ]
  %3537 = load i32, ptr %2597, align 4, !tbaa !284
  %3538 = add nsw i32 %3537, %3536
  store i32 %3538, ptr %2597, align 4, !tbaa !284
  br label %3553

3539:                                             ; preds = %3502
  %3540 = icmp slt i32 %3504, 1
  br i1 %3540, label %3541, label %3546

3541:                                             ; preds = %3539
  call fastcc void @stbi__grow_buffer_unsafe(ptr noundef nonnull %2561) #17
  %3542 = load i32, ptr %2588, align 4, !tbaa !279
  %3543 = icmp slt i32 %3542, 1
  br i1 %3543, label %3553, label %3544

3544:                                             ; preds = %3541
  %3545 = load i32, ptr %2589, align 8, !tbaa !280
  br label %3546

3546:                                             ; preds = %3544, %3539
  %3547 = phi i32 [ %3545, %3544 ], [ %3503, %3539 ]
  %3548 = phi i32 [ %3542, %3544 ], [ %3504, %3539 ]
  %3549 = shl i32 %3547, 1
  store i32 %3549, ptr %2589, align 8, !tbaa !280
  %3550 = add nsw i32 %3548, -1
  store i32 %3550, ptr %2588, align 4, !tbaa !279
  %3551 = icmp slt i32 %3547, 0
  %3552 = select i1 %3551, i32 %3402, i32 %3403
  br label %3553

3553:                                             ; preds = %3546, %3541, %3534, %3513, %3511
  %3554 = phi i32 [ %3550, %3546 ], [ %3504, %3511 ], [ %3504, %3513 ], [ %3535, %3534 ], [ %3542, %3541 ]
  %3555 = phi i32 [ %3510, %3546 ], [ 15, %3511 ], [ 64, %3513 ], [ 64, %3534 ], [ %3510, %3541 ]
  %3556 = phi i32 [ %3552, %3546 ], [ 0, %3511 ], [ 0, %3513 ], [ 0, %3534 ], [ %3403, %3541 ]
  %3557 = load i32, ptr %2584, align 8, !tbaa !276
  %3558 = icmp sgt i32 %3452, %3557
  br i1 %3558, label %3610, label %3559

3559:                                             ; preds = %3553
  %3560 = sext i32 %3452 to i64
  br label %3561

3561:                                             ; preds = %3602, %3559
  %3562 = phi i32 [ %3557, %3559 ], [ %3605, %3602 ]
  %3563 = phi i32 [ %3554, %3559 ], [ %3603, %3602 ]
  %3564 = phi i64 [ %3560, %3559 ], [ %3566, %3602 ]
  %3565 = phi i32 [ %3555, %3559 ], [ %3604, %3602 ]
  %3566 = add nsw i64 %3564, 1
  %3567 = getelementptr inbounds i8, ptr @stbi__jpeg_dezigzag, i64 %3564
  %3568 = load i8, ptr %3567, align 1, !tbaa !35
  %3569 = zext i8 %3568 to i64
  %3570 = getelementptr inbounds nuw i16, ptr %3205, i64 %3569
  %3571 = load i16, ptr %3570, align 2, !tbaa !39
  %3572 = icmp eq i16 %3571, 0
  br i1 %3572, label %3595, label %3573

3573:                                             ; preds = %3561
  %3574 = icmp slt i32 %3563, 1
  br i1 %3574, label %3575, label %3578

3575:                                             ; preds = %3573
  call fastcc void @stbi__grow_buffer_unsafe(ptr noundef nonnull %2561) #17
  %3576 = load i32, ptr %2588, align 4, !tbaa !279
  %3577 = icmp slt i32 %3576, 1
  br i1 %3577, label %3602, label %3578

3578:                                             ; preds = %3575, %3573
  %3579 = phi i32 [ %3576, %3575 ], [ %3563, %3573 ]
  %3580 = load i32, ptr %2589, align 8, !tbaa !280
  %3581 = shl i32 %3580, 1
  store i32 %3581, ptr %2589, align 8, !tbaa !280
  %3582 = add nsw i32 %3579, -1
  store i32 %3582, ptr %2588, align 4, !tbaa !279
  %3583 = icmp sgt i32 %3580, -1
  br i1 %3583, label %3602, label %3584

3584:                                             ; preds = %3578
  %3585 = load i16, ptr %3570, align 2, !tbaa !39
  %3586 = sext i16 %3585 to i32
  %3587 = and i32 %3402, %3586
  %3588 = icmp eq i32 %3587, 0
  br i1 %3588, label %3589, label %3602

3589:                                             ; preds = %3584
  %3590 = icmp sgt i16 %3585, 0
  br i1 %3590, label %3591, label %3593

3591:                                             ; preds = %3589
  %3592 = add i16 %3585, %3404
  store i16 %3592, ptr %3570, align 2, !tbaa !39
  br label %3602

3593:                                             ; preds = %3589
  %3594 = sub i16 %3585, %3404
  store i16 %3594, ptr %3570, align 2, !tbaa !39
  br label %3602

3595:                                             ; preds = %3561
  %3596 = icmp eq i32 %3565, 0
  br i1 %3596, label %3597, label %3600

3597:                                             ; preds = %3595
  %3598 = trunc nsw i64 %3566 to i32
  %3599 = trunc i32 %3556 to i16
  store i16 %3599, ptr %3570, align 2, !tbaa !39
  br label %3610

3600:                                             ; preds = %3595
  %3601 = add nsw i32 %3565, -1
  br label %3602

3602:                                             ; preds = %3600, %3593, %3591, %3584, %3578, %3575
  %3603 = phi i32 [ %3563, %3600 ], [ %3582, %3591 ], [ %3582, %3593 ], [ %3582, %3584 ], [ %3582, %3578 ], [ %3576, %3575 ]
  %3604 = phi i32 [ %3601, %3600 ], [ %3565, %3591 ], [ %3565, %3593 ], [ %3565, %3584 ], [ %3565, %3578 ], [ %3565, %3575 ]
  %3605 = load i32, ptr %2584, align 8, !tbaa !276
  %3606 = sext i32 %3605 to i64
  %3607 = icmp slt i64 %3564, %3606
  br i1 %3607, label %3561, label %3608

3608:                                             ; preds = %3602
  %3609 = trunc nsw i64 %3566 to i32
  br label %3610

3610:                                             ; preds = %3608, %3597, %3553
  %3611 = phi i32 [ %3562, %3597 ], [ %3557, %3553 ], [ %3605, %3608 ]
  %3612 = phi i32 [ %3563, %3597 ], [ %3554, %3553 ], [ %3603, %3608 ]
  %3613 = phi i32 [ %3598, %3597 ], [ %3452, %3553 ], [ %3609, %3608 ]
  %3614 = icmp sgt i32 %3613, %3611
  br i1 %3614, label %3617, label %3450, !llvm.loop !295

3615:                                             ; preds = %3350, %3329, %3231
  %3616 = phi i32 [ %3232, %3231 ], [ 0, %3329 ], [ %3353, %3350 ]
  store i32 %3616, ptr %2597, align 4, !tbaa !284
  br label %3617

3617:                                             ; preds = %3445, %3610, %3390, %3615, %3406, %3208
  %3618 = load i32, ptr %2596, align 4, !tbaa !283
  %3619 = add nsw i32 %3618, -1
  store i32 %3619, ptr %2596, align 4, !tbaa !283
  %3620 = icmp slt i32 %3618, 2
  br i1 %3620, label %3621, label %3633

3621:                                             ; preds = %3617
  %3622 = load i32, ptr %2588, align 4, !tbaa !279
  %3623 = icmp slt i32 %3622, 24
  br i1 %3623, label %3624, label %3625

3624:                                             ; preds = %3621
  call fastcc void @stbi__grow_buffer_unsafe(ptr noundef nonnull %2561) #17
  br label %3625

3625:                                             ; preds = %3624, %3621
  %3626 = load i8, ptr %2595, align 8, !tbaa !56
  %3627 = and i8 %3626, -8
  %3628 = icmp eq i8 %3627, -48
  br i1 %3628, label %3629, label %3745

3629:                                             ; preds = %3625
  store i32 0, ptr %2588, align 4, !tbaa !279
  store i32 0, ptr %2589, align 8, !tbaa !280
  store i32 0, ptr %2590, align 4, !tbaa !281
  store i32 0, ptr %2591, align 8, !tbaa !282
  store i32 0, ptr %2592, align 8, !tbaa !282
  store i32 0, ptr %2593, align 8, !tbaa !282
  store i32 0, ptr %2594, align 8, !tbaa !282
  store i8 -1, ptr %2595, align 8, !tbaa !56
  %3630 = load i32, ptr %2576, align 8, !tbaa !62
  %3631 = icmp eq i32 %3630, 0
  %3632 = select i1 %3631, i32 2147483647, i32 %3630
  store i32 %3632, ptr %2596, align 4, !tbaa !283
  store i32 0, ptr %2597, align 4, !tbaa !284
  br label %3633

3633:                                             ; preds = %3629, %3617
  %3634 = add nuw nsw i32 %3198, 1
  %3635 = icmp eq i32 %3634, %3183
  br i1 %3635, label %3636, label %3197, !llvm.loop !296

3636:                                             ; preds = %3633, %3195
  %3637 = add nuw nsw i32 %3196, 1
  %3638 = icmp eq i32 %3637, %3187
  br i1 %3638, label %3743, label %3195, !llvm.loop !297

3639:                                             ; preds = %3734, %3174
  %3640 = phi i32 [ %3172, %3174 ], [ %3735, %3734 ]
  %3641 = phi i32 [ %2975, %3174 ], [ %3736, %3734 ]
  %3642 = phi i32 [ %3175, %3174 ], [ %3737, %3734 ]
  %3643 = phi i32 [ 0, %3174 ], [ %3738, %3734 ]
  %3644 = icmp sgt i32 %3642, 0
  br i1 %3644, label %3645, label %3734

3645:                                             ; preds = %3639, %3727
  %3646 = phi i32 [ %3728, %3727 ], [ %3641, %3639 ]
  %3647 = phi i32 [ %3729, %3727 ], [ 0, %3639 ]
  %3648 = load i32, ptr %2581, align 4, !tbaa !270
  %3649 = icmp sgt i32 %3648, 0
  br i1 %3649, label %3650, label %3711

3650:                                             ; preds = %3645, %3704
  %3651 = phi i32 [ %3705, %3704 ], [ %3648, %3645 ]
  %3652 = phi i64 [ %3706, %3704 ], [ 0, %3645 ]
  %3653 = getelementptr inbounds nuw i32, ptr %2582, i64 %3652
  %3654 = load i32, ptr %3653, align 4, !tbaa !4
  %3655 = sext i32 %3654 to i64
  %3656 = getelementptr inbounds %struct.anon, ptr %2567, i64 %3655
  %3657 = getelementptr inbounds nuw i8, ptr %3656, i64 8
  %3658 = load i32, ptr %3657, align 8, !tbaa !82
  %3659 = icmp sgt i32 %3658, 0
  br i1 %3659, label %3660, label %3704

3660:                                             ; preds = %3650
  %3661 = getelementptr inbounds nuw i8, ptr %3656, i64 4
  %3662 = getelementptr inbounds nuw i8, ptr %3656, i64 80
  %3663 = getelementptr inbounds nuw i8, ptr %3656, i64 88
  %3664 = getelementptr inbounds nuw i8, ptr %3656, i64 16
  %3665 = load i32, ptr %3661, align 4, !tbaa !81
  br label %3666

3666:                                             ; preds = %3697, %3660
  %3667 = phi i32 [ %3658, %3660 ], [ %3698, %3697 ]
  %3668 = phi i32 [ %3665, %3660 ], [ %3699, %3697 ]
  %3669 = phi i32 [ 0, %3660 ], [ %3700, %3697 ]
  %3670 = icmp sgt i32 %3668, 0
  br i1 %3670, label %3675, label %3697

3671:                                             ; preds = %3675
  %3672 = add nuw nsw i32 %3677, 1
  %3673 = load i32, ptr %3661, align 4, !tbaa !81
  %3674 = icmp slt i32 %3672, %3673
  br i1 %3674, label %3675, label %3695, !llvm.loop !298

3675:                                             ; preds = %3666, %3671
  %3676 = phi i32 [ %3673, %3671 ], [ %3668, %3666 ]
  %3677 = phi i32 [ %3672, %3671 ], [ 0, %3666 ]
  %3678 = mul nsw i32 %3676, %3647
  %3679 = add nsw i32 %3678, %3677
  %3680 = load i32, ptr %3657, align 8, !tbaa !82
  %3681 = mul nsw i32 %3680, %3643
  %3682 = add nsw i32 %3681, %3669
  %3683 = load ptr, ptr %3662, align 8, !tbaa !97
  %3684 = load i32, ptr %3663, align 8, !tbaa !292
  %3685 = mul nsw i32 %3682, %3684
  %3686 = add nsw i32 %3679, %3685
  %3687 = shl nsw i32 %3686, 6
  %3688 = sext i32 %3687 to i64
  %3689 = getelementptr inbounds i16, ptr %3683, i64 %3688
  %3690 = load i32, ptr %3664, align 8, !tbaa !272
  %3691 = sext i32 %3690 to i64
  %3692 = getelementptr inbounds %struct.stbi__huffman, ptr %2600, i64 %3691
  %3693 = call fastcc i32 @stbi__jpeg_decode_block_prog_dc(ptr noundef nonnull %2561, ptr noundef %3689, ptr noundef %3692, i32 noundef %3654) #17
  %3694 = icmp eq i32 %3693, 0
  br i1 %3694, label %4060, label %3671

3695:                                             ; preds = %3671
  %3696 = load i32, ptr %3657, align 8, !tbaa !82
  br label %3697

3697:                                             ; preds = %3695, %3666
  %3698 = phi i32 [ %3696, %3695 ], [ %3667, %3666 ]
  %3699 = phi i32 [ %3673, %3695 ], [ %3668, %3666 ]
  %3700 = add nuw nsw i32 %3669, 1
  %3701 = icmp slt i32 %3700, %3698
  br i1 %3701, label %3666, label %3702, !llvm.loop !299

3702:                                             ; preds = %3697
  %3703 = load i32, ptr %2581, align 4, !tbaa !270
  br label %3704

3704:                                             ; preds = %3702, %3650
  %3705 = phi i32 [ %3703, %3702 ], [ %3651, %3650 ]
  %3706 = add nuw nsw i64 %3652, 1
  %3707 = sext i32 %3705 to i64
  %3708 = icmp slt i64 %3706, %3707
  br i1 %3708, label %3650, label %3709, !llvm.loop !300

3709:                                             ; preds = %3704
  %3710 = load i32, ptr %2596, align 4, !tbaa !283
  br label %3711

3711:                                             ; preds = %3709, %3645
  %3712 = phi i32 [ %3710, %3709 ], [ %3646, %3645 ]
  %3713 = add nsw i32 %3712, -1
  store i32 %3713, ptr %2596, align 4, !tbaa !283
  %3714 = icmp slt i32 %3712, 2
  br i1 %3714, label %3715, label %3727

3715:                                             ; preds = %3711
  %3716 = load i32, ptr %2588, align 4, !tbaa !279
  %3717 = icmp slt i32 %3716, 24
  br i1 %3717, label %3718, label %3719

3718:                                             ; preds = %3715
  call fastcc void @stbi__grow_buffer_unsafe(ptr noundef nonnull %2561) #17
  br label %3719

3719:                                             ; preds = %3718, %3715
  %3720 = load i8, ptr %2595, align 8, !tbaa !56
  %3721 = and i8 %3720, -8
  %3722 = icmp eq i8 %3721, -48
  br i1 %3722, label %3723, label %3745

3723:                                             ; preds = %3719
  store i32 0, ptr %2588, align 4, !tbaa !279
  store i32 0, ptr %2589, align 8, !tbaa !280
  store i32 0, ptr %2590, align 4, !tbaa !281
  store i32 0, ptr %2591, align 8, !tbaa !282
  store i32 0, ptr %2592, align 8, !tbaa !282
  store i32 0, ptr %2593, align 8, !tbaa !282
  store i32 0, ptr %2594, align 8, !tbaa !282
  store i8 -1, ptr %2595, align 8, !tbaa !56
  %3724 = load i32, ptr %2576, align 8, !tbaa !62
  %3725 = icmp eq i32 %3724, 0
  %3726 = select i1 %3725, i32 2147483647, i32 %3724
  store i32 %3726, ptr %2596, align 4, !tbaa !283
  store i32 0, ptr %2597, align 4, !tbaa !284
  br label %3727

3727:                                             ; preds = %3723, %3711
  %3728 = phi i32 [ %3713, %3711 ], [ %3726, %3723 ]
  %3729 = add nuw nsw i32 %3647, 1
  %3730 = load i32, ptr %2599, align 8, !tbaa !91
  %3731 = icmp slt i32 %3729, %3730
  br i1 %3731, label %3645, label %3732, !llvm.loop !301

3732:                                             ; preds = %3727
  %3733 = load i32, ptr %2598, align 4, !tbaa !92
  br label %3734

3734:                                             ; preds = %3732, %3639
  %3735 = phi i32 [ %3733, %3732 ], [ %3640, %3639 ]
  %3736 = phi i32 [ %3728, %3732 ], [ %3641, %3639 ]
  %3737 = phi i32 [ %3730, %3732 ], [ %3642, %3639 ]
  %3738 = add nuw nsw i32 %3643, 1
  %3739 = icmp slt i32 %3738, %3735
  br i1 %3739, label %3639, label %3743, !llvm.loop !302

3740:                                             ; preds = %3168, %3048
  %3741 = phi i32 [ %3169, %3168 ], [ %3049, %3048 ]
  %3742 = icmp eq i32 %3741, 0
  br i1 %3742, label %4060, label %3743

3743:                                             ; preds = %3734, %3636, %3740, %3176, %3171
  %3744 = load i8, ptr %2595, align 8, !tbaa !56
  br label %3745

3745:                                             ; preds = %3719, %3625, %3743
  %3746 = phi i8 [ %3744, %3743 ], [ %3626, %3625 ], [ %3720, %3719 ]
  %3747 = icmp eq i8 %3746, -1
  br i1 %3747, label %3748, label %3891

3748:                                             ; preds = %3816, %3745
  %3749 = load ptr, ptr %2561, align 8, !tbaa !21
  %3750 = getelementptr inbounds nuw i8, ptr %3749, i64 16
  %3751 = load ptr, ptr %3750, align 8, !tbaa !8
  %3752 = icmp eq ptr %3751, null
  br i1 %3752, label %3764, label %3753

3753:                                             ; preds = %3748
  %3754 = getelementptr inbounds nuw i8, ptr %3749, i64 32
  %3755 = load ptr, ptr %3754, align 8, !tbaa !58
  %3756 = getelementptr inbounds nuw i8, ptr %3749, i64 40
  %3757 = load ptr, ptr %3756, align 8, !tbaa !33
  %3758 = call i32 %3755(ptr noundef %3757) #16
  %3759 = icmp eq i32 %3758, 0
  br i1 %3759, label %3770, label %3760

3760:                                             ; preds = %3753
  %3761 = getelementptr inbounds nuw i8, ptr %3749, i64 48
  %3762 = load i32, ptr %3761, align 8, !tbaa !13
  %3763 = icmp eq i32 %3762, 0
  br i1 %3763, label %3889, label %3764

3764:                                             ; preds = %3760, %3748
  %3765 = getelementptr inbounds nuw i8, ptr %3749, i64 192
  %3766 = load ptr, ptr %3765, align 8, !tbaa !16
  %3767 = getelementptr inbounds nuw i8, ptr %3749, i64 200
  %3768 = load ptr, ptr %3767, align 8, !tbaa !18
  %3769 = icmp ult ptr %3766, %3768
  br i1 %3769, label %3770, label %3889

3770:                                             ; preds = %3764, %3753
  %3771 = load ptr, ptr %2561, align 8, !tbaa !21
  %3772 = getelementptr inbounds nuw i8, ptr %3771, i64 192
  %3773 = load ptr, ptr %3772, align 8, !tbaa !16
  %3774 = getelementptr inbounds nuw i8, ptr %3771, i64 200
  %3775 = load ptr, ptr %3774, align 8, !tbaa !18
  %3776 = icmp ult ptr %3773, %3775
  br i1 %3776, label %3777, label %3780

3777:                                             ; preds = %3770
  %3778 = getelementptr inbounds nuw i8, ptr %3773, i64 1
  store ptr %3778, ptr %3772, align 8, !tbaa !16
  %3779 = load i8, ptr %3773, align 1, !tbaa !35
  br label %3814

3780:                                             ; preds = %3770
  %3781 = getelementptr inbounds nuw i8, ptr %3771, i64 48
  %3782 = load i32, ptr %3781, align 8, !tbaa !13
  %3783 = icmp eq i32 %3782, 0
  br i1 %3783, label %3814, label %3784

3784:                                             ; preds = %3780
  %3785 = getelementptr inbounds nuw i8, ptr %3771, i64 16
  %3786 = load ptr, ptr %3785, align 8, !tbaa !8
  %3787 = getelementptr inbounds nuw i8, ptr %3771, i64 40
  %3788 = load ptr, ptr %3787, align 8, !tbaa !33
  %3789 = getelementptr inbounds nuw i8, ptr %3771, i64 56
  %3790 = getelementptr inbounds nuw i8, ptr %3771, i64 52
  %3791 = load i32, ptr %3790, align 4, !tbaa !34
  %3792 = call i32 %3786(ptr noundef %3788, ptr noundef nonnull %3789, i32 noundef %3791) #16
  %3793 = load ptr, ptr %3772, align 8, !tbaa !16
  %3794 = getelementptr inbounds nuw i8, ptr %3771, i64 208
  %3795 = load ptr, ptr %3794, align 8, !tbaa !15
  %3796 = ptrtoint ptr %3793 to i64
  %3797 = ptrtoint ptr %3795 to i64
  %3798 = sub i64 %3796, %3797
  %3799 = trunc i64 %3798 to i32
  %3800 = getelementptr inbounds nuw i8, ptr %3771, i64 184
  %3801 = load i32, ptr %3800, align 8, !tbaa !14
  %3802 = add nsw i32 %3801, %3799
  store i32 %3802, ptr %3800, align 8, !tbaa !14
  %3803 = icmp eq i32 %3792, 0
  br i1 %3803, label %3804, label %3806

3804:                                             ; preds = %3784
  store i32 0, ptr %3781, align 8, !tbaa !13
  %3805 = getelementptr inbounds nuw i8, ptr %3771, i64 57
  store i8 0, ptr %3789, align 8, !tbaa !35
  br label %3810

3806:                                             ; preds = %3784
  %3807 = sext i32 %3792 to i64
  %3808 = getelementptr inbounds i8, ptr %3789, i64 %3807
  %3809 = load i8, ptr %3789, align 1, !tbaa !35
  br label %3810

3810:                                             ; preds = %3806, %3804
  %3811 = phi i8 [ 0, %3804 ], [ %3809, %3806 ]
  %3812 = phi ptr [ %3805, %3804 ], [ %3808, %3806 ]
  store ptr %3812, ptr %3774, align 8, !tbaa !18
  %3813 = getelementptr inbounds nuw i8, ptr %3771, i64 57
  store ptr %3813, ptr %3772, align 8, !tbaa !16
  br label %3814

3814:                                             ; preds = %3810, %3780, %3777
  %3815 = phi i8 [ 0, %3780 ], [ %3811, %3810 ], [ %3779, %3777 ]
  br label %3816

3816:                                             ; preds = %3814, %3885
  %3817 = phi i8 [ %3886, %3885 ], [ %3815, %3814 ]
  %3818 = icmp eq i8 %3817, -1
  br i1 %3818, label %3819, label %3748

3819:                                             ; preds = %3816
  %3820 = load ptr, ptr %2561, align 8, !tbaa !21
  %3821 = getelementptr inbounds nuw i8, ptr %3820, i64 16
  %3822 = load ptr, ptr %3821, align 8, !tbaa !8
  %3823 = icmp eq ptr %3822, null
  br i1 %3823, label %3835, label %3824

3824:                                             ; preds = %3819
  %3825 = getelementptr inbounds nuw i8, ptr %3820, i64 32
  %3826 = load ptr, ptr %3825, align 8, !tbaa !58
  %3827 = getelementptr inbounds nuw i8, ptr %3820, i64 40
  %3828 = load ptr, ptr %3827, align 8, !tbaa !33
  %3829 = call i32 %3826(ptr noundef %3828) #16
  %3830 = icmp eq i32 %3829, 0
  br i1 %3830, label %3841, label %3831

3831:                                             ; preds = %3824
  %3832 = getelementptr inbounds nuw i8, ptr %3820, i64 48
  %3833 = load i32, ptr %3832, align 8, !tbaa !13
  %3834 = icmp eq i32 %3833, 0
  br i1 %3834, label %3889, label %3835

3835:                                             ; preds = %3831, %3819
  %3836 = getelementptr inbounds nuw i8, ptr %3820, i64 192
  %3837 = load ptr, ptr %3836, align 8, !tbaa !16
  %3838 = getelementptr inbounds nuw i8, ptr %3820, i64 200
  %3839 = load ptr, ptr %3838, align 8, !tbaa !18
  %3840 = icmp ult ptr %3837, %3839
  br i1 %3840, label %3841, label %3889

3841:                                             ; preds = %3835, %3824
  %3842 = load ptr, ptr %2561, align 8, !tbaa !21
  %3843 = getelementptr inbounds nuw i8, ptr %3842, i64 192
  %3844 = load ptr, ptr %3843, align 8, !tbaa !16
  %3845 = getelementptr inbounds nuw i8, ptr %3842, i64 200
  %3846 = load ptr, ptr %3845, align 8, !tbaa !18
  %3847 = icmp ult ptr %3844, %3846
  br i1 %3847, label %3848, label %3851

3848:                                             ; preds = %3841
  %3849 = getelementptr inbounds nuw i8, ptr %3844, i64 1
  store ptr %3849, ptr %3843, align 8, !tbaa !16
  %3850 = load i8, ptr %3844, align 1, !tbaa !35
  br label %3885

3851:                                             ; preds = %3841
  %3852 = getelementptr inbounds nuw i8, ptr %3842, i64 48
  %3853 = load i32, ptr %3852, align 8, !tbaa !13
  %3854 = icmp eq i32 %3853, 0
  br i1 %3854, label %3885, label %3855

3855:                                             ; preds = %3851
  %3856 = getelementptr inbounds nuw i8, ptr %3842, i64 16
  %3857 = load ptr, ptr %3856, align 8, !tbaa !8
  %3858 = getelementptr inbounds nuw i8, ptr %3842, i64 40
  %3859 = load ptr, ptr %3858, align 8, !tbaa !33
  %3860 = getelementptr inbounds nuw i8, ptr %3842, i64 56
  %3861 = getelementptr inbounds nuw i8, ptr %3842, i64 52
  %3862 = load i32, ptr %3861, align 4, !tbaa !34
  %3863 = call i32 %3857(ptr noundef %3859, ptr noundef nonnull %3860, i32 noundef %3862) #16
  %3864 = load ptr, ptr %3843, align 8, !tbaa !16
  %3865 = getelementptr inbounds nuw i8, ptr %3842, i64 208
  %3866 = load ptr, ptr %3865, align 8, !tbaa !15
  %3867 = ptrtoint ptr %3864 to i64
  %3868 = ptrtoint ptr %3866 to i64
  %3869 = sub i64 %3867, %3868
  %3870 = trunc i64 %3869 to i32
  %3871 = getelementptr inbounds nuw i8, ptr %3842, i64 184
  %3872 = load i32, ptr %3871, align 8, !tbaa !14
  %3873 = add nsw i32 %3872, %3870
  store i32 %3873, ptr %3871, align 8, !tbaa !14
  %3874 = icmp eq i32 %3863, 0
  br i1 %3874, label %3875, label %3877

3875:                                             ; preds = %3855
  store i32 0, ptr %3852, align 8, !tbaa !13
  %3876 = getelementptr inbounds nuw i8, ptr %3842, i64 57
  store i8 0, ptr %3860, align 8, !tbaa !35
  br label %3881

3877:                                             ; preds = %3855
  %3878 = sext i32 %3863 to i64
  %3879 = getelementptr inbounds i8, ptr %3860, i64 %3878
  %3880 = load i8, ptr %3860, align 1, !tbaa !35
  br label %3881

3881:                                             ; preds = %3877, %3875
  %3882 = phi i8 [ 0, %3875 ], [ %3880, %3877 ]
  %3883 = phi ptr [ %3876, %3875 ], [ %3879, %3877 ]
  store ptr %3883, ptr %3845, align 8, !tbaa !18
  %3884 = getelementptr inbounds nuw i8, ptr %3842, i64 57
  store ptr %3884, ptr %3843, align 8, !tbaa !16
  br label %3885

3885:                                             ; preds = %3881, %3851, %3848
  %3886 = phi i8 [ %3850, %3848 ], [ %3882, %3881 ], [ 0, %3851 ]
  %3887 = add i8 %3886, -1
  %3888 = icmp ult i8 %3887, -2
  br i1 %3888, label %3889, label %3816, !llvm.loop !303

3889:                                             ; preds = %3764, %3760, %3885, %3835, %3831
  %3890 = phi i8 [ %3886, %3885 ], [ -1, %3831 ], [ -1, %3835 ], [ -1, %3760 ], [ -1, %3764 ]
  store i8 %3890, ptr %2595, align 8, !tbaa !56
  br label %3891

3891:                                             ; preds = %3889, %3745
  %3892 = call fastcc zeroext i8 @stbi__get_marker(ptr noundef nonnull %2561) #17
  %3893 = and i8 %3892, -8
  %3894 = icmp eq i8 %3893, -48
  br i1 %3894, label %3910, label %3912

3895:                                             ; preds = %2604
  %3896 = load ptr, ptr %2561, align 8, !tbaa !21
  %3897 = call fastcc i32 @stbi__get16be(ptr noundef %3896) #17
  %3898 = load ptr, ptr %2561, align 8, !tbaa !21
  %3899 = call fastcc i32 @stbi__get16be(ptr noundef %3898) #17
  %3900 = icmp eq i32 %3897, 4
  br i1 %3900, label %3901, label %4060

3901:                                             ; preds = %3895
  %3902 = load ptr, ptr %2561, align 8, !tbaa !21
  %3903 = getelementptr inbounds nuw i8, ptr %3902, i64 4
  %3904 = load i32, ptr %3903, align 4, !tbaa !25
  %3905 = icmp eq i32 %3899, %3904
  br i1 %3905, label %3910, label %4060

3906:                                             ; preds = %2604
  %3907 = zext i8 %2605 to i32
  %3908 = call fastcc i32 @stbi__process_marker(ptr noundef nonnull %2561, i32 noundef %3907) #17
  %3909 = icmp eq i32 %3908, 0
  br i1 %3909, label %4089, label %3910

3910:                                             ; preds = %3906, %3901, %3891
  %3911 = call fastcc zeroext i8 @stbi__get_marker(ptr noundef nonnull %2561) #17
  br label %3912

3912:                                             ; preds = %3910, %3891
  %3913 = phi i8 [ %3892, %3891 ], [ %3911, %3910 ]
  br label %2604, !llvm.loop !304

3914:                                             ; preds = %2604
  %3915 = load i32, ptr %2587, align 8, !tbaa !60
  %3916 = icmp eq i32 %3915, 0
  %3917 = load ptr, ptr %2561, align 8, !tbaa !21
  br i1 %3916, label %4091, label %3918

3918:                                             ; preds = %3914
  %3919 = getelementptr inbounds nuw i8, ptr %3917, i64 8
  %3920 = load i32, ptr %3919, align 8, !tbaa !71
  %3921 = icmp sgt i32 %3920, 0
  br i1 %3921, label %3922, label %4091

3922:                                             ; preds = %3918
  %3923 = getelementptr i8, ptr @arena, i64 %2555
  %3924 = getelementptr i8, ptr %3923, i64 13592
  br label %3925

3925:                                             ; preds = %3922, %4053
  %3926 = phi ptr [ %4054, %4053 ], [ %3917, %3922 ]
  %3927 = phi i64 [ %4055, %4053 ], [ 0, %3922 ]
  %3928 = getelementptr inbounds nuw %struct.anon, ptr %2567, i64 %3927
  %3929 = getelementptr inbounds nuw i8, ptr %3928, i64 32
  %3930 = load i32, ptr %3929, align 8, !tbaa !94
  %3931 = add nsw i32 %3930, 7
  %3932 = ashr i32 %3931, 3
  %3933 = icmp sgt i32 %3932, 0
  br i1 %3933, label %3934, label %4053

3934:                                             ; preds = %3925
  %3935 = getelementptr inbounds nuw i8, ptr %3928, i64 28
  %3936 = load i32, ptr %3935, align 4, !tbaa !93
  %3937 = add nsw i32 %3936, 7
  %3938 = ashr i32 %3937, 3
  %3939 = icmp sgt i32 %3938, 0
  %3940 = getelementptr inbounds nuw i8, ptr %3928, i64 80
  %3941 = getelementptr inbounds nuw i8, ptr %3928, i64 88
  %3942 = getelementptr inbounds nuw i8, ptr %3928, i64 12
  %3943 = getelementptr inbounds nuw i8, ptr %3928, i64 48
  %3944 = getelementptr inbounds nuw i8, ptr %3928, i64 36
  %3945 = zext nneg i32 %3938 to i64
  br label %3946

3946:                                             ; preds = %4048, %3934
  %3947 = phi i32 [ 0, %3934 ], [ %4049, %4048 ]
  br i1 %3939, label %3948, label %4048

3948:                                             ; preds = %3946
  %3949 = shl i32 %3947, 3
  br label %3950

3950:                                             ; preds = %4037, %3948
  %3951 = phi i64 [ 0, %3948 ], [ %4046, %4037 ]
  %3952 = load ptr, ptr %3940, align 8, !tbaa !97
  %3953 = load i32, ptr %3941, align 8, !tbaa !292
  %3954 = mul nsw i32 %3953, %3947
  %3955 = trunc nuw nsw i64 %3951 to i32
  %3956 = add nsw i32 %3954, %3955
  %3957 = shl nsw i32 %3956, 6
  %3958 = sext i32 %3957 to i64
  %3959 = getelementptr inbounds i16, ptr %3952, i64 %3958
  %3960 = load i32, ptr %3942, align 4, !tbaa !83
  %3961 = sext i32 %3960 to i64
  %3962 = getelementptr inbounds [64 x i16], ptr %2603, i64 %3961
  %3963 = getelementptr i8, ptr %3952, i64 128
  %3964 = shl nsw i64 %3958, 1
  %3965 = getelementptr i8, ptr %3963, i64 %3964
  %3966 = shl nsw i64 %3961, 7
  %3967 = getelementptr i8, ptr %3924, i64 %3966
  %3968 = icmp ult ptr %3959, %3967
  %3969 = icmp ult ptr %3962, %3965
  %3970 = and i1 %3968, %3969
  br i1 %3970, label %4010, label %3971

3971:                                             ; preds = %3950
  %3972 = getelementptr inbounds nuw i8, ptr %3962, i64 16
  %3973 = load <8 x i16>, ptr %3962, align 2, !tbaa !39, !alias.scope !305
  %3974 = load <8 x i16>, ptr %3972, align 2, !tbaa !39, !alias.scope !305
  %3975 = getelementptr inbounds nuw i8, ptr %3959, i64 16
  %3976 = load <8 x i16>, ptr %3959, align 2, !tbaa !39, !alias.scope !308, !noalias !305
  %3977 = load <8 x i16>, ptr %3975, align 2, !tbaa !39, !alias.scope !308, !noalias !305
  %3978 = mul <8 x i16> %3976, %3973
  %3979 = mul <8 x i16> %3977, %3974
  store <8 x i16> %3978, ptr %3959, align 2, !tbaa !39, !alias.scope !308, !noalias !305
  store <8 x i16> %3979, ptr %3975, align 2, !tbaa !39, !alias.scope !308, !noalias !305
  %3980 = getelementptr inbounds nuw i8, ptr %3962, i64 32
  %3981 = getelementptr inbounds nuw i8, ptr %3962, i64 48
  %3982 = load <8 x i16>, ptr %3980, align 2, !tbaa !39, !alias.scope !305
  %3983 = load <8 x i16>, ptr %3981, align 2, !tbaa !39, !alias.scope !305
  %3984 = getelementptr inbounds nuw i8, ptr %3959, i64 32
  %3985 = getelementptr inbounds nuw i8, ptr %3959, i64 48
  %3986 = load <8 x i16>, ptr %3984, align 2, !tbaa !39, !alias.scope !308, !noalias !305
  %3987 = load <8 x i16>, ptr %3985, align 2, !tbaa !39, !alias.scope !308, !noalias !305
  %3988 = mul <8 x i16> %3986, %3982
  %3989 = mul <8 x i16> %3987, %3983
  store <8 x i16> %3988, ptr %3984, align 2, !tbaa !39, !alias.scope !308, !noalias !305
  store <8 x i16> %3989, ptr %3985, align 2, !tbaa !39, !alias.scope !308, !noalias !305
  %3990 = getelementptr inbounds nuw i8, ptr %3962, i64 64
  %3991 = getelementptr inbounds nuw i8, ptr %3962, i64 80
  %3992 = load <8 x i16>, ptr %3990, align 2, !tbaa !39, !alias.scope !305
  %3993 = load <8 x i16>, ptr %3991, align 2, !tbaa !39, !alias.scope !305
  %3994 = getelementptr inbounds nuw i8, ptr %3959, i64 64
  %3995 = getelementptr inbounds nuw i8, ptr %3959, i64 80
  %3996 = load <8 x i16>, ptr %3994, align 2, !tbaa !39, !alias.scope !308, !noalias !305
  %3997 = load <8 x i16>, ptr %3995, align 2, !tbaa !39, !alias.scope !308, !noalias !305
  %3998 = mul <8 x i16> %3996, %3992
  %3999 = mul <8 x i16> %3997, %3993
  store <8 x i16> %3998, ptr %3994, align 2, !tbaa !39, !alias.scope !308, !noalias !305
  store <8 x i16> %3999, ptr %3995, align 2, !tbaa !39, !alias.scope !308, !noalias !305
  %4000 = getelementptr inbounds nuw i8, ptr %3962, i64 96
  %4001 = getelementptr inbounds nuw i8, ptr %3962, i64 112
  %4002 = load <8 x i16>, ptr %4000, align 2, !tbaa !39, !alias.scope !305
  %4003 = load <8 x i16>, ptr %4001, align 2, !tbaa !39, !alias.scope !305
  %4004 = getelementptr inbounds nuw i8, ptr %3959, i64 96
  %4005 = getelementptr inbounds nuw i8, ptr %3959, i64 112
  %4006 = load <8 x i16>, ptr %4004, align 2, !tbaa !39, !alias.scope !308, !noalias !305
  %4007 = load <8 x i16>, ptr %4005, align 2, !tbaa !39, !alias.scope !308, !noalias !305
  %4008 = mul <8 x i16> %4006, %4002
  %4009 = mul <8 x i16> %4007, %4003
  store <8 x i16> %4008, ptr %4004, align 2, !tbaa !39, !alias.scope !308, !noalias !305
  store <8 x i16> %4009, ptr %4005, align 2, !tbaa !39, !alias.scope !308, !noalias !305
  br label %4037

4010:                                             ; preds = %3950, %4010
  %4011 = phi i64 [ %4035, %4010 ], [ 0, %3950 ]
  %4012 = getelementptr inbounds nuw i16, ptr %3962, i64 %4011
  %4013 = load i16, ptr %4012, align 2, !tbaa !39
  %4014 = getelementptr inbounds nuw i16, ptr %3959, i64 %4011
  %4015 = load i16, ptr %4014, align 2, !tbaa !39
  %4016 = mul i16 %4015, %4013
  store i16 %4016, ptr %4014, align 2, !tbaa !39
  %4017 = or disjoint i64 %4011, 1
  %4018 = getelementptr inbounds nuw i16, ptr %3962, i64 %4017
  %4019 = load i16, ptr %4018, align 2, !tbaa !39
  %4020 = getelementptr inbounds nuw i16, ptr %3959, i64 %4017
  %4021 = load i16, ptr %4020, align 2, !tbaa !39
  %4022 = mul i16 %4021, %4019
  store i16 %4022, ptr %4020, align 2, !tbaa !39
  %4023 = or disjoint i64 %4011, 2
  %4024 = getelementptr inbounds nuw i16, ptr %3962, i64 %4023
  %4025 = load i16, ptr %4024, align 2, !tbaa !39
  %4026 = getelementptr inbounds nuw i16, ptr %3959, i64 %4023
  %4027 = load i16, ptr %4026, align 2, !tbaa !39
  %4028 = mul i16 %4027, %4025
  store i16 %4028, ptr %4026, align 2, !tbaa !39
  %4029 = or disjoint i64 %4011, 3
  %4030 = getelementptr inbounds nuw i16, ptr %3962, i64 %4029
  %4031 = load i16, ptr %4030, align 2, !tbaa !39
  %4032 = getelementptr inbounds nuw i16, ptr %3959, i64 %4029
  %4033 = load i16, ptr %4032, align 2, !tbaa !39
  %4034 = mul i16 %4033, %4031
  store i16 %4034, ptr %4032, align 2, !tbaa !39
  %4035 = add nuw nsw i64 %4011, 4
  %4036 = icmp eq i64 %4035, 64
  br i1 %4036, label %4037, label %4010, !llvm.loop !310

4037:                                             ; preds = %4010, %3971
  %4038 = load ptr, ptr %2563, align 8, !tbaa !267
  %4039 = load ptr, ptr %3943, align 8, !tbaa !72
  %4040 = load i32, ptr %3944, align 4, !tbaa !95
  %4041 = mul i32 %3949, %4040
  %4042 = sext i32 %4041 to i64
  %4043 = getelementptr inbounds i8, ptr %4039, i64 %4042
  %4044 = shl nsw i64 %3951, 3
  %4045 = getelementptr inbounds nuw i8, ptr %4043, i64 %4044
  call void %4038(ptr noundef %4045, i32 noundef %4040, ptr noundef nonnull %3959) #16
  %4046 = add nuw nsw i64 %3951, 1
  %4047 = icmp eq i64 %4046, %3945
  br i1 %4047, label %4048, label %3950, !llvm.loop !311

4048:                                             ; preds = %4037, %3946
  %4049 = add nuw nsw i32 %3947, 1
  %4050 = icmp eq i32 %4049, %3932
  br i1 %4050, label %4051, label %3946, !llvm.loop !312

4051:                                             ; preds = %4048
  %4052 = load ptr, ptr %2561, align 8, !tbaa !21
  br label %4053

4053:                                             ; preds = %4051, %3925
  %4054 = phi ptr [ %4052, %4051 ], [ %3926, %3925 ]
  %4055 = add nuw nsw i64 %3927, 1
  %4056 = getelementptr inbounds nuw i8, ptr %4054, i64 8
  %4057 = load i32, ptr %4056, align 8, !tbaa !71
  %4058 = sext i32 %4057 to i64
  %4059 = icmp slt i64 %4055, %4058
  br i1 %4059, label %3925, label %4091, !llvm.loop !313

4060:                                             ; preds = %3901, %3895, %3740, %2966, %2962, %2957, %2955, %2663, %2658, %2653, %2792, %2786, %2783, %2778, %3208, %3502, %3488, %3486, %3462, %3304, %3302, %3278, %3246, %3675, %3484, %3300, %2622, %2558
  %4061 = load ptr, ptr %2561, align 8, !tbaa !21
  %4062 = getelementptr inbounds nuw i8, ptr %4061, i64 8
  %4063 = load i32, ptr %4062, align 8, !tbaa !71
  %4064 = icmp sgt i32 %4063, 0
  br i1 %4064, label %4065, label %4501

4065:                                             ; preds = %4060
  %4066 = zext nneg i32 %4063 to i64
  br label %4067

4067:                                             ; preds = %4086, %4065
  %4068 = phi i64 [ 0, %4065 ], [ %4087, %4086 ]
  %4069 = getelementptr inbounds nuw %struct.anon, ptr %2567, i64 %4068
  %4070 = getelementptr inbounds nuw i8, ptr %4069, i64 56
  %4071 = load ptr, ptr %4070, align 8, !tbaa !99
  %4072 = icmp eq ptr %4071, null
  br i1 %4072, label %4075, label %4073

4073:                                             ; preds = %4067
  store ptr null, ptr %4070, align 8, !tbaa !99
  %4074 = getelementptr inbounds nuw i8, ptr %4069, i64 48
  store ptr null, ptr %4074, align 8, !tbaa !72
  br label %4075

4075:                                             ; preds = %4073, %4067
  %4076 = getelementptr inbounds nuw i8, ptr %4069, i64 64
  %4077 = load ptr, ptr %4076, align 8, !tbaa !98
  %4078 = icmp eq ptr %4077, null
  br i1 %4078, label %4081, label %4079

4079:                                             ; preds = %4075
  store ptr null, ptr %4076, align 8, !tbaa !98
  %4080 = getelementptr inbounds nuw i8, ptr %4069, i64 80
  store ptr null, ptr %4080, align 8, !tbaa !97
  br label %4081

4081:                                             ; preds = %4079, %4075
  %4082 = getelementptr inbounds nuw i8, ptr %4069, i64 72
  %4083 = load ptr, ptr %4082, align 8, !tbaa !75
  %4084 = icmp eq ptr %4083, null
  br i1 %4084, label %4086, label %4085

4085:                                             ; preds = %4081
  store ptr null, ptr %4082, align 8, !tbaa !75
  br label %4086

4086:                                             ; preds = %4085, %4081
  %4087 = add nuw nsw i64 %4068, 1
  %4088 = icmp eq i64 %4087, %4066
  br i1 %4088, label %4501, label %4067, !llvm.loop !107

4089:                                             ; preds = %3906
  %4090 = load ptr, ptr %2561, align 8, !tbaa !21
  br label %4091

4091:                                             ; preds = %4053, %4089, %3918, %3914
  %4092 = phi ptr [ %4090, %4089 ], [ %3917, %3914 ], [ %3917, %3918 ], [ %4054, %4053 ]
  %4093 = getelementptr inbounds nuw i8, ptr %4092, i64 8
  %4094 = load i32, ptr %4093, align 8, !tbaa !71
  %4095 = icmp eq i32 %4094, 3
  br i1 %4095, label %4096, label %4108

4096:                                             ; preds = %4091
  %4097 = getelementptr inbounds nuw i8, ptr %2559, i64 18528
  %4098 = load i32, ptr %4097, align 8, !tbaa !79
  %4099 = icmp eq i32 %4098, 3
  br i1 %4099, label %4110, label %4100

4100:                                             ; preds = %4096
  %4101 = getelementptr inbounds nuw i8, ptr %2559, i64 18524
  %4102 = load i32, ptr %4101, align 4, !tbaa !55
  %4103 = icmp eq i32 %4102, 0
  br i1 %4103, label %4104, label %4110

4104:                                             ; preds = %4100
  %4105 = getelementptr inbounds nuw i8, ptr %2559, i64 18520
  %4106 = load i32, ptr %4105, align 8, !tbaa !54
  %4107 = icmp eq i32 %4106, 0
  br label %4110

4108:                                             ; preds = %4091
  %4109 = icmp slt i32 %4094, 1
  br i1 %4109, label %4501, label %4110

4110:                                             ; preds = %4108, %4104, %4100, %4096
  %4111 = phi i1 [ false, %4108 ], [ %4107, %4104 ], [ false, %4100 ], [ true, %4096 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %8, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  %4112 = load i32, ptr %4092, align 8, !tbaa !24
  %4113 = load i64, ptr @arena_used, align 8
  %4114 = add i32 %4112, 3
  %4115 = zext i32 %4114 to i64
  %4116 = add nuw nsw i64 %4115, 15
  %4117 = and i64 %4116, 8589934576
  %4118 = add nuw nsw i64 %4117, 16
  %4119 = getelementptr inbounds nuw i8, ptr %2559, i64 18072
  %4120 = getelementptr inbounds nuw i8, ptr %2559, i64 18076
  %4121 = add i32 %4112, -1
  %4122 = zext nneg i32 %4094 to i64
  br label %4123

4123:                                             ; preds = %4189, %4110
  %4124 = phi i64 [ 0, %4110 ], [ %4191, %4189 ]
  %4125 = phi i64 [ %4113, %4110 ], [ %4156, %4189 ]
  %4126 = getelementptr inbounds nuw %struct.stbi__resample, ptr %9, i64 %4124
  %4127 = sub i64 100663296, %4125
  %4128 = icmp ugt i64 %4118, %4127
  br i1 %4128, label %4129, label %4154

4129:                                             ; preds = %4123
  %4130 = getelementptr inbounds nuw %struct.anon, ptr %2567, i64 %4124
  %4131 = getelementptr inbounds nuw i8, ptr %4130, i64 72
  store ptr null, ptr %4131, align 8, !tbaa !75
  br label %4132

4132:                                             ; preds = %4151, %4129
  %4133 = phi i64 [ 0, %4129 ], [ %4152, %4151 ]
  %4134 = getelementptr inbounds nuw %struct.anon, ptr %2567, i64 %4133
  %4135 = getelementptr inbounds nuw i8, ptr %4134, i64 56
  %4136 = load ptr, ptr %4135, align 8, !tbaa !99
  %4137 = icmp eq ptr %4136, null
  br i1 %4137, label %4140, label %4138

4138:                                             ; preds = %4132
  store ptr null, ptr %4135, align 8, !tbaa !99
  %4139 = getelementptr inbounds nuw i8, ptr %4134, i64 48
  store ptr null, ptr %4139, align 8, !tbaa !72
  br label %4140

4140:                                             ; preds = %4138, %4132
  %4141 = getelementptr inbounds nuw i8, ptr %4134, i64 64
  %4142 = load ptr, ptr %4141, align 8, !tbaa !98
  %4143 = icmp eq ptr %4142, null
  br i1 %4143, label %4146, label %4144

4144:                                             ; preds = %4140
  store ptr null, ptr %4141, align 8, !tbaa !98
  %4145 = getelementptr inbounds nuw i8, ptr %4134, i64 80
  store ptr null, ptr %4145, align 8, !tbaa !97
  br label %4146

4146:                                             ; preds = %4144, %4140
  %4147 = getelementptr inbounds nuw i8, ptr %4134, i64 72
  %4148 = load ptr, ptr %4147, align 8, !tbaa !75
  %4149 = icmp eq ptr %4148, null
  br i1 %4149, label %4151, label %4150

4150:                                             ; preds = %4146
  store ptr null, ptr %4147, align 8, !tbaa !75
  br label %4151

4151:                                             ; preds = %4150, %4146
  %4152 = add nuw nsw i64 %4133, 1
  %4153 = icmp eq i64 %4152, %4122
  br i1 %4153, label %4494, label %4132, !llvm.loop !107

4154:                                             ; preds = %4123
  %4155 = getelementptr inbounds nuw i8, ptr @arena, i64 %4125
  %4156 = add i64 %4125, %4118
  store i64 %4156, ptr @arena_used, align 8, !tbaa !19
  store i64 %4115, ptr %4155, align 8, !tbaa !19
  %4157 = getelementptr inbounds nuw i8, ptr %4155, i64 16
  %4158 = getelementptr inbounds nuw %struct.anon, ptr %2567, i64 %4124
  %4159 = getelementptr inbounds nuw i8, ptr %4158, i64 72
  store ptr %4157, ptr %4159, align 8, !tbaa !75
  %4160 = load i32, ptr %4119, align 8, !tbaa !87
  %4161 = getelementptr inbounds nuw i8, ptr %4158, i64 4
  %4162 = load i32, ptr %4161, align 4, !tbaa !81
  %4163 = sdiv i32 %4160, %4162
  %4164 = getelementptr inbounds nuw i8, ptr %4126, i64 24
  store i32 %4163, ptr %4164, align 8, !tbaa !314
  %4165 = load i32, ptr %4120, align 4, !tbaa !88
  %4166 = getelementptr inbounds nuw i8, ptr %4158, i64 8
  %4167 = load i32, ptr %4166, align 8, !tbaa !82
  %4168 = sdiv i32 %4165, %4167
  %4169 = getelementptr inbounds nuw i8, ptr %4126, i64 28
  store i32 %4168, ptr %4169, align 4, !tbaa !316
  %4170 = ashr i32 %4168, 1
  %4171 = getelementptr inbounds nuw i8, ptr %4126, i64 36
  store i32 %4170, ptr %4171, align 4, !tbaa !317
  %4172 = add i32 %4121, %4163
  %4173 = udiv i32 %4172, %4163
  %4174 = getelementptr inbounds nuw i8, ptr %4126, i64 32
  store i32 %4173, ptr %4174, align 16, !tbaa !318
  %4175 = getelementptr inbounds nuw i8, ptr %4126, i64 40
  store i32 0, ptr %4175, align 8, !tbaa !319
  %4176 = getelementptr inbounds nuw i8, ptr %4158, i64 48
  %4177 = load ptr, ptr %4176, align 8, !tbaa !72
  %4178 = getelementptr inbounds nuw i8, ptr %4126, i64 16
  store ptr %4177, ptr %4178, align 16, !tbaa !320
  %4179 = getelementptr inbounds nuw i8, ptr %4126, i64 8
  store ptr %4177, ptr %4179, align 8, !tbaa !321
  switch i32 %4163, label %4188 [
    i32 1, label %4180
    i32 2, label %4185
  ]

4180:                                             ; preds = %4154
  %4181 = icmp eq i32 %4168, 2
  %4182 = select i1 %4181, ptr @stbi__resample_row_v_2, ptr @stbi__resample_row_generic
  %4183 = icmp eq i32 %4168, 1
  %4184 = select i1 %4183, ptr @resample_row_1, ptr %4182
  br label %4189

4185:                                             ; preds = %4154
  switch i32 %4168, label %4188 [
    i32 1, label %4189
    i32 2, label %4186
  ]

4186:                                             ; preds = %4185
  %4187 = load ptr, ptr %2565, align 8, !tbaa !269
  br label %4189

4188:                                             ; preds = %4185, %4154
  br label %4189

4189:                                             ; preds = %4188, %4186, %4185, %4180
  %4190 = phi ptr [ %4184, %4180 ], [ %4187, %4186 ], [ @stbi__resample_row_generic, %4188 ], [ @stbi__resample_row_h_2, %4185 ]
  store ptr %4190, ptr %4126, align 16, !tbaa !322
  %4191 = add nuw nsw i64 %4124, 1
  %4192 = icmp eq i64 %4191, %4122
  br i1 %4192, label %4193, label %4123, !llvm.loop !323

4193:                                             ; preds = %4189
  %4194 = getelementptr inbounds nuw i8, ptr %4092, i64 4
  %4195 = load i32, ptr %4194, align 4, !tbaa !25
  %4196 = icmp ugt i32 %4112, 536870911
  br i1 %4196, label %4197, label %4198

4197:                                             ; preds = %4206, %4203, %4198, %4193
  br label %4224

4198:                                             ; preds = %4193
  %4199 = shl nuw nsw i32 %4112, 2
  %4200 = icmp sgt i32 %4195, -1
  br i1 %4200, label %4201, label %4197

4201:                                             ; preds = %4198
  %4202 = icmp eq i32 %4195, 0
  br i1 %4202, label %4206, label %4203

4203:                                             ; preds = %4201
  %4204 = udiv i32 2147483647, %4195
  %4205 = icmp samesign ugt i32 %4199, %4204
  br i1 %4205, label %4197, label %4206

4206:                                             ; preds = %4203, %4201
  %4207 = mul nuw nsw i32 %4195, %4199
  %4208 = or disjoint i32 %4207, 1
  %4209 = zext nneg i32 %4208 to i64
  %4210 = add nuw nsw i64 %4209, 15
  %4211 = and i64 %4210, 4294967280
  %4212 = add nuw nsw i64 %4211, 16
  %4213 = sub i64 100663296, %4156
  %4214 = icmp ugt i64 %4212, %4213
  br i1 %4214, label %4197, label %4215

4215:                                             ; preds = %4206
  %4216 = getelementptr inbounds nuw i8, ptr @arena, i64 %4156
  %4217 = add i64 %4212, %4156
  store i64 %4217, ptr @arena_used, align 8, !tbaa !19
  store i64 %4209, ptr %4216, align 8, !tbaa !19
  %4218 = getelementptr inbounds nuw i8, ptr %4216, i64 16
  br i1 %4202, label %4458, label %4219

4219:                                             ; preds = %4215
  %4220 = getelementptr inbounds nuw i8, ptr %2559, i64 18524
  %4221 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %4222 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %4223 = getelementptr inbounds nuw i8, ptr %8, i64 24
  br label %4246

4224:                                             ; preds = %4197, %4243
  %4225 = phi i64 [ %4244, %4243 ], [ 0, %4197 ]
  %4226 = getelementptr inbounds nuw %struct.anon, ptr %2567, i64 %4225
  %4227 = getelementptr inbounds nuw i8, ptr %4226, i64 56
  %4228 = load ptr, ptr %4227, align 8, !tbaa !99
  %4229 = icmp eq ptr %4228, null
  br i1 %4229, label %4232, label %4230

4230:                                             ; preds = %4224
  store ptr null, ptr %4227, align 8, !tbaa !99
  %4231 = getelementptr inbounds nuw i8, ptr %4226, i64 48
  store ptr null, ptr %4231, align 8, !tbaa !72
  br label %4232

4232:                                             ; preds = %4230, %4224
  %4233 = getelementptr inbounds nuw i8, ptr %4226, i64 64
  %4234 = load ptr, ptr %4233, align 8, !tbaa !98
  %4235 = icmp eq ptr %4234, null
  br i1 %4235, label %4238, label %4236

4236:                                             ; preds = %4232
  store ptr null, ptr %4233, align 8, !tbaa !98
  %4237 = getelementptr inbounds nuw i8, ptr %4226, i64 80
  store ptr null, ptr %4237, align 8, !tbaa !97
  br label %4238

4238:                                             ; preds = %4236, %4232
  %4239 = getelementptr inbounds nuw i8, ptr %4226, i64 72
  %4240 = load ptr, ptr %4239, align 8, !tbaa !75
  %4241 = icmp eq ptr %4240, null
  br i1 %4241, label %4243, label %4242

4242:                                             ; preds = %4238
  store ptr null, ptr %4239, align 8, !tbaa !75
  br label %4243

4243:                                             ; preds = %4242, %4238
  %4244 = add nuw nsw i64 %4225, 1
  %4245 = icmp eq i64 %4244, %4122
  br i1 %4245, label %4494, label %4224, !llvm.loop !107

4246:                                             ; preds = %4452, %4219
  %4247 = phi ptr [ %4092, %4219 ], [ %4453, %4452 ]
  %4248 = phi i32 [ 0, %4219 ], [ %4454, %4452 ]
  %4249 = load i32, ptr %4247, align 8, !tbaa !24
  br label %4250

4250:                                             ; preds = %4290, %4246
  %4251 = phi i64 [ 0, %4246 ], [ %4291, %4290 ]
  %4252 = getelementptr inbounds nuw %struct.stbi__resample, ptr %9, i64 %4251
  %4253 = getelementptr inbounds nuw i8, ptr %4252, i64 36
  %4254 = load i32, ptr %4253, align 4, !tbaa !317
  %4255 = getelementptr inbounds nuw i8, ptr %4252, i64 28
  %4256 = load i32, ptr %4255, align 4, !tbaa !316
  %4257 = ashr i32 %4256, 1
  %4258 = icmp slt i32 %4254, %4257
  %4259 = load ptr, ptr %4252, align 16, !tbaa !322
  %4260 = getelementptr inbounds nuw %struct.anon, ptr %2567, i64 %4251
  %4261 = getelementptr inbounds nuw i8, ptr %4260, i64 72
  %4262 = load ptr, ptr %4261, align 8, !tbaa !75
  %4263 = getelementptr inbounds nuw i8, ptr %4252, i64 16
  %4264 = getelementptr inbounds nuw i8, ptr %4252, i64 8
  %4265 = select i1 %4258, ptr %4264, ptr %4263
  %4266 = load ptr, ptr %4265, align 8, !tbaa !23
  %4267 = select i1 %4258, ptr %4263, ptr %4264
  %4268 = load ptr, ptr %4267, align 8, !tbaa !23
  %4269 = getelementptr inbounds nuw i8, ptr %4252, i64 32
  %4270 = load i32, ptr %4269, align 16, !tbaa !318
  %4271 = getelementptr inbounds nuw i8, ptr %4252, i64 24
  %4272 = load i32, ptr %4271, align 8, !tbaa !314
  %4273 = call ptr %4259(ptr noundef %4262, ptr noundef %4266, ptr noundef %4268, i32 noundef %4270, i32 noundef %4272) #16
  %4274 = getelementptr inbounds nuw ptr, ptr %8, i64 %4251
  store ptr %4273, ptr %4274, align 8, !tbaa !23
  %4275 = add nsw i32 %4254, 1
  store i32 %4275, ptr %4253, align 4, !tbaa !317
  %4276 = icmp slt i32 %4275, %4256
  br i1 %4276, label %4290, label %4277

4277:                                             ; preds = %4250
  store i32 0, ptr %4253, align 4, !tbaa !317
  %4278 = load ptr, ptr %4263, align 16, !tbaa !320
  store ptr %4278, ptr %4264, align 8, !tbaa !321
  %4279 = getelementptr inbounds nuw i8, ptr %4252, i64 40
  %4280 = load i32, ptr %4279, align 8, !tbaa !319
  %4281 = add nsw i32 %4280, 1
  store i32 %4281, ptr %4279, align 8, !tbaa !319
  %4282 = getelementptr inbounds nuw i8, ptr %4260, i64 32
  %4283 = load i32, ptr %4282, align 8, !tbaa !94
  %4284 = icmp slt i32 %4281, %4283
  br i1 %4284, label %4285, label %4290

4285:                                             ; preds = %4277
  %4286 = getelementptr inbounds nuw i8, ptr %4260, i64 36
  %4287 = load i32, ptr %4286, align 4, !tbaa !95
  %4288 = sext i32 %4287 to i64
  %4289 = getelementptr inbounds i8, ptr %4278, i64 %4288
  store ptr %4289, ptr %4263, align 16, !tbaa !320
  br label %4290

4290:                                             ; preds = %4285, %4277, %4250
  %4291 = add nuw nsw i64 %4251, 1
  %4292 = icmp eq i64 %4291, %4122
  br i1 %4292, label %4293, label %4250, !llvm.loop !324

4293:                                             ; preds = %4290
  %4294 = shl i32 %4248, 2
  %4295 = mul i32 %4294, %4249
  %4296 = zext i32 %4295 to i64
  %4297 = getelementptr inbounds nuw i8, ptr %4218, i64 %4296
  %4298 = load ptr, ptr %8, align 16, !tbaa !23
  %4299 = load ptr, ptr %2561, align 8, !tbaa !21
  %4300 = getelementptr inbounds nuw i8, ptr %4299, i64 8
  %4301 = load i32, ptr %4300, align 8, !tbaa !71
  switch i32 %4301, label %4302 [
    i32 3, label %4305
    i32 4, label %4330
  ]

4302:                                             ; preds = %4293
  %4303 = load i32, ptr %4299, align 8, !tbaa !24
  %4304 = icmp eq i32 %4303, 0
  br i1 %4304, label %4452, label %4432

4305:                                             ; preds = %4293
  br i1 %4111, label %4306, label %4446

4306:                                             ; preds = %4305
  %4307 = load i32, ptr %4299, align 8, !tbaa !24
  %4308 = icmp eq i32 %4307, 0
  br i1 %4308, label %4452, label %4309

4309:                                             ; preds = %4306
  %4310 = load ptr, ptr %4221, align 8, !tbaa !23
  %4311 = load ptr, ptr %4222, align 16, !tbaa !23
  br label %4312

4312:                                             ; preds = %4312, %4309
  %4313 = phi i64 [ 0, %4309 ], [ %4325, %4312 ]
  %4314 = phi ptr [ %4297, %4309 ], [ %4324, %4312 ]
  %4315 = getelementptr inbounds nuw i8, ptr %4298, i64 %4313
  %4316 = load i8, ptr %4315, align 1, !tbaa !35
  store i8 %4316, ptr %4314, align 1, !tbaa !35
  %4317 = getelementptr inbounds nuw i8, ptr %4310, i64 %4313
  %4318 = load i8, ptr %4317, align 1, !tbaa !35
  %4319 = getelementptr inbounds nuw i8, ptr %4314, i64 1
  store i8 %4318, ptr %4319, align 1, !tbaa !35
  %4320 = getelementptr inbounds nuw i8, ptr %4311, i64 %4313
  %4321 = load i8, ptr %4320, align 1, !tbaa !35
  %4322 = getelementptr inbounds nuw i8, ptr %4314, i64 2
  store i8 %4321, ptr %4322, align 1, !tbaa !35
  %4323 = getelementptr inbounds nuw i8, ptr %4314, i64 3
  store i8 -1, ptr %4323, align 1, !tbaa !35
  %4324 = getelementptr inbounds nuw i8, ptr %4314, i64 4
  %4325 = add nuw nsw i64 %4313, 1
  %4326 = load ptr, ptr %2561, align 8, !tbaa !21
  %4327 = load i32, ptr %4326, align 8, !tbaa !24
  %4328 = zext i32 %4327 to i64
  %4329 = icmp samesign ult i64 %4325, %4328
  br i1 %4329, label %4312, label %4452, !llvm.loop !325

4330:                                             ; preds = %4293
  %4331 = load i32, ptr %4220, align 4, !tbaa !55
  switch i32 %4331, label %4446 [
    i32 0, label %4332
    i32 2, label %4381
  ]

4332:                                             ; preds = %4330
  %4333 = load i32, ptr %4299, align 8, !tbaa !24
  %4334 = icmp eq i32 %4333, 0
  br i1 %4334, label %4452, label %4335

4335:                                             ; preds = %4332
  %4336 = load ptr, ptr %4223, align 8, !tbaa !23
  %4337 = load ptr, ptr %4221, align 8, !tbaa !23
  %4338 = load ptr, ptr %4222, align 16, !tbaa !23
  br label %4339

4339:                                             ; preds = %4339, %4335
  %4340 = phi i64 [ 0, %4335 ], [ %4376, %4339 ]
  %4341 = phi ptr [ %4297, %4335 ], [ %4375, %4339 ]
  %4342 = getelementptr inbounds nuw i8, ptr %4336, i64 %4340
  %4343 = load i8, ptr %4342, align 1, !tbaa !35
  %4344 = getelementptr inbounds nuw i8, ptr %4298, i64 %4340
  %4345 = load i8, ptr %4344, align 1, !tbaa !35
  %4346 = zext i8 %4345 to i32
  %4347 = zext i8 %4343 to i32
  %4348 = mul nuw nsw i32 %4346, %4347
  %4349 = add nuw nsw i32 %4348, 128
  %4350 = lshr i32 %4349, 8
  %4351 = add nuw nsw i32 %4350, %4349
  %4352 = lshr i32 %4351, 8
  %4353 = trunc nuw i32 %4352 to i8
  store i8 %4353, ptr %4341, align 1, !tbaa !35
  %4354 = getelementptr inbounds nuw i8, ptr %4337, i64 %4340
  %4355 = load i8, ptr %4354, align 1, !tbaa !35
  %4356 = zext i8 %4355 to i32
  %4357 = mul nuw nsw i32 %4356, %4347
  %4358 = add nuw nsw i32 %4357, 128
  %4359 = lshr i32 %4358, 8
  %4360 = add nuw nsw i32 %4359, %4358
  %4361 = lshr i32 %4360, 8
  %4362 = trunc nuw i32 %4361 to i8
  %4363 = getelementptr inbounds nuw i8, ptr %4341, i64 1
  store i8 %4362, ptr %4363, align 1, !tbaa !35
  %4364 = getelementptr inbounds nuw i8, ptr %4338, i64 %4340
  %4365 = load i8, ptr %4364, align 1, !tbaa !35
  %4366 = zext i8 %4365 to i32
  %4367 = mul nuw nsw i32 %4366, %4347
  %4368 = add nuw nsw i32 %4367, 128
  %4369 = lshr i32 %4368, 8
  %4370 = add nuw nsw i32 %4369, %4368
  %4371 = lshr i32 %4370, 8
  %4372 = trunc nuw i32 %4371 to i8
  %4373 = getelementptr inbounds nuw i8, ptr %4341, i64 2
  store i8 %4372, ptr %4373, align 1, !tbaa !35
  %4374 = getelementptr inbounds nuw i8, ptr %4341, i64 3
  store i8 -1, ptr %4374, align 1, !tbaa !35
  %4375 = getelementptr inbounds nuw i8, ptr %4341, i64 4
  %4376 = add nuw nsw i64 %4340, 1
  %4377 = load ptr, ptr %2561, align 8, !tbaa !21
  %4378 = load i32, ptr %4377, align 8, !tbaa !24
  %4379 = zext i32 %4378 to i64
  %4380 = icmp samesign ult i64 %4376, %4379
  br i1 %4380, label %4339, label %4452, !llvm.loop !326

4381:                                             ; preds = %4330
  %4382 = load ptr, ptr %2564, align 8, !tbaa !268
  %4383 = load ptr, ptr %4221, align 8, !tbaa !23
  %4384 = load ptr, ptr %4222, align 16, !tbaa !23
  %4385 = load i32, ptr %4299, align 8, !tbaa !24
  call void %4382(ptr noundef nonnull %4297, ptr noundef %4298, ptr noundef %4383, ptr noundef %4384, i32 noundef %4385, i32 noundef 4) #16
  %4386 = load ptr, ptr %2561, align 8, !tbaa !21
  %4387 = load i32, ptr %4386, align 8, !tbaa !24
  %4388 = icmp eq i32 %4387, 0
  br i1 %4388, label %4452, label %4389

4389:                                             ; preds = %4381
  %4390 = load ptr, ptr %4223, align 8, !tbaa !23
  br label %4391

4391:                                             ; preds = %4391, %4389
  %4392 = phi i64 [ 0, %4389 ], [ %4427, %4391 ]
  %4393 = phi ptr [ %4297, %4389 ], [ %4426, %4391 ]
  %4394 = getelementptr inbounds nuw i8, ptr %4390, i64 %4392
  %4395 = load i8, ptr %4394, align 1, !tbaa !35
  %4396 = load i8, ptr %4393, align 1, !tbaa !35
  %4397 = xor i8 %4396, -1
  %4398 = zext i8 %4397 to i32
  %4399 = zext i8 %4395 to i32
  %4400 = mul nuw nsw i32 %4398, %4399
  %4401 = add nuw nsw i32 %4400, 128
  %4402 = lshr i32 %4401, 8
  %4403 = add nuw nsw i32 %4402, %4401
  %4404 = lshr i32 %4403, 8
  %4405 = trunc nuw i32 %4404 to i8
  store i8 %4405, ptr %4393, align 1, !tbaa !35
  %4406 = getelementptr inbounds nuw i8, ptr %4393, i64 1
  %4407 = load i8, ptr %4406, align 1, !tbaa !35
  %4408 = xor i8 %4407, -1
  %4409 = zext i8 %4408 to i32
  %4410 = mul nuw nsw i32 %4409, %4399
  %4411 = add nuw nsw i32 %4410, 128
  %4412 = lshr i32 %4411, 8
  %4413 = add nuw nsw i32 %4412, %4411
  %4414 = lshr i32 %4413, 8
  %4415 = trunc nuw i32 %4414 to i8
  store i8 %4415, ptr %4406, align 1, !tbaa !35
  %4416 = getelementptr inbounds nuw i8, ptr %4393, i64 2
  %4417 = load i8, ptr %4416, align 1, !tbaa !35
  %4418 = xor i8 %4417, -1
  %4419 = zext i8 %4418 to i32
  %4420 = mul nuw nsw i32 %4419, %4399
  %4421 = add nuw nsw i32 %4420, 128
  %4422 = lshr i32 %4421, 8
  %4423 = add nuw nsw i32 %4422, %4421
  %4424 = lshr i32 %4423, 8
  %4425 = trunc nuw i32 %4424 to i8
  store i8 %4425, ptr %4416, align 1, !tbaa !35
  %4426 = getelementptr inbounds nuw i8, ptr %4393, i64 4
  %4427 = add nuw nsw i64 %4392, 1
  %4428 = load ptr, ptr %2561, align 8, !tbaa !21
  %4429 = load i32, ptr %4428, align 8, !tbaa !24
  %4430 = zext i32 %4429 to i64
  %4431 = icmp samesign ult i64 %4427, %4430
  br i1 %4431, label %4391, label %4452, !llvm.loop !327

4432:                                             ; preds = %4302, %4432
  %4433 = phi i64 [ %4441, %4432 ], [ 0, %4302 ]
  %4434 = phi ptr [ %4440, %4432 ], [ %4297, %4302 ]
  %4435 = getelementptr inbounds nuw i8, ptr %4298, i64 %4433
  %4436 = load i8, ptr %4435, align 1, !tbaa !35
  %4437 = getelementptr inbounds nuw i8, ptr %4434, i64 2
  store i8 %4436, ptr %4437, align 1, !tbaa !35
  %4438 = getelementptr inbounds nuw i8, ptr %4434, i64 1
  store i8 %4436, ptr %4438, align 1, !tbaa !35
  store i8 %4436, ptr %4434, align 1, !tbaa !35
  %4439 = getelementptr inbounds nuw i8, ptr %4434, i64 3
  store i8 -1, ptr %4439, align 1, !tbaa !35
  %4440 = getelementptr inbounds nuw i8, ptr %4434, i64 4
  %4441 = add nuw nsw i64 %4433, 1
  %4442 = load ptr, ptr %2561, align 8, !tbaa !21
  %4443 = load i32, ptr %4442, align 8, !tbaa !24
  %4444 = zext i32 %4443 to i64
  %4445 = icmp samesign ult i64 %4441, %4444
  br i1 %4445, label %4432, label %4452, !llvm.loop !328

4446:                                             ; preds = %4330, %4305
  %4447 = load ptr, ptr %2564, align 8, !tbaa !268
  %4448 = load ptr, ptr %4221, align 8, !tbaa !23
  %4449 = load ptr, ptr %4222, align 16, !tbaa !23
  %4450 = load i32, ptr %4299, align 8, !tbaa !24
  call void %4447(ptr noundef nonnull %4297, ptr noundef %4298, ptr noundef %4448, ptr noundef %4449, i32 noundef %4450, i32 noundef 4) #16
  %4451 = load ptr, ptr %2561, align 8, !tbaa !21
  br label %4452

4452:                                             ; preds = %4391, %4339, %4312, %4432, %4446, %4381, %4332, %4306, %4302
  %4453 = phi ptr [ %4377, %4339 ], [ %4326, %4312 ], [ %4442, %4432 ], [ %4299, %4302 ], [ %4451, %4446 ], [ %4386, %4381 ], [ %4299, %4332 ], [ %4299, %4306 ], [ %4428, %4391 ]
  %4454 = add nuw i32 %4248, 1
  %4455 = getelementptr inbounds nuw i8, ptr %4453, i64 4
  %4456 = load i32, ptr %4455, align 4, !tbaa !25
  %4457 = icmp ult i32 %4454, %4456
  br i1 %4457, label %4246, label %4458, !llvm.loop !329

4458:                                             ; preds = %4452, %4215
  %4459 = phi ptr [ %4092, %4215 ], [ %4453, %4452 ]
  %4460 = getelementptr inbounds nuw i8, ptr %4459, i64 4
  %4461 = getelementptr inbounds nuw i8, ptr %4459, i64 8
  %4462 = load i32, ptr %4461, align 8, !tbaa !71
  %4463 = icmp sgt i32 %4462, 0
  br i1 %4463, label %4464, label %4488

4464:                                             ; preds = %4458
  %4465 = zext nneg i32 %4462 to i64
  br label %4466

4466:                                             ; preds = %4485, %4464
  %4467 = phi i64 [ 0, %4464 ], [ %4486, %4485 ]
  %4468 = getelementptr inbounds nuw %struct.anon, ptr %2567, i64 %4467
  %4469 = getelementptr inbounds nuw i8, ptr %4468, i64 56
  %4470 = load ptr, ptr %4469, align 8, !tbaa !99
  %4471 = icmp eq ptr %4470, null
  br i1 %4471, label %4474, label %4472

4472:                                             ; preds = %4466
  store ptr null, ptr %4469, align 8, !tbaa !99
  %4473 = getelementptr inbounds nuw i8, ptr %4468, i64 48
  store ptr null, ptr %4473, align 8, !tbaa !72
  br label %4474

4474:                                             ; preds = %4472, %4466
  %4475 = getelementptr inbounds nuw i8, ptr %4468, i64 64
  %4476 = load ptr, ptr %4475, align 8, !tbaa !98
  %4477 = icmp eq ptr %4476, null
  br i1 %4477, label %4480, label %4478

4478:                                             ; preds = %4474
  store ptr null, ptr %4475, align 8, !tbaa !98
  %4479 = getelementptr inbounds nuw i8, ptr %4468, i64 80
  store ptr null, ptr %4479, align 8, !tbaa !97
  br label %4480

4480:                                             ; preds = %4478, %4474
  %4481 = getelementptr inbounds nuw i8, ptr %4468, i64 72
  %4482 = load ptr, ptr %4481, align 8, !tbaa !75
  %4483 = icmp eq ptr %4482, null
  br i1 %4483, label %4485, label %4484

4484:                                             ; preds = %4480
  store ptr null, ptr %4481, align 8, !tbaa !75
  br label %4485

4485:                                             ; preds = %4484, %4480
  %4486 = add nuw nsw i64 %4467, 1
  %4487 = icmp eq i64 %4486, %4465
  br i1 %4487, label %4488, label %4466, !llvm.loop !107

4488:                                             ; preds = %4485, %4458
  %4489 = load i32, ptr %4459, align 8, !tbaa !24
  store i32 %4489, ptr %1, align 4, !tbaa !4
  %4490 = load i32, ptr %4460, align 4, !tbaa !25
  store i32 %4490, ptr %2, align 4, !tbaa !4
  %4491 = load i32, ptr %4461, align 8, !tbaa !71
  %4492 = icmp slt i32 %4491, 3
  %4493 = select i1 %4492, i32 1, i32 3
  store i32 %4493, ptr %3, align 4, !tbaa !4
  br label %4494

4494:                                             ; preds = %4243, %4151, %4488
  %4495 = phi ptr [ null, %4151 ], [ %4218, %4488 ], [ null, %4243 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  br label %4501

4496:                                             ; preds = %2536, %2540
  %4497 = tail call fastcc i32 @stbi__tga_test(ptr noundef %0) #17
  %4498 = icmp eq i32 %4497, 0
  br i1 %4498, label %4501, label %4499

4499:                                             ; preds = %4496
  %4500 = tail call fastcc ptr @stbi__tga_load(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #17
  br label %4501

4501:                                             ; preds = %4086, %4494, %4108, %4060, %2554, %4496, %4499, %2534, %1437, %286
  %4502 = phi ptr [ %287, %286 ], [ %1438, %1437 ], [ %2535, %2534 ], [ null, %4496 ], [ %4500, %4499 ], [ null, %2554 ], [ %4495, %4494 ], [ null, %4108 ], [ null, %4060 ], [ null, %4086 ]
  ret ptr %4502
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
  %31 = add nsw i32 %30, %28
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
  %73 = add nsw i32 %72, %70
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
  %120 = add nsw i32 %119, %117
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
  %155 = sub nsw i32 4, %148
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
  %188 = add nsw i32 %187, %185
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
  %218 = sub nsw i32 4, %211
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
  %239 = sub nsw i32 9, %232
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
  %277 = add nsw i32 %276, %274
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
  %36 = add nsw i32 %35, %33
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
  %79 = add nsw i32 %78, %76
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
  %121 = add nsw i32 %120, %118
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
  %166 = add nsw i32 %165, %163
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
  %212 = add nsw i32 %211, %209
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
  %254 = add nsw i32 %253, %251
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
  br i1 %272, label %887, label %273

273:                                              ; preds = %266
  %274 = icmp ugt i8 %134, 7
  %275 = lshr i8 %269, 5
  %276 = and i8 %275, 1
  %277 = icmp ne i8 %94, 0
  br i1 %277, label %278, label %282

278:                                              ; preds = %273
  switch i8 %179, label %887 [
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
  switch i8 %227, label %887 [
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
  br i1 %303, label %887, label %304

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
  %324 = sub nsw i32 %52, %317
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
  br i1 %330, label %384, label %331

331:                                              ; preds = %328
  %332 = icmp eq i32 %183, 0
  br i1 %332, label %883, label %333

333:                                              ; preds = %331
  %334 = icmp eq i8 %276, 0
  %335 = mul nuw nsw i32 %182, %294
  %336 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %337 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %338 = zext nneg i32 %335 to i64
  br label %339

339:                                              ; preds = %333, %381
  %340 = phi i32 [ 0, %333 ], [ %382, %381 ]
  %341 = xor i32 %340, -1
  %342 = add nsw i32 %183, %341
  %343 = select i1 %334, i32 %342, i32 %340
  %344 = mul i32 %335, %343
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i8, ptr %307, i64 %345
  %347 = load ptr, ptr %336, align 8, !tbaa !8
  %348 = icmp eq ptr %347, null
  br i1 %348, label %349, label %352

349:                                              ; preds = %339
  %350 = load ptr, ptr %6, align 8, !tbaa !16
  %351 = load ptr, ptr %8, align 8, !tbaa !18
  br label %370

352:                                              ; preds = %339
  %353 = load ptr, ptr %8, align 8, !tbaa !18
  %354 = load ptr, ptr %6, align 8, !tbaa !16
  %355 = ptrtoint ptr %353 to i64
  %356 = ptrtoint ptr %354 to i64
  %357 = sub i64 %355, %356
  %358 = trunc i64 %357 to i32
  %359 = icmp sgt i32 %335, %358
  br i1 %359, label %360, label %370

360:                                              ; preds = %352
  %361 = shl i64 %357, 32
  %362 = ashr exact i64 %361, 32
  %363 = tail call ptr @memcpy(ptr noundef nonnull %346, ptr noundef %354, i64 noundef %362) #16
  %364 = load ptr, ptr %336, align 8, !tbaa !8
  %365 = load ptr, ptr %337, align 8, !tbaa !33
  %366 = getelementptr inbounds i8, ptr %346, i64 %362
  %367 = sub nsw i32 %335, %358
  %368 = tail call i32 %364(ptr noundef %365, ptr noundef nonnull %366, i32 noundef %367) #16
  %369 = load ptr, ptr %8, align 8, !tbaa !18
  br label %379

370:                                              ; preds = %352, %349
  %371 = phi ptr [ %351, %349 ], [ %353, %352 ]
  %372 = phi ptr [ %350, %349 ], [ %354, %352 ]
  %373 = getelementptr inbounds nuw i8, ptr %372, i64 %338
  %374 = icmp ugt ptr %373, %371
  br i1 %374, label %381, label %375

375:                                              ; preds = %370
  %376 = tail call ptr @memcpy(ptr noundef nonnull %346, ptr noundef %372, i64 noundef %338) #16
  %377 = load ptr, ptr %6, align 8, !tbaa !16
  %378 = getelementptr inbounds nuw i8, ptr %377, i64 %338
  br label %379

379:                                              ; preds = %375, %360
  %380 = phi ptr [ %369, %360 ], [ %378, %375 ]
  store ptr %380, ptr %6, align 8, !tbaa !16
  br label %381

381:                                              ; preds = %379, %370
  %382 = add nuw nsw i32 %340, 1
  %383 = icmp eq i32 %382, %183
  br i1 %383, label %836, label %339, !llvm.loop !330

384:                                              ; preds = %328
  br i1 %277, label %385, label %455

385:                                              ; preds = %384
  %386 = icmp eq i32 %137, 0
  br i1 %386, label %887, label %387

387:                                              ; preds = %385
  %388 = icmp eq i32 %136, 0
  br i1 %388, label %413, label %389

389:                                              ; preds = %387
  %390 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %391 = load ptr, ptr %390, align 8, !tbaa !8
  %392 = icmp eq ptr %391, null
  br i1 %392, label %393, label %395

393:                                              ; preds = %389
  %394 = load ptr, ptr %6, align 8, !tbaa !16
  br label %409

395:                                              ; preds = %389
  %396 = load ptr, ptr %8, align 8, !tbaa !18
  %397 = load ptr, ptr %6, align 8, !tbaa !16
  %398 = ptrtoint ptr %396 to i64
  %399 = ptrtoint ptr %397 to i64
  %400 = sub i64 %398, %399
  %401 = trunc i64 %400 to i32
  %402 = icmp sgt i32 %136, %401
  br i1 %402, label %403, label %409

403:                                              ; preds = %395
  store ptr %396, ptr %6, align 8, !tbaa !16
  %404 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %405 = load ptr, ptr %404, align 8, !tbaa !36
  %406 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %407 = load ptr, ptr %406, align 8, !tbaa !33
  %408 = sub nsw i32 %136, %401
  tail call void %405(ptr noundef %407, i32 noundef %408) #16
  br label %413

409:                                              ; preds = %395, %393
  %410 = phi ptr [ %394, %393 ], [ %397, %395 ]
  %411 = zext nneg i32 %136 to i64
  %412 = getelementptr inbounds nuw i8, ptr %410, i64 %411
  store ptr %412, ptr %6, align 8, !tbaa !16
  br label %413

413:                                              ; preds = %387, %403, %409
  %414 = mul nuw nsw i32 %137, %294
  %415 = zext nneg i32 %414 to i64
  %416 = add nuw nsw i64 %415, 15
  %417 = and i64 %416, 16777200
  %418 = add nuw nsw i64 %417, 16
  %419 = load i64, ptr @arena_used, align 8, !tbaa !19
  %420 = sub i64 100663296, %419
  %421 = icmp ugt i64 %418, %420
  br i1 %421, label %887, label %422

422:                                              ; preds = %413
  %423 = getelementptr inbounds nuw i8, ptr @arena, i64 %419
  %424 = add i64 %419, %418
  store i64 %424, ptr @arena_used, align 8, !tbaa !19
  store i64 %415, ptr %423, align 8, !tbaa !19
  %425 = getelementptr inbounds nuw i8, ptr %423, i64 16
  br i1 %292, label %452, label %426

426:                                              ; preds = %422
  %427 = zext nneg i8 %293 to i64
  br label %428

428:                                              ; preds = %426, %428
  %429 = phi ptr [ %425, %426 ], [ %449, %428 ]
  %430 = phi i32 [ 0, %426 ], [ %450, %428 ]
  %431 = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) #17
  %432 = trunc nuw i32 %431 to i16
  %433 = lshr i16 %432, 10
  %434 = and i16 %433, 31
  %435 = mul nuw nsw i16 %434, 255
  %436 = udiv i16 %435, 31
  %437 = trunc nuw i16 %436 to i8
  store i8 %437, ptr %429, align 1, !tbaa !35
  %438 = lshr i16 %432, 5
  %439 = and i16 %438, 31
  %440 = mul nuw nsw i16 %439, 255
  %441 = udiv i16 %440, 31
  %442 = trunc nuw i16 %441 to i8
  %443 = getelementptr inbounds nuw i8, ptr %429, i64 1
  store i8 %442, ptr %443, align 1, !tbaa !35
  %444 = and i16 %432, 31
  %445 = mul nuw nsw i16 %444, 255
  %446 = udiv i16 %445, 31
  %447 = trunc nuw i16 %446 to i8
  %448 = getelementptr inbounds nuw i8, ptr %429, i64 2
  store i8 %447, ptr %448, align 1, !tbaa !35
  %449 = getelementptr inbounds nuw i8, ptr %429, i64 %427
  %450 = add nuw nsw i32 %430, 1
  %451 = icmp eq i32 %450, %137
  br i1 %451, label %455, label %428, !llvm.loop !331

452:                                              ; preds = %422
  %453 = tail call fastcc i32 @stbi__getn(ptr noundef nonnull %0, ptr noundef nonnull %425, i32 noundef %414) #17
  %454 = icmp eq i32 %453, 0
  br i1 %454, label %887, label %455

455:                                              ; preds = %428, %452, %384
  %456 = phi ptr [ null, %384 ], [ %425, %452 ], [ %425, %428 ]
  %457 = icmp eq i32 %295, 0
  br i1 %457, label %730, label %458

458:                                              ; preds = %455
  %459 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %460 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %461 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %462 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %463 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %464 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %465 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %466 = getelementptr inbounds nuw i8, ptr %0, i64 57
  %467 = getelementptr inbounds nuw i8, ptr %5, i64 1
  %468 = getelementptr inbounds nuw i8, ptr %5, i64 2
  %469 = icmp eq i8 %227, 8
  %470 = zext nneg i8 %293 to i64
  %471 = zext nneg i32 %295 to i64
  %472 = icmp samesign ult i8 %293, 4
  %473 = and i64 %470, 28
  %474 = icmp eq i64 %473, 4
  %475 = getelementptr inbounds nuw i8, ptr %5, i64 4
  %476 = icmp eq i64 %473, 8
  %477 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %478 = icmp eq i64 %473, 12
  %479 = getelementptr inbounds nuw i8, ptr %5, i64 12
  %480 = icmp eq i64 %473, 16
  %481 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %482 = icmp eq i64 %473, 20
  %483 = getelementptr inbounds nuw i8, ptr %5, i64 20
  %484 = icmp eq i64 %473, 24
  %485 = getelementptr inbounds nuw i8, ptr %5, i64 24
  %486 = icmp eq i64 %473, %470
  %487 = icmp samesign ult i8 %293, 4
  %488 = and i64 %470, 28
  %489 = icmp eq i64 %488, 4
  %490 = getelementptr inbounds nuw i8, ptr %5, i64 4
  %491 = icmp eq i64 %488, 8
  %492 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %493 = icmp eq i64 %488, 12
  %494 = getelementptr inbounds nuw i8, ptr %5, i64 12
  %495 = icmp eq i64 %488, 16
  %496 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %497 = icmp eq i64 %488, 20
  %498 = getelementptr inbounds nuw i8, ptr %5, i64 20
  %499 = icmp eq i64 %488, 24
  %500 = getelementptr inbounds nuw i8, ptr %5, i64 24
  %501 = icmp eq i64 %488, %470
  br label %502

502:                                              ; preds = %458, %726
  %503 = phi i64 [ 0, %458 ], [ %728, %726 ]
  %504 = phi i1 [ true, %458 ], [ false, %726 ]
  %505 = phi i32 [ 0, %458 ], [ %693, %726 ]
  %506 = phi i32 [ 0, %458 ], [ %727, %726 ]
  br i1 %274, label %507, label %552

507:                                              ; preds = %502
  %508 = icmp eq i32 %506, 0
  br i1 %508, label %509, label %547

509:                                              ; preds = %507
  %510 = load ptr, ptr %6, align 8, !tbaa !16
  %511 = load ptr, ptr %8, align 8, !tbaa !18
  %512 = icmp ult ptr %510, %511
  br i1 %512, label %513, label %516

513:                                              ; preds = %509
  %514 = getelementptr inbounds nuw i8, ptr %510, i64 1
  store ptr %514, ptr %6, align 8, !tbaa !16
  %515 = load i8, ptr %510, align 1, !tbaa !35
  br label %541

516:                                              ; preds = %509
  %517 = load i32, ptr %459, align 8, !tbaa !13
  %518 = icmp eq i32 %517, 0
  br i1 %518, label %541, label %519

519:                                              ; preds = %516
  %520 = load ptr, ptr %460, align 8, !tbaa !8
  %521 = load ptr, ptr %461, align 8, !tbaa !33
  %522 = load i32, ptr %463, align 4, !tbaa !34
  %523 = tail call i32 %520(ptr noundef %521, ptr noundef nonnull %462, i32 noundef %522) #16
  %524 = load ptr, ptr %6, align 8, !tbaa !16
  %525 = load ptr, ptr %464, align 8, !tbaa !15
  %526 = ptrtoint ptr %524 to i64
  %527 = ptrtoint ptr %525 to i64
  %528 = sub i64 %526, %527
  %529 = trunc i64 %528 to i32
  %530 = load i32, ptr %465, align 8, !tbaa !14
  %531 = add nsw i32 %530, %529
  store i32 %531, ptr %465, align 8, !tbaa !14
  %532 = icmp eq i32 %523, 0
  br i1 %532, label %533, label %534

533:                                              ; preds = %519
  store i32 0, ptr %459, align 8, !tbaa !13
  store i8 0, ptr %462, align 8, !tbaa !35
  br label %538

534:                                              ; preds = %519
  %535 = sext i32 %523 to i64
  %536 = getelementptr inbounds i8, ptr %462, i64 %535
  %537 = load i8, ptr %462, align 1, !tbaa !35
  br label %538

538:                                              ; preds = %534, %533
  %539 = phi i8 [ 0, %533 ], [ %537, %534 ]
  %540 = phi ptr [ %466, %533 ], [ %536, %534 ]
  store ptr %540, ptr %8, align 8, !tbaa !18
  store ptr %466, ptr %6, align 8, !tbaa !16
  br label %541

541:                                              ; preds = %513, %516, %538
  %542 = phi i8 [ %515, %513 ], [ %539, %538 ], [ 0, %516 ]
  %543 = zext i8 %542 to i32
  %544 = and i32 %543, 127
  %545 = add nuw nsw i32 %544, 1
  %546 = lshr i32 %543, 7
  br label %552

547:                                              ; preds = %507
  %548 = icmp eq i32 %505, 0
  %549 = or i1 %548, %504
  %550 = xor i1 %548, true
  %551 = zext i1 %550 to i32
  br i1 %549, label %552, label %691

552:                                              ; preds = %547, %502, %541
  %553 = phi i32 [ %551, %547 ], [ %546, %541 ], [ %505, %502 ]
  %554 = phi i32 [ %506, %547 ], [ %545, %541 ], [ %506, %502 ]
  br i1 %277, label %555, label %630

555:                                              ; preds = %552
  br i1 %469, label %556, label %591

556:                                              ; preds = %555
  %557 = load ptr, ptr %6, align 8, !tbaa !16
  %558 = load ptr, ptr %8, align 8, !tbaa !18
  %559 = icmp ult ptr %557, %558
  br i1 %559, label %560, label %563

560:                                              ; preds = %556
  %561 = getelementptr inbounds nuw i8, ptr %557, i64 1
  store ptr %561, ptr %6, align 8, !tbaa !16
  %562 = load i8, ptr %557, align 1, !tbaa !35
  br label %588

563:                                              ; preds = %556
  %564 = load i32, ptr %459, align 8, !tbaa !13
  %565 = icmp eq i32 %564, 0
  br i1 %565, label %588, label %566

566:                                              ; preds = %563
  %567 = load ptr, ptr %460, align 8, !tbaa !8
  %568 = load ptr, ptr %461, align 8, !tbaa !33
  %569 = load i32, ptr %463, align 4, !tbaa !34
  %570 = tail call i32 %567(ptr noundef %568, ptr noundef nonnull %462, i32 noundef %569) #16
  %571 = load ptr, ptr %6, align 8, !tbaa !16
  %572 = load ptr, ptr %464, align 8, !tbaa !15
  %573 = ptrtoint ptr %571 to i64
  %574 = ptrtoint ptr %572 to i64
  %575 = sub i64 %573, %574
  %576 = trunc i64 %575 to i32
  %577 = load i32, ptr %465, align 8, !tbaa !14
  %578 = add nsw i32 %577, %576
  store i32 %578, ptr %465, align 8, !tbaa !14
  %579 = icmp eq i32 %570, 0
  br i1 %579, label %580, label %581

580:                                              ; preds = %566
  store i32 0, ptr %459, align 8, !tbaa !13
  store i8 0, ptr %462, align 8, !tbaa !35
  br label %585

581:                                              ; preds = %566
  %582 = sext i32 %570 to i64
  %583 = getelementptr inbounds i8, ptr %462, i64 %582
  %584 = load i8, ptr %462, align 1, !tbaa !35
  br label %585

585:                                              ; preds = %581, %580
  %586 = phi i8 [ 0, %580 ], [ %584, %581 ]
  %587 = phi ptr [ %466, %580 ], [ %583, %581 ]
  store ptr %587, ptr %8, align 8, !tbaa !18
  store ptr %466, ptr %6, align 8, !tbaa !16
  br label %588

588:                                              ; preds = %560, %563, %585
  %589 = phi i8 [ %562, %560 ], [ %586, %585 ], [ 0, %563 ]
  %590 = zext i8 %589 to i32
  br label %593

591:                                              ; preds = %555
  %592 = tail call fastcc i32 @stbi__get16le(ptr noundef %0) #17
  br label %593

593:                                              ; preds = %588, %591
  %594 = phi i32 [ %590, %588 ], [ %592, %591 ]
  %595 = icmp samesign ult i32 %594, %137
  %596 = select i1 %595, i32 %594, i32 0
  %597 = mul nuw nsw i32 %596, %294
  %598 = zext nneg i32 %597 to i64
  %599 = getelementptr inbounds nuw i8, ptr %456, i64 %598
  br i1 %472, label %621, label %600

600:                                              ; preds = %593
  %601 = load <4 x i8>, ptr %599, align 1, !tbaa !35
  store <4 x i8> %601, ptr %5, align 16, !tbaa !35
  br i1 %474, label %620, label %602, !llvm.loop !332

602:                                              ; preds = %600
  %603 = getelementptr inbounds nuw i8, ptr %599, i64 4
  %604 = load <4 x i8>, ptr %603, align 1, !tbaa !35
  store <4 x i8> %604, ptr %475, align 4, !tbaa !35
  br i1 %476, label %620, label %605, !llvm.loop !332

605:                                              ; preds = %602
  %606 = getelementptr inbounds nuw i8, ptr %599, i64 8
  %607 = load <4 x i8>, ptr %606, align 1, !tbaa !35
  store <4 x i8> %607, ptr %477, align 8, !tbaa !35
  br i1 %478, label %620, label %608, !llvm.loop !332

608:                                              ; preds = %605
  %609 = getelementptr inbounds nuw i8, ptr %599, i64 12
  %610 = load <4 x i8>, ptr %609, align 1, !tbaa !35
  store <4 x i8> %610, ptr %479, align 4, !tbaa !35
  br i1 %480, label %620, label %611, !llvm.loop !332

611:                                              ; preds = %608
  %612 = getelementptr inbounds nuw i8, ptr %599, i64 16
  %613 = load <4 x i8>, ptr %612, align 1, !tbaa !35
  store <4 x i8> %613, ptr %481, align 16, !tbaa !35
  br i1 %482, label %620, label %614, !llvm.loop !332

614:                                              ; preds = %611
  %615 = getelementptr inbounds nuw i8, ptr %599, i64 20
  %616 = load <4 x i8>, ptr %615, align 1, !tbaa !35
  store <4 x i8> %616, ptr %483, align 4, !tbaa !35
  br i1 %484, label %620, label %617, !llvm.loop !332

617:                                              ; preds = %614
  %618 = getelementptr inbounds nuw i8, ptr %599, i64 24
  %619 = load <4 x i8>, ptr %618, align 1, !tbaa !35
  store <4 x i8> %619, ptr %485, align 8, !tbaa !35
  br label %620

620:                                              ; preds = %617, %614, %611, %608, %605, %602, %600
  br i1 %486, label %691, label %621

621:                                              ; preds = %593, %620
  %622 = phi i64 [ 0, %593 ], [ %473, %620 ]
  br label %623

623:                                              ; preds = %621, %623
  %624 = phi i64 [ %628, %623 ], [ %622, %621 ]
  %625 = getelementptr inbounds nuw i8, ptr %599, i64 %624
  %626 = load i8, ptr %625, align 1, !tbaa !35
  %627 = getelementptr inbounds nuw i8, ptr %5, i64 %624
  store i8 %626, ptr %627, align 1, !tbaa !35
  %628 = add nuw nsw i64 %624, 1
  %629 = icmp eq i64 %628, %470
  br i1 %629, label %691, label %623, !llvm.loop !333

630:                                              ; preds = %552
  br i1 %292, label %631, label %634

631:                                              ; preds = %630
  %632 = load ptr, ptr %6, align 8, !tbaa !16
  %633 = load ptr, ptr %8, align 8, !tbaa !18
  br label %651

634:                                              ; preds = %630
  %635 = tail call fastcc i32 @stbi__get16le(ptr noundef nonnull %0) #17
  %636 = trunc nuw i32 %635 to i16
  %637 = lshr i16 %636, 10
  %638 = and i16 %637, 31
  %639 = mul nuw nsw i16 %638, 255
  %640 = udiv i16 %639, 31
  %641 = trunc nuw i16 %640 to i8
  store i8 %641, ptr %5, align 16, !tbaa !35
  %642 = lshr i16 %636, 5
  %643 = and i16 %642, 31
  %644 = mul nuw nsw i16 %643, 255
  %645 = udiv i16 %644, 31
  %646 = trunc nuw i16 %645 to i8
  store i8 %646, ptr %467, align 1, !tbaa !35
  %647 = and i16 %636, 31
  %648 = mul nuw nsw i16 %647, 255
  %649 = udiv i16 %648, 31
  %650 = trunc nuw i16 %649 to i8
  store i8 %650, ptr %468, align 2, !tbaa !35
  br label %691

651:                                              ; preds = %631, %684
  %652 = phi ptr [ %633, %631 ], [ %685, %684 ]
  %653 = phi ptr [ %632, %631 ], [ %686, %684 ]
  %654 = phi i64 [ 0, %631 ], [ %689, %684 ]
  %655 = icmp ult ptr %653, %652
  br i1 %655, label %656, label %659

656:                                              ; preds = %651
  %657 = getelementptr inbounds nuw i8, ptr %653, i64 1
  store ptr %657, ptr %6, align 8, !tbaa !16
  %658 = load i8, ptr %653, align 1, !tbaa !35
  br label %684

659:                                              ; preds = %651
  %660 = load i32, ptr %459, align 8, !tbaa !13
  %661 = icmp eq i32 %660, 0
  br i1 %661, label %684, label %662

662:                                              ; preds = %659
  %663 = load ptr, ptr %460, align 8, !tbaa !8
  %664 = load ptr, ptr %461, align 8, !tbaa !33
  %665 = load i32, ptr %463, align 4, !tbaa !34
  %666 = tail call i32 %663(ptr noundef %664, ptr noundef nonnull %462, i32 noundef %665) #16
  %667 = load ptr, ptr %6, align 8, !tbaa !16
  %668 = load ptr, ptr %464, align 8, !tbaa !15
  %669 = ptrtoint ptr %667 to i64
  %670 = ptrtoint ptr %668 to i64
  %671 = sub i64 %669, %670
  %672 = trunc i64 %671 to i32
  %673 = load i32, ptr %465, align 8, !tbaa !14
  %674 = add nsw i32 %673, %672
  store i32 %674, ptr %465, align 8, !tbaa !14
  %675 = icmp eq i32 %666, 0
  br i1 %675, label %676, label %677

676:                                              ; preds = %662
  store i32 0, ptr %459, align 8, !tbaa !13
  store i8 0, ptr %462, align 8, !tbaa !35
  br label %681

677:                                              ; preds = %662
  %678 = sext i32 %666 to i64
  %679 = getelementptr inbounds i8, ptr %462, i64 %678
  %680 = load i8, ptr %462, align 1, !tbaa !35
  br label %681

681:                                              ; preds = %677, %676
  %682 = phi i8 [ 0, %676 ], [ %680, %677 ]
  %683 = phi ptr [ %466, %676 ], [ %679, %677 ]
  store ptr %683, ptr %8, align 8, !tbaa !18
  store ptr %466, ptr %6, align 8, !tbaa !16
  br label %684

684:                                              ; preds = %656, %659, %681
  %685 = phi ptr [ %652, %656 ], [ %683, %681 ], [ %652, %659 ]
  %686 = phi ptr [ %657, %656 ], [ %466, %681 ], [ %653, %659 ]
  %687 = phi i8 [ %658, %656 ], [ %682, %681 ], [ 0, %659 ]
  %688 = getelementptr inbounds nuw i8, ptr %5, i64 %654
  store i8 %687, ptr %688, align 1, !tbaa !35
  %689 = add nuw nsw i64 %654, 1
  %690 = icmp eq i64 %689, %470
  br i1 %690, label %691, label %651, !llvm.loop !334

691:                                              ; preds = %684, %623, %620, %634, %547
  %692 = phi i32 [ %554, %620 ], [ %506, %547 ], [ %554, %634 ], [ %554, %623 ], [ %554, %684 ]
  %693 = phi i32 [ %553, %620 ], [ 1, %547 ], [ %553, %634 ], [ %553, %623 ], [ %553, %684 ]
  %694 = mul nuw nsw i64 %503, %470
  %695 = getelementptr inbounds nuw i8, ptr %307, i64 %694
  br i1 %487, label %717, label %696

696:                                              ; preds = %691
  %697 = load <4 x i8>, ptr %5, align 16, !tbaa !35
  store <4 x i8> %697, ptr %695, align 1, !tbaa !35
  br i1 %489, label %716, label %698, !llvm.loop !335

698:                                              ; preds = %696
  %699 = load <4 x i8>, ptr %490, align 4, !tbaa !35
  %700 = getelementptr inbounds nuw i8, ptr %695, i64 4
  store <4 x i8> %699, ptr %700, align 1, !tbaa !35
  br i1 %491, label %716, label %701, !llvm.loop !335

701:                                              ; preds = %698
  %702 = load <4 x i8>, ptr %492, align 8, !tbaa !35
  %703 = getelementptr inbounds nuw i8, ptr %695, i64 8
  store <4 x i8> %702, ptr %703, align 1, !tbaa !35
  br i1 %493, label %716, label %704, !llvm.loop !335

704:                                              ; preds = %701
  %705 = load <4 x i8>, ptr %494, align 4, !tbaa !35
  %706 = getelementptr inbounds nuw i8, ptr %695, i64 12
  store <4 x i8> %705, ptr %706, align 1, !tbaa !35
  br i1 %495, label %716, label %707, !llvm.loop !335

707:                                              ; preds = %704
  %708 = load <4 x i8>, ptr %496, align 16, !tbaa !35
  %709 = getelementptr inbounds nuw i8, ptr %695, i64 16
  store <4 x i8> %708, ptr %709, align 1, !tbaa !35
  br i1 %497, label %716, label %710, !llvm.loop !335

710:                                              ; preds = %707
  %711 = load <4 x i8>, ptr %498, align 4, !tbaa !35
  %712 = getelementptr inbounds nuw i8, ptr %695, i64 20
  store <4 x i8> %711, ptr %712, align 1, !tbaa !35
  br i1 %499, label %716, label %713, !llvm.loop !335

713:                                              ; preds = %710
  %714 = load <4 x i8>, ptr %500, align 8, !tbaa !35
  %715 = getelementptr inbounds nuw i8, ptr %695, i64 24
  store <4 x i8> %714, ptr %715, align 1, !tbaa !35
  br label %716

716:                                              ; preds = %713, %710, %707, %704, %701, %698, %696
  br i1 %501, label %726, label %717

717:                                              ; preds = %691, %716
  %718 = phi i64 [ 0, %691 ], [ %488, %716 ]
  br label %719

719:                                              ; preds = %717, %719
  %720 = phi i64 [ %724, %719 ], [ %718, %717 ]
  %721 = getelementptr inbounds nuw i8, ptr %5, i64 %720
  %722 = load i8, ptr %721, align 1, !tbaa !35
  %723 = getelementptr inbounds nuw i8, ptr %695, i64 %720
  store i8 %722, ptr %723, align 1, !tbaa !35
  %724 = add nuw nsw i64 %720, 1
  %725 = icmp eq i64 %724, %470
  br i1 %725, label %726, label %719, !llvm.loop !336

726:                                              ; preds = %719, %716
  %727 = add nsw i32 %692, -1
  %728 = add nuw nsw i64 %503, 1
  %729 = icmp eq i64 %728, %471
  br i1 %729, label %730, label %502, !llvm.loop !337

730:                                              ; preds = %726, %455
  %731 = icmp eq i8 %276, 0
  %732 = icmp ne i32 %183, 0
  %733 = select i1 %731, i1 %732, i1 false
  br i1 %733, label %734, label %836

734:                                              ; preds = %730
  %735 = mul nuw nsw i32 %182, %294
  %736 = icmp eq i32 %735, 0
  %737 = add nsw i32 %183, -1
  %738 = mul nsw i32 %182, %737
  %739 = mul i32 %738, %294
  %740 = lshr i32 %737, 1
  %741 = add i64 %301, 16
  %742 = getelementptr i8, ptr @arena, i64 %741
  %743 = add nsw i32 %735, -1
  %744 = zext i32 %743 to i64
  %745 = add i64 %301, %744
  %746 = add i64 %745, 17
  %747 = getelementptr i8, ptr @arena, i64 %746
  %748 = getelementptr i8, ptr @arena, i64 %741
  %749 = getelementptr i8, ptr @arena, i64 %746
  %750 = zext nneg i32 %735 to i64
  %751 = icmp samesign ult i32 %735, 4
  %752 = icmp samesign ult i32 %735, 32
  %753 = and i64 %750, 28
  %754 = and i64 %750, 262112
  %755 = icmp eq i64 %754, %750
  %756 = trunc nuw nsw i64 %754 to i32
  %757 = sub nsw i32 %735, %756
  %758 = icmp eq i64 %753, 0
  %759 = and i64 %750, 262140
  %760 = trunc nuw nsw i64 %759 to i32
  %761 = sub nsw i32 %735, %760
  %762 = icmp eq i64 %759, %750
  br label %763

763:                                              ; preds = %734, %831
  %764 = phi i32 [ 0, %734 ], [ %834, %831 ]
  %765 = phi i32 [ %739, %734 ], [ %833, %831 ]
  %766 = phi i32 [ 0, %734 ], [ %832, %831 ]
  %767 = zext i32 %764 to i64
  %768 = getelementptr i8, ptr %742, i64 %767
  %769 = getelementptr i8, ptr %747, i64 %767
  %770 = sext i32 %765 to i64
  %771 = getelementptr i8, ptr %748, i64 %770
  %772 = getelementptr i8, ptr %749, i64 %770
  br i1 %736, label %831, label %773

773:                                              ; preds = %763
  %774 = zext i32 %764 to i64
  %775 = sext i32 %765 to i64
  br i1 %751, label %815, label %776

776:                                              ; preds = %773
  %777 = icmp ult ptr %768, %772
  %778 = icmp ult ptr %771, %769
  %779 = and i1 %777, %778
  br i1 %779, label %815, label %780

780:                                              ; preds = %776
  br i1 %752, label %800, label %781

781:                                              ; preds = %780
  %782 = getelementptr i8, ptr %307, i64 %774
  %783 = getelementptr i8, ptr %307, i64 %775
  br label %784

784:                                              ; preds = %784, %781
  %785 = phi i64 [ 0, %781 ], [ %794, %784 ]
  %786 = getelementptr i8, ptr %782, i64 %785
  %787 = getelementptr inbounds nuw i8, ptr %786, i64 16
  %788 = load <16 x i8>, ptr %786, align 1, !tbaa !35, !alias.scope !338, !noalias !341
  %789 = load <16 x i8>, ptr %787, align 1, !tbaa !35, !alias.scope !338, !noalias !341
  %790 = getelementptr i8, ptr %783, i64 %785
  %791 = getelementptr inbounds nuw i8, ptr %790, i64 16
  %792 = load <16 x i8>, ptr %790, align 1, !tbaa !35, !alias.scope !341
  %793 = load <16 x i8>, ptr %791, align 1, !tbaa !35, !alias.scope !341
  store <16 x i8> %792, ptr %786, align 1, !tbaa !35, !alias.scope !338, !noalias !341
  store <16 x i8> %793, ptr %787, align 1, !tbaa !35, !alias.scope !338, !noalias !341
  store <16 x i8> %788, ptr %790, align 1, !tbaa !35, !alias.scope !341
  store <16 x i8> %789, ptr %791, align 1, !tbaa !35, !alias.scope !341
  %794 = add nuw i64 %785, 32
  %795 = icmp eq i64 %794, %754
  br i1 %795, label %796, label %784, !llvm.loop !343

796:                                              ; preds = %784
  br i1 %755, label %831, label %797

797:                                              ; preds = %796
  %798 = add nuw nsw i64 %754, %774
  %799 = add nsw i64 %754, %775
  br i1 %758, label %815, label %800, !prof !167

800:                                              ; preds = %780, %797
  %801 = phi i64 [ %754, %797 ], [ 0, %780 ]
  %802 = add nuw nsw i64 %759, %774
  %803 = add nsw i64 %759, %775
  %804 = getelementptr i8, ptr %307, i64 %774
  %805 = getelementptr i8, ptr %307, i64 %775
  br label %806

806:                                              ; preds = %806, %800
  %807 = phi i64 [ %801, %800 ], [ %812, %806 ]
  %808 = getelementptr i8, ptr %804, i64 %807
  %809 = load <4 x i8>, ptr %808, align 1, !tbaa !35, !alias.scope !338, !noalias !341
  %810 = getelementptr i8, ptr %805, i64 %807
  %811 = load <4 x i8>, ptr %810, align 1, !tbaa !35, !alias.scope !341
  store <4 x i8> %811, ptr %808, align 1, !tbaa !35, !alias.scope !338, !noalias !341
  store <4 x i8> %809, ptr %810, align 1, !tbaa !35, !alias.scope !341
  %812 = add nuw i64 %807, 4
  %813 = icmp eq i64 %812, %759
  br i1 %813, label %814, label %806, !llvm.loop !344

814:                                              ; preds = %806
  br i1 %762, label %831, label %815

815:                                              ; preds = %776, %773, %797, %814
  %816 = phi i64 [ %774, %773 ], [ %774, %776 ], [ %798, %797 ], [ %802, %814 ]
  %817 = phi i64 [ %775, %773 ], [ %775, %776 ], [ %799, %797 ], [ %803, %814 ]
  %818 = phi i32 [ %735, %773 ], [ %735, %776 ], [ %757, %797 ], [ %761, %814 ]
  br label %819

819:                                              ; preds = %815, %819
  %820 = phi i64 [ %827, %819 ], [ %816, %815 ]
  %821 = phi i64 [ %828, %819 ], [ %817, %815 ]
  %822 = phi i32 [ %829, %819 ], [ %818, %815 ]
  %823 = getelementptr inbounds nuw i8, ptr %307, i64 %820
  %824 = load i8, ptr %823, align 1, !tbaa !35
  %825 = getelementptr inbounds i8, ptr %307, i64 %821
  %826 = load i8, ptr %825, align 1, !tbaa !35
  store i8 %826, ptr %823, align 1, !tbaa !35
  store i8 %824, ptr %825, align 1, !tbaa !35
  %827 = add nuw nsw i64 %820, 1
  %828 = add nsw i64 %821, 1
  %829 = add nsw i32 %822, -1
  %830 = icmp sgt i32 %822, 1
  br i1 %830, label %819, label %831, !llvm.loop !345

831:                                              ; preds = %819, %796, %814, %763
  %832 = add nuw nsw i32 %766, 1
  %833 = sub i32 %765, %735
  %834 = add i32 %764, %735
  %835 = icmp eq i32 %766, %740
  br i1 %835, label %836, label %763, !llvm.loop !346

836:                                              ; preds = %381, %831, %730
  %837 = icmp samesign ult i8 %293, 3
  %838 = icmp eq i32 %295, 0
  %839 = or i1 %837, %838
  %840 = or i1 %839, %291
  br i1 %840, label %883, label %841

841:                                              ; preds = %836
  %842 = zext nneg i8 %293 to i64
  %843 = add nsw i32 %295, -1
  %844 = and i32 %295, 3
  %845 = icmp ult i32 %843, 3
  br i1 %845, label %871, label %846

846:                                              ; preds = %841
  %847 = and i32 %295, 67108860
  br label %848

848:                                              ; preds = %848, %846
  %849 = phi ptr [ %307, %846 ], [ %866, %848 ]
  %850 = phi i32 [ 0, %846 ], [ %867, %848 ]
  %851 = load i8, ptr %849, align 1, !tbaa !35
  %852 = getelementptr inbounds nuw i8, ptr %849, i64 2
  %853 = load i8, ptr %852, align 1, !tbaa !35
  store i8 %853, ptr %849, align 1, !tbaa !35
  store i8 %851, ptr %852, align 1, !tbaa !35
  %854 = getelementptr inbounds nuw i8, ptr %849, i64 %842
  %855 = load i8, ptr %854, align 1, !tbaa !35
  %856 = getelementptr inbounds nuw i8, ptr %854, i64 2
  %857 = load i8, ptr %856, align 1, !tbaa !35
  store i8 %857, ptr %854, align 1, !tbaa !35
  store i8 %855, ptr %856, align 1, !tbaa !35
  %858 = getelementptr inbounds nuw i8, ptr %854, i64 %842
  %859 = load i8, ptr %858, align 1, !tbaa !35
  %860 = getelementptr inbounds nuw i8, ptr %858, i64 2
  %861 = load i8, ptr %860, align 1, !tbaa !35
  store i8 %861, ptr %858, align 1, !tbaa !35
  store i8 %859, ptr %860, align 1, !tbaa !35
  %862 = getelementptr inbounds nuw i8, ptr %858, i64 %842
  %863 = load i8, ptr %862, align 1, !tbaa !35
  %864 = getelementptr inbounds nuw i8, ptr %862, i64 2
  %865 = load i8, ptr %864, align 1, !tbaa !35
  store i8 %865, ptr %862, align 1, !tbaa !35
  store i8 %863, ptr %864, align 1, !tbaa !35
  %866 = getelementptr inbounds nuw i8, ptr %862, i64 %842
  %867 = add i32 %850, 4
  %868 = icmp eq i32 %867, %847
  br i1 %868, label %869, label %848, !llvm.loop !347

869:                                              ; preds = %848
  %870 = icmp eq i32 %844, 0
  br i1 %870, label %883, label %871

871:                                              ; preds = %869, %841
  %872 = phi ptr [ %307, %841 ], [ %866, %869 ]
  %873 = icmp ne i32 %844, 0
  tail call void @llvm.assume(i1 %873)
  br label %874

874:                                              ; preds = %874, %871
  %875 = phi ptr [ %872, %871 ], [ %880, %874 ]
  %876 = phi i32 [ 0, %871 ], [ %881, %874 ]
  %877 = load i8, ptr %875, align 1, !tbaa !35
  %878 = getelementptr inbounds nuw i8, ptr %875, i64 2
  %879 = load i8, ptr %878, align 1, !tbaa !35
  store i8 %879, ptr %875, align 1, !tbaa !35
  store i8 %877, ptr %878, align 1, !tbaa !35
  %880 = getelementptr inbounds nuw i8, ptr %875, i64 %842
  %881 = add i32 %876, 1
  %882 = icmp eq i32 %881, %844
  br i1 %882, label %883, label %874, !llvm.loop !348

883:                                              ; preds = %869, %874, %331, %836
  %884 = icmp eq i8 %293, 4
  br i1 %884, label %887, label %885

885:                                              ; preds = %883
  %886 = tail call fastcc ptr @stbi__convert_format(ptr noundef nonnull %307, i32 noundef %294, i32 noundef %182, i32 noundef %183) #17
  br label %887

887:                                              ; preds = %413, %290, %282, %278, %883, %885, %452, %385, %266
  %888 = phi ptr [ %307, %883 ], [ null, %266 ], [ null, %413 ], [ null, %452 ], [ null, %290 ], [ null, %385 ], [ null, %282 ], [ %886, %885 ], [ null, %278 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  ret ptr %888
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
  %17 = mul nuw nsw i32 %9, %3
  %18 = zext nneg i32 %17 to i64
  %19 = add nuw nsw i64 %18, 15
  %20 = and i64 %19, 4294967280
  %21 = add nuw nsw i64 %20, 16
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
  %30 = shl nsw i32 %1, 3
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
  br i1 %60, label %49, label %91, !llvm.loop !349

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
  br i1 %74, label %61, label %91, !llvm.loop !350

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
  br i1 %90, label %75, label %91, !llvm.loop !351

91:                                               ; preds = %75, %61, %49, %46, %47, %48
  %92 = add nuw nsw i64 %37, 1
  %93 = icmp eq i64 %92, %35
  br i1 %93, label %94, label %36, !llvm.loop !352

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
  %6 = load i16, ptr %5, align 4, !tbaa !257
  %7 = icmp sgt i16 %6, -1
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  tail call fastcc void @stbi__out_gif_code(ptr noundef %0, i16 noundef zeroext %6) #17
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 34912
  %11 = load i32, ptr %10, align 8, !tbaa !353
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 34904
  %13 = load i32, ptr %12, align 8, !tbaa !251
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %79

15:                                               ; preds = %9
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 34908
  %17 = load i32, ptr %16, align 4, !tbaa !252
  %18 = add nsw i32 %17, %11
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %20 = load ptr, ptr %19, align 8, !tbaa !242
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %22 = load ptr, ptr %21, align 8, !tbaa !244
  %23 = sdiv i32 %18, 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, ptr %22, i64 %24
  store i8 1, ptr %25, align 1, !tbaa !35
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 34872
  %27 = load ptr, ptr %26, align 8, !tbaa !256
  %28 = getelementptr inbounds nuw i8, ptr %5, i64 3
  %29 = load i8, ptr %28, align 1, !tbaa !260
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
  %49 = load i32, ptr %16, align 4, !tbaa !252
  %50 = add nsw i32 %49, 4
  store i32 %50, ptr %16, align 4, !tbaa !252
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 34900
  %52 = load i32, ptr %51, align 4, !tbaa !250
  %53 = icmp slt i32 %50, %52
  br i1 %53, label %79, label %54

54:                                               ; preds = %48
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 34892
  %56 = load i32, ptr %55, align 4, !tbaa !248
  store i32 %56, ptr %16, align 4, !tbaa !252
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 34884
  %58 = load i32, ptr %57, align 4, !tbaa !254
  %59 = load i32, ptr %10, align 8, !tbaa !353
  %60 = add nsw i32 %59, %58
  store i32 %60, ptr %10, align 8, !tbaa !353
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 34880
  %62 = load i32, ptr %12, align 8, !tbaa !251
  %63 = icmp slt i32 %60, %62
  br i1 %63, label %79, label %64

64:                                               ; preds = %54
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 34916
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 34896
  %67 = load i32, ptr %61, align 8, !tbaa !255
  br label %68

68:                                               ; preds = %64, %71
  %69 = phi i32 [ %67, %64 ], [ %77, %71 ]
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %68
  %72 = load i32, ptr %65, align 4, !tbaa !247
  %73 = shl i32 %72, %69
  store i32 %73, ptr %57, align 4, !tbaa !254
  %74 = load i32, ptr %66, align 8, !tbaa !249
  %75 = ashr i32 %73, 1
  %76 = add nsw i32 %74, %75
  store i32 %76, ptr %10, align 8, !tbaa !353
  %77 = add nsw i32 %69, -1
  store i32 %77, ptr %61, align 8, !tbaa !255
  %78 = icmp slt i32 %76, %62
  br i1 %78, label %79, label %68, !llvm.loop !354

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
  %117 = add nsw i32 %101, %109
  %118 = ashr i32 %117, 10
  %119 = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i32 %118, ptr %119, align 4, !tbaa !4
  %120 = sub nsw i32 %109, %101
  %121 = ashr i32 %120, 10
  %122 = getelementptr inbounds nuw i8, ptr %9, i64 192
  store i32 %121, ptr %122, align 4, !tbaa !4
  %123 = add nsw i32 %103, %110
  %124 = ashr i32 %123, 10
  %125 = getelementptr inbounds nuw i8, ptr %9, i64 64
  store i32 %124, ptr %125, align 4, !tbaa !4
  %126 = sub nsw i32 %110, %103
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
  br i1 %139, label %5, label %7, !llvm.loop !355

140:                                              ; preds = %5, %140
  %141 = phi i32 [ 0, %5 ], [ %230, %140 ]
  %142 = phi ptr [ %4, %5 ], [ %231, %140 ]
  %143 = phi ptr [ %0, %5 ], [ %232, %140 ]
  %144 = getelementptr inbounds nuw i8, ptr %142, i64 8
  %145 = load i32, ptr %144, align 4, !tbaa !4
  %146 = getelementptr inbounds nuw i8, ptr %142, i64 24
  %147 = load i32, ptr %146, align 4, !tbaa !4
  %148 = add nsw i32 %147, %145
  %149 = mul nsw i32 %148, 2217
  %150 = mul nsw i32 %147, -7567
  %151 = mul nsw i32 %145, 3135
  %152 = load i32, ptr %142, align 4, !tbaa !4
  %153 = getelementptr inbounds nuw i8, ptr %142, i64 16
  %154 = load i32, ptr %153, align 4, !tbaa !4
  %155 = add nsw i32 %154, %152
  %156 = sub nsw i32 %152, %154
  %157 = getelementptr inbounds nuw i8, ptr %142, i64 28
  %158 = load i32, ptr %157, align 4, !tbaa !4
  %159 = getelementptr inbounds nuw i8, ptr %142, i64 20
  %160 = load i32, ptr %159, align 4, !tbaa !4
  %161 = getelementptr inbounds nuw i8, ptr %142, i64 12
  %162 = load i32, ptr %161, align 4, !tbaa !4
  %163 = getelementptr inbounds nuw i8, ptr %142, i64 4
  %164 = load i32, ptr %163, align 4, !tbaa !4
  %165 = getelementptr inbounds nuw i8, ptr %143, i64 4
  %166 = add nsw i32 %149, %151
  %167 = add nsw i32 %149, %150
  %168 = shl nsw i32 %156, 12
  %169 = shl nsw i32 %155, 12
  %170 = add nsw i32 %164, %160
  %171 = add nsw i32 %162, %158
  %172 = add nsw i32 %162, %160
  %173 = add nsw i32 %164, %158
  %174 = add nsw i32 %170, %171
  %175 = mul nsw i32 %174, 4816
  %176 = mul nsw i32 %164, 6149
  %177 = mul nsw i32 %162, 12586
  %178 = mul nsw i32 %160, 8410
  %179 = mul nsw i32 %158, 1223
  %180 = mul nsw i32 %172, -10497
  %181 = mul nsw i32 %173, -3685
  %182 = add nsw i32 %175, %180
  %183 = add nsw i32 %175, %181
  %184 = mul nsw i32 %170, -1597
  %185 = mul nsw i32 %171, -8034
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
  %196 = sub nsw i32 %168, %167
  %197 = sub nsw i32 %169, %166
  %198 = add i32 %194, %169
  %199 = add i32 %195, %168
  %200 = add nsw i32 %196, 16842752
  %201 = add nsw i32 %197, 16842752
  %202 = add nsw i32 %193, %201
  %203 = add nsw i32 %192, %200
  %204 = add nsw i32 %191, %199
  %205 = add nsw i32 %190, %198
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
  %216 = sub nsw i32 %198, %190
  %217 = sub nsw i32 %199, %191
  %218 = sub nsw i32 %200, %192
  %219 = sub nsw i32 %201, %193
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
  br i1 %233, label %234, label %140, !llvm.loop !356

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
  br i1 %53, label %54, label %11, !llvm.loop !357

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
  br label %122

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
  br i1 %26, label %27, label %116

27:                                               ; preds = %18
  %28 = zext nneg i32 %3 to i64
  %29 = add nsw i64 %28, -1
  %30 = icmp ult i32 %3, 9
  br i1 %30, label %82, label %31

31:                                               ; preds = %27
  %32 = getelementptr i8, ptr %0, i64 1
  %33 = shl nuw nsw i64 %28, 1
  %34 = getelementptr i8, ptr %0, i64 %33
  %35 = getelementptr i8, ptr %34, i64 -1
  %36 = getelementptr i8, ptr %1, i64 1
  %37 = getelementptr i8, ptr %1, i64 %28
  %38 = getelementptr i8, ptr %2, i64 1
  %39 = getelementptr i8, ptr %2, i64 %28
  %40 = icmp ult ptr %32, %37
  %41 = icmp ult ptr %36, %35
  %42 = and i1 %40, %41
  %43 = icmp ult ptr %32, %39
  %44 = icmp ult ptr %38, %35
  %45 = and i1 %43, %44
  %46 = or i1 %42, %45
  br i1 %46, label %82, label %47

47:                                               ; preds = %31
  %48 = and i64 %29, -8
  %49 = or disjoint i64 %48, 1
  %50 = insertelement <8 x i32> poison, i32 %22, i64 7
  br label %51

51:                                               ; preds = %51, %47
  %52 = phi i64 [ 0, %47 ], [ %77, %51 ]
  %53 = phi <8 x i32> [ %50, %47 ], [ %62, %51 ]
  %54 = or disjoint i64 %52, 1
  %55 = getelementptr inbounds nuw i8, ptr %1, i64 %54
  %56 = load <8 x i8>, ptr %55, align 1, !tbaa !35, !alias.scope !358
  %57 = zext <8 x i8> %56 to <8 x i32>
  %58 = mul nuw nsw <8 x i32> %57, splat (i32 3)
  %59 = getelementptr inbounds nuw i8, ptr %2, i64 %54
  %60 = load <8 x i8>, ptr %59, align 1, !tbaa !35, !alias.scope !361
  %61 = zext <8 x i8> %60 to <8 x i32>
  %62 = add nuw nsw <8 x i32> %58, %61
  %63 = shufflevector <8 x i32> %53, <8 x i32> %62, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %64 = mul nuw nsw <8 x i32> %63, splat (i32 3)
  %65 = add nuw nsw <8 x i32> %64, splat (i32 8)
  %66 = add nuw nsw <8 x i32> %65, %62
  %67 = lshr <8 x i32> %66, splat (i32 4)
  %68 = shl nuw nsw i64 %54, 1
  %69 = getelementptr i8, ptr %0, i64 %68
  %70 = getelementptr i8, ptr %69, i64 -1
  %71 = mul nuw nsw <8 x i32> %62, splat (i32 3)
  %72 = add nuw nsw <8 x i32> %63, splat (i32 8)
  %73 = add nuw nsw <8 x i32> %72, %71
  %74 = lshr <8 x i32> %73, splat (i32 4)
  %75 = shufflevector <8 x i32> %67, <8 x i32> %74, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %76 = trunc nuw <16 x i32> %75 to <16 x i8>
  store <16 x i8> %76, ptr %70, align 1, !tbaa !35, !alias.scope !363, !noalias !365
  %77 = add nuw i64 %52, 8
  %78 = icmp eq i64 %77, %48
  br i1 %78, label %79, label %51, !llvm.loop !366

79:                                               ; preds = %51
  %80 = extractelement <8 x i32> %62, i64 7
  %81 = icmp eq i64 %29, %48
  br i1 %81, label %111, label %82

82:                                               ; preds = %31, %27, %79
  %83 = phi i64 [ 1, %31 ], [ 1, %27 ], [ %49, %79 ]
  %84 = phi i32 [ %22, %31 ], [ %22, %27 ], [ %80, %79 ]
  br label %85

85:                                               ; preds = %82, %85
  %86 = phi i64 [ %109, %85 ], [ %83, %82 ]
  %87 = phi i32 [ %95, %85 ], [ %84, %82 ]
  %88 = getelementptr inbounds nuw i8, ptr %1, i64 %86
  %89 = load i8, ptr %88, align 1, !tbaa !35
  %90 = zext i8 %89 to i32
  %91 = mul nuw nsw i32 %90, 3
  %92 = getelementptr inbounds nuw i8, ptr %2, i64 %86
  %93 = load i8, ptr %92, align 1, !tbaa !35
  %94 = zext i8 %93 to i32
  %95 = add nuw nsw i32 %91, %94
  %96 = mul nuw nsw i32 %87, 3
  %97 = add nuw nsw i32 %96, 8
  %98 = add nuw nsw i32 %97, %95
  %99 = lshr i32 %98, 4
  %100 = trunc nuw i32 %99 to i8
  %101 = shl nuw nsw i64 %86, 1
  %102 = getelementptr i8, ptr %0, i64 %101
  %103 = getelementptr i8, ptr %102, i64 -1
  store i8 %100, ptr %103, align 1, !tbaa !35
  %104 = mul nuw nsw i32 %95, 3
  %105 = add nuw nsw i32 %87, 8
  %106 = add nuw nsw i32 %105, %104
  %107 = lshr i32 %106, 4
  %108 = trunc nuw i32 %107 to i8
  store i8 %108, ptr %102, align 1, !tbaa !35
  %109 = add nuw nsw i64 %86, 1
  %110 = icmp eq i64 %109, %28
  br i1 %110, label %111, label %85, !llvm.loop !367

111:                                              ; preds = %85, %79
  %112 = phi i32 [ %80, %79 ], [ %95, %85 ]
  %113 = add nuw nsw i32 %112, 2
  %114 = lshr i32 %113, 2
  %115 = trunc nuw i32 %114 to i8
  br label %116

116:                                              ; preds = %111, %18
  %117 = phi i8 [ %115, %111 ], [ %25, %18 ]
  %118 = shl nsw i32 %3, 1
  %119 = sext i32 %118 to i64
  %120 = getelementptr i8, ptr %0, i64 %119
  %121 = getelementptr i8, ptr %120, i64 -1
  store i8 %117, ptr %121, align 1, !tbaa !35
  br label %122

122:                                              ; preds = %116, %9
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
  br i1 %39, label %40, label %24, !llvm.loop !368

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
  br i1 %62, label %63, label %47, !llvm.loop !369

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
  br i1 %115, label %116, label %87, !llvm.loop !370

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
  br label %114

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
  %22 = icmp sgt i32 %3, 2
  br i1 %22, label %23, label %95

23:                                               ; preds = %10
  %24 = zext nneg i32 %21 to i64
  %25 = add nsw i64 %24, -1
  %26 = icmp ult i64 %25, 8
  br i1 %26, label %66, label %27

27:                                               ; preds = %23
  %28 = getelementptr i8, ptr %0, i64 2
  %29 = shl nuw nsw i64 %24, 1
  %30 = getelementptr i8, ptr %0, i64 %29
  %31 = zext nneg i32 %3 to i64
  %32 = getelementptr i8, ptr %1, i64 %31
  %33 = icmp ult ptr %28, %32
  %34 = icmp ult ptr %1, %30
  %35 = and i1 %33, %34
  br i1 %35, label %66, label %36

36:                                               ; preds = %27
  %37 = and i64 %25, -8
  %38 = or disjoint i64 %37, 1
  br label %39

39:                                               ; preds = %39, %36
  %40 = phi i64 [ 0, %36 ], [ %62, %39 ]
  %41 = or disjoint i64 %40, 1
  %42 = getelementptr inbounds nuw i8, ptr %1, i64 %41
  %43 = load <8 x i8>, ptr %42, align 1, !tbaa !35, !alias.scope !371
  %44 = zext <8 x i8> %43 to <8 x i32>
  %45 = mul nuw nsw <8 x i32> %44, splat (i32 3)
  %46 = add nuw nsw <8 x i32> %45, splat (i32 2)
  %47 = getelementptr i8, ptr %42, i64 -1
  %48 = load <8 x i8>, ptr %47, align 1, !tbaa !35, !alias.scope !371
  %49 = zext <8 x i8> %48 to <8 x i32>
  %50 = add nuw nsw <8 x i32> %46, %49
  %51 = lshr <8 x i32> %50, splat (i32 2)
  %52 = shl nuw nsw i64 %41, 1
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 %52
  %54 = getelementptr inbounds nuw i8, ptr %1, i64 %40
  %55 = getelementptr inbounds nuw i8, ptr %54, i64 2
  %56 = load <8 x i8>, ptr %55, align 1, !tbaa !35, !alias.scope !371
  %57 = zext <8 x i8> %56 to <8 x i32>
  %58 = add nuw nsw <8 x i32> %46, %57
  %59 = lshr <8 x i32> %58, splat (i32 2)
  %60 = shufflevector <8 x i32> %51, <8 x i32> %59, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %61 = trunc nuw <16 x i32> %60 to <16 x i8>
  store <16 x i8> %61, ptr %53, align 1, !tbaa !35, !alias.scope !374, !noalias !371
  %62 = add nuw i64 %40, 8
  %63 = icmp eq i64 %62, %37
  br i1 %63, label %64, label %39, !llvm.loop !376

64:                                               ; preds = %39
  %65 = icmp eq i64 %25, %37
  br i1 %65, label %92, label %66

66:                                               ; preds = %27, %23, %64
  %67 = phi i64 [ 1, %27 ], [ 1, %23 ], [ %38, %64 ]
  br label %68

68:                                               ; preds = %66, %68
  %69 = phi i64 [ %83, %68 ], [ %67, %66 ]
  %70 = getelementptr inbounds nuw i8, ptr %1, i64 %69
  %71 = load i8, ptr %70, align 1, !tbaa !35
  %72 = zext i8 %71 to i32
  %73 = mul nuw nsw i32 %72, 3
  %74 = add nuw nsw i32 %73, 2
  %75 = getelementptr i8, ptr %70, i64 -1
  %76 = load i8, ptr %75, align 1, !tbaa !35
  %77 = zext i8 %76 to i32
  %78 = add nuw nsw i32 %74, %77
  %79 = lshr i32 %78, 2
  %80 = trunc nuw i32 %79 to i8
  %81 = shl nuw nsw i64 %69, 1
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 %81
  store i8 %80, ptr %82, align 1, !tbaa !35
  %83 = add nuw nsw i64 %69, 1
  %84 = getelementptr inbounds nuw i8, ptr %1, i64 %83
  %85 = load i8, ptr %84, align 1, !tbaa !35
  %86 = zext i8 %85 to i32
  %87 = add nuw nsw i32 %74, %86
  %88 = lshr i32 %87, 2
  %89 = trunc nuw i32 %88 to i8
  %90 = getelementptr inbounds nuw i8, ptr %82, i64 1
  store i8 %89, ptr %90, align 1, !tbaa !35
  %91 = icmp eq i64 %83, %24
  br i1 %91, label %92, label %68, !llvm.loop !377

92:                                               ; preds = %68, %64
  %93 = shl nuw nsw i32 %21, 1
  %94 = zext nneg i32 %93 to i64
  br label %95

95:                                               ; preds = %92, %10
  %96 = phi i64 [ 2, %10 ], [ %94, %92 ]
  %97 = sext i32 %3 to i64
  %98 = getelementptr i8, ptr %1, i64 %97
  %99 = getelementptr i8, ptr %98, i64 -2
  %100 = load i8, ptr %99, align 1, !tbaa !35
  %101 = zext i8 %100 to i16
  %102 = mul nuw nsw i16 %101, 3
  %103 = sext i32 %21 to i64
  %104 = getelementptr inbounds i8, ptr %1, i64 %103
  %105 = load i8, ptr %104, align 1, !tbaa !35
  %106 = zext i8 %105 to i16
  %107 = add nuw nsw i16 %106, 2
  %108 = add nuw nsw i16 %107, %102
  %109 = lshr i16 %108, 2
  %110 = trunc nuw i16 %109 to i8
  %111 = getelementptr inbounds nuw i8, ptr %0, i64 %96
  store i8 %110, ptr %111, align 1, !tbaa !35
  %112 = load i8, ptr %104, align 1, !tbaa !35
  %113 = getelementptr inbounds nuw i8, ptr %111, i64 1
  store i8 %112, ptr %113, align 1, !tbaa !35
  br label %114

114:                                              ; preds = %95, %8
  ret ptr %0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite)
define internal noundef ptr @stbi__resample_row_generic(ptr noundef returned writeonly captures(ret: address, provenance) %0, ptr noundef readonly captures(none) %1, ptr readnone captures(none) %2, i32 noundef %3, i32 noundef %4) #5 {
  %6 = icmp sgt i32 %3, 0
  br i1 %6, label %7, label %58

7:                                                ; preds = %5
  %8 = icmp sgt i32 %4, 0
  %9 = zext i32 %4 to i64
  %10 = zext nneg i32 %3 to i64
  %11 = icmp ult i32 %4, 4
  %12 = icmp ult i32 %4, 32
  %13 = and i64 %9, 28
  %14 = and i64 %9, 2147483616
  %15 = icmp eq i64 %14, %9
  %16 = icmp eq i64 %13, 0
  %17 = and i64 %9, 2147483644
  %18 = icmp eq i64 %17, %9
  br label %19

19:                                               ; preds = %7, %55
  %20 = phi i64 [ 0, %7 ], [ %56, %55 ]
  br i1 %8, label %21, label %55

21:                                               ; preds = %19
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 %20
  %23 = mul nuw nsw i64 %20, %9
  %24 = load i8, ptr %22, align 1, !tbaa !35
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 %23
  br i1 %11, label %48, label %26

26:                                               ; preds = %21
  br i1 %12, label %38, label %27

27:                                               ; preds = %26
  %28 = insertelement <16 x i8> poison, i8 %24, i64 0
  %29 = shufflevector <16 x i8> %28, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %30

30:                                               ; preds = %30, %27
  %31 = phi i64 [ 0, %27 ], [ %34, %30 ]
  %32 = getelementptr inbounds nuw i8, ptr %25, i64 %31
  %33 = getelementptr inbounds nuw i8, ptr %32, i64 16
  store <16 x i8> %29, ptr %32, align 1, !tbaa !35
  store <16 x i8> %29, ptr %33, align 1, !tbaa !35
  %34 = add nuw i64 %31, 32
  %35 = icmp eq i64 %34, %14
  br i1 %35, label %36, label %30, !llvm.loop !378

36:                                               ; preds = %30
  br i1 %15, label %55, label %37

37:                                               ; preds = %36
  br i1 %16, label %48, label %38, !prof !167

38:                                               ; preds = %26, %37
  %39 = phi i64 [ %14, %37 ], [ 0, %26 ]
  %40 = insertelement <4 x i8> poison, i8 %24, i64 0
  %41 = shufflevector <4 x i8> %40, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %42

42:                                               ; preds = %42, %38
  %43 = phi i64 [ %39, %38 ], [ %45, %42 ]
  %44 = getelementptr inbounds nuw i8, ptr %25, i64 %43
  store <4 x i8> %41, ptr %44, align 1, !tbaa !35
  %45 = add nuw i64 %43, 4
  %46 = icmp eq i64 %45, %17
  br i1 %46, label %47, label %42, !llvm.loop !379

47:                                               ; preds = %42
  br i1 %18, label %55, label %48

48:                                               ; preds = %21, %37, %47
  %49 = phi i64 [ 0, %21 ], [ %14, %37 ], [ %17, %47 ]
  br label %50

50:                                               ; preds = %48, %50
  %51 = phi i64 [ %53, %50 ], [ %49, %48 ]
  %52 = getelementptr inbounds nuw i8, ptr %25, i64 %51
  store i8 %24, ptr %52, align 1, !tbaa !35
  %53 = add nuw nsw i64 %51, 1
  %54 = icmp eq i64 %53, %9
  br i1 %54, label %55, label %50, !llvm.loop !380

55:                                               ; preds = %50, %36, %47, %19
  %56 = add nuw nsw i64 %20, 1
  %57 = icmp eq i64 %56, %10
  br i1 %57, label %58, label %19, !llvm.loop !381

58:                                               ; preds = %55, %5
  ret ptr %0
}

; Function Attrs: nounwind
define internal fastcc range(i32 0, 2) i32 @stbi__jpeg_decode_block(ptr noundef nonnull captures(none) %0, ptr noundef nonnull %1, ptr noundef nonnull readonly captures(none) %2, ptr noundef nonnull readonly captures(none) %3, ptr noundef nonnull readonly captures(none) %4, i32 noundef %5, ptr noundef nonnull readonly captures(none) %6) unnamed_addr #0 {
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 18468
  %9 = load i32, ptr %8, align 4, !tbaa !279
  %10 = icmp slt i32 %9, 16
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  tail call fastcc void @stbi__grow_buffer_unsafe(ptr noundef %0) #17
  %12 = load i32, ptr %8, align 4, !tbaa !279
  %13 = icmp slt i32 %12, 16
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  tail call fastcc void @stbi__grow_buffer_unsafe(ptr noundef nonnull %0) #17
  br label %15

15:                                               ; preds = %7, %14, %11
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 18464
  %17 = load i32, ptr %16, align 8, !tbaa !280
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
  %29 = load i32, ptr %8, align 4, !tbaa !279
  %30 = icmp slt i32 %29, %28
  br i1 %30, label %278, label %31

31:                                               ; preds = %23
  %32 = shl i32 %17, %28
  store i32 %32, ptr %16, align 8, !tbaa !280
  %33 = sub nsw i32 %29, %28
  store i32 %33, ptr %8, align 4, !tbaa !279
  %34 = getelementptr inbounds nuw i8, ptr %2, i64 1024
  %35 = getelementptr inbounds nuw i8, ptr %34, i64 %25
  br label %68

36:                                               ; preds = %15
  %37 = lshr i32 %17, 16
  %38 = getelementptr inbounds nuw i8, ptr %2, i64 1540
  br label %39

39:                                               ; preds = %39, %36
  %40 = phi i64 [ %44, %39 ], [ 10, %36 ]
  %41 = getelementptr inbounds nuw i32, ptr %38, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !4
  %43 = icmp ult i32 %37, %42
  %44 = add nuw nsw i64 %40, 1
  br i1 %43, label %45, label %39

45:                                               ; preds = %39
  %46 = trunc nuw nsw i64 %40 to i32
  %47 = icmp eq i64 %40, 17
  %48 = load i32, ptr %8, align 4, !tbaa !279
  br i1 %47, label %275, label %49

49:                                               ; preds = %45
  %50 = icmp slt i32 %48, %46
  br i1 %50, label %278, label %51

51:                                               ; preds = %49
  %52 = sub nsw i32 32, %46
  %53 = lshr i32 %17, %52
  %54 = getelementptr inbounds nuw i32, ptr @stbi__bmask, i64 %40
  %55 = load i32, ptr %54, align 4, !tbaa !4
  %56 = and i32 %55, %53
  %57 = getelementptr inbounds nuw i8, ptr %2, i64 1612
  %58 = getelementptr inbounds nuw i32, ptr %57, i64 %40
  %59 = load i32, ptr %58, align 4, !tbaa !4
  %60 = add i32 %56, %59
  %61 = icmp ugt i32 %60, 255
  br i1 %61, label %278, label %62

62:                                               ; preds = %51
  %63 = sub nsw i32 %48, %46
  store i32 %63, ptr %8, align 4, !tbaa !279
  %64 = shl i32 %17, %46
  store i32 %64, ptr %16, align 8, !tbaa !280
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
  %77 = load i32, ptr %8, align 4, !tbaa !279
  %78 = icmp slt i32 %77, %71
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  tail call fastcc void @stbi__grow_buffer_unsafe(ptr noundef nonnull %0) #17
  %80 = load i32, ptr %8, align 4, !tbaa !279
  br label %81

81:                                               ; preds = %79, %76
  %82 = phi i32 [ %80, %79 ], [ %77, %76 ]
  %83 = icmp slt i32 %82, %71
  br i1 %83, label %99, label %84

84:                                               ; preds = %81
  %85 = load i32, ptr %16, align 8, !tbaa !280
  %86 = tail call i32 @llvm.fshl.i32(i32 %85, i32 %85, i32 range(i32 1, 16) %71)
  %87 = zext nneg i8 %70 to i64
  %88 = getelementptr inbounds nuw i32, ptr @stbi__bmask, i64 %87
  %89 = load i32, ptr %88, align 4, !tbaa !4
  %90 = xor i32 %89, -1
  %91 = and i32 %86, %90
  store i32 %91, ptr %16, align 8, !tbaa !280
  %92 = and i32 %86, %89
  %93 = sub nsw i32 %82, %71
  store i32 %93, ptr %8, align 4, !tbaa !279
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
  %104 = load i32, ptr %103, align 8, !tbaa !282
  %105 = xor i32 %104, %100
  %106 = icmp sgt i32 %105, -1
  br i1 %106, label %107, label %115

107:                                              ; preds = %99
  %108 = and i32 %104, %100
  %109 = sub nsw i32 2147483647, %100
  %110 = icmp sgt i32 %104, %109
  %111 = sub nsw i32 -2147483648, %100
  %112 = icmp slt i32 %104, %111
  %113 = icmp slt i32 %108, 0
  %114 = select i1 %113, i1 %112, i1 %110
  br i1 %114, label %278, label %115

115:                                              ; preds = %99, %107
  %116 = add nsw i32 %104, %100
  store i32 %116, ptr %103, align 8, !tbaa !282
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
  %137 = load i32, ptr %8, align 4, !tbaa !279
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
  %144 = load i32, ptr %16, align 8, !tbaa !280
  %145 = lshr i32 %144, 23
  %146 = zext nneg i32 %145 to i64
  %147 = getelementptr inbounds nuw i16, ptr %4, i64 %146
  %148 = load i16, ptr %147, align 2, !tbaa !39
  %149 = icmp eq i16 %148, 0
  br i1 %149, label %171, label %150

150:                                              ; preds = %143
  %151 = zext i16 %148 to i32
  %152 = and i32 %151, 15
  %153 = load i32, ptr %8, align 4, !tbaa !279
  %154 = icmp sgt i32 %152, %153
  br i1 %154, label %278, label %155

155:                                              ; preds = %150
  %156 = lshr i32 %151, 4
  %157 = and i32 %156, 15
  %158 = add nsw i32 %157, %140
  %159 = shl i32 %144, %152
  store i32 %159, ptr %16, align 8, !tbaa !280
  %160 = sub nsw i32 %153, %152
  store i32 %160, ptr %8, align 4, !tbaa !279
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
  %172 = load i32, ptr %8, align 4, !tbaa !279
  %173 = icmp slt i32 %172, 16
  br i1 %173, label %174, label %178

174:                                              ; preds = %171
  tail call fastcc void @stbi__grow_buffer_unsafe(ptr noundef nonnull %0) #17
  %175 = load i32, ptr %16, align 8, !tbaa !280
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
  %189 = load i32, ptr %8, align 4, !tbaa !279
  %190 = icmp slt i32 %189, %188
  br i1 %190, label %278, label %191

191:                                              ; preds = %184
  %192 = shl i32 %180, %188
  store i32 %192, ptr %16, align 8, !tbaa !280
  %193 = sub nsw i32 %189, %188
  store i32 %193, ptr %8, align 4, !tbaa !279
  br label %222

194:                                              ; preds = %178
  %195 = lshr i32 %180, 16
  br label %196

196:                                              ; preds = %196, %194
  %197 = phi i64 [ %201, %196 ], [ 10, %194 ]
  %198 = getelementptr inbounds nuw i32, ptr %135, i64 %197
  %199 = load i32, ptr %198, align 4, !tbaa !4
  %200 = icmp ult i32 %195, %199
  %201 = add nuw nsw i64 %197, 1
  br i1 %200, label %202, label %196

202:                                              ; preds = %196
  %203 = trunc nuw nsw i64 %197 to i32
  %204 = icmp eq i64 %197, 17
  %205 = load i32, ptr %8, align 4, !tbaa !279
  br i1 %204, label %275, label %206

206:                                              ; preds = %202
  %207 = icmp slt i32 %205, %203
  br i1 %207, label %278, label %208

208:                                              ; preds = %206
  %209 = sub nsw i32 32, %203
  %210 = lshr i32 %180, %209
  %211 = getelementptr inbounds nuw i32, ptr @stbi__bmask, i64 %197
  %212 = load i32, ptr %211, align 4, !tbaa !4
  %213 = and i32 %212, %210
  %214 = getelementptr inbounds nuw i32, ptr %136, i64 %197
  %215 = load i32, ptr %214, align 4, !tbaa !4
  %216 = add i32 %213, %215
  %217 = icmp ugt i32 %216, 255
  br i1 %217, label %278, label %218

218:                                              ; preds = %208
  %219 = sub nsw i32 %205, %203
  store i32 %219, ptr %8, align 4, !tbaa !279
  %220 = shl i32 %180, %203
  store i32 %220, ptr %16, align 8, !tbaa !280
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
  %243 = load i32, ptr %8, align 4, !tbaa !279
  br label %244

244:                                              ; preds = %242, %234
  %245 = phi i32 [ %243, %242 ], [ %223, %234 ]
  %246 = icmp slt i32 %245, %228
  br i1 %246, label %263, label %247

247:                                              ; preds = %244
  %248 = load i32, ptr %16, align 8, !tbaa !280
  %249 = tail call i32 @llvm.fshl.i32(i32 %248, i32 %248, i32 range(i32 1, 16) %228)
  %250 = zext nneg i32 %228 to i64
  %251 = getelementptr inbounds nuw i32, ptr @stbi__bmask, i64 %250
  %252 = load i32, ptr %251, align 4, !tbaa !4
  %253 = xor i32 %252, -1
  %254 = and i32 %249, %253
  store i32 %254, ptr %16, align 8, !tbaa !280
  %255 = and i32 %249, %252
  %256 = sub nsw i32 %245, %228
  store i32 %256, ptr %8, align 4, !tbaa !279
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
  br i1 %274, label %138, label %278, !llvm.loop !382

275:                                              ; preds = %202, %45
  %276 = phi i32 [ %48, %45 ], [ %205, %202 ]
  %277 = add nsw i32 %276, -16
  store i32 %277, ptr %8, align 4, !tbaa !279
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
  %6 = load i32, ptr %2, align 4, !tbaa !281
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
  %40 = add nsw i32 %39, %37
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
  %87 = add nsw i32 %86, %84
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
  br label %101, !llvm.loop !383

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
  %137 = add nsw i32 %136, %134
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
  store i32 1, ptr %2, align 4, !tbaa !281
  br label %161

151:                                              ; preds = %101, %18, %5, %52
  %152 = phi i8 [ 0, %5 ], [ 0, %18 ], [ %53, %52 ], [ -1, %101 ]
  %153 = zext i8 %152 to i32
  %154 = load i32, ptr %3, align 4, !tbaa !279
  %155 = sub nsw i32 24, %154
  %156 = shl i32 %153, %155
  %157 = load i32, ptr %4, align 8, !tbaa !280
  %158 = or i32 %156, %157
  store i32 %158, ptr %4, align 8, !tbaa !280
  %159 = add nsw i32 %154, 8
  store i32 %159, ptr %3, align 4, !tbaa !279
  %160 = icmp slt i32 %154, 17
  br i1 %160, label %5, label %161, !llvm.loop !384

161:                                              ; preds = %151, %149
  ret void
}

; Function Attrs: nounwind
define internal fastcc range(i32 0, 2) i32 @stbi__jpeg_decode_block_prog_dc(ptr noundef nonnull captures(none) %0, ptr noundef %1, ptr noundef nonnull readonly captures(none) %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 18488
  %6 = load i32, ptr %5, align 8, !tbaa !276
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %164

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 18468
  %10 = load i32, ptr %9, align 4, !tbaa !279
  %11 = icmp slt i32 %10, 16
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  tail call fastcc void @stbi__grow_buffer_unsafe(ptr noundef %0) #17
  br label %13

13:                                               ; preds = %12, %8
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 18492
  %15 = load i32, ptr %14, align 4, !tbaa !277
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %144

17:                                               ; preds = %13
  %18 = tail call ptr @memset(ptr noundef %1, i32 noundef 0, i64 noundef 128) #16
  %19 = load i32, ptr %9, align 4, !tbaa !279
  %20 = icmp slt i32 %19, 16
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  tail call fastcc void @stbi__grow_buffer_unsafe(ptr noundef nonnull %0) #17
  br label %22

22:                                               ; preds = %21, %17
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 18464
  %24 = load i32, ptr %23, align 8, !tbaa !280
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
  %36 = load i32, ptr %9, align 4, !tbaa !279
  %37 = icmp slt i32 %36, %35
  br i1 %37, label %164, label %38

38:                                               ; preds = %30
  %39 = shl i32 %24, %35
  store i32 %39, ptr %23, align 8, !tbaa !280
  %40 = sub nsw i32 %36, %35
  store i32 %40, ptr %9, align 4, !tbaa !279
  %41 = getelementptr inbounds nuw i8, ptr %2, i64 1024
  %42 = getelementptr inbounds nuw i8, ptr %41, i64 %32
  br label %77

43:                                               ; preds = %22
  %44 = lshr i32 %24, 16
  %45 = getelementptr inbounds nuw i8, ptr %2, i64 1540
  br label %46

46:                                               ; preds = %46, %43
  %47 = phi i64 [ %51, %46 ], [ 10, %43 ]
  %48 = getelementptr inbounds nuw i32, ptr %45, i64 %47
  %49 = load i32, ptr %48, align 4, !tbaa !4
  %50 = icmp ult i32 %44, %49
  %51 = add nuw nsw i64 %47, 1
  br i1 %50, label %52, label %46

52:                                               ; preds = %46
  %53 = trunc nuw nsw i64 %47 to i32
  %54 = icmp eq i64 %47, 17
  %55 = load i32, ptr %9, align 4, !tbaa !279
  br i1 %54, label %56, label %58

56:                                               ; preds = %52
  %57 = add nsw i32 %55, -16
  store i32 %57, ptr %9, align 4, !tbaa !279
  br label %164

58:                                               ; preds = %52
  %59 = icmp slt i32 %55, %53
  br i1 %59, label %164, label %60

60:                                               ; preds = %58
  %61 = sub nsw i32 32, %53
  %62 = lshr i32 %24, %61
  %63 = getelementptr inbounds nuw i32, ptr @stbi__bmask, i64 %47
  %64 = load i32, ptr %63, align 4, !tbaa !4
  %65 = and i32 %64, %62
  %66 = getelementptr inbounds nuw i8, ptr %2, i64 1612
  %67 = getelementptr inbounds nuw i32, ptr %66, i64 %47
  %68 = load i32, ptr %67, align 4, !tbaa !4
  %69 = add i32 %65, %68
  %70 = icmp ugt i32 %69, 255
  br i1 %70, label %164, label %71

71:                                               ; preds = %60
  %72 = sub nsw i32 %55, %53
  store i32 %72, ptr %9, align 4, !tbaa !279
  %73 = shl i32 %24, %53
  store i32 %73, ptr %23, align 8, !tbaa !280
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
  %88 = load i32, ptr %9, align 4, !tbaa !279
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi i32 [ %88, %87 ], [ %78, %85 ]
  %91 = icmp slt i32 %90, %81
  br i1 %91, label %107, label %92

92:                                               ; preds = %89
  %93 = load i32, ptr %23, align 8, !tbaa !280
  %94 = tail call i32 @llvm.fshl.i32(i32 %93, i32 %93, i32 range(i32 1, 16) %81)
  %95 = zext nneg i8 %80 to i64
  %96 = getelementptr inbounds nuw i32, ptr @stbi__bmask, i64 %95
  %97 = load i32, ptr %96, align 4, !tbaa !4
  %98 = xor i32 %97, -1
  %99 = and i32 %94, %98
  store i32 %99, ptr %23, align 8, !tbaa !280
  %100 = and i32 %94, %97
  %101 = sub nsw i32 %90, %81
  store i32 %101, ptr %9, align 4, !tbaa !279
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
  %112 = load i32, ptr %111, align 8, !tbaa !282
  %113 = xor i32 %112, %108
  %114 = icmp sgt i32 %113, -1
  br i1 %114, label %115, label %123

115:                                              ; preds = %107
  %116 = and i32 %112, %108
  %117 = sub nsw i32 2147483647, %108
  %118 = icmp sgt i32 %112, %117
  %119 = sub nsw i32 -2147483648, %108
  %120 = icmp slt i32 %112, %119
  %121 = icmp slt i32 %116, 0
  %122 = select i1 %121, i1 %120, i1 %118
  br i1 %122, label %164, label %123

123:                                              ; preds = %107, %115
  %124 = add nsw i32 %112, %108
  store i32 %124, ptr %111, align 8, !tbaa !282
  %125 = getelementptr inbounds nuw i8, ptr %0, i64 18496
  %126 = load i32, ptr %125, align 8, !tbaa !278
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
  %145 = load i32, ptr %9, align 4, !tbaa !279
  %146 = icmp slt i32 %145, 1
  br i1 %146, label %147, label %150

147:                                              ; preds = %144
  tail call fastcc void @stbi__grow_buffer_unsafe(ptr noundef nonnull %0) #17
  %148 = load i32, ptr %9, align 4, !tbaa !279
  %149 = icmp slt i32 %148, 1
  br i1 %149, label %164, label %150

150:                                              ; preds = %144, %147
  %151 = phi i32 [ %148, %147 ], [ %145, %144 ]
  %152 = getelementptr inbounds nuw i8, ptr %0, i64 18464
  %153 = load i32, ptr %152, align 8, !tbaa !280
  %154 = shl i32 %153, 1
  store i32 %154, ptr %152, align 8, !tbaa !280
  %155 = add nsw i32 %151, -1
  store i32 %155, ptr %9, align 4, !tbaa !279
  %156 = icmp sgt i32 %153, -1
  br i1 %156, label %164, label %157

157:                                              ; preds = %150
  %158 = getelementptr inbounds nuw i8, ptr %0, i64 18496
  %159 = load i32, ptr %158, align 8, !tbaa !278
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
!180 = !{!"branch_weights", i32 8, i32 24}
!181 = distinct !{!181, !47, !48, !49}
!182 = distinct !{!182, !47, !48}
!183 = distinct !{!183, !47, !48}
!184 = distinct !{!184, !47, !48, !49}
!185 = distinct !{!185, !47, !48, !49}
!186 = distinct !{!186, !47, !48}
!187 = distinct !{!187, !47, !48}
!188 = distinct !{!188, !47, !48, !49}
!189 = distinct !{!189, !47, !48, !49}
!190 = distinct !{!190, !47, !48}
!191 = distinct !{!191, !47}
!192 = distinct !{!192, !47}
!193 = distinct !{!193, !47}
!194 = distinct !{!194, !78}
!195 = distinct !{!195, !47}
!196 = distinct !{!196, !47}
!197 = !{!198}
!198 = distinct !{!198, !199}
!199 = distinct !{!199, !"LVerDomain"}
!200 = !{!201}
!201 = distinct !{!201, !199}
!202 = distinct !{!202, !47, !48, !49}
!203 = distinct !{!203, !78}
!204 = distinct !{!204, !47, !48}
!205 = distinct !{!205, !47}
!206 = distinct !{!206, !47}
!207 = distinct !{!207, !47}
!208 = distinct !{!208, !78}
!209 = distinct !{!209, !47}
!210 = !{!29, !5, i64 32}
!211 = !{!29, !5, i64 36}
!212 = !{!29, !5, i64 40}
!213 = !{!29, !5, i64 44}
!214 = distinct !{!214, !47}
!215 = !{!32, !5, i64 4}
!216 = !{!32, !5, i64 8}
!217 = !{!32, !5, i64 32}
!218 = !{!32, !5, i64 0}
!219 = !{!32, !5, i64 12}
!220 = !{!32, !5, i64 16}
!221 = !{!32, !5, i64 20}
!222 = !{!32, !5, i64 24}
!223 = !{!38, !5, i64 8}
!224 = !{!38, !5, i64 4}
!225 = distinct !{!225, !78}
!226 = distinct !{!226, !47}
!227 = distinct !{!227, !47}
!228 = distinct !{!228, !47}
!229 = distinct !{!229, !47}
!230 = distinct !{!230, !47}
!231 = distinct !{!231, !47}
!232 = distinct !{!232, !47}
!233 = distinct !{!233, !47}
!234 = distinct !{!234, !47}
!235 = distinct !{!235, !47}
!236 = distinct !{!236, !47}
!237 = distinct !{!237, !47}
!238 = distinct !{!238, !78}
!239 = distinct !{!239, !47}
!240 = distinct !{!240, !47}
!241 = distinct !{!241, !47}
!242 = !{!29, !12, i64 8}
!243 = !{!29, !12, i64 16}
!244 = !{!29, !12, i64 24}
!245 = !{!29, !5, i64 48}
!246 = distinct !{!246, !47}
!247 = !{!29, !5, i64 34916}
!248 = !{!29, !5, i64 34892}
!249 = !{!29, !5, i64 34896}
!250 = !{!29, !5, i64 34900}
!251 = !{!29, !5, i64 34904}
!252 = !{!29, !5, i64 34908}
!253 = !{!29, !5, i64 34888}
!254 = !{!29, !5, i64 34884}
!255 = !{!29, !5, i64 34880}
!256 = !{!29, !12, i64 34872}
!257 = !{!258, !40, i64 0}
!258 = !{!"", !40, i64 0, !6, i64 2, !6, i64 3}
!259 = !{!258, !6, i64 2}
!260 = !{!258, !6, i64 3}
!261 = distinct !{!261, !47}
!262 = distinct !{!262, !78}
!263 = distinct !{!263, !47}
!264 = distinct !{!264, !47}
!265 = !{!29, !5, i64 34920}
!266 = distinct !{!266, !47}
!267 = !{!22, !11, i64 18544}
!268 = !{!22, !11, i64 18552}
!269 = !{!22, !11, i64 18560}
!270 = !{!22, !5, i64 18516}
!271 = distinct !{!271, !47}
!272 = !{!73, !5, i64 16}
!273 = !{!73, !5, i64 20}
!274 = distinct !{!274, !47}
!275 = !{!22, !5, i64 18484}
!276 = !{!22, !5, i64 18488}
!277 = !{!22, !5, i64 18492}
!278 = !{!22, !5, i64 18496}
!279 = !{!22, !5, i64 18468}
!280 = !{!22, !5, i64 18464}
!281 = !{!22, !5, i64 18476}
!282 = !{!73, !5, i64 24}
!283 = !{!22, !5, i64 18540}
!284 = !{!22, !5, i64 18500}
!285 = distinct !{!285, !47}
!286 = distinct !{!286, !47}
!287 = distinct !{!287, !47}
!288 = distinct !{!288, !47}
!289 = distinct !{!289, !47}
!290 = distinct !{!290, !47}
!291 = distinct !{!291, !47}
!292 = !{!73, !5, i64 88}
!293 = distinct !{!293, !47}
!294 = distinct !{!294, !47}
!295 = distinct !{!295, !47}
!296 = distinct !{!296, !47}
!297 = distinct !{!297, !47}
!298 = distinct !{!298, !47}
!299 = distinct !{!299, !47}
!300 = distinct !{!300, !47}
!301 = distinct !{!301, !47}
!302 = distinct !{!302, !47}
!303 = distinct !{!303, !47}
!304 = distinct !{!304, !47}
!305 = !{!306}
!306 = distinct !{!306, !307}
!307 = distinct !{!307, !"LVerDomain"}
!308 = !{!309}
!309 = distinct !{!309, !307}
!310 = distinct !{!310, !47, !48}
!311 = distinct !{!311, !47}
!312 = distinct !{!312, !47}
!313 = distinct !{!313, !47}
!314 = !{!315, !5, i64 24}
!315 = !{!"", !11, i64 0, !12, i64 8, !12, i64 16, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40}
!316 = !{!315, !5, i64 28}
!317 = !{!315, !5, i64 36}
!318 = !{!315, !5, i64 32}
!319 = !{!315, !5, i64 40}
!320 = !{!315, !12, i64 16}
!321 = !{!315, !12, i64 8}
!322 = !{!315, !11, i64 0}
!323 = distinct !{!323, !47}
!324 = distinct !{!324, !47}
!325 = distinct !{!325, !47}
!326 = distinct !{!326, !47}
!327 = distinct !{!327, !47}
!328 = distinct !{!328, !47}
!329 = distinct !{!329, !47}
!330 = distinct !{!330, !47}
!331 = distinct !{!331, !47}
!332 = distinct !{!332, !47, !48, !49}
!333 = distinct !{!333, !47, !49, !48}
!334 = distinct !{!334, !47}
!335 = distinct !{!335, !47, !48, !49}
!336 = distinct !{!336, !47, !49, !48}
!337 = distinct !{!337, !47}
!338 = !{!339}
!339 = distinct !{!339, !340}
!340 = distinct !{!340, !"LVerDomain"}
!341 = !{!342}
!342 = distinct !{!342, !340}
!343 = distinct !{!343, !47, !48, !49}
!344 = distinct !{!344, !47, !48, !49}
!345 = distinct !{!345, !47, !48}
!346 = distinct !{!346, !47}
!347 = distinct !{!347, !47}
!348 = distinct !{!348, !78}
!349 = distinct !{!349, !47}
!350 = distinct !{!350, !47}
!351 = distinct !{!351, !47}
!352 = distinct !{!352, !47}
!353 = !{!29, !5, i64 34912}
!354 = distinct !{!354, !47}
!355 = distinct !{!355, !47}
!356 = distinct !{!356, !47}
!357 = distinct !{!357, !47}
!358 = !{!359}
!359 = distinct !{!359, !360}
!360 = distinct !{!360, !"LVerDomain"}
!361 = !{!362}
!362 = distinct !{!362, !360}
!363 = !{!364}
!364 = distinct !{!364, !360}
!365 = !{!359, !362}
!366 = distinct !{!366, !47, !48, !49}
!367 = distinct !{!367, !47, !48}
!368 = distinct !{!368, !47, !48, !49}
!369 = distinct !{!369, !47, !48, !49}
!370 = distinct !{!370, !47, !48}
!371 = !{!372}
!372 = distinct !{!372, !373}
!373 = distinct !{!373, !"LVerDomain"}
!374 = !{!375}
!375 = distinct !{!375, !373}
!376 = distinct !{!376, !47, !48, !49}
!377 = distinct !{!377, !47, !48}
!378 = distinct !{!378, !47, !48, !49}
!379 = distinct !{!379, !47, !48, !49}
!380 = distinct !{!380, !47, !49, !48}
!381 = distinct !{!381, !47}
!382 = distinct !{!382, !47}
!383 = distinct !{!383, !47}
!384 = distinct !{!384, !47}
