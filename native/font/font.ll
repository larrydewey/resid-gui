; ModuleID = 'font/font.c'
source_filename = "font/font.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.stbtt__buf = type { ptr, i32, i32 }
%struct.stbtt_fontinfo = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.stbtt__buf, %struct.stbtt__buf, %struct.stbtt__buf, %struct.stbtt__buf, %struct.stbtt__buf, %struct.stbtt__buf }
%struct.stbtt__csctx = type { i32, i32, float, float, float, float, i32, i32, i32, i32, ptr, i32 }
%struct.stbtt__edge = type { float, float, float, float, i32 }

@stbtt__lo = internal unnamed_addr global ptr null, align 8
@stbtt__hi = internal unnamed_addr global ptr null, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"cmap\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"loca\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"head\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"glyf\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"hhea\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"hmtx\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"kern\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"GPOS\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"CFF \00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"maxp\00", align 1
@stbtt_GetGlyphShape.depth = internal unnamed_addr global i32 0, align 4
@stbtt_GetGlyphShape.budget = internal unnamed_addr global i32 0, align 4
@arena_used = internal unnamed_addr global i64 0, align 8
@arena = internal global [8388608 x i8] zeroinitializer, align 16

; Function Attrs: nounwind
define void @font_atlas(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, i64 noundef %5) local_unnamed_addr #0 {
  %7 = alloca ptr, align 8
  %8 = alloca [129 x float], align 16
  %9 = alloca { float, float, i32 }, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  %14 = alloca %struct.stbtt__buf, align 8
  %15 = alloca %struct.stbtt__buf, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.stbtt_fontinfo, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = icmp slt i64 %5, 6788
  br i1 %25, label %3519, label %26

26:                                               ; preds = %6
  %27 = add i64 %3, -257
  %28 = icmp ult i64 %27, -253
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  store i32 826689362, ptr %4, align 1
  %30 = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 2, ptr %30, align 1
  br label %3519

31:                                               ; preds = %26
  %32 = icmp slt i64 %2, 1
  %33 = icmp sgt i64 %2, %1
  %34 = or i1 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  store i32 826689362, ptr %4, align 1
  %36 = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 1, ptr %36, align 1
  br label %3519

37:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #15
  store ptr %0, ptr @stbtt__lo, align 8, !tbaa !8
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 %2
  store ptr %38, ptr @stbtt__hi, align 8, !tbaa !8
  %39 = load i8, ptr %0, align 1, !tbaa !11
  switch i8 %39, label %478 [
    i8 49, label %40
    i8 116, label %52
    i8 79, label %63
    i8 0, label %75
  ]

40:                                               ; preds = %37
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %42 = load i8, ptr %41, align 1, !tbaa !11
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %478

44:                                               ; preds = %40
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %46 = load i8, ptr %45, align 1, !tbaa !11
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %478

48:                                               ; preds = %44
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %50 = load i8, ptr %49, align 1, !tbaa !11
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %141, label %478

52:                                               ; preds = %37
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %54 = load i8, ptr %53, align 1, !tbaa !11
  switch i8 %54, label %478 [
    i8 121, label %55
    i8 114, label %87
    i8 116, label %95
  ]

55:                                               ; preds = %52
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %57 = load i8, ptr %56, align 1, !tbaa !11
  %58 = icmp eq i8 %57, 112
  br i1 %58, label %59, label %478

59:                                               ; preds = %55
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %61 = load i8, ptr %60, align 1, !tbaa !11
  %62 = icmp eq i8 %61, 49
  br i1 %62, label %141, label %478

63:                                               ; preds = %37
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %65 = load i8, ptr %64, align 1, !tbaa !11
  %66 = icmp eq i8 %65, 84
  br i1 %66, label %67, label %478

67:                                               ; preds = %63
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %69 = load i8, ptr %68, align 1, !tbaa !11
  %70 = icmp eq i8 %69, 84
  br i1 %70, label %71, label %478

71:                                               ; preds = %67
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %73 = load i8, ptr %72, align 1, !tbaa !11
  %74 = icmp eq i8 %73, 79
  br i1 %74, label %141, label %478

75:                                               ; preds = %37
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %77 = load i8, ptr %76, align 1, !tbaa !11
  %78 = icmp eq i8 %77, 1
  br i1 %78, label %79, label %478

79:                                               ; preds = %75
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %81 = load i8, ptr %80, align 1, !tbaa !11
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %83, label %478

83:                                               ; preds = %79
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %85 = load i8, ptr %84, align 1, !tbaa !11
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %141, label %478

87:                                               ; preds = %52
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %89 = load i8, ptr %88, align 1, !tbaa !11
  %90 = icmp eq i8 %89, 117
  br i1 %90, label %91, label %478

91:                                               ; preds = %87
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %93 = load i8, ptr %92, align 1, !tbaa !11
  %94 = icmp eq i8 %93, 101
  br i1 %94, label %141, label %478

95:                                               ; preds = %52
  %96 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %97 = load i8, ptr %96, align 1, !tbaa !11
  %98 = icmp eq i8 %97, 99
  br i1 %98, label %99, label %478

99:                                               ; preds = %95
  %100 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %101 = load i8, ptr %100, align 1, !tbaa !11
  %102 = icmp eq i8 %101, 102
  br i1 %102, label %103, label %478

103:                                              ; preds = %99
  %104 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %105 = icmp ult i64 %2, 6
  br i1 %105, label %131, label %106

106:                                              ; preds = %103
  %107 = load i8, ptr %104, align 1, !tbaa !11
  %108 = zext i8 %107 to i32
  %109 = shl nuw i32 %108, 24
  %110 = getelementptr inbounds nuw i8, ptr %0, i64 5
  %111 = load i8, ptr %110, align 1, !tbaa !11
  %112 = zext i8 %111 to i32
  %113 = shl nuw nsw i32 %112, 16
  %114 = or disjoint i32 %113, %109
  %115 = icmp eq i64 %2, 6
  br i1 %115, label %128, label %116

116:                                              ; preds = %106
  %117 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %118 = load i8, ptr %117, align 1, !tbaa !11
  %119 = zext i8 %118 to i32
  %120 = shl nuw nsw i32 %119, 8
  %121 = or disjoint i32 %120, %114
  %122 = icmp eq i64 %2, 7
  br i1 %122, label %128, label %123

123:                                              ; preds = %116
  %124 = getelementptr inbounds nuw i8, ptr %0, i64 7
  %125 = load i8, ptr %124, align 1, !tbaa !11
  %126 = zext i8 %125 to i32
  %127 = or disjoint i32 %121, %126
  br label %128

128:                                              ; preds = %106, %123, %116
  %129 = phi i32 [ %127, %123 ], [ %121, %116 ], [ %114, %106 ]
  %130 = icmp eq i32 %129, 65536
  br i1 %130, label %134, label %131

131:                                              ; preds = %103, %128
  %132 = tail call fastcc i32 @ttULONG(ptr noundef nonnull readonly %104) #16
  %133 = icmp eq i32 %132, 131072
  br i1 %133, label %134, label %478

134:                                              ; preds = %131, %128
  %135 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %136 = tail call fastcc i32 @ttLONG(ptr noundef nonnull readonly %135) #16
  %137 = icmp slt i32 %136, 1
  br i1 %137, label %478, label %138

138:                                              ; preds = %134
  %139 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %140 = tail call fastcc i32 @ttULONG(ptr noundef nonnull readonly %139) #16
  br label %141

141:                                              ; preds = %48, %59, %71, %83, %91, %138
  %142 = phi i32 [ 0, %83 ], [ 0, %91 ], [ %140, %138 ], [ 0, %48 ], [ 0, %59 ], [ 0, %71 ]
  %143 = icmp sgt i32 %142, -1
  %144 = zext nneg i32 %142 to i64
  %145 = icmp samesign ugt i64 %2, %144
  %146 = select i1 %143, i1 %145, i1 false
  br i1 %146, label %147, label %478

147:                                              ; preds = %141
  %148 = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr %0, ptr %148, align 8, !tbaa !12
  %149 = getelementptr inbounds nuw i8, ptr %20, i64 16
  store i32 %142, ptr %149, align 8, !tbaa !15
  %150 = getelementptr inbounds nuw i8, ptr %20, i64 64
  store ptr null, ptr %150, align 8, !tbaa !8
  %151 = getelementptr inbounds nuw i8, ptr %20, i64 72
  store i64 0, ptr %151, align 8
  %152 = tail call fastcc i32 @stbtt__find_table(ptr noundef nonnull %0, i32 noundef range(i32 0, -2147483648) %142, ptr noundef nonnull @.str.4) #16
  %153 = tail call fastcc i32 @stbtt__find_table(ptr noundef nonnull %0, i32 noundef range(i32 0, -2147483648) %142, ptr noundef nonnull @.str.5) #16
  %154 = getelementptr inbounds nuw i8, ptr %20, i64 24
  store i32 %153, ptr %154, align 8, !tbaa !16
  %155 = tail call fastcc i32 @stbtt__find_table(ptr noundef nonnull %0, i32 noundef range(i32 0, -2147483648) %142, ptr noundef nonnull @.str.6) #16
  %156 = getelementptr inbounds nuw i8, ptr %20, i64 28
  store i32 %155, ptr %156, align 4, !tbaa !17
  %157 = tail call fastcc i32 @stbtt__find_table(ptr noundef nonnull %0, i32 noundef range(i32 0, -2147483648) %142, ptr noundef nonnull @.str.7) #16
  %158 = getelementptr inbounds nuw i8, ptr %20, i64 32
  store i32 %157, ptr %158, align 8, !tbaa !18
  %159 = tail call fastcc i32 @stbtt__find_table(ptr noundef nonnull %0, i32 noundef range(i32 0, -2147483648) %142, ptr noundef nonnull @.str.8) #16
  %160 = getelementptr inbounds nuw i8, ptr %20, i64 36
  store i32 %159, ptr %160, align 4, !tbaa !19
  %161 = tail call fastcc i32 @stbtt__find_table(ptr noundef nonnull %0, i32 noundef range(i32 0, -2147483648) %142, ptr noundef nonnull @.str.9) #16
  %162 = getelementptr inbounds nuw i8, ptr %20, i64 40
  store i32 %161, ptr %162, align 8, !tbaa !20
  %163 = tail call fastcc i32 @stbtt__find_table(ptr noundef nonnull %0, i32 noundef range(i32 0, -2147483648) %142, ptr noundef nonnull @.str.10) #16
  %164 = getelementptr inbounds nuw i8, ptr %20, i64 44
  store i32 %163, ptr %164, align 4, !tbaa !21
  %165 = tail call fastcc i32 @stbtt__find_table(ptr noundef nonnull %0, i32 noundef range(i32 0, -2147483648) %142, ptr noundef nonnull @.str.11) #16
  %166 = getelementptr inbounds nuw i8, ptr %20, i64 48
  store i32 %165, ptr %166, align 8, !tbaa !22
  %167 = icmp eq i32 %152, 0
  %168 = icmp eq i32 %155, 0
  %169 = select i1 %167, i1 true, i1 %168
  %170 = icmp eq i32 %159, 0
  %171 = select i1 %169, i1 true, i1 %170
  %172 = icmp eq i32 %161, 0
  %173 = select i1 %171, i1 true, i1 %172
  br i1 %173, label %478, label %174

174:                                              ; preds = %147
  %175 = icmp eq i32 %157, 0
  br i1 %175, label %178, label %176

176:                                              ; preds = %174
  %177 = icmp eq i32 %153, 0
  br i1 %177, label %478, label %276

178:                                              ; preds = %174
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #15
  store i32 2, ptr %16, align 4, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #15
  store i32 0, ptr %17, align 4, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #15
  store i32 0, ptr %18, align 4, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #15
  store i32 0, ptr %19, align 4, !tbaa !23
  %179 = tail call fastcc i32 @stbtt__find_table(ptr noundef nonnull %0, i32 noundef range(i32 0, -2147483648) %142, ptr noundef nonnull @.str.12) #16
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %477, label %181

181:                                              ; preds = %178
  %182 = getelementptr inbounds nuw i8, ptr %20, i64 128
  store ptr null, ptr %182, align 8, !tbaa !8
  %183 = getelementptr inbounds nuw i8, ptr %20, i64 136
  store i64 0, ptr %183, align 8
  %184 = getelementptr inbounds nuw i8, ptr %20, i64 144
  store ptr null, ptr %184, align 8, !tbaa !8
  %185 = getelementptr inbounds nuw i8, ptr %20, i64 152
  store i64 0, ptr %185, align 8
  %186 = zext i32 %179 to i64
  %187 = getelementptr inbounds nuw i8, ptr %0, i64 %186
  store ptr %187, ptr %150, align 8, !tbaa !8
  store i64 2305843009213693952, ptr %151, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %150, i64 16, i1 false), !tbaa.struct !24
  %188 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %189 = load i32, ptr %188, align 8, !tbaa !25
  %190 = add i32 %189, 2
  %191 = getelementptr inbounds nuw i8, ptr %14, i64 12
  %192 = load i32, ptr %191, align 4, !tbaa !26
  %193 = icmp slt i32 %190, 0
  %194 = tail call i32 @llvm.smin.i32(i32 %190, i32 %192)
  %195 = select i1 %193, i32 %192, i32 %194
  %196 = icmp slt i32 %195, %192
  br i1 %196, label %197, label %207

197:                                              ; preds = %181
  %198 = load ptr, ptr %14, align 8, !tbaa !27
  %199 = sext i32 %195 to i64
  %200 = getelementptr inbounds i8, ptr %198, i64 %199
  %201 = icmp uge ptr %200, %0
  %202 = icmp ult ptr %200, %38
  %203 = select i1 %201, i1 %202, i1 false
  br i1 %203, label %204, label %207

204:                                              ; preds = %197
  %205 = load i8, ptr %200, align 1, !tbaa !11
  %206 = zext i8 %205 to i32
  br label %207

207:                                              ; preds = %204, %197, %181
  %208 = phi i32 [ 0, %181 ], [ %206, %204 ], [ 0, %197 ]
  %209 = tail call i32 @llvm.smin.i32(i32 %208, i32 %192)
  store i32 %209, ptr %188, align 8, !tbaa !25
  %210 = call fastcc { ptr, i64 } @stbtt__cff_get_index(ptr noundef %14) #16
  %211 = call fastcc { ptr, i64 } @stbtt__cff_get_index(ptr noundef %14) #16
  %212 = extractvalue { ptr, i64 } %211, 0
  %213 = extractvalue { ptr, i64 } %211, 1
  %214 = tail call fastcc { ptr, i64 } @stbtt__cff_index_get(ptr %212, i64 %213, i32 noundef 0) #16
  %215 = extractvalue { ptr, i64 } %214, 0
  %216 = extractvalue { ptr, i64 } %214, 1
  store ptr %215, ptr %15, align 8, !tbaa !8
  %217 = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %216, ptr %217, align 8
  %218 = call fastcc { ptr, i64 } @stbtt__cff_get_index(ptr noundef %14) #16
  %219 = getelementptr inbounds nuw i8, ptr %20, i64 96
  %220 = call fastcc { ptr, i64 } @stbtt__cff_get_index(ptr noundef %14) #16
  %221 = extractvalue { ptr, i64 } %220, 0
  %222 = extractvalue { ptr, i64 } %220, 1
  store ptr %221, ptr %219, align 8, !tbaa !8
  %223 = getelementptr inbounds nuw i8, ptr %20, i64 104
  store i64 %222, ptr %223, align 8
  call fastcc void @stbtt__dict_get_ints(ptr noundef %15, i32 noundef 17, i32 noundef 1, ptr noundef %17) #16
  call fastcc void @stbtt__dict_get_ints(ptr noundef %15, i32 noundef 262, i32 noundef 1, ptr noundef %16) #16
  call fastcc void @stbtt__dict_get_ints(ptr noundef %15, i32 noundef 292, i32 noundef 1, ptr noundef %18) #16
  call fastcc void @stbtt__dict_get_ints(ptr noundef %15, i32 noundef 293, i32 noundef 1, ptr noundef %19) #16
  %224 = getelementptr inbounds nuw i8, ptr %20, i64 112
  %225 = load ptr, ptr %14, align 8
  %226 = load i64, ptr %188, align 8
  %227 = load ptr, ptr %15, align 8
  %228 = load i64, ptr %217, align 8
  %229 = tail call fastcc { ptr, i64 } @stbtt__get_subrs(ptr %225, i64 %226, ptr %227, i64 %228) #16
  %230 = extractvalue { ptr, i64 } %229, 0
  %231 = extractvalue { ptr, i64 } %229, 1
  store ptr %230, ptr %224, align 8, !tbaa !8
  %232 = getelementptr inbounds nuw i8, ptr %20, i64 120
  store i64 %231, ptr %232, align 8
  %233 = load i32, ptr %16, align 4, !tbaa !23
  %234 = icmp ne i32 %233, 2
  %235 = load i32, ptr %17, align 4
  %236 = icmp eq i32 %235, 0
  %237 = select i1 %234, i1 true, i1 %236
  %238 = lshr i64 %226, 32
  %239 = trunc nuw i64 %238 to i32
  br i1 %237, label %477, label %240

240:                                              ; preds = %207
  %241 = load i32, ptr %18, align 4, !tbaa !23
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %266, label %243

243:                                              ; preds = %240
  %244 = load i32, ptr %19, align 4, !tbaa !23
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %477, label %246

246:                                              ; preds = %243
  %247 = icmp slt i32 %241, 0
  %248 = tail call i32 @llvm.smin.i32(i32 %241, i32 %239)
  %249 = select i1 %247, i32 %239, i32 %248
  store i32 %249, ptr %188, align 8, !tbaa !25
  %250 = call fastcc { ptr, i64 } @stbtt__cff_get_index(ptr noundef %14) #16
  %251 = extractvalue { ptr, i64 } %250, 0
  %252 = extractvalue { ptr, i64 } %250, 1
  store ptr %251, ptr %182, align 8, !tbaa !8
  store i64 %252, ptr %183, align 8
  %253 = load i32, ptr %191, align 4, !tbaa !26
  %254 = sub i32 %253, %244
  %255 = or i32 %254, %244
  %256 = icmp slt i32 %255, 0
  %257 = icmp sgt i32 %244, %253
  %258 = or i1 %257, %256
  %259 = load ptr, ptr %14, align 8
  %260 = zext nneg i32 %244 to i64
  %261 = getelementptr inbounds nuw i8, ptr %259, i64 %260
  %262 = zext nneg i32 %254 to i64
  %263 = shl nuw nsw i64 %262, 32
  %264 = select i1 %258, ptr null, ptr %261
  %265 = select i1 %258, i64 0, i64 %263
  store ptr %264, ptr %184, align 8, !tbaa !8
  store i64 %265, ptr %185, align 8
  br label %266

266:                                              ; preds = %246, %240
  %267 = phi i32 [ %253, %246 ], [ %239, %240 ]
  %268 = icmp slt i32 %235, 0
  %269 = tail call i32 @llvm.smin.i32(i32 %235, i32 %267)
  %270 = select i1 %268, i32 %267, i32 %269
  store i32 %270, ptr %188, align 8, !tbaa !25
  %271 = getelementptr inbounds nuw i8, ptr %20, i64 80
  %272 = call fastcc { ptr, i64 } @stbtt__cff_get_index(ptr noundef %14) #16
  %273 = extractvalue { ptr, i64 } %272, 0
  %274 = extractvalue { ptr, i64 } %272, 1
  store ptr %273, ptr %271, align 8, !tbaa !8
  %275 = getelementptr inbounds nuw i8, ptr %20, i64 88
  store i64 %274, ptr %275, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  br label %276

276:                                              ; preds = %266, %176
  %277 = tail call fastcc i32 @stbtt__find_table(ptr noundef nonnull %0, i32 noundef range(i32 0, -2147483648) %142, ptr noundef nonnull @.str.13) #16
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %301, label %279

279:                                              ; preds = %276
  %280 = zext i32 %277 to i64
  %281 = getelementptr inbounds nuw i8, ptr %0, i64 %280
  %282 = add nuw nsw i64 %280, 4
  %283 = icmp samesign ult i64 %282, %2
  br i1 %283, label %284, label %289

284:                                              ; preds = %279
  %285 = getelementptr inbounds nuw i8, ptr %281, i64 4
  %286 = load i8, ptr %285, align 1, !tbaa !11
  %287 = zext i8 %286 to i16
  %288 = shl nuw i16 %287, 8
  br label %289

289:                                              ; preds = %284, %279
  %290 = phi i16 [ %288, %284 ], [ 0, %279 ]
  %291 = add nuw nsw i64 %280, 5
  %292 = icmp samesign ult i64 %291, %2
  br i1 %292, label %293, label %298

293:                                              ; preds = %289
  %294 = getelementptr inbounds nuw i8, ptr %281, i64 5
  %295 = load i8, ptr %294, align 1, !tbaa !11
  %296 = zext i8 %295 to i16
  %297 = or disjoint i16 %290, %296
  br label %298

298:                                              ; preds = %293, %289
  %299 = phi i16 [ %297, %293 ], [ %290, %289 ]
  %300 = zext i16 %299 to i32
  br label %301

301:                                              ; preds = %276, %298
  %302 = phi i32 [ %300, %298 ], [ 65535, %276 ]
  %303 = getelementptr inbounds nuw i8, ptr %20, i64 20
  store i32 %302, ptr %303, align 4, !tbaa !28
  %304 = getelementptr inbounds nuw i8, ptr %20, i64 52
  store i32 -1, ptr %304, align 4, !tbaa !29
  %305 = zext i32 %152 to i64
  %306 = getelementptr inbounds nuw i8, ptr %0, i64 %305
  %307 = add nuw nsw i64 %305, 2
  %308 = icmp samesign ult i64 %307, %2
  br i1 %308, label %309, label %314

309:                                              ; preds = %301
  %310 = getelementptr inbounds nuw i8, ptr %306, i64 2
  %311 = load i8, ptr %310, align 1, !tbaa !11
  %312 = zext i8 %311 to i16
  %313 = shl nuw i16 %312, 8
  br label %314

314:                                              ; preds = %309, %301
  %315 = phi i16 [ %313, %309 ], [ 0, %301 ]
  %316 = add nuw nsw i64 %305, 3
  %317 = icmp samesign ult i64 %316, %2
  br i1 %317, label %318, label %323

318:                                              ; preds = %314
  %319 = getelementptr inbounds nuw i8, ptr %306, i64 3
  %320 = load i8, ptr %319, align 1, !tbaa !11
  %321 = zext i8 %320 to i16
  %322 = or disjoint i16 %315, %321
  br label %323

323:                                              ; preds = %318, %314
  %324 = phi i16 [ %322, %318 ], [ %315, %314 ]
  %325 = getelementptr inbounds nuw i8, ptr %20, i64 56
  %326 = icmp eq i16 %324, 0
  br i1 %326, label %478, label %327

327:                                              ; preds = %323
  %328 = add i32 %152, 4
  %329 = zext i16 %324 to i64
  br label %330

330:                                              ; preds = %447, %327
  %331 = phi i32 [ 0, %327 ], [ %448, %447 ]
  %332 = phi i32 [ 0, %327 ], [ %449, %447 ]
  %333 = phi i64 [ 0, %327 ], [ %450, %447 ]
  %334 = trunc i64 %333 to i32
  %335 = shl i32 %334, 3
  %336 = add i32 %328, %335
  %337 = zext i32 %336 to i64
  %338 = getelementptr inbounds nuw i8, ptr %0, i64 %337
  %339 = icmp samesign ugt i64 %2, %337
  br i1 %339, label %340, label %344

340:                                              ; preds = %330
  %341 = load i8, ptr %338, align 1, !tbaa !11
  %342 = zext i8 %341 to i16
  %343 = shl nuw i16 %342, 8
  br label %344

344:                                              ; preds = %340, %330
  %345 = phi i16 [ %343, %340 ], [ 0, %330 ]
  %346 = add nuw nsw i64 %337, 1
  %347 = icmp samesign ult i64 %346, %2
  br i1 %347, label %348, label %353

348:                                              ; preds = %344
  %349 = getelementptr inbounds nuw i8, ptr %338, i64 1
  %350 = load i8, ptr %349, align 1, !tbaa !11
  %351 = zext i8 %350 to i16
  %352 = or disjoint i16 %345, %351
  br label %353

353:                                              ; preds = %348, %344
  %354 = phi i16 [ %352, %348 ], [ %345, %344 ]
  switch i16 %354, label %447 [
    i16 3, label %355
    i16 0, label %406
  ]

355:                                              ; preds = %353
  %356 = add nuw nsw i64 %337, 2
  %357 = icmp samesign ult i64 %356, %2
  br i1 %357, label %358, label %363

358:                                              ; preds = %355
  %359 = getelementptr inbounds nuw i8, ptr %338, i64 2
  %360 = load i8, ptr %359, align 1, !tbaa !11
  %361 = zext i8 %360 to i16
  %362 = shl nuw i16 %361, 8
  br label %363

363:                                              ; preds = %358, %355
  %364 = phi i16 [ %362, %358 ], [ 0, %355 ]
  %365 = add nuw nsw i64 %337, 3
  %366 = icmp samesign ult i64 %365, %2
  br i1 %366, label %367, label %372

367:                                              ; preds = %363
  %368 = getelementptr inbounds nuw i8, ptr %338, i64 3
  %369 = load i8, ptr %368, align 1, !tbaa !11
  %370 = zext i8 %369 to i16
  %371 = or disjoint i16 %364, %370
  br label %372

372:                                              ; preds = %367, %363
  %373 = phi i16 [ %371, %367 ], [ %364, %363 ]
  switch i16 %373, label %447 [
    i16 1, label %374
    i16 10, label %374
  ]

374:                                              ; preds = %372, %372
  %375 = add nuw nsw i64 %337, 4
  %376 = icmp samesign ult i64 %375, %2
  br i1 %376, label %377, label %382

377:                                              ; preds = %374
  %378 = getelementptr inbounds nuw i8, ptr %338, i64 4
  %379 = load i8, ptr %378, align 1, !tbaa !11
  %380 = zext i8 %379 to i32
  %381 = shl nuw i32 %380, 24
  br label %382

382:                                              ; preds = %377, %374
  %383 = phi i32 [ %381, %377 ], [ 0, %374 ]
  %384 = add nuw nsw i64 %337, 5
  %385 = icmp samesign ult i64 %384, %2
  br i1 %385, label %386, label %392

386:                                              ; preds = %382
  %387 = getelementptr inbounds nuw i8, ptr %338, i64 5
  %388 = load i8, ptr %387, align 1, !tbaa !11
  %389 = zext i8 %388 to i32
  %390 = shl nuw nsw i32 %389, 16
  %391 = or disjoint i32 %390, %383
  br label %392

392:                                              ; preds = %386, %382
  %393 = phi i32 [ %391, %386 ], [ %383, %382 ]
  %394 = add nuw nsw i64 %337, 6
  %395 = icmp samesign ult i64 %394, %2
  br i1 %395, label %396, label %402

396:                                              ; preds = %392
  %397 = getelementptr inbounds nuw i8, ptr %338, i64 6
  %398 = load i8, ptr %397, align 1, !tbaa !11
  %399 = zext i8 %398 to i32
  %400 = shl nuw nsw i32 %399, 8
  %401 = add nuw nsw i32 %400, %393
  br label %402

402:                                              ; preds = %396, %392
  %403 = phi i32 [ %401, %396 ], [ %393, %392 ]
  %404 = add nuw nsw i64 %337, 7
  %405 = icmp samesign ult i64 %404, %2
  br i1 %405, label %438, label %444

406:                                              ; preds = %353
  %407 = add nuw nsw i64 %337, 4
  %408 = icmp samesign ult i64 %407, %2
  br i1 %408, label %409, label %414

409:                                              ; preds = %406
  %410 = getelementptr inbounds nuw i8, ptr %338, i64 4
  %411 = load i8, ptr %410, align 1, !tbaa !11
  %412 = zext i8 %411 to i32
  %413 = shl nuw i32 %412, 24
  br label %414

414:                                              ; preds = %409, %406
  %415 = phi i32 [ %413, %409 ], [ 0, %406 ]
  %416 = add nuw nsw i64 %337, 5
  %417 = icmp samesign ult i64 %416, %2
  br i1 %417, label %418, label %424

418:                                              ; preds = %414
  %419 = getelementptr inbounds nuw i8, ptr %338, i64 5
  %420 = load i8, ptr %419, align 1, !tbaa !11
  %421 = zext i8 %420 to i32
  %422 = shl nuw nsw i32 %421, 16
  %423 = or disjoint i32 %422, %415
  br label %424

424:                                              ; preds = %418, %414
  %425 = phi i32 [ %423, %418 ], [ %415, %414 ]
  %426 = add nuw nsw i64 %337, 6
  %427 = icmp samesign ult i64 %426, %2
  br i1 %427, label %428, label %434

428:                                              ; preds = %424
  %429 = getelementptr inbounds nuw i8, ptr %338, i64 6
  %430 = load i8, ptr %429, align 1, !tbaa !11
  %431 = zext i8 %430 to i32
  %432 = shl nuw nsw i32 %431, 8
  %433 = add nuw nsw i32 %432, %425
  br label %434

434:                                              ; preds = %428, %424
  %435 = phi i32 [ %433, %428 ], [ %425, %424 ]
  %436 = add nuw nsw i64 %337, 7
  %437 = icmp samesign ult i64 %436, %2
  br i1 %437, label %438, label %444

438:                                              ; preds = %434, %402
  %439 = phi i32 [ %403, %402 ], [ %435, %434 ]
  %440 = getelementptr inbounds nuw i8, ptr %338, i64 7
  %441 = load i8, ptr %440, align 1, !tbaa !11
  %442 = zext i8 %441 to i32
  %443 = or disjoint i32 %439, %442
  br label %444

444:                                              ; preds = %438, %434, %402
  %445 = phi i32 [ %403, %402 ], [ %435, %434 ], [ %443, %438 ]
  %446 = add i32 %445, %152
  br label %447

447:                                              ; preds = %444, %372, %353
  %448 = phi i32 [ %331, %353 ], [ %331, %372 ], [ %446, %444 ]
  %449 = phi i32 [ %332, %353 ], [ %332, %372 ], [ %446, %444 ]
  %450 = add nuw nsw i64 %333, 1
  %451 = icmp eq i64 %450, %329
  br i1 %451, label %452, label %330, !llvm.loop !30

452:                                              ; preds = %447
  store i32 %448, ptr %325, align 8
  %453 = icmp eq i32 %449, 0
  br i1 %453, label %478, label %454

454:                                              ; preds = %452
  %455 = sext i32 %155 to i64
  %456 = getelementptr inbounds i8, ptr %0, i64 %455
  %457 = icmp sgt i32 %155, -51
  %458 = add nsw i64 %455, 50
  %459 = icmp slt i64 %458, %2
  %460 = select i1 %457, i1 %459, i1 false
  br i1 %460, label %461, label %466

461:                                              ; preds = %454
  %462 = getelementptr inbounds nuw i8, ptr %456, i64 50
  %463 = load i8, ptr %462, align 1, !tbaa !11
  %464 = zext i8 %463 to i16
  %465 = shl nuw i16 %464, 8
  br label %466

466:                                              ; preds = %461, %454
  %467 = phi i16 [ %465, %461 ], [ 0, %454 ]
  %468 = icmp sgt i32 %155, -52
  %469 = add nsw i64 %455, 51
  %470 = icmp slt i64 %469, %2
  %471 = select i1 %468, i1 %470, i1 false
  br i1 %471, label %472, label %480

472:                                              ; preds = %466
  %473 = getelementptr inbounds nuw i8, ptr %456, i64 51
  %474 = load i8, ptr %473, align 1, !tbaa !11
  %475 = zext i8 %474 to i16
  %476 = or disjoint i16 %467, %475
  br label %480

477:                                              ; preds = %243, %207, %178
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  br label %478

478:                                              ; preds = %323, %452, %477, %147, %176, %40, %44, %48, %55, %59, %63, %67, %71, %75, %79, %83, %87, %91, %37, %52, %95, %99, %131, %134, %141
  store i32 826689362, ptr %4, align 1
  %479 = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 1, ptr %479, align 1
  br label %3518

480:                                              ; preds = %472, %466
  %481 = phi i16 [ %476, %472 ], [ %467, %466 ]
  %482 = zext i16 %481 to i32
  %483 = getelementptr inbounds nuw i8, ptr %20, i64 60
  store i32 %482, ptr %483, align 4, !tbaa !32
  %484 = uitofp nneg i64 %3 to float
  %485 = sext i32 %159 to i64
  %486 = getelementptr inbounds i8, ptr %0, i64 %485
  %487 = getelementptr inbounds nuw i8, ptr %486, i64 4
  %488 = icmp sgt i32 %159, -5
  %489 = add nsw i64 %485, 4
  %490 = icmp slt i64 %489, %2
  %491 = select i1 %488, i1 %490, i1 false
  br i1 %491, label %492, label %496

492:                                              ; preds = %480
  %493 = load i8, ptr %487, align 1, !tbaa !11
  %494 = zext i8 %493 to i16
  %495 = shl nuw i16 %494, 8
  br label %496

496:                                              ; preds = %492, %480
  %497 = phi i16 [ %495, %492 ], [ 0, %480 ]
  %498 = getelementptr inbounds nuw i8, ptr %486, i64 5
  %499 = icmp sgt i32 %159, -6
  %500 = add nsw i64 %485, 5
  %501 = icmp slt i64 %500, %2
  %502 = select i1 %499, i1 %501, i1 false
  br i1 %502, label %503, label %507

503:                                              ; preds = %496
  %504 = load i8, ptr %498, align 1, !tbaa !11
  %505 = zext i8 %504 to i16
  %506 = or disjoint i16 %497, %505
  br label %507

507:                                              ; preds = %503, %496
  %508 = phi i16 [ %506, %503 ], [ %497, %496 ]
  %509 = getelementptr inbounds nuw i8, ptr %486, i64 6
  %510 = icmp sgt i32 %159, -7
  %511 = add nsw i64 %485, 6
  %512 = icmp slt i64 %511, %2
  %513 = select i1 %510, i1 %512, i1 false
  br i1 %513, label %514, label %518

514:                                              ; preds = %507
  %515 = load i8, ptr %509, align 1, !tbaa !11
  %516 = zext i8 %515 to i16
  %517 = shl nuw i16 %516, 8
  br label %518

518:                                              ; preds = %514, %507
  %519 = phi i16 [ %517, %514 ], [ 0, %507 ]
  %520 = getelementptr inbounds nuw i8, ptr %486, i64 7
  %521 = icmp sgt i32 %159, -8
  %522 = add nsw i64 %485, 7
  %523 = icmp slt i64 %522, %2
  %524 = select i1 %521, i1 %523, i1 false
  br i1 %524, label %525, label %529

525:                                              ; preds = %518
  %526 = load i8, ptr %520, align 1, !tbaa !11
  %527 = zext i8 %526 to i16
  %528 = or disjoint i16 %519, %527
  br label %529

529:                                              ; preds = %518, %525
  %530 = phi i16 [ %528, %525 ], [ %519, %518 ]
  %531 = sext i16 %508 to i32
  %532 = sext i16 %530 to i32
  %533 = sub nsw i32 %531, %532
  %534 = sitofp i32 %533 to float
  %535 = fdiv float %484, %534
  br i1 %491, label %536, label %540

536:                                              ; preds = %529
  %537 = load i8, ptr %487, align 1, !tbaa !11
  %538 = zext i8 %537 to i16
  %539 = shl nuw i16 %538, 8
  br label %540

540:                                              ; preds = %536, %529
  %541 = phi i16 [ %539, %536 ], [ 0, %529 ]
  br i1 %502, label %542, label %546

542:                                              ; preds = %540
  %543 = load i8, ptr %498, align 1, !tbaa !11
  %544 = zext i8 %543 to i16
  %545 = or disjoint i16 %541, %544
  br label %546

546:                                              ; preds = %542, %540
  %547 = phi i16 [ %545, %542 ], [ %541, %540 ]
  br i1 %513, label %548, label %552

548:                                              ; preds = %546
  %549 = load i8, ptr %509, align 1, !tbaa !11
  %550 = zext i8 %549 to i16
  %551 = shl nuw i16 %550, 8
  br label %552

552:                                              ; preds = %548, %546
  %553 = phi i16 [ %551, %548 ], [ 0, %546 ]
  br i1 %524, label %554, label %558

554:                                              ; preds = %552
  %555 = load i8, ptr %520, align 1, !tbaa !11
  %556 = zext i8 %555 to i16
  %557 = or disjoint i16 %553, %556
  br label %558

558:                                              ; preds = %554, %552
  %559 = phi i16 [ %557, %554 ], [ %553, %552 ]
  %560 = sext i16 %559 to i32
  %561 = icmp sgt i32 %159, -9
  %562 = add nsw i64 %485, 8
  %563 = icmp slt i64 %562, %2
  %564 = select i1 %561, i1 %563, i1 false
  br i1 %564, label %565, label %570

565:                                              ; preds = %558
  %566 = getelementptr inbounds nuw i8, ptr %486, i64 8
  %567 = load i8, ptr %566, align 1, !tbaa !11
  %568 = zext i8 %567 to i16
  %569 = shl nuw i16 %568, 8
  br label %570

570:                                              ; preds = %565, %558
  %571 = phi i16 [ %569, %565 ], [ 0, %558 ]
  %572 = icmp sgt i32 %159, -10
  %573 = add nsw i64 %485, 9
  %574 = icmp slt i64 %573, %2
  %575 = select i1 %572, i1 %574, i1 false
  br i1 %575, label %576, label %581

576:                                              ; preds = %570
  %577 = getelementptr inbounds nuw i8, ptr %486, i64 9
  %578 = load i8, ptr %577, align 1, !tbaa !11
  %579 = zext i8 %578 to i16
  %580 = or disjoint i16 %571, %579
  br label %581

581:                                              ; preds = %570, %576
  %582 = phi i16 [ %580, %576 ], [ %571, %570 ]
  %583 = fcmp ogt float %535, 0.000000e+00
  %584 = fcmp olt float %535, 6.553600e+04
  %585 = and i1 %583, %584
  br i1 %585, label %588, label %586

586:                                              ; preds = %581
  store i32 826689362, ptr %4, align 1
  %587 = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 1, ptr %587, align 1
  br label %3518

588:                                              ; preds = %581
  %589 = sitofp i16 %547 to float
  %590 = fmul nnan float %535, %589
  %591 = fpext float %590 to double
  %592 = tail call fastcc i32 @iceil(double noundef %591) #16
  %593 = sub nsw i32 0, %560
  %594 = sitofp i32 %593 to float
  %595 = fmul nnan float %535, %594
  %596 = fpext float %595 to double
  %597 = tail call fastcc i32 @iceil(double noundef %596) #16
  %598 = add i32 %597, %592
  %599 = sitofp i16 %582 to float
  %600 = fmul nnan float %535, %599
  %601 = fpext float %600 to double
  %602 = fcmp ogt double %601, f0x41DFFFFFFFC00000
  br i1 %602, label %608, label %603

603:                                              ; preds = %588
  %604 = fcmp olt float %600, f0xCF000000
  br i1 %604, label %608, label %605

605:                                              ; preds = %603
  %606 = fptosi float %600 to i64
  %607 = trunc i64 %606 to i32
  br label %608

608:                                              ; preds = %588, %603, %605
  %609 = phi i32 [ %607, %605 ], [ -2147483648, %603 ], [ 2147483647, %588 ]
  %610 = add i32 %598, %609
  %611 = tail call i64 @llvm.smin.i64(i64 %5, i64 1048576)
  %612 = add nsw i64 %611, -6788
  %613 = getelementptr inbounds nuw i8, ptr %486, i64 34
  %614 = getelementptr inbounds nuw i8, ptr %486, i64 35
  %615 = sext i32 %161 to i64
  %616 = getelementptr inbounds i8, ptr %0, i64 %615
  %617 = getelementptr inbounds nuw i8, ptr %4, i64 6788
  %618 = fdiv float 3.500000e-01, %535
  %619 = fmul float %618, %618
  %620 = fneg float %535
  %621 = insertelement <4 x float> poison, float %535, i64 0
  %622 = insertelement <4 x float> %621, float %620, i64 1
  %623 = shufflevector <4 x float> %622, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  br label %624

624:                                              ; preds = %608, %2506
  %625 = phi i64 [ 0, %608 ], [ %2511, %2506 ]
  %626 = phi i32 [ 0, %608 ], [ %2508, %2506 ]
  %627 = phi i32 [ 0, %608 ], [ %713, %2506 ]
  %628 = phi i32 [ 0, %608 ], [ %2510, %2506 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #15
  %629 = trunc i64 %625 to i32
  %630 = add i32 %629, 32
  %631 = call fastcc i32 @stbtt_FindGlyphIndex(ptr noundef nonnull readonly %20, i32 noundef range(i32 -2147483616, 127) %630) #16
  %632 = load ptr, ptr @stbtt__lo, align 8, !tbaa !8
  %633 = icmp uge ptr %613, %632
  %634 = load ptr, ptr @stbtt__hi, align 8
  %635 = icmp ult ptr %613, %634
  %636 = select i1 %633, i1 %635, i1 false
  br i1 %636, label %637, label %641

637:                                              ; preds = %624
  %638 = load i8, ptr %613, align 1, !tbaa !11
  %639 = zext i8 %638 to i16
  %640 = shl nuw i16 %639, 8
  br label %641

641:                                              ; preds = %637, %624
  %642 = phi i16 [ %640, %637 ], [ 0, %624 ]
  %643 = icmp uge ptr %614, %632
  %644 = icmp ult ptr %614, %634
  %645 = select i1 %643, i1 %644, i1 false
  br i1 %645, label %646, label %650

646:                                              ; preds = %641
  %647 = load i8, ptr %614, align 1, !tbaa !11
  %648 = zext i8 %647 to i16
  %649 = or disjoint i16 %642, %648
  br label %650

650:                                              ; preds = %646, %641
  %651 = phi i16 [ %649, %646 ], [ %642, %641 ]
  %652 = zext i16 %651 to i32
  %653 = icmp slt i32 %631, %652
  br i1 %653, label %654, label %675

654:                                              ; preds = %650
  %655 = shl i32 %631, 2
  %656 = sext i32 %655 to i64
  %657 = getelementptr inbounds i8, ptr %616, i64 %656
  %658 = icmp uge ptr %657, %632
  %659 = icmp ult ptr %657, %634
  %660 = select i1 %658, i1 %659, i1 false
  br i1 %660, label %661, label %665

661:                                              ; preds = %654
  %662 = load i8, ptr %657, align 1, !tbaa !11
  %663 = zext i8 %662 to i16
  %664 = shl nuw i16 %663, 8
  br label %665

665:                                              ; preds = %661, %654
  %666 = phi i16 [ %664, %661 ], [ 0, %654 ]
  %667 = getelementptr inbounds nuw i8, ptr %657, i64 1
  %668 = icmp uge ptr %667, %632
  %669 = icmp ult ptr %667, %634
  %670 = select i1 %668, i1 %669, i1 false
  br i1 %670, label %671, label %697

671:                                              ; preds = %665
  %672 = load i8, ptr %667, align 1, !tbaa !11
  %673 = zext i8 %672 to i16
  %674 = or disjoint i16 %666, %673
  br label %697

675:                                              ; preds = %650
  %676 = shl nuw nsw i32 %652, 2
  %677 = zext nneg i32 %676 to i64
  %678 = getelementptr i8, ptr %616, i64 %677
  %679 = getelementptr i8, ptr %678, i64 -4
  %680 = icmp uge ptr %679, %632
  %681 = icmp ult ptr %679, %634
  %682 = select i1 %680, i1 %681, i1 false
  br i1 %682, label %683, label %687

683:                                              ; preds = %675
  %684 = load i8, ptr %679, align 1, !tbaa !11
  %685 = zext i8 %684 to i16
  %686 = shl nuw i16 %685, 8
  br label %687

687:                                              ; preds = %683, %675
  %688 = phi i16 [ %686, %683 ], [ 0, %675 ]
  %689 = getelementptr i8, ptr %678, i64 -3
  %690 = icmp uge ptr %689, %632
  %691 = icmp ult ptr %689, %634
  %692 = select i1 %690, i1 %691, i1 false
  br i1 %692, label %693, label %697

693:                                              ; preds = %687
  %694 = load i8, ptr %689, align 1, !tbaa !11
  %695 = zext i8 %694 to i16
  %696 = or disjoint i16 %688, %695
  br label %697

697:                                              ; preds = %687, %693, %665, %671
  %698 = phi i16 [ %666, %665 ], [ %674, %671 ], [ %696, %693 ], [ %688, %687 ]
  call fastcc void @stbtt_GetGlyphBitmapBoxSubpixel(ptr noundef nonnull readonly %20, i32 noundef %631, float noundef %535, float noundef %535, ptr noundef nonnull %21, ptr noundef nonnull %22, ptr noundef nonnull %23, ptr noundef nonnull %24) #16
  %699 = load i32, ptr %23, align 4, !tbaa !23
  %700 = load i32, ptr %21, align 4, !tbaa !23
  %701 = sub i32 %699, %700
  %702 = load i32, ptr %24, align 4, !tbaa !23
  %703 = load i32, ptr %22, align 4, !tbaa !23
  %704 = sub i32 %702, %703
  %705 = call i32 @llvm.smax.i32(i32 %701, i32 0)
  %706 = call i32 @llvm.smax.i32(i32 %704, i32 0)
  %707 = icmp sgt i32 %701, 512
  br i1 %707, label %2513, label %708

708:                                              ; preds = %697
  %709 = add i32 %705, %626
  %710 = icmp sgt i32 %709, 512
  %711 = add nuw i32 %628, 1
  %712 = select i1 %710, i32 %711, i32 0
  %713 = add i32 %712, %627
  %714 = select i1 %710, i32 0, i32 %626
  %715 = add i32 %713, %706
  %716 = sext i32 %715 to i64
  %717 = shl nsw i64 %716, 9
  %718 = icmp sgt i64 %717, %612
  br i1 %718, label %2513, label %719

719:                                              ; preds = %708
  %720 = mul nuw nsw i64 %625, 28
  %721 = sitofp i16 %698 to float
  %722 = fmul nnan float %535, %721
  %723 = fpext float %722 to double
  %724 = fcmp ogt double %723, f0x41DFFFFFFFC00000
  br i1 %724, label %730, label %725

725:                                              ; preds = %719
  %726 = fcmp olt float %722, f0xCF000000
  br i1 %726, label %730, label %727

727:                                              ; preds = %725
  %728 = fptosi float %722 to i64
  %729 = sitofp i64 %728 to double
  br label %730

730:                                              ; preds = %727, %725, %719
  %731 = phi double [ %729, %727 ], [ f0xC1E0000000000000, %725 ], [ f0x41DFFFFFFFC00000, %719 ]
  %732 = fcmp olt double %731, %723
  %733 = fadd double %731, 1.000000e+00
  %734 = select i1 %732, double %733, double %731
  %735 = fcmp ogt double %734, f0x41DFFFFFFFC00000
  br i1 %735, label %741, label %736

736:                                              ; preds = %730
  %737 = fcmp olt double %734, f0xC1E0000000000000
  br i1 %737, label %741, label %738

738:                                              ; preds = %736
  %739 = fptosi double %734 to i64
  %740 = trunc i64 %739 to i32
  br label %741

741:                                              ; preds = %730, %736, %738
  %742 = phi i32 [ %740, %738 ], [ -2147483648, %736 ], [ 2147483647, %730 ]
  %743 = getelementptr inbounds nuw i8, ptr %4, i64 %720
  %744 = getelementptr inbounds nuw i8, ptr %743, i64 32
  store i32 %742, ptr %744, align 1
  %745 = getelementptr inbounds nuw i8, ptr %743, i64 36
  store i32 %700, ptr %745, align 1
  %746 = add i32 %703, %592
  %747 = getelementptr inbounds nuw i8, ptr %743, i64 40
  store i32 %746, ptr %747, align 1
  %748 = getelementptr inbounds nuw i8, ptr %743, i64 44
  store i32 %705, ptr %748, align 1
  %749 = getelementptr inbounds nuw i8, ptr %743, i64 48
  store i32 %706, ptr %749, align 1
  %750 = getelementptr inbounds nuw i8, ptr %743, i64 52
  store i32 %714, ptr %750, align 1
  %751 = getelementptr inbounds nuw i8, ptr %743, i64 56
  store i32 %713, ptr %751, align 1
  %752 = icmp sgt i32 %701, 0
  %753 = icmp sgt i32 %704, 0
  %754 = select i1 %752, i1 %753, i1 false
  br i1 %754, label %755, label %2506

755:                                              ; preds = %741
  %756 = sext i32 %713 to i64
  %757 = shl nsw i64 %756, 9
  %758 = getelementptr inbounds i8, ptr %617, i64 %757
  %759 = sext i32 %714 to i64
  %760 = getelementptr inbounds i8, ptr %758, i64 %759
  %761 = call fastcc i32 @stbtt_FindGlyphIndex(ptr noundef nonnull readonly %20, i32 noundef range(i32 -2147483616, 127) %630) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15
  %762 = call fastcc i32 @stbtt_GetGlyphShape(ptr noundef nonnull readonly %20, i32 noundef %761, ptr noundef %13) #16
  call fastcc void @stbtt_GetGlyphBitmapBoxSubpixel(ptr noundef nonnull readonly %20, i32 noundef %761, float noundef %535, float noundef %535, ptr noundef %11, ptr noundef %12, ptr noundef null, ptr noundef null) #16
  %763 = load ptr, ptr %13, align 8, !tbaa !33
  %764 = load i32, ptr %11, align 4, !tbaa !23
  %765 = load i32, ptr %12, align 4, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  %766 = icmp sgt i32 %762, 0
  br i1 %766, label %767, label %949

767:                                              ; preds = %755
  %768 = zext nneg i32 %762 to i64
  %769 = icmp ult i32 %762, 8
  br i1 %769, label %820, label %770

770:                                              ; preds = %767
  %771 = and i64 %768, 2147483640
  br label %772

772:                                              ; preds = %772, %770
  %773 = phi i64 [ 0, %770 ], [ %814, %772 ]
  %774 = phi <4 x i32> [ zeroinitializer, %770 ], [ %812, %772 ]
  %775 = phi <4 x i32> [ zeroinitializer, %770 ], [ %813, %772 ]
  %776 = getelementptr inbounds nuw [14 x i8], ptr %763, i64 %773
  %777 = getelementptr inbounds nuw [14 x i8], ptr %763, i64 %773
  %778 = getelementptr inbounds nuw [14 x i8], ptr %763, i64 %773
  %779 = getelementptr inbounds nuw [14 x i8], ptr %763, i64 %773
  %780 = getelementptr inbounds nuw [14 x i8], ptr %763, i64 %773
  %781 = getelementptr inbounds nuw [14 x i8], ptr %763, i64 %773
  %782 = getelementptr inbounds nuw [14 x i8], ptr %763, i64 %773
  %783 = getelementptr inbounds nuw [14 x i8], ptr %763, i64 %773
  %784 = getelementptr inbounds nuw i8, ptr %776, i64 12
  %785 = getelementptr inbounds nuw i8, ptr %777, i64 26
  %786 = getelementptr inbounds nuw i8, ptr %778, i64 40
  %787 = getelementptr inbounds nuw i8, ptr %779, i64 54
  %788 = getelementptr inbounds nuw i8, ptr %780, i64 68
  %789 = getelementptr inbounds nuw i8, ptr %781, i64 82
  %790 = getelementptr inbounds nuw i8, ptr %782, i64 96
  %791 = getelementptr inbounds nuw i8, ptr %783, i64 110
  %792 = load i8, ptr %784, align 2, !tbaa !34
  %793 = load i8, ptr %785, align 2, !tbaa !34
  %794 = load i8, ptr %786, align 2, !tbaa !34
  %795 = load i8, ptr %787, align 2, !tbaa !34
  %796 = insertelement <4 x i8> poison, i8 %792, i64 0
  %797 = insertelement <4 x i8> %796, i8 %793, i64 1
  %798 = insertelement <4 x i8> %797, i8 %794, i64 2
  %799 = insertelement <4 x i8> %798, i8 %795, i64 3
  %800 = load i8, ptr %788, align 2, !tbaa !34
  %801 = load i8, ptr %789, align 2, !tbaa !34
  %802 = load i8, ptr %790, align 2, !tbaa !34
  %803 = load i8, ptr %791, align 2, !tbaa !34
  %804 = insertelement <4 x i8> poison, i8 %800, i64 0
  %805 = insertelement <4 x i8> %804, i8 %801, i64 1
  %806 = insertelement <4 x i8> %805, i8 %802, i64 2
  %807 = insertelement <4 x i8> %806, i8 %803, i64 3
  %808 = icmp eq <4 x i8> %799, splat (i8 1)
  %809 = icmp eq <4 x i8> %807, splat (i8 1)
  %810 = zext <4 x i1> %808 to <4 x i32>
  %811 = zext <4 x i1> %809 to <4 x i32>
  %812 = add <4 x i32> %774, %810
  %813 = add <4 x i32> %775, %811
  %814 = add nuw i64 %773, 8
  %815 = icmp eq i64 %814, %771
  br i1 %815, label %816, label %772, !llvm.loop !37

816:                                              ; preds = %772
  %817 = add <4 x i32> %813, %812
  %818 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %817)
  %819 = icmp eq i64 %771, %768
  br i1 %819, label %834, label %820

820:                                              ; preds = %767, %816
  %821 = phi i64 [ 0, %767 ], [ %771, %816 ]
  %822 = phi i32 [ 0, %767 ], [ %818, %816 ]
  br label %823

823:                                              ; preds = %820, %823
  %824 = phi i64 [ %832, %823 ], [ %821, %820 ]
  %825 = phi i32 [ %831, %823 ], [ %822, %820 ]
  %826 = getelementptr inbounds nuw [14 x i8], ptr %763, i64 %824
  %827 = getelementptr inbounds nuw i8, ptr %826, i64 12
  %828 = load i8, ptr %827, align 2, !tbaa !34
  %829 = icmp eq i8 %828, 1
  %830 = zext i1 %829 to i32
  %831 = add i32 %825, %830
  %832 = add nuw nsw i64 %824, 1
  %833 = icmp eq i64 %832, %768
  br i1 %833, label %834, label %823, !llvm.loop !40

834:                                              ; preds = %823, %816
  %835 = phi i32 [ %818, %816 ], [ %831, %823 ]
  %836 = icmp eq i32 %835, 0
  br i1 %836, label %949, label %837

837:                                              ; preds = %834
  %838 = sext i32 %835 to i64
  %839 = shl nsw i64 %838, 2
  %840 = add nsw i64 %839, 12
  %841 = and i64 %840, -16
  %842 = load i64, ptr @arena_used, align 8, !tbaa !41
  %843 = sub i64 8388608, %842
  %844 = icmp ugt i64 %841, %843
  br i1 %844, label %949, label %845

845:                                              ; preds = %837
  %846 = getelementptr inbounds nuw i8, ptr @arena, i64 %842
  %847 = add i64 %842, %841
  store i64 %847, ptr @arena_used, align 8, !tbaa !41
  br label %848

848:                                              ; preds = %944, %845
  %849 = phi i32 [ 0, %845 ], [ %945, %944 ]
  %850 = phi i1 [ false, %845 ], [ true, %944 ]
  %851 = phi i1 [ true, %845 ], [ false, %944 ]
  %852 = phi i32 [ 0, %845 ], [ %940, %944 ]
  %853 = phi ptr [ null, %845 ], [ %867, %944 ]
  %854 = phi i64 [ %847, %845 ], [ %866, %944 ]
  br i1 %850, label %855, label %865

855:                                              ; preds = %848
  %856 = sext i32 %849 to i64
  %857 = shl nsw i64 %856, 3
  %858 = add nsw i64 %857, 8
  %859 = and i64 %858, -16
  %860 = sub i64 8388608, %854
  %861 = icmp ugt i64 %859, %860
  br i1 %861, label %949, label %862

862:                                              ; preds = %855
  %863 = getelementptr inbounds nuw i8, ptr @arena, i64 %854
  %864 = add i64 %854, %859
  store i64 %864, ptr @arena_used, align 8, !tbaa !41
  br label %865

865:                                              ; preds = %862, %848
  %866 = phi i64 [ %864, %862 ], [ %854, %848 ]
  %867 = phi ptr [ %863, %862 ], [ %853, %848 ]
  store i32 0, ptr %10, align 4, !tbaa !23
  %868 = icmp eq ptr %867, null
  br label %869

869:                                              ; preds = %938, %865
  %870 = phi i64 [ 0, %865 ], [ %942, %938 ]
  %871 = phi i32 [ %852, %865 ], [ %940, %938 ]
  %872 = phi i32 [ -1, %865 ], [ %939, %938 ]
  %873 = phi <2 x float> [ zeroinitializer, %865 ], [ %941, %938 ]
  %874 = getelementptr inbounds nuw [14 x i8], ptr %763, i64 %870
  %875 = getelementptr inbounds nuw i8, ptr %874, i64 12
  %876 = load i8, ptr %875, align 2, !tbaa !34
  switch i8 %876, label %938 [
    i8 1, label %877
    i8 2, label %892
    i8 3, label %900
    i8 4, label %916
  ]

877:                                              ; preds = %869
  %878 = icmp sgt i32 %872, -1
  %879 = load i32, ptr %10, align 4, !tbaa !23
  br i1 %878, label %880, label %884

880:                                              ; preds = %877
  %881 = sub i32 %879, %871
  %882 = zext nneg i32 %872 to i64
  %883 = getelementptr inbounds nuw [4 x i8], ptr %846, i64 %882
  store i32 %881, ptr %883, align 4, !tbaa !23
  br label %884

884:                                              ; preds = %880, %877
  %885 = add i32 %872, 1
  %886 = load <2 x i16>, ptr %874, align 2, !tbaa !43
  %887 = sitofp <2 x i16> %886 to <2 x float>
  %888 = add i32 %879, 1
  store i32 %888, ptr %10, align 4, !tbaa !23
  br i1 %868, label %938, label %889

889:                                              ; preds = %884
  %890 = sext i32 %879 to i64
  %891 = getelementptr inbounds [8 x i8], ptr %867, i64 %890
  store <2 x float> %887, ptr %891, align 4, !tbaa !44
  br label %938

892:                                              ; preds = %869
  %893 = load <2 x i16>, ptr %874, align 2, !tbaa !43
  %894 = sitofp <2 x i16> %893 to <2 x float>
  %895 = load i32, ptr %10, align 4, !tbaa !23
  %896 = add i32 %895, 1
  store i32 %896, ptr %10, align 4, !tbaa !23
  br i1 %868, label %938, label %897

897:                                              ; preds = %892
  %898 = sext i32 %895 to i64
  %899 = getelementptr inbounds [8 x i8], ptr %867, i64 %898
  store <2 x float> %894, ptr %899, align 4, !tbaa !44
  br label %938

900:                                              ; preds = %869
  %901 = getelementptr inbounds nuw i8, ptr %874, i64 4
  %902 = load i16, ptr %901, align 2, !tbaa !46
  %903 = sitofp i16 %902 to float
  %904 = getelementptr inbounds nuw i8, ptr %874, i64 6
  %905 = load i16, ptr %904, align 2, !tbaa !47
  %906 = sitofp i16 %905 to float
  %907 = load i16, ptr %874, align 2, !tbaa !48
  %908 = sitofp i16 %907 to float
  %909 = getelementptr inbounds nuw i8, ptr %874, i64 2
  %910 = load i16, ptr %909, align 2, !tbaa !49
  %911 = sitofp i16 %910 to float
  %912 = extractelement <2 x float> %873, i64 0
  %913 = extractelement <2 x float> %873, i64 1
  call fastcc void @stbtt__tesselate_curve(ptr noundef %867, ptr noundef %10, float noundef %912, float noundef %913, float noundef %903, float noundef %906, float noundef %908, float noundef %911, float noundef %619, i32 noundef 0) #16
  %914 = load <2 x i16>, ptr %874, align 2, !tbaa !43
  %915 = sitofp <2 x i16> %914 to <2 x float>
  br label %938

916:                                              ; preds = %869
  %917 = getelementptr inbounds nuw i8, ptr %874, i64 4
  %918 = load i16, ptr %917, align 2, !tbaa !46
  %919 = sitofp i16 %918 to float
  %920 = getelementptr inbounds nuw i8, ptr %874, i64 6
  %921 = load i16, ptr %920, align 2, !tbaa !47
  %922 = sitofp i16 %921 to float
  %923 = getelementptr inbounds nuw i8, ptr %874, i64 8
  %924 = load i16, ptr %923, align 2, !tbaa !50
  %925 = sitofp i16 %924 to float
  %926 = getelementptr inbounds nuw i8, ptr %874, i64 10
  %927 = load i16, ptr %926, align 2, !tbaa !51
  %928 = sitofp i16 %927 to float
  %929 = load i16, ptr %874, align 2, !tbaa !48
  %930 = sitofp i16 %929 to float
  %931 = getelementptr inbounds nuw i8, ptr %874, i64 2
  %932 = load i16, ptr %931, align 2, !tbaa !49
  %933 = sitofp i16 %932 to float
  %934 = extractelement <2 x float> %873, i64 0
  %935 = extractelement <2 x float> %873, i64 1
  call fastcc void @stbtt__tesselate_cubic(ptr noundef %867, ptr noundef %10, float noundef %934, float noundef %935, float noundef %919, float noundef %922, float noundef %925, float noundef %928, float noundef %930, float noundef %933, float noundef %619, i32 noundef 0) #16
  %936 = load <2 x i16>, ptr %874, align 2, !tbaa !43
  %937 = sitofp <2 x i16> %936 to <2 x float>
  br label %938

938:                                              ; preds = %916, %900, %897, %892, %889, %884, %869
  %939 = phi i32 [ %872, %869 ], [ %872, %916 ], [ %885, %889 ], [ %872, %900 ], [ %885, %884 ], [ %872, %892 ], [ %872, %897 ]
  %940 = phi i32 [ %871, %869 ], [ %871, %916 ], [ %879, %889 ], [ %871, %900 ], [ %879, %884 ], [ %871, %892 ], [ %871, %897 ]
  %941 = phi <2 x float> [ %873, %869 ], [ %937, %916 ], [ %887, %889 ], [ %915, %900 ], [ %887, %884 ], [ %894, %892 ], [ %894, %897 ]
  %942 = add nuw nsw i64 %870, 1
  %943 = icmp eq i64 %942, %768
  br i1 %943, label %944, label %869, !llvm.loop !52

944:                                              ; preds = %938
  %945 = load i32, ptr %10, align 4, !tbaa !23
  %946 = sext i32 %939 to i64
  %947 = sub i32 %945, %940
  %948 = getelementptr inbounds [4 x i8], ptr %846, i64 %946
  store i32 %947, ptr %948, align 4, !tbaa !23
  br i1 %851, label %848, label %950, !llvm.loop !53

949:                                              ; preds = %855, %837, %834, %755
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  br label %2505

950:                                              ; preds = %944
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  br i1 %868, label %2505, label %951

951:                                              ; preds = %950
  %952 = icmp sgt i32 %835, 0
  br i1 %952, label %953, label %994

953:                                              ; preds = %951
  %954 = zext nneg i32 %835 to i64
  %955 = icmp ult i32 %835, 8
  br i1 %955, label %974, label %956

956:                                              ; preds = %953
  %957 = and i64 %954, 2147483640
  br label %958

958:                                              ; preds = %958, %956
  %959 = phi i64 [ 0, %956 ], [ %968, %958 ]
  %960 = phi <4 x i32> [ zeroinitializer, %956 ], [ %966, %958 ]
  %961 = phi <4 x i32> [ zeroinitializer, %956 ], [ %967, %958 ]
  %962 = getelementptr inbounds nuw [4 x i8], ptr %846, i64 %959
  %963 = getelementptr inbounds nuw i8, ptr %962, i64 16
  %964 = load <4 x i32>, ptr %962, align 4, !tbaa !23
  %965 = load <4 x i32>, ptr %963, align 4, !tbaa !23
  %966 = add <4 x i32> %964, %960
  %967 = add <4 x i32> %965, %961
  %968 = add nuw i64 %959, 8
  %969 = icmp eq i64 %968, %957
  br i1 %969, label %970, label %958, !llvm.loop !54

970:                                              ; preds = %958
  %971 = add <4 x i32> %967, %966
  %972 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %971)
  %973 = icmp eq i64 %957, %954
  br i1 %973, label %985, label %974

974:                                              ; preds = %953, %970
  %975 = phi i64 [ 0, %953 ], [ %957, %970 ]
  %976 = phi i32 [ 0, %953 ], [ %972, %970 ]
  br label %977

977:                                              ; preds = %974, %977
  %978 = phi i64 [ %983, %977 ], [ %975, %974 ]
  %979 = phi i32 [ %982, %977 ], [ %976, %974 ]
  %980 = getelementptr inbounds nuw [4 x i8], ptr %846, i64 %978
  %981 = load i32, ptr %980, align 4, !tbaa !23
  %982 = add i32 %981, %979
  %983 = add nuw nsw i64 %978, 1
  %984 = icmp eq i64 %983, %954
  br i1 %984, label %985, label %977, !llvm.loop !55

985:                                              ; preds = %977, %970
  %986 = phi i32 [ %972, %970 ], [ %982, %977 ]
  %987 = add i32 %986, 1
  %988 = sext i32 %987 to i64
  %989 = mul nsw i64 %988, 20
  %990 = add nsw i64 %989, 12
  %991 = and i64 %990, -16
  %992 = sub i64 8388608, %866
  %993 = icmp ugt i64 %991, %992
  br i1 %993, label %2505, label %1000

994:                                              ; preds = %951
  %995 = add i64 %866, -8388577
  %996 = icmp ult i64 %995, 32
  br i1 %996, label %2505, label %997

997:                                              ; preds = %994
  %998 = getelementptr inbounds nuw i8, ptr @arena, i64 %866
  %999 = add i64 %866, 32
  store i64 %999, ptr @arena_used, align 8, !tbaa !41
  br label %1091

1000:                                             ; preds = %985
  %1001 = getelementptr inbounds nuw i8, ptr @arena, i64 %866
  %1002 = add i64 %991, %866
  store i64 %1002, ptr @arena_used, align 8, !tbaa !41
  br label %1003

1003:                                             ; preds = %1053, %1000
  %1004 = phi i64 [ 0, %1000 ], [ %1055, %1053 ]
  %1005 = phi i32 [ 0, %1000 ], [ %1054, %1053 ]
  %1006 = phi i32 [ 0, %1000 ], [ %1011, %1053 ]
  %1007 = sext i32 %1006 to i64
  %1008 = getelementptr inbounds [8 x i8], ptr %867, i64 %1007
  %1009 = getelementptr inbounds nuw [4 x i8], ptr %846, i64 %1004
  %1010 = load i32, ptr %1009, align 4, !tbaa !23
  %1011 = add i32 %1010, %1006
  %1012 = icmp sgt i32 %1010, 0
  br i1 %1012, label %1013, label %1053

1013:                                             ; preds = %1003
  %1014 = add nsw i32 %1010, -1
  %1015 = zext nneg i32 %1014 to i64
  %1016 = getelementptr inbounds nuw [8 x i8], ptr %1008, i64 %1015
  %1017 = getelementptr inbounds nuw i8, ptr %1016, i64 4
  %1018 = load float, ptr %1017, align 4, !tbaa !56
  br label %1019

1019:                                             ; preds = %1046, %1013
  %1020 = phi i32 [ %1010, %1013 ], [ %1047, %1046 ]
  %1021 = phi float [ %1018, %1013 ], [ %1027, %1046 ]
  %1022 = phi i64 [ 0, %1013 ], [ %1050, %1046 ]
  %1023 = phi i32 [ %1005, %1013 ], [ %1048, %1046 ]
  %1024 = phi i32 [ %1014, %1013 ], [ %1049, %1046 ]
  %1025 = getelementptr inbounds nuw [8 x i8], ptr %1008, i64 %1022
  %1026 = getelementptr inbounds nuw i8, ptr %1025, i64 4
  %1027 = load float, ptr %1026, align 4, !tbaa !56
  %1028 = fcmp oeq float %1021, %1027
  br i1 %1028, label %1046, label %1029

1029:                                             ; preds = %1019
  %1030 = sext i32 %1023 to i64
  %1031 = getelementptr inbounds [20 x i8], ptr %1001, i64 %1030
  %1032 = getelementptr inbounds nuw i8, ptr %1031, i64 16
  %1033 = fcmp ogt float %1021, %1027
  %1034 = zext i1 %1033 to i32
  store i32 %1034, ptr %1032, align 4, !tbaa !58
  %1035 = sext i32 %1024 to i64
  %1036 = select i1 %1033, i64 %1035, i64 %1022
  %1037 = getelementptr inbounds [8 x i8], ptr %1008, i64 %1036
  %1038 = select i1 %1033, i64 %1022, i64 %1035
  %1039 = getelementptr inbounds [8 x i8], ptr %1008, i64 %1038
  %1040 = load <2 x float>, ptr %1037, align 4, !tbaa !44
  %1041 = load <2 x float>, ptr %1039, align 4, !tbaa !44
  %1042 = shufflevector <2 x float> %1040, <2 x float> %1041, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %1043 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %1042, <4 x float> %623, <4 x float> zeroinitializer)
  store <4 x float> %1043, ptr %1031, align 4, !tbaa !44
  %1044 = add i32 %1023, 1
  %1045 = load i32, ptr %1009, align 4, !tbaa !23
  br label %1046

1046:                                             ; preds = %1029, %1019
  %1047 = phi i32 [ %1045, %1029 ], [ %1020, %1019 ]
  %1048 = phi i32 [ %1044, %1029 ], [ %1023, %1019 ]
  %1049 = trunc i64 %1022 to i32
  %1050 = add nuw nsw i64 %1022, 1
  %1051 = sext i32 %1047 to i64
  %1052 = icmp slt i64 %1050, %1051
  br i1 %1052, label %1019, label %1053, !llvm.loop !60

1053:                                             ; preds = %1046, %1003
  %1054 = phi i32 [ %1005, %1003 ], [ %1048, %1046 ]
  %1055 = add nuw nsw i64 %1004, 1
  %1056 = icmp eq i64 %1055, %954
  br i1 %1056, label %1057, label %1003, !llvm.loop !61

1057:                                             ; preds = %1053
  call fastcc void @stbtt__sort_edges_quicksort(ptr noundef nonnull %1001, i32 noundef %1054) #16
  %1058 = icmp sgt i32 %1054, 1
  br i1 %1058, label %1059, label %1091

1059:                                             ; preds = %1057
  %1060 = zext nneg i32 %1054 to i64
  br label %1061

1061:                                             ; preds = %1088, %1059
  %1062 = phi i64 [ 1, %1059 ], [ %1089, %1088 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %1063 = getelementptr inbounds nuw [20 x i8], ptr %1001, i64 %1062
  %1064 = getelementptr inbounds nuw i8, ptr %1063, i64 4
  %1065 = load float, ptr %1064, align 4, !tbaa !44
  %1066 = load <2 x float>, ptr %1063, align 4, !tbaa !44
  %1067 = getelementptr inbounds nuw i8, ptr %1063, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %9, ptr noundef nonnull align 4 dereferenceable(12) %1067, i64 12, i1 false), !tbaa.struct !62
  br label %1068

1068:                                             ; preds = %1074, %1061
  %1069 = phi i64 [ %1062, %1061 ], [ %1076, %1074 ]
  %1070 = getelementptr [20 x i8], ptr %1001, i64 %1069
  %1071 = getelementptr i8, ptr %1070, i64 -16
  %1072 = load float, ptr %1071, align 4, !tbaa !63
  %1073 = fcmp olt float %1065, %1072
  br i1 %1073, label %1074, label %1078

1074:                                             ; preds = %1068
  %1075 = getelementptr i8, ptr %1070, i64 -20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %1070, ptr noundef nonnull align 4 dereferenceable(20) %1075, i64 20, i1 false), !tbaa.struct !64
  %1076 = add nsw i64 %1069, -1
  %1077 = icmp sgt i64 %1069, 1
  br i1 %1077, label %1068, label %1080

1078:                                             ; preds = %1068
  %1079 = trunc nuw nsw i64 %1069 to i32
  br label %1080

1080:                                             ; preds = %1074, %1078
  %1081 = phi i32 [ %1079, %1078 ], [ 0, %1074 ]
  %1082 = zext i32 %1081 to i64
  %1083 = icmp eq i64 %1062, %1082
  br i1 %1083, label %1088, label %1084

1084:                                             ; preds = %1080
  %1085 = sext i32 %1081 to i64
  %1086 = getelementptr inbounds [20 x i8], ptr %1001, i64 %1085
  store <2 x float> %1066, ptr %1086, align 4, !tbaa !44
  %1087 = getelementptr inbounds nuw i8, ptr %1086, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %1087, ptr noundef nonnull align 8 dereferenceable(12) %9, i64 12, i1 false), !tbaa.struct !62
  br label %1088

1088:                                             ; preds = %1084, %1080
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %1089 = add nuw nsw i64 %1062, 1
  %1090 = icmp eq i64 %1089, %1060
  br i1 %1090, label %1091, label %1061, !llvm.loop !65

1091:                                             ; preds = %1088, %1057, %997
  %1092 = phi i32 [ 0, %997 ], [ %1054, %1057 ], [ %1054, %1088 ]
  %1093 = phi ptr [ %998, %997 ], [ %1001, %1057 ], [ %1001, %1088 ]
  %1094 = phi i64 [ %999, %997 ], [ %1002, %1057 ], [ %1002, %1088 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr null, ptr %7, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  %1095 = icmp sgt i32 %701, 64
  br i1 %1095, label %1096, label %1106

1096:                                             ; preds = %1091
  %1097 = shl nuw nsw i32 %705, 3
  %1098 = add nuw nsw i32 %1097, 16
  %1099 = and i32 %1098, 16368
  %1100 = zext nneg i32 %1099 to i64
  %1101 = sub i64 8388608, %1094
  %1102 = icmp ult i64 %1101, %1100
  br i1 %1102, label %2504, label %1103

1103:                                             ; preds = %1096
  %1104 = getelementptr inbounds nuw i8, ptr @arena, i64 %1094
  %1105 = add i64 %1094, %1100
  store i64 %1105, ptr @arena_used, align 8, !tbaa !41
  br label %1106

1106:                                             ; preds = %1103, %1091
  %1107 = phi ptr [ %1104, %1103 ], [ %8, %1091 ]
  %1108 = getelementptr inbounds nuw i8, ptr @arena, i64 %866
  %1109 = zext nneg i32 %705 to i64
  %1110 = getelementptr inbounds nuw [4 x i8], ptr %1107, i64 %1109
  %1111 = add i32 %765, %706
  %1112 = sitofp i32 %1111 to float
  %1113 = fadd float %1112, 1.000000e+00
  %1114 = sext i32 %1092 to i64
  %1115 = getelementptr inbounds [20 x i8], ptr %1108, i64 %1114
  %1116 = getelementptr inbounds nuw i8, ptr %1115, i64 4
  store float %1113, ptr %1116, align 4, !tbaa !63
  %1117 = sitofp i32 %764 to float
  %1118 = icmp ne i32 %765, 0
  %1119 = getelementptr inbounds nuw i8, ptr %1110, i64 4
  %1120 = shl nuw nsw i32 %705, 2
  %1121 = zext nneg i32 %1120 to i64
  %1122 = add nuw nsw i32 %1120, 4
  %1123 = zext nneg i32 %1122 to i64
  %1124 = uitofp nneg i32 %705 to float
  br label %1125

1125:                                             ; preds = %2500, %1106
  %1126 = phi ptr [ null, %1106 ], [ %1241, %2500 ]
  %1127 = phi ptr [ %1093, %1106 ], [ %1240, %2500 ]
  %1128 = phi i32 [ %765, %1106 ], [ %2501, %2500 ]
  %1129 = phi i32 [ 0, %1106 ], [ %2502, %2500 ]
  %1130 = phi ptr [ null, %1106 ], [ %1239, %2500 ]
  %1131 = phi i32 [ 0, %1106 ], [ %1238, %2500 ]
  %1132 = phi ptr [ null, %1106 ], [ %1237, %2500 ]
  %1133 = sitofp i32 %1128 to float
  %1134 = fadd float %1133, 1.000000e+00
  %1135 = call ptr @memset(ptr noundef nonnull %1107, i32 noundef 0, i64 noundef %1121) #17
  %1136 = call ptr @memset(ptr noundef nonnull %1110, i32 noundef 0, i64 noundef %1123) #17
  %1137 = icmp eq ptr %1126, null
  br i1 %1137, label %1138, label %1147

1138:                                             ; preds = %1157, %1125
  %1139 = phi ptr [ %1132, %1125 ], [ %1158, %1157 ]
  %1140 = getelementptr inbounds nuw i8, ptr %1127, i64 4
  %1141 = load float, ptr %1140, align 4, !tbaa !63
  %1142 = fcmp ugt float %1141, %1134
  br i1 %1142, label %1236, label %1143

1143:                                             ; preds = %1138
  %1144 = load i64, ptr @arena_used, align 8
  %1145 = icmp eq i32 %1129, 0
  %1146 = and i1 %1118, %1145
  br label %1162

1147:                                             ; preds = %1125, %1157
  %1148 = phi ptr [ %1160, %1157 ], [ %1126, %1125 ]
  %1149 = phi ptr [ %1159, %1157 ], [ %7, %1125 ]
  %1150 = phi ptr [ %1158, %1157 ], [ %1132, %1125 ]
  %1151 = getelementptr inbounds nuw i8, ptr %1148, i64 28
  %1152 = load float, ptr %1151, align 4, !tbaa !68
  %1153 = fcmp ugt float %1152, %1133
  br i1 %1153, label %1157, label %1154

1154:                                             ; preds = %1147
  %1155 = load ptr, ptr %1148, align 8, !tbaa !70
  store ptr %1155, ptr %1149, align 8, !tbaa !66
  %1156 = getelementptr inbounds nuw i8, ptr %1148, i64 20
  store float 0.000000e+00, ptr %1156, align 4, !tbaa !71
  store ptr %1150, ptr %1148, align 8, !tbaa !33
  br label %1157

1157:                                             ; preds = %1154, %1147
  %1158 = phi ptr [ %1150, %1147 ], [ %1148, %1154 ]
  %1159 = phi ptr [ %1148, %1147 ], [ %1149, %1154 ]
  %1160 = load ptr, ptr %1159, align 8, !tbaa !66
  %1161 = icmp eq ptr %1160, null
  br i1 %1161, label %1138, label %1147, !llvm.loop !72

1162:                                             ; preds = %1227, %1143
  %1163 = phi float [ %1141, %1143 ], [ %1234, %1227 ]
  %1164 = phi ptr [ %1127, %1143 ], [ %1232, %1227 ]
  %1165 = phi ptr [ %1130, %1143 ], [ %1231, %1227 ]
  %1166 = phi i32 [ %1131, %1143 ], [ %1230, %1227 ]
  %1167 = phi ptr [ %1139, %1143 ], [ %1229, %1227 ]
  %1168 = phi i64 [ %1144, %1143 ], [ %1228, %1227 ]
  %1169 = getelementptr inbounds nuw i8, ptr %1164, i64 12
  %1170 = load float, ptr %1169, align 4, !tbaa !73
  %1171 = fcmp une float %1163, %1170
  br i1 %1171, label %1172, label %1227

1172:                                             ; preds = %1162
  %1173 = icmp eq ptr %1167, null
  br i1 %1173, label %1176, label %1174

1174:                                             ; preds = %1172
  %1175 = load ptr, ptr %1167, align 8, !tbaa !33
  br label %1194

1176:                                             ; preds = %1172
  %1177 = icmp eq i32 %1166, 0
  br i1 %1177, label %1180, label %1178

1178:                                             ; preds = %1176
  %1179 = add nsw i32 %1166, -1
  br label %1186

1180:                                             ; preds = %1176
  %1181 = add i64 %1168, -8362993
  %1182 = icmp ult i64 %1181, 25616
  br i1 %1182, label %1227, label %1183

1183:                                             ; preds = %1180
  %1184 = getelementptr inbounds nuw i8, ptr @arena, i64 %1168
  %1185 = add i64 %1168, 25616
  store i64 %1185, ptr @arena_used, align 8, !tbaa !41
  store ptr %1165, ptr %1184, align 8, !tbaa !74
  br label %1186

1186:                                             ; preds = %1183, %1178
  %1187 = phi i64 [ %1185, %1183 ], [ %1168, %1178 ]
  %1188 = phi ptr [ %1184, %1183 ], [ %1165, %1178 ]
  %1189 = phi i32 [ 799, %1183 ], [ %1179, %1178 ]
  %1190 = getelementptr inbounds nuw i8, ptr %1188, i64 8
  %1191 = zext nneg i32 %1189 to i64
  %1192 = shl nuw nsw i64 %1191, 5
  %1193 = getelementptr inbounds nuw i8, ptr %1190, i64 %1192
  br label %1194

1194:                                             ; preds = %1186, %1174
  %1195 = phi i64 [ %1187, %1186 ], [ %1168, %1174 ]
  %1196 = phi ptr [ null, %1186 ], [ %1175, %1174 ]
  %1197 = phi i32 [ %1189, %1186 ], [ %1166, %1174 ]
  %1198 = phi ptr [ %1188, %1186 ], [ %1165, %1174 ]
  %1199 = phi ptr [ %1193, %1186 ], [ %1167, %1174 ]
  %1200 = getelementptr inbounds nuw i8, ptr %1164, i64 8
  %1201 = load float, ptr %1200, align 4, !tbaa !77
  %1202 = load float, ptr %1164, align 4, !tbaa !78
  %1203 = fsub float %1201, %1202
  %1204 = fsub float %1170, %1163
  %1205 = fdiv float %1203, %1204
  %1206 = getelementptr inbounds nuw i8, ptr %1199, i64 12
  store float %1205, ptr %1206, align 4, !tbaa !79
  %1207 = fcmp une float %1205, 0.000000e+00
  %1208 = fdiv float 1.000000e+00, %1205
  %1209 = select i1 %1207, float %1208, float 0.000000e+00
  %1210 = getelementptr inbounds nuw i8, ptr %1199, i64 16
  store float %1209, ptr %1210, align 8, !tbaa !80
  %1211 = fsub float %1133, %1163
  %1212 = call float @llvm.fmuladd.f32(float %1205, float %1211, float %1202)
  %1213 = getelementptr inbounds nuw i8, ptr %1199, i64 8
  %1214 = fsub float %1212, %1117
  store float %1214, ptr %1213, align 8, !tbaa !81
  %1215 = getelementptr inbounds nuw i8, ptr %1164, i64 16
  %1216 = load i32, ptr %1215, align 4, !tbaa !58
  %1217 = icmp eq i32 %1216, 0
  %1218 = select i1 %1217, float -1.000000e+00, float 1.000000e+00
  %1219 = getelementptr inbounds nuw i8, ptr %1199, i64 20
  store float %1218, ptr %1219, align 4, !tbaa !71
  %1220 = getelementptr inbounds nuw i8, ptr %1199, i64 24
  store float %1163, ptr %1220, align 8, !tbaa !82
  %1221 = getelementptr inbounds nuw i8, ptr %1199, i64 28
  store float %1170, ptr %1221, align 4, !tbaa !68
  store ptr null, ptr %1199, align 8, !tbaa !70
  %1222 = fcmp olt float %1170, %1133
  %1223 = select i1 %1146, i1 %1222, i1 false
  br i1 %1223, label %1224, label %1225

1224:                                             ; preds = %1194
  store float %1133, ptr %1221, align 4, !tbaa !68
  br label %1225

1225:                                             ; preds = %1224, %1194
  %1226 = load ptr, ptr %7, align 8, !tbaa !66
  store ptr %1226, ptr %1199, align 8, !tbaa !70
  store ptr %1199, ptr %7, align 8, !tbaa !66
  br label %1227

1227:                                             ; preds = %1225, %1180, %1162
  %1228 = phi i64 [ %1168, %1162 ], [ %1195, %1225 ], [ %1168, %1180 ]
  %1229 = phi ptr [ %1167, %1162 ], [ %1196, %1225 ], [ null, %1180 ]
  %1230 = phi i32 [ %1166, %1162 ], [ %1197, %1225 ], [ 0, %1180 ]
  %1231 = phi ptr [ %1165, %1162 ], [ %1198, %1225 ], [ %1165, %1180 ]
  %1232 = getelementptr inbounds nuw i8, ptr %1164, i64 20
  %1233 = getelementptr inbounds nuw i8, ptr %1164, i64 24
  %1234 = load float, ptr %1233, align 4, !tbaa !63
  %1235 = fcmp ugt float %1234, %1134
  br i1 %1235, label %1236, label %1162, !llvm.loop !83

1236:                                             ; preds = %1227, %1138
  %1237 = phi ptr [ %1139, %1138 ], [ %1229, %1227 ]
  %1238 = phi i32 [ %1131, %1138 ], [ %1230, %1227 ]
  %1239 = phi ptr [ %1130, %1138 ], [ %1231, %1227 ]
  %1240 = phi ptr [ %1127, %1138 ], [ %1232, %1227 ]
  %1241 = load ptr, ptr %7, align 8, !tbaa !66
  %1242 = icmp eq ptr %1241, null
  br i1 %1242, label %2466, label %1243

1243:                                             ; preds = %1236
  %1244 = fcmp oeq float %1134, %1133
  %1245 = fsub float %1134, %1133
  br label %1246

1246:                                             ; preds = %2463, %1243
  %1247 = phi ptr [ %1241, %1243 ], [ %2464, %2463 ]
  %1248 = getelementptr inbounds nuw i8, ptr %1247, i64 12
  %1249 = load float, ptr %1248, align 4, !tbaa !79
  %1250 = fcmp oeq float %1249, 0.000000e+00
  %1251 = getelementptr inbounds nuw i8, ptr %1247, i64 8
  %1252 = load float, ptr %1251, align 8, !tbaa !81
  br i1 %1250, label %1253, label %1437

1253:                                             ; preds = %1246
  %1254 = fcmp olt float %1252, %1124
  br i1 %1254, label %1255, label %2463

1255:                                             ; preds = %1253
  %1256 = fcmp ult float %1252, 0.000000e+00
  br i1 %1256, label %1383, label %1257

1257:                                             ; preds = %1255
  %1258 = fptosi float %1252 to i32
  br i1 %1244, label %2463, label %1259

1259:                                             ; preds = %1257
  %1260 = getelementptr inbounds nuw i8, ptr %1247, i64 28
  %1261 = load float, ptr %1260, align 4, !tbaa !68
  %1262 = fcmp olt float %1261, %1133
  br i1 %1262, label %1321, label %1263

1263:                                             ; preds = %1259
  %1264 = getelementptr inbounds nuw i8, ptr %1247, i64 24
  %1265 = load float, ptr %1264, align 8, !tbaa !82
  %1266 = fcmp olt float %1134, %1265
  br i1 %1266, label %1321, label %1267

1267:                                             ; preds = %1263
  %1268 = fcmp ogt float %1265, %1133
  br i1 %1268, label %1269, label %1275

1269:                                             ; preds = %1267
  %1270 = fsub float %1252, %1252
  %1271 = fsub float %1265, %1133
  %1272 = fmul float %1270, %1271
  %1273 = fdiv float %1272, %1245
  %1274 = fadd float %1252, %1273
  br label %1275

1275:                                             ; preds = %1269, %1267
  %1276 = phi float [ %1274, %1269 ], [ %1252, %1267 ]
  %1277 = phi float [ %1265, %1269 ], [ %1133, %1267 ]
  %1278 = fcmp ogt float %1134, %1261
  br i1 %1278, label %1279, label %1286

1279:                                             ; preds = %1275
  %1280 = fsub float %1252, %1276
  %1281 = fsub float %1261, %1134
  %1282 = fmul float %1281, %1280
  %1283 = fsub float %1134, %1277
  %1284 = fdiv float %1282, %1283
  %1285 = fadd float %1252, %1284
  br label %1286

1286:                                             ; preds = %1279, %1275
  %1287 = phi float [ %1285, %1279 ], [ %1252, %1275 ]
  %1288 = phi float [ %1261, %1279 ], [ %1134, %1275 ]
  %1289 = sitofp i32 %1258 to float
  %1290 = fcmp ugt float %1276, %1289
  %1291 = fcmp ugt float %1287, %1289
  %1292 = select i1 %1290, i1 true, i1 %1291
  br i1 %1292, label %1301, label %1293

1293:                                             ; preds = %1286
  %1294 = getelementptr inbounds nuw i8, ptr %1247, i64 20
  %1295 = load float, ptr %1294, align 4, !tbaa !71
  %1296 = fsub float %1288, %1277
  %1297 = sext i32 %1258 to i64
  %1298 = getelementptr inbounds [4 x i8], ptr %1107, i64 %1297
  %1299 = load float, ptr %1298, align 4, !tbaa !44
  %1300 = call float @llvm.fmuladd.f32(float %1295, float %1296, float %1299)
  store float %1300, ptr %1298, align 4, !tbaa !44
  br label %1321

1301:                                             ; preds = %1286
  %1302 = add i32 %1258, 1
  %1303 = sitofp i32 %1302 to float
  %1304 = fcmp ult float %1276, %1303
  %1305 = fcmp ult float %1287, %1303
  %1306 = select i1 %1304, i1 true, i1 %1305
  br i1 %1306, label %1307, label %1321

1307:                                             ; preds = %1301
  %1308 = getelementptr inbounds nuw i8, ptr %1247, i64 20
  %1309 = load float, ptr %1308, align 4, !tbaa !71
  %1310 = fsub float %1288, %1277
  %1311 = fmul float %1310, %1309
  %1312 = fsub float %1276, %1289
  %1313 = fsub float %1287, %1289
  %1314 = fadd float %1312, %1313
  %1315 = fmul float %1314, 5.000000e-01
  %1316 = fsub float 1.000000e+00, %1315
  %1317 = sext i32 %1258 to i64
  %1318 = getelementptr inbounds [4 x i8], ptr %1107, i64 %1317
  %1319 = load float, ptr %1318, align 4, !tbaa !44
  %1320 = call float @llvm.fmuladd.f32(float %1311, float %1316, float %1319)
  store float %1320, ptr %1318, align 4, !tbaa !44
  br label %1321

1321:                                             ; preds = %1307, %1301, %1293, %1263, %1259
  %1322 = add i32 %1258, 1
  %1323 = load float, ptr %1260, align 4, !tbaa !68
  %1324 = fcmp olt float %1323, %1133
  br i1 %1324, label %2463, label %1325

1325:                                             ; preds = %1321
  %1326 = getelementptr inbounds nuw i8, ptr %1247, i64 24
  %1327 = load float, ptr %1326, align 8, !tbaa !82
  %1328 = fcmp olt float %1134, %1327
  br i1 %1328, label %2463, label %1329

1329:                                             ; preds = %1325
  %1330 = fcmp ogt float %1327, %1133
  br i1 %1330, label %1331, label %1337

1331:                                             ; preds = %1329
  %1332 = fsub float %1252, %1252
  %1333 = fsub float %1327, %1133
  %1334 = fmul float %1332, %1333
  %1335 = fdiv float %1334, %1245
  %1336 = fadd float %1252, %1335
  br label %1337

1337:                                             ; preds = %1331, %1329
  %1338 = phi float [ %1336, %1331 ], [ %1252, %1329 ]
  %1339 = phi float [ %1327, %1331 ], [ %1133, %1329 ]
  %1340 = fcmp ogt float %1134, %1323
  br i1 %1340, label %1341, label %1348

1341:                                             ; preds = %1337
  %1342 = fsub float %1252, %1338
  %1343 = fsub float %1323, %1134
  %1344 = fmul float %1343, %1342
  %1345 = fsub float %1134, %1339
  %1346 = fdiv float %1344, %1345
  %1347 = fadd float %1252, %1346
  br label %1348

1348:                                             ; preds = %1341, %1337
  %1349 = phi float [ %1347, %1341 ], [ %1252, %1337 ]
  %1350 = phi float [ %1323, %1341 ], [ %1134, %1337 ]
  %1351 = sitofp i32 %1322 to float
  %1352 = fcmp ugt float %1338, %1351
  %1353 = fcmp ugt float %1349, %1351
  %1354 = select i1 %1352, i1 true, i1 %1353
  br i1 %1354, label %1363, label %1355

1355:                                             ; preds = %1348
  %1356 = getelementptr inbounds nuw i8, ptr %1247, i64 20
  %1357 = load float, ptr %1356, align 4, !tbaa !71
  %1358 = fsub float %1350, %1339
  %1359 = sext i32 %1322 to i64
  %1360 = getelementptr inbounds [4 x i8], ptr %1110, i64 %1359
  %1361 = load float, ptr %1360, align 4, !tbaa !44
  %1362 = call float @llvm.fmuladd.f32(float %1357, float %1358, float %1361)
  store float %1362, ptr %1360, align 4, !tbaa !44
  br label %2463

1363:                                             ; preds = %1348
  %1364 = add i32 %1258, 2
  %1365 = sitofp i32 %1364 to float
  %1366 = fcmp ult float %1338, %1365
  %1367 = fcmp ult float %1349, %1365
  %1368 = select i1 %1366, i1 true, i1 %1367
  br i1 %1368, label %1369, label %2463

1369:                                             ; preds = %1363
  %1370 = getelementptr inbounds nuw i8, ptr %1247, i64 20
  %1371 = load float, ptr %1370, align 4, !tbaa !71
  %1372 = fsub float %1350, %1339
  %1373 = fmul float %1372, %1371
  %1374 = fsub float %1338, %1351
  %1375 = fsub float %1349, %1351
  %1376 = fadd float %1374, %1375
  %1377 = fmul float %1376, 5.000000e-01
  %1378 = fsub float 1.000000e+00, %1377
  %1379 = sext i32 %1322 to i64
  %1380 = getelementptr inbounds [4 x i8], ptr %1110, i64 %1379
  %1381 = load float, ptr %1380, align 4, !tbaa !44
  %1382 = call float @llvm.fmuladd.f32(float %1373, float %1378, float %1381)
  store float %1382, ptr %1380, align 4, !tbaa !44
  br label %2463

1383:                                             ; preds = %1255
  br i1 %1244, label %2463, label %1384

1384:                                             ; preds = %1383
  %1385 = getelementptr inbounds nuw i8, ptr %1247, i64 28
  %1386 = load float, ptr %1385, align 4, !tbaa !68
  %1387 = fcmp olt float %1386, %1133
  br i1 %1387, label %2463, label %1388

1388:                                             ; preds = %1384
  %1389 = getelementptr inbounds nuw i8, ptr %1247, i64 24
  %1390 = load float, ptr %1389, align 8, !tbaa !82
  %1391 = fcmp olt float %1134, %1390
  br i1 %1391, label %2463, label %1392

1392:                                             ; preds = %1388
  %1393 = fcmp ogt float %1390, %1133
  br i1 %1393, label %1394, label %1400

1394:                                             ; preds = %1392
  %1395 = fsub float %1252, %1252
  %1396 = fsub float %1390, %1133
  %1397 = fmul float %1395, %1396
  %1398 = fdiv float %1397, %1245
  %1399 = fadd float %1252, %1398
  br label %1400

1400:                                             ; preds = %1394, %1392
  %1401 = phi float [ %1399, %1394 ], [ %1252, %1392 ]
  %1402 = phi float [ %1390, %1394 ], [ %1133, %1392 ]
  %1403 = fcmp ogt float %1134, %1386
  br i1 %1403, label %1404, label %1411

1404:                                             ; preds = %1400
  %1405 = fsub float %1252, %1401
  %1406 = fsub float %1386, %1134
  %1407 = fmul float %1406, %1405
  %1408 = fsub float %1134, %1402
  %1409 = fdiv float %1407, %1408
  %1410 = fadd float %1252, %1409
  br label %1411

1411:                                             ; preds = %1404, %1400
  %1412 = phi float [ %1410, %1404 ], [ %1252, %1400 ]
  %1413 = phi float [ %1386, %1404 ], [ %1134, %1400 ]
  %1414 = fcmp ugt float %1401, 0.000000e+00
  %1415 = fcmp ugt float %1412, 0.000000e+00
  %1416 = select i1 %1414, i1 true, i1 %1415
  br i1 %1416, label %1423, label %1417

1417:                                             ; preds = %1411
  %1418 = getelementptr inbounds nuw i8, ptr %1247, i64 20
  %1419 = load float, ptr %1418, align 4, !tbaa !71
  %1420 = fsub float %1413, %1402
  %1421 = load float, ptr %1110, align 4, !tbaa !44
  %1422 = call float @llvm.fmuladd.f32(float %1419, float %1420, float %1421)
  store float %1422, ptr %1110, align 4, !tbaa !44
  br label %2463

1423:                                             ; preds = %1411
  %1424 = fcmp ult float %1401, 1.000000e+00
  %1425 = fcmp ult float %1412, 1.000000e+00
  %1426 = select i1 %1424, i1 true, i1 %1425
  br i1 %1426, label %1427, label %2463

1427:                                             ; preds = %1423
  %1428 = getelementptr inbounds nuw i8, ptr %1247, i64 20
  %1429 = load float, ptr %1428, align 4, !tbaa !71
  %1430 = fsub float %1413, %1402
  %1431 = fmul float %1430, %1429
  %1432 = fadd float %1401, %1412
  %1433 = fmul float %1432, 5.000000e-01
  %1434 = fsub float 1.000000e+00, %1433
  %1435 = load float, ptr %1110, align 4, !tbaa !44
  %1436 = call float @llvm.fmuladd.f32(float %1431, float %1434, float %1435)
  store float %1436, ptr %1110, align 4, !tbaa !44
  br label %2463

1437:                                             ; preds = %1246
  %1438 = fadd float %1249, %1252
  %1439 = getelementptr inbounds nuw i8, ptr %1247, i64 16
  %1440 = load float, ptr %1439, align 8, !tbaa !80
  %1441 = getelementptr inbounds nuw i8, ptr %1247, i64 24
  %1442 = load float, ptr %1441, align 8, !tbaa !82
  %1443 = fcmp ogt float %1442, %1133
  %1444 = fsub float %1442, %1133
  %1445 = call float @llvm.fmuladd.f32(float %1249, float %1444, float %1252)
  %1446 = select i1 %1443, float %1442, float %1133
  %1447 = select i1 %1443, float %1445, float %1252
  %1448 = getelementptr inbounds nuw i8, ptr %1247, i64 28
  %1449 = load float, ptr %1448, align 4, !tbaa !68
  %1450 = fcmp olt float %1449, %1134
  %1451 = fsub float %1449, %1133
  %1452 = call float @llvm.fmuladd.f32(float %1249, float %1451, float %1252)
  %1453 = select i1 %1450, float %1449, float %1134
  %1454 = select i1 %1450, float %1452, float %1438
  %1455 = fcmp oge float %1447, 0.000000e+00
  %1456 = fcmp oge float %1454, 0.000000e+00
  %1457 = select i1 %1455, i1 %1456, i1 false
  br i1 %1457, label %1458, label %1585

1458:                                             ; preds = %1437
  %1459 = fcmp olt float %1447, %1124
  %1460 = fcmp olt float %1454, %1124
  %1461 = select i1 %1459, i1 %1460, i1 false
  br i1 %1461, label %1462, label %1585

1462:                                             ; preds = %1458
  %1463 = fptosi float %1447 to i32
  %1464 = fptosi float %1454 to i32
  %1465 = icmp eq i32 %1463, %1464
  br i1 %1465, label %1466, label %1485

1466:                                             ; preds = %1462
  %1467 = fsub float %1453, %1446
  %1468 = getelementptr inbounds nuw i8, ptr %1247, i64 20
  %1469 = load float, ptr %1468, align 4, !tbaa !71
  %1470 = fmul float %1467, %1469
  %1471 = sitofp i32 %1463 to float
  %1472 = fadd float %1471, 1.000000e+00
  %1473 = fsub float %1472, %1447
  %1474 = fsub float %1472, %1454
  %1475 = fadd float %1473, %1474
  %1476 = fmul float %1475, 5.000000e-01
  %1477 = fmul float %1476, %1470
  %1478 = sext i32 %1463 to i64
  %1479 = getelementptr inbounds [4 x i8], ptr %1107, i64 %1478
  %1480 = load float, ptr %1479, align 4, !tbaa !44
  %1481 = fadd float %1480, %1477
  store float %1481, ptr %1479, align 4, !tbaa !44
  %1482 = getelementptr inbounds [4 x i8], ptr %1119, i64 %1478
  %1483 = load float, ptr %1482, align 4, !tbaa !44
  %1484 = fadd float %1470, %1483
  store float %1484, ptr %1482, align 4, !tbaa !44
  br label %2463

1485:                                             ; preds = %1462
  %1486 = fcmp ogt float %1447, %1454
  br i1 %1486, label %1487, label %1493

1487:                                             ; preds = %1485
  %1488 = fsub float %1133, %1446
  %1489 = fadd float %1134, %1488
  %1490 = fsub float %1133, %1453
  %1491 = fadd float %1134, %1490
  %1492 = fneg float %1440
  br label %1493

1493:                                             ; preds = %1487, %1485
  %1494 = phi i32 [ %1463, %1487 ], [ %1464, %1485 ]
  %1495 = phi i32 [ %1464, %1487 ], [ %1463, %1485 ]
  %1496 = phi float [ %1492, %1487 ], [ %1440, %1485 ]
  %1497 = phi float [ %1489, %1487 ], [ %1453, %1485 ]
  %1498 = phi float [ %1491, %1487 ], [ %1446, %1485 ]
  %1499 = phi float [ %1447, %1487 ], [ %1454, %1485 ]
  %1500 = phi float [ %1454, %1487 ], [ %1447, %1485 ]
  %1501 = phi float [ %1438, %1487 ], [ %1252, %1485 ]
  %1502 = add i32 %1495, 1
  %1503 = sitofp i32 %1502 to float
  %1504 = fsub float %1503, %1501
  %1505 = call float @llvm.fmuladd.f32(float %1496, float %1504, float %1133)
  %1506 = sitofp i32 %1494 to float
  %1507 = fsub float %1506, %1501
  %1508 = call float @llvm.fmuladd.f32(float %1496, float %1507, float %1133)
  %1509 = fcmp ogt float %1505, %1134
  %1510 = select i1 %1509, float %1134, float %1505
  %1511 = getelementptr inbounds nuw i8, ptr %1247, i64 20
  %1512 = load float, ptr %1511, align 4, !tbaa !71
  %1513 = fsub float %1510, %1498
  %1514 = fmul float %1512, %1513
  %1515 = fsub nnan float %1503, %1500
  %1516 = fmul float %1515, %1514
  %1517 = fmul float %1516, 5.000000e-01
  %1518 = sext i32 %1495 to i64
  %1519 = getelementptr inbounds [4 x i8], ptr %1107, i64 %1518
  %1520 = load float, ptr %1519, align 4, !tbaa !44
  %1521 = fadd float %1520, %1517
  store float %1521, ptr %1519, align 4, !tbaa !44
  %1522 = fcmp ogt float %1508, %1134
  %1523 = fsub float %1134, %1510
  %1524 = sub i32 %1494, %1502
  %1525 = sitofp i32 %1524 to float
  %1526 = fdiv float %1523, %1525
  %1527 = select i1 %1522, float %1134, float %1508
  %1528 = select i1 %1522, float %1526, float %1496
  %1529 = fmul float %1512, %1528
  %1530 = icmp slt i32 %1502, %1494
  br i1 %1530, label %1531, label %1567

1531:                                             ; preds = %1493
  %1532 = fmul float %1529, 5.000000e-01
  %1533 = sext i32 %1502 to i64
  %1534 = add i32 %1494, -2
  %1535 = sub i32 %1495, %1494
  %1536 = and i32 %1535, 1
  %1537 = icmp eq i32 %1536, 0
  br i1 %1537, label %1538, label %1545

1538:                                             ; preds = %1531
  %1539 = fadd float %1532, %1514
  %1540 = getelementptr inbounds [4 x i8], ptr %1107, i64 %1533
  %1541 = load float, ptr %1540, align 4, !tbaa !44
  %1542 = fadd float %1539, %1541
  store float %1542, ptr %1540, align 4, !tbaa !44
  %1543 = fadd float %1529, %1514
  %1544 = add nsw i64 %1533, 1
  br label %1545

1545:                                             ; preds = %1538, %1531
  %1546 = phi float [ poison, %1531 ], [ %1543, %1538 ]
  %1547 = phi i64 [ %1533, %1531 ], [ %1544, %1538 ]
  %1548 = phi float [ %1514, %1531 ], [ %1543, %1538 ]
  %1549 = icmp eq i32 %1534, %1495
  br i1 %1549, label %1567, label %1550

1550:                                             ; preds = %1545, %1550
  %1551 = phi i64 [ %1564, %1550 ], [ %1547, %1545 ]
  %1552 = phi float [ %1563, %1550 ], [ %1548, %1545 ]
  %1553 = fadd float %1532, %1552
  %1554 = getelementptr inbounds [4 x i8], ptr %1107, i64 %1551
  %1555 = load float, ptr %1554, align 4, !tbaa !44
  %1556 = fadd float %1553, %1555
  store float %1556, ptr %1554, align 4, !tbaa !44
  %1557 = fadd float %1529, %1552
  %1558 = fadd float %1532, %1557
  %1559 = getelementptr [4 x i8], ptr %1107, i64 %1551
  %1560 = getelementptr i8, ptr %1559, i64 4
  %1561 = load float, ptr %1560, align 4, !tbaa !44
  %1562 = fadd float %1558, %1561
  store float %1562, ptr %1560, align 4, !tbaa !44
  %1563 = fadd float %1529, %1557
  %1564 = add nsw i64 %1551, 2
  %1565 = trunc i64 %1564 to i32
  %1566 = icmp eq i32 %1494, %1565
  br i1 %1566, label %1567, label %1550, !llvm.loop !84

1567:                                             ; preds = %1545, %1550, %1493
  %1568 = phi float [ %1514, %1493 ], [ %1546, %1545 ], [ %1563, %1550 ]
  %1569 = fsub float %1497, %1527
  %1570 = fadd float %1506, 1.000000e+00
  %1571 = fsub nnan float %1570, %1506
  %1572 = fsub float %1570, %1499
  %1573 = fadd float %1571, %1572
  %1574 = fmul float %1573, 5.000000e-01
  %1575 = fmul float %1574, %1569
  %1576 = call float @llvm.fmuladd.f32(float %1512, float %1575, float %1568)
  %1577 = sext i32 %1494 to i64
  %1578 = getelementptr inbounds [4 x i8], ptr %1107, i64 %1577
  %1579 = load float, ptr %1578, align 4, !tbaa !44
  %1580 = fadd float %1576, %1579
  store float %1580, ptr %1578, align 4, !tbaa !44
  %1581 = fsub float %1497, %1498
  %1582 = getelementptr inbounds [4 x i8], ptr %1119, i64 %1577
  %1583 = load float, ptr %1582, align 4, !tbaa !44
  %1584 = call float @llvm.fmuladd.f32(float %1512, float %1581, float %1583)
  store float %1584, ptr %1582, align 4, !tbaa !44
  br label %2463

1585:                                             ; preds = %1458, %1437
  %1586 = fsub float %1438, %1252
  %1587 = getelementptr inbounds nuw i8, ptr %1247, i64 20
  %1588 = insertelement <2 x float> poison, float %1252, i64 0
  %1589 = shufflevector <2 x float> %1588, <2 x float> poison, <2 x i32> zeroinitializer
  %1590 = insertelement <2 x float> poison, float %1249, i64 0
  %1591 = shufflevector <2 x float> %1590, <2 x float> poison, <2 x i32> zeroinitializer
  br label %1592

1592:                                             ; preds = %2461, %1585
  %1593 = phi i64 [ 0, %1585 ], [ %1594, %2461 ]
  %1594 = add nuw nsw i64 %1593, 1
  %1595 = trunc nuw nsw i64 %1594 to i32
  %1596 = trunc nuw nsw i64 %1593 to i32
  %1597 = uitofp nneg i32 %1595 to float
  %1598 = uitofp nneg i32 %1596 to float
  %1599 = insertelement <2 x float> poison, float %1598, i64 0
  %1600 = insertelement <2 x float> %1599, float %1597, i64 1
  %1601 = fsub <2 x float> %1600, %1589
  %1602 = fdiv <2 x float> %1601, %1591
  %1603 = extractelement <2 x float> %1602, i64 0
  %1604 = fadd float %1603, %1133
  %1605 = extractelement <2 x float> %1602, i64 1
  %1606 = fadd float %1605, %1133
  %1607 = fcmp olt float %1252, %1598
  %1608 = fcmp ogt float %1438, %1597
  %1609 = and i1 %1607, %1608
  br i1 %1609, label %1610, label %1778

1610:                                             ; preds = %1592
  %1611 = fcmp oeq float %1604, %1133
  br i1 %1611, label %1666, label %1612

1612:                                             ; preds = %1610
  %1613 = load float, ptr %1448, align 4, !tbaa !68
  %1614 = fcmp olt float %1613, %1133
  br i1 %1614, label %1666, label %1615

1615:                                             ; preds = %1612
  %1616 = load float, ptr %1441, align 8, !tbaa !82
  %1617 = fcmp olt float %1604, %1616
  br i1 %1617, label %1666, label %1618

1618:                                             ; preds = %1615
  %1619 = fcmp ogt float %1616, %1133
  br i1 %1619, label %1620, label %1627

1620:                                             ; preds = %1618
  %1621 = fsub float %1616, %1133
  %1622 = extractelement <2 x float> %1601, i64 0
  %1623 = fmul float %1622, %1621
  %1624 = fsub float %1604, %1133
  %1625 = fdiv float %1623, %1624
  %1626 = fadd float %1252, %1625
  br label %1627

1627:                                             ; preds = %1620, %1618
  %1628 = phi float [ %1626, %1620 ], [ %1252, %1618 ]
  %1629 = phi float [ %1616, %1620 ], [ %1133, %1618 ]
  %1630 = fcmp ogt float %1604, %1613
  br i1 %1630, label %1631, label %1638

1631:                                             ; preds = %1627
  %1632 = fsub float %1598, %1628
  %1633 = fsub float %1613, %1604
  %1634 = fmul float %1633, %1632
  %1635 = fsub float %1604, %1629
  %1636 = fdiv float %1634, %1635
  %1637 = fadd float %1636, %1598
  br label %1638

1638:                                             ; preds = %1631, %1627
  %1639 = phi float [ %1637, %1631 ], [ %1598, %1627 ]
  %1640 = phi float [ %1613, %1631 ], [ %1604, %1627 ]
  %1641 = fcmp ugt float %1628, %1598
  %1642 = fcmp ugt float %1639, %1598
  %1643 = select i1 %1641, i1 true, i1 %1642
  br i1 %1643, label %1650, label %1644

1644:                                             ; preds = %1638
  %1645 = load float, ptr %1587, align 4, !tbaa !71
  %1646 = fsub float %1640, %1629
  %1647 = getelementptr inbounds nuw [4 x i8], ptr %1107, i64 %1593
  %1648 = load float, ptr %1647, align 4, !tbaa !44
  %1649 = call float @llvm.fmuladd.f32(float %1645, float %1646, float %1648)
  store float %1649, ptr %1647, align 4, !tbaa !44
  br label %1666

1650:                                             ; preds = %1638
  %1651 = fcmp ult float %1628, %1597
  %1652 = fcmp ult float %1639, %1597
  %1653 = select i1 %1651, i1 true, i1 %1652
  br i1 %1653, label %1654, label %1666

1654:                                             ; preds = %1650
  %1655 = load float, ptr %1587, align 4, !tbaa !71
  %1656 = fsub float %1640, %1629
  %1657 = fmul float %1656, %1655
  %1658 = fsub float %1628, %1598
  %1659 = fsub float %1639, %1598
  %1660 = fadd float %1658, %1659
  %1661 = fmul float %1660, 5.000000e-01
  %1662 = fsub float 1.000000e+00, %1661
  %1663 = getelementptr inbounds nuw [4 x i8], ptr %1107, i64 %1593
  %1664 = load float, ptr %1663, align 4, !tbaa !44
  %1665 = call float @llvm.fmuladd.f32(float %1657, float %1662, float %1664)
  store float %1665, ptr %1663, align 4, !tbaa !44
  br label %1666

1666:                                             ; preds = %1654, %1650, %1644, %1615, %1612, %1610
  %1667 = fcmp oeq float %1604, %1606
  br i1 %1667, label %1722, label %1668

1668:                                             ; preds = %1666
  %1669 = load float, ptr %1448, align 4, !tbaa !68
  %1670 = fcmp ogt float %1604, %1669
  br i1 %1670, label %1722, label %1671

1671:                                             ; preds = %1668
  %1672 = load float, ptr %1441, align 8, !tbaa !82
  %1673 = fcmp olt float %1606, %1672
  br i1 %1673, label %1722, label %1674

1674:                                             ; preds = %1671
  %1675 = fcmp olt float %1604, %1672
  br i1 %1675, label %1676, label %1683

1676:                                             ; preds = %1674
  %1677 = fsub nnan float %1597, %1598
  %1678 = fsub float %1672, %1604
  %1679 = fmul float %1677, %1678
  %1680 = fsub float %1606, %1604
  %1681 = fdiv float %1679, %1680
  %1682 = fadd float %1681, %1598
  br label %1683

1683:                                             ; preds = %1676, %1674
  %1684 = phi float [ %1682, %1676 ], [ %1598, %1674 ]
  %1685 = phi float [ %1672, %1676 ], [ %1604, %1674 ]
  %1686 = fcmp ogt float %1606, %1669
  br i1 %1686, label %1687, label %1694

1687:                                             ; preds = %1683
  %1688 = fsub float %1597, %1684
  %1689 = fsub float %1669, %1606
  %1690 = fmul float %1689, %1688
  %1691 = fsub float %1606, %1685
  %1692 = fdiv float %1690, %1691
  %1693 = fadd float %1692, %1597
  br label %1694

1694:                                             ; preds = %1687, %1683
  %1695 = phi float [ %1693, %1687 ], [ %1597, %1683 ]
  %1696 = phi float [ %1669, %1687 ], [ %1606, %1683 ]
  %1697 = fcmp ugt float %1684, %1598
  %1698 = fcmp ugt float %1695, %1598
  %1699 = select i1 %1697, i1 true, i1 %1698
  br i1 %1699, label %1706, label %1700

1700:                                             ; preds = %1694
  %1701 = load float, ptr %1587, align 4, !tbaa !71
  %1702 = fsub float %1696, %1685
  %1703 = getelementptr inbounds nuw [4 x i8], ptr %1107, i64 %1593
  %1704 = load float, ptr %1703, align 4, !tbaa !44
  %1705 = call float @llvm.fmuladd.f32(float %1701, float %1702, float %1704)
  store float %1705, ptr %1703, align 4, !tbaa !44
  br label %1722

1706:                                             ; preds = %1694
  %1707 = fcmp ult float %1684, %1597
  %1708 = fcmp ult float %1695, %1597
  %1709 = select i1 %1707, i1 true, i1 %1708
  br i1 %1709, label %1710, label %1722

1710:                                             ; preds = %1706
  %1711 = load float, ptr %1587, align 4, !tbaa !71
  %1712 = fsub float %1696, %1685
  %1713 = fmul float %1712, %1711
  %1714 = fsub float %1684, %1598
  %1715 = fsub float %1695, %1598
  %1716 = fadd float %1714, %1715
  %1717 = fmul float %1716, 5.000000e-01
  %1718 = fsub float 1.000000e+00, %1717
  %1719 = getelementptr inbounds nuw [4 x i8], ptr %1107, i64 %1593
  %1720 = load float, ptr %1719, align 4, !tbaa !44
  %1721 = call float @llvm.fmuladd.f32(float %1713, float %1718, float %1720)
  store float %1721, ptr %1719, align 4, !tbaa !44
  br label %1722

1722:                                             ; preds = %1710, %1706, %1700, %1671, %1668, %1666
  %1723 = fcmp oeq float %1606, %1134
  br i1 %1723, label %2461, label %1724

1724:                                             ; preds = %1722
  %1725 = load float, ptr %1448, align 4, !tbaa !68
  %1726 = fcmp ogt float %1606, %1725
  br i1 %1726, label %2461, label %1727

1727:                                             ; preds = %1724
  %1728 = load float, ptr %1441, align 8, !tbaa !82
  %1729 = fcmp olt float %1134, %1728
  br i1 %1729, label %2461, label %1730

1730:                                             ; preds = %1727
  %1731 = fcmp olt float %1606, %1728
  br i1 %1731, label %1732, label %1739

1732:                                             ; preds = %1730
  %1733 = fsub float %1438, %1597
  %1734 = fsub float %1728, %1606
  %1735 = fmul float %1733, %1734
  %1736 = fsub float %1134, %1606
  %1737 = fdiv float %1735, %1736
  %1738 = fadd float %1737, %1597
  br label %1739

1739:                                             ; preds = %1732, %1730
  %1740 = phi float [ %1738, %1732 ], [ %1597, %1730 ]
  %1741 = phi float [ %1728, %1732 ], [ %1606, %1730 ]
  %1742 = fcmp ogt float %1134, %1725
  br i1 %1742, label %1743, label %1750

1743:                                             ; preds = %1739
  %1744 = fsub float %1438, %1740
  %1745 = fsub float %1725, %1134
  %1746 = fmul float %1745, %1744
  %1747 = fsub float %1134, %1741
  %1748 = fdiv float %1746, %1747
  %1749 = fadd float %1438, %1748
  br label %1750

1750:                                             ; preds = %1743, %1739
  %1751 = phi float [ %1749, %1743 ], [ %1438, %1739 ]
  %1752 = phi float [ %1725, %1743 ], [ %1134, %1739 ]
  %1753 = fcmp ugt float %1740, %1598
  %1754 = fcmp ugt float %1751, %1598
  %1755 = select i1 %1753, i1 true, i1 %1754
  br i1 %1755, label %1762, label %1756

1756:                                             ; preds = %1750
  %1757 = load float, ptr %1587, align 4, !tbaa !71
  %1758 = fsub float %1752, %1741
  %1759 = getelementptr inbounds nuw [4 x i8], ptr %1107, i64 %1593
  %1760 = load float, ptr %1759, align 4, !tbaa !44
  %1761 = call float @llvm.fmuladd.f32(float %1757, float %1758, float %1760)
  store float %1761, ptr %1759, align 4, !tbaa !44
  br label %2461

1762:                                             ; preds = %1750
  %1763 = fcmp ult float %1740, %1597
  %1764 = fcmp ult float %1751, %1597
  %1765 = select i1 %1763, i1 true, i1 %1764
  br i1 %1765, label %1766, label %2461

1766:                                             ; preds = %1762
  %1767 = load float, ptr %1587, align 4, !tbaa !71
  %1768 = fsub float %1752, %1741
  %1769 = fmul float %1768, %1767
  %1770 = fsub float %1740, %1598
  %1771 = fsub float %1751, %1598
  %1772 = fadd float %1770, %1771
  %1773 = fmul float %1772, 5.000000e-01
  %1774 = fsub float 1.000000e+00, %1773
  %1775 = getelementptr inbounds nuw [4 x i8], ptr %1107, i64 %1593
  %1776 = load float, ptr %1775, align 4, !tbaa !44
  %1777 = call float @llvm.fmuladd.f32(float %1769, float %1774, float %1776)
  store float %1777, ptr %1775, align 4, !tbaa !44
  br label %2461

1778:                                             ; preds = %1592
  %1779 = fcmp olt float %1438, %1598
  %1780 = fcmp ogt float %1252, %1597
  %1781 = and i1 %1779, %1780
  br i1 %1781, label %1782, label %1950

1782:                                             ; preds = %1778
  %1783 = fcmp oeq float %1606, %1133
  br i1 %1783, label %1838, label %1784

1784:                                             ; preds = %1782
  %1785 = load float, ptr %1448, align 4, !tbaa !68
  %1786 = fcmp olt float %1785, %1133
  br i1 %1786, label %1838, label %1787

1787:                                             ; preds = %1784
  %1788 = load float, ptr %1441, align 8, !tbaa !82
  %1789 = fcmp olt float %1606, %1788
  br i1 %1789, label %1838, label %1790

1790:                                             ; preds = %1787
  %1791 = fcmp ogt float %1788, %1133
  br i1 %1791, label %1792, label %1799

1792:                                             ; preds = %1790
  %1793 = fsub float %1788, %1133
  %1794 = extractelement <2 x float> %1601, i64 1
  %1795 = fmul float %1794, %1793
  %1796 = fsub float %1606, %1133
  %1797 = fdiv float %1795, %1796
  %1798 = fadd float %1252, %1797
  br label %1799

1799:                                             ; preds = %1792, %1790
  %1800 = phi float [ %1798, %1792 ], [ %1252, %1790 ]
  %1801 = phi float [ %1788, %1792 ], [ %1133, %1790 ]
  %1802 = fcmp ogt float %1606, %1785
  br i1 %1802, label %1803, label %1810

1803:                                             ; preds = %1799
  %1804 = fsub float %1597, %1800
  %1805 = fsub float %1785, %1606
  %1806 = fmul float %1805, %1804
  %1807 = fsub float %1606, %1801
  %1808 = fdiv float %1806, %1807
  %1809 = fadd float %1808, %1597
  br label %1810

1810:                                             ; preds = %1803, %1799
  %1811 = phi float [ %1809, %1803 ], [ %1597, %1799 ]
  %1812 = phi float [ %1785, %1803 ], [ %1606, %1799 ]
  %1813 = fcmp ugt float %1800, %1598
  %1814 = fcmp ugt float %1811, %1598
  %1815 = select i1 %1813, i1 true, i1 %1814
  br i1 %1815, label %1822, label %1816

1816:                                             ; preds = %1810
  %1817 = load float, ptr %1587, align 4, !tbaa !71
  %1818 = fsub float %1812, %1801
  %1819 = getelementptr inbounds nuw [4 x i8], ptr %1107, i64 %1593
  %1820 = load float, ptr %1819, align 4, !tbaa !44
  %1821 = call float @llvm.fmuladd.f32(float %1817, float %1818, float %1820)
  store float %1821, ptr %1819, align 4, !tbaa !44
  br label %1838

1822:                                             ; preds = %1810
  %1823 = fcmp ult float %1800, %1597
  %1824 = fcmp ult float %1811, %1597
  %1825 = select i1 %1823, i1 true, i1 %1824
  br i1 %1825, label %1826, label %1838

1826:                                             ; preds = %1822
  %1827 = load float, ptr %1587, align 4, !tbaa !71
  %1828 = fsub float %1812, %1801
  %1829 = fmul float %1828, %1827
  %1830 = fsub float %1800, %1598
  %1831 = fsub float %1811, %1598
  %1832 = fadd float %1830, %1831
  %1833 = fmul float %1832, 5.000000e-01
  %1834 = fsub float 1.000000e+00, %1833
  %1835 = getelementptr inbounds nuw [4 x i8], ptr %1107, i64 %1593
  %1836 = load float, ptr %1835, align 4, !tbaa !44
  %1837 = call float @llvm.fmuladd.f32(float %1829, float %1834, float %1836)
  store float %1837, ptr %1835, align 4, !tbaa !44
  br label %1838

1838:                                             ; preds = %1826, %1822, %1816, %1787, %1784, %1782
  %1839 = fcmp oeq float %1606, %1604
  br i1 %1839, label %1894, label %1840

1840:                                             ; preds = %1838
  %1841 = load float, ptr %1448, align 4, !tbaa !68
  %1842 = fcmp ogt float %1606, %1841
  br i1 %1842, label %1894, label %1843

1843:                                             ; preds = %1840
  %1844 = load float, ptr %1441, align 8, !tbaa !82
  %1845 = fcmp olt float %1604, %1844
  br i1 %1845, label %1894, label %1846

1846:                                             ; preds = %1843
  %1847 = fcmp olt float %1606, %1844
  br i1 %1847, label %1848, label %1855

1848:                                             ; preds = %1846
  %1849 = fsub nnan float %1598, %1597
  %1850 = fsub float %1844, %1606
  %1851 = fmul float %1849, %1850
  %1852 = fsub float %1604, %1606
  %1853 = fdiv float %1851, %1852
  %1854 = fadd float %1853, %1597
  br label %1855

1855:                                             ; preds = %1848, %1846
  %1856 = phi float [ %1854, %1848 ], [ %1597, %1846 ]
  %1857 = phi float [ %1844, %1848 ], [ %1606, %1846 ]
  %1858 = fcmp ogt float %1604, %1841
  br i1 %1858, label %1859, label %1866

1859:                                             ; preds = %1855
  %1860 = fsub float %1598, %1856
  %1861 = fsub float %1841, %1604
  %1862 = fmul float %1861, %1860
  %1863 = fsub float %1604, %1857
  %1864 = fdiv float %1862, %1863
  %1865 = fadd float %1864, %1598
  br label %1866

1866:                                             ; preds = %1859, %1855
  %1867 = phi float [ %1865, %1859 ], [ %1598, %1855 ]
  %1868 = phi float [ %1841, %1859 ], [ %1604, %1855 ]
  %1869 = fcmp ugt float %1856, %1598
  %1870 = fcmp ugt float %1867, %1598
  %1871 = select i1 %1869, i1 true, i1 %1870
  br i1 %1871, label %1878, label %1872

1872:                                             ; preds = %1866
  %1873 = load float, ptr %1587, align 4, !tbaa !71
  %1874 = fsub float %1868, %1857
  %1875 = getelementptr inbounds nuw [4 x i8], ptr %1107, i64 %1593
  %1876 = load float, ptr %1875, align 4, !tbaa !44
  %1877 = call float @llvm.fmuladd.f32(float %1873, float %1874, float %1876)
  store float %1877, ptr %1875, align 4, !tbaa !44
  br label %1894

1878:                                             ; preds = %1866
  %1879 = fcmp ult float %1856, %1597
  %1880 = fcmp ult float %1867, %1597
  %1881 = select i1 %1879, i1 true, i1 %1880
  br i1 %1881, label %1882, label %1894

1882:                                             ; preds = %1878
  %1883 = load float, ptr %1587, align 4, !tbaa !71
  %1884 = fsub float %1868, %1857
  %1885 = fmul float %1884, %1883
  %1886 = fsub float %1856, %1598
  %1887 = fsub float %1867, %1598
  %1888 = fadd float %1886, %1887
  %1889 = fmul float %1888, 5.000000e-01
  %1890 = fsub float 1.000000e+00, %1889
  %1891 = getelementptr inbounds nuw [4 x i8], ptr %1107, i64 %1593
  %1892 = load float, ptr %1891, align 4, !tbaa !44
  %1893 = call float @llvm.fmuladd.f32(float %1885, float %1890, float %1892)
  store float %1893, ptr %1891, align 4, !tbaa !44
  br label %1894

1894:                                             ; preds = %1882, %1878, %1872, %1843, %1840, %1838
  %1895 = fcmp oeq float %1604, %1134
  br i1 %1895, label %2461, label %1896

1896:                                             ; preds = %1894
  %1897 = load float, ptr %1448, align 4, !tbaa !68
  %1898 = fcmp ogt float %1604, %1897
  br i1 %1898, label %2461, label %1899

1899:                                             ; preds = %1896
  %1900 = load float, ptr %1441, align 8, !tbaa !82
  %1901 = fcmp olt float %1134, %1900
  br i1 %1901, label %2461, label %1902

1902:                                             ; preds = %1899
  %1903 = fcmp olt float %1604, %1900
  br i1 %1903, label %1904, label %1911

1904:                                             ; preds = %1902
  %1905 = fsub float %1438, %1598
  %1906 = fsub float %1900, %1604
  %1907 = fmul float %1905, %1906
  %1908 = fsub float %1134, %1604
  %1909 = fdiv float %1907, %1908
  %1910 = fadd float %1909, %1598
  br label %1911

1911:                                             ; preds = %1904, %1902
  %1912 = phi float [ %1910, %1904 ], [ %1598, %1902 ]
  %1913 = phi float [ %1900, %1904 ], [ %1604, %1902 ]
  %1914 = fcmp ogt float %1134, %1897
  br i1 %1914, label %1915, label %1922

1915:                                             ; preds = %1911
  %1916 = fsub float %1438, %1912
  %1917 = fsub float %1897, %1134
  %1918 = fmul float %1917, %1916
  %1919 = fsub float %1134, %1913
  %1920 = fdiv float %1918, %1919
  %1921 = fadd float %1438, %1920
  br label %1922

1922:                                             ; preds = %1915, %1911
  %1923 = phi float [ %1921, %1915 ], [ %1438, %1911 ]
  %1924 = phi float [ %1897, %1915 ], [ %1134, %1911 ]
  %1925 = fcmp ugt float %1912, %1598
  %1926 = fcmp ugt float %1923, %1598
  %1927 = select i1 %1925, i1 true, i1 %1926
  br i1 %1927, label %1934, label %1928

1928:                                             ; preds = %1922
  %1929 = load float, ptr %1587, align 4, !tbaa !71
  %1930 = fsub float %1924, %1913
  %1931 = getelementptr inbounds nuw [4 x i8], ptr %1107, i64 %1593
  %1932 = load float, ptr %1931, align 4, !tbaa !44
  %1933 = call float @llvm.fmuladd.f32(float %1929, float %1930, float %1932)
  store float %1933, ptr %1931, align 4, !tbaa !44
  br label %2461

1934:                                             ; preds = %1922
  %1935 = fcmp ult float %1912, %1597
  %1936 = fcmp ult float %1923, %1597
  %1937 = select i1 %1935, i1 true, i1 %1936
  br i1 %1937, label %1938, label %2461

1938:                                             ; preds = %1934
  %1939 = load float, ptr %1587, align 4, !tbaa !71
  %1940 = fsub float %1924, %1913
  %1941 = fmul float %1940, %1939
  %1942 = fsub float %1912, %1598
  %1943 = fsub float %1923, %1598
  %1944 = fadd float %1942, %1943
  %1945 = fmul float %1944, 5.000000e-01
  %1946 = fsub float 1.000000e+00, %1945
  %1947 = getelementptr inbounds nuw [4 x i8], ptr %1107, i64 %1593
  %1948 = load float, ptr %1947, align 4, !tbaa !44
  %1949 = call float @llvm.fmuladd.f32(float %1941, float %1946, float %1948)
  store float %1949, ptr %1947, align 4, !tbaa !44
  br label %2461

1950:                                             ; preds = %1778
  %1951 = fcmp ogt float %1438, %1598
  %1952 = and i1 %1607, %1951
  br i1 %1952, label %1953, label %2065

1953:                                             ; preds = %1950
  %1954 = fcmp oeq float %1604, %1133
  br i1 %1954, label %2009, label %1955

1955:                                             ; preds = %1953
  %1956 = load float, ptr %1448, align 4, !tbaa !68
  %1957 = fcmp olt float %1956, %1133
  br i1 %1957, label %2009, label %1958

1958:                                             ; preds = %1955
  %1959 = load float, ptr %1441, align 8, !tbaa !82
  %1960 = fcmp olt float %1604, %1959
  br i1 %1960, label %2009, label %1961

1961:                                             ; preds = %1958
  %1962 = fcmp ogt float %1959, %1133
  br i1 %1962, label %1963, label %1970

1963:                                             ; preds = %1961
  %1964 = fsub float %1959, %1133
  %1965 = extractelement <2 x float> %1601, i64 0
  %1966 = fmul float %1965, %1964
  %1967 = fsub float %1604, %1133
  %1968 = fdiv float %1966, %1967
  %1969 = fadd float %1252, %1968
  br label %1970

1970:                                             ; preds = %1963, %1961
  %1971 = phi float [ %1969, %1963 ], [ %1252, %1961 ]
  %1972 = phi float [ %1959, %1963 ], [ %1133, %1961 ]
  %1973 = fcmp ogt float %1604, %1956
  br i1 %1973, label %1974, label %1981

1974:                                             ; preds = %1970
  %1975 = fsub float %1598, %1971
  %1976 = fsub float %1956, %1604
  %1977 = fmul float %1976, %1975
  %1978 = fsub float %1604, %1972
  %1979 = fdiv float %1977, %1978
  %1980 = fadd float %1979, %1598
  br label %1981

1981:                                             ; preds = %1974, %1970
  %1982 = phi float [ %1980, %1974 ], [ %1598, %1970 ]
  %1983 = phi float [ %1956, %1974 ], [ %1604, %1970 ]
  %1984 = fcmp ugt float %1971, %1598
  %1985 = fcmp ugt float %1982, %1598
  %1986 = select i1 %1984, i1 true, i1 %1985
  br i1 %1986, label %1993, label %1987

1987:                                             ; preds = %1981
  %1988 = load float, ptr %1587, align 4, !tbaa !71
  %1989 = fsub float %1983, %1972
  %1990 = getelementptr inbounds nuw [4 x i8], ptr %1107, i64 %1593
  %1991 = load float, ptr %1990, align 4, !tbaa !44
  %1992 = call float @llvm.fmuladd.f32(float %1988, float %1989, float %1991)
  store float %1992, ptr %1990, align 4, !tbaa !44
  br label %2009

1993:                                             ; preds = %1981
  %1994 = fcmp ult float %1971, %1597
  %1995 = fcmp ult float %1982, %1597
  %1996 = select i1 %1994, i1 true, i1 %1995
  br i1 %1996, label %1997, label %2009

1997:                                             ; preds = %1993
  %1998 = load float, ptr %1587, align 4, !tbaa !71
  %1999 = fsub float %1983, %1972
  %2000 = fmul float %1999, %1998
  %2001 = fsub float %1971, %1598
  %2002 = fsub float %1982, %1598
  %2003 = fadd float %2001, %2002
  %2004 = fmul float %2003, 5.000000e-01
  %2005 = fsub float 1.000000e+00, %2004
  %2006 = getelementptr inbounds nuw [4 x i8], ptr %1107, i64 %1593
  %2007 = load float, ptr %2006, align 4, !tbaa !44
  %2008 = call float @llvm.fmuladd.f32(float %2000, float %2005, float %2007)
  store float %2008, ptr %2006, align 4, !tbaa !44
  br label %2009

2009:                                             ; preds = %1997, %1993, %1987, %1958, %1955, %1953
  %2010 = fcmp oeq float %1604, %1134
  br i1 %2010, label %2461, label %2011

2011:                                             ; preds = %2009
  %2012 = load float, ptr %1448, align 4, !tbaa !68
  %2013 = fcmp ogt float %1604, %2012
  br i1 %2013, label %2461, label %2014

2014:                                             ; preds = %2011
  %2015 = load float, ptr %1441, align 8, !tbaa !82
  %2016 = fcmp olt float %1134, %2015
  br i1 %2016, label %2461, label %2017

2017:                                             ; preds = %2014
  %2018 = fcmp olt float %1604, %2015
  br i1 %2018, label %2019, label %2026

2019:                                             ; preds = %2017
  %2020 = fsub float %1438, %1598
  %2021 = fsub float %2015, %1604
  %2022 = fmul float %2020, %2021
  %2023 = fsub float %1134, %1604
  %2024 = fdiv float %2022, %2023
  %2025 = fadd float %2024, %1598
  br label %2026

2026:                                             ; preds = %2019, %2017
  %2027 = phi float [ %2025, %2019 ], [ %1598, %2017 ]
  %2028 = phi float [ %2015, %2019 ], [ %1604, %2017 ]
  %2029 = fcmp ogt float %1134, %2012
  br i1 %2029, label %2030, label %2037

2030:                                             ; preds = %2026
  %2031 = fsub float %1438, %2027
  %2032 = fsub float %2012, %1134
  %2033 = fmul float %2032, %2031
  %2034 = fsub float %1134, %2028
  %2035 = fdiv float %2033, %2034
  %2036 = fadd float %1438, %2035
  br label %2037

2037:                                             ; preds = %2030, %2026
  %2038 = phi float [ %2036, %2030 ], [ %1438, %2026 ]
  %2039 = phi float [ %2012, %2030 ], [ %1134, %2026 ]
  %2040 = fcmp ugt float %2027, %1598
  %2041 = fcmp ugt float %2038, %1598
  %2042 = select i1 %2040, i1 true, i1 %2041
  br i1 %2042, label %2049, label %2043

2043:                                             ; preds = %2037
  %2044 = load float, ptr %1587, align 4, !tbaa !71
  %2045 = fsub float %2039, %2028
  %2046 = getelementptr inbounds nuw [4 x i8], ptr %1107, i64 %1593
  %2047 = load float, ptr %2046, align 4, !tbaa !44
  %2048 = call float @llvm.fmuladd.f32(float %2044, float %2045, float %2047)
  store float %2048, ptr %2046, align 4, !tbaa !44
  br label %2461

2049:                                             ; preds = %2037
  %2050 = fcmp ult float %2027, %1597
  %2051 = fcmp ult float %2038, %1597
  %2052 = select i1 %2050, i1 true, i1 %2051
  br i1 %2052, label %2053, label %2461

2053:                                             ; preds = %2049
  %2054 = load float, ptr %1587, align 4, !tbaa !71
  %2055 = fsub float %2039, %2028
  %2056 = fmul float %2055, %2054
  %2057 = fsub float %2027, %1598
  %2058 = fsub float %2038, %1598
  %2059 = fadd float %2057, %2058
  %2060 = fmul float %2059, 5.000000e-01
  %2061 = fsub float 1.000000e+00, %2060
  %2062 = getelementptr inbounds nuw [4 x i8], ptr %1107, i64 %1593
  %2063 = load float, ptr %2062, align 4, !tbaa !44
  %2064 = call float @llvm.fmuladd.f32(float %2056, float %2061, float %2063)
  store float %2064, ptr %2062, align 4, !tbaa !44
  br label %2461

2065:                                             ; preds = %1950
  %2066 = fcmp ogt float %1252, %1598
  %2067 = and i1 %1779, %2066
  br i1 %2067, label %2068, label %2180

2068:                                             ; preds = %2065
  %2069 = fcmp oeq float %1604, %1133
  br i1 %2069, label %2124, label %2070

2070:                                             ; preds = %2068
  %2071 = load float, ptr %1448, align 4, !tbaa !68
  %2072 = fcmp olt float %2071, %1133
  br i1 %2072, label %2124, label %2073

2073:                                             ; preds = %2070
  %2074 = load float, ptr %1441, align 8, !tbaa !82
  %2075 = fcmp olt float %1604, %2074
  br i1 %2075, label %2124, label %2076

2076:                                             ; preds = %2073
  %2077 = fcmp ogt float %2074, %1133
  br i1 %2077, label %2078, label %2085

2078:                                             ; preds = %2076
  %2079 = fsub float %2074, %1133
  %2080 = extractelement <2 x float> %1601, i64 0
  %2081 = fmul float %2080, %2079
  %2082 = fsub float %1604, %1133
  %2083 = fdiv float %2081, %2082
  %2084 = fadd float %1252, %2083
  br label %2085

2085:                                             ; preds = %2078, %2076
  %2086 = phi float [ %2084, %2078 ], [ %1252, %2076 ]
  %2087 = phi float [ %2074, %2078 ], [ %1133, %2076 ]
  %2088 = fcmp ogt float %1604, %2071
  br i1 %2088, label %2089, label %2096

2089:                                             ; preds = %2085
  %2090 = fsub float %1598, %2086
  %2091 = fsub float %2071, %1604
  %2092 = fmul float %2091, %2090
  %2093 = fsub float %1604, %2087
  %2094 = fdiv float %2092, %2093
  %2095 = fadd float %2094, %1598
  br label %2096

2096:                                             ; preds = %2089, %2085
  %2097 = phi float [ %2095, %2089 ], [ %1598, %2085 ]
  %2098 = phi float [ %2071, %2089 ], [ %1604, %2085 ]
  %2099 = fcmp ugt float %2086, %1598
  %2100 = fcmp ugt float %2097, %1598
  %2101 = select i1 %2099, i1 true, i1 %2100
  br i1 %2101, label %2108, label %2102

2102:                                             ; preds = %2096
  %2103 = load float, ptr %1587, align 4, !tbaa !71
  %2104 = fsub float %2098, %2087
  %2105 = getelementptr inbounds nuw [4 x i8], ptr %1107, i64 %1593
  %2106 = load float, ptr %2105, align 4, !tbaa !44
  %2107 = call float @llvm.fmuladd.f32(float %2103, float %2104, float %2106)
  store float %2107, ptr %2105, align 4, !tbaa !44
  br label %2124

2108:                                             ; preds = %2096
  %2109 = fcmp ult float %2086, %1597
  %2110 = fcmp ult float %2097, %1597
  %2111 = select i1 %2109, i1 true, i1 %2110
  br i1 %2111, label %2112, label %2124

2112:                                             ; preds = %2108
  %2113 = load float, ptr %1587, align 4, !tbaa !71
  %2114 = fsub float %2098, %2087
  %2115 = fmul float %2114, %2113
  %2116 = fsub float %2086, %1598
  %2117 = fsub float %2097, %1598
  %2118 = fadd float %2116, %2117
  %2119 = fmul float %2118, 5.000000e-01
  %2120 = fsub float 1.000000e+00, %2119
  %2121 = getelementptr inbounds nuw [4 x i8], ptr %1107, i64 %1593
  %2122 = load float, ptr %2121, align 4, !tbaa !44
  %2123 = call float @llvm.fmuladd.f32(float %2115, float %2120, float %2122)
  store float %2123, ptr %2121, align 4, !tbaa !44
  br label %2124

2124:                                             ; preds = %2112, %2108, %2102, %2073, %2070, %2068
  %2125 = fcmp oeq float %1604, %1134
  br i1 %2125, label %2461, label %2126

2126:                                             ; preds = %2124
  %2127 = load float, ptr %1448, align 4, !tbaa !68
  %2128 = fcmp ogt float %1604, %2127
  br i1 %2128, label %2461, label %2129

2129:                                             ; preds = %2126
  %2130 = load float, ptr %1441, align 8, !tbaa !82
  %2131 = fcmp olt float %1134, %2130
  br i1 %2131, label %2461, label %2132

2132:                                             ; preds = %2129
  %2133 = fcmp olt float %1604, %2130
  br i1 %2133, label %2134, label %2141

2134:                                             ; preds = %2132
  %2135 = fsub float %1438, %1598
  %2136 = fsub float %2130, %1604
  %2137 = fmul float %2135, %2136
  %2138 = fsub float %1134, %1604
  %2139 = fdiv float %2137, %2138
  %2140 = fadd float %2139, %1598
  br label %2141

2141:                                             ; preds = %2134, %2132
  %2142 = phi float [ %2140, %2134 ], [ %1598, %2132 ]
  %2143 = phi float [ %2130, %2134 ], [ %1604, %2132 ]
  %2144 = fcmp ogt float %1134, %2127
  br i1 %2144, label %2145, label %2152

2145:                                             ; preds = %2141
  %2146 = fsub float %1438, %2142
  %2147 = fsub float %2127, %1134
  %2148 = fmul float %2147, %2146
  %2149 = fsub float %1134, %2143
  %2150 = fdiv float %2148, %2149
  %2151 = fadd float %1438, %2150
  br label %2152

2152:                                             ; preds = %2145, %2141
  %2153 = phi float [ %2151, %2145 ], [ %1438, %2141 ]
  %2154 = phi float [ %2127, %2145 ], [ %1134, %2141 ]
  %2155 = fcmp ugt float %2142, %1598
  %2156 = fcmp ugt float %2153, %1598
  %2157 = select i1 %2155, i1 true, i1 %2156
  br i1 %2157, label %2164, label %2158

2158:                                             ; preds = %2152
  %2159 = load float, ptr %1587, align 4, !tbaa !71
  %2160 = fsub float %2154, %2143
  %2161 = getelementptr inbounds nuw [4 x i8], ptr %1107, i64 %1593
  %2162 = load float, ptr %2161, align 4, !tbaa !44
  %2163 = call float @llvm.fmuladd.f32(float %2159, float %2160, float %2162)
  store float %2163, ptr %2161, align 4, !tbaa !44
  br label %2461

2164:                                             ; preds = %2152
  %2165 = fcmp ult float %2142, %1597
  %2166 = fcmp ult float %2153, %1597
  %2167 = select i1 %2165, i1 true, i1 %2166
  br i1 %2167, label %2168, label %2461

2168:                                             ; preds = %2164
  %2169 = load float, ptr %1587, align 4, !tbaa !71
  %2170 = fsub float %2154, %2143
  %2171 = fmul float %2170, %2169
  %2172 = fsub float %2142, %1598
  %2173 = fsub float %2153, %1598
  %2174 = fadd float %2172, %2173
  %2175 = fmul float %2174, 5.000000e-01
  %2176 = fsub float 1.000000e+00, %2175
  %2177 = getelementptr inbounds nuw [4 x i8], ptr %1107, i64 %1593
  %2178 = load float, ptr %2177, align 4, !tbaa !44
  %2179 = call float @llvm.fmuladd.f32(float %2171, float %2176, float %2178)
  store float %2179, ptr %2177, align 4, !tbaa !44
  br label %2461

2180:                                             ; preds = %2065
  %2181 = fcmp olt float %1252, %1597
  %2182 = and i1 %2181, %1608
  br i1 %2182, label %2183, label %2295

2183:                                             ; preds = %2180
  %2184 = fcmp oeq float %1606, %1133
  br i1 %2184, label %2239, label %2185

2185:                                             ; preds = %2183
  %2186 = load float, ptr %1448, align 4, !tbaa !68
  %2187 = fcmp olt float %2186, %1133
  br i1 %2187, label %2239, label %2188

2188:                                             ; preds = %2185
  %2189 = load float, ptr %1441, align 8, !tbaa !82
  %2190 = fcmp olt float %1606, %2189
  br i1 %2190, label %2239, label %2191

2191:                                             ; preds = %2188
  %2192 = fcmp ogt float %2189, %1133
  br i1 %2192, label %2193, label %2200

2193:                                             ; preds = %2191
  %2194 = fsub float %2189, %1133
  %2195 = extractelement <2 x float> %1601, i64 1
  %2196 = fmul float %2195, %2194
  %2197 = fsub float %1606, %1133
  %2198 = fdiv float %2196, %2197
  %2199 = fadd float %1252, %2198
  br label %2200

2200:                                             ; preds = %2193, %2191
  %2201 = phi float [ %2199, %2193 ], [ %1252, %2191 ]
  %2202 = phi float [ %2189, %2193 ], [ %1133, %2191 ]
  %2203 = fcmp ogt float %1606, %2186
  br i1 %2203, label %2204, label %2211

2204:                                             ; preds = %2200
  %2205 = fsub float %1597, %2201
  %2206 = fsub float %2186, %1606
  %2207 = fmul float %2206, %2205
  %2208 = fsub float %1606, %2202
  %2209 = fdiv float %2207, %2208
  %2210 = fadd float %2209, %1597
  br label %2211

2211:                                             ; preds = %2204, %2200
  %2212 = phi float [ %2210, %2204 ], [ %1597, %2200 ]
  %2213 = phi float [ %2186, %2204 ], [ %1606, %2200 ]
  %2214 = fcmp ugt float %2201, %1598
  %2215 = fcmp ugt float %2212, %1598
  %2216 = select i1 %2214, i1 true, i1 %2215
  br i1 %2216, label %2223, label %2217

2217:                                             ; preds = %2211
  %2218 = load float, ptr %1587, align 4, !tbaa !71
  %2219 = fsub float %2213, %2202
  %2220 = getelementptr inbounds nuw [4 x i8], ptr %1107, i64 %1593
  %2221 = load float, ptr %2220, align 4, !tbaa !44
  %2222 = call float @llvm.fmuladd.f32(float %2218, float %2219, float %2221)
  store float %2222, ptr %2220, align 4, !tbaa !44
  br label %2239

2223:                                             ; preds = %2211
  %2224 = fcmp ult float %2201, %1597
  %2225 = fcmp ult float %2212, %1597
  %2226 = select i1 %2224, i1 true, i1 %2225
  br i1 %2226, label %2227, label %2239

2227:                                             ; preds = %2223
  %2228 = load float, ptr %1587, align 4, !tbaa !71
  %2229 = fsub float %2213, %2202
  %2230 = fmul float %2229, %2228
  %2231 = fsub float %2201, %1598
  %2232 = fsub float %2212, %1598
  %2233 = fadd float %2231, %2232
  %2234 = fmul float %2233, 5.000000e-01
  %2235 = fsub float 1.000000e+00, %2234
  %2236 = getelementptr inbounds nuw [4 x i8], ptr %1107, i64 %1593
  %2237 = load float, ptr %2236, align 4, !tbaa !44
  %2238 = call float @llvm.fmuladd.f32(float %2230, float %2235, float %2237)
  store float %2238, ptr %2236, align 4, !tbaa !44
  br label %2239

2239:                                             ; preds = %2227, %2223, %2217, %2188, %2185, %2183
  %2240 = fcmp oeq float %1606, %1134
  br i1 %2240, label %2461, label %2241

2241:                                             ; preds = %2239
  %2242 = load float, ptr %1448, align 4, !tbaa !68
  %2243 = fcmp ogt float %1606, %2242
  br i1 %2243, label %2461, label %2244

2244:                                             ; preds = %2241
  %2245 = load float, ptr %1441, align 8, !tbaa !82
  %2246 = fcmp olt float %1134, %2245
  br i1 %2246, label %2461, label %2247

2247:                                             ; preds = %2244
  %2248 = fcmp olt float %1606, %2245
  br i1 %2248, label %2249, label %2256

2249:                                             ; preds = %2247
  %2250 = fsub float %1438, %1597
  %2251 = fsub float %2245, %1606
  %2252 = fmul float %2250, %2251
  %2253 = fsub float %1134, %1606
  %2254 = fdiv float %2252, %2253
  %2255 = fadd float %2254, %1597
  br label %2256

2256:                                             ; preds = %2249, %2247
  %2257 = phi float [ %2255, %2249 ], [ %1597, %2247 ]
  %2258 = phi float [ %2245, %2249 ], [ %1606, %2247 ]
  %2259 = fcmp ogt float %1134, %2242
  br i1 %2259, label %2260, label %2267

2260:                                             ; preds = %2256
  %2261 = fsub float %1438, %2257
  %2262 = fsub float %2242, %1134
  %2263 = fmul float %2262, %2261
  %2264 = fsub float %1134, %2258
  %2265 = fdiv float %2263, %2264
  %2266 = fadd float %1438, %2265
  br label %2267

2267:                                             ; preds = %2260, %2256
  %2268 = phi float [ %2266, %2260 ], [ %1438, %2256 ]
  %2269 = phi float [ %2242, %2260 ], [ %1134, %2256 ]
  %2270 = fcmp ugt float %2257, %1598
  %2271 = fcmp ugt float %2268, %1598
  %2272 = select i1 %2270, i1 true, i1 %2271
  br i1 %2272, label %2279, label %2273

2273:                                             ; preds = %2267
  %2274 = load float, ptr %1587, align 4, !tbaa !71
  %2275 = fsub float %2269, %2258
  %2276 = getelementptr inbounds nuw [4 x i8], ptr %1107, i64 %1593
  %2277 = load float, ptr %2276, align 4, !tbaa !44
  %2278 = call float @llvm.fmuladd.f32(float %2274, float %2275, float %2277)
  store float %2278, ptr %2276, align 4, !tbaa !44
  br label %2461

2279:                                             ; preds = %2267
  %2280 = fcmp ult float %2257, %1597
  %2281 = fcmp ult float %2268, %1597
  %2282 = select i1 %2280, i1 true, i1 %2281
  br i1 %2282, label %2283, label %2461

2283:                                             ; preds = %2279
  %2284 = load float, ptr %1587, align 4, !tbaa !71
  %2285 = fsub float %2269, %2258
  %2286 = fmul float %2285, %2284
  %2287 = fsub float %2257, %1598
  %2288 = fsub float %2268, %1598
  %2289 = fadd float %2287, %2288
  %2290 = fmul float %2289, 5.000000e-01
  %2291 = fsub float 1.000000e+00, %2290
  %2292 = getelementptr inbounds nuw [4 x i8], ptr %1107, i64 %1593
  %2293 = load float, ptr %2292, align 4, !tbaa !44
  %2294 = call float @llvm.fmuladd.f32(float %2286, float %2291, float %2293)
  store float %2294, ptr %2292, align 4, !tbaa !44
  br label %2461

2295:                                             ; preds = %2180
  %2296 = fcmp olt float %1438, %1597
  %2297 = and i1 %2296, %1780
  br i1 %2297, label %2298, label %2410

2298:                                             ; preds = %2295
  %2299 = fcmp oeq float %1606, %1133
  br i1 %2299, label %2354, label %2300

2300:                                             ; preds = %2298
  %2301 = load float, ptr %1448, align 4, !tbaa !68
  %2302 = fcmp olt float %2301, %1133
  br i1 %2302, label %2354, label %2303

2303:                                             ; preds = %2300
  %2304 = load float, ptr %1441, align 8, !tbaa !82
  %2305 = fcmp olt float %1606, %2304
  br i1 %2305, label %2354, label %2306

2306:                                             ; preds = %2303
  %2307 = fcmp ogt float %2304, %1133
  br i1 %2307, label %2308, label %2315

2308:                                             ; preds = %2306
  %2309 = fsub float %2304, %1133
  %2310 = extractelement <2 x float> %1601, i64 1
  %2311 = fmul float %2310, %2309
  %2312 = fsub float %1606, %1133
  %2313 = fdiv float %2311, %2312
  %2314 = fadd float %1252, %2313
  br label %2315

2315:                                             ; preds = %2308, %2306
  %2316 = phi float [ %2314, %2308 ], [ %1252, %2306 ]
  %2317 = phi float [ %2304, %2308 ], [ %1133, %2306 ]
  %2318 = fcmp ogt float %1606, %2301
  br i1 %2318, label %2319, label %2326

2319:                                             ; preds = %2315
  %2320 = fsub float %1597, %2316
  %2321 = fsub float %2301, %1606
  %2322 = fmul float %2321, %2320
  %2323 = fsub float %1606, %2317
  %2324 = fdiv float %2322, %2323
  %2325 = fadd float %2324, %1597
  br label %2326

2326:                                             ; preds = %2319, %2315
  %2327 = phi float [ %2325, %2319 ], [ %1597, %2315 ]
  %2328 = phi float [ %2301, %2319 ], [ %1606, %2315 ]
  %2329 = fcmp ugt float %2316, %1598
  %2330 = fcmp ugt float %2327, %1598
  %2331 = select i1 %2329, i1 true, i1 %2330
  br i1 %2331, label %2338, label %2332

2332:                                             ; preds = %2326
  %2333 = load float, ptr %1587, align 4, !tbaa !71
  %2334 = fsub float %2328, %2317
  %2335 = getelementptr inbounds nuw [4 x i8], ptr %1107, i64 %1593
  %2336 = load float, ptr %2335, align 4, !tbaa !44
  %2337 = call float @llvm.fmuladd.f32(float %2333, float %2334, float %2336)
  store float %2337, ptr %2335, align 4, !tbaa !44
  br label %2354

2338:                                             ; preds = %2326
  %2339 = fcmp ult float %2316, %1597
  %2340 = fcmp ult float %2327, %1597
  %2341 = select i1 %2339, i1 true, i1 %2340
  br i1 %2341, label %2342, label %2354

2342:                                             ; preds = %2338
  %2343 = load float, ptr %1587, align 4, !tbaa !71
  %2344 = fsub float %2328, %2317
  %2345 = fmul float %2344, %2343
  %2346 = fsub float %2316, %1598
  %2347 = fsub float %2327, %1598
  %2348 = fadd float %2346, %2347
  %2349 = fmul float %2348, 5.000000e-01
  %2350 = fsub float 1.000000e+00, %2349
  %2351 = getelementptr inbounds nuw [4 x i8], ptr %1107, i64 %1593
  %2352 = load float, ptr %2351, align 4, !tbaa !44
  %2353 = call float @llvm.fmuladd.f32(float %2345, float %2350, float %2352)
  store float %2353, ptr %2351, align 4, !tbaa !44
  br label %2354

2354:                                             ; preds = %2342, %2338, %2332, %2303, %2300, %2298
  %2355 = fcmp oeq float %1606, %1134
  br i1 %2355, label %2461, label %2356

2356:                                             ; preds = %2354
  %2357 = load float, ptr %1448, align 4, !tbaa !68
  %2358 = fcmp ogt float %1606, %2357
  br i1 %2358, label %2461, label %2359

2359:                                             ; preds = %2356
  %2360 = load float, ptr %1441, align 8, !tbaa !82
  %2361 = fcmp olt float %1134, %2360
  br i1 %2361, label %2461, label %2362

2362:                                             ; preds = %2359
  %2363 = fcmp olt float %1606, %2360
  br i1 %2363, label %2364, label %2371

2364:                                             ; preds = %2362
  %2365 = fsub float %1438, %1597
  %2366 = fsub float %2360, %1606
  %2367 = fmul float %2365, %2366
  %2368 = fsub float %1134, %1606
  %2369 = fdiv float %2367, %2368
  %2370 = fadd float %2369, %1597
  br label %2371

2371:                                             ; preds = %2364, %2362
  %2372 = phi float [ %2370, %2364 ], [ %1597, %2362 ]
  %2373 = phi float [ %2360, %2364 ], [ %1606, %2362 ]
  %2374 = fcmp ogt float %1134, %2357
  br i1 %2374, label %2375, label %2382

2375:                                             ; preds = %2371
  %2376 = fsub float %1438, %2372
  %2377 = fsub float %2357, %1134
  %2378 = fmul float %2377, %2376
  %2379 = fsub float %1134, %2373
  %2380 = fdiv float %2378, %2379
  %2381 = fadd float %1438, %2380
  br label %2382

2382:                                             ; preds = %2375, %2371
  %2383 = phi float [ %2381, %2375 ], [ %1438, %2371 ]
  %2384 = phi float [ %2357, %2375 ], [ %1134, %2371 ]
  %2385 = fcmp ugt float %2372, %1598
  %2386 = fcmp ugt float %2383, %1598
  %2387 = select i1 %2385, i1 true, i1 %2386
  br i1 %2387, label %2394, label %2388

2388:                                             ; preds = %2382
  %2389 = load float, ptr %1587, align 4, !tbaa !71
  %2390 = fsub float %2384, %2373
  %2391 = getelementptr inbounds nuw [4 x i8], ptr %1107, i64 %1593
  %2392 = load float, ptr %2391, align 4, !tbaa !44
  %2393 = call float @llvm.fmuladd.f32(float %2389, float %2390, float %2392)
  store float %2393, ptr %2391, align 4, !tbaa !44
  br label %2461

2394:                                             ; preds = %2382
  %2395 = fcmp ult float %2372, %1597
  %2396 = fcmp ult float %2383, %1597
  %2397 = select i1 %2395, i1 true, i1 %2396
  br i1 %2397, label %2398, label %2461

2398:                                             ; preds = %2394
  %2399 = load float, ptr %1587, align 4, !tbaa !71
  %2400 = fsub float %2384, %2373
  %2401 = fmul float %2400, %2399
  %2402 = fsub float %2372, %1598
  %2403 = fsub float %2383, %1598
  %2404 = fadd float %2402, %2403
  %2405 = fmul float %2404, 5.000000e-01
  %2406 = fsub float 1.000000e+00, %2405
  %2407 = getelementptr inbounds nuw [4 x i8], ptr %1107, i64 %1593
  %2408 = load float, ptr %2407, align 4, !tbaa !44
  %2409 = call float @llvm.fmuladd.f32(float %2401, float %2406, float %2408)
  store float %2409, ptr %2407, align 4, !tbaa !44
  br label %2461

2410:                                             ; preds = %2295
  br i1 %1244, label %2461, label %2411

2411:                                             ; preds = %2410
  %2412 = load float, ptr %1448, align 4, !tbaa !68
  %2413 = fcmp olt float %2412, %1133
  br i1 %2413, label %2461, label %2414

2414:                                             ; preds = %2411
  %2415 = load float, ptr %1441, align 8, !tbaa !82
  %2416 = fcmp olt float %1134, %2415
  br i1 %2416, label %2461, label %2417

2417:                                             ; preds = %2414
  %2418 = fcmp ogt float %2415, %1133
  %2419 = fsub float %2415, %1133
  %2420 = fmul float %1586, %2419
  %2421 = fdiv float %2420, %1245
  %2422 = fadd float %1252, %2421
  %2423 = select i1 %2418, float %2422, float %1252
  %2424 = select i1 %2418, float %2415, float %1133
  %2425 = fcmp ogt float %1134, %2412
  br i1 %2425, label %2426, label %2433

2426:                                             ; preds = %2417
  %2427 = fsub float %1438, %2423
  %2428 = fsub float %2412, %1134
  %2429 = fmul float %2428, %2427
  %2430 = fsub float %1134, %2424
  %2431 = fdiv float %2429, %2430
  %2432 = fadd float %1438, %2431
  br label %2433

2433:                                             ; preds = %2426, %2417
  %2434 = phi float [ %2432, %2426 ], [ %1438, %2417 ]
  %2435 = phi float [ %2412, %2426 ], [ %1134, %2417 ]
  %2436 = fcmp ugt float %2423, %1598
  %2437 = fcmp ugt float %2434, %1598
  %2438 = select i1 %2436, i1 true, i1 %2437
  br i1 %2438, label %2445, label %2439

2439:                                             ; preds = %2433
  %2440 = load float, ptr %1587, align 4, !tbaa !71
  %2441 = fsub float %2435, %2424
  %2442 = getelementptr inbounds nuw [4 x i8], ptr %1107, i64 %1593
  %2443 = load float, ptr %2442, align 4, !tbaa !44
  %2444 = call float @llvm.fmuladd.f32(float %2440, float %2441, float %2443)
  store float %2444, ptr %2442, align 4, !tbaa !44
  br label %2461

2445:                                             ; preds = %2433
  %2446 = fcmp ult float %2423, %1597
  %2447 = fcmp ult float %2434, %1597
  %2448 = select i1 %2446, i1 true, i1 %2447
  br i1 %2448, label %2449, label %2461

2449:                                             ; preds = %2445
  %2450 = load float, ptr %1587, align 4, !tbaa !71
  %2451 = fsub float %2435, %2424
  %2452 = fmul float %2451, %2450
  %2453 = fsub float %2423, %1598
  %2454 = fsub float %2434, %1598
  %2455 = fadd float %2453, %2454
  %2456 = fmul float %2455, 5.000000e-01
  %2457 = fsub float 1.000000e+00, %2456
  %2458 = getelementptr inbounds nuw [4 x i8], ptr %1107, i64 %1593
  %2459 = load float, ptr %2458, align 4, !tbaa !44
  %2460 = call float @llvm.fmuladd.f32(float %2452, float %2457, float %2459)
  store float %2460, ptr %2458, align 4, !tbaa !44
  br label %2461

2461:                                             ; preds = %2449, %2445, %2439, %2414, %2411, %2410, %2398, %2394, %2388, %2359, %2356, %2354, %2283, %2279, %2273, %2244, %2241, %2239, %2168, %2164, %2158, %2129, %2126, %2124, %2053, %2049, %2043, %2014, %2011, %2009, %1938, %1934, %1928, %1899, %1896, %1894, %1766, %1762, %1756, %1727, %1724, %1722
  %2462 = icmp eq i64 %1594, %1109
  br i1 %2462, label %2463, label %1592, !llvm.loop !85

2463:                                             ; preds = %2461, %1567, %1466, %1427, %1423, %1417, %1388, %1384, %1383, %1369, %1363, %1355, %1325, %1321, %1257, %1253
  %2464 = load ptr, ptr %1247, align 8, !tbaa !70
  %2465 = icmp eq ptr %2464, null
  br i1 %2465, label %2466, label %1246, !llvm.loop !86

2466:                                             ; preds = %2463, %1236
  %2467 = shl i32 %1129, 9
  br label %2469

2468:                                             ; preds = %2469
  br i1 %1242, label %2500, label %2491

2469:                                             ; preds = %2469, %2466
  %2470 = phi i64 [ %2489, %2469 ], [ 0, %2466 ]
  %2471 = phi float [ %2474, %2469 ], [ 0.000000e+00, %2466 ]
  %2472 = getelementptr inbounds nuw [4 x i8], ptr %1110, i64 %2470
  %2473 = load float, ptr %2472, align 4, !tbaa !44
  %2474 = fadd float %2471, %2473
  %2475 = getelementptr inbounds nuw [4 x i8], ptr %1107, i64 %2470
  %2476 = load float, ptr %2475, align 4, !tbaa !44
  %2477 = fadd float %2476, %2474
  %2478 = fcmp olt float %2477, 0.000000e+00
  %2479 = fneg float %2477
  %2480 = select i1 %2478, float %2479, float %2477
  %2481 = call float @llvm.fmuladd.f32(float %2480, float 2.550000e+02, float 5.000000e-01)
  %2482 = fptosi float %2481 to i32
  %2483 = call i32 @llvm.smin.i32(i32 %2482, i32 255)
  %2484 = trunc i32 %2483 to i8
  %2485 = trunc nuw nsw i64 %2470 to i32
  %2486 = add nuw nsw i32 %2467, %2485
  %2487 = sext i32 %2486 to i64
  %2488 = getelementptr inbounds i8, ptr %760, i64 %2487
  store i8 %2484, ptr %2488, align 1, !tbaa !11
  %2489 = add nuw nsw i64 %2470, 1
  %2490 = icmp eq i64 %2489, %1109
  br i1 %2490, label %2468, label %2469, !llvm.loop !87

2491:                                             ; preds = %2468, %2491
  %2492 = phi ptr [ %2498, %2491 ], [ %1241, %2468 ]
  %2493 = getelementptr inbounds nuw i8, ptr %2492, i64 12
  %2494 = load float, ptr %2493, align 4, !tbaa !79
  %2495 = getelementptr inbounds nuw i8, ptr %2492, i64 8
  %2496 = load float, ptr %2495, align 8, !tbaa !81
  %2497 = fadd float %2494, %2496
  store float %2497, ptr %2495, align 8, !tbaa !81
  %2498 = load ptr, ptr %2492, align 8, !tbaa !66
  %2499 = icmp eq ptr %2498, null
  br i1 %2499, label %2500, label %2491, !llvm.loop !88

2500:                                             ; preds = %2491, %2468
  %2501 = add i32 %1128, 1
  %2502 = add nuw nsw i32 %1129, 1
  %2503 = icmp eq i32 %704, %2502
  br i1 %2503, label %2504, label %1125, !llvm.loop !89

2504:                                             ; preds = %2500, %1096
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %2505

2505:                                             ; preds = %949, %950, %985, %994, %2504
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  br label %2506

2506:                                             ; preds = %2505, %741
  %2507 = add nuw nsw i32 %705, 1
  %2508 = add i32 %2507, %714
  %2509 = call i32 @llvm.smax.i32(i32 %706, i32 %628)
  %2510 = select i1 %710, i32 %706, i32 %2509
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #15
  %2511 = add nuw nsw i64 %625, 1
  %2512 = icmp eq i64 %2511, 95
  br i1 %2512, label %2515, label %624, !llvm.loop !90

2513:                                             ; preds = %708, %697
  store i32 826689362, ptr %4, align 1
  %2514 = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 3, ptr %2514, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #15
  br label %3518

2515:                                             ; preds = %2506
  %2516 = add i32 %713, %2510
  %2517 = add i32 %2516, 1
  %2518 = sext i32 %2517 to i64
  %2519 = shl nsw i64 %2518, 9
  %2520 = icmp sgt i64 %2519, %612
  %2521 = select i1 %2520, i32 %2516, i32 %2517
  %2522 = sext i32 %2521 to i64
  %2523 = shl nsw i64 %2522, 9
  %2524 = icmp sgt i64 %2523, %612
  br i1 %2524, label %2584, label %2525

2525:                                             ; preds = %2515
  %2526 = icmp eq i32 %163, 0
  %2527 = icmp eq i32 %165, 0
  %2528 = select i1 %2526, i1 %2527, i1 false
  %2529 = sext i32 %165 to i64
  %2530 = getelementptr inbounds i8, ptr %0, i64 %2529
  %2531 = load ptr, ptr @stbtt__lo, align 8
  %2532 = icmp uge ptr %2530, %2531
  %2533 = load ptr, ptr @stbtt__hi, align 8
  %2534 = icmp ult ptr %2530, %2533
  %2535 = select i1 %2532, i1 %2534, i1 false
  %2536 = getelementptr inbounds nuw i8, ptr %2530, i64 1
  %2537 = icmp uge ptr %2536, %2531
  %2538 = icmp ult ptr %2536, %2533
  %2539 = select i1 %2537, i1 %2538, i1 false
  %2540 = getelementptr inbounds nuw i8, ptr %2530, i64 2
  %2541 = icmp uge ptr %2540, %2531
  %2542 = icmp ult ptr %2540, %2533
  %2543 = select i1 %2541, i1 %2542, i1 false
  %2544 = getelementptr inbounds nuw i8, ptr %2530, i64 3
  %2545 = icmp uge ptr %2544, %2531
  %2546 = icmp ult ptr %2544, %2533
  %2547 = select i1 %2545, i1 %2546, i1 false
  %2548 = getelementptr inbounds nuw i8, ptr %2530, i64 8
  %2549 = icmp uge ptr %2548, %2531
  %2550 = icmp ult ptr %2548, %2533
  %2551 = select i1 %2549, i1 %2550, i1 false
  %2552 = getelementptr inbounds nuw i8, ptr %2530, i64 9
  %2553 = icmp uge ptr %2552, %2531
  %2554 = icmp ult ptr %2552, %2533
  %2555 = select i1 %2553, i1 %2554, i1 false
  %2556 = sext i32 %163 to i64
  %2557 = getelementptr inbounds i8, ptr %0, i64 %2556
  %2558 = getelementptr inbounds nuw i8, ptr %2557, i64 2
  %2559 = icmp uge ptr %2558, %2531
  %2560 = icmp ult ptr %2558, %2533
  %2561 = select i1 %2559, i1 %2560, i1 false
  %2562 = getelementptr inbounds nuw i8, ptr %2557, i64 3
  %2563 = icmp uge ptr %2562, %2531
  %2564 = icmp ult ptr %2562, %2533
  %2565 = select i1 %2563, i1 %2564, i1 false
  %2566 = getelementptr inbounds nuw i8, ptr %2557, i64 8
  %2567 = icmp uge ptr %2566, %2531
  %2568 = icmp ult ptr %2566, %2533
  %2569 = select i1 %2567, i1 %2568, i1 false
  %2570 = getelementptr inbounds nuw i8, ptr %2557, i64 9
  %2571 = icmp uge ptr %2570, %2531
  %2572 = icmp ult ptr %2570, %2533
  %2573 = select i1 %2571, i1 %2572, i1 false
  %2574 = getelementptr inbounds nuw i8, ptr %2557, i64 10
  %2575 = icmp uge ptr %2574, %2531
  %2576 = icmp ult ptr %2574, %2533
  %2577 = select i1 %2575, i1 %2576, i1 false
  %2578 = getelementptr inbounds nuw i8, ptr %2557, i64 11
  %2579 = icmp uge ptr %2578, %2531
  %2580 = icmp ult ptr %2578, %2533
  %2581 = select i1 %2579, i1 %2580, i1 false
  %2582 = getelementptr inbounds nuw i8, ptr %2557, i64 18
  %2583 = getelementptr inbounds nuw i8, ptr %2557, i64 22
  br label %2586

2584:                                             ; preds = %2515
  store i32 826689362, ptr %4, align 1
  %2585 = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 3, ptr %2585, align 1
  br label %3518

2586:                                             ; preds = %2525, %2600
  %2587 = phi i32 [ 32, %2525 ], [ %2602, %2600 ]
  %2588 = phi i32 [ 0, %2525 ], [ %2601, %2600 ]
  %2589 = icmp slt i32 %2588, 1024
  br i1 %2589, label %2590, label %2600

2590:                                             ; preds = %2586
  %2591 = trunc nuw i32 %2587 to i8
  br label %2604

2592:                                             ; preds = %2600
  store i32 826689362, ptr %4, align 1
  %2593 = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %2593, align 1
  %2594 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %592, ptr %2594, align 1
  %2595 = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %610, ptr %2595, align 1
  %2596 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 512, ptr %2596, align 1
  %2597 = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 %2521, ptr %2597, align 1
  %2598 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 95, ptr %2598, align 1
  %2599 = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i32 %2601, ptr %2599, align 1
  br label %3518

2600:                                             ; preds = %3512, %2586
  %2601 = phi i32 [ %2588, %2586 ], [ %3513, %3512 ]
  %2602 = add nuw nsw i32 %2587, 1
  %2603 = icmp eq i32 %2602, 127
  br i1 %2603, label %2592, label %2586, !llvm.loop !91

2604:                                             ; preds = %2590, %3512
  %2605 = phi i32 [ 32, %2590 ], [ %3514, %3512 ]
  %2606 = phi i32 [ %2588, %2590 ], [ %3513, %3512 ]
  br i1 %2528, label %3489, label %2607

2607:                                             ; preds = %2604
  %2608 = call fastcc i32 @stbtt_FindGlyphIndex(ptr noundef nonnull readonly %20, i32 noundef range(i32 -2147483648, 127) %2587) #16
  %2609 = call fastcc i32 @stbtt_FindGlyphIndex(ptr noundef nonnull readonly %20, i32 noundef range(i32 -2147483648, 127) %2605) #16
  br i1 %2527, label %3361, label %2610

2610:                                             ; preds = %2607
  br i1 %2535, label %2611, label %2615

2611:                                             ; preds = %2610
  %2612 = load i8, ptr %2530, align 1, !tbaa !11
  %2613 = zext i8 %2612 to i16
  %2614 = shl nuw i16 %2613, 8
  br label %2615

2615:                                             ; preds = %2611, %2610
  %2616 = phi i16 [ %2614, %2611 ], [ 0, %2610 ]
  br i1 %2539, label %2617, label %3489

2617:                                             ; preds = %2615
  %2618 = load i8, ptr %2536, align 1, !tbaa !11
  %2619 = zext i8 %2618 to i16
  %2620 = or disjoint i16 %2616, %2619
  %2621 = icmp eq i16 %2620, 1
  br i1 %2621, label %2622, label %3489

2622:                                             ; preds = %2617
  br i1 %2543, label %2623, label %2627

2623:                                             ; preds = %2622
  %2624 = load i8, ptr %2540, align 1, !tbaa !11
  %2625 = zext i8 %2624 to i16
  %2626 = shl nuw i16 %2625, 8
  br label %2627

2627:                                             ; preds = %2623, %2622
  %2628 = phi i16 [ %2626, %2623 ], [ 0, %2622 ]
  br i1 %2547, label %2629, label %2633

2629:                                             ; preds = %2627
  %2630 = load i8, ptr %2544, align 1, !tbaa !11
  %2631 = zext i8 %2630 to i16
  %2632 = or disjoint i16 %2628, %2631
  br label %2633

2633:                                             ; preds = %2629, %2627
  %2634 = phi i16 [ %2632, %2629 ], [ %2628, %2627 ]
  %2635 = icmp eq i16 %2634, 0
  br i1 %2635, label %2636, label %3489

2636:                                             ; preds = %2633
  br i1 %2551, label %2637, label %2641

2637:                                             ; preds = %2636
  %2638 = load i8, ptr %2548, align 1, !tbaa !11
  %2639 = zext i8 %2638 to i16
  %2640 = shl nuw i16 %2639, 8
  br label %2641

2641:                                             ; preds = %2637, %2636
  %2642 = phi i16 [ %2640, %2637 ], [ 0, %2636 ]
  br i1 %2555, label %2643, label %2647

2643:                                             ; preds = %2641
  %2644 = load i8, ptr %2552, align 1, !tbaa !11
  %2645 = zext i8 %2644 to i16
  %2646 = or disjoint i16 %2642, %2645
  br label %2647

2647:                                             ; preds = %2643, %2641
  %2648 = phi i16 [ %2646, %2643 ], [ %2642, %2641 ]
  %2649 = zext i16 %2648 to i64
  %2650 = getelementptr inbounds nuw i8, ptr %2530, i64 %2649
  %2651 = icmp uge ptr %2650, %2531
  %2652 = icmp ult ptr %2650, %2533
  %2653 = select i1 %2651, i1 %2652, i1 false
  br i1 %2653, label %2654, label %2658

2654:                                             ; preds = %2647
  %2655 = load i8, ptr %2650, align 1, !tbaa !11
  %2656 = zext i8 %2655 to i16
  %2657 = shl nuw i16 %2656, 8
  br label %2658

2658:                                             ; preds = %2654, %2647
  %2659 = phi i16 [ %2657, %2654 ], [ 0, %2647 ]
  %2660 = getelementptr inbounds nuw i8, ptr %2650, i64 1
  %2661 = icmp uge ptr %2660, %2531
  %2662 = icmp ult ptr %2660, %2533
  %2663 = select i1 %2661, i1 %2662, i1 false
  br i1 %2663, label %2664, label %2668

2664:                                             ; preds = %2658
  %2665 = load i8, ptr %2660, align 1, !tbaa !11
  %2666 = zext i8 %2665 to i16
  %2667 = or disjoint i16 %2659, %2666
  br label %2668

2668:                                             ; preds = %2664, %2658
  %2669 = phi i16 [ %2667, %2664 ], [ %2659, %2658 ]
  %2670 = icmp eq i16 %2669, 0
  br i1 %2670, label %3489, label %2671

2671:                                             ; preds = %2668
  %2672 = getelementptr inbounds nuw i8, ptr %2650, i64 2
  %2673 = zext i16 %2669 to i64
  br label %2674

2674:                                             ; preds = %3358, %2671
  %2675 = phi i64 [ 0, %2671 ], [ %3359, %3358 ]
  %2676 = shl nuw nsw i64 %2675, 1
  %2677 = getelementptr inbounds nuw i8, ptr %2672, i64 %2676
  %2678 = icmp uge ptr %2677, %2531
  %2679 = icmp ult ptr %2677, %2533
  %2680 = select i1 %2678, i1 %2679, i1 false
  br i1 %2680, label %2681, label %2685

2681:                                             ; preds = %2674
  %2682 = load i8, ptr %2677, align 1, !tbaa !11
  %2683 = zext i8 %2682 to i16
  %2684 = shl nuw i16 %2683, 8
  br label %2685

2685:                                             ; preds = %2681, %2674
  %2686 = phi i16 [ %2684, %2681 ], [ 0, %2674 ]
  %2687 = getelementptr inbounds nuw i8, ptr %2677, i64 1
  %2688 = icmp uge ptr %2687, %2531
  %2689 = icmp ult ptr %2687, %2533
  %2690 = select i1 %2688, i1 %2689, i1 false
  br i1 %2690, label %2691, label %2695

2691:                                             ; preds = %2685
  %2692 = load i8, ptr %2687, align 1, !tbaa !11
  %2693 = zext i8 %2692 to i16
  %2694 = or disjoint i16 %2686, %2693
  br label %2695

2695:                                             ; preds = %2691, %2685
  %2696 = phi i16 [ %2694, %2691 ], [ %2686, %2685 ]
  %2697 = zext i16 %2696 to i64
  %2698 = getelementptr inbounds nuw i8, ptr %2650, i64 %2697
  %2699 = icmp uge ptr %2698, %2531
  %2700 = icmp ult ptr %2698, %2533
  %2701 = select i1 %2699, i1 %2700, i1 false
  br i1 %2701, label %2702, label %2706

2702:                                             ; preds = %2695
  %2703 = load i8, ptr %2698, align 1, !tbaa !11
  %2704 = zext i8 %2703 to i16
  %2705 = shl nuw i16 %2704, 8
  br label %2706

2706:                                             ; preds = %2702, %2695
  %2707 = phi i16 [ %2705, %2702 ], [ 0, %2695 ]
  %2708 = getelementptr inbounds nuw i8, ptr %2698, i64 1
  %2709 = icmp uge ptr %2708, %2531
  %2710 = icmp ult ptr %2708, %2533
  %2711 = select i1 %2709, i1 %2710, i1 false
  br i1 %2711, label %2712, label %2717

2712:                                             ; preds = %2706
  %2713 = load i8, ptr %2708, align 1, !tbaa !11
  %2714 = zext i8 %2713 to i16
  %2715 = or disjoint i16 %2707, %2714
  %2716 = icmp ne i16 %2715, 2
  br label %2717

2717:                                             ; preds = %2712, %2706
  %2718 = phi i1 [ %2716, %2712 ], [ true, %2706 ]
  %2719 = getelementptr inbounds nuw i8, ptr %2698, i64 4
  %2720 = icmp uge ptr %2719, %2531
  %2721 = icmp ult ptr %2719, %2533
  %2722 = select i1 %2720, i1 %2721, i1 false
  br i1 %2722, label %2723, label %2727

2723:                                             ; preds = %2717
  %2724 = load i8, ptr %2719, align 1, !tbaa !11
  %2725 = zext i8 %2724 to i16
  %2726 = shl nuw i16 %2725, 8
  br label %2727

2727:                                             ; preds = %2723, %2717
  %2728 = phi i16 [ %2726, %2723 ], [ 0, %2717 ]
  %2729 = getelementptr inbounds nuw i8, ptr %2698, i64 5
  %2730 = icmp uge ptr %2729, %2531
  %2731 = icmp ult ptr %2729, %2533
  %2732 = select i1 %2730, i1 %2731, i1 false
  br i1 %2732, label %2733, label %2737

2733:                                             ; preds = %2727
  %2734 = load i8, ptr %2729, align 1, !tbaa !11
  %2735 = zext i8 %2734 to i16
  %2736 = or disjoint i16 %2728, %2735
  br label %2737

2737:                                             ; preds = %2733, %2727
  %2738 = phi i16 [ %2736, %2733 ], [ %2728, %2727 ]
  %2739 = getelementptr inbounds nuw i8, ptr %2698, i64 6
  %2740 = icmp eq i16 %2738, 0
  %2741 = select i1 %2718, i1 true, i1 %2740
  br i1 %2741, label %3358, label %2742

2742:                                             ; preds = %2737
  %2743 = zext i16 %2738 to i64
  br label %2744

2744:                                             ; preds = %3355, %2742
  %2745 = phi i64 [ 0, %2742 ], [ %3356, %3355 ]
  %2746 = shl nuw nsw i64 %2745, 1
  %2747 = getelementptr inbounds nuw i8, ptr %2739, i64 %2746
  %2748 = icmp uge ptr %2747, %2531
  %2749 = icmp ult ptr %2747, %2533
  %2750 = select i1 %2748, i1 %2749, i1 false
  br i1 %2750, label %2751, label %2755

2751:                                             ; preds = %2744
  %2752 = load i8, ptr %2747, align 1, !tbaa !11
  %2753 = zext i8 %2752 to i16
  %2754 = shl nuw i16 %2753, 8
  br label %2755

2755:                                             ; preds = %2751, %2744
  %2756 = phi i16 [ %2754, %2751 ], [ 0, %2744 ]
  %2757 = getelementptr inbounds nuw i8, ptr %2747, i64 1
  %2758 = icmp uge ptr %2757, %2531
  %2759 = icmp ult ptr %2757, %2533
  %2760 = select i1 %2758, i1 %2759, i1 false
  br i1 %2760, label %2761, label %2765

2761:                                             ; preds = %2755
  %2762 = load i8, ptr %2757, align 1, !tbaa !11
  %2763 = zext i8 %2762 to i16
  %2764 = or disjoint i16 %2756, %2763
  br label %2765

2765:                                             ; preds = %2761, %2755
  %2766 = phi i16 [ %2764, %2761 ], [ %2756, %2755 ]
  %2767 = zext i16 %2766 to i64
  %2768 = getelementptr inbounds nuw i8, ptr %2698, i64 %2767
  %2769 = icmp uge ptr %2768, %2531
  %2770 = icmp ult ptr %2768, %2533
  %2771 = select i1 %2769, i1 %2770, i1 false
  br i1 %2771, label %2772, label %2776

2772:                                             ; preds = %2765
  %2773 = load i8, ptr %2768, align 1, !tbaa !11
  %2774 = zext i8 %2773 to i16
  %2775 = shl nuw i16 %2774, 8
  br label %2776

2776:                                             ; preds = %2772, %2765
  %2777 = phi i16 [ %2775, %2772 ], [ 0, %2765 ]
  %2778 = getelementptr inbounds nuw i8, ptr %2768, i64 1
  %2779 = icmp uge ptr %2778, %2531
  %2780 = icmp ult ptr %2778, %2533
  %2781 = select i1 %2779, i1 %2780, i1 false
  br i1 %2781, label %2782, label %2786

2782:                                             ; preds = %2776
  %2783 = load i8, ptr %2778, align 1, !tbaa !11
  %2784 = zext i8 %2783 to i16
  %2785 = or disjoint i16 %2777, %2784
  br label %2786

2786:                                             ; preds = %2782, %2776
  %2787 = phi i16 [ %2785, %2782 ], [ %2777, %2776 ]
  %2788 = getelementptr inbounds nuw i8, ptr %2768, i64 2
  %2789 = icmp uge ptr %2788, %2531
  %2790 = icmp ult ptr %2788, %2533
  %2791 = select i1 %2789, i1 %2790, i1 false
  br i1 %2791, label %2792, label %2796

2792:                                             ; preds = %2786
  %2793 = load i8, ptr %2788, align 1, !tbaa !11
  %2794 = zext i8 %2793 to i16
  %2795 = shl nuw i16 %2794, 8
  br label %2796

2796:                                             ; preds = %2792, %2786
  %2797 = phi i16 [ %2795, %2792 ], [ 0, %2786 ]
  %2798 = getelementptr inbounds nuw i8, ptr %2768, i64 3
  %2799 = icmp uge ptr %2798, %2531
  %2800 = icmp ult ptr %2798, %2533
  %2801 = select i1 %2799, i1 %2800, i1 false
  br i1 %2801, label %2802, label %2806

2802:                                             ; preds = %2796
  %2803 = load i8, ptr %2798, align 1, !tbaa !11
  %2804 = zext i8 %2803 to i16
  %2805 = or disjoint i16 %2797, %2804
  br label %2806

2806:                                             ; preds = %2802, %2796
  %2807 = phi i16 [ %2805, %2802 ], [ %2797, %2796 ]
  %2808 = zext i16 %2807 to i64
  %2809 = getelementptr inbounds nuw i8, ptr %2768, i64 %2808
  %2810 = icmp uge ptr %2809, %2531
  %2811 = icmp ult ptr %2809, %2533
  %2812 = select i1 %2810, i1 %2811, i1 false
  br i1 %2812, label %2813, label %2817

2813:                                             ; preds = %2806
  %2814 = load i8, ptr %2809, align 1, !tbaa !11
  %2815 = zext i8 %2814 to i16
  %2816 = shl nuw i16 %2815, 8
  br label %2817

2817:                                             ; preds = %2813, %2806
  %2818 = phi i16 [ %2816, %2813 ], [ 0, %2806 ]
  %2819 = getelementptr inbounds nuw i8, ptr %2809, i64 1
  %2820 = icmp uge ptr %2819, %2531
  %2821 = icmp ult ptr %2819, %2533
  %2822 = select i1 %2820, i1 %2821, i1 false
  br i1 %2822, label %2823, label %2827

2823:                                             ; preds = %2817
  %2824 = load i8, ptr %2819, align 1, !tbaa !11
  %2825 = zext i8 %2824 to i16
  %2826 = or disjoint i16 %2818, %2825
  br label %2827

2827:                                             ; preds = %2823, %2817
  %2828 = phi i16 [ %2826, %2823 ], [ %2818, %2817 ]
  switch i16 %2828, label %3355 [
    i16 1, label %2829
    i16 2, label %2894
  ]

2829:                                             ; preds = %2827
  %2830 = getelementptr inbounds nuw i8, ptr %2809, i64 2
  %2831 = icmp uge ptr %2830, %2531
  %2832 = icmp ult ptr %2830, %2533
  %2833 = select i1 %2831, i1 %2832, i1 false
  br i1 %2833, label %2834, label %2838

2834:                                             ; preds = %2829
  %2835 = load i8, ptr %2830, align 1, !tbaa !11
  %2836 = zext i8 %2835 to i16
  %2837 = shl nuw i16 %2836, 8
  br label %2838

2838:                                             ; preds = %2834, %2829
  %2839 = phi i16 [ %2837, %2834 ], [ 0, %2829 ]
  %2840 = getelementptr inbounds nuw i8, ptr %2809, i64 3
  %2841 = icmp uge ptr %2840, %2531
  %2842 = icmp ult ptr %2840, %2533
  %2843 = select i1 %2841, i1 %2842, i1 false
  br i1 %2843, label %2844, label %2848

2844:                                             ; preds = %2838
  %2845 = load i8, ptr %2840, align 1, !tbaa !11
  %2846 = zext i8 %2845 to i16
  %2847 = or disjoint i16 %2839, %2846
  br label %2848

2848:                                             ; preds = %2844, %2838
  %2849 = phi i16 [ %2847, %2844 ], [ %2839, %2838 ]
  %2850 = icmp eq i16 %2849, 0
  br i1 %2850, label %3355, label %2851

2851:                                             ; preds = %2848
  %2852 = zext i16 %2849 to i32
  %2853 = add nsw i32 %2852, -1
  %2854 = getelementptr inbounds nuw i8, ptr %2809, i64 4
  br label %2855

2855:                                             ; preds = %2890, %2851
  %2856 = phi i32 [ 0, %2851 ], [ %2892, %2890 ]
  %2857 = phi i32 [ %2853, %2851 ], [ %2891, %2890 ]
  %2858 = add i32 %2857, %2856
  %2859 = ashr i32 %2858, 1
  %2860 = and i32 %2858, -2
  %2861 = sext i32 %2860 to i64
  %2862 = getelementptr inbounds i8, ptr %2854, i64 %2861
  %2863 = icmp uge ptr %2862, %2531
  %2864 = icmp ult ptr %2862, %2533
  %2865 = select i1 %2863, i1 %2864, i1 false
  br i1 %2865, label %2866, label %2870

2866:                                             ; preds = %2855
  %2867 = load i8, ptr %2862, align 1, !tbaa !11
  %2868 = zext i8 %2867 to i16
  %2869 = shl nuw i16 %2868, 8
  br label %2870

2870:                                             ; preds = %2866, %2855
  %2871 = phi i16 [ %2869, %2866 ], [ 0, %2855 ]
  %2872 = getelementptr inbounds nuw i8, ptr %2862, i64 1
  %2873 = icmp uge ptr %2872, %2531
  %2874 = icmp ult ptr %2872, %2533
  %2875 = select i1 %2873, i1 %2874, i1 false
  br i1 %2875, label %2876, label %2880

2876:                                             ; preds = %2870
  %2877 = load i8, ptr %2872, align 1, !tbaa !11
  %2878 = zext i8 %2877 to i16
  %2879 = or disjoint i16 %2871, %2878
  br label %2880

2880:                                             ; preds = %2876, %2870
  %2881 = phi i16 [ %2879, %2876 ], [ %2871, %2870 ]
  %2882 = zext i16 %2881 to i32
  %2883 = icmp slt i32 %2608, %2882
  br i1 %2883, label %2884, label %2886

2884:                                             ; preds = %2880
  %2885 = add nsw i32 %2859, -1
  br label %2890

2886:                                             ; preds = %2880
  %2887 = icmp samesign ugt i32 %2608, %2882
  br i1 %2887, label %2888, label %3004

2888:                                             ; preds = %2886
  %2889 = add nsw i32 %2859, 1
  br label %2890

2890:                                             ; preds = %2888, %2884
  %2891 = phi i32 [ %2857, %2888 ], [ %2885, %2884 ]
  %2892 = phi i32 [ %2889, %2888 ], [ %2856, %2884 ]
  %2893 = icmp sgt i32 %2892, %2891
  br i1 %2893, label %3355, label %2855, !llvm.loop !92

2894:                                             ; preds = %2827
  %2895 = getelementptr inbounds nuw i8, ptr %2809, i64 2
  %2896 = icmp uge ptr %2895, %2531
  %2897 = icmp ult ptr %2895, %2533
  %2898 = select i1 %2896, i1 %2897, i1 false
  br i1 %2898, label %2899, label %2903

2899:                                             ; preds = %2894
  %2900 = load i8, ptr %2895, align 1, !tbaa !11
  %2901 = zext i8 %2900 to i16
  %2902 = shl nuw i16 %2901, 8
  br label %2903

2903:                                             ; preds = %2899, %2894
  %2904 = phi i16 [ %2902, %2899 ], [ 0, %2894 ]
  %2905 = getelementptr inbounds nuw i8, ptr %2809, i64 3
  %2906 = icmp uge ptr %2905, %2531
  %2907 = icmp ult ptr %2905, %2533
  %2908 = select i1 %2906, i1 %2907, i1 false
  br i1 %2908, label %2909, label %2913

2909:                                             ; preds = %2903
  %2910 = load i8, ptr %2905, align 1, !tbaa !11
  %2911 = zext i8 %2910 to i16
  %2912 = or disjoint i16 %2904, %2911
  br label %2913

2913:                                             ; preds = %2909, %2903
  %2914 = phi i16 [ %2912, %2909 ], [ %2904, %2903 ]
  %2915 = getelementptr inbounds nuw i8, ptr %2809, i64 4
  %2916 = icmp eq i16 %2914, 0
  br i1 %2916, label %3355, label %2917

2917:                                             ; preds = %2913
  %2918 = zext i16 %2914 to i32
  %2919 = add nsw i32 %2918, -1
  br label %2920

2920:                                             ; preds = %2995, %2917
  %2921 = phi i32 [ %2997, %2995 ], [ 0, %2917 ]
  %2922 = phi i32 [ %2996, %2995 ], [ %2919, %2917 ]
  %2923 = add i32 %2922, %2921
  %2924 = ashr i32 %2923, 1
  %2925 = mul i32 %2924, 6
  %2926 = sext i32 %2925 to i64
  %2927 = getelementptr inbounds i8, ptr %2915, i64 %2926
  %2928 = icmp uge ptr %2927, %2531
  %2929 = icmp ult ptr %2927, %2533
  %2930 = select i1 %2928, i1 %2929, i1 false
  br i1 %2930, label %2931, label %2935

2931:                                             ; preds = %2920
  %2932 = load i8, ptr %2927, align 1, !tbaa !11
  %2933 = zext i8 %2932 to i16
  %2934 = shl nuw i16 %2933, 8
  br label %2935

2935:                                             ; preds = %2931, %2920
  %2936 = phi i16 [ %2934, %2931 ], [ 0, %2920 ]
  %2937 = getelementptr inbounds nuw i8, ptr %2927, i64 1
  %2938 = icmp uge ptr %2937, %2531
  %2939 = icmp ult ptr %2937, %2533
  %2940 = select i1 %2938, i1 %2939, i1 false
  br i1 %2940, label %2941, label %2945

2941:                                             ; preds = %2935
  %2942 = load i8, ptr %2937, align 1, !tbaa !11
  %2943 = zext i8 %2942 to i16
  %2944 = or disjoint i16 %2936, %2943
  br label %2945

2945:                                             ; preds = %2941, %2935
  %2946 = phi i16 [ %2944, %2941 ], [ %2936, %2935 ]
  %2947 = zext i16 %2946 to i32
  %2948 = getelementptr inbounds nuw i8, ptr %2927, i64 2
  %2949 = icmp uge ptr %2948, %2531
  %2950 = icmp ult ptr %2948, %2533
  %2951 = select i1 %2949, i1 %2950, i1 false
  br i1 %2951, label %2952, label %2956

2952:                                             ; preds = %2945
  %2953 = load i8, ptr %2948, align 1, !tbaa !11
  %2954 = zext i8 %2953 to i16
  %2955 = shl nuw i16 %2954, 8
  br label %2956

2956:                                             ; preds = %2952, %2945
  %2957 = phi i16 [ %2955, %2952 ], [ 0, %2945 ]
  %2958 = getelementptr inbounds nuw i8, ptr %2927, i64 3
  %2959 = icmp uge ptr %2958, %2531
  %2960 = icmp ult ptr %2958, %2533
  %2961 = select i1 %2959, i1 %2960, i1 false
  br i1 %2961, label %2962, label %2966

2962:                                             ; preds = %2956
  %2963 = load i8, ptr %2958, align 1, !tbaa !11
  %2964 = zext i8 %2963 to i16
  %2965 = or disjoint i16 %2957, %2964
  br label %2966

2966:                                             ; preds = %2962, %2956
  %2967 = phi i16 [ %2965, %2962 ], [ %2957, %2956 ]
  %2968 = icmp slt i32 %2608, %2947
  br i1 %2968, label %2969, label %2971

2969:                                             ; preds = %2966
  %2970 = add nsw i32 %2924, -1
  br label %2995

2971:                                             ; preds = %2966
  %2972 = zext i16 %2967 to i32
  %2973 = icmp samesign ugt i32 %2608, %2972
  br i1 %2973, label %2974, label %2976

2974:                                             ; preds = %2971
  %2975 = add nsw i32 %2924, 1
  br label %2995

2976:                                             ; preds = %2971
  %2977 = getelementptr inbounds nuw i8, ptr %2927, i64 4
  %2978 = icmp uge ptr %2977, %2531
  %2979 = icmp ult ptr %2977, %2533
  %2980 = select i1 %2978, i1 %2979, i1 false
  br i1 %2980, label %2981, label %2985

2981:                                             ; preds = %2976
  %2982 = load i8, ptr %2977, align 1, !tbaa !11
  %2983 = zext i8 %2982 to i16
  %2984 = shl nuw i16 %2983, 8
  br label %2985

2985:                                             ; preds = %2981, %2976
  %2986 = phi i16 [ %2984, %2981 ], [ 0, %2976 ]
  %2987 = getelementptr inbounds nuw i8, ptr %2927, i64 5
  %2988 = icmp uge ptr %2987, %2531
  %2989 = icmp ult ptr %2987, %2533
  %2990 = select i1 %2988, i1 %2989, i1 false
  br i1 %2990, label %2991, label %2999

2991:                                             ; preds = %2985
  %2992 = load i8, ptr %2987, align 1, !tbaa !11
  %2993 = zext i8 %2992 to i16
  %2994 = or disjoint i16 %2986, %2993
  br label %2999

2995:                                             ; preds = %2974, %2969
  %2996 = phi i32 [ %2922, %2974 ], [ %2970, %2969 ]
  %2997 = phi i32 [ %2975, %2974 ], [ %2921, %2969 ]
  %2998 = icmp sgt i32 %2997, %2996
  br i1 %2998, label %3355, label %2920, !llvm.loop !93

2999:                                             ; preds = %2991, %2985
  %3000 = phi i16 [ %2994, %2991 ], [ %2986, %2985 ]
  %3001 = zext i16 %3000 to i32
  %3002 = sub nsw i32 %2608, %2947
  %3003 = add nsw i32 %3002, %3001
  br label %3004

3004:                                             ; preds = %2886, %2999
  %3005 = phi i32 [ %3003, %2999 ], [ %2859, %2886 ]
  %3006 = icmp eq i32 %3005, -1
  br i1 %3006, label %3355, label %3007

3007:                                             ; preds = %3004
  switch i16 %2787, label %3489 [
    i16 1, label %3008
    i16 2, label %3186
  ]

3008:                                             ; preds = %3007
  %3009 = getelementptr inbounds nuw i8, ptr %2768, i64 4
  %3010 = icmp uge ptr %3009, %2531
  %3011 = icmp ult ptr %3009, %2533
  %3012 = select i1 %3010, i1 %3011, i1 false
  br i1 %3012, label %3013, label %3017

3013:                                             ; preds = %3008
  %3014 = load i8, ptr %3009, align 1, !tbaa !11
  %3015 = zext i8 %3014 to i16
  %3016 = shl nuw i16 %3015, 8
  br label %3017

3017:                                             ; preds = %3013, %3008
  %3018 = phi i16 [ %3016, %3013 ], [ 0, %3008 ]
  %3019 = getelementptr inbounds nuw i8, ptr %2768, i64 5
  %3020 = icmp uge ptr %3019, %2531
  %3021 = icmp ult ptr %3019, %2533
  %3022 = select i1 %3020, i1 %3021, i1 false
  br i1 %3022, label %3023, label %3028

3023:                                             ; preds = %3017
  %3024 = load i8, ptr %3019, align 1, !tbaa !11
  %3025 = zext i8 %3024 to i16
  %3026 = or disjoint i16 %3018, %3025
  %3027 = icmp eq i16 %3026, 4
  br label %3028

3028:                                             ; preds = %3023, %3017
  %3029 = phi i1 [ %3027, %3023 ], [ false, %3017 ]
  %3030 = getelementptr inbounds nuw i8, ptr %2768, i64 6
  %3031 = icmp uge ptr %3030, %2531
  %3032 = icmp ult ptr %3030, %2533
  %3033 = select i1 %3031, i1 %3032, i1 false
  br i1 %3033, label %3034, label %3038

3034:                                             ; preds = %3028
  %3035 = load i8, ptr %3030, align 1, !tbaa !11
  %3036 = zext i8 %3035 to i16
  %3037 = shl nuw i16 %3036, 8
  br label %3038

3038:                                             ; preds = %3034, %3028
  %3039 = phi i16 [ %3037, %3034 ], [ 0, %3028 ]
  %3040 = getelementptr inbounds nuw i8, ptr %2768, i64 7
  %3041 = icmp uge ptr %3040, %2531
  %3042 = icmp ult ptr %3040, %2533
  %3043 = select i1 %3041, i1 %3042, i1 false
  br i1 %3043, label %3044, label %3048

3044:                                             ; preds = %3038
  %3045 = load i8, ptr %3040, align 1, !tbaa !11
  %3046 = zext i8 %3045 to i16
  %3047 = or disjoint i16 %3039, %3046
  br label %3048

3048:                                             ; preds = %3044, %3038
  %3049 = phi i16 [ %3047, %3044 ], [ %3039, %3038 ]
  %3050 = icmp eq i16 %3049, 0
  %3051 = select i1 %3029, i1 %3050, i1 false
  br i1 %3051, label %3052, label %3489

3052:                                             ; preds = %3048
  %3053 = getelementptr inbounds nuw i8, ptr %2768, i64 8
  %3054 = icmp uge ptr %3053, %2531
  %3055 = icmp ult ptr %3053, %2533
  %3056 = select i1 %3054, i1 %3055, i1 false
  br i1 %3056, label %3057, label %3061

3057:                                             ; preds = %3052
  %3058 = load i8, ptr %3053, align 1, !tbaa !11
  %3059 = zext i8 %3058 to i16
  %3060 = shl nuw i16 %3059, 8
  br label %3061

3061:                                             ; preds = %3057, %3052
  %3062 = phi i16 [ %3060, %3057 ], [ 0, %3052 ]
  %3063 = getelementptr inbounds nuw i8, ptr %2768, i64 9
  %3064 = icmp uge ptr %3063, %2531
  %3065 = icmp ult ptr %3063, %2533
  %3066 = select i1 %3064, i1 %3065, i1 false
  br i1 %3066, label %3067, label %3071

3067:                                             ; preds = %3061
  %3068 = load i8, ptr %3063, align 1, !tbaa !11
  %3069 = zext i8 %3068 to i16
  %3070 = or disjoint i16 %3062, %3069
  br label %3071

3071:                                             ; preds = %3067, %3061
  %3072 = phi i16 [ %3070, %3067 ], [ %3062, %3061 ]
  %3073 = getelementptr inbounds nuw i8, ptr %2768, i64 10
  %3074 = shl nsw i32 %3005, 1
  %3075 = sext i32 %3074 to i64
  %3076 = getelementptr inbounds i8, ptr %3073, i64 %3075
  %3077 = icmp uge ptr %3076, %2531
  %3078 = icmp ult ptr %3076, %2533
  %3079 = select i1 %3077, i1 %3078, i1 false
  br i1 %3079, label %3080, label %3084

3080:                                             ; preds = %3071
  %3081 = load i8, ptr %3076, align 1, !tbaa !11
  %3082 = zext i8 %3081 to i16
  %3083 = shl nuw i16 %3082, 8
  br label %3084

3084:                                             ; preds = %3080, %3071
  %3085 = phi i16 [ %3083, %3080 ], [ 0, %3071 ]
  %3086 = getelementptr inbounds nuw i8, ptr %3076, i64 1
  %3087 = icmp uge ptr %3086, %2531
  %3088 = icmp ult ptr %3086, %2533
  %3089 = select i1 %3087, i1 %3088, i1 false
  br i1 %3089, label %3090, label %3094

3090:                                             ; preds = %3084
  %3091 = load i8, ptr %3086, align 1, !tbaa !11
  %3092 = zext i8 %3091 to i16
  %3093 = or disjoint i16 %3085, %3092
  br label %3094

3094:                                             ; preds = %3090, %3084
  %3095 = phi i16 [ %3093, %3090 ], [ %3085, %3084 ]
  %3096 = zext i16 %3095 to i64
  %3097 = getelementptr inbounds nuw i8, ptr %2768, i64 %3096
  %3098 = icmp uge ptr %3097, %2531
  %3099 = icmp ult ptr %3097, %2533
  %3100 = select i1 %3098, i1 %3099, i1 false
  br i1 %3100, label %3101, label %3105

3101:                                             ; preds = %3094
  %3102 = load i8, ptr %3097, align 1, !tbaa !11
  %3103 = zext i8 %3102 to i16
  %3104 = shl nuw i16 %3103, 8
  br label %3105

3105:                                             ; preds = %3101, %3094
  %3106 = phi i16 [ %3104, %3101 ], [ 0, %3094 ]
  %3107 = getelementptr inbounds nuw i8, ptr %3097, i64 1
  %3108 = icmp uge ptr %3107, %2531
  %3109 = icmp ult ptr %3107, %2533
  %3110 = select i1 %3108, i1 %3109, i1 false
  br i1 %3110, label %3111, label %3115

3111:                                             ; preds = %3105
  %3112 = load i8, ptr %3107, align 1, !tbaa !11
  %3113 = zext i8 %3112 to i16
  %3114 = or disjoint i16 %3106, %3113
  br label %3115

3115:                                             ; preds = %3111, %3105
  %3116 = phi i16 [ %3114, %3111 ], [ %3106, %3105 ]
  %3117 = getelementptr inbounds nuw i8, ptr %3097, i64 2
  %3118 = zext i16 %3072 to i32
  %3119 = icmp slt i32 %3005, %3118
  br i1 %3119, label %3120, label %3489

3120:                                             ; preds = %3115
  %3121 = icmp eq i16 %3116, 0
  br i1 %3121, label %3355, label %3122

3122:                                             ; preds = %3120
  %3123 = zext i16 %3116 to i32
  %3124 = add nsw i32 %3123, -1
  br label %3125

3125:                                             ; preds = %3182, %3122
  %3126 = phi i32 [ %3184, %3182 ], [ 0, %3122 ]
  %3127 = phi i32 [ %3183, %3182 ], [ %3124, %3122 ]
  %3128 = add i32 %3127, %3126
  %3129 = ashr i32 %3128, 1
  %3130 = shl i32 %3129, 2
  %3131 = sext i32 %3130 to i64
  %3132 = getelementptr inbounds i8, ptr %3117, i64 %3131
  %3133 = icmp uge ptr %3132, %2531
  %3134 = icmp ult ptr %3132, %2533
  %3135 = select i1 %3133, i1 %3134, i1 false
  br i1 %3135, label %3136, label %3140

3136:                                             ; preds = %3125
  %3137 = load i8, ptr %3132, align 1, !tbaa !11
  %3138 = zext i8 %3137 to i16
  %3139 = shl nuw i16 %3138, 8
  br label %3140

3140:                                             ; preds = %3136, %3125
  %3141 = phi i16 [ %3139, %3136 ], [ 0, %3125 ]
  %3142 = getelementptr inbounds nuw i8, ptr %3132, i64 1
  %3143 = icmp uge ptr %3142, %2531
  %3144 = icmp ult ptr %3142, %2533
  %3145 = select i1 %3143, i1 %3144, i1 false
  br i1 %3145, label %3146, label %3150

3146:                                             ; preds = %3140
  %3147 = load i8, ptr %3142, align 1, !tbaa !11
  %3148 = zext i8 %3147 to i16
  %3149 = or disjoint i16 %3141, %3148
  br label %3150

3150:                                             ; preds = %3146, %3140
  %3151 = phi i16 [ %3149, %3146 ], [ %3141, %3140 ]
  %3152 = zext i16 %3151 to i32
  %3153 = icmp slt i32 %2609, %3152
  br i1 %3153, label %3154, label %3156

3154:                                             ; preds = %3150
  %3155 = add nsw i32 %3129, -1
  br label %3182

3156:                                             ; preds = %3150
  %3157 = icmp samesign ugt i32 %2609, %3152
  br i1 %3157, label %3158, label %3160

3158:                                             ; preds = %3156
  %3159 = add nsw i32 %3129, 1
  br label %3182

3160:                                             ; preds = %3156
  %3161 = getelementptr inbounds nuw i8, ptr %3132, i64 2
  %3162 = icmp uge ptr %3161, %2531
  %3163 = icmp ult ptr %3161, %2533
  %3164 = select i1 %3162, i1 %3163, i1 false
  br i1 %3164, label %3165, label %3169

3165:                                             ; preds = %3160
  %3166 = load i8, ptr %3161, align 1, !tbaa !11
  %3167 = zext i8 %3166 to i16
  %3168 = shl nuw i16 %3167, 8
  br label %3169

3169:                                             ; preds = %3165, %3160
  %3170 = phi i16 [ %3168, %3165 ], [ 0, %3160 ]
  %3171 = getelementptr inbounds nuw i8, ptr %3132, i64 3
  %3172 = icmp uge ptr %3171, %2531
  %3173 = icmp ult ptr %3171, %2533
  %3174 = select i1 %3172, i1 %3173, i1 false
  br i1 %3174, label %3175, label %3179

3175:                                             ; preds = %3169
  %3176 = load i8, ptr %3171, align 1, !tbaa !11
  %3177 = zext i8 %3176 to i16
  %3178 = or disjoint i16 %3170, %3177
  br label %3179

3179:                                             ; preds = %3175, %3169
  %3180 = phi i16 [ %3178, %3175 ], [ %3170, %3169 ]
  %3181 = sext i16 %3180 to i32
  br label %3489

3182:                                             ; preds = %3158, %3154
  %3183 = phi i32 [ %3127, %3158 ], [ %3155, %3154 ]
  %3184 = phi i32 [ %3159, %3158 ], [ %3126, %3154 ]
  %3185 = icmp sgt i32 %3184, %3183
  br i1 %3185, label %3355, label %3125, !llvm.loop !94

3186:                                             ; preds = %3007
  %3187 = getelementptr inbounds nuw i8, ptr %2768, i64 4
  %3188 = icmp uge ptr %3187, %2531
  %3189 = icmp ult ptr %3187, %2533
  %3190 = select i1 %3188, i1 %3189, i1 false
  br i1 %3190, label %3191, label %3195

3191:                                             ; preds = %3186
  %3192 = load i8, ptr %3187, align 1, !tbaa !11
  %3193 = zext i8 %3192 to i16
  %3194 = shl nuw i16 %3193, 8
  br label %3195

3195:                                             ; preds = %3191, %3186
  %3196 = phi i16 [ %3194, %3191 ], [ 0, %3186 ]
  %3197 = getelementptr inbounds nuw i8, ptr %2768, i64 5
  %3198 = icmp uge ptr %3197, %2531
  %3199 = icmp ult ptr %3197, %2533
  %3200 = select i1 %3198, i1 %3199, i1 false
  br i1 %3200, label %3201, label %3206

3201:                                             ; preds = %3195
  %3202 = load i8, ptr %3197, align 1, !tbaa !11
  %3203 = zext i8 %3202 to i16
  %3204 = or disjoint i16 %3196, %3203
  %3205 = icmp eq i16 %3204, 4
  br label %3206

3206:                                             ; preds = %3201, %3195
  %3207 = phi i1 [ %3205, %3201 ], [ false, %3195 ]
  %3208 = getelementptr inbounds nuw i8, ptr %2768, i64 6
  %3209 = icmp uge ptr %3208, %2531
  %3210 = icmp ult ptr %3208, %2533
  %3211 = select i1 %3209, i1 %3210, i1 false
  br i1 %3211, label %3212, label %3216

3212:                                             ; preds = %3206
  %3213 = load i8, ptr %3208, align 1, !tbaa !11
  %3214 = zext i8 %3213 to i16
  %3215 = shl nuw i16 %3214, 8
  br label %3216

3216:                                             ; preds = %3212, %3206
  %3217 = phi i16 [ %3215, %3212 ], [ 0, %3206 ]
  %3218 = getelementptr inbounds nuw i8, ptr %2768, i64 7
  %3219 = icmp uge ptr %3218, %2531
  %3220 = icmp ult ptr %3218, %2533
  %3221 = select i1 %3219, i1 %3220, i1 false
  br i1 %3221, label %3222, label %3226

3222:                                             ; preds = %3216
  %3223 = load i8, ptr %3218, align 1, !tbaa !11
  %3224 = zext i8 %3223 to i16
  %3225 = or disjoint i16 %3217, %3224
  br label %3226

3226:                                             ; preds = %3222, %3216
  %3227 = phi i16 [ %3225, %3222 ], [ %3217, %3216 ]
  %3228 = icmp eq i16 %3227, 0
  %3229 = select i1 %3207, i1 %3228, i1 false
  br i1 %3229, label %3230, label %3489

3230:                                             ; preds = %3226
  %3231 = getelementptr inbounds nuw i8, ptr %2768, i64 8
  %3232 = icmp uge ptr %3231, %2531
  %3233 = icmp ult ptr %3231, %2533
  %3234 = select i1 %3232, i1 %3233, i1 false
  br i1 %3234, label %3235, label %3239

3235:                                             ; preds = %3230
  %3236 = load i8, ptr %3231, align 1, !tbaa !11
  %3237 = zext i8 %3236 to i16
  %3238 = shl nuw i16 %3237, 8
  br label %3239

3239:                                             ; preds = %3235, %3230
  %3240 = phi i16 [ %3238, %3235 ], [ 0, %3230 ]
  %3241 = getelementptr inbounds nuw i8, ptr %2768, i64 9
  %3242 = icmp uge ptr %3241, %2531
  %3243 = icmp ult ptr %3241, %2533
  %3244 = select i1 %3242, i1 %3243, i1 false
  br i1 %3244, label %3245, label %3249

3245:                                             ; preds = %3239
  %3246 = load i8, ptr %3241, align 1, !tbaa !11
  %3247 = zext i8 %3246 to i16
  %3248 = or disjoint i16 %3240, %3247
  br label %3249

3249:                                             ; preds = %3245, %3239
  %3250 = phi i16 [ %3248, %3245 ], [ %3240, %3239 ]
  %3251 = getelementptr inbounds nuw i8, ptr %2768, i64 10
  %3252 = icmp uge ptr %3251, %2531
  %3253 = icmp ult ptr %3251, %2533
  %3254 = select i1 %3252, i1 %3253, i1 false
  br i1 %3254, label %3255, label %3259

3255:                                             ; preds = %3249
  %3256 = load i8, ptr %3251, align 1, !tbaa !11
  %3257 = zext i8 %3256 to i16
  %3258 = shl nuw i16 %3257, 8
  br label %3259

3259:                                             ; preds = %3255, %3249
  %3260 = phi i16 [ %3258, %3255 ], [ 0, %3249 ]
  %3261 = getelementptr inbounds nuw i8, ptr %2768, i64 11
  %3262 = icmp uge ptr %3261, %2531
  %3263 = icmp ult ptr %3261, %2533
  %3264 = select i1 %3262, i1 %3263, i1 false
  br i1 %3264, label %3265, label %3269

3265:                                             ; preds = %3259
  %3266 = load i8, ptr %3261, align 1, !tbaa !11
  %3267 = zext i8 %3266 to i16
  %3268 = or disjoint i16 %3260, %3267
  br label %3269

3269:                                             ; preds = %3265, %3259
  %3270 = phi i16 [ %3268, %3265 ], [ %3260, %3259 ]
  %3271 = zext i16 %3250 to i64
  %3272 = getelementptr inbounds nuw i8, ptr %2768, i64 %3271
  %3273 = call fastcc i32 @stbtt__GetGlyphClass(ptr noundef nonnull %3272, i32 noundef %2608) #16
  %3274 = zext i16 %3270 to i64
  %3275 = getelementptr inbounds nuw i8, ptr %2768, i64 %3274
  %3276 = call fastcc i32 @stbtt__GetGlyphClass(ptr noundef nonnull %3275, i32 noundef %2609) #16
  %3277 = getelementptr inbounds nuw i8, ptr %2768, i64 12
  %3278 = icmp uge ptr %3277, %2531
  %3279 = icmp ult ptr %3277, %2533
  %3280 = select i1 %3278, i1 %3279, i1 false
  br i1 %3280, label %3281, label %3285

3281:                                             ; preds = %3269
  %3282 = load i8, ptr %3277, align 1, !tbaa !11
  %3283 = zext i8 %3282 to i16
  %3284 = shl nuw i16 %3283, 8
  br label %3285

3285:                                             ; preds = %3281, %3269
  %3286 = phi i16 [ %3284, %3281 ], [ 0, %3269 ]
  %3287 = getelementptr inbounds nuw i8, ptr %2768, i64 13
  %3288 = icmp uge ptr %3287, %2531
  %3289 = icmp ult ptr %3287, %2533
  %3290 = select i1 %3288, i1 %3289, i1 false
  br i1 %3290, label %3291, label %3295

3291:                                             ; preds = %3285
  %3292 = load i8, ptr %3287, align 1, !tbaa !11
  %3293 = zext i8 %3292 to i16
  %3294 = or disjoint i16 %3286, %3293
  br label %3295

3295:                                             ; preds = %3291, %3285
  %3296 = phi i16 [ %3294, %3291 ], [ %3286, %3285 ]
  %3297 = getelementptr inbounds nuw i8, ptr %2768, i64 14
  %3298 = icmp uge ptr %3297, %2531
  %3299 = icmp ult ptr %3297, %2533
  %3300 = select i1 %3298, i1 %3299, i1 false
  br i1 %3300, label %3301, label %3305

3301:                                             ; preds = %3295
  %3302 = load i8, ptr %3297, align 1, !tbaa !11
  %3303 = zext i8 %3302 to i16
  %3304 = shl nuw i16 %3303, 8
  br label %3305

3305:                                             ; preds = %3301, %3295
  %3306 = phi i16 [ %3304, %3301 ], [ 0, %3295 ]
  %3307 = getelementptr inbounds nuw i8, ptr %2768, i64 15
  %3308 = icmp uge ptr %3307, %2531
  %3309 = icmp ult ptr %3307, %2533
  %3310 = select i1 %3308, i1 %3309, i1 false
  br i1 %3310, label %3311, label %3315

3311:                                             ; preds = %3305
  %3312 = load i8, ptr %3307, align 1, !tbaa !11
  %3313 = zext i8 %3312 to i16
  %3314 = or disjoint i16 %3306, %3313
  br label %3315

3315:                                             ; preds = %3311, %3305
  %3316 = phi i16 [ %3314, %3311 ], [ %3306, %3305 ]
  %3317 = icmp slt i32 %3273, 0
  %3318 = zext i16 %3296 to i32
  %3319 = icmp sge i32 %3273, %3318
  %3320 = select i1 %3317, i1 true, i1 %3319
  %3321 = icmp slt i32 %3276, 0
  %3322 = select i1 %3320, i1 true, i1 %3321
  br i1 %3322, label %3489, label %3323

3323:                                             ; preds = %3315
  %3324 = zext i16 %3316 to i32
  %3325 = icmp samesign ult i32 %3276, %3324
  br i1 %3325, label %3326, label %3489

3326:                                             ; preds = %3323
  %3327 = getelementptr inbounds nuw i8, ptr %2768, i64 16
  %3328 = shl nuw nsw i32 %3273, 1
  %3329 = mul i32 %3328, %3324
  %3330 = sext i32 %3329 to i64
  %3331 = getelementptr inbounds i8, ptr %3327, i64 %3330
  %3332 = shl nuw nsw i32 %3276, 1
  %3333 = zext nneg i32 %3332 to i64
  %3334 = getelementptr inbounds nuw i8, ptr %3331, i64 %3333
  %3335 = icmp uge ptr %3334, %2531
  %3336 = icmp ult ptr %3334, %2533
  %3337 = select i1 %3335, i1 %3336, i1 false
  br i1 %3337, label %3338, label %3342

3338:                                             ; preds = %3326
  %3339 = load i8, ptr %3334, align 1, !tbaa !11
  %3340 = zext i8 %3339 to i16
  %3341 = shl nuw i16 %3340, 8
  br label %3342

3342:                                             ; preds = %3338, %3326
  %3343 = phi i16 [ %3341, %3338 ], [ 0, %3326 ]
  %3344 = getelementptr inbounds nuw i8, ptr %3334, i64 1
  %3345 = icmp uge ptr %3344, %2531
  %3346 = icmp ult ptr %3344, %2533
  %3347 = select i1 %3345, i1 %3346, i1 false
  br i1 %3347, label %3348, label %3352

3348:                                             ; preds = %3342
  %3349 = load i8, ptr %3344, align 1, !tbaa !11
  %3350 = zext i8 %3349 to i16
  %3351 = or disjoint i16 %3343, %3350
  br label %3352

3352:                                             ; preds = %3348, %3342
  %3353 = phi i16 [ %3351, %3348 ], [ %3343, %3342 ]
  %3354 = sext i16 %3353 to i32
  br label %3489

3355:                                             ; preds = %2995, %2890, %3182, %3120, %3004, %2913, %2848, %2827
  %3356 = add nuw nsw i64 %2745, 1
  %3357 = icmp eq i64 %3356, %2743
  br i1 %3357, label %3358, label %2744, !llvm.loop !95

3358:                                             ; preds = %3355, %2737
  %3359 = add nuw nsw i64 %2675, 1
  %3360 = icmp eq i64 %3359, %2673
  br i1 %3360, label %3489, label %2674, !llvm.loop !96

3361:                                             ; preds = %2607
  br i1 %2526, label %3489, label %3362

3362:                                             ; preds = %3361
  br i1 %2561, label %3363, label %3367

3363:                                             ; preds = %3362
  %3364 = load i8, ptr %2558, align 1, !tbaa !11
  %3365 = zext i8 %3364 to i16
  %3366 = shl nuw i16 %3365, 8
  br label %3367

3367:                                             ; preds = %3363, %3362
  %3368 = phi i16 [ %3366, %3363 ], [ 0, %3362 ]
  br i1 %2565, label %3369, label %3373

3369:                                             ; preds = %3367
  %3370 = load i8, ptr %2562, align 1, !tbaa !11
  %3371 = zext i8 %3370 to i16
  %3372 = or disjoint i16 %3368, %3371
  br label %3373

3373:                                             ; preds = %3369, %3367
  %3374 = phi i16 [ %3372, %3369 ], [ %3368, %3367 ]
  %3375 = icmp eq i16 %3374, 0
  br i1 %3375, label %3489, label %3376

3376:                                             ; preds = %3373
  br i1 %2569, label %3377, label %3381

3377:                                             ; preds = %3376
  %3378 = load i8, ptr %2566, align 1, !tbaa !11
  %3379 = zext i8 %3378 to i16
  %3380 = shl nuw i16 %3379, 8
  br label %3381

3381:                                             ; preds = %3377, %3376
  %3382 = phi i16 [ %3380, %3377 ], [ 0, %3376 ]
  br i1 %2573, label %3383, label %3489

3383:                                             ; preds = %3381
  %3384 = load i8, ptr %2570, align 1, !tbaa !11
  %3385 = zext i8 %3384 to i16
  %3386 = or disjoint i16 %3382, %3385
  %3387 = icmp eq i16 %3386, 1
  br i1 %3387, label %3388, label %3489

3388:                                             ; preds = %3383
  br i1 %2577, label %3389, label %3393

3389:                                             ; preds = %3388
  %3390 = load i8, ptr %2574, align 1, !tbaa !11
  %3391 = zext i8 %3390 to i16
  %3392 = shl nuw i16 %3391, 8
  br label %3393

3393:                                             ; preds = %3389, %3388
  %3394 = phi i16 [ %3392, %3389 ], [ 0, %3388 ]
  br i1 %2581, label %3395, label %3399

3395:                                             ; preds = %3393
  %3396 = load i8, ptr %2578, align 1, !tbaa !11
  %3397 = zext i8 %3396 to i16
  %3398 = or disjoint i16 %3394, %3397
  br label %3399

3399:                                             ; preds = %3395, %3393
  %3400 = phi i16 [ %3398, %3395 ], [ %3394, %3393 ]
  %3401 = shl i32 %2608, 16
  %3402 = or i32 %3401, %2609
  %3403 = icmp eq i16 %3400, 0
  br i1 %3403, label %3489, label %3404

3404:                                             ; preds = %3399
  %3405 = zext i16 %3400 to i32
  %3406 = add nsw i32 %3405, -1
  br label %3407

3407:                                             ; preds = %3485, %3404
  %3408 = phi i32 [ %3406, %3404 ], [ %3487, %3485 ]
  %3409 = phi i32 [ 0, %3404 ], [ %3486, %3485 ]
  %3410 = add i32 %3409, %3408
  %3411 = ashr i32 %3410, 1
  %3412 = mul i32 %3411, 6
  %3413 = sext i32 %3412 to i64
  %3414 = getelementptr inbounds i8, ptr %2582, i64 %3413
  %3415 = icmp uge ptr %3414, %2531
  %3416 = icmp ult ptr %3414, %2533
  %3417 = select i1 %3415, i1 %3416, i1 false
  br i1 %3417, label %3418, label %3422

3418:                                             ; preds = %3407
  %3419 = load i8, ptr %3414, align 1, !tbaa !11
  %3420 = zext i8 %3419 to i32
  %3421 = shl nuw i32 %3420, 24
  br label %3422

3422:                                             ; preds = %3418, %3407
  %3423 = phi i32 [ %3421, %3418 ], [ 0, %3407 ]
  %3424 = getelementptr inbounds nuw i8, ptr %3414, i64 1
  %3425 = icmp uge ptr %3424, %2531
  %3426 = icmp ult ptr %3424, %2533
  %3427 = select i1 %3425, i1 %3426, i1 false
  br i1 %3427, label %3428, label %3433

3428:                                             ; preds = %3422
  %3429 = load i8, ptr %3424, align 1, !tbaa !11
  %3430 = zext i8 %3429 to i32
  %3431 = shl nuw nsw i32 %3430, 16
  %3432 = or disjoint i32 %3431, %3423
  br label %3433

3433:                                             ; preds = %3428, %3422
  %3434 = phi i32 [ %3432, %3428 ], [ %3423, %3422 ]
  %3435 = getelementptr inbounds nuw i8, ptr %3414, i64 2
  %3436 = icmp uge ptr %3435, %2531
  %3437 = icmp ult ptr %3435, %2533
  %3438 = select i1 %3436, i1 %3437, i1 false
  br i1 %3438, label %3439, label %3444

3439:                                             ; preds = %3433
  %3440 = load i8, ptr %3435, align 1, !tbaa !11
  %3441 = zext i8 %3440 to i32
  %3442 = shl nuw nsw i32 %3441, 8
  %3443 = add nuw nsw i32 %3442, %3434
  br label %3444

3444:                                             ; preds = %3439, %3433
  %3445 = phi i32 [ %3443, %3439 ], [ %3434, %3433 ]
  %3446 = getelementptr inbounds nuw i8, ptr %3414, i64 3
  %3447 = icmp uge ptr %3446, %2531
  %3448 = icmp ult ptr %3446, %2533
  %3449 = select i1 %3447, i1 %3448, i1 false
  br i1 %3449, label %3450, label %3454

3450:                                             ; preds = %3444
  %3451 = load i8, ptr %3446, align 1, !tbaa !11
  %3452 = zext i8 %3451 to i32
  %3453 = or disjoint i32 %3445, %3452
  br label %3454

3454:                                             ; preds = %3450, %3444
  %3455 = phi i32 [ %3453, %3450 ], [ %3445, %3444 ]
  %3456 = icmp ult i32 %3402, %3455
  br i1 %3456, label %3457, label %3459

3457:                                             ; preds = %3454
  %3458 = add nsw i32 %3411, -1
  br label %3485

3459:                                             ; preds = %3454
  %3460 = icmp ugt i32 %3402, %3455
  br i1 %3460, label %3461, label %3463

3461:                                             ; preds = %3459
  %3462 = add nsw i32 %3411, 1
  br label %3485

3463:                                             ; preds = %3459
  %3464 = getelementptr inbounds i8, ptr %2583, i64 %3413
  %3465 = icmp uge ptr %3464, %2531
  %3466 = icmp ult ptr %3464, %2533
  %3467 = select i1 %3465, i1 %3466, i1 false
  br i1 %3467, label %3468, label %3472

3468:                                             ; preds = %3463
  %3469 = load i8, ptr %3464, align 1, !tbaa !11
  %3470 = zext i8 %3469 to i16
  %3471 = shl nuw i16 %3470, 8
  br label %3472

3472:                                             ; preds = %3468, %3463
  %3473 = phi i16 [ %3471, %3468 ], [ 0, %3463 ]
  %3474 = getelementptr inbounds nuw i8, ptr %3464, i64 1
  %3475 = icmp uge ptr %3474, %2531
  %3476 = icmp ult ptr %3474, %2533
  %3477 = select i1 %3475, i1 %3476, i1 false
  br i1 %3477, label %3478, label %3482

3478:                                             ; preds = %3472
  %3479 = load i8, ptr %3474, align 1, !tbaa !11
  %3480 = zext i8 %3479 to i16
  %3481 = or disjoint i16 %3473, %3480
  br label %3482

3482:                                             ; preds = %3478, %3472
  %3483 = phi i16 [ %3481, %3478 ], [ %3473, %3472 ]
  %3484 = sext i16 %3483 to i32
  br label %3489

3485:                                             ; preds = %3461, %3457
  %3486 = phi i32 [ %3409, %3457 ], [ %3462, %3461 ]
  %3487 = phi i32 [ %3458, %3457 ], [ %3408, %3461 ]
  %3488 = icmp sgt i32 %3486, %3487
  br i1 %3488, label %3489, label %3407, !llvm.loop !97

3489:                                             ; preds = %3358, %3485, %3007, %3048, %3115, %2604, %2615, %2617, %2633, %2668, %3179, %3226, %3315, %3323, %3352, %3361, %3373, %3381, %3383, %3399, %3482
  %3490 = phi i32 [ 0, %2604 ], [ 0, %3361 ], [ 0, %3383 ], [ 0, %3485 ], [ 0, %2617 ], [ 0, %3226 ], [ 0, %2633 ], [ 0, %2668 ], [ 0, %2615 ], [ 0, %3323 ], [ 0, %3315 ], [ %3354, %3352 ], [ %3181, %3179 ], [ 0, %3381 ], [ 0, %3007 ], [ 0, %3399 ], [ 0, %3373 ], [ %3484, %3482 ], [ 0, %3115 ], [ 0, %3048 ], [ 0, %3358 ]
  %3491 = sitofp i32 %3490 to float
  %3492 = fmul nnan float %535, %3491
  %3493 = fpext float %3492 to double
  %3494 = fcmp ogt double %3493, f0x41DFFFFFFFC00000
  br i1 %3494, label %3501, label %3495

3495:                                             ; preds = %3489
  %3496 = fcmp olt float %3492, f0xCF000000
  br i1 %3496, label %3501, label %3497

3497:                                             ; preds = %3495
  %3498 = fptosi float %3492 to i64
  %3499 = and i64 %3498, 4294967295
  %3500 = icmp eq i64 %3499, 0
  br i1 %3500, label %3512, label %3501

3501:                                             ; preds = %3489, %3495, %3497
  %3502 = phi i64 [ %3498, %3497 ], [ 2147483647, %3489 ], [ -2147483648, %3495 ]
  %3503 = sext i32 %2606 to i64
  %3504 = shl nsw i64 %3503, 2
  %3505 = getelementptr i8, ptr %4, i64 %3504
  %3506 = getelementptr i8, ptr %3505, i64 2692
  store i8 %2591, ptr %3506, align 1, !tbaa !11
  %3507 = trunc nuw i32 %2605 to i8
  %3508 = getelementptr i8, ptr %3505, i64 2693
  store i8 %3507, ptr %3508, align 1, !tbaa !11
  %3509 = getelementptr i8, ptr %3505, i64 2694
  %3510 = trunc i64 %3502 to i16
  store i16 %3510, ptr %3509, align 1
  %3511 = add nsw i32 %2606, 1
  br label %3512

3512:                                             ; preds = %3497, %3501
  %3513 = phi i32 [ %3511, %3501 ], [ %2606, %3497 ]
  %3514 = add nuw nsw i32 %2605, 1
  %3515 = icmp samesign ult i32 %2605, 126
  %3516 = icmp slt i32 %3513, 1024
  %3517 = select i1 %3515, i1 %3516, i1 false
  br i1 %3517, label %2604, label %2600, !llvm.loop !98

3518:                                             ; preds = %586, %2584, %2592, %2513, %478
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #15
  br label %3519

3519:                                             ; preds = %6, %3518, %29, %35
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal fastcc i32 @iceil(double noundef %0) unnamed_addr #2 {
  %2 = fcmp uno double %0, 0.000000e+00
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = fcmp ogt double %0, f0x41DFFFFFFFC00000
  br i1 %4, label %10, label %5

5:                                                ; preds = %3
  %6 = fcmp olt double %0, f0xC1E0000000000000
  br i1 %6, label %10, label %7

7:                                                ; preds = %5
  %8 = fptosi double %0 to i64
  %9 = sitofp i64 %8 to double
  br label %10

10:                                               ; preds = %1, %3, %5, %7
  %11 = phi double [ %9, %7 ], [ 0.000000e+00, %1 ], [ f0x41DFFFFFFFC00000, %3 ], [ f0xC1E0000000000000, %5 ]
  %12 = fcmp ogt double %0, %11
  %13 = fadd double %11, 1.000000e+00
  %14 = select i1 %12, double %13, double %11
  %15 = fcmp ogt double %14, f0x41DFFFFFFFC00000
  br i1 %15, label %21, label %16

16:                                               ; preds = %10
  %17 = fcmp olt double %14, f0xC1E0000000000000
  br i1 %17, label %21, label %18

18:                                               ; preds = %16
  %19 = fptosi double %14 to i64
  %20 = trunc i64 %19 to i32
  br label %21

21:                                               ; preds = %10, %16, %18
  %22 = phi i32 [ %20, %18 ], [ -2147483648, %16 ], [ 2147483647, %10 ]
  ret i32 %22
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none)
define internal fastcc i32 @ttULONG(ptr nofree noundef readonly captures(address) %0) unnamed_addr #3 {
  %2 = load ptr, ptr @stbtt__lo, align 8, !tbaa !8
  %3 = icmp uge ptr %0, %2
  %4 = load ptr, ptr @stbtt__hi, align 8
  %5 = icmp ult ptr %0, %4
  %6 = select i1 %3, i1 %5, i1 false
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i8, ptr %0, align 1, !tbaa !11
  %9 = zext i8 %8 to i32
  %10 = shl nuw i32 %9, 24
  br label %11

11:                                               ; preds = %1, %7
  %12 = phi i32 [ %10, %7 ], [ 0, %1 ]
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %14 = icmp uge ptr %13, %2
  %15 = icmp ult ptr %13, %4
  %16 = select i1 %14, i1 %15, i1 false
  br i1 %16, label %17, label %22

17:                                               ; preds = %11
  %18 = load i8, ptr %13, align 1, !tbaa !11
  %19 = zext i8 %18 to i32
  %20 = shl nuw nsw i32 %19, 16
  %21 = or disjoint i32 %20, %12
  br label %22

22:                                               ; preds = %11, %17
  %23 = phi i32 [ %21, %17 ], [ %12, %11 ]
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %25 = icmp uge ptr %24, %2
  %26 = icmp ult ptr %24, %4
  %27 = select i1 %25, i1 %26, i1 false
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load i8, ptr %24, align 1, !tbaa !11
  %30 = zext i8 %29 to i32
  %31 = shl nuw nsw i32 %30, 8
  %32 = add nuw nsw i32 %31, %23
  br label %33

33:                                               ; preds = %22, %28
  %34 = phi i32 [ %32, %28 ], [ %23, %22 ]
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %36 = icmp uge ptr %35, %2
  %37 = icmp ult ptr %35, %4
  %38 = select i1 %36, i1 %37, i1 false
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load i8, ptr %35, align 1, !tbaa !11
  %41 = zext i8 %40 to i32
  %42 = or disjoint i32 %34, %41
  br label %43

43:                                               ; preds = %33, %39
  %44 = phi i32 [ %42, %39 ], [ %34, %33 ]
  ret i32 %44
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none)
define internal fastcc i32 @ttLONG(ptr nofree noundef readonly captures(address) %0) unnamed_addr #3 {
  %2 = load ptr, ptr @stbtt__lo, align 8, !tbaa !8
  %3 = icmp uge ptr %0, %2
  %4 = load ptr, ptr @stbtt__hi, align 8
  %5 = icmp ult ptr %0, %4
  %6 = select i1 %3, i1 %5, i1 false
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i8, ptr %0, align 1, !tbaa !11
  %9 = zext i8 %8 to i32
  %10 = shl nuw i32 %9, 24
  br label %11

11:                                               ; preds = %7, %1
  %12 = phi i32 [ %10, %7 ], [ 0, %1 ]
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %14 = icmp uge ptr %13, %2
  %15 = icmp ult ptr %13, %4
  %16 = select i1 %14, i1 %15, i1 false
  br i1 %16, label %17, label %22

17:                                               ; preds = %11
  %18 = load i8, ptr %13, align 1, !tbaa !11
  %19 = zext i8 %18 to i32
  %20 = shl nuw nsw i32 %19, 16
  %21 = or disjoint i32 %20, %12
  br label %22

22:                                               ; preds = %17, %11
  %23 = phi i32 [ %21, %17 ], [ %12, %11 ]
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %25 = icmp uge ptr %24, %2
  %26 = icmp ult ptr %24, %4
  %27 = select i1 %25, i1 %26, i1 false
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load i8, ptr %24, align 1, !tbaa !11
  %30 = zext i8 %29 to i32
  %31 = shl nuw nsw i32 %30, 8
  %32 = add nuw nsw i32 %31, %23
  br label %33

33:                                               ; preds = %28, %22
  %34 = phi i32 [ %32, %28 ], [ %23, %22 ]
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %36 = icmp uge ptr %35, %2
  %37 = icmp ult ptr %35, %4
  %38 = select i1 %36, i1 %37, i1 false
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load i8, ptr %35, align 1, !tbaa !11
  %41 = zext i8 %40 to i32
  %42 = or disjoint i32 %34, %41
  br label %43

43:                                               ; preds = %33, %39
  %44 = phi i32 [ %42, %39 ], [ %34, %33 ]
  ret i32 %44
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none)
define internal fastcc i32 @stbtt__find_table(ptr nofree noundef readonly captures(address) %0, i32 noundef range(i32 0, -2147483648) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #4 {
  %4 = zext nneg i32 %1 to i64
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 %4
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 4
  %7 = load ptr, ptr @stbtt__lo, align 8, !tbaa !8
  %8 = icmp uge ptr %6, %7
  %9 = load ptr, ptr @stbtt__hi, align 8
  %10 = icmp ult ptr %6, %9
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i8, ptr %6, align 1, !tbaa !11
  %14 = zext i8 %13 to i16
  %15 = shl nuw i16 %14, 8
  br label %16

16:                                               ; preds = %12, %3
  %17 = phi i16 [ %15, %12 ], [ 0, %3 ]
  %18 = getelementptr inbounds nuw i8, ptr %5, i64 5
  %19 = icmp uge ptr %18, %7
  %20 = icmp ult ptr %18, %9
  %21 = select i1 %19, i1 %20, i1 false
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load i8, ptr %18, align 1, !tbaa !11
  %24 = zext i8 %23 to i16
  %25 = or disjoint i16 %17, %24
  br label %26

26:                                               ; preds = %16, %22
  %27 = phi i16 [ %25, %22 ], [ %17, %16 ]
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %111, label %29

29:                                               ; preds = %26
  %30 = add nuw i32 %1, 12
  %31 = load i8, ptr %2, align 1, !tbaa !11
  %32 = sext i8 %31 to i32
  %33 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %34 = getelementptr inbounds nuw i8, ptr %2, i64 2
  %35 = getelementptr inbounds nuw i8, ptr %2, i64 3
  %36 = zext i32 %30 to i64
  %37 = zext i16 %27 to i64
  %38 = getelementptr i8, ptr %0, i64 %36
  br label %39

39:                                               ; preds = %29, %108
  %40 = phi i64 [ 0, %29 ], [ %109, %108 ]
  %41 = shl i64 %40, 4
  %42 = getelementptr i8, ptr %38, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !11
  %44 = zext i8 %43 to i32
  %45 = icmp eq i32 %44, %32
  br i1 %45, label %46, label %108

46:                                               ; preds = %39
  %47 = getelementptr inbounds nuw i8, ptr %42, i64 1
  %48 = load i8, ptr %47, align 1, !tbaa !11
  %49 = zext i8 %48 to i32
  %50 = load i8, ptr %33, align 1, !tbaa !11
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %53, label %108

53:                                               ; preds = %46
  %54 = getelementptr inbounds nuw i8, ptr %42, i64 2
  %55 = load i8, ptr %54, align 1, !tbaa !11
  %56 = zext i8 %55 to i32
  %57 = load i8, ptr %34, align 1, !tbaa !11
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %60, label %108

60:                                               ; preds = %53
  %61 = getelementptr inbounds nuw i8, ptr %42, i64 3
  %62 = load i8, ptr %61, align 1, !tbaa !11
  %63 = zext i8 %62 to i32
  %64 = load i8, ptr %35, align 1, !tbaa !11
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %63, %65
  br i1 %66, label %67, label %108

67:                                               ; preds = %60
  %68 = getelementptr inbounds nuw i8, ptr %42, i64 8
  %69 = icmp uge ptr %68, %7
  %70 = icmp ult ptr %68, %9
  %71 = select i1 %69, i1 %70, i1 false
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = load i8, ptr %68, align 1, !tbaa !11
  %74 = zext i8 %73 to i32
  %75 = shl nuw i32 %74, 24
  br label %76

76:                                               ; preds = %72, %67
  %77 = phi i32 [ %75, %72 ], [ 0, %67 ]
  %78 = getelementptr inbounds nuw i8, ptr %42, i64 9
  %79 = icmp uge ptr %78, %7
  %80 = icmp ult ptr %78, %9
  %81 = select i1 %79, i1 %80, i1 false
  br i1 %81, label %82, label %87

82:                                               ; preds = %76
  %83 = load i8, ptr %78, align 1, !tbaa !11
  %84 = zext i8 %83 to i32
  %85 = shl nuw nsw i32 %84, 16
  %86 = or disjoint i32 %85, %77
  br label %87

87:                                               ; preds = %82, %76
  %88 = phi i32 [ %86, %82 ], [ %77, %76 ]
  %89 = getelementptr inbounds nuw i8, ptr %42, i64 10
  %90 = icmp uge ptr %89, %7
  %91 = icmp ult ptr %89, %9
  %92 = select i1 %90, i1 %91, i1 false
  br i1 %92, label %93, label %98

93:                                               ; preds = %87
  %94 = load i8, ptr %89, align 1, !tbaa !11
  %95 = zext i8 %94 to i32
  %96 = shl nuw nsw i32 %95, 8
  %97 = add nuw nsw i32 %96, %88
  br label %98

98:                                               ; preds = %93, %87
  %99 = phi i32 [ %97, %93 ], [ %88, %87 ]
  %100 = getelementptr inbounds nuw i8, ptr %42, i64 11
  %101 = icmp uge ptr %100, %7
  %102 = icmp ult ptr %100, %9
  %103 = select i1 %101, i1 %102, i1 false
  br i1 %103, label %104, label %111

104:                                              ; preds = %98
  %105 = load i8, ptr %100, align 1, !tbaa !11
  %106 = zext i8 %105 to i32
  %107 = or disjoint i32 %99, %106
  br label %111

108:                                              ; preds = %39, %60, %53, %46
  %109 = add nuw nsw i64 %40, 1
  %110 = icmp eq i64 %109, %37
  br i1 %110, label %111, label %39, !llvm.loop !99

111:                                              ; preds = %108, %26, %98, %104
  %112 = phi i32 [ %99, %98 ], [ %107, %104 ], [ 0, %26 ], [ 0, %108 ]
  ret i32 %112
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none)
define internal fastcc { ptr, i64 } @stbtt__cff_get_index(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #5 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %3 = load i32, ptr %2, align 8, !tbaa !25
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %5 = load i32, ptr %4, align 4, !tbaa !26
  %6 = load ptr, ptr @stbtt__lo, align 8
  %7 = load ptr, ptr @stbtt__hi, align 8
  %8 = icmp slt i32 %3, %5
  br i1 %8, label %9, label %21

9:                                                ; preds = %1
  %10 = load ptr, ptr %0, align 8, !tbaa !27
  %11 = add nsw i32 %3, 1
  store i32 %11, ptr %2, align 8, !tbaa !25
  %12 = sext i32 %3 to i64
  %13 = getelementptr inbounds i8, ptr %10, i64 %12
  %14 = icmp uge ptr %13, %6
  %15 = icmp ult ptr %13, %7
  %16 = select i1 %14, i1 %15, i1 false
  br i1 %16, label %17, label %21

17:                                               ; preds = %9
  %18 = load i8, ptr %13, align 1, !tbaa !11
  %19 = zext i8 %18 to i32
  %20 = shl nuw nsw i32 %19, 8
  br label %21

21:                                               ; preds = %17, %9, %1
  %22 = phi i32 [ %3, %1 ], [ %11, %17 ], [ %11, %9 ]
  %23 = phi i32 [ 0, %1 ], [ %20, %17 ], [ 0, %9 ]
  %24 = icmp slt i32 %22, %5
  br i1 %24, label %25, label %37

25:                                               ; preds = %21
  %26 = load ptr, ptr %0, align 8, !tbaa !27
  %27 = add nsw i32 %22, 1
  store i32 %27, ptr %2, align 8, !tbaa !25
  %28 = sext i32 %22 to i64
  %29 = getelementptr inbounds i8, ptr %26, i64 %28
  %30 = icmp uge ptr %29, %6
  %31 = icmp ult ptr %29, %7
  %32 = select i1 %30, i1 %31, i1 false
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load i8, ptr %29, align 1, !tbaa !11
  %35 = zext i8 %34 to i32
  %36 = or disjoint i32 %23, %35
  br label %37

37:                                               ; preds = %33, %25, %21
  %38 = phi i32 [ %22, %21 ], [ %27, %33 ], [ %27, %25 ]
  %39 = phi i32 [ %23, %21 ], [ %36, %33 ], [ %23, %25 ]
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %95, label %41

41:                                               ; preds = %37
  %42 = icmp slt i32 %38, %5
  br i1 %42, label %43, label %54

43:                                               ; preds = %41
  %44 = load ptr, ptr %0, align 8, !tbaa !27
  %45 = add nsw i32 %38, 1
  store i32 %45, ptr %2, align 8, !tbaa !25
  %46 = sext i32 %38 to i64
  %47 = getelementptr inbounds i8, ptr %44, i64 %46
  %48 = icmp uge ptr %47, %6
  %49 = icmp ult ptr %47, %7
  %50 = select i1 %48, i1 %49, i1 false
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = load i8, ptr %47, align 1, !tbaa !11
  %53 = zext i8 %52 to i32
  br label %54

54:                                               ; preds = %41, %43, %51
  %55 = phi i32 [ %38, %41 ], [ %45, %51 ], [ %45, %43 ]
  %56 = phi i32 [ 0, %41 ], [ %53, %51 ], [ 0, %43 ]
  %57 = mul nuw nsw i32 %56, %39
  %58 = add i32 %55, %57
  %59 = icmp slt i32 %58, 0
  %60 = tail call i32 @llvm.smin.i32(i32 %58, i32 %5)
  %61 = select i1 %59, i32 %5, i32 %60
  %62 = icmp eq i32 %56, 0
  br i1 %62, label %88, label %63

63:                                               ; preds = %54, %81
  %64 = phi i32 [ %82, %81 ], [ %61, %54 ]
  %65 = phi i32 [ %84, %81 ], [ 0, %54 ]
  %66 = phi i32 [ %83, %81 ], [ 0, %54 ]
  %67 = shl i32 %66, 8
  %68 = icmp slt i32 %64, %5
  br i1 %68, label %69, label %81

69:                                               ; preds = %63
  %70 = load ptr, ptr %0, align 8, !tbaa !27
  %71 = add nsw i32 %64, 1
  store i32 %71, ptr %2, align 8, !tbaa !25
  %72 = sext i32 %64 to i64
  %73 = getelementptr inbounds i8, ptr %70, i64 %72
  %74 = icmp uge ptr %73, %6
  %75 = icmp ult ptr %73, %7
  %76 = select i1 %74, i1 %75, i1 false
  br i1 %76, label %77, label %81

77:                                               ; preds = %69
  %78 = load i8, ptr %73, align 1, !tbaa !11
  %79 = zext i8 %78 to i32
  %80 = or disjoint i32 %67, %79
  br label %81

81:                                               ; preds = %77, %69, %63
  %82 = phi i32 [ %64, %63 ], [ %71, %77 ], [ %71, %69 ]
  %83 = phi i32 [ %67, %63 ], [ %80, %77 ], [ %67, %69 ]
  %84 = add nuw nsw i32 %65, 1
  %85 = icmp eq i32 %84, %56
  br i1 %85, label %86, label %63, !llvm.loop !100

86:                                               ; preds = %81
  %87 = add i32 %83, -1
  br label %88

88:                                               ; preds = %86, %54
  %89 = phi i32 [ %61, %54 ], [ %82, %86 ]
  %90 = phi i32 [ -1, %54 ], [ %87, %86 ]
  %91 = add i32 %90, %89
  %92 = icmp slt i32 %91, 0
  %93 = tail call i32 @llvm.smin.i32(i32 %91, i32 %5)
  %94 = select i1 %92, i32 %5, i32 %93
  store i32 %94, ptr %2, align 8, !tbaa !25
  br label %95

95:                                               ; preds = %88, %37
  %96 = phi i32 [ %94, %88 ], [ %38, %37 ]
  %97 = sub i32 %96, %3
  %98 = or i32 %97, %3
  %99 = icmp sgt i32 %98, -1
  br i1 %99, label %100, label %111

100:                                              ; preds = %95
  %101 = icmp sgt i32 %3, %5
  %102 = sub nsw i32 %5, %3
  %103 = icmp sgt i32 %97, %102
  %104 = select i1 %101, i1 true, i1 %103
  br i1 %104, label %111, label %105

105:                                              ; preds = %100
  %106 = load ptr, ptr %0, align 8, !tbaa !27
  %107 = zext nneg i32 %3 to i64
  %108 = getelementptr inbounds nuw i8, ptr %106, i64 %107
  %109 = zext nneg i32 %97 to i64
  %110 = shl nuw nsw i64 %109, 32
  br label %111

111:                                              ; preds = %95, %100, %105
  %112 = phi ptr [ null, %95 ], [ null, %100 ], [ %108, %105 ]
  %113 = phi i64 [ 0, %95 ], [ 0, %100 ], [ %110, %105 ]
  %114 = insertvalue { ptr, i64 } poison, ptr %112, 0
  %115 = insertvalue { ptr, i64 } %114, i64 %113, 1
  ret { ptr, i64 } %115
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none)
define internal fastcc { ptr, i64 } @stbtt__cff_index_get(ptr %0, i64 %1, i32 noundef %2) unnamed_addr #4 {
  %4 = lshr i64 %1, 32
  %5 = trunc nuw i64 %4 to i32
  %6 = tail call i32 @llvm.smin.i32(i32 %5, i32 0)
  %7 = load ptr, ptr @stbtt__lo, align 8
  %8 = load ptr, ptr @stbtt__hi, align 8
  %9 = icmp sgt i32 %5, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %3
  %11 = zext nneg i32 %6 to i64
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 %11
  %13 = icmp uge ptr %12, %7
  %14 = icmp ult ptr %12, %8
  %15 = select i1 %13, i1 %14, i1 false
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = load i8, ptr %12, align 1, !tbaa !11
  %18 = zext i8 %17 to i32
  %19 = shl nuw nsw i32 %18, 8
  br label %20

20:                                               ; preds = %16, %10, %3
  %21 = phi i32 [ 1, %16 ], [ 1, %10 ], [ %6, %3 ]
  %22 = phi i32 [ %19, %16 ], [ 0, %10 ], [ 0, %3 ]
  %23 = icmp slt i32 %21, %5
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  %25 = add nsw i32 %21, 1
  %26 = sext i32 %21 to i64
  %27 = getelementptr inbounds i8, ptr %0, i64 %26
  %28 = icmp uge ptr %27, %7
  %29 = icmp ult ptr %27, %8
  %30 = select i1 %28, i1 %29, i1 false
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = load i8, ptr %27, align 1, !tbaa !11
  %33 = zext i8 %32 to i32
  %34 = or disjoint i32 %22, %33
  br label %35

35:                                               ; preds = %31, %24, %20
  %36 = phi i32 [ %25, %31 ], [ %25, %24 ], [ %21, %20 ]
  %37 = phi i32 [ %34, %31 ], [ %22, %24 ], [ %22, %20 ]
  %38 = icmp slt i32 %36, %5
  br i1 %38, label %39, label %185

39:                                               ; preds = %35
  %40 = add nsw i32 %36, 1
  %41 = sext i32 %36 to i64
  %42 = getelementptr inbounds i8, ptr %0, i64 %41
  %43 = icmp uge ptr %42, %7
  %44 = icmp ult ptr %42, %8
  %45 = select i1 %43, i1 %44, i1 false
  br i1 %45, label %46, label %185

46:                                               ; preds = %39
  %47 = load i8, ptr %42, align 1, !tbaa !11
  %48 = zext i8 %47 to i32
  %49 = icmp eq i8 %47, 0
  br i1 %49, label %185, label %50

50:                                               ; preds = %46
  %51 = mul i32 %2, %48
  %52 = add i32 %51, %40
  %53 = icmp slt i32 %52, 0
  %54 = tail call i32 @llvm.smin.i32(i32 %52, i32 %5)
  %55 = select i1 %53, i32 %5, i32 %54
  %56 = add nsw i32 %48, -1
  %57 = and i32 %48, 1
  %58 = icmp eq i32 %56, 0
  br i1 %58, label %104, label %59

59:                                               ; preds = %50
  %60 = and i32 %48, 254
  br label %61

61:                                               ; preds = %96, %59
  %62 = phi i32 [ %55, %59 ], [ %97, %96 ]
  %63 = phi i32 [ %55, %59 ], [ %98, %96 ]
  %64 = phi i32 [ 0, %59 ], [ %99, %96 ]
  %65 = phi i32 [ 0, %59 ], [ %100, %96 ]
  %66 = shl i32 %64, 8
  %67 = icmp slt i32 %63, %5
  br i1 %67, label %68, label %79

68:                                               ; preds = %61
  %69 = add nsw i32 %63, 1
  %70 = sext i32 %63 to i64
  %71 = getelementptr inbounds i8, ptr %0, i64 %70
  %72 = icmp uge ptr %71, %7
  %73 = icmp ult ptr %71, %8
  %74 = select i1 %72, i1 %73, i1 false
  br i1 %74, label %75, label %79

75:                                               ; preds = %68
  %76 = load i8, ptr %71, align 1, !tbaa !11
  %77 = zext i8 %76 to i32
  %78 = or disjoint i32 %66, %77
  br label %79

79:                                               ; preds = %75, %68, %61
  %80 = phi i32 [ %69, %75 ], [ %69, %68 ], [ %62, %61 ]
  %81 = phi i32 [ %69, %75 ], [ %69, %68 ], [ %63, %61 ]
  %82 = phi i32 [ %78, %75 ], [ %66, %68 ], [ %66, %61 ]
  %83 = shl i32 %82, 8
  %84 = icmp slt i32 %81, %5
  br i1 %84, label %85, label %96

85:                                               ; preds = %79
  %86 = add nsw i32 %81, 1
  %87 = sext i32 %81 to i64
  %88 = getelementptr inbounds i8, ptr %0, i64 %87
  %89 = icmp uge ptr %88, %7
  %90 = icmp ult ptr %88, %8
  %91 = select i1 %89, i1 %90, i1 false
  br i1 %91, label %92, label %96

92:                                               ; preds = %85
  %93 = load i8, ptr %88, align 1, !tbaa !11
  %94 = zext i8 %93 to i32
  %95 = or disjoint i32 %83, %94
  br label %96

96:                                               ; preds = %92, %85, %79
  %97 = phi i32 [ %86, %92 ], [ %86, %85 ], [ %80, %79 ]
  %98 = phi i32 [ %86, %92 ], [ %86, %85 ], [ %81, %79 ]
  %99 = phi i32 [ %95, %92 ], [ %83, %85 ], [ %83, %79 ]
  %100 = add i32 %65, 2
  %101 = icmp eq i32 %100, %60
  br i1 %101, label %102, label %61, !llvm.loop !100

102:                                              ; preds = %96
  %103 = icmp eq i32 %57, 0
  br i1 %103, label %122, label %104

104:                                              ; preds = %102, %50
  %105 = phi i32 [ %55, %50 ], [ %97, %102 ]
  %106 = phi i32 [ %55, %50 ], [ %98, %102 ]
  %107 = phi i32 [ 0, %50 ], [ %99, %102 ]
  %108 = trunc i8 %47 to i1
  tail call void @llvm.assume(i1 %108)
  %109 = shl i32 %107, 8
  %110 = icmp slt i32 %106, %5
  br i1 %110, label %111, label %122

111:                                              ; preds = %104
  %112 = add nsw i32 %106, 1
  %113 = sext i32 %106 to i64
  %114 = getelementptr inbounds i8, ptr %0, i64 %113
  %115 = icmp uge ptr %114, %7
  %116 = icmp ult ptr %114, %8
  %117 = select i1 %115, i1 %116, i1 false
  br i1 %117, label %118, label %122

118:                                              ; preds = %111
  %119 = load i8, ptr %114, align 1, !tbaa !11
  %120 = zext i8 %119 to i32
  %121 = or disjoint i32 %109, %120
  br label %122

122:                                              ; preds = %104, %111, %118, %102
  %123 = phi i32 [ %97, %102 ], [ %112, %118 ], [ %112, %111 ], [ %105, %104 ]
  %124 = phi i32 [ %99, %102 ], [ %121, %118 ], [ %109, %111 ], [ %109, %104 ]
  %125 = and i32 %48, 1
  %126 = icmp eq i32 %56, 0
  br i1 %126, label %169, label %127

127:                                              ; preds = %122
  %128 = and i32 %48, 254
  br label %129

129:                                              ; preds = %162, %127
  %130 = phi i32 [ %123, %127 ], [ %163, %162 ]
  %131 = phi i32 [ 0, %127 ], [ %164, %162 ]
  %132 = phi i32 [ 0, %127 ], [ %165, %162 ]
  %133 = shl i32 %131, 8
  %134 = icmp slt i32 %130, %5
  br i1 %134, label %135, label %146

135:                                              ; preds = %129
  %136 = add nsw i32 %130, 1
  %137 = sext i32 %130 to i64
  %138 = getelementptr inbounds i8, ptr %0, i64 %137
  %139 = icmp uge ptr %138, %7
  %140 = icmp ult ptr %138, %8
  %141 = select i1 %139, i1 %140, i1 false
  br i1 %141, label %142, label %146

142:                                              ; preds = %135
  %143 = load i8, ptr %138, align 1, !tbaa !11
  %144 = zext i8 %143 to i32
  %145 = or disjoint i32 %133, %144
  br label %146

146:                                              ; preds = %142, %135, %129
  %147 = phi i32 [ %130, %129 ], [ %136, %142 ], [ %136, %135 ]
  %148 = phi i32 [ %133, %129 ], [ %145, %142 ], [ %133, %135 ]
  %149 = shl i32 %148, 8
  %150 = icmp slt i32 %147, %5
  br i1 %150, label %151, label %162

151:                                              ; preds = %146
  %152 = add nsw i32 %147, 1
  %153 = sext i32 %147 to i64
  %154 = getelementptr inbounds i8, ptr %0, i64 %153
  %155 = icmp uge ptr %154, %7
  %156 = icmp ult ptr %154, %8
  %157 = select i1 %155, i1 %156, i1 false
  br i1 %157, label %158, label %162

158:                                              ; preds = %151
  %159 = load i8, ptr %154, align 1, !tbaa !11
  %160 = zext i8 %159 to i32
  %161 = or disjoint i32 %149, %160
  br label %162

162:                                              ; preds = %158, %151, %146
  %163 = phi i32 [ %147, %146 ], [ %152, %158 ], [ %152, %151 ]
  %164 = phi i32 [ %149, %146 ], [ %161, %158 ], [ %149, %151 ]
  %165 = add i32 %132, 2
  %166 = icmp eq i32 %165, %128
  br i1 %166, label %167, label %129, !llvm.loop !100

167:                                              ; preds = %162
  %168 = icmp eq i32 %125, 0
  br i1 %168, label %185, label %169

169:                                              ; preds = %167, %122
  %170 = phi i32 [ %123, %122 ], [ %163, %167 ]
  %171 = phi i32 [ 0, %122 ], [ %164, %167 ]
  %172 = trunc i8 %47 to i1
  tail call void @llvm.assume(i1 %172)
  %173 = shl i32 %171, 8
  %174 = icmp slt i32 %170, %5
  br i1 %174, label %175, label %185

175:                                              ; preds = %169
  %176 = sext i32 %170 to i64
  %177 = getelementptr inbounds i8, ptr %0, i64 %176
  %178 = icmp uge ptr %177, %7
  %179 = icmp ult ptr %177, %8
  %180 = select i1 %178, i1 %179, i1 false
  br i1 %180, label %181, label %185

181:                                              ; preds = %175
  %182 = load i8, ptr %177, align 1, !tbaa !11
  %183 = zext i8 %182 to i32
  %184 = or disjoint i32 %173, %183
  br label %185

185:                                              ; preds = %167, %181, %175, %169, %35, %39, %46
  %186 = phi i32 [ 0, %46 ], [ 0, %35 ], [ 0, %39 ], [ %48, %169 ], [ %48, %175 ], [ %48, %181 ], [ %48, %167 ]
  %187 = phi i32 [ 0, %46 ], [ 0, %35 ], [ 0, %39 ], [ %124, %169 ], [ %124, %175 ], [ %124, %181 ], [ %124, %167 ]
  %188 = phi i32 [ 0, %46 ], [ 0, %35 ], [ 0, %39 ], [ %164, %167 ], [ %173, %169 ], [ %184, %181 ], [ %173, %175 ]
  %189 = add nuw nsw i32 %37, 1
  %190 = mul nuw nsw i32 %186, %189
  %191 = add nuw nsw i32 %190, 2
  %192 = add i32 %191, %187
  %193 = sub i32 %188, %187
  %194 = or i32 %193, %192
  %195 = icmp sgt i32 %194, -1
  br i1 %195, label %196, label %206

196:                                              ; preds = %185
  %197 = icmp sgt i32 %192, %5
  %198 = sub nsw i32 %5, %192
  %199 = icmp sgt i32 %193, %198
  %200 = select i1 %197, i1 true, i1 %199
  br i1 %200, label %206, label %201

201:                                              ; preds = %196
  %202 = zext nneg i32 %192 to i64
  %203 = getelementptr inbounds nuw i8, ptr %0, i64 %202
  %204 = zext nneg i32 %193 to i64
  %205 = shl nuw nsw i64 %204, 32
  br label %206

206:                                              ; preds = %185, %196, %201
  %207 = phi ptr [ null, %185 ], [ null, %196 ], [ %203, %201 ]
  %208 = phi i64 [ 0, %185 ], [ 0, %196 ], [ %205, %201 ]
  %209 = insertvalue { ptr, i64 } poison, ptr %207, 0
  %210 = insertvalue { ptr, i64 } %209, i64 %208, 1
  ret { ptr, i64 } %210
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none)
define internal fastcc void @stbtt__dict_get_ints(ptr nofree noundef nonnull captures(none) initializes((8, 12)) %0, i32 noundef range(i32 17, 294) %1, i32 noundef range(i32 1, 3) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #5 {
  %5 = alloca %struct.stbtt__buf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %7 = load i32, ptr %6, align 4, !tbaa !26
  %8 = tail call i32 @llvm.smin.i32(i32 %7, i32 0)
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %8, ptr %9, align 8, !tbaa !25
  %10 = icmp sgt i32 %7, 0
  br i1 %10, label %11, label %129

11:                                               ; preds = %4
  %12 = load ptr, ptr @stbtt__lo, align 8
  %13 = load ptr, ptr @stbtt__hi, align 8
  br label %14

14:                                               ; preds = %105, %11
  %15 = phi i32 [ %7, %11 ], [ %106, %105 ]
  %16 = phi i32 [ %8, %11 ], [ %107, %105 ]
  %17 = icmp slt i32 %16, %15
  br i1 %17, label %18, label %105

18:                                               ; preds = %14, %67
  %19 = phi i32 [ %68, %67 ], [ %15, %14 ]
  %20 = phi i32 [ %69, %67 ], [ %15, %14 ]
  %21 = phi i32 [ %70, %67 ], [ %16, %14 ]
  %22 = load ptr, ptr %0, align 8, !tbaa !27
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds i8, ptr %22, i64 %23
  %25 = icmp uge ptr %24, %12
  %26 = icmp ult ptr %24, %13
  %27 = select i1 %25, i1 %26, i1 false
  br i1 %27, label %28, label %72

28:                                               ; preds = %18
  %29 = load i8, ptr %24, align 1, !tbaa !11
  %30 = icmp ugt i8 %29, 27
  br i1 %30, label %31, label %74

31:                                               ; preds = %28
  %32 = icmp eq i8 %29, 30
  br i1 %32, label %33, label %62

33:                                               ; preds = %31
  %34 = add nsw i32 %21, 1
  %35 = icmp slt i32 %21, -1
  %36 = select i1 %35, i32 %20, i32 %34
  store i32 %36, ptr %9, align 8, !tbaa !25
  %37 = tail call i32 @llvm.smax.i32(i32 %36, i32 %20)
  %38 = sext i32 %37 to i64
  %39 = icmp slt i32 %36, %20
  br i1 %39, label %40, label %67

40:                                               ; preds = %33
  %41 = sext i32 %36 to i64
  br label %44

42:                                               ; preds = %55
  %43 = icmp eq i64 %46, %38
  br i1 %43, label %67, label %44, !llvm.loop !101

44:                                               ; preds = %40, %42
  %45 = phi i64 [ %46, %42 ], [ %41, %40 ]
  %46 = add nsw i64 %45, 1
  %47 = trunc nsw i64 %46 to i32
  store i32 %47, ptr %9, align 8, !tbaa !25
  %48 = getelementptr inbounds i8, ptr %22, i64 %45
  %49 = icmp uge ptr %48, %12
  %50 = icmp ult ptr %48, %13
  %51 = select i1 %49, i1 %50, i1 false
  br i1 %51, label %52, label %55

52:                                               ; preds = %44
  %53 = load i8, ptr %48, align 1, !tbaa !11
  %54 = zext i8 %53 to i32
  br label %55

55:                                               ; preds = %52, %44
  %56 = phi i32 [ 0, %44 ], [ %54, %52 ]
  %57 = and i32 %56, 15
  %58 = icmp eq i32 %57, 15
  %59 = and i32 %56, 240
  %60 = icmp eq i32 %59, 240
  %61 = or i1 %58, %60
  br i1 %61, label %66, label %42, !llvm.loop !101

62:                                               ; preds = %31
  %63 = tail call fastcc i32 @stbtt__cff_int(ptr noundef nonnull %0) #16
  %64 = load i32, ptr %9, align 8, !tbaa !25
  %65 = load i32, ptr %6, align 4, !tbaa !26
  br label %67

66:                                               ; preds = %55
  br label %67, !llvm.loop !101

67:                                               ; preds = %42, %33, %66, %62
  %68 = phi i32 [ %65, %62 ], [ %19, %33 ], [ %19, %66 ], [ %19, %42 ]
  %69 = phi i32 [ %65, %62 ], [ %20, %33 ], [ %20, %66 ], [ %20, %42 ]
  %70 = phi i32 [ %64, %62 ], [ %36, %33 ], [ %47, %66 ], [ %47, %42 ]
  %71 = icmp slt i32 %70, %69
  br i1 %71, label %18, label %105, !llvm.loop !102

72:                                               ; preds = %18
  %73 = add nsw i32 %21, 1
  store i32 %73, ptr %9, align 8, !tbaa !25
  br label %105

74:                                               ; preds = %28
  %75 = add nsw i32 %21, 1
  store i32 %75, ptr %9, align 8, !tbaa !25
  %76 = load i8, ptr %24, align 1, !tbaa !11
  %77 = zext i8 %76 to i32
  %78 = icmp eq i8 %76, 12
  br i1 %78, label %79, label %92

79:                                               ; preds = %74
  %80 = icmp slt i32 %75, %20
  br i1 %80, label %81, label %92

81:                                               ; preds = %79
  %82 = add nsw i32 %21, 2
  store i32 %82, ptr %9, align 8, !tbaa !25
  %83 = sext i32 %75 to i64
  %84 = getelementptr inbounds i8, ptr %22, i64 %83
  %85 = icmp uge ptr %84, %12
  %86 = icmp ult ptr %84, %13
  %87 = select i1 %85, i1 %86, i1 false
  br i1 %87, label %88, label %92

88:                                               ; preds = %81
  %89 = load i8, ptr %84, align 1, !tbaa !11
  %90 = zext i8 %89 to i32
  %91 = or disjoint i32 %90, 256
  br label %92

92:                                               ; preds = %88, %81, %79, %74
  %93 = phi i32 [ %75, %74 ], [ %75, %79 ], [ %82, %88 ], [ %82, %81 ]
  %94 = phi i32 [ %77, %74 ], [ 256, %79 ], [ %91, %88 ], [ 256, %81 ]
  %95 = icmp eq i32 %94, %1
  br i1 %95, label %96, label %105

96:                                               ; preds = %92
  %97 = sub i32 %21, %16
  %98 = or i32 %97, %16
  %99 = icmp sgt i32 %98, -1
  br i1 %99, label %100, label %129

100:                                              ; preds = %96
  %101 = icmp sgt i32 %16, %20
  %102 = sub nsw i32 %20, %16
  %103 = icmp sgt i32 %97, %102
  %104 = select i1 %101, i1 true, i1 %103
  br i1 %104, label %129, label %109

105:                                              ; preds = %67, %92, %72, %14
  %106 = phi i32 [ %19, %92 ], [ %15, %14 ], [ %19, %72 ], [ %68, %67 ]
  %107 = phi i32 [ %93, %92 ], [ %16, %14 ], [ %73, %72 ], [ %70, %67 ]
  %108 = icmp slt i32 %107, %106
  br i1 %108, label %14, label %129

109:                                              ; preds = %100
  %110 = zext nneg i32 %16 to i64
  %111 = getelementptr inbounds nuw i8, ptr %22, i64 %110
  %112 = zext nneg i32 %97 to i64
  %113 = shl nuw nsw i64 %112, 32
  store ptr %111, ptr %5, align 8
  %114 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %113, ptr %114, align 8
  %115 = getelementptr inbounds nuw i8, ptr %5, i64 12
  %116 = icmp eq i32 %21, %16
  br i1 %116, label %129, label %117

117:                                              ; preds = %109
  %118 = zext nneg i32 %2 to i64
  br label %119

119:                                              ; preds = %117, %119
  %120 = phi i64 [ 0, %117 ], [ %123, %119 ]
  %121 = call fastcc i32 @stbtt__cff_int(ptr noundef %5) #16
  %122 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %120
  store i32 %121, ptr %122, align 4, !tbaa !23
  %123 = add nuw nsw i64 %120, 1
  %124 = icmp samesign ult i64 %123, %118
  %125 = load i32, ptr %114, align 8
  %126 = load i32, ptr %115, align 4
  %127 = icmp slt i32 %125, %126
  %128 = select i1 %124, i1 %127, i1 false
  br i1 %128, label %119, label %129, !llvm.loop !103

129:                                              ; preds = %105, %119, %4, %100, %96, %109
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none)
define internal fastcc { ptr, i64 } @stbtt__get_subrs(ptr %0, i64 %1, ptr %2, i64 %3) unnamed_addr #4 {
  %5 = alloca %struct.stbtt__buf, align 8
  %6 = alloca %struct.stbtt__buf, align 8
  %7 = alloca i32, align 4
  %8 = alloca [2 x i32], align 8
  %9 = alloca %struct.stbtt__buf, align 8
  store ptr %0, ptr %5, align 8
  %10 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %1, ptr %10, align 8
  store ptr %2, ptr %6, align 8
  %11 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %3, ptr %11, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  store i32 0, ptr %7, align 4, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  store i64 0, ptr %8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  call fastcc void @stbtt__dict_get_ints(ptr noundef %6, i32 noundef 18, i32 noundef 2, ptr noundef %8) #16
  %12 = getelementptr inbounds nuw i8, ptr %8, i64 4
  %13 = load i32, ptr %12, align 4, !tbaa !23
  %14 = icmp ne i32 %13, 0
  %15 = load i32, ptr %8, align 8
  %16 = icmp ne i32 %15, 0
  %17 = select i1 %14, i1 %16, i1 false
  %18 = lshr i64 %1, 32
  %19 = trunc nuw i64 %18 to i32
  br i1 %17, label %20, label %45

20:                                               ; preds = %4
  %21 = or i32 %15, %13
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %23, label %33

23:                                               ; preds = %20
  %24 = icmp sgt i32 %13, %19
  %25 = sub nsw i32 %19, %13
  %26 = icmp sgt i32 %15, %25
  %27 = select i1 %24, i1 true, i1 %26
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = zext nneg i32 %13 to i64
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 %29
  %31 = zext nneg i32 %15 to i64
  %32 = shl nuw nsw i64 %31, 32
  br label %33

33:                                               ; preds = %20, %23, %28
  %34 = phi ptr [ null, %20 ], [ null, %23 ], [ %30, %28 ]
  %35 = phi i64 [ 0, %20 ], [ 0, %23 ], [ %32, %28 ]
  store ptr %34, ptr %9, align 8, !tbaa !8
  %36 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %35, ptr %36, align 8
  call fastcc void @stbtt__dict_get_ints(ptr noundef %9, i32 noundef 19, i32 noundef 1, ptr noundef %7) #16
  %37 = load i32, ptr %7, align 4, !tbaa !23
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %33
  %40 = add i32 %37, %13
  %41 = icmp slt i32 %40, 0
  %42 = tail call i32 @llvm.smin.i32(i32 %40, i32 %19)
  %43 = select i1 %41, i32 %19, i32 %42
  store i32 %43, ptr %10, align 8, !tbaa !25
  %44 = call fastcc { ptr, i64 } @stbtt__cff_get_index(ptr noundef %5) #16
  br label %45

45:                                               ; preds = %33, %4, %39
  %46 = phi { ptr, i64 } [ %44, %39 ], [ zeroinitializer, %4 ], [ zeroinitializer, %33 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  ret { ptr, i64 } %46
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none)
define internal fastcc i32 @stbtt__cff_int(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #6 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %3 = load i32, ptr %2, align 8, !tbaa !25
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %5 = load i32, ptr %4, align 4, !tbaa !26
  %6 = icmp slt i32 %3, %5
  br i1 %6, label %7, label %152

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8, !tbaa !27
  %9 = add nsw i32 %3, 1
  store i32 %9, ptr %2, align 8, !tbaa !25
  %10 = sext i32 %3 to i64
  %11 = getelementptr inbounds i8, ptr %8, i64 %10
  %12 = load ptr, ptr @stbtt__lo, align 8, !tbaa !8
  %13 = icmp uge ptr %11, %12
  %14 = load ptr, ptr @stbtt__hi, align 8
  %15 = icmp ult ptr %11, %14
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %152

17:                                               ; preds = %7
  %18 = load i8, ptr %11, align 1, !tbaa !11
  %19 = zext i8 %18 to i32
  %20 = add i8 %18, -32
  %21 = icmp ult i8 %20, -41
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = add nsw i32 %19, -139
  br label %152

24:                                               ; preds = %17
  %25 = icmp slt i8 %18, -5
  br i1 %25, label %26, label %44

26:                                               ; preds = %24
  %27 = shl nuw nsw i32 %19, 8
  %28 = add nsw i32 %27, -63232
  %29 = icmp slt i32 %9, %5
  br i1 %29, label %30, label %41

30:                                               ; preds = %26
  %31 = add nsw i32 %3, 2
  store i32 %31, ptr %2, align 8, !tbaa !25
  %32 = sext i32 %9 to i64
  %33 = getelementptr inbounds i8, ptr %8, i64 %32
  %34 = icmp uge ptr %33, %12
  %35 = icmp ult ptr %33, %14
  %36 = select i1 %34, i1 %35, i1 false
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load i8, ptr %33, align 1, !tbaa !11
  %39 = zext i8 %38 to i32
  %40 = or disjoint i32 %28, %39
  br label %41

41:                                               ; preds = %26, %30, %37
  %42 = phi i32 [ %28, %26 ], [ %40, %37 ], [ %28, %30 ]
  %43 = add nuw nsw i32 %42, 108
  br label %152

44:                                               ; preds = %24
  %45 = icmp slt i8 %18, -1
  br i1 %45, label %46, label %63

46:                                               ; preds = %44
  %47 = shl nuw nsw i32 %19, 8
  %48 = icmp slt i32 %9, %5
  br i1 %48, label %49, label %60

49:                                               ; preds = %46
  %50 = add nsw i32 %3, 2
  store i32 %50, ptr %2, align 8, !tbaa !25
  %51 = sext i32 %9 to i64
  %52 = getelementptr inbounds i8, ptr %8, i64 %51
  %53 = icmp uge ptr %52, %12
  %54 = icmp ult ptr %52, %14
  %55 = select i1 %53, i1 %54, i1 false
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load i8, ptr %52, align 1, !tbaa !11
  %58 = zext i8 %57 to i32
  %59 = or disjoint i32 %47, %58
  br label %60

60:                                               ; preds = %46, %49, %56
  %61 = phi i32 [ %47, %46 ], [ %59, %56 ], [ %47, %49 ]
  %62 = sub nsw i32 64148, %61
  br label %152

63:                                               ; preds = %44
  switch i8 %18, label %152 [
    i8 28, label %64
    i8 29, label %92
  ]

64:                                               ; preds = %63
  %65 = icmp slt i32 %9, %5
  br i1 %65, label %66, label %77

66:                                               ; preds = %64
  %67 = add nsw i32 %3, 2
  store i32 %67, ptr %2, align 8, !tbaa !25
  %68 = sext i32 %9 to i64
  %69 = getelementptr inbounds i8, ptr %8, i64 %68
  %70 = icmp uge ptr %69, %12
  %71 = icmp ult ptr %69, %14
  %72 = select i1 %70, i1 %71, i1 false
  br i1 %72, label %73, label %77

73:                                               ; preds = %66
  %74 = load i8, ptr %69, align 1, !tbaa !11
  %75 = zext i8 %74 to i32
  %76 = shl nuw nsw i32 %75, 8
  br label %77

77:                                               ; preds = %73, %66, %64
  %78 = phi i32 [ %9, %64 ], [ %67, %73 ], [ %67, %66 ]
  %79 = phi i32 [ 0, %64 ], [ %76, %73 ], [ 0, %66 ]
  %80 = icmp slt i32 %78, %5
  br i1 %80, label %81, label %152

81:                                               ; preds = %77
  %82 = add nsw i32 %78, 1
  store i32 %82, ptr %2, align 8, !tbaa !25
  %83 = sext i32 %78 to i64
  %84 = getelementptr inbounds i8, ptr %8, i64 %83
  %85 = icmp uge ptr %84, %12
  %86 = icmp ult ptr %84, %14
  %87 = select i1 %85, i1 %86, i1 false
  br i1 %87, label %88, label %152

88:                                               ; preds = %81
  %89 = load i8, ptr %84, align 1, !tbaa !11
  %90 = zext i8 %89 to i32
  %91 = or disjoint i32 %79, %90
  br label %152

92:                                               ; preds = %63
  %93 = icmp slt i32 %9, %5
  br i1 %93, label %94, label %105

94:                                               ; preds = %92
  %95 = add nsw i32 %3, 2
  store i32 %95, ptr %2, align 8, !tbaa !25
  %96 = sext i32 %9 to i64
  %97 = getelementptr inbounds i8, ptr %8, i64 %96
  %98 = icmp uge ptr %97, %12
  %99 = icmp ult ptr %97, %14
  %100 = select i1 %98, i1 %99, i1 false
  br i1 %100, label %101, label %105

101:                                              ; preds = %94
  %102 = load i8, ptr %97, align 1, !tbaa !11
  %103 = zext i8 %102 to i32
  %104 = shl nuw nsw i32 %103, 8
  br label %105

105:                                              ; preds = %101, %94, %92
  %106 = phi i32 [ %9, %92 ], [ %95, %101 ], [ %95, %94 ]
  %107 = phi i32 [ 0, %92 ], [ %104, %101 ], [ 0, %94 ]
  %108 = icmp slt i32 %106, %5
  br i1 %108, label %109, label %120

109:                                              ; preds = %105
  %110 = add nsw i32 %106, 1
  store i32 %110, ptr %2, align 8, !tbaa !25
  %111 = sext i32 %106 to i64
  %112 = getelementptr inbounds i8, ptr %8, i64 %111
  %113 = icmp uge ptr %112, %12
  %114 = icmp ult ptr %112, %14
  %115 = select i1 %113, i1 %114, i1 false
  br i1 %115, label %116, label %120

116:                                              ; preds = %109
  %117 = load i8, ptr %112, align 1, !tbaa !11
  %118 = zext i8 %117 to i32
  %119 = or disjoint i32 %107, %118
  br label %120

120:                                              ; preds = %116, %109, %105
  %121 = phi i32 [ %106, %105 ], [ %110, %116 ], [ %110, %109 ]
  %122 = phi i32 [ %107, %105 ], [ %119, %116 ], [ %107, %109 ]
  %123 = shl nuw nsw i32 %122, 8
  %124 = icmp slt i32 %121, %5
  br i1 %124, label %125, label %136

125:                                              ; preds = %120
  %126 = add nsw i32 %121, 1
  store i32 %126, ptr %2, align 8, !tbaa !25
  %127 = sext i32 %121 to i64
  %128 = getelementptr inbounds i8, ptr %8, i64 %127
  %129 = icmp uge ptr %128, %12
  %130 = icmp ult ptr %128, %14
  %131 = select i1 %129, i1 %130, i1 false
  br i1 %131, label %132, label %136

132:                                              ; preds = %125
  %133 = load i8, ptr %128, align 1, !tbaa !11
  %134 = zext i8 %133 to i32
  %135 = or disjoint i32 %123, %134
  br label %136

136:                                              ; preds = %132, %125, %120
  %137 = phi i32 [ %121, %120 ], [ %126, %132 ], [ %126, %125 ]
  %138 = phi i32 [ %123, %120 ], [ %135, %132 ], [ %123, %125 ]
  %139 = shl nuw i32 %138, 8
  %140 = icmp slt i32 %137, %5
  br i1 %140, label %141, label %152

141:                                              ; preds = %136
  %142 = add nsw i32 %137, 1
  store i32 %142, ptr %2, align 8, !tbaa !25
  %143 = sext i32 %137 to i64
  %144 = getelementptr inbounds i8, ptr %8, i64 %143
  %145 = icmp uge ptr %144, %12
  %146 = icmp ult ptr %144, %14
  %147 = select i1 %145, i1 %146, i1 false
  br i1 %147, label %148, label %152

148:                                              ; preds = %141
  %149 = load i8, ptr %144, align 1, !tbaa !11
  %150 = zext i8 %149 to i32
  %151 = or disjoint i32 %139, %150
  br label %152

152:                                              ; preds = %136, %141, %148, %77, %81, %88, %1, %7, %63, %60, %41, %22
  %153 = phi i32 [ %23, %22 ], [ %43, %41 ], [ %62, %60 ], [ %79, %81 ], [ 0, %1 ], [ 0, %63 ], [ 0, %7 ], [ %79, %77 ], [ %91, %88 ], [ %139, %136 ], [ %151, %148 ], [ %139, %141 ]
  ret i32 %153
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none)
define internal fastcc i32 @stbtt_FindGlyphIndex(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef range(i32 -2147483648, 127) %1) unnamed_addr #4 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8, !tbaa !12
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %6 = load i32, ptr %5, align 8, !tbaa !104
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 %7
  %9 = load ptr, ptr @stbtt__lo, align 8, !tbaa !8
  %10 = icmp uge ptr %8, %9
  %11 = load ptr, ptr @stbtt__hi, align 8
  %12 = icmp ult ptr %8, %11
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i8, ptr %8, align 1, !tbaa !11
  %16 = zext i8 %15 to i16
  %17 = shl nuw i16 %16, 8
  br label %18

18:                                               ; preds = %14, %2
  %19 = phi i16 [ %17, %14 ], [ 0, %2 ]
  %20 = getelementptr inbounds nuw i8, ptr %8, i64 1
  %21 = icmp uge ptr %20, %9
  %22 = icmp ult ptr %20, %11
  %23 = select i1 %21, i1 %22, i1 false
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load i8, ptr %20, align 1, !tbaa !11
  %26 = zext i8 %25 to i16
  %27 = or disjoint i16 %19, %26
  br label %28

28:                                               ; preds = %18, %24
  %29 = phi i16 [ %27, %24 ], [ %19, %18 ]
  switch i16 %29, label %428 [
    i16 0, label %30
    i16 6, label %64
    i16 2, label %625
    i16 4, label %137
  ]

30:                                               ; preds = %28
  %31 = getelementptr inbounds nuw i8, ptr %8, i64 2
  %32 = icmp uge ptr %31, %9
  %33 = icmp ult ptr %31, %11
  %34 = select i1 %32, i1 %33, i1 false
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i8, ptr %31, align 1, !tbaa !11
  %37 = zext i8 %36 to i16
  %38 = shl nuw i16 %37, 8
  br label %39

39:                                               ; preds = %35, %30
  %40 = phi i16 [ %38, %35 ], [ 0, %30 ]
  %41 = getelementptr inbounds nuw i8, ptr %8, i64 3
  %42 = icmp uge ptr %41, %9
  %43 = icmp ult ptr %41, %11
  %44 = select i1 %42, i1 %43, i1 false
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load i8, ptr %41, align 1, !tbaa !11
  %47 = zext i8 %46 to i16
  %48 = or disjoint i16 %40, %47
  br label %49

49:                                               ; preds = %39, %45
  %50 = phi i16 [ %48, %45 ], [ %40, %39 ]
  %51 = zext i16 %50 to i32
  %52 = add nsw i32 %51, -6
  %53 = icmp slt i32 %1, %52
  br i1 %53, label %54, label %625

54:                                               ; preds = %49
  %55 = getelementptr inbounds nuw i8, ptr %8, i64 6
  %56 = sext i32 %1 to i64
  %57 = getelementptr inbounds i8, ptr %55, i64 %56
  %58 = icmp uge ptr %57, %9
  %59 = icmp ult ptr %57, %11
  %60 = select i1 %58, i1 %59, i1 false
  br i1 %60, label %61, label %625

61:                                               ; preds = %54
  %62 = load i8, ptr %57, align 1, !tbaa !11
  %63 = zext i8 %62 to i32
  br label %625

64:                                               ; preds = %28
  %65 = getelementptr inbounds nuw i8, ptr %8, i64 6
  %66 = icmp uge ptr %65, %9
  %67 = icmp ult ptr %65, %11
  %68 = select i1 %66, i1 %67, i1 false
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load i8, ptr %65, align 1, !tbaa !11
  %71 = zext i8 %70 to i16
  %72 = shl nuw i16 %71, 8
  br label %73

73:                                               ; preds = %69, %64
  %74 = phi i16 [ %72, %69 ], [ 0, %64 ]
  %75 = getelementptr inbounds nuw i8, ptr %8, i64 7
  %76 = icmp uge ptr %75, %9
  %77 = icmp ult ptr %75, %11
  %78 = select i1 %76, i1 %77, i1 false
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = load i8, ptr %75, align 1, !tbaa !11
  %81 = zext i8 %80 to i16
  %82 = or disjoint i16 %74, %81
  br label %83

83:                                               ; preds = %73, %79
  %84 = phi i16 [ %82, %79 ], [ %74, %73 ]
  %85 = zext i16 %84 to i32
  %86 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %87 = icmp uge ptr %86, %9
  %88 = icmp ult ptr %86, %11
  %89 = select i1 %87, i1 %88, i1 false
  br i1 %89, label %90, label %94

90:                                               ; preds = %83
  %91 = load i8, ptr %86, align 1, !tbaa !11
  %92 = zext i8 %91 to i16
  %93 = shl nuw i16 %92, 8
  br label %94

94:                                               ; preds = %90, %83
  %95 = phi i16 [ %93, %90 ], [ 0, %83 ]
  %96 = getelementptr inbounds nuw i8, ptr %8, i64 9
  %97 = icmp uge ptr %96, %9
  %98 = icmp ult ptr %96, %11
  %99 = select i1 %97, i1 %98, i1 false
  br i1 %99, label %100, label %104

100:                                              ; preds = %94
  %101 = load i8, ptr %96, align 1, !tbaa !11
  %102 = zext i8 %101 to i16
  %103 = or disjoint i16 %95, %102
  br label %104

104:                                              ; preds = %94, %100
  %105 = phi i16 [ %103, %100 ], [ %95, %94 ]
  %106 = icmp ult i32 %1, %85
  br i1 %106, label %625, label %107

107:                                              ; preds = %104
  %108 = zext i16 %105 to i32
  %109 = add nuw nsw i32 %108, %85
  %110 = icmp ult i32 %1, %109
  br i1 %110, label %111, label %625

111:                                              ; preds = %107
  %112 = getelementptr inbounds nuw i8, ptr %8, i64 10
  %113 = sub nsw i32 %1, %85
  %114 = shl nsw i32 %113, 1
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds nuw i8, ptr %112, i64 %115
  %117 = icmp uge ptr %116, %9
  %118 = icmp ult ptr %116, %11
  %119 = select i1 %117, i1 %118, i1 false
  br i1 %119, label %120, label %124

120:                                              ; preds = %111
  %121 = load i8, ptr %116, align 1, !tbaa !11
  %122 = zext i8 %121 to i16
  %123 = shl nuw i16 %122, 8
  br label %124

124:                                              ; preds = %120, %111
  %125 = phi i16 [ %123, %120 ], [ 0, %111 ]
  %126 = getelementptr inbounds nuw i8, ptr %116, i64 1
  %127 = icmp uge ptr %126, %9
  %128 = icmp ult ptr %126, %11
  %129 = select i1 %127, i1 %128, i1 false
  br i1 %129, label %130, label %134

130:                                              ; preds = %124
  %131 = load i8, ptr %126, align 1, !tbaa !11
  %132 = zext i8 %131 to i16
  %133 = or disjoint i16 %125, %132
  br label %134

134:                                              ; preds = %124, %130
  %135 = phi i16 [ %133, %130 ], [ %125, %124 ]
  %136 = zext i16 %135 to i32
  br label %625

137:                                              ; preds = %28
  %138 = getelementptr inbounds nuw i8, ptr %8, i64 6
  %139 = icmp uge ptr %138, %9
  %140 = icmp ult ptr %138, %11
  %141 = select i1 %139, i1 %140, i1 false
  br i1 %141, label %142, label %146

142:                                              ; preds = %137
  %143 = load i8, ptr %138, align 1, !tbaa !11
  %144 = zext i8 %143 to i16
  %145 = shl nuw i16 %144, 8
  br label %146

146:                                              ; preds = %142, %137
  %147 = phi i16 [ %145, %142 ], [ 0, %137 ]
  %148 = getelementptr inbounds nuw i8, ptr %8, i64 7
  %149 = icmp uge ptr %148, %9
  %150 = icmp ult ptr %148, %11
  %151 = select i1 %149, i1 %150, i1 false
  br i1 %151, label %152, label %156

152:                                              ; preds = %146
  %153 = load i8, ptr %148, align 1, !tbaa !11
  %154 = zext i8 %153 to i16
  %155 = or disjoint i16 %147, %154
  br label %156

156:                                              ; preds = %146, %152
  %157 = phi i16 [ %155, %152 ], [ %147, %146 ]
  %158 = lshr i16 %157, 1
  %159 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %160 = icmp uge ptr %159, %9
  %161 = icmp ult ptr %159, %11
  %162 = select i1 %160, i1 %161, i1 false
  br i1 %162, label %163, label %167

163:                                              ; preds = %156
  %164 = load i8, ptr %159, align 1, !tbaa !11
  %165 = zext i8 %164 to i16
  %166 = shl nuw i16 %165, 8
  br label %167

167:                                              ; preds = %163, %156
  %168 = phi i16 [ %166, %163 ], [ 0, %156 ]
  %169 = getelementptr inbounds nuw i8, ptr %8, i64 9
  %170 = icmp uge ptr %169, %9
  %171 = icmp ult ptr %169, %11
  %172 = select i1 %170, i1 %171, i1 false
  br i1 %172, label %173, label %177

173:                                              ; preds = %167
  %174 = load i8, ptr %169, align 1, !tbaa !11
  %175 = zext i8 %174 to i16
  %176 = or disjoint i16 %168, %175
  br label %177

177:                                              ; preds = %167, %173
  %178 = phi i16 [ %176, %173 ], [ %168, %167 ]
  %179 = getelementptr inbounds nuw i8, ptr %8, i64 10
  %180 = icmp uge ptr %179, %9
  %181 = icmp ult ptr %179, %11
  %182 = select i1 %180, i1 %181, i1 false
  br i1 %182, label %183, label %187

183:                                              ; preds = %177
  %184 = load i8, ptr %179, align 1, !tbaa !11
  %185 = zext i8 %184 to i16
  %186 = shl nuw i16 %185, 8
  br label %187

187:                                              ; preds = %183, %177
  %188 = phi i16 [ %186, %183 ], [ 0, %177 ]
  %189 = getelementptr inbounds nuw i8, ptr %8, i64 11
  %190 = icmp uge ptr %189, %9
  %191 = icmp ult ptr %189, %11
  %192 = select i1 %190, i1 %191, i1 false
  br i1 %192, label %193, label %197

193:                                              ; preds = %187
  %194 = load i8, ptr %189, align 1, !tbaa !11
  %195 = zext i8 %194 to i16
  %196 = or disjoint i16 %188, %195
  br label %197

197:                                              ; preds = %187, %193
  %198 = phi i16 [ %196, %193 ], [ %188, %187 ]
  %199 = getelementptr inbounds nuw i8, ptr %8, i64 12
  %200 = icmp uge ptr %199, %9
  %201 = icmp ult ptr %199, %11
  %202 = select i1 %200, i1 %201, i1 false
  br i1 %202, label %203, label %207

203:                                              ; preds = %197
  %204 = load i8, ptr %199, align 1, !tbaa !11
  %205 = zext i8 %204 to i16
  %206 = shl nuw i16 %205, 8
  br label %207

207:                                              ; preds = %203, %197
  %208 = phi i16 [ %206, %203 ], [ 0, %197 ]
  %209 = getelementptr inbounds nuw i8, ptr %8, i64 13
  %210 = icmp uge ptr %209, %9
  %211 = icmp ult ptr %209, %11
  %212 = select i1 %210, i1 %211, i1 false
  br i1 %212, label %213, label %217

213:                                              ; preds = %207
  %214 = load i8, ptr %209, align 1, !tbaa !11
  %215 = zext i8 %214 to i16
  %216 = or disjoint i16 %208, %215
  br label %217

217:                                              ; preds = %207, %213
  %218 = phi i16 [ %216, %213 ], [ %208, %207 ]
  %219 = add i32 %6, 14
  %220 = and i16 %218, -2
  %221 = zext i32 %219 to i64
  %222 = getelementptr inbounds nuw i8, ptr %4, i64 %221
  %223 = zext i16 %220 to i64
  %224 = getelementptr inbounds nuw i8, ptr %222, i64 %223
  %225 = icmp uge ptr %224, %9
  %226 = icmp ult ptr %224, %11
  %227 = select i1 %225, i1 %226, i1 false
  br i1 %227, label %228, label %232

228:                                              ; preds = %217
  %229 = load i8, ptr %224, align 1, !tbaa !11
  %230 = zext i8 %229 to i16
  %231 = shl nuw i16 %230, 8
  br label %232

232:                                              ; preds = %228, %217
  %233 = phi i16 [ %231, %228 ], [ 0, %217 ]
  %234 = getelementptr inbounds nuw i8, ptr %224, i64 1
  %235 = icmp uge ptr %234, %9
  %236 = icmp ult ptr %234, %11
  %237 = select i1 %235, i1 %236, i1 false
  br i1 %237, label %238, label %242

238:                                              ; preds = %232
  %239 = load i8, ptr %234, align 1, !tbaa !11
  %240 = zext i8 %239 to i16
  %241 = or disjoint i16 %233, %240
  br label %242

242:                                              ; preds = %232, %238
  %243 = phi i16 [ %241, %238 ], [ %233, %232 ]
  %244 = zext i16 %243 to i32
  %245 = icmp slt i32 %1, %244
  %246 = zext i16 %220 to i32
  %247 = select i1 %245, i32 0, i32 %246
  %248 = add i32 %6, 12
  %249 = add i32 %248, %247
  %250 = icmp eq i16 %198, 0
  br i1 %250, label %287, label %251

251:                                              ; preds = %242, %278
  %252 = phi i16 [ %255, %278 ], [ %178, %242 ]
  %253 = phi i16 [ %285, %278 ], [ %198, %242 ]
  %254 = phi i32 [ %284, %278 ], [ %249, %242 ]
  %255 = lshr i16 %252, 1
  %256 = zext i32 %254 to i64
  %257 = getelementptr inbounds nuw i8, ptr %4, i64 %256
  %258 = and i16 %255, 32766
  %259 = zext nneg i16 %258 to i64
  %260 = getelementptr inbounds nuw i8, ptr %257, i64 %259
  %261 = icmp uge ptr %260, %9
  %262 = icmp ult ptr %260, %11
  %263 = select i1 %261, i1 %262, i1 false
  br i1 %263, label %264, label %268

264:                                              ; preds = %251
  %265 = load i8, ptr %260, align 1, !tbaa !11
  %266 = zext i8 %265 to i16
  %267 = shl nuw i16 %266, 8
  br label %268

268:                                              ; preds = %264, %251
  %269 = phi i16 [ %267, %264 ], [ 0, %251 ]
  %270 = getelementptr inbounds nuw i8, ptr %260, i64 1
  %271 = icmp uge ptr %270, %9
  %272 = icmp ult ptr %270, %11
  %273 = select i1 %271, i1 %272, i1 false
  br i1 %273, label %274, label %278

274:                                              ; preds = %268
  %275 = load i8, ptr %270, align 1, !tbaa !11
  %276 = zext i8 %275 to i16
  %277 = or disjoint i16 %269, %276
  br label %278

278:                                              ; preds = %268, %274
  %279 = phi i16 [ %277, %274 ], [ %269, %268 ]
  %280 = zext i16 %279 to i32
  %281 = icmp sgt i32 %1, %280
  %282 = zext nneg i16 %258 to i32
  %283 = select i1 %281, i32 %282, i32 0
  %284 = add i32 %283, %254
  %285 = add i16 %253, -1
  %286 = icmp eq i16 %285, 0
  br i1 %286, label %287, label %251, !llvm.loop !105

287:                                              ; preds = %278, %242
  %288 = phi i32 [ %249, %242 ], [ %284, %278 ]
  %289 = sub i32 %288, %6
  %290 = add i32 %289, 131060
  %291 = getelementptr inbounds nuw i8, ptr %8, i64 14
  %292 = zext nneg i16 %158 to i32
  %293 = shl nuw nsw i32 %292, 1
  %294 = zext nneg i32 %293 to i64
  %295 = getelementptr inbounds nuw i8, ptr %291, i64 %294
  %296 = getelementptr inbounds nuw i8, ptr %295, i64 2
  %297 = and i32 %290, 131070
  %298 = zext nneg i32 %297 to i64
  %299 = getelementptr inbounds nuw i8, ptr %296, i64 %298
  %300 = icmp uge ptr %299, %9
  %301 = icmp ult ptr %299, %11
  %302 = select i1 %300, i1 %301, i1 false
  br i1 %302, label %303, label %307

303:                                              ; preds = %287
  %304 = load i8, ptr %299, align 1, !tbaa !11
  %305 = zext i8 %304 to i16
  %306 = shl nuw i16 %305, 8
  br label %307

307:                                              ; preds = %303, %287
  %308 = phi i16 [ %306, %303 ], [ 0, %287 ]
  %309 = getelementptr inbounds nuw i8, ptr %299, i64 1
  %310 = icmp uge ptr %309, %9
  %311 = icmp ult ptr %309, %11
  %312 = select i1 %310, i1 %311, i1 false
  br i1 %312, label %313, label %317

313:                                              ; preds = %307
  %314 = load i8, ptr %309, align 1, !tbaa !11
  %315 = zext i8 %314 to i16
  %316 = or disjoint i16 %308, %315
  br label %317

317:                                              ; preds = %307, %313
  %318 = phi i16 [ %316, %313 ], [ %308, %307 ]
  %319 = getelementptr inbounds nuw i8, ptr %222, i64 %298
  %320 = icmp uge ptr %319, %9
  %321 = icmp ult ptr %319, %11
  %322 = select i1 %320, i1 %321, i1 false
  br i1 %322, label %323, label %327

323:                                              ; preds = %317
  %324 = load i8, ptr %319, align 1, !tbaa !11
  %325 = zext i8 %324 to i16
  %326 = shl nuw i16 %325, 8
  br label %327

327:                                              ; preds = %323, %317
  %328 = phi i16 [ %326, %323 ], [ 0, %317 ]
  %329 = getelementptr inbounds nuw i8, ptr %319, i64 1
  %330 = icmp uge ptr %329, %9
  %331 = icmp ult ptr %329, %11
  %332 = select i1 %330, i1 %331, i1 false
  br i1 %332, label %333, label %337

333:                                              ; preds = %327
  %334 = load i8, ptr %329, align 1, !tbaa !11
  %335 = zext i8 %334 to i16
  %336 = or disjoint i16 %328, %335
  br label %337

337:                                              ; preds = %327, %333
  %338 = phi i16 [ %336, %333 ], [ %328, %327 ]
  %339 = zext i16 %318 to i32
  %340 = icmp slt i32 %1, %339
  %341 = zext i16 %338 to i32
  %342 = icmp sgt i32 %1, %341
  %343 = select i1 %340, i1 true, i1 %342
  br i1 %343, label %425, label %344

344:                                              ; preds = %337
  %345 = mul nuw nsw i32 %292, 6
  %346 = zext nneg i32 %345 to i64
  %347 = getelementptr inbounds nuw i8, ptr %291, i64 %346
  %348 = getelementptr inbounds nuw i8, ptr %347, i64 2
  %349 = getelementptr inbounds nuw i8, ptr %348, i64 %298
  %350 = icmp uge ptr %349, %9
  %351 = icmp ult ptr %349, %11
  %352 = select i1 %350, i1 %351, i1 false
  br i1 %352, label %353, label %357

353:                                              ; preds = %344
  %354 = load i8, ptr %349, align 1, !tbaa !11
  %355 = zext i8 %354 to i16
  %356 = shl nuw i16 %355, 8
  br label %357

357:                                              ; preds = %353, %344
  %358 = phi i16 [ %356, %353 ], [ 0, %344 ]
  %359 = getelementptr inbounds nuw i8, ptr %349, i64 1
  %360 = icmp uge ptr %359, %9
  %361 = icmp ult ptr %359, %11
  %362 = select i1 %360, i1 %361, i1 false
  br i1 %362, label %363, label %367

363:                                              ; preds = %357
  %364 = load i8, ptr %359, align 1, !tbaa !11
  %365 = zext i8 %364 to i16
  %366 = or disjoint i16 %358, %365
  br label %367

367:                                              ; preds = %357, %363
  %368 = phi i16 [ %366, %363 ], [ %358, %357 ]
  %369 = icmp eq i16 %368, 0
  br i1 %369, label %370, label %397

370:                                              ; preds = %367
  %371 = shl nuw nsw i32 %292, 2
  %372 = zext nneg i32 %371 to i64
  %373 = getelementptr inbounds nuw i8, ptr %291, i64 %372
  %374 = getelementptr inbounds nuw i8, ptr %373, i64 2
  %375 = getelementptr inbounds nuw i8, ptr %374, i64 %298
  %376 = icmp uge ptr %375, %9
  %377 = icmp ult ptr %375, %11
  %378 = select i1 %376, i1 %377, i1 false
  br i1 %378, label %379, label %383

379:                                              ; preds = %370
  %380 = load i8, ptr %375, align 1, !tbaa !11
  %381 = zext i8 %380 to i16
  %382 = shl nuw i16 %381, 8
  br label %383

383:                                              ; preds = %379, %370
  %384 = phi i16 [ %382, %379 ], [ 0, %370 ]
  %385 = getelementptr inbounds nuw i8, ptr %375, i64 1
  %386 = icmp uge ptr %385, %9
  %387 = icmp ult ptr %385, %11
  %388 = select i1 %386, i1 %387, i1 false
  br i1 %388, label %389, label %393

389:                                              ; preds = %383
  %390 = load i8, ptr %385, align 1, !tbaa !11
  %391 = zext i8 %390 to i16
  %392 = or disjoint i16 %384, %391
  br label %393

393:                                              ; preds = %383, %389
  %394 = phi i16 [ %392, %389 ], [ %384, %383 ]
  %395 = trunc nuw nsw i32 %1 to i16
  %396 = add i16 %394, %395
  br label %425

397:                                              ; preds = %367
  %398 = zext i16 %368 to i64
  %399 = getelementptr inbounds nuw i8, ptr %4, i64 %398
  %400 = sub nsw i32 %1, %339
  %401 = shl nsw i32 %400, 1
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds i8, ptr %399, i64 %402
  %404 = getelementptr inbounds nuw i8, ptr %403, i64 %7
  %405 = getelementptr inbounds nuw i8, ptr %404, i64 %346
  %406 = getelementptr inbounds nuw i8, ptr %405, i64 16
  %407 = getelementptr inbounds nuw i8, ptr %406, i64 %298
  %408 = icmp uge ptr %407, %9
  %409 = icmp ult ptr %407, %11
  %410 = select i1 %408, i1 %409, i1 false
  br i1 %410, label %411, label %415

411:                                              ; preds = %397
  %412 = load i8, ptr %407, align 1, !tbaa !11
  %413 = zext i8 %412 to i16
  %414 = shl nuw i16 %413, 8
  br label %415

415:                                              ; preds = %411, %397
  %416 = phi i16 [ %414, %411 ], [ 0, %397 ]
  %417 = getelementptr inbounds nuw i8, ptr %407, i64 1
  %418 = icmp uge ptr %417, %9
  %419 = icmp ult ptr %417, %11
  %420 = select i1 %418, i1 %419, i1 false
  br i1 %420, label %421, label %425

421:                                              ; preds = %415
  %422 = load i8, ptr %417, align 1, !tbaa !11
  %423 = zext i8 %422 to i16
  %424 = or disjoint i16 %416, %423
  br label %425

425:                                              ; preds = %421, %415, %393, %337
  %426 = phi i16 [ 0, %337 ], [ %396, %393 ], [ %424, %421 ], [ %416, %415 ]
  %427 = zext i16 %426 to i32
  br label %625

428:                                              ; preds = %28
  %429 = icmp eq i16 %29, 12
  %430 = and i16 %29, -2
  %431 = icmp eq i16 %430, 12
  br i1 %431, label %432, label %625

432:                                              ; preds = %428
  %433 = getelementptr inbounds nuw i8, ptr %8, i64 12
  %434 = icmp uge ptr %433, %9
  %435 = icmp ult ptr %433, %11
  %436 = select i1 %434, i1 %435, i1 false
  br i1 %436, label %437, label %441

437:                                              ; preds = %432
  %438 = load i8, ptr %433, align 1, !tbaa !11
  %439 = zext i8 %438 to i32
  %440 = shl nuw i32 %439, 24
  br label %441

441:                                              ; preds = %437, %432
  %442 = phi i32 [ %440, %437 ], [ 0, %432 ]
  %443 = getelementptr inbounds nuw i8, ptr %8, i64 13
  %444 = icmp uge ptr %443, %9
  %445 = icmp ult ptr %443, %11
  %446 = select i1 %444, i1 %445, i1 false
  br i1 %446, label %447, label %452

447:                                              ; preds = %441
  %448 = load i8, ptr %443, align 1, !tbaa !11
  %449 = zext i8 %448 to i32
  %450 = shl nuw nsw i32 %449, 16
  %451 = or disjoint i32 %450, %442
  br label %452

452:                                              ; preds = %447, %441
  %453 = phi i32 [ %451, %447 ], [ %442, %441 ]
  %454 = getelementptr inbounds nuw i8, ptr %8, i64 14
  %455 = icmp uge ptr %454, %9
  %456 = icmp ult ptr %454, %11
  %457 = select i1 %455, i1 %456, i1 false
  br i1 %457, label %458, label %463

458:                                              ; preds = %452
  %459 = load i8, ptr %454, align 1, !tbaa !11
  %460 = zext i8 %459 to i32
  %461 = shl nuw nsw i32 %460, 8
  %462 = add nuw nsw i32 %461, %453
  br label %463

463:                                              ; preds = %458, %452
  %464 = phi i32 [ %462, %458 ], [ %453, %452 ]
  %465 = getelementptr inbounds nuw i8, ptr %8, i64 15
  %466 = icmp uge ptr %465, %9
  %467 = icmp ult ptr %465, %11
  %468 = select i1 %466, i1 %467, i1 false
  br i1 %468, label %469, label %473

469:                                              ; preds = %463
  %470 = load i8, ptr %465, align 1, !tbaa !11
  %471 = zext i8 %470 to i32
  %472 = or disjoint i32 %464, %471
  br label %473

473:                                              ; preds = %463, %469
  %474 = phi i32 [ %472, %469 ], [ %464, %463 ]
  %475 = icmp sgt i32 %474, 0
  br i1 %475, label %476, label %625

476:                                              ; preds = %473
  %477 = getelementptr inbounds nuw i8, ptr %8, i64 16
  br label %478

478:                                              ; preds = %476, %621
  %479 = phi i32 [ %474, %476 ], [ %623, %621 ]
  %480 = phi i32 [ 0, %476 ], [ %622, %621 ]
  %481 = sub i32 %479, %480
  %482 = ashr i32 %481, 1
  %483 = add i32 %482, %480
  %484 = mul i32 %483, 12
  %485 = sext i32 %484 to i64
  %486 = getelementptr inbounds i8, ptr %477, i64 %485
  %487 = icmp uge ptr %486, %9
  %488 = icmp ult ptr %486, %11
  %489 = select i1 %487, i1 %488, i1 false
  br i1 %489, label %490, label %494

490:                                              ; preds = %478
  %491 = load i8, ptr %486, align 1, !tbaa !11
  %492 = zext i8 %491 to i32
  %493 = shl nuw i32 %492, 24
  br label %494

494:                                              ; preds = %490, %478
  %495 = phi i32 [ %493, %490 ], [ 0, %478 ]
  %496 = getelementptr inbounds nuw i8, ptr %486, i64 1
  %497 = icmp uge ptr %496, %9
  %498 = icmp ult ptr %496, %11
  %499 = select i1 %497, i1 %498, i1 false
  br i1 %499, label %500, label %505

500:                                              ; preds = %494
  %501 = load i8, ptr %496, align 1, !tbaa !11
  %502 = zext i8 %501 to i32
  %503 = shl nuw nsw i32 %502, 16
  %504 = or disjoint i32 %503, %495
  br label %505

505:                                              ; preds = %500, %494
  %506 = phi i32 [ %504, %500 ], [ %495, %494 ]
  %507 = getelementptr inbounds nuw i8, ptr %486, i64 2
  %508 = icmp uge ptr %507, %9
  %509 = icmp ult ptr %507, %11
  %510 = select i1 %508, i1 %509, i1 false
  br i1 %510, label %511, label %516

511:                                              ; preds = %505
  %512 = load i8, ptr %507, align 1, !tbaa !11
  %513 = zext i8 %512 to i32
  %514 = shl nuw nsw i32 %513, 8
  %515 = add nuw nsw i32 %514, %506
  br label %516

516:                                              ; preds = %511, %505
  %517 = phi i32 [ %515, %511 ], [ %506, %505 ]
  %518 = getelementptr inbounds nuw i8, ptr %486, i64 3
  %519 = icmp uge ptr %518, %9
  %520 = icmp ult ptr %518, %11
  %521 = select i1 %519, i1 %520, i1 false
  br i1 %521, label %522, label %526

522:                                              ; preds = %516
  %523 = load i8, ptr %518, align 1, !tbaa !11
  %524 = zext i8 %523 to i32
  %525 = or disjoint i32 %517, %524
  br label %526

526:                                              ; preds = %516, %522
  %527 = phi i32 [ %525, %522 ], [ %517, %516 ]
  %528 = getelementptr inbounds nuw i8, ptr %486, i64 4
  %529 = icmp uge ptr %528, %9
  %530 = icmp ult ptr %528, %11
  %531 = select i1 %529, i1 %530, i1 false
  br i1 %531, label %532, label %536

532:                                              ; preds = %526
  %533 = load i8, ptr %528, align 1, !tbaa !11
  %534 = zext i8 %533 to i32
  %535 = shl nuw i32 %534, 24
  br label %536

536:                                              ; preds = %532, %526
  %537 = phi i32 [ %535, %532 ], [ 0, %526 ]
  %538 = getelementptr inbounds nuw i8, ptr %486, i64 5
  %539 = icmp uge ptr %538, %9
  %540 = icmp ult ptr %538, %11
  %541 = select i1 %539, i1 %540, i1 false
  br i1 %541, label %542, label %547

542:                                              ; preds = %536
  %543 = load i8, ptr %538, align 1, !tbaa !11
  %544 = zext i8 %543 to i32
  %545 = shl nuw nsw i32 %544, 16
  %546 = or disjoint i32 %545, %537
  br label %547

547:                                              ; preds = %542, %536
  %548 = phi i32 [ %546, %542 ], [ %537, %536 ]
  %549 = getelementptr inbounds nuw i8, ptr %486, i64 6
  %550 = icmp uge ptr %549, %9
  %551 = icmp ult ptr %549, %11
  %552 = select i1 %550, i1 %551, i1 false
  br i1 %552, label %553, label %558

553:                                              ; preds = %547
  %554 = load i8, ptr %549, align 1, !tbaa !11
  %555 = zext i8 %554 to i32
  %556 = shl nuw nsw i32 %555, 8
  %557 = add nuw nsw i32 %556, %548
  br label %558

558:                                              ; preds = %553, %547
  %559 = phi i32 [ %557, %553 ], [ %548, %547 ]
  %560 = getelementptr inbounds nuw i8, ptr %486, i64 7
  %561 = icmp uge ptr %560, %9
  %562 = icmp ult ptr %560, %11
  %563 = select i1 %561, i1 %562, i1 false
  br i1 %563, label %564, label %568

564:                                              ; preds = %558
  %565 = load i8, ptr %560, align 1, !tbaa !11
  %566 = zext i8 %565 to i32
  %567 = or disjoint i32 %559, %566
  br label %568

568:                                              ; preds = %558, %564
  %569 = phi i32 [ %567, %564 ], [ %559, %558 ]
  %570 = icmp ult i32 %1, %527
  br i1 %570, label %621, label %571

571:                                              ; preds = %568
  %572 = icmp ugt i32 %1, %569
  br i1 %572, label %573, label %575

573:                                              ; preds = %571
  %574 = add i32 %483, 1
  br label %621

575:                                              ; preds = %571
  %576 = getelementptr inbounds nuw i8, ptr %486, i64 8
  %577 = icmp uge ptr %576, %9
  %578 = icmp ult ptr %576, %11
  %579 = select i1 %577, i1 %578, i1 false
  br i1 %579, label %580, label %584

580:                                              ; preds = %575
  %581 = load i8, ptr %576, align 1, !tbaa !11
  %582 = zext i8 %581 to i32
  %583 = shl nuw i32 %582, 24
  br label %584

584:                                              ; preds = %580, %575
  %585 = phi i32 [ %583, %580 ], [ 0, %575 ]
  %586 = getelementptr inbounds nuw i8, ptr %486, i64 9
  %587 = icmp uge ptr %586, %9
  %588 = icmp ult ptr %586, %11
  %589 = select i1 %587, i1 %588, i1 false
  br i1 %589, label %590, label %595

590:                                              ; preds = %584
  %591 = load i8, ptr %586, align 1, !tbaa !11
  %592 = zext i8 %591 to i32
  %593 = shl nuw nsw i32 %592, 16
  %594 = or disjoint i32 %593, %585
  br label %595

595:                                              ; preds = %590, %584
  %596 = phi i32 [ %594, %590 ], [ %585, %584 ]
  %597 = getelementptr inbounds nuw i8, ptr %486, i64 10
  %598 = icmp uge ptr %597, %9
  %599 = icmp ult ptr %597, %11
  %600 = select i1 %598, i1 %599, i1 false
  br i1 %600, label %601, label %606

601:                                              ; preds = %595
  %602 = load i8, ptr %597, align 1, !tbaa !11
  %603 = zext i8 %602 to i32
  %604 = shl nuw nsw i32 %603, 8
  %605 = add nuw nsw i32 %604, %596
  br label %606

606:                                              ; preds = %601, %595
  %607 = phi i32 [ %605, %601 ], [ %596, %595 ]
  %608 = getelementptr inbounds nuw i8, ptr %486, i64 11
  %609 = icmp uge ptr %608, %9
  %610 = icmp ult ptr %608, %11
  %611 = select i1 %609, i1 %610, i1 false
  br i1 %611, label %612, label %616

612:                                              ; preds = %606
  %613 = load i8, ptr %608, align 1, !tbaa !11
  %614 = zext i8 %613 to i32
  %615 = or disjoint i32 %607, %614
  br label %616

616:                                              ; preds = %612, %606
  %617 = phi i32 [ %615, %612 ], [ %607, %606 ]
  %618 = sub i32 %1, %527
  %619 = select i1 %429, i32 %618, i32 0
  %620 = add i32 %617, %619
  br label %625

621:                                              ; preds = %573, %568
  %622 = phi i32 [ %480, %568 ], [ %574, %573 ]
  %623 = phi i32 [ %483, %568 ], [ %479, %573 ]
  %624 = icmp slt i32 %622, %623
  br i1 %624, label %478, label %625, !llvm.loop !106

625:                                              ; preds = %621, %473, %61, %54, %616, %428, %28, %134, %107, %104, %49, %425
  %626 = phi i32 [ 0, %54 ], [ 0, %49 ], [ 0, %104 ], [ %427, %425 ], [ 0, %28 ], [ 0, %428 ], [ %136, %134 ], [ 0, %107 ], [ %620, %616 ], [ %63, %61 ], [ 0, %473 ], [ 0, %621 ]
  ret i32 %626
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none)
define internal fastcc void @stbtt_GetGlyphBitmapBoxSubpixel(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef %1, float noundef %2, float noundef %3, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %4, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %5, ptr nofree noundef writeonly captures(address_is_null) %6, ptr nofree noundef writeonly captures(address_is_null) %7) unnamed_addr #8 {
  %9 = alloca %struct.stbtt__csctx, align 8
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %11 = load i32, ptr %10, align 4, !tbaa !107
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %28, label %13

13:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %9, i8 0, i64 56, i1 false)
  store i32 1, ptr %9, align 8
  %14 = call fastcc i32 @stbtt__run_charstring(ptr noundef nonnull readonly %0, i32 noundef %1, ptr noundef %9) #16
  %15 = icmp eq i32 %14, 0
  %16 = getelementptr inbounds nuw i8, ptr %9, i64 24
  %17 = load i32, ptr %16, align 8
  %18 = select i1 %15, i32 0, i32 %17
  %19 = getelementptr inbounds nuw i8, ptr %9, i64 32
  %20 = load i32, ptr %19, align 8
  %21 = select i1 %15, i32 0, i32 %20
  %22 = getelementptr inbounds nuw i8, ptr %9, i64 28
  %23 = load i32, ptr %22, align 4
  %24 = select i1 %15, i32 0, i32 %23
  %25 = getelementptr inbounds nuw i8, ptr %9, i64 36
  %26 = load i32, ptr %25, align 4
  %27 = select i1 %15, i32 0, i32 %26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  br label %127

28:                                               ; preds = %8
  %29 = tail call fastcc i32 @stbtt__GetGlyfOffset(ptr noundef nonnull readonly %0, i32 noundef %1) #16
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %122, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %33 = load ptr, ptr %32, align 8, !tbaa !12
  %34 = zext nneg i32 %29 to i64
  %35 = getelementptr inbounds nuw i8, ptr %33, i64 %34
  %36 = getelementptr inbounds nuw i8, ptr %35, i64 2
  %37 = load ptr, ptr @stbtt__lo, align 8, !tbaa !8
  %38 = icmp uge ptr %36, %37
  %39 = load ptr, ptr @stbtt__hi, align 8
  %40 = icmp ult ptr %36, %39
  %41 = select i1 %38, i1 %40, i1 false
  br i1 %41, label %42, label %46

42:                                               ; preds = %31
  %43 = load i8, ptr %36, align 1, !tbaa !11
  %44 = zext i8 %43 to i16
  %45 = shl nuw i16 %44, 8
  br label %46

46:                                               ; preds = %42, %31
  %47 = phi i16 [ %45, %42 ], [ 0, %31 ]
  %48 = getelementptr inbounds nuw i8, ptr %35, i64 3
  %49 = icmp uge ptr %48, %37
  %50 = icmp ult ptr %48, %39
  %51 = select i1 %49, i1 %50, i1 false
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load i8, ptr %48, align 1, !tbaa !11
  %54 = zext i8 %53 to i16
  %55 = or disjoint i16 %47, %54
  br label %56

56:                                               ; preds = %52, %46
  %57 = phi i16 [ %55, %52 ], [ %47, %46 ]
  %58 = sext i16 %57 to i32
  %59 = getelementptr inbounds nuw i8, ptr %35, i64 4
  %60 = icmp uge ptr %59, %37
  %61 = icmp ult ptr %59, %39
  %62 = select i1 %60, i1 %61, i1 false
  br i1 %62, label %63, label %67

63:                                               ; preds = %56
  %64 = load i8, ptr %59, align 1, !tbaa !11
  %65 = zext i8 %64 to i16
  %66 = shl nuw i16 %65, 8
  br label %67

67:                                               ; preds = %63, %56
  %68 = phi i16 [ %66, %63 ], [ 0, %56 ]
  %69 = getelementptr inbounds nuw i8, ptr %35, i64 5
  %70 = icmp uge ptr %69, %37
  %71 = icmp ult ptr %69, %39
  %72 = select i1 %70, i1 %71, i1 false
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = load i8, ptr %69, align 1, !tbaa !11
  %75 = zext i8 %74 to i16
  %76 = or disjoint i16 %68, %75
  br label %77

77:                                               ; preds = %73, %67
  %78 = phi i16 [ %76, %73 ], [ %68, %67 ]
  %79 = sext i16 %78 to i32
  %80 = getelementptr inbounds nuw i8, ptr %35, i64 6
  %81 = icmp uge ptr %80, %37
  %82 = icmp ult ptr %80, %39
  %83 = select i1 %81, i1 %82, i1 false
  br i1 %83, label %84, label %88

84:                                               ; preds = %77
  %85 = load i8, ptr %80, align 1, !tbaa !11
  %86 = zext i8 %85 to i16
  %87 = shl nuw i16 %86, 8
  br label %88

88:                                               ; preds = %84, %77
  %89 = phi i16 [ %87, %84 ], [ 0, %77 ]
  %90 = getelementptr inbounds nuw i8, ptr %35, i64 7
  %91 = icmp uge ptr %90, %37
  %92 = icmp ult ptr %90, %39
  %93 = select i1 %91, i1 %92, i1 false
  br i1 %93, label %94, label %98

94:                                               ; preds = %88
  %95 = load i8, ptr %90, align 1, !tbaa !11
  %96 = zext i8 %95 to i16
  %97 = or disjoint i16 %89, %96
  br label %98

98:                                               ; preds = %94, %88
  %99 = phi i16 [ %97, %94 ], [ %89, %88 ]
  %100 = sext i16 %99 to i32
  %101 = getelementptr inbounds nuw i8, ptr %35, i64 8
  %102 = icmp uge ptr %101, %37
  %103 = icmp ult ptr %101, %39
  %104 = select i1 %102, i1 %103, i1 false
  br i1 %104, label %105, label %109

105:                                              ; preds = %98
  %106 = load i8, ptr %101, align 1, !tbaa !11
  %107 = zext i8 %106 to i16
  %108 = shl nuw i16 %107, 8
  br label %109

109:                                              ; preds = %105, %98
  %110 = phi i16 [ %108, %105 ], [ 0, %98 ]
  %111 = getelementptr inbounds nuw i8, ptr %35, i64 9
  %112 = icmp uge ptr %111, %37
  %113 = icmp ult ptr %111, %39
  %114 = select i1 %112, i1 %113, i1 false
  br i1 %114, label %115, label %119

115:                                              ; preds = %109
  %116 = load i8, ptr %111, align 1, !tbaa !11
  %117 = zext i8 %116 to i16
  %118 = or disjoint i16 %110, %117
  br label %119

119:                                              ; preds = %115, %109
  %120 = phi i16 [ %118, %115 ], [ %110, %109 ]
  %121 = sext i16 %120 to i32
  br label %127

122:                                              ; preds = %28
  store i32 0, ptr %4, align 4, !tbaa !23
  store i32 0, ptr %5, align 4, !tbaa !23
  %123 = icmp eq ptr %6, null
  br i1 %123, label %125, label %124

124:                                              ; preds = %122
  store i32 0, ptr %6, align 4, !tbaa !23
  br label %125

125:                                              ; preds = %124, %122
  %126 = icmp eq ptr %7, null
  br i1 %126, label %235, label %233

127:                                              ; preds = %119, %13
  %128 = phi i32 [ %18, %13 ], [ %58, %119 ]
  %129 = phi i32 [ %21, %13 ], [ %79, %119 ]
  %130 = phi i32 [ %24, %13 ], [ %100, %119 ]
  %131 = phi i32 [ %27, %13 ], [ %121, %119 ]
  %132 = sitofp i32 %128 to float
  %133 = call float @llvm.fmuladd.f32(float %132, float %2, float 0.000000e+00)
  %134 = fpext float %133 to double
  %135 = fcmp uno float %133, 0.000000e+00
  br i1 %135, label %143, label %136

136:                                              ; preds = %127
  %137 = fcmp ogt double %134, f0x41DFFFFFFFC00000
  br i1 %137, label %143, label %138

138:                                              ; preds = %136
  %139 = fcmp olt float %133, f0xCF000000
  br i1 %139, label %143, label %140

140:                                              ; preds = %138
  %141 = fptosi float %133 to i64
  %142 = sitofp i64 %141 to double
  br label %143

143:                                              ; preds = %140, %138, %136, %127
  %144 = phi double [ %142, %140 ], [ 0.000000e+00, %127 ], [ f0x41DFFFFFFFC00000, %136 ], [ f0xC1E0000000000000, %138 ]
  %145 = fcmp ogt double %144, %134
  %146 = fadd double %144, -1.000000e+00
  %147 = select i1 %145, double %146, double %144
  %148 = fcmp ogt double %147, f0x41DFFFFFFFC00000
  br i1 %148, label %154, label %149

149:                                              ; preds = %143
  %150 = fcmp olt double %147, f0xC1E0000000000000
  br i1 %150, label %154, label %151

151:                                              ; preds = %149
  %152 = fptosi double %147 to i64
  %153 = trunc i64 %152 to i32
  br label %154

154:                                              ; preds = %143, %149, %151
  %155 = phi i32 [ %153, %151 ], [ -2147483648, %149 ], [ 2147483647, %143 ]
  store i32 %155, ptr %4, align 4, !tbaa !23
  %156 = sub i32 0, %131
  %157 = sitofp i32 %156 to float
  %158 = call float @llvm.fmuladd.f32(float %157, float %3, float 0.000000e+00)
  %159 = fpext float %158 to double
  %160 = fcmp uno float %158, 0.000000e+00
  br i1 %160, label %168, label %161

161:                                              ; preds = %154
  %162 = fcmp ogt double %159, f0x41DFFFFFFFC00000
  br i1 %162, label %168, label %163

163:                                              ; preds = %161
  %164 = fcmp olt float %158, f0xCF000000
  br i1 %164, label %168, label %165

165:                                              ; preds = %163
  %166 = fptosi float %158 to i64
  %167 = sitofp i64 %166 to double
  br label %168

168:                                              ; preds = %165, %163, %161, %154
  %169 = phi double [ %167, %165 ], [ 0.000000e+00, %154 ], [ f0x41DFFFFFFFC00000, %161 ], [ f0xC1E0000000000000, %163 ]
  %170 = fcmp ogt double %169, %159
  %171 = fadd double %169, -1.000000e+00
  %172 = select i1 %170, double %171, double %169
  %173 = fcmp ogt double %172, f0x41DFFFFFFFC00000
  br i1 %173, label %179, label %174

174:                                              ; preds = %168
  %175 = fcmp olt double %172, f0xC1E0000000000000
  br i1 %175, label %179, label %176

176:                                              ; preds = %174
  %177 = fptosi double %172 to i64
  %178 = trunc i64 %177 to i32
  br label %179

179:                                              ; preds = %168, %174, %176
  %180 = phi i32 [ %178, %176 ], [ -2147483648, %174 ], [ 2147483647, %168 ]
  store i32 %180, ptr %5, align 4, !tbaa !23
  %181 = icmp eq ptr %6, null
  br i1 %181, label %207, label %182

182:                                              ; preds = %179
  %183 = sitofp i32 %130 to float
  %184 = call float @llvm.fmuladd.f32(float %183, float %2, float 0.000000e+00)
  %185 = fpext float %184 to double
  %186 = fcmp uno float %184, 0.000000e+00
  br i1 %186, label %194, label %187

187:                                              ; preds = %182
  %188 = fcmp ogt double %185, f0x41DFFFFFFFC00000
  br i1 %188, label %194, label %189

189:                                              ; preds = %187
  %190 = fcmp olt float %184, f0xCF000000
  br i1 %190, label %194, label %191

191:                                              ; preds = %189
  %192 = fptosi float %184 to i64
  %193 = sitofp i64 %192 to double
  br label %194

194:                                              ; preds = %191, %189, %187, %182
  %195 = phi double [ %193, %191 ], [ 0.000000e+00, %182 ], [ f0x41DFFFFFFFC00000, %187 ], [ f0xC1E0000000000000, %189 ]
  %196 = fcmp olt double %195, %185
  %197 = fadd double %195, 1.000000e+00
  %198 = select i1 %196, double %197, double %195
  %199 = fcmp ogt double %198, f0x41DFFFFFFFC00000
  br i1 %199, label %205, label %200

200:                                              ; preds = %194
  %201 = fcmp olt double %198, f0xC1E0000000000000
  br i1 %201, label %205, label %202

202:                                              ; preds = %200
  %203 = fptosi double %198 to i64
  %204 = trunc i64 %203 to i32
  br label %205

205:                                              ; preds = %194, %200, %202
  %206 = phi i32 [ %204, %202 ], [ -2147483648, %200 ], [ 2147483647, %194 ]
  store i32 %206, ptr %6, align 4, !tbaa !23
  br label %207

207:                                              ; preds = %205, %179
  %208 = icmp eq ptr %7, null
  br i1 %208, label %235, label %209

209:                                              ; preds = %207
  %210 = sub i32 0, %129
  %211 = sitofp i32 %210 to float
  %212 = call float @llvm.fmuladd.f32(float %211, float %3, float 0.000000e+00)
  %213 = fpext float %212 to double
  %214 = fcmp uno float %212, 0.000000e+00
  br i1 %214, label %222, label %215

215:                                              ; preds = %209
  %216 = fcmp ogt double %213, f0x41DFFFFFFFC00000
  br i1 %216, label %222, label %217

217:                                              ; preds = %215
  %218 = fcmp olt float %212, f0xCF000000
  br i1 %218, label %222, label %219

219:                                              ; preds = %217
  %220 = fptosi float %212 to i64
  %221 = sitofp i64 %220 to double
  br label %222

222:                                              ; preds = %219, %217, %215, %209
  %223 = phi double [ %221, %219 ], [ 0.000000e+00, %209 ], [ f0x41DFFFFFFFC00000, %215 ], [ f0xC1E0000000000000, %217 ]
  %224 = fcmp olt double %223, %213
  %225 = fadd double %223, 1.000000e+00
  %226 = select i1 %224, double %225, double %223
  %227 = fcmp ogt double %226, f0x41DFFFFFFFC00000
  br i1 %227, label %233, label %228

228:                                              ; preds = %222
  %229 = fcmp olt double %226, f0xC1E0000000000000
  br i1 %229, label %233, label %230

230:                                              ; preds = %228
  %231 = fptosi double %226 to i64
  %232 = trunc i64 %231 to i32
  br label %233

233:                                              ; preds = %230, %228, %222, %125
  %234 = phi i32 [ 0, %125 ], [ %232, %230 ], [ -2147483648, %228 ], [ 2147483647, %222 ]
  store i32 %234, ptr %7, align 4, !tbaa !23
  br label %235

235:                                              ; preds = %233, %207, %125
  ret void
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none)
define internal fastcc i32 @stbtt__GetGlyfOffset(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef %1) unnamed_addr #3 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %4 = load i32, ptr %3, align 4, !tbaa !28
  %5 = icmp slt i32 %1, %4
  br i1 %5, label %6, label %160

6:                                                ; preds = %2
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 60
  %8 = load i32, ptr %7, align 4, !tbaa !32
  %9 = icmp sgt i32 %8, 1
  br i1 %9, label %160, label %10

10:                                               ; preds = %6
  %11 = icmp eq i32 %8, 0
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %13 = load i32, ptr %12, align 8, !tbaa !18
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %15 = load ptr, ptr %14, align 8, !tbaa !12
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %17 = load i32, ptr %16, align 8, !tbaa !16
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, ptr %15, i64 %18
  %20 = load ptr, ptr @stbtt__lo, align 8, !tbaa !8
  %21 = load ptr, ptr @stbtt__hi, align 8
  br i1 %11, label %22, label %69

22:                                               ; preds = %10
  %23 = shl i32 %1, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, ptr %19, i64 %24
  %26 = icmp uge ptr %25, %20
  %27 = icmp ult ptr %25, %21
  %28 = select i1 %26, i1 %27, i1 false
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load i8, ptr %25, align 1, !tbaa !11
  %31 = zext i8 %30 to i16
  %32 = shl nuw i16 %31, 8
  br label %33

33:                                               ; preds = %29, %22
  %34 = phi i16 [ %32, %29 ], [ 0, %22 ]
  %35 = getelementptr inbounds nuw i8, ptr %25, i64 1
  %36 = icmp uge ptr %35, %20
  %37 = icmp ult ptr %35, %21
  %38 = select i1 %36, i1 %37, i1 false
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load i8, ptr %35, align 1, !tbaa !11
  %41 = zext i8 %40 to i16
  %42 = or disjoint i16 %34, %41
  br label %43

43:                                               ; preds = %33, %39
  %44 = phi i16 [ %42, %39 ], [ %34, %33 ]
  %45 = zext i16 %44 to i32
  %46 = shl nuw nsw i32 %45, 1
  %47 = getelementptr inbounds nuw i8, ptr %25, i64 2
  %48 = icmp uge ptr %47, %20
  %49 = icmp ult ptr %47, %21
  %50 = select i1 %48, i1 %49, i1 false
  br i1 %50, label %51, label %55

51:                                               ; preds = %43
  %52 = load i8, ptr %47, align 1, !tbaa !11
  %53 = zext i8 %52 to i16
  %54 = shl nuw i16 %53, 8
  br label %55

55:                                               ; preds = %51, %43
  %56 = phi i16 [ %54, %51 ], [ 0, %43 ]
  %57 = getelementptr inbounds nuw i8, ptr %25, i64 3
  %58 = icmp uge ptr %57, %20
  %59 = icmp ult ptr %57, %21
  %60 = select i1 %58, i1 %59, i1 false
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load i8, ptr %57, align 1, !tbaa !11
  %63 = zext i8 %62 to i16
  %64 = or disjoint i16 %56, %63
  br label %65

65:                                               ; preds = %55, %61
  %66 = phi i16 [ %64, %61 ], [ %56, %55 ]
  %67 = zext i16 %66 to i32
  %68 = shl nuw nsw i32 %67, 1
  br label %154

69:                                               ; preds = %10
  %70 = shl i32 %1, 2
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, ptr %19, i64 %71
  %73 = icmp uge ptr %72, %20
  %74 = icmp ult ptr %72, %21
  %75 = select i1 %73, i1 %74, i1 false
  br i1 %75, label %76, label %80

76:                                               ; preds = %69
  %77 = load i8, ptr %72, align 1, !tbaa !11
  %78 = zext i8 %77 to i32
  %79 = shl nuw i32 %78, 24
  br label %80

80:                                               ; preds = %76, %69
  %81 = phi i32 [ %79, %76 ], [ 0, %69 ]
  %82 = getelementptr inbounds nuw i8, ptr %72, i64 1
  %83 = icmp uge ptr %82, %20
  %84 = icmp ult ptr %82, %21
  %85 = select i1 %83, i1 %84, i1 false
  br i1 %85, label %86, label %91

86:                                               ; preds = %80
  %87 = load i8, ptr %82, align 1, !tbaa !11
  %88 = zext i8 %87 to i32
  %89 = shl nuw nsw i32 %88, 16
  %90 = or disjoint i32 %89, %81
  br label %91

91:                                               ; preds = %86, %80
  %92 = phi i32 [ %90, %86 ], [ %81, %80 ]
  %93 = getelementptr inbounds nuw i8, ptr %72, i64 2
  %94 = icmp uge ptr %93, %20
  %95 = icmp ult ptr %93, %21
  %96 = select i1 %94, i1 %95, i1 false
  br i1 %96, label %97, label %102

97:                                               ; preds = %91
  %98 = load i8, ptr %93, align 1, !tbaa !11
  %99 = zext i8 %98 to i32
  %100 = shl nuw nsw i32 %99, 8
  %101 = add nuw nsw i32 %100, %92
  br label %102

102:                                              ; preds = %97, %91
  %103 = phi i32 [ %101, %97 ], [ %92, %91 ]
  %104 = getelementptr inbounds nuw i8, ptr %72, i64 3
  %105 = icmp uge ptr %104, %20
  %106 = icmp ult ptr %104, %21
  %107 = select i1 %105, i1 %106, i1 false
  br i1 %107, label %108, label %112

108:                                              ; preds = %102
  %109 = load i8, ptr %104, align 1, !tbaa !11
  %110 = zext i8 %109 to i32
  %111 = or disjoint i32 %103, %110
  br label %112

112:                                              ; preds = %102, %108
  %113 = phi i32 [ %111, %108 ], [ %103, %102 ]
  %114 = getelementptr inbounds nuw i8, ptr %72, i64 4
  %115 = icmp uge ptr %114, %20
  %116 = icmp ult ptr %114, %21
  %117 = select i1 %115, i1 %116, i1 false
  br i1 %117, label %118, label %122

118:                                              ; preds = %112
  %119 = load i8, ptr %114, align 1, !tbaa !11
  %120 = zext i8 %119 to i32
  %121 = shl nuw i32 %120, 24
  br label %122

122:                                              ; preds = %118, %112
  %123 = phi i32 [ %121, %118 ], [ 0, %112 ]
  %124 = getelementptr inbounds nuw i8, ptr %72, i64 5
  %125 = icmp uge ptr %124, %20
  %126 = icmp ult ptr %124, %21
  %127 = select i1 %125, i1 %126, i1 false
  br i1 %127, label %128, label %133

128:                                              ; preds = %122
  %129 = load i8, ptr %124, align 1, !tbaa !11
  %130 = zext i8 %129 to i32
  %131 = shl nuw nsw i32 %130, 16
  %132 = or disjoint i32 %131, %123
  br label %133

133:                                              ; preds = %128, %122
  %134 = phi i32 [ %132, %128 ], [ %123, %122 ]
  %135 = getelementptr inbounds nuw i8, ptr %72, i64 6
  %136 = icmp uge ptr %135, %20
  %137 = icmp ult ptr %135, %21
  %138 = select i1 %136, i1 %137, i1 false
  br i1 %138, label %139, label %144

139:                                              ; preds = %133
  %140 = load i8, ptr %135, align 1, !tbaa !11
  %141 = zext i8 %140 to i32
  %142 = shl nuw nsw i32 %141, 8
  %143 = add nuw nsw i32 %142, %134
  br label %144

144:                                              ; preds = %139, %133
  %145 = phi i32 [ %143, %139 ], [ %134, %133 ]
  %146 = getelementptr inbounds nuw i8, ptr %72, i64 7
  %147 = icmp uge ptr %146, %20
  %148 = icmp ult ptr %146, %21
  %149 = select i1 %147, i1 %148, i1 false
  br i1 %149, label %150, label %154

150:                                              ; preds = %144
  %151 = load i8, ptr %146, align 1, !tbaa !11
  %152 = zext i8 %151 to i32
  %153 = or disjoint i32 %145, %152
  br label %154

154:                                              ; preds = %150, %144, %65
  %155 = phi i32 [ %68, %65 ], [ %153, %150 ], [ %145, %144 ]
  %156 = phi i32 [ %46, %65 ], [ %113, %150 ], [ %113, %144 ]
  %157 = add i32 %156, %13
  %158 = icmp eq i32 %156, %155
  %159 = select i1 %158, i32 -1, i32 %157
  br label %160

160:                                              ; preds = %6, %2, %154
  %161 = phi i32 [ %159, %154 ], [ -1, %2 ], [ -1, %6 ]
  ret i32 %161
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none)
define internal fastcc range(i32 0, 2) i32 @stbtt__run_charstring(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef %1, ptr nofree noundef nonnull %2) unnamed_addr #8 {
  %4 = alloca [48 x float], align 16
  %5 = alloca [10 x %struct.stbtt__buf], align 16
  %6 = alloca %struct.stbtt__buf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %8 = load ptr, ptr %7, align 8, !tbaa !8
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %10 = load i64, ptr %9, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %14 = load i64, ptr %13, align 8
  %15 = tail call fastcc { ptr, i64 } @stbtt__cff_index_get(ptr %12, i64 %14, i32 noundef %1) #16
  %16 = extractvalue { ptr, i64 } %15, 0
  %17 = extractvalue { ptr, i64 } %15, 1
  store ptr %16, ptr %6, align 8, !tbaa !8
  %18 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %17, ptr %18, align 8
  %19 = getelementptr inbounds nuw i8, ptr %6, i64 12
  %20 = trunc i64 %17 to i32
  %21 = lshr i64 %17, 32
  %22 = trunc nuw i64 %21 to i32
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %1050

24:                                               ; preds = %3
  %25 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %26 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %27 = getelementptr inbounds nuw i8, ptr %4, i64 12
  %28 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %29 = getelementptr inbounds nuw i8, ptr %4, i64 20
  %30 = getelementptr inbounds nuw i8, ptr %4, i64 24
  %31 = getelementptr inbounds nuw i8, ptr %4, i64 28
  %32 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %33 = getelementptr inbounds nuw i8, ptr %4, i64 36
  %34 = getelementptr inbounds nuw i8, ptr %4, i64 40
  %35 = getelementptr inbounds nuw i8, ptr %4, i64 44
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 156
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %44 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %45 = getelementptr inbounds nuw i8, ptr %2, i64 28
  %46 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %47 = getelementptr inbounds nuw i8, ptr %2, i64 36
  %48 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %49 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %50 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %51 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %52 = load ptr, ptr @stbtt__lo, align 8, !tbaa !8
  %53 = load ptr, ptr @stbtt__hi, align 8
  br label %54

54:                                               ; preds = %24, %1033
  %55 = phi ptr [ %53, %24 ], [ %1034, %1033 ]
  %56 = phi ptr [ %52, %24 ], [ %1035, %1033 ]
  %57 = phi ptr [ %53, %24 ], [ %1036, %1033 ]
  %58 = phi ptr [ %52, %24 ], [ %1037, %1033 ]
  %59 = phi ptr [ %53, %24 ], [ %1038, %1033 ]
  %60 = phi ptr [ %52, %24 ], [ %1039, %1033 ]
  %61 = phi i32 [ %22, %24 ], [ %1048, %1033 ]
  %62 = phi i32 [ %20, %24 ], [ %1047, %1033 ]
  %63 = phi i32 [ 1, %24 ], [ %1040, %1033 ]
  %64 = phi i32 [ 0, %24 ], [ %1041, %1033 ]
  %65 = phi i32 [ 0, %24 ], [ %1042, %1033 ]
  %66 = phi i32 [ 0, %24 ], [ %1046, %1033 ]
  %67 = phi i32 [ 0, %24 ], [ %1043, %1033 ]
  %68 = phi i64 [ %10, %24 ], [ %1044, %1033 ]
  %69 = phi ptr [ %8, %24 ], [ %1045, %1033 ]
  %70 = load ptr, ptr %6, align 8, !tbaa !27
  %71 = add nsw i32 %62, 1
  store i32 %71, ptr %18, align 8, !tbaa !25
  %72 = sext i32 %62 to i64
  %73 = getelementptr inbounds i8, ptr %70, i64 %72
  %74 = icmp uge ptr %73, %60
  %75 = icmp ult ptr %73, %59
  %76 = select i1 %74, i1 %75, i1 false
  br i1 %76, label %77, label %1050

77:                                               ; preds = %54
  %78 = load i8, ptr %73, align 1, !tbaa !11
  switch i8 %78, label %943 [
    i8 19, label %79
    i8 20, label %79
    i8 1, label %92
    i8 3, label %92
    i8 18, label %92
    i8 23, label %92
    i8 21, label %95
    i8 4, label %104
    i8 22, label %111
    i8 5, label %118
    i8 7, label %177
    i8 6, label %179
    i8 31, label %295
    i8 30, label %297
    i8 8, label %355
    i8 24, label %383
    i8 25, label %468
    i8 26, label %559
    i8 27, label %559
    i8 10, label %614
    i8 29, label %773
    i8 11, label %849
    i8 14, label %855
    i8 12, label %856
  ]

79:                                               ; preds = %77, %77
  %80 = icmp eq i32 %63, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %79
  %82 = sdiv i32 %66, 2
  %83 = add i32 %64, %82
  br label %84

84:                                               ; preds = %81, %79
  %85 = phi i32 [ %83, %81 ], [ %64, %79 ]
  %86 = add i32 %85, 7
  %87 = sdiv i32 %86, 8
  %88 = add i32 %87, %71
  %89 = icmp slt i32 %88, 0
  %90 = tail call i32 @llvm.smin.i32(i32 %88, i32 %61)
  %91 = select i1 %89, i32 %61, i32 %90
  store i32 %91, ptr %18, align 8, !tbaa !25
  br label %1033

92:                                               ; preds = %77, %77, %77, %77
  %93 = sdiv i32 %66, 2
  %94 = add i32 %64, %93
  br label %1033

95:                                               ; preds = %77
  %96 = icmp slt i32 %66, 2
  br i1 %96, label %1050, label %97

97:                                               ; preds = %95
  %98 = zext nneg i32 %66 to i64
  %99 = getelementptr [4 x i8], ptr %4, i64 %98
  %100 = getelementptr i8, ptr %99, i64 -8
  %101 = load float, ptr %100, align 4, !tbaa !44
  %102 = getelementptr i8, ptr %99, i64 -4
  %103 = load float, ptr %102, align 4, !tbaa !44
  tail call fastcc void @stbtt__csctx_rmove_to(ptr noundef %2, float noundef %101, float noundef %103) #16
  br label %1033

104:                                              ; preds = %77
  %105 = icmp slt i32 %66, 1
  br i1 %105, label %1050, label %106

106:                                              ; preds = %104
  %107 = zext nneg i32 %66 to i64
  %108 = getelementptr [4 x i8], ptr %4, i64 %107
  %109 = getelementptr i8, ptr %108, i64 -4
  %110 = load float, ptr %109, align 4, !tbaa !44
  tail call fastcc void @stbtt__csctx_rmove_to(ptr noundef %2, float noundef 0.000000e+00, float noundef %110) #16
  br label %1033

111:                                              ; preds = %77
  %112 = icmp slt i32 %66, 1
  br i1 %112, label %1050, label %113

113:                                              ; preds = %111
  %114 = zext nneg i32 %66 to i64
  %115 = getelementptr [4 x i8], ptr %4, i64 %114
  %116 = getelementptr i8, ptr %115, i64 -4
  %117 = load float, ptr %116, align 4, !tbaa !44
  tail call fastcc void @stbtt__csctx_rmove_to(ptr noundef %2, float noundef %117, float noundef 0.000000e+00) #16
  br label %1033

118:                                              ; preds = %77
  %119 = icmp slt i32 %66, 2
  br i1 %119, label %1050, label %120

120:                                              ; preds = %118
  %121 = load i32, ptr %2, align 8, !tbaa !108
  %122 = icmp eq i32 %121, 0
  %123 = load <2 x float>, ptr %44, align 8, !tbaa !44
  %124 = load i32, ptr %50, align 8
  %125 = zext nneg i32 %66 to i64
  br label %126

126:                                              ; preds = %120, %172
  %127 = phi i64 [ 0, %120 ], [ %174, %172 ]
  %128 = phi i32 [ %124, %120 ], [ %173, %172 ]
  %129 = phi <2 x float> [ %123, %120 ], [ %132, %172 ]
  %130 = getelementptr [4 x i8], ptr %4, i64 %127
  %131 = load <2 x float>, ptr %130, align 8, !tbaa !44
  %132 = fadd <2 x float> %131, %129
  %133 = fptosi <2 x float> %132 to <2 x i32>
  br i1 %122, label %165, label %134

134:                                              ; preds = %126
  %135 = load i32, ptr %45, align 4, !tbaa !110
  %136 = extractelement <2 x i32> %133, i64 0
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %141, label %138

138:                                              ; preds = %134
  %139 = load i32, ptr %46, align 4, !tbaa !111
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %138, %134
  store i32 %136, ptr %45, align 4, !tbaa !110
  br label %142

142:                                              ; preds = %141, %138
  %143 = load i32, ptr %47, align 4, !tbaa !112
  %144 = extractelement <2 x i32> %133, i64 1
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %149, label %146

146:                                              ; preds = %142
  %147 = load i32, ptr %46, align 4, !tbaa !111
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %146, %142
  store i32 %144, ptr %47, align 4, !tbaa !112
  br label %150

150:                                              ; preds = %149, %146
  %151 = load i32, ptr %48, align 8, !tbaa !113
  %152 = icmp sgt i32 %151, %136
  br i1 %152, label %156, label %153

153:                                              ; preds = %150
  %154 = load i32, ptr %46, align 4, !tbaa !111
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %153, %150
  store i32 %136, ptr %48, align 8, !tbaa !113
  br label %157

157:                                              ; preds = %156, %153
  %158 = load i32, ptr %49, align 8, !tbaa !114
  %159 = icmp sgt i32 %158, %144
  br i1 %159, label %163, label %160

160:                                              ; preds = %157
  %161 = load i32, ptr %46, align 4, !tbaa !111
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %160, %157
  store i32 %144, ptr %49, align 8, !tbaa !114
  br label %164

164:                                              ; preds = %163, %160
  store i32 1, ptr %46, align 4, !tbaa !111
  br label %172

165:                                              ; preds = %126
  %166 = load ptr, ptr %51, align 8, !tbaa !115
  %167 = sext i32 %128 to i64
  %168 = getelementptr inbounds [14 x i8], ptr %166, i64 %167
  %169 = getelementptr inbounds nuw i8, ptr %168, i64 12
  store i8 2, ptr %169, align 2, !tbaa !34
  %170 = trunc <2 x i32> %133 to <2 x i16>
  store <2 x i16> %170, ptr %168, align 2, !tbaa !43
  %171 = getelementptr inbounds nuw i8, ptr %168, i64 4
  store <4 x i16> zeroinitializer, ptr %171, align 2, !tbaa !43
  br label %172

172:                                              ; preds = %164, %165
  %173 = add i32 %128, 1
  %174 = add nuw nsw i64 %127, 2
  %175 = or disjoint i64 %174, 1
  %176 = icmp samesign ult i64 %175, %125
  br i1 %176, label %126, label %1032, !llvm.loop !116

177:                                              ; preds = %77
  %178 = icmp slt i32 %66, 1
  br i1 %178, label %1050, label %238

179:                                              ; preds = %77
  %180 = icmp slt i32 %66, 1
  br i1 %180, label %1050, label %181

181:                                              ; preds = %179, %291
  %182 = phi i32 [ %294, %291 ], [ 0, %179 ]
  %183 = icmp slt i32 %182, %66
  br i1 %183, label %184, label %1033

184:                                              ; preds = %181
  %185 = sext i32 %182 to i64
  %186 = getelementptr inbounds [4 x i8], ptr %4, i64 %185
  %187 = load float, ptr %186, align 4, !tbaa !44
  %188 = load <2 x float>, ptr %44, align 8, !tbaa !44
  %189 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %187, i64 0
  %190 = fadd <2 x float> %188, %189
  store <2 x float> %190, ptr %44, align 8, !tbaa !44
  %191 = fptosi <2 x float> %190 to <2 x i32>
  %192 = load i32, ptr %2, align 8, !tbaa !108
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %226, label %194

194:                                              ; preds = %184
  %195 = load i32, ptr %45, align 4, !tbaa !110
  %196 = extractelement <2 x i32> %191, i64 0
  %197 = icmp slt i32 %195, %196
  br i1 %197, label %201, label %198

198:                                              ; preds = %194
  %199 = load i32, ptr %46, align 4, !tbaa !111
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %198, %194
  store i32 %196, ptr %45, align 4, !tbaa !110
  br label %202

202:                                              ; preds = %201, %198
  %203 = load i32, ptr %47, align 4, !tbaa !112
  %204 = extractelement <2 x i32> %191, i64 1
  %205 = icmp slt i32 %203, %204
  br i1 %205, label %209, label %206

206:                                              ; preds = %202
  %207 = load i32, ptr %46, align 4, !tbaa !111
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %206, %202
  store i32 %204, ptr %47, align 4, !tbaa !112
  br label %210

210:                                              ; preds = %209, %206
  %211 = load i32, ptr %48, align 8, !tbaa !113
  %212 = icmp sgt i32 %211, %196
  br i1 %212, label %216, label %213

213:                                              ; preds = %210
  %214 = load i32, ptr %46, align 4, !tbaa !111
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %213, %210
  store i32 %196, ptr %48, align 8, !tbaa !113
  br label %217

217:                                              ; preds = %216, %213
  %218 = load i32, ptr %49, align 8, !tbaa !114
  %219 = icmp sgt i32 %218, %204
  br i1 %219, label %223, label %220

220:                                              ; preds = %217
  %221 = load i32, ptr %46, align 4, !tbaa !111
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %220, %217
  store i32 %204, ptr %49, align 8, !tbaa !114
  br label %224

224:                                              ; preds = %223, %220
  store i32 1, ptr %46, align 4, !tbaa !111
  %225 = load i32, ptr %50, align 8, !tbaa !117
  br label %234

226:                                              ; preds = %184
  %227 = load ptr, ptr %51, align 8, !tbaa !115
  %228 = load i32, ptr %50, align 8, !tbaa !117
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds [14 x i8], ptr %227, i64 %229
  %231 = getelementptr inbounds nuw i8, ptr %230, i64 12
  store i8 2, ptr %231, align 2, !tbaa !34
  %232 = trunc <2 x i32> %191 to <2 x i16>
  store <2 x i16> %232, ptr %230, align 2, !tbaa !43
  %233 = getelementptr inbounds nuw i8, ptr %230, i64 4
  store <4 x i16> zeroinitializer, ptr %233, align 2, !tbaa !43
  br label %234

234:                                              ; preds = %224, %226
  %235 = phi i32 [ %225, %224 ], [ %228, %226 ]
  %236 = add i32 %235, 1
  store i32 %236, ptr %50, align 8, !tbaa !117
  %237 = add nsw i32 %182, 1
  br label %238

238:                                              ; preds = %177, %234
  %239 = phi i32 [ 0, %177 ], [ %237, %234 ]
  %240 = icmp slt i32 %239, %66
  br i1 %240, label %241, label %1033

241:                                              ; preds = %238
  %242 = sext i32 %239 to i64
  %243 = getelementptr inbounds [4 x i8], ptr %4, i64 %242
  %244 = load float, ptr %243, align 4, !tbaa !44
  %245 = load <2 x float>, ptr %44, align 8, !tbaa !44
  %246 = insertelement <2 x float> <float 0.000000e+00, float poison>, float %244, i64 1
  %247 = fadd <2 x float> %245, %246
  store <2 x float> %247, ptr %44, align 8, !tbaa !44
  %248 = fptosi <2 x float> %247 to <2 x i32>
  %249 = load i32, ptr %2, align 8, !tbaa !108
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %283, label %251

251:                                              ; preds = %241
  %252 = load i32, ptr %45, align 4, !tbaa !110
  %253 = extractelement <2 x i32> %248, i64 0
  %254 = icmp slt i32 %252, %253
  br i1 %254, label %258, label %255

255:                                              ; preds = %251
  %256 = load i32, ptr %46, align 4, !tbaa !111
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %259

258:                                              ; preds = %255, %251
  store i32 %253, ptr %45, align 4, !tbaa !110
  br label %259

259:                                              ; preds = %258, %255
  %260 = load i32, ptr %47, align 4, !tbaa !112
  %261 = extractelement <2 x i32> %248, i64 1
  %262 = icmp slt i32 %260, %261
  br i1 %262, label %266, label %263

263:                                              ; preds = %259
  %264 = load i32, ptr %46, align 4, !tbaa !111
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %266, label %267

266:                                              ; preds = %263, %259
  store i32 %261, ptr %47, align 4, !tbaa !112
  br label %267

267:                                              ; preds = %266, %263
  %268 = load i32, ptr %48, align 8, !tbaa !113
  %269 = icmp sgt i32 %268, %253
  br i1 %269, label %273, label %270

270:                                              ; preds = %267
  %271 = load i32, ptr %46, align 4, !tbaa !111
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %274

273:                                              ; preds = %270, %267
  store i32 %253, ptr %48, align 8, !tbaa !113
  br label %274

274:                                              ; preds = %273, %270
  %275 = load i32, ptr %49, align 8, !tbaa !114
  %276 = icmp sgt i32 %275, %261
  br i1 %276, label %280, label %277

277:                                              ; preds = %274
  %278 = load i32, ptr %46, align 4, !tbaa !111
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %280, label %281

280:                                              ; preds = %277, %274
  store i32 %261, ptr %49, align 8, !tbaa !114
  br label %281

281:                                              ; preds = %280, %277
  store i32 1, ptr %46, align 4, !tbaa !111
  %282 = load i32, ptr %50, align 8, !tbaa !117
  br label %291

283:                                              ; preds = %241
  %284 = load ptr, ptr %51, align 8, !tbaa !115
  %285 = load i32, ptr %50, align 8, !tbaa !117
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds [14 x i8], ptr %284, i64 %286
  %288 = getelementptr inbounds nuw i8, ptr %287, i64 12
  store i8 2, ptr %288, align 2, !tbaa !34
  %289 = trunc <2 x i32> %248 to <2 x i16>
  store <2 x i16> %289, ptr %287, align 2, !tbaa !43
  %290 = getelementptr inbounds nuw i8, ptr %287, i64 4
  store <4 x i16> zeroinitializer, ptr %290, align 2, !tbaa !43
  br label %291

291:                                              ; preds = %281, %283
  %292 = phi i32 [ %282, %281 ], [ %285, %283 ]
  %293 = add i32 %292, 1
  store i32 %293, ptr %50, align 8, !tbaa !117
  %294 = add nsw i32 %239, 1
  br label %181

295:                                              ; preds = %77
  %296 = icmp slt i32 %66, 4
  br i1 %296, label %1050, label %327

297:                                              ; preds = %77
  %298 = icmp slt i32 %66, 4
  br i1 %298, label %1050, label %299

299:                                              ; preds = %297, %350
  %300 = phi i32 [ %345, %350 ], [ 0, %297 ]
  %301 = add i32 %300, 3
  %302 = icmp slt i32 %301, %66
  br i1 %302, label %303, label %1033

303:                                              ; preds = %299
  %304 = sext i32 %300 to i64
  %305 = getelementptr inbounds [4 x i8], ptr %4, i64 %304
  %306 = load float, ptr %305, align 4, !tbaa !44
  %307 = add i32 %300, 1
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds [4 x i8], ptr %4, i64 %308
  %310 = load float, ptr %309, align 4, !tbaa !44
  %311 = add i32 %300, 2
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds [4 x i8], ptr %4, i64 %312
  %314 = load float, ptr %313, align 4, !tbaa !44
  %315 = sext i32 %301 to i64
  %316 = getelementptr inbounds [4 x i8], ptr %4, i64 %315
  %317 = load float, ptr %316, align 4, !tbaa !44
  %318 = sub i32 %66, %300
  %319 = icmp eq i32 %318, 5
  %320 = add i32 %300, 4
  br i1 %319, label %321, label %325

321:                                              ; preds = %303
  %322 = sext i32 %320 to i64
  %323 = getelementptr inbounds [4 x i8], ptr %4, i64 %322
  %324 = load float, ptr %323, align 4, !tbaa !44
  br label %325

325:                                              ; preds = %303, %321
  %326 = phi float [ %324, %321 ], [ 0.000000e+00, %303 ]
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef 0.000000e+00, float noundef %306, float noundef %310, float noundef %314, float noundef %317, float noundef %326) #16
  br label %327

327:                                              ; preds = %295, %325
  %328 = phi i32 [ 0, %295 ], [ %320, %325 ]
  %329 = add i32 %328, 3
  %330 = icmp slt i32 %329, %66
  br i1 %330, label %331, label %1033

331:                                              ; preds = %327
  %332 = sext i32 %328 to i64
  %333 = getelementptr inbounds [4 x i8], ptr %4, i64 %332
  %334 = load float, ptr %333, align 4, !tbaa !44
  %335 = add i32 %328, 1
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds [4 x i8], ptr %4, i64 %336
  %338 = load float, ptr %337, align 4, !tbaa !44
  %339 = add i32 %328, 2
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds [4 x i8], ptr %4, i64 %340
  %342 = load float, ptr %341, align 4, !tbaa !44
  %343 = sub i32 %66, %328
  %344 = icmp eq i32 %343, 5
  %345 = add i32 %328, 4
  br i1 %344, label %346, label %350

346:                                              ; preds = %331
  %347 = sext i32 %345 to i64
  %348 = getelementptr inbounds [4 x i8], ptr %4, i64 %347
  %349 = load float, ptr %348, align 4, !tbaa !44
  br label %350

350:                                              ; preds = %331, %346
  %351 = phi float [ %349, %346 ], [ 0.000000e+00, %331 ]
  %352 = sext i32 %329 to i64
  %353 = getelementptr inbounds [4 x i8], ptr %4, i64 %352
  %354 = load float, ptr %353, align 4, !tbaa !44
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %334, float noundef 0.000000e+00, float noundef %338, float noundef %342, float noundef %351, float noundef %354) #16
  br label %299

355:                                              ; preds = %77
  %356 = icmp slt i32 %66, 6
  br i1 %356, label %1050, label %357

357:                                              ; preds = %355, %357
  %358 = phi i32 [ %380, %357 ], [ 0, %355 ]
  %359 = add i32 %358, 5
  %360 = sext i32 %358 to i64
  %361 = getelementptr inbounds [4 x i8], ptr %4, i64 %360
  %362 = load float, ptr %361, align 8, !tbaa !44
  %363 = getelementptr i8, ptr %361, i64 4
  %364 = load float, ptr %363, align 4, !tbaa !44
  %365 = add i32 %358, 2
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds [4 x i8], ptr %4, i64 %366
  %368 = load float, ptr %367, align 8, !tbaa !44
  %369 = add i32 %358, 3
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds [4 x i8], ptr %4, i64 %370
  %372 = load float, ptr %371, align 4, !tbaa !44
  %373 = add i32 %358, 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds [4 x i8], ptr %4, i64 %374
  %376 = load float, ptr %375, align 8, !tbaa !44
  %377 = sext i32 %359 to i64
  %378 = getelementptr inbounds [4 x i8], ptr %4, i64 %377
  %379 = load float, ptr %378, align 4, !tbaa !44
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %362, float noundef %364, float noundef %368, float noundef %372, float noundef %376, float noundef %379) #16
  %380 = add i32 %358, 6
  %381 = add i32 %358, 11
  %382 = icmp slt i32 %381, %66
  br i1 %382, label %357, label %1033, !llvm.loop !118

383:                                              ; preds = %77
  %384 = icmp slt i32 %66, 8
  br i1 %384, label %1050, label %385

385:                                              ; preds = %383
  %386 = add nsw i32 %66, -2
  br label %387

387:                                              ; preds = %385, %387
  %388 = phi i32 [ %410, %387 ], [ 0, %385 ]
  %389 = add i32 %388, 5
  %390 = sext i32 %388 to i64
  %391 = getelementptr inbounds [4 x i8], ptr %4, i64 %390
  %392 = load float, ptr %391, align 8, !tbaa !44
  %393 = getelementptr i8, ptr %391, i64 4
  %394 = load float, ptr %393, align 4, !tbaa !44
  %395 = add i32 %388, 2
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds [4 x i8], ptr %4, i64 %396
  %398 = load float, ptr %397, align 8, !tbaa !44
  %399 = add i32 %388, 3
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds [4 x i8], ptr %4, i64 %400
  %402 = load float, ptr %401, align 4, !tbaa !44
  %403 = add i32 %388, 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds [4 x i8], ptr %4, i64 %404
  %406 = load float, ptr %405, align 8, !tbaa !44
  %407 = sext i32 %389 to i64
  %408 = getelementptr inbounds [4 x i8], ptr %4, i64 %407
  %409 = load float, ptr %408, align 4, !tbaa !44
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %392, float noundef %394, float noundef %398, float noundef %402, float noundef %406, float noundef %409) #16
  %410 = add i32 %388, 6
  %411 = add i32 %388, 11
  %412 = icmp slt i32 %411, %386
  br i1 %412, label %387, label %413, !llvm.loop !119

413:                                              ; preds = %387
  %414 = or disjoint i32 %410, 1
  %415 = icmp slt i32 %414, %66
  br i1 %415, label %416, label %1050

416:                                              ; preds = %413
  %417 = sext i32 %410 to i64
  %418 = getelementptr inbounds [4 x i8], ptr %4, i64 %417
  %419 = load <2 x float>, ptr %418, align 4, !tbaa !44
  %420 = load <2 x float>, ptr %44, align 8, !tbaa !44
  %421 = fadd <2 x float> %419, %420
  store <2 x float> %421, ptr %44, align 8, !tbaa !44
  %422 = fptosi <2 x float> %421 to <2 x i32>
  %423 = load i32, ptr %2, align 8, !tbaa !108
  %424 = icmp eq i32 %423, 0
  br i1 %424, label %457, label %425

425:                                              ; preds = %416
  %426 = load i32, ptr %45, align 4, !tbaa !110
  %427 = extractelement <2 x i32> %422, i64 0
  %428 = icmp slt i32 %426, %427
  br i1 %428, label %432, label %429

429:                                              ; preds = %425
  %430 = load i32, ptr %46, align 4, !tbaa !111
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %432, label %433

432:                                              ; preds = %429, %425
  store i32 %427, ptr %45, align 4, !tbaa !110
  br label %433

433:                                              ; preds = %432, %429
  %434 = load i32, ptr %47, align 4, !tbaa !112
  %435 = extractelement <2 x i32> %422, i64 1
  %436 = icmp slt i32 %434, %435
  br i1 %436, label %440, label %437

437:                                              ; preds = %433
  %438 = load i32, ptr %46, align 4, !tbaa !111
  %439 = icmp eq i32 %438, 0
  br i1 %439, label %440, label %441

440:                                              ; preds = %437, %433
  store i32 %435, ptr %47, align 4, !tbaa !112
  br label %441

441:                                              ; preds = %440, %437
  %442 = load i32, ptr %48, align 8, !tbaa !113
  %443 = icmp sgt i32 %442, %427
  br i1 %443, label %447, label %444

444:                                              ; preds = %441
  %445 = load i32, ptr %46, align 4, !tbaa !111
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %447, label %448

447:                                              ; preds = %444, %441
  store i32 %427, ptr %48, align 8, !tbaa !113
  br label %448

448:                                              ; preds = %447, %444
  %449 = load i32, ptr %49, align 8, !tbaa !114
  %450 = icmp sgt i32 %449, %435
  br i1 %450, label %454, label %451

451:                                              ; preds = %448
  %452 = load i32, ptr %46, align 4, !tbaa !111
  %453 = icmp eq i32 %452, 0
  br i1 %453, label %454, label %455

454:                                              ; preds = %451, %448
  store i32 %435, ptr %49, align 8, !tbaa !114
  br label %455

455:                                              ; preds = %454, %451
  store i32 1, ptr %46, align 4, !tbaa !111
  %456 = load i32, ptr %50, align 8, !tbaa !117
  br label %465

457:                                              ; preds = %416
  %458 = load ptr, ptr %51, align 8, !tbaa !115
  %459 = load i32, ptr %50, align 8, !tbaa !117
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds [14 x i8], ptr %458, i64 %460
  %462 = getelementptr inbounds nuw i8, ptr %461, i64 12
  store i8 2, ptr %462, align 2, !tbaa !34
  %463 = trunc <2 x i32> %422 to <2 x i16>
  store <2 x i16> %463, ptr %461, align 2, !tbaa !43
  %464 = getelementptr inbounds nuw i8, ptr %461, i64 4
  store <4 x i16> zeroinitializer, ptr %464, align 2, !tbaa !43
  br label %465

465:                                              ; preds = %455, %457
  %466 = phi i32 [ %456, %455 ], [ %459, %457 ]
  %467 = add i32 %466, 1
  store i32 %467, ptr %50, align 8, !tbaa !117
  br label %1033

468:                                              ; preds = %77
  %469 = icmp slt i32 %66, 8
  br i1 %469, label %1050, label %470

470:                                              ; preds = %468
  %471 = add nsw i32 %66, -6
  %472 = load i32, ptr %2, align 8, !tbaa !108
  %473 = icmp eq i32 %472, 0
  %474 = load <2 x float>, ptr %44, align 8, !tbaa !44
  %475 = load i32, ptr %50, align 8
  %476 = zext nneg i32 %471 to i64
  br label %477

477:                                              ; preds = %470, %523
  %478 = phi i64 [ 0, %470 ], [ %525, %523 ]
  %479 = phi i32 [ %475, %470 ], [ %524, %523 ]
  %480 = phi <2 x float> [ %474, %470 ], [ %483, %523 ]
  %481 = getelementptr [4 x i8], ptr %4, i64 %478
  %482 = load <2 x float>, ptr %481, align 8, !tbaa !44
  %483 = fadd <2 x float> %482, %480
  %484 = fptosi <2 x float> %483 to <2 x i32>
  br i1 %473, label %516, label %485

485:                                              ; preds = %477
  %486 = load i32, ptr %45, align 4, !tbaa !110
  %487 = extractelement <2 x i32> %484, i64 0
  %488 = icmp slt i32 %486, %487
  br i1 %488, label %492, label %489

489:                                              ; preds = %485
  %490 = load i32, ptr %46, align 4, !tbaa !111
  %491 = icmp eq i32 %490, 0
  br i1 %491, label %492, label %493

492:                                              ; preds = %489, %485
  store i32 %487, ptr %45, align 4, !tbaa !110
  br label %493

493:                                              ; preds = %492, %489
  %494 = load i32, ptr %47, align 4, !tbaa !112
  %495 = extractelement <2 x i32> %484, i64 1
  %496 = icmp slt i32 %494, %495
  br i1 %496, label %500, label %497

497:                                              ; preds = %493
  %498 = load i32, ptr %46, align 4, !tbaa !111
  %499 = icmp eq i32 %498, 0
  br i1 %499, label %500, label %501

500:                                              ; preds = %497, %493
  store i32 %495, ptr %47, align 4, !tbaa !112
  br label %501

501:                                              ; preds = %500, %497
  %502 = load i32, ptr %48, align 8, !tbaa !113
  %503 = icmp sgt i32 %502, %487
  br i1 %503, label %507, label %504

504:                                              ; preds = %501
  %505 = load i32, ptr %46, align 4, !tbaa !111
  %506 = icmp eq i32 %505, 0
  br i1 %506, label %507, label %508

507:                                              ; preds = %504, %501
  store i32 %487, ptr %48, align 8, !tbaa !113
  br label %508

508:                                              ; preds = %507, %504
  %509 = load i32, ptr %49, align 8, !tbaa !114
  %510 = icmp sgt i32 %509, %495
  br i1 %510, label %514, label %511

511:                                              ; preds = %508
  %512 = load i32, ptr %46, align 4, !tbaa !111
  %513 = icmp eq i32 %512, 0
  br i1 %513, label %514, label %515

514:                                              ; preds = %511, %508
  store i32 %495, ptr %49, align 8, !tbaa !114
  br label %515

515:                                              ; preds = %514, %511
  store i32 1, ptr %46, align 4, !tbaa !111
  br label %523

516:                                              ; preds = %477
  %517 = load ptr, ptr %51, align 8, !tbaa !115
  %518 = sext i32 %479 to i64
  %519 = getelementptr inbounds [14 x i8], ptr %517, i64 %518
  %520 = getelementptr inbounds nuw i8, ptr %519, i64 12
  store i8 2, ptr %520, align 2, !tbaa !34
  %521 = trunc <2 x i32> %484 to <2 x i16>
  store <2 x i16> %521, ptr %519, align 2, !tbaa !43
  %522 = getelementptr inbounds nuw i8, ptr %519, i64 4
  store <4 x i16> zeroinitializer, ptr %522, align 2, !tbaa !43
  br label %523

523:                                              ; preds = %515, %516
  %524 = add i32 %479, 1
  %525 = add nuw nsw i64 %478, 2
  %526 = or disjoint i64 %525, 1
  %527 = icmp samesign ult i64 %526, %476
  br i1 %527, label %477, label %528, !llvm.loop !120

528:                                              ; preds = %523
  store <2 x float> %483, ptr %44, align 8, !tbaa !44
  store i32 %524, ptr %50, align 8, !tbaa !117
  %529 = trunc nuw nsw i64 %525 to i32
  %530 = add i32 %529, 5
  %531 = icmp slt i32 %530, %66
  br i1 %531, label %532, label %1050

532:                                              ; preds = %528
  %533 = and i32 %66, 2147483646
  %534 = add nsw i32 %533, -8
  %535 = zext i32 %534 to i64
  %536 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %525
  %537 = load float, ptr %536, align 4, !tbaa !44
  %538 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %535
  %539 = getelementptr inbounds nuw i8, ptr %538, i64 12
  %540 = load float, ptr %539, align 4, !tbaa !44
  %541 = shl i64 %478, 32
  %542 = add i64 %541, 17179869184
  %543 = ashr exact i64 %542, 30
  %544 = getelementptr inbounds i8, ptr %4, i64 %543
  %545 = load float, ptr %544, align 8, !tbaa !44
  %546 = shl i64 %478, 32
  %547 = add i64 %546, 21474836480
  %548 = ashr exact i64 %547, 30
  %549 = getelementptr inbounds i8, ptr %4, i64 %548
  %550 = load float, ptr %549, align 4, !tbaa !44
  %551 = shl i64 %478, 32
  %552 = add i64 %551, 25769803776
  %553 = ashr exact i64 %552, 30
  %554 = getelementptr inbounds i8, ptr %4, i64 %553
  %555 = load float, ptr %554, align 8, !tbaa !44
  %556 = sext i32 %530 to i64
  %557 = getelementptr inbounds [4 x i8], ptr %4, i64 %556
  %558 = load float, ptr %557, align 4, !tbaa !44
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %537, float noundef %540, float noundef %545, float noundef %550, float noundef %555, float noundef %558) #16
  br label %1033

559:                                              ; preds = %77, %77
  %560 = icmp slt i32 %66, 4
  br i1 %560, label %1050, label %561

561:                                              ; preds = %559
  %562 = and i32 %66, 1
  %563 = add nuw nsw i32 %562, 3
  %564 = icmp samesign ult i32 %563, %66
  br i1 %564, label %565, label %1033

565:                                              ; preds = %561
  %566 = trunc i32 %66 to i1
  %567 = load float, ptr %4, align 16
  %568 = select i1 %566, float %567, float 0.000000e+00
  %569 = icmp eq i8 %78, 27
  %570 = zext nneg i32 %562 to i64
  %571 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %570
  %572 = load float, ptr %571, align 4, !tbaa !44
  %573 = zext nneg i32 %562 to i64
  %574 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %573
  %575 = getelementptr inbounds nuw i8, ptr %574, i64 4
  %576 = load float, ptr %575, align 4, !tbaa !44
  %577 = zext nneg i32 %562 to i64
  %578 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %577
  %579 = getelementptr inbounds nuw i8, ptr %578, i64 8
  %580 = load float, ptr %579, align 4, !tbaa !44
  %581 = zext nneg i32 %563 to i64
  %582 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %581
  %583 = load float, ptr %582, align 4, !tbaa !44
  br i1 %569, label %585, label %584

584:                                              ; preds = %565
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %568, float noundef %572, float noundef %576, float noundef %580, float noundef 0.000000e+00, float noundef %583) #16
  br label %586

585:                                              ; preds = %565
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %572, float noundef %568, float noundef %576, float noundef %580, float noundef %583, float noundef 0.000000e+00) #16
  br label %586

586:                                              ; preds = %585, %584
  %587 = add nuw nsw i32 %562, 7
  %588 = icmp samesign ult i32 %587, %66
  br i1 %588, label %589, label %1033

589:                                              ; preds = %586
  %590 = or disjoint i32 %562, 4
  br label %591

591:                                              ; preds = %589, %610
  %592 = phi i32 [ %587, %589 ], [ %612, %610 ]
  %593 = phi i32 [ %590, %589 ], [ %611, %610 ]
  %594 = sext i32 %593 to i64
  %595 = getelementptr inbounds [4 x i8], ptr %4, i64 %594
  %596 = load float, ptr %595, align 4, !tbaa !44
  %597 = add i32 %593, 1
  %598 = sext i32 %597 to i64
  %599 = getelementptr inbounds [4 x i8], ptr %4, i64 %598
  %600 = load float, ptr %599, align 4, !tbaa !44
  %601 = add i32 %593, 2
  %602 = sext i32 %601 to i64
  %603 = getelementptr inbounds [4 x i8], ptr %4, i64 %602
  %604 = load float, ptr %603, align 4, !tbaa !44
  %605 = sext i32 %592 to i64
  %606 = getelementptr inbounds [4 x i8], ptr %4, i64 %605
  %607 = load float, ptr %606, align 4, !tbaa !44
  br i1 %569, label %608, label %609

608:                                              ; preds = %591
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %596, float noundef 0.000000e+00, float noundef %600, float noundef %604, float noundef %607, float noundef 0.000000e+00) #16
  br label %610

609:                                              ; preds = %591
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef 0.000000e+00, float noundef %596, float noundef %600, float noundef %604, float noundef 0.000000e+00, float noundef %607) #16
  br label %610

610:                                              ; preds = %609, %608
  %611 = add i32 %593, 4
  %612 = add i32 %593, 7
  %613 = icmp slt i32 %612, %66
  br i1 %613, label %591, label %1033, !llvm.loop !121

614:                                              ; preds = %77
  %615 = icmp eq i32 %67, 0
  br i1 %615, label %616, label %773

616:                                              ; preds = %614
  %617 = load i32, ptr %36, align 4, !tbaa !123
  %618 = icmp eq i32 %617, 0
  br i1 %618, label %773, label %619

619:                                              ; preds = %616
  %620 = load ptr, ptr %37, align 8, !tbaa !8
  %621 = tail call i32 @llvm.smin.i32(i32 %617, i32 0)
  %622 = icmp sgt i32 %617, 0
  br i1 %622, label %623, label %631

623:                                              ; preds = %619
  %624 = zext nneg i32 %621 to i64
  %625 = getelementptr inbounds nuw i8, ptr %620, i64 %624
  %626 = icmp uge ptr %625, %58
  %627 = icmp ult ptr %625, %57
  %628 = select i1 %626, i1 %627, i1 false
  br i1 %628, label %629, label %631

629:                                              ; preds = %623
  %630 = load i8, ptr %625, align 1, !tbaa !11
  switch i8 %630, label %761 [
    i8 0, label %631
    i8 3, label %647
  ]

631:                                              ; preds = %629, %623, %619
  %632 = phi i32 [ 1, %629 ], [ %621, %619 ], [ 1, %623 ]
  %633 = add i32 %632, %1
  %634 = icmp slt i32 %633, 0
  %635 = tail call i32 @llvm.smin.i32(i32 %633, i32 %617)
  %636 = select i1 %634, i32 %617, i32 %635
  %637 = icmp slt i32 %636, %617
  br i1 %637, label %638, label %761

638:                                              ; preds = %631
  %639 = sext i32 %636 to i64
  %640 = getelementptr inbounds i8, ptr %620, i64 %639
  %641 = icmp uge ptr %640, %58
  %642 = icmp ult ptr %640, %57
  %643 = select i1 %641, i1 %642, i1 false
  br i1 %643, label %644, label %761

644:                                              ; preds = %638
  %645 = load i8, ptr %640, align 1, !tbaa !11
  %646 = zext i8 %645 to i32
  br label %761

647:                                              ; preds = %629
  %648 = icmp eq i32 %617, 1
  br i1 %648, label %658, label %649

649:                                              ; preds = %647
  %650 = getelementptr inbounds nuw i8, ptr %620, i64 1
  %651 = icmp uge ptr %650, %58
  %652 = icmp ult ptr %650, %57
  %653 = select i1 %651, i1 %652, i1 false
  br i1 %653, label %654, label %658

654:                                              ; preds = %649
  %655 = load i8, ptr %650, align 1, !tbaa !11
  %656 = zext i8 %655 to i32
  %657 = shl nuw nsw i32 %656, 8
  br label %658

658:                                              ; preds = %654, %649, %647
  %659 = phi i32 [ 2, %654 ], [ 2, %649 ], [ 1, %647 ]
  %660 = phi i32 [ %657, %654 ], [ 0, %649 ], [ 0, %647 ]
  %661 = icmp samesign ult i32 %659, %617
  br i1 %661, label %662, label %673

662:                                              ; preds = %658
  %663 = add nuw nsw i32 %659, 1
  %664 = zext nneg i32 %659 to i64
  %665 = getelementptr inbounds nuw i8, ptr %620, i64 %664
  %666 = icmp uge ptr %665, %58
  %667 = icmp ult ptr %665, %57
  %668 = select i1 %666, i1 %667, i1 false
  br i1 %668, label %669, label %673

669:                                              ; preds = %662
  %670 = load i8, ptr %665, align 1, !tbaa !11
  %671 = zext i8 %670 to i32
  %672 = or disjoint i32 %660, %671
  br label %673

673:                                              ; preds = %669, %662, %658
  %674 = phi i32 [ %663, %669 ], [ %663, %662 ], [ %659, %658 ]
  %675 = phi i32 [ %672, %669 ], [ %660, %662 ], [ %660, %658 ]
  %676 = icmp samesign ult i32 %674, %617
  br i1 %676, label %677, label %688

677:                                              ; preds = %673
  %678 = add nuw nsw i32 %674, 1
  %679 = zext nneg i32 %674 to i64
  %680 = getelementptr inbounds nuw i8, ptr %620, i64 %679
  %681 = icmp uge ptr %680, %58
  %682 = icmp ult ptr %680, %57
  %683 = select i1 %681, i1 %682, i1 false
  br i1 %683, label %684, label %688

684:                                              ; preds = %677
  %685 = load i8, ptr %680, align 1, !tbaa !11
  %686 = zext i8 %685 to i32
  %687 = shl nuw nsw i32 %686, 8
  br label %688

688:                                              ; preds = %684, %677, %673
  %689 = phi i32 [ %678, %684 ], [ %678, %677 ], [ %674, %673 ]
  %690 = phi i32 [ %687, %684 ], [ 0, %677 ], [ 0, %673 ]
  %691 = icmp samesign ult i32 %689, %617
  br i1 %691, label %692, label %703

692:                                              ; preds = %688
  %693 = add nuw nsw i32 %689, 1
  %694 = zext nneg i32 %689 to i64
  %695 = getelementptr inbounds nuw i8, ptr %620, i64 %694
  %696 = icmp uge ptr %695, %58
  %697 = icmp ult ptr %695, %57
  %698 = select i1 %696, i1 %697, i1 false
  br i1 %698, label %699, label %703

699:                                              ; preds = %692
  %700 = load i8, ptr %695, align 1, !tbaa !11
  %701 = zext i8 %700 to i32
  %702 = or disjoint i32 %690, %701
  br label %703

703:                                              ; preds = %699, %692, %688
  %704 = phi i32 [ %693, %699 ], [ %693, %692 ], [ %689, %688 ]
  %705 = phi i32 [ %702, %699 ], [ %690, %692 ], [ %690, %688 ]
  %706 = icmp eq i32 %675, 0
  br i1 %706, label %761, label %710

707:                                              ; preds = %755
  %708 = add nuw nsw i32 %712, 1
  %709 = icmp eq i32 %708, %675
  br i1 %709, label %761, label %710, !llvm.loop !124

710:                                              ; preds = %703, %707
  %711 = phi i32 [ %757, %707 ], [ %705, %703 ]
  %712 = phi i32 [ %708, %707 ], [ 0, %703 ]
  %713 = phi i32 [ %756, %707 ], [ %704, %703 ]
  %714 = icmp slt i32 %713, %617
  br i1 %714, label %715, label %725

715:                                              ; preds = %710
  %716 = add nsw i32 %713, 1
  %717 = sext i32 %713 to i64
  %718 = getelementptr inbounds i8, ptr %620, i64 %717
  %719 = icmp uge ptr %718, %58
  %720 = icmp ult ptr %718, %57
  %721 = select i1 %719, i1 %720, i1 false
  br i1 %721, label %722, label %725

722:                                              ; preds = %715
  %723 = load i8, ptr %718, align 1, !tbaa !11
  %724 = zext i8 %723 to i32
  br label %725

725:                                              ; preds = %722, %715, %710
  %726 = phi i32 [ %716, %722 ], [ %716, %715 ], [ %713, %710 ]
  %727 = phi i32 [ %724, %722 ], [ 0, %715 ], [ 0, %710 ]
  %728 = icmp slt i32 %726, %617
  br i1 %728, label %729, label %740

729:                                              ; preds = %725
  %730 = add nsw i32 %726, 1
  %731 = sext i32 %726 to i64
  %732 = getelementptr inbounds i8, ptr %620, i64 %731
  %733 = icmp uge ptr %732, %58
  %734 = icmp ult ptr %732, %57
  %735 = select i1 %733, i1 %734, i1 false
  br i1 %735, label %736, label %740

736:                                              ; preds = %729
  %737 = load i8, ptr %732, align 1, !tbaa !11
  %738 = zext i8 %737 to i32
  %739 = shl nuw nsw i32 %738, 8
  br label %740

740:                                              ; preds = %736, %729, %725
  %741 = phi i32 [ %730, %736 ], [ %730, %729 ], [ %726, %725 ]
  %742 = phi i32 [ %739, %736 ], [ 0, %729 ], [ 0, %725 ]
  %743 = icmp slt i32 %741, %617
  br i1 %743, label %744, label %755

744:                                              ; preds = %740
  %745 = add nsw i32 %741, 1
  %746 = sext i32 %741 to i64
  %747 = getelementptr inbounds i8, ptr %620, i64 %746
  %748 = icmp uge ptr %747, %58
  %749 = icmp ult ptr %747, %57
  %750 = select i1 %748, i1 %749, i1 false
  br i1 %750, label %751, label %755

751:                                              ; preds = %744
  %752 = load i8, ptr %747, align 1, !tbaa !11
  %753 = zext i8 %752 to i32
  %754 = or disjoint i32 %742, %753
  br label %755

755:                                              ; preds = %751, %744, %740
  %756 = phi i32 [ %745, %751 ], [ %745, %744 ], [ %741, %740 ]
  %757 = phi i32 [ %754, %751 ], [ %742, %744 ], [ %742, %740 ]
  %758 = icmp sge i32 %1, %711
  %759 = icmp slt i32 %1, %757
  %760 = select i1 %758, i1 %759, i1 false
  br i1 %760, label %761, label %707

761:                                              ; preds = %707, %755, %629, %631, %638, %644, %703
  %762 = phi i32 [ %646, %644 ], [ 0, %638 ], [ -1, %629 ], [ 0, %631 ], [ -1, %703 ], [ -1, %707 ], [ %727, %755 ]
  %763 = load ptr, ptr %39, align 8
  %764 = load i64, ptr %40, align 8
  %765 = tail call fastcc { ptr, i64 } @stbtt__cff_index_get(ptr %763, i64 %764, i32 noundef %762) #16
  %766 = extractvalue { ptr, i64 } %765, 0
  %767 = extractvalue { ptr, i64 } %765, 1
  %768 = load ptr, ptr %38, align 8
  %769 = load i64, ptr %41, align 8
  %770 = tail call fastcc { ptr, i64 } @stbtt__get_subrs(ptr %768, i64 %769, ptr %766, i64 %767) #16
  %771 = extractvalue { ptr, i64 } %770, 0
  %772 = extractvalue { ptr, i64 } %770, 1
  br label %773

773:                                              ; preds = %616, %761, %614, %77
  %774 = phi ptr [ %69, %614 ], [ %69, %77 ], [ %771, %761 ], [ %69, %616 ]
  %775 = phi i64 [ %68, %614 ], [ %68, %77 ], [ %772, %761 ], [ %68, %616 ]
  %776 = phi i32 [ 1, %614 ], [ %67, %77 ], [ 1, %761 ], [ 1, %616 ]
  %777 = icmp slt i32 %66, 1
  br i1 %777, label %1050, label %778

778:                                              ; preds = %773
  %779 = add nsw i32 %66, -1
  %780 = zext nneg i32 %779 to i64
  %781 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %780
  %782 = load float, ptr %781, align 4, !tbaa !44
  %783 = fptosi float %782 to i32
  %784 = icmp sgt i32 %65, 9
  br i1 %784, label %1050, label %785

785:                                              ; preds = %778
  %786 = add nsw i32 %65, 1
  %787 = sext i32 %65 to i64
  %788 = getelementptr inbounds [16 x i8], ptr %5, i64 %787
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %788, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !24
  %789 = icmp eq i8 %78, 10
  br i1 %789, label %793, label %790

790:                                              ; preds = %785
  %791 = load ptr, ptr %42, align 8, !tbaa !8
  %792 = load i64, ptr %43, align 8
  br label %793

793:                                              ; preds = %785, %790
  %794 = phi i64 [ %792, %790 ], [ %775, %785 ]
  %795 = phi ptr [ %791, %790 ], [ %774, %785 ]
  %796 = lshr i64 %794, 32
  %797 = trunc nuw i64 %796 to i32
  %798 = tail call i32 @llvm.smin.i32(i32 %797, i32 0)
  %799 = load ptr, ptr @stbtt__lo, align 8
  %800 = load ptr, ptr @stbtt__hi, align 8
  %801 = icmp sgt i32 %797, 0
  br i1 %801, label %802, label %812

802:                                              ; preds = %793
  %803 = zext nneg i32 %798 to i64
  %804 = getelementptr inbounds nuw i8, ptr %795, i64 %803
  %805 = icmp uge ptr %804, %799
  %806 = icmp ult ptr %804, %800
  %807 = select i1 %805, i1 %806, i1 false
  br i1 %807, label %808, label %812

808:                                              ; preds = %802
  %809 = load i8, ptr %804, align 1, !tbaa !11
  %810 = zext i8 %809 to i32
  %811 = shl nuw nsw i32 %810, 8
  br label %812

812:                                              ; preds = %808, %802, %793
  %813 = phi i32 [ 1, %808 ], [ 1, %802 ], [ %798, %793 ]
  %814 = phi i32 [ %811, %808 ], [ 0, %802 ], [ 0, %793 ]
  %815 = icmp slt i32 %813, %797
  br i1 %815, label %816, label %827

816:                                              ; preds = %812
  %817 = add nsw i32 %813, 1
  %818 = sext i32 %813 to i64
  %819 = getelementptr inbounds i8, ptr %795, i64 %818
  %820 = icmp uge ptr %819, %799
  %821 = icmp ult ptr %819, %800
  %822 = select i1 %820, i1 %821, i1 false
  br i1 %822, label %823, label %827

823:                                              ; preds = %816
  %824 = load i8, ptr %819, align 1, !tbaa !11
  %825 = zext i8 %824 to i32
  %826 = or disjoint i32 %814, %825
  br label %827

827:                                              ; preds = %823, %816, %812
  %828 = phi i32 [ %817, %823 ], [ %817, %816 ], [ %813, %812 ]
  %829 = phi i32 [ %826, %823 ], [ %814, %816 ], [ %814, %812 ]
  %830 = icmp samesign ugt i32 %829, 33899
  %831 = icmp samesign ugt i32 %829, 1239
  %832 = select i1 %831, i32 1131, i32 107
  %833 = select i1 %830, i32 32768, i32 %832
  %834 = add i32 %833, %783
  %835 = icmp sgt i32 %834, -1
  %836 = icmp slt i32 %834, %829
  %837 = and i1 %835, %836
  br i1 %837, label %838, label %843

838:                                              ; preds = %827
  %839 = and i64 %794, -4294967296
  %840 = zext i32 %828 to i64
  %841 = or disjoint i64 %839, %840
  %842 = tail call fastcc { ptr, i64 } @stbtt__cff_index_get(ptr readonly %795, i64 %841, i32 noundef %834) #16
  br label %843

843:                                              ; preds = %827, %838
  %844 = phi { ptr, i64 } [ %842, %838 ], [ zeroinitializer, %827 ]
  %845 = extractvalue { ptr, i64 } %844, 0
  %846 = extractvalue { ptr, i64 } %844, 1
  store ptr %845, ptr %6, align 8, !tbaa !8
  store i64 %846, ptr %18, align 8
  %847 = icmp ult i64 %846, 4294967296
  br i1 %847, label %1050, label %848

848:                                              ; preds = %843
  store i32 0, ptr %18, align 8, !tbaa !25
  br label %1033

849:                                              ; preds = %77
  %850 = icmp slt i32 %65, 1
  br i1 %850, label %1050, label %851

851:                                              ; preds = %849
  %852 = add nsw i32 %65, -1
  %853 = zext nneg i32 %852 to i64
  %854 = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %853
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 16 dereferenceable(16) %854, i64 16, i1 false), !tbaa.struct !24
  br label %1033

855:                                              ; preds = %77
  tail call fastcc void @stbtt__csctx_close_shape(ptr noundef %2) #16
  br label %1050

856:                                              ; preds = %77
  %857 = icmp slt i32 %71, %61
  br i1 %857, label %858, label %1050

858:                                              ; preds = %856
  %859 = add nsw i32 %62, 2
  store i32 %859, ptr %18, align 8, !tbaa !25
  %860 = sext i32 %71 to i64
  %861 = getelementptr inbounds i8, ptr %70, i64 %860
  %862 = icmp uge ptr %861, %58
  %863 = icmp ult ptr %861, %57
  %864 = select i1 %862, i1 %863, i1 false
  br i1 %864, label %865, label %1050

865:                                              ; preds = %858
  %866 = load i8, ptr %861, align 1, !tbaa !11
  switch i8 %866, label %1050 [
    i8 34, label %867
    i8 35, label %878
    i8 36, label %893
    i8 37, label %908
  ]

867:                                              ; preds = %865
  %868 = icmp slt i32 %66, 7
  br i1 %868, label %1050, label %869

869:                                              ; preds = %867
  %870 = load float, ptr %4, align 16, !tbaa !44
  %871 = load float, ptr %25, align 4, !tbaa !44
  %872 = load float, ptr %26, align 8, !tbaa !44
  %873 = load float, ptr %27, align 4, !tbaa !44
  %874 = load float, ptr %28, align 16, !tbaa !44
  %875 = load float, ptr %29, align 4, !tbaa !44
  %876 = load float, ptr %30, align 8, !tbaa !44
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %870, float noundef 0.000000e+00, float noundef %871, float noundef %872, float noundef %873, float noundef 0.000000e+00) #16
  %877 = fneg float %872
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %874, float noundef 0.000000e+00, float noundef %875, float noundef %877, float noundef %876, float noundef 0.000000e+00) #16
  br label %1033

878:                                              ; preds = %865
  %879 = icmp slt i32 %66, 13
  br i1 %879, label %1050, label %880

880:                                              ; preds = %878
  %881 = load float, ptr %4, align 16, !tbaa !44
  %882 = load float, ptr %25, align 4, !tbaa !44
  %883 = load float, ptr %26, align 8, !tbaa !44
  %884 = load float, ptr %27, align 4, !tbaa !44
  %885 = load float, ptr %28, align 16, !tbaa !44
  %886 = load float, ptr %29, align 4, !tbaa !44
  %887 = load float, ptr %30, align 8, !tbaa !44
  %888 = load float, ptr %31, align 4, !tbaa !44
  %889 = load float, ptr %32, align 16, !tbaa !44
  %890 = load float, ptr %33, align 4, !tbaa !44
  %891 = load float, ptr %34, align 8, !tbaa !44
  %892 = load float, ptr %35, align 4, !tbaa !44
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %881, float noundef %882, float noundef %883, float noundef %884, float noundef %885, float noundef %886) #16
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %887, float noundef %888, float noundef %889, float noundef %890, float noundef %891, float noundef %892) #16
  br label %1033

893:                                              ; preds = %865
  %894 = icmp slt i32 %66, 9
  br i1 %894, label %1050, label %895

895:                                              ; preds = %893
  %896 = load float, ptr %4, align 16, !tbaa !44
  %897 = load float, ptr %25, align 4, !tbaa !44
  %898 = load float, ptr %26, align 8, !tbaa !44
  %899 = load float, ptr %27, align 4, !tbaa !44
  %900 = load float, ptr %28, align 16, !tbaa !44
  %901 = load float, ptr %29, align 4, !tbaa !44
  %902 = load float, ptr %30, align 8, !tbaa !44
  %903 = load float, ptr %31, align 4, !tbaa !44
  %904 = load float, ptr %32, align 16, !tbaa !44
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %896, float noundef %897, float noundef %898, float noundef %899, float noundef %900, float noundef 0.000000e+00) #16
  %905 = fadd float %897, %899
  %906 = fadd float %905, %903
  %907 = fneg float %906
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %901, float noundef 0.000000e+00, float noundef %902, float noundef %903, float noundef %904, float noundef %907) #16
  br label %1033

908:                                              ; preds = %865
  %909 = icmp slt i32 %66, 11
  br i1 %909, label %1050, label %910

910:                                              ; preds = %908
  %911 = load float, ptr %4, align 16, !tbaa !44
  %912 = load float, ptr %25, align 4, !tbaa !44
  %913 = load float, ptr %26, align 8, !tbaa !44
  %914 = load float, ptr %27, align 4, !tbaa !44
  %915 = load float, ptr %28, align 16, !tbaa !44
  %916 = load float, ptr %29, align 4, !tbaa !44
  %917 = load float, ptr %30, align 8, !tbaa !44
  %918 = load float, ptr %31, align 4, !tbaa !44
  %919 = load float, ptr %32, align 16, !tbaa !44
  %920 = load float, ptr %33, align 4, !tbaa !44
  %921 = load float, ptr %34, align 8, !tbaa !44
  %922 = fadd float %911, %913
  %923 = fadd float %922, %915
  %924 = fadd float %923, %917
  %925 = fadd float %924, %919
  %926 = fadd float %912, %914
  %927 = fadd float %926, %916
  %928 = fadd float %927, %918
  %929 = fadd float %928, %920
  %930 = fpext float %925 to double
  %931 = fcmp olt float %925, 0.000000e+00
  %932 = fneg double %930
  %933 = select i1 %931, double %932, double %930
  %934 = fpext float %929 to double
  %935 = fcmp olt float %929, 0.000000e+00
  %936 = fneg double %934
  %937 = select i1 %935, double %936, double %934
  %938 = fcmp ogt double %933, %937
  %939 = fneg float %929
  %940 = fneg float %925
  %941 = select i1 %938, float %921, float %940
  %942 = select i1 %938, float %939, float %921
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %911, float noundef %912, float noundef %913, float noundef %914, float noundef %915, float noundef %916) #16
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %917, float noundef %918, float noundef %919, float noundef %920, float noundef %941, float noundef %942) #16
  br label %1033

943:                                              ; preds = %77
  %944 = icmp ne i8 %78, 28
  %945 = icmp ult i8 %78, 32
  %946 = and i1 %945, %944
  br i1 %946, label %1050, label %947

947:                                              ; preds = %943
  %948 = icmp eq i8 %78, -1
  br i1 %948, label %949, label %1014

949:                                              ; preds = %947
  %950 = icmp slt i32 %71, %61
  br i1 %950, label %951, label %962

951:                                              ; preds = %949
  %952 = add nsw i32 %62, 2
  %953 = sext i32 %71 to i64
  %954 = getelementptr inbounds i8, ptr %70, i64 %953
  %955 = icmp uge ptr %954, %56
  %956 = icmp ult ptr %954, %55
  %957 = select i1 %955, i1 %956, i1 false
  br i1 %957, label %958, label %962

958:                                              ; preds = %951
  %959 = load i8, ptr %954, align 1, !tbaa !11
  %960 = zext i8 %959 to i32
  %961 = shl nuw nsw i32 %960, 8
  br label %962

962:                                              ; preds = %958, %951, %949
  %963 = phi i32 [ %71, %949 ], [ %952, %958 ], [ %952, %951 ]
  %964 = phi i32 [ 0, %949 ], [ %961, %958 ], [ 0, %951 ]
  %965 = icmp slt i32 %963, %61
  br i1 %965, label %966, label %977

966:                                              ; preds = %962
  %967 = add nsw i32 %963, 1
  %968 = sext i32 %963 to i64
  %969 = getelementptr inbounds i8, ptr %70, i64 %968
  %970 = icmp uge ptr %969, %56
  %971 = icmp ult ptr %969, %55
  %972 = select i1 %970, i1 %971, i1 false
  br i1 %972, label %973, label %977

973:                                              ; preds = %966
  %974 = load i8, ptr %969, align 1, !tbaa !11
  %975 = zext i8 %974 to i32
  %976 = or disjoint i32 %964, %975
  br label %977

977:                                              ; preds = %973, %966, %962
  %978 = phi i32 [ %963, %962 ], [ %967, %973 ], [ %967, %966 ]
  %979 = phi i32 [ %964, %962 ], [ %976, %973 ], [ %964, %966 ]
  %980 = shl nuw nsw i32 %979, 8
  %981 = icmp slt i32 %978, %61
  br i1 %981, label %982, label %993

982:                                              ; preds = %977
  %983 = add nsw i32 %978, 1
  %984 = sext i32 %978 to i64
  %985 = getelementptr inbounds i8, ptr %70, i64 %984
  %986 = icmp uge ptr %985, %56
  %987 = icmp ult ptr %985, %55
  %988 = select i1 %986, i1 %987, i1 false
  br i1 %988, label %989, label %993

989:                                              ; preds = %982
  %990 = load i8, ptr %985, align 1, !tbaa !11
  %991 = zext i8 %990 to i32
  %992 = or disjoint i32 %980, %991
  br label %993

993:                                              ; preds = %989, %982, %977
  %994 = phi i32 [ %978, %977 ], [ %983, %989 ], [ %983, %982 ]
  %995 = phi i32 [ %980, %977 ], [ %992, %989 ], [ %980, %982 ]
  %996 = shl nuw i32 %995, 8
  %997 = icmp slt i32 %994, %61
  br i1 %997, label %998, label %1009

998:                                              ; preds = %993
  %999 = add nsw i32 %994, 1
  %1000 = sext i32 %994 to i64
  %1001 = getelementptr inbounds i8, ptr %70, i64 %1000
  %1002 = icmp uge ptr %1001, %56
  %1003 = icmp ult ptr %1001, %55
  %1004 = select i1 %1002, i1 %1003, i1 false
  br i1 %1004, label %1005, label %1009

1005:                                             ; preds = %998
  %1006 = load i8, ptr %1001, align 1, !tbaa !11
  %1007 = zext i8 %1006 to i32
  %1008 = or disjoint i32 %996, %1007
  br label %1009

1009:                                             ; preds = %1005, %998, %993
  %1010 = phi i32 [ %994, %993 ], [ %999, %1005 ], [ %999, %998 ]
  %1011 = phi i32 [ %996, %993 ], [ %1008, %1005 ], [ %996, %998 ]
  store i32 %1010, ptr %18, align 8
  %1012 = sitofp i32 %1011 to float
  %1013 = fmul nnan float %1012, f0x37800000
  br label %1021

1014:                                             ; preds = %947
  %1015 = icmp slt i32 %62, 0
  %1016 = tail call i32 @llvm.smin.i32(i32 %62, i32 %61)
  %1017 = select i1 %1015, i32 %61, i32 %1016
  store i32 %1017, ptr %18, align 8, !tbaa !25
  %1018 = call fastcc i32 @stbtt__cff_int(ptr noundef %6) #16
  %1019 = trunc i32 %1018 to i16
  %1020 = sitofp i16 %1019 to float
  br label %1021

1021:                                             ; preds = %1014, %1009
  %1022 = phi ptr [ %55, %1009 ], [ %57, %1014 ]
  %1023 = phi ptr [ %56, %1009 ], [ %58, %1014 ]
  %1024 = phi ptr [ %55, %1009 ], [ %59, %1014 ]
  %1025 = phi ptr [ %56, %1009 ], [ %60, %1014 ]
  %1026 = phi float [ %1013, %1009 ], [ %1020, %1014 ]
  %1027 = icmp sgt i32 %66, 47
  br i1 %1027, label %1050, label %1028

1028:                                             ; preds = %1021
  %1029 = add nsw i32 %66, 1
  %1030 = sext i32 %66 to i64
  %1031 = getelementptr inbounds [4 x i8], ptr %4, i64 %1030
  store float %1026, ptr %1031, align 4, !tbaa !44
  br label %1033

1032:                                             ; preds = %172
  store <2 x float> %132, ptr %44, align 8, !tbaa !44
  store i32 %173, ptr %50, align 8, !tbaa !117
  br label %1033

1033:                                             ; preds = %610, %357, %586, %561, %1032, %910, %895, %880, %869, %532, %465, %299, %327, %181, %238, %113, %106, %97, %92, %84, %1028, %851, %848
  %1034 = phi ptr [ %55, %851 ], [ %55, %1028 ], [ %800, %848 ], [ %55, %910 ], [ %55, %895 ], [ %55, %880 ], [ %55, %869 ], [ %55, %561 ], [ %55, %532 ], [ %55, %465 ], [ %55, %1032 ], [ %55, %299 ], [ %55, %327 ], [ %55, %181 ], [ %55, %238 ], [ %55, %84 ], [ %55, %113 ], [ %55, %106 ], [ %55, %97 ], [ %55, %92 ], [ %55, %586 ], [ %55, %357 ], [ %55, %610 ]
  %1035 = phi ptr [ %56, %851 ], [ %56, %1028 ], [ %799, %848 ], [ %56, %910 ], [ %56, %895 ], [ %56, %880 ], [ %56, %869 ], [ %56, %561 ], [ %56, %532 ], [ %56, %465 ], [ %56, %1032 ], [ %56, %299 ], [ %56, %327 ], [ %56, %181 ], [ %56, %238 ], [ %56, %84 ], [ %56, %113 ], [ %56, %106 ], [ %56, %97 ], [ %56, %92 ], [ %56, %586 ], [ %56, %357 ], [ %56, %610 ]
  %1036 = phi ptr [ %57, %851 ], [ %1022, %1028 ], [ %800, %848 ], [ %57, %910 ], [ %57, %895 ], [ %57, %880 ], [ %57, %869 ], [ %57, %561 ], [ %57, %532 ], [ %57, %465 ], [ %57, %1032 ], [ %57, %299 ], [ %57, %327 ], [ %57, %181 ], [ %57, %238 ], [ %57, %84 ], [ %57, %113 ], [ %57, %106 ], [ %57, %97 ], [ %57, %92 ], [ %57, %586 ], [ %57, %357 ], [ %57, %610 ]
  %1037 = phi ptr [ %58, %851 ], [ %1023, %1028 ], [ %799, %848 ], [ %58, %910 ], [ %58, %895 ], [ %58, %880 ], [ %58, %869 ], [ %58, %561 ], [ %58, %532 ], [ %58, %465 ], [ %58, %1032 ], [ %58, %299 ], [ %58, %327 ], [ %58, %181 ], [ %58, %238 ], [ %58, %84 ], [ %58, %113 ], [ %58, %106 ], [ %58, %97 ], [ %58, %92 ], [ %58, %586 ], [ %58, %357 ], [ %58, %610 ]
  %1038 = phi ptr [ %59, %851 ], [ %1024, %1028 ], [ %800, %848 ], [ %57, %910 ], [ %57, %895 ], [ %57, %880 ], [ %57, %869 ], [ %59, %561 ], [ %59, %532 ], [ %59, %465 ], [ %59, %1032 ], [ %59, %299 ], [ %59, %327 ], [ %59, %181 ], [ %59, %238 ], [ %59, %84 ], [ %59, %113 ], [ %59, %106 ], [ %59, %97 ], [ %59, %92 ], [ %59, %586 ], [ %59, %357 ], [ %59, %610 ]
  %1039 = phi ptr [ %60, %851 ], [ %1025, %1028 ], [ %799, %848 ], [ %58, %910 ], [ %58, %895 ], [ %58, %880 ], [ %58, %869 ], [ %60, %561 ], [ %60, %532 ], [ %60, %465 ], [ %60, %1032 ], [ %60, %299 ], [ %60, %327 ], [ %60, %181 ], [ %60, %238 ], [ %60, %84 ], [ %60, %113 ], [ %60, %106 ], [ %60, %97 ], [ %60, %92 ], [ %60, %586 ], [ %60, %357 ], [ %60, %610 ]
  %1040 = phi i32 [ %63, %851 ], [ %63, %1028 ], [ %63, %848 ], [ %63, %910 ], [ %63, %895 ], [ %63, %880 ], [ %63, %869 ], [ %63, %561 ], [ %63, %532 ], [ %63, %465 ], [ %63, %1032 ], [ %63, %299 ], [ %63, %327 ], [ %63, %181 ], [ %63, %238 ], [ 0, %84 ], [ 0, %113 ], [ 0, %106 ], [ 0, %97 ], [ %63, %92 ], [ %63, %586 ], [ %63, %357 ], [ %63, %610 ]
  %1041 = phi i32 [ %64, %851 ], [ %64, %1028 ], [ %64, %848 ], [ %64, %910 ], [ %64, %895 ], [ %64, %880 ], [ %64, %869 ], [ %64, %561 ], [ %64, %532 ], [ %64, %465 ], [ %64, %1032 ], [ %64, %299 ], [ %64, %327 ], [ %64, %181 ], [ %64, %238 ], [ %85, %84 ], [ %64, %113 ], [ %64, %106 ], [ %64, %97 ], [ %94, %92 ], [ %64, %586 ], [ %64, %357 ], [ %64, %610 ]
  %1042 = phi i32 [ %852, %851 ], [ %65, %1028 ], [ %786, %848 ], [ %65, %910 ], [ %65, %895 ], [ %65, %880 ], [ %65, %869 ], [ %65, %561 ], [ %65, %532 ], [ %65, %465 ], [ %65, %1032 ], [ %65, %299 ], [ %65, %327 ], [ %65, %181 ], [ %65, %238 ], [ %65, %84 ], [ %65, %113 ], [ %65, %106 ], [ %65, %97 ], [ %65, %92 ], [ %65, %586 ], [ %65, %357 ], [ %65, %610 ]
  %1043 = phi i32 [ %67, %851 ], [ %67, %1028 ], [ %776, %848 ], [ %67, %910 ], [ %67, %895 ], [ %67, %880 ], [ %67, %869 ], [ %67, %561 ], [ %67, %532 ], [ %67, %465 ], [ %67, %1032 ], [ %67, %299 ], [ %67, %327 ], [ %67, %181 ], [ %67, %238 ], [ %67, %84 ], [ %67, %113 ], [ %67, %106 ], [ %67, %97 ], [ %67, %92 ], [ %67, %586 ], [ %67, %357 ], [ %67, %610 ]
  %1044 = phi i64 [ %68, %851 ], [ %68, %1028 ], [ %775, %848 ], [ %68, %910 ], [ %68, %895 ], [ %68, %880 ], [ %68, %869 ], [ %68, %561 ], [ %68, %532 ], [ %68, %465 ], [ %68, %1032 ], [ %68, %299 ], [ %68, %327 ], [ %68, %181 ], [ %68, %238 ], [ %68, %84 ], [ %68, %113 ], [ %68, %106 ], [ %68, %97 ], [ %68, %92 ], [ %68, %586 ], [ %68, %357 ], [ %68, %610 ]
  %1045 = phi ptr [ %69, %851 ], [ %69, %1028 ], [ %774, %848 ], [ %69, %910 ], [ %69, %895 ], [ %69, %880 ], [ %69, %869 ], [ %69, %561 ], [ %69, %532 ], [ %69, %465 ], [ %69, %1032 ], [ %69, %299 ], [ %69, %327 ], [ %69, %181 ], [ %69, %238 ], [ %69, %84 ], [ %69, %113 ], [ %69, %106 ], [ %69, %97 ], [ %69, %92 ], [ %69, %586 ], [ %69, %357 ], [ %69, %610 ]
  %1046 = phi i32 [ %66, %851 ], [ %1029, %1028 ], [ %779, %848 ], [ 0, %910 ], [ 0, %895 ], [ 0, %880 ], [ 0, %869 ], [ 0, %561 ], [ 0, %532 ], [ 0, %465 ], [ 0, %1032 ], [ 0, %299 ], [ 0, %327 ], [ 0, %181 ], [ 0, %238 ], [ 0, %84 ], [ 0, %113 ], [ 0, %106 ], [ 0, %97 ], [ 0, %92 ], [ 0, %586 ], [ 0, %357 ], [ 0, %610 ]
  %1047 = load i32, ptr %18, align 8, !tbaa !25
  %1048 = load i32, ptr %19, align 4, !tbaa !26
  %1049 = icmp slt i32 %1047, %1048
  br i1 %1049, label %54, label %1050, !llvm.loop !125

1050:                                             ; preds = %95, %104, %111, %118, %177, %179, %295, %297, %355, %383, %413, %468, %528, %559, %773, %778, %843, %849, %943, %1021, %1033, %878, %867, %865, %893, %908, %856, %858, %54, %3, %855
  %1051 = phi i32 [ 1, %855 ], [ 0, %3 ], [ 0, %54 ], [ 0, %858 ], [ 0, %856 ], [ 0, %908 ], [ 0, %893 ], [ 0, %865 ], [ 0, %867 ], [ 0, %878 ], [ 0, %1033 ], [ 0, %1021 ], [ 0, %943 ], [ 0, %849 ], [ 0, %843 ], [ 0, %778 ], [ 0, %773 ], [ 0, %559 ], [ 0, %528 ], [ 0, %468 ], [ 0, %413 ], [ 0, %383 ], [ 0, %355 ], [ 0, %297 ], [ 0, %295 ], [ 0, %179 ], [ 0, %177 ], [ 0, %118 ], [ 0, %111 ], [ 0, %104 ], [ 0, %95 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret i32 %1051
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none)
define internal fastcc void @stbtt__csctx_rmove_to(ptr nofree noundef nonnull captures(none) %0, float noundef %1, float noundef %2) unnamed_addr #10 {
  tail call fastcc void @stbtt__csctx_close_shape(ptr noundef %0) #16
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load <2 x float>, ptr %4, align 8, !tbaa !44
  %7 = insertelement <2 x float> poison, float %1, i64 0
  %8 = insertelement <2 x float> %7, float %2, i64 1
  %9 = fadd <2 x float> %8, %6
  %10 = shufflevector <2 x float> %9, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  store <4 x float> %10, ptr %5, align 8, !tbaa !44
  %11 = extractelement <2 x float> %9, i64 0
  %12 = fptosi float %11 to i32
  %13 = extractelement <2 x float> %9, i64 1
  %14 = fptosi float %13 to i32
  %15 = load i32, ptr %0, align 8, !tbaa !108
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %57, label %17

17:                                               ; preds = %3
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %19 = load i32, ptr %18, align 4, !tbaa !110
  %20 = icmp slt i32 %19, %12
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %23 = load i32, ptr %22, align 4, !tbaa !111
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %17
  store i32 %12, ptr %18, align 4, !tbaa !110
  br label %26

26:                                               ; preds = %25, %21
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %28 = load i32, ptr %27, align 4, !tbaa !112
  %29 = icmp slt i32 %28, %14
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %32 = load i32, ptr %31, align 4, !tbaa !111
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30, %26
  store i32 %14, ptr %27, align 4, !tbaa !112
  br label %35

35:                                               ; preds = %34, %30
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %37 = load i32, ptr %36, align 8, !tbaa !113
  %38 = icmp sgt i32 %37, %12
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %41 = load i32, ptr %40, align 4, !tbaa !111
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39, %35
  store i32 %12, ptr %36, align 8, !tbaa !113
  br label %44

44:                                               ; preds = %43, %39
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %46 = load i32, ptr %45, align 8, !tbaa !114
  %47 = icmp sgt i32 %46, %14
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %50 = load i32, ptr %49, align 4, !tbaa !111
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48, %44
  store i32 %14, ptr %45, align 8, !tbaa !114
  br label %53

53:                                               ; preds = %52, %48
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %54, align 4, !tbaa !111
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %56 = load i32, ptr %55, align 8, !tbaa !117
  br label %69

57:                                               ; preds = %3
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %59 = load ptr, ptr %58, align 8, !tbaa !115
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %61 = load i32, ptr %60, align 8, !tbaa !117
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [14 x i8], ptr %59, i64 %62
  %64 = getelementptr inbounds nuw i8, ptr %63, i64 12
  store i8 1, ptr %64, align 2, !tbaa !34
  %65 = trunc i32 %12 to i16
  store i16 %65, ptr %63, align 2, !tbaa !48
  %66 = trunc i32 %14 to i16
  %67 = getelementptr inbounds nuw i8, ptr %63, i64 2
  store i16 %66, ptr %67, align 2, !tbaa !49
  %68 = getelementptr inbounds nuw i8, ptr %63, i64 4
  store <4 x i16> zeroinitializer, ptr %68, align 2, !tbaa !43
  br label %69

69:                                               ; preds = %53, %57
  %70 = phi i32 [ %56, %53 ], [ %61, %57 ]
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %72 = add i32 %70, 1
  store i32 %72, ptr %71, align 8, !tbaa !117
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none)
define internal fastcc void @stbtt__csctx_rccurve_to(ptr nofree noundef nonnull captures(none) %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6) unnamed_addr #10 {
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %10 = load <2 x float>, ptr %8, align 8, !tbaa !44
  %11 = insertelement <2 x float> poison, float %1, i64 0
  %12 = insertelement <2 x float> %11, float %2, i64 1
  %13 = fadd <2 x float> %12, %10
  %14 = extractelement <2 x float> %13, i64 0
  %15 = fadd float %3, %14
  %16 = extractelement <2 x float> %13, i64 1
  %17 = fadd float %4, %16
  %18 = fadd float %5, %15
  store float %18, ptr %8, align 8, !tbaa !126
  %19 = fadd float %6, %17
  store float %19, ptr %9, align 4, !tbaa !127
  %20 = insertelement <4 x float> poison, float %18, i64 0
  %21 = insertelement <4 x float> %20, float %19, i64 1
  %22 = shufflevector <2 x float> %13, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %23 = shufflevector <4 x float> %21, <4 x float> %22, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %24 = fptosi <4 x float> %23 to <4 x i32>
  %25 = fptosi float %15 to i32
  %26 = fptosi float %17 to i32
  %27 = load i32, ptr %0, align 8, !tbaa !108
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %105, label %29

29:                                               ; preds = %7
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %31 = load i32, ptr %30, align 4, !tbaa !110
  %32 = extractelement <4 x i32> %24, i64 0
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %38, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %36 = load i32, ptr %35, align 4, !tbaa !111
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34, %29
  store i32 %32, ptr %30, align 4, !tbaa !110
  br label %39

39:                                               ; preds = %38, %34
  %40 = phi i32 [ %32, %38 ], [ %31, %34 ]
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %42 = load i32, ptr %41, align 4, !tbaa !112
  %43 = extractelement <4 x i32> %24, i64 1
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %39
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %47 = load i32, ptr %46, align 4, !tbaa !111
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45, %39
  store i32 %43, ptr %41, align 4, !tbaa !112
  br label %50

50:                                               ; preds = %49, %45
  %51 = phi i32 [ %43, %49 ], [ %42, %45 ]
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %53 = load i32, ptr %52, align 8, !tbaa !113
  %54 = icmp sgt i32 %53, %32
  br i1 %54, label %59, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %57 = load i32, ptr %56, align 4, !tbaa !111
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55, %50
  store i32 %32, ptr %52, align 8, !tbaa !113
  br label %60

60:                                               ; preds = %59, %55
  %61 = phi i32 [ %32, %59 ], [ %53, %55 ]
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %63 = load i32, ptr %62, align 8, !tbaa !114
  %64 = icmp sgt i32 %63, %43
  br i1 %64, label %69, label %65

65:                                               ; preds = %60
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %67 = load i32, ptr %66, align 4, !tbaa !111
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %65, %60
  store i32 %43, ptr %62, align 8, !tbaa !114
  br label %70

70:                                               ; preds = %69, %65
  %71 = phi i32 [ %63, %65 ], [ %43, %69 ]
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %72, align 4, !tbaa !111
  %73 = extractelement <4 x i32> %24, i64 2
  %74 = icmp slt i32 %40, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  store i32 %73, ptr %30, align 4, !tbaa !110
  br label %76

76:                                               ; preds = %75, %70
  %77 = phi i32 [ %40, %70 ], [ %73, %75 ]
  %78 = extractelement <4 x i32> %24, i64 3
  %79 = icmp slt i32 %51, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  store i32 %78, ptr %41, align 4, !tbaa !112
  br label %81

81:                                               ; preds = %80, %76
  %82 = phi i32 [ %51, %76 ], [ %78, %80 ]
  %83 = icmp sgt i32 %61, %73
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  store i32 %73, ptr %52, align 8, !tbaa !113
  br label %85

85:                                               ; preds = %84, %81
  %86 = phi i32 [ %61, %81 ], [ %73, %84 ]
  %87 = icmp sgt i32 %71, %78
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  store i32 %78, ptr %62, align 8, !tbaa !114
  br label %89

89:                                               ; preds = %88, %85
  %90 = phi i32 [ %71, %85 ], [ %78, %88 ]
  %91 = icmp slt i32 %77, %25
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  store i32 %25, ptr %30, align 4, !tbaa !110
  br label %93

93:                                               ; preds = %92, %89
  %94 = icmp slt i32 %82, %26
  br i1 %94, label %95, label %96

95:                                               ; preds = %93
  store i32 %26, ptr %41, align 4, !tbaa !112
  br label %96

96:                                               ; preds = %95, %93
  %97 = icmp sgt i32 %86, %25
  br i1 %97, label %98, label %99

98:                                               ; preds = %96
  store i32 %25, ptr %52, align 8, !tbaa !113
  br label %99

99:                                               ; preds = %98, %96
  %100 = icmp sgt i32 %90, %26
  br i1 %100, label %101, label %102

101:                                              ; preds = %99
  store i32 %26, ptr %62, align 8, !tbaa !114
  br label %102

102:                                              ; preds = %101, %99
  store i32 1, ptr %72, align 4, !tbaa !111
  %103 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %104 = load i32, ptr %103, align 8, !tbaa !117
  br label %118

105:                                              ; preds = %7
  %106 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %107 = load ptr, ptr %106, align 8, !tbaa !115
  %108 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %109 = load i32, ptr %108, align 8, !tbaa !117
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [14 x i8], ptr %107, i64 %110
  %112 = getelementptr inbounds nuw i8, ptr %111, i64 12
  store i8 4, ptr %112, align 2, !tbaa !34
  %113 = trunc <4 x i32> %24 to <4 x i16>
  store <4 x i16> %113, ptr %111, align 2, !tbaa !43
  %114 = trunc i32 %25 to i16
  %115 = getelementptr inbounds nuw i8, ptr %111, i64 8
  store i16 %114, ptr %115, align 2, !tbaa !50
  %116 = trunc i32 %26 to i16
  %117 = getelementptr inbounds nuw i8, ptr %111, i64 10
  store i16 %116, ptr %117, align 2, !tbaa !51
  br label %118

118:                                              ; preds = %102, %105
  %119 = phi i32 [ %104, %102 ], [ %109, %105 ]
  %120 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %121 = add i32 %119, 1
  store i32 %121, ptr %120, align 8, !tbaa !117
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none)
define internal fastcc void @stbtt__csctx_close_shape(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #10 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %4 = load float, ptr %3, align 8, !tbaa !126
  %5 = load <2 x float>, ptr %2, align 8, !tbaa !44
  %6 = extractelement <2 x float> %5, i64 0
  %7 = fcmp une float %6, %4
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %10 = load float, ptr %9, align 4, !tbaa !127
  %11 = extractelement <2 x float> %5, i64 1
  %12 = fcmp une float %11, %10
  br i1 %12, label %13, label %73

13:                                               ; preds = %1, %8
  %14 = fptosi <2 x float> %5 to <2 x i32>
  %15 = load i32, ptr %0, align 8, !tbaa !108
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %59, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %19 = load i32, ptr %18, align 4, !tbaa !110
  %20 = extractelement <2 x i32> %14, i64 0
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %24 = load i32, ptr %23, align 4, !tbaa !111
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22, %17
  store i32 %20, ptr %18, align 4, !tbaa !110
  br label %27

27:                                               ; preds = %26, %22
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %29 = load i32, ptr %28, align 4, !tbaa !112
  %30 = extractelement <2 x i32> %14, i64 1
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %34 = load i32, ptr %33, align 4, !tbaa !111
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32, %27
  store i32 %30, ptr %28, align 4, !tbaa !112
  br label %37

37:                                               ; preds = %36, %32
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %39 = load i32, ptr %38, align 8, !tbaa !113
  %40 = icmp sgt i32 %39, %20
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %43 = load i32, ptr %42, align 4, !tbaa !111
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41, %37
  store i32 %20, ptr %38, align 8, !tbaa !113
  br label %46

46:                                               ; preds = %45, %41
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %48 = load i32, ptr %47, align 8, !tbaa !114
  %49 = icmp sgt i32 %48, %30
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %52 = load i32, ptr %51, align 4, !tbaa !111
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50, %46
  store i32 %30, ptr %47, align 8, !tbaa !114
  br label %55

55:                                               ; preds = %54, %50
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %56, align 4, !tbaa !111
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %58 = load i32, ptr %57, align 8, !tbaa !117
  br label %69

59:                                               ; preds = %13
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %61 = load ptr, ptr %60, align 8, !tbaa !115
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %63 = load i32, ptr %62, align 8, !tbaa !117
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [14 x i8], ptr %61, i64 %64
  %66 = getelementptr inbounds nuw i8, ptr %65, i64 12
  store i8 2, ptr %66, align 2, !tbaa !34
  %67 = trunc <2 x i32> %14 to <2 x i16>
  store <2 x i16> %67, ptr %65, align 2, !tbaa !43
  %68 = getelementptr inbounds nuw i8, ptr %65, i64 4
  store <4 x i16> zeroinitializer, ptr %68, align 2, !tbaa !43
  br label %69

69:                                               ; preds = %55, %59
  %70 = phi i32 [ %58, %55 ], [ %63, %59 ]
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %72 = add i32 %70, 1
  store i32 %72, ptr %71, align 8, !tbaa !117
  br label %73

73:                                               ; preds = %69, %8
  ret void
}

; Function Attrs: nounwind
define internal fastcc i32 @stbtt_GetGlyphShape(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef %1, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8)) %2) unnamed_addr #0 {
  %4 = alloca %struct.stbtt__csctx, align 8
  %5 = alloca %struct.stbtt__csctx, align 8
  %6 = alloca ptr, align 8
  %7 = load i32, ptr @stbtt_GetGlyphShape.depth, align 4, !tbaa !23
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = load i32, ptr @stbtt_GetGlyphShape.budget, align 4
  br label %12

11:                                               ; preds = %3
  store i32 1024, ptr @stbtt_GetGlyphShape.budget, align 4, !tbaa !23
  br label %12

12:                                               ; preds = %9, %11
  %13 = phi i32 [ %10, %9 ], [ 1024, %11 ]
  %14 = icmp sgt i32 %7, 7
  %15 = icmp slt i32 %13, 1
  %16 = select i1 %14, i1 true, i1 %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store ptr null, ptr %2, align 8, !tbaa !33
  br label %1166

18:                                               ; preds = %12
  %19 = add nsw i32 %13, -1
  store i32 %19, ptr @stbtt_GetGlyphShape.budget, align 4, !tbaa !23
  %20 = add nsw i32 %7, 1
  store i32 %20, ptr @stbtt_GetGlyphShape.depth, align 4, !tbaa !23
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %22 = load i32, ptr %21, align 4, !tbaa !107
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %1136

24:                                               ; preds = %18
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %26 = load ptr, ptr %25, align 8, !tbaa !12
  %27 = tail call fastcc i32 @stbtt__GetGlyfOffset(ptr noundef nonnull %0, i32 noundef %1) #16, !inline_history !128
  store ptr null, ptr %2, align 8, !tbaa !33
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %1162, label %29

29:                                               ; preds = %24
  %30 = zext nneg i32 %27 to i64
  %31 = getelementptr inbounds nuw i8, ptr %26, i64 %30
  %32 = load ptr, ptr @stbtt__lo, align 8, !tbaa !8
  %33 = icmp uge ptr %31, %32
  %34 = load ptr, ptr @stbtt__hi, align 8
  %35 = icmp ult ptr %31, %34
  %36 = select i1 %33, i1 %35, i1 false
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = load i8, ptr %31, align 1, !tbaa !11
  %39 = zext i8 %38 to i16
  %40 = shl nuw i16 %39, 8
  br label %41

41:                                               ; preds = %37, %29
  %42 = phi i16 [ %40, %37 ], [ 0, %29 ]
  %43 = getelementptr inbounds nuw i8, ptr %31, i64 1
  %44 = icmp uge ptr %43, %32
  %45 = icmp ult ptr %43, %34
  %46 = select i1 %44, i1 %45, i1 false
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load i8, ptr %43, align 1, !tbaa !11
  %49 = zext i8 %48 to i16
  %50 = or disjoint i16 %42, %49
  br label %51

51:                                               ; preds = %41, %47
  %52 = phi i16 [ %50, %47 ], [ %42, %41 ]
  %53 = icmp sgt i16 %52, 0
  br i1 %53, label %54, label %516

54:                                               ; preds = %51
  %55 = getelementptr inbounds nuw i8, ptr %31, i64 10
  %56 = shl nuw i16 %52, 1
  %57 = zext i16 %56 to i32
  %58 = zext i16 %56 to i64
  %59 = getelementptr inbounds nuw i8, ptr %55, i64 %58
  %60 = icmp uge ptr %59, %32
  %61 = icmp ult ptr %59, %34
  %62 = select i1 %60, i1 %61, i1 false
  br i1 %62, label %63, label %67

63:                                               ; preds = %54
  %64 = load i8, ptr %59, align 1, !tbaa !11
  %65 = zext i8 %64 to i16
  %66 = shl nuw i16 %65, 8
  br label %67

67:                                               ; preds = %63, %54
  %68 = phi i16 [ %66, %63 ], [ 0, %54 ]
  %69 = getelementptr inbounds nuw i8, ptr %59, i64 1
  %70 = icmp uge ptr %69, %32
  %71 = icmp ult ptr %69, %34
  %72 = select i1 %70, i1 %71, i1 false
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = load i8, ptr %69, align 1, !tbaa !11
  %75 = zext i8 %74 to i16
  %76 = or disjoint i16 %68, %75
  br label %77

77:                                               ; preds = %67, %73
  %78 = phi i16 [ %76, %73 ], [ %68, %67 ]
  %79 = getelementptr inbounds i8, ptr %59, i64 -2
  %80 = icmp uge ptr %79, %32
  %81 = icmp ult ptr %79, %34
  %82 = select i1 %80, i1 %81, i1 false
  br i1 %82, label %83, label %87

83:                                               ; preds = %77
  %84 = load i8, ptr %79, align 1, !tbaa !11
  %85 = zext i8 %84 to i16
  %86 = shl nuw i16 %85, 8
  br label %87

87:                                               ; preds = %83, %77
  %88 = phi i16 [ %86, %83 ], [ 0, %77 ]
  %89 = getelementptr inbounds i8, ptr %59, i64 -1
  %90 = icmp uge ptr %89, %32
  %91 = icmp ult ptr %89, %34
  %92 = select i1 %90, i1 %91, i1 false
  br i1 %92, label %93, label %97

93:                                               ; preds = %87
  %94 = load i8, ptr %89, align 1, !tbaa !11
  %95 = zext i8 %94 to i16
  %96 = or disjoint i16 %88, %95
  br label %97

97:                                               ; preds = %87, %93
  %98 = phi i16 [ %96, %93 ], [ %88, %87 ]
  %99 = zext i16 %98 to i32
  %100 = or disjoint i32 %57, 1
  %101 = add nuw nsw i32 %100, %99
  %102 = mul nuw nsw i32 %101, 14
  %103 = add nuw nsw i32 %102, 28
  %104 = and i32 %103, 4194288
  %105 = zext nneg i32 %104 to i64
  %106 = load i64, ptr @arena_used, align 8, !tbaa !41
  %107 = sub i64 8388608, %106
  %108 = icmp ult i64 %107, %105
  br i1 %108, label %1162, label %109

109:                                              ; preds = %97
  %110 = getelementptr inbounds nuw i8, ptr @arena, i64 %106
  %111 = add i64 %106, %105
  store i64 %111, ptr @arena_used, align 8, !tbaa !41
  %112 = getelementptr inbounds nuw i8, ptr %59, i64 2
  %113 = zext i16 %78 to i64
  %114 = getelementptr inbounds nuw i8, ptr %112, i64 %113
  %115 = zext nneg i32 %101 to i64
  %116 = getelementptr inbounds nuw [14 x i8], ptr %110, i64 %115
  %117 = tail call ptr @memset(ptr noundef nonnull %116, i32 noundef 0, i64 noundef 14) #17, !inline_history !128
  %118 = load ptr, ptr @stbtt__lo, align 8
  %119 = load ptr, ptr @stbtt__hi, align 8
  %120 = zext i16 %56 to i64
  %121 = add nuw nsw i32 %99, 1
  %122 = zext nneg i32 %121 to i64
  %123 = getelementptr inbounds nuw [14 x i8], ptr %110, i64 %120
  br label %126

124:                                              ; preds = %148
  %125 = getelementptr inbounds nuw [14 x i8], ptr %110, i64 %120
  br label %158

126:                                              ; preds = %109, %148
  %127 = phi i64 [ 0, %109 ], [ %154, %148 ]
  %128 = phi i8 [ 0, %109 ], [ %151, %148 ]
  %129 = phi i8 [ 0, %109 ], [ %150, %148 ]
  %130 = phi ptr [ %114, %109 ], [ %149, %148 ]
  %131 = icmp eq i8 %129, 0
  br i1 %131, label %132, label %146

132:                                              ; preds = %126
  %133 = getelementptr inbounds nuw i8, ptr %130, i64 1
  %134 = icmp uge ptr %130, %118
  %135 = icmp ult ptr %130, %119
  %136 = select i1 %134, i1 %135, i1 false
  br i1 %136, label %137, label %148

137:                                              ; preds = %132
  %138 = load i8, ptr %130, align 1, !tbaa !11
  %139 = and i8 %138, 8
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %148, label %141

141:                                              ; preds = %137
  %142 = getelementptr inbounds nuw i8, ptr %130, i64 2
  %143 = icmp ult ptr %133, %119
  br i1 %143, label %144, label %148

144:                                              ; preds = %141
  %145 = load i8, ptr %133, align 1, !tbaa !11
  br label %148

146:                                              ; preds = %126
  %147 = add i8 %129, -1
  br label %148

148:                                              ; preds = %132, %144, %141, %146, %137
  %149 = phi ptr [ %142, %144 ], [ %133, %137 ], [ %130, %146 ], [ %142, %141 ], [ %133, %132 ]
  %150 = phi i8 [ %145, %144 ], [ 0, %137 ], [ %147, %146 ], [ 0, %141 ], [ 0, %132 ]
  %151 = phi i8 [ %138, %144 ], [ %138, %137 ], [ %128, %146 ], [ %138, %141 ], [ 0, %132 ]
  %152 = getelementptr inbounds nuw [14 x i8], ptr %123, i64 %127
  %153 = getelementptr inbounds nuw i8, ptr %152, i64 12
  store i8 %151, ptr %153, align 2, !tbaa !34
  %154 = add nuw nsw i64 %127, 1
  %155 = icmp eq i64 %154, %122
  br i1 %155, label %124, label %126, !llvm.loop !129

156:                                              ; preds = %208
  %157 = getelementptr inbounds nuw [14 x i8], ptr %110, i64 %120
  br label %213

158:                                              ; preds = %124, %208
  %159 = phi i64 [ 0, %124 ], [ %211, %208 ]
  %160 = phi ptr [ %149, %124 ], [ %210, %208 ]
  %161 = phi i16 [ 0, %124 ], [ %209, %208 ]
  %162 = getelementptr inbounds nuw [14 x i8], ptr %125, i64 %159
  %163 = getelementptr inbounds nuw i8, ptr %162, i64 12
  %164 = load i8, ptr %163, align 2, !tbaa !34
  %165 = zext i8 %164 to i32
  %166 = and i32 %165, 2
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %183, label %168

168:                                              ; preds = %158
  %169 = getelementptr inbounds nuw i8, ptr %160, i64 1
  %170 = icmp uge ptr %160, %118
  %171 = icmp ult ptr %160, %119
  %172 = select i1 %170, i1 %171, i1 false
  br i1 %172, label %173, label %176

173:                                              ; preds = %168
  %174 = load i8, ptr %160, align 1, !tbaa !11
  %175 = zext i8 %174 to i16
  br label %176

176:                                              ; preds = %168, %173
  %177 = phi i16 [ %175, %173 ], [ 0, %168 ]
  %178 = and i32 %165, 16
  %179 = icmp eq i32 %178, 0
  %180 = sub nsw i16 0, %177
  %181 = select i1 %179, i16 %180, i16 %177
  %182 = add i16 %181, %161
  br label %208

183:                                              ; preds = %158
  %184 = and i32 %165, 16
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %208

186:                                              ; preds = %183
  %187 = icmp uge ptr %160, %118
  %188 = icmp ult ptr %160, %119
  %189 = select i1 %187, i1 %188, i1 false
  br i1 %189, label %190, label %194

190:                                              ; preds = %186
  %191 = load i8, ptr %160, align 1, !tbaa !11
  %192 = zext i8 %191 to i16
  %193 = shl nuw i16 %192, 8
  br label %194

194:                                              ; preds = %190, %186
  %195 = phi i16 [ %193, %190 ], [ 0, %186 ]
  %196 = getelementptr inbounds nuw i8, ptr %160, i64 1
  %197 = icmp uge ptr %196, %118
  %198 = icmp ult ptr %196, %119
  %199 = select i1 %197, i1 %198, i1 false
  br i1 %199, label %200, label %204

200:                                              ; preds = %194
  %201 = load i8, ptr %196, align 1, !tbaa !11
  %202 = zext i8 %201 to i16
  %203 = or disjoint i16 %195, %202
  br label %204

204:                                              ; preds = %194, %200
  %205 = phi i16 [ %203, %200 ], [ %195, %194 ]
  %206 = add i16 %205, %161
  %207 = getelementptr inbounds nuw i8, ptr %160, i64 2
  br label %208

208:                                              ; preds = %204, %183, %176
  %209 = phi i16 [ %182, %176 ], [ %161, %183 ], [ %206, %204 ]
  %210 = phi ptr [ %169, %176 ], [ %160, %183 ], [ %207, %204 ]
  store i16 %209, ptr %162, align 2, !tbaa !48
  %211 = add nuw nsw i64 %159, 1
  %212 = icmp eq i64 %211, %122
  br i1 %212, label %156, label %158, !llvm.loop !130

213:                                              ; preds = %156, %263
  %214 = phi i64 [ 0, %156 ], [ %267, %263 ]
  %215 = phi ptr [ %210, %156 ], [ %265, %263 ]
  %216 = phi i16 [ 0, %156 ], [ %264, %263 ]
  %217 = getelementptr inbounds nuw [14 x i8], ptr %157, i64 %214
  %218 = getelementptr inbounds nuw i8, ptr %217, i64 12
  %219 = load i8, ptr %218, align 2, !tbaa !34
  %220 = zext i8 %219 to i32
  %221 = and i32 %220, 4
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %238, label %223

223:                                              ; preds = %213
  %224 = getelementptr inbounds nuw i8, ptr %215, i64 1
  %225 = icmp uge ptr %215, %118
  %226 = icmp ult ptr %215, %119
  %227 = select i1 %225, i1 %226, i1 false
  br i1 %227, label %228, label %231

228:                                              ; preds = %223
  %229 = load i8, ptr %215, align 1, !tbaa !11
  %230 = zext i8 %229 to i16
  br label %231

231:                                              ; preds = %223, %228
  %232 = phi i16 [ %230, %228 ], [ 0, %223 ]
  %233 = and i32 %220, 32
  %234 = icmp eq i32 %233, 0
  %235 = sub nsw i16 0, %232
  %236 = select i1 %234, i16 %235, i16 %232
  %237 = add i16 %236, %216
  br label %263

238:                                              ; preds = %213
  %239 = and i32 %220, 32
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %263

241:                                              ; preds = %238
  %242 = icmp uge ptr %215, %118
  %243 = icmp ult ptr %215, %119
  %244 = select i1 %242, i1 %243, i1 false
  br i1 %244, label %245, label %249

245:                                              ; preds = %241
  %246 = load i8, ptr %215, align 1, !tbaa !11
  %247 = zext i8 %246 to i16
  %248 = shl nuw i16 %247, 8
  br label %249

249:                                              ; preds = %245, %241
  %250 = phi i16 [ %248, %245 ], [ 0, %241 ]
  %251 = getelementptr inbounds nuw i8, ptr %215, i64 1
  %252 = icmp uge ptr %251, %118
  %253 = icmp ult ptr %251, %119
  %254 = select i1 %252, i1 %253, i1 false
  br i1 %254, label %255, label %259

255:                                              ; preds = %249
  %256 = load i8, ptr %251, align 1, !tbaa !11
  %257 = zext i8 %256 to i16
  %258 = or disjoint i16 %250, %257
  br label %259

259:                                              ; preds = %249, %255
  %260 = phi i16 [ %258, %255 ], [ %250, %249 ]
  %261 = add i16 %260, %216
  %262 = getelementptr inbounds nuw i8, ptr %215, i64 2
  br label %263

263:                                              ; preds = %259, %238, %231
  %264 = phi i16 [ %237, %231 ], [ %216, %238 ], [ %261, %259 ]
  %265 = phi ptr [ %224, %231 ], [ %215, %238 ], [ %262, %259 ]
  %266 = getelementptr inbounds nuw i8, ptr %217, i64 2
  store i16 %264, ptr %266, align 2, !tbaa !49
  %267 = add nuw nsw i64 %214, 1
  %268 = icmp eq i64 %267, %122
  br i1 %268, label %269, label %213, !llvm.loop !131

269:                                              ; preds = %263, %450
  %270 = phi i32 [ %463, %450 ], [ 0, %263 ]
  %271 = phi i32 [ %464, %450 ], [ 0, %263 ]
  %272 = phi i32 [ %461, %450 ], [ 0, %263 ]
  %273 = phi i32 [ %460, %450 ], [ 0, %263 ]
  %274 = phi i32 [ %459, %450 ], [ 0, %263 ]
  %275 = phi i32 [ %458, %450 ], [ 0, %263 ]
  %276 = phi i32 [ %457, %450 ], [ 0, %263 ]
  %277 = phi i32 [ %456, %450 ], [ 0, %263 ]
  %278 = phi i32 [ %455, %450 ], [ 0, %263 ]
  %279 = phi i32 [ %454, %450 ], [ 0, %263 ]
  %280 = phi i32 [ %453, %450 ], [ 0, %263 ]
  %281 = phi i32 [ %452, %450 ], [ 0, %263 ]
  %282 = add nsw i32 %271, %57
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds [14 x i8], ptr %110, i64 %283
  %285 = getelementptr inbounds nuw i8, ptr %284, i64 12
  %286 = load i8, ptr %285, align 2, !tbaa !34
  %287 = load i16, ptr %284, align 2, !tbaa !48
  %288 = sext i16 %287 to i32
  %289 = getelementptr inbounds nuw i8, ptr %284, i64 2
  %290 = load i16, ptr %289, align 2, !tbaa !49
  %291 = sext i16 %290 to i32
  %292 = icmp eq i32 %273, %271
  br i1 %292, label %293, label %414

293:                                              ; preds = %269
  %294 = icmp eq i32 %271, 0
  br i1 %294, label %346, label %295

295:                                              ; preds = %293
  %296 = icmp eq i32 %280, 0
  %297 = icmp eq i32 %281, 0
  br i1 %296, label %326, label %298

298:                                              ; preds = %295
  br i1 %297, label %315, label %299

299:                                              ; preds = %298
  %300 = add i32 %270, 1
  %301 = sext i32 %270 to i64
  %302 = getelementptr inbounds [14 x i8], ptr %110, i64 %301
  %303 = add nsw i32 %275, %279
  %304 = lshr i32 %303, 1
  %305 = add nsw i32 %274, %278
  %306 = lshr i32 %305, 1
  %307 = getelementptr inbounds nuw i8, ptr %302, i64 12
  store i8 3, ptr %307, align 2, !tbaa !34
  %308 = trunc i32 %304 to i16
  store i16 %308, ptr %302, align 2, !tbaa !48
  %309 = trunc i32 %306 to i16
  %310 = getelementptr inbounds nuw i8, ptr %302, i64 2
  store i16 %309, ptr %310, align 2, !tbaa !49
  %311 = trunc nsw i32 %279 to i16
  %312 = getelementptr inbounds nuw i8, ptr %302, i64 4
  store i16 %311, ptr %312, align 2, !tbaa !46
  %313 = trunc nsw i32 %278 to i16
  %314 = getelementptr inbounds nuw i8, ptr %302, i64 6
  store i16 %313, ptr %314, align 2, !tbaa !47
  br label %315

315:                                              ; preds = %299, %298
  %316 = phi i32 [ %300, %299 ], [ %270, %298 ]
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds [14 x i8], ptr %110, i64 %317
  %319 = getelementptr inbounds nuw i8, ptr %318, i64 12
  store i8 3, ptr %319, align 2, !tbaa !34
  %320 = trunc i32 %277 to i16
  store i16 %320, ptr %318, align 2, !tbaa !48
  %321 = trunc i32 %276 to i16
  %322 = getelementptr inbounds nuw i8, ptr %318, i64 2
  store i16 %321, ptr %322, align 2, !tbaa !49
  %323 = trunc nsw i32 %275 to i16
  %324 = getelementptr inbounds nuw i8, ptr %318, i64 4
  store i16 %323, ptr %324, align 2, !tbaa !46
  %325 = trunc nsw i32 %274 to i16
  br label %339

326:                                              ; preds = %295
  %327 = sext i32 %270 to i64
  %328 = getelementptr inbounds [14 x i8], ptr %110, i64 %327
  %329 = getelementptr inbounds nuw i8, ptr %328, i64 12
  %330 = trunc i32 %277 to i16
  %331 = trunc i32 %276 to i16
  %332 = getelementptr inbounds nuw i8, ptr %328, i64 2
  br i1 %297, label %337, label %333

333:                                              ; preds = %326
  store i8 3, ptr %329, align 2, !tbaa !34
  store i16 %330, ptr %328, align 2, !tbaa !48
  store i16 %331, ptr %332, align 2, !tbaa !49
  %334 = trunc nsw i32 %279 to i16
  %335 = getelementptr inbounds nuw i8, ptr %328, i64 4
  store i16 %334, ptr %335, align 2, !tbaa !46
  %336 = trunc nsw i32 %278 to i16
  br label %339

337:                                              ; preds = %326
  store i8 2, ptr %329, align 2, !tbaa !34
  store i16 %330, ptr %328, align 2, !tbaa !48
  store i16 %331, ptr %332, align 2, !tbaa !49
  %338 = getelementptr inbounds nuw i8, ptr %328, i64 4
  store i16 0, ptr %338, align 2, !tbaa !46
  br label %339

339:                                              ; preds = %315, %333, %337
  %340 = phi i64 [ %327, %333 ], [ %327, %337 ], [ %317, %315 ]
  %341 = phi i16 [ %336, %333 ], [ 0, %337 ], [ %325, %315 ]
  %342 = phi i32 [ %270, %333 ], [ %270, %337 ], [ %316, %315 ]
  %343 = getelementptr inbounds [14 x i8], ptr %110, i64 %340
  %344 = getelementptr inbounds nuw i8, ptr %343, i64 6
  store i16 %341, ptr %344, align 2, !tbaa !47
  %345 = add i32 %342, 1
  br label %346

346:                                              ; preds = %339, %293
  %347 = phi i32 [ %345, %339 ], [ %270, %293 ]
  %348 = and i8 %286, 1
  %349 = icmp eq i8 %348, 0
  %350 = xor i8 %348, 1
  %351 = zext nneg i8 %350 to i32
  br i1 %349, label %352, label %374

352:                                              ; preds = %346
  %353 = getelementptr i8, ptr %284, i64 14
  %354 = getelementptr i8, ptr %284, i64 26
  %355 = load i8, ptr %354, align 2, !tbaa !34
  %356 = and i8 %355, 1
  %357 = icmp eq i8 %356, 0
  %358 = load i16, ptr %353, align 2, !tbaa !48
  br i1 %357, label %359, label %368

359:                                              ; preds = %352
  %360 = sext i16 %358 to i32
  %361 = add nsw i32 %360, %288
  %362 = ashr i32 %361, 1
  %363 = getelementptr i8, ptr %284, i64 16
  %364 = load i16, ptr %363, align 2, !tbaa !49
  %365 = sext i16 %364 to i32
  %366 = add nsw i32 %365, %291
  %367 = ashr i32 %366, 1
  br label %374

368:                                              ; preds = %352
  %369 = zext i16 %358 to i32
  %370 = getelementptr i8, ptr %284, i64 16
  %371 = load i16, ptr %370, align 2, !tbaa !49
  %372 = zext i16 %371 to i32
  %373 = add nuw nsw i32 %271, 1
  br label %374

374:                                              ; preds = %368, %359, %346
  %375 = phi i32 [ %369, %368 ], [ %362, %359 ], [ %288, %346 ]
  %376 = phi i32 [ %372, %368 ], [ %367, %359 ], [ %291, %346 ]
  %377 = phi i32 [ %288, %368 ], [ %288, %359 ], [ %275, %346 ]
  %378 = phi i32 [ %291, %368 ], [ %291, %359 ], [ %274, %346 ]
  %379 = phi i32 [ %373, %368 ], [ %271, %359 ], [ %271, %346 ]
  %380 = add i32 %347, 1
  %381 = sext i32 %347 to i64
  %382 = getelementptr inbounds [14 x i8], ptr %110, i64 %381
  %383 = getelementptr inbounds nuw i8, ptr %382, i64 12
  store i8 1, ptr %383, align 2, !tbaa !34
  %384 = trunc i32 %375 to i16
  store i16 %384, ptr %382, align 2, !tbaa !48
  %385 = trunc i32 %376 to i16
  %386 = getelementptr inbounds nuw i8, ptr %382, i64 2
  store i16 %385, ptr %386, align 2, !tbaa !49
  %387 = getelementptr inbounds nuw i8, ptr %382, i64 4
  store i16 0, ptr %387, align 2, !tbaa !46
  %388 = getelementptr inbounds nuw i8, ptr %382, i64 6
  store i16 0, ptr %388, align 2, !tbaa !47
  %389 = shl i32 %272, 1
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds i8, ptr %55, i64 %390
  %392 = icmp uge ptr %391, %118
  %393 = icmp ult ptr %391, %119
  %394 = select i1 %392, i1 %393, i1 false
  br i1 %394, label %395, label %399

395:                                              ; preds = %374
  %396 = load i8, ptr %391, align 1, !tbaa !11
  %397 = zext i8 %396 to i16
  %398 = shl nuw i16 %397, 8
  br label %399

399:                                              ; preds = %395, %374
  %400 = phi i16 [ %398, %395 ], [ 0, %374 ]
  %401 = getelementptr inbounds nuw i8, ptr %391, i64 1
  %402 = icmp uge ptr %401, %118
  %403 = icmp ult ptr %401, %119
  %404 = select i1 %402, i1 %403, i1 false
  br i1 %404, label %405, label %409

405:                                              ; preds = %399
  %406 = load i8, ptr %401, align 1, !tbaa !11
  %407 = zext i8 %406 to i16
  %408 = or disjoint i16 %400, %407
  br label %409

409:                                              ; preds = %399, %405
  %410 = phi i16 [ %408, %405 ], [ %400, %399 ]
  %411 = zext i16 %410 to i32
  %412 = add nuw nsw i32 %411, 1
  %413 = add i32 %272, 1
  br label %450

414:                                              ; preds = %269
  %415 = and i8 %286, 1
  %416 = icmp eq i8 %415, 0
  %417 = icmp eq i32 %281, 0
  br i1 %416, label %418, label %435

418:                                              ; preds = %414
  br i1 %417, label %450, label %419

419:                                              ; preds = %418
  %420 = add i32 %270, 1
  %421 = sext i32 %270 to i64
  %422 = getelementptr inbounds [14 x i8], ptr %110, i64 %421
  %423 = add nsw i32 %279, %288
  %424 = lshr i32 %423, 1
  %425 = add nsw i32 %278, %291
  %426 = lshr i32 %425, 1
  %427 = getelementptr inbounds nuw i8, ptr %422, i64 12
  store i8 3, ptr %427, align 2, !tbaa !34
  %428 = trunc i32 %424 to i16
  store i16 %428, ptr %422, align 2, !tbaa !48
  %429 = trunc i32 %426 to i16
  %430 = getelementptr inbounds nuw i8, ptr %422, i64 2
  store i16 %429, ptr %430, align 2, !tbaa !49
  %431 = trunc nsw i32 %279 to i16
  %432 = getelementptr inbounds nuw i8, ptr %422, i64 4
  store i16 %431, ptr %432, align 2, !tbaa !46
  %433 = trunc nsw i32 %278 to i16
  %434 = getelementptr inbounds nuw i8, ptr %422, i64 6
  store i16 %433, ptr %434, align 2, !tbaa !47
  br label %450

435:                                              ; preds = %414
  %436 = sext i32 %270 to i64
  %437 = getelementptr inbounds [14 x i8], ptr %110, i64 %436
  %438 = getelementptr inbounds nuw i8, ptr %437, i64 12
  %439 = getelementptr inbounds nuw i8, ptr %437, i64 2
  br i1 %417, label %444, label %440

440:                                              ; preds = %435
  store i8 3, ptr %438, align 2, !tbaa !34
  store i16 %287, ptr %437, align 2, !tbaa !48
  store i16 %290, ptr %439, align 2, !tbaa !49
  %441 = trunc nsw i32 %279 to i16
  %442 = getelementptr inbounds nuw i8, ptr %437, i64 4
  store i16 %441, ptr %442, align 2, !tbaa !46
  %443 = trunc nsw i32 %278 to i16
  br label %446

444:                                              ; preds = %435
  store i8 2, ptr %438, align 2, !tbaa !34
  store i16 %287, ptr %437, align 2, !tbaa !48
  store i16 %290, ptr %439, align 2, !tbaa !49
  %445 = getelementptr inbounds nuw i8, ptr %437, i64 4
  store i16 0, ptr %445, align 2, !tbaa !46
  br label %446

446:                                              ; preds = %444, %440
  %447 = phi i16 [ 0, %444 ], [ %443, %440 ]
  %448 = getelementptr inbounds nuw i8, ptr %437, i64 6
  store i16 %447, ptr %448, align 2, !tbaa !47
  %449 = add i32 %270, 1
  br label %450

450:                                              ; preds = %446, %419, %418, %409
  %451 = phi i1 [ true, %409 ], [ true, %446 ], [ false, %419 ], [ false, %418 ]
  %452 = phi i32 [ 0, %409 ], [ 0, %446 ], [ 1, %419 ], [ 1, %418 ]
  %453 = phi i32 [ %351, %409 ], [ %280, %446 ], [ %280, %419 ], [ %280, %418 ]
  %454 = phi i32 [ %279, %409 ], [ %279, %446 ], [ %288, %419 ], [ %288, %418 ]
  %455 = phi i32 [ %278, %409 ], [ %278, %446 ], [ %291, %419 ], [ %291, %418 ]
  %456 = phi i32 [ %375, %409 ], [ %277, %446 ], [ %277, %419 ], [ %277, %418 ]
  %457 = phi i32 [ %376, %409 ], [ %276, %446 ], [ %276, %419 ], [ %276, %418 ]
  %458 = phi i32 [ %377, %409 ], [ %275, %446 ], [ %275, %419 ], [ %275, %418 ]
  %459 = phi i32 [ %378, %409 ], [ %274, %446 ], [ %274, %419 ], [ %274, %418 ]
  %460 = phi i32 [ %412, %409 ], [ %273, %446 ], [ %273, %419 ], [ %273, %418 ]
  %461 = phi i32 [ %413, %409 ], [ %272, %446 ], [ %272, %419 ], [ %272, %418 ]
  %462 = phi i32 [ %379, %409 ], [ %271, %446 ], [ %271, %419 ], [ %271, %418 ]
  %463 = phi i32 [ %380, %409 ], [ %449, %446 ], [ %420, %419 ], [ %270, %418 ]
  %464 = add i32 %462, 1
  %465 = icmp sgt i32 %464, %99
  br i1 %465, label %466, label %269, !llvm.loop !132

466:                                              ; preds = %450
  %467 = icmp eq i32 %453, 0
  br i1 %467, label %496, label %468

468:                                              ; preds = %466
  br i1 %451, label %485, label %469

469:                                              ; preds = %468
  %470 = add i32 %463, 1
  %471 = sext i32 %463 to i64
  %472 = getelementptr inbounds [14 x i8], ptr %110, i64 %471
  %473 = add nsw i32 %458, %454
  %474 = lshr i32 %473, 1
  %475 = add nsw i32 %459, %455
  %476 = lshr i32 %475, 1
  %477 = getelementptr inbounds nuw i8, ptr %472, i64 12
  store i8 3, ptr %477, align 2, !tbaa !34
  %478 = trunc i32 %474 to i16
  store i16 %478, ptr %472, align 2, !tbaa !48
  %479 = trunc i32 %476 to i16
  %480 = getelementptr inbounds nuw i8, ptr %472, i64 2
  store i16 %479, ptr %480, align 2, !tbaa !49
  %481 = trunc nsw i32 %454 to i16
  %482 = getelementptr inbounds nuw i8, ptr %472, i64 4
  store i16 %481, ptr %482, align 2, !tbaa !46
  %483 = trunc nsw i32 %455 to i16
  %484 = getelementptr inbounds nuw i8, ptr %472, i64 6
  store i16 %483, ptr %484, align 2, !tbaa !47
  br label %485

485:                                              ; preds = %469, %468
  %486 = phi i32 [ %470, %469 ], [ %463, %468 ]
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds [14 x i8], ptr %110, i64 %487
  %489 = getelementptr inbounds nuw i8, ptr %488, i64 12
  store i8 3, ptr %489, align 2, !tbaa !34
  %490 = trunc i32 %456 to i16
  store i16 %490, ptr %488, align 2, !tbaa !48
  %491 = trunc i32 %457 to i16
  %492 = getelementptr inbounds nuw i8, ptr %488, i64 2
  store i16 %491, ptr %492, align 2, !tbaa !49
  %493 = trunc nsw i32 %458 to i16
  %494 = getelementptr inbounds nuw i8, ptr %488, i64 4
  store i16 %493, ptr %494, align 2, !tbaa !46
  %495 = trunc nsw i32 %459 to i16
  br label %509

496:                                              ; preds = %466
  %497 = sext i32 %463 to i64
  %498 = getelementptr inbounds [14 x i8], ptr %110, i64 %497
  %499 = getelementptr inbounds nuw i8, ptr %498, i64 12
  %500 = trunc i32 %456 to i16
  %501 = trunc i32 %457 to i16
  %502 = getelementptr inbounds nuw i8, ptr %498, i64 2
  br i1 %451, label %507, label %503

503:                                              ; preds = %496
  store i8 3, ptr %499, align 2, !tbaa !34
  store i16 %500, ptr %498, align 2, !tbaa !48
  store i16 %501, ptr %502, align 2, !tbaa !49
  %504 = trunc nsw i32 %454 to i16
  %505 = getelementptr inbounds nuw i8, ptr %498, i64 4
  store i16 %504, ptr %505, align 2, !tbaa !46
  %506 = trunc nsw i32 %455 to i16
  br label %509

507:                                              ; preds = %496
  store i8 2, ptr %499, align 2, !tbaa !34
  store i16 %500, ptr %498, align 2, !tbaa !48
  store i16 %501, ptr %502, align 2, !tbaa !49
  %508 = getelementptr inbounds nuw i8, ptr %498, i64 4
  store i16 0, ptr %508, align 2, !tbaa !46
  br label %509

509:                                              ; preds = %507, %503, %485
  %510 = phi i64 [ %497, %503 ], [ %497, %507 ], [ %487, %485 ]
  %511 = phi i16 [ %506, %503 ], [ 0, %507 ], [ %495, %485 ]
  %512 = phi i32 [ %463, %503 ], [ %463, %507 ], [ %486, %485 ]
  %513 = getelementptr inbounds [14 x i8], ptr %110, i64 %510
  %514 = getelementptr inbounds nuw i8, ptr %513, i64 6
  store i16 %511, ptr %514, align 2, !tbaa !47
  %515 = add i32 %512, 1
  br label %1133

516:                                              ; preds = %51
  %517 = icmp slt i16 %52, 0
  br i1 %517, label %518, label %1133

518:                                              ; preds = %516
  %519 = getelementptr inbounds nuw i8, ptr %31, i64 10
  br label %520

520:                                              ; preds = %518, %1127
  %521 = phi ptr [ null, %518 ], [ %1129, %1127 ]
  %522 = phi i32 [ 0, %518 ], [ %1128, %1127 ]
  %523 = phi ptr [ %519, %518 ], [ %789, %1127 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  store ptr null, ptr %6, align 8, !tbaa !33
  %524 = load ptr, ptr @stbtt__lo, align 8, !tbaa !8
  %525 = load ptr, ptr @stbtt__hi, align 8
  %526 = getelementptr inbounds nuw i8, ptr %523, i64 1
  %527 = icmp uge ptr %526, %524
  %528 = icmp ult ptr %526, %525
  %529 = select i1 %527, i1 %528, i1 false
  br i1 %529, label %530, label %533

530:                                              ; preds = %520
  %531 = load i8, ptr %526, align 1, !tbaa !11
  %532 = zext i8 %531 to i32
  br label %533

533:                                              ; preds = %520, %530
  %534 = phi i32 [ %532, %530 ], [ 0, %520 ]
  %535 = getelementptr inbounds nuw i8, ptr %523, i64 2
  %536 = icmp uge ptr %535, %524
  %537 = icmp ult ptr %535, %525
  %538 = select i1 %536, i1 %537, i1 false
  br i1 %538, label %539, label %543

539:                                              ; preds = %533
  %540 = load i8, ptr %535, align 1, !tbaa !11
  %541 = zext i8 %540 to i16
  %542 = shl nuw i16 %541, 8
  br label %543

543:                                              ; preds = %539, %533
  %544 = phi i16 [ %542, %539 ], [ 0, %533 ]
  %545 = getelementptr inbounds nuw i8, ptr %523, i64 3
  %546 = icmp uge ptr %545, %524
  %547 = icmp ult ptr %545, %525
  %548 = select i1 %546, i1 %547, i1 false
  br i1 %548, label %549, label %553

549:                                              ; preds = %543
  %550 = load i8, ptr %545, align 1, !tbaa !11
  %551 = zext i8 %550 to i16
  %552 = or disjoint i16 %544, %551
  br label %553

553:                                              ; preds = %543, %549
  %554 = phi i16 [ %552, %549 ], [ %544, %543 ]
  %555 = getelementptr inbounds nuw i8, ptr %523, i64 4
  %556 = and i32 %534, 2
  %557 = icmp eq i32 %556, 0
  br i1 %557, label %620, label %558

558:                                              ; preds = %553
  %559 = and i32 %534, 1
  %560 = icmp eq i32 %559, 0
  %561 = icmp uge ptr %555, %524
  %562 = icmp ult ptr %555, %525
  %563 = select i1 %561, i1 %562, i1 false
  br i1 %560, label %604, label %564

564:                                              ; preds = %558
  br i1 %563, label %565, label %569

565:                                              ; preds = %564
  %566 = load i8, ptr %555, align 1, !tbaa !11
  %567 = zext i8 %566 to i16
  %568 = shl nuw i16 %567, 8
  br label %569

569:                                              ; preds = %565, %564
  %570 = phi i16 [ %568, %565 ], [ 0, %564 ]
  %571 = getelementptr inbounds nuw i8, ptr %523, i64 5
  %572 = icmp uge ptr %571, %524
  %573 = icmp ult ptr %571, %525
  %574 = select i1 %572, i1 %573, i1 false
  br i1 %574, label %575, label %579

575:                                              ; preds = %569
  %576 = load i8, ptr %571, align 1, !tbaa !11
  %577 = zext i8 %576 to i16
  %578 = or disjoint i16 %570, %577
  br label %579

579:                                              ; preds = %569, %575
  %580 = phi i16 [ %578, %575 ], [ %570, %569 ]
  %581 = sitofp i16 %580 to float
  %582 = getelementptr inbounds nuw i8, ptr %523, i64 6
  %583 = icmp uge ptr %582, %524
  %584 = icmp ult ptr %582, %525
  %585 = select i1 %583, i1 %584, i1 false
  br i1 %585, label %586, label %590

586:                                              ; preds = %579
  %587 = load i8, ptr %582, align 1, !tbaa !11
  %588 = zext i8 %587 to i16
  %589 = shl nuw i16 %588, 8
  br label %590

590:                                              ; preds = %586, %579
  %591 = phi i16 [ %589, %586 ], [ 0, %579 ]
  %592 = getelementptr inbounds nuw i8, ptr %523, i64 7
  %593 = icmp uge ptr %592, %524
  %594 = icmp ult ptr %592, %525
  %595 = select i1 %593, i1 %594, i1 false
  br i1 %595, label %596, label %600

596:                                              ; preds = %590
  %597 = load i8, ptr %592, align 1, !tbaa !11
  %598 = zext i8 %597 to i16
  %599 = or disjoint i16 %591, %598
  br label %600

600:                                              ; preds = %590, %596
  %601 = phi i16 [ %599, %596 ], [ %591, %590 ]
  %602 = sitofp i16 %601 to float
  %603 = getelementptr inbounds nuw i8, ptr %523, i64 8
  br label %620

604:                                              ; preds = %558
  br i1 %563, label %605, label %608

605:                                              ; preds = %604
  %606 = load i8, ptr %555, align 1, !tbaa !11
  %607 = sitofp i8 %606 to float
  br label %608

608:                                              ; preds = %604, %605
  %609 = phi float [ %607, %605 ], [ 0.000000e+00, %604 ]
  %610 = getelementptr inbounds nuw i8, ptr %523, i64 5
  %611 = icmp uge ptr %610, %524
  %612 = icmp ult ptr %610, %525
  %613 = select i1 %611, i1 %612, i1 false
  br i1 %613, label %614, label %617

614:                                              ; preds = %608
  %615 = load i8, ptr %610, align 1, !tbaa !11
  %616 = sitofp i8 %615 to float
  br label %617

617:                                              ; preds = %608, %614
  %618 = phi float [ %616, %614 ], [ 0.000000e+00, %608 ]
  %619 = getelementptr inbounds nuw i8, ptr %523, i64 6
  br label %620

620:                                              ; preds = %617, %600, %553
  %621 = phi ptr [ %603, %600 ], [ %619, %617 ], [ %555, %553 ]
  %622 = phi float [ %602, %600 ], [ %618, %617 ], [ 0.000000e+00, %553 ]
  %623 = phi float [ %581, %600 ], [ %609, %617 ], [ 0.000000e+00, %553 ]
  %624 = and i32 %534, 8
  %625 = icmp eq i32 %624, 0
  br i1 %625, label %649, label %626

626:                                              ; preds = %620
  %627 = icmp uge ptr %621, %524
  %628 = icmp ult ptr %621, %525
  %629 = select i1 %627, i1 %628, i1 false
  br i1 %629, label %630, label %634

630:                                              ; preds = %626
  %631 = load i8, ptr %621, align 1, !tbaa !11
  %632 = zext i8 %631 to i16
  %633 = shl nuw i16 %632, 8
  br label %634

634:                                              ; preds = %630, %626
  %635 = phi i16 [ %633, %630 ], [ 0, %626 ]
  %636 = getelementptr inbounds nuw i8, ptr %621, i64 1
  %637 = icmp uge ptr %636, %524
  %638 = icmp ult ptr %636, %525
  %639 = select i1 %637, i1 %638, i1 false
  br i1 %639, label %640, label %644

640:                                              ; preds = %634
  %641 = load i8, ptr %636, align 1, !tbaa !11
  %642 = zext i8 %641 to i16
  %643 = or disjoint i16 %635, %642
  br label %644

644:                                              ; preds = %634, %640
  %645 = phi i16 [ %643, %640 ], [ %635, %634 ]
  %646 = sitofp i16 %645 to float
  %647 = fmul nnan float %646, f0x38800000
  %648 = getelementptr inbounds nuw i8, ptr %621, i64 2
  br label %788

649:                                              ; preds = %620
  %650 = and i32 %534, 64
  %651 = icmp eq i32 %650, 0
  br i1 %651, label %697, label %652

652:                                              ; preds = %649
  %653 = icmp uge ptr %621, %524
  %654 = icmp ult ptr %621, %525
  %655 = select i1 %653, i1 %654, i1 false
  br i1 %655, label %656, label %660

656:                                              ; preds = %652
  %657 = load i8, ptr %621, align 1, !tbaa !11
  %658 = zext i8 %657 to i16
  %659 = shl nuw i16 %658, 8
  br label %660

660:                                              ; preds = %656, %652
  %661 = phi i16 [ %659, %656 ], [ 0, %652 ]
  %662 = getelementptr inbounds nuw i8, ptr %621, i64 1
  %663 = icmp uge ptr %662, %524
  %664 = icmp ult ptr %662, %525
  %665 = select i1 %663, i1 %664, i1 false
  br i1 %665, label %666, label %670

666:                                              ; preds = %660
  %667 = load i8, ptr %662, align 1, !tbaa !11
  %668 = zext i8 %667 to i16
  %669 = or disjoint i16 %661, %668
  br label %670

670:                                              ; preds = %660, %666
  %671 = phi i16 [ %669, %666 ], [ %661, %660 ]
  %672 = sitofp i16 %671 to float
  %673 = fmul nnan float %672, f0x38800000
  %674 = getelementptr inbounds nuw i8, ptr %621, i64 2
  %675 = icmp uge ptr %674, %524
  %676 = icmp ult ptr %674, %525
  %677 = select i1 %675, i1 %676, i1 false
  br i1 %677, label %678, label %682

678:                                              ; preds = %670
  %679 = load i8, ptr %674, align 1, !tbaa !11
  %680 = zext i8 %679 to i16
  %681 = shl nuw i16 %680, 8
  br label %682

682:                                              ; preds = %678, %670
  %683 = phi i16 [ %681, %678 ], [ 0, %670 ]
  %684 = getelementptr inbounds nuw i8, ptr %621, i64 3
  %685 = icmp uge ptr %684, %524
  %686 = icmp ult ptr %684, %525
  %687 = select i1 %685, i1 %686, i1 false
  br i1 %687, label %688, label %692

688:                                              ; preds = %682
  %689 = load i8, ptr %684, align 1, !tbaa !11
  %690 = zext i8 %689 to i16
  %691 = or disjoint i16 %683, %690
  br label %692

692:                                              ; preds = %682, %688
  %693 = phi i16 [ %691, %688 ], [ %683, %682 ]
  %694 = sitofp i16 %693 to float
  %695 = fmul nnan float %694, f0x38800000
  %696 = getelementptr inbounds nuw i8, ptr %621, i64 4
  br label %788

697:                                              ; preds = %649
  %698 = icmp samesign ult i32 %534, 128
  br i1 %698, label %788, label %699

699:                                              ; preds = %697
  %700 = icmp uge ptr %621, %524
  %701 = icmp ult ptr %621, %525
  %702 = select i1 %700, i1 %701, i1 false
  br i1 %702, label %703, label %707

703:                                              ; preds = %699
  %704 = load i8, ptr %621, align 1, !tbaa !11
  %705 = zext i8 %704 to i16
  %706 = shl nuw i16 %705, 8
  br label %707

707:                                              ; preds = %703, %699
  %708 = phi i16 [ %706, %703 ], [ 0, %699 ]
  %709 = getelementptr inbounds nuw i8, ptr %621, i64 1
  %710 = icmp uge ptr %709, %524
  %711 = icmp ult ptr %709, %525
  %712 = select i1 %710, i1 %711, i1 false
  br i1 %712, label %713, label %717

713:                                              ; preds = %707
  %714 = load i8, ptr %709, align 1, !tbaa !11
  %715 = zext i8 %714 to i16
  %716 = or disjoint i16 %708, %715
  br label %717

717:                                              ; preds = %707, %713
  %718 = phi i16 [ %716, %713 ], [ %708, %707 ]
  %719 = sitofp i16 %718 to float
  %720 = fmul nnan float %719, f0x38800000
  %721 = getelementptr inbounds nuw i8, ptr %621, i64 2
  %722 = icmp uge ptr %721, %524
  %723 = icmp ult ptr %721, %525
  %724 = select i1 %722, i1 %723, i1 false
  br i1 %724, label %725, label %729

725:                                              ; preds = %717
  %726 = load i8, ptr %721, align 1, !tbaa !11
  %727 = zext i8 %726 to i16
  %728 = shl nuw i16 %727, 8
  br label %729

729:                                              ; preds = %725, %717
  %730 = phi i16 [ %728, %725 ], [ 0, %717 ]
  %731 = getelementptr inbounds nuw i8, ptr %621, i64 3
  %732 = icmp uge ptr %731, %524
  %733 = icmp ult ptr %731, %525
  %734 = select i1 %732, i1 %733, i1 false
  br i1 %734, label %735, label %739

735:                                              ; preds = %729
  %736 = load i8, ptr %731, align 1, !tbaa !11
  %737 = zext i8 %736 to i16
  %738 = or disjoint i16 %730, %737
  br label %739

739:                                              ; preds = %729, %735
  %740 = phi i16 [ %738, %735 ], [ %730, %729 ]
  %741 = sitofp i16 %740 to float
  %742 = fmul nnan float %741, f0x38800000
  %743 = getelementptr inbounds nuw i8, ptr %621, i64 4
  %744 = icmp uge ptr %743, %524
  %745 = icmp ult ptr %743, %525
  %746 = select i1 %744, i1 %745, i1 false
  br i1 %746, label %747, label %751

747:                                              ; preds = %739
  %748 = load i8, ptr %743, align 1, !tbaa !11
  %749 = zext i8 %748 to i16
  %750 = shl nuw i16 %749, 8
  br label %751

751:                                              ; preds = %747, %739
  %752 = phi i16 [ %750, %747 ], [ 0, %739 ]
  %753 = getelementptr inbounds nuw i8, ptr %621, i64 5
  %754 = icmp uge ptr %753, %524
  %755 = icmp ult ptr %753, %525
  %756 = select i1 %754, i1 %755, i1 false
  br i1 %756, label %757, label %761

757:                                              ; preds = %751
  %758 = load i8, ptr %753, align 1, !tbaa !11
  %759 = zext i8 %758 to i16
  %760 = or disjoint i16 %752, %759
  br label %761

761:                                              ; preds = %751, %757
  %762 = phi i16 [ %760, %757 ], [ %752, %751 ]
  %763 = sitofp i16 %762 to float
  %764 = fmul nnan float %763, f0x38800000
  %765 = getelementptr inbounds nuw i8, ptr %621, i64 6
  %766 = icmp uge ptr %765, %524
  %767 = icmp ult ptr %765, %525
  %768 = select i1 %766, i1 %767, i1 false
  br i1 %768, label %769, label %773

769:                                              ; preds = %761
  %770 = load i8, ptr %765, align 1, !tbaa !11
  %771 = zext i8 %770 to i16
  %772 = shl nuw i16 %771, 8
  br label %773

773:                                              ; preds = %769, %761
  %774 = phi i16 [ %772, %769 ], [ 0, %761 ]
  %775 = getelementptr inbounds nuw i8, ptr %621, i64 7
  %776 = icmp uge ptr %775, %524
  %777 = icmp ult ptr %775, %525
  %778 = select i1 %776, i1 %777, i1 false
  br i1 %778, label %779, label %783

779:                                              ; preds = %773
  %780 = load i8, ptr %775, align 1, !tbaa !11
  %781 = zext i8 %780 to i16
  %782 = or disjoint i16 %774, %781
  br label %783

783:                                              ; preds = %773, %779
  %784 = phi i16 [ %782, %779 ], [ %774, %773 ]
  %785 = sitofp i16 %784 to float
  %786 = fmul nnan float %785, f0x38800000
  %787 = getelementptr inbounds nuw i8, ptr %621, i64 8
  br label %788

788:                                              ; preds = %783, %697, %692, %644
  %789 = phi ptr [ %648, %644 ], [ %696, %692 ], [ %787, %783 ], [ %621, %697 ]
  %790 = phi float [ %647, %644 ], [ %695, %692 ], [ %786, %783 ], [ 1.000000e+00, %697 ]
  %791 = phi float [ 0.000000e+00, %644 ], [ 0.000000e+00, %692 ], [ %764, %783 ], [ 0.000000e+00, %697 ]
  %792 = phi float [ 0.000000e+00, %644 ], [ 0.000000e+00, %692 ], [ %742, %783 ], [ 0.000000e+00, %697 ]
  %793 = phi float [ %647, %644 ], [ %673, %692 ], [ %720, %783 ], [ 1.000000e+00, %697 ]
  %794 = insertelement <2 x float> poison, float %790, i64 0
  %795 = insertelement <2 x float> %794, float %792, i64 1
  %796 = fmul nnan <2 x float> %795, %795
  %797 = insertelement <2 x float> poison, float %791, i64 0
  %798 = insertelement <2 x float> %797, float %793, i64 1
  %799 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %798, <2 x float> %798, <2 x float> %796)
  %800 = fpext <2 x float> %799 to <2 x double>
  %801 = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %800)
  %802 = extractelement <2 x double> %801, i64 1
  %803 = fptrunc double %802 to float
  %804 = extractelement <2 x double> %801, i64 0
  %805 = fptrunc double %804 to float
  %806 = zext i16 %554 to i32
  %807 = call fastcc i32 @stbtt_GetGlyphShape(ptr noundef nonnull %0, i32 noundef %806, ptr noundef %6) #16, !inline_history !128
  %808 = icmp sgt i32 %807, 0
  br i1 %808, label %809, label %1127

809:                                              ; preds = %788
  %810 = load ptr, ptr %6, align 8, !tbaa !33
  %811 = zext nneg i32 %807 to i64
  %812 = icmp ult i32 %807, 9
  br i1 %812, label %1033, label %813

813:                                              ; preds = %809
  %814 = and i64 %811, 7
  %815 = icmp eq i64 %814, 0
  %816 = select i1 %815, i64 8, i64 %814
  %817 = sub nsw i64 %811, %816
  %818 = insertelement <8 x float> poison, float %791, i64 0
  %819 = shufflevector <8 x float> %818, <8 x float> poison, <8 x i32> zeroinitializer
  %820 = insertelement <8 x float> poison, float %793, i64 0
  %821 = shufflevector <8 x float> %820, <8 x float> poison, <8 x i32> zeroinitializer
  %822 = insertelement <8 x float> poison, float %623, i64 0
  %823 = shufflevector <8 x float> %822, <8 x float> poison, <8 x i32> zeroinitializer
  %824 = insertelement <8 x float> poison, float %803, i64 0
  %825 = shufflevector <8 x float> %824, <8 x float> poison, <8 x i32> zeroinitializer
  %826 = insertelement <8 x float> poison, float %790, i64 0
  %827 = shufflevector <8 x float> %826, <8 x float> poison, <8 x i32> zeroinitializer
  %828 = insertelement <8 x float> poison, float %792, i64 0
  %829 = shufflevector <8 x float> %828, <8 x float> poison, <8 x i32> zeroinitializer
  %830 = insertelement <8 x float> poison, float %622, i64 0
  %831 = shufflevector <8 x float> %830, <8 x float> poison, <8 x i32> zeroinitializer
  %832 = insertelement <8 x float> poison, float %805, i64 0
  %833 = shufflevector <8 x float> %832, <8 x float> poison, <8 x i32> zeroinitializer
  br label %834

834:                                              ; preds = %834, %813
  %835 = phi i64 [ 0, %813 ], [ %1031, %834 ]
  %836 = getelementptr inbounds nuw [14 x i8], ptr %810, i64 %835
  %837 = getelementptr inbounds nuw [14 x i8], ptr %810, i64 %835
  %838 = getelementptr inbounds nuw i8, ptr %837, i64 14
  %839 = getelementptr inbounds nuw [14 x i8], ptr %810, i64 %835
  %840 = getelementptr inbounds nuw i8, ptr %839, i64 28
  %841 = getelementptr inbounds nuw [14 x i8], ptr %810, i64 %835
  %842 = getelementptr inbounds nuw i8, ptr %841, i64 42
  %843 = getelementptr inbounds nuw [14 x i8], ptr %810, i64 %835
  %844 = getelementptr inbounds nuw i8, ptr %843, i64 56
  %845 = getelementptr inbounds nuw [14 x i8], ptr %810, i64 %835
  %846 = getelementptr inbounds nuw i8, ptr %845, i64 70
  %847 = getelementptr inbounds nuw [14 x i8], ptr %810, i64 %835
  %848 = getelementptr inbounds nuw i8, ptr %847, i64 84
  %849 = getelementptr inbounds nuw [14 x i8], ptr %810, i64 %835
  %850 = getelementptr inbounds nuw i8, ptr %849, i64 98
  %851 = load i16, ptr %836, align 2, !tbaa !48
  %852 = load i16, ptr %838, align 2, !tbaa !48
  %853 = load i16, ptr %840, align 2, !tbaa !48
  %854 = load i16, ptr %842, align 2, !tbaa !48
  %855 = load i16, ptr %844, align 2, !tbaa !48
  %856 = load i16, ptr %846, align 2, !tbaa !48
  %857 = load i16, ptr %848, align 2, !tbaa !48
  %858 = load i16, ptr %850, align 2, !tbaa !48
  %859 = insertelement <8 x i16> poison, i16 %851, i64 0
  %860 = insertelement <8 x i16> %859, i16 %852, i64 1
  %861 = insertelement <8 x i16> %860, i16 %853, i64 2
  %862 = insertelement <8 x i16> %861, i16 %854, i64 3
  %863 = insertelement <8 x i16> %862, i16 %855, i64 4
  %864 = insertelement <8 x i16> %863, i16 %856, i64 5
  %865 = insertelement <8 x i16> %864, i16 %857, i64 6
  %866 = insertelement <8 x i16> %865, i16 %858, i64 7
  %867 = getelementptr inbounds nuw i8, ptr %836, i64 2
  %868 = getelementptr inbounds nuw i8, ptr %837, i64 16
  %869 = getelementptr inbounds nuw i8, ptr %839, i64 30
  %870 = getelementptr inbounds nuw i8, ptr %841, i64 44
  %871 = getelementptr inbounds nuw i8, ptr %843, i64 58
  %872 = getelementptr inbounds nuw i8, ptr %845, i64 72
  %873 = getelementptr inbounds nuw i8, ptr %847, i64 86
  %874 = getelementptr inbounds nuw i8, ptr %849, i64 100
  %875 = load i16, ptr %867, align 2, !tbaa !49
  %876 = load i16, ptr %868, align 2, !tbaa !49
  %877 = load i16, ptr %869, align 2, !tbaa !49
  %878 = load i16, ptr %870, align 2, !tbaa !49
  %879 = load i16, ptr %871, align 2, !tbaa !49
  %880 = load i16, ptr %872, align 2, !tbaa !49
  %881 = load i16, ptr %873, align 2, !tbaa !49
  %882 = load i16, ptr %874, align 2, !tbaa !49
  %883 = insertelement <8 x i16> poison, i16 %875, i64 0
  %884 = insertelement <8 x i16> %883, i16 %876, i64 1
  %885 = insertelement <8 x i16> %884, i16 %877, i64 2
  %886 = insertelement <8 x i16> %885, i16 %878, i64 3
  %887 = insertelement <8 x i16> %886, i16 %879, i64 4
  %888 = insertelement <8 x i16> %887, i16 %880, i64 5
  %889 = insertelement <8 x i16> %888, i16 %881, i64 6
  %890 = insertelement <8 x i16> %889, i16 %882, i64 7
  %891 = sitofp <8 x i16> %866 to <8 x float>
  %892 = sitofp <8 x i16> %890 to <8 x float>
  %893 = fmul nnan <8 x float> %819, %892
  %894 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %821, <8 x float> %891, <8 x float> %893)
  %895 = fadd <8 x float> %823, %894
  %896 = fmul <8 x float> %895, %825
  %897 = fcmp ord <8 x float> %896, zeroinitializer
  %898 = fcmp ogt <8 x float> %896, splat (float 3.276700e+04)
  %899 = xor <8 x i1> %898, %897
  %900 = fcmp olt <8 x float> %896, splat (float -3.276800e+04)
  %901 = xor <8 x i1> %900, %899
  %902 = fptosi <8 x float> %896 to <8 x i16>
  %903 = select <8 x i1> %898, <8 x i16> splat (i16 32767), <8 x i16> zeroinitializer
  %904 = select <8 x i1> %900, <8 x i16> splat (i16 -32768), <8 x i16> %903
  %905 = select <8 x i1> %901, <8 x i16> %902, <8 x i16> %904
  %906 = extractelement <8 x i16> %905, i64 4
  store i16 %906, ptr %844, align 2, !tbaa !48
  %907 = extractelement <8 x i16> %905, i64 5
  store i16 %907, ptr %846, align 2, !tbaa !48
  %908 = extractelement <8 x i16> %905, i64 6
  store i16 %908, ptr %848, align 2, !tbaa !48
  %909 = extractelement <8 x i16> %905, i64 7
  store i16 %909, ptr %850, align 2, !tbaa !48
  %910 = fmul nnan <8 x float> %827, %892
  %911 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %829, <8 x float> %891, <8 x float> %910)
  %912 = fadd <8 x float> %831, %911
  %913 = fmul <8 x float> %912, %833
  %914 = fcmp ord <8 x float> %913, zeroinitializer
  %915 = fcmp ogt <8 x float> %913, splat (float 3.276700e+04)
  %916 = xor <8 x i1> %915, %914
  %917 = fcmp olt <8 x float> %913, splat (float -3.276800e+04)
  %918 = xor <8 x i1> %917, %916
  %919 = fptosi <8 x float> %913 to <8 x i16>
  %920 = select <8 x i1> %915, <8 x i16> splat (i16 32767), <8 x i16> zeroinitializer
  %921 = select <8 x i1> %917, <8 x i16> splat (i16 -32768), <8 x i16> %920
  %922 = select <8 x i1> %918, <8 x i16> %919, <8 x i16> %921
  %923 = extractelement <8 x i16> %922, i64 4
  store i16 %923, ptr %871, align 2, !tbaa !49
  %924 = extractelement <8 x i16> %922, i64 5
  store i16 %924, ptr %872, align 2, !tbaa !49
  %925 = extractelement <8 x i16> %922, i64 6
  store i16 %925, ptr %873, align 2, !tbaa !49
  %926 = extractelement <8 x i16> %922, i64 7
  store i16 %926, ptr %874, align 2, !tbaa !49
  %927 = getelementptr inbounds nuw i8, ptr %836, i64 4
  %928 = getelementptr inbounds nuw i8, ptr %837, i64 18
  %929 = getelementptr inbounds nuw i8, ptr %839, i64 32
  %930 = getelementptr inbounds nuw i8, ptr %841, i64 46
  %931 = getelementptr inbounds nuw i8, ptr %843, i64 60
  %932 = getelementptr inbounds nuw i8, ptr %845, i64 74
  %933 = getelementptr inbounds nuw i8, ptr %847, i64 88
  %934 = getelementptr inbounds nuw i8, ptr %849, i64 102
  %935 = load i16, ptr %927, align 2, !tbaa !46
  %936 = load i16, ptr %928, align 2, !tbaa !46
  %937 = load i16, ptr %929, align 2, !tbaa !46
  %938 = load i16, ptr %930, align 2, !tbaa !46
  %939 = load i16, ptr %931, align 2, !tbaa !46
  %940 = load i16, ptr %932, align 2, !tbaa !46
  %941 = load i16, ptr %933, align 2, !tbaa !46
  %942 = load i16, ptr %934, align 2, !tbaa !46
  %943 = insertelement <8 x i16> poison, i16 %935, i64 0
  %944 = insertelement <8 x i16> %943, i16 %936, i64 1
  %945 = insertelement <8 x i16> %944, i16 %937, i64 2
  %946 = insertelement <8 x i16> %945, i16 %938, i64 3
  %947 = insertelement <8 x i16> %946, i16 %939, i64 4
  %948 = insertelement <8 x i16> %947, i16 %940, i64 5
  %949 = insertelement <8 x i16> %948, i16 %941, i64 6
  %950 = insertelement <8 x i16> %949, i16 %942, i64 7
  %951 = getelementptr inbounds nuw i8, ptr %836, i64 6
  %952 = getelementptr inbounds nuw i8, ptr %837, i64 20
  %953 = getelementptr inbounds nuw i8, ptr %839, i64 34
  %954 = getelementptr inbounds nuw i8, ptr %841, i64 48
  %955 = getelementptr inbounds nuw i8, ptr %843, i64 62
  %956 = getelementptr inbounds nuw i8, ptr %845, i64 76
  %957 = getelementptr inbounds nuw i8, ptr %847, i64 90
  %958 = getelementptr inbounds nuw i8, ptr %849, i64 104
  %959 = load i16, ptr %951, align 2, !tbaa !47
  %960 = load i16, ptr %952, align 2, !tbaa !47
  %961 = load i16, ptr %953, align 2, !tbaa !47
  %962 = load i16, ptr %954, align 2, !tbaa !47
  %963 = load i16, ptr %955, align 2, !tbaa !47
  %964 = load i16, ptr %956, align 2, !tbaa !47
  %965 = load i16, ptr %957, align 2, !tbaa !47
  %966 = load i16, ptr %958, align 2, !tbaa !47
  %967 = insertelement <8 x i16> poison, i16 %959, i64 0
  %968 = insertelement <8 x i16> %967, i16 %960, i64 1
  %969 = insertelement <8 x i16> %968, i16 %961, i64 2
  %970 = insertelement <8 x i16> %969, i16 %962, i64 3
  %971 = insertelement <8 x i16> %970, i16 %963, i64 4
  %972 = insertelement <8 x i16> %971, i16 %964, i64 5
  %973 = insertelement <8 x i16> %972, i16 %965, i64 6
  %974 = insertelement <8 x i16> %973, i16 %966, i64 7
  %975 = sitofp <8 x i16> %950 to <8 x float>
  %976 = sitofp <8 x i16> %974 to <8 x float>
  %977 = fmul nnan <8 x float> %819, %976
  %978 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %821, <8 x float> %975, <8 x float> %977)
  %979 = fadd <8 x float> %823, %978
  %980 = fmul <8 x float> %979, %825
  %981 = fcmp ord <8 x float> %980, zeroinitializer
  %982 = fcmp ogt <8 x float> %980, splat (float 3.276700e+04)
  %983 = xor <8 x i1> %982, %981
  %984 = fcmp olt <8 x float> %980, splat (float -3.276800e+04)
  %985 = xor <8 x i1> %984, %983
  %986 = fptosi <8 x float> %980 to <8 x i16>
  %987 = select <8 x i1> %982, <8 x i16> splat (i16 32767), <8 x i16> zeroinitializer
  %988 = select <8 x i1> %984, <8 x i16> splat (i16 -32768), <8 x i16> %987
  %989 = select <8 x i1> %985, <8 x i16> %986, <8 x i16> %988
  %990 = extractelement <8 x i16> %989, i64 4
  store i16 %990, ptr %931, align 2, !tbaa !46
  %991 = extractelement <8 x i16> %989, i64 5
  store i16 %991, ptr %932, align 2, !tbaa !46
  %992 = extractelement <8 x i16> %989, i64 6
  store i16 %992, ptr %933, align 2, !tbaa !46
  %993 = extractelement <8 x i16> %989, i64 7
  store i16 %993, ptr %934, align 2, !tbaa !46
  %994 = fmul nnan <8 x float> %827, %976
  %995 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %829, <8 x float> %975, <8 x float> %994)
  %996 = fadd <8 x float> %831, %995
  %997 = fmul <8 x float> %996, %833
  %998 = fcmp ord <8 x float> %997, zeroinitializer
  %999 = fcmp ogt <8 x float> %997, splat (float 3.276700e+04)
  %1000 = xor <8 x i1> %999, %998
  %1001 = fcmp olt <8 x float> %997, splat (float -3.276800e+04)
  %1002 = xor <8 x i1> %1001, %1000
  %1003 = fptosi <8 x float> %997 to <8 x i16>
  %1004 = select <8 x i1> %999, <8 x i16> splat (i16 32767), <8 x i16> zeroinitializer
  %1005 = select <8 x i1> %1001, <8 x i16> splat (i16 -32768), <8 x i16> %1004
  %1006 = select <8 x i1> %1002, <8 x i16> %1003, <8 x i16> %1005
  %1007 = shufflevector <8 x i16> %905, <8 x i16> %922, <4 x i32> <i32 0, i32 8, i32 poison, i32 poison>
  %1008 = shufflevector <8 x i16> %989, <8 x i16> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %1009 = shufflevector <4 x i16> %1007, <4 x i16> %1008, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %1010 = shufflevector <8 x i16> %1006, <8 x i16> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %1011 = shufflevector <4 x i16> %1009, <4 x i16> %1010, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  store <4 x i16> %1011, ptr %836, align 2, !tbaa !43
  %1012 = shufflevector <8 x i16> %905, <8 x i16> %922, <4 x i32> <i32 1, i32 9, i32 poison, i32 poison>
  %1013 = shufflevector <8 x i16> %989, <8 x i16> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %1014 = shufflevector <4 x i16> %1012, <4 x i16> %1013, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %1015 = shufflevector <8 x i16> %1006, <8 x i16> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %1016 = shufflevector <4 x i16> %1014, <4 x i16> %1015, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  store <4 x i16> %1016, ptr %838, align 2, !tbaa !43
  %1017 = shufflevector <8 x i16> %905, <8 x i16> %922, <4 x i32> <i32 2, i32 10, i32 poison, i32 poison>
  %1018 = shufflevector <8 x i16> %989, <8 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 2, i32 poison>
  %1019 = shufflevector <4 x i16> %1017, <4 x i16> %1018, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %1020 = shufflevector <8 x i16> %1006, <8 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 2, i32 poison>
  %1021 = shufflevector <4 x i16> %1019, <4 x i16> %1020, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  store <4 x i16> %1021, ptr %840, align 2, !tbaa !43
  %1022 = shufflevector <8 x i16> %905, <8 x i16> %922, <4 x i32> <i32 3, i32 11, i32 poison, i32 poison>
  %1023 = shufflevector <8 x i16> %989, <8 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 3>
  %1024 = shufflevector <4 x i16> %1022, <4 x i16> %1023, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %1025 = shufflevector <8 x i16> %1006, <8 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 3>
  %1026 = shufflevector <4 x i16> %1024, <4 x i16> %1025, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  store <4 x i16> %1026, ptr %842, align 2, !tbaa !43
  %1027 = extractelement <8 x i16> %1006, i64 4
  store i16 %1027, ptr %955, align 2, !tbaa !47
  %1028 = extractelement <8 x i16> %1006, i64 5
  store i16 %1028, ptr %956, align 2, !tbaa !47
  %1029 = extractelement <8 x i16> %1006, i64 6
  store i16 %1029, ptr %957, align 2, !tbaa !47
  %1030 = extractelement <8 x i16> %1006, i64 7
  store i16 %1030, ptr %958, align 2, !tbaa !47
  %1031 = add nuw i64 %835, 8
  %1032 = icmp eq i64 %1031, %817
  br i1 %1032, label %1033, label %834, !llvm.loop !133

1033:                                             ; preds = %834, %809
  %1034 = phi i64 [ 0, %809 ], [ %817, %834 ]
  br label %1035

1035:                                             ; preds = %1033, %1099
  %1036 = phi i64 [ %1101, %1099 ], [ %1034, %1033 ]
  %1037 = getelementptr inbounds nuw [14 x i8], ptr %810, i64 %1036
  %1038 = load i16, ptr %1037, align 2, !tbaa !48
  %1039 = getelementptr inbounds nuw i8, ptr %1037, i64 2
  %1040 = load i16, ptr %1039, align 2, !tbaa !49
  %1041 = sitofp i16 %1038 to float
  %1042 = sitofp i16 %1040 to float
  %1043 = fmul nnan float %791, %1042
  %1044 = tail call float @llvm.fmuladd.f32(float %793, float %1041, float %1043)
  %1045 = fadd float %623, %1044
  %1046 = fmul float %1045, %803
  %1047 = fcmp ord float %1046, 0.000000e+00
  br i1 %1047, label %1048, label %1054

1048:                                             ; preds = %1035
  %1049 = fcmp ogt float %1046, 3.276700e+04
  br i1 %1049, label %1054, label %1050

1050:                                             ; preds = %1048
  %1051 = fcmp olt float %1046, -3.276800e+04
  br i1 %1051, label %1054, label %1052

1052:                                             ; preds = %1050
  %1053 = fptosi float %1046 to i16
  br label %1054

1054:                                             ; preds = %1035, %1048, %1050, %1052
  %1055 = phi i16 [ 0, %1035 ], [ 32767, %1048 ], [ %1053, %1052 ], [ -32768, %1050 ]
  store i16 %1055, ptr %1037, align 2, !tbaa !48
  %1056 = fmul nnan float %790, %1042
  %1057 = tail call float @llvm.fmuladd.f32(float %792, float %1041, float %1056)
  %1058 = fadd float %622, %1057
  %1059 = fmul float %1058, %805
  %1060 = fcmp ord float %1059, 0.000000e+00
  br i1 %1060, label %1061, label %1067

1061:                                             ; preds = %1054
  %1062 = fcmp ogt float %1059, 3.276700e+04
  br i1 %1062, label %1067, label %1063

1063:                                             ; preds = %1061
  %1064 = fcmp olt float %1059, -3.276800e+04
  br i1 %1064, label %1067, label %1065

1065:                                             ; preds = %1063
  %1066 = fptosi float %1059 to i16
  br label %1067

1067:                                             ; preds = %1054, %1061, %1063, %1065
  %1068 = phi i16 [ 0, %1054 ], [ 32767, %1061 ], [ %1066, %1065 ], [ -32768, %1063 ]
  store i16 %1068, ptr %1039, align 2, !tbaa !49
  %1069 = getelementptr inbounds nuw i8, ptr %1037, i64 4
  %1070 = load i16, ptr %1069, align 2, !tbaa !46
  %1071 = getelementptr inbounds nuw i8, ptr %1037, i64 6
  %1072 = load i16, ptr %1071, align 2, !tbaa !47
  %1073 = sitofp i16 %1070 to float
  %1074 = sitofp i16 %1072 to float
  %1075 = fmul nnan float %791, %1074
  %1076 = tail call float @llvm.fmuladd.f32(float %793, float %1073, float %1075)
  %1077 = fadd float %623, %1076
  %1078 = fmul float %1077, %803
  %1079 = fcmp ord float %1078, 0.000000e+00
  br i1 %1079, label %1080, label %1086

1080:                                             ; preds = %1067
  %1081 = fcmp ogt float %1078, 3.276700e+04
  br i1 %1081, label %1086, label %1082

1082:                                             ; preds = %1080
  %1083 = fcmp olt float %1078, -3.276800e+04
  br i1 %1083, label %1086, label %1084

1084:                                             ; preds = %1082
  %1085 = fptosi float %1078 to i16
  br label %1086

1086:                                             ; preds = %1067, %1080, %1082, %1084
  %1087 = phi i16 [ 0, %1067 ], [ 32767, %1080 ], [ %1085, %1084 ], [ -32768, %1082 ]
  store i16 %1087, ptr %1069, align 2, !tbaa !46
  %1088 = fmul nnan float %790, %1074
  %1089 = tail call float @llvm.fmuladd.f32(float %792, float %1073, float %1088)
  %1090 = fadd float %622, %1089
  %1091 = fmul float %1090, %805
  %1092 = fcmp ord float %1091, 0.000000e+00
  br i1 %1092, label %1093, label %1099

1093:                                             ; preds = %1086
  %1094 = fcmp ogt float %1091, 3.276700e+04
  br i1 %1094, label %1099, label %1095

1095:                                             ; preds = %1093
  %1096 = fcmp olt float %1091, -3.276800e+04
  br i1 %1096, label %1099, label %1097

1097:                                             ; preds = %1095
  %1098 = fptosi float %1091 to i16
  br label %1099

1099:                                             ; preds = %1086, %1093, %1095, %1097
  %1100 = phi i16 [ 0, %1086 ], [ 32767, %1093 ], [ %1098, %1097 ], [ -32768, %1095 ]
  store i16 %1100, ptr %1071, align 2, !tbaa !47
  %1101 = add nuw nsw i64 %1036, 1
  %1102 = icmp eq i64 %1101, %811
  br i1 %1102, label %1103, label %1035, !llvm.loop !134

1103:                                             ; preds = %1099
  %1104 = add i32 %807, %522
  %1105 = sext i32 %1104 to i64
  %1106 = mul nsw i64 %1105, 14
  %1107 = add nsw i64 %1106, 14
  %1108 = and i64 %1107, -16
  %1109 = load i64, ptr @arena_used, align 8, !tbaa !41
  %1110 = sub i64 8388608, %1109
  %1111 = icmp ugt i64 %1108, %1110
  br i1 %1111, label %1132, label %1112

1112:                                             ; preds = %1103
  %1113 = getelementptr inbounds nuw i8, ptr @arena, i64 %1109
  %1114 = add i64 %1109, %1108
  store i64 %1114, ptr @arena_used, align 8, !tbaa !41
  %1115 = icmp sgt i32 %522, 0
  %1116 = icmp ne ptr %521, null
  %1117 = select i1 %1115, i1 %1116, i1 false
  br i1 %1117, label %1118, label %1122

1118:                                             ; preds = %1112
  %1119 = zext nneg i32 %522 to i64
  %1120 = mul nuw nsw i64 %1119, 14
  %1121 = tail call ptr @memcpy(ptr noundef nonnull %1113, ptr noundef nonnull %521, i64 noundef %1120) #17, !inline_history !128
  br label %1122

1122:                                             ; preds = %1118, %1112
  %1123 = sext i32 %522 to i64
  %1124 = getelementptr inbounds [14 x i8], ptr %1113, i64 %1123
  %1125 = mul nuw nsw i64 %811, 14
  %1126 = tail call ptr @memcpy(ptr noundef nonnull %1124, ptr noundef nonnull %810, i64 noundef %1125) #17, !inline_history !128
  br label %1127

1127:                                             ; preds = %788, %1122
  %1128 = phi i32 [ %1104, %1122 ], [ %522, %788 ]
  %1129 = phi ptr [ %1113, %1122 ], [ %521, %788 ]
  %1130 = and i32 %534, 32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %1131 = icmp eq i32 %1130, 0
  br i1 %1131, label %1133, label %520, !llvm.loop !135

1132:                                             ; preds = %1103
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %1162

1133:                                             ; preds = %1127, %509, %516
  %1134 = phi i32 [ %515, %509 ], [ 0, %516 ], [ %1128, %1127 ]
  %1135 = phi ptr [ %110, %509 ], [ null, %516 ], [ %1129, %1127 ]
  store ptr %1135, ptr %2, align 8, !tbaa !33
  br label %1162

1136:                                             ; preds = %18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false)
  store i32 1, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false)
  %1137 = call fastcc i32 @stbtt__run_charstring(ptr noundef nonnull readonly %0, i32 noundef %1, ptr noundef %4) #16
  %1138 = icmp eq i32 %1137, 0
  br i1 %1138, label %1159, label %1139

1139:                                             ; preds = %1136
  %1140 = getelementptr inbounds nuw i8, ptr %4, i64 48
  %1141 = load i32, ptr %1140, align 8, !tbaa !117
  %1142 = sext i32 %1141 to i64
  %1143 = mul nsw i64 %1142, 14
  %1144 = add nsw i64 %1143, 14
  %1145 = and i64 %1144, -16
  %1146 = load i64, ptr @arena_used, align 8, !tbaa !41
  %1147 = sub i64 8388608, %1146
  %1148 = icmp ugt i64 %1145, %1147
  br i1 %1148, label %1149, label %1150

1149:                                             ; preds = %1139
  store ptr null, ptr %2, align 8, !tbaa !33
  br label %1160

1150:                                             ; preds = %1139
  %1151 = getelementptr inbounds nuw i8, ptr @arena, i64 %1146
  %1152 = add i64 %1145, %1146
  store i64 %1152, ptr @arena_used, align 8, !tbaa !41
  store ptr %1151, ptr %2, align 8, !tbaa !33
  %1153 = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %1151, ptr %1153, align 8, !tbaa !115
  %1154 = call fastcc i32 @stbtt__run_charstring(ptr noundef nonnull readonly %0, i32 noundef %1, ptr noundef %5) #16
  %1155 = icmp eq i32 %1154, 0
  br i1 %1155, label %1159, label %1156

1156:                                             ; preds = %1150
  %1157 = getelementptr inbounds nuw i8, ptr %5, i64 48
  %1158 = load i32, ptr %1157, align 8, !tbaa !117
  br label %1160

1159:                                             ; preds = %1150, %1136
  store ptr null, ptr %2, align 8, !tbaa !33
  br label %1160

1160:                                             ; preds = %1149, %1156, %1159
  %1161 = phi i32 [ 0, %1159 ], [ %1158, %1156 ], [ 0, %1149 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %1162

1162:                                             ; preds = %1132, %97, %1133, %24, %1160
  %1163 = phi i32 [ %1161, %1160 ], [ 0, %1132 ], [ %1134, %1133 ], [ 0, %24 ], [ 0, %97 ]
  %1164 = load i32, ptr @stbtt_GetGlyphShape.depth, align 4, !tbaa !23
  %1165 = add i32 %1164, -1
  store i32 %1165, ptr @stbtt_GetGlyphShape.depth, align 4, !tbaa !23
  br label %1166

1166:                                             ; preds = %1162, %17
  %1167 = phi i32 [ 0, %17 ], [ %1163, %1162 ]
  ret i32 %1167
}

declare ptr @memset(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #11

declare ptr @memcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite)
define internal fastcc void @stbtt__tesselate_curve(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef nonnull captures(none) %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, i32 noundef %9) unnamed_addr #12 {
  %11 = icmp sgt i32 %9, 16
  br i1 %11, label %60, label %12

12:                                               ; preds = %10
  %13 = insertelement <2 x float> poison, float %4, i64 0
  %14 = insertelement <2 x float> %13, float %5, i64 1
  %15 = insertelement <2 x float> poison, float %2, i64 0
  %16 = insertelement <2 x float> %15, float %3, i64 1
  %17 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %14, <2 x float> splat (float 2.000000e+00), <2 x float> %16)
  %18 = insertelement <2 x float> poison, float %6, i64 0
  %19 = insertelement <2 x float> %18, float %7, i64 1
  br label %20

20:                                               ; preds = %12, %39
  %21 = phi i32 [ %46, %39 ], [ %9, %12 ]
  %22 = phi float [ %30, %39 ], [ %3, %12 ]
  %23 = phi float [ %34, %39 ], [ %2, %12 ]
  %24 = phi <2 x float> [ %48, %39 ], [ %14, %12 ]
  %25 = phi <2 x float> [ %49, %39 ], [ %17, %12 ]
  %26 = fadd <2 x float> %19, %25
  %27 = fmul <2 x float> %26, splat (float 2.500000e-01)
  %28 = fadd float %7, %22
  %29 = fmul float %28, 5.000000e-01
  %30 = extractelement <2 x float> %27, i64 1
  %31 = fsub float %29, %30
  %32 = fadd float %6, %23
  %33 = fmul float %32, 5.000000e-01
  %34 = extractelement <2 x float> %27, i64 0
  %35 = fsub float %33, %34
  %36 = fmul float %31, %31
  %37 = tail call float @llvm.fmuladd.f32(float %35, float %35, float %36)
  %38 = fcmp ogt float %37, %8
  br i1 %38, label %39, label %51

39:                                               ; preds = %20
  %40 = extractelement <2 x float> %24, i64 0
  %41 = fadd float %23, %40
  %42 = fmul float %41, 5.000000e-01
  %43 = extractelement <2 x float> %24, i64 1
  %44 = fadd float %22, %43
  %45 = fmul float %44, 5.000000e-01
  %46 = add nsw i32 %21, 1
  tail call fastcc void @stbtt__tesselate_curve(ptr noundef %0, ptr noundef %1, float noundef %23, float noundef %22, float noundef %42, float noundef %45, float noundef %34, float noundef %30, float noundef %8, i32 noundef %46) #16
  %47 = fadd <2 x float> %19, %24
  %48 = fmul <2 x float> %47, splat (float 5.000000e-01)
  %49 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %48, <2 x float> splat (float 2.000000e+00), <2 x float> %27)
  %50 = icmp eq i32 %46, 17
  br i1 %50, label %60, label %20

51:                                               ; preds = %20
  %52 = load i32, ptr %1, align 4, !tbaa !23
  %53 = icmp eq ptr %0, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %51
  %55 = sext i32 %52 to i64
  %56 = getelementptr inbounds [8 x i8], ptr %0, i64 %55
  store float %6, ptr %56, align 4, !tbaa !136
  %57 = getelementptr inbounds nuw i8, ptr %56, i64 4
  store float %7, ptr %57, align 4, !tbaa !56
  br label %58

58:                                               ; preds = %51, %54
  %59 = add i32 %52, 1
  store i32 %59, ptr %1, align 4, !tbaa !23
  br label %60

60:                                               ; preds = %39, %10, %58
  ret void
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite)
define internal fastcc void @stbtt__tesselate_cubic(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef nonnull captures(none) %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, float noundef %9, float noundef %10, i32 noundef %11) unnamed_addr #12 {
  %13 = icmp sgt i32 %11, 16
  br i1 %13, label %111, label %14

14:                                               ; preds = %12
  %15 = insertelement <2 x float> poison, float %3, i64 0
  %16 = insertelement <2 x float> %15, float %5, i64 1
  %17 = insertelement <2 x float> poison, float %5, i64 0
  %18 = insertelement <2 x float> %17, float %7, i64 1
  %19 = insertelement <2 x float> poison, float %2, i64 0
  %20 = insertelement <2 x float> %19, float %4, i64 1
  %21 = insertelement <2 x float> poison, float %4, i64 0
  %22 = insertelement <2 x float> %21, float %6, i64 1
  %23 = insertelement <2 x float> poison, float %8, i64 0
  %24 = shufflevector <2 x float> %23, <2 x float> poison, <2 x i32> zeroinitializer
  %25 = insertelement <2 x float> poison, float %9, i64 0
  %26 = shufflevector <2 x float> %25, <2 x float> poison, <2 x i32> zeroinitializer
  br label %27

27:                                               ; preds = %14, %67
  %28 = phi i32 [ %92, %67 ], [ %11, %14 ]
  %29 = phi float [ %87, %67 ], [ %7, %14 ]
  %30 = phi float [ %77, %67 ], [ %6, %14 ]
  %31 = phi float [ %89, %67 ], [ %5, %14 ]
  %32 = phi float [ %84, %67 ], [ %4, %14 ]
  %33 = phi float [ %91, %67 ], [ %3, %14 ]
  %34 = phi float [ %86, %67 ], [ %2, %14 ]
  %35 = phi <2 x float> [ %95, %67 ], [ %22, %14 ]
  %36 = phi <2 x float> [ %97, %67 ], [ %20, %14 ]
  %37 = phi <2 x float> [ %99, %67 ], [ %18, %14 ]
  %38 = phi <2 x float> [ %101, %67 ], [ %16, %14 ]
  %39 = insertelement <2 x float> poison, float %34, i64 0
  %40 = insertelement <2 x float> %39, float %30, i64 1
  %41 = fsub <2 x float> %24, %40
  %42 = insertelement <2 x float> poison, float %33, i64 0
  %43 = insertelement <2 x float> %42, float %29, i64 1
  %44 = fsub <2 x float> %26, %43
  %45 = fmul <2 x float> %44, %44
  %46 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %41, <2 x float> %41, <2 x float> %45)
  %47 = fpext <2 x float> %46 to <2 x double>
  %48 = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %47)
  %49 = fsub <2 x float> %35, %36
  %50 = fsub <2 x float> %37, %38
  %51 = fmul <2 x float> %50, %50
  %52 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %49, <2 x float> %49, <2 x float> %51)
  %53 = fpext <2 x float> %52 to <2 x double>
  %54 = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %53)
  %55 = shufflevector <2 x double> %54, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %56 = fadd <2 x double> %54, %55
  %57 = shufflevector <2 x double> %48, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %58 = fadd <2 x double> %57, %56
  %59 = extractelement <2 x double> %58, i64 0
  %60 = fptrunc double %59 to float
  %61 = extractelement <2 x double> %48, i64 0
  %62 = fptrunc double %61 to float
  %63 = fneg float %62
  %64 = fmul float %62, %63
  %65 = tail call float @llvm.fmuladd.f32(float %60, float %60, float %64)
  %66 = fcmp ogt float %65, %10
  br i1 %66, label %67, label %102

67:                                               ; preds = %27
  %68 = fadd float %34, %32
  %69 = fmul float %68, 5.000000e-01
  %70 = fadd float %33, %31
  %71 = fmul float %70, 5.000000e-01
  %72 = fadd float %32, %30
  %73 = fmul float %72, 5.000000e-01
  %74 = fadd float %31, %29
  %75 = fmul float %74, 5.000000e-01
  %76 = fadd float %8, %30
  %77 = fmul float %76, 5.000000e-01
  %78 = fadd float %9, %29
  %79 = fadd float %69, %73
  %80 = fmul float %79, 5.000000e-01
  %81 = fadd float %71, %75
  %82 = fmul float %81, 5.000000e-01
  %83 = fadd float %73, %77
  %84 = fmul float %83, 5.000000e-01
  %85 = fadd float %80, %84
  %86 = fmul float %85, 5.000000e-01
  %87 = fmul float %78, 5.000000e-01
  %88 = fadd float %75, %87
  %89 = fmul float %88, 5.000000e-01
  %90 = fadd float %82, %89
  %91 = fmul float %90, 5.000000e-01
  %92 = add nsw i32 %28, 1
  tail call fastcc void @stbtt__tesselate_cubic(ptr noundef %0, ptr noundef %1, float noundef %34, float noundef %33, float noundef %69, float noundef %71, float noundef %80, float noundef %82, float noundef %86, float noundef %91, float noundef %10, i32 noundef %92) #16
  %93 = icmp eq i32 %92, 17
  %94 = insertelement <2 x float> poison, float %84, i64 0
  %95 = insertelement <2 x float> %94, float %77, i64 1
  %96 = insertelement <2 x float> poison, float %86, i64 0
  %97 = insertelement <2 x float> %96, float %84, i64 1
  %98 = insertelement <2 x float> poison, float %89, i64 0
  %99 = insertelement <2 x float> %98, float %87, i64 1
  %100 = insertelement <2 x float> poison, float %91, i64 0
  %101 = insertelement <2 x float> %100, float %89, i64 1
  br i1 %93, label %111, label %27

102:                                              ; preds = %27
  %103 = load i32, ptr %1, align 4, !tbaa !23
  %104 = icmp eq ptr %0, null
  br i1 %104, label %109, label %105

105:                                              ; preds = %102
  %106 = sext i32 %103 to i64
  %107 = getelementptr inbounds [8 x i8], ptr %0, i64 %106
  store float %8, ptr %107, align 4, !tbaa !136
  %108 = getelementptr inbounds nuw i8, ptr %107, i64 4
  store float %9, ptr %108, align 4, !tbaa !56
  br label %109

109:                                              ; preds = %102, %105
  %110 = add i32 %103, 1
  store i32 %110, ptr %1, align 4, !tbaa !23
  br label %111

111:                                              ; preds = %67, %12, %109
  ret void
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite)
define internal fastcc void @stbtt__sort_edges_quicksort(ptr noundef nonnull %0, i32 noundef %1) unnamed_addr #12 {
  %3 = alloca %struct.stbtt__edge, align 4
  %4 = icmp sgt i32 %1, 12
  br i1 %4, label %5, label %62

5:                                                ; preds = %2, %58
  %6 = phi ptr [ %60, %58 ], [ %0, %2 ]
  %7 = phi i32 [ %59, %58 ], [ %1, %2 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %8 = lshr i32 %7, 1
  %9 = getelementptr inbounds nuw i8, ptr %6, i64 4
  %10 = load float, ptr %9, align 4, !tbaa !63
  %11 = zext nneg i32 %8 to i64
  %12 = getelementptr inbounds nuw [20 x i8], ptr %6, i64 %11
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 4
  %14 = load float, ptr %13, align 4, !tbaa !63
  %15 = add nsw i32 %7, -1
  %16 = zext nneg i32 %15 to i64
  %17 = getelementptr inbounds nuw [20 x i8], ptr %6, i64 %16
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 4
  %19 = load float, ptr %18, align 4, !tbaa !63
  %20 = fcmp olt float %14, %19
  %21 = fcmp uge float %10, %14
  %22 = xor i1 %21, %20
  br i1 %22, label %28, label %23

23:                                               ; preds = %5
  %24 = fcmp uge float %10, %19
  %25 = xor i1 %24, %20
  %26 = select i1 %25, i64 0, i64 %16
  %27 = getelementptr inbounds nuw [20 x i8], ptr %6, i64 %26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %27, i64 20, i1 false), !tbaa.struct !64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %27, ptr noundef nonnull align 4 dereferenceable(20) %12, i64 20, i1 false), !tbaa.struct !64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %12, ptr noundef nonnull align 4 dereferenceable(20) %3, i64 20, i1 false), !tbaa.struct !64
  br label %28

28:                                               ; preds = %23, %5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %6, i64 20, i1 false), !tbaa.struct !64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %6, ptr noundef nonnull align 4 dereferenceable(20) %12, i64 20, i1 false), !tbaa.struct !64
  br label %29

29:                                               ; preds = %52, %28
  %30 = phi ptr [ %45, %52 ], [ %12, %28 ]
  %31 = phi i32 [ %41, %52 ], [ 1, %28 ]
  %32 = phi i32 [ %49, %52 ], [ %15, %28 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %30, ptr noundef nonnull align 4 dereferenceable(20) %3, i64 20, i1 false)
  %33 = load float, ptr %9, align 4, !tbaa !63
  br label %34

34:                                               ; preds = %34, %29
  %35 = phi i32 [ %31, %29 ], [ %41, %34 ]
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [20 x i8], ptr %6, i64 %36
  %38 = getelementptr inbounds nuw i8, ptr %37, i64 4
  %39 = load float, ptr %38, align 4, !tbaa !63
  %40 = fcmp olt float %39, %33
  %41 = add i32 %35, 1
  br i1 %40, label %34, label %42

42:                                               ; preds = %34, %42
  %43 = phi i32 [ %49, %42 ], [ %32, %34 ]
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [20 x i8], ptr %6, i64 %44
  %46 = getelementptr inbounds nuw i8, ptr %45, i64 4
  %47 = load float, ptr %46, align 4, !tbaa !63
  %48 = fcmp olt float %33, %47
  %49 = add i32 %43, -1
  br i1 %48, label %42, label %50

50:                                               ; preds = %42
  %51 = icmp slt i32 %35, %43
  br i1 %51, label %52, label %53

52:                                               ; preds = %50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %37, i64 20, i1 false), !tbaa.struct !64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %37, ptr noundef nonnull align 4 dereferenceable(20) %45, i64 20, i1 false), !tbaa.struct !64
  br label %29

53:                                               ; preds = %50
  %54 = sub i32 %7, %35
  %55 = icmp slt i32 %43, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  tail call fastcc void @stbtt__sort_edges_quicksort(ptr noundef %6, i32 noundef %43) #16
  br label %58

57:                                               ; preds = %53
  tail call fastcc void @stbtt__sort_edges_quicksort(ptr noundef %37, i32 noundef %54) #16
  br label %58

58:                                               ; preds = %57, %56
  %59 = phi i32 [ %54, %56 ], [ %43, %57 ]
  %60 = phi ptr [ %37, %56 ], [ %6, %57 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %61 = icmp sgt i32 %59, 12
  br i1 %61, label %5, label %62, !llvm.loop !137

62:                                               ; preds = %58, %2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none)
define internal fastcc range(i32 -1, 65536) i32 @stbtt__GetGlyphClass(ptr nofree noundef readonly captures(address) %0, i32 noundef %1) unnamed_addr #4 {
  %3 = load ptr, ptr @stbtt__lo, align 8, !tbaa !8
  %4 = icmp uge ptr %0, %3
  %5 = load ptr, ptr @stbtt__hi, align 8
  %6 = icmp ult ptr %0, %5
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load i8, ptr %0, align 1, !tbaa !11
  %10 = zext i8 %9 to i16
  %11 = shl nuw i16 %10, 8
  br label %12

12:                                               ; preds = %8, %2
  %13 = phi i16 [ %11, %8 ], [ 0, %2 ]
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %15 = icmp uge ptr %14, %3
  %16 = icmp ult ptr %14, %5
  %17 = select i1 %15, i1 %16, i1 false
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load i8, ptr %14, align 1, !tbaa !11
  %20 = zext i8 %19 to i16
  %21 = or disjoint i16 %13, %20
  br label %22

22:                                               ; preds = %12, %18
  %23 = phi i16 [ %21, %18 ], [ %13, %12 ]
  switch i16 %23, label %205 [
    i16 1, label %24
    i16 2, label %97
  ]

24:                                               ; preds = %22
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %26 = icmp uge ptr %25, %3
  %27 = icmp ult ptr %25, %5
  %28 = select i1 %26, i1 %27, i1 false
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i8, ptr %25, align 1, !tbaa !11
  %31 = zext i8 %30 to i16
  %32 = shl nuw i16 %31, 8
  br label %33

33:                                               ; preds = %29, %24
  %34 = phi i16 [ %32, %29 ], [ 0, %24 ]
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %36 = icmp uge ptr %35, %3
  %37 = icmp ult ptr %35, %5
  %38 = select i1 %36, i1 %37, i1 false
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load i8, ptr %35, align 1, !tbaa !11
  %41 = zext i8 %40 to i16
  %42 = or disjoint i16 %34, %41
  br label %43

43:                                               ; preds = %33, %39
  %44 = phi i16 [ %42, %39 ], [ %34, %33 ]
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %46 = icmp uge ptr %45, %3
  %47 = icmp ult ptr %45, %5
  %48 = select i1 %46, i1 %47, i1 false
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load i8, ptr %45, align 1, !tbaa !11
  %51 = zext i8 %50 to i16
  %52 = shl nuw i16 %51, 8
  br label %53

53:                                               ; preds = %49, %43
  %54 = phi i16 [ %52, %49 ], [ 0, %43 ]
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 5
  %56 = icmp uge ptr %55, %3
  %57 = icmp ult ptr %55, %5
  %58 = select i1 %56, i1 %57, i1 false
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load i8, ptr %55, align 1, !tbaa !11
  %61 = zext i8 %60 to i16
  %62 = or disjoint i16 %54, %61
  br label %63

63:                                               ; preds = %53, %59
  %64 = phi i16 [ %62, %59 ], [ %54, %53 ]
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %66 = zext i16 %44 to i32
  %67 = icmp slt i32 %1, %66
  br i1 %67, label %205, label %68

68:                                               ; preds = %63
  %69 = zext i16 %64 to i32
  %70 = add nuw nsw i32 %69, %66
  %71 = icmp samesign ult i32 %1, %70
  br i1 %71, label %72, label %205

72:                                               ; preds = %68
  %73 = sub nsw i32 %1, %66
  %74 = shl nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, ptr %65, i64 %75
  %77 = icmp uge ptr %76, %3
  %78 = icmp ult ptr %76, %5
  %79 = select i1 %77, i1 %78, i1 false
  br i1 %79, label %80, label %84

80:                                               ; preds = %72
  %81 = load i8, ptr %76, align 1, !tbaa !11
  %82 = zext i8 %81 to i16
  %83 = shl nuw i16 %82, 8
  br label %84

84:                                               ; preds = %80, %72
  %85 = phi i16 [ %83, %80 ], [ 0, %72 ]
  %86 = getelementptr inbounds nuw i8, ptr %76, i64 1
  %87 = icmp uge ptr %86, %3
  %88 = icmp ult ptr %86, %5
  %89 = select i1 %87, i1 %88, i1 false
  br i1 %89, label %90, label %94

90:                                               ; preds = %84
  %91 = load i8, ptr %86, align 1, !tbaa !11
  %92 = zext i8 %91 to i16
  %93 = or disjoint i16 %85, %92
  br label %94

94:                                               ; preds = %90, %84
  %95 = phi i16 [ %93, %90 ], [ %85, %84 ]
  %96 = zext i16 %95 to i32
  br label %205

97:                                               ; preds = %22
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %99 = icmp uge ptr %98, %3
  %100 = icmp ult ptr %98, %5
  %101 = select i1 %99, i1 %100, i1 false
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = load i8, ptr %98, align 1, !tbaa !11
  %104 = zext i8 %103 to i16
  %105 = shl nuw i16 %104, 8
  br label %106

106:                                              ; preds = %102, %97
  %107 = phi i16 [ %105, %102 ], [ 0, %97 ]
  %108 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %109 = icmp uge ptr %108, %3
  %110 = icmp ult ptr %108, %5
  %111 = select i1 %109, i1 %110, i1 false
  br i1 %111, label %112, label %116

112:                                              ; preds = %106
  %113 = load i8, ptr %108, align 1, !tbaa !11
  %114 = zext i8 %113 to i16
  %115 = or disjoint i16 %107, %114
  br label %116

116:                                              ; preds = %106, %112
  %117 = phi i16 [ %115, %112 ], [ %107, %106 ]
  %118 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %119 = icmp eq i16 %117, 0
  br i1 %119, label %205, label %120

120:                                              ; preds = %116
  %121 = zext i16 %117 to i32
  %122 = add nsw i32 %121, -1
  br label %123

123:                                              ; preds = %120, %198
  %124 = phi i32 [ %200, %198 ], [ 0, %120 ]
  %125 = phi i32 [ %199, %198 ], [ %122, %120 ]
  %126 = add i32 %124, %125
  %127 = ashr i32 %126, 1
  %128 = mul i32 %127, 6
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, ptr %118, i64 %129
  %131 = icmp uge ptr %130, %3
  %132 = icmp ult ptr %130, %5
  %133 = select i1 %131, i1 %132, i1 false
  br i1 %133, label %134, label %138

134:                                              ; preds = %123
  %135 = load i8, ptr %130, align 1, !tbaa !11
  %136 = zext i8 %135 to i16
  %137 = shl nuw i16 %136, 8
  br label %138

138:                                              ; preds = %134, %123
  %139 = phi i16 [ %137, %134 ], [ 0, %123 ]
  %140 = getelementptr inbounds nuw i8, ptr %130, i64 1
  %141 = icmp uge ptr %140, %3
  %142 = icmp ult ptr %140, %5
  %143 = select i1 %141, i1 %142, i1 false
  br i1 %143, label %144, label %148

144:                                              ; preds = %138
  %145 = load i8, ptr %140, align 1, !tbaa !11
  %146 = zext i8 %145 to i16
  %147 = or disjoint i16 %139, %146
  br label %148

148:                                              ; preds = %138, %144
  %149 = phi i16 [ %147, %144 ], [ %139, %138 ]
  %150 = zext i16 %149 to i32
  %151 = getelementptr inbounds nuw i8, ptr %130, i64 2
  %152 = icmp uge ptr %151, %3
  %153 = icmp ult ptr %151, %5
  %154 = select i1 %152, i1 %153, i1 false
  br i1 %154, label %155, label %159

155:                                              ; preds = %148
  %156 = load i8, ptr %151, align 1, !tbaa !11
  %157 = zext i8 %156 to i16
  %158 = shl nuw i16 %157, 8
  br label %159

159:                                              ; preds = %155, %148
  %160 = phi i16 [ %158, %155 ], [ 0, %148 ]
  %161 = getelementptr inbounds nuw i8, ptr %130, i64 3
  %162 = icmp uge ptr %161, %3
  %163 = icmp ult ptr %161, %5
  %164 = select i1 %162, i1 %163, i1 false
  br i1 %164, label %165, label %169

165:                                              ; preds = %159
  %166 = load i8, ptr %161, align 1, !tbaa !11
  %167 = zext i8 %166 to i16
  %168 = or disjoint i16 %160, %167
  br label %169

169:                                              ; preds = %159, %165
  %170 = phi i16 [ %168, %165 ], [ %160, %159 ]
  %171 = icmp slt i32 %1, %150
  br i1 %171, label %172, label %174

172:                                              ; preds = %169
  %173 = add nsw i32 %127, -1
  br label %198

174:                                              ; preds = %169
  %175 = zext i16 %170 to i32
  %176 = icmp samesign ugt i32 %1, %175
  br i1 %176, label %177, label %179

177:                                              ; preds = %174
  %178 = add nsw i32 %127, 1
  br label %198

179:                                              ; preds = %174
  %180 = getelementptr inbounds nuw i8, ptr %130, i64 4
  %181 = icmp uge ptr %180, %3
  %182 = icmp ult ptr %180, %5
  %183 = select i1 %181, i1 %182, i1 false
  br i1 %183, label %184, label %188

184:                                              ; preds = %179
  %185 = load i8, ptr %180, align 1, !tbaa !11
  %186 = zext i8 %185 to i16
  %187 = shl nuw i16 %186, 8
  br label %188

188:                                              ; preds = %184, %179
  %189 = phi i16 [ %187, %184 ], [ 0, %179 ]
  %190 = getelementptr inbounds nuw i8, ptr %130, i64 5
  %191 = icmp uge ptr %190, %3
  %192 = icmp ult ptr %190, %5
  %193 = select i1 %191, i1 %192, i1 false
  br i1 %193, label %194, label %202

194:                                              ; preds = %188
  %195 = load i8, ptr %190, align 1, !tbaa !11
  %196 = zext i8 %195 to i16
  %197 = or disjoint i16 %189, %196
  br label %202

198:                                              ; preds = %172, %177
  %199 = phi i32 [ %125, %177 ], [ %173, %172 ]
  %200 = phi i32 [ %178, %177 ], [ %124, %172 ]
  %201 = icmp sgt i32 %200, %199
  br i1 %201, label %205, label %123, !llvm.loop !138

202:                                              ; preds = %194, %188
  %203 = phi i16 [ %197, %194 ], [ %189, %188 ]
  %204 = zext i16 %203 to i32
  br label %205

205:                                              ; preds = %198, %116, %63, %68, %202, %94, %22
  %206 = phi i32 [ %204, %202 ], [ -1, %22 ], [ %96, %94 ], [ 0, %63 ], [ 0, %68 ], [ 0, %116 ], [ 0, %198 ]
  ret i32 %206
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #13

attributes #0 = { nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nosync nounwind memory(argmem: readwrite) "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }
attributes #16 = { nobuiltin "no-builtins" }
attributes #17 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{!"clang version 23.1.3"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!6, !6, i64 0}
!12 = !{!13, !9, i64 8}
!13 = !{!"stbtt_fontinfo", !10, i64 0, !9, i64 8, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !14, i64 64, !14, i64 80, !14, i64 96, !14, i64 112, !14, i64 128, !14, i64 144}
!14 = !{!"", !9, i64 0, !5, i64 8, !5, i64 12}
!15 = !{!13, !5, i64 16}
!16 = !{!13, !5, i64 24}
!17 = !{!13, !5, i64 28}
!18 = !{!13, !5, i64 32}
!19 = !{!13, !5, i64 36}
!20 = !{!13, !5, i64 40}
!21 = !{!13, !5, i64 44}
!22 = !{!13, !5, i64 48}
!23 = !{!5, !5, i64 0}
!24 = !{i64 0, i64 8, !8, i64 8, i64 4, !23, i64 12, i64 4, !23}
!25 = !{!14, !5, i64 8}
!26 = !{!14, !5, i64 12}
!27 = !{!14, !9, i64 0}
!28 = !{!13, !5, i64 20}
!29 = !{!13, !5, i64 52}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!13, !5, i64 60}
!33 = !{!10, !10, i64 0}
!34 = !{!35, !6, i64 12}
!35 = !{!"", !36, i64 0, !36, i64 2, !36, i64 4, !36, i64 6, !36, i64 8, !36, i64 10, !6, i64 12, !6, i64 13}
!36 = !{!"short", !6, i64 0}
!37 = distinct !{!37, !31, !38, !39}
!38 = !{!"llvm.loop.isvectorized", i32 1}
!39 = !{!"llvm.loop.unroll.runtime.disable"}
!40 = distinct !{!40, !31, !39, !38}
!41 = !{!42, !42, i64 0}
!42 = !{!"long", !6, i64 0}
!43 = !{!36, !36, i64 0}
!44 = !{!45, !45, i64 0}
!45 = !{!"float", !6, i64 0}
!46 = !{!35, !36, i64 4}
!47 = !{!35, !36, i64 6}
!48 = !{!35, !36, i64 0}
!49 = !{!35, !36, i64 2}
!50 = !{!35, !36, i64 8}
!51 = !{!35, !36, i64 10}
!52 = distinct !{!52, !31}
!53 = distinct !{!53, !31}
!54 = distinct !{!54, !31, !38, !39}
!55 = distinct !{!55, !31, !39, !38}
!56 = !{!57, !45, i64 4}
!57 = !{!"", !45, i64 0, !45, i64 4}
!58 = !{!59, !5, i64 16}
!59 = !{!"stbtt__edge", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !5, i64 16}
!60 = distinct !{!60, !31}
!61 = distinct !{!61, !31}
!62 = !{i64 0, i64 4, !44, i64 4, i64 4, !44, i64 8, i64 4, !23}
!63 = !{!59, !45, i64 4}
!64 = !{i64 0, i64 4, !44, i64 4, i64 4, !44, i64 8, i64 4, !44, i64 12, i64 4, !44, i64 16, i64 4, !23}
!65 = distinct !{!65, !31}
!66 = !{!67, !67, i64 0}
!67 = !{!"p1 _ZTS18stbtt__active_edge", !10, i64 0}
!68 = !{!69, !45, i64 28}
!69 = !{!"stbtt__active_edge", !67, i64 0, !45, i64 8, !45, i64 12, !45, i64 16, !45, i64 20, !45, i64 24, !45, i64 28}
!70 = !{!69, !67, i64 0}
!71 = !{!69, !45, i64 20}
!72 = distinct !{!72, !31}
!73 = !{!59, !45, i64 12}
!74 = !{!75, !76, i64 0}
!75 = !{!"stbtt__hheap_chunk", !76, i64 0}
!76 = !{!"p1 _ZTS18stbtt__hheap_chunk", !10, i64 0}
!77 = !{!59, !45, i64 8}
!78 = !{!59, !45, i64 0}
!79 = !{!69, !45, i64 12}
!80 = !{!69, !45, i64 16}
!81 = !{!69, !45, i64 8}
!82 = !{!69, !45, i64 24}
!83 = distinct !{!83, !31}
!84 = distinct !{!84, !31}
!85 = distinct !{!85, !31}
!86 = distinct !{!86, !31}
!87 = distinct !{!87, !31}
!88 = distinct !{!88, !31}
!89 = distinct !{!89, !31}
!90 = distinct !{!90, !31}
!91 = distinct !{!91, !31}
!92 = distinct !{!92, !31}
!93 = distinct !{!93, !31}
!94 = distinct !{!94, !31}
!95 = distinct !{!95, !31}
!96 = distinct !{!96, !31}
!97 = distinct !{!97, !31}
!98 = distinct !{!98, !31}
!99 = distinct !{!99, !31}
!100 = distinct !{!100, !31}
!101 = distinct !{!101, !31}
!102 = distinct !{!102, !31}
!103 = distinct !{!103, !31}
!104 = !{!13, !5, i64 56}
!105 = distinct !{!105, !31}
!106 = distinct !{!106, !31}
!107 = !{!13, !5, i64 76}
!108 = !{!109, !5, i64 0}
!109 = !{!"", !5, i64 0, !5, i64 4, !45, i64 8, !45, i64 12, !45, i64 16, !45, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !10, i64 40, !5, i64 48}
!110 = !{!109, !5, i64 28}
!111 = !{!109, !5, i64 4}
!112 = !{!109, !5, i64 36}
!113 = !{!109, !5, i64 24}
!114 = !{!109, !5, i64 32}
!115 = !{!109, !10, i64 40}
!116 = distinct !{!116, !31}
!117 = !{!109, !5, i64 48}
!118 = distinct !{!118, !31}
!119 = distinct !{!119, !31}
!120 = distinct !{!120, !31}
!121 = distinct !{!121, !31, !122}
!122 = !{!"llvm.loop.peeled.count", i32 1}
!123 = !{!13, !5, i64 156}
!124 = distinct !{!124, !31}
!125 = distinct !{!125, !31}
!126 = !{!109, !45, i64 16}
!127 = !{!109, !45, i64 20}
!128 = distinct !{null}
!129 = distinct !{!129, !31}
!130 = distinct !{!130, !31}
!131 = distinct !{!131, !31}
!132 = distinct !{!132, !31}
!133 = distinct !{!133, !31, !38, !39}
!134 = distinct !{!134, !31, !39, !38}
!135 = distinct !{!135, !31}
!136 = !{!57, !45, i64 0}
!137 = distinct !{!137, !31}
!138 = distinct !{!138, !31}
