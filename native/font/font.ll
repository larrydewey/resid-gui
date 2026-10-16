; ModuleID = 'font/font.c'
source_filename = "font/font.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.stbtt__buf = type { ptr, i32, i32 }
%struct.stbtt_fontinfo = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.stbtt__buf, %struct.stbtt__buf, %struct.stbtt__buf, %struct.stbtt__buf, %struct.stbtt__buf, %struct.stbtt__buf }
%struct.stbtt_vertex = type { i16, i16, i16, i16, i16, i16, i8, i8 }
%struct.stbtt__point = type { float, float }
%struct.stbtt__edge = type { float, float, float, float, i32 }
%struct.stbtt__csctx = type { i32, i32, float, float, float, float, i32, i32, i32, i32, ptr, i32 }

@arena_used = internal unnamed_addr global i64 0, align 8
@arena = internal global [8388608 x i8] zeroinitializer, align 16

; Function Attrs: nounwind
define void @font_atlas(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef writeonly captures(none) %4, i64 noundef %5) local_unnamed_addr #0 {
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
  br i1 %25, label %3683, label %26

26:                                               ; preds = %6
  %27 = add i64 %3, -257
  %28 = icmp ult i64 %27, -253
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  store i32 826689362, ptr %4, align 1
  %30 = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 2, ptr %30, align 1
  br label %3683

31:                                               ; preds = %26
  %32 = icmp slt i64 %2, 1
  %33 = icmp sgt i64 %2, %1
  %34 = or i1 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  store i32 826689362, ptr %4, align 1
  %36 = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 1, ptr %36, align 1
  br label %3683

37:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #16
  %38 = load i8, ptr %0, align 1, !tbaa !8
  switch i8 %38, label %1273 [
    i8 49, label %39
    i8 116, label %51
    i8 79, label %62
    i8 0, label %74
  ]

39:                                               ; preds = %37
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %41 = load i8, ptr %40, align 1, !tbaa !8
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %1273

43:                                               ; preds = %39
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %45 = load i8, ptr %44, align 1, !tbaa !8
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %1273

47:                                               ; preds = %43
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %49 = load i8, ptr %48, align 1, !tbaa !8
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %160, label %1273

51:                                               ; preds = %37
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %53 = load i8, ptr %52, align 1, !tbaa !8
  switch i8 %53, label %1273 [
    i8 121, label %54
    i8 114, label %86
    i8 116, label %94
  ]

54:                                               ; preds = %51
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %56 = load i8, ptr %55, align 1, !tbaa !8
  %57 = icmp eq i8 %56, 112
  br i1 %57, label %58, label %1273

58:                                               ; preds = %54
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %60 = load i8, ptr %59, align 1, !tbaa !8
  %61 = icmp eq i8 %60, 49
  br i1 %61, label %160, label %1273

62:                                               ; preds = %37
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %64 = load i8, ptr %63, align 1, !tbaa !8
  %65 = icmp eq i8 %64, 84
  br i1 %65, label %66, label %1273

66:                                               ; preds = %62
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %68 = load i8, ptr %67, align 1, !tbaa !8
  %69 = icmp eq i8 %68, 84
  br i1 %69, label %70, label %1273

70:                                               ; preds = %66
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %72 = load i8, ptr %71, align 1, !tbaa !8
  %73 = icmp eq i8 %72, 79
  br i1 %73, label %160, label %1273

74:                                               ; preds = %37
  %75 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %76 = load i8, ptr %75, align 1, !tbaa !8
  %77 = icmp eq i8 %76, 1
  br i1 %77, label %78, label %1273

78:                                               ; preds = %74
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %80 = load i8, ptr %79, align 1, !tbaa !8
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %1273

82:                                               ; preds = %78
  %83 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %84 = load i8, ptr %83, align 1, !tbaa !8
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %160, label %1273

86:                                               ; preds = %51
  %87 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %88 = load i8, ptr %87, align 1, !tbaa !8
  %89 = icmp eq i8 %88, 117
  br i1 %89, label %90, label %1273

90:                                               ; preds = %86
  %91 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %92 = load i8, ptr %91, align 1, !tbaa !8
  %93 = icmp eq i8 %92, 101
  br i1 %93, label %160, label %1273

94:                                               ; preds = %51
  %95 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %96 = load i8, ptr %95, align 1, !tbaa !8
  %97 = icmp eq i8 %96, 99
  br i1 %97, label %98, label %1273

98:                                               ; preds = %94
  %99 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %100 = load i8, ptr %99, align 1, !tbaa !8
  %101 = icmp eq i8 %100, 102
  br i1 %101, label %102, label %1273

102:                                              ; preds = %98
  %103 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %104 = load i8, ptr %103, align 1, !tbaa !8
  %105 = zext i8 %104 to i32
  %106 = shl nuw i32 %105, 24
  %107 = getelementptr inbounds nuw i8, ptr %0, i64 5
  %108 = load i8, ptr %107, align 1, !tbaa !8
  %109 = zext i8 %108 to i32
  %110 = shl nuw nsw i32 %109, 16
  %111 = or disjoint i32 %110, %106
  %112 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %113 = load i8, ptr %112, align 1, !tbaa !8
  %114 = zext i8 %113 to i32
  %115 = shl nuw nsw i32 %114, 8
  %116 = or disjoint i32 %111, %115
  %117 = getelementptr inbounds nuw i8, ptr %0, i64 7
  %118 = load i8, ptr %117, align 1, !tbaa !8
  %119 = zext i8 %118 to i32
  %120 = or disjoint i32 %116, %119
  switch i32 %120, label %1273 [
    i32 65536, label %121
    i32 131072, label %121
  ]

121:                                              ; preds = %102, %102
  %122 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %123 = load i8, ptr %122, align 1, !tbaa !8
  %124 = zext i8 %123 to i32
  %125 = shl nuw i32 %124, 24
  %126 = getelementptr inbounds nuw i8, ptr %0, i64 9
  %127 = load i8, ptr %126, align 1, !tbaa !8
  %128 = zext i8 %127 to i32
  %129 = shl nuw nsw i32 %128, 16
  %130 = or disjoint i32 %129, %125
  %131 = getelementptr inbounds nuw i8, ptr %0, i64 10
  %132 = load i8, ptr %131, align 1, !tbaa !8
  %133 = zext i8 %132 to i32
  %134 = shl nuw nsw i32 %133, 8
  %135 = or disjoint i32 %130, %134
  %136 = getelementptr inbounds nuw i8, ptr %0, i64 11
  %137 = load i8, ptr %136, align 1, !tbaa !8
  %138 = zext i8 %137 to i32
  %139 = or disjoint i32 %135, %138
  %140 = icmp slt i32 %139, 1
  br i1 %140, label %1273, label %141

141:                                              ; preds = %121
  %142 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %143 = load i8, ptr %142, align 1, !tbaa !8
  %144 = zext i8 %143 to i32
  %145 = shl nuw i32 %144, 24
  %146 = getelementptr inbounds nuw i8, ptr %0, i64 13
  %147 = load i8, ptr %146, align 1, !tbaa !8
  %148 = zext i8 %147 to i32
  %149 = shl nuw nsw i32 %148, 16
  %150 = or disjoint i32 %149, %145
  %151 = getelementptr inbounds nuw i8, ptr %0, i64 14
  %152 = load i8, ptr %151, align 1, !tbaa !8
  %153 = zext i8 %152 to i32
  %154 = shl nuw nsw i32 %153, 8
  %155 = or disjoint i32 %150, %154
  %156 = getelementptr inbounds nuw i8, ptr %0, i64 15
  %157 = load i8, ptr %156, align 1, !tbaa !8
  %158 = zext i8 %157 to i32
  %159 = or disjoint i32 %155, %158
  br label %160

160:                                              ; preds = %47, %58, %70, %82, %90, %141
  %161 = phi i32 [ 0, %82 ], [ 0, %90 ], [ %159, %141 ], [ 0, %47 ], [ 0, %58 ], [ 0, %70 ]
  %162 = icmp sgt i32 %161, -1
  %163 = zext nneg i32 %161 to i64
  %164 = icmp samesign ugt i64 %2, %163
  %165 = select i1 %162, i1 %164, i1 false
  br i1 %165, label %166, label %1273

166:                                              ; preds = %160
  %167 = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr %0, ptr %167, align 8, !tbaa !9
  %168 = getelementptr inbounds nuw i8, ptr %20, i64 16
  store i32 %161, ptr %168, align 8, !tbaa !14
  %169 = getelementptr inbounds nuw i8, ptr %20, i64 64
  store ptr null, ptr %169, align 8, !tbaa !15
  %170 = getelementptr inbounds nuw i8, ptr %20, i64 72
  store i64 0, ptr %170, align 8
  %171 = getelementptr inbounds nuw i8, ptr %0, i64 %163
  %172 = getelementptr inbounds nuw i8, ptr %171, i64 4
  %173 = load i8, ptr %172, align 1, !tbaa !8
  %174 = zext i8 %173 to i32
  %175 = shl nuw nsw i32 %174, 8
  %176 = getelementptr inbounds nuw i8, ptr %171, i64 5
  %177 = load i8, ptr %176, align 1, !tbaa !8
  %178 = zext i8 %177 to i32
  %179 = or disjoint i32 %175, %178
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %166
  %182 = getelementptr inbounds nuw i8, ptr %20, i64 24
  store <4 x i32> zeroinitializer, ptr %182, align 8, !tbaa !4
  %183 = getelementptr inbounds nuw i8, ptr %20, i64 40
  store i32 0, ptr %183, align 8, !tbaa !16
  %184 = getelementptr inbounds nuw i8, ptr %20, i64 44
  store i32 0, ptr %184, align 4, !tbaa !17
  br label %530

185:                                              ; preds = %166
  %186 = add nuw i32 %161, 12
  %187 = zext i32 %186 to i64
  %188 = zext nneg i32 %179 to i64
  %189 = getelementptr inbounds nuw i8, ptr %0, i64 %187
  br label %190

190:                                              ; preds = %227, %185
  %191 = phi i64 [ 0, %185 ], [ %228, %227 ]
  %192 = shl nsw i64 %191, 4
  %193 = getelementptr inbounds nuw i8, ptr %189, i64 %192
  %194 = load i8, ptr %193, align 1, !tbaa !8
  %195 = icmp eq i8 %194, 99
  br i1 %195, label %196, label %227

196:                                              ; preds = %190
  %197 = getelementptr inbounds nuw i8, ptr %193, i64 1
  %198 = load i8, ptr %197, align 1, !tbaa !8
  %199 = icmp eq i8 %198, 109
  br i1 %199, label %200, label %227

200:                                              ; preds = %196
  %201 = getelementptr inbounds nuw i8, ptr %193, i64 2
  %202 = load i8, ptr %201, align 1, !tbaa !8
  %203 = icmp eq i8 %202, 97
  br i1 %203, label %204, label %227

204:                                              ; preds = %200
  %205 = getelementptr inbounds nuw i8, ptr %193, i64 3
  %206 = load i8, ptr %205, align 1, !tbaa !8
  %207 = icmp eq i8 %206, 112
  br i1 %207, label %208, label %227

208:                                              ; preds = %204
  %209 = getelementptr inbounds nuw i8, ptr %193, i64 8
  %210 = load i8, ptr %209, align 1, !tbaa !8
  %211 = zext i8 %210 to i32
  %212 = shl nuw i32 %211, 24
  %213 = getelementptr inbounds nuw i8, ptr %193, i64 9
  %214 = load i8, ptr %213, align 1, !tbaa !8
  %215 = zext i8 %214 to i32
  %216 = shl nuw nsw i32 %215, 16
  %217 = or disjoint i32 %216, %212
  %218 = getelementptr inbounds nuw i8, ptr %193, i64 10
  %219 = load i8, ptr %218, align 1, !tbaa !8
  %220 = zext i8 %219 to i32
  %221 = shl nuw nsw i32 %220, 8
  %222 = or disjoint i32 %217, %221
  %223 = getelementptr inbounds nuw i8, ptr %193, i64 11
  %224 = load i8, ptr %223, align 1, !tbaa !8
  %225 = zext i8 %224 to i32
  %226 = or disjoint i32 %222, %225
  br label %230

227:                                              ; preds = %204, %200, %196, %190
  %228 = add nuw nsw i64 %191, 1
  %229 = icmp eq i64 %228, %188
  br i1 %229, label %230, label %190, !llvm.loop !18

230:                                              ; preds = %227, %208
  %231 = phi i32 [ %226, %208 ], [ 0, %227 ]
  br label %232

232:                                              ; preds = %269, %230
  %233 = phi i64 [ 0, %230 ], [ %270, %269 ]
  %234 = shl nsw i64 %233, 4
  %235 = getelementptr inbounds nuw i8, ptr %189, i64 %234
  %236 = load i8, ptr %235, align 1, !tbaa !8
  %237 = icmp eq i8 %236, 108
  br i1 %237, label %238, label %269

238:                                              ; preds = %232
  %239 = getelementptr inbounds nuw i8, ptr %235, i64 1
  %240 = load i8, ptr %239, align 1, !tbaa !8
  %241 = icmp eq i8 %240, 111
  br i1 %241, label %242, label %269

242:                                              ; preds = %238
  %243 = getelementptr inbounds nuw i8, ptr %235, i64 2
  %244 = load i8, ptr %243, align 1, !tbaa !8
  %245 = icmp eq i8 %244, 99
  br i1 %245, label %246, label %269

246:                                              ; preds = %242
  %247 = getelementptr inbounds nuw i8, ptr %235, i64 3
  %248 = load i8, ptr %247, align 1, !tbaa !8
  %249 = icmp eq i8 %248, 97
  br i1 %249, label %250, label %269

250:                                              ; preds = %246
  %251 = getelementptr inbounds nuw i8, ptr %235, i64 8
  %252 = load i8, ptr %251, align 1, !tbaa !8
  %253 = zext i8 %252 to i32
  %254 = shl nuw i32 %253, 24
  %255 = getelementptr inbounds nuw i8, ptr %235, i64 9
  %256 = load i8, ptr %255, align 1, !tbaa !8
  %257 = zext i8 %256 to i32
  %258 = shl nuw nsw i32 %257, 16
  %259 = or disjoint i32 %258, %254
  %260 = getelementptr inbounds nuw i8, ptr %235, i64 10
  %261 = load i8, ptr %260, align 1, !tbaa !8
  %262 = zext i8 %261 to i32
  %263 = shl nuw nsw i32 %262, 8
  %264 = or disjoint i32 %259, %263
  %265 = getelementptr inbounds nuw i8, ptr %235, i64 11
  %266 = load i8, ptr %265, align 1, !tbaa !8
  %267 = zext i8 %266 to i32
  %268 = or disjoint i32 %264, %267
  br label %272

269:                                              ; preds = %246, %242, %238, %232
  %270 = add nuw nsw i64 %233, 1
  %271 = icmp eq i64 %270, %188
  br i1 %271, label %272, label %232, !llvm.loop !18

272:                                              ; preds = %269, %250
  %273 = phi i32 [ %268, %250 ], [ 0, %269 ]
  %274 = getelementptr inbounds nuw i8, ptr %20, i64 24
  store i32 %273, ptr %274, align 8, !tbaa !20
  br label %275

275:                                              ; preds = %312, %272
  %276 = phi i64 [ 0, %272 ], [ %313, %312 ]
  %277 = shl nsw i64 %276, 4
  %278 = getelementptr inbounds nuw i8, ptr %189, i64 %277
  %279 = load i8, ptr %278, align 1, !tbaa !8
  %280 = icmp eq i8 %279, 104
  br i1 %280, label %281, label %312

281:                                              ; preds = %275
  %282 = getelementptr inbounds nuw i8, ptr %278, i64 1
  %283 = load i8, ptr %282, align 1, !tbaa !8
  %284 = icmp eq i8 %283, 101
  br i1 %284, label %285, label %312

285:                                              ; preds = %281
  %286 = getelementptr inbounds nuw i8, ptr %278, i64 2
  %287 = load i8, ptr %286, align 1, !tbaa !8
  %288 = icmp eq i8 %287, 97
  br i1 %288, label %289, label %312

289:                                              ; preds = %285
  %290 = getelementptr inbounds nuw i8, ptr %278, i64 3
  %291 = load i8, ptr %290, align 1, !tbaa !8
  %292 = icmp eq i8 %291, 100
  br i1 %292, label %293, label %312

293:                                              ; preds = %289
  %294 = getelementptr inbounds nuw i8, ptr %278, i64 8
  %295 = load i8, ptr %294, align 1, !tbaa !8
  %296 = zext i8 %295 to i32
  %297 = shl nuw i32 %296, 24
  %298 = getelementptr inbounds nuw i8, ptr %278, i64 9
  %299 = load i8, ptr %298, align 1, !tbaa !8
  %300 = zext i8 %299 to i32
  %301 = shl nuw nsw i32 %300, 16
  %302 = or disjoint i32 %301, %297
  %303 = getelementptr inbounds nuw i8, ptr %278, i64 10
  %304 = load i8, ptr %303, align 1, !tbaa !8
  %305 = zext i8 %304 to i32
  %306 = shl nuw nsw i32 %305, 8
  %307 = or disjoint i32 %302, %306
  %308 = getelementptr inbounds nuw i8, ptr %278, i64 11
  %309 = load i8, ptr %308, align 1, !tbaa !8
  %310 = zext i8 %309 to i32
  %311 = or disjoint i32 %307, %310
  br label %315

312:                                              ; preds = %289, %285, %281, %275
  %313 = add nuw nsw i64 %276, 1
  %314 = icmp eq i64 %313, %188
  br i1 %314, label %315, label %275, !llvm.loop !18

315:                                              ; preds = %312, %293
  %316 = phi i32 [ %311, %293 ], [ 0, %312 ]
  %317 = getelementptr inbounds nuw i8, ptr %20, i64 28
  store i32 %316, ptr %317, align 4, !tbaa !21
  br label %318

318:                                              ; preds = %355, %315
  %319 = phi i64 [ 0, %315 ], [ %356, %355 ]
  %320 = shl nsw i64 %319, 4
  %321 = getelementptr inbounds nuw i8, ptr %189, i64 %320
  %322 = load i8, ptr %321, align 1, !tbaa !8
  %323 = icmp eq i8 %322, 103
  br i1 %323, label %324, label %355

324:                                              ; preds = %318
  %325 = getelementptr inbounds nuw i8, ptr %321, i64 1
  %326 = load i8, ptr %325, align 1, !tbaa !8
  %327 = icmp eq i8 %326, 108
  br i1 %327, label %328, label %355

328:                                              ; preds = %324
  %329 = getelementptr inbounds nuw i8, ptr %321, i64 2
  %330 = load i8, ptr %329, align 1, !tbaa !8
  %331 = icmp eq i8 %330, 121
  br i1 %331, label %332, label %355

332:                                              ; preds = %328
  %333 = getelementptr inbounds nuw i8, ptr %321, i64 3
  %334 = load i8, ptr %333, align 1, !tbaa !8
  %335 = icmp eq i8 %334, 102
  br i1 %335, label %336, label %355

336:                                              ; preds = %332
  %337 = getelementptr inbounds nuw i8, ptr %321, i64 8
  %338 = load i8, ptr %337, align 1, !tbaa !8
  %339 = zext i8 %338 to i32
  %340 = shl nuw i32 %339, 24
  %341 = getelementptr inbounds nuw i8, ptr %321, i64 9
  %342 = load i8, ptr %341, align 1, !tbaa !8
  %343 = zext i8 %342 to i32
  %344 = shl nuw nsw i32 %343, 16
  %345 = or disjoint i32 %344, %340
  %346 = getelementptr inbounds nuw i8, ptr %321, i64 10
  %347 = load i8, ptr %346, align 1, !tbaa !8
  %348 = zext i8 %347 to i32
  %349 = shl nuw nsw i32 %348, 8
  %350 = or disjoint i32 %345, %349
  %351 = getelementptr inbounds nuw i8, ptr %321, i64 11
  %352 = load i8, ptr %351, align 1, !tbaa !8
  %353 = zext i8 %352 to i32
  %354 = or disjoint i32 %350, %353
  br label %358

355:                                              ; preds = %332, %328, %324, %318
  %356 = add nuw nsw i64 %319, 1
  %357 = icmp eq i64 %356, %188
  br i1 %357, label %358, label %318, !llvm.loop !18

358:                                              ; preds = %355, %336
  %359 = phi i32 [ %354, %336 ], [ 0, %355 ]
  %360 = getelementptr inbounds nuw i8, ptr %20, i64 32
  store i32 %359, ptr %360, align 8, !tbaa !22
  br label %361

361:                                              ; preds = %398, %358
  %362 = phi i64 [ 0, %358 ], [ %399, %398 ]
  %363 = shl nsw i64 %362, 4
  %364 = getelementptr inbounds nuw i8, ptr %189, i64 %363
  %365 = load i8, ptr %364, align 1, !tbaa !8
  %366 = icmp eq i8 %365, 104
  br i1 %366, label %367, label %398

367:                                              ; preds = %361
  %368 = getelementptr inbounds nuw i8, ptr %364, i64 1
  %369 = load i8, ptr %368, align 1, !tbaa !8
  %370 = icmp eq i8 %369, 104
  br i1 %370, label %371, label %398

371:                                              ; preds = %367
  %372 = getelementptr inbounds nuw i8, ptr %364, i64 2
  %373 = load i8, ptr %372, align 1, !tbaa !8
  %374 = icmp eq i8 %373, 101
  br i1 %374, label %375, label %398

375:                                              ; preds = %371
  %376 = getelementptr inbounds nuw i8, ptr %364, i64 3
  %377 = load i8, ptr %376, align 1, !tbaa !8
  %378 = icmp eq i8 %377, 97
  br i1 %378, label %379, label %398

379:                                              ; preds = %375
  %380 = getelementptr inbounds nuw i8, ptr %364, i64 8
  %381 = load i8, ptr %380, align 1, !tbaa !8
  %382 = zext i8 %381 to i32
  %383 = shl nuw i32 %382, 24
  %384 = getelementptr inbounds nuw i8, ptr %364, i64 9
  %385 = load i8, ptr %384, align 1, !tbaa !8
  %386 = zext i8 %385 to i32
  %387 = shl nuw nsw i32 %386, 16
  %388 = or disjoint i32 %387, %383
  %389 = getelementptr inbounds nuw i8, ptr %364, i64 10
  %390 = load i8, ptr %389, align 1, !tbaa !8
  %391 = zext i8 %390 to i32
  %392 = shl nuw nsw i32 %391, 8
  %393 = or disjoint i32 %388, %392
  %394 = getelementptr inbounds nuw i8, ptr %364, i64 11
  %395 = load i8, ptr %394, align 1, !tbaa !8
  %396 = zext i8 %395 to i32
  %397 = or disjoint i32 %393, %396
  br label %401

398:                                              ; preds = %375, %371, %367, %361
  %399 = add nuw nsw i64 %362, 1
  %400 = icmp eq i64 %399, %188
  br i1 %400, label %401, label %361, !llvm.loop !18

401:                                              ; preds = %398, %379
  %402 = phi i32 [ %397, %379 ], [ 0, %398 ]
  %403 = getelementptr inbounds nuw i8, ptr %20, i64 36
  store i32 %402, ptr %403, align 4, !tbaa !23
  br label %404

404:                                              ; preds = %441, %401
  %405 = phi i64 [ 0, %401 ], [ %442, %441 ]
  %406 = shl nsw i64 %405, 4
  %407 = getelementptr inbounds nuw i8, ptr %189, i64 %406
  %408 = load i8, ptr %407, align 1, !tbaa !8
  %409 = icmp eq i8 %408, 104
  br i1 %409, label %410, label %441

410:                                              ; preds = %404
  %411 = getelementptr inbounds nuw i8, ptr %407, i64 1
  %412 = load i8, ptr %411, align 1, !tbaa !8
  %413 = icmp eq i8 %412, 109
  br i1 %413, label %414, label %441

414:                                              ; preds = %410
  %415 = getelementptr inbounds nuw i8, ptr %407, i64 2
  %416 = load i8, ptr %415, align 1, !tbaa !8
  %417 = icmp eq i8 %416, 116
  br i1 %417, label %418, label %441

418:                                              ; preds = %414
  %419 = getelementptr inbounds nuw i8, ptr %407, i64 3
  %420 = load i8, ptr %419, align 1, !tbaa !8
  %421 = icmp eq i8 %420, 120
  br i1 %421, label %422, label %441

422:                                              ; preds = %418
  %423 = getelementptr inbounds nuw i8, ptr %407, i64 8
  %424 = load i8, ptr %423, align 1, !tbaa !8
  %425 = zext i8 %424 to i32
  %426 = shl nuw i32 %425, 24
  %427 = getelementptr inbounds nuw i8, ptr %407, i64 9
  %428 = load i8, ptr %427, align 1, !tbaa !8
  %429 = zext i8 %428 to i32
  %430 = shl nuw nsw i32 %429, 16
  %431 = or disjoint i32 %430, %426
  %432 = getelementptr inbounds nuw i8, ptr %407, i64 10
  %433 = load i8, ptr %432, align 1, !tbaa !8
  %434 = zext i8 %433 to i32
  %435 = shl nuw nsw i32 %434, 8
  %436 = or disjoint i32 %431, %435
  %437 = getelementptr inbounds nuw i8, ptr %407, i64 11
  %438 = load i8, ptr %437, align 1, !tbaa !8
  %439 = zext i8 %438 to i32
  %440 = or disjoint i32 %436, %439
  br label %444

441:                                              ; preds = %418, %414, %410, %404
  %442 = add nuw nsw i64 %405, 1
  %443 = icmp eq i64 %442, %188
  br i1 %443, label %444, label %404, !llvm.loop !18

444:                                              ; preds = %441, %422
  %445 = phi i32 [ %440, %422 ], [ 0, %441 ]
  %446 = getelementptr inbounds nuw i8, ptr %20, i64 40
  store i32 %445, ptr %446, align 8, !tbaa !16
  br label %447

447:                                              ; preds = %484, %444
  %448 = phi i64 [ 0, %444 ], [ %485, %484 ]
  %449 = shl nsw i64 %448, 4
  %450 = getelementptr inbounds nuw i8, ptr %189, i64 %449
  %451 = load i8, ptr %450, align 1, !tbaa !8
  %452 = icmp eq i8 %451, 107
  br i1 %452, label %453, label %484

453:                                              ; preds = %447
  %454 = getelementptr inbounds nuw i8, ptr %450, i64 1
  %455 = load i8, ptr %454, align 1, !tbaa !8
  %456 = icmp eq i8 %455, 101
  br i1 %456, label %457, label %484

457:                                              ; preds = %453
  %458 = getelementptr inbounds nuw i8, ptr %450, i64 2
  %459 = load i8, ptr %458, align 1, !tbaa !8
  %460 = icmp eq i8 %459, 114
  br i1 %460, label %461, label %484

461:                                              ; preds = %457
  %462 = getelementptr inbounds nuw i8, ptr %450, i64 3
  %463 = load i8, ptr %462, align 1, !tbaa !8
  %464 = icmp eq i8 %463, 110
  br i1 %464, label %465, label %484

465:                                              ; preds = %461
  %466 = getelementptr inbounds nuw i8, ptr %450, i64 8
  %467 = load i8, ptr %466, align 1, !tbaa !8
  %468 = zext i8 %467 to i32
  %469 = shl nuw i32 %468, 24
  %470 = getelementptr inbounds nuw i8, ptr %450, i64 9
  %471 = load i8, ptr %470, align 1, !tbaa !8
  %472 = zext i8 %471 to i32
  %473 = shl nuw nsw i32 %472, 16
  %474 = or disjoint i32 %473, %469
  %475 = getelementptr inbounds nuw i8, ptr %450, i64 10
  %476 = load i8, ptr %475, align 1, !tbaa !8
  %477 = zext i8 %476 to i32
  %478 = shl nuw nsw i32 %477, 8
  %479 = or disjoint i32 %474, %478
  %480 = getelementptr inbounds nuw i8, ptr %450, i64 11
  %481 = load i8, ptr %480, align 1, !tbaa !8
  %482 = zext i8 %481 to i32
  %483 = or disjoint i32 %479, %482
  br label %487

484:                                              ; preds = %461, %457, %453, %447
  %485 = add nuw nsw i64 %448, 1
  %486 = icmp eq i64 %485, %188
  br i1 %486, label %487, label %447, !llvm.loop !18

487:                                              ; preds = %484, %465
  %488 = phi i32 [ %483, %465 ], [ 0, %484 ]
  %489 = getelementptr inbounds nuw i8, ptr %20, i64 44
  store i32 %488, ptr %489, align 4, !tbaa !17
  br label %490

490:                                              ; preds = %527, %487
  %491 = phi i64 [ 0, %487 ], [ %528, %527 ]
  %492 = shl nsw i64 %491, 4
  %493 = getelementptr inbounds nuw i8, ptr %189, i64 %492
  %494 = load i8, ptr %493, align 1, !tbaa !8
  %495 = icmp eq i8 %494, 71
  br i1 %495, label %496, label %527

496:                                              ; preds = %490
  %497 = getelementptr inbounds nuw i8, ptr %493, i64 1
  %498 = load i8, ptr %497, align 1, !tbaa !8
  %499 = icmp eq i8 %498, 80
  br i1 %499, label %500, label %527

500:                                              ; preds = %496
  %501 = getelementptr inbounds nuw i8, ptr %493, i64 2
  %502 = load i8, ptr %501, align 1, !tbaa !8
  %503 = icmp eq i8 %502, 79
  br i1 %503, label %504, label %527

504:                                              ; preds = %500
  %505 = getelementptr inbounds nuw i8, ptr %493, i64 3
  %506 = load i8, ptr %505, align 1, !tbaa !8
  %507 = icmp eq i8 %506, 83
  br i1 %507, label %508, label %527

508:                                              ; preds = %504
  %509 = getelementptr inbounds nuw i8, ptr %493, i64 8
  %510 = load i8, ptr %509, align 1, !tbaa !8
  %511 = zext i8 %510 to i32
  %512 = shl nuw i32 %511, 24
  %513 = getelementptr inbounds nuw i8, ptr %493, i64 9
  %514 = load i8, ptr %513, align 1, !tbaa !8
  %515 = zext i8 %514 to i32
  %516 = shl nuw nsw i32 %515, 16
  %517 = or disjoint i32 %516, %512
  %518 = getelementptr inbounds nuw i8, ptr %493, i64 10
  %519 = load i8, ptr %518, align 1, !tbaa !8
  %520 = zext i8 %519 to i32
  %521 = shl nuw nsw i32 %520, 8
  %522 = or disjoint i32 %517, %521
  %523 = getelementptr inbounds nuw i8, ptr %493, i64 11
  %524 = load i8, ptr %523, align 1, !tbaa !8
  %525 = zext i8 %524 to i32
  %526 = or disjoint i32 %522, %525
  br label %530

527:                                              ; preds = %504, %500, %496, %490
  %528 = add nuw nsw i64 %491, 1
  %529 = icmp eq i64 %528, %188
  br i1 %529, label %530, label %490, !llvm.loop !18

530:                                              ; preds = %527, %181, %508
  %531 = phi i32 [ %488, %508 ], [ 0, %181 ], [ %488, %527 ]
  %532 = phi i32 [ %402, %508 ], [ 0, %181 ], [ %402, %527 ]
  %533 = phi i32 [ %316, %508 ], [ 0, %181 ], [ %316, %527 ]
  %534 = phi i32 [ %231, %508 ], [ 0, %181 ], [ %231, %527 ]
  %535 = phi i32 [ %273, %508 ], [ 0, %181 ], [ %273, %527 ]
  %536 = phi i32 [ %359, %508 ], [ 0, %181 ], [ %359, %527 ]
  %537 = phi i32 [ %445, %508 ], [ 0, %181 ], [ %445, %527 ]
  %538 = phi i32 [ %526, %508 ], [ 0, %181 ], [ 0, %527 ]
  %539 = getelementptr inbounds nuw i8, ptr %20, i64 48
  store i32 %538, ptr %539, align 8, !tbaa !24
  %540 = icmp eq i32 %534, 0
  %541 = icmp eq i32 %533, 0
  %542 = select i1 %540, i1 true, i1 %541
  %543 = icmp eq i32 %532, 0
  %544 = select i1 %542, i1 true, i1 %543
  %545 = icmp eq i32 %537, 0
  %546 = select i1 %544, i1 true, i1 %545
  br i1 %546, label %1273, label %547

547:                                              ; preds = %530
  %548 = icmp eq i32 %536, 0
  br i1 %548, label %551, label %549

549:                                              ; preds = %547
  %550 = icmp eq i32 %535, 0
  br i1 %550, label %1273, label %1143

551:                                              ; preds = %547
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #16
  store i32 2, ptr %16, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #16
  store i32 0, ptr %17, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #16
  store i32 0, ptr %18, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #16
  store i32 0, ptr %19, align 4, !tbaa !4
  br i1 %180, label %1272, label %552

552:                                              ; preds = %551
  %553 = add nuw i32 %161, 12
  %554 = zext i32 %553 to i64
  %555 = zext nneg i32 %179 to i64
  %556 = getelementptr inbounds nuw i8, ptr %0, i64 %554
  br label %557

557:                                              ; preds = %575, %552
  %558 = phi i64 [ 0, %552 ], [ %576, %575 ]
  %559 = shl nsw i64 %558, 4
  %560 = getelementptr inbounds nuw i8, ptr %556, i64 %559
  %561 = load i8, ptr %560, align 1, !tbaa !8
  %562 = icmp eq i8 %561, 67
  br i1 %562, label %563, label %575

563:                                              ; preds = %557
  %564 = getelementptr inbounds nuw i8, ptr %560, i64 1
  %565 = load i8, ptr %564, align 1, !tbaa !8
  %566 = icmp eq i8 %565, 70
  br i1 %566, label %567, label %575

567:                                              ; preds = %563
  %568 = getelementptr inbounds nuw i8, ptr %560, i64 2
  %569 = load i8, ptr %568, align 1, !tbaa !8
  %570 = icmp eq i8 %569, 70
  br i1 %570, label %571, label %575

571:                                              ; preds = %567
  %572 = getelementptr inbounds nuw i8, ptr %560, i64 3
  %573 = load i8, ptr %572, align 1, !tbaa !8
  %574 = icmp eq i8 %573, 32
  br i1 %574, label %578, label %575

575:                                              ; preds = %571, %567, %563, %557
  %576 = add nuw nsw i64 %558, 1
  %577 = icmp eq i64 %576, %555
  br i1 %577, label %1272, label %557, !llvm.loop !18

578:                                              ; preds = %571
  %579 = getelementptr inbounds nuw i8, ptr %560, i64 8
  %580 = load i8, ptr %579, align 1, !tbaa !8
  %581 = zext i8 %580 to i32
  %582 = shl nuw i32 %581, 24
  %583 = getelementptr inbounds nuw i8, ptr %560, i64 9
  %584 = load i8, ptr %583, align 1, !tbaa !8
  %585 = zext i8 %584 to i32
  %586 = shl nuw nsw i32 %585, 16
  %587 = or disjoint i32 %586, %582
  %588 = getelementptr inbounds nuw i8, ptr %560, i64 10
  %589 = load i8, ptr %588, align 1, !tbaa !8
  %590 = zext i8 %589 to i32
  %591 = shl nuw nsw i32 %590, 8
  %592 = or disjoint i32 %587, %591
  %593 = getelementptr inbounds nuw i8, ptr %560, i64 11
  %594 = load i8, ptr %593, align 1, !tbaa !8
  %595 = zext i8 %594 to i32
  %596 = or disjoint i32 %592, %595
  %597 = icmp eq i32 %596, 0
  br i1 %597, label %1272, label %598

598:                                              ; preds = %578
  %599 = getelementptr inbounds nuw i8, ptr %20, i64 128
  store ptr null, ptr %599, align 8, !tbaa !15
  %600 = getelementptr inbounds nuw i8, ptr %20, i64 136
  store i64 0, ptr %600, align 8
  %601 = getelementptr inbounds nuw i8, ptr %20, i64 144
  store ptr null, ptr %601, align 8, !tbaa !15
  %602 = getelementptr inbounds nuw i8, ptr %20, i64 152
  store i64 0, ptr %602, align 8
  %603 = zext i32 %596 to i64
  %604 = getelementptr inbounds nuw i8, ptr %0, i64 %603
  store ptr %604, ptr %169, align 8, !tbaa !15
  store i64 2305843009213693952, ptr %170, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %169, i64 16, i1 false), !tbaa.struct !25
  %605 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %606 = load i32, ptr %605, align 8, !tbaa !26
  %607 = add nsw i32 %606, 2
  %608 = getelementptr inbounds nuw i8, ptr %14, i64 12
  %609 = load i32, ptr %608, align 4, !tbaa !27
  %610 = icmp slt i32 %606, -2
  %611 = tail call i32 @llvm.smin.i32(i32 %607, i32 %609)
  %612 = select i1 %610, i32 %609, i32 %611
  %613 = icmp slt i32 %612, %609
  br i1 %613, label %614, label %620

614:                                              ; preds = %598
  %615 = load ptr, ptr %14, align 8, !tbaa !28
  %616 = sext i32 %612 to i64
  %617 = getelementptr inbounds i8, ptr %615, i64 %616
  %618 = load i8, ptr %617, align 1, !tbaa !8
  %619 = zext i8 %618 to i32
  br label %620

620:                                              ; preds = %614, %598
  %621 = phi i32 [ %619, %614 ], [ 0, %598 ]
  %622 = tail call i32 @llvm.smin.i32(i32 %621, i32 %609)
  store i32 %622, ptr %605, align 8, !tbaa !26
  %623 = icmp slt i32 %621, %609
  br i1 %623, label %624, label %632

624:                                              ; preds = %620
  %625 = load ptr, ptr %14, align 8, !tbaa !28
  %626 = add nsw i32 %622, 1
  store i32 %626, ptr %605, align 8, !tbaa !26
  %627 = sext i32 %622 to i64
  %628 = getelementptr inbounds i8, ptr %625, i64 %627
  %629 = load i8, ptr %628, align 1, !tbaa !8
  %630 = zext i8 %629 to i32
  %631 = shl nuw nsw i32 %630, 8
  br label %632

632:                                              ; preds = %624, %620
  %633 = phi i32 [ %626, %624 ], [ %622, %620 ]
  %634 = phi i32 [ %631, %624 ], [ 0, %620 ]
  %635 = icmp slt i32 %633, %609
  br i1 %635, label %636, label %644

636:                                              ; preds = %632
  %637 = load ptr, ptr %14, align 8, !tbaa !28
  %638 = add nsw i32 %633, 1
  store i32 %638, ptr %605, align 8, !tbaa !26
  %639 = sext i32 %633 to i64
  %640 = getelementptr inbounds i8, ptr %637, i64 %639
  %641 = load i8, ptr %640, align 1, !tbaa !8
  %642 = zext i8 %641 to i32
  %643 = or disjoint i32 %634, %642
  br label %644

644:                                              ; preds = %636, %632
  %645 = phi i32 [ %638, %636 ], [ %633, %632 ]
  %646 = phi i32 [ %643, %636 ], [ %634, %632 ]
  %647 = icmp eq i32 %646, 0
  br i1 %647, label %728, label %648

648:                                              ; preds = %644
  %649 = icmp slt i32 %645, %609
  br i1 %649, label %650, label %657

650:                                              ; preds = %648
  %651 = load ptr, ptr %14, align 8, !tbaa !28
  %652 = add nsw i32 %645, 1
  %653 = sext i32 %645 to i64
  %654 = getelementptr inbounds i8, ptr %651, i64 %653
  %655 = load i8, ptr %654, align 1, !tbaa !8
  %656 = zext i8 %655 to i32
  br label %657

657:                                              ; preds = %650, %648
  %658 = phi i32 [ %652, %650 ], [ %645, %648 ]
  %659 = phi i32 [ %656, %650 ], [ 0, %648 ]
  %660 = mul nuw nsw i32 %659, %646
  %661 = add nsw i32 %660, %658
  %662 = icmp slt i32 %661, 0
  %663 = tail call i32 @llvm.smin.i32(i32 %661, i32 %609)
  %664 = select i1 %662, i32 %609, i32 %663
  %665 = icmp eq i32 %659, 0
  br i1 %665, label %721, label %666

666:                                              ; preds = %657
  %667 = load ptr, ptr %14, align 8
  %668 = and i32 %659, 1
  %669 = icmp eq i32 %659, 1
  br i1 %669, label %704, label %670

670:                                              ; preds = %666
  %671 = and i32 %659, 254
  br label %672

672:                                              ; preds = %697, %670
  %673 = phi i32 [ %664, %670 ], [ %698, %697 ]
  %674 = phi i32 [ 0, %670 ], [ %699, %697 ]
  %675 = phi i32 [ 0, %670 ], [ %700, %697 ]
  %676 = shl i32 %674, 8
  %677 = icmp slt i32 %673, %609
  br i1 %677, label %678, label %685

678:                                              ; preds = %672
  %679 = add nsw i32 %673, 1
  %680 = sext i32 %673 to i64
  %681 = getelementptr inbounds i8, ptr %667, i64 %680
  %682 = load i8, ptr %681, align 1, !tbaa !8
  %683 = zext i8 %682 to i32
  %684 = or disjoint i32 %676, %683
  br label %685

685:                                              ; preds = %678, %672
  %686 = phi i32 [ %679, %678 ], [ %673, %672 ]
  %687 = phi i32 [ %684, %678 ], [ %676, %672 ]
  %688 = shl i32 %687, 8
  %689 = icmp slt i32 %686, %609
  br i1 %689, label %690, label %697

690:                                              ; preds = %685
  %691 = add nsw i32 %686, 1
  %692 = sext i32 %686 to i64
  %693 = getelementptr inbounds i8, ptr %667, i64 %692
  %694 = load i8, ptr %693, align 1, !tbaa !8
  %695 = zext i8 %694 to i32
  %696 = or disjoint i32 %688, %695
  br label %697

697:                                              ; preds = %690, %685
  %698 = phi i32 [ %691, %690 ], [ %686, %685 ]
  %699 = phi i32 [ %696, %690 ], [ %688, %685 ]
  %700 = add i32 %675, 2
  %701 = icmp eq i32 %700, %671
  br i1 %701, label %702, label %672, !llvm.loop !29

702:                                              ; preds = %697
  %703 = icmp eq i32 %668, 0
  br i1 %703, label %717, label %704

704:                                              ; preds = %702, %666
  %705 = phi i32 [ %664, %666 ], [ %698, %702 ]
  %706 = phi i32 [ 0, %666 ], [ %699, %702 ]
  %707 = icmp ne i32 %668, 0
  tail call void @llvm.assume(i1 %707)
  %708 = shl i32 %706, 8
  %709 = icmp slt i32 %705, %609
  br i1 %709, label %710, label %717

710:                                              ; preds = %704
  %711 = add nsw i32 %705, 1
  %712 = sext i32 %705 to i64
  %713 = getelementptr inbounds i8, ptr %667, i64 %712
  %714 = load i8, ptr %713, align 1, !tbaa !8
  %715 = zext i8 %714 to i32
  %716 = or disjoint i32 %708, %715
  br label %717

717:                                              ; preds = %704, %710, %702
  %718 = phi i32 [ %698, %702 ], [ %711, %710 ], [ %705, %704 ]
  %719 = phi i32 [ %699, %702 ], [ %716, %710 ], [ %708, %704 ]
  %720 = add i32 %719, -1
  br label %721

721:                                              ; preds = %717, %657
  %722 = phi i32 [ %664, %657 ], [ %718, %717 ]
  %723 = phi i32 [ -1, %657 ], [ %720, %717 ]
  %724 = add nsw i32 %723, %722
  %725 = icmp slt i32 %724, 0
  %726 = tail call i32 @llvm.smin.i32(i32 %724, i32 %609)
  %727 = select i1 %725, i32 %609, i32 %726
  store i32 %727, ptr %605, align 8, !tbaa !26
  br label %728

728:                                              ; preds = %721, %644
  %729 = phi i32 [ %727, %721 ], [ %645, %644 ]
  %730 = icmp slt i32 %729, %609
  br i1 %730, label %731, label %739

731:                                              ; preds = %728
  %732 = load ptr, ptr %14, align 8, !tbaa !28
  %733 = add nsw i32 %729, 1
  store i32 %733, ptr %605, align 8, !tbaa !26
  %734 = sext i32 %729 to i64
  %735 = getelementptr inbounds i8, ptr %732, i64 %734
  %736 = load i8, ptr %735, align 1, !tbaa !8
  %737 = zext i8 %736 to i32
  %738 = shl nuw nsw i32 %737, 8
  br label %739

739:                                              ; preds = %731, %728
  %740 = phi i32 [ %733, %731 ], [ %729, %728 ]
  %741 = phi i32 [ %738, %731 ], [ 0, %728 ]
  %742 = icmp slt i32 %740, %609
  br i1 %742, label %743, label %751

743:                                              ; preds = %739
  %744 = load ptr, ptr %14, align 8, !tbaa !28
  %745 = add nsw i32 %740, 1
  store i32 %745, ptr %605, align 8, !tbaa !26
  %746 = sext i32 %740 to i64
  %747 = getelementptr inbounds i8, ptr %744, i64 %746
  %748 = load i8, ptr %747, align 1, !tbaa !8
  %749 = zext i8 %748 to i32
  %750 = or disjoint i32 %741, %749
  br label %751

751:                                              ; preds = %743, %739
  %752 = phi i32 [ %745, %743 ], [ %740, %739 ]
  %753 = phi i32 [ %750, %743 ], [ %741, %739 ]
  %754 = icmp eq i32 %753, 0
  br i1 %754, label %835, label %755

755:                                              ; preds = %751
  %756 = icmp slt i32 %752, %609
  br i1 %756, label %757, label %764

757:                                              ; preds = %755
  %758 = load ptr, ptr %14, align 8, !tbaa !28
  %759 = add nsw i32 %752, 1
  %760 = sext i32 %752 to i64
  %761 = getelementptr inbounds i8, ptr %758, i64 %760
  %762 = load i8, ptr %761, align 1, !tbaa !8
  %763 = zext i8 %762 to i32
  br label %764

764:                                              ; preds = %757, %755
  %765 = phi i32 [ %759, %757 ], [ %752, %755 ]
  %766 = phi i32 [ %763, %757 ], [ 0, %755 ]
  %767 = mul nuw nsw i32 %766, %753
  %768 = add nsw i32 %767, %765
  %769 = icmp slt i32 %768, 0
  %770 = tail call i32 @llvm.smin.i32(i32 %768, i32 %609)
  %771 = select i1 %769, i32 %609, i32 %770
  %772 = icmp eq i32 %766, 0
  br i1 %772, label %828, label %773

773:                                              ; preds = %764
  %774 = load ptr, ptr %14, align 8
  %775 = and i32 %766, 1
  %776 = icmp eq i32 %766, 1
  br i1 %776, label %811, label %777

777:                                              ; preds = %773
  %778 = and i32 %766, 254
  br label %779

779:                                              ; preds = %804, %777
  %780 = phi i32 [ %771, %777 ], [ %805, %804 ]
  %781 = phi i32 [ 0, %777 ], [ %806, %804 ]
  %782 = phi i32 [ 0, %777 ], [ %807, %804 ]
  %783 = shl i32 %781, 8
  %784 = icmp slt i32 %780, %609
  br i1 %784, label %785, label %792

785:                                              ; preds = %779
  %786 = add nsw i32 %780, 1
  %787 = sext i32 %780 to i64
  %788 = getelementptr inbounds i8, ptr %774, i64 %787
  %789 = load i8, ptr %788, align 1, !tbaa !8
  %790 = zext i8 %789 to i32
  %791 = or disjoint i32 %783, %790
  br label %792

792:                                              ; preds = %785, %779
  %793 = phi i32 [ %786, %785 ], [ %780, %779 ]
  %794 = phi i32 [ %791, %785 ], [ %783, %779 ]
  %795 = shl i32 %794, 8
  %796 = icmp slt i32 %793, %609
  br i1 %796, label %797, label %804

797:                                              ; preds = %792
  %798 = add nsw i32 %793, 1
  %799 = sext i32 %793 to i64
  %800 = getelementptr inbounds i8, ptr %774, i64 %799
  %801 = load i8, ptr %800, align 1, !tbaa !8
  %802 = zext i8 %801 to i32
  %803 = or disjoint i32 %795, %802
  br label %804

804:                                              ; preds = %797, %792
  %805 = phi i32 [ %798, %797 ], [ %793, %792 ]
  %806 = phi i32 [ %803, %797 ], [ %795, %792 ]
  %807 = add i32 %782, 2
  %808 = icmp eq i32 %807, %778
  br i1 %808, label %809, label %779, !llvm.loop !29

809:                                              ; preds = %804
  %810 = icmp eq i32 %775, 0
  br i1 %810, label %824, label %811

811:                                              ; preds = %809, %773
  %812 = phi i32 [ %771, %773 ], [ %805, %809 ]
  %813 = phi i32 [ 0, %773 ], [ %806, %809 ]
  %814 = icmp ne i32 %775, 0
  tail call void @llvm.assume(i1 %814)
  %815 = shl i32 %813, 8
  %816 = icmp slt i32 %812, %609
  br i1 %816, label %817, label %824

817:                                              ; preds = %811
  %818 = add nsw i32 %812, 1
  %819 = sext i32 %812 to i64
  %820 = getelementptr inbounds i8, ptr %774, i64 %819
  %821 = load i8, ptr %820, align 1, !tbaa !8
  %822 = zext i8 %821 to i32
  %823 = or disjoint i32 %815, %822
  br label %824

824:                                              ; preds = %811, %817, %809
  %825 = phi i32 [ %805, %809 ], [ %818, %817 ], [ %812, %811 ]
  %826 = phi i32 [ %806, %809 ], [ %823, %817 ], [ %815, %811 ]
  %827 = add i32 %826, -1
  br label %828

828:                                              ; preds = %824, %764
  %829 = phi i32 [ %771, %764 ], [ %825, %824 ]
  %830 = phi i32 [ -1, %764 ], [ %827, %824 ]
  %831 = add nsw i32 %830, %829
  %832 = icmp slt i32 %831, 0
  %833 = tail call i32 @llvm.smin.i32(i32 %831, i32 %609)
  %834 = select i1 %832, i32 %609, i32 %833
  store i32 %834, ptr %605, align 8, !tbaa !26
  br label %835

835:                                              ; preds = %828, %751
  %836 = phi i32 [ %834, %828 ], [ %752, %751 ]
  %837 = sub nsw i32 %836, %729
  %838 = or i32 %837, %729
  %839 = icmp sgt i32 %838, -1
  br i1 %839, label %840, label %850

840:                                              ; preds = %835
  %841 = icmp sgt i32 %729, %609
  %842 = icmp sgt i32 %836, %609
  %843 = or i1 %841, %842
  br i1 %843, label %850, label %844

844:                                              ; preds = %840
  %845 = load ptr, ptr %14, align 8, !tbaa !28
  %846 = zext nneg i32 %729 to i64
  %847 = getelementptr inbounds nuw i8, ptr %845, i64 %846
  %848 = zext nneg i32 %837 to i64
  %849 = shl nuw nsw i64 %848, 32
  br label %850

850:                                              ; preds = %844, %840, %835
  %851 = phi ptr [ null, %835 ], [ null, %840 ], [ %847, %844 ]
  %852 = phi i64 [ 0, %835 ], [ 0, %840 ], [ %849, %844 ]
  %853 = tail call fastcc { ptr, i64 } @stbtt__cff_index_get(ptr %851, i64 %852, i32 noundef 0) #17
  %854 = extractvalue { ptr, i64 } %853, 0
  %855 = extractvalue { ptr, i64 } %853, 1
  store ptr %854, ptr %15, align 8, !tbaa !15
  %856 = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %855, ptr %856, align 8
  %857 = icmp slt i32 %836, %609
  br i1 %857, label %858, label %866

858:                                              ; preds = %850
  %859 = load ptr, ptr %14, align 8, !tbaa !28
  %860 = add nsw i32 %836, 1
  store i32 %860, ptr %605, align 8, !tbaa !26
  %861 = sext i32 %836 to i64
  %862 = getelementptr inbounds i8, ptr %859, i64 %861
  %863 = load i8, ptr %862, align 1, !tbaa !8
  %864 = zext i8 %863 to i32
  %865 = shl nuw nsw i32 %864, 8
  br label %866

866:                                              ; preds = %858, %850
  %867 = phi i32 [ %860, %858 ], [ %836, %850 ]
  %868 = phi i32 [ %865, %858 ], [ 0, %850 ]
  %869 = icmp slt i32 %867, %609
  br i1 %869, label %870, label %878

870:                                              ; preds = %866
  %871 = load ptr, ptr %14, align 8, !tbaa !28
  %872 = add nsw i32 %867, 1
  store i32 %872, ptr %605, align 8, !tbaa !26
  %873 = sext i32 %867 to i64
  %874 = getelementptr inbounds i8, ptr %871, i64 %873
  %875 = load i8, ptr %874, align 1, !tbaa !8
  %876 = zext i8 %875 to i32
  %877 = or disjoint i32 %868, %876
  br label %878

878:                                              ; preds = %870, %866
  %879 = phi i32 [ %872, %870 ], [ %867, %866 ]
  %880 = phi i32 [ %877, %870 ], [ %868, %866 ]
  %881 = icmp eq i32 %880, 0
  br i1 %881, label %962, label %882

882:                                              ; preds = %878
  %883 = icmp slt i32 %879, %609
  br i1 %883, label %884, label %891

884:                                              ; preds = %882
  %885 = load ptr, ptr %14, align 8, !tbaa !28
  %886 = add nsw i32 %879, 1
  %887 = sext i32 %879 to i64
  %888 = getelementptr inbounds i8, ptr %885, i64 %887
  %889 = load i8, ptr %888, align 1, !tbaa !8
  %890 = zext i8 %889 to i32
  br label %891

891:                                              ; preds = %884, %882
  %892 = phi i32 [ %886, %884 ], [ %879, %882 ]
  %893 = phi i32 [ %890, %884 ], [ 0, %882 ]
  %894 = mul nuw nsw i32 %893, %880
  %895 = add nsw i32 %894, %892
  %896 = icmp slt i32 %895, 0
  %897 = tail call i32 @llvm.smin.i32(i32 %895, i32 %609)
  %898 = select i1 %896, i32 %609, i32 %897
  %899 = icmp eq i32 %893, 0
  br i1 %899, label %955, label %900

900:                                              ; preds = %891
  %901 = load ptr, ptr %14, align 8
  %902 = and i32 %893, 1
  %903 = icmp eq i32 %893, 1
  br i1 %903, label %938, label %904

904:                                              ; preds = %900
  %905 = and i32 %893, 254
  br label %906

906:                                              ; preds = %931, %904
  %907 = phi i32 [ %898, %904 ], [ %932, %931 ]
  %908 = phi i32 [ 0, %904 ], [ %933, %931 ]
  %909 = phi i32 [ 0, %904 ], [ %934, %931 ]
  %910 = shl i32 %908, 8
  %911 = icmp slt i32 %907, %609
  br i1 %911, label %912, label %919

912:                                              ; preds = %906
  %913 = add nsw i32 %907, 1
  %914 = sext i32 %907 to i64
  %915 = getelementptr inbounds i8, ptr %901, i64 %914
  %916 = load i8, ptr %915, align 1, !tbaa !8
  %917 = zext i8 %916 to i32
  %918 = or disjoint i32 %910, %917
  br label %919

919:                                              ; preds = %912, %906
  %920 = phi i32 [ %913, %912 ], [ %907, %906 ]
  %921 = phi i32 [ %918, %912 ], [ %910, %906 ]
  %922 = shl i32 %921, 8
  %923 = icmp slt i32 %920, %609
  br i1 %923, label %924, label %931

924:                                              ; preds = %919
  %925 = add nsw i32 %920, 1
  %926 = sext i32 %920 to i64
  %927 = getelementptr inbounds i8, ptr %901, i64 %926
  %928 = load i8, ptr %927, align 1, !tbaa !8
  %929 = zext i8 %928 to i32
  %930 = or disjoint i32 %922, %929
  br label %931

931:                                              ; preds = %924, %919
  %932 = phi i32 [ %925, %924 ], [ %920, %919 ]
  %933 = phi i32 [ %930, %924 ], [ %922, %919 ]
  %934 = add i32 %909, 2
  %935 = icmp eq i32 %934, %905
  br i1 %935, label %936, label %906, !llvm.loop !29

936:                                              ; preds = %931
  %937 = icmp eq i32 %902, 0
  br i1 %937, label %951, label %938

938:                                              ; preds = %936, %900
  %939 = phi i32 [ %898, %900 ], [ %932, %936 ]
  %940 = phi i32 [ 0, %900 ], [ %933, %936 ]
  %941 = icmp ne i32 %902, 0
  tail call void @llvm.assume(i1 %941)
  %942 = shl i32 %940, 8
  %943 = icmp slt i32 %939, %609
  br i1 %943, label %944, label %951

944:                                              ; preds = %938
  %945 = add nsw i32 %939, 1
  %946 = sext i32 %939 to i64
  %947 = getelementptr inbounds i8, ptr %901, i64 %946
  %948 = load i8, ptr %947, align 1, !tbaa !8
  %949 = zext i8 %948 to i32
  %950 = or disjoint i32 %942, %949
  br label %951

951:                                              ; preds = %938, %944, %936
  %952 = phi i32 [ %932, %936 ], [ %945, %944 ], [ %939, %938 ]
  %953 = phi i32 [ %933, %936 ], [ %950, %944 ], [ %942, %938 ]
  %954 = add i32 %953, -1
  br label %955

955:                                              ; preds = %951, %891
  %956 = phi i32 [ %898, %891 ], [ %952, %951 ]
  %957 = phi i32 [ -1, %891 ], [ %954, %951 ]
  %958 = add nsw i32 %957, %956
  %959 = icmp slt i32 %958, 0
  %960 = tail call i32 @llvm.smin.i32(i32 %958, i32 %609)
  %961 = select i1 %959, i32 %609, i32 %960
  store i32 %961, ptr %605, align 8, !tbaa !26
  br label %962

962:                                              ; preds = %955, %878
  %963 = phi i32 [ %961, %955 ], [ %879, %878 ]
  %964 = getelementptr inbounds nuw i8, ptr %20, i64 96
  %965 = icmp slt i32 %963, %609
  br i1 %965, label %966, label %974

966:                                              ; preds = %962
  %967 = load ptr, ptr %14, align 8, !tbaa !28
  %968 = add nsw i32 %963, 1
  store i32 %968, ptr %605, align 8, !tbaa !26
  %969 = sext i32 %963 to i64
  %970 = getelementptr inbounds i8, ptr %967, i64 %969
  %971 = load i8, ptr %970, align 1, !tbaa !8
  %972 = zext i8 %971 to i32
  %973 = shl nuw nsw i32 %972, 8
  br label %974

974:                                              ; preds = %966, %962
  %975 = phi i32 [ %968, %966 ], [ %963, %962 ]
  %976 = phi i32 [ %973, %966 ], [ 0, %962 ]
  %977 = icmp slt i32 %975, %609
  br i1 %977, label %978, label %986

978:                                              ; preds = %974
  %979 = load ptr, ptr %14, align 8, !tbaa !28
  %980 = add nsw i32 %975, 1
  store i32 %980, ptr %605, align 8, !tbaa !26
  %981 = sext i32 %975 to i64
  %982 = getelementptr inbounds i8, ptr %979, i64 %981
  %983 = load i8, ptr %982, align 1, !tbaa !8
  %984 = zext i8 %983 to i32
  %985 = or disjoint i32 %976, %984
  br label %986

986:                                              ; preds = %978, %974
  %987 = phi i32 [ %980, %978 ], [ %975, %974 ]
  %988 = phi i32 [ %985, %978 ], [ %976, %974 ]
  %989 = icmp eq i32 %988, 0
  br i1 %989, label %1070, label %990

990:                                              ; preds = %986
  %991 = icmp slt i32 %987, %609
  br i1 %991, label %992, label %999

992:                                              ; preds = %990
  %993 = load ptr, ptr %14, align 8, !tbaa !28
  %994 = add nsw i32 %987, 1
  %995 = sext i32 %987 to i64
  %996 = getelementptr inbounds i8, ptr %993, i64 %995
  %997 = load i8, ptr %996, align 1, !tbaa !8
  %998 = zext i8 %997 to i32
  br label %999

999:                                              ; preds = %992, %990
  %1000 = phi i32 [ %994, %992 ], [ %987, %990 ]
  %1001 = phi i32 [ %998, %992 ], [ 0, %990 ]
  %1002 = mul nuw nsw i32 %1001, %988
  %1003 = add nsw i32 %1002, %1000
  %1004 = icmp slt i32 %1003, 0
  %1005 = tail call i32 @llvm.smin.i32(i32 %1003, i32 %609)
  %1006 = select i1 %1004, i32 %609, i32 %1005
  %1007 = icmp eq i32 %1001, 0
  br i1 %1007, label %1063, label %1008

1008:                                             ; preds = %999
  %1009 = load ptr, ptr %14, align 8
  %1010 = and i32 %1001, 1
  %1011 = icmp eq i32 %1001, 1
  br i1 %1011, label %1046, label %1012

1012:                                             ; preds = %1008
  %1013 = and i32 %1001, 254
  br label %1014

1014:                                             ; preds = %1039, %1012
  %1015 = phi i32 [ %1006, %1012 ], [ %1040, %1039 ]
  %1016 = phi i32 [ 0, %1012 ], [ %1041, %1039 ]
  %1017 = phi i32 [ 0, %1012 ], [ %1042, %1039 ]
  %1018 = shl i32 %1016, 8
  %1019 = icmp slt i32 %1015, %609
  br i1 %1019, label %1020, label %1027

1020:                                             ; preds = %1014
  %1021 = add nsw i32 %1015, 1
  %1022 = sext i32 %1015 to i64
  %1023 = getelementptr inbounds i8, ptr %1009, i64 %1022
  %1024 = load i8, ptr %1023, align 1, !tbaa !8
  %1025 = zext i8 %1024 to i32
  %1026 = or disjoint i32 %1018, %1025
  br label %1027

1027:                                             ; preds = %1020, %1014
  %1028 = phi i32 [ %1021, %1020 ], [ %1015, %1014 ]
  %1029 = phi i32 [ %1026, %1020 ], [ %1018, %1014 ]
  %1030 = shl i32 %1029, 8
  %1031 = icmp slt i32 %1028, %609
  br i1 %1031, label %1032, label %1039

1032:                                             ; preds = %1027
  %1033 = add nsw i32 %1028, 1
  %1034 = sext i32 %1028 to i64
  %1035 = getelementptr inbounds i8, ptr %1009, i64 %1034
  %1036 = load i8, ptr %1035, align 1, !tbaa !8
  %1037 = zext i8 %1036 to i32
  %1038 = or disjoint i32 %1030, %1037
  br label %1039

1039:                                             ; preds = %1032, %1027
  %1040 = phi i32 [ %1033, %1032 ], [ %1028, %1027 ]
  %1041 = phi i32 [ %1038, %1032 ], [ %1030, %1027 ]
  %1042 = add i32 %1017, 2
  %1043 = icmp eq i32 %1042, %1013
  br i1 %1043, label %1044, label %1014, !llvm.loop !29

1044:                                             ; preds = %1039
  %1045 = icmp eq i32 %1010, 0
  br i1 %1045, label %1059, label %1046

1046:                                             ; preds = %1044, %1008
  %1047 = phi i32 [ %1006, %1008 ], [ %1040, %1044 ]
  %1048 = phi i32 [ 0, %1008 ], [ %1041, %1044 ]
  %1049 = icmp ne i32 %1010, 0
  tail call void @llvm.assume(i1 %1049)
  %1050 = shl i32 %1048, 8
  %1051 = icmp slt i32 %1047, %609
  br i1 %1051, label %1052, label %1059

1052:                                             ; preds = %1046
  %1053 = add nsw i32 %1047, 1
  %1054 = sext i32 %1047 to i64
  %1055 = getelementptr inbounds i8, ptr %1009, i64 %1054
  %1056 = load i8, ptr %1055, align 1, !tbaa !8
  %1057 = zext i8 %1056 to i32
  %1058 = or disjoint i32 %1050, %1057
  br label %1059

1059:                                             ; preds = %1046, %1052, %1044
  %1060 = phi i32 [ %1040, %1044 ], [ %1053, %1052 ], [ %1047, %1046 ]
  %1061 = phi i32 [ %1041, %1044 ], [ %1058, %1052 ], [ %1050, %1046 ]
  %1062 = add i32 %1061, -1
  br label %1063

1063:                                             ; preds = %1059, %999
  %1064 = phi i32 [ %1006, %999 ], [ %1060, %1059 ]
  %1065 = phi i32 [ -1, %999 ], [ %1062, %1059 ]
  %1066 = add nsw i32 %1065, %1064
  %1067 = icmp slt i32 %1066, 0
  %1068 = tail call i32 @llvm.smin.i32(i32 %1066, i32 %609)
  %1069 = select i1 %1067, i32 %609, i32 %1068
  store i32 %1069, ptr %605, align 8, !tbaa !26
  br label %1070

1070:                                             ; preds = %1063, %986
  %1071 = phi i32 [ %1069, %1063 ], [ %987, %986 ]
  %1072 = sub nsw i32 %1071, %963
  %1073 = or i32 %1072, %963
  %1074 = icmp sgt i32 %1073, -1
  br i1 %1074, label %1077, label %1075

1075:                                             ; preds = %1070
  %1076 = load ptr, ptr %14, align 8
  br label %1087

1077:                                             ; preds = %1070
  %1078 = icmp sgt i32 %963, %609
  %1079 = icmp sgt i32 %1071, %609
  %1080 = or i1 %1078, %1079
  %1081 = load ptr, ptr %14, align 8
  br i1 %1080, label %1087, label %1082

1082:                                             ; preds = %1077
  %1083 = zext nneg i32 %963 to i64
  %1084 = getelementptr inbounds nuw i8, ptr %1081, i64 %1083
  %1085 = zext nneg i32 %1072 to i64
  %1086 = shl nuw nsw i64 %1085, 32
  br label %1087

1087:                                             ; preds = %1082, %1077, %1075
  %1088 = phi ptr [ %1076, %1075 ], [ %1081, %1077 ], [ %1081, %1082 ]
  %1089 = phi ptr [ null, %1075 ], [ null, %1077 ], [ %1084, %1082 ]
  %1090 = phi i64 [ 0, %1075 ], [ 0, %1077 ], [ %1086, %1082 ]
  store ptr %1089, ptr %964, align 8, !tbaa !15
  %1091 = getelementptr inbounds nuw i8, ptr %20, i64 104
  store i64 %1090, ptr %1091, align 8
  call fastcc void @stbtt__dict_get_ints(ptr noundef %15, i32 noundef 17, i32 noundef 1, ptr noundef %17) #17
  call fastcc void @stbtt__dict_get_ints(ptr noundef %15, i32 noundef 262, i32 noundef 1, ptr noundef %16) #17
  call fastcc void @stbtt__dict_get_ints(ptr noundef %15, i32 noundef 292, i32 noundef 1, ptr noundef %18) #17
  call fastcc void @stbtt__dict_get_ints(ptr noundef %15, i32 noundef 293, i32 noundef 1, ptr noundef %19) #17
  %1092 = getelementptr inbounds nuw i8, ptr %20, i64 112
  %1093 = load i64, ptr %605, align 8
  %1094 = load ptr, ptr %15, align 8
  %1095 = load i64, ptr %856, align 8
  %1096 = tail call fastcc { ptr, i64 } @stbtt__get_subrs(ptr %1088, i64 %1093, ptr %1094, i64 %1095) #17
  %1097 = extractvalue { ptr, i64 } %1096, 0
  %1098 = extractvalue { ptr, i64 } %1096, 1
  store ptr %1097, ptr %1092, align 8, !tbaa !15
  %1099 = getelementptr inbounds nuw i8, ptr %20, i64 120
  store i64 %1098, ptr %1099, align 8
  %1100 = load i32, ptr %16, align 4, !tbaa !4
  %1101 = icmp ne i32 %1100, 2
  %1102 = load i32, ptr %17, align 4
  %1103 = icmp eq i32 %1102, 0
  %1104 = select i1 %1101, i1 true, i1 %1103
  br i1 %1104, label %1272, label %1105

1105:                                             ; preds = %1087
  %1106 = lshr i64 %1093, 32
  %1107 = trunc nuw i64 %1106 to i32
  %1108 = load i32, ptr %18, align 4, !tbaa !4
  %1109 = icmp eq i32 %1108, 0
  br i1 %1109, label %1133, label %1110

1110:                                             ; preds = %1105
  %1111 = load i32, ptr %19, align 4, !tbaa !4
  %1112 = icmp eq i32 %1111, 0
  br i1 %1112, label %1272, label %1113

1113:                                             ; preds = %1110
  %1114 = icmp slt i32 %1108, 0
  %1115 = tail call i32 @llvm.smin.i32(i32 %1108, i32 %609)
  %1116 = select i1 %1114, i32 %609, i32 %1115
  store i32 %1116, ptr %605, align 8, !tbaa !26
  %1117 = call fastcc { ptr, i64 } @stbtt__cff_get_index(ptr noundef %14) #17
  %1118 = extractvalue { ptr, i64 } %1117, 0
  %1119 = extractvalue { ptr, i64 } %1117, 1
  store ptr %1118, ptr %599, align 8, !tbaa !15
  store i64 %1119, ptr %600, align 8
  %1120 = load i32, ptr %608, align 4, !tbaa !27
  %1121 = sub i32 %1120, %1111
  %1122 = or i32 %1121, %1111
  %1123 = icmp slt i32 %1122, 0
  %1124 = icmp sgt i32 %1111, %1120
  %1125 = or i1 %1124, %1123
  %1126 = load ptr, ptr %14, align 8
  %1127 = zext nneg i32 %1111 to i64
  %1128 = getelementptr inbounds nuw i8, ptr %1126, i64 %1127
  %1129 = zext nneg i32 %1121 to i64
  %1130 = shl nuw nsw i64 %1129, 32
  %1131 = select i1 %1125, ptr null, ptr %1128
  %1132 = select i1 %1125, i64 0, i64 %1130
  store ptr %1131, ptr %601, align 8, !tbaa !15
  store i64 %1132, ptr %602, align 8
  br label %1133

1133:                                             ; preds = %1113, %1105
  %1134 = phi i32 [ %1120, %1113 ], [ %1107, %1105 ]
  %1135 = icmp slt i32 %1102, 0
  %1136 = tail call i32 @llvm.smin.i32(i32 %1102, i32 %1134)
  %1137 = select i1 %1135, i32 %1134, i32 %1136
  store i32 %1137, ptr %605, align 8, !tbaa !26
  %1138 = getelementptr inbounds nuw i8, ptr %20, i64 80
  %1139 = call fastcc { ptr, i64 } @stbtt__cff_get_index(ptr noundef %14) #17
  %1140 = extractvalue { ptr, i64 } %1139, 0
  %1141 = extractvalue { ptr, i64 } %1139, 1
  store ptr %1140, ptr %1138, align 8, !tbaa !15
  %1142 = getelementptr inbounds nuw i8, ptr %20, i64 88
  store i64 %1141, ptr %1142, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  br label %1143

1143:                                             ; preds = %1133, %549
  br i1 %180, label %1201, label %1144

1144:                                             ; preds = %1143
  %1145 = add nuw i32 %161, 12
  %1146 = zext i32 %1145 to i64
  %1147 = zext nneg i32 %179 to i64
  %1148 = getelementptr inbounds nuw i8, ptr %0, i64 %1146
  br label %1149

1149:                                             ; preds = %1167, %1144
  %1150 = phi i64 [ 0, %1144 ], [ %1168, %1167 ]
  %1151 = shl nsw i64 %1150, 4
  %1152 = getelementptr inbounds nuw i8, ptr %1148, i64 %1151
  %1153 = load i8, ptr %1152, align 1, !tbaa !8
  %1154 = icmp eq i8 %1153, 109
  br i1 %1154, label %1155, label %1167

1155:                                             ; preds = %1149
  %1156 = getelementptr inbounds nuw i8, ptr %1152, i64 1
  %1157 = load i8, ptr %1156, align 1, !tbaa !8
  %1158 = icmp eq i8 %1157, 97
  br i1 %1158, label %1159, label %1167

1159:                                             ; preds = %1155
  %1160 = getelementptr inbounds nuw i8, ptr %1152, i64 2
  %1161 = load i8, ptr %1160, align 1, !tbaa !8
  %1162 = icmp eq i8 %1161, 120
  br i1 %1162, label %1163, label %1167

1163:                                             ; preds = %1159
  %1164 = getelementptr inbounds nuw i8, ptr %1152, i64 3
  %1165 = load i8, ptr %1164, align 1, !tbaa !8
  %1166 = icmp eq i8 %1165, 112
  br i1 %1166, label %1170, label %1167

1167:                                             ; preds = %1163, %1159, %1155, %1149
  %1168 = add nuw nsw i64 %1150, 1
  %1169 = icmp eq i64 %1168, %1147
  br i1 %1169, label %1201, label %1149, !llvm.loop !18

1170:                                             ; preds = %1163
  %1171 = getelementptr inbounds nuw i8, ptr %1152, i64 8
  %1172 = load i8, ptr %1171, align 1, !tbaa !8
  %1173 = zext i8 %1172 to i32
  %1174 = shl nuw i32 %1173, 24
  %1175 = getelementptr inbounds nuw i8, ptr %1152, i64 9
  %1176 = load i8, ptr %1175, align 1, !tbaa !8
  %1177 = zext i8 %1176 to i32
  %1178 = shl nuw nsw i32 %1177, 16
  %1179 = or disjoint i32 %1178, %1174
  %1180 = getelementptr inbounds nuw i8, ptr %1152, i64 10
  %1181 = load i8, ptr %1180, align 1, !tbaa !8
  %1182 = zext i8 %1181 to i32
  %1183 = shl nuw nsw i32 %1182, 8
  %1184 = or disjoint i32 %1179, %1183
  %1185 = getelementptr inbounds nuw i8, ptr %1152, i64 11
  %1186 = load i8, ptr %1185, align 1, !tbaa !8
  %1187 = zext i8 %1186 to i32
  %1188 = or disjoint i32 %1184, %1187
  %1189 = icmp eq i32 %1188, 0
  br i1 %1189, label %1201, label %1190

1190:                                             ; preds = %1170
  %1191 = zext i32 %1188 to i64
  %1192 = getelementptr inbounds nuw i8, ptr %0, i64 %1191
  %1193 = getelementptr inbounds nuw i8, ptr %1192, i64 4
  %1194 = load i8, ptr %1193, align 1, !tbaa !8
  %1195 = zext i8 %1194 to i32
  %1196 = shl nuw nsw i32 %1195, 8
  %1197 = getelementptr inbounds nuw i8, ptr %1192, i64 5
  %1198 = load i8, ptr %1197, align 1, !tbaa !8
  %1199 = zext i8 %1198 to i32
  %1200 = or disjoint i32 %1196, %1199
  br label %1201

1201:                                             ; preds = %1167, %1190, %1170, %1143
  %1202 = phi i32 [ %1200, %1190 ], [ 65535, %1170 ], [ 65535, %1143 ], [ 65535, %1167 ]
  %1203 = getelementptr inbounds nuw i8, ptr %20, i64 20
  store i32 %1202, ptr %1203, align 4, !tbaa !30
  %1204 = getelementptr inbounds nuw i8, ptr %20, i64 52
  store i32 -1, ptr %1204, align 4, !tbaa !31
  %1205 = zext i32 %534 to i64
  %1206 = getelementptr inbounds nuw i8, ptr %0, i64 %1205
  %1207 = getelementptr inbounds nuw i8, ptr %1206, i64 2
  %1208 = load i8, ptr %1207, align 1, !tbaa !8
  %1209 = zext i8 %1208 to i32
  %1210 = shl nuw nsw i32 %1209, 8
  %1211 = getelementptr inbounds nuw i8, ptr %1206, i64 3
  %1212 = load i8, ptr %1211, align 1, !tbaa !8
  %1213 = zext i8 %1212 to i32
  %1214 = or disjoint i32 %1210, %1213
  %1215 = getelementptr inbounds nuw i8, ptr %20, i64 56
  %1216 = icmp eq i32 %1214, 0
  br i1 %1216, label %1273, label %1217

1217:                                             ; preds = %1201
  %1218 = add i32 %534, 4
  %1219 = zext nneg i32 %1214 to i64
  br label %1220

1220:                                             ; preds = %1265, %1217
  %1221 = phi i32 [ 0, %1217 ], [ %1266, %1265 ]
  %1222 = phi i32 [ 0, %1217 ], [ %1267, %1265 ]
  %1223 = phi i64 [ 0, %1217 ], [ %1268, %1265 ]
  %1224 = trunc i64 %1223 to i32
  %1225 = shl i32 %1224, 3
  %1226 = add i32 %1218, %1225
  %1227 = zext i32 %1226 to i64
  %1228 = getelementptr inbounds nuw i8, ptr %0, i64 %1227
  %1229 = load i8, ptr %1228, align 1, !tbaa !8
  %1230 = zext i8 %1229 to i16
  %1231 = shl nuw i16 %1230, 8
  %1232 = getelementptr inbounds nuw i8, ptr %1228, i64 1
  %1233 = load i8, ptr %1232, align 1, !tbaa !8
  %1234 = zext i8 %1233 to i16
  %1235 = or disjoint i16 %1231, %1234
  switch i16 %1235, label %1265 [
    i16 3, label %1236
    i16 0, label %1245
  ]

1236:                                             ; preds = %1220
  %1237 = getelementptr inbounds nuw i8, ptr %1228, i64 2
  %1238 = load i8, ptr %1237, align 1, !tbaa !8
  %1239 = zext i8 %1238 to i16
  %1240 = shl nuw i16 %1239, 8
  %1241 = getelementptr inbounds nuw i8, ptr %1228, i64 3
  %1242 = load i8, ptr %1241, align 1, !tbaa !8
  %1243 = zext i8 %1242 to i16
  %1244 = or disjoint i16 %1240, %1243
  switch i16 %1244, label %1265 [
    i16 1, label %1245
    i16 10, label %1245
  ]

1245:                                             ; preds = %1236, %1236, %1220
  %1246 = getelementptr inbounds nuw i8, ptr %1228, i64 4
  %1247 = load i8, ptr %1246, align 1, !tbaa !8
  %1248 = zext i8 %1247 to i32
  %1249 = shl nuw i32 %1248, 24
  %1250 = getelementptr inbounds nuw i8, ptr %1228, i64 5
  %1251 = load i8, ptr %1250, align 1, !tbaa !8
  %1252 = zext i8 %1251 to i32
  %1253 = shl nuw nsw i32 %1252, 16
  %1254 = or disjoint i32 %1253, %1249
  %1255 = getelementptr inbounds nuw i8, ptr %1228, i64 6
  %1256 = load i8, ptr %1255, align 1, !tbaa !8
  %1257 = zext i8 %1256 to i32
  %1258 = shl nuw nsw i32 %1257, 8
  %1259 = or disjoint i32 %1254, %1258
  %1260 = getelementptr inbounds nuw i8, ptr %1228, i64 7
  %1261 = load i8, ptr %1260, align 1, !tbaa !8
  %1262 = zext i8 %1261 to i32
  %1263 = or disjoint i32 %1259, %1262
  %1264 = add i32 %1263, %534
  br label %1265

1265:                                             ; preds = %1245, %1236, %1220
  %1266 = phi i32 [ %1221, %1220 ], [ %1221, %1236 ], [ %1264, %1245 ]
  %1267 = phi i32 [ %1222, %1220 ], [ %1222, %1236 ], [ %1264, %1245 ]
  %1268 = add nuw nsw i64 %1223, 1
  %1269 = icmp eq i64 %1268, %1219
  br i1 %1269, label %1270, label %1220, !llvm.loop !32

1270:                                             ; preds = %1265
  store i32 %1266, ptr %1215, align 8
  %1271 = icmp eq i32 %1267, 0
  br i1 %1271, label %1273, label %1275

1272:                                             ; preds = %575, %1110, %1087, %578, %551
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  br label %1273

1273:                                             ; preds = %1201, %1270, %1272, %530, %549, %54, %58, %86, %90, %39, %43, %47, %62, %66, %70, %74, %78, %82, %37, %51, %94, %98, %102, %121, %160
  store i32 826689362, ptr %4, align 1
  %1274 = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 1, ptr %1274, align 1
  br label %3682

1275:                                             ; preds = %1270
  %1276 = sext i32 %533 to i64
  %1277 = getelementptr inbounds i8, ptr %0, i64 %1276
  %1278 = getelementptr inbounds nuw i8, ptr %1277, i64 50
  %1279 = load i8, ptr %1278, align 1, !tbaa !8
  %1280 = zext i8 %1279 to i32
  %1281 = shl nuw nsw i32 %1280, 8
  %1282 = getelementptr inbounds nuw i8, ptr %1277, i64 51
  %1283 = load i8, ptr %1282, align 1, !tbaa !8
  %1284 = zext i8 %1283 to i32
  %1285 = or disjoint i32 %1281, %1284
  %1286 = getelementptr inbounds nuw i8, ptr %20, i64 60
  store i32 %1285, ptr %1286, align 4, !tbaa !33
  %1287 = uitofp nneg i64 %3 to float
  %1288 = sext i32 %532 to i64
  %1289 = getelementptr inbounds i8, ptr %0, i64 %1288
  %1290 = getelementptr inbounds nuw i8, ptr %1289, i64 4
  %1291 = load i8, ptr %1290, align 1, !tbaa !8
  %1292 = zext i8 %1291 to i16
  %1293 = shl nuw i16 %1292, 8
  %1294 = getelementptr inbounds nuw i8, ptr %1289, i64 5
  %1295 = load i8, ptr %1294, align 1, !tbaa !8
  %1296 = zext i8 %1295 to i16
  %1297 = or disjoint i16 %1293, %1296
  %1298 = sext i16 %1297 to i32
  %1299 = getelementptr inbounds nuw i8, ptr %1289, i64 6
  %1300 = load i8, ptr %1299, align 1, !tbaa !8
  %1301 = zext i8 %1300 to i16
  %1302 = shl nuw i16 %1301, 8
  %1303 = getelementptr inbounds nuw i8, ptr %1289, i64 7
  %1304 = load i8, ptr %1303, align 1, !tbaa !8
  %1305 = zext i8 %1304 to i16
  %1306 = or disjoint i16 %1302, %1305
  %1307 = sext i16 %1306 to i32
  %1308 = sub nsw i32 %1298, %1307
  %1309 = sitofp i32 %1308 to float
  %1310 = fdiv float %1287, %1309
  %1311 = getelementptr inbounds nuw i8, ptr %1289, i64 8
  %1312 = load i8, ptr %1311, align 1, !tbaa !8
  %1313 = zext i8 %1312 to i16
  %1314 = shl nuw i16 %1313, 8
  %1315 = getelementptr inbounds nuw i8, ptr %1289, i64 9
  %1316 = load i8, ptr %1315, align 1, !tbaa !8
  %1317 = zext i8 %1316 to i16
  %1318 = or disjoint i16 %1314, %1317
  %1319 = sitofp i16 %1297 to float
  %1320 = fmul float %1310, %1319
  %1321 = fpext float %1320 to double
  %1322 = fptosi float %1320 to i64
  %1323 = sitofp i64 %1322 to double
  %1324 = fcmp ogt double %1321, %1323
  %1325 = fadd double %1323, 1.000000e+00
  %1326 = select i1 %1324, double %1325, double %1323
  %1327 = fptosi double %1326 to i32
  %1328 = sub nsw i32 0, %1307
  %1329 = sitofp i32 %1328 to float
  %1330 = fmul float %1310, %1329
  %1331 = fpext float %1330 to double
  %1332 = fptosi float %1330 to i64
  %1333 = sitofp i64 %1332 to double
  %1334 = fcmp ogt double %1331, %1333
  %1335 = fadd double %1333, 1.000000e+00
  %1336 = select i1 %1334, double %1335, double %1333
  %1337 = fptosi double %1336 to i32
  %1338 = sitofp i16 %1318 to float
  %1339 = fmul float %1310, %1338
  %1340 = fptosi float %1339 to i32
  %1341 = add i32 %1337, %1340
  %1342 = add i32 %1341, %1327
  %1343 = tail call i64 @llvm.smin.i64(i64 %5, i64 1048576)
  %1344 = add nsw i64 %1343, -6788
  %1345 = getelementptr inbounds nuw i8, ptr %1289, i64 34
  %1346 = getelementptr inbounds nuw i8, ptr %1289, i64 35
  %1347 = sext i32 %537 to i64
  %1348 = getelementptr inbounds i8, ptr %0, i64 %1347
  %1349 = getelementptr inbounds nuw i8, ptr %4, i64 6788
  %1350 = fdiv float 0x3FD6666660000000, %1310
  %1351 = fmul float %1350, %1350
  %1352 = fneg float %1310
  %1353 = insertelement <4 x float> poison, float %1310, i64 0
  %1354 = insertelement <4 x float> %1353, float %1352, i64 1
  %1355 = shufflevector <4 x float> %1354, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  br label %1356

1356:                                             ; preds = %1275, %3160
  %1357 = phi i64 [ 0, %1275 ], [ %3165, %3160 ]
  %1358 = phi i32 [ 0, %1275 ], [ %3162, %3160 ]
  %1359 = phi i32 [ 0, %1275 ], [ %1402, %3160 ]
  %1360 = phi i32 [ 0, %1275 ], [ %3164, %3160 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #16
  %1361 = trunc i64 %1357 to i32
  %1362 = add i32 %1361, 32
  %1363 = call fastcc i32 @stbtt_FindGlyphIndex(ptr noundef nonnull readonly %20, i32 noundef range(i32 -2147483616, 127) %1362) #17
  %1364 = load i8, ptr %1345, align 1, !tbaa !8
  %1365 = zext i8 %1364 to i32
  %1366 = shl nuw nsw i32 %1365, 8
  %1367 = load i8, ptr %1346, align 1, !tbaa !8
  %1368 = zext i8 %1367 to i32
  %1369 = or disjoint i32 %1366, %1368
  %1370 = icmp slt i32 %1363, %1369
  %1371 = shl nsw i32 %1363, 2
  %1372 = sext i32 %1371 to i64
  %1373 = getelementptr inbounds i8, ptr %1348, i64 %1372
  %1374 = getelementptr inbounds nuw i8, ptr %1373, i64 1
  %1375 = shl nuw nsw i32 %1369, 2
  %1376 = zext nneg i32 %1375 to i64
  %1377 = getelementptr i8, ptr %1348, i64 %1376
  %1378 = getelementptr i8, ptr %1377, i64 -4
  %1379 = getelementptr i8, ptr %1377, i64 -3
  %1380 = select i1 %1370, ptr %1374, ptr %1379
  %1381 = select i1 %1370, ptr %1373, ptr %1378
  %1382 = load i8, ptr %1381, align 1, !tbaa !8
  %1383 = zext i8 %1382 to i16
  %1384 = shl nuw i16 %1383, 8
  %1385 = load i8, ptr %1380, align 1, !tbaa !8
  %1386 = zext i8 %1385 to i16
  %1387 = or disjoint i16 %1384, %1386
  call fastcc void @stbtt_GetGlyphBitmapBoxSubpixel(ptr noundef nonnull readonly %20, i32 noundef %1363, float noundef %1310, float noundef %1310, ptr noundef nonnull %21, ptr noundef nonnull %22, ptr noundef nonnull %23, ptr noundef nonnull %24) #17
  %1388 = load i32, ptr %23, align 4, !tbaa !4
  %1389 = load i32, ptr %21, align 4, !tbaa !4
  %1390 = sub nsw i32 %1388, %1389
  %1391 = load i32, ptr %24, align 4, !tbaa !4
  %1392 = load i32, ptr %22, align 4, !tbaa !4
  %1393 = sub nsw i32 %1391, %1392
  %1394 = call i32 @llvm.smax.i32(i32 %1390, i32 0)
  %1395 = call i32 @llvm.smax.i32(i32 %1393, i32 0)
  %1396 = icmp sgt i32 %1390, 512
  br i1 %1396, label %3167, label %1397

1397:                                             ; preds = %1356
  %1398 = add nuw nsw i32 %1394, %1358
  %1399 = icmp sgt i32 %1398, 512
  %1400 = add nuw nsw i32 %1360, 1
  %1401 = select i1 %1399, i32 %1400, i32 0
  %1402 = add nuw nsw i32 %1401, %1359
  %1403 = select i1 %1399, i32 0, i32 %1358
  %1404 = add nuw nsw i32 %1402, %1395
  %1405 = zext nneg i32 %1404 to i64
  %1406 = shl nuw nsw i64 %1405, 9
  %1407 = icmp sgt i64 %1406, %1344
  br i1 %1407, label %3167, label %1408

1408:                                             ; preds = %1397
  %1409 = mul nuw nsw i64 %1357, 28
  %1410 = sitofp i16 %1387 to float
  %1411 = fmul float %1310, %1410
  %1412 = fpext float %1411 to double
  %1413 = fptosi float %1411 to i64
  %1414 = sitofp i64 %1413 to double
  %1415 = fcmp ogt double %1412, %1414
  %1416 = fadd double %1414, 1.000000e+00
  %1417 = select i1 %1415, double %1416, double %1414
  %1418 = fptosi double %1417 to i32
  %1419 = getelementptr inbounds nuw i8, ptr %4, i64 %1409
  %1420 = getelementptr inbounds nuw i8, ptr %1419, i64 32
  store i32 %1418, ptr %1420, align 1
  %1421 = getelementptr inbounds nuw i8, ptr %1419, i64 36
  store i32 %1389, ptr %1421, align 1
  %1422 = add nsw i32 %1392, %1327
  %1423 = getelementptr inbounds nuw i8, ptr %1419, i64 40
  store i32 %1422, ptr %1423, align 1
  %1424 = getelementptr inbounds nuw i8, ptr %1419, i64 44
  store i32 %1394, ptr %1424, align 1
  %1425 = getelementptr inbounds nuw i8, ptr %1419, i64 48
  store i32 %1395, ptr %1425, align 1
  %1426 = getelementptr inbounds nuw i8, ptr %1419, i64 52
  store i32 %1403, ptr %1426, align 1
  %1427 = getelementptr inbounds nuw i8, ptr %1419, i64 56
  store i32 %1402, ptr %1427, align 1
  %1428 = icmp sgt i32 %1390, 0
  %1429 = icmp sgt i32 %1393, 0
  %1430 = select i1 %1428, i1 %1429, i1 false
  br i1 %1430, label %1431, label %3160

1431:                                             ; preds = %1408
  %1432 = zext nneg i32 %1402 to i64
  %1433 = shl nuw nsw i64 %1432, 9
  %1434 = getelementptr inbounds nuw i8, ptr %1349, i64 %1433
  %1435 = zext nneg i32 %1403 to i64
  %1436 = getelementptr inbounds nuw i8, ptr %1434, i64 %1435
  %1437 = call fastcc i32 @stbtt_FindGlyphIndex(ptr noundef nonnull readonly %20, i32 noundef range(i32 -2147483616, 127) %1362) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #16
  %1438 = call fastcc i32 @stbtt_GetGlyphShape(ptr noundef nonnull readonly %20, i32 noundef %1437, ptr noundef %13) #17
  call fastcc void @stbtt_GetGlyphBitmapBoxSubpixel(ptr noundef nonnull readonly %20, i32 noundef %1437, float noundef %1310, float noundef %1310, ptr noundef %11, ptr noundef %12, ptr noundef null, ptr noundef null) #17
  %1439 = load ptr, ptr %13, align 8, !tbaa !34
  %1440 = load i32, ptr %11, align 4, !tbaa !4
  %1441 = load i32, ptr %12, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  %1442 = icmp sgt i32 %1438, 0
  br i1 %1442, label %1443, label %1625

1443:                                             ; preds = %1431
  %1444 = zext nneg i32 %1438 to i64
  %1445 = icmp ult i32 %1438, 8
  br i1 %1445, label %1496, label %1446

1446:                                             ; preds = %1443
  %1447 = and i64 %1444, 2147483640
  br label %1448

1448:                                             ; preds = %1448, %1446
  %1449 = phi i64 [ 0, %1446 ], [ %1490, %1448 ]
  %1450 = phi <4 x i32> [ zeroinitializer, %1446 ], [ %1488, %1448 ]
  %1451 = phi <4 x i32> [ zeroinitializer, %1446 ], [ %1489, %1448 ]
  %1452 = getelementptr inbounds nuw %struct.stbtt_vertex, ptr %1439, i64 %1449
  %1453 = getelementptr inbounds nuw %struct.stbtt_vertex, ptr %1439, i64 %1449
  %1454 = getelementptr inbounds nuw %struct.stbtt_vertex, ptr %1439, i64 %1449
  %1455 = getelementptr inbounds nuw %struct.stbtt_vertex, ptr %1439, i64 %1449
  %1456 = getelementptr inbounds nuw %struct.stbtt_vertex, ptr %1439, i64 %1449
  %1457 = getelementptr inbounds nuw %struct.stbtt_vertex, ptr %1439, i64 %1449
  %1458 = getelementptr inbounds nuw %struct.stbtt_vertex, ptr %1439, i64 %1449
  %1459 = getelementptr inbounds nuw %struct.stbtt_vertex, ptr %1439, i64 %1449
  %1460 = getelementptr inbounds nuw i8, ptr %1452, i64 12
  %1461 = getelementptr inbounds nuw i8, ptr %1453, i64 26
  %1462 = getelementptr inbounds nuw i8, ptr %1454, i64 40
  %1463 = getelementptr inbounds nuw i8, ptr %1455, i64 54
  %1464 = getelementptr inbounds nuw i8, ptr %1456, i64 68
  %1465 = getelementptr inbounds nuw i8, ptr %1457, i64 82
  %1466 = getelementptr inbounds nuw i8, ptr %1458, i64 96
  %1467 = getelementptr inbounds nuw i8, ptr %1459, i64 110
  %1468 = load i8, ptr %1460, align 2, !tbaa !35
  %1469 = load i8, ptr %1461, align 2, !tbaa !35
  %1470 = load i8, ptr %1462, align 2, !tbaa !35
  %1471 = load i8, ptr %1463, align 2, !tbaa !35
  %1472 = insertelement <4 x i8> poison, i8 %1468, i64 0
  %1473 = insertelement <4 x i8> %1472, i8 %1469, i64 1
  %1474 = insertelement <4 x i8> %1473, i8 %1470, i64 2
  %1475 = insertelement <4 x i8> %1474, i8 %1471, i64 3
  %1476 = load i8, ptr %1464, align 2, !tbaa !35
  %1477 = load i8, ptr %1465, align 2, !tbaa !35
  %1478 = load i8, ptr %1466, align 2, !tbaa !35
  %1479 = load i8, ptr %1467, align 2, !tbaa !35
  %1480 = insertelement <4 x i8> poison, i8 %1476, i64 0
  %1481 = insertelement <4 x i8> %1480, i8 %1477, i64 1
  %1482 = insertelement <4 x i8> %1481, i8 %1478, i64 2
  %1483 = insertelement <4 x i8> %1482, i8 %1479, i64 3
  %1484 = icmp eq <4 x i8> %1475, splat (i8 1)
  %1485 = icmp eq <4 x i8> %1483, splat (i8 1)
  %1486 = zext <4 x i1> %1484 to <4 x i32>
  %1487 = zext <4 x i1> %1485 to <4 x i32>
  %1488 = add <4 x i32> %1450, %1486
  %1489 = add <4 x i32> %1451, %1487
  %1490 = add nuw i64 %1449, 8
  %1491 = icmp eq i64 %1490, %1447
  br i1 %1491, label %1492, label %1448, !llvm.loop !38

1492:                                             ; preds = %1448
  %1493 = add <4 x i32> %1489, %1488
  %1494 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %1493)
  %1495 = icmp eq i64 %1447, %1444
  br i1 %1495, label %1510, label %1496

1496:                                             ; preds = %1443, %1492
  %1497 = phi i64 [ 0, %1443 ], [ %1447, %1492 ]
  %1498 = phi i32 [ 0, %1443 ], [ %1494, %1492 ]
  br label %1499

1499:                                             ; preds = %1496, %1499
  %1500 = phi i64 [ %1508, %1499 ], [ %1497, %1496 ]
  %1501 = phi i32 [ %1507, %1499 ], [ %1498, %1496 ]
  %1502 = getelementptr inbounds nuw %struct.stbtt_vertex, ptr %1439, i64 %1500
  %1503 = getelementptr inbounds nuw i8, ptr %1502, i64 12
  %1504 = load i8, ptr %1503, align 2, !tbaa !35
  %1505 = icmp eq i8 %1504, 1
  %1506 = zext i1 %1505 to i32
  %1507 = add nuw nsw i32 %1501, %1506
  %1508 = add nuw nsw i64 %1500, 1
  %1509 = icmp eq i64 %1508, %1444
  br i1 %1509, label %1510, label %1499, !llvm.loop !41

1510:                                             ; preds = %1499, %1492
  %1511 = phi i32 [ %1494, %1492 ], [ %1507, %1499 ]
  %1512 = icmp eq i32 %1511, 0
  br i1 %1512, label %1625, label %1513

1513:                                             ; preds = %1510
  %1514 = zext nneg i32 %1511 to i64
  %1515 = shl nuw nsw i64 %1514, 2
  %1516 = add nuw nsw i64 %1515, 15
  %1517 = and i64 %1516, 17179869168
  %1518 = load i64, ptr @arena_used, align 8, !tbaa !42
  %1519 = sub i64 8388608, %1518
  %1520 = icmp ugt i64 %1517, %1519
  br i1 %1520, label %1625, label %1521

1521:                                             ; preds = %1513
  %1522 = getelementptr inbounds nuw i8, ptr @arena, i64 %1518
  %1523 = add i64 %1518, %1517
  store i64 %1523, ptr @arena_used, align 8, !tbaa !42
  br label %1524

1524:                                             ; preds = %1620, %1521
  %1525 = phi i32 [ 0, %1521 ], [ %1621, %1620 ]
  %1526 = phi i1 [ false, %1521 ], [ true, %1620 ]
  %1527 = phi i1 [ true, %1521 ], [ false, %1620 ]
  %1528 = phi i32 [ 0, %1521 ], [ %1616, %1620 ]
  %1529 = phi ptr [ null, %1521 ], [ %1543, %1620 ]
  %1530 = phi i64 [ %1523, %1521 ], [ %1542, %1620 ]
  br i1 %1526, label %1531, label %1541

1531:                                             ; preds = %1524
  %1532 = sext i32 %1525 to i64
  %1533 = shl nsw i64 %1532, 3
  %1534 = add nsw i64 %1533, 15
  %1535 = and i64 %1534, -16
  %1536 = sub i64 8388608, %1530
  %1537 = icmp ugt i64 %1535, %1536
  br i1 %1537, label %1625, label %1538

1538:                                             ; preds = %1531
  %1539 = getelementptr inbounds nuw i8, ptr @arena, i64 %1530
  %1540 = add i64 %1530, %1535
  store i64 %1540, ptr @arena_used, align 8, !tbaa !42
  br label %1541

1541:                                             ; preds = %1538, %1524
  %1542 = phi i64 [ %1540, %1538 ], [ %1530, %1524 ]
  %1543 = phi ptr [ %1539, %1538 ], [ %1529, %1524 ]
  store i32 0, ptr %10, align 4, !tbaa !4
  %1544 = icmp eq ptr %1543, null
  br label %1545

1545:                                             ; preds = %1614, %1541
  %1546 = phi i64 [ 0, %1541 ], [ %1618, %1614 ]
  %1547 = phi i32 [ %1528, %1541 ], [ %1616, %1614 ]
  %1548 = phi i32 [ -1, %1541 ], [ %1615, %1614 ]
  %1549 = phi <2 x float> [ zeroinitializer, %1541 ], [ %1617, %1614 ]
  %1550 = getelementptr inbounds nuw %struct.stbtt_vertex, ptr %1439, i64 %1546
  %1551 = getelementptr inbounds nuw i8, ptr %1550, i64 12
  %1552 = load i8, ptr %1551, align 2, !tbaa !35
  switch i8 %1552, label %1614 [
    i8 1, label %1553
    i8 2, label %1568
    i8 3, label %1576
    i8 4, label %1592
  ]

1553:                                             ; preds = %1545
  %1554 = icmp sgt i32 %1548, -1
  %1555 = load i32, ptr %10, align 4, !tbaa !4
  br i1 %1554, label %1556, label %1560

1556:                                             ; preds = %1553
  %1557 = sub nsw i32 %1555, %1547
  %1558 = zext nneg i32 %1548 to i64
  %1559 = getelementptr inbounds nuw i32, ptr %1522, i64 %1558
  store i32 %1557, ptr %1559, align 4, !tbaa !4
  br label %1560

1560:                                             ; preds = %1556, %1553
  %1561 = add nsw i32 %1548, 1
  %1562 = load <2 x i16>, ptr %1550, align 2, !tbaa !44
  %1563 = sitofp <2 x i16> %1562 to <2 x float>
  %1564 = add nsw i32 %1555, 1
  store i32 %1564, ptr %10, align 4, !tbaa !4
  br i1 %1544, label %1614, label %1565

1565:                                             ; preds = %1560
  %1566 = sext i32 %1555 to i64
  %1567 = getelementptr inbounds %struct.stbtt__point, ptr %1543, i64 %1566
  store <2 x float> %1563, ptr %1567, align 4, !tbaa !45
  br label %1614

1568:                                             ; preds = %1545
  %1569 = load <2 x i16>, ptr %1550, align 2, !tbaa !44
  %1570 = sitofp <2 x i16> %1569 to <2 x float>
  %1571 = load i32, ptr %10, align 4, !tbaa !4
  %1572 = add nsw i32 %1571, 1
  store i32 %1572, ptr %10, align 4, !tbaa !4
  br i1 %1544, label %1614, label %1573

1573:                                             ; preds = %1568
  %1574 = sext i32 %1571 to i64
  %1575 = getelementptr inbounds %struct.stbtt__point, ptr %1543, i64 %1574
  store <2 x float> %1570, ptr %1575, align 4, !tbaa !45
  br label %1614

1576:                                             ; preds = %1545
  %1577 = getelementptr inbounds nuw i8, ptr %1550, i64 4
  %1578 = load i16, ptr %1577, align 2, !tbaa !47
  %1579 = sitofp i16 %1578 to float
  %1580 = getelementptr inbounds nuw i8, ptr %1550, i64 6
  %1581 = load i16, ptr %1580, align 2, !tbaa !48
  %1582 = sitofp i16 %1581 to float
  %1583 = load i16, ptr %1550, align 2, !tbaa !49
  %1584 = sitofp i16 %1583 to float
  %1585 = getelementptr inbounds nuw i8, ptr %1550, i64 2
  %1586 = load i16, ptr %1585, align 2, !tbaa !50
  %1587 = sitofp i16 %1586 to float
  %1588 = extractelement <2 x float> %1549, i64 0
  %1589 = extractelement <2 x float> %1549, i64 1
  call fastcc void @stbtt__tesselate_curve(ptr noundef %1543, ptr noundef %10, float noundef %1588, float noundef %1589, float noundef %1579, float noundef %1582, float noundef %1584, float noundef %1587, float noundef %1351, i32 noundef 0) #17
  %1590 = load <2 x i16>, ptr %1550, align 2, !tbaa !44
  %1591 = sitofp <2 x i16> %1590 to <2 x float>
  br label %1614

1592:                                             ; preds = %1545
  %1593 = getelementptr inbounds nuw i8, ptr %1550, i64 4
  %1594 = load i16, ptr %1593, align 2, !tbaa !47
  %1595 = sitofp i16 %1594 to float
  %1596 = getelementptr inbounds nuw i8, ptr %1550, i64 6
  %1597 = load i16, ptr %1596, align 2, !tbaa !48
  %1598 = sitofp i16 %1597 to float
  %1599 = getelementptr inbounds nuw i8, ptr %1550, i64 8
  %1600 = load i16, ptr %1599, align 2, !tbaa !51
  %1601 = sitofp i16 %1600 to float
  %1602 = getelementptr inbounds nuw i8, ptr %1550, i64 10
  %1603 = load i16, ptr %1602, align 2, !tbaa !52
  %1604 = sitofp i16 %1603 to float
  %1605 = load i16, ptr %1550, align 2, !tbaa !49
  %1606 = sitofp i16 %1605 to float
  %1607 = getelementptr inbounds nuw i8, ptr %1550, i64 2
  %1608 = load i16, ptr %1607, align 2, !tbaa !50
  %1609 = sitofp i16 %1608 to float
  %1610 = extractelement <2 x float> %1549, i64 0
  %1611 = extractelement <2 x float> %1549, i64 1
  call fastcc void @stbtt__tesselate_cubic(ptr noundef %1543, ptr noundef %10, float noundef %1610, float noundef %1611, float noundef %1595, float noundef %1598, float noundef %1601, float noundef %1604, float noundef %1606, float noundef %1609, float noundef %1351, i32 noundef 0) #17
  %1612 = load <2 x i16>, ptr %1550, align 2, !tbaa !44
  %1613 = sitofp <2 x i16> %1612 to <2 x float>
  br label %1614

1614:                                             ; preds = %1592, %1576, %1573, %1568, %1565, %1560, %1545
  %1615 = phi i32 [ %1548, %1545 ], [ %1548, %1592 ], [ %1561, %1565 ], [ %1548, %1576 ], [ %1561, %1560 ], [ %1548, %1568 ], [ %1548, %1573 ]
  %1616 = phi i32 [ %1547, %1545 ], [ %1547, %1592 ], [ %1555, %1565 ], [ %1547, %1576 ], [ %1555, %1560 ], [ %1547, %1568 ], [ %1547, %1573 ]
  %1617 = phi <2 x float> [ %1549, %1545 ], [ %1613, %1592 ], [ %1563, %1565 ], [ %1591, %1576 ], [ %1563, %1560 ], [ %1570, %1568 ], [ %1570, %1573 ]
  %1618 = add nuw nsw i64 %1546, 1
  %1619 = icmp eq i64 %1618, %1444
  br i1 %1619, label %1620, label %1545, !llvm.loop !53

1620:                                             ; preds = %1614
  %1621 = load i32, ptr %10, align 4, !tbaa !4
  %1622 = sext i32 %1615 to i64
  %1623 = sub nsw i32 %1621, %1616
  %1624 = getelementptr inbounds i32, ptr %1522, i64 %1622
  store i32 %1623, ptr %1624, align 4, !tbaa !4
  br i1 %1527, label %1524, label %1626, !llvm.loop !54

1625:                                             ; preds = %1531, %1513, %1510, %1431
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  br label %3159

1626:                                             ; preds = %1620
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  br i1 %1544, label %3159, label %1627

1627:                                             ; preds = %1626
  %1628 = icmp ult i32 %1511, 8
  br i1 %1628, label %1647, label %1629

1629:                                             ; preds = %1627
  %1630 = and i64 %1514, 2147483640
  br label %1631

1631:                                             ; preds = %1631, %1629
  %1632 = phi i64 [ 0, %1629 ], [ %1641, %1631 ]
  %1633 = phi <4 x i32> [ zeroinitializer, %1629 ], [ %1639, %1631 ]
  %1634 = phi <4 x i32> [ zeroinitializer, %1629 ], [ %1640, %1631 ]
  %1635 = getelementptr inbounds nuw i32, ptr %1522, i64 %1632
  %1636 = getelementptr inbounds nuw i8, ptr %1635, i64 16
  %1637 = load <4 x i32>, ptr %1635, align 4, !tbaa !4
  %1638 = load <4 x i32>, ptr %1636, align 4, !tbaa !4
  %1639 = add <4 x i32> %1637, %1633
  %1640 = add <4 x i32> %1638, %1634
  %1641 = add nuw i64 %1632, 8
  %1642 = icmp eq i64 %1641, %1630
  br i1 %1642, label %1643, label %1631, !llvm.loop !55

1643:                                             ; preds = %1631
  %1644 = add <4 x i32> %1640, %1639
  %1645 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %1644)
  %1646 = icmp eq i64 %1630, %1514
  br i1 %1646, label %1658, label %1647

1647:                                             ; preds = %1627, %1643
  %1648 = phi i64 [ 0, %1627 ], [ %1630, %1643 ]
  %1649 = phi i32 [ 0, %1627 ], [ %1645, %1643 ]
  br label %1650

1650:                                             ; preds = %1647, %1650
  %1651 = phi i64 [ %1656, %1650 ], [ %1648, %1647 ]
  %1652 = phi i32 [ %1655, %1650 ], [ %1649, %1647 ]
  %1653 = getelementptr inbounds nuw i32, ptr %1522, i64 %1651
  %1654 = load i32, ptr %1653, align 4, !tbaa !4
  %1655 = add nsw i32 %1654, %1652
  %1656 = add nuw nsw i64 %1651, 1
  %1657 = icmp eq i64 %1656, %1514
  br i1 %1657, label %1658, label %1650, !llvm.loop !56

1658:                                             ; preds = %1650, %1643
  %1659 = phi i32 [ %1645, %1643 ], [ %1655, %1650 ]
  %1660 = add nsw i32 %1659, 1
  %1661 = sext i32 %1660 to i64
  %1662 = mul nsw i64 %1661, 20
  %1663 = add nsw i64 %1662, 15
  %1664 = and i64 %1663, -16
  %1665 = sub i64 8388608, %1542
  %1666 = icmp ugt i64 %1664, %1665
  br i1 %1666, label %3159, label %1667

1667:                                             ; preds = %1658
  %1668 = getelementptr inbounds nuw i8, ptr @arena, i64 %1542
  %1669 = add i64 %1664, %1542
  store i64 %1669, ptr @arena_used, align 8, !tbaa !42
  br label %1670

1670:                                             ; preds = %1723, %1667
  %1671 = phi i64 [ 0, %1667 ], [ %1725, %1723 ]
  %1672 = phi i32 [ 0, %1667 ], [ %1724, %1723 ]
  %1673 = phi i32 [ 0, %1667 ], [ %1678, %1723 ]
  %1674 = sext i32 %1673 to i64
  %1675 = getelementptr inbounds %struct.stbtt__point, ptr %1543, i64 %1674
  %1676 = getelementptr inbounds nuw i32, ptr %1522, i64 %1671
  %1677 = load i32, ptr %1676, align 4, !tbaa !4
  %1678 = add nsw i32 %1677, %1673
  %1679 = icmp sgt i32 %1677, 0
  br i1 %1679, label %1680, label %1723

1680:                                             ; preds = %1670
  %1681 = add nsw i32 %1677, -1
  br label %1682

1682:                                             ; preds = %1716, %1680
  %1683 = phi i32 [ %1677, %1680 ], [ %1718, %1716 ]
  %1684 = phi i64 [ 0, %1680 ], [ %1720, %1716 ]
  %1685 = phi i32 [ %1672, %1680 ], [ %1719, %1716 ]
  %1686 = phi i32 [ %1681, %1680 ], [ %1717, %1716 ]
  %1687 = zext nneg i32 %1686 to i64
  %1688 = getelementptr inbounds nuw %struct.stbtt__point, ptr %1675, i64 %1687
  %1689 = getelementptr inbounds nuw i8, ptr %1688, i64 4
  %1690 = load float, ptr %1689, align 4, !tbaa !57
  %1691 = getelementptr inbounds nuw %struct.stbtt__point, ptr %1675, i64 %1684
  %1692 = getelementptr inbounds nuw i8, ptr %1691, i64 4
  %1693 = load float, ptr %1692, align 4, !tbaa !57
  %1694 = fcmp oeq float %1690, %1693
  br i1 %1694, label %1695, label %1697

1695:                                             ; preds = %1682
  %1696 = trunc nuw nsw i64 %1684 to i32
  br label %1716

1697:                                             ; preds = %1682
  %1698 = sext i32 %1685 to i64
  %1699 = getelementptr inbounds %struct.stbtt__edge, ptr %1668, i64 %1698
  %1700 = getelementptr inbounds nuw i8, ptr %1699, i64 16
  %1701 = fcmp ogt float %1690, %1693
  %1702 = zext i1 %1701 to i32
  %1703 = trunc nuw nsw i64 %1684 to i32
  %1704 = select i1 %1701, i32 %1686, i32 %1703
  %1705 = select i1 %1701, i32 %1703, i32 %1686
  store i32 %1702, ptr %1700, align 4, !tbaa !59
  %1706 = zext nneg i32 %1704 to i64
  %1707 = getelementptr inbounds nuw %struct.stbtt__point, ptr %1675, i64 %1706
  %1708 = zext nneg i32 %1705 to i64
  %1709 = getelementptr inbounds nuw %struct.stbtt__point, ptr %1675, i64 %1708
  %1710 = load <2 x float>, ptr %1707, align 4, !tbaa !45
  %1711 = load <2 x float>, ptr %1709, align 4, !tbaa !45
  %1712 = shufflevector <2 x float> %1710, <2 x float> %1711, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %1713 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %1712, <4 x float> %1355, <4 x float> zeroinitializer)
  store <4 x float> %1713, ptr %1699, align 4, !tbaa !45
  %1714 = add nsw i32 %1685, 1
  %1715 = load i32, ptr %1676, align 4, !tbaa !4
  br label %1716

1716:                                             ; preds = %1697, %1695
  %1717 = phi i32 [ %1696, %1695 ], [ %1703, %1697 ]
  %1718 = phi i32 [ %1683, %1695 ], [ %1715, %1697 ]
  %1719 = phi i32 [ %1685, %1695 ], [ %1714, %1697 ]
  %1720 = add nuw nsw i64 %1684, 1
  %1721 = sext i32 %1718 to i64
  %1722 = icmp slt i64 %1720, %1721
  br i1 %1722, label %1682, label %1723, !llvm.loop !61

1723:                                             ; preds = %1716, %1670
  %1724 = phi i32 [ %1672, %1670 ], [ %1719, %1716 ]
  %1725 = add nuw nsw i64 %1671, 1
  %1726 = icmp eq i64 %1725, %1514
  br i1 %1726, label %1727, label %1670, !llvm.loop !62

1727:                                             ; preds = %1723
  call fastcc void @stbtt__sort_edges_quicksort(ptr noundef nonnull %1668, i32 noundef %1724) #17
  %1728 = icmp sgt i32 %1724, 1
  br i1 %1728, label %1729, label %1761

1729:                                             ; preds = %1727
  %1730 = zext nneg i32 %1724 to i64
  br label %1731

1731:                                             ; preds = %1758, %1729
  %1732 = phi i64 [ 1, %1729 ], [ %1759, %1758 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %1733 = getelementptr inbounds nuw %struct.stbtt__edge, ptr %1668, i64 %1732
  %1734 = getelementptr inbounds nuw i8, ptr %1733, i64 4
  %1735 = load float, ptr %1734, align 4, !tbaa !45
  %1736 = load <2 x float>, ptr %1733, align 4, !tbaa !45
  %1737 = getelementptr inbounds nuw i8, ptr %1733, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %9, ptr noundef nonnull align 4 dereferenceable(12) %1737, i64 12, i1 false), !tbaa.struct !63
  br label %1738

1738:                                             ; preds = %1744, %1731
  %1739 = phi i64 [ %1732, %1731 ], [ %1746, %1744 ]
  %1740 = getelementptr %struct.stbtt__edge, ptr %1668, i64 %1739
  %1741 = getelementptr i8, ptr %1740, i64 -16
  %1742 = load float, ptr %1741, align 4, !tbaa !64
  %1743 = fcmp olt float %1735, %1742
  br i1 %1743, label %1744, label %1748

1744:                                             ; preds = %1738
  %1745 = getelementptr i8, ptr %1740, i64 -20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %1740, ptr noundef nonnull align 4 dereferenceable(20) %1745, i64 20, i1 false), !tbaa.struct !65
  %1746 = add nsw i64 %1739, -1
  %1747 = icmp sgt i64 %1739, 1
  br i1 %1747, label %1738, label %1750

1748:                                             ; preds = %1738
  %1749 = trunc nuw nsw i64 %1739 to i32
  br label %1750

1750:                                             ; preds = %1744, %1748
  %1751 = phi i32 [ %1749, %1748 ], [ 0, %1744 ]
  %1752 = zext i32 %1751 to i64
  %1753 = icmp eq i64 %1732, %1752
  br i1 %1753, label %1758, label %1754

1754:                                             ; preds = %1750
  %1755 = sext i32 %1751 to i64
  %1756 = getelementptr inbounds %struct.stbtt__edge, ptr %1668, i64 %1755
  store <2 x float> %1736, ptr %1756, align 4, !tbaa !45
  %1757 = getelementptr inbounds nuw i8, ptr %1756, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %1757, ptr noundef nonnull align 8 dereferenceable(12) %9, i64 12, i1 false), !tbaa.struct !63
  br label %1758

1758:                                             ; preds = %1754, %1750
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %1759 = add nuw nsw i64 %1732, 1
  %1760 = icmp eq i64 %1759, %1730
  br i1 %1760, label %1761, label %1731, !llvm.loop !66

1761:                                             ; preds = %1758, %1727
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr null, ptr %7, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  %1762 = icmp sgt i32 %1390, 64
  br i1 %1762, label %1763, label %1773

1763:                                             ; preds = %1761
  %1764 = shl nuw nsw i32 %1394, 3
  %1765 = add nuw nsw i32 %1764, 19
  %1766 = and i32 %1765, 16368
  %1767 = zext nneg i32 %1766 to i64
  %1768 = sub i64 8388608, %1669
  %1769 = icmp ult i64 %1768, %1767
  br i1 %1769, label %1773, label %1770

1770:                                             ; preds = %1763
  %1771 = getelementptr inbounds nuw i8, ptr @arena, i64 %1669
  %1772 = add i64 %1669, %1767
  store i64 %1772, ptr @arena_used, align 8, !tbaa !42
  br label %1773

1773:                                             ; preds = %1770, %1763, %1761
  %1774 = phi ptr [ %8, %1761 ], [ %1771, %1770 ], [ null, %1763 ]
  %1775 = zext nneg i32 %1394 to i64
  %1776 = getelementptr inbounds nuw float, ptr %1774, i64 %1775
  %1777 = add nsw i32 %1441, %1395
  %1778 = sitofp i32 %1777 to float
  %1779 = fadd float %1778, 1.000000e+00
  %1780 = sext i32 %1724 to i64
  %1781 = getelementptr inbounds %struct.stbtt__edge, ptr %1668, i64 %1780
  %1782 = getelementptr inbounds nuw i8, ptr %1781, i64 4
  store float %1779, ptr %1782, align 4, !tbaa !64
  %1783 = sitofp i32 %1440 to float
  %1784 = icmp ne i32 %1441, 0
  %1785 = getelementptr inbounds nuw i8, ptr %1776, i64 4
  %1786 = shl nuw nsw i32 %1394, 2
  %1787 = zext nneg i32 %1786 to i64
  %1788 = add nuw nsw i32 %1786, 4
  %1789 = zext nneg i32 %1788 to i64
  %1790 = uitofp nneg i32 %1394 to float
  br label %1791

1791:                                             ; preds = %3154, %1773
  %1792 = phi ptr [ %1668, %1773 ], [ %1906, %3154 ]
  %1793 = phi i32 [ %1441, %1773 ], [ %3155, %3154 ]
  %1794 = phi i32 [ 0, %1773 ], [ %3156, %3154 ]
  %1795 = phi ptr [ null, %1773 ], [ %1905, %3154 ]
  %1796 = phi i32 [ 0, %1773 ], [ %1904, %3154 ]
  %1797 = phi ptr [ null, %1773 ], [ %1903, %3154 ]
  %1798 = sitofp i32 %1793 to float
  %1799 = fadd float %1798, 1.000000e+00
  %1800 = call ptr @memset(ptr noundef %1774, i32 noundef 0, i64 noundef %1787) #18
  %1801 = call ptr @memset(ptr noundef nonnull %1776, i32 noundef 0, i64 noundef %1789) #18
  %1802 = load ptr, ptr %7, align 8, !tbaa !67
  %1803 = icmp eq ptr %1802, null
  br i1 %1803, label %1804, label %1813

1804:                                             ; preds = %1823, %1791
  %1805 = phi ptr [ %1797, %1791 ], [ %1824, %1823 ]
  %1806 = getelementptr inbounds nuw i8, ptr %1792, i64 4
  %1807 = load float, ptr %1806, align 4, !tbaa !64
  %1808 = fcmp ugt float %1807, %1799
  br i1 %1808, label %1902, label %1809

1809:                                             ; preds = %1804
  %1810 = load i64, ptr @arena_used, align 8
  %1811 = icmp eq i32 %1794, 0
  %1812 = and i1 %1784, %1811
  br label %1828

1813:                                             ; preds = %1791, %1823
  %1814 = phi ptr [ %1826, %1823 ], [ %1802, %1791 ]
  %1815 = phi ptr [ %1825, %1823 ], [ %7, %1791 ]
  %1816 = phi ptr [ %1824, %1823 ], [ %1797, %1791 ]
  %1817 = getelementptr inbounds nuw i8, ptr %1814, i64 28
  %1818 = load float, ptr %1817, align 4, !tbaa !69
  %1819 = fcmp ugt float %1818, %1798
  br i1 %1819, label %1823, label %1820

1820:                                             ; preds = %1813
  %1821 = load ptr, ptr %1814, align 8, !tbaa !71
  store ptr %1821, ptr %1815, align 8, !tbaa !67
  %1822 = getelementptr inbounds nuw i8, ptr %1814, i64 20
  store float 0.000000e+00, ptr %1822, align 4, !tbaa !72
  store ptr %1816, ptr %1814, align 8, !tbaa !34
  br label %1823

1823:                                             ; preds = %1820, %1813
  %1824 = phi ptr [ %1816, %1813 ], [ %1814, %1820 ]
  %1825 = phi ptr [ %1814, %1813 ], [ %1815, %1820 ]
  %1826 = load ptr, ptr %1825, align 8, !tbaa !67
  %1827 = icmp eq ptr %1826, null
  br i1 %1827, label %1804, label %1813, !llvm.loop !73

1828:                                             ; preds = %1893, %1809
  %1829 = phi float [ %1807, %1809 ], [ %1900, %1893 ]
  %1830 = phi ptr [ %1792, %1809 ], [ %1898, %1893 ]
  %1831 = phi ptr [ %1795, %1809 ], [ %1897, %1893 ]
  %1832 = phi i32 [ %1796, %1809 ], [ %1896, %1893 ]
  %1833 = phi ptr [ %1805, %1809 ], [ %1895, %1893 ]
  %1834 = phi i64 [ %1810, %1809 ], [ %1894, %1893 ]
  %1835 = getelementptr inbounds nuw i8, ptr %1830, i64 12
  %1836 = load float, ptr %1835, align 4, !tbaa !74
  %1837 = fcmp une float %1829, %1836
  br i1 %1837, label %1838, label %1893

1838:                                             ; preds = %1828
  %1839 = icmp eq ptr %1833, null
  br i1 %1839, label %1842, label %1840

1840:                                             ; preds = %1838
  %1841 = load ptr, ptr %1833, align 8, !tbaa !34
  br label %1860

1842:                                             ; preds = %1838
  %1843 = icmp eq i32 %1832, 0
  br i1 %1843, label %1846, label %1844

1844:                                             ; preds = %1842
  %1845 = add nsw i32 %1832, -1
  br label %1852

1846:                                             ; preds = %1842
  %1847 = add i64 %1834, -8362993
  %1848 = icmp ult i64 %1847, 25616
  br i1 %1848, label %1893, label %1849

1849:                                             ; preds = %1846
  %1850 = getelementptr inbounds nuw i8, ptr @arena, i64 %1834
  %1851 = add i64 %1834, 25616
  store i64 %1851, ptr @arena_used, align 8, !tbaa !42
  store ptr %1831, ptr %1850, align 8, !tbaa !75
  br label %1852

1852:                                             ; preds = %1849, %1844
  %1853 = phi i64 [ %1851, %1849 ], [ %1834, %1844 ]
  %1854 = phi ptr [ %1850, %1849 ], [ %1831, %1844 ]
  %1855 = phi i32 [ 799, %1849 ], [ %1845, %1844 ]
  %1856 = getelementptr inbounds nuw i8, ptr %1854, i64 8
  %1857 = zext nneg i32 %1855 to i64
  %1858 = shl nuw nsw i64 %1857, 5
  %1859 = getelementptr inbounds nuw i8, ptr %1856, i64 %1858
  br label %1860

1860:                                             ; preds = %1852, %1840
  %1861 = phi i64 [ %1853, %1852 ], [ %1834, %1840 ]
  %1862 = phi ptr [ null, %1852 ], [ %1841, %1840 ]
  %1863 = phi i32 [ %1855, %1852 ], [ %1832, %1840 ]
  %1864 = phi ptr [ %1854, %1852 ], [ %1831, %1840 ]
  %1865 = phi ptr [ %1859, %1852 ], [ %1833, %1840 ]
  %1866 = getelementptr inbounds nuw i8, ptr %1830, i64 8
  %1867 = load float, ptr %1866, align 4, !tbaa !78
  %1868 = load float, ptr %1830, align 4, !tbaa !79
  %1869 = fsub float %1867, %1868
  %1870 = fsub float %1836, %1829
  %1871 = fdiv float %1869, %1870
  %1872 = getelementptr inbounds nuw i8, ptr %1865, i64 12
  store float %1871, ptr %1872, align 4, !tbaa !80
  %1873 = fcmp une float %1871, 0.000000e+00
  %1874 = fdiv float 1.000000e+00, %1871
  %1875 = select i1 %1873, float %1874, float 0.000000e+00
  %1876 = getelementptr inbounds nuw i8, ptr %1865, i64 16
  store float %1875, ptr %1876, align 8, !tbaa !81
  %1877 = fsub float %1798, %1829
  %1878 = call float @llvm.fmuladd.f32(float %1871, float %1877, float %1868)
  %1879 = getelementptr inbounds nuw i8, ptr %1865, i64 8
  %1880 = fsub float %1878, %1783
  store float %1880, ptr %1879, align 8, !tbaa !82
  %1881 = getelementptr inbounds nuw i8, ptr %1830, i64 16
  %1882 = load i32, ptr %1881, align 4, !tbaa !59
  %1883 = icmp eq i32 %1882, 0
  %1884 = select i1 %1883, float -1.000000e+00, float 1.000000e+00
  %1885 = getelementptr inbounds nuw i8, ptr %1865, i64 20
  store float %1884, ptr %1885, align 4, !tbaa !72
  %1886 = getelementptr inbounds nuw i8, ptr %1865, i64 24
  store float %1829, ptr %1886, align 8, !tbaa !83
  %1887 = getelementptr inbounds nuw i8, ptr %1865, i64 28
  store float %1836, ptr %1887, align 4, !tbaa !69
  store ptr null, ptr %1865, align 8, !tbaa !71
  %1888 = fcmp olt float %1836, %1798
  %1889 = select i1 %1812, i1 %1888, i1 false
  br i1 %1889, label %1890, label %1891

1890:                                             ; preds = %1860
  store float %1798, ptr %1887, align 4, !tbaa !69
  br label %1891

1891:                                             ; preds = %1890, %1860
  %1892 = load ptr, ptr %7, align 8, !tbaa !67
  store ptr %1892, ptr %1865, align 8, !tbaa !71
  store ptr %1865, ptr %7, align 8, !tbaa !67
  br label %1893

1893:                                             ; preds = %1891, %1846, %1828
  %1894 = phi i64 [ %1834, %1828 ], [ %1861, %1891 ], [ %1834, %1846 ]
  %1895 = phi ptr [ %1833, %1828 ], [ %1862, %1891 ], [ null, %1846 ]
  %1896 = phi i32 [ %1832, %1828 ], [ %1863, %1891 ], [ 0, %1846 ]
  %1897 = phi ptr [ %1831, %1828 ], [ %1864, %1891 ], [ %1831, %1846 ]
  %1898 = getelementptr inbounds nuw i8, ptr %1830, i64 20
  %1899 = getelementptr inbounds nuw i8, ptr %1830, i64 24
  %1900 = load float, ptr %1899, align 4, !tbaa !64
  %1901 = fcmp ugt float %1900, %1799
  br i1 %1901, label %1902, label %1828, !llvm.loop !84

1902:                                             ; preds = %1893, %1804
  %1903 = phi ptr [ %1805, %1804 ], [ %1895, %1893 ]
  %1904 = phi i32 [ %1796, %1804 ], [ %1896, %1893 ]
  %1905 = phi ptr [ %1795, %1804 ], [ %1897, %1893 ]
  %1906 = phi ptr [ %1792, %1804 ], [ %1898, %1893 ]
  %1907 = load ptr, ptr %7, align 8, !tbaa !67
  %1908 = icmp eq ptr %1907, null
  br i1 %1908, label %3120, label %1909

1909:                                             ; preds = %1902
  %1910 = fcmp oeq float %1799, %1798
  %1911 = fsub float %1799, %1798
  br label %1912

1912:                                             ; preds = %3117, %1909
  %1913 = phi ptr [ %1907, %1909 ], [ %3118, %3117 ]
  %1914 = getelementptr inbounds nuw i8, ptr %1913, i64 12
  %1915 = load float, ptr %1914, align 4, !tbaa !80
  %1916 = fcmp oeq float %1915, 0.000000e+00
  %1917 = getelementptr inbounds nuw i8, ptr %1913, i64 8
  %1918 = load float, ptr %1917, align 8, !tbaa !82
  br i1 %1916, label %1919, label %2103

1919:                                             ; preds = %1912
  %1920 = fcmp olt float %1918, %1790
  br i1 %1920, label %1921, label %3117

1921:                                             ; preds = %1919
  %1922 = fcmp ult float %1918, 0.000000e+00
  br i1 %1922, label %2049, label %1923

1923:                                             ; preds = %1921
  %1924 = fptosi float %1918 to i32
  br i1 %1910, label %3117, label %1925

1925:                                             ; preds = %1923
  %1926 = getelementptr inbounds nuw i8, ptr %1913, i64 28
  %1927 = load float, ptr %1926, align 4, !tbaa !69
  %1928 = fcmp olt float %1927, %1798
  br i1 %1928, label %1987, label %1929

1929:                                             ; preds = %1925
  %1930 = getelementptr inbounds nuw i8, ptr %1913, i64 24
  %1931 = load float, ptr %1930, align 8, !tbaa !83
  %1932 = fcmp olt float %1799, %1931
  br i1 %1932, label %1987, label %1933

1933:                                             ; preds = %1929
  %1934 = fcmp ogt float %1931, %1798
  br i1 %1934, label %1935, label %1941

1935:                                             ; preds = %1933
  %1936 = fsub float %1918, %1918
  %1937 = fsub float %1931, %1798
  %1938 = fmul float %1936, %1937
  %1939 = fdiv float %1938, %1911
  %1940 = fadd float %1918, %1939
  br label %1941

1941:                                             ; preds = %1935, %1933
  %1942 = phi float [ %1940, %1935 ], [ %1918, %1933 ]
  %1943 = phi float [ %1931, %1935 ], [ %1798, %1933 ]
  %1944 = fcmp ogt float %1799, %1927
  br i1 %1944, label %1945, label %1952

1945:                                             ; preds = %1941
  %1946 = fsub float %1918, %1942
  %1947 = fsub float %1927, %1799
  %1948 = fmul float %1947, %1946
  %1949 = fsub float %1799, %1943
  %1950 = fdiv float %1948, %1949
  %1951 = fadd float %1918, %1950
  br label %1952

1952:                                             ; preds = %1945, %1941
  %1953 = phi float [ %1951, %1945 ], [ %1918, %1941 ]
  %1954 = phi float [ %1927, %1945 ], [ %1799, %1941 ]
  %1955 = sitofp i32 %1924 to float
  %1956 = fcmp ugt float %1942, %1955
  %1957 = fcmp ugt float %1953, %1955
  %1958 = select i1 %1956, i1 true, i1 %1957
  br i1 %1958, label %1967, label %1959

1959:                                             ; preds = %1952
  %1960 = getelementptr inbounds nuw i8, ptr %1913, i64 20
  %1961 = load float, ptr %1960, align 4, !tbaa !72
  %1962 = fsub float %1954, %1943
  %1963 = sext i32 %1924 to i64
  %1964 = getelementptr inbounds float, ptr %1774, i64 %1963
  %1965 = load float, ptr %1964, align 4, !tbaa !45
  %1966 = call float @llvm.fmuladd.f32(float %1961, float %1962, float %1965)
  store float %1966, ptr %1964, align 4, !tbaa !45
  br label %1987

1967:                                             ; preds = %1952
  %1968 = add nsw i32 %1924, 1
  %1969 = sitofp i32 %1968 to float
  %1970 = fcmp ult float %1942, %1969
  %1971 = fcmp ult float %1953, %1969
  %1972 = select i1 %1970, i1 true, i1 %1971
  br i1 %1972, label %1973, label %1987

1973:                                             ; preds = %1967
  %1974 = getelementptr inbounds nuw i8, ptr %1913, i64 20
  %1975 = load float, ptr %1974, align 4, !tbaa !72
  %1976 = fsub float %1954, %1943
  %1977 = fmul float %1976, %1975
  %1978 = fsub float %1942, %1955
  %1979 = fsub float %1953, %1955
  %1980 = fadd float %1978, %1979
  %1981 = fmul float %1980, 5.000000e-01
  %1982 = fsub float 1.000000e+00, %1981
  %1983 = sext i32 %1924 to i64
  %1984 = getelementptr inbounds float, ptr %1774, i64 %1983
  %1985 = load float, ptr %1984, align 4, !tbaa !45
  %1986 = call float @llvm.fmuladd.f32(float %1977, float %1982, float %1985)
  store float %1986, ptr %1984, align 4, !tbaa !45
  br label %1987

1987:                                             ; preds = %1973, %1967, %1959, %1929, %1925
  %1988 = add nsw i32 %1924, 1
  %1989 = load float, ptr %1926, align 4, !tbaa !69
  %1990 = fcmp olt float %1989, %1798
  br i1 %1990, label %3117, label %1991

1991:                                             ; preds = %1987
  %1992 = getelementptr inbounds nuw i8, ptr %1913, i64 24
  %1993 = load float, ptr %1992, align 8, !tbaa !83
  %1994 = fcmp olt float %1799, %1993
  br i1 %1994, label %3117, label %1995

1995:                                             ; preds = %1991
  %1996 = fcmp ogt float %1993, %1798
  br i1 %1996, label %1997, label %2003

1997:                                             ; preds = %1995
  %1998 = fsub float %1918, %1918
  %1999 = fsub float %1993, %1798
  %2000 = fmul float %1998, %1999
  %2001 = fdiv float %2000, %1911
  %2002 = fadd float %1918, %2001
  br label %2003

2003:                                             ; preds = %1997, %1995
  %2004 = phi float [ %2002, %1997 ], [ %1918, %1995 ]
  %2005 = phi float [ %1993, %1997 ], [ %1798, %1995 ]
  %2006 = fcmp ogt float %1799, %1989
  br i1 %2006, label %2007, label %2014

2007:                                             ; preds = %2003
  %2008 = fsub float %1918, %2004
  %2009 = fsub float %1989, %1799
  %2010 = fmul float %2009, %2008
  %2011 = fsub float %1799, %2005
  %2012 = fdiv float %2010, %2011
  %2013 = fadd float %1918, %2012
  br label %2014

2014:                                             ; preds = %2007, %2003
  %2015 = phi float [ %2013, %2007 ], [ %1918, %2003 ]
  %2016 = phi float [ %1989, %2007 ], [ %1799, %2003 ]
  %2017 = sitofp i32 %1988 to float
  %2018 = fcmp ugt float %2004, %2017
  %2019 = fcmp ugt float %2015, %2017
  %2020 = select i1 %2018, i1 true, i1 %2019
  br i1 %2020, label %2029, label %2021

2021:                                             ; preds = %2014
  %2022 = getelementptr inbounds nuw i8, ptr %1913, i64 20
  %2023 = load float, ptr %2022, align 4, !tbaa !72
  %2024 = fsub float %2016, %2005
  %2025 = sext i32 %1988 to i64
  %2026 = getelementptr inbounds float, ptr %1776, i64 %2025
  %2027 = load float, ptr %2026, align 4, !tbaa !45
  %2028 = call float @llvm.fmuladd.f32(float %2023, float %2024, float %2027)
  store float %2028, ptr %2026, align 4, !tbaa !45
  br label %3117

2029:                                             ; preds = %2014
  %2030 = add nsw i32 %1924, 2
  %2031 = sitofp i32 %2030 to float
  %2032 = fcmp ult float %2004, %2031
  %2033 = fcmp ult float %2015, %2031
  %2034 = select i1 %2032, i1 true, i1 %2033
  br i1 %2034, label %2035, label %3117

2035:                                             ; preds = %2029
  %2036 = getelementptr inbounds nuw i8, ptr %1913, i64 20
  %2037 = load float, ptr %2036, align 4, !tbaa !72
  %2038 = fsub float %2016, %2005
  %2039 = fmul float %2038, %2037
  %2040 = fsub float %2004, %2017
  %2041 = fsub float %2015, %2017
  %2042 = fadd float %2040, %2041
  %2043 = fmul float %2042, 5.000000e-01
  %2044 = fsub float 1.000000e+00, %2043
  %2045 = sext i32 %1988 to i64
  %2046 = getelementptr inbounds float, ptr %1776, i64 %2045
  %2047 = load float, ptr %2046, align 4, !tbaa !45
  %2048 = call float @llvm.fmuladd.f32(float %2039, float %2044, float %2047)
  store float %2048, ptr %2046, align 4, !tbaa !45
  br label %3117

2049:                                             ; preds = %1921
  br i1 %1910, label %3117, label %2050

2050:                                             ; preds = %2049
  %2051 = getelementptr inbounds nuw i8, ptr %1913, i64 28
  %2052 = load float, ptr %2051, align 4, !tbaa !69
  %2053 = fcmp olt float %2052, %1798
  br i1 %2053, label %3117, label %2054

2054:                                             ; preds = %2050
  %2055 = getelementptr inbounds nuw i8, ptr %1913, i64 24
  %2056 = load float, ptr %2055, align 8, !tbaa !83
  %2057 = fcmp olt float %1799, %2056
  br i1 %2057, label %3117, label %2058

2058:                                             ; preds = %2054
  %2059 = fcmp ogt float %2056, %1798
  br i1 %2059, label %2060, label %2066

2060:                                             ; preds = %2058
  %2061 = fsub float %1918, %1918
  %2062 = fsub float %2056, %1798
  %2063 = fmul float %2061, %2062
  %2064 = fdiv float %2063, %1911
  %2065 = fadd float %1918, %2064
  br label %2066

2066:                                             ; preds = %2060, %2058
  %2067 = phi float [ %2065, %2060 ], [ %1918, %2058 ]
  %2068 = phi float [ %2056, %2060 ], [ %1798, %2058 ]
  %2069 = fcmp ogt float %1799, %2052
  br i1 %2069, label %2070, label %2077

2070:                                             ; preds = %2066
  %2071 = fsub float %1918, %2067
  %2072 = fsub float %2052, %1799
  %2073 = fmul float %2072, %2071
  %2074 = fsub float %1799, %2068
  %2075 = fdiv float %2073, %2074
  %2076 = fadd float %1918, %2075
  br label %2077

2077:                                             ; preds = %2070, %2066
  %2078 = phi float [ %2076, %2070 ], [ %1918, %2066 ]
  %2079 = phi float [ %2052, %2070 ], [ %1799, %2066 ]
  %2080 = fcmp ugt float %2067, 0.000000e+00
  %2081 = fcmp ugt float %2078, 0.000000e+00
  %2082 = select i1 %2080, i1 true, i1 %2081
  br i1 %2082, label %2089, label %2083

2083:                                             ; preds = %2077
  %2084 = getelementptr inbounds nuw i8, ptr %1913, i64 20
  %2085 = load float, ptr %2084, align 4, !tbaa !72
  %2086 = fsub float %2079, %2068
  %2087 = load float, ptr %1776, align 4, !tbaa !45
  %2088 = call float @llvm.fmuladd.f32(float %2085, float %2086, float %2087)
  store float %2088, ptr %1776, align 4, !tbaa !45
  br label %3117

2089:                                             ; preds = %2077
  %2090 = fcmp ult float %2067, 1.000000e+00
  %2091 = fcmp ult float %2078, 1.000000e+00
  %2092 = select i1 %2090, i1 true, i1 %2091
  br i1 %2092, label %2093, label %3117

2093:                                             ; preds = %2089
  %2094 = getelementptr inbounds nuw i8, ptr %1913, i64 20
  %2095 = load float, ptr %2094, align 4, !tbaa !72
  %2096 = fsub float %2079, %2068
  %2097 = fmul float %2096, %2095
  %2098 = fadd float %2067, %2078
  %2099 = fmul float %2098, 5.000000e-01
  %2100 = fsub float 1.000000e+00, %2099
  %2101 = load float, ptr %1776, align 4, !tbaa !45
  %2102 = call float @llvm.fmuladd.f32(float %2097, float %2100, float %2101)
  store float %2102, ptr %1776, align 4, !tbaa !45
  br label %3117

2103:                                             ; preds = %1912
  %2104 = fadd float %1915, %1918
  %2105 = getelementptr inbounds nuw i8, ptr %1913, i64 16
  %2106 = load float, ptr %2105, align 8, !tbaa !81
  %2107 = getelementptr inbounds nuw i8, ptr %1913, i64 24
  %2108 = load float, ptr %2107, align 8, !tbaa !83
  %2109 = fcmp ogt float %2108, %1798
  %2110 = fsub float %2108, %1798
  %2111 = call float @llvm.fmuladd.f32(float %1915, float %2110, float %1918)
  %2112 = select i1 %2109, float %2108, float %1798
  %2113 = select i1 %2109, float %2111, float %1918
  %2114 = getelementptr inbounds nuw i8, ptr %1913, i64 28
  %2115 = load float, ptr %2114, align 4, !tbaa !69
  %2116 = fcmp olt float %2115, %1799
  %2117 = fsub float %2115, %1798
  %2118 = call float @llvm.fmuladd.f32(float %1915, float %2117, float %1918)
  %2119 = select i1 %2116, float %2115, float %1799
  %2120 = select i1 %2116, float %2118, float %2104
  %2121 = fcmp oge float %2113, 0.000000e+00
  %2122 = fcmp oge float %2120, 0.000000e+00
  %2123 = select i1 %2121, i1 %2122, i1 false
  br i1 %2123, label %2124, label %2251

2124:                                             ; preds = %2103
  %2125 = fcmp olt float %2113, %1790
  %2126 = fcmp olt float %2120, %1790
  %2127 = select i1 %2125, i1 %2126, i1 false
  br i1 %2127, label %2128, label %2251

2128:                                             ; preds = %2124
  %2129 = fptosi float %2113 to i32
  %2130 = fptosi float %2120 to i32
  %2131 = icmp eq i32 %2129, %2130
  br i1 %2131, label %2132, label %2151

2132:                                             ; preds = %2128
  %2133 = fsub float %2119, %2112
  %2134 = getelementptr inbounds nuw i8, ptr %1913, i64 20
  %2135 = load float, ptr %2134, align 4, !tbaa !72
  %2136 = fmul float %2133, %2135
  %2137 = sitofp i32 %2129 to float
  %2138 = fadd float %2137, 1.000000e+00
  %2139 = fsub float %2138, %2113
  %2140 = fsub float %2138, %2120
  %2141 = fadd float %2139, %2140
  %2142 = fmul float %2141, 5.000000e-01
  %2143 = fmul float %2142, %2136
  %2144 = sext i32 %2129 to i64
  %2145 = getelementptr inbounds float, ptr %1774, i64 %2144
  %2146 = load float, ptr %2145, align 4, !tbaa !45
  %2147 = fadd float %2146, %2143
  store float %2147, ptr %2145, align 4, !tbaa !45
  %2148 = getelementptr inbounds float, ptr %1785, i64 %2144
  %2149 = load float, ptr %2148, align 4, !tbaa !45
  %2150 = fadd float %2136, %2149
  store float %2150, ptr %2148, align 4, !tbaa !45
  br label %3117

2151:                                             ; preds = %2128
  %2152 = fcmp ogt float %2113, %2120
  br i1 %2152, label %2153, label %2159

2153:                                             ; preds = %2151
  %2154 = fsub float %1798, %2112
  %2155 = fadd float %1799, %2154
  %2156 = fsub float %1798, %2119
  %2157 = fadd float %1799, %2156
  %2158 = fneg float %2106
  br label %2159

2159:                                             ; preds = %2153, %2151
  %2160 = phi i32 [ %2129, %2153 ], [ %2130, %2151 ]
  %2161 = phi i32 [ %2130, %2153 ], [ %2129, %2151 ]
  %2162 = phi float [ %2158, %2153 ], [ %2106, %2151 ]
  %2163 = phi float [ %2155, %2153 ], [ %2119, %2151 ]
  %2164 = phi float [ %2157, %2153 ], [ %2112, %2151 ]
  %2165 = phi float [ %2113, %2153 ], [ %2120, %2151 ]
  %2166 = phi float [ %2120, %2153 ], [ %2113, %2151 ]
  %2167 = phi float [ %2104, %2153 ], [ %1918, %2151 ]
  %2168 = add nsw i32 %2161, 1
  %2169 = sitofp i32 %2168 to float
  %2170 = fsub float %2169, %2167
  %2171 = call float @llvm.fmuladd.f32(float %2162, float %2170, float %1798)
  %2172 = sitofp i32 %2160 to float
  %2173 = fsub float %2172, %2167
  %2174 = call float @llvm.fmuladd.f32(float %2162, float %2173, float %1798)
  %2175 = fcmp ogt float %2171, %1799
  %2176 = select i1 %2175, float %1799, float %2171
  %2177 = getelementptr inbounds nuw i8, ptr %1913, i64 20
  %2178 = load float, ptr %2177, align 4, !tbaa !72
  %2179 = fsub float %2176, %2164
  %2180 = fmul float %2178, %2179
  %2181 = fsub float %2169, %2166
  %2182 = fmul float %2181, %2180
  %2183 = fmul float %2182, 5.000000e-01
  %2184 = sext i32 %2161 to i64
  %2185 = getelementptr inbounds float, ptr %1774, i64 %2184
  %2186 = load float, ptr %2185, align 4, !tbaa !45
  %2187 = fadd float %2186, %2183
  store float %2187, ptr %2185, align 4, !tbaa !45
  %2188 = fcmp ogt float %2174, %1799
  %2189 = fsub float %1799, %2176
  %2190 = sub nsw i32 %2160, %2168
  %2191 = sitofp i32 %2190 to float
  %2192 = fdiv float %2189, %2191
  %2193 = select i1 %2188, float %1799, float %2174
  %2194 = select i1 %2188, float %2192, float %2162
  %2195 = fmul float %2178, %2194
  %2196 = icmp slt i32 %2168, %2160
  br i1 %2196, label %2197, label %2233

2197:                                             ; preds = %2159
  %2198 = fmul float %2195, 5.000000e-01
  %2199 = add nsw i64 %2184, 1
  %2200 = add i32 %2160, -2
  %2201 = sub i32 %2161, %2160
  %2202 = and i32 %2201, 1
  %2203 = icmp eq i32 %2202, 0
  br i1 %2203, label %2204, label %2211

2204:                                             ; preds = %2197
  %2205 = fadd float %2198, %2180
  %2206 = getelementptr inbounds float, ptr %1774, i64 %2199
  %2207 = load float, ptr %2206, align 4, !tbaa !45
  %2208 = fadd float %2205, %2207
  store float %2208, ptr %2206, align 4, !tbaa !45
  %2209 = fadd float %2195, %2180
  %2210 = add nsw i64 %2184, 2
  br label %2211

2211:                                             ; preds = %2204, %2197
  %2212 = phi float [ poison, %2197 ], [ %2209, %2204 ]
  %2213 = phi i64 [ %2199, %2197 ], [ %2210, %2204 ]
  %2214 = phi float [ %2180, %2197 ], [ %2209, %2204 ]
  %2215 = icmp eq i32 %2200, %2161
  br i1 %2215, label %2233, label %2216

2216:                                             ; preds = %2211, %2216
  %2217 = phi i64 [ %2230, %2216 ], [ %2213, %2211 ]
  %2218 = phi float [ %2229, %2216 ], [ %2214, %2211 ]
  %2219 = fadd float %2198, %2218
  %2220 = getelementptr inbounds float, ptr %1774, i64 %2217
  %2221 = load float, ptr %2220, align 4, !tbaa !45
  %2222 = fadd float %2219, %2221
  store float %2222, ptr %2220, align 4, !tbaa !45
  %2223 = fadd float %2195, %2218
  %2224 = fadd float %2198, %2223
  %2225 = getelementptr float, ptr %1774, i64 %2217
  %2226 = getelementptr i8, ptr %2225, i64 4
  %2227 = load float, ptr %2226, align 4, !tbaa !45
  %2228 = fadd float %2224, %2227
  store float %2228, ptr %2226, align 4, !tbaa !45
  %2229 = fadd float %2195, %2223
  %2230 = add nsw i64 %2217, 2
  %2231 = trunc i64 %2230 to i32
  %2232 = icmp eq i32 %2160, %2231
  br i1 %2232, label %2233, label %2216, !llvm.loop !85

2233:                                             ; preds = %2211, %2216, %2159
  %2234 = phi float [ %2180, %2159 ], [ %2212, %2211 ], [ %2229, %2216 ]
  %2235 = fsub float %2163, %2193
  %2236 = fadd float %2172, 1.000000e+00
  %2237 = fsub float %2236, %2172
  %2238 = fsub float %2236, %2165
  %2239 = fadd float %2237, %2238
  %2240 = fmul float %2239, 5.000000e-01
  %2241 = fmul float %2240, %2235
  %2242 = call float @llvm.fmuladd.f32(float %2178, float %2241, float %2234)
  %2243 = sext i32 %2160 to i64
  %2244 = getelementptr inbounds float, ptr %1774, i64 %2243
  %2245 = load float, ptr %2244, align 4, !tbaa !45
  %2246 = fadd float %2242, %2245
  store float %2246, ptr %2244, align 4, !tbaa !45
  %2247 = fsub float %2163, %2164
  %2248 = getelementptr inbounds float, ptr %1785, i64 %2243
  %2249 = load float, ptr %2248, align 4, !tbaa !45
  %2250 = call float @llvm.fmuladd.f32(float %2178, float %2247, float %2249)
  store float %2250, ptr %2248, align 4, !tbaa !45
  br label %3117

2251:                                             ; preds = %2124, %2103
  %2252 = fsub float %2104, %1918
  %2253 = getelementptr inbounds nuw i8, ptr %1913, i64 20
  br label %2254

2254:                                             ; preds = %3115, %2251
  %2255 = phi i64 [ 0, %2251 ], [ %2258, %3115 ]
  %2256 = trunc nuw nsw i64 %2255 to i32
  %2257 = uitofp nneg i32 %2256 to float
  %2258 = add nuw nsw i64 %2255, 1
  %2259 = trunc nuw nsw i64 %2258 to i32
  %2260 = uitofp nneg i32 %2259 to float
  %2261 = fsub float %2257, %1918
  %2262 = fdiv float %2261, %1915
  %2263 = fadd float %2262, %1798
  %2264 = fsub float %2260, %1918
  %2265 = fdiv float %2264, %1915
  %2266 = fadd float %2265, %1798
  %2267 = fcmp olt float %1918, %2257
  %2268 = fcmp ogt float %2104, %2260
  %2269 = select i1 %2267, i1 %2268, i1 false
  br i1 %2269, label %2270, label %2437

2270:                                             ; preds = %2254
  %2271 = fcmp oeq float %2263, %1798
  br i1 %2271, label %2325, label %2272

2272:                                             ; preds = %2270
  %2273 = load float, ptr %2114, align 4, !tbaa !69
  %2274 = fcmp olt float %2273, %1798
  br i1 %2274, label %2325, label %2275

2275:                                             ; preds = %2272
  %2276 = load float, ptr %2107, align 8, !tbaa !83
  %2277 = fcmp olt float %2263, %2276
  br i1 %2277, label %2325, label %2278

2278:                                             ; preds = %2275
  %2279 = fcmp ogt float %2276, %1798
  br i1 %2279, label %2280, label %2286

2280:                                             ; preds = %2278
  %2281 = fsub float %2276, %1798
  %2282 = fmul float %2261, %2281
  %2283 = fsub float %2263, %1798
  %2284 = fdiv float %2282, %2283
  %2285 = fadd float %1918, %2284
  br label %2286

2286:                                             ; preds = %2280, %2278
  %2287 = phi float [ %2285, %2280 ], [ %1918, %2278 ]
  %2288 = phi float [ %2276, %2280 ], [ %1798, %2278 ]
  %2289 = fcmp ogt float %2263, %2273
  br i1 %2289, label %2290, label %2297

2290:                                             ; preds = %2286
  %2291 = fsub float %2257, %2287
  %2292 = fsub float %2273, %2263
  %2293 = fmul float %2292, %2291
  %2294 = fsub float %2263, %2288
  %2295 = fdiv float %2293, %2294
  %2296 = fadd float %2295, %2257
  br label %2297

2297:                                             ; preds = %2290, %2286
  %2298 = phi float [ %2296, %2290 ], [ %2257, %2286 ]
  %2299 = phi float [ %2273, %2290 ], [ %2263, %2286 ]
  %2300 = fcmp ugt float %2287, %2257
  %2301 = fcmp ugt float %2298, %2257
  %2302 = select i1 %2300, i1 true, i1 %2301
  br i1 %2302, label %2309, label %2303

2303:                                             ; preds = %2297
  %2304 = load float, ptr %2253, align 4, !tbaa !72
  %2305 = fsub float %2299, %2288
  %2306 = getelementptr inbounds nuw float, ptr %1774, i64 %2255
  %2307 = load float, ptr %2306, align 4, !tbaa !45
  %2308 = call float @llvm.fmuladd.f32(float %2304, float %2305, float %2307)
  store float %2308, ptr %2306, align 4, !tbaa !45
  br label %2325

2309:                                             ; preds = %2297
  %2310 = fcmp ult float %2287, %2260
  %2311 = fcmp ult float %2298, %2260
  %2312 = select i1 %2310, i1 true, i1 %2311
  br i1 %2312, label %2313, label %2325

2313:                                             ; preds = %2309
  %2314 = load float, ptr %2253, align 4, !tbaa !72
  %2315 = fsub float %2299, %2288
  %2316 = fmul float %2315, %2314
  %2317 = fsub float %2287, %2257
  %2318 = fsub float %2298, %2257
  %2319 = fadd float %2317, %2318
  %2320 = fmul float %2319, 5.000000e-01
  %2321 = fsub float 1.000000e+00, %2320
  %2322 = getelementptr inbounds nuw float, ptr %1774, i64 %2255
  %2323 = load float, ptr %2322, align 4, !tbaa !45
  %2324 = call float @llvm.fmuladd.f32(float %2316, float %2321, float %2323)
  store float %2324, ptr %2322, align 4, !tbaa !45
  br label %2325

2325:                                             ; preds = %2313, %2309, %2303, %2275, %2272, %2270
  %2326 = fcmp oeq float %2263, %2266
  br i1 %2326, label %2381, label %2327

2327:                                             ; preds = %2325
  %2328 = load float, ptr %2114, align 4, !tbaa !69
  %2329 = fcmp ogt float %2263, %2328
  br i1 %2329, label %2381, label %2330

2330:                                             ; preds = %2327
  %2331 = load float, ptr %2107, align 8, !tbaa !83
  %2332 = fcmp olt float %2266, %2331
  br i1 %2332, label %2381, label %2333

2333:                                             ; preds = %2330
  %2334 = fcmp olt float %2263, %2331
  br i1 %2334, label %2335, label %2342

2335:                                             ; preds = %2333
  %2336 = fsub float %2260, %2257
  %2337 = fsub float %2331, %2263
  %2338 = fmul float %2336, %2337
  %2339 = fsub float %2266, %2263
  %2340 = fdiv float %2338, %2339
  %2341 = fadd float %2340, %2257
  br label %2342

2342:                                             ; preds = %2335, %2333
  %2343 = phi float [ %2341, %2335 ], [ %2257, %2333 ]
  %2344 = phi float [ %2331, %2335 ], [ %2263, %2333 ]
  %2345 = fcmp ogt float %2266, %2328
  br i1 %2345, label %2346, label %2353

2346:                                             ; preds = %2342
  %2347 = fsub float %2260, %2343
  %2348 = fsub float %2328, %2266
  %2349 = fmul float %2348, %2347
  %2350 = fsub float %2266, %2344
  %2351 = fdiv float %2349, %2350
  %2352 = fadd float %2351, %2260
  br label %2353

2353:                                             ; preds = %2346, %2342
  %2354 = phi float [ %2352, %2346 ], [ %2260, %2342 ]
  %2355 = phi float [ %2328, %2346 ], [ %2266, %2342 ]
  %2356 = fcmp ugt float %2343, %2257
  %2357 = fcmp ugt float %2354, %2257
  %2358 = select i1 %2356, i1 true, i1 %2357
  br i1 %2358, label %2365, label %2359

2359:                                             ; preds = %2353
  %2360 = load float, ptr %2253, align 4, !tbaa !72
  %2361 = fsub float %2355, %2344
  %2362 = getelementptr inbounds nuw float, ptr %1774, i64 %2255
  %2363 = load float, ptr %2362, align 4, !tbaa !45
  %2364 = call float @llvm.fmuladd.f32(float %2360, float %2361, float %2363)
  store float %2364, ptr %2362, align 4, !tbaa !45
  br label %2381

2365:                                             ; preds = %2353
  %2366 = fcmp ult float %2343, %2260
  %2367 = fcmp ult float %2354, %2260
  %2368 = select i1 %2366, i1 true, i1 %2367
  br i1 %2368, label %2369, label %2381

2369:                                             ; preds = %2365
  %2370 = load float, ptr %2253, align 4, !tbaa !72
  %2371 = fsub float %2355, %2344
  %2372 = fmul float %2371, %2370
  %2373 = fsub float %2343, %2257
  %2374 = fsub float %2354, %2257
  %2375 = fadd float %2373, %2374
  %2376 = fmul float %2375, 5.000000e-01
  %2377 = fsub float 1.000000e+00, %2376
  %2378 = getelementptr inbounds nuw float, ptr %1774, i64 %2255
  %2379 = load float, ptr %2378, align 4, !tbaa !45
  %2380 = call float @llvm.fmuladd.f32(float %2372, float %2377, float %2379)
  store float %2380, ptr %2378, align 4, !tbaa !45
  br label %2381

2381:                                             ; preds = %2369, %2365, %2359, %2330, %2327, %2325
  %2382 = fcmp oeq float %2266, %1799
  br i1 %2382, label %3115, label %2383

2383:                                             ; preds = %2381
  %2384 = load float, ptr %2114, align 4, !tbaa !69
  %2385 = fcmp ogt float %2266, %2384
  br i1 %2385, label %3115, label %2386

2386:                                             ; preds = %2383
  %2387 = load float, ptr %2107, align 8, !tbaa !83
  %2388 = fcmp olt float %1799, %2387
  br i1 %2388, label %3115, label %2389

2389:                                             ; preds = %2386
  %2390 = fcmp olt float %2266, %2387
  br i1 %2390, label %2391, label %2398

2391:                                             ; preds = %2389
  %2392 = fsub float %2104, %2260
  %2393 = fsub float %2387, %2266
  %2394 = fmul float %2392, %2393
  %2395 = fsub float %1799, %2266
  %2396 = fdiv float %2394, %2395
  %2397 = fadd float %2396, %2260
  br label %2398

2398:                                             ; preds = %2391, %2389
  %2399 = phi float [ %2397, %2391 ], [ %2260, %2389 ]
  %2400 = phi float [ %2387, %2391 ], [ %2266, %2389 ]
  %2401 = fcmp ogt float %1799, %2384
  br i1 %2401, label %2402, label %2409

2402:                                             ; preds = %2398
  %2403 = fsub float %2104, %2399
  %2404 = fsub float %2384, %1799
  %2405 = fmul float %2404, %2403
  %2406 = fsub float %1799, %2400
  %2407 = fdiv float %2405, %2406
  %2408 = fadd float %2104, %2407
  br label %2409

2409:                                             ; preds = %2402, %2398
  %2410 = phi float [ %2408, %2402 ], [ %2104, %2398 ]
  %2411 = phi float [ %2384, %2402 ], [ %1799, %2398 ]
  %2412 = fcmp ugt float %2399, %2257
  %2413 = fcmp ugt float %2410, %2257
  %2414 = select i1 %2412, i1 true, i1 %2413
  br i1 %2414, label %2421, label %2415

2415:                                             ; preds = %2409
  %2416 = load float, ptr %2253, align 4, !tbaa !72
  %2417 = fsub float %2411, %2400
  %2418 = getelementptr inbounds nuw float, ptr %1774, i64 %2255
  %2419 = load float, ptr %2418, align 4, !tbaa !45
  %2420 = call float @llvm.fmuladd.f32(float %2416, float %2417, float %2419)
  store float %2420, ptr %2418, align 4, !tbaa !45
  br label %3115

2421:                                             ; preds = %2409
  %2422 = fcmp ult float %2399, %2260
  %2423 = fcmp ult float %2410, %2260
  %2424 = select i1 %2422, i1 true, i1 %2423
  br i1 %2424, label %2425, label %3115

2425:                                             ; preds = %2421
  %2426 = load float, ptr %2253, align 4, !tbaa !72
  %2427 = fsub float %2411, %2400
  %2428 = fmul float %2427, %2426
  %2429 = fsub float %2399, %2257
  %2430 = fsub float %2410, %2257
  %2431 = fadd float %2429, %2430
  %2432 = fmul float %2431, 5.000000e-01
  %2433 = fsub float 1.000000e+00, %2432
  %2434 = getelementptr inbounds nuw float, ptr %1774, i64 %2255
  %2435 = load float, ptr %2434, align 4, !tbaa !45
  %2436 = call float @llvm.fmuladd.f32(float %2428, float %2433, float %2435)
  store float %2436, ptr %2434, align 4, !tbaa !45
  br label %3115

2437:                                             ; preds = %2254
  %2438 = fcmp olt float %2104, %2257
  %2439 = fcmp ogt float %1918, %2260
  %2440 = select i1 %2438, i1 %2439, i1 false
  br i1 %2440, label %2441, label %2608

2441:                                             ; preds = %2437
  %2442 = fcmp oeq float %2266, %1798
  br i1 %2442, label %2496, label %2443

2443:                                             ; preds = %2441
  %2444 = load float, ptr %2114, align 4, !tbaa !69
  %2445 = fcmp olt float %2444, %1798
  br i1 %2445, label %2496, label %2446

2446:                                             ; preds = %2443
  %2447 = load float, ptr %2107, align 8, !tbaa !83
  %2448 = fcmp olt float %2266, %2447
  br i1 %2448, label %2496, label %2449

2449:                                             ; preds = %2446
  %2450 = fcmp ogt float %2447, %1798
  br i1 %2450, label %2451, label %2457

2451:                                             ; preds = %2449
  %2452 = fsub float %2447, %1798
  %2453 = fmul float %2264, %2452
  %2454 = fsub float %2266, %1798
  %2455 = fdiv float %2453, %2454
  %2456 = fadd float %1918, %2455
  br label %2457

2457:                                             ; preds = %2451, %2449
  %2458 = phi float [ %2456, %2451 ], [ %1918, %2449 ]
  %2459 = phi float [ %2447, %2451 ], [ %1798, %2449 ]
  %2460 = fcmp ogt float %2266, %2444
  br i1 %2460, label %2461, label %2468

2461:                                             ; preds = %2457
  %2462 = fsub float %2260, %2458
  %2463 = fsub float %2444, %2266
  %2464 = fmul float %2463, %2462
  %2465 = fsub float %2266, %2459
  %2466 = fdiv float %2464, %2465
  %2467 = fadd float %2466, %2260
  br label %2468

2468:                                             ; preds = %2461, %2457
  %2469 = phi float [ %2467, %2461 ], [ %2260, %2457 ]
  %2470 = phi float [ %2444, %2461 ], [ %2266, %2457 ]
  %2471 = fcmp ugt float %2458, %2257
  %2472 = fcmp ugt float %2469, %2257
  %2473 = select i1 %2471, i1 true, i1 %2472
  br i1 %2473, label %2480, label %2474

2474:                                             ; preds = %2468
  %2475 = load float, ptr %2253, align 4, !tbaa !72
  %2476 = fsub float %2470, %2459
  %2477 = getelementptr inbounds nuw float, ptr %1774, i64 %2255
  %2478 = load float, ptr %2477, align 4, !tbaa !45
  %2479 = call float @llvm.fmuladd.f32(float %2475, float %2476, float %2478)
  store float %2479, ptr %2477, align 4, !tbaa !45
  br label %2496

2480:                                             ; preds = %2468
  %2481 = fcmp ult float %2458, %2260
  %2482 = fcmp ult float %2469, %2260
  %2483 = select i1 %2481, i1 true, i1 %2482
  br i1 %2483, label %2484, label %2496

2484:                                             ; preds = %2480
  %2485 = load float, ptr %2253, align 4, !tbaa !72
  %2486 = fsub float %2470, %2459
  %2487 = fmul float %2486, %2485
  %2488 = fsub float %2458, %2257
  %2489 = fsub float %2469, %2257
  %2490 = fadd float %2488, %2489
  %2491 = fmul float %2490, 5.000000e-01
  %2492 = fsub float 1.000000e+00, %2491
  %2493 = getelementptr inbounds nuw float, ptr %1774, i64 %2255
  %2494 = load float, ptr %2493, align 4, !tbaa !45
  %2495 = call float @llvm.fmuladd.f32(float %2487, float %2492, float %2494)
  store float %2495, ptr %2493, align 4, !tbaa !45
  br label %2496

2496:                                             ; preds = %2484, %2480, %2474, %2446, %2443, %2441
  %2497 = fcmp oeq float %2266, %2263
  br i1 %2497, label %2552, label %2498

2498:                                             ; preds = %2496
  %2499 = load float, ptr %2114, align 4, !tbaa !69
  %2500 = fcmp ogt float %2266, %2499
  br i1 %2500, label %2552, label %2501

2501:                                             ; preds = %2498
  %2502 = load float, ptr %2107, align 8, !tbaa !83
  %2503 = fcmp olt float %2263, %2502
  br i1 %2503, label %2552, label %2504

2504:                                             ; preds = %2501
  %2505 = fcmp olt float %2266, %2502
  br i1 %2505, label %2506, label %2513

2506:                                             ; preds = %2504
  %2507 = fsub float %2257, %2260
  %2508 = fsub float %2502, %2266
  %2509 = fmul float %2507, %2508
  %2510 = fsub float %2263, %2266
  %2511 = fdiv float %2509, %2510
  %2512 = fadd float %2511, %2260
  br label %2513

2513:                                             ; preds = %2506, %2504
  %2514 = phi float [ %2512, %2506 ], [ %2260, %2504 ]
  %2515 = phi float [ %2502, %2506 ], [ %2266, %2504 ]
  %2516 = fcmp ogt float %2263, %2499
  br i1 %2516, label %2517, label %2524

2517:                                             ; preds = %2513
  %2518 = fsub float %2257, %2514
  %2519 = fsub float %2499, %2263
  %2520 = fmul float %2519, %2518
  %2521 = fsub float %2263, %2515
  %2522 = fdiv float %2520, %2521
  %2523 = fadd float %2522, %2257
  br label %2524

2524:                                             ; preds = %2517, %2513
  %2525 = phi float [ %2523, %2517 ], [ %2257, %2513 ]
  %2526 = phi float [ %2499, %2517 ], [ %2263, %2513 ]
  %2527 = fcmp ugt float %2514, %2257
  %2528 = fcmp ugt float %2525, %2257
  %2529 = select i1 %2527, i1 true, i1 %2528
  br i1 %2529, label %2536, label %2530

2530:                                             ; preds = %2524
  %2531 = load float, ptr %2253, align 4, !tbaa !72
  %2532 = fsub float %2526, %2515
  %2533 = getelementptr inbounds nuw float, ptr %1774, i64 %2255
  %2534 = load float, ptr %2533, align 4, !tbaa !45
  %2535 = call float @llvm.fmuladd.f32(float %2531, float %2532, float %2534)
  store float %2535, ptr %2533, align 4, !tbaa !45
  br label %2552

2536:                                             ; preds = %2524
  %2537 = fcmp ult float %2514, %2260
  %2538 = fcmp ult float %2525, %2260
  %2539 = select i1 %2537, i1 true, i1 %2538
  br i1 %2539, label %2540, label %2552

2540:                                             ; preds = %2536
  %2541 = load float, ptr %2253, align 4, !tbaa !72
  %2542 = fsub float %2526, %2515
  %2543 = fmul float %2542, %2541
  %2544 = fsub float %2514, %2257
  %2545 = fsub float %2525, %2257
  %2546 = fadd float %2544, %2545
  %2547 = fmul float %2546, 5.000000e-01
  %2548 = fsub float 1.000000e+00, %2547
  %2549 = getelementptr inbounds nuw float, ptr %1774, i64 %2255
  %2550 = load float, ptr %2549, align 4, !tbaa !45
  %2551 = call float @llvm.fmuladd.f32(float %2543, float %2548, float %2550)
  store float %2551, ptr %2549, align 4, !tbaa !45
  br label %2552

2552:                                             ; preds = %2540, %2536, %2530, %2501, %2498, %2496
  %2553 = fcmp oeq float %2263, %1799
  br i1 %2553, label %3115, label %2554

2554:                                             ; preds = %2552
  %2555 = load float, ptr %2114, align 4, !tbaa !69
  %2556 = fcmp ogt float %2263, %2555
  br i1 %2556, label %3115, label %2557

2557:                                             ; preds = %2554
  %2558 = load float, ptr %2107, align 8, !tbaa !83
  %2559 = fcmp olt float %1799, %2558
  br i1 %2559, label %3115, label %2560

2560:                                             ; preds = %2557
  %2561 = fcmp olt float %2263, %2558
  br i1 %2561, label %2562, label %2569

2562:                                             ; preds = %2560
  %2563 = fsub float %2104, %2257
  %2564 = fsub float %2558, %2263
  %2565 = fmul float %2563, %2564
  %2566 = fsub float %1799, %2263
  %2567 = fdiv float %2565, %2566
  %2568 = fadd float %2567, %2257
  br label %2569

2569:                                             ; preds = %2562, %2560
  %2570 = phi float [ %2568, %2562 ], [ %2257, %2560 ]
  %2571 = phi float [ %2558, %2562 ], [ %2263, %2560 ]
  %2572 = fcmp ogt float %1799, %2555
  br i1 %2572, label %2573, label %2580

2573:                                             ; preds = %2569
  %2574 = fsub float %2104, %2570
  %2575 = fsub float %2555, %1799
  %2576 = fmul float %2575, %2574
  %2577 = fsub float %1799, %2571
  %2578 = fdiv float %2576, %2577
  %2579 = fadd float %2104, %2578
  br label %2580

2580:                                             ; preds = %2573, %2569
  %2581 = phi float [ %2579, %2573 ], [ %2104, %2569 ]
  %2582 = phi float [ %2555, %2573 ], [ %1799, %2569 ]
  %2583 = fcmp ugt float %2570, %2257
  %2584 = fcmp ugt float %2581, %2257
  %2585 = select i1 %2583, i1 true, i1 %2584
  br i1 %2585, label %2592, label %2586

2586:                                             ; preds = %2580
  %2587 = load float, ptr %2253, align 4, !tbaa !72
  %2588 = fsub float %2582, %2571
  %2589 = getelementptr inbounds nuw float, ptr %1774, i64 %2255
  %2590 = load float, ptr %2589, align 4, !tbaa !45
  %2591 = call float @llvm.fmuladd.f32(float %2587, float %2588, float %2590)
  store float %2591, ptr %2589, align 4, !tbaa !45
  br label %3115

2592:                                             ; preds = %2580
  %2593 = fcmp ult float %2570, %2260
  %2594 = fcmp ult float %2581, %2260
  %2595 = select i1 %2593, i1 true, i1 %2594
  br i1 %2595, label %2596, label %3115

2596:                                             ; preds = %2592
  %2597 = load float, ptr %2253, align 4, !tbaa !72
  %2598 = fsub float %2582, %2571
  %2599 = fmul float %2598, %2597
  %2600 = fsub float %2570, %2257
  %2601 = fsub float %2581, %2257
  %2602 = fadd float %2600, %2601
  %2603 = fmul float %2602, 5.000000e-01
  %2604 = fsub float 1.000000e+00, %2603
  %2605 = getelementptr inbounds nuw float, ptr %1774, i64 %2255
  %2606 = load float, ptr %2605, align 4, !tbaa !45
  %2607 = call float @llvm.fmuladd.f32(float %2599, float %2604, float %2606)
  store float %2607, ptr %2605, align 4, !tbaa !45
  br label %3115

2608:                                             ; preds = %2437
  %2609 = fcmp ogt float %2104, %2257
  %2610 = and i1 %2267, %2609
  br i1 %2610, label %2611, label %2722

2611:                                             ; preds = %2608
  %2612 = fcmp oeq float %2263, %1798
  br i1 %2612, label %2666, label %2613

2613:                                             ; preds = %2611
  %2614 = load float, ptr %2114, align 4, !tbaa !69
  %2615 = fcmp olt float %2614, %1798
  br i1 %2615, label %2666, label %2616

2616:                                             ; preds = %2613
  %2617 = load float, ptr %2107, align 8, !tbaa !83
  %2618 = fcmp olt float %2263, %2617
  br i1 %2618, label %2666, label %2619

2619:                                             ; preds = %2616
  %2620 = fcmp ogt float %2617, %1798
  br i1 %2620, label %2621, label %2627

2621:                                             ; preds = %2619
  %2622 = fsub float %2617, %1798
  %2623 = fmul float %2261, %2622
  %2624 = fsub float %2263, %1798
  %2625 = fdiv float %2623, %2624
  %2626 = fadd float %1918, %2625
  br label %2627

2627:                                             ; preds = %2621, %2619
  %2628 = phi float [ %2626, %2621 ], [ %1918, %2619 ]
  %2629 = phi float [ %2617, %2621 ], [ %1798, %2619 ]
  %2630 = fcmp ogt float %2263, %2614
  br i1 %2630, label %2631, label %2638

2631:                                             ; preds = %2627
  %2632 = fsub float %2257, %2628
  %2633 = fsub float %2614, %2263
  %2634 = fmul float %2633, %2632
  %2635 = fsub float %2263, %2629
  %2636 = fdiv float %2634, %2635
  %2637 = fadd float %2636, %2257
  br label %2638

2638:                                             ; preds = %2631, %2627
  %2639 = phi float [ %2637, %2631 ], [ %2257, %2627 ]
  %2640 = phi float [ %2614, %2631 ], [ %2263, %2627 ]
  %2641 = fcmp ugt float %2628, %2257
  %2642 = fcmp ugt float %2639, %2257
  %2643 = select i1 %2641, i1 true, i1 %2642
  br i1 %2643, label %2650, label %2644

2644:                                             ; preds = %2638
  %2645 = load float, ptr %2253, align 4, !tbaa !72
  %2646 = fsub float %2640, %2629
  %2647 = getelementptr inbounds nuw float, ptr %1774, i64 %2255
  %2648 = load float, ptr %2647, align 4, !tbaa !45
  %2649 = call float @llvm.fmuladd.f32(float %2645, float %2646, float %2648)
  store float %2649, ptr %2647, align 4, !tbaa !45
  br label %2666

2650:                                             ; preds = %2638
  %2651 = fcmp ult float %2628, %2260
  %2652 = fcmp ult float %2639, %2260
  %2653 = select i1 %2651, i1 true, i1 %2652
  br i1 %2653, label %2654, label %2666

2654:                                             ; preds = %2650
  %2655 = load float, ptr %2253, align 4, !tbaa !72
  %2656 = fsub float %2640, %2629
  %2657 = fmul float %2656, %2655
  %2658 = fsub float %2628, %2257
  %2659 = fsub float %2639, %2257
  %2660 = fadd float %2658, %2659
  %2661 = fmul float %2660, 5.000000e-01
  %2662 = fsub float 1.000000e+00, %2661
  %2663 = getelementptr inbounds nuw float, ptr %1774, i64 %2255
  %2664 = load float, ptr %2663, align 4, !tbaa !45
  %2665 = call float @llvm.fmuladd.f32(float %2657, float %2662, float %2664)
  store float %2665, ptr %2663, align 4, !tbaa !45
  br label %2666

2666:                                             ; preds = %2654, %2650, %2644, %2616, %2613, %2611
  %2667 = fcmp oeq float %2263, %1799
  br i1 %2667, label %3115, label %2668

2668:                                             ; preds = %2666
  %2669 = load float, ptr %2114, align 4, !tbaa !69
  %2670 = fcmp ogt float %2263, %2669
  br i1 %2670, label %3115, label %2671

2671:                                             ; preds = %2668
  %2672 = load float, ptr %2107, align 8, !tbaa !83
  %2673 = fcmp olt float %1799, %2672
  br i1 %2673, label %3115, label %2674

2674:                                             ; preds = %2671
  %2675 = fcmp olt float %2263, %2672
  br i1 %2675, label %2676, label %2683

2676:                                             ; preds = %2674
  %2677 = fsub float %2104, %2257
  %2678 = fsub float %2672, %2263
  %2679 = fmul float %2677, %2678
  %2680 = fsub float %1799, %2263
  %2681 = fdiv float %2679, %2680
  %2682 = fadd float %2681, %2257
  br label %2683

2683:                                             ; preds = %2676, %2674
  %2684 = phi float [ %2682, %2676 ], [ %2257, %2674 ]
  %2685 = phi float [ %2672, %2676 ], [ %2263, %2674 ]
  %2686 = fcmp ogt float %1799, %2669
  br i1 %2686, label %2687, label %2694

2687:                                             ; preds = %2683
  %2688 = fsub float %2104, %2684
  %2689 = fsub float %2669, %1799
  %2690 = fmul float %2689, %2688
  %2691 = fsub float %1799, %2685
  %2692 = fdiv float %2690, %2691
  %2693 = fadd float %2104, %2692
  br label %2694

2694:                                             ; preds = %2687, %2683
  %2695 = phi float [ %2693, %2687 ], [ %2104, %2683 ]
  %2696 = phi float [ %2669, %2687 ], [ %1799, %2683 ]
  %2697 = fcmp ugt float %2684, %2257
  %2698 = fcmp ugt float %2695, %2257
  %2699 = select i1 %2697, i1 true, i1 %2698
  br i1 %2699, label %2706, label %2700

2700:                                             ; preds = %2694
  %2701 = load float, ptr %2253, align 4, !tbaa !72
  %2702 = fsub float %2696, %2685
  %2703 = getelementptr inbounds nuw float, ptr %1774, i64 %2255
  %2704 = load float, ptr %2703, align 4, !tbaa !45
  %2705 = call float @llvm.fmuladd.f32(float %2701, float %2702, float %2704)
  store float %2705, ptr %2703, align 4, !tbaa !45
  br label %3115

2706:                                             ; preds = %2694
  %2707 = fcmp ult float %2684, %2260
  %2708 = fcmp ult float %2695, %2260
  %2709 = select i1 %2707, i1 true, i1 %2708
  br i1 %2709, label %2710, label %3115

2710:                                             ; preds = %2706
  %2711 = load float, ptr %2253, align 4, !tbaa !72
  %2712 = fsub float %2696, %2685
  %2713 = fmul float %2712, %2711
  %2714 = fsub float %2684, %2257
  %2715 = fsub float %2695, %2257
  %2716 = fadd float %2714, %2715
  %2717 = fmul float %2716, 5.000000e-01
  %2718 = fsub float 1.000000e+00, %2717
  %2719 = getelementptr inbounds nuw float, ptr %1774, i64 %2255
  %2720 = load float, ptr %2719, align 4, !tbaa !45
  %2721 = call float @llvm.fmuladd.f32(float %2713, float %2718, float %2720)
  store float %2721, ptr %2719, align 4, !tbaa !45
  br label %3115

2722:                                             ; preds = %2608
  %2723 = fcmp ogt float %1918, %2257
  %2724 = and i1 %2438, %2723
  br i1 %2724, label %2725, label %2836

2725:                                             ; preds = %2722
  %2726 = fcmp oeq float %2263, %1798
  br i1 %2726, label %2780, label %2727

2727:                                             ; preds = %2725
  %2728 = load float, ptr %2114, align 4, !tbaa !69
  %2729 = fcmp olt float %2728, %1798
  br i1 %2729, label %2780, label %2730

2730:                                             ; preds = %2727
  %2731 = load float, ptr %2107, align 8, !tbaa !83
  %2732 = fcmp olt float %2263, %2731
  br i1 %2732, label %2780, label %2733

2733:                                             ; preds = %2730
  %2734 = fcmp ogt float %2731, %1798
  br i1 %2734, label %2735, label %2741

2735:                                             ; preds = %2733
  %2736 = fsub float %2731, %1798
  %2737 = fmul float %2261, %2736
  %2738 = fsub float %2263, %1798
  %2739 = fdiv float %2737, %2738
  %2740 = fadd float %1918, %2739
  br label %2741

2741:                                             ; preds = %2735, %2733
  %2742 = phi float [ %2740, %2735 ], [ %1918, %2733 ]
  %2743 = phi float [ %2731, %2735 ], [ %1798, %2733 ]
  %2744 = fcmp ogt float %2263, %2728
  br i1 %2744, label %2745, label %2752

2745:                                             ; preds = %2741
  %2746 = fsub float %2257, %2742
  %2747 = fsub float %2728, %2263
  %2748 = fmul float %2747, %2746
  %2749 = fsub float %2263, %2743
  %2750 = fdiv float %2748, %2749
  %2751 = fadd float %2750, %2257
  br label %2752

2752:                                             ; preds = %2745, %2741
  %2753 = phi float [ %2751, %2745 ], [ %2257, %2741 ]
  %2754 = phi float [ %2728, %2745 ], [ %2263, %2741 ]
  %2755 = fcmp ugt float %2742, %2257
  %2756 = fcmp ugt float %2753, %2257
  %2757 = select i1 %2755, i1 true, i1 %2756
  br i1 %2757, label %2764, label %2758

2758:                                             ; preds = %2752
  %2759 = load float, ptr %2253, align 4, !tbaa !72
  %2760 = fsub float %2754, %2743
  %2761 = getelementptr inbounds nuw float, ptr %1774, i64 %2255
  %2762 = load float, ptr %2761, align 4, !tbaa !45
  %2763 = call float @llvm.fmuladd.f32(float %2759, float %2760, float %2762)
  store float %2763, ptr %2761, align 4, !tbaa !45
  br label %2780

2764:                                             ; preds = %2752
  %2765 = fcmp ult float %2742, %2260
  %2766 = fcmp ult float %2753, %2260
  %2767 = select i1 %2765, i1 true, i1 %2766
  br i1 %2767, label %2768, label %2780

2768:                                             ; preds = %2764
  %2769 = load float, ptr %2253, align 4, !tbaa !72
  %2770 = fsub float %2754, %2743
  %2771 = fmul float %2770, %2769
  %2772 = fsub float %2742, %2257
  %2773 = fsub float %2753, %2257
  %2774 = fadd float %2772, %2773
  %2775 = fmul float %2774, 5.000000e-01
  %2776 = fsub float 1.000000e+00, %2775
  %2777 = getelementptr inbounds nuw float, ptr %1774, i64 %2255
  %2778 = load float, ptr %2777, align 4, !tbaa !45
  %2779 = call float @llvm.fmuladd.f32(float %2771, float %2776, float %2778)
  store float %2779, ptr %2777, align 4, !tbaa !45
  br label %2780

2780:                                             ; preds = %2768, %2764, %2758, %2730, %2727, %2725
  %2781 = fcmp oeq float %2263, %1799
  br i1 %2781, label %3115, label %2782

2782:                                             ; preds = %2780
  %2783 = load float, ptr %2114, align 4, !tbaa !69
  %2784 = fcmp ogt float %2263, %2783
  br i1 %2784, label %3115, label %2785

2785:                                             ; preds = %2782
  %2786 = load float, ptr %2107, align 8, !tbaa !83
  %2787 = fcmp olt float %1799, %2786
  br i1 %2787, label %3115, label %2788

2788:                                             ; preds = %2785
  %2789 = fcmp olt float %2263, %2786
  br i1 %2789, label %2790, label %2797

2790:                                             ; preds = %2788
  %2791 = fsub float %2104, %2257
  %2792 = fsub float %2786, %2263
  %2793 = fmul float %2791, %2792
  %2794 = fsub float %1799, %2263
  %2795 = fdiv float %2793, %2794
  %2796 = fadd float %2795, %2257
  br label %2797

2797:                                             ; preds = %2790, %2788
  %2798 = phi float [ %2796, %2790 ], [ %2257, %2788 ]
  %2799 = phi float [ %2786, %2790 ], [ %2263, %2788 ]
  %2800 = fcmp ogt float %1799, %2783
  br i1 %2800, label %2801, label %2808

2801:                                             ; preds = %2797
  %2802 = fsub float %2104, %2798
  %2803 = fsub float %2783, %1799
  %2804 = fmul float %2803, %2802
  %2805 = fsub float %1799, %2799
  %2806 = fdiv float %2804, %2805
  %2807 = fadd float %2104, %2806
  br label %2808

2808:                                             ; preds = %2801, %2797
  %2809 = phi float [ %2807, %2801 ], [ %2104, %2797 ]
  %2810 = phi float [ %2783, %2801 ], [ %1799, %2797 ]
  %2811 = fcmp ugt float %2798, %2257
  %2812 = fcmp ugt float %2809, %2257
  %2813 = select i1 %2811, i1 true, i1 %2812
  br i1 %2813, label %2820, label %2814

2814:                                             ; preds = %2808
  %2815 = load float, ptr %2253, align 4, !tbaa !72
  %2816 = fsub float %2810, %2799
  %2817 = getelementptr inbounds nuw float, ptr %1774, i64 %2255
  %2818 = load float, ptr %2817, align 4, !tbaa !45
  %2819 = call float @llvm.fmuladd.f32(float %2815, float %2816, float %2818)
  store float %2819, ptr %2817, align 4, !tbaa !45
  br label %3115

2820:                                             ; preds = %2808
  %2821 = fcmp ult float %2798, %2260
  %2822 = fcmp ult float %2809, %2260
  %2823 = select i1 %2821, i1 true, i1 %2822
  br i1 %2823, label %2824, label %3115

2824:                                             ; preds = %2820
  %2825 = load float, ptr %2253, align 4, !tbaa !72
  %2826 = fsub float %2810, %2799
  %2827 = fmul float %2826, %2825
  %2828 = fsub float %2798, %2257
  %2829 = fsub float %2809, %2257
  %2830 = fadd float %2828, %2829
  %2831 = fmul float %2830, 5.000000e-01
  %2832 = fsub float 1.000000e+00, %2831
  %2833 = getelementptr inbounds nuw float, ptr %1774, i64 %2255
  %2834 = load float, ptr %2833, align 4, !tbaa !45
  %2835 = call float @llvm.fmuladd.f32(float %2827, float %2832, float %2834)
  store float %2835, ptr %2833, align 4, !tbaa !45
  br label %3115

2836:                                             ; preds = %2722
  %2837 = fcmp olt float %1918, %2260
  %2838 = and i1 %2837, %2268
  br i1 %2838, label %2839, label %2950

2839:                                             ; preds = %2836
  %2840 = fcmp oeq float %2266, %1798
  br i1 %2840, label %2894, label %2841

2841:                                             ; preds = %2839
  %2842 = load float, ptr %2114, align 4, !tbaa !69
  %2843 = fcmp olt float %2842, %1798
  br i1 %2843, label %2894, label %2844

2844:                                             ; preds = %2841
  %2845 = load float, ptr %2107, align 8, !tbaa !83
  %2846 = fcmp olt float %2266, %2845
  br i1 %2846, label %2894, label %2847

2847:                                             ; preds = %2844
  %2848 = fcmp ogt float %2845, %1798
  br i1 %2848, label %2849, label %2855

2849:                                             ; preds = %2847
  %2850 = fsub float %2845, %1798
  %2851 = fmul float %2264, %2850
  %2852 = fsub float %2266, %1798
  %2853 = fdiv float %2851, %2852
  %2854 = fadd float %1918, %2853
  br label %2855

2855:                                             ; preds = %2849, %2847
  %2856 = phi float [ %2854, %2849 ], [ %1918, %2847 ]
  %2857 = phi float [ %2845, %2849 ], [ %1798, %2847 ]
  %2858 = fcmp ogt float %2266, %2842
  br i1 %2858, label %2859, label %2866

2859:                                             ; preds = %2855
  %2860 = fsub float %2260, %2856
  %2861 = fsub float %2842, %2266
  %2862 = fmul float %2861, %2860
  %2863 = fsub float %2266, %2857
  %2864 = fdiv float %2862, %2863
  %2865 = fadd float %2864, %2260
  br label %2866

2866:                                             ; preds = %2859, %2855
  %2867 = phi float [ %2865, %2859 ], [ %2260, %2855 ]
  %2868 = phi float [ %2842, %2859 ], [ %2266, %2855 ]
  %2869 = fcmp ugt float %2856, %2257
  %2870 = fcmp ugt float %2867, %2257
  %2871 = select i1 %2869, i1 true, i1 %2870
  br i1 %2871, label %2878, label %2872

2872:                                             ; preds = %2866
  %2873 = load float, ptr %2253, align 4, !tbaa !72
  %2874 = fsub float %2868, %2857
  %2875 = getelementptr inbounds nuw float, ptr %1774, i64 %2255
  %2876 = load float, ptr %2875, align 4, !tbaa !45
  %2877 = call float @llvm.fmuladd.f32(float %2873, float %2874, float %2876)
  store float %2877, ptr %2875, align 4, !tbaa !45
  br label %2894

2878:                                             ; preds = %2866
  %2879 = fcmp ult float %2856, %2260
  %2880 = fcmp ult float %2867, %2260
  %2881 = select i1 %2879, i1 true, i1 %2880
  br i1 %2881, label %2882, label %2894

2882:                                             ; preds = %2878
  %2883 = load float, ptr %2253, align 4, !tbaa !72
  %2884 = fsub float %2868, %2857
  %2885 = fmul float %2884, %2883
  %2886 = fsub float %2856, %2257
  %2887 = fsub float %2867, %2257
  %2888 = fadd float %2886, %2887
  %2889 = fmul float %2888, 5.000000e-01
  %2890 = fsub float 1.000000e+00, %2889
  %2891 = getelementptr inbounds nuw float, ptr %1774, i64 %2255
  %2892 = load float, ptr %2891, align 4, !tbaa !45
  %2893 = call float @llvm.fmuladd.f32(float %2885, float %2890, float %2892)
  store float %2893, ptr %2891, align 4, !tbaa !45
  br label %2894

2894:                                             ; preds = %2882, %2878, %2872, %2844, %2841, %2839
  %2895 = fcmp oeq float %2266, %1799
  br i1 %2895, label %3115, label %2896

2896:                                             ; preds = %2894
  %2897 = load float, ptr %2114, align 4, !tbaa !69
  %2898 = fcmp ogt float %2266, %2897
  br i1 %2898, label %3115, label %2899

2899:                                             ; preds = %2896
  %2900 = load float, ptr %2107, align 8, !tbaa !83
  %2901 = fcmp olt float %1799, %2900
  br i1 %2901, label %3115, label %2902

2902:                                             ; preds = %2899
  %2903 = fcmp olt float %2266, %2900
  br i1 %2903, label %2904, label %2911

2904:                                             ; preds = %2902
  %2905 = fsub float %2104, %2260
  %2906 = fsub float %2900, %2266
  %2907 = fmul float %2905, %2906
  %2908 = fsub float %1799, %2266
  %2909 = fdiv float %2907, %2908
  %2910 = fadd float %2909, %2260
  br label %2911

2911:                                             ; preds = %2904, %2902
  %2912 = phi float [ %2910, %2904 ], [ %2260, %2902 ]
  %2913 = phi float [ %2900, %2904 ], [ %2266, %2902 ]
  %2914 = fcmp ogt float %1799, %2897
  br i1 %2914, label %2915, label %2922

2915:                                             ; preds = %2911
  %2916 = fsub float %2104, %2912
  %2917 = fsub float %2897, %1799
  %2918 = fmul float %2917, %2916
  %2919 = fsub float %1799, %2913
  %2920 = fdiv float %2918, %2919
  %2921 = fadd float %2104, %2920
  br label %2922

2922:                                             ; preds = %2915, %2911
  %2923 = phi float [ %2921, %2915 ], [ %2104, %2911 ]
  %2924 = phi float [ %2897, %2915 ], [ %1799, %2911 ]
  %2925 = fcmp ugt float %2912, %2257
  %2926 = fcmp ugt float %2923, %2257
  %2927 = select i1 %2925, i1 true, i1 %2926
  br i1 %2927, label %2934, label %2928

2928:                                             ; preds = %2922
  %2929 = load float, ptr %2253, align 4, !tbaa !72
  %2930 = fsub float %2924, %2913
  %2931 = getelementptr inbounds nuw float, ptr %1774, i64 %2255
  %2932 = load float, ptr %2931, align 4, !tbaa !45
  %2933 = call float @llvm.fmuladd.f32(float %2929, float %2930, float %2932)
  store float %2933, ptr %2931, align 4, !tbaa !45
  br label %3115

2934:                                             ; preds = %2922
  %2935 = fcmp ult float %2912, %2260
  %2936 = fcmp ult float %2923, %2260
  %2937 = select i1 %2935, i1 true, i1 %2936
  br i1 %2937, label %2938, label %3115

2938:                                             ; preds = %2934
  %2939 = load float, ptr %2253, align 4, !tbaa !72
  %2940 = fsub float %2924, %2913
  %2941 = fmul float %2940, %2939
  %2942 = fsub float %2912, %2257
  %2943 = fsub float %2923, %2257
  %2944 = fadd float %2942, %2943
  %2945 = fmul float %2944, 5.000000e-01
  %2946 = fsub float 1.000000e+00, %2945
  %2947 = getelementptr inbounds nuw float, ptr %1774, i64 %2255
  %2948 = load float, ptr %2947, align 4, !tbaa !45
  %2949 = call float @llvm.fmuladd.f32(float %2941, float %2946, float %2948)
  store float %2949, ptr %2947, align 4, !tbaa !45
  br label %3115

2950:                                             ; preds = %2836
  %2951 = fcmp olt float %2104, %2260
  %2952 = and i1 %2951, %2439
  br i1 %2952, label %2953, label %3064

2953:                                             ; preds = %2950
  %2954 = fcmp oeq float %2266, %1798
  br i1 %2954, label %3008, label %2955

2955:                                             ; preds = %2953
  %2956 = load float, ptr %2114, align 4, !tbaa !69
  %2957 = fcmp olt float %2956, %1798
  br i1 %2957, label %3008, label %2958

2958:                                             ; preds = %2955
  %2959 = load float, ptr %2107, align 8, !tbaa !83
  %2960 = fcmp olt float %2266, %2959
  br i1 %2960, label %3008, label %2961

2961:                                             ; preds = %2958
  %2962 = fcmp ogt float %2959, %1798
  br i1 %2962, label %2963, label %2969

2963:                                             ; preds = %2961
  %2964 = fsub float %2959, %1798
  %2965 = fmul float %2264, %2964
  %2966 = fsub float %2266, %1798
  %2967 = fdiv float %2965, %2966
  %2968 = fadd float %1918, %2967
  br label %2969

2969:                                             ; preds = %2963, %2961
  %2970 = phi float [ %2968, %2963 ], [ %1918, %2961 ]
  %2971 = phi float [ %2959, %2963 ], [ %1798, %2961 ]
  %2972 = fcmp ogt float %2266, %2956
  br i1 %2972, label %2973, label %2980

2973:                                             ; preds = %2969
  %2974 = fsub float %2260, %2970
  %2975 = fsub float %2956, %2266
  %2976 = fmul float %2975, %2974
  %2977 = fsub float %2266, %2971
  %2978 = fdiv float %2976, %2977
  %2979 = fadd float %2978, %2260
  br label %2980

2980:                                             ; preds = %2973, %2969
  %2981 = phi float [ %2979, %2973 ], [ %2260, %2969 ]
  %2982 = phi float [ %2956, %2973 ], [ %2266, %2969 ]
  %2983 = fcmp ugt float %2970, %2257
  %2984 = fcmp ugt float %2981, %2257
  %2985 = select i1 %2983, i1 true, i1 %2984
  br i1 %2985, label %2992, label %2986

2986:                                             ; preds = %2980
  %2987 = load float, ptr %2253, align 4, !tbaa !72
  %2988 = fsub float %2982, %2971
  %2989 = getelementptr inbounds nuw float, ptr %1774, i64 %2255
  %2990 = load float, ptr %2989, align 4, !tbaa !45
  %2991 = call float @llvm.fmuladd.f32(float %2987, float %2988, float %2990)
  store float %2991, ptr %2989, align 4, !tbaa !45
  br label %3008

2992:                                             ; preds = %2980
  %2993 = fcmp ult float %2970, %2260
  %2994 = fcmp ult float %2981, %2260
  %2995 = select i1 %2993, i1 true, i1 %2994
  br i1 %2995, label %2996, label %3008

2996:                                             ; preds = %2992
  %2997 = load float, ptr %2253, align 4, !tbaa !72
  %2998 = fsub float %2982, %2971
  %2999 = fmul float %2998, %2997
  %3000 = fsub float %2970, %2257
  %3001 = fsub float %2981, %2257
  %3002 = fadd float %3000, %3001
  %3003 = fmul float %3002, 5.000000e-01
  %3004 = fsub float 1.000000e+00, %3003
  %3005 = getelementptr inbounds nuw float, ptr %1774, i64 %2255
  %3006 = load float, ptr %3005, align 4, !tbaa !45
  %3007 = call float @llvm.fmuladd.f32(float %2999, float %3004, float %3006)
  store float %3007, ptr %3005, align 4, !tbaa !45
  br label %3008

3008:                                             ; preds = %2996, %2992, %2986, %2958, %2955, %2953
  %3009 = fcmp oeq float %2266, %1799
  br i1 %3009, label %3115, label %3010

3010:                                             ; preds = %3008
  %3011 = load float, ptr %2114, align 4, !tbaa !69
  %3012 = fcmp ogt float %2266, %3011
  br i1 %3012, label %3115, label %3013

3013:                                             ; preds = %3010
  %3014 = load float, ptr %2107, align 8, !tbaa !83
  %3015 = fcmp olt float %1799, %3014
  br i1 %3015, label %3115, label %3016

3016:                                             ; preds = %3013
  %3017 = fcmp olt float %2266, %3014
  br i1 %3017, label %3018, label %3025

3018:                                             ; preds = %3016
  %3019 = fsub float %2104, %2260
  %3020 = fsub float %3014, %2266
  %3021 = fmul float %3019, %3020
  %3022 = fsub float %1799, %2266
  %3023 = fdiv float %3021, %3022
  %3024 = fadd float %3023, %2260
  br label %3025

3025:                                             ; preds = %3018, %3016
  %3026 = phi float [ %3024, %3018 ], [ %2260, %3016 ]
  %3027 = phi float [ %3014, %3018 ], [ %2266, %3016 ]
  %3028 = fcmp ogt float %1799, %3011
  br i1 %3028, label %3029, label %3036

3029:                                             ; preds = %3025
  %3030 = fsub float %2104, %3026
  %3031 = fsub float %3011, %1799
  %3032 = fmul float %3031, %3030
  %3033 = fsub float %1799, %3027
  %3034 = fdiv float %3032, %3033
  %3035 = fadd float %2104, %3034
  br label %3036

3036:                                             ; preds = %3029, %3025
  %3037 = phi float [ %3035, %3029 ], [ %2104, %3025 ]
  %3038 = phi float [ %3011, %3029 ], [ %1799, %3025 ]
  %3039 = fcmp ugt float %3026, %2257
  %3040 = fcmp ugt float %3037, %2257
  %3041 = select i1 %3039, i1 true, i1 %3040
  br i1 %3041, label %3048, label %3042

3042:                                             ; preds = %3036
  %3043 = load float, ptr %2253, align 4, !tbaa !72
  %3044 = fsub float %3038, %3027
  %3045 = getelementptr inbounds nuw float, ptr %1774, i64 %2255
  %3046 = load float, ptr %3045, align 4, !tbaa !45
  %3047 = call float @llvm.fmuladd.f32(float %3043, float %3044, float %3046)
  store float %3047, ptr %3045, align 4, !tbaa !45
  br label %3115

3048:                                             ; preds = %3036
  %3049 = fcmp ult float %3026, %2260
  %3050 = fcmp ult float %3037, %2260
  %3051 = select i1 %3049, i1 true, i1 %3050
  br i1 %3051, label %3052, label %3115

3052:                                             ; preds = %3048
  %3053 = load float, ptr %2253, align 4, !tbaa !72
  %3054 = fsub float %3038, %3027
  %3055 = fmul float %3054, %3053
  %3056 = fsub float %3026, %2257
  %3057 = fsub float %3037, %2257
  %3058 = fadd float %3056, %3057
  %3059 = fmul float %3058, 5.000000e-01
  %3060 = fsub float 1.000000e+00, %3059
  %3061 = getelementptr inbounds nuw float, ptr %1774, i64 %2255
  %3062 = load float, ptr %3061, align 4, !tbaa !45
  %3063 = call float @llvm.fmuladd.f32(float %3055, float %3060, float %3062)
  store float %3063, ptr %3061, align 4, !tbaa !45
  br label %3115

3064:                                             ; preds = %2950
  br i1 %1910, label %3115, label %3065

3065:                                             ; preds = %3064
  %3066 = load float, ptr %2114, align 4, !tbaa !69
  %3067 = fcmp olt float %3066, %1798
  br i1 %3067, label %3115, label %3068

3068:                                             ; preds = %3065
  %3069 = load float, ptr %2107, align 8, !tbaa !83
  %3070 = fcmp olt float %1799, %3069
  br i1 %3070, label %3115, label %3071

3071:                                             ; preds = %3068
  %3072 = fcmp ogt float %3069, %1798
  %3073 = fsub float %3069, %1798
  %3074 = fmul float %2252, %3073
  %3075 = fdiv float %3074, %1911
  %3076 = fadd float %1918, %3075
  %3077 = select i1 %3072, float %3076, float %1918
  %3078 = select i1 %3072, float %3069, float %1798
  %3079 = fcmp ogt float %1799, %3066
  br i1 %3079, label %3080, label %3087

3080:                                             ; preds = %3071
  %3081 = fsub float %2104, %3077
  %3082 = fsub float %3066, %1799
  %3083 = fmul float %3082, %3081
  %3084 = fsub float %1799, %3078
  %3085 = fdiv float %3083, %3084
  %3086 = fadd float %2104, %3085
  br label %3087

3087:                                             ; preds = %3080, %3071
  %3088 = phi float [ %3086, %3080 ], [ %2104, %3071 ]
  %3089 = phi float [ %3066, %3080 ], [ %1799, %3071 ]
  %3090 = fcmp ugt float %3077, %2257
  %3091 = fcmp ugt float %3088, %2257
  %3092 = select i1 %3090, i1 true, i1 %3091
  br i1 %3092, label %3099, label %3093

3093:                                             ; preds = %3087
  %3094 = load float, ptr %2253, align 4, !tbaa !72
  %3095 = fsub float %3089, %3078
  %3096 = getelementptr inbounds nuw float, ptr %1774, i64 %2255
  %3097 = load float, ptr %3096, align 4, !tbaa !45
  %3098 = call float @llvm.fmuladd.f32(float %3094, float %3095, float %3097)
  store float %3098, ptr %3096, align 4, !tbaa !45
  br label %3115

3099:                                             ; preds = %3087
  %3100 = fcmp ult float %3077, %2260
  %3101 = fcmp ult float %3088, %2260
  %3102 = select i1 %3100, i1 true, i1 %3101
  br i1 %3102, label %3103, label %3115

3103:                                             ; preds = %3099
  %3104 = load float, ptr %2253, align 4, !tbaa !72
  %3105 = fsub float %3089, %3078
  %3106 = fmul float %3105, %3104
  %3107 = fsub float %3077, %2257
  %3108 = fsub float %3088, %2257
  %3109 = fadd float %3107, %3108
  %3110 = fmul float %3109, 5.000000e-01
  %3111 = fsub float 1.000000e+00, %3110
  %3112 = getelementptr inbounds nuw float, ptr %1774, i64 %2255
  %3113 = load float, ptr %3112, align 4, !tbaa !45
  %3114 = call float @llvm.fmuladd.f32(float %3106, float %3111, float %3113)
  store float %3114, ptr %3112, align 4, !tbaa !45
  br label %3115

3115:                                             ; preds = %3103, %3099, %3093, %3068, %3065, %3064, %3052, %3048, %3042, %3013, %3010, %3008, %2938, %2934, %2928, %2899, %2896, %2894, %2824, %2820, %2814, %2785, %2782, %2780, %2710, %2706, %2700, %2671, %2668, %2666, %2596, %2592, %2586, %2557, %2554, %2552, %2425, %2421, %2415, %2386, %2383, %2381
  %3116 = icmp eq i64 %2258, %1775
  br i1 %3116, label %3117, label %2254, !llvm.loop !86

3117:                                             ; preds = %3115, %2233, %2132, %2093, %2089, %2083, %2054, %2050, %2049, %2035, %2029, %2021, %1991, %1987, %1923, %1919
  %3118 = load ptr, ptr %1913, align 8, !tbaa !71
  %3119 = icmp eq ptr %3118, null
  br i1 %3119, label %3120, label %1912, !llvm.loop !87

3120:                                             ; preds = %3117, %1902
  %3121 = shl nsw i32 %1794, 9
  br label %3123

3122:                                             ; preds = %3123
  br i1 %1908, label %3154, label %3145

3123:                                             ; preds = %3123, %3120
  %3124 = phi i64 [ %3143, %3123 ], [ 0, %3120 ]
  %3125 = phi float [ %3128, %3123 ], [ 0.000000e+00, %3120 ]
  %3126 = getelementptr inbounds nuw float, ptr %1776, i64 %3124
  %3127 = load float, ptr %3126, align 4, !tbaa !45
  %3128 = fadd float %3125, %3127
  %3129 = getelementptr inbounds nuw float, ptr %1774, i64 %3124
  %3130 = load float, ptr %3129, align 4, !tbaa !45
  %3131 = fadd float %3130, %3128
  %3132 = fcmp olt float %3131, 0.000000e+00
  %3133 = fneg float %3131
  %3134 = select i1 %3132, float %3133, float %3131
  %3135 = call float @llvm.fmuladd.f32(float %3134, float 2.550000e+02, float 5.000000e-01)
  %3136 = fptosi float %3135 to i32
  %3137 = call i32 @llvm.smin.i32(i32 %3136, i32 255)
  %3138 = trunc i32 %3137 to i8
  %3139 = trunc nuw nsw i64 %3124 to i32
  %3140 = add nuw nsw i32 %3121, %3139
  %3141 = sext i32 %3140 to i64
  %3142 = getelementptr inbounds i8, ptr %1436, i64 %3141
  store i8 %3138, ptr %3142, align 1, !tbaa !8
  %3143 = add nuw nsw i64 %3124, 1
  %3144 = icmp eq i64 %3143, %1775
  br i1 %3144, label %3122, label %3123, !llvm.loop !88

3145:                                             ; preds = %3122, %3145
  %3146 = phi ptr [ %3152, %3145 ], [ %1907, %3122 ]
  %3147 = getelementptr inbounds nuw i8, ptr %3146, i64 12
  %3148 = load float, ptr %3147, align 4, !tbaa !80
  %3149 = getelementptr inbounds nuw i8, ptr %3146, i64 8
  %3150 = load float, ptr %3149, align 8, !tbaa !82
  %3151 = fadd float %3148, %3150
  store float %3151, ptr %3149, align 8, !tbaa !82
  %3152 = load ptr, ptr %3146, align 8, !tbaa !67
  %3153 = icmp eq ptr %3152, null
  br i1 %3153, label %3154, label %3145, !llvm.loop !89

3154:                                             ; preds = %3145, %3122
  %3155 = add nsw i32 %1793, 1
  %3156 = add nuw nsw i32 %1794, 1
  %3157 = icmp eq i32 %1393, %3156
  br i1 %3157, label %3158, label %1791, !llvm.loop !90

3158:                                             ; preds = %3154
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %3159

3159:                                             ; preds = %1625, %1626, %1658, %3158
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  br label %3160

3160:                                             ; preds = %3159, %1408
  %3161 = add nuw nsw i32 %1394, 1
  %3162 = add nuw nsw i32 %3161, %1403
  %3163 = call i32 @llvm.smax.i32(i32 %1395, i32 %1360)
  %3164 = select i1 %1399, i32 %1395, i32 %3163
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #16
  %3165 = add nuw nsw i64 %1357, 1
  %3166 = icmp eq i64 %3165, 95
  br i1 %3166, label %3169, label %1356, !llvm.loop !91

3167:                                             ; preds = %1397, %1356
  store i32 826689362, ptr %4, align 1
  %3168 = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 3, ptr %3168, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #16
  br label %3682

3169:                                             ; preds = %3160
  %3170 = icmp eq i32 %531, 0
  %3171 = icmp eq i32 %538, 0
  %3172 = select i1 %3170, i1 %3171, i1 false
  %3173 = sext i32 %538 to i64
  %3174 = getelementptr inbounds i8, ptr %0, i64 %3173
  %3175 = getelementptr inbounds nuw i8, ptr %3174, i64 1
  %3176 = getelementptr inbounds nuw i8, ptr %3174, i64 2
  %3177 = getelementptr inbounds nuw i8, ptr %3174, i64 3
  %3178 = getelementptr inbounds nuw i8, ptr %3174, i64 8
  %3179 = getelementptr inbounds nuw i8, ptr %3174, i64 9
  %3180 = sext i32 %531 to i64
  %3181 = getelementptr inbounds i8, ptr %0, i64 %3180
  %3182 = getelementptr inbounds nuw i8, ptr %3181, i64 2
  %3183 = getelementptr inbounds nuw i8, ptr %3181, i64 3
  %3184 = getelementptr inbounds nuw i8, ptr %3181, i64 8
  %3185 = getelementptr inbounds nuw i8, ptr %3181, i64 9
  %3186 = getelementptr inbounds nuw i8, ptr %3181, i64 10
  %3187 = getelementptr inbounds nuw i8, ptr %3181, i64 11
  %3188 = getelementptr inbounds nuw i8, ptr %3181, i64 18
  %3189 = getelementptr inbounds nuw i8, ptr %3181, i64 22
  br label %3190

3190:                                             ; preds = %3169, %3206
  %3191 = phi i32 [ 32, %3169 ], [ %3208, %3206 ]
  %3192 = phi i32 [ 0, %3169 ], [ %3207, %3206 ]
  %3193 = icmp slt i32 %3192, 1024
  br i1 %3193, label %3194, label %3206

3194:                                             ; preds = %3190
  %3195 = trunc nuw i32 %3191 to i8
  br label %3210

3196:                                             ; preds = %3206
  %3197 = add nuw i32 %3164, 1
  %3198 = add nuw i32 %3197, %1402
  store i32 826689362, ptr %4, align 1
  %3199 = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %3199, align 1
  %3200 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %1327, ptr %3200, align 1
  %3201 = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %1342, ptr %3201, align 1
  %3202 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 512, ptr %3202, align 1
  %3203 = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 %3198, ptr %3203, align 1
  %3204 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 95, ptr %3204, align 1
  %3205 = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i32 %3207, ptr %3205, align 1
  br label %3682

3206:                                             ; preds = %3676, %3190
  %3207 = phi i32 [ %3192, %3190 ], [ %3677, %3676 ]
  %3208 = add nuw nsw i32 %3191, 1
  %3209 = icmp eq i32 %3208, 127
  br i1 %3209, label %3196, label %3190, !llvm.loop !92

3210:                                             ; preds = %3194, %3676
  %3211 = phi i32 [ 32, %3194 ], [ %3678, %3676 ]
  %3212 = phi i32 [ %3192, %3194 ], [ %3677, %3676 ]
  br i1 %3172, label %3660, label %3213

3213:                                             ; preds = %3210
  %3214 = call fastcc i32 @stbtt_FindGlyphIndex(ptr noundef nonnull readonly %20, i32 noundef range(i32 -2147483648, 127) %3191) #17
  %3215 = call fastcc i32 @stbtt_FindGlyphIndex(ptr noundef nonnull readonly %20, i32 noundef range(i32 -2147483648, 127) %3211) #17
  br i1 %3171, label %3588, label %3216

3216:                                             ; preds = %3213
  %3217 = load i8, ptr %3174, align 1, !tbaa !8
  %3218 = zext i8 %3217 to i16
  %3219 = shl nuw i16 %3218, 8
  %3220 = load i8, ptr %3175, align 1, !tbaa !8
  %3221 = zext i8 %3220 to i16
  %3222 = or disjoint i16 %3219, %3221
  %3223 = icmp eq i16 %3222, 1
  br i1 %3223, label %3224, label %3660

3224:                                             ; preds = %3216
  %3225 = load i8, ptr %3176, align 1, !tbaa !8
  %3226 = load i8, ptr %3177, align 1, !tbaa !8
  %3227 = or i8 %3226, %3225
  %3228 = icmp eq i8 %3227, 0
  br i1 %3228, label %3229, label %3660

3229:                                             ; preds = %3224
  %3230 = load i8, ptr %3178, align 1, !tbaa !8
  %3231 = zext i8 %3230 to i64
  %3232 = shl nuw nsw i64 %3231, 8
  %3233 = load i8, ptr %3179, align 1, !tbaa !8
  %3234 = zext i8 %3233 to i64
  %3235 = getelementptr inbounds nuw i8, ptr %3174, i64 %3232
  %3236 = getelementptr inbounds nuw i8, ptr %3235, i64 %3234
  %3237 = load i8, ptr %3236, align 1, !tbaa !8
  %3238 = zext i8 %3237 to i32
  %3239 = shl nuw nsw i32 %3238, 8
  %3240 = getelementptr inbounds nuw i8, ptr %3236, i64 1
  %3241 = load i8, ptr %3240, align 1, !tbaa !8
  %3242 = zext i8 %3241 to i32
  %3243 = or disjoint i32 %3239, %3242
  %3244 = icmp eq i32 %3243, 0
  br i1 %3244, label %3660, label %3245

3245:                                             ; preds = %3229
  %3246 = getelementptr inbounds nuw i8, ptr %3236, i64 2
  %3247 = zext nneg i32 %3243 to i64
  br label %3248

3248:                                             ; preds = %3585, %3245
  %3249 = phi i64 [ 0, %3245 ], [ %3586, %3585 ]
  %3250 = shl nuw nsw i64 %3249, 1
  %3251 = getelementptr inbounds nuw i8, ptr %3246, i64 %3250
  %3252 = load i8, ptr %3251, align 1, !tbaa !8
  %3253 = zext i8 %3252 to i64
  %3254 = shl nuw nsw i64 %3253, 8
  %3255 = getelementptr inbounds nuw i8, ptr %3251, i64 1
  %3256 = load i8, ptr %3255, align 1, !tbaa !8
  %3257 = zext i8 %3256 to i64
  %3258 = getelementptr inbounds nuw i8, ptr %3236, i64 %3254
  %3259 = getelementptr inbounds nuw i8, ptr %3258, i64 %3257
  %3260 = load i8, ptr %3259, align 1, !tbaa !8
  %3261 = zext i8 %3260 to i16
  %3262 = shl nuw i16 %3261, 8
  %3263 = getelementptr inbounds nuw i8, ptr %3259, i64 1
  %3264 = load i8, ptr %3263, align 1, !tbaa !8
  %3265 = zext i8 %3264 to i16
  %3266 = or disjoint i16 %3262, %3265
  %3267 = getelementptr inbounds nuw i8, ptr %3259, i64 4
  %3268 = load i8, ptr %3267, align 1, !tbaa !8
  %3269 = zext i8 %3268 to i32
  %3270 = shl nuw nsw i32 %3269, 8
  %3271 = getelementptr inbounds nuw i8, ptr %3259, i64 5
  %3272 = load i8, ptr %3271, align 1, !tbaa !8
  %3273 = zext i8 %3272 to i32
  %3274 = or disjoint i32 %3270, %3273
  %3275 = getelementptr inbounds nuw i8, ptr %3259, i64 6
  %3276 = icmp eq i16 %3266, 2
  %3277 = icmp ne i32 %3274, 0
  %3278 = select i1 %3276, i1 %3277, i1 false
  br i1 %3278, label %3279, label %3585

3279:                                             ; preds = %3248
  %3280 = zext nneg i32 %3274 to i64
  br label %3281

3281:                                             ; preds = %3582, %3279
  %3282 = phi i64 [ 0, %3279 ], [ %3583, %3582 ]
  %3283 = shl nuw nsw i64 %3282, 1
  %3284 = getelementptr inbounds nuw i8, ptr %3275, i64 %3283
  %3285 = load i8, ptr %3284, align 1, !tbaa !8
  %3286 = zext i8 %3285 to i64
  %3287 = shl nuw nsw i64 %3286, 8
  %3288 = getelementptr inbounds nuw i8, ptr %3284, i64 1
  %3289 = load i8, ptr %3288, align 1, !tbaa !8
  %3290 = zext i8 %3289 to i64
  %3291 = getelementptr inbounds nuw i8, ptr %3259, i64 %3287
  %3292 = getelementptr inbounds nuw i8, ptr %3291, i64 %3290
  %3293 = load i8, ptr %3292, align 1, !tbaa !8
  %3294 = zext i8 %3293 to i16
  %3295 = shl nuw i16 %3294, 8
  %3296 = getelementptr inbounds nuw i8, ptr %3292, i64 1
  %3297 = load i8, ptr %3296, align 1, !tbaa !8
  %3298 = zext i8 %3297 to i16
  %3299 = or disjoint i16 %3295, %3298
  %3300 = getelementptr inbounds nuw i8, ptr %3292, i64 2
  %3301 = load i8, ptr %3300, align 1, !tbaa !8
  %3302 = zext i8 %3301 to i64
  %3303 = shl nuw nsw i64 %3302, 8
  %3304 = getelementptr inbounds nuw i8, ptr %3292, i64 3
  %3305 = load i8, ptr %3304, align 1, !tbaa !8
  %3306 = zext i8 %3305 to i64
  %3307 = getelementptr inbounds nuw i8, ptr %3292, i64 %3303
  %3308 = getelementptr inbounds nuw i8, ptr %3307, i64 %3306
  %3309 = load i8, ptr %3308, align 1, !tbaa !8
  %3310 = zext i8 %3309 to i16
  %3311 = shl nuw i16 %3310, 8
  %3312 = getelementptr inbounds nuw i8, ptr %3308, i64 1
  %3313 = load i8, ptr %3312, align 1, !tbaa !8
  %3314 = zext i8 %3313 to i16
  %3315 = or disjoint i16 %3311, %3314
  switch i16 %3315, label %3582 [
    i16 1, label %3316
    i16 2, label %3355
  ]

3316:                                             ; preds = %3281
  %3317 = getelementptr inbounds nuw i8, ptr %3308, i64 2
  %3318 = load i8, ptr %3317, align 1, !tbaa !8
  %3319 = zext i8 %3318 to i32
  %3320 = shl nuw nsw i32 %3319, 8
  %3321 = getelementptr inbounds nuw i8, ptr %3308, i64 3
  %3322 = load i8, ptr %3321, align 1, !tbaa !8
  %3323 = zext i8 %3322 to i32
  %3324 = or disjoint i32 %3320, %3323
  %3325 = icmp eq i32 %3324, 0
  br i1 %3325, label %3582, label %3326

3326:                                             ; preds = %3316
  %3327 = add nsw i32 %3324, -1
  %3328 = getelementptr inbounds nuw i8, ptr %3308, i64 4
  br label %3329

3329:                                             ; preds = %3351, %3326
  %3330 = phi i32 [ 0, %3326 ], [ %3353, %3351 ]
  %3331 = phi i32 [ %3327, %3326 ], [ %3352, %3351 ]
  %3332 = add nsw i32 %3331, %3330
  %3333 = ashr i32 %3332, 1
  %3334 = and i32 %3332, -2
  %3335 = sext i32 %3334 to i64
  %3336 = getelementptr inbounds i8, ptr %3328, i64 %3335
  %3337 = load i8, ptr %3336, align 1, !tbaa !8
  %3338 = zext i8 %3337 to i32
  %3339 = shl nuw nsw i32 %3338, 8
  %3340 = getelementptr inbounds nuw i8, ptr %3336, i64 1
  %3341 = load i8, ptr %3340, align 1, !tbaa !8
  %3342 = zext i8 %3341 to i32
  %3343 = or disjoint i32 %3339, %3342
  %3344 = icmp slt i32 %3214, %3343
  br i1 %3344, label %3345, label %3347

3345:                                             ; preds = %3329
  %3346 = add nsw i32 %3333, -1
  br label %3351

3347:                                             ; preds = %3329
  %3348 = icmp samesign ugt i32 %3214, %3343
  br i1 %3348, label %3349, label %3413

3349:                                             ; preds = %3347
  %3350 = add nsw i32 %3333, 1
  br label %3351

3351:                                             ; preds = %3349, %3345
  %3352 = phi i32 [ %3331, %3349 ], [ %3346, %3345 ]
  %3353 = phi i32 [ %3350, %3349 ], [ %3330, %3345 ]
  %3354 = icmp sgt i32 %3353, %3352
  br i1 %3354, label %3582, label %3329, !llvm.loop !93

3355:                                             ; preds = %3281
  %3356 = getelementptr inbounds nuw i8, ptr %3308, i64 2
  %3357 = load i8, ptr %3356, align 1, !tbaa !8
  %3358 = zext i8 %3357 to i32
  %3359 = shl nuw nsw i32 %3358, 8
  %3360 = getelementptr inbounds nuw i8, ptr %3308, i64 3
  %3361 = load i8, ptr %3360, align 1, !tbaa !8
  %3362 = zext i8 %3361 to i32
  %3363 = or disjoint i32 %3359, %3362
  %3364 = getelementptr inbounds nuw i8, ptr %3308, i64 4
  %3365 = icmp eq i32 %3363, 0
  br i1 %3365, label %3582, label %3366

3366:                                             ; preds = %3355
  %3367 = add nsw i32 %3363, -1
  br label %3368

3368:                                             ; preds = %3398, %3366
  %3369 = phi i32 [ %3400, %3398 ], [ 0, %3366 ]
  %3370 = phi i32 [ %3399, %3398 ], [ %3367, %3366 ]
  %3371 = add nsw i32 %3370, %3369
  %3372 = ashr i32 %3371, 1
  %3373 = mul nsw i32 %3372, 6
  %3374 = sext i32 %3373 to i64
  %3375 = getelementptr inbounds i8, ptr %3364, i64 %3374
  %3376 = load i8, ptr %3375, align 1, !tbaa !8
  %3377 = zext i8 %3376 to i32
  %3378 = shl nuw nsw i32 %3377, 8
  %3379 = getelementptr inbounds nuw i8, ptr %3375, i64 1
  %3380 = load i8, ptr %3379, align 1, !tbaa !8
  %3381 = zext i8 %3380 to i32
  %3382 = or disjoint i32 %3378, %3381
  %3383 = icmp slt i32 %3214, %3382
  br i1 %3383, label %3384, label %3386

3384:                                             ; preds = %3368
  %3385 = add nsw i32 %3372, -1
  br label %3398

3386:                                             ; preds = %3368
  %3387 = getelementptr inbounds nuw i8, ptr %3375, i64 2
  %3388 = load i8, ptr %3387, align 1, !tbaa !8
  %3389 = zext i8 %3388 to i32
  %3390 = shl nuw nsw i32 %3389, 8
  %3391 = getelementptr inbounds nuw i8, ptr %3375, i64 3
  %3392 = load i8, ptr %3391, align 1, !tbaa !8
  %3393 = zext i8 %3392 to i32
  %3394 = or disjoint i32 %3390, %3393
  %3395 = icmp samesign ugt i32 %3214, %3394
  br i1 %3395, label %3396, label %3402

3396:                                             ; preds = %3386
  %3397 = add nsw i32 %3372, 1
  br label %3398

3398:                                             ; preds = %3396, %3384
  %3399 = phi i32 [ %3370, %3396 ], [ %3385, %3384 ]
  %3400 = phi i32 [ %3397, %3396 ], [ %3369, %3384 ]
  %3401 = icmp sgt i32 %3400, %3399
  br i1 %3401, label %3582, label %3368, !llvm.loop !94

3402:                                             ; preds = %3386
  %3403 = getelementptr inbounds nuw i8, ptr %3375, i64 4
  %3404 = load i8, ptr %3403, align 1, !tbaa !8
  %3405 = zext i8 %3404 to i32
  %3406 = shl nuw nsw i32 %3405, 8
  %3407 = getelementptr inbounds nuw i8, ptr %3375, i64 5
  %3408 = load i8, ptr %3407, align 1, !tbaa !8
  %3409 = zext i8 %3408 to i32
  %3410 = or disjoint i32 %3406, %3409
  %3411 = sub nsw i32 %3214, %3382
  %3412 = add nsw i32 %3411, %3410
  br label %3413

3413:                                             ; preds = %3347, %3402
  %3414 = phi i32 [ %3412, %3402 ], [ %3333, %3347 ]
  %3415 = icmp eq i32 %3414, -1
  br i1 %3415, label %3582, label %3416

3416:                                             ; preds = %3413
  switch i16 %3299, label %3660 [
    i16 1, label %3417
    i16 2, label %3504
  ]

3417:                                             ; preds = %3416
  %3418 = getelementptr inbounds nuw i8, ptr %3292, i64 4
  %3419 = load i8, ptr %3418, align 1, !tbaa !8
  %3420 = zext i8 %3419 to i16
  %3421 = shl nuw i16 %3420, 8
  %3422 = getelementptr inbounds nuw i8, ptr %3292, i64 5
  %3423 = load i8, ptr %3422, align 1, !tbaa !8
  %3424 = zext i8 %3423 to i16
  %3425 = or disjoint i16 %3421, %3424
  %3426 = getelementptr inbounds nuw i8, ptr %3292, i64 6
  %3427 = load i8, ptr %3426, align 1, !tbaa !8
  %3428 = getelementptr inbounds nuw i8, ptr %3292, i64 7
  %3429 = load i8, ptr %3428, align 1, !tbaa !8
  %3430 = icmp eq i16 %3425, 4
  %3431 = or i8 %3429, %3427
  %3432 = icmp eq i8 %3431, 0
  %3433 = select i1 %3430, i1 %3432, i1 false
  br i1 %3433, label %3434, label %3660

3434:                                             ; preds = %3417
  %3435 = getelementptr inbounds nuw i8, ptr %3292, i64 8
  %3436 = load i8, ptr %3435, align 1, !tbaa !8
  %3437 = zext i8 %3436 to i32
  %3438 = shl nuw nsw i32 %3437, 8
  %3439 = getelementptr inbounds nuw i8, ptr %3292, i64 9
  %3440 = load i8, ptr %3439, align 1, !tbaa !8
  %3441 = zext i8 %3440 to i32
  %3442 = or disjoint i32 %3438, %3441
  %3443 = getelementptr inbounds nuw i8, ptr %3292, i64 10
  %3444 = shl nsw i32 %3414, 1
  %3445 = sext i32 %3444 to i64
  %3446 = getelementptr inbounds i8, ptr %3443, i64 %3445
  %3447 = load i8, ptr %3446, align 1, !tbaa !8
  %3448 = zext i8 %3447 to i64
  %3449 = shl nuw nsw i64 %3448, 8
  %3450 = getelementptr inbounds nuw i8, ptr %3446, i64 1
  %3451 = load i8, ptr %3450, align 1, !tbaa !8
  %3452 = zext i8 %3451 to i64
  %3453 = getelementptr inbounds nuw i8, ptr %3292, i64 %3449
  %3454 = getelementptr inbounds nuw i8, ptr %3453, i64 %3452
  %3455 = getelementptr inbounds nuw i8, ptr %3454, i64 2
  %3456 = icmp slt i32 %3414, %3442
  br i1 %3456, label %3457, label %3660

3457:                                             ; preds = %3434
  %3458 = load i8, ptr %3454, align 1, !tbaa !8
  %3459 = zext i8 %3458 to i32
  %3460 = shl nuw nsw i32 %3459, 8
  %3461 = getelementptr inbounds nuw i8, ptr %3454, i64 1
  %3462 = load i8, ptr %3461, align 1, !tbaa !8
  %3463 = zext i8 %3462 to i32
  %3464 = or disjoint i32 %3460, %3463
  %3465 = icmp eq i32 %3464, 0
  br i1 %3465, label %3582, label %3466

3466:                                             ; preds = %3457
  %3467 = add nsw i32 %3464, -1
  br label %3468

3468:                                             ; preds = %3500, %3466
  %3469 = phi i32 [ %3502, %3500 ], [ 0, %3466 ]
  %3470 = phi i32 [ %3501, %3500 ], [ %3467, %3466 ]
  %3471 = add nsw i32 %3470, %3469
  %3472 = ashr i32 %3471, 1
  %3473 = shl nsw i32 %3472, 2
  %3474 = sext i32 %3473 to i64
  %3475 = getelementptr inbounds i8, ptr %3455, i64 %3474
  %3476 = load i8, ptr %3475, align 1, !tbaa !8
  %3477 = zext i8 %3476 to i32
  %3478 = shl nuw nsw i32 %3477, 8
  %3479 = getelementptr inbounds nuw i8, ptr %3475, i64 1
  %3480 = load i8, ptr %3479, align 1, !tbaa !8
  %3481 = zext i8 %3480 to i32
  %3482 = or disjoint i32 %3478, %3481
  %3483 = icmp slt i32 %3215, %3482
  br i1 %3483, label %3484, label %3486

3484:                                             ; preds = %3468
  %3485 = add nsw i32 %3472, -1
  br label %3500

3486:                                             ; preds = %3468
  %3487 = icmp samesign ugt i32 %3215, %3482
  br i1 %3487, label %3488, label %3490

3488:                                             ; preds = %3486
  %3489 = add nsw i32 %3472, 1
  br label %3500

3490:                                             ; preds = %3486
  %3491 = getelementptr inbounds nuw i8, ptr %3475, i64 2
  %3492 = load i8, ptr %3491, align 1, !tbaa !8
  %3493 = zext i8 %3492 to i16
  %3494 = shl nuw i16 %3493, 8
  %3495 = getelementptr inbounds nuw i8, ptr %3475, i64 3
  %3496 = load i8, ptr %3495, align 1, !tbaa !8
  %3497 = zext i8 %3496 to i16
  %3498 = or disjoint i16 %3494, %3497
  %3499 = sext i16 %3498 to i32
  br label %3660

3500:                                             ; preds = %3488, %3484
  %3501 = phi i32 [ %3470, %3488 ], [ %3485, %3484 ]
  %3502 = phi i32 [ %3489, %3488 ], [ %3469, %3484 ]
  %3503 = icmp sgt i32 %3502, %3501
  br i1 %3503, label %3582, label %3468, !llvm.loop !95

3504:                                             ; preds = %3416
  %3505 = getelementptr inbounds nuw i8, ptr %3292, i64 4
  %3506 = load i8, ptr %3505, align 1, !tbaa !8
  %3507 = zext i8 %3506 to i16
  %3508 = shl nuw i16 %3507, 8
  %3509 = getelementptr inbounds nuw i8, ptr %3292, i64 5
  %3510 = load i8, ptr %3509, align 1, !tbaa !8
  %3511 = zext i8 %3510 to i16
  %3512 = or disjoint i16 %3508, %3511
  %3513 = getelementptr inbounds nuw i8, ptr %3292, i64 6
  %3514 = load i8, ptr %3513, align 1, !tbaa !8
  %3515 = getelementptr inbounds nuw i8, ptr %3292, i64 7
  %3516 = load i8, ptr %3515, align 1, !tbaa !8
  %3517 = icmp eq i16 %3512, 4
  %3518 = or i8 %3516, %3514
  %3519 = icmp eq i8 %3518, 0
  %3520 = select i1 %3517, i1 %3519, i1 false
  br i1 %3520, label %3521, label %3660

3521:                                             ; preds = %3504
  %3522 = getelementptr inbounds nuw i8, ptr %3292, i64 8
  %3523 = load i8, ptr %3522, align 1, !tbaa !8
  %3524 = zext i8 %3523 to i64
  %3525 = shl nuw nsw i64 %3524, 8
  %3526 = getelementptr inbounds nuw i8, ptr %3292, i64 9
  %3527 = load i8, ptr %3526, align 1, !tbaa !8
  %3528 = zext i8 %3527 to i64
  %3529 = getelementptr inbounds nuw i8, ptr %3292, i64 10
  %3530 = load i8, ptr %3529, align 1, !tbaa !8
  %3531 = zext i8 %3530 to i64
  %3532 = shl nuw nsw i64 %3531, 8
  %3533 = getelementptr inbounds nuw i8, ptr %3292, i64 11
  %3534 = load i8, ptr %3533, align 1, !tbaa !8
  %3535 = zext i8 %3534 to i64
  %3536 = getelementptr inbounds nuw i8, ptr %3292, i64 %3525
  %3537 = getelementptr inbounds nuw i8, ptr %3536, i64 %3528
  %3538 = call fastcc i32 @stbtt__GetGlyphClass(ptr noundef nonnull %3537, i32 noundef %3214) #17
  %3539 = getelementptr inbounds nuw i8, ptr %3292, i64 %3532
  %3540 = getelementptr inbounds nuw i8, ptr %3539, i64 %3535
  %3541 = call fastcc i32 @stbtt__GetGlyphClass(ptr noundef nonnull %3540, i32 noundef %3215) #17
  %3542 = getelementptr inbounds nuw i8, ptr %3292, i64 12
  %3543 = load i8, ptr %3542, align 1, !tbaa !8
  %3544 = zext i8 %3543 to i32
  %3545 = shl nuw nsw i32 %3544, 8
  %3546 = getelementptr inbounds nuw i8, ptr %3292, i64 13
  %3547 = load i8, ptr %3546, align 1, !tbaa !8
  %3548 = zext i8 %3547 to i32
  %3549 = or disjoint i32 %3545, %3548
  %3550 = icmp slt i32 %3538, 0
  %3551 = icmp sge i32 %3538, %3549
  %3552 = select i1 %3550, i1 true, i1 %3551
  %3553 = icmp slt i32 %3541, 0
  %3554 = select i1 %3552, i1 true, i1 %3553
  br i1 %3554, label %3660, label %3555

3555:                                             ; preds = %3521
  %3556 = getelementptr inbounds nuw i8, ptr %3292, i64 14
  %3557 = load i8, ptr %3556, align 1, !tbaa !8
  %3558 = zext i8 %3557 to i32
  %3559 = shl nuw nsw i32 %3558, 8
  %3560 = getelementptr inbounds nuw i8, ptr %3292, i64 15
  %3561 = load i8, ptr %3560, align 1, !tbaa !8
  %3562 = zext i8 %3561 to i32
  %3563 = or disjoint i32 %3559, %3562
  %3564 = icmp samesign ult i32 %3541, %3563
  br i1 %3564, label %3565, label %3660

3565:                                             ; preds = %3555
  %3566 = getelementptr inbounds nuw i8, ptr %3292, i64 16
  %3567 = shl nuw nsw i32 %3538, 1
  %3568 = mul i32 %3567, %3563
  %3569 = zext nneg i32 %3568 to i64
  %3570 = getelementptr inbounds nuw i8, ptr %3566, i64 %3569
  %3571 = shl nuw nsw i32 %3541, 1
  %3572 = zext nneg i32 %3571 to i64
  %3573 = getelementptr inbounds nuw i8, ptr %3570, i64 %3572
  %3574 = load i8, ptr %3573, align 1, !tbaa !8
  %3575 = zext i8 %3574 to i16
  %3576 = shl nuw i16 %3575, 8
  %3577 = getelementptr inbounds nuw i8, ptr %3573, i64 1
  %3578 = load i8, ptr %3577, align 1, !tbaa !8
  %3579 = zext i8 %3578 to i16
  %3580 = or disjoint i16 %3576, %3579
  %3581 = sext i16 %3580 to i32
  br label %3660

3582:                                             ; preds = %3398, %3351, %3500, %3457, %3413, %3355, %3316, %3281
  %3583 = add nuw nsw i64 %3282, 1
  %3584 = icmp eq i64 %3583, %3280
  br i1 %3584, label %3585, label %3281, !llvm.loop !96

3585:                                             ; preds = %3582, %3248
  %3586 = add nuw nsw i64 %3249, 1
  %3587 = icmp eq i64 %3586, %3247
  br i1 %3587, label %3660, label %3248, !llvm.loop !97

3588:                                             ; preds = %3213
  br i1 %3170, label %3660, label %3589

3589:                                             ; preds = %3588
  %3590 = load i8, ptr %3182, align 1, !tbaa !8
  %3591 = load i8, ptr %3183, align 1, !tbaa !8
  %3592 = or i8 %3591, %3590
  %3593 = icmp eq i8 %3592, 0
  br i1 %3593, label %3660, label %3594

3594:                                             ; preds = %3589
  %3595 = load i8, ptr %3184, align 1, !tbaa !8
  %3596 = zext i8 %3595 to i16
  %3597 = shl nuw i16 %3596, 8
  %3598 = load i8, ptr %3185, align 1, !tbaa !8
  %3599 = zext i8 %3598 to i16
  %3600 = or disjoint i16 %3597, %3599
  %3601 = icmp eq i16 %3600, 1
  br i1 %3601, label %3602, label %3660

3602:                                             ; preds = %3594
  %3603 = load i8, ptr %3186, align 1, !tbaa !8
  %3604 = zext i8 %3603 to i32
  %3605 = shl nuw nsw i32 %3604, 8
  %3606 = load i8, ptr %3187, align 1, !tbaa !8
  %3607 = zext i8 %3606 to i32
  %3608 = or disjoint i32 %3605, %3607
  %3609 = shl i32 %3214, 16
  %3610 = or i32 %3609, %3215
  %3611 = icmp eq i32 %3608, 0
  br i1 %3611, label %3660, label %3612

3612:                                             ; preds = %3602
  %3613 = add nsw i32 %3608, -1
  br label %3614

3614:                                             ; preds = %3656, %3612
  %3615 = phi i32 [ %3613, %3612 ], [ %3658, %3656 ]
  %3616 = phi i32 [ 0, %3612 ], [ %3657, %3656 ]
  %3617 = add nsw i32 %3616, %3615
  %3618 = ashr i32 %3617, 1
  %3619 = mul nsw i32 %3618, 6
  %3620 = sext i32 %3619 to i64
  %3621 = getelementptr inbounds i8, ptr %3188, i64 %3620
  %3622 = load i8, ptr %3621, align 1, !tbaa !8
  %3623 = zext i8 %3622 to i32
  %3624 = shl nuw i32 %3623, 24
  %3625 = getelementptr inbounds nuw i8, ptr %3621, i64 1
  %3626 = load i8, ptr %3625, align 1, !tbaa !8
  %3627 = zext i8 %3626 to i32
  %3628 = shl nuw nsw i32 %3627, 16
  %3629 = or disjoint i32 %3628, %3624
  %3630 = getelementptr inbounds nuw i8, ptr %3621, i64 2
  %3631 = load i8, ptr %3630, align 1, !tbaa !8
  %3632 = zext i8 %3631 to i32
  %3633 = shl nuw nsw i32 %3632, 8
  %3634 = or disjoint i32 %3629, %3633
  %3635 = getelementptr inbounds nuw i8, ptr %3621, i64 3
  %3636 = load i8, ptr %3635, align 1, !tbaa !8
  %3637 = zext i8 %3636 to i32
  %3638 = or disjoint i32 %3634, %3637
  %3639 = icmp ult i32 %3610, %3638
  br i1 %3639, label %3640, label %3642

3640:                                             ; preds = %3614
  %3641 = add nsw i32 %3618, -1
  br label %3656

3642:                                             ; preds = %3614
  %3643 = icmp ugt i32 %3610, %3638
  br i1 %3643, label %3644, label %3646

3644:                                             ; preds = %3642
  %3645 = add nsw i32 %3618, 1
  br label %3656

3646:                                             ; preds = %3642
  %3647 = getelementptr inbounds i8, ptr %3189, i64 %3620
  %3648 = load i8, ptr %3647, align 1, !tbaa !8
  %3649 = zext i8 %3648 to i16
  %3650 = shl nuw i16 %3649, 8
  %3651 = getelementptr inbounds nuw i8, ptr %3647, i64 1
  %3652 = load i8, ptr %3651, align 1, !tbaa !8
  %3653 = zext i8 %3652 to i16
  %3654 = or disjoint i16 %3650, %3653
  %3655 = sext i16 %3654 to i32
  br label %3660

3656:                                             ; preds = %3644, %3640
  %3657 = phi i32 [ %3616, %3640 ], [ %3645, %3644 ]
  %3658 = phi i32 [ %3641, %3640 ], [ %3615, %3644 ]
  %3659 = icmp sgt i32 %3657, %3658
  br i1 %3659, label %3660, label %3614, !llvm.loop !98

3660:                                             ; preds = %3585, %3656, %3416, %3417, %3434, %3210, %3216, %3224, %3229, %3490, %3504, %3521, %3555, %3565, %3588, %3589, %3594, %3602, %3646
  %3661 = phi i32 [ 0, %3210 ], [ 0, %3588 ], [ %3655, %3646 ], [ 0, %3656 ], [ 0, %3216 ], [ 0, %3229 ], [ 0, %3224 ], [ 0, %3504 ], [ 0, %3555 ], [ 0, %3521 ], [ %3581, %3565 ], [ %3499, %3490 ], [ 0, %3594 ], [ 0, %3416 ], [ 0, %3602 ], [ 0, %3589 ], [ 0, %3434 ], [ 0, %3417 ], [ 0, %3585 ]
  %3662 = sitofp i32 %3661 to float
  %3663 = fmul float %1310, %3662
  %3664 = fptosi float %3663 to i32
  %3665 = icmp eq i32 %3664, 0
  br i1 %3665, label %3676, label %3666

3666:                                             ; preds = %3660
  %3667 = sext i32 %3212 to i64
  %3668 = shl nsw i64 %3667, 2
  %3669 = getelementptr i8, ptr %4, i64 %3668
  %3670 = getelementptr i8, ptr %3669, i64 2692
  store i8 %3195, ptr %3670, align 1, !tbaa !8
  %3671 = trunc nuw i32 %3211 to i8
  %3672 = getelementptr i8, ptr %3669, i64 2693
  store i8 %3671, ptr %3672, align 1, !tbaa !8
  %3673 = getelementptr i8, ptr %3669, i64 2694
  %3674 = trunc i32 %3664 to i16
  store i16 %3674, ptr %3673, align 1
  %3675 = add nsw i32 %3212, 1
  br label %3676

3676:                                             ; preds = %3660, %3666
  %3677 = phi i32 [ %3675, %3666 ], [ %3212, %3660 ]
  %3678 = add nuw nsw i32 %3211, 1
  %3679 = icmp samesign ult i32 %3211, 126
  %3680 = icmp slt i32 %3677, 1024
  %3681 = select i1 %3679, i1 %3680, i1 false
  br i1 %3681, label %3210, label %3206, !llvm.loop !99

3682:                                             ; preds = %3196, %3167, %1273
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #16
  br label %3683

3683:                                             ; preds = %6, %3682, %29, %35
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem0: none, target_mem1: none)
define internal fastcc { ptr, i64 } @stbtt__cff_get_index(ptr noundef nonnull captures(none) %0) unnamed_addr #3 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %3 = load i32, ptr %2, align 8, !tbaa !26
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %5 = load i32, ptr %4, align 4, !tbaa !27
  %6 = icmp slt i32 %3, %5
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8, !tbaa !28
  %9 = add nsw i32 %3, 1
  store i32 %9, ptr %2, align 8, !tbaa !26
  %10 = sext i32 %3 to i64
  %11 = getelementptr inbounds i8, ptr %8, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !8
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 8
  br label %15

15:                                               ; preds = %7, %1
  %16 = phi i32 [ %9, %7 ], [ %3, %1 ]
  %17 = phi i32 [ %14, %7 ], [ 0, %1 ]
  %18 = icmp slt i32 %16, %5
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = load ptr, ptr %0, align 8, !tbaa !28
  %21 = add nsw i32 %16, 1
  store i32 %21, ptr %2, align 8, !tbaa !26
  %22 = sext i32 %16 to i64
  %23 = getelementptr inbounds i8, ptr %20, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !8
  %25 = zext i8 %24 to i32
  %26 = or disjoint i32 %17, %25
  br label %27

27:                                               ; preds = %19, %15
  %28 = phi i32 [ %21, %19 ], [ %16, %15 ]
  %29 = phi i32 [ %26, %19 ], [ %17, %15 ]
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %113, label %31

31:                                               ; preds = %27
  %32 = icmp slt i32 %28, %5
  br i1 %32, label %33, label %40

33:                                               ; preds = %31
  %34 = load ptr, ptr %0, align 8, !tbaa !28
  %35 = add nsw i32 %28, 1
  store i32 %35, ptr %2, align 8, !tbaa !26
  %36 = sext i32 %28 to i64
  %37 = getelementptr inbounds i8, ptr %34, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !8
  %39 = zext i8 %38 to i32
  br label %40

40:                                               ; preds = %31, %33
  %41 = phi i32 [ %35, %33 ], [ %28, %31 ]
  %42 = phi i32 [ %39, %33 ], [ 0, %31 ]
  %43 = mul nuw nsw i32 %42, %29
  %44 = add nsw i32 %41, %43
  %45 = icmp slt i32 %44, 0
  %46 = tail call i32 @llvm.smin.i32(i32 %44, i32 %5)
  %47 = select i1 %45, i32 %5, i32 %46
  %48 = icmp eq i32 %42, 0
  br i1 %48, label %106, label %49

49:                                               ; preds = %40
  %50 = and i32 %42, 1
  %51 = icmp eq i32 %42, 1
  br i1 %51, label %88, label %52

52:                                               ; preds = %49
  %53 = and i32 %42, 254
  br label %54

54:                                               ; preds = %81, %52
  %55 = phi i32 [ %47, %52 ], [ %82, %81 ]
  %56 = phi i32 [ 0, %52 ], [ %83, %81 ]
  %57 = phi i32 [ 0, %52 ], [ %84, %81 ]
  %58 = shl i32 %56, 8
  %59 = icmp slt i32 %55, %5
  br i1 %59, label %60, label %68

60:                                               ; preds = %54
  %61 = load ptr, ptr %0, align 8, !tbaa !28
  %62 = add nsw i32 %55, 1
  store i32 %62, ptr %2, align 8, !tbaa !26
  %63 = sext i32 %55 to i64
  %64 = getelementptr inbounds i8, ptr %61, i64 %63
  %65 = load i8, ptr %64, align 1, !tbaa !8
  %66 = zext i8 %65 to i32
  %67 = or disjoint i32 %58, %66
  br label %68

68:                                               ; preds = %60, %54
  %69 = phi i32 [ %62, %60 ], [ %55, %54 ]
  %70 = phi i32 [ %67, %60 ], [ %58, %54 ]
  %71 = shl i32 %70, 8
  %72 = icmp slt i32 %69, %5
  br i1 %72, label %73, label %81

73:                                               ; preds = %68
  %74 = load ptr, ptr %0, align 8, !tbaa !28
  %75 = add nsw i32 %69, 1
  store i32 %75, ptr %2, align 8, !tbaa !26
  %76 = sext i32 %69 to i64
  %77 = getelementptr inbounds i8, ptr %74, i64 %76
  %78 = load i8, ptr %77, align 1, !tbaa !8
  %79 = zext i8 %78 to i32
  %80 = or disjoint i32 %71, %79
  br label %81

81:                                               ; preds = %73, %68
  %82 = phi i32 [ %75, %73 ], [ %69, %68 ]
  %83 = phi i32 [ %80, %73 ], [ %71, %68 ]
  %84 = add i32 %57, 2
  %85 = icmp eq i32 %84, %53
  br i1 %85, label %86, label %54, !llvm.loop !29

86:                                               ; preds = %81
  %87 = icmp eq i32 %50, 0
  br i1 %87, label %102, label %88

88:                                               ; preds = %86, %49
  %89 = phi i32 [ %47, %49 ], [ %82, %86 ]
  %90 = phi i32 [ 0, %49 ], [ %83, %86 ]
  %91 = icmp ne i32 %50, 0
  tail call void @llvm.assume(i1 %91)
  %92 = shl i32 %90, 8
  %93 = icmp slt i32 %89, %5
  br i1 %93, label %94, label %102

94:                                               ; preds = %88
  %95 = load ptr, ptr %0, align 8, !tbaa !28
  %96 = add nsw i32 %89, 1
  store i32 %96, ptr %2, align 8, !tbaa !26
  %97 = sext i32 %89 to i64
  %98 = getelementptr inbounds i8, ptr %95, i64 %97
  %99 = load i8, ptr %98, align 1, !tbaa !8
  %100 = zext i8 %99 to i32
  %101 = or disjoint i32 %92, %100
  br label %102

102:                                              ; preds = %88, %94, %86
  %103 = phi i32 [ %82, %86 ], [ %96, %94 ], [ %89, %88 ]
  %104 = phi i32 [ %83, %86 ], [ %101, %94 ], [ %92, %88 ]
  %105 = add i32 %104, -1
  br label %106

106:                                              ; preds = %102, %40
  %107 = phi i32 [ %47, %40 ], [ %103, %102 ]
  %108 = phi i32 [ -1, %40 ], [ %105, %102 ]
  %109 = add nsw i32 %108, %107
  %110 = icmp slt i32 %109, 0
  %111 = tail call i32 @llvm.smin.i32(i32 %109, i32 %5)
  %112 = select i1 %110, i32 %5, i32 %111
  store i32 %112, ptr %2, align 8, !tbaa !26
  br label %113

113:                                              ; preds = %106, %27
  %114 = phi i32 [ %112, %106 ], [ %28, %27 ]
  %115 = sub nsw i32 %114, %3
  %116 = or i32 %115, %3
  %117 = icmp sgt i32 %116, -1
  br i1 %117, label %118, label %128

118:                                              ; preds = %113
  %119 = icmp sgt i32 %3, %5
  %120 = icmp sgt i32 %114, %5
  %121 = or i1 %119, %120
  br i1 %121, label %128, label %122

122:                                              ; preds = %118
  %123 = load ptr, ptr %0, align 8, !tbaa !28
  %124 = zext nneg i32 %3 to i64
  %125 = getelementptr inbounds nuw i8, ptr %123, i64 %124
  %126 = zext nneg i32 %115 to i64
  %127 = shl nuw nsw i64 %126, 32
  br label %128

128:                                              ; preds = %113, %118, %122
  %129 = phi ptr [ null, %113 ], [ null, %118 ], [ %125, %122 ]
  %130 = phi i64 [ 0, %113 ], [ 0, %118 ], [ %127, %122 ]
  %131 = insertvalue { ptr, i64 } poison, ptr %129, 0
  %132 = insertvalue { ptr, i64 } %131, i64 %130, 1
  ret { ptr, i64 } %132
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read)
define internal fastcc { ptr, i64 } @stbtt__cff_index_get(ptr %0, i64 %1, i32 noundef %2) unnamed_addr #4 {
  %4 = lshr i64 %1, 32
  %5 = trunc nuw i64 %4 to i32
  %6 = tail call i32 @llvm.smin.i32(i32 %5, i32 0)
  %7 = icmp sgt i32 %5, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %3
  %9 = zext nneg i32 %6 to i64
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !8
  %12 = zext i8 %11 to i32
  %13 = shl nuw nsw i32 %12, 8
  br label %14

14:                                               ; preds = %8, %3
  %15 = phi i32 [ 1, %8 ], [ %6, %3 ]
  %16 = phi i32 [ %13, %8 ], [ 0, %3 ]
  %17 = icmp slt i32 %15, %5
  br i1 %17, label %18, label %25

18:                                               ; preds = %14
  %19 = add nsw i32 %15, 1
  %20 = sext i32 %15 to i64
  %21 = getelementptr inbounds i8, ptr %0, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !8
  %23 = zext i8 %22 to i32
  %24 = or disjoint i32 %16, %23
  br label %25

25:                                               ; preds = %18, %14
  %26 = phi i32 [ %19, %18 ], [ %15, %14 ]
  %27 = phi i32 [ %24, %18 ], [ %16, %14 ]
  %28 = icmp slt i32 %26, %5
  br i1 %28, label %29, label %147

29:                                               ; preds = %25
  %30 = sext i32 %26 to i64
  %31 = getelementptr inbounds i8, ptr %0, i64 %30
  %32 = load i8, ptr %31, align 1, !tbaa !8
  %33 = zext i8 %32 to i32
  %34 = icmp eq i8 %32, 0
  br i1 %34, label %147, label %35

35:                                               ; preds = %29
  %36 = add nsw i32 %26, 1
  %37 = mul nsw i32 %2, %33
  %38 = add nsw i32 %37, %36
  %39 = icmp slt i32 %38, 0
  %40 = tail call i32 @llvm.smin.i32(i32 %38, i32 %5)
  %41 = select i1 %39, i32 %5, i32 %40
  %42 = add nsw i32 %33, -1
  %43 = and i32 %33, 1
  %44 = icmp eq i32 %42, 0
  br i1 %44, label %82, label %45

45:                                               ; preds = %35
  %46 = and i32 %33, 254
  br label %47

47:                                               ; preds = %74, %45
  %48 = phi i32 [ %41, %45 ], [ %75, %74 ]
  %49 = phi i32 [ %41, %45 ], [ %76, %74 ]
  %50 = phi i32 [ 0, %45 ], [ %77, %74 ]
  %51 = phi i32 [ 0, %45 ], [ %78, %74 ]
  %52 = shl i32 %50, 8
  %53 = icmp slt i32 %49, %5
  br i1 %53, label %54, label %61

54:                                               ; preds = %47
  %55 = add nsw i32 %49, 1
  %56 = sext i32 %49 to i64
  %57 = getelementptr inbounds i8, ptr %0, i64 %56
  %58 = load i8, ptr %57, align 1, !tbaa !8
  %59 = zext i8 %58 to i32
  %60 = or disjoint i32 %52, %59
  br label %61

61:                                               ; preds = %54, %47
  %62 = phi i32 [ %55, %54 ], [ %48, %47 ]
  %63 = phi i32 [ %55, %54 ], [ %49, %47 ]
  %64 = phi i32 [ %60, %54 ], [ %52, %47 ]
  %65 = shl i32 %64, 8
  %66 = icmp slt i32 %63, %5
  br i1 %66, label %67, label %74

67:                                               ; preds = %61
  %68 = add nsw i32 %63, 1
  %69 = sext i32 %63 to i64
  %70 = getelementptr inbounds i8, ptr %0, i64 %69
  %71 = load i8, ptr %70, align 1, !tbaa !8
  %72 = zext i8 %71 to i32
  %73 = or disjoint i32 %65, %72
  br label %74

74:                                               ; preds = %67, %61
  %75 = phi i32 [ %68, %67 ], [ %62, %61 ]
  %76 = phi i32 [ %68, %67 ], [ %63, %61 ]
  %77 = phi i32 [ %73, %67 ], [ %65, %61 ]
  %78 = add i32 %51, 2
  %79 = icmp eq i32 %78, %46
  br i1 %79, label %80, label %47, !llvm.loop !29

80:                                               ; preds = %74
  %81 = icmp eq i32 %43, 0
  br i1 %81, label %96, label %82

82:                                               ; preds = %80, %35
  %83 = phi i32 [ %41, %35 ], [ %75, %80 ]
  %84 = phi i32 [ %41, %35 ], [ %76, %80 ]
  %85 = phi i32 [ 0, %35 ], [ %77, %80 ]
  %86 = icmp ne i32 %43, 0
  tail call void @llvm.assume(i1 %86)
  %87 = shl i32 %85, 8
  %88 = icmp slt i32 %84, %5
  br i1 %88, label %89, label %96

89:                                               ; preds = %82
  %90 = add nsw i32 %84, 1
  %91 = sext i32 %84 to i64
  %92 = getelementptr inbounds i8, ptr %0, i64 %91
  %93 = load i8, ptr %92, align 1, !tbaa !8
  %94 = zext i8 %93 to i32
  %95 = or disjoint i32 %87, %94
  br label %96

96:                                               ; preds = %82, %89, %80
  %97 = phi i32 [ %75, %80 ], [ %90, %89 ], [ %83, %82 ]
  %98 = phi i32 [ %77, %80 ], [ %95, %89 ], [ %87, %82 ]
  %99 = and i32 %33, 1
  %100 = icmp eq i32 %42, 0
  br i1 %100, label %135, label %101

101:                                              ; preds = %96
  %102 = and i32 %33, 254
  br label %103

103:                                              ; preds = %128, %101
  %104 = phi i32 [ %97, %101 ], [ %129, %128 ]
  %105 = phi i32 [ 0, %101 ], [ %130, %128 ]
  %106 = phi i32 [ 0, %101 ], [ %131, %128 ]
  %107 = shl i32 %105, 8
  %108 = icmp slt i32 %104, %5
  br i1 %108, label %109, label %116

109:                                              ; preds = %103
  %110 = add nsw i32 %104, 1
  %111 = sext i32 %104 to i64
  %112 = getelementptr inbounds i8, ptr %0, i64 %111
  %113 = load i8, ptr %112, align 1, !tbaa !8
  %114 = zext i8 %113 to i32
  %115 = or disjoint i32 %107, %114
  br label %116

116:                                              ; preds = %109, %103
  %117 = phi i32 [ %110, %109 ], [ %104, %103 ]
  %118 = phi i32 [ %115, %109 ], [ %107, %103 ]
  %119 = shl i32 %118, 8
  %120 = icmp slt i32 %117, %5
  br i1 %120, label %121, label %128

121:                                              ; preds = %116
  %122 = add nsw i32 %117, 1
  %123 = sext i32 %117 to i64
  %124 = getelementptr inbounds i8, ptr %0, i64 %123
  %125 = load i8, ptr %124, align 1, !tbaa !8
  %126 = zext i8 %125 to i32
  %127 = or disjoint i32 %119, %126
  br label %128

128:                                              ; preds = %121, %116
  %129 = phi i32 [ %122, %121 ], [ %117, %116 ]
  %130 = phi i32 [ %127, %121 ], [ %119, %116 ]
  %131 = add i32 %106, 2
  %132 = icmp eq i32 %131, %102
  br i1 %132, label %133, label %103, !llvm.loop !29

133:                                              ; preds = %128
  %134 = icmp eq i32 %99, 0
  br i1 %134, label %147, label %135

135:                                              ; preds = %133, %96
  %136 = phi i32 [ %97, %96 ], [ %129, %133 ]
  %137 = phi i32 [ 0, %96 ], [ %130, %133 ]
  %138 = icmp ne i32 %99, 0
  tail call void @llvm.assume(i1 %138)
  %139 = shl i32 %137, 8
  %140 = icmp slt i32 %136, %5
  br i1 %140, label %141, label %147

141:                                              ; preds = %135
  %142 = sext i32 %136 to i64
  %143 = getelementptr inbounds i8, ptr %0, i64 %142
  %144 = load i8, ptr %143, align 1, !tbaa !8
  %145 = zext i8 %144 to i32
  %146 = or disjoint i32 %139, %145
  br label %147

147:                                              ; preds = %133, %141, %135, %25, %29
  %148 = phi i32 [ 0, %29 ], [ 0, %25 ], [ %33, %135 ], [ %33, %141 ], [ %33, %133 ]
  %149 = phi i32 [ 0, %29 ], [ 0, %25 ], [ %98, %135 ], [ %98, %141 ], [ %98, %133 ]
  %150 = phi i32 [ 0, %29 ], [ 0, %25 ], [ %130, %133 ], [ %146, %141 ], [ %139, %135 ]
  %151 = add nuw nsw i32 %27, 1
  %152 = mul nuw nsw i32 %148, %151
  %153 = add nuw nsw i32 %152, 2
  %154 = add nsw i32 %153, %149
  %155 = sub nsw i32 %150, %149
  %156 = or i32 %155, %154
  %157 = icmp sgt i32 %156, -1
  br i1 %157, label %158, label %168

158:                                              ; preds = %147
  %159 = icmp sgt i32 %154, %5
  %160 = sub nsw i32 %5, %154
  %161 = icmp sgt i32 %155, %160
  %162 = select i1 %159, i1 true, i1 %161
  br i1 %162, label %168, label %163

163:                                              ; preds = %158
  %164 = zext nneg i32 %154 to i64
  %165 = getelementptr inbounds nuw i8, ptr %0, i64 %164
  %166 = zext nneg i32 %155 to i64
  %167 = shl nuw nsw i64 %166, 32
  br label %168

168:                                              ; preds = %147, %158, %163
  %169 = phi ptr [ null, %147 ], [ null, %158 ], [ %165, %163 ]
  %170 = phi i64 [ 0, %147 ], [ 0, %158 ], [ %167, %163 ]
  %171 = insertvalue { ptr, i64 } poison, ptr %169, 0
  %172 = insertvalue { ptr, i64 } %171, i64 %170, 1
  ret { ptr, i64 } %172
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem0: none, target_mem1: none)
define internal fastcc void @stbtt__dict_get_ints(ptr noundef nonnull captures(none) initializes((8, 12)) %0, i32 noundef range(i32 17, 294) %1, i32 noundef range(i32 1, 3) %2, ptr noundef nonnull writeonly captures(none) %3) unnamed_addr #3 {
  %5 = alloca %struct.stbtt__buf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %7 = load i32, ptr %6, align 4, !tbaa !27
  %8 = tail call i32 @llvm.smin.i32(i32 %7, i32 0)
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %8, ptr %9, align 8, !tbaa !26
  %10 = icmp sgt i32 %7, 0
  br i1 %10, label %11, label %108

11:                                               ; preds = %4, %84
  %12 = phi i32 [ %85, %84 ], [ %7, %4 ]
  %13 = phi i32 [ %86, %84 ], [ %8, %4 ]
  %14 = icmp slt i32 %13, %12
  br i1 %14, label %15, label %84

15:                                               ; preds = %11, %54
  %16 = phi i32 [ %55, %54 ], [ %12, %11 ]
  %17 = phi i32 [ %56, %54 ], [ %12, %11 ]
  %18 = phi i32 [ %57, %54 ], [ %13, %11 ]
  %19 = load ptr, ptr %0, align 8, !tbaa !28
  %20 = sext i32 %18 to i64
  %21 = getelementptr inbounds i8, ptr %19, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !8
  %23 = icmp ugt i8 %22, 27
  br i1 %23, label %24, label %59

24:                                               ; preds = %15
  %25 = icmp eq i8 %22, 30
  br i1 %25, label %26, label %49

26:                                               ; preds = %24
  %27 = add nsw i32 %18, 1
  %28 = icmp slt i32 %18, -1
  %29 = select i1 %28, i32 %17, i32 %27
  store i32 %29, ptr %9, align 8, !tbaa !26
  %30 = tail call i32 @llvm.smax.i32(i32 %29, i32 %17)
  %31 = sext i32 %30 to i64
  %32 = icmp slt i32 %29, %17
  br i1 %32, label %33, label %54

33:                                               ; preds = %26
  %34 = sext i32 %29 to i64
  br label %37

35:                                               ; preds = %37
  %36 = icmp eq i64 %39, %31
  br i1 %36, label %54, label %37, !llvm.loop !100

37:                                               ; preds = %33, %35
  %38 = phi i64 [ %39, %35 ], [ %34, %33 ]
  %39 = add nsw i64 %38, 1
  %40 = trunc nsw i64 %39 to i32
  store i32 %40, ptr %9, align 8, !tbaa !26
  %41 = getelementptr inbounds i8, ptr %19, i64 %38
  %42 = load i8, ptr %41, align 1, !tbaa !8
  %43 = zext i8 %42 to i32
  %44 = and i32 %43, 15
  %45 = icmp eq i32 %44, 15
  %46 = and i32 %43, 240
  %47 = icmp eq i32 %46, 240
  %48 = or i1 %45, %47
  br i1 %48, label %53, label %35, !llvm.loop !100

49:                                               ; preds = %24
  %50 = tail call fastcc i32 @stbtt__cff_int(ptr noundef nonnull %0) #17
  %51 = load i32, ptr %9, align 8, !tbaa !26
  %52 = load i32, ptr %6, align 4, !tbaa !27
  br label %54

53:                                               ; preds = %37
  br label %54, !llvm.loop !100

54:                                               ; preds = %35, %26, %53, %49
  %55 = phi i32 [ %52, %49 ], [ %16, %26 ], [ %16, %53 ], [ %16, %35 ]
  %56 = phi i32 [ %52, %49 ], [ %17, %26 ], [ %17, %53 ], [ %17, %35 ]
  %57 = phi i32 [ %51, %49 ], [ %29, %26 ], [ %40, %53 ], [ %40, %35 ]
  %58 = icmp slt i32 %57, %56
  br i1 %58, label %15, label %84, !llvm.loop !101

59:                                               ; preds = %15
  %60 = getelementptr inbounds i8, ptr %19, i64 %20
  %61 = add nsw i32 %18, 1
  store i32 %61, ptr %9, align 8, !tbaa !26
  %62 = load i8, ptr %60, align 1, !tbaa !8
  %63 = zext i8 %62 to i32
  %64 = icmp eq i8 %62, 12
  br i1 %64, label %65, label %74

65:                                               ; preds = %59
  %66 = icmp slt i32 %61, %17
  br i1 %66, label %67, label %74

67:                                               ; preds = %65
  %68 = add nsw i32 %18, 2
  store i32 %68, ptr %9, align 8, !tbaa !26
  %69 = sext i32 %61 to i64
  %70 = getelementptr inbounds i8, ptr %19, i64 %69
  %71 = load i8, ptr %70, align 1, !tbaa !8
  %72 = zext i8 %71 to i32
  %73 = or disjoint i32 %72, 256
  br label %74

74:                                               ; preds = %67, %65, %59
  %75 = phi i32 [ %61, %59 ], [ %68, %67 ], [ %61, %65 ]
  %76 = phi i32 [ %63, %59 ], [ %73, %67 ], [ 256, %65 ]
  %77 = icmp eq i32 %76, %1
  br i1 %77, label %78, label %84

78:                                               ; preds = %74
  %79 = sub nsw i32 %18, %13
  %80 = or i32 %79, %13
  %81 = icmp slt i32 %80, 0
  %82 = icmp sgt i32 %13, %17
  %83 = or i1 %82, %81
  br i1 %83, label %108, label %88

84:                                               ; preds = %54, %74, %11
  %85 = phi i32 [ %16, %74 ], [ %12, %11 ], [ %55, %54 ]
  %86 = phi i32 [ %75, %74 ], [ %13, %11 ], [ %57, %54 ]
  %87 = icmp slt i32 %86, %85
  br i1 %87, label %11, label %108

88:                                               ; preds = %78
  %89 = zext nneg i32 %13 to i64
  %90 = getelementptr inbounds nuw i8, ptr %19, i64 %89
  %91 = zext nneg i32 %79 to i64
  %92 = shl nuw nsw i64 %91, 32
  store ptr %90, ptr %5, align 8
  %93 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %92, ptr %93, align 8
  %94 = getelementptr inbounds nuw i8, ptr %5, i64 12
  %95 = icmp eq i32 %18, %13
  br i1 %95, label %108, label %96

96:                                               ; preds = %88
  %97 = zext nneg i32 %2 to i64
  br label %98

98:                                               ; preds = %96, %98
  %99 = phi i64 [ 0, %96 ], [ %102, %98 ]
  %100 = call fastcc i32 @stbtt__cff_int(ptr noundef %5) #17
  %101 = getelementptr inbounds nuw i32, ptr %3, i64 %99
  store i32 %100, ptr %101, align 4, !tbaa !4
  %102 = add nuw nsw i64 %99, 1
  %103 = icmp samesign ult i64 %102, %97
  %104 = load i32, ptr %93, align 8
  %105 = load i32, ptr %94, align 4
  %106 = icmp slt i32 %104, %105
  %107 = select i1 %103, i1 %106, i1 false
  br i1 %107, label %98, label %108, !llvm.loop !102

108:                                              ; preds = %84, %98, %4, %78, %88
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem0: none, target_mem1: none)
define internal fastcc { ptr, i64 } @stbtt__get_subrs(ptr %0, i64 %1, ptr %2, i64 %3) unnamed_addr #5 {
  %5 = alloca %struct.stbtt__buf, align 8
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 8
  %8 = alloca %struct.stbtt__buf, align 8
  %9 = lshr i64 %1, 32
  %10 = trunc nuw i64 %9 to i32
  store ptr %2, ptr %5, align 8
  %11 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %3, ptr %11, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  store i32 0, ptr %6, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  store i64 0, ptr %7, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  call fastcc void @stbtt__dict_get_ints(ptr noundef %5, i32 noundef 18, i32 noundef 2, ptr noundef %7) #17
  %12 = getelementptr inbounds nuw i8, ptr %7, i64 4
  %13 = load i32, ptr %12, align 4, !tbaa !4
  %14 = icmp ne i32 %13, 0
  %15 = load i32, ptr %7, align 8
  %16 = icmp ne i32 %15, 0
  %17 = select i1 %14, i1 %16, i1 false
  br i1 %17, label %18, label %158

18:                                               ; preds = %4
  %19 = or i32 %15, %13
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %21, label %31

21:                                               ; preds = %18
  %22 = icmp sgt i32 %13, %10
  %23 = sub nsw i32 %10, %13
  %24 = icmp sgt i32 %15, %23
  %25 = select i1 %22, i1 true, i1 %24
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = zext nneg i32 %13 to i64
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 %27
  %29 = zext nneg i32 %15 to i64
  %30 = shl nuw nsw i64 %29, 32
  br label %31

31:                                               ; preds = %18, %21, %26
  %32 = phi ptr [ null, %18 ], [ null, %21 ], [ %28, %26 ]
  %33 = phi i64 [ 0, %18 ], [ 0, %21 ], [ %30, %26 ]
  store ptr %32, ptr %8, align 8, !tbaa !15
  %34 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %33, ptr %34, align 8
  call fastcc void @stbtt__dict_get_ints(ptr noundef %8, i32 noundef 19, i32 noundef 1, ptr noundef %6) #17
  %35 = load i32, ptr %6, align 4, !tbaa !4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %158, label %37

37:                                               ; preds = %31
  %38 = add i32 %35, %13
  %39 = icmp slt i32 %38, 0
  %40 = tail call i32 @llvm.smin.i32(i32 %38, i32 %10)
  %41 = select i1 %39, i32 %10, i32 %40
  %42 = icmp slt i32 %41, %10
  br i1 %42, label %43, label %50

43:                                               ; preds = %37
  %44 = add nsw i32 %41, 1
  %45 = sext i32 %41 to i64
  %46 = getelementptr inbounds i8, ptr %0, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !8
  %48 = zext i8 %47 to i32
  %49 = shl nuw nsw i32 %48, 8
  br label %50

50:                                               ; preds = %43, %37
  %51 = phi i32 [ %44, %43 ], [ %41, %37 ]
  %52 = phi i32 [ %49, %43 ], [ 0, %37 ]
  %53 = icmp slt i32 %51, %10
  br i1 %53, label %54, label %61

54:                                               ; preds = %50
  %55 = add nsw i32 %51, 1
  %56 = sext i32 %51 to i64
  %57 = getelementptr inbounds i8, ptr %0, i64 %56
  %58 = load i8, ptr %57, align 1, !tbaa !8
  %59 = zext i8 %58 to i32
  %60 = or disjoint i32 %52, %59
  br label %61

61:                                               ; preds = %54, %50
  %62 = phi i32 [ %55, %54 ], [ %51, %50 ]
  %63 = phi i32 [ %60, %54 ], [ %52, %50 ]
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %143, label %65

65:                                               ; preds = %61
  %66 = icmp slt i32 %62, %10
  br i1 %66, label %67, label %73

67:                                               ; preds = %65
  %68 = add nsw i32 %62, 1
  %69 = sext i32 %62 to i64
  %70 = getelementptr inbounds i8, ptr %0, i64 %69
  %71 = load i8, ptr %70, align 1, !tbaa !8
  %72 = zext i8 %71 to i32
  br label %73

73:                                               ; preds = %67, %65
  %74 = phi i32 [ %68, %67 ], [ %62, %65 ]
  %75 = phi i32 [ %72, %67 ], [ 0, %65 ]
  %76 = mul nuw nsw i32 %75, %63
  %77 = add nsw i32 %76, %74
  %78 = icmp slt i32 %77, 0
  %79 = tail call i32 @llvm.smin.i32(i32 %77, i32 %10)
  %80 = select i1 %78, i32 %10, i32 %79
  %81 = icmp eq i32 %75, 0
  br i1 %81, label %136, label %82

82:                                               ; preds = %73
  %83 = and i32 %75, 1
  %84 = icmp eq i32 %75, 1
  br i1 %84, label %119, label %85

85:                                               ; preds = %82
  %86 = and i32 %75, 254
  br label %87

87:                                               ; preds = %112, %85
  %88 = phi i32 [ %80, %85 ], [ %113, %112 ]
  %89 = phi i32 [ 0, %85 ], [ %114, %112 ]
  %90 = phi i32 [ 0, %85 ], [ %115, %112 ]
  %91 = shl i32 %89, 8
  %92 = icmp slt i32 %88, %10
  br i1 %92, label %93, label %100

93:                                               ; preds = %87
  %94 = add nsw i32 %88, 1
  %95 = sext i32 %88 to i64
  %96 = getelementptr inbounds i8, ptr %0, i64 %95
  %97 = load i8, ptr %96, align 1, !tbaa !8
  %98 = zext i8 %97 to i32
  %99 = or disjoint i32 %91, %98
  br label %100

100:                                              ; preds = %93, %87
  %101 = phi i32 [ %94, %93 ], [ %88, %87 ]
  %102 = phi i32 [ %99, %93 ], [ %91, %87 ]
  %103 = shl i32 %102, 8
  %104 = icmp slt i32 %101, %10
  br i1 %104, label %105, label %112

105:                                              ; preds = %100
  %106 = add nsw i32 %101, 1
  %107 = sext i32 %101 to i64
  %108 = getelementptr inbounds i8, ptr %0, i64 %107
  %109 = load i8, ptr %108, align 1, !tbaa !8
  %110 = zext i8 %109 to i32
  %111 = or disjoint i32 %103, %110
  br label %112

112:                                              ; preds = %105, %100
  %113 = phi i32 [ %106, %105 ], [ %101, %100 ]
  %114 = phi i32 [ %111, %105 ], [ %103, %100 ]
  %115 = add i32 %90, 2
  %116 = icmp eq i32 %115, %86
  br i1 %116, label %117, label %87, !llvm.loop !29

117:                                              ; preds = %112
  %118 = icmp eq i32 %83, 0
  br i1 %118, label %132, label %119

119:                                              ; preds = %117, %82
  %120 = phi i32 [ %80, %82 ], [ %113, %117 ]
  %121 = phi i32 [ 0, %82 ], [ %114, %117 ]
  %122 = icmp ne i32 %83, 0
  tail call void @llvm.assume(i1 %122)
  %123 = shl i32 %121, 8
  %124 = icmp slt i32 %120, %10
  br i1 %124, label %125, label %132

125:                                              ; preds = %119
  %126 = add nsw i32 %120, 1
  %127 = sext i32 %120 to i64
  %128 = getelementptr inbounds i8, ptr %0, i64 %127
  %129 = load i8, ptr %128, align 1, !tbaa !8
  %130 = zext i8 %129 to i32
  %131 = or disjoint i32 %123, %130
  br label %132

132:                                              ; preds = %119, %125, %117
  %133 = phi i32 [ %113, %117 ], [ %126, %125 ], [ %120, %119 ]
  %134 = phi i32 [ %114, %117 ], [ %131, %125 ], [ %123, %119 ]
  %135 = add i32 %134, -1
  br label %136

136:                                              ; preds = %132, %73
  %137 = phi i32 [ %80, %73 ], [ %133, %132 ]
  %138 = phi i32 [ -1, %73 ], [ %135, %132 ]
  %139 = add nsw i32 %138, %137
  %140 = icmp slt i32 %139, 0
  %141 = tail call i32 @llvm.smin.i32(i32 %139, i32 %10)
  %142 = select i1 %140, i32 %10, i32 %141
  br label %143

143:                                              ; preds = %136, %61
  %144 = phi i32 [ %142, %136 ], [ %62, %61 ]
  %145 = sub nsw i32 %144, %41
  %146 = or i32 %145, %41
  %147 = icmp slt i32 %146, 0
  %148 = icmp sgt i32 %144, %10
  %149 = select i1 %147, i1 true, i1 %148
  %150 = zext nneg i32 %41 to i64
  %151 = getelementptr inbounds nuw i8, ptr %0, i64 %150
  %152 = zext nneg i32 %145 to i64
  %153 = shl nuw nsw i64 %152, 32
  %154 = select i1 %149, ptr null, ptr %151
  %155 = select i1 %149, i64 0, i64 %153
  %156 = insertvalue { ptr, i64 } poison, ptr %154, 0
  %157 = insertvalue { ptr, i64 } %156, i64 %155, 1
  br label %158

158:                                              ; preds = %31, %4, %143
  %159 = phi { ptr, i64 } [ %157, %143 ], [ zeroinitializer, %4 ], [ zeroinitializer, %31 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  ret { ptr, i64 } %159
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem0: none, target_mem1: none)
define internal fastcc i32 @stbtt__cff_int(ptr noundef nonnull captures(none) %0) unnamed_addr #6 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %3 = load i32, ptr %2, align 8, !tbaa !26
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %5 = load i32, ptr %4, align 4, !tbaa !27
  %6 = icmp slt i32 %3, %5
  br i1 %6, label %7, label %113

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8, !tbaa !28
  %9 = add nsw i32 %3, 1
  store i32 %9, ptr %2, align 8, !tbaa !26
  %10 = sext i32 %3 to i64
  %11 = getelementptr inbounds i8, ptr %8, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !8
  %13 = zext i8 %12 to i32
  %14 = add i8 %12, -32
  %15 = icmp ult i8 %14, -41
  br i1 %15, label %16, label %18

16:                                               ; preds = %7
  %17 = add nsw i32 %13, -139
  br label %113

18:                                               ; preds = %7
  %19 = icmp slt i8 %12, -5
  br i1 %19, label %20, label %33

20:                                               ; preds = %18
  %21 = shl nuw nsw i32 %13, 8
  %22 = icmp slt i32 %9, %5
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = add nsw i32 %3, 2
  store i32 %24, ptr %2, align 8, !tbaa !26
  %25 = sext i32 %9 to i64
  %26 = getelementptr inbounds i8, ptr %8, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !8
  %28 = zext i8 %27 to i32
  br label %29

29:                                               ; preds = %20, %23
  %30 = phi i32 [ %28, %23 ], [ 0, %20 ]
  %31 = add nsw i32 %21, -63124
  %32 = add nuw nsw i32 %31, %30
  br label %113

33:                                               ; preds = %18
  %34 = icmp slt i8 %12, -1
  br i1 %34, label %35, label %48

35:                                               ; preds = %33
  %36 = icmp slt i32 %9, %5
  br i1 %36, label %37, label %43

37:                                               ; preds = %35
  %38 = add nsw i32 %3, 2
  store i32 %38, ptr %2, align 8, !tbaa !26
  %39 = sext i32 %9 to i64
  %40 = getelementptr inbounds i8, ptr %8, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !8
  %42 = zext i8 %41 to i32
  br label %43

43:                                               ; preds = %35, %37
  %44 = phi i32 [ %42, %37 ], [ 0, %35 ]
  %45 = shl nuw nsw i32 %13, 8
  %46 = or disjoint i32 %45, %44
  %47 = sub nsw i32 64148, %46
  br label %113

48:                                               ; preds = %33
  switch i8 %12, label %113 [
    i8 28, label %49
    i8 29, label %69
  ]

49:                                               ; preds = %48
  %50 = icmp slt i32 %9, %5
  br i1 %50, label %51, label %58

51:                                               ; preds = %49
  %52 = add nsw i32 %3, 2
  store i32 %52, ptr %2, align 8, !tbaa !26
  %53 = sext i32 %9 to i64
  %54 = getelementptr inbounds i8, ptr %8, i64 %53
  %55 = load i8, ptr %54, align 1, !tbaa !8
  %56 = zext i8 %55 to i32
  %57 = shl nuw nsw i32 %56, 8
  br label %58

58:                                               ; preds = %51, %49
  %59 = phi i32 [ %52, %51 ], [ %9, %49 ]
  %60 = phi i32 [ %57, %51 ], [ 0, %49 ]
  %61 = icmp slt i32 %59, %5
  br i1 %61, label %62, label %113

62:                                               ; preds = %58
  %63 = add nsw i32 %59, 1
  store i32 %63, ptr %2, align 8, !tbaa !26
  %64 = sext i32 %59 to i64
  %65 = getelementptr inbounds i8, ptr %8, i64 %64
  %66 = load i8, ptr %65, align 1, !tbaa !8
  %67 = zext i8 %66 to i32
  %68 = or disjoint i32 %60, %67
  br label %113

69:                                               ; preds = %48
  %70 = icmp slt i32 %9, %5
  br i1 %70, label %71, label %78

71:                                               ; preds = %69
  %72 = add nsw i32 %3, 2
  store i32 %72, ptr %2, align 8, !tbaa !26
  %73 = sext i32 %9 to i64
  %74 = getelementptr inbounds i8, ptr %8, i64 %73
  %75 = load i8, ptr %74, align 1, !tbaa !8
  %76 = zext i8 %75 to i32
  %77 = shl nuw nsw i32 %76, 8
  br label %78

78:                                               ; preds = %71, %69
  %79 = phi i32 [ %72, %71 ], [ %9, %69 ]
  %80 = phi i32 [ %77, %71 ], [ 0, %69 ]
  %81 = icmp slt i32 %79, %5
  br i1 %81, label %82, label %89

82:                                               ; preds = %78
  %83 = add nsw i32 %79, 1
  store i32 %83, ptr %2, align 8, !tbaa !26
  %84 = sext i32 %79 to i64
  %85 = getelementptr inbounds i8, ptr %8, i64 %84
  %86 = load i8, ptr %85, align 1, !tbaa !8
  %87 = zext i8 %86 to i32
  %88 = or disjoint i32 %80, %87
  br label %89

89:                                               ; preds = %82, %78
  %90 = phi i32 [ %83, %82 ], [ %79, %78 ]
  %91 = phi i32 [ %88, %82 ], [ %80, %78 ]
  %92 = shl nuw nsw i32 %91, 8
  %93 = icmp slt i32 %90, %5
  br i1 %93, label %94, label %101

94:                                               ; preds = %89
  %95 = add nsw i32 %90, 1
  store i32 %95, ptr %2, align 8, !tbaa !26
  %96 = sext i32 %90 to i64
  %97 = getelementptr inbounds i8, ptr %8, i64 %96
  %98 = load i8, ptr %97, align 1, !tbaa !8
  %99 = zext i8 %98 to i32
  %100 = or disjoint i32 %92, %99
  br label %101

101:                                              ; preds = %94, %89
  %102 = phi i32 [ %95, %94 ], [ %90, %89 ]
  %103 = phi i32 [ %100, %94 ], [ %92, %89 ]
  %104 = shl nuw i32 %103, 8
  %105 = icmp slt i32 %102, %5
  br i1 %105, label %106, label %113

106:                                              ; preds = %101
  %107 = add nsw i32 %102, 1
  store i32 %107, ptr %2, align 8, !tbaa !26
  %108 = sext i32 %102 to i64
  %109 = getelementptr inbounds i8, ptr %8, i64 %108
  %110 = load i8, ptr %109, align 1, !tbaa !8
  %111 = zext i8 %110 to i32
  %112 = or disjoint i32 %104, %111
  br label %113

113:                                              ; preds = %101, %106, %58, %62, %1, %48, %43, %29, %16
  %114 = phi i32 [ %17, %16 ], [ %32, %29 ], [ %47, %43 ], [ %60, %58 ], [ 0, %1 ], [ 0, %48 ], [ %68, %62 ], [ %112, %106 ], [ %104, %101 ]
  ret i32 %114
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem0: none, target_mem1: none)
define internal fastcc i32 @stbtt_FindGlyphIndex(ptr noundef nonnull readonly captures(none) %0, i32 noundef range(i32 -2147483648, 127) %1) unnamed_addr #5 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8, !tbaa !9
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %6 = load i32, ptr %5, align 8, !tbaa !103
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !8
  %10 = zext i8 %9 to i16
  %11 = shl nuw i16 %10, 8
  %12 = getelementptr inbounds nuw i8, ptr %8, i64 1
  %13 = load i8, ptr %12, align 1, !tbaa !8
  %14 = zext i8 %13 to i16
  %15 = or disjoint i16 %11, %14
  switch i16 %15, label %268 [
    i16 0, label %16
    i16 6, label %33
    i16 2, label %369
    i16 4, label %67
  ]

16:                                               ; preds = %2
  %17 = getelementptr inbounds nuw i8, ptr %8, i64 2
  %18 = load i8, ptr %17, align 1, !tbaa !8
  %19 = zext i8 %18 to i32
  %20 = shl nuw nsw i32 %19, 8
  %21 = getelementptr inbounds nuw i8, ptr %8, i64 3
  %22 = load i8, ptr %21, align 1, !tbaa !8
  %23 = zext i8 %22 to i32
  %24 = or disjoint i32 %20, %23
  %25 = add nsw i32 %24, -6
  %26 = icmp slt i32 %1, %25
  br i1 %26, label %27, label %369

27:                                               ; preds = %16
  %28 = getelementptr inbounds nuw i8, ptr %8, i64 6
  %29 = sext i32 %1 to i64
  %30 = getelementptr inbounds i8, ptr %28, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !8
  %32 = zext i8 %31 to i32
  br label %369

33:                                               ; preds = %2
  %34 = getelementptr inbounds nuw i8, ptr %8, i64 6
  %35 = load i8, ptr %34, align 1, !tbaa !8
  %36 = zext i8 %35 to i32
  %37 = shl nuw nsw i32 %36, 8
  %38 = getelementptr inbounds nuw i8, ptr %8, i64 7
  %39 = load i8, ptr %38, align 1, !tbaa !8
  %40 = zext i8 %39 to i32
  %41 = or disjoint i32 %37, %40
  %42 = icmp ult i32 %1, %41
  br i1 %42, label %369, label %43

43:                                               ; preds = %33
  %44 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %45 = load i8, ptr %44, align 1, !tbaa !8
  %46 = zext i8 %45 to i32
  %47 = shl nuw nsw i32 %46, 8
  %48 = getelementptr inbounds nuw i8, ptr %8, i64 9
  %49 = load i8, ptr %48, align 1, !tbaa !8
  %50 = zext i8 %49 to i32
  %51 = or disjoint i32 %47, %50
  %52 = add nuw nsw i32 %51, %41
  %53 = icmp ult i32 %1, %52
  br i1 %53, label %54, label %369

54:                                               ; preds = %43
  %55 = getelementptr inbounds nuw i8, ptr %8, i64 10
  %56 = sub nsw i32 %1, %41
  %57 = shl nsw i32 %56, 1
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds nuw i8, ptr %55, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !8
  %61 = zext i8 %60 to i32
  %62 = shl nuw nsw i32 %61, 8
  %63 = getelementptr inbounds nuw i8, ptr %59, i64 1
  %64 = load i8, ptr %63, align 1, !tbaa !8
  %65 = zext i8 %64 to i32
  %66 = or disjoint i32 %62, %65
  br label %369

67:                                               ; preds = %2
  %68 = getelementptr inbounds nuw i8, ptr %8, i64 6
  %69 = load i8, ptr %68, align 1, !tbaa !8
  %70 = zext i8 %69 to i32
  %71 = shl nuw nsw i32 %70, 8
  %72 = getelementptr inbounds nuw i8, ptr %8, i64 7
  %73 = load i8, ptr %72, align 1, !tbaa !8
  %74 = zext i8 %73 to i32
  %75 = or disjoint i32 %71, %74
  %76 = lshr i32 %75, 1
  %77 = getelementptr inbounds nuw i8, ptr %8, i64 10
  %78 = load i8, ptr %77, align 1, !tbaa !8
  %79 = zext i8 %78 to i16
  %80 = shl nuw i16 %79, 8
  %81 = getelementptr inbounds nuw i8, ptr %8, i64 11
  %82 = load i8, ptr %81, align 1, !tbaa !8
  %83 = zext i8 %82 to i16
  %84 = or disjoint i16 %80, %83
  %85 = getelementptr inbounds nuw i8, ptr %8, i64 12
  %86 = load i8, ptr %85, align 1, !tbaa !8
  %87 = zext i8 %86 to i16
  %88 = shl nuw i16 %87, 8
  %89 = getelementptr inbounds nuw i8, ptr %8, i64 13
  %90 = load i8, ptr %89, align 1, !tbaa !8
  %91 = add i32 %6, 14
  %92 = and i8 %90, -2
  %93 = zext i8 %92 to i16
  %94 = or disjoint i16 %88, %93
  %95 = zext i32 %91 to i64
  %96 = getelementptr inbounds nuw i8, ptr %4, i64 %95
  %97 = zext i16 %94 to i64
  %98 = getelementptr inbounds nuw i8, ptr %96, i64 %97
  %99 = load i8, ptr %98, align 1, !tbaa !8
  %100 = zext i8 %99 to i32
  %101 = shl nuw nsw i32 %100, 8
  %102 = getelementptr inbounds nuw i8, ptr %98, i64 1
  %103 = load i8, ptr %102, align 1, !tbaa !8
  %104 = zext i8 %103 to i32
  %105 = or disjoint i32 %101, %104
  %106 = icmp slt i32 %1, %105
  %107 = zext i16 %94 to i32
  %108 = select i1 %106, i32 0, i32 %107
  %109 = add i32 %6, 12
  %110 = add i32 %109, %108
  %111 = icmp eq i16 %84, 0
  br i1 %111, label %189, label %112

112:                                              ; preds = %67
  %113 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %114 = load i8, ptr %113, align 1, !tbaa !8
  %115 = zext i8 %114 to i16
  %116 = shl nuw i16 %115, 8
  %117 = getelementptr inbounds nuw i8, ptr %8, i64 9
  %118 = load i8, ptr %117, align 1, !tbaa !8
  %119 = zext i8 %118 to i16
  %120 = or disjoint i16 %116, %119
  %121 = or disjoint i16 %80, %83
  %122 = and i16 %83, 1
  %123 = icmp eq i16 %122, 0
  br i1 %123, label %143, label %124

124:                                              ; preds = %112
  %125 = lshr i16 %120, 1
  %126 = zext i32 %110 to i64
  %127 = getelementptr inbounds nuw i8, ptr %4, i64 %126
  %128 = and i16 %125, 32766
  %129 = zext nneg i16 %128 to i64
  %130 = getelementptr inbounds nuw i8, ptr %127, i64 %129
  %131 = load i8, ptr %130, align 1, !tbaa !8
  %132 = zext i8 %131 to i32
  %133 = shl nuw nsw i32 %132, 8
  %134 = getelementptr inbounds nuw i8, ptr %130, i64 1
  %135 = load i8, ptr %134, align 1, !tbaa !8
  %136 = zext i8 %135 to i32
  %137 = or disjoint i32 %133, %136
  %138 = icmp sgt i32 %1, %137
  %139 = zext nneg i16 %128 to i32
  %140 = select i1 %138, i32 %139, i32 0
  %141 = add i32 %140, %110
  %142 = add nsw i16 %84, -1
  br label %143

143:                                              ; preds = %124, %112
  %144 = phi i32 [ poison, %112 ], [ %141, %124 ]
  %145 = phi i16 [ %120, %112 ], [ %125, %124 ]
  %146 = phi i16 [ %84, %112 ], [ %142, %124 ]
  %147 = phi i32 [ %110, %112 ], [ %141, %124 ]
  %148 = icmp eq i16 %121, 1
  br i1 %148, label %189, label %149

149:                                              ; preds = %143, %149
  %150 = phi i16 [ %170, %149 ], [ %145, %143 ]
  %151 = phi i16 [ %187, %149 ], [ %146, %143 ]
  %152 = phi i32 [ %186, %149 ], [ %147, %143 ]
  %153 = lshr i16 %150, 1
  %154 = zext i32 %152 to i64
  %155 = getelementptr inbounds nuw i8, ptr %4, i64 %154
  %156 = and i16 %153, 32766
  %157 = zext nneg i16 %156 to i64
  %158 = getelementptr inbounds nuw i8, ptr %155, i64 %157
  %159 = load i8, ptr %158, align 1, !tbaa !8
  %160 = zext i8 %159 to i32
  %161 = shl nuw nsw i32 %160, 8
  %162 = getelementptr inbounds nuw i8, ptr %158, i64 1
  %163 = load i8, ptr %162, align 1, !tbaa !8
  %164 = zext i8 %163 to i32
  %165 = or disjoint i32 %161, %164
  %166 = icmp sgt i32 %1, %165
  %167 = zext nneg i16 %156 to i32
  %168 = select i1 %166, i32 %167, i32 0
  %169 = add i32 %168, %152
  %170 = lshr i16 %150, 2
  %171 = zext i32 %169 to i64
  %172 = getelementptr inbounds nuw i8, ptr %4, i64 %171
  %173 = and i16 %170, 16382
  %174 = zext nneg i16 %173 to i64
  %175 = getelementptr inbounds nuw i8, ptr %172, i64 %174
  %176 = load i8, ptr %175, align 1, !tbaa !8
  %177 = zext i8 %176 to i32
  %178 = shl nuw nsw i32 %177, 8
  %179 = getelementptr inbounds nuw i8, ptr %175, i64 1
  %180 = load i8, ptr %179, align 1, !tbaa !8
  %181 = zext i8 %180 to i32
  %182 = or disjoint i32 %178, %181
  %183 = icmp sgt i32 %1, %182
  %184 = zext nneg i16 %173 to i32
  %185 = select i1 %183, i32 %184, i32 0
  %186 = add i32 %185, %169
  %187 = add i16 %151, -2
  %188 = icmp eq i16 %187, 0
  br i1 %188, label %189, label %149, !llvm.loop !104

189:                                              ; preds = %143, %149, %67
  %190 = phi i32 [ %110, %67 ], [ %144, %143 ], [ %186, %149 ]
  %191 = sub i32 %190, %6
  %192 = add i32 %191, 131060
  %193 = getelementptr inbounds nuw i8, ptr %8, i64 14
  %194 = and i32 %75, 65534
  %195 = zext nneg i32 %194 to i64
  %196 = getelementptr inbounds nuw i8, ptr %193, i64 %195
  %197 = getelementptr inbounds nuw i8, ptr %196, i64 2
  %198 = and i32 %192, 131070
  %199 = zext nneg i32 %198 to i64
  %200 = getelementptr inbounds nuw i8, ptr %197, i64 %199
  %201 = load i8, ptr %200, align 1, !tbaa !8
  %202 = zext i8 %201 to i32
  %203 = shl nuw nsw i32 %202, 8
  %204 = getelementptr inbounds nuw i8, ptr %200, i64 1
  %205 = load i8, ptr %204, align 1, !tbaa !8
  %206 = zext i8 %205 to i32
  %207 = or disjoint i32 %203, %206
  %208 = getelementptr inbounds nuw i8, ptr %96, i64 %199
  %209 = load i8, ptr %208, align 1, !tbaa !8
  %210 = zext i8 %209 to i32
  %211 = shl nuw nsw i32 %210, 8
  %212 = getelementptr inbounds nuw i8, ptr %208, i64 1
  %213 = load i8, ptr %212, align 1, !tbaa !8
  %214 = zext i8 %213 to i32
  %215 = or disjoint i32 %211, %214
  %216 = icmp slt i32 %1, %207
  %217 = icmp sgt i32 %1, %215
  %218 = select i1 %216, i1 true, i1 %217
  br i1 %218, label %265, label %219

219:                                              ; preds = %189
  %220 = mul nuw nsw i32 %76, 6
  %221 = zext nneg i32 %220 to i64
  %222 = getelementptr inbounds nuw i8, ptr %193, i64 %221
  %223 = getelementptr inbounds nuw i8, ptr %222, i64 2
  %224 = getelementptr inbounds nuw i8, ptr %223, i64 %199
  %225 = load i8, ptr %224, align 1, !tbaa !8
  %226 = zext i8 %225 to i16
  %227 = shl nuw i16 %226, 8
  %228 = getelementptr inbounds nuw i8, ptr %224, i64 1
  %229 = load i8, ptr %228, align 1, !tbaa !8
  %230 = zext i8 %229 to i16
  %231 = or disjoint i16 %227, %230
  %232 = icmp eq i16 %231, 0
  br i1 %232, label %233, label %247

233:                                              ; preds = %219
  %234 = shl nuw nsw i32 %76, 2
  %235 = zext nneg i32 %234 to i64
  %236 = getelementptr inbounds nuw i8, ptr %193, i64 %235
  %237 = getelementptr inbounds nuw i8, ptr %236, i64 2
  %238 = getelementptr inbounds nuw i8, ptr %237, i64 %199
  %239 = load i8, ptr %238, align 1, !tbaa !8
  %240 = zext i8 %239 to i32
  %241 = shl nuw nsw i32 %240, 8
  %242 = getelementptr inbounds nuw i8, ptr %238, i64 1
  %243 = load i8, ptr %242, align 1, !tbaa !8
  %244 = zext i8 %243 to i32
  %245 = or disjoint i32 %241, %244
  %246 = add nuw nsw i32 %245, %1
  br label %265

247:                                              ; preds = %219
  %248 = zext i16 %231 to i64
  %249 = getelementptr inbounds nuw i8, ptr %4, i64 %248
  %250 = sub nsw i32 %1, %207
  %251 = shl nsw i32 %250, 1
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i8, ptr %249, i64 %252
  %254 = getelementptr inbounds nuw i8, ptr %253, i64 %7
  %255 = getelementptr inbounds nuw i8, ptr %254, i64 %221
  %256 = getelementptr inbounds nuw i8, ptr %255, i64 16
  %257 = getelementptr inbounds nuw i8, ptr %256, i64 %199
  %258 = load i8, ptr %257, align 1, !tbaa !8
  %259 = zext i8 %258 to i32
  %260 = shl nuw nsw i32 %259, 8
  %261 = getelementptr inbounds nuw i8, ptr %257, i64 1
  %262 = load i8, ptr %261, align 1, !tbaa !8
  %263 = zext i8 %262 to i32
  %264 = or disjoint i32 %260, %263
  br label %265

265:                                              ; preds = %233, %247, %189
  %266 = phi i32 [ %264, %247 ], [ %246, %233 ], [ 0, %189 ]
  %267 = and i32 %266, 65535
  br label %369

268:                                              ; preds = %2
  %269 = icmp eq i16 %15, 12
  %270 = and i16 %15, -2
  %271 = icmp eq i16 %270, 12
  br i1 %271, label %272, label %369

272:                                              ; preds = %268
  %273 = getelementptr inbounds nuw i8, ptr %8, i64 12
  %274 = load i8, ptr %273, align 1, !tbaa !8
  %275 = zext i8 %274 to i32
  %276 = shl nuw i32 %275, 24
  %277 = getelementptr inbounds nuw i8, ptr %8, i64 13
  %278 = load i8, ptr %277, align 1, !tbaa !8
  %279 = zext i8 %278 to i32
  %280 = shl nuw nsw i32 %279, 16
  %281 = or disjoint i32 %280, %276
  %282 = getelementptr inbounds nuw i8, ptr %8, i64 14
  %283 = load i8, ptr %282, align 1, !tbaa !8
  %284 = zext i8 %283 to i32
  %285 = shl nuw nsw i32 %284, 8
  %286 = or disjoint i32 %281, %285
  %287 = getelementptr inbounds nuw i8, ptr %8, i64 15
  %288 = load i8, ptr %287, align 1, !tbaa !8
  %289 = zext i8 %288 to i32
  %290 = or disjoint i32 %286, %289
  %291 = icmp sgt i32 %290, 0
  br i1 %291, label %292, label %369

292:                                              ; preds = %272
  %293 = getelementptr inbounds nuw i8, ptr %8, i64 16
  br label %294

294:                                              ; preds = %292, %365
  %295 = phi i32 [ %290, %292 ], [ %367, %365 ]
  %296 = phi i32 [ 0, %292 ], [ %366, %365 ]
  %297 = sub nsw i32 %295, %296
  %298 = lshr i32 %297, 1
  %299 = add nuw nsw i32 %298, %296
  %300 = mul nsw i32 %299, 12
  %301 = zext nneg i32 %300 to i64
  %302 = getelementptr inbounds nuw i8, ptr %293, i64 %301
  %303 = load i8, ptr %302, align 1, !tbaa !8
  %304 = zext i8 %303 to i32
  %305 = shl nuw i32 %304, 24
  %306 = getelementptr inbounds nuw i8, ptr %302, i64 1
  %307 = load i8, ptr %306, align 1, !tbaa !8
  %308 = zext i8 %307 to i32
  %309 = shl nuw nsw i32 %308, 16
  %310 = or disjoint i32 %309, %305
  %311 = getelementptr inbounds nuw i8, ptr %302, i64 2
  %312 = load i8, ptr %311, align 1, !tbaa !8
  %313 = zext i8 %312 to i32
  %314 = shl nuw nsw i32 %313, 8
  %315 = or disjoint i32 %310, %314
  %316 = getelementptr inbounds nuw i8, ptr %302, i64 3
  %317 = load i8, ptr %316, align 1, !tbaa !8
  %318 = zext i8 %317 to i32
  %319 = or disjoint i32 %315, %318
  %320 = icmp ult i32 %1, %319
  br i1 %320, label %365, label %321

321:                                              ; preds = %294
  %322 = getelementptr inbounds nuw i8, ptr %302, i64 5
  %323 = load i8, ptr %322, align 1, !tbaa !8
  %324 = zext i8 %323 to i32
  %325 = shl nuw nsw i32 %324, 16
  %326 = getelementptr inbounds nuw i8, ptr %302, i64 4
  %327 = load i8, ptr %326, align 1, !tbaa !8
  %328 = zext i8 %327 to i32
  %329 = shl nuw i32 %328, 24
  %330 = or disjoint i32 %329, %325
  %331 = getelementptr inbounds nuw i8, ptr %302, i64 6
  %332 = load i8, ptr %331, align 1, !tbaa !8
  %333 = zext i8 %332 to i32
  %334 = shl nuw nsw i32 %333, 8
  %335 = or disjoint i32 %330, %334
  %336 = getelementptr inbounds nuw i8, ptr %302, i64 7
  %337 = load i8, ptr %336, align 1, !tbaa !8
  %338 = zext i8 %337 to i32
  %339 = or disjoint i32 %335, %338
  %340 = icmp ugt i32 %1, %339
  br i1 %340, label %341, label %343

341:                                              ; preds = %321
  %342 = add nuw nsw i32 %299, 1
  br label %365

343:                                              ; preds = %321
  %344 = getelementptr inbounds nuw i8, ptr %302, i64 8
  %345 = load i8, ptr %344, align 1, !tbaa !8
  %346 = zext i8 %345 to i32
  %347 = shl nuw i32 %346, 24
  %348 = getelementptr inbounds nuw i8, ptr %302, i64 9
  %349 = load i8, ptr %348, align 1, !tbaa !8
  %350 = zext i8 %349 to i32
  %351 = shl nuw nsw i32 %350, 16
  %352 = or disjoint i32 %351, %347
  %353 = getelementptr inbounds nuw i8, ptr %302, i64 10
  %354 = load i8, ptr %353, align 1, !tbaa !8
  %355 = zext i8 %354 to i32
  %356 = shl nuw nsw i32 %355, 8
  %357 = or disjoint i32 %352, %356
  %358 = getelementptr inbounds nuw i8, ptr %302, i64 11
  %359 = load i8, ptr %358, align 1, !tbaa !8
  %360 = zext i8 %359 to i32
  %361 = or disjoint i32 %357, %360
  %362 = sub i32 %1, %319
  %363 = select i1 %269, i32 %362, i32 0
  %364 = add i32 %361, %363
  br label %369

365:                                              ; preds = %341, %294
  %366 = phi i32 [ %296, %294 ], [ %342, %341 ]
  %367 = phi i32 [ %299, %294 ], [ %295, %341 ]
  %368 = icmp slt i32 %366, %367
  br i1 %368, label %294, label %369, !llvm.loop !105

369:                                              ; preds = %365, %272, %343, %268, %2, %54, %43, %33, %27, %16, %265
  %370 = phi i32 [ 0, %268 ], [ 0, %16 ], [ 0, %33 ], [ %267, %265 ], [ 0, %2 ], [ %32, %27 ], [ %66, %54 ], [ 0, %43 ], [ %364, %343 ], [ 0, %272 ], [ 0, %365 ]
  ret i32 %370
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem0: none, target_mem1: none)
define internal fastcc void @stbtt_GetGlyphBitmapBoxSubpixel(ptr noundef nonnull readonly captures(none) %0, i32 noundef %1, float noundef %2, float noundef %3, ptr noundef nonnull writeonly captures(none) initializes((0, 4)) %4, ptr noundef nonnull writeonly captures(none) initializes((0, 4)) %5, ptr noundef writeonly captures(address_is_null) %6, ptr noundef writeonly captures(address_is_null) %7) unnamed_addr #8 {
  %9 = alloca %struct.stbtt__csctx, align 8
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %11 = load i32, ptr %10, align 4, !tbaa !106
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %28, label %13

13:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %9, i8 0, i64 56, i1 false)
  store i32 1, ptr %9, align 8
  %14 = call fastcc i32 @stbtt__run_charstring(ptr noundef nonnull readonly %0, i32 noundef %1, ptr noundef %9) #17
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
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br label %157

28:                                               ; preds = %8
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %30 = load i32, ptr %29, align 4, !tbaa !30
  %31 = icmp slt i32 %1, %30
  br i1 %31, label %32, label %152

32:                                               ; preds = %28
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 60
  %34 = load i32, ptr %33, align 4, !tbaa !33
  %35 = icmp sgt i32 %34, 1
  br i1 %35, label %152, label %36

36:                                               ; preds = %32
  %37 = icmp eq i32 %34, 0
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %39 = load i32, ptr %38, align 8, !tbaa !22
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %41 = load ptr, ptr %40, align 8, !tbaa !9
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %43 = load i32, ptr %42, align 8, !tbaa !20
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, ptr %41, i64 %44
  br i1 %37, label %46, label %67

46:                                               ; preds = %36
  %47 = shl nsw i32 %1, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, ptr %45, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !8
  %51 = zext i8 %50 to i32
  %52 = getelementptr inbounds nuw i8, ptr %49, i64 1
  %53 = load i8, ptr %52, align 1, !tbaa !8
  %54 = zext i8 %53 to i32
  %55 = shl nuw nsw i32 %51, 9
  %56 = shl nuw nsw i32 %54, 1
  %57 = or disjoint i32 %56, %55
  %58 = getelementptr inbounds nuw i8, ptr %49, i64 2
  %59 = load i8, ptr %58, align 1, !tbaa !8
  %60 = zext i8 %59 to i32
  %61 = getelementptr inbounds nuw i8, ptr %49, i64 3
  %62 = load i8, ptr %61, align 1, !tbaa !8
  %63 = zext i8 %62 to i32
  %64 = shl nuw nsw i32 %60, 9
  %65 = shl nuw nsw i32 %63, 1
  %66 = or disjoint i32 %65, %64
  br label %106

67:                                               ; preds = %36
  %68 = shl nsw i32 %1, 2
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, ptr %45, i64 %69
  %71 = load i8, ptr %70, align 1, !tbaa !8
  %72 = zext i8 %71 to i32
  %73 = shl nuw i32 %72, 24
  %74 = getelementptr inbounds nuw i8, ptr %70, i64 1
  %75 = load i8, ptr %74, align 1, !tbaa !8
  %76 = zext i8 %75 to i32
  %77 = shl nuw nsw i32 %76, 16
  %78 = or disjoint i32 %77, %73
  %79 = getelementptr inbounds nuw i8, ptr %70, i64 2
  %80 = load i8, ptr %79, align 1, !tbaa !8
  %81 = zext i8 %80 to i32
  %82 = shl nuw nsw i32 %81, 8
  %83 = or disjoint i32 %78, %82
  %84 = getelementptr inbounds nuw i8, ptr %70, i64 3
  %85 = load i8, ptr %84, align 1, !tbaa !8
  %86 = zext i8 %85 to i32
  %87 = or disjoint i32 %83, %86
  %88 = getelementptr inbounds nuw i8, ptr %70, i64 4
  %89 = load i8, ptr %88, align 1, !tbaa !8
  %90 = zext i8 %89 to i32
  %91 = shl nuw i32 %90, 24
  %92 = getelementptr inbounds nuw i8, ptr %70, i64 5
  %93 = load i8, ptr %92, align 1, !tbaa !8
  %94 = zext i8 %93 to i32
  %95 = shl nuw nsw i32 %94, 16
  %96 = or disjoint i32 %95, %91
  %97 = getelementptr inbounds nuw i8, ptr %70, i64 6
  %98 = load i8, ptr %97, align 1, !tbaa !8
  %99 = zext i8 %98 to i32
  %100 = shl nuw nsw i32 %99, 8
  %101 = or disjoint i32 %96, %100
  %102 = getelementptr inbounds nuw i8, ptr %70, i64 7
  %103 = load i8, ptr %102, align 1, !tbaa !8
  %104 = zext i8 %103 to i32
  %105 = or disjoint i32 %101, %104
  br label %106

106:                                              ; preds = %67, %46
  %107 = phi i32 [ %105, %67 ], [ %66, %46 ]
  %108 = phi i32 [ %87, %67 ], [ %57, %46 ]
  %109 = add i32 %108, %39
  %110 = icmp eq i32 %108, %107
  %111 = icmp slt i32 %109, 0
  %112 = select i1 %110, i1 true, i1 %111
  br i1 %112, label %152, label %113

113:                                              ; preds = %106
  %114 = zext nneg i32 %109 to i64
  %115 = getelementptr inbounds nuw i8, ptr %41, i64 %114
  %116 = getelementptr inbounds nuw i8, ptr %115, i64 2
  %117 = load i8, ptr %116, align 1, !tbaa !8
  %118 = zext i8 %117 to i16
  %119 = shl nuw i16 %118, 8
  %120 = getelementptr inbounds nuw i8, ptr %115, i64 3
  %121 = load i8, ptr %120, align 1, !tbaa !8
  %122 = zext i8 %121 to i16
  %123 = or disjoint i16 %119, %122
  %124 = sext i16 %123 to i32
  %125 = getelementptr inbounds nuw i8, ptr %115, i64 4
  %126 = load i8, ptr %125, align 1, !tbaa !8
  %127 = zext i8 %126 to i16
  %128 = shl nuw i16 %127, 8
  %129 = getelementptr inbounds nuw i8, ptr %115, i64 5
  %130 = load i8, ptr %129, align 1, !tbaa !8
  %131 = zext i8 %130 to i16
  %132 = or disjoint i16 %128, %131
  %133 = sext i16 %132 to i32
  %134 = getelementptr inbounds nuw i8, ptr %115, i64 6
  %135 = load i8, ptr %134, align 1, !tbaa !8
  %136 = zext i8 %135 to i16
  %137 = shl nuw i16 %136, 8
  %138 = getelementptr inbounds nuw i8, ptr %115, i64 7
  %139 = load i8, ptr %138, align 1, !tbaa !8
  %140 = zext i8 %139 to i16
  %141 = or disjoint i16 %137, %140
  %142 = sext i16 %141 to i32
  %143 = getelementptr inbounds nuw i8, ptr %115, i64 8
  %144 = load i8, ptr %143, align 1, !tbaa !8
  %145 = zext i8 %144 to i16
  %146 = shl nuw i16 %145, 8
  %147 = getelementptr inbounds nuw i8, ptr %115, i64 9
  %148 = load i8, ptr %147, align 1, !tbaa !8
  %149 = zext i8 %148 to i16
  %150 = or disjoint i16 %146, %149
  %151 = sext i16 %150 to i32
  br label %157

152:                                              ; preds = %106, %28, %32
  store i32 0, ptr %4, align 4, !tbaa !4
  store i32 0, ptr %5, align 4, !tbaa !4
  %153 = icmp eq ptr %6, null
  br i1 %153, label %155, label %154

154:                                              ; preds = %152
  store i32 0, ptr %6, align 4, !tbaa !4
  br label %155

155:                                              ; preds = %154, %152
  %156 = icmp eq ptr %7, null
  br i1 %156, label %207, label %205

157:                                              ; preds = %113, %13
  %158 = phi i32 [ %124, %113 ], [ %18, %13 ]
  %159 = phi i32 [ %133, %113 ], [ %21, %13 ]
  %160 = phi i32 [ %142, %113 ], [ %24, %13 ]
  %161 = phi i32 [ %151, %113 ], [ %27, %13 ]
  %162 = sitofp i32 %158 to float
  %163 = call float @llvm.fmuladd.f32(float %162, float %2, float 0.000000e+00)
  %164 = fpext float %163 to double
  %165 = fptosi float %163 to i64
  %166 = sitofp i64 %165 to double
  %167 = fcmp olt double %164, %166
  %168 = fadd double %166, -1.000000e+00
  %169 = select i1 %167, double %168, double %166
  %170 = fptosi double %169 to i32
  store i32 %170, ptr %4, align 4, !tbaa !4
  %171 = sub nsw i32 0, %161
  %172 = sitofp i32 %171 to float
  %173 = call float @llvm.fmuladd.f32(float %172, float %3, float 0.000000e+00)
  %174 = fpext float %173 to double
  %175 = fptosi float %173 to i64
  %176 = sitofp i64 %175 to double
  %177 = fcmp olt double %174, %176
  %178 = fadd double %176, -1.000000e+00
  %179 = select i1 %177, double %178, double %176
  %180 = fptosi double %179 to i32
  store i32 %180, ptr %5, align 4, !tbaa !4
  %181 = icmp eq ptr %6, null
  br i1 %181, label %192, label %182

182:                                              ; preds = %157
  %183 = sitofp i32 %160 to float
  %184 = call float @llvm.fmuladd.f32(float %183, float %2, float 0.000000e+00)
  %185 = fpext float %184 to double
  %186 = fptosi float %184 to i64
  %187 = sitofp i64 %186 to double
  %188 = fcmp ogt double %185, %187
  %189 = fadd double %187, 1.000000e+00
  %190 = select i1 %188, double %189, double %187
  %191 = fptosi double %190 to i32
  store i32 %191, ptr %6, align 4, !tbaa !4
  br label %192

192:                                              ; preds = %182, %157
  %193 = icmp eq ptr %7, null
  br i1 %193, label %207, label %194

194:                                              ; preds = %192
  %195 = sub nsw i32 0, %159
  %196 = sitofp i32 %195 to float
  %197 = call float @llvm.fmuladd.f32(float %196, float %3, float 0.000000e+00)
  %198 = fpext float %197 to double
  %199 = fptosi float %197 to i64
  %200 = sitofp i64 %199 to double
  %201 = fcmp ogt double %198, %200
  %202 = fadd double %200, 1.000000e+00
  %203 = select i1 %201, double %202, double %200
  %204 = fptosi double %203 to i32
  br label %205

205:                                              ; preds = %155, %194
  %206 = phi i32 [ %204, %194 ], [ 0, %155 ]
  store i32 %206, ptr %7, align 4, !tbaa !4
  br label %207

207:                                              ; preds = %205, %192, %155
  ret void
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem0: none, target_mem1: none)
define internal fastcc range(i32 0, 2) i32 @stbtt__run_charstring(ptr noundef nonnull readonly captures(none) %0, i32 noundef %1, ptr noundef nonnull %2) unnamed_addr #8 {
  %4 = alloca [48 x float], align 16
  %5 = alloca [10 x %struct.stbtt__buf], align 16
  %6 = alloca %struct.stbtt__buf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %8 = load ptr, ptr %7, align 8, !tbaa !15
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %10 = load i64, ptr %9, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %14 = load i64, ptr %13, align 8
  %15 = tail call fastcc { ptr, i64 } @stbtt__cff_index_get(ptr %12, i64 %14, i32 noundef %1) #17
  %16 = extractvalue { ptr, i64 } %15, 0
  %17 = extractvalue { ptr, i64 } %15, 1
  store ptr %16, ptr %6, align 8, !tbaa !15
  %18 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %17, ptr %18, align 8
  %19 = getelementptr inbounds nuw i8, ptr %6, i64 12
  %20 = trunc i64 %17 to i32
  %21 = lshr i64 %17, 32
  %22 = trunc nuw i64 %21 to i32
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %932

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
  %52 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %53 = getelementptr inbounds nuw i8, ptr %4, i64 12
  %54 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %55 = getelementptr inbounds nuw i8, ptr %4, i64 12
  br label %56

56:                                               ; preds = %24, %921
  %57 = phi i32 [ %22, %24 ], [ %930, %921 ]
  %58 = phi i32 [ %20, %24 ], [ %929, %921 ]
  %59 = phi i32 [ 1, %24 ], [ %922, %921 ]
  %60 = phi i32 [ 0, %24 ], [ %923, %921 ]
  %61 = phi i32 [ 0, %24 ], [ %924, %921 ]
  %62 = phi i32 [ 0, %24 ], [ %928, %921 ]
  %63 = phi i32 [ 0, %24 ], [ %925, %921 ]
  %64 = phi i64 [ %10, %24 ], [ %926, %921 ]
  %65 = phi ptr [ %8, %24 ], [ %927, %921 ]
  %66 = load ptr, ptr %6, align 8, !tbaa !28
  %67 = add nsw i32 %58, 1
  store i32 %67, ptr %18, align 8, !tbaa !26
  %68 = sext i32 %58 to i64
  %69 = getelementptr inbounds i8, ptr %66, i64 %68
  %70 = load i8, ptr %69, align 1, !tbaa !8
  switch i8 %70, label %850 [
    i8 19, label %71
    i8 20, label %71
    i8 1, label %84
    i8 3, label %84
    i8 18, label %84
    i8 23, label %84
    i8 21, label %87
    i8 4, label %96
    i8 22, label %103
    i8 5, label %110
    i8 7, label %169
    i8 6, label %171
    i8 31, label %287
    i8 30, label %289
    i8 8, label %337
    i8 24, label %358
    i8 25, label %436
    i8 26, label %517
    i8 27, label %517
    i8 10, label %570
    i8 29, label %693
    i8 11, label %759
    i8 14, label %765
    i8 12, label %766
  ]

71:                                               ; preds = %56, %56
  %72 = icmp eq i32 %59, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %71
  %74 = sdiv i32 %62, 2
  %75 = add nsw i32 %60, %74
  br label %76

76:                                               ; preds = %73, %71
  %77 = phi i32 [ %75, %73 ], [ %60, %71 ]
  %78 = add nsw i32 %77, 7
  %79 = sdiv i32 %78, 8
  %80 = add nsw i32 %79, %67
  %81 = icmp slt i32 %80, 0
  %82 = tail call i32 @llvm.smin.i32(i32 %80, i32 %57)
  %83 = select i1 %81, i32 %57, i32 %82
  store i32 %83, ptr %18, align 8, !tbaa !26
  br label %921

84:                                               ; preds = %56, %56, %56, %56
  %85 = sdiv i32 %62, 2
  %86 = add nsw i32 %60, %85
  br label %921

87:                                               ; preds = %56
  %88 = icmp slt i32 %62, 2
  br i1 %88, label %932, label %89

89:                                               ; preds = %87
  %90 = zext nneg i32 %62 to i64
  %91 = getelementptr float, ptr %4, i64 %90
  %92 = getelementptr i8, ptr %91, i64 -8
  %93 = load float, ptr %92, align 4, !tbaa !45
  %94 = getelementptr i8, ptr %91, i64 -4
  %95 = load float, ptr %94, align 4, !tbaa !45
  tail call fastcc void @stbtt__csctx_rmove_to(ptr noundef %2, float noundef %93, float noundef %95) #17
  br label %921

96:                                               ; preds = %56
  %97 = icmp slt i32 %62, 1
  br i1 %97, label %932, label %98

98:                                               ; preds = %96
  %99 = zext nneg i32 %62 to i64
  %100 = getelementptr float, ptr %4, i64 %99
  %101 = getelementptr i8, ptr %100, i64 -4
  %102 = load float, ptr %101, align 4, !tbaa !45
  tail call fastcc void @stbtt__csctx_rmove_to(ptr noundef %2, float noundef 0.000000e+00, float noundef %102) #17
  br label %921

103:                                              ; preds = %56
  %104 = icmp slt i32 %62, 1
  br i1 %104, label %932, label %105

105:                                              ; preds = %103
  %106 = zext nneg i32 %62 to i64
  %107 = getelementptr float, ptr %4, i64 %106
  %108 = getelementptr i8, ptr %107, i64 -4
  %109 = load float, ptr %108, align 4, !tbaa !45
  tail call fastcc void @stbtt__csctx_rmove_to(ptr noundef %2, float noundef %109, float noundef 0.000000e+00) #17
  br label %921

110:                                              ; preds = %56
  %111 = icmp slt i32 %62, 2
  br i1 %111, label %932, label %112

112:                                              ; preds = %110
  %113 = load i32, ptr %2, align 8, !tbaa !107
  %114 = icmp eq i32 %113, 0
  %115 = load <2 x float>, ptr %44, align 8, !tbaa !45
  %116 = load i32, ptr %50, align 8
  %117 = sext i32 %116 to i64
  %118 = zext nneg i32 %62 to i64
  br label %119

119:                                              ; preds = %112, %164
  %120 = phi i64 [ 0, %112 ], [ %166, %164 ]
  %121 = phi i64 [ %117, %112 ], [ %165, %164 ]
  %122 = phi <2 x float> [ %115, %112 ], [ %125, %164 ]
  %123 = getelementptr inbounds nuw float, ptr %4, i64 %120
  %124 = load <2 x float>, ptr %123, align 8, !tbaa !45
  %125 = fadd <2 x float> %124, %122
  %126 = fptosi <2 x float> %125 to <2 x i32>
  br i1 %114, label %158, label %127

127:                                              ; preds = %119
  %128 = load i32, ptr %45, align 4, !tbaa !109
  %129 = extractelement <2 x i32> %126, i64 0
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %134, label %131

131:                                              ; preds = %127
  %132 = load i32, ptr %46, align 4, !tbaa !110
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %131, %127
  store i32 %129, ptr %45, align 4, !tbaa !109
  br label %135

135:                                              ; preds = %134, %131
  %136 = load i32, ptr %47, align 4, !tbaa !111
  %137 = extractelement <2 x i32> %126, i64 1
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %142, label %139

139:                                              ; preds = %135
  %140 = load i32, ptr %46, align 4, !tbaa !110
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %139, %135
  store i32 %137, ptr %47, align 4, !tbaa !111
  br label %143

143:                                              ; preds = %142, %139
  %144 = load i32, ptr %48, align 8, !tbaa !112
  %145 = icmp sgt i32 %144, %129
  br i1 %145, label %149, label %146

146:                                              ; preds = %143
  %147 = load i32, ptr %46, align 4, !tbaa !110
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %146, %143
  store i32 %129, ptr %48, align 8, !tbaa !112
  br label %150

150:                                              ; preds = %149, %146
  %151 = load i32, ptr %49, align 8, !tbaa !113
  %152 = icmp sgt i32 %151, %137
  br i1 %152, label %156, label %153

153:                                              ; preds = %150
  %154 = load i32, ptr %46, align 4, !tbaa !110
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %153, %150
  store i32 %137, ptr %49, align 8, !tbaa !113
  br label %157

157:                                              ; preds = %156, %153
  store i32 1, ptr %46, align 4, !tbaa !110
  br label %164

158:                                              ; preds = %119
  %159 = load ptr, ptr %51, align 8, !tbaa !114
  %160 = getelementptr inbounds %struct.stbtt_vertex, ptr %159, i64 %121
  %161 = getelementptr inbounds nuw i8, ptr %160, i64 12
  store i8 2, ptr %161, align 2, !tbaa !35
  %162 = trunc <2 x i32> %126 to <2 x i16>
  store <2 x i16> %162, ptr %160, align 2, !tbaa !44
  %163 = getelementptr inbounds nuw i8, ptr %160, i64 4
  store <4 x i16> zeroinitializer, ptr %163, align 2, !tbaa !44
  br label %164

164:                                              ; preds = %157, %158
  %165 = add nsw i64 %121, 1
  %166 = add nuw nsw i64 %120, 2
  %167 = or disjoint i64 %166, 1
  %168 = icmp samesign ult i64 %167, %118
  br i1 %168, label %119, label %919, !llvm.loop !115

169:                                              ; preds = %56
  %170 = icmp slt i32 %62, 1
  br i1 %170, label %932, label %230

171:                                              ; preds = %56
  %172 = icmp slt i32 %62, 1
  br i1 %172, label %932, label %173

173:                                              ; preds = %171, %283
  %174 = phi i32 [ %286, %283 ], [ 0, %171 ]
  %175 = icmp slt i32 %174, %62
  br i1 %175, label %176, label %921

176:                                              ; preds = %173
  %177 = sext i32 %174 to i64
  %178 = getelementptr inbounds float, ptr %4, i64 %177
  %179 = load float, ptr %178, align 4, !tbaa !45
  %180 = load <2 x float>, ptr %44, align 8, !tbaa !45
  %181 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %179, i64 0
  %182 = fadd <2 x float> %180, %181
  store <2 x float> %182, ptr %44, align 8, !tbaa !45
  %183 = fptosi <2 x float> %182 to <2 x i32>
  %184 = load i32, ptr %2, align 8, !tbaa !107
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %218, label %186

186:                                              ; preds = %176
  %187 = load i32, ptr %45, align 4, !tbaa !109
  %188 = extractelement <2 x i32> %183, i64 0
  %189 = icmp slt i32 %187, %188
  br i1 %189, label %193, label %190

190:                                              ; preds = %186
  %191 = load i32, ptr %46, align 4, !tbaa !110
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %190, %186
  store i32 %188, ptr %45, align 4, !tbaa !109
  br label %194

194:                                              ; preds = %193, %190
  %195 = load i32, ptr %47, align 4, !tbaa !111
  %196 = extractelement <2 x i32> %183, i64 1
  %197 = icmp slt i32 %195, %196
  br i1 %197, label %201, label %198

198:                                              ; preds = %194
  %199 = load i32, ptr %46, align 4, !tbaa !110
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %198, %194
  store i32 %196, ptr %47, align 4, !tbaa !111
  br label %202

202:                                              ; preds = %201, %198
  %203 = load i32, ptr %48, align 8, !tbaa !112
  %204 = icmp sgt i32 %203, %188
  br i1 %204, label %208, label %205

205:                                              ; preds = %202
  %206 = load i32, ptr %46, align 4, !tbaa !110
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %205, %202
  store i32 %188, ptr %48, align 8, !tbaa !112
  br label %209

209:                                              ; preds = %208, %205
  %210 = load i32, ptr %49, align 8, !tbaa !113
  %211 = icmp sgt i32 %210, %196
  br i1 %211, label %215, label %212

212:                                              ; preds = %209
  %213 = load i32, ptr %46, align 4, !tbaa !110
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %212, %209
  store i32 %196, ptr %49, align 8, !tbaa !113
  br label %216

216:                                              ; preds = %215, %212
  store i32 1, ptr %46, align 4, !tbaa !110
  %217 = load i32, ptr %50, align 8, !tbaa !116
  br label %226

218:                                              ; preds = %176
  %219 = load ptr, ptr %51, align 8, !tbaa !114
  %220 = load i32, ptr %50, align 8, !tbaa !116
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.stbtt_vertex, ptr %219, i64 %221
  %223 = getelementptr inbounds nuw i8, ptr %222, i64 12
  store i8 2, ptr %223, align 2, !tbaa !35
  %224 = trunc <2 x i32> %183 to <2 x i16>
  store <2 x i16> %224, ptr %222, align 2, !tbaa !44
  %225 = getelementptr inbounds nuw i8, ptr %222, i64 4
  store <4 x i16> zeroinitializer, ptr %225, align 2, !tbaa !44
  br label %226

226:                                              ; preds = %216, %218
  %227 = phi i32 [ %217, %216 ], [ %220, %218 ]
  %228 = add nsw i32 %227, 1
  store i32 %228, ptr %50, align 8, !tbaa !116
  %229 = add nsw i32 %174, 1
  br label %230

230:                                              ; preds = %169, %226
  %231 = phi i32 [ 0, %169 ], [ %229, %226 ]
  %232 = icmp slt i32 %231, %62
  br i1 %232, label %233, label %921

233:                                              ; preds = %230
  %234 = sext i32 %231 to i64
  %235 = getelementptr inbounds float, ptr %4, i64 %234
  %236 = load float, ptr %235, align 4, !tbaa !45
  %237 = load <2 x float>, ptr %44, align 8, !tbaa !45
  %238 = insertelement <2 x float> <float 0.000000e+00, float poison>, float %236, i64 1
  %239 = fadd <2 x float> %237, %238
  store <2 x float> %239, ptr %44, align 8, !tbaa !45
  %240 = fptosi <2 x float> %239 to <2 x i32>
  %241 = load i32, ptr %2, align 8, !tbaa !107
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %275, label %243

243:                                              ; preds = %233
  %244 = load i32, ptr %45, align 4, !tbaa !109
  %245 = extractelement <2 x i32> %240, i64 0
  %246 = icmp slt i32 %244, %245
  br i1 %246, label %250, label %247

247:                                              ; preds = %243
  %248 = load i32, ptr %46, align 4, !tbaa !110
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %247, %243
  store i32 %245, ptr %45, align 4, !tbaa !109
  br label %251

251:                                              ; preds = %250, %247
  %252 = load i32, ptr %47, align 4, !tbaa !111
  %253 = extractelement <2 x i32> %240, i64 1
  %254 = icmp slt i32 %252, %253
  br i1 %254, label %258, label %255

255:                                              ; preds = %251
  %256 = load i32, ptr %46, align 4, !tbaa !110
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %259

258:                                              ; preds = %255, %251
  store i32 %253, ptr %47, align 4, !tbaa !111
  br label %259

259:                                              ; preds = %258, %255
  %260 = load i32, ptr %48, align 8, !tbaa !112
  %261 = icmp sgt i32 %260, %245
  br i1 %261, label %265, label %262

262:                                              ; preds = %259
  %263 = load i32, ptr %46, align 4, !tbaa !110
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %266

265:                                              ; preds = %262, %259
  store i32 %245, ptr %48, align 8, !tbaa !112
  br label %266

266:                                              ; preds = %265, %262
  %267 = load i32, ptr %49, align 8, !tbaa !113
  %268 = icmp sgt i32 %267, %253
  br i1 %268, label %272, label %269

269:                                              ; preds = %266
  %270 = load i32, ptr %46, align 4, !tbaa !110
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %272, label %273

272:                                              ; preds = %269, %266
  store i32 %253, ptr %49, align 8, !tbaa !113
  br label %273

273:                                              ; preds = %272, %269
  store i32 1, ptr %46, align 4, !tbaa !110
  %274 = load i32, ptr %50, align 8, !tbaa !116
  br label %283

275:                                              ; preds = %233
  %276 = load ptr, ptr %51, align 8, !tbaa !114
  %277 = load i32, ptr %50, align 8, !tbaa !116
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.stbtt_vertex, ptr %276, i64 %278
  %280 = getelementptr inbounds nuw i8, ptr %279, i64 12
  store i8 2, ptr %280, align 2, !tbaa !35
  %281 = trunc <2 x i32> %240 to <2 x i16>
  store <2 x i16> %281, ptr %279, align 2, !tbaa !44
  %282 = getelementptr inbounds nuw i8, ptr %279, i64 4
  store <4 x i16> zeroinitializer, ptr %282, align 2, !tbaa !44
  br label %283

283:                                              ; preds = %273, %275
  %284 = phi i32 [ %274, %273 ], [ %277, %275 ]
  %285 = add nsw i32 %284, 1
  store i32 %285, ptr %50, align 8, !tbaa !116
  %286 = add nsw i32 %231, 1
  br label %173

287:                                              ; preds = %56
  %288 = icmp slt i32 %62, 4
  br i1 %288, label %932, label %314

289:                                              ; preds = %56
  %290 = icmp slt i32 %62, 4
  br i1 %290, label %932, label %291

291:                                              ; preds = %289, %331
  %292 = phi i32 [ %336, %331 ], [ 0, %289 ]
  %293 = add nsw i32 %292, 3
  %294 = icmp slt i32 %293, %62
  br i1 %294, label %295, label %921

295:                                              ; preds = %291
  %296 = sext i32 %292 to i64
  %297 = getelementptr inbounds float, ptr %4, i64 %296
  %298 = load float, ptr %297, align 4, !tbaa !45
  %299 = getelementptr i8, ptr %297, i64 4
  %300 = load float, ptr %299, align 4, !tbaa !45
  %301 = getelementptr i8, ptr %297, i64 8
  %302 = load float, ptr %301, align 4, !tbaa !45
  %303 = sext i32 %293 to i64
  %304 = getelementptr inbounds float, ptr %4, i64 %303
  %305 = load float, ptr %304, align 4, !tbaa !45
  %306 = sub nsw i32 %62, %292
  %307 = icmp eq i32 %306, 5
  br i1 %307, label %308, label %311

308:                                              ; preds = %295
  %309 = getelementptr i8, ptr %297, i64 16
  %310 = load float, ptr %309, align 4, !tbaa !45
  br label %311

311:                                              ; preds = %295, %308
  %312 = phi float [ %310, %308 ], [ 0.000000e+00, %295 ]
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef 0.000000e+00, float noundef %298, float noundef %300, float noundef %302, float noundef %305, float noundef %312) #17
  %313 = add nsw i32 %292, 4
  br label %314

314:                                              ; preds = %287, %311
  %315 = phi i32 [ 0, %287 ], [ %313, %311 ]
  %316 = add nsw i32 %315, 3
  %317 = icmp slt i32 %316, %62
  br i1 %317, label %318, label %921

318:                                              ; preds = %314
  %319 = sext i32 %315 to i64
  %320 = getelementptr inbounds float, ptr %4, i64 %319
  %321 = load float, ptr %320, align 4, !tbaa !45
  %322 = getelementptr i8, ptr %320, i64 4
  %323 = load float, ptr %322, align 4, !tbaa !45
  %324 = getelementptr i8, ptr %320, i64 8
  %325 = load float, ptr %324, align 4, !tbaa !45
  %326 = sub nsw i32 %62, %315
  %327 = icmp eq i32 %326, 5
  br i1 %327, label %328, label %331

328:                                              ; preds = %318
  %329 = getelementptr i8, ptr %320, i64 16
  %330 = load float, ptr %329, align 4, !tbaa !45
  br label %331

331:                                              ; preds = %318, %328
  %332 = phi float [ %330, %328 ], [ 0.000000e+00, %318 ]
  %333 = sext i32 %316 to i64
  %334 = getelementptr inbounds float, ptr %4, i64 %333
  %335 = load float, ptr %334, align 4, !tbaa !45
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %321, float noundef 0.000000e+00, float noundef %323, float noundef %325, float noundef %332, float noundef %335) #17
  %336 = add nsw i32 %315, 4
  br label %291

337:                                              ; preds = %56
  %338 = icmp slt i32 %62, 6
  br i1 %338, label %932, label %339

339:                                              ; preds = %337
  %340 = zext nneg i32 %62 to i64
  br label %341

341:                                              ; preds = %339, %341
  %342 = phi i64 [ 0, %339 ], [ %355, %341 ]
  %343 = getelementptr inbounds nuw float, ptr %4, i64 %342
  %344 = load float, ptr %343, align 8, !tbaa !45
  %345 = getelementptr inbounds nuw i8, ptr %343, i64 4
  %346 = load float, ptr %345, align 4, !tbaa !45
  %347 = getelementptr inbounds nuw i8, ptr %343, i64 8
  %348 = load float, ptr %347, align 8, !tbaa !45
  %349 = getelementptr inbounds nuw i8, ptr %343, i64 12
  %350 = load float, ptr %349, align 4, !tbaa !45
  %351 = getelementptr inbounds nuw i8, ptr %343, i64 16
  %352 = load float, ptr %351, align 8, !tbaa !45
  %353 = getelementptr inbounds nuw i8, ptr %343, i64 20
  %354 = load float, ptr %353, align 4, !tbaa !45
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %344, float noundef %346, float noundef %348, float noundef %350, float noundef %352, float noundef %354) #17
  %355 = add nuw nsw i64 %342, 6
  %356 = add nuw nsw i64 %342, 11
  %357 = icmp samesign ult i64 %356, %340
  br i1 %357, label %341, label %921, !llvm.loop !117

358:                                              ; preds = %56
  %359 = icmp slt i32 %62, 8
  br i1 %359, label %932, label %360

360:                                              ; preds = %358
  %361 = add nsw i32 %62, -2
  %362 = zext nneg i32 %361 to i64
  br label %363

363:                                              ; preds = %360, %363
  %364 = phi i64 [ 0, %360 ], [ %377, %363 ]
  %365 = getelementptr inbounds nuw float, ptr %4, i64 %364
  %366 = load float, ptr %365, align 8, !tbaa !45
  %367 = getelementptr inbounds nuw i8, ptr %365, i64 4
  %368 = load float, ptr %367, align 4, !tbaa !45
  %369 = getelementptr inbounds nuw i8, ptr %365, i64 8
  %370 = load float, ptr %369, align 8, !tbaa !45
  %371 = getelementptr inbounds nuw i8, ptr %365, i64 12
  %372 = load float, ptr %371, align 4, !tbaa !45
  %373 = getelementptr inbounds nuw i8, ptr %365, i64 16
  %374 = load float, ptr %373, align 8, !tbaa !45
  %375 = getelementptr inbounds nuw i8, ptr %365, i64 20
  %376 = load float, ptr %375, align 4, !tbaa !45
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %366, float noundef %368, float noundef %370, float noundef %372, float noundef %374, float noundef %376) #17
  %377 = add nuw nsw i64 %364, 6
  %378 = add nuw nsw i64 %364, 11
  %379 = icmp samesign ult i64 %378, %362
  br i1 %379, label %363, label %380, !llvm.loop !118

380:                                              ; preds = %363
  %381 = trunc nuw nsw i64 %377 to i32
  %382 = or disjoint i32 %381, 1
  %383 = icmp slt i32 %382, %62
  br i1 %383, label %384, label %932

384:                                              ; preds = %380
  %385 = and i64 %377, 4294967294
  %386 = getelementptr inbounds nuw float, ptr %4, i64 %385
  %387 = load <2 x float>, ptr %386, align 8, !tbaa !45
  %388 = load <2 x float>, ptr %44, align 8, !tbaa !45
  %389 = fadd <2 x float> %387, %388
  store <2 x float> %389, ptr %44, align 8, !tbaa !45
  %390 = fptosi <2 x float> %389 to <2 x i32>
  %391 = load i32, ptr %2, align 8, !tbaa !107
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %425, label %393

393:                                              ; preds = %384
  %394 = load i32, ptr %45, align 4, !tbaa !109
  %395 = extractelement <2 x i32> %390, i64 0
  %396 = icmp slt i32 %394, %395
  br i1 %396, label %400, label %397

397:                                              ; preds = %393
  %398 = load i32, ptr %46, align 4, !tbaa !110
  %399 = icmp eq i32 %398, 0
  br i1 %399, label %400, label %401

400:                                              ; preds = %397, %393
  store i32 %395, ptr %45, align 4, !tbaa !109
  br label %401

401:                                              ; preds = %400, %397
  %402 = load i32, ptr %47, align 4, !tbaa !111
  %403 = extractelement <2 x i32> %390, i64 1
  %404 = icmp slt i32 %402, %403
  br i1 %404, label %408, label %405

405:                                              ; preds = %401
  %406 = load i32, ptr %46, align 4, !tbaa !110
  %407 = icmp eq i32 %406, 0
  br i1 %407, label %408, label %409

408:                                              ; preds = %405, %401
  store i32 %403, ptr %47, align 4, !tbaa !111
  br label %409

409:                                              ; preds = %408, %405
  %410 = load i32, ptr %48, align 8, !tbaa !112
  %411 = icmp sgt i32 %410, %395
  br i1 %411, label %415, label %412

412:                                              ; preds = %409
  %413 = load i32, ptr %46, align 4, !tbaa !110
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %415, label %416

415:                                              ; preds = %412, %409
  store i32 %395, ptr %48, align 8, !tbaa !112
  br label %416

416:                                              ; preds = %415, %412
  %417 = load i32, ptr %49, align 8, !tbaa !113
  %418 = icmp sgt i32 %417, %403
  br i1 %418, label %422, label %419

419:                                              ; preds = %416
  %420 = load i32, ptr %46, align 4, !tbaa !110
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %422, label %423

422:                                              ; preds = %419, %416
  store i32 %403, ptr %49, align 8, !tbaa !113
  br label %423

423:                                              ; preds = %422, %419
  store i32 1, ptr %46, align 4, !tbaa !110
  %424 = load i32, ptr %50, align 8, !tbaa !116
  br label %433

425:                                              ; preds = %384
  %426 = load ptr, ptr %51, align 8, !tbaa !114
  %427 = load i32, ptr %50, align 8, !tbaa !116
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds %struct.stbtt_vertex, ptr %426, i64 %428
  %430 = getelementptr inbounds nuw i8, ptr %429, i64 12
  store i8 2, ptr %430, align 2, !tbaa !35
  %431 = trunc <2 x i32> %390 to <2 x i16>
  store <2 x i16> %431, ptr %429, align 2, !tbaa !44
  %432 = getelementptr inbounds nuw i8, ptr %429, i64 4
  store <4 x i16> zeroinitializer, ptr %432, align 2, !tbaa !44
  br label %433

433:                                              ; preds = %423, %425
  %434 = phi i32 [ %424, %423 ], [ %427, %425 ]
  %435 = add nsw i32 %434, 1
  store i32 %435, ptr %50, align 8, !tbaa !116
  br label %921

436:                                              ; preds = %56
  %437 = icmp slt i32 %62, 8
  br i1 %437, label %932, label %438

438:                                              ; preds = %436
  %439 = add nsw i32 %62, -6
  %440 = load i32, ptr %2, align 8, !tbaa !107
  %441 = icmp eq i32 %440, 0
  %442 = load <2 x float>, ptr %44, align 8, !tbaa !45
  %443 = load i32, ptr %50, align 8
  %444 = sext i32 %443 to i64
  %445 = zext nneg i32 %439 to i64
  br label %446

446:                                              ; preds = %438, %491
  %447 = phi i64 [ 0, %438 ], [ %493, %491 ]
  %448 = phi i64 [ %444, %438 ], [ %492, %491 ]
  %449 = phi <2 x float> [ %442, %438 ], [ %452, %491 ]
  %450 = getelementptr inbounds nuw float, ptr %4, i64 %447
  %451 = load <2 x float>, ptr %450, align 8, !tbaa !45
  %452 = fadd <2 x float> %451, %449
  %453 = fptosi <2 x float> %452 to <2 x i32>
  br i1 %441, label %485, label %454

454:                                              ; preds = %446
  %455 = load i32, ptr %45, align 4, !tbaa !109
  %456 = extractelement <2 x i32> %453, i64 0
  %457 = icmp slt i32 %455, %456
  br i1 %457, label %461, label %458

458:                                              ; preds = %454
  %459 = load i32, ptr %46, align 4, !tbaa !110
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %461, label %462

461:                                              ; preds = %458, %454
  store i32 %456, ptr %45, align 4, !tbaa !109
  br label %462

462:                                              ; preds = %461, %458
  %463 = load i32, ptr %47, align 4, !tbaa !111
  %464 = extractelement <2 x i32> %453, i64 1
  %465 = icmp slt i32 %463, %464
  br i1 %465, label %469, label %466

466:                                              ; preds = %462
  %467 = load i32, ptr %46, align 4, !tbaa !110
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %469, label %470

469:                                              ; preds = %466, %462
  store i32 %464, ptr %47, align 4, !tbaa !111
  br label %470

470:                                              ; preds = %469, %466
  %471 = load i32, ptr %48, align 8, !tbaa !112
  %472 = icmp sgt i32 %471, %456
  br i1 %472, label %476, label %473

473:                                              ; preds = %470
  %474 = load i32, ptr %46, align 4, !tbaa !110
  %475 = icmp eq i32 %474, 0
  br i1 %475, label %476, label %477

476:                                              ; preds = %473, %470
  store i32 %456, ptr %48, align 8, !tbaa !112
  br label %477

477:                                              ; preds = %476, %473
  %478 = load i32, ptr %49, align 8, !tbaa !113
  %479 = icmp sgt i32 %478, %464
  br i1 %479, label %483, label %480

480:                                              ; preds = %477
  %481 = load i32, ptr %46, align 4, !tbaa !110
  %482 = icmp eq i32 %481, 0
  br i1 %482, label %483, label %484

483:                                              ; preds = %480, %477
  store i32 %464, ptr %49, align 8, !tbaa !113
  br label %484

484:                                              ; preds = %483, %480
  store i32 1, ptr %46, align 4, !tbaa !110
  br label %491

485:                                              ; preds = %446
  %486 = load ptr, ptr %51, align 8, !tbaa !114
  %487 = getelementptr inbounds %struct.stbtt_vertex, ptr %486, i64 %448
  %488 = getelementptr inbounds nuw i8, ptr %487, i64 12
  store i8 2, ptr %488, align 2, !tbaa !35
  %489 = trunc <2 x i32> %453 to <2 x i16>
  store <2 x i16> %489, ptr %487, align 2, !tbaa !44
  %490 = getelementptr inbounds nuw i8, ptr %487, i64 4
  store <4 x i16> zeroinitializer, ptr %490, align 2, !tbaa !44
  br label %491

491:                                              ; preds = %484, %485
  %492 = add nsw i64 %448, 1
  %493 = add nuw nsw i64 %447, 2
  %494 = or disjoint i64 %493, 1
  %495 = icmp samesign ult i64 %494, %445
  br i1 %495, label %446, label %496, !llvm.loop !119

496:                                              ; preds = %491
  %497 = trunc nsw i64 %492 to i32
  store <2 x float> %452, ptr %44, align 8, !tbaa !45
  store i32 %497, ptr %50, align 8, !tbaa !116
  %498 = trunc nuw nsw i64 %493 to i32
  %499 = add nuw nsw i32 %498, 5
  %500 = icmp slt i32 %499, %62
  br i1 %500, label %501, label %932

501:                                              ; preds = %496
  %502 = and i64 %494, 4294967295
  %503 = and i64 %493, 4294967294
  %504 = getelementptr inbounds nuw float, ptr %4, i64 %503
  %505 = load float, ptr %504, align 8, !tbaa !45
  %506 = getelementptr inbounds nuw float, ptr %4, i64 %502
  %507 = load float, ptr %506, align 4, !tbaa !45
  %508 = getelementptr inbounds nuw i8, ptr %504, i64 8
  %509 = load float, ptr %508, align 8, !tbaa !45
  %510 = getelementptr inbounds nuw i8, ptr %504, i64 12
  %511 = load float, ptr %510, align 4, !tbaa !45
  %512 = getelementptr inbounds nuw i8, ptr %504, i64 16
  %513 = load float, ptr %512, align 8, !tbaa !45
  %514 = zext nneg i32 %499 to i64
  %515 = getelementptr inbounds nuw float, ptr %4, i64 %514
  %516 = load float, ptr %515, align 4, !tbaa !45
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %505, float noundef %507, float noundef %509, float noundef %511, float noundef %513, float noundef %516) #17
  br label %921

517:                                              ; preds = %56, %56
  %518 = icmp slt i32 %62, 4
  br i1 %518, label %932, label %519

519:                                              ; preds = %517
  %520 = and i32 %62, 1
  %521 = add nuw nsw i32 %520, 3
  %522 = icmp samesign ult i32 %521, %62
  br i1 %522, label %523, label %921

523:                                              ; preds = %519
  %524 = icmp eq i32 %520, 0
  %525 = load float, ptr %4, align 16
  %526 = select i1 %524, float 0.000000e+00, float %525
  %527 = icmp eq i8 %70, 27
  %528 = trunc i32 %62 to i1
  %529 = and i32 %62, 1
  %530 = load float, ptr %25, align 4
  %531 = select i1 %528, float %530, float %525
  %532 = zext nneg i32 %521 to i64
  %533 = getelementptr inbounds nuw float, ptr %4, i64 %532
  %534 = load float, ptr %533, align 4, !tbaa !45
  br i1 %527, label %540, label %535

535:                                              ; preds = %523
  %536 = load float, ptr %52, align 8
  %537 = select i1 %528, float %536, float %530
  %538 = load float, ptr %53, align 4
  %539 = select i1 %528, float %538, float %536
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %526, float noundef %531, float noundef %537, float noundef %539, float noundef 0.000000e+00, float noundef %534) #17
  br label %545

540:                                              ; preds = %523
  %541 = load float, ptr %54, align 8
  %542 = select i1 %528, float %541, float %530
  %543 = load float, ptr %55, align 4
  %544 = select i1 %528, float %543, float %541
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %531, float noundef %526, float noundef %542, float noundef %544, float noundef %534, float noundef 0.000000e+00) #17
  br label %545

545:                                              ; preds = %540, %535
  %546 = add nuw nsw i32 %529, 7
  %547 = icmp samesign ult i32 %546, %62
  br i1 %547, label %548, label %921

548:                                              ; preds = %545
  %549 = or disjoint i32 %529, 4
  %550 = zext nneg i32 %549 to i64
  br label %551

551:                                              ; preds = %548, %565
  %552 = phi i64 [ %550, %548 ], [ %566, %565 ]
  %553 = phi i32 [ %546, %548 ], [ %568, %565 ]
  %554 = getelementptr inbounds nuw float, ptr %4, i64 %552
  %555 = load float, ptr %554, align 4, !tbaa !45
  %556 = getelementptr inbounds nuw i8, ptr %554, i64 4
  %557 = load float, ptr %556, align 4, !tbaa !45
  %558 = getelementptr inbounds nuw i8, ptr %554, i64 8
  %559 = load float, ptr %558, align 4, !tbaa !45
  %560 = zext nneg i32 %553 to i64
  %561 = getelementptr inbounds nuw float, ptr %4, i64 %560
  %562 = load float, ptr %561, align 4, !tbaa !45
  br i1 %527, label %563, label %564

563:                                              ; preds = %551
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %555, float noundef 0.000000e+00, float noundef %557, float noundef %559, float noundef %562, float noundef 0.000000e+00) #17
  br label %565

564:                                              ; preds = %551
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef 0.000000e+00, float noundef %555, float noundef %557, float noundef %559, float noundef 0.000000e+00, float noundef %562) #17
  br label %565

565:                                              ; preds = %564, %563
  %566 = add nuw nsw i64 %552, 4
  %567 = trunc i64 %552 to i32
  %568 = add i32 %567, 7
  %569 = icmp slt i32 %568, %62
  br i1 %569, label %551, label %921, !llvm.loop !120

570:                                              ; preds = %56
  %571 = icmp eq i32 %63, 0
  br i1 %571, label %572, label %693

572:                                              ; preds = %570
  %573 = load i32, ptr %36, align 4, !tbaa !122
  %574 = icmp eq i32 %573, 0
  br i1 %574, label %693, label %575

575:                                              ; preds = %572
  %576 = load ptr, ptr %37, align 8, !tbaa !15
  %577 = tail call i32 @llvm.smin.i32(i32 %573, i32 0)
  %578 = icmp sgt i32 %573, 0
  br i1 %578, label %579, label %585

579:                                              ; preds = %575
  %580 = zext nneg i32 %577 to i64
  %581 = getelementptr inbounds nuw i8, ptr %576, i64 %580
  %582 = load i8, ptr %581, align 1, !tbaa !8
  switch i8 %582, label %681 [
    i8 0, label %585
    i8 3, label %583
  ]

583:                                              ; preds = %579
  %584 = icmp eq i32 %573, 1
  br i1 %584, label %602, label %597

585:                                              ; preds = %579, %575
  %586 = phi i32 [ 1, %579 ], [ %577, %575 ]
  %587 = add nsw i32 %586, %1
  %588 = icmp slt i32 %587, 0
  %589 = tail call i32 @llvm.smin.i32(i32 %587, i32 %573)
  %590 = select i1 %588, i32 %573, i32 %589
  %591 = icmp slt i32 %590, %573
  br i1 %591, label %592, label %681

592:                                              ; preds = %585
  %593 = sext i32 %590 to i64
  %594 = getelementptr inbounds i8, ptr %576, i64 %593
  %595 = load i8, ptr %594, align 1, !tbaa !8
  %596 = zext i8 %595 to i32
  br label %681

597:                                              ; preds = %583
  %598 = getelementptr inbounds nuw i8, ptr %576, i64 1
  %599 = load i8, ptr %598, align 1, !tbaa !8
  %600 = zext i8 %599 to i32
  %601 = shl nuw nsw i32 %600, 8
  br label %602

602:                                              ; preds = %597, %583
  %603 = phi i32 [ 2, %597 ], [ 1, %583 ]
  %604 = phi i32 [ %601, %597 ], [ 0, %583 ]
  %605 = icmp samesign ult i32 %603, %573
  br i1 %605, label %606, label %613

606:                                              ; preds = %602
  %607 = add nuw nsw i32 %603, 1
  %608 = zext nneg i32 %603 to i64
  %609 = getelementptr inbounds nuw i8, ptr %576, i64 %608
  %610 = load i8, ptr %609, align 1, !tbaa !8
  %611 = zext i8 %610 to i32
  %612 = or disjoint i32 %604, %611
  br label %613

613:                                              ; preds = %606, %602
  %614 = phi i32 [ %607, %606 ], [ %603, %602 ]
  %615 = phi i32 [ %612, %606 ], [ %604, %602 ]
  %616 = icmp samesign ult i32 %614, %573
  br i1 %616, label %617, label %624

617:                                              ; preds = %613
  %618 = add nuw nsw i32 %614, 1
  %619 = zext nneg i32 %614 to i64
  %620 = getelementptr inbounds nuw i8, ptr %576, i64 %619
  %621 = load i8, ptr %620, align 1, !tbaa !8
  %622 = zext i8 %621 to i32
  %623 = shl nuw nsw i32 %622, 8
  br label %624

624:                                              ; preds = %617, %613
  %625 = phi i32 [ %618, %617 ], [ %614, %613 ]
  %626 = phi i32 [ %623, %617 ], [ 0, %613 ]
  %627 = icmp samesign ult i32 %625, %573
  br i1 %627, label %628, label %635

628:                                              ; preds = %624
  %629 = add nuw nsw i32 %625, 1
  %630 = zext nneg i32 %625 to i64
  %631 = getelementptr inbounds nuw i8, ptr %576, i64 %630
  %632 = load i8, ptr %631, align 1, !tbaa !8
  %633 = zext i8 %632 to i32
  %634 = or disjoint i32 %626, %633
  br label %635

635:                                              ; preds = %628, %624
  %636 = phi i32 [ %629, %628 ], [ %625, %624 ]
  %637 = phi i32 [ %634, %628 ], [ %626, %624 ]
  %638 = icmp eq i32 %615, 0
  br i1 %638, label %681, label %642

639:                                              ; preds = %675
  %640 = add nuw nsw i32 %644, 1
  %641 = icmp eq i32 %640, %615
  br i1 %641, label %681, label %642, !llvm.loop !123

642:                                              ; preds = %635, %639
  %643 = phi i32 [ %677, %639 ], [ %637, %635 ]
  %644 = phi i32 [ %640, %639 ], [ 0, %635 ]
  %645 = phi i32 [ %676, %639 ], [ %636, %635 ]
  %646 = icmp slt i32 %645, %573
  br i1 %646, label %647, label %653

647:                                              ; preds = %642
  %648 = add nsw i32 %645, 1
  %649 = sext i32 %645 to i64
  %650 = getelementptr inbounds i8, ptr %576, i64 %649
  %651 = load i8, ptr %650, align 1, !tbaa !8
  %652 = zext i8 %651 to i32
  br label %653

653:                                              ; preds = %647, %642
  %654 = phi i32 [ %648, %647 ], [ %645, %642 ]
  %655 = phi i32 [ %652, %647 ], [ 0, %642 ]
  %656 = icmp slt i32 %654, %573
  br i1 %656, label %657, label %664

657:                                              ; preds = %653
  %658 = add nsw i32 %654, 1
  %659 = sext i32 %654 to i64
  %660 = getelementptr inbounds i8, ptr %576, i64 %659
  %661 = load i8, ptr %660, align 1, !tbaa !8
  %662 = zext i8 %661 to i32
  %663 = shl nuw nsw i32 %662, 8
  br label %664

664:                                              ; preds = %657, %653
  %665 = phi i32 [ %658, %657 ], [ %654, %653 ]
  %666 = phi i32 [ %663, %657 ], [ 0, %653 ]
  %667 = icmp slt i32 %665, %573
  br i1 %667, label %668, label %675

668:                                              ; preds = %664
  %669 = add nsw i32 %665, 1
  %670 = sext i32 %665 to i64
  %671 = getelementptr inbounds i8, ptr %576, i64 %670
  %672 = load i8, ptr %671, align 1, !tbaa !8
  %673 = zext i8 %672 to i32
  %674 = or disjoint i32 %666, %673
  br label %675

675:                                              ; preds = %668, %664
  %676 = phi i32 [ %669, %668 ], [ %665, %664 ]
  %677 = phi i32 [ %674, %668 ], [ %666, %664 ]
  %678 = icmp sge i32 %1, %643
  %679 = icmp slt i32 %1, %677
  %680 = select i1 %678, i1 %679, i1 false
  br i1 %680, label %681, label %639

681:                                              ; preds = %639, %675, %579, %585, %592, %635
  %682 = phi i32 [ %596, %592 ], [ 0, %585 ], [ -1, %579 ], [ -1, %635 ], [ -1, %639 ], [ %655, %675 ]
  %683 = load ptr, ptr %39, align 8
  %684 = load i64, ptr %40, align 8
  %685 = tail call fastcc { ptr, i64 } @stbtt__cff_index_get(ptr %683, i64 %684, i32 noundef %682) #17
  %686 = extractvalue { ptr, i64 } %685, 0
  %687 = extractvalue { ptr, i64 } %685, 1
  %688 = load ptr, ptr %38, align 8
  %689 = load i64, ptr %41, align 8
  %690 = tail call fastcc { ptr, i64 } @stbtt__get_subrs(ptr %688, i64 %689, ptr %686, i64 %687) #17
  %691 = extractvalue { ptr, i64 } %690, 0
  %692 = extractvalue { ptr, i64 } %690, 1
  br label %693

693:                                              ; preds = %572, %681, %570, %56
  %694 = phi ptr [ %65, %570 ], [ %65, %56 ], [ %691, %681 ], [ %65, %572 ]
  %695 = phi i64 [ %64, %570 ], [ %64, %56 ], [ %692, %681 ], [ %64, %572 ]
  %696 = phi i32 [ 1, %570 ], [ %63, %56 ], [ 1, %681 ], [ 1, %572 ]
  %697 = icmp slt i32 %62, 1
  br i1 %697, label %932, label %698

698:                                              ; preds = %693
  %699 = add nsw i32 %62, -1
  %700 = zext nneg i32 %699 to i64
  %701 = getelementptr inbounds nuw float, ptr %4, i64 %700
  %702 = load float, ptr %701, align 4, !tbaa !45
  %703 = fptosi float %702 to i32
  %704 = icmp sgt i32 %61, 9
  br i1 %704, label %932, label %705

705:                                              ; preds = %698
  %706 = add nsw i32 %61, 1
  %707 = sext i32 %61 to i64
  %708 = getelementptr inbounds %struct.stbtt__buf, ptr %5, i64 %707
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %708, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !25
  %709 = icmp eq i8 %70, 10
  br i1 %709, label %713, label %710

710:                                              ; preds = %705
  %711 = load ptr, ptr %42, align 8, !tbaa !15
  %712 = load i64, ptr %43, align 8
  br label %713

713:                                              ; preds = %705, %710
  %714 = phi i64 [ %712, %710 ], [ %695, %705 ]
  %715 = phi ptr [ %711, %710 ], [ %694, %705 ]
  %716 = lshr i64 %714, 32
  %717 = trunc nuw i64 %716 to i32
  %718 = tail call i32 @llvm.smin.i32(i32 %717, i32 0)
  %719 = icmp sgt i32 %717, 0
  br i1 %719, label %720, label %726

720:                                              ; preds = %713
  %721 = zext nneg i32 %718 to i64
  %722 = getelementptr inbounds nuw i8, ptr %715, i64 %721
  %723 = load i8, ptr %722, align 1, !tbaa !8
  %724 = zext i8 %723 to i32
  %725 = shl nuw nsw i32 %724, 8
  br label %726

726:                                              ; preds = %720, %713
  %727 = phi i32 [ 1, %720 ], [ %718, %713 ]
  %728 = phi i32 [ %725, %720 ], [ 0, %713 ]
  %729 = icmp slt i32 %727, %717
  br i1 %729, label %730, label %737

730:                                              ; preds = %726
  %731 = add nsw i32 %727, 1
  %732 = sext i32 %727 to i64
  %733 = getelementptr inbounds i8, ptr %715, i64 %732
  %734 = load i8, ptr %733, align 1, !tbaa !8
  %735 = zext i8 %734 to i32
  %736 = or disjoint i32 %728, %735
  br label %737

737:                                              ; preds = %730, %726
  %738 = phi i32 [ %731, %730 ], [ %727, %726 ]
  %739 = phi i32 [ %736, %730 ], [ %728, %726 ]
  %740 = icmp samesign ugt i32 %739, 33899
  %741 = icmp samesign ugt i32 %739, 1239
  %742 = select i1 %741, i32 1131, i32 107
  %743 = select i1 %740, i32 32768, i32 %742
  %744 = add nsw i32 %743, %703
  %745 = icmp sgt i32 %744, -1
  %746 = icmp slt i32 %744, %739
  %747 = and i1 %745, %746
  br i1 %747, label %748, label %753

748:                                              ; preds = %737
  %749 = and i64 %714, -4294967296
  %750 = zext i32 %738 to i64
  %751 = or disjoint i64 %749, %750
  %752 = tail call fastcc { ptr, i64 } @stbtt__cff_index_get(ptr readonly %715, i64 %751, i32 noundef %744) #17
  br label %753

753:                                              ; preds = %737, %748
  %754 = phi { ptr, i64 } [ %752, %748 ], [ zeroinitializer, %737 ]
  %755 = extractvalue { ptr, i64 } %754, 0
  %756 = extractvalue { ptr, i64 } %754, 1
  store ptr %755, ptr %6, align 8, !tbaa !15
  store i64 %756, ptr %18, align 8
  %757 = icmp ult i64 %756, 4294967296
  br i1 %757, label %932, label %758

758:                                              ; preds = %753
  store i32 0, ptr %18, align 8, !tbaa !26
  br label %921

759:                                              ; preds = %56
  %760 = icmp slt i32 %61, 1
  br i1 %760, label %932, label %761

761:                                              ; preds = %759
  %762 = add nsw i32 %61, -1
  %763 = zext nneg i32 %762 to i64
  %764 = getelementptr inbounds nuw %struct.stbtt__buf, ptr %5, i64 %763
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 16 dereferenceable(16) %764, i64 16, i1 false), !tbaa.struct !25
  br label %921

765:                                              ; preds = %56
  tail call fastcc void @stbtt__csctx_close_shape(ptr noundef %2) #17
  br label %932

766:                                              ; preds = %56
  %767 = icmp slt i32 %67, %57
  br i1 %767, label %768, label %932

768:                                              ; preds = %766
  %769 = add nsw i32 %58, 2
  store i32 %769, ptr %18, align 8, !tbaa !26
  %770 = sext i32 %67 to i64
  %771 = getelementptr inbounds i8, ptr %66, i64 %770
  %772 = load i8, ptr %771, align 1, !tbaa !8
  switch i8 %772, label %932 [
    i8 34, label %773
    i8 35, label %784
    i8 36, label %799
    i8 37, label %814
  ]

773:                                              ; preds = %768
  %774 = icmp slt i32 %62, 7
  br i1 %774, label %932, label %775

775:                                              ; preds = %773
  %776 = load float, ptr %4, align 16, !tbaa !45
  %777 = load float, ptr %25, align 4, !tbaa !45
  %778 = load float, ptr %26, align 8, !tbaa !45
  %779 = load float, ptr %27, align 4, !tbaa !45
  %780 = load float, ptr %28, align 16, !tbaa !45
  %781 = load float, ptr %29, align 4, !tbaa !45
  %782 = load float, ptr %30, align 8, !tbaa !45
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %776, float noundef 0.000000e+00, float noundef %777, float noundef %778, float noundef %779, float noundef 0.000000e+00) #17
  %783 = fneg float %778
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %780, float noundef 0.000000e+00, float noundef %781, float noundef %783, float noundef %782, float noundef 0.000000e+00) #17
  br label %921

784:                                              ; preds = %768
  %785 = icmp slt i32 %62, 13
  br i1 %785, label %932, label %786

786:                                              ; preds = %784
  %787 = load float, ptr %4, align 16, !tbaa !45
  %788 = load float, ptr %25, align 4, !tbaa !45
  %789 = load float, ptr %26, align 8, !tbaa !45
  %790 = load float, ptr %27, align 4, !tbaa !45
  %791 = load float, ptr %28, align 16, !tbaa !45
  %792 = load float, ptr %29, align 4, !tbaa !45
  %793 = load float, ptr %30, align 8, !tbaa !45
  %794 = load float, ptr %31, align 4, !tbaa !45
  %795 = load float, ptr %32, align 16, !tbaa !45
  %796 = load float, ptr %33, align 4, !tbaa !45
  %797 = load float, ptr %34, align 8, !tbaa !45
  %798 = load float, ptr %35, align 4, !tbaa !45
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %787, float noundef %788, float noundef %789, float noundef %790, float noundef %791, float noundef %792) #17
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %793, float noundef %794, float noundef %795, float noundef %796, float noundef %797, float noundef %798) #17
  br label %921

799:                                              ; preds = %768
  %800 = icmp slt i32 %62, 9
  br i1 %800, label %932, label %801

801:                                              ; preds = %799
  %802 = load float, ptr %4, align 16, !tbaa !45
  %803 = load float, ptr %25, align 4, !tbaa !45
  %804 = load float, ptr %26, align 8, !tbaa !45
  %805 = load float, ptr %27, align 4, !tbaa !45
  %806 = load float, ptr %28, align 16, !tbaa !45
  %807 = load float, ptr %29, align 4, !tbaa !45
  %808 = load float, ptr %30, align 8, !tbaa !45
  %809 = load float, ptr %31, align 4, !tbaa !45
  %810 = load float, ptr %32, align 16, !tbaa !45
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %802, float noundef %803, float noundef %804, float noundef %805, float noundef %806, float noundef 0.000000e+00) #17
  %811 = fadd float %803, %805
  %812 = fadd float %811, %809
  %813 = fneg float %812
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %807, float noundef 0.000000e+00, float noundef %808, float noundef %809, float noundef %810, float noundef %813) #17
  br label %921

814:                                              ; preds = %768
  %815 = icmp slt i32 %62, 11
  br i1 %815, label %932, label %816

816:                                              ; preds = %814
  %817 = load float, ptr %34, align 8, !tbaa !45
  %818 = load <2 x float>, ptr %4, align 16, !tbaa !45
  %819 = load <2 x float>, ptr %26, align 8, !tbaa !45
  %820 = load <2 x float>, ptr %28, align 16, !tbaa !45
  %821 = load <2 x float>, ptr %30, align 8, !tbaa !45
  %822 = load <2 x float>, ptr %32, align 16, !tbaa !45
  %823 = fadd <2 x float> %818, %819
  %824 = fadd <2 x float> %823, %820
  %825 = fadd <2 x float> %824, %821
  %826 = fadd <2 x float> %825, %822
  %827 = fpext <2 x float> %826 to <2 x double>
  %828 = fcmp olt <2 x float> %826, zeroinitializer
  %829 = fneg <2 x double> %827
  %830 = select <2 x i1> %828, <2 x double> %829, <2 x double> %827
  %831 = extractelement <2 x double> %830, i64 0
  %832 = extractelement <2 x double> %830, i64 1
  %833 = fcmp ogt double %831, %832
  %834 = extractelement <2 x float> %826, i64 1
  %835 = fneg float %834
  %836 = extractelement <2 x float> %826, i64 0
  %837 = fneg float %836
  %838 = select i1 %833, float %817, float %837
  %839 = select i1 %833, float %835, float %817
  %840 = extractelement <2 x float> %818, i64 0
  %841 = extractelement <2 x float> %818, i64 1
  %842 = extractelement <2 x float> %819, i64 0
  %843 = extractelement <2 x float> %819, i64 1
  %844 = extractelement <2 x float> %820, i64 0
  %845 = extractelement <2 x float> %820, i64 1
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %840, float noundef %841, float noundef %842, float noundef %843, float noundef %844, float noundef %845) #17
  %846 = extractelement <2 x float> %821, i64 0
  %847 = extractelement <2 x float> %821, i64 1
  %848 = extractelement <2 x float> %822, i64 0
  %849 = extractelement <2 x float> %822, i64 1
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %846, float noundef %847, float noundef %848, float noundef %849, float noundef %838, float noundef %839) #17
  br label %921

850:                                              ; preds = %56
  %851 = icmp ne i8 %70, 28
  %852 = icmp ult i8 %70, 32
  %853 = and i1 %852, %851
  br i1 %853, label %932, label %854

854:                                              ; preds = %850
  %855 = icmp eq i8 %70, -1
  br i1 %855, label %856, label %905

856:                                              ; preds = %854
  %857 = icmp slt i32 %67, %57
  br i1 %857, label %858, label %865

858:                                              ; preds = %856
  %859 = add nsw i32 %58, 2
  %860 = sext i32 %67 to i64
  %861 = getelementptr inbounds i8, ptr %66, i64 %860
  %862 = load i8, ptr %861, align 1, !tbaa !8
  %863 = zext i8 %862 to i32
  %864 = shl nuw nsw i32 %863, 8
  br label %865

865:                                              ; preds = %858, %856
  %866 = phi i32 [ %859, %858 ], [ %67, %856 ]
  %867 = phi i32 [ %864, %858 ], [ 0, %856 ]
  %868 = icmp slt i32 %866, %57
  br i1 %868, label %869, label %876

869:                                              ; preds = %865
  %870 = add nsw i32 %866, 1
  %871 = sext i32 %866 to i64
  %872 = getelementptr inbounds i8, ptr %66, i64 %871
  %873 = load i8, ptr %872, align 1, !tbaa !8
  %874 = zext i8 %873 to i32
  %875 = or disjoint i32 %867, %874
  br label %876

876:                                              ; preds = %869, %865
  %877 = phi i32 [ %870, %869 ], [ %866, %865 ]
  %878 = phi i32 [ %875, %869 ], [ %867, %865 ]
  %879 = shl nuw nsw i32 %878, 8
  %880 = icmp slt i32 %877, %57
  br i1 %880, label %881, label %888

881:                                              ; preds = %876
  %882 = add nsw i32 %877, 1
  %883 = sext i32 %877 to i64
  %884 = getelementptr inbounds i8, ptr %66, i64 %883
  %885 = load i8, ptr %884, align 1, !tbaa !8
  %886 = zext i8 %885 to i32
  %887 = or disjoint i32 %879, %886
  br label %888

888:                                              ; preds = %881, %876
  %889 = phi i32 [ %882, %881 ], [ %877, %876 ]
  %890 = phi i32 [ %887, %881 ], [ %879, %876 ]
  %891 = shl nuw i32 %890, 8
  %892 = icmp slt i32 %889, %57
  br i1 %892, label %893, label %900

893:                                              ; preds = %888
  %894 = add nsw i32 %889, 1
  %895 = sext i32 %889 to i64
  %896 = getelementptr inbounds i8, ptr %66, i64 %895
  %897 = load i8, ptr %896, align 1, !tbaa !8
  %898 = zext i8 %897 to i32
  %899 = or disjoint i32 %891, %898
  br label %900

900:                                              ; preds = %893, %888
  %901 = phi i32 [ %894, %893 ], [ %889, %888 ]
  %902 = phi i32 [ %899, %893 ], [ %891, %888 ]
  store i32 %901, ptr %18, align 8
  %903 = sitofp i32 %902 to float
  %904 = fmul float %903, 0x3EF0000000000000
  br label %912

905:                                              ; preds = %854
  %906 = icmp slt i32 %58, 0
  %907 = tail call i32 @llvm.smin.i32(i32 %58, i32 %57)
  %908 = select i1 %906, i32 %57, i32 %907
  store i32 %908, ptr %18, align 8, !tbaa !26
  %909 = call fastcc i32 @stbtt__cff_int(ptr noundef %6) #17
  %910 = trunc i32 %909 to i16
  %911 = sitofp i16 %910 to float
  br label %912

912:                                              ; preds = %905, %900
  %913 = phi float [ %904, %900 ], [ %911, %905 ]
  %914 = icmp sgt i32 %62, 47
  br i1 %914, label %932, label %915

915:                                              ; preds = %912
  %916 = add nsw i32 %62, 1
  %917 = sext i32 %62 to i64
  %918 = getelementptr inbounds float, ptr %4, i64 %917
  store float %913, ptr %918, align 4, !tbaa !45
  br label %921

919:                                              ; preds = %164
  %920 = trunc nsw i64 %165 to i32
  store <2 x float> %125, ptr %44, align 8, !tbaa !45
  store i32 %920, ptr %50, align 8, !tbaa !116
  br label %921

921:                                              ; preds = %565, %341, %545, %519, %919, %816, %801, %786, %775, %501, %433, %291, %314, %173, %230, %105, %98, %89, %84, %76, %915, %761, %758
  %922 = phi i32 [ %59, %761 ], [ %59, %915 ], [ %59, %758 ], [ %59, %816 ], [ %59, %801 ], [ %59, %786 ], [ %59, %775 ], [ %59, %519 ], [ %59, %501 ], [ %59, %433 ], [ %59, %919 ], [ %59, %291 ], [ %59, %314 ], [ %59, %173 ], [ %59, %230 ], [ 0, %76 ], [ 0, %105 ], [ 0, %98 ], [ 0, %89 ], [ %59, %84 ], [ %59, %545 ], [ %59, %341 ], [ %59, %565 ]
  %923 = phi i32 [ %60, %761 ], [ %60, %915 ], [ %60, %758 ], [ %60, %816 ], [ %60, %801 ], [ %60, %786 ], [ %60, %775 ], [ %60, %519 ], [ %60, %501 ], [ %60, %433 ], [ %60, %919 ], [ %60, %291 ], [ %60, %314 ], [ %60, %173 ], [ %60, %230 ], [ %77, %76 ], [ %60, %105 ], [ %60, %98 ], [ %60, %89 ], [ %86, %84 ], [ %60, %545 ], [ %60, %341 ], [ %60, %565 ]
  %924 = phi i32 [ %762, %761 ], [ %61, %915 ], [ %706, %758 ], [ %61, %816 ], [ %61, %801 ], [ %61, %786 ], [ %61, %775 ], [ %61, %519 ], [ %61, %501 ], [ %61, %433 ], [ %61, %919 ], [ %61, %291 ], [ %61, %314 ], [ %61, %173 ], [ %61, %230 ], [ %61, %76 ], [ %61, %105 ], [ %61, %98 ], [ %61, %89 ], [ %61, %84 ], [ %61, %545 ], [ %61, %341 ], [ %61, %565 ]
  %925 = phi i32 [ %63, %761 ], [ %63, %915 ], [ %696, %758 ], [ %63, %816 ], [ %63, %801 ], [ %63, %786 ], [ %63, %775 ], [ %63, %519 ], [ %63, %501 ], [ %63, %433 ], [ %63, %919 ], [ %63, %291 ], [ %63, %314 ], [ %63, %173 ], [ %63, %230 ], [ %63, %76 ], [ %63, %105 ], [ %63, %98 ], [ %63, %89 ], [ %63, %84 ], [ %63, %545 ], [ %63, %341 ], [ %63, %565 ]
  %926 = phi i64 [ %64, %761 ], [ %64, %915 ], [ %695, %758 ], [ %64, %816 ], [ %64, %801 ], [ %64, %786 ], [ %64, %775 ], [ %64, %519 ], [ %64, %501 ], [ %64, %433 ], [ %64, %919 ], [ %64, %291 ], [ %64, %314 ], [ %64, %173 ], [ %64, %230 ], [ %64, %76 ], [ %64, %105 ], [ %64, %98 ], [ %64, %89 ], [ %64, %84 ], [ %64, %545 ], [ %64, %341 ], [ %64, %565 ]
  %927 = phi ptr [ %65, %761 ], [ %65, %915 ], [ %694, %758 ], [ %65, %816 ], [ %65, %801 ], [ %65, %786 ], [ %65, %775 ], [ %65, %519 ], [ %65, %501 ], [ %65, %433 ], [ %65, %919 ], [ %65, %291 ], [ %65, %314 ], [ %65, %173 ], [ %65, %230 ], [ %65, %76 ], [ %65, %105 ], [ %65, %98 ], [ %65, %89 ], [ %65, %84 ], [ %65, %545 ], [ %65, %341 ], [ %65, %565 ]
  %928 = phi i32 [ %62, %761 ], [ %916, %915 ], [ %699, %758 ], [ 0, %816 ], [ 0, %801 ], [ 0, %786 ], [ 0, %775 ], [ 0, %519 ], [ 0, %501 ], [ 0, %433 ], [ 0, %919 ], [ 0, %291 ], [ 0, %314 ], [ 0, %173 ], [ 0, %230 ], [ 0, %76 ], [ 0, %105 ], [ 0, %98 ], [ 0, %89 ], [ 0, %84 ], [ 0, %545 ], [ 0, %341 ], [ 0, %565 ]
  %929 = load i32, ptr %18, align 8, !tbaa !26
  %930 = load i32, ptr %19, align 4, !tbaa !27
  %931 = icmp slt i32 %929, %930
  br i1 %931, label %56, label %932, !llvm.loop !124

932:                                              ; preds = %87, %96, %103, %110, %169, %171, %287, %289, %337, %358, %380, %436, %496, %517, %693, %698, %753, %759, %850, %912, %921, %784, %773, %768, %799, %814, %766, %3, %765
  %933 = phi i32 [ 1, %765 ], [ 0, %3 ], [ 0, %766 ], [ 0, %814 ], [ 0, %799 ], [ 0, %768 ], [ 0, %773 ], [ 0, %784 ], [ 0, %921 ], [ 0, %912 ], [ 0, %850 ], [ 0, %759 ], [ 0, %753 ], [ 0, %698 ], [ 0, %693 ], [ 0, %517 ], [ 0, %496 ], [ 0, %436 ], [ 0, %380 ], [ 0, %358 ], [ 0, %337 ], [ 0, %289 ], [ 0, %287 ], [ 0, %171 ], [ 0, %169 ], [ 0, %110 ], [ 0, %103 ], [ 0, %96 ], [ 0, %87 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  ret i32 %933
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem0: none, target_mem1: none)
define internal fastcc void @stbtt__csctx_rmove_to(ptr noundef nonnull captures(none) %0, float noundef %1, float noundef %2) unnamed_addr #10 {
  tail call fastcc void @stbtt__csctx_close_shape(ptr noundef %0) #17
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load <2 x float>, ptr %4, align 8, !tbaa !45
  %7 = insertelement <2 x float> poison, float %1, i64 0
  %8 = insertelement <2 x float> %7, float %2, i64 1
  %9 = fadd <2 x float> %8, %6
  %10 = shufflevector <2 x float> %9, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  store <4 x float> %10, ptr %5, align 8, !tbaa !45
  %11 = fptosi <2 x float> %9 to <2 x i32>
  %12 = load i32, ptr %0, align 8, !tbaa !107
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %56, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %16 = load i32, ptr %15, align 4, !tbaa !109
  %17 = extractelement <2 x i32> %11, i64 0
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %21 = load i32, ptr %20, align 4, !tbaa !110
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19, %14
  store i32 %17, ptr %15, align 4, !tbaa !109
  br label %24

24:                                               ; preds = %23, %19
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %26 = load i32, ptr %25, align 4, !tbaa !111
  %27 = extractelement <2 x i32> %11, i64 1
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %31 = load i32, ptr %30, align 4, !tbaa !110
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29, %24
  store i32 %27, ptr %25, align 4, !tbaa !111
  br label %34

34:                                               ; preds = %33, %29
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %36 = load i32, ptr %35, align 8, !tbaa !112
  %37 = icmp sgt i32 %36, %17
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %40 = load i32, ptr %39, align 4, !tbaa !110
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38, %34
  store i32 %17, ptr %35, align 8, !tbaa !112
  br label %43

43:                                               ; preds = %42, %38
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %45 = load i32, ptr %44, align 8, !tbaa !113
  %46 = icmp sgt i32 %45, %27
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %49 = load i32, ptr %48, align 4, !tbaa !110
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47, %43
  store i32 %27, ptr %44, align 8, !tbaa !113
  br label %52

52:                                               ; preds = %51, %47
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %53, align 4, !tbaa !110
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %55 = load i32, ptr %54, align 8, !tbaa !116
  br label %66

56:                                               ; preds = %3
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %58 = load ptr, ptr %57, align 8, !tbaa !114
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %60 = load i32, ptr %59, align 8, !tbaa !116
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.stbtt_vertex, ptr %58, i64 %61
  %63 = getelementptr inbounds nuw i8, ptr %62, i64 12
  store i8 1, ptr %63, align 2, !tbaa !35
  %64 = trunc <2 x i32> %11 to <2 x i16>
  store <2 x i16> %64, ptr %62, align 2, !tbaa !44
  %65 = getelementptr inbounds nuw i8, ptr %62, i64 4
  store <4 x i16> zeroinitializer, ptr %65, align 2, !tbaa !44
  br label %66

66:                                               ; preds = %52, %56
  %67 = phi i32 [ %55, %52 ], [ %60, %56 ]
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %69 = add nsw i32 %67, 1
  store i32 %69, ptr %68, align 8, !tbaa !116
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem0: none, target_mem1: none)
define internal fastcc void @stbtt__csctx_rccurve_to(ptr noundef nonnull captures(none) %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6) unnamed_addr #10 {
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %9 = load <2 x float>, ptr %8, align 8, !tbaa !45
  %10 = insertelement <2 x float> poison, float %1, i64 0
  %11 = insertelement <2 x float> %10, float %2, i64 1
  %12 = fadd <2 x float> %11, %9
  %13 = insertelement <2 x float> poison, float %3, i64 0
  %14 = insertelement <2 x float> %13, float %4, i64 1
  %15 = fadd <2 x float> %14, %12
  %16 = insertelement <2 x float> poison, float %5, i64 0
  %17 = insertelement <2 x float> %16, float %6, i64 1
  %18 = fadd <2 x float> %17, %15
  store <2 x float> %18, ptr %8, align 8, !tbaa !45
  %19 = shufflevector <2 x float> %18, <2 x float> %12, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %20 = fptosi <4 x float> %19 to <4 x i32>
  %21 = fptosi <2 x float> %15 to <2 x i32>
  %22 = load i32, ptr %0, align 8, !tbaa !107
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %102, label %24

24:                                               ; preds = %7
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %26 = load i32, ptr %25, align 4, !tbaa !109
  %27 = extractelement <4 x i32> %20, i64 0
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %31 = load i32, ptr %30, align 4, !tbaa !110
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29, %24
  store i32 %27, ptr %25, align 4, !tbaa !109
  br label %34

34:                                               ; preds = %33, %29
  %35 = phi i32 [ %27, %33 ], [ %26, %29 ]
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %37 = load i32, ptr %36, align 4, !tbaa !111
  %38 = extractelement <4 x i32> %20, i64 1
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %42 = load i32, ptr %41, align 4, !tbaa !110
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40, %34
  store i32 %38, ptr %36, align 4, !tbaa !111
  br label %45

45:                                               ; preds = %44, %40
  %46 = phi i32 [ %38, %44 ], [ %37, %40 ]
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %48 = load i32, ptr %47, align 8, !tbaa !112
  %49 = icmp sgt i32 %48, %27
  br i1 %49, label %54, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %52 = load i32, ptr %51, align 4, !tbaa !110
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50, %45
  store i32 %27, ptr %47, align 8, !tbaa !112
  br label %55

55:                                               ; preds = %54, %50
  %56 = phi i32 [ %27, %54 ], [ %48, %50 ]
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %58 = load i32, ptr %57, align 8, !tbaa !113
  %59 = icmp sgt i32 %58, %38
  br i1 %59, label %64, label %60

60:                                               ; preds = %55
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %62 = load i32, ptr %61, align 4, !tbaa !110
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %60, %55
  store i32 %38, ptr %57, align 8, !tbaa !113
  br label %65

65:                                               ; preds = %64, %60
  %66 = phi i32 [ %58, %60 ], [ %38, %64 ]
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %67, align 4, !tbaa !110
  %68 = extractelement <4 x i32> %20, i64 2
  %69 = icmp slt i32 %35, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  store i32 %68, ptr %25, align 4, !tbaa !109
  br label %71

71:                                               ; preds = %70, %65
  %72 = phi i32 [ %35, %65 ], [ %68, %70 ]
  %73 = extractelement <4 x i32> %20, i64 3
  %74 = icmp slt i32 %46, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  store i32 %73, ptr %36, align 4, !tbaa !111
  br label %76

76:                                               ; preds = %75, %71
  %77 = phi i32 [ %46, %71 ], [ %73, %75 ]
  %78 = icmp sgt i32 %56, %68
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  store i32 %68, ptr %47, align 8, !tbaa !112
  br label %80

80:                                               ; preds = %79, %76
  %81 = phi i32 [ %56, %76 ], [ %68, %79 ]
  %82 = icmp sgt i32 %66, %73
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  store i32 %73, ptr %57, align 8, !tbaa !113
  br label %84

84:                                               ; preds = %83, %80
  %85 = phi i32 [ %66, %80 ], [ %73, %83 ]
  %86 = extractelement <2 x i32> %21, i64 0
  %87 = icmp slt i32 %72, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  store i32 %86, ptr %25, align 4, !tbaa !109
  br label %89

89:                                               ; preds = %88, %84
  %90 = extractelement <2 x i32> %21, i64 1
  %91 = icmp slt i32 %77, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  store i32 %90, ptr %36, align 4, !tbaa !111
  br label %93

93:                                               ; preds = %92, %89
  %94 = icmp sgt i32 %81, %86
  br i1 %94, label %95, label %96

95:                                               ; preds = %93
  store i32 %86, ptr %47, align 8, !tbaa !112
  br label %96

96:                                               ; preds = %95, %93
  %97 = icmp sgt i32 %85, %90
  br i1 %97, label %98, label %99

98:                                               ; preds = %96
  store i32 %90, ptr %57, align 8, !tbaa !113
  br label %99

99:                                               ; preds = %98, %96
  store i32 1, ptr %67, align 4, !tbaa !110
  %100 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %101 = load i32, ptr %100, align 8, !tbaa !116
  br label %113

102:                                              ; preds = %7
  %103 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %104 = load ptr, ptr %103, align 8, !tbaa !114
  %105 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %106 = load i32, ptr %105, align 8, !tbaa !116
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.stbtt_vertex, ptr %104, i64 %107
  %109 = getelementptr inbounds nuw i8, ptr %108, i64 12
  store i8 4, ptr %109, align 2, !tbaa !35
  %110 = trunc <4 x i32> %20 to <4 x i16>
  store <4 x i16> %110, ptr %108, align 2, !tbaa !44
  %111 = trunc <2 x i32> %21 to <2 x i16>
  %112 = getelementptr inbounds nuw i8, ptr %108, i64 8
  store <2 x i16> %111, ptr %112, align 2, !tbaa !44
  br label %113

113:                                              ; preds = %99, %102
  %114 = phi i32 [ %101, %99 ], [ %106, %102 ]
  %115 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %116 = add nsw i32 %114, 1
  store i32 %116, ptr %115, align 8, !tbaa !116
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem0: none, target_mem1: none)
define internal fastcc void @stbtt__csctx_close_shape(ptr noundef nonnull captures(none) %0) unnamed_addr #10 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %4 = load float, ptr %3, align 8, !tbaa !125
  %5 = load <2 x float>, ptr %2, align 8, !tbaa !45
  %6 = extractelement <2 x float> %5, i64 0
  %7 = fcmp une float %6, %4
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %10 = load float, ptr %9, align 4, !tbaa !126
  %11 = extractelement <2 x float> %5, i64 1
  %12 = fcmp une float %11, %10
  br i1 %12, label %13, label %73

13:                                               ; preds = %1, %8
  %14 = fptosi <2 x float> %5 to <2 x i32>
  %15 = load i32, ptr %0, align 8, !tbaa !107
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %59, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %19 = load i32, ptr %18, align 4, !tbaa !109
  %20 = extractelement <2 x i32> %14, i64 0
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %24 = load i32, ptr %23, align 4, !tbaa !110
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22, %17
  store i32 %20, ptr %18, align 4, !tbaa !109
  br label %27

27:                                               ; preds = %26, %22
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %29 = load i32, ptr %28, align 4, !tbaa !111
  %30 = extractelement <2 x i32> %14, i64 1
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %34 = load i32, ptr %33, align 4, !tbaa !110
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32, %27
  store i32 %30, ptr %28, align 4, !tbaa !111
  br label %37

37:                                               ; preds = %36, %32
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %39 = load i32, ptr %38, align 8, !tbaa !112
  %40 = icmp sgt i32 %39, %20
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %43 = load i32, ptr %42, align 4, !tbaa !110
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41, %37
  store i32 %20, ptr %38, align 8, !tbaa !112
  br label %46

46:                                               ; preds = %45, %41
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %48 = load i32, ptr %47, align 8, !tbaa !113
  %49 = icmp sgt i32 %48, %30
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %52 = load i32, ptr %51, align 4, !tbaa !110
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50, %46
  store i32 %30, ptr %47, align 8, !tbaa !113
  br label %55

55:                                               ; preds = %54, %50
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %56, align 4, !tbaa !110
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %58 = load i32, ptr %57, align 8, !tbaa !116
  br label %69

59:                                               ; preds = %13
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %61 = load ptr, ptr %60, align 8, !tbaa !114
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %63 = load i32, ptr %62, align 8, !tbaa !116
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.stbtt_vertex, ptr %61, i64 %64
  %66 = getelementptr inbounds nuw i8, ptr %65, i64 12
  store i8 2, ptr %66, align 2, !tbaa !35
  %67 = trunc <2 x i32> %14 to <2 x i16>
  store <2 x i16> %67, ptr %65, align 2, !tbaa !44
  %68 = getelementptr inbounds nuw i8, ptr %65, i64 4
  store <4 x i16> zeroinitializer, ptr %68, align 2, !tbaa !44
  br label %69

69:                                               ; preds = %55, %59
  %70 = phi i32 [ %58, %55 ], [ %63, %59 ]
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %72 = add nsw i32 %70, 1
  store i32 %72, ptr %71, align 8, !tbaa !116
  br label %73

73:                                               ; preds = %69, %8
  ret void
}

; Function Attrs: nounwind
define internal fastcc i32 @stbtt_GetGlyphShape(ptr noundef nonnull readonly captures(none) %0, i32 noundef %1, ptr noundef nonnull writeonly captures(none) initializes((0, 8)) %2) unnamed_addr #0 {
  %4 = alloca %struct.stbtt__csctx, align 8
  %5 = alloca %struct.stbtt__csctx, align 8
  %6 = alloca ptr, align 8
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %8 = load i32, ptr %7, align 4, !tbaa !106
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %895

10:                                               ; preds = %3
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %12 = load ptr, ptr %11, align 8, !tbaa !9
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %14 = load i32, ptr %13, align 4, !tbaa !30
  %15 = icmp slt i32 %1, %14
  br i1 %15, label %16, label %93

16:                                               ; preds = %10
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 60
  %18 = load i32, ptr %17, align 4, !tbaa !33
  %19 = icmp sgt i32 %18, 1
  br i1 %19, label %93, label %20

20:                                               ; preds = %16
  %21 = icmp eq i32 %18, 0
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %23 = load i32, ptr %22, align 8, !tbaa !22
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %25 = load i32, ptr %24, align 8, !tbaa !20
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, ptr %12, i64 %26
  br i1 %21, label %28, label %49

28:                                               ; preds = %20
  %29 = shl nsw i32 %1, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, ptr %27, i64 %30
  %32 = load i8, ptr %31, align 1, !tbaa !8
  %33 = zext i8 %32 to i32
  %34 = getelementptr inbounds nuw i8, ptr %31, i64 1
  %35 = load i8, ptr %34, align 1, !tbaa !8
  %36 = zext i8 %35 to i32
  %37 = shl nuw nsw i32 %33, 9
  %38 = shl nuw nsw i32 %36, 1
  %39 = or disjoint i32 %38, %37
  %40 = getelementptr inbounds nuw i8, ptr %31, i64 2
  %41 = load i8, ptr %40, align 1, !tbaa !8
  %42 = zext i8 %41 to i32
  %43 = getelementptr inbounds nuw i8, ptr %31, i64 3
  %44 = load i8, ptr %43, align 1, !tbaa !8
  %45 = zext i8 %44 to i32
  %46 = shl nuw nsw i32 %42, 9
  %47 = shl nuw nsw i32 %45, 1
  %48 = or disjoint i32 %47, %46
  br label %88

49:                                               ; preds = %20
  %50 = shl nsw i32 %1, 2
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, ptr %27, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !8
  %54 = zext i8 %53 to i32
  %55 = shl nuw i32 %54, 24
  %56 = getelementptr inbounds nuw i8, ptr %52, i64 1
  %57 = load i8, ptr %56, align 1, !tbaa !8
  %58 = zext i8 %57 to i32
  %59 = shl nuw nsw i32 %58, 16
  %60 = or disjoint i32 %59, %55
  %61 = getelementptr inbounds nuw i8, ptr %52, i64 2
  %62 = load i8, ptr %61, align 1, !tbaa !8
  %63 = zext i8 %62 to i32
  %64 = shl nuw nsw i32 %63, 8
  %65 = or disjoint i32 %60, %64
  %66 = getelementptr inbounds nuw i8, ptr %52, i64 3
  %67 = load i8, ptr %66, align 1, !tbaa !8
  %68 = zext i8 %67 to i32
  %69 = or disjoint i32 %65, %68
  %70 = getelementptr inbounds nuw i8, ptr %52, i64 4
  %71 = load i8, ptr %70, align 1, !tbaa !8
  %72 = zext i8 %71 to i32
  %73 = shl nuw i32 %72, 24
  %74 = getelementptr inbounds nuw i8, ptr %52, i64 5
  %75 = load i8, ptr %74, align 1, !tbaa !8
  %76 = zext i8 %75 to i32
  %77 = shl nuw nsw i32 %76, 16
  %78 = or disjoint i32 %77, %73
  %79 = getelementptr inbounds nuw i8, ptr %52, i64 6
  %80 = load i8, ptr %79, align 1, !tbaa !8
  %81 = zext i8 %80 to i32
  %82 = shl nuw nsw i32 %81, 8
  %83 = or disjoint i32 %78, %82
  %84 = getelementptr inbounds nuw i8, ptr %52, i64 7
  %85 = load i8, ptr %84, align 1, !tbaa !8
  %86 = zext i8 %85 to i32
  %87 = or disjoint i32 %83, %86
  br label %88

88:                                               ; preds = %49, %28
  %89 = phi i32 [ %87, %49 ], [ %48, %28 ]
  %90 = phi i32 [ %69, %49 ], [ %39, %28 ]
  %91 = add i32 %90, %23
  %92 = icmp eq i32 %90, %89
  br i1 %92, label %93, label %94

93:                                               ; preds = %10, %16, %88
  store ptr null, ptr %2, align 8, !tbaa !34
  br label %922

94:                                               ; preds = %88
  store ptr null, ptr %2, align 8, !tbaa !34
  %95 = icmp slt i32 %91, 0
  br i1 %95, label %922, label %96

96:                                               ; preds = %94
  %97 = zext nneg i32 %91 to i64
  %98 = getelementptr inbounds nuw i8, ptr %12, i64 %97
  %99 = load i8, ptr %98, align 1, !tbaa !8
  %100 = zext i8 %99 to i16
  %101 = shl nuw i16 %100, 8
  %102 = getelementptr inbounds nuw i8, ptr %98, i64 1
  %103 = load i8, ptr %102, align 1, !tbaa !8
  %104 = zext i8 %103 to i16
  %105 = or disjoint i16 %101, %104
  %106 = icmp sgt i16 %105, 0
  br i1 %106, label %107, label %532

107:                                              ; preds = %96
  %108 = getelementptr inbounds nuw i8, ptr %98, i64 10
  %109 = shl nuw i16 %105, 1
  %110 = zext i16 %109 to i32
  %111 = zext i16 %109 to i64
  %112 = getelementptr inbounds nuw i8, ptr %108, i64 %111
  %113 = getelementptr inbounds i8, ptr %112, i64 -2
  %114 = load i8, ptr %113, align 1, !tbaa !8
  %115 = zext i8 %114 to i32
  %116 = shl nuw nsw i32 %115, 8
  %117 = getelementptr inbounds i8, ptr %112, i64 -1
  %118 = load i8, ptr %117, align 1, !tbaa !8
  %119 = zext i8 %118 to i32
  %120 = or disjoint i32 %116, %119
  %121 = or disjoint i32 %110, 1
  %122 = add nuw nsw i32 %121, %120
  %123 = mul nuw nsw i32 %122, 14
  %124 = add nuw nsw i32 %123, 15
  %125 = and i32 %124, 2147483632
  %126 = zext nneg i32 %125 to i64
  %127 = load i64, ptr @arena_used, align 8, !tbaa !42
  %128 = sub i64 8388608, %127
  %129 = icmp ult i64 %128, %126
  br i1 %129, label %922, label %130

130:                                              ; preds = %107
  %131 = load i8, ptr %112, align 1, !tbaa !8
  %132 = zext i8 %131 to i64
  %133 = shl nuw nsw i64 %132, 8
  %134 = getelementptr inbounds nuw i8, ptr %112, i64 1
  %135 = load i8, ptr %134, align 1, !tbaa !8
  %136 = zext i8 %135 to i64
  %137 = getelementptr inbounds nuw i8, ptr @arena, i64 %127
  %138 = add i64 %127, %126
  store i64 %138, ptr @arena_used, align 8, !tbaa !42
  %139 = getelementptr inbounds nuw i8, ptr %112, i64 2
  %140 = getelementptr inbounds nuw i8, ptr %139, i64 %133
  %141 = getelementptr inbounds nuw i8, ptr %140, i64 %136
  %142 = zext i16 %109 to i64
  %143 = or disjoint i32 %116, %119
  %144 = add nuw nsw i32 %143, 1
  %145 = zext nneg i32 %144 to i64
  %146 = getelementptr inbounds nuw %struct.stbtt_vertex, ptr %137, i64 %142
  %147 = or disjoint i32 %116, %119
  %148 = add nuw nsw i32 %147, 1
  %149 = zext nneg i32 %148 to i64
  %150 = and i64 %149, 1
  %151 = icmp eq i32 %147, 0
  br i1 %151, label %199, label %152

152:                                              ; preds = %130
  %153 = and i64 %149, 131070
  br label %154

154:                                              ; preds = %188, %152
  %155 = phi i64 [ 0, %152 ], [ %194, %188 ]
  %156 = phi i8 [ 0, %152 ], [ %191, %188 ]
  %157 = phi i8 [ 0, %152 ], [ %190, %188 ]
  %158 = phi ptr [ %141, %152 ], [ %189, %188 ]
  %159 = phi i64 [ 0, %152 ], [ %195, %188 ]
  %160 = icmp eq i8 %157, 0
  br i1 %160, label %161, label %169

161:                                              ; preds = %154
  %162 = getelementptr inbounds nuw i8, ptr %158, i64 1
  %163 = load i8, ptr %158, align 1, !tbaa !8
  %164 = and i8 %163, 8
  %165 = icmp eq i8 %164, 0
  br i1 %165, label %171, label %166

166:                                              ; preds = %161
  %167 = getelementptr inbounds nuw i8, ptr %158, i64 2
  %168 = load i8, ptr %162, align 1, !tbaa !8
  br label %171

169:                                              ; preds = %154
  %170 = add i8 %157, -1
  br label %171

171:                                              ; preds = %169, %166, %161
  %172 = phi ptr [ %167, %166 ], [ %162, %161 ], [ %158, %169 ]
  %173 = phi i8 [ %168, %166 ], [ 0, %161 ], [ %170, %169 ]
  %174 = phi i8 [ %163, %166 ], [ %163, %161 ], [ %156, %169 ]
  %175 = getelementptr inbounds nuw %struct.stbtt_vertex, ptr %146, i64 %155
  %176 = getelementptr inbounds nuw i8, ptr %175, i64 12
  store i8 %174, ptr %176, align 2, !tbaa !35
  %177 = icmp eq i8 %173, 0
  br i1 %177, label %180, label %178

178:                                              ; preds = %171
  %179 = add i8 %173, -1
  br label %188

180:                                              ; preds = %171
  %181 = getelementptr inbounds nuw i8, ptr %172, i64 1
  %182 = load i8, ptr %172, align 1, !tbaa !8
  %183 = and i8 %182, 8
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %188, label %185

185:                                              ; preds = %180
  %186 = getelementptr inbounds nuw i8, ptr %172, i64 2
  %187 = load i8, ptr %181, align 1, !tbaa !8
  br label %188

188:                                              ; preds = %185, %180, %178
  %189 = phi ptr [ %186, %185 ], [ %181, %180 ], [ %172, %178 ]
  %190 = phi i8 [ %187, %185 ], [ 0, %180 ], [ %179, %178 ]
  %191 = phi i8 [ %182, %185 ], [ %182, %180 ], [ %174, %178 ]
  %192 = getelementptr inbounds nuw %struct.stbtt_vertex, ptr %146, i64 %155
  %193 = getelementptr inbounds nuw i8, ptr %192, i64 26
  store i8 %191, ptr %193, align 2, !tbaa !35
  %194 = add nuw nsw i64 %155, 2
  %195 = add i64 %159, 2
  %196 = icmp eq i64 %195, %153
  br i1 %196, label %197, label %154, !llvm.loop !127

197:                                              ; preds = %188
  %198 = icmp eq i64 %150, 0
  br i1 %198, label %218, label %199

199:                                              ; preds = %197, %130
  %200 = phi i64 [ 0, %130 ], [ %194, %197 ]
  %201 = phi i8 [ 0, %130 ], [ %191, %197 ]
  %202 = phi i8 [ 0, %130 ], [ %190, %197 ]
  %203 = phi ptr [ %141, %130 ], [ %189, %197 ]
  %204 = icmp ne i64 %150, 0
  tail call void @llvm.assume(i1 %204)
  %205 = icmp eq i8 %202, 0
  br i1 %205, label %206, label %213

206:                                              ; preds = %199
  %207 = getelementptr inbounds nuw i8, ptr %203, i64 1
  %208 = load i8, ptr %203, align 1, !tbaa !8
  %209 = and i8 %208, 8
  %210 = icmp eq i8 %209, 0
  %211 = getelementptr inbounds nuw i8, ptr %203, i64 2
  %212 = select i1 %210, ptr %207, ptr %211
  br label %213

213:                                              ; preds = %206, %199
  %214 = phi ptr [ %203, %199 ], [ %212, %206 ]
  %215 = phi i8 [ %201, %199 ], [ %208, %206 ]
  %216 = getelementptr inbounds nuw %struct.stbtt_vertex, ptr %146, i64 %200
  %217 = getelementptr inbounds nuw i8, ptr %216, i64 12
  store i8 %215, ptr %217, align 2, !tbaa !35
  br label %218

218:                                              ; preds = %197, %213
  %219 = phi ptr [ %189, %197 ], [ %214, %213 ]
  %220 = getelementptr inbounds nuw %struct.stbtt_vertex, ptr %137, i64 %142
  br label %221

221:                                              ; preds = %218, %253
  %222 = phi i64 [ 0, %218 ], [ %256, %253 ]
  %223 = phi ptr [ %219, %218 ], [ %255, %253 ]
  %224 = phi i16 [ 0, %218 ], [ %254, %253 ]
  %225 = getelementptr inbounds nuw %struct.stbtt_vertex, ptr %220, i64 %222
  %226 = getelementptr inbounds nuw i8, ptr %225, i64 12
  %227 = load i8, ptr %226, align 2, !tbaa !35
  %228 = zext i8 %227 to i32
  %229 = and i32 %228, 2
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %240, label %231

231:                                              ; preds = %221
  %232 = getelementptr inbounds nuw i8, ptr %223, i64 1
  %233 = load i8, ptr %223, align 1, !tbaa !8
  %234 = and i32 %228, 16
  %235 = icmp eq i32 %234, 0
  %236 = zext i8 %233 to i16
  %237 = sub nsw i16 0, %236
  %238 = select i1 %235, i16 %237, i16 %236
  %239 = add i16 %238, %224
  br label %253

240:                                              ; preds = %221
  %241 = and i32 %228, 16
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %253

243:                                              ; preds = %240
  %244 = load i8, ptr %223, align 1, !tbaa !8
  %245 = zext i8 %244 to i16
  %246 = shl nuw i16 %245, 8
  %247 = getelementptr inbounds nuw i8, ptr %223, i64 1
  %248 = load i8, ptr %247, align 1, !tbaa !8
  %249 = zext i8 %248 to i16
  %250 = or disjoint i16 %246, %249
  %251 = add i16 %250, %224
  %252 = getelementptr inbounds nuw i8, ptr %223, i64 2
  br label %253

253:                                              ; preds = %243, %240, %231
  %254 = phi i16 [ %239, %231 ], [ %224, %240 ], [ %251, %243 ]
  %255 = phi ptr [ %232, %231 ], [ %223, %240 ], [ %252, %243 ]
  store i16 %254, ptr %225, align 2, !tbaa !49
  %256 = add nuw nsw i64 %222, 1
  %257 = icmp eq i64 %256, %145
  br i1 %257, label %258, label %221, !llvm.loop !128

258:                                              ; preds = %253
  %259 = getelementptr inbounds nuw %struct.stbtt_vertex, ptr %137, i64 %142
  br label %260

260:                                              ; preds = %258, %292
  %261 = phi i64 [ 0, %258 ], [ %296, %292 ]
  %262 = phi ptr [ %255, %258 ], [ %294, %292 ]
  %263 = phi i16 [ 0, %258 ], [ %293, %292 ]
  %264 = getelementptr inbounds nuw %struct.stbtt_vertex, ptr %259, i64 %261
  %265 = getelementptr inbounds nuw i8, ptr %264, i64 12
  %266 = load i8, ptr %265, align 2, !tbaa !35
  %267 = zext i8 %266 to i32
  %268 = and i32 %267, 4
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %279, label %270

270:                                              ; preds = %260
  %271 = getelementptr inbounds nuw i8, ptr %262, i64 1
  %272 = load i8, ptr %262, align 1, !tbaa !8
  %273 = and i32 %267, 32
  %274 = icmp eq i32 %273, 0
  %275 = zext i8 %272 to i16
  %276 = sub nsw i16 0, %275
  %277 = select i1 %274, i16 %276, i16 %275
  %278 = add i16 %277, %263
  br label %292

279:                                              ; preds = %260
  %280 = and i32 %267, 32
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %282, label %292

282:                                              ; preds = %279
  %283 = load i8, ptr %262, align 1, !tbaa !8
  %284 = zext i8 %283 to i16
  %285 = shl nuw i16 %284, 8
  %286 = getelementptr inbounds nuw i8, ptr %262, i64 1
  %287 = load i8, ptr %286, align 1, !tbaa !8
  %288 = zext i8 %287 to i16
  %289 = or disjoint i16 %285, %288
  %290 = add i16 %289, %263
  %291 = getelementptr inbounds nuw i8, ptr %262, i64 2
  br label %292

292:                                              ; preds = %282, %279, %270
  %293 = phi i16 [ %278, %270 ], [ %263, %279 ], [ %290, %282 ]
  %294 = phi ptr [ %271, %270 ], [ %262, %279 ], [ %291, %282 ]
  %295 = getelementptr inbounds nuw i8, ptr %264, i64 2
  store i16 %293, ptr %295, align 2, !tbaa !50
  %296 = add nuw nsw i64 %261, 1
  %297 = icmp eq i64 %296, %145
  br i1 %297, label %298, label %260, !llvm.loop !129

298:                                              ; preds = %292, %466
  %299 = phi i32 [ %479, %466 ], [ 0, %292 ]
  %300 = phi i32 [ %480, %466 ], [ 0, %292 ]
  %301 = phi i32 [ %477, %466 ], [ 0, %292 ]
  %302 = phi i32 [ %476, %466 ], [ 0, %292 ]
  %303 = phi i32 [ %475, %466 ], [ 0, %292 ]
  %304 = phi i32 [ %474, %466 ], [ 0, %292 ]
  %305 = phi i32 [ %473, %466 ], [ 0, %292 ]
  %306 = phi i32 [ %472, %466 ], [ 0, %292 ]
  %307 = phi i32 [ %471, %466 ], [ 0, %292 ]
  %308 = phi i32 [ %470, %466 ], [ 0, %292 ]
  %309 = phi i32 [ %469, %466 ], [ 0, %292 ]
  %310 = phi i32 [ %468, %466 ], [ 0, %292 ]
  %311 = add nsw i32 %300, %110
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds %struct.stbtt_vertex, ptr %137, i64 %312
  %314 = getelementptr inbounds nuw i8, ptr %313, i64 12
  %315 = load i8, ptr %314, align 2, !tbaa !35
  %316 = load i16, ptr %313, align 2, !tbaa !49
  %317 = sext i16 %316 to i32
  %318 = getelementptr inbounds nuw i8, ptr %313, i64 2
  %319 = load i16, ptr %318, align 2, !tbaa !50
  %320 = sext i16 %319 to i32
  %321 = icmp eq i32 %302, %300
  br i1 %321, label %322, label %430

322:                                              ; preds = %298
  %323 = icmp eq i32 %300, 0
  br i1 %323, label %375, label %324

324:                                              ; preds = %322
  %325 = icmp eq i32 %309, 0
  %326 = icmp eq i32 %310, 0
  br i1 %325, label %355, label %327

327:                                              ; preds = %324
  br i1 %326, label %344, label %328

328:                                              ; preds = %327
  %329 = add nsw i32 %299, 1
  %330 = sext i32 %299 to i64
  %331 = getelementptr inbounds %struct.stbtt_vertex, ptr %137, i64 %330
  %332 = add nsw i32 %304, %308
  %333 = lshr i32 %332, 1
  %334 = add nsw i32 %303, %307
  %335 = lshr i32 %334, 1
  %336 = getelementptr inbounds nuw i8, ptr %331, i64 12
  store i8 3, ptr %336, align 2, !tbaa !35
  %337 = trunc i32 %333 to i16
  store i16 %337, ptr %331, align 2, !tbaa !49
  %338 = trunc i32 %335 to i16
  %339 = getelementptr inbounds nuw i8, ptr %331, i64 2
  store i16 %338, ptr %339, align 2, !tbaa !50
  %340 = trunc nsw i32 %308 to i16
  %341 = getelementptr inbounds nuw i8, ptr %331, i64 4
  store i16 %340, ptr %341, align 2, !tbaa !47
  %342 = trunc nsw i32 %307 to i16
  %343 = getelementptr inbounds nuw i8, ptr %331, i64 6
  store i16 %342, ptr %343, align 2, !tbaa !48
  br label %344

344:                                              ; preds = %328, %327
  %345 = phi i32 [ %329, %328 ], [ %299, %327 ]
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds %struct.stbtt_vertex, ptr %137, i64 %346
  %348 = getelementptr inbounds nuw i8, ptr %347, i64 12
  store i8 3, ptr %348, align 2, !tbaa !35
  %349 = trunc i32 %306 to i16
  store i16 %349, ptr %347, align 2, !tbaa !49
  %350 = trunc i32 %305 to i16
  %351 = getelementptr inbounds nuw i8, ptr %347, i64 2
  store i16 %350, ptr %351, align 2, !tbaa !50
  %352 = trunc nsw i32 %304 to i16
  %353 = getelementptr inbounds nuw i8, ptr %347, i64 4
  store i16 %352, ptr %353, align 2, !tbaa !47
  %354 = trunc nsw i32 %303 to i16
  br label %368

355:                                              ; preds = %324
  %356 = sext i32 %299 to i64
  %357 = getelementptr inbounds %struct.stbtt_vertex, ptr %137, i64 %356
  %358 = getelementptr inbounds nuw i8, ptr %357, i64 12
  %359 = trunc i32 %306 to i16
  %360 = trunc i32 %305 to i16
  %361 = getelementptr inbounds nuw i8, ptr %357, i64 2
  br i1 %326, label %366, label %362

362:                                              ; preds = %355
  store i8 3, ptr %358, align 2, !tbaa !35
  store i16 %359, ptr %357, align 2, !tbaa !49
  store i16 %360, ptr %361, align 2, !tbaa !50
  %363 = trunc nsw i32 %308 to i16
  %364 = getelementptr inbounds nuw i8, ptr %357, i64 4
  store i16 %363, ptr %364, align 2, !tbaa !47
  %365 = trunc nsw i32 %307 to i16
  br label %368

366:                                              ; preds = %355
  store i8 2, ptr %358, align 2, !tbaa !35
  store i16 %359, ptr %357, align 2, !tbaa !49
  store i16 %360, ptr %361, align 2, !tbaa !50
  %367 = getelementptr inbounds nuw i8, ptr %357, i64 4
  store i16 0, ptr %367, align 2, !tbaa !47
  br label %368

368:                                              ; preds = %344, %362, %366
  %369 = phi i64 [ %356, %362 ], [ %356, %366 ], [ %346, %344 ]
  %370 = phi i16 [ %365, %362 ], [ 0, %366 ], [ %354, %344 ]
  %371 = phi i32 [ %299, %362 ], [ %299, %366 ], [ %345, %344 ]
  %372 = getelementptr inbounds %struct.stbtt_vertex, ptr %137, i64 %369
  %373 = getelementptr inbounds nuw i8, ptr %372, i64 6
  store i16 %370, ptr %373, align 2, !tbaa !48
  %374 = add nsw i32 %371, 1
  br label %375

375:                                              ; preds = %368, %322
  %376 = phi i32 [ %374, %368 ], [ %299, %322 ]
  %377 = and i8 %315, 1
  %378 = icmp eq i8 %377, 0
  %379 = xor i8 %377, 1
  %380 = zext nneg i8 %379 to i32
  br i1 %378, label %381, label %403

381:                                              ; preds = %375
  %382 = getelementptr i8, ptr %313, i64 14
  %383 = getelementptr i8, ptr %313, i64 26
  %384 = load i8, ptr %383, align 2, !tbaa !35
  %385 = and i8 %384, 1
  %386 = icmp eq i8 %385, 0
  %387 = load i16, ptr %382, align 2, !tbaa !49
  br i1 %386, label %388, label %397

388:                                              ; preds = %381
  %389 = sext i16 %387 to i32
  %390 = add nsw i32 %389, %317
  %391 = ashr i32 %390, 1
  %392 = getelementptr i8, ptr %313, i64 16
  %393 = load i16, ptr %392, align 2, !tbaa !50
  %394 = sext i16 %393 to i32
  %395 = add nsw i32 %394, %320
  %396 = ashr i32 %395, 1
  br label %403

397:                                              ; preds = %381
  %398 = zext i16 %387 to i32
  %399 = getelementptr i8, ptr %313, i64 16
  %400 = load i16, ptr %399, align 2, !tbaa !50
  %401 = zext i16 %400 to i32
  %402 = add nuw nsw i32 %300, 1
  br label %403

403:                                              ; preds = %397, %388, %375
  %404 = phi i32 [ %398, %397 ], [ %391, %388 ], [ %317, %375 ]
  %405 = phi i32 [ %401, %397 ], [ %396, %388 ], [ %320, %375 ]
  %406 = phi i32 [ %317, %397 ], [ %317, %388 ], [ %304, %375 ]
  %407 = phi i32 [ %320, %397 ], [ %320, %388 ], [ %303, %375 ]
  %408 = phi i32 [ %402, %397 ], [ %300, %388 ], [ %300, %375 ]
  %409 = add nsw i32 %376, 1
  %410 = sext i32 %376 to i64
  %411 = getelementptr inbounds %struct.stbtt_vertex, ptr %137, i64 %410
  %412 = getelementptr inbounds nuw i8, ptr %411, i64 12
  store i8 1, ptr %412, align 2, !tbaa !35
  %413 = trunc i32 %404 to i16
  store i16 %413, ptr %411, align 2, !tbaa !49
  %414 = trunc i32 %405 to i16
  %415 = getelementptr inbounds nuw i8, ptr %411, i64 2
  store i16 %414, ptr %415, align 2, !tbaa !50
  %416 = getelementptr inbounds nuw i8, ptr %411, i64 4
  store i16 0, ptr %416, align 2, !tbaa !47
  %417 = getelementptr inbounds nuw i8, ptr %411, i64 6
  store i16 0, ptr %417, align 2, !tbaa !48
  %418 = shl nsw i32 %301, 1
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds i8, ptr %108, i64 %419
  %421 = load i8, ptr %420, align 1, !tbaa !8
  %422 = zext i8 %421 to i32
  %423 = shl nuw nsw i32 %422, 8
  %424 = getelementptr inbounds nuw i8, ptr %420, i64 1
  %425 = load i8, ptr %424, align 1, !tbaa !8
  %426 = zext i8 %425 to i32
  %427 = or disjoint i32 %423, %426
  %428 = add nuw nsw i32 %427, 1
  %429 = add nsw i32 %301, 1
  br label %466

430:                                              ; preds = %298
  %431 = and i8 %315, 1
  %432 = icmp eq i8 %431, 0
  %433 = icmp eq i32 %310, 0
  br i1 %432, label %434, label %451

434:                                              ; preds = %430
  br i1 %433, label %466, label %435

435:                                              ; preds = %434
  %436 = add nsw i32 %299, 1
  %437 = sext i32 %299 to i64
  %438 = getelementptr inbounds %struct.stbtt_vertex, ptr %137, i64 %437
  %439 = add nsw i32 %308, %317
  %440 = lshr i32 %439, 1
  %441 = add nsw i32 %307, %320
  %442 = lshr i32 %441, 1
  %443 = getelementptr inbounds nuw i8, ptr %438, i64 12
  store i8 3, ptr %443, align 2, !tbaa !35
  %444 = trunc i32 %440 to i16
  store i16 %444, ptr %438, align 2, !tbaa !49
  %445 = trunc i32 %442 to i16
  %446 = getelementptr inbounds nuw i8, ptr %438, i64 2
  store i16 %445, ptr %446, align 2, !tbaa !50
  %447 = trunc nsw i32 %308 to i16
  %448 = getelementptr inbounds nuw i8, ptr %438, i64 4
  store i16 %447, ptr %448, align 2, !tbaa !47
  %449 = trunc nsw i32 %307 to i16
  %450 = getelementptr inbounds nuw i8, ptr %438, i64 6
  store i16 %449, ptr %450, align 2, !tbaa !48
  br label %466

451:                                              ; preds = %430
  %452 = sext i32 %299 to i64
  %453 = getelementptr inbounds %struct.stbtt_vertex, ptr %137, i64 %452
  %454 = getelementptr inbounds nuw i8, ptr %453, i64 12
  %455 = getelementptr inbounds nuw i8, ptr %453, i64 2
  br i1 %433, label %460, label %456

456:                                              ; preds = %451
  store i8 3, ptr %454, align 2, !tbaa !35
  store i16 %316, ptr %453, align 2, !tbaa !49
  store i16 %319, ptr %455, align 2, !tbaa !50
  %457 = trunc nsw i32 %308 to i16
  %458 = getelementptr inbounds nuw i8, ptr %453, i64 4
  store i16 %457, ptr %458, align 2, !tbaa !47
  %459 = trunc nsw i32 %307 to i16
  br label %462

460:                                              ; preds = %451
  store i8 2, ptr %454, align 2, !tbaa !35
  store i16 %316, ptr %453, align 2, !tbaa !49
  store i16 %319, ptr %455, align 2, !tbaa !50
  %461 = getelementptr inbounds nuw i8, ptr %453, i64 4
  store i16 0, ptr %461, align 2, !tbaa !47
  br label %462

462:                                              ; preds = %460, %456
  %463 = phi i16 [ 0, %460 ], [ %459, %456 ]
  %464 = getelementptr inbounds nuw i8, ptr %453, i64 6
  store i16 %463, ptr %464, align 2, !tbaa !48
  %465 = add nsw i32 %299, 1
  br label %466

466:                                              ; preds = %462, %435, %434, %403
  %467 = phi i1 [ true, %403 ], [ true, %462 ], [ false, %435 ], [ false, %434 ]
  %468 = phi i32 [ 0, %403 ], [ 0, %462 ], [ 1, %435 ], [ 1, %434 ]
  %469 = phi i32 [ %380, %403 ], [ %309, %462 ], [ %309, %435 ], [ %309, %434 ]
  %470 = phi i32 [ %308, %403 ], [ %308, %462 ], [ %317, %435 ], [ %317, %434 ]
  %471 = phi i32 [ %307, %403 ], [ %307, %462 ], [ %320, %435 ], [ %320, %434 ]
  %472 = phi i32 [ %404, %403 ], [ %306, %462 ], [ %306, %435 ], [ %306, %434 ]
  %473 = phi i32 [ %405, %403 ], [ %305, %462 ], [ %305, %435 ], [ %305, %434 ]
  %474 = phi i32 [ %406, %403 ], [ %304, %462 ], [ %304, %435 ], [ %304, %434 ]
  %475 = phi i32 [ %407, %403 ], [ %303, %462 ], [ %303, %435 ], [ %303, %434 ]
  %476 = phi i32 [ %428, %403 ], [ %302, %462 ], [ %302, %435 ], [ %302, %434 ]
  %477 = phi i32 [ %429, %403 ], [ %301, %462 ], [ %301, %435 ], [ %301, %434 ]
  %478 = phi i32 [ %408, %403 ], [ %300, %462 ], [ %300, %435 ], [ %300, %434 ]
  %479 = phi i32 [ %409, %403 ], [ %465, %462 ], [ %436, %435 ], [ %299, %434 ]
  %480 = add nsw i32 %478, 1
  %481 = icmp slt i32 %478, %120
  br i1 %481, label %298, label %482, !llvm.loop !130

482:                                              ; preds = %466
  %483 = icmp eq i32 %469, 0
  br i1 %483, label %512, label %484

484:                                              ; preds = %482
  br i1 %467, label %501, label %485

485:                                              ; preds = %484
  %486 = add nsw i32 %479, 1
  %487 = sext i32 %479 to i64
  %488 = getelementptr inbounds %struct.stbtt_vertex, ptr %137, i64 %487
  %489 = add nsw i32 %474, %470
  %490 = lshr i32 %489, 1
  %491 = add nsw i32 %475, %471
  %492 = lshr i32 %491, 1
  %493 = getelementptr inbounds nuw i8, ptr %488, i64 12
  store i8 3, ptr %493, align 2, !tbaa !35
  %494 = trunc i32 %490 to i16
  store i16 %494, ptr %488, align 2, !tbaa !49
  %495 = trunc i32 %492 to i16
  %496 = getelementptr inbounds nuw i8, ptr %488, i64 2
  store i16 %495, ptr %496, align 2, !tbaa !50
  %497 = trunc nsw i32 %470 to i16
  %498 = getelementptr inbounds nuw i8, ptr %488, i64 4
  store i16 %497, ptr %498, align 2, !tbaa !47
  %499 = trunc nsw i32 %471 to i16
  %500 = getelementptr inbounds nuw i8, ptr %488, i64 6
  store i16 %499, ptr %500, align 2, !tbaa !48
  br label %501

501:                                              ; preds = %485, %484
  %502 = phi i32 [ %486, %485 ], [ %479, %484 ]
  %503 = sext i32 %502 to i64
  %504 = getelementptr inbounds %struct.stbtt_vertex, ptr %137, i64 %503
  %505 = getelementptr inbounds nuw i8, ptr %504, i64 12
  store i8 3, ptr %505, align 2, !tbaa !35
  %506 = trunc i32 %472 to i16
  store i16 %506, ptr %504, align 2, !tbaa !49
  %507 = trunc i32 %473 to i16
  %508 = getelementptr inbounds nuw i8, ptr %504, i64 2
  store i16 %507, ptr %508, align 2, !tbaa !50
  %509 = trunc nsw i32 %474 to i16
  %510 = getelementptr inbounds nuw i8, ptr %504, i64 4
  store i16 %509, ptr %510, align 2, !tbaa !47
  %511 = trunc nsw i32 %475 to i16
  br label %525

512:                                              ; preds = %482
  %513 = sext i32 %479 to i64
  %514 = getelementptr inbounds %struct.stbtt_vertex, ptr %137, i64 %513
  %515 = getelementptr inbounds nuw i8, ptr %514, i64 12
  %516 = trunc i32 %472 to i16
  %517 = trunc i32 %473 to i16
  %518 = getelementptr inbounds nuw i8, ptr %514, i64 2
  br i1 %467, label %523, label %519

519:                                              ; preds = %512
  store i8 3, ptr %515, align 2, !tbaa !35
  store i16 %516, ptr %514, align 2, !tbaa !49
  store i16 %517, ptr %518, align 2, !tbaa !50
  %520 = trunc nsw i32 %470 to i16
  %521 = getelementptr inbounds nuw i8, ptr %514, i64 4
  store i16 %520, ptr %521, align 2, !tbaa !47
  %522 = trunc nsw i32 %471 to i16
  br label %525

523:                                              ; preds = %512
  store i8 2, ptr %515, align 2, !tbaa !35
  store i16 %516, ptr %514, align 2, !tbaa !49
  store i16 %517, ptr %518, align 2, !tbaa !50
  %524 = getelementptr inbounds nuw i8, ptr %514, i64 4
  store i16 0, ptr %524, align 2, !tbaa !47
  br label %525

525:                                              ; preds = %523, %519, %501
  %526 = phi i64 [ %513, %519 ], [ %513, %523 ], [ %503, %501 ]
  %527 = phi i16 [ %522, %519 ], [ 0, %523 ], [ %511, %501 ]
  %528 = phi i32 [ %479, %519 ], [ %479, %523 ], [ %502, %501 ]
  %529 = getelementptr inbounds %struct.stbtt_vertex, ptr %137, i64 %526
  %530 = getelementptr inbounds nuw i8, ptr %529, i64 6
  store i16 %527, ptr %530, align 2, !tbaa !48
  %531 = add nsw i32 %528, 1
  br label %892

532:                                              ; preds = %96
  %533 = icmp slt i16 %101, 0
  br i1 %533, label %534, label %892

534:                                              ; preds = %532
  %535 = getelementptr inbounds nuw i8, ptr %98, i64 10
  br label %536

536:                                              ; preds = %534, %886
  %537 = phi ptr [ null, %534 ], [ %888, %886 ]
  %538 = phi i32 [ 0, %534 ], [ %887, %886 ]
  %539 = phi ptr [ %535, %534 ], [ %647, %886 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  store ptr null, ptr %6, align 8, !tbaa !34
  %540 = getelementptr inbounds nuw i8, ptr %539, i64 1
  %541 = load i8, ptr %540, align 1, !tbaa !8
  %542 = zext i8 %541 to i32
  %543 = getelementptr inbounds nuw i8, ptr %539, i64 2
  %544 = load i8, ptr %543, align 1, !tbaa !8
  %545 = zext i8 %544 to i32
  %546 = shl nuw nsw i32 %545, 8
  %547 = getelementptr inbounds nuw i8, ptr %539, i64 3
  %548 = load i8, ptr %547, align 1, !tbaa !8
  %549 = zext i8 %548 to i32
  %550 = or disjoint i32 %546, %549
  %551 = getelementptr inbounds nuw i8, ptr %539, i64 4
  %552 = and i32 %542, 2
  %553 = icmp eq i32 %552, 0
  br i1 %553, label %578, label %554

554:                                              ; preds = %536
  %555 = and i32 %542, 1
  %556 = icmp eq i32 %555, 0
  %557 = load i8, ptr %551, align 1, !tbaa !8
  br i1 %556, label %571, label %558

558:                                              ; preds = %554
  %559 = getelementptr inbounds nuw i8, ptr %539, i64 5
  %560 = getelementptr inbounds nuw i8, ptr %539, i64 7
  %561 = load i8, ptr %560, align 1, !tbaa !8
  %562 = load <2 x i8>, ptr %559, align 1, !tbaa !8
  %563 = insertelement <2 x i8> %562, i8 %557, i64 0
  %564 = zext <2 x i8> %563 to <2 x i16>
  %565 = shl nuw <2 x i16> %564, splat (i16 8)
  %566 = insertelement <2 x i8> %562, i8 %561, i64 1
  %567 = zext <2 x i8> %566 to <2 x i16>
  %568 = or disjoint <2 x i16> %565, %567
  %569 = sitofp <2 x i16> %568 to <2 x float>
  %570 = getelementptr inbounds nuw i8, ptr %539, i64 8
  br label %578

571:                                              ; preds = %554
  %572 = getelementptr inbounds nuw i8, ptr %539, i64 5
  %573 = load i8, ptr %572, align 1, !tbaa !8
  %574 = insertelement <2 x i8> poison, i8 %557, i64 0
  %575 = insertelement <2 x i8> %574, i8 %573, i64 1
  %576 = sitofp <2 x i8> %575 to <2 x float>
  %577 = getelementptr inbounds nuw i8, ptr %539, i64 6
  br label %578

578:                                              ; preds = %571, %558, %536
  %579 = phi ptr [ %570, %558 ], [ %577, %571 ], [ %551, %536 ]
  %580 = phi <2 x float> [ %569, %558 ], [ %576, %571 ], [ zeroinitializer, %536 ]
  %581 = shufflevector <2 x float> %580, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %582 = and i32 %542, 8
  %583 = icmp eq i32 %582, 0
  br i1 %583, label %597, label %584

584:                                              ; preds = %578
  %585 = load i8, ptr %579, align 1, !tbaa !8
  %586 = zext i8 %585 to i16
  %587 = shl nuw i16 %586, 8
  %588 = getelementptr inbounds nuw i8, ptr %579, i64 1
  %589 = load i8, ptr %588, align 1, !tbaa !8
  %590 = zext i8 %589 to i16
  %591 = or disjoint i16 %587, %590
  %592 = sitofp i16 %591 to float
  %593 = fmul float %592, 0x3F10000000000000
  %594 = getelementptr inbounds nuw i8, ptr %579, i64 2
  %595 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %593, i64 0
  %596 = insertelement <2 x float> <float 0.000000e+00, float poison>, float %593, i64 1
  br label %646

597:                                              ; preds = %578
  %598 = and i32 %542, 64
  %599 = icmp eq i32 %598, 0
  br i1 %599, label %623, label %600

600:                                              ; preds = %597
  %601 = load i8, ptr %579, align 1, !tbaa !8
  %602 = zext i8 %601 to i16
  %603 = shl nuw i16 %602, 8
  %604 = getelementptr inbounds nuw i8, ptr %579, i64 1
  %605 = load i8, ptr %604, align 1, !tbaa !8
  %606 = zext i8 %605 to i16
  %607 = or disjoint i16 %603, %606
  %608 = sitofp i16 %607 to float
  %609 = fmul float %608, 0x3F10000000000000
  %610 = getelementptr inbounds nuw i8, ptr %579, i64 2
  %611 = load i8, ptr %610, align 1, !tbaa !8
  %612 = zext i8 %611 to i16
  %613 = shl nuw i16 %612, 8
  %614 = getelementptr inbounds nuw i8, ptr %579, i64 3
  %615 = load i8, ptr %614, align 1, !tbaa !8
  %616 = zext i8 %615 to i16
  %617 = or disjoint i16 %613, %616
  %618 = sitofp i16 %617 to float
  %619 = fmul float %618, 0x3F10000000000000
  %620 = getelementptr inbounds nuw i8, ptr %579, i64 4
  %621 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %609, i64 0
  %622 = insertelement <2 x float> <float 0.000000e+00, float poison>, float %619, i64 1
  br label %646

623:                                              ; preds = %597
  %624 = icmp sgt i8 %541, -1
  br i1 %624, label %646, label %625

625:                                              ; preds = %623
  %626 = getelementptr inbounds nuw i8, ptr %579, i64 4
  %627 = load <4 x i8>, ptr %579, align 1, !tbaa !8
  %628 = shufflevector <4 x i8> %627, <4 x i8> poison, <2 x i32> <i32 0, i32 2>
  %629 = zext <2 x i8> %628 to <2 x i16>
  %630 = shl nuw <2 x i16> %629, splat (i16 8)
  %631 = shufflevector <4 x i8> %627, <4 x i8> poison, <2 x i32> <i32 1, i32 3>
  %632 = zext <2 x i8> %631 to <2 x i16>
  %633 = or disjoint <2 x i16> %630, %632
  %634 = sitofp <2 x i16> %633 to <2 x float>
  %635 = fmul <2 x float> %634, splat (float 0x3F10000000000000)
  %636 = load <4 x i8>, ptr %626, align 1, !tbaa !8
  %637 = shufflevector <4 x i8> %636, <4 x i8> poison, <2 x i32> <i32 0, i32 2>
  %638 = zext <2 x i8> %637 to <2 x i16>
  %639 = shl nuw <2 x i16> %638, splat (i16 8)
  %640 = shufflevector <4 x i8> %636, <4 x i8> poison, <2 x i32> <i32 1, i32 3>
  %641 = zext <2 x i8> %640 to <2 x i16>
  %642 = or disjoint <2 x i16> %639, %641
  %643 = sitofp <2 x i16> %642 to <2 x float>
  %644 = fmul <2 x float> %643, splat (float 0x3F10000000000000)
  %645 = getelementptr inbounds nuw i8, ptr %579, i64 8
  br label %646

646:                                              ; preds = %625, %623, %600, %584
  %647 = phi ptr [ %594, %584 ], [ %620, %600 ], [ %645, %625 ], [ %579, %623 ]
  %648 = phi <2 x float> [ %595, %584 ], [ %621, %600 ], [ %635, %625 ], [ <float 1.000000e+00, float 0.000000e+00>, %623 ]
  %649 = phi <2 x float> [ %596, %584 ], [ %622, %600 ], [ %644, %625 ], [ <float 0.000000e+00, float 1.000000e+00>, %623 ]
  %650 = shufflevector <2 x float> %649, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %651 = shufflevector <2 x float> %648, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %652 = shufflevector <2 x float> %648, <2 x float> %649, <2 x i32> <i32 1, i32 3>
  %653 = fmul <2 x float> %652, %652
  %654 = shufflevector <2 x float> %648, <2 x float> %649, <2 x i32> <i32 0, i32 2>
  %655 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %654, <2 x float> %654, <2 x float> %653)
  %656 = fpext <2 x float> %655 to <2 x double>
  %657 = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %656)
  %658 = fptrunc <2 x double> %657 to <2 x float>
  %659 = shufflevector <2 x float> %658, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %660 = call fastcc i32 @stbtt_GetGlyphShape(ptr noundef nonnull %0, i32 noundef %550, ptr noundef %6) #17
  %661 = icmp sgt i32 %660, 0
  br i1 %661, label %662, label %886

662:                                              ; preds = %646
  %663 = load ptr, ptr %6, align 8, !tbaa !34
  %664 = zext nneg i32 %660 to i64
  %665 = icmp ult i32 %660, 9
  br i1 %665, label %846, label %666

666:                                              ; preds = %662
  %667 = and i64 %664, 7
  %668 = icmp eq i64 %667, 0
  %669 = select i1 %668, i64 8, i64 %667
  %670 = sub nsw i64 %664, %669
  %671 = shufflevector <2 x float> %649, <2 x float> poison, <8 x i32> zeroinitializer
  %672 = shufflevector <2 x float> %648, <2 x float> poison, <8 x i32> zeroinitializer
  %673 = shufflevector <2 x float> %580, <2 x float> poison, <8 x i32> zeroinitializer
  %674 = shufflevector <2 x float> %658, <2 x float> poison, <8 x i32> zeroinitializer
  %675 = shufflevector <2 x float> %649, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %676 = shufflevector <2 x float> %648, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %677 = shufflevector <2 x float> %580, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %678 = shufflevector <2 x float> %658, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  br label %679

679:                                              ; preds = %679, %666
  %680 = phi i64 [ 0, %666 ], [ %844, %679 ]
  %681 = getelementptr inbounds nuw %struct.stbtt_vertex, ptr %663, i64 %680
  %682 = getelementptr inbounds nuw %struct.stbtt_vertex, ptr %663, i64 %680
  %683 = getelementptr inbounds nuw i8, ptr %682, i64 14
  %684 = getelementptr inbounds nuw %struct.stbtt_vertex, ptr %663, i64 %680
  %685 = getelementptr inbounds nuw i8, ptr %684, i64 28
  %686 = getelementptr inbounds nuw %struct.stbtt_vertex, ptr %663, i64 %680
  %687 = getelementptr inbounds nuw i8, ptr %686, i64 42
  %688 = getelementptr inbounds nuw %struct.stbtt_vertex, ptr %663, i64 %680
  %689 = getelementptr inbounds nuw i8, ptr %688, i64 56
  %690 = getelementptr inbounds nuw %struct.stbtt_vertex, ptr %663, i64 %680
  %691 = getelementptr inbounds nuw i8, ptr %690, i64 70
  %692 = getelementptr inbounds nuw %struct.stbtt_vertex, ptr %663, i64 %680
  %693 = getelementptr inbounds nuw i8, ptr %692, i64 84
  %694 = getelementptr inbounds nuw %struct.stbtt_vertex, ptr %663, i64 %680
  %695 = getelementptr inbounds nuw i8, ptr %694, i64 98
  %696 = load i16, ptr %681, align 2, !tbaa !49
  %697 = load i16, ptr %683, align 2, !tbaa !49
  %698 = load i16, ptr %685, align 2, !tbaa !49
  %699 = load i16, ptr %687, align 2, !tbaa !49
  %700 = load i16, ptr %689, align 2, !tbaa !49
  %701 = load i16, ptr %691, align 2, !tbaa !49
  %702 = load i16, ptr %693, align 2, !tbaa !49
  %703 = load i16, ptr %695, align 2, !tbaa !49
  %704 = insertelement <8 x i16> poison, i16 %696, i64 0
  %705 = insertelement <8 x i16> %704, i16 %697, i64 1
  %706 = insertelement <8 x i16> %705, i16 %698, i64 2
  %707 = insertelement <8 x i16> %706, i16 %699, i64 3
  %708 = insertelement <8 x i16> %707, i16 %700, i64 4
  %709 = insertelement <8 x i16> %708, i16 %701, i64 5
  %710 = insertelement <8 x i16> %709, i16 %702, i64 6
  %711 = insertelement <8 x i16> %710, i16 %703, i64 7
  %712 = getelementptr inbounds nuw i8, ptr %681, i64 2
  %713 = getelementptr inbounds nuw i8, ptr %682, i64 16
  %714 = getelementptr inbounds nuw i8, ptr %684, i64 30
  %715 = getelementptr inbounds nuw i8, ptr %686, i64 44
  %716 = getelementptr inbounds nuw i8, ptr %688, i64 58
  %717 = getelementptr inbounds nuw i8, ptr %690, i64 72
  %718 = getelementptr inbounds nuw i8, ptr %692, i64 86
  %719 = getelementptr inbounds nuw i8, ptr %694, i64 100
  %720 = load i16, ptr %712, align 2, !tbaa !50
  %721 = load i16, ptr %713, align 2, !tbaa !50
  %722 = load i16, ptr %714, align 2, !tbaa !50
  %723 = load i16, ptr %715, align 2, !tbaa !50
  %724 = load i16, ptr %716, align 2, !tbaa !50
  %725 = load i16, ptr %717, align 2, !tbaa !50
  %726 = load i16, ptr %718, align 2, !tbaa !50
  %727 = load i16, ptr %719, align 2, !tbaa !50
  %728 = insertelement <8 x i16> poison, i16 %720, i64 0
  %729 = insertelement <8 x i16> %728, i16 %721, i64 1
  %730 = insertelement <8 x i16> %729, i16 %722, i64 2
  %731 = insertelement <8 x i16> %730, i16 %723, i64 3
  %732 = insertelement <8 x i16> %731, i16 %724, i64 4
  %733 = insertelement <8 x i16> %732, i16 %725, i64 5
  %734 = insertelement <8 x i16> %733, i16 %726, i64 6
  %735 = insertelement <8 x i16> %734, i16 %727, i64 7
  %736 = sitofp <8 x i16> %711 to <8 x float>
  %737 = sitofp <8 x i16> %735 to <8 x float>
  %738 = fmul <8 x float> %671, %737
  %739 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %672, <8 x float> %736, <8 x float> %738)
  %740 = fadd <8 x float> %673, %739
  %741 = fmul <8 x float> %740, %674
  %742 = fptosi <8 x float> %741 to <8 x i16>
  %743 = extractelement <8 x i16> %742, i64 4
  %744 = extractelement <8 x i16> %742, i64 5
  %745 = extractelement <8 x i16> %742, i64 6
  %746 = extractelement <8 x i16> %742, i64 7
  store i16 %743, ptr %689, align 2, !tbaa !49
  store i16 %744, ptr %691, align 2, !tbaa !49
  store i16 %745, ptr %693, align 2, !tbaa !49
  store i16 %746, ptr %695, align 2, !tbaa !49
  %747 = fmul <8 x float> %675, %737
  %748 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %676, <8 x float> %736, <8 x float> %747)
  %749 = fadd <8 x float> %677, %748
  %750 = fmul <8 x float> %749, %678
  %751 = fptosi <8 x float> %750 to <8 x i16>
  %752 = extractelement <8 x i16> %751, i64 4
  %753 = extractelement <8 x i16> %751, i64 5
  %754 = extractelement <8 x i16> %751, i64 6
  %755 = extractelement <8 x i16> %751, i64 7
  store i16 %752, ptr %716, align 2, !tbaa !50
  store i16 %753, ptr %717, align 2, !tbaa !50
  store i16 %754, ptr %718, align 2, !tbaa !50
  store i16 %755, ptr %719, align 2, !tbaa !50
  %756 = getelementptr inbounds nuw i8, ptr %681, i64 4
  %757 = getelementptr inbounds nuw i8, ptr %682, i64 18
  %758 = getelementptr inbounds nuw i8, ptr %684, i64 32
  %759 = getelementptr inbounds nuw i8, ptr %686, i64 46
  %760 = getelementptr inbounds nuw i8, ptr %688, i64 60
  %761 = getelementptr inbounds nuw i8, ptr %690, i64 74
  %762 = getelementptr inbounds nuw i8, ptr %692, i64 88
  %763 = getelementptr inbounds nuw i8, ptr %694, i64 102
  %764 = load i16, ptr %756, align 2, !tbaa !47
  %765 = load i16, ptr %757, align 2, !tbaa !47
  %766 = load i16, ptr %758, align 2, !tbaa !47
  %767 = load i16, ptr %759, align 2, !tbaa !47
  %768 = load i16, ptr %760, align 2, !tbaa !47
  %769 = load i16, ptr %761, align 2, !tbaa !47
  %770 = load i16, ptr %762, align 2, !tbaa !47
  %771 = load i16, ptr %763, align 2, !tbaa !47
  %772 = insertelement <8 x i16> poison, i16 %764, i64 0
  %773 = insertelement <8 x i16> %772, i16 %765, i64 1
  %774 = insertelement <8 x i16> %773, i16 %766, i64 2
  %775 = insertelement <8 x i16> %774, i16 %767, i64 3
  %776 = insertelement <8 x i16> %775, i16 %768, i64 4
  %777 = insertelement <8 x i16> %776, i16 %769, i64 5
  %778 = insertelement <8 x i16> %777, i16 %770, i64 6
  %779 = insertelement <8 x i16> %778, i16 %771, i64 7
  %780 = getelementptr inbounds nuw i8, ptr %681, i64 6
  %781 = getelementptr inbounds nuw i8, ptr %682, i64 20
  %782 = getelementptr inbounds nuw i8, ptr %684, i64 34
  %783 = getelementptr inbounds nuw i8, ptr %686, i64 48
  %784 = getelementptr inbounds nuw i8, ptr %688, i64 62
  %785 = getelementptr inbounds nuw i8, ptr %690, i64 76
  %786 = getelementptr inbounds nuw i8, ptr %692, i64 90
  %787 = getelementptr inbounds nuw i8, ptr %694, i64 104
  %788 = load i16, ptr %780, align 2, !tbaa !48
  %789 = load i16, ptr %781, align 2, !tbaa !48
  %790 = load i16, ptr %782, align 2, !tbaa !48
  %791 = load i16, ptr %783, align 2, !tbaa !48
  %792 = load i16, ptr %784, align 2, !tbaa !48
  %793 = load i16, ptr %785, align 2, !tbaa !48
  %794 = load i16, ptr %786, align 2, !tbaa !48
  %795 = load i16, ptr %787, align 2, !tbaa !48
  %796 = insertelement <8 x i16> poison, i16 %788, i64 0
  %797 = insertelement <8 x i16> %796, i16 %789, i64 1
  %798 = insertelement <8 x i16> %797, i16 %790, i64 2
  %799 = insertelement <8 x i16> %798, i16 %791, i64 3
  %800 = insertelement <8 x i16> %799, i16 %792, i64 4
  %801 = insertelement <8 x i16> %800, i16 %793, i64 5
  %802 = insertelement <8 x i16> %801, i16 %794, i64 6
  %803 = insertelement <8 x i16> %802, i16 %795, i64 7
  %804 = sitofp <8 x i16> %779 to <8 x float>
  %805 = sitofp <8 x i16> %803 to <8 x float>
  %806 = fmul <8 x float> %671, %805
  %807 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %672, <8 x float> %804, <8 x float> %806)
  %808 = fadd <8 x float> %673, %807
  %809 = fmul <8 x float> %808, %674
  %810 = fptosi <8 x float> %809 to <8 x i16>
  %811 = extractelement <8 x i16> %810, i64 2
  %812 = extractelement <8 x i16> %810, i64 4
  %813 = extractelement <8 x i16> %810, i64 5
  %814 = extractelement <8 x i16> %810, i64 6
  %815 = extractelement <8 x i16> %810, i64 7
  store i16 %812, ptr %760, align 2, !tbaa !47
  store i16 %813, ptr %761, align 2, !tbaa !47
  store i16 %814, ptr %762, align 2, !tbaa !47
  store i16 %815, ptr %763, align 2, !tbaa !47
  %816 = fmul <8 x float> %675, %805
  %817 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %676, <8 x float> %804, <8 x float> %816)
  %818 = fadd <8 x float> %677, %817
  %819 = fmul <8 x float> %818, %678
  %820 = fptosi <8 x float> %819 to <8 x i16>
  %821 = extractelement <8 x i16> %820, i64 4
  %822 = extractelement <8 x i16> %820, i64 5
  %823 = extractelement <8 x i16> %820, i64 6
  %824 = extractelement <8 x i16> %820, i64 7
  %825 = shufflevector <8 x i16> %742, <8 x i16> %751, <4 x i32> <i32 0, i32 8, i32 poison, i32 poison>
  %826 = shufflevector <8 x i16> %810, <8 x i16> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %827 = shufflevector <4 x i16> %825, <4 x i16> %826, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %828 = shufflevector <8 x i16> %820, <8 x i16> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %829 = shufflevector <4 x i16> %827, <4 x i16> %828, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  store <4 x i16> %829, ptr %681, align 2, !tbaa !44
  %830 = shufflevector <8 x i16> %742, <8 x i16> %751, <4 x i32> <i32 1, i32 9, i32 poison, i32 poison>
  %831 = shufflevector <8 x i16> %810, <8 x i16> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %832 = shufflevector <4 x i16> %830, <4 x i16> %831, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %833 = shufflevector <8 x i16> %820, <8 x i16> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %834 = shufflevector <4 x i16> %832, <4 x i16> %833, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  store <4 x i16> %834, ptr %683, align 2, !tbaa !44
  %835 = shufflevector <8 x i16> %742, <8 x i16> %751, <4 x i32> <i32 2, i32 10, i32 poison, i32 poison>
  %836 = insertelement <4 x i16> %835, i16 %811, i64 2
  %837 = shufflevector <8 x i16> %820, <8 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 2, i32 poison>
  %838 = shufflevector <4 x i16> %836, <4 x i16> %837, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  store <4 x i16> %838, ptr %685, align 2, !tbaa !44
  %839 = shufflevector <8 x i16> %742, <8 x i16> %751, <4 x i32> <i32 3, i32 11, i32 poison, i32 poison>
  %840 = shufflevector <8 x i16> %810, <8 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 3>
  %841 = shufflevector <4 x i16> %839, <4 x i16> %840, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %842 = shufflevector <8 x i16> %820, <8 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 3>
  %843 = shufflevector <4 x i16> %841, <4 x i16> %842, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  store <4 x i16> %843, ptr %687, align 2, !tbaa !44
  store i16 %821, ptr %784, align 2, !tbaa !48
  store i16 %822, ptr %785, align 2, !tbaa !48
  store i16 %823, ptr %786, align 2, !tbaa !48
  store i16 %824, ptr %787, align 2, !tbaa !48
  %844 = add nuw i64 %680, 8
  %845 = icmp eq i64 %844, %670
  br i1 %845, label %846, label %679, !llvm.loop !131

846:                                              ; preds = %679, %662
  %847 = phi i64 [ 0, %662 ], [ %670, %679 ]
  br label %848

848:                                              ; preds = %846, %848
  %849 = phi i64 [ %861, %848 ], [ %847, %846 ]
  %850 = getelementptr inbounds nuw %struct.stbtt_vertex, ptr %663, i64 %849
  %851 = load <4 x i16>, ptr %850, align 2, !tbaa !44
  %852 = shufflevector <4 x i16> %851, <4 x i16> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %853 = sitofp <4 x i16> %852 to <4 x float>
  %854 = shufflevector <4 x i16> %851, <4 x i16> poison, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %855 = sitofp <4 x i16> %854 to <4 x float>
  %856 = fmul <4 x float> %650, %855
  %857 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %651, <4 x float> %853, <4 x float> %856)
  %858 = fadd <4 x float> %581, %857
  %859 = fmul <4 x float> %858, %659
  %860 = fptosi <4 x float> %859 to <4 x i16>
  store <4 x i16> %860, ptr %850, align 2, !tbaa !44
  %861 = add nuw nsw i64 %849, 1
  %862 = icmp eq i64 %861, %664
  br i1 %862, label %863, label %848, !llvm.loop !132

863:                                              ; preds = %848
  %864 = add nuw nsw i32 %660, %538
  %865 = zext nneg i32 %864 to i64
  %866 = mul nuw nsw i64 %865, 14
  %867 = add nuw nsw i64 %866, 15
  %868 = and i64 %867, 68719476720
  %869 = load i64, ptr @arena_used, align 8, !tbaa !42
  %870 = sub i64 8388608, %869
  %871 = icmp ugt i64 %868, %870
  br i1 %871, label %891, label %872

872:                                              ; preds = %863
  %873 = getelementptr inbounds nuw i8, ptr @arena, i64 %869
  %874 = add i64 %869, %868
  store i64 %874, ptr @arena_used, align 8, !tbaa !42
  %875 = icmp sgt i32 %538, 0
  %876 = icmp ne ptr %537, null
  %877 = select i1 %875, i1 %876, i1 false
  %878 = zext nneg i32 %538 to i64
  br i1 %877, label %879, label %882

879:                                              ; preds = %872
  %880 = mul nuw nsw i64 %878, 14
  %881 = tail call ptr @memcpy(ptr noundef nonnull %873, ptr noundef nonnull %537, i64 noundef %880) #18
  br label %882

882:                                              ; preds = %872, %879
  %883 = getelementptr inbounds nuw %struct.stbtt_vertex, ptr %873, i64 %878
  %884 = mul nuw nsw i64 %664, 14
  %885 = tail call ptr @memcpy(ptr noundef nonnull %883, ptr noundef nonnull %663, i64 noundef %884) #18
  br label %886

886:                                              ; preds = %646, %882
  %887 = phi i32 [ %864, %882 ], [ %538, %646 ]
  %888 = phi ptr [ %873, %882 ], [ %537, %646 ]
  %889 = and i32 %542, 32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  %890 = icmp eq i32 %889, 0
  br i1 %890, label %892, label %536, !llvm.loop !133

891:                                              ; preds = %863
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %922

892:                                              ; preds = %886, %525, %532
  %893 = phi i32 [ %531, %525 ], [ 0, %532 ], [ %887, %886 ]
  %894 = phi ptr [ %137, %525 ], [ null, %532 ], [ %888, %886 ]
  store ptr %894, ptr %2, align 8, !tbaa !34
  br label %922

895:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false)
  store i32 1, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false)
  %896 = call fastcc i32 @stbtt__run_charstring(ptr noundef nonnull readonly %0, i32 noundef %1, ptr noundef %4) #17
  %897 = icmp eq i32 %896, 0
  br i1 %897, label %919, label %898

898:                                              ; preds = %895
  %899 = getelementptr inbounds nuw i8, ptr %4, i64 48
  %900 = load i32, ptr %899, align 8, !tbaa !116
  %901 = sext i32 %900 to i64
  %902 = mul nsw i64 %901, 14
  %903 = add nsw i64 %902, 15
  %904 = and i64 %903, -16
  %905 = load i64, ptr @arena_used, align 8, !tbaa !42
  %906 = sub i64 8388608, %905
  %907 = icmp ugt i64 %904, %906
  br i1 %907, label %911, label %908

908:                                              ; preds = %898
  %909 = getelementptr inbounds nuw i8, ptr @arena, i64 %905
  %910 = add i64 %904, %905
  store i64 %910, ptr @arena_used, align 8, !tbaa !42
  br label %911

911:                                              ; preds = %908, %898
  %912 = phi ptr [ %909, %908 ], [ null, %898 ]
  store ptr %912, ptr %2, align 8, !tbaa !34
  %913 = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %912, ptr %913, align 8, !tbaa !114
  %914 = call fastcc i32 @stbtt__run_charstring(ptr noundef nonnull readonly %0, i32 noundef %1, ptr noundef %5) #17
  %915 = icmp eq i32 %914, 0
  br i1 %915, label %919, label %916

916:                                              ; preds = %911
  %917 = getelementptr inbounds nuw i8, ptr %5, i64 48
  %918 = load i32, ptr %917, align 8, !tbaa !116
  br label %920

919:                                              ; preds = %911, %895
  store ptr null, ptr %2, align 8, !tbaa !34
  br label %920

920:                                              ; preds = %916, %919
  %921 = phi i32 [ %918, %916 ], [ 0, %919 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %922

922:                                              ; preds = %891, %107, %892, %94, %93, %920
  %923 = phi i32 [ %921, %920 ], [ 0, %891 ], [ %893, %892 ], [ 0, %93 ], [ 0, %94 ], [ 0, %107 ]
  ret i32 %923
}

declare ptr @memcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #9

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite)
define internal fastcc void @stbtt__tesselate_curve(ptr noundef writeonly captures(address_is_null) %0, ptr noundef nonnull captures(none) %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, i32 noundef %9) unnamed_addr #12 {
  %11 = icmp sgt i32 %9, 16
  br i1 %11, label %60, label %12

12:                                               ; preds = %10
  %13 = insertelement <2 x float> poison, float %5, i64 0
  %14 = insertelement <2 x float> %13, float %4, i64 1
  %15 = insertelement <2 x float> poison, float %3, i64 0
  %16 = insertelement <2 x float> %15, float %2, i64 1
  %17 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %14, <2 x float> splat (float 2.000000e+00), <2 x float> %16)
  %18 = insertelement <2 x float> poison, float %7, i64 0
  %19 = insertelement <2 x float> %18, float %6, i64 1
  br label %20

20:                                               ; preds = %12, %39
  %21 = phi i32 [ %46, %39 ], [ %9, %12 ]
  %22 = phi float [ %30, %39 ], [ %3, %12 ]
  %23 = phi float [ %34, %39 ], [ %2, %12 ]
  %24 = phi <2 x float> [ %49, %39 ], [ %17, %12 ]
  %25 = phi <2 x float> [ %48, %39 ], [ %14, %12 ]
  %26 = fadd <2 x float> %19, %24
  %27 = fmul <2 x float> %26, splat (float 2.500000e-01)
  %28 = fadd float %7, %22
  %29 = fmul float %28, 5.000000e-01
  %30 = extractelement <2 x float> %27, i64 0
  %31 = fsub float %29, %30
  %32 = fadd float %6, %23
  %33 = fmul float %32, 5.000000e-01
  %34 = extractelement <2 x float> %27, i64 1
  %35 = fsub float %33, %34
  %36 = fmul float %31, %31
  %37 = tail call float @llvm.fmuladd.f32(float %35, float %35, float %36)
  %38 = fcmp ogt float %37, %8
  br i1 %38, label %39, label %51

39:                                               ; preds = %20
  %40 = extractelement <2 x float> %25, i64 1
  %41 = fadd float %23, %40
  %42 = fmul float %41, 5.000000e-01
  %43 = extractelement <2 x float> %25, i64 0
  %44 = fadd float %22, %43
  %45 = fmul float %44, 5.000000e-01
  %46 = add nsw i32 %21, 1
  tail call fastcc void @stbtt__tesselate_curve(ptr noundef %0, ptr noundef %1, float noundef %23, float noundef %22, float noundef %42, float noundef %45, float noundef %34, float noundef %30, float noundef %8, i32 noundef %46) #17
  %47 = fadd <2 x float> %19, %25
  %48 = fmul <2 x float> %47, splat (float 5.000000e-01)
  %49 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %48, <2 x float> splat (float 2.000000e+00), <2 x float> %27)
  %50 = icmp eq i32 %46, 17
  br i1 %50, label %60, label %20

51:                                               ; preds = %20
  %52 = load i32, ptr %1, align 4, !tbaa !4
  %53 = icmp eq ptr %0, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %51
  %55 = sext i32 %52 to i64
  %56 = getelementptr inbounds %struct.stbtt__point, ptr %0, i64 %55
  store float %6, ptr %56, align 4, !tbaa !134
  %57 = getelementptr inbounds nuw i8, ptr %56, i64 4
  store float %7, ptr %57, align 4, !tbaa !57
  br label %58

58:                                               ; preds = %51, %54
  %59 = add nsw i32 %52, 1
  store i32 %59, ptr %1, align 4, !tbaa !4
  br label %60

60:                                               ; preds = %39, %10, %58
  ret void
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite)
define internal fastcc void @stbtt__tesselate_cubic(ptr noundef writeonly captures(address_is_null) %0, ptr noundef nonnull captures(none) %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, float noundef %9, float noundef %10, i32 noundef %11) unnamed_addr #12 {
  %13 = icmp sgt i32 %11, 16
  br i1 %13, label %104, label %14

14:                                               ; preds = %12, %58
  %15 = phi i32 [ %93, %58 ], [ %11, %12 ]
  %16 = phi float [ %83, %58 ], [ %7, %12 ]
  %17 = phi float [ %72, %58 ], [ %6, %12 ]
  %18 = phi float [ %90, %58 ], [ %5, %12 ]
  %19 = phi float [ %79, %58 ], [ %4, %12 ]
  %20 = phi float [ %92, %58 ], [ %3, %12 ]
  %21 = phi float [ %81, %58 ], [ %2, %12 ]
  %22 = fsub float %8, %21
  %23 = fsub float %9, %20
  %24 = fmul float %23, %23
  %25 = tail call float @llvm.fmuladd.f32(float %22, float %22, float %24)
  %26 = fpext float %25 to double
  %27 = tail call noundef double @llvm.sqrt.f64(double %26)
  %28 = fsub float %8, %17
  %29 = fsub float %9, %16
  %30 = fmul float %29, %29
  %31 = tail call float @llvm.fmuladd.f32(float %28, float %28, float %30)
  %32 = fpext float %31 to double
  %33 = tail call noundef double @llvm.sqrt.f64(double %32)
  %34 = insertelement <2 x float> poison, float %17, i64 0
  %35 = insertelement <2 x float> %34, float %19, i64 1
  %36 = insertelement <2 x float> poison, float %19, i64 0
  %37 = insertelement <2 x float> %36, float %21, i64 1
  %38 = fsub <2 x float> %35, %37
  %39 = insertelement <2 x float> poison, float %16, i64 0
  %40 = insertelement <2 x float> %39, float %18, i64 1
  %41 = insertelement <2 x float> poison, float %18, i64 0
  %42 = insertelement <2 x float> %41, float %20, i64 1
  %43 = fsub <2 x float> %40, %42
  %44 = fmul <2 x float> %43, %43
  %45 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %38, <2 x float> %38, <2 x float> %44)
  %46 = fpext <2 x float> %45 to <2 x double>
  %47 = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %46)
  %48 = shufflevector <2 x double> %47, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %49 = fadd <2 x double> %48, %47
  %50 = extractelement <2 x double> %49, i64 0
  %51 = fadd double %33, %50
  %52 = fptrunc double %51 to float
  %53 = fptrunc double %27 to float
  %54 = fneg float %53
  %55 = fmul float %53, %54
  %56 = tail call float @llvm.fmuladd.f32(float %52, float %52, float %55)
  %57 = fcmp ogt float %56, %10
  br i1 %57, label %58, label %95

58:                                               ; preds = %14
  %59 = insertelement <2 x float> poison, float %19, i64 0
  %60 = shufflevector <2 x float> %59, <2 x float> poison, <2 x i32> zeroinitializer
  %61 = insertelement <2 x float> poison, float %21, i64 0
  %62 = insertelement <2 x float> %61, float %17, i64 1
  %63 = fadd <2 x float> %60, %62
  %64 = insertelement <2 x float> poison, float %18, i64 0
  %65 = shufflevector <2 x float> %64, <2 x float> poison, <2 x i32> zeroinitializer
  %66 = insertelement <2 x float> poison, float %20, i64 0
  %67 = insertelement <2 x float> %66, float %16, i64 1
  %68 = fadd <2 x float> %65, %67
  %69 = fadd float %8, %17
  %70 = fadd float %9, %16
  %71 = fmul <2 x float> %63, splat (float 5.000000e-01)
  %72 = fmul float %69, 5.000000e-01
  %73 = extractelement <2 x float> %71, i64 0
  %74 = shufflevector <2 x float> %71, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %75 = insertelement <2 x float> %71, float %72, i64 1
  %76 = fadd <2 x float> %74, %75
  %77 = fmul <2 x float> %76, splat (float 5.000000e-01)
  %78 = extractelement <2 x float> %77, i64 0
  %79 = extractelement <2 x float> %77, i64 1
  %80 = fadd float %78, %79
  %81 = fmul float %80, 5.000000e-01
  %82 = fmul <2 x float> %68, splat (float 5.000000e-01)
  %83 = fmul float %70, 5.000000e-01
  %84 = extractelement <2 x float> %82, i64 0
  %85 = shufflevector <2 x float> %82, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %86 = insertelement <2 x float> %82, float %83, i64 1
  %87 = fadd <2 x float> %85, %86
  %88 = fmul <2 x float> %87, splat (float 5.000000e-01)
  %89 = extractelement <2 x float> %88, i64 0
  %90 = extractelement <2 x float> %88, i64 1
  %91 = fadd float %89, %90
  %92 = fmul float %91, 5.000000e-01
  %93 = add nsw i32 %15, 1
  tail call fastcc void @stbtt__tesselate_cubic(ptr noundef %0, ptr noundef %1, float noundef %21, float noundef %20, float noundef %73, float noundef %84, float noundef %78, float noundef %89, float noundef %81, float noundef %92, float noundef %10, i32 noundef %93) #17
  %94 = icmp eq i32 %93, 17
  br i1 %94, label %104, label %14

95:                                               ; preds = %14
  %96 = load i32, ptr %1, align 4, !tbaa !4
  %97 = icmp eq ptr %0, null
  br i1 %97, label %102, label %98

98:                                               ; preds = %95
  %99 = sext i32 %96 to i64
  %100 = getelementptr inbounds %struct.stbtt__point, ptr %0, i64 %99
  store float %8, ptr %100, align 4, !tbaa !134
  %101 = getelementptr inbounds nuw i8, ptr %100, i64 4
  store float %9, ptr %101, align 4, !tbaa !57
  br label %102

102:                                              ; preds = %95, %98
  %103 = add nsw i32 %96, 1
  store i32 %103, ptr %1, align 4, !tbaa !4
  br label %104

104:                                              ; preds = %58, %12, %102
  ret void
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite)
define internal fastcc void @stbtt__sort_edges_quicksort(ptr noundef nonnull %0, i32 noundef %1) unnamed_addr #12 {
  %3 = alloca %struct.stbtt__edge, align 4
  %4 = icmp sgt i32 %1, 12
  br i1 %4, label %5, label %67

5:                                                ; preds = %2, %63
  %6 = phi ptr [ %65, %63 ], [ %0, %2 ]
  %7 = phi i32 [ %64, %63 ], [ %1, %2 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %8 = lshr i32 %7, 1
  %9 = getelementptr inbounds nuw i8, ptr %6, i64 4
  %10 = load float, ptr %9, align 4, !tbaa !64
  %11 = zext nneg i32 %8 to i64
  %12 = getelementptr inbounds nuw %struct.stbtt__edge, ptr %6, i64 %11
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 4
  %14 = load float, ptr %13, align 4, !tbaa !64
  %15 = add nsw i32 %7, -1
  %16 = zext nneg i32 %15 to i64
  %17 = getelementptr inbounds nuw %struct.stbtt__edge, ptr %6, i64 %16
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 4
  %19 = load float, ptr %18, align 4, !tbaa !64
  %20 = fcmp olt float %14, %19
  %21 = fcmp uge float %10, %14
  %22 = xor i1 %21, %20
  br i1 %22, label %28, label %23

23:                                               ; preds = %5
  %24 = fcmp uge float %10, %19
  %25 = xor i1 %24, %20
  %26 = select i1 %25, i64 0, i64 %16
  %27 = getelementptr inbounds nuw %struct.stbtt__edge, ptr %6, i64 %26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %27, i64 20, i1 false), !tbaa.struct !65
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %27, ptr noundef nonnull align 4 dereferenceable(20) %12, i64 20, i1 false), !tbaa.struct !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %12, ptr noundef nonnull align 4 dereferenceable(20) %3, i64 20, i1 false), !tbaa.struct !65
  br label %28

28:                                               ; preds = %23, %5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %6, i64 20, i1 false), !tbaa.struct !65
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %6, ptr noundef nonnull align 4 dereferenceable(20) %12, i64 20, i1 false), !tbaa.struct !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %12, ptr noundef nonnull align 4 dereferenceable(20) %3, i64 20, i1 false), !tbaa.struct !65
  br label %29

29:                                               ; preds = %54, %28
  %30 = phi i64 [ 1, %28 ], [ %55, %54 ]
  %31 = phi i32 [ %15, %28 ], [ %56, %54 ]
  %32 = load float, ptr %9, align 4, !tbaa !64
  %33 = shl i64 %30, 32
  %34 = ashr exact i64 %33, 32
  br label %35

35:                                               ; preds = %35, %29
  %36 = phi i64 [ %41, %35 ], [ %34, %29 ]
  %37 = getelementptr inbounds %struct.stbtt__edge, ptr %6, i64 %36
  %38 = getelementptr inbounds nuw i8, ptr %37, i64 4
  %39 = load float, ptr %38, align 4, !tbaa !64
  %40 = fcmp olt float %39, %32
  %41 = add nsw i64 %36, 1
  br i1 %40, label %35, label %42

42:                                               ; preds = %35
  %43 = sext i32 %31 to i64
  br label %44

44:                                               ; preds = %44, %42
  %45 = phi i64 [ %50, %44 ], [ %43, %42 ]
  %46 = getelementptr inbounds %struct.stbtt__edge, ptr %6, i64 %45
  %47 = getelementptr inbounds nuw i8, ptr %46, i64 4
  %48 = load float, ptr %47, align 4, !tbaa !64
  %49 = fcmp olt float %32, %48
  %50 = add nsw i64 %45, -1
  br i1 %49, label %44, label %51

51:                                               ; preds = %44
  %52 = trunc nsw i64 %45 to i32
  %53 = icmp slt i64 %36, %45
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %37, i64 20, i1 false), !tbaa.struct !65
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %37, ptr noundef nonnull align 4 dereferenceable(20) %46, i64 20, i1 false), !tbaa.struct !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %46, ptr noundef nonnull align 4 dereferenceable(20) %3, i64 20, i1 false), !tbaa.struct !65
  %55 = add nsw i64 %36, 1
  %56 = add nsw i32 %52, -1
  br label %29

57:                                               ; preds = %51
  %58 = trunc nsw i64 %36 to i32
  %59 = sub nsw i32 %7, %58
  %60 = icmp sgt i32 %59, %52
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  tail call fastcc void @stbtt__sort_edges_quicksort(ptr noundef %6, i32 noundef %52) #17
  br label %63

62:                                               ; preds = %57
  tail call fastcc void @stbtt__sort_edges_quicksort(ptr noundef %37, i32 noundef %59) #17
  br label %63

63:                                               ; preds = %62, %61
  %64 = phi i32 [ %59, %61 ], [ %52, %62 ]
  %65 = phi ptr [ %37, %61 ], [ %6, %62 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %66 = icmp sgt i32 %64, 12
  br i1 %66, label %5, label %67, !llvm.loop !135

67:                                               ; preds = %63, %2
  ret void
}

declare ptr @memset(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read)
define internal fastcc range(i32 -1, 65536) i32 @stbtt__GetGlyphClass(ptr noundef readonly captures(none) %0, i32 noundef %1) unnamed_addr #4 {
  %3 = load i8, ptr %0, align 1, !tbaa !8
  %4 = zext i8 %3 to i16
  %5 = shl nuw i16 %4, 8
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %7 = load i8, ptr %6, align 1, !tbaa !8
  %8 = zext i8 %7 to i16
  %9 = or disjoint i16 %5, %8
  switch i16 %9, label %100 [
    i16 1, label %10
    i16 2, label %44
  ]

10:                                               ; preds = %2
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %12 = load i8, ptr %11, align 1, !tbaa !8
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 8
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %16 = load i8, ptr %15, align 1, !tbaa !8
  %17 = zext i8 %16 to i32
  %18 = or disjoint i32 %14, %17
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %20 = icmp slt i32 %1, %18
  br i1 %20, label %100, label %21

21:                                               ; preds = %10
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %23 = load i8, ptr %22, align 1, !tbaa !8
  %24 = zext i8 %23 to i32
  %25 = shl nuw nsw i32 %24, 8
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 5
  %27 = load i8, ptr %26, align 1, !tbaa !8
  %28 = zext i8 %27 to i32
  %29 = or disjoint i32 %25, %28
  %30 = add nuw nsw i32 %29, %18
  %31 = icmp samesign ult i32 %1, %30
  br i1 %31, label %32, label %100

32:                                               ; preds = %21
  %33 = sub nsw i32 %1, %18
  %34 = shl nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, ptr %19, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !8
  %38 = zext i8 %37 to i32
  %39 = shl nuw nsw i32 %38, 8
  %40 = getelementptr inbounds nuw i8, ptr %36, i64 1
  %41 = load i8, ptr %40, align 1, !tbaa !8
  %42 = zext i8 %41 to i32
  %43 = or disjoint i32 %39, %42
  br label %100

44:                                               ; preds = %2
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %46 = load i8, ptr %45, align 1, !tbaa !8
  %47 = zext i8 %46 to i32
  %48 = shl nuw nsw i32 %47, 8
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %50 = load i8, ptr %49, align 1, !tbaa !8
  %51 = zext i8 %50 to i32
  %52 = or disjoint i32 %48, %51
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %54 = icmp eq i32 %52, 0
  br i1 %54, label %100, label %55

55:                                               ; preds = %44
  %56 = add nsw i32 %52, -1
  br label %57

57:                                               ; preds = %55, %87
  %58 = phi i32 [ %89, %87 ], [ 0, %55 ]
  %59 = phi i32 [ %88, %87 ], [ %56, %55 ]
  %60 = add nsw i32 %58, %59
  %61 = ashr i32 %60, 1
  %62 = mul nsw i32 %61, 6
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, ptr %53, i64 %63
  %65 = load i8, ptr %64, align 1, !tbaa !8
  %66 = zext i8 %65 to i32
  %67 = shl nuw nsw i32 %66, 8
  %68 = getelementptr inbounds nuw i8, ptr %64, i64 1
  %69 = load i8, ptr %68, align 1, !tbaa !8
  %70 = zext i8 %69 to i32
  %71 = or disjoint i32 %67, %70
  %72 = icmp slt i32 %1, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %57
  %74 = add nsw i32 %61, -1
  br label %87

75:                                               ; preds = %57
  %76 = getelementptr inbounds nuw i8, ptr %64, i64 2
  %77 = load i8, ptr %76, align 1, !tbaa !8
  %78 = zext i8 %77 to i32
  %79 = shl nuw nsw i32 %78, 8
  %80 = getelementptr inbounds nuw i8, ptr %64, i64 3
  %81 = load i8, ptr %80, align 1, !tbaa !8
  %82 = zext i8 %81 to i32
  %83 = or disjoint i32 %79, %82
  %84 = icmp samesign ugt i32 %1, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %75
  %86 = add nsw i32 %61, 1
  br label %87

87:                                               ; preds = %73, %85
  %88 = phi i32 [ %59, %85 ], [ %74, %73 ]
  %89 = phi i32 [ %86, %85 ], [ %58, %73 ]
  %90 = icmp sgt i32 %89, %88
  br i1 %90, label %100, label %57, !llvm.loop !136

91:                                               ; preds = %75
  %92 = getelementptr inbounds nuw i8, ptr %64, i64 4
  %93 = load i8, ptr %92, align 1, !tbaa !8
  %94 = zext i8 %93 to i32
  %95 = shl nuw nsw i32 %94, 8
  %96 = getelementptr inbounds nuw i8, ptr %64, i64 5
  %97 = load i8, ptr %96, align 1, !tbaa !8
  %98 = zext i8 %97 to i32
  %99 = or disjoint i32 %95, %98
  br label %100

100:                                              ; preds = %87, %44, %10, %21, %91, %32, %2
  %101 = phi i32 [ %99, %91 ], [ -1, %2 ], [ %43, %32 ], [ 0, %10 ], [ 0, %21 ], [ 0, %44 ], [ 0, %87 ]
  ret i32 %101
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #13

attributes #0 = { nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem0: none, target_mem1: none) "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: read) "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem0: none, target_mem1: none) "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem0: none, target_mem1: none) "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem0: none, target_mem1: none) "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem0: none, target_mem1: none) "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nosync nounwind memory(argmem: readwrite) "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }
attributes #17 = { nobuiltin "no-builtins" }
attributes #18 = { nobuiltin nounwind "no-builtins" }

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
!8 = !{!6, !6, i64 0}
!9 = !{!10, !12, i64 8}
!10 = !{!"stbtt_fontinfo", !11, i64 0, !12, i64 8, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !13, i64 64, !13, i64 80, !13, i64 96, !13, i64 112, !13, i64 128, !13, i64 144}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!"", !12, i64 0, !5, i64 8, !5, i64 12}
!14 = !{!10, !5, i64 16}
!15 = !{!12, !12, i64 0}
!16 = !{!10, !5, i64 40}
!17 = !{!10, !5, i64 44}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!10, !5, i64 24}
!21 = !{!10, !5, i64 28}
!22 = !{!10, !5, i64 32}
!23 = !{!10, !5, i64 36}
!24 = !{!10, !5, i64 48}
!25 = !{i64 0, i64 8, !15, i64 8, i64 4, !4, i64 12, i64 4, !4}
!26 = !{!13, !5, i64 8}
!27 = !{!13, !5, i64 12}
!28 = !{!13, !12, i64 0}
!29 = distinct !{!29, !19}
!30 = !{!10, !5, i64 20}
!31 = !{!10, !5, i64 52}
!32 = distinct !{!32, !19}
!33 = !{!10, !5, i64 60}
!34 = !{!11, !11, i64 0}
!35 = !{!36, !6, i64 12}
!36 = !{!"", !37, i64 0, !37, i64 2, !37, i64 4, !37, i64 6, !37, i64 8, !37, i64 10, !6, i64 12, !6, i64 13}
!37 = !{!"short", !6, i64 0}
!38 = distinct !{!38, !19, !39, !40}
!39 = !{!"llvm.loop.isvectorized", i32 1}
!40 = !{!"llvm.loop.unroll.runtime.disable"}
!41 = distinct !{!41, !19, !40, !39}
!42 = !{!43, !43, i64 0}
!43 = !{!"long", !6, i64 0}
!44 = !{!37, !37, i64 0}
!45 = !{!46, !46, i64 0}
!46 = !{!"float", !6, i64 0}
!47 = !{!36, !37, i64 4}
!48 = !{!36, !37, i64 6}
!49 = !{!36, !37, i64 0}
!50 = !{!36, !37, i64 2}
!51 = !{!36, !37, i64 8}
!52 = !{!36, !37, i64 10}
!53 = distinct !{!53, !19}
!54 = distinct !{!54, !19}
!55 = distinct !{!55, !19, !39, !40}
!56 = distinct !{!56, !19, !40, !39}
!57 = !{!58, !46, i64 4}
!58 = !{!"", !46, i64 0, !46, i64 4}
!59 = !{!60, !5, i64 16}
!60 = !{!"stbtt__edge", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12, !5, i64 16}
!61 = distinct !{!61, !19}
!62 = distinct !{!62, !19}
!63 = !{i64 0, i64 4, !45, i64 4, i64 4, !45, i64 8, i64 4, !4}
!64 = !{!60, !46, i64 4}
!65 = !{i64 0, i64 4, !45, i64 4, i64 4, !45, i64 8, i64 4, !45, i64 12, i64 4, !45, i64 16, i64 4, !4}
!66 = distinct !{!66, !19}
!67 = !{!68, !68, i64 0}
!68 = !{!"p1 _ZTS18stbtt__active_edge", !11, i64 0}
!69 = !{!70, !46, i64 28}
!70 = !{!"stbtt__active_edge", !68, i64 0, !46, i64 8, !46, i64 12, !46, i64 16, !46, i64 20, !46, i64 24, !46, i64 28}
!71 = !{!70, !68, i64 0}
!72 = !{!70, !46, i64 20}
!73 = distinct !{!73, !19}
!74 = !{!60, !46, i64 12}
!75 = !{!76, !77, i64 0}
!76 = !{!"stbtt__hheap_chunk", !77, i64 0}
!77 = !{!"p1 _ZTS18stbtt__hheap_chunk", !11, i64 0}
!78 = !{!60, !46, i64 8}
!79 = !{!60, !46, i64 0}
!80 = !{!70, !46, i64 12}
!81 = !{!70, !46, i64 16}
!82 = !{!70, !46, i64 8}
!83 = !{!70, !46, i64 24}
!84 = distinct !{!84, !19}
!85 = distinct !{!85, !19}
!86 = distinct !{!86, !19}
!87 = distinct !{!87, !19}
!88 = distinct !{!88, !19}
!89 = distinct !{!89, !19}
!90 = distinct !{!90, !19}
!91 = distinct !{!91, !19}
!92 = distinct !{!92, !19}
!93 = distinct !{!93, !19}
!94 = distinct !{!94, !19}
!95 = distinct !{!95, !19}
!96 = distinct !{!96, !19}
!97 = distinct !{!97, !19}
!98 = distinct !{!98, !19}
!99 = distinct !{!99, !19}
!100 = distinct !{!100, !19}
!101 = distinct !{!101, !19}
!102 = distinct !{!102, !19}
!103 = !{!10, !5, i64 56}
!104 = distinct !{!104, !19}
!105 = distinct !{!105, !19}
!106 = !{!10, !5, i64 76}
!107 = !{!108, !5, i64 0}
!108 = !{!"", !5, i64 0, !5, i64 4, !46, i64 8, !46, i64 12, !46, i64 16, !46, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !11, i64 40, !5, i64 48}
!109 = !{!108, !5, i64 28}
!110 = !{!108, !5, i64 4}
!111 = !{!108, !5, i64 36}
!112 = !{!108, !5, i64 24}
!113 = !{!108, !5, i64 32}
!114 = !{!108, !11, i64 40}
!115 = distinct !{!115, !19}
!116 = !{!108, !5, i64 48}
!117 = distinct !{!117, !19}
!118 = distinct !{!118, !19}
!119 = distinct !{!119, !19}
!120 = distinct !{!120, !19, !121}
!121 = !{!"llvm.loop.peeled.count", i32 1}
!122 = !{!10, !5, i64 156}
!123 = distinct !{!123, !19}
!124 = distinct !{!124, !19}
!125 = !{!108, !46, i64 16}
!126 = !{!108, !46, i64 20}
!127 = distinct !{!127, !19}
!128 = distinct !{!128, !19}
!129 = distinct !{!129, !19}
!130 = distinct !{!130, !19}
!131 = distinct !{!131, !19, !39, !40}
!132 = distinct !{!132, !19, !40, !39}
!133 = distinct !{!133, !19}
!134 = !{!58, !46, i64 0}
!135 = distinct !{!135, !19}
!136 = distinct !{!136, !19}
