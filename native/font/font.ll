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
  br i1 %25, label %3501, label %26

26:                                               ; preds = %6
  %27 = add i64 %3, -257
  %28 = icmp ult i64 %27, -253
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  store i32 826689362, ptr %4, align 1
  %30 = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 2, ptr %30, align 1
  br label %3501

31:                                               ; preds = %26
  %32 = icmp slt i64 %2, 1
  %33 = icmp sgt i64 %2, %1
  %34 = or i1 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  store i32 826689362, ptr %4, align 1
  %36 = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 1, ptr %36, align 1
  br label %3501

37:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #17
  store ptr %0, ptr @stbtt__lo, align 8, !tbaa !8
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 %2
  store ptr %38, ptr @stbtt__hi, align 8, !tbaa !8
  %39 = load i8, ptr %0, align 1, !tbaa !11
  switch i8 %39, label %479 [
    i8 49, label %40
    i8 116, label %52
    i8 79, label %63
    i8 0, label %75
  ]

40:                                               ; preds = %37
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %42 = load i8, ptr %41, align 1, !tbaa !11
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %479

44:                                               ; preds = %40
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %46 = load i8, ptr %45, align 1, !tbaa !11
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %479

48:                                               ; preds = %44
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %50 = load i8, ptr %49, align 1, !tbaa !11
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %141, label %479

52:                                               ; preds = %37
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %54 = load i8, ptr %53, align 1, !tbaa !11
  switch i8 %54, label %479 [
    i8 121, label %55
    i8 114, label %87
    i8 116, label %95
  ]

55:                                               ; preds = %52
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %57 = load i8, ptr %56, align 1, !tbaa !11
  %58 = icmp eq i8 %57, 112
  br i1 %58, label %59, label %479

59:                                               ; preds = %55
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %61 = load i8, ptr %60, align 1, !tbaa !11
  %62 = icmp eq i8 %61, 49
  br i1 %62, label %141, label %479

63:                                               ; preds = %37
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %65 = load i8, ptr %64, align 1, !tbaa !11
  %66 = icmp eq i8 %65, 84
  br i1 %66, label %67, label %479

67:                                               ; preds = %63
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %69 = load i8, ptr %68, align 1, !tbaa !11
  %70 = icmp eq i8 %69, 84
  br i1 %70, label %71, label %479

71:                                               ; preds = %67
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %73 = load i8, ptr %72, align 1, !tbaa !11
  %74 = icmp eq i8 %73, 79
  br i1 %74, label %141, label %479

75:                                               ; preds = %37
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %77 = load i8, ptr %76, align 1, !tbaa !11
  %78 = icmp eq i8 %77, 1
  br i1 %78, label %79, label %479

79:                                               ; preds = %75
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %81 = load i8, ptr %80, align 1, !tbaa !11
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %83, label %479

83:                                               ; preds = %79
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %85 = load i8, ptr %84, align 1, !tbaa !11
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %141, label %479

87:                                               ; preds = %52
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %89 = load i8, ptr %88, align 1, !tbaa !11
  %90 = icmp eq i8 %89, 117
  br i1 %90, label %91, label %479

91:                                               ; preds = %87
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %93 = load i8, ptr %92, align 1, !tbaa !11
  %94 = icmp eq i8 %93, 101
  br i1 %94, label %141, label %479

95:                                               ; preds = %52
  %96 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %97 = load i8, ptr %96, align 1, !tbaa !11
  %98 = icmp eq i8 %97, 99
  br i1 %98, label %99, label %479

99:                                               ; preds = %95
  %100 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %101 = load i8, ptr %100, align 1, !tbaa !11
  %102 = icmp eq i8 %101, 102
  br i1 %102, label %103, label %479

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
  %132 = tail call fastcc i32 @ttULONG(ptr noundef nonnull readonly %104) #18
  %133 = icmp eq i32 %132, 131072
  br i1 %133, label %134, label %479

134:                                              ; preds = %131, %128
  %135 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %136 = tail call fastcc i32 @ttLONG(ptr noundef nonnull readonly %135) #18
  %137 = icmp slt i32 %136, 1
  br i1 %137, label %479, label %138

138:                                              ; preds = %134
  %139 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %140 = tail call fastcc i32 @ttULONG(ptr noundef nonnull readonly %139) #18
  br label %141

141:                                              ; preds = %48, %59, %71, %83, %91, %138
  %142 = phi i32 [ 0, %83 ], [ 0, %91 ], [ %140, %138 ], [ 0, %48 ], [ 0, %59 ], [ 0, %71 ]
  %143 = icmp sgt i32 %142, -1
  %144 = zext nneg i32 %142 to i64
  %145 = icmp samesign ugt i64 %2, %144
  %146 = select i1 %143, i1 %145, i1 false
  br i1 %146, label %147, label %479

147:                                              ; preds = %141
  %148 = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr %0, ptr %148, align 8, !tbaa !12
  %149 = getelementptr inbounds nuw i8, ptr %20, i64 16
  store i32 %142, ptr %149, align 8, !tbaa !15
  %150 = getelementptr inbounds nuw i8, ptr %20, i64 64
  store ptr null, ptr %150, align 8, !tbaa !8
  %151 = getelementptr inbounds nuw i8, ptr %20, i64 72
  store i64 0, ptr %151, align 8
  %152 = tail call fastcc i32 @stbtt__find_table(ptr noundef nonnull %0, i32 noundef range(i32 0, -2147483648) %142, ptr noundef nonnull @.str.4) #18
  %153 = tail call fastcc i32 @stbtt__find_table(ptr noundef nonnull %0, i32 noundef range(i32 0, -2147483648) %142, ptr noundef nonnull @.str.5) #18
  %154 = getelementptr inbounds nuw i8, ptr %20, i64 24
  store i32 %153, ptr %154, align 8, !tbaa !16
  %155 = tail call fastcc i32 @stbtt__find_table(ptr noundef nonnull %0, i32 noundef range(i32 0, -2147483648) %142, ptr noundef nonnull @.str.6) #18
  %156 = getelementptr inbounds nuw i8, ptr %20, i64 28
  store i32 %155, ptr %156, align 4, !tbaa !17
  %157 = tail call fastcc i32 @stbtt__find_table(ptr noundef nonnull %0, i32 noundef range(i32 0, -2147483648) %142, ptr noundef nonnull @.str.7) #18
  %158 = getelementptr inbounds nuw i8, ptr %20, i64 32
  store i32 %157, ptr %158, align 8, !tbaa !18
  %159 = tail call fastcc i32 @stbtt__find_table(ptr noundef nonnull %0, i32 noundef range(i32 0, -2147483648) %142, ptr noundef nonnull @.str.8) #18
  %160 = getelementptr inbounds nuw i8, ptr %20, i64 36
  store i32 %159, ptr %160, align 4, !tbaa !19
  %161 = tail call fastcc i32 @stbtt__find_table(ptr noundef nonnull %0, i32 noundef range(i32 0, -2147483648) %142, ptr noundef nonnull @.str.9) #18
  %162 = getelementptr inbounds nuw i8, ptr %20, i64 40
  store i32 %161, ptr %162, align 8, !tbaa !20
  %163 = tail call fastcc i32 @stbtt__find_table(ptr noundef nonnull %0, i32 noundef range(i32 0, -2147483648) %142, ptr noundef nonnull @.str.10) #18
  %164 = getelementptr inbounds nuw i8, ptr %20, i64 44
  store i32 %163, ptr %164, align 4, !tbaa !21
  %165 = tail call fastcc i32 @stbtt__find_table(ptr noundef nonnull %0, i32 noundef range(i32 0, -2147483648) %142, ptr noundef nonnull @.str.11) #18
  %166 = getelementptr inbounds nuw i8, ptr %20, i64 48
  store i32 %165, ptr %166, align 8, !tbaa !22
  %167 = icmp eq i32 %152, 0
  %168 = icmp eq i32 %155, 0
  %169 = select i1 %167, i1 true, i1 %168
  %170 = icmp eq i32 %159, 0
  %171 = select i1 %169, i1 true, i1 %170
  %172 = icmp eq i32 %161, 0
  %173 = select i1 %171, i1 true, i1 %172
  br i1 %173, label %479, label %174

174:                                              ; preds = %147
  %175 = icmp eq i32 %157, 0
  br i1 %175, label %178, label %176

176:                                              ; preds = %174
  %177 = icmp eq i32 %153, 0
  br i1 %177, label %479, label %276

178:                                              ; preds = %174
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  store i32 2, ptr %16, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #17
  store i32 0, ptr %17, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #17
  store i32 0, ptr %18, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #17
  store i32 0, ptr %19, align 4, !tbaa !4
  %179 = tail call fastcc i32 @stbtt__find_table(ptr noundef nonnull %0, i32 noundef range(i32 0, -2147483648) %142, ptr noundef nonnull @.str.12) #18
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %478, label %181

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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %150, i64 16, i1 false), !tbaa.struct !23
  %188 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %189 = load i32, ptr %188, align 8, !tbaa !24
  %190 = add i32 %189, 2
  %191 = getelementptr inbounds nuw i8, ptr %14, i64 12
  %192 = load i32, ptr %191, align 4, !tbaa !25
  %193 = icmp slt i32 %190, 0
  %194 = tail call i32 @llvm.smin.i32(i32 %190, i32 %192)
  %195 = select i1 %193, i32 %192, i32 %194
  %196 = icmp slt i32 %195, %192
  br i1 %196, label %197, label %207

197:                                              ; preds = %181
  %198 = load ptr, ptr %14, align 8, !tbaa !26
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
  store i32 %209, ptr %188, align 8, !tbaa !24
  %210 = call fastcc { ptr, i64 } @stbtt__cff_get_index(ptr noundef %14) #18
  %211 = call fastcc { ptr, i64 } @stbtt__cff_get_index(ptr noundef %14) #18
  %212 = extractvalue { ptr, i64 } %211, 0
  %213 = extractvalue { ptr, i64 } %211, 1
  %214 = tail call fastcc { ptr, i64 } @stbtt__cff_index_get(ptr %212, i64 %213, i32 noundef 0) #18
  %215 = extractvalue { ptr, i64 } %214, 0
  %216 = extractvalue { ptr, i64 } %214, 1
  store ptr %215, ptr %15, align 8, !tbaa !8
  %217 = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %216, ptr %217, align 8
  %218 = call fastcc { ptr, i64 } @stbtt__cff_get_index(ptr noundef %14) #18
  %219 = getelementptr inbounds nuw i8, ptr %20, i64 96
  %220 = call fastcc { ptr, i64 } @stbtt__cff_get_index(ptr noundef %14) #18
  %221 = extractvalue { ptr, i64 } %220, 0
  %222 = extractvalue { ptr, i64 } %220, 1
  store ptr %221, ptr %219, align 8, !tbaa !8
  %223 = getelementptr inbounds nuw i8, ptr %20, i64 104
  store i64 %222, ptr %223, align 8
  call fastcc void @stbtt__dict_get_ints(ptr noundef %15, i32 noundef 17, i32 noundef 1, ptr noundef %17) #18
  call fastcc void @stbtt__dict_get_ints(ptr noundef %15, i32 noundef 262, i32 noundef 1, ptr noundef %16) #18
  call fastcc void @stbtt__dict_get_ints(ptr noundef %15, i32 noundef 292, i32 noundef 1, ptr noundef %18) #18
  call fastcc void @stbtt__dict_get_ints(ptr noundef %15, i32 noundef 293, i32 noundef 1, ptr noundef %19) #18
  %224 = getelementptr inbounds nuw i8, ptr %20, i64 112
  %225 = load ptr, ptr %14, align 8
  %226 = load i64, ptr %188, align 8
  %227 = load ptr, ptr %15, align 8
  %228 = load i64, ptr %217, align 8
  %229 = tail call fastcc { ptr, i64 } @stbtt__get_subrs(ptr %225, i64 %226, ptr %227, i64 %228) #18
  %230 = extractvalue { ptr, i64 } %229, 0
  %231 = extractvalue { ptr, i64 } %229, 1
  store ptr %230, ptr %224, align 8, !tbaa !8
  %232 = getelementptr inbounds nuw i8, ptr %20, i64 120
  store i64 %231, ptr %232, align 8
  %233 = load i32, ptr %16, align 4, !tbaa !4
  %234 = icmp ne i32 %233, 2
  %235 = load i32, ptr %17, align 4
  %236 = icmp eq i32 %235, 0
  %237 = select i1 %234, i1 true, i1 %236
  %238 = lshr i64 %226, 32
  %239 = trunc nuw i64 %238 to i32
  br i1 %237, label %478, label %240

240:                                              ; preds = %207
  %241 = load i32, ptr %18, align 4, !tbaa !4
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %266, label %243

243:                                              ; preds = %240
  %244 = load i32, ptr %19, align 4, !tbaa !4
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %478, label %246

246:                                              ; preds = %243
  %247 = icmp slt i32 %241, 0
  %248 = tail call i32 @llvm.smin.i32(i32 %241, i32 %239)
  %249 = select i1 %247, i32 %239, i32 %248
  store i32 %249, ptr %188, align 8, !tbaa !24
  %250 = call fastcc { ptr, i64 } @stbtt__cff_get_index(ptr noundef %14) #18
  %251 = extractvalue { ptr, i64 } %250, 0
  %252 = extractvalue { ptr, i64 } %250, 1
  store ptr %251, ptr %182, align 8, !tbaa !8
  store i64 %252, ptr %183, align 8
  %253 = load i32, ptr %191, align 4, !tbaa !25
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
  store i32 %270, ptr %188, align 8, !tbaa !24
  %271 = getelementptr inbounds nuw i8, ptr %20, i64 80
  %272 = call fastcc { ptr, i64 } @stbtt__cff_get_index(ptr noundef %14) #18
  %273 = extractvalue { ptr, i64 } %272, 0
  %274 = extractvalue { ptr, i64 } %272, 1
  store ptr %273, ptr %271, align 8, !tbaa !8
  %275 = getelementptr inbounds nuw i8, ptr %20, i64 88
  store i64 %274, ptr %275, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  br label %276

276:                                              ; preds = %266, %176
  %277 = tail call fastcc i32 @stbtt__find_table(ptr noundef nonnull %0, i32 noundef range(i32 0, -2147483648) %142, ptr noundef nonnull @.str.13) #18
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
  store i32 %302, ptr %303, align 4, !tbaa !27
  %304 = getelementptr inbounds nuw i8, ptr %20, i64 52
  store i32 -1, ptr %304, align 4, !tbaa !28
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
  br i1 %326, label %479, label %327

327:                                              ; preds = %323
  %328 = add i32 %152, 4
  %329 = zext i16 %324 to i64
  br label %330

330:                                              ; preds = %448, %327
  %331 = phi i32 [ 0, %327 ], [ %449, %448 ]
  %332 = phi i32 [ 0, %327 ], [ %450, %448 ]
  %333 = phi i64 [ 0, %327 ], [ %451, %448 ]
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
  switch i16 %354, label %448 [
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
  switch i16 %373, label %448 [
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
  br i1 %405, label %438, label %443

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
  br i1 %437, label %438, label %443

438:                                              ; preds = %434, %402
  %439 = phi i32 [ %403, %402 ], [ %435, %434 ]
  %440 = getelementptr inbounds nuw i8, ptr %338, i64 7
  %441 = load i8, ptr %440, align 1, !tbaa !11
  %442 = zext i8 %441 to i32
  br label %443

443:                                              ; preds = %438, %434, %402
  %444 = phi i32 [ %403, %402 ], [ %435, %434 ], [ %439, %438 ]
  %445 = phi i32 [ 0, %402 ], [ 0, %434 ], [ %442, %438 ]
  %446 = add i32 %444, %152
  %447 = add i32 %446, %445
  br label %448

448:                                              ; preds = %443, %372, %353
  %449 = phi i32 [ %331, %353 ], [ %331, %372 ], [ %447, %443 ]
  %450 = phi i32 [ %332, %353 ], [ %332, %372 ], [ %447, %443 ]
  %451 = add nuw nsw i64 %333, 1
  %452 = icmp eq i64 %451, %329
  br i1 %452, label %453, label %330, !llvm.loop !29

453:                                              ; preds = %448
  store i32 %449, ptr %325, align 8
  %454 = icmp eq i32 %450, 0
  br i1 %454, label %479, label %455

455:                                              ; preds = %453
  %456 = sext i32 %155 to i64
  %457 = getelementptr inbounds i8, ptr %0, i64 %456
  %458 = icmp sgt i32 %155, -51
  %459 = add nsw i64 %456, 50
  %460 = icmp slt i64 %459, %2
  %461 = select i1 %458, i1 %460, i1 false
  br i1 %461, label %462, label %467

462:                                              ; preds = %455
  %463 = getelementptr inbounds nuw i8, ptr %457, i64 50
  %464 = load i8, ptr %463, align 1, !tbaa !11
  %465 = zext i8 %464 to i16
  %466 = shl nuw i16 %465, 8
  br label %467

467:                                              ; preds = %462, %455
  %468 = phi i16 [ %466, %462 ], [ 0, %455 ]
  %469 = icmp sgt i32 %155, -52
  %470 = add nsw i64 %456, 51
  %471 = icmp slt i64 %470, %2
  %472 = select i1 %469, i1 %471, i1 false
  br i1 %472, label %473, label %481

473:                                              ; preds = %467
  %474 = getelementptr inbounds nuw i8, ptr %457, i64 51
  %475 = load i8, ptr %474, align 1, !tbaa !11
  %476 = zext i8 %475 to i16
  %477 = or disjoint i16 %468, %476
  br label %481

478:                                              ; preds = %243, %207, %178
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  br label %479

479:                                              ; preds = %323, %453, %478, %147, %176, %55, %59, %87, %91, %40, %44, %48, %63, %67, %71, %75, %79, %83, %37, %52, %95, %99, %131, %134, %141
  store i32 826689362, ptr %4, align 1
  %480 = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 1, ptr %480, align 1
  br label %3500

481:                                              ; preds = %473, %467
  %482 = phi i16 [ %477, %473 ], [ %468, %467 ]
  %483 = zext i16 %482 to i32
  %484 = getelementptr inbounds nuw i8, ptr %20, i64 60
  store i32 %483, ptr %484, align 4, !tbaa !31
  %485 = uitofp nneg i64 %3 to float
  %486 = sext i32 %159 to i64
  %487 = getelementptr inbounds i8, ptr %0, i64 %486
  %488 = getelementptr inbounds nuw i8, ptr %487, i64 4
  %489 = icmp sgt i32 %159, -5
  %490 = add nsw i64 %486, 4
  %491 = icmp slt i64 %490, %2
  %492 = select i1 %489, i1 %491, i1 false
  br i1 %492, label %493, label %497

493:                                              ; preds = %481
  %494 = load i8, ptr %488, align 1, !tbaa !11
  %495 = zext i8 %494 to i16
  %496 = shl nuw i16 %495, 8
  br label %497

497:                                              ; preds = %493, %481
  %498 = phi i16 [ %496, %493 ], [ 0, %481 ]
  %499 = getelementptr inbounds nuw i8, ptr %487, i64 5
  %500 = icmp sgt i32 %159, -6
  %501 = add nsw i64 %486, 5
  %502 = icmp slt i64 %501, %2
  %503 = select i1 %500, i1 %502, i1 false
  br i1 %503, label %504, label %508

504:                                              ; preds = %497
  %505 = load i8, ptr %499, align 1, !tbaa !11
  %506 = zext i8 %505 to i16
  %507 = or disjoint i16 %498, %506
  br label %508

508:                                              ; preds = %504, %497
  %509 = phi i16 [ %507, %504 ], [ %498, %497 ]
  %510 = getelementptr inbounds nuw i8, ptr %487, i64 6
  %511 = icmp sgt i32 %159, -7
  %512 = add nsw i64 %486, 6
  %513 = icmp slt i64 %512, %2
  %514 = select i1 %511, i1 %513, i1 false
  br i1 %514, label %515, label %519

515:                                              ; preds = %508
  %516 = load i8, ptr %510, align 1, !tbaa !11
  %517 = zext i8 %516 to i16
  %518 = shl nuw i16 %517, 8
  br label %519

519:                                              ; preds = %515, %508
  %520 = phi i16 [ %518, %515 ], [ 0, %508 ]
  %521 = getelementptr inbounds nuw i8, ptr %487, i64 7
  %522 = icmp sgt i32 %159, -8
  %523 = add nsw i64 %486, 7
  %524 = icmp slt i64 %523, %2
  %525 = select i1 %522, i1 %524, i1 false
  br i1 %525, label %526, label %530

526:                                              ; preds = %519
  %527 = load i8, ptr %521, align 1, !tbaa !11
  %528 = zext i8 %527 to i16
  %529 = or disjoint i16 %520, %528
  br label %530

530:                                              ; preds = %519, %526
  %531 = phi i16 [ %529, %526 ], [ %520, %519 ]
  %532 = sext i16 %509 to i32
  %533 = sext i16 %531 to i32
  %534 = sub nsw i32 %532, %533
  %535 = sitofp i32 %534 to float
  %536 = fdiv float %485, %535
  br i1 %492, label %537, label %541

537:                                              ; preds = %530
  %538 = load i8, ptr %488, align 1, !tbaa !11
  %539 = zext i8 %538 to i16
  %540 = shl nuw i16 %539, 8
  br label %541

541:                                              ; preds = %537, %530
  %542 = phi i16 [ %540, %537 ], [ 0, %530 ]
  br i1 %503, label %543, label %547

543:                                              ; preds = %541
  %544 = load i8, ptr %499, align 1, !tbaa !11
  %545 = zext i8 %544 to i16
  %546 = or disjoint i16 %542, %545
  br label %547

547:                                              ; preds = %543, %541
  %548 = phi i16 [ %546, %543 ], [ %542, %541 ]
  br i1 %514, label %549, label %553

549:                                              ; preds = %547
  %550 = load i8, ptr %510, align 1, !tbaa !11
  %551 = zext i8 %550 to i16
  %552 = shl nuw i16 %551, 8
  br label %553

553:                                              ; preds = %549, %547
  %554 = phi i16 [ %552, %549 ], [ 0, %547 ]
  br i1 %525, label %555, label %559

555:                                              ; preds = %553
  %556 = load i8, ptr %521, align 1, !tbaa !11
  %557 = zext i8 %556 to i16
  %558 = or disjoint i16 %554, %557
  br label %559

559:                                              ; preds = %555, %553
  %560 = phi i16 [ %558, %555 ], [ %554, %553 ]
  %561 = sext i16 %560 to i32
  %562 = icmp sgt i32 %159, -9
  %563 = add nsw i64 %486, 8
  %564 = icmp slt i64 %563, %2
  %565 = select i1 %562, i1 %564, i1 false
  br i1 %565, label %566, label %571

566:                                              ; preds = %559
  %567 = getelementptr inbounds nuw i8, ptr %487, i64 8
  %568 = load i8, ptr %567, align 1, !tbaa !11
  %569 = zext i8 %568 to i16
  %570 = shl nuw i16 %569, 8
  br label %571

571:                                              ; preds = %566, %559
  %572 = phi i16 [ %570, %566 ], [ 0, %559 ]
  %573 = icmp sgt i32 %159, -10
  %574 = add nsw i64 %486, 9
  %575 = icmp slt i64 %574, %2
  %576 = select i1 %573, i1 %575, i1 false
  br i1 %576, label %577, label %582

577:                                              ; preds = %571
  %578 = getelementptr inbounds nuw i8, ptr %487, i64 9
  %579 = load i8, ptr %578, align 1, !tbaa !11
  %580 = zext i8 %579 to i16
  %581 = or disjoint i16 %572, %580
  br label %582

582:                                              ; preds = %571, %577
  %583 = phi i16 [ %581, %577 ], [ %572, %571 ]
  %584 = fcmp ogt float %536, 0.000000e+00
  %585 = fcmp olt float %536, 6.553600e+04
  %586 = and i1 %584, %585
  br i1 %586, label %589, label %587

587:                                              ; preds = %582
  store i32 826689362, ptr %4, align 1
  %588 = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 1, ptr %588, align 1
  br label %3500

589:                                              ; preds = %582
  %590 = sitofp i16 %548 to float
  %591 = fmul float %536, %590
  %592 = fpext float %591 to double
  %593 = tail call fastcc i32 @iceil(double noundef %592) #18
  %594 = sub nsw i32 0, %561
  %595 = sitofp i32 %594 to float
  %596 = fmul float %536, %595
  %597 = fpext float %596 to double
  %598 = tail call fastcc i32 @iceil(double noundef %597) #18
  %599 = add i32 %598, %593
  %600 = sitofp i16 %583 to float
  %601 = fmul float %536, %600
  %602 = fpext float %601 to double
  %603 = fcmp ogt double %602, 0x41DFFFFFFFC00000
  br i1 %603, label %609, label %604

604:                                              ; preds = %589
  %605 = fcmp olt float %601, 0xC1E0000000000000
  br i1 %605, label %609, label %606

606:                                              ; preds = %604
  %607 = fptosi float %601 to i64
  %608 = trunc i64 %607 to i32
  br label %609

609:                                              ; preds = %589, %604, %606
  %610 = phi i32 [ %608, %606 ], [ -2147483648, %604 ], [ 2147483647, %589 ]
  %611 = add i32 %599, %610
  %612 = tail call i64 @llvm.smin.i64(i64 %5, i64 1048576)
  %613 = add nsw i64 %612, -6788
  %614 = getelementptr inbounds nuw i8, ptr %487, i64 34
  %615 = getelementptr inbounds nuw i8, ptr %487, i64 35
  %616 = sext i32 %161 to i64
  %617 = getelementptr inbounds i8, ptr %0, i64 %616
  %618 = getelementptr inbounds nuw i8, ptr %4, i64 6788
  %619 = fdiv float 0x3FD6666660000000, %536
  %620 = fmul float %619, %619
  %621 = fneg float %536
  %622 = insertelement <4 x float> poison, float %536, i64 0
  %623 = insertelement <4 x float> %622, float %621, i64 1
  %624 = shufflevector <4 x float> %623, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  br label %625

625:                                              ; preds = %609, %2498
  %626 = phi i64 [ 0, %609 ], [ %2503, %2498 ]
  %627 = phi i32 [ 0, %609 ], [ %2500, %2498 ]
  %628 = phi i32 [ 0, %609 ], [ %714, %2498 ]
  %629 = phi i32 [ 0, %609 ], [ %2502, %2498 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #17
  %630 = trunc i64 %626 to i32
  %631 = add i32 %630, 32
  %632 = call fastcc i32 @stbtt_FindGlyphIndex(ptr noundef nonnull readonly %20, i32 noundef range(i32 -2147483616, 127) %631) #18
  %633 = load ptr, ptr @stbtt__lo, align 8, !tbaa !8
  %634 = icmp uge ptr %614, %633
  %635 = load ptr, ptr @stbtt__hi, align 8
  %636 = icmp ult ptr %614, %635
  %637 = select i1 %634, i1 %636, i1 false
  br i1 %637, label %638, label %642

638:                                              ; preds = %625
  %639 = load i8, ptr %614, align 1, !tbaa !11
  %640 = zext i8 %639 to i16
  %641 = shl nuw i16 %640, 8
  br label %642

642:                                              ; preds = %638, %625
  %643 = phi i16 [ %641, %638 ], [ 0, %625 ]
  %644 = icmp uge ptr %615, %633
  %645 = icmp ult ptr %615, %635
  %646 = select i1 %644, i1 %645, i1 false
  br i1 %646, label %647, label %651

647:                                              ; preds = %642
  %648 = load i8, ptr %615, align 1, !tbaa !11
  %649 = zext i8 %648 to i16
  %650 = or disjoint i16 %643, %649
  br label %651

651:                                              ; preds = %647, %642
  %652 = phi i16 [ %650, %647 ], [ %643, %642 ]
  %653 = zext i16 %652 to i32
  %654 = icmp slt i32 %632, %653
  br i1 %654, label %655, label %676

655:                                              ; preds = %651
  %656 = shl i32 %632, 2
  %657 = sext i32 %656 to i64
  %658 = getelementptr inbounds i8, ptr %617, i64 %657
  %659 = icmp uge ptr %658, %633
  %660 = icmp ult ptr %658, %635
  %661 = select i1 %659, i1 %660, i1 false
  br i1 %661, label %662, label %666

662:                                              ; preds = %655
  %663 = load i8, ptr %658, align 1, !tbaa !11
  %664 = zext i8 %663 to i16
  %665 = shl nuw i16 %664, 8
  br label %666

666:                                              ; preds = %662, %655
  %667 = phi i16 [ %665, %662 ], [ 0, %655 ]
  %668 = getelementptr inbounds nuw i8, ptr %658, i64 1
  %669 = icmp uge ptr %668, %633
  %670 = icmp ult ptr %668, %635
  %671 = select i1 %669, i1 %670, i1 false
  br i1 %671, label %672, label %698

672:                                              ; preds = %666
  %673 = load i8, ptr %668, align 1, !tbaa !11
  %674 = zext i8 %673 to i16
  %675 = or disjoint i16 %667, %674
  br label %698

676:                                              ; preds = %651
  %677 = shl nuw nsw i32 %653, 2
  %678 = zext nneg i32 %677 to i64
  %679 = getelementptr i8, ptr %617, i64 %678
  %680 = getelementptr i8, ptr %679, i64 -4
  %681 = icmp uge ptr %680, %633
  %682 = icmp ult ptr %680, %635
  %683 = select i1 %681, i1 %682, i1 false
  br i1 %683, label %684, label %688

684:                                              ; preds = %676
  %685 = load i8, ptr %680, align 1, !tbaa !11
  %686 = zext i8 %685 to i16
  %687 = shl nuw i16 %686, 8
  br label %688

688:                                              ; preds = %684, %676
  %689 = phi i16 [ %687, %684 ], [ 0, %676 ]
  %690 = getelementptr i8, ptr %679, i64 -3
  %691 = icmp uge ptr %690, %633
  %692 = icmp ult ptr %690, %635
  %693 = select i1 %691, i1 %692, i1 false
  br i1 %693, label %694, label %698

694:                                              ; preds = %688
  %695 = load i8, ptr %690, align 1, !tbaa !11
  %696 = zext i8 %695 to i16
  %697 = or disjoint i16 %689, %696
  br label %698

698:                                              ; preds = %688, %694, %666, %672
  %699 = phi i16 [ %667, %666 ], [ %675, %672 ], [ %697, %694 ], [ %689, %688 ]
  call fastcc void @stbtt_GetGlyphBitmapBoxSubpixel(ptr noundef nonnull readonly %20, i32 noundef %632, float noundef %536, float noundef %536, ptr noundef nonnull %21, ptr noundef nonnull %22, ptr noundef nonnull %23, ptr noundef nonnull %24) #18
  %700 = load i32, ptr %23, align 4, !tbaa !4
  %701 = load i32, ptr %21, align 4, !tbaa !4
  %702 = sub i32 %700, %701
  %703 = load i32, ptr %24, align 4, !tbaa !4
  %704 = load i32, ptr %22, align 4, !tbaa !4
  %705 = sub i32 %703, %704
  %706 = call i32 @llvm.smax.i32(i32 %702, i32 0)
  %707 = call i32 @llvm.smax.i32(i32 %705, i32 0)
  %708 = icmp sgt i32 %702, 512
  br i1 %708, label %2505, label %709

709:                                              ; preds = %698
  %710 = add i32 %706, %627
  %711 = icmp sgt i32 %710, 512
  %712 = add nuw i32 %629, 1
  %713 = select i1 %711, i32 %712, i32 0
  %714 = add i32 %713, %628
  %715 = select i1 %711, i32 0, i32 %627
  %716 = add i32 %714, %707
  %717 = sext i32 %716 to i64
  %718 = shl nsw i64 %717, 9
  %719 = icmp sgt i64 %718, %613
  br i1 %719, label %2505, label %720

720:                                              ; preds = %709
  %721 = mul nuw nsw i64 %626, 28
  %722 = sitofp i16 %699 to float
  %723 = fmul float %536, %722
  %724 = fpext float %723 to double
  %725 = fcmp ogt double %724, 0x41DFFFFFFFC00000
  br i1 %725, label %731, label %726

726:                                              ; preds = %720
  %727 = fcmp olt float %723, 0xC1E0000000000000
  br i1 %727, label %731, label %728

728:                                              ; preds = %726
  %729 = fptosi float %723 to i64
  %730 = sitofp i64 %729 to double
  br label %731

731:                                              ; preds = %728, %726, %720
  %732 = phi double [ %730, %728 ], [ 0xC1E0000000000000, %726 ], [ 0x41DFFFFFFFC00000, %720 ]
  %733 = fcmp olt double %732, %724
  %734 = fadd double %732, 1.000000e+00
  %735 = select i1 %733, double %734, double %732
  %736 = fcmp ogt double %735, 0x41DFFFFFFFC00000
  br i1 %736, label %742, label %737

737:                                              ; preds = %731
  %738 = fcmp olt double %735, 0xC1E0000000000000
  br i1 %738, label %742, label %739

739:                                              ; preds = %737
  %740 = fptosi double %735 to i64
  %741 = trunc i64 %740 to i32
  br label %742

742:                                              ; preds = %731, %737, %739
  %743 = phi i32 [ %741, %739 ], [ -2147483648, %737 ], [ 2147483647, %731 ]
  %744 = getelementptr inbounds nuw i8, ptr %4, i64 %721
  %745 = getelementptr inbounds nuw i8, ptr %744, i64 32
  store i32 %743, ptr %745, align 1
  %746 = getelementptr inbounds nuw i8, ptr %744, i64 36
  store i32 %701, ptr %746, align 1
  %747 = add i32 %704, %593
  %748 = getelementptr inbounds nuw i8, ptr %744, i64 40
  store i32 %747, ptr %748, align 1
  %749 = getelementptr inbounds nuw i8, ptr %744, i64 44
  store i32 %706, ptr %749, align 1
  %750 = getelementptr inbounds nuw i8, ptr %744, i64 48
  store i32 %707, ptr %750, align 1
  %751 = getelementptr inbounds nuw i8, ptr %744, i64 52
  store i32 %715, ptr %751, align 1
  %752 = getelementptr inbounds nuw i8, ptr %744, i64 56
  store i32 %714, ptr %752, align 1
  %753 = icmp sgt i32 %702, 0
  %754 = icmp sgt i32 %705, 0
  %755 = select i1 %753, i1 %754, i1 false
  br i1 %755, label %756, label %2498

756:                                              ; preds = %742
  %757 = sext i32 %714 to i64
  %758 = shl nsw i64 %757, 9
  %759 = getelementptr inbounds i8, ptr %618, i64 %758
  %760 = sext i32 %715 to i64
  %761 = getelementptr inbounds i8, ptr %759, i64 %760
  %762 = call fastcc i32 @stbtt_FindGlyphIndex(ptr noundef nonnull readonly %20, i32 noundef range(i32 -2147483616, 127) %631) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  %763 = call fastcc i32 @stbtt_GetGlyphShape(ptr noundef nonnull readonly %20, i32 noundef %762, ptr noundef %13) #18
  call fastcc void @stbtt_GetGlyphBitmapBoxSubpixel(ptr noundef nonnull readonly %20, i32 noundef %762, float noundef %536, float noundef %536, ptr noundef %11, ptr noundef %12, ptr noundef null, ptr noundef null) #18
  %764 = load ptr, ptr %13, align 8, !tbaa !32
  %765 = load i32, ptr %11, align 4, !tbaa !4
  %766 = load i32, ptr %12, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  %767 = icmp sgt i32 %763, 0
  br i1 %767, label %768, label %950

768:                                              ; preds = %756
  %769 = zext nneg i32 %763 to i64
  %770 = icmp ult i32 %763, 8
  br i1 %770, label %821, label %771

771:                                              ; preds = %768
  %772 = and i64 %769, 2147483640
  br label %773

773:                                              ; preds = %773, %771
  %774 = phi i64 [ 0, %771 ], [ %815, %773 ]
  %775 = phi <4 x i32> [ zeroinitializer, %771 ], [ %813, %773 ]
  %776 = phi <4 x i32> [ zeroinitializer, %771 ], [ %814, %773 ]
  %777 = getelementptr inbounds nuw %struct.stbtt_vertex, ptr %764, i64 %774
  %778 = getelementptr inbounds nuw %struct.stbtt_vertex, ptr %764, i64 %774
  %779 = getelementptr inbounds nuw %struct.stbtt_vertex, ptr %764, i64 %774
  %780 = getelementptr inbounds nuw %struct.stbtt_vertex, ptr %764, i64 %774
  %781 = getelementptr inbounds nuw %struct.stbtt_vertex, ptr %764, i64 %774
  %782 = getelementptr inbounds nuw %struct.stbtt_vertex, ptr %764, i64 %774
  %783 = getelementptr inbounds nuw %struct.stbtt_vertex, ptr %764, i64 %774
  %784 = getelementptr inbounds nuw %struct.stbtt_vertex, ptr %764, i64 %774
  %785 = getelementptr inbounds nuw i8, ptr %777, i64 12
  %786 = getelementptr inbounds nuw i8, ptr %778, i64 26
  %787 = getelementptr inbounds nuw i8, ptr %779, i64 40
  %788 = getelementptr inbounds nuw i8, ptr %780, i64 54
  %789 = getelementptr inbounds nuw i8, ptr %781, i64 68
  %790 = getelementptr inbounds nuw i8, ptr %782, i64 82
  %791 = getelementptr inbounds nuw i8, ptr %783, i64 96
  %792 = getelementptr inbounds nuw i8, ptr %784, i64 110
  %793 = load i8, ptr %785, align 2, !tbaa !33
  %794 = load i8, ptr %786, align 2, !tbaa !33
  %795 = load i8, ptr %787, align 2, !tbaa !33
  %796 = load i8, ptr %788, align 2, !tbaa !33
  %797 = insertelement <4 x i8> poison, i8 %793, i64 0
  %798 = insertelement <4 x i8> %797, i8 %794, i64 1
  %799 = insertelement <4 x i8> %798, i8 %795, i64 2
  %800 = insertelement <4 x i8> %799, i8 %796, i64 3
  %801 = load i8, ptr %789, align 2, !tbaa !33
  %802 = load i8, ptr %790, align 2, !tbaa !33
  %803 = load i8, ptr %791, align 2, !tbaa !33
  %804 = load i8, ptr %792, align 2, !tbaa !33
  %805 = insertelement <4 x i8> poison, i8 %801, i64 0
  %806 = insertelement <4 x i8> %805, i8 %802, i64 1
  %807 = insertelement <4 x i8> %806, i8 %803, i64 2
  %808 = insertelement <4 x i8> %807, i8 %804, i64 3
  %809 = icmp eq <4 x i8> %800, splat (i8 1)
  %810 = icmp eq <4 x i8> %808, splat (i8 1)
  %811 = zext <4 x i1> %809 to <4 x i32>
  %812 = zext <4 x i1> %810 to <4 x i32>
  %813 = add <4 x i32> %775, %811
  %814 = add <4 x i32> %776, %812
  %815 = add nuw i64 %774, 8
  %816 = icmp eq i64 %815, %772
  br i1 %816, label %817, label %773, !llvm.loop !36

817:                                              ; preds = %773
  %818 = add <4 x i32> %814, %813
  %819 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %818)
  %820 = icmp eq i64 %772, %769
  br i1 %820, label %835, label %821

821:                                              ; preds = %768, %817
  %822 = phi i64 [ 0, %768 ], [ %772, %817 ]
  %823 = phi i32 [ 0, %768 ], [ %819, %817 ]
  br label %824

824:                                              ; preds = %821, %824
  %825 = phi i64 [ %833, %824 ], [ %822, %821 ]
  %826 = phi i32 [ %832, %824 ], [ %823, %821 ]
  %827 = getelementptr inbounds nuw %struct.stbtt_vertex, ptr %764, i64 %825
  %828 = getelementptr inbounds nuw i8, ptr %827, i64 12
  %829 = load i8, ptr %828, align 2, !tbaa !33
  %830 = icmp eq i8 %829, 1
  %831 = zext i1 %830 to i32
  %832 = add i32 %826, %831
  %833 = add nuw nsw i64 %825, 1
  %834 = icmp eq i64 %833, %769
  br i1 %834, label %835, label %824, !llvm.loop !39

835:                                              ; preds = %824, %817
  %836 = phi i32 [ %819, %817 ], [ %832, %824 ]
  %837 = icmp eq i32 %836, 0
  br i1 %837, label %950, label %838

838:                                              ; preds = %835
  %839 = sext i32 %836 to i64
  %840 = shl nsw i64 %839, 2
  %841 = add nsw i64 %840, 15
  %842 = and i64 %841, -16
  %843 = load i64, ptr @arena_used, align 8, !tbaa !40
  %844 = sub i64 8388608, %843
  %845 = icmp ugt i64 %842, %844
  br i1 %845, label %950, label %846

846:                                              ; preds = %838
  %847 = getelementptr inbounds nuw i8, ptr @arena, i64 %843
  %848 = add i64 %843, %842
  store i64 %848, ptr @arena_used, align 8, !tbaa !40
  br label %849

849:                                              ; preds = %945, %846
  %850 = phi i32 [ 0, %846 ], [ %946, %945 ]
  %851 = phi i1 [ false, %846 ], [ true, %945 ]
  %852 = phi i1 [ true, %846 ], [ false, %945 ]
  %853 = phi i32 [ 0, %846 ], [ %941, %945 ]
  %854 = phi ptr [ null, %846 ], [ %868, %945 ]
  %855 = phi i64 [ %848, %846 ], [ %867, %945 ]
  br i1 %851, label %856, label %866

856:                                              ; preds = %849
  %857 = sext i32 %850 to i64
  %858 = shl nsw i64 %857, 3
  %859 = add nsw i64 %858, 15
  %860 = and i64 %859, -16
  %861 = sub i64 8388608, %855
  %862 = icmp ugt i64 %860, %861
  br i1 %862, label %950, label %863

863:                                              ; preds = %856
  %864 = getelementptr inbounds nuw i8, ptr @arena, i64 %855
  %865 = add i64 %855, %860
  store i64 %865, ptr @arena_used, align 8, !tbaa !40
  br label %866

866:                                              ; preds = %863, %849
  %867 = phi i64 [ %865, %863 ], [ %855, %849 ]
  %868 = phi ptr [ %864, %863 ], [ %854, %849 ]
  store i32 0, ptr %10, align 4, !tbaa !4
  %869 = icmp eq ptr %868, null
  br label %870

870:                                              ; preds = %939, %866
  %871 = phi i64 [ 0, %866 ], [ %943, %939 ]
  %872 = phi i32 [ %853, %866 ], [ %941, %939 ]
  %873 = phi i32 [ -1, %866 ], [ %940, %939 ]
  %874 = phi <2 x float> [ zeroinitializer, %866 ], [ %942, %939 ]
  %875 = getelementptr inbounds nuw %struct.stbtt_vertex, ptr %764, i64 %871
  %876 = getelementptr inbounds nuw i8, ptr %875, i64 12
  %877 = load i8, ptr %876, align 2, !tbaa !33
  switch i8 %877, label %939 [
    i8 1, label %878
    i8 2, label %893
    i8 3, label %901
    i8 4, label %917
  ]

878:                                              ; preds = %870
  %879 = icmp sgt i32 %873, -1
  %880 = load i32, ptr %10, align 4, !tbaa !4
  br i1 %879, label %881, label %885

881:                                              ; preds = %878
  %882 = sub i32 %880, %872
  %883 = zext nneg i32 %873 to i64
  %884 = getelementptr inbounds nuw i32, ptr %847, i64 %883
  store i32 %882, ptr %884, align 4, !tbaa !4
  br label %885

885:                                              ; preds = %881, %878
  %886 = add i32 %873, 1
  %887 = load <2 x i16>, ptr %875, align 2, !tbaa !42
  %888 = sitofp <2 x i16> %887 to <2 x float>
  %889 = add i32 %880, 1
  store i32 %889, ptr %10, align 4, !tbaa !4
  br i1 %869, label %939, label %890

890:                                              ; preds = %885
  %891 = sext i32 %880 to i64
  %892 = getelementptr inbounds %struct.stbtt__point, ptr %868, i64 %891
  store <2 x float> %888, ptr %892, align 4, !tbaa !43
  br label %939

893:                                              ; preds = %870
  %894 = load <2 x i16>, ptr %875, align 2, !tbaa !42
  %895 = sitofp <2 x i16> %894 to <2 x float>
  %896 = load i32, ptr %10, align 4, !tbaa !4
  %897 = add i32 %896, 1
  store i32 %897, ptr %10, align 4, !tbaa !4
  br i1 %869, label %939, label %898

898:                                              ; preds = %893
  %899 = sext i32 %896 to i64
  %900 = getelementptr inbounds %struct.stbtt__point, ptr %868, i64 %899
  store <2 x float> %895, ptr %900, align 4, !tbaa !43
  br label %939

901:                                              ; preds = %870
  %902 = getelementptr inbounds nuw i8, ptr %875, i64 4
  %903 = load i16, ptr %902, align 2, !tbaa !45
  %904 = sitofp i16 %903 to float
  %905 = getelementptr inbounds nuw i8, ptr %875, i64 6
  %906 = load i16, ptr %905, align 2, !tbaa !46
  %907 = sitofp i16 %906 to float
  %908 = load i16, ptr %875, align 2, !tbaa !47
  %909 = sitofp i16 %908 to float
  %910 = getelementptr inbounds nuw i8, ptr %875, i64 2
  %911 = load i16, ptr %910, align 2, !tbaa !48
  %912 = sitofp i16 %911 to float
  %913 = extractelement <2 x float> %874, i64 0
  %914 = extractelement <2 x float> %874, i64 1
  call fastcc void @stbtt__tesselate_curve(ptr noundef %868, ptr noundef %10, float noundef %913, float noundef %914, float noundef %904, float noundef %907, float noundef %909, float noundef %912, float noundef %620, i32 noundef 0) #18
  %915 = load <2 x i16>, ptr %875, align 2, !tbaa !42
  %916 = sitofp <2 x i16> %915 to <2 x float>
  br label %939

917:                                              ; preds = %870
  %918 = getelementptr inbounds nuw i8, ptr %875, i64 4
  %919 = load i16, ptr %918, align 2, !tbaa !45
  %920 = sitofp i16 %919 to float
  %921 = getelementptr inbounds nuw i8, ptr %875, i64 6
  %922 = load i16, ptr %921, align 2, !tbaa !46
  %923 = sitofp i16 %922 to float
  %924 = getelementptr inbounds nuw i8, ptr %875, i64 8
  %925 = load i16, ptr %924, align 2, !tbaa !49
  %926 = sitofp i16 %925 to float
  %927 = getelementptr inbounds nuw i8, ptr %875, i64 10
  %928 = load i16, ptr %927, align 2, !tbaa !50
  %929 = sitofp i16 %928 to float
  %930 = load i16, ptr %875, align 2, !tbaa !47
  %931 = sitofp i16 %930 to float
  %932 = getelementptr inbounds nuw i8, ptr %875, i64 2
  %933 = load i16, ptr %932, align 2, !tbaa !48
  %934 = sitofp i16 %933 to float
  %935 = extractelement <2 x float> %874, i64 0
  %936 = extractelement <2 x float> %874, i64 1
  call fastcc void @stbtt__tesselate_cubic(ptr noundef %868, ptr noundef %10, float noundef %935, float noundef %936, float noundef %920, float noundef %923, float noundef %926, float noundef %929, float noundef %931, float noundef %934, float noundef %620, i32 noundef 0) #18
  %937 = load <2 x i16>, ptr %875, align 2, !tbaa !42
  %938 = sitofp <2 x i16> %937 to <2 x float>
  br label %939

939:                                              ; preds = %917, %901, %898, %893, %890, %885, %870
  %940 = phi i32 [ %873, %870 ], [ %873, %917 ], [ %886, %890 ], [ %873, %901 ], [ %886, %885 ], [ %873, %893 ], [ %873, %898 ]
  %941 = phi i32 [ %872, %870 ], [ %872, %917 ], [ %880, %890 ], [ %872, %901 ], [ %880, %885 ], [ %872, %893 ], [ %872, %898 ]
  %942 = phi <2 x float> [ %874, %870 ], [ %938, %917 ], [ %888, %890 ], [ %916, %901 ], [ %888, %885 ], [ %895, %893 ], [ %895, %898 ]
  %943 = add nuw nsw i64 %871, 1
  %944 = icmp eq i64 %943, %769
  br i1 %944, label %945, label %870, !llvm.loop !51

945:                                              ; preds = %939
  %946 = load i32, ptr %10, align 4, !tbaa !4
  %947 = sext i32 %940 to i64
  %948 = sub i32 %946, %941
  %949 = getelementptr inbounds i32, ptr %847, i64 %947
  store i32 %948, ptr %949, align 4, !tbaa !4
  br i1 %852, label %849, label %951, !llvm.loop !52

950:                                              ; preds = %856, %838, %835, %756
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %2497

951:                                              ; preds = %945
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br i1 %869, label %2497, label %952

952:                                              ; preds = %951
  %953 = icmp sgt i32 %836, 0
  br i1 %953, label %954, label %995

954:                                              ; preds = %952
  %955 = zext nneg i32 %836 to i64
  %956 = icmp ult i32 %836, 8
  br i1 %956, label %975, label %957

957:                                              ; preds = %954
  %958 = and i64 %955, 2147483640
  br label %959

959:                                              ; preds = %959, %957
  %960 = phi i64 [ 0, %957 ], [ %969, %959 ]
  %961 = phi <4 x i32> [ zeroinitializer, %957 ], [ %967, %959 ]
  %962 = phi <4 x i32> [ zeroinitializer, %957 ], [ %968, %959 ]
  %963 = getelementptr inbounds nuw i32, ptr %847, i64 %960
  %964 = getelementptr inbounds nuw i8, ptr %963, i64 16
  %965 = load <4 x i32>, ptr %963, align 4, !tbaa !4
  %966 = load <4 x i32>, ptr %964, align 4, !tbaa !4
  %967 = add <4 x i32> %965, %961
  %968 = add <4 x i32> %966, %962
  %969 = add nuw i64 %960, 8
  %970 = icmp eq i64 %969, %958
  br i1 %970, label %971, label %959, !llvm.loop !53

971:                                              ; preds = %959
  %972 = add <4 x i32> %968, %967
  %973 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %972)
  %974 = icmp eq i64 %958, %955
  br i1 %974, label %986, label %975

975:                                              ; preds = %954, %971
  %976 = phi i64 [ 0, %954 ], [ %958, %971 ]
  %977 = phi i32 [ 0, %954 ], [ %973, %971 ]
  br label %978

978:                                              ; preds = %975, %978
  %979 = phi i64 [ %984, %978 ], [ %976, %975 ]
  %980 = phi i32 [ %983, %978 ], [ %977, %975 ]
  %981 = getelementptr inbounds nuw i32, ptr %847, i64 %979
  %982 = load i32, ptr %981, align 4, !tbaa !4
  %983 = add i32 %982, %980
  %984 = add nuw nsw i64 %979, 1
  %985 = icmp eq i64 %984, %955
  br i1 %985, label %986, label %978, !llvm.loop !54

986:                                              ; preds = %978, %971
  %987 = phi i32 [ %973, %971 ], [ %983, %978 ]
  %988 = add i32 %987, 1
  %989 = sext i32 %988 to i64
  %990 = mul nsw i64 %989, 20
  %991 = add nsw i64 %990, 15
  %992 = and i64 %991, -16
  %993 = sub i64 8388608, %867
  %994 = icmp ugt i64 %992, %993
  br i1 %994, label %2497, label %1001

995:                                              ; preds = %952
  %996 = add i64 %867, -8388577
  %997 = icmp ult i64 %996, 32
  br i1 %997, label %2497, label %998

998:                                              ; preds = %995
  %999 = getelementptr inbounds nuw i8, ptr @arena, i64 %867
  %1000 = add i64 %867, 32
  store i64 %1000, ptr @arena_used, align 8, !tbaa !40
  br label %1095

1001:                                             ; preds = %986
  %1002 = getelementptr inbounds nuw i8, ptr @arena, i64 %867
  %1003 = add i64 %992, %867
  store i64 %1003, ptr @arena_used, align 8, !tbaa !40
  br label %1004

1004:                                             ; preds = %1057, %1001
  %1005 = phi i64 [ 0, %1001 ], [ %1059, %1057 ]
  %1006 = phi i32 [ 0, %1001 ], [ %1058, %1057 ]
  %1007 = phi i32 [ 0, %1001 ], [ %1012, %1057 ]
  %1008 = sext i32 %1007 to i64
  %1009 = getelementptr inbounds %struct.stbtt__point, ptr %868, i64 %1008
  %1010 = getelementptr inbounds nuw i32, ptr %847, i64 %1005
  %1011 = load i32, ptr %1010, align 4, !tbaa !4
  %1012 = add i32 %1011, %1007
  %1013 = icmp sgt i32 %1011, 0
  br i1 %1013, label %1014, label %1057

1014:                                             ; preds = %1004
  %1015 = add nsw i32 %1011, -1
  br label %1016

1016:                                             ; preds = %1050, %1014
  %1017 = phi i32 [ %1011, %1014 ], [ %1052, %1050 ]
  %1018 = phi i64 [ 0, %1014 ], [ %1054, %1050 ]
  %1019 = phi i32 [ %1006, %1014 ], [ %1053, %1050 ]
  %1020 = phi i32 [ %1015, %1014 ], [ %1051, %1050 ]
  %1021 = zext nneg i32 %1020 to i64
  %1022 = getelementptr inbounds nuw %struct.stbtt__point, ptr %1009, i64 %1021
  %1023 = getelementptr inbounds nuw i8, ptr %1022, i64 4
  %1024 = load float, ptr %1023, align 4, !tbaa !55
  %1025 = getelementptr inbounds nuw %struct.stbtt__point, ptr %1009, i64 %1018
  %1026 = getelementptr inbounds nuw i8, ptr %1025, i64 4
  %1027 = load float, ptr %1026, align 4, !tbaa !55
  %1028 = fcmp oeq float %1024, %1027
  br i1 %1028, label %1029, label %1031

1029:                                             ; preds = %1016
  %1030 = trunc nuw nsw i64 %1018 to i32
  br label %1050

1031:                                             ; preds = %1016
  %1032 = sext i32 %1019 to i64
  %1033 = getelementptr inbounds %struct.stbtt__edge, ptr %1002, i64 %1032
  %1034 = getelementptr inbounds nuw i8, ptr %1033, i64 16
  %1035 = fcmp ogt float %1024, %1027
  %1036 = zext i1 %1035 to i32
  %1037 = trunc nuw nsw i64 %1018 to i32
  %1038 = select i1 %1035, i32 %1020, i32 %1037
  %1039 = select i1 %1035, i32 %1037, i32 %1020
  store i32 %1036, ptr %1034, align 4, !tbaa !57
  %1040 = zext nneg i32 %1038 to i64
  %1041 = getelementptr inbounds nuw %struct.stbtt__point, ptr %1009, i64 %1040
  %1042 = zext nneg i32 %1039 to i64
  %1043 = getelementptr inbounds nuw %struct.stbtt__point, ptr %1009, i64 %1042
  %1044 = load <2 x float>, ptr %1041, align 4, !tbaa !43
  %1045 = load <2 x float>, ptr %1043, align 4, !tbaa !43
  %1046 = shufflevector <2 x float> %1044, <2 x float> %1045, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %1047 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %1046, <4 x float> %624, <4 x float> zeroinitializer)
  store <4 x float> %1047, ptr %1033, align 4, !tbaa !43
  %1048 = add i32 %1019, 1
  %1049 = load i32, ptr %1010, align 4, !tbaa !4
  br label %1050

1050:                                             ; preds = %1031, %1029
  %1051 = phi i32 [ %1030, %1029 ], [ %1037, %1031 ]
  %1052 = phi i32 [ %1017, %1029 ], [ %1049, %1031 ]
  %1053 = phi i32 [ %1019, %1029 ], [ %1048, %1031 ]
  %1054 = add nuw nsw i64 %1018, 1
  %1055 = sext i32 %1052 to i64
  %1056 = icmp slt i64 %1054, %1055
  br i1 %1056, label %1016, label %1057, !llvm.loop !59

1057:                                             ; preds = %1050, %1004
  %1058 = phi i32 [ %1006, %1004 ], [ %1053, %1050 ]
  %1059 = add nuw nsw i64 %1005, 1
  %1060 = icmp eq i64 %1059, %955
  br i1 %1060, label %1061, label %1004, !llvm.loop !60

1061:                                             ; preds = %1057
  call fastcc void @stbtt__sort_edges_quicksort(ptr noundef nonnull %1002, i32 noundef %1058) #18
  %1062 = icmp sgt i32 %1058, 1
  br i1 %1062, label %1063, label %1095

1063:                                             ; preds = %1061
  %1064 = zext nneg i32 %1058 to i64
  br label %1065

1065:                                             ; preds = %1092, %1063
  %1066 = phi i64 [ 1, %1063 ], [ %1093, %1092 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %1067 = getelementptr inbounds nuw %struct.stbtt__edge, ptr %1002, i64 %1066
  %1068 = getelementptr inbounds nuw i8, ptr %1067, i64 4
  %1069 = load float, ptr %1068, align 4, !tbaa !43
  %1070 = load <2 x float>, ptr %1067, align 4, !tbaa !43
  %1071 = getelementptr inbounds nuw i8, ptr %1067, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %9, ptr noundef nonnull align 4 dereferenceable(12) %1071, i64 12, i1 false), !tbaa.struct !61
  br label %1072

1072:                                             ; preds = %1078, %1065
  %1073 = phi i64 [ %1066, %1065 ], [ %1080, %1078 ]
  %1074 = getelementptr %struct.stbtt__edge, ptr %1002, i64 %1073
  %1075 = getelementptr i8, ptr %1074, i64 -16
  %1076 = load float, ptr %1075, align 4, !tbaa !62
  %1077 = fcmp olt float %1069, %1076
  br i1 %1077, label %1078, label %1082

1078:                                             ; preds = %1072
  %1079 = getelementptr i8, ptr %1074, i64 -20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %1074, ptr noundef nonnull align 4 dereferenceable(20) %1079, i64 20, i1 false), !tbaa.struct !63
  %1080 = add nsw i64 %1073, -1
  %1081 = icmp sgt i64 %1073, 1
  br i1 %1081, label %1072, label %1084

1082:                                             ; preds = %1072
  %1083 = trunc nuw nsw i64 %1073 to i32
  br label %1084

1084:                                             ; preds = %1078, %1082
  %1085 = phi i32 [ %1083, %1082 ], [ 0, %1078 ]
  %1086 = zext i32 %1085 to i64
  %1087 = icmp eq i64 %1066, %1086
  br i1 %1087, label %1092, label %1088

1088:                                             ; preds = %1084
  %1089 = sext i32 %1085 to i64
  %1090 = getelementptr inbounds %struct.stbtt__edge, ptr %1002, i64 %1089
  store <2 x float> %1070, ptr %1090, align 4, !tbaa !43
  %1091 = getelementptr inbounds nuw i8, ptr %1090, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %1091, ptr noundef nonnull align 8 dereferenceable(12) %9, i64 12, i1 false), !tbaa.struct !61
  br label %1092

1092:                                             ; preds = %1088, %1084
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %1093 = add nuw nsw i64 %1066, 1
  %1094 = icmp eq i64 %1093, %1064
  br i1 %1094, label %1095, label %1065, !llvm.loop !64

1095:                                             ; preds = %1092, %1061, %998
  %1096 = phi i32 [ 0, %998 ], [ %1058, %1061 ], [ %1058, %1092 ]
  %1097 = phi ptr [ %999, %998 ], [ %1002, %1061 ], [ %1002, %1092 ]
  %1098 = phi i64 [ %1000, %998 ], [ %1003, %1061 ], [ %1003, %1092 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr null, ptr %7, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %1099 = icmp sgt i32 %702, 64
  br i1 %1099, label %1100, label %1110

1100:                                             ; preds = %1095
  %1101 = shl nuw nsw i32 %706, 3
  %1102 = add nuw nsw i32 %1101, 19
  %1103 = and i32 %1102, 16368
  %1104 = zext nneg i32 %1103 to i64
  %1105 = sub i64 8388608, %1098
  %1106 = icmp ult i64 %1105, %1104
  br i1 %1106, label %2496, label %1107

1107:                                             ; preds = %1100
  %1108 = getelementptr inbounds nuw i8, ptr @arena, i64 %1098
  %1109 = add i64 %1098, %1104
  store i64 %1109, ptr @arena_used, align 8, !tbaa !40
  br label %1110

1110:                                             ; preds = %1107, %1095
  %1111 = phi ptr [ %1108, %1107 ], [ %8, %1095 ]
  %1112 = getelementptr inbounds nuw i8, ptr @arena, i64 %867
  %1113 = zext nneg i32 %706 to i64
  %1114 = getelementptr inbounds nuw float, ptr %1111, i64 %1113
  %1115 = add i32 %766, %707
  %1116 = sitofp i32 %1115 to float
  %1117 = fadd float %1116, 1.000000e+00
  %1118 = sext i32 %1096 to i64
  %1119 = getelementptr inbounds %struct.stbtt__edge, ptr %1112, i64 %1118
  %1120 = getelementptr inbounds nuw i8, ptr %1119, i64 4
  store float %1117, ptr %1120, align 4, !tbaa !62
  %1121 = sitofp i32 %765 to float
  %1122 = icmp ne i32 %766, 0
  %1123 = getelementptr inbounds nuw i8, ptr %1114, i64 4
  %1124 = shl nuw nsw i32 %706, 2
  %1125 = zext nneg i32 %1124 to i64
  %1126 = add nuw nsw i32 %1124, 4
  %1127 = zext nneg i32 %1126 to i64
  %1128 = uitofp nneg i32 %706 to float
  br label %1129

1129:                                             ; preds = %2492, %1110
  %1130 = phi ptr [ %1097, %1110 ], [ %1244, %2492 ]
  %1131 = phi i32 [ %766, %1110 ], [ %2493, %2492 ]
  %1132 = phi i32 [ 0, %1110 ], [ %2494, %2492 ]
  %1133 = phi ptr [ null, %1110 ], [ %1243, %2492 ]
  %1134 = phi i32 [ 0, %1110 ], [ %1242, %2492 ]
  %1135 = phi ptr [ null, %1110 ], [ %1241, %2492 ]
  %1136 = sitofp i32 %1131 to float
  %1137 = fadd float %1136, 1.000000e+00
  %1138 = call ptr @memset(ptr noundef nonnull %1111, i32 noundef 0, i64 noundef %1125) #19
  %1139 = call ptr @memset(ptr noundef nonnull %1114, i32 noundef 0, i64 noundef %1127) #19
  %1140 = load ptr, ptr %7, align 8, !tbaa !65
  %1141 = icmp eq ptr %1140, null
  br i1 %1141, label %1142, label %1151

1142:                                             ; preds = %1161, %1129
  %1143 = phi ptr [ %1135, %1129 ], [ %1162, %1161 ]
  %1144 = getelementptr inbounds nuw i8, ptr %1130, i64 4
  %1145 = load float, ptr %1144, align 4, !tbaa !62
  %1146 = fcmp ugt float %1145, %1137
  br i1 %1146, label %1240, label %1147

1147:                                             ; preds = %1142
  %1148 = load i64, ptr @arena_used, align 8
  %1149 = icmp eq i32 %1132, 0
  %1150 = and i1 %1122, %1149
  br label %1166

1151:                                             ; preds = %1129, %1161
  %1152 = phi ptr [ %1164, %1161 ], [ %1140, %1129 ]
  %1153 = phi ptr [ %1163, %1161 ], [ %7, %1129 ]
  %1154 = phi ptr [ %1162, %1161 ], [ %1135, %1129 ]
  %1155 = getelementptr inbounds nuw i8, ptr %1152, i64 28
  %1156 = load float, ptr %1155, align 4, !tbaa !67
  %1157 = fcmp ugt float %1156, %1136
  br i1 %1157, label %1161, label %1158

1158:                                             ; preds = %1151
  %1159 = load ptr, ptr %1152, align 8, !tbaa !69
  store ptr %1159, ptr %1153, align 8, !tbaa !65
  %1160 = getelementptr inbounds nuw i8, ptr %1152, i64 20
  store float 0.000000e+00, ptr %1160, align 4, !tbaa !70
  store ptr %1154, ptr %1152, align 8, !tbaa !32
  br label %1161

1161:                                             ; preds = %1158, %1151
  %1162 = phi ptr [ %1154, %1151 ], [ %1152, %1158 ]
  %1163 = phi ptr [ %1152, %1151 ], [ %1153, %1158 ]
  %1164 = load ptr, ptr %1163, align 8, !tbaa !65
  %1165 = icmp eq ptr %1164, null
  br i1 %1165, label %1142, label %1151, !llvm.loop !71

1166:                                             ; preds = %1231, %1147
  %1167 = phi float [ %1145, %1147 ], [ %1238, %1231 ]
  %1168 = phi ptr [ %1130, %1147 ], [ %1236, %1231 ]
  %1169 = phi ptr [ %1133, %1147 ], [ %1235, %1231 ]
  %1170 = phi i32 [ %1134, %1147 ], [ %1234, %1231 ]
  %1171 = phi ptr [ %1143, %1147 ], [ %1233, %1231 ]
  %1172 = phi i64 [ %1148, %1147 ], [ %1232, %1231 ]
  %1173 = getelementptr inbounds nuw i8, ptr %1168, i64 12
  %1174 = load float, ptr %1173, align 4, !tbaa !72
  %1175 = fcmp une float %1167, %1174
  br i1 %1175, label %1176, label %1231

1176:                                             ; preds = %1166
  %1177 = icmp eq ptr %1171, null
  br i1 %1177, label %1180, label %1178

1178:                                             ; preds = %1176
  %1179 = load ptr, ptr %1171, align 8, !tbaa !32
  br label %1198

1180:                                             ; preds = %1176
  %1181 = icmp eq i32 %1170, 0
  br i1 %1181, label %1184, label %1182

1182:                                             ; preds = %1180
  %1183 = add nsw i32 %1170, -1
  br label %1190

1184:                                             ; preds = %1180
  %1185 = add i64 %1172, -8362993
  %1186 = icmp ult i64 %1185, 25616
  br i1 %1186, label %1231, label %1187

1187:                                             ; preds = %1184
  %1188 = getelementptr inbounds nuw i8, ptr @arena, i64 %1172
  %1189 = add i64 %1172, 25616
  store i64 %1189, ptr @arena_used, align 8, !tbaa !40
  store ptr %1169, ptr %1188, align 8, !tbaa !73
  br label %1190

1190:                                             ; preds = %1187, %1182
  %1191 = phi i64 [ %1189, %1187 ], [ %1172, %1182 ]
  %1192 = phi ptr [ %1188, %1187 ], [ %1169, %1182 ]
  %1193 = phi i32 [ 799, %1187 ], [ %1183, %1182 ]
  %1194 = getelementptr inbounds nuw i8, ptr %1192, i64 8
  %1195 = zext nneg i32 %1193 to i64
  %1196 = shl nuw nsw i64 %1195, 5
  %1197 = getelementptr inbounds nuw i8, ptr %1194, i64 %1196
  br label %1198

1198:                                             ; preds = %1190, %1178
  %1199 = phi i64 [ %1191, %1190 ], [ %1172, %1178 ]
  %1200 = phi ptr [ null, %1190 ], [ %1179, %1178 ]
  %1201 = phi i32 [ %1193, %1190 ], [ %1170, %1178 ]
  %1202 = phi ptr [ %1192, %1190 ], [ %1169, %1178 ]
  %1203 = phi ptr [ %1197, %1190 ], [ %1171, %1178 ]
  %1204 = getelementptr inbounds nuw i8, ptr %1168, i64 8
  %1205 = load float, ptr %1204, align 4, !tbaa !76
  %1206 = load float, ptr %1168, align 4, !tbaa !77
  %1207 = fsub float %1205, %1206
  %1208 = fsub float %1174, %1167
  %1209 = fdiv float %1207, %1208
  %1210 = getelementptr inbounds nuw i8, ptr %1203, i64 12
  store float %1209, ptr %1210, align 4, !tbaa !78
  %1211 = fcmp une float %1209, 0.000000e+00
  %1212 = fdiv float 1.000000e+00, %1209
  %1213 = select i1 %1211, float %1212, float 0.000000e+00
  %1214 = getelementptr inbounds nuw i8, ptr %1203, i64 16
  store float %1213, ptr %1214, align 8, !tbaa !79
  %1215 = fsub float %1136, %1167
  %1216 = call float @llvm.fmuladd.f32(float %1209, float %1215, float %1206)
  %1217 = getelementptr inbounds nuw i8, ptr %1203, i64 8
  %1218 = fsub float %1216, %1121
  store float %1218, ptr %1217, align 8, !tbaa !80
  %1219 = getelementptr inbounds nuw i8, ptr %1168, i64 16
  %1220 = load i32, ptr %1219, align 4, !tbaa !57
  %1221 = icmp eq i32 %1220, 0
  %1222 = select i1 %1221, float -1.000000e+00, float 1.000000e+00
  %1223 = getelementptr inbounds nuw i8, ptr %1203, i64 20
  store float %1222, ptr %1223, align 4, !tbaa !70
  %1224 = getelementptr inbounds nuw i8, ptr %1203, i64 24
  store float %1167, ptr %1224, align 8, !tbaa !81
  %1225 = getelementptr inbounds nuw i8, ptr %1203, i64 28
  store float %1174, ptr %1225, align 4, !tbaa !67
  store ptr null, ptr %1203, align 8, !tbaa !69
  %1226 = fcmp olt float %1174, %1136
  %1227 = select i1 %1150, i1 %1226, i1 false
  br i1 %1227, label %1228, label %1229

1228:                                             ; preds = %1198
  store float %1136, ptr %1225, align 4, !tbaa !67
  br label %1229

1229:                                             ; preds = %1228, %1198
  %1230 = load ptr, ptr %7, align 8, !tbaa !65
  store ptr %1230, ptr %1203, align 8, !tbaa !69
  store ptr %1203, ptr %7, align 8, !tbaa !65
  br label %1231

1231:                                             ; preds = %1229, %1184, %1166
  %1232 = phi i64 [ %1172, %1166 ], [ %1199, %1229 ], [ %1172, %1184 ]
  %1233 = phi ptr [ %1171, %1166 ], [ %1200, %1229 ], [ null, %1184 ]
  %1234 = phi i32 [ %1170, %1166 ], [ %1201, %1229 ], [ 0, %1184 ]
  %1235 = phi ptr [ %1169, %1166 ], [ %1202, %1229 ], [ %1169, %1184 ]
  %1236 = getelementptr inbounds nuw i8, ptr %1168, i64 20
  %1237 = getelementptr inbounds nuw i8, ptr %1168, i64 24
  %1238 = load float, ptr %1237, align 4, !tbaa !62
  %1239 = fcmp ugt float %1238, %1137
  br i1 %1239, label %1240, label %1166, !llvm.loop !82

1240:                                             ; preds = %1231, %1142
  %1241 = phi ptr [ %1143, %1142 ], [ %1233, %1231 ]
  %1242 = phi i32 [ %1134, %1142 ], [ %1234, %1231 ]
  %1243 = phi ptr [ %1133, %1142 ], [ %1235, %1231 ]
  %1244 = phi ptr [ %1130, %1142 ], [ %1236, %1231 ]
  %1245 = load ptr, ptr %7, align 8, !tbaa !65
  %1246 = icmp eq ptr %1245, null
  br i1 %1246, label %2458, label %1247

1247:                                             ; preds = %1240
  %1248 = fcmp oeq float %1137, %1136
  %1249 = fsub float %1137, %1136
  br label %1250

1250:                                             ; preds = %2455, %1247
  %1251 = phi ptr [ %1245, %1247 ], [ %2456, %2455 ]
  %1252 = getelementptr inbounds nuw i8, ptr %1251, i64 12
  %1253 = load float, ptr %1252, align 4, !tbaa !78
  %1254 = fcmp oeq float %1253, 0.000000e+00
  %1255 = getelementptr inbounds nuw i8, ptr %1251, i64 8
  %1256 = load float, ptr %1255, align 8, !tbaa !80
  br i1 %1254, label %1257, label %1441

1257:                                             ; preds = %1250
  %1258 = fcmp olt float %1256, %1128
  br i1 %1258, label %1259, label %2455

1259:                                             ; preds = %1257
  %1260 = fcmp ult float %1256, 0.000000e+00
  br i1 %1260, label %1387, label %1261

1261:                                             ; preds = %1259
  %1262 = fptosi float %1256 to i32
  br i1 %1248, label %2455, label %1263

1263:                                             ; preds = %1261
  %1264 = getelementptr inbounds nuw i8, ptr %1251, i64 28
  %1265 = load float, ptr %1264, align 4, !tbaa !67
  %1266 = fcmp olt float %1265, %1136
  br i1 %1266, label %1325, label %1267

1267:                                             ; preds = %1263
  %1268 = getelementptr inbounds nuw i8, ptr %1251, i64 24
  %1269 = load float, ptr %1268, align 8, !tbaa !81
  %1270 = fcmp olt float %1137, %1269
  br i1 %1270, label %1325, label %1271

1271:                                             ; preds = %1267
  %1272 = fcmp ogt float %1269, %1136
  br i1 %1272, label %1273, label %1279

1273:                                             ; preds = %1271
  %1274 = fsub float %1256, %1256
  %1275 = fsub float %1269, %1136
  %1276 = fmul float %1274, %1275
  %1277 = fdiv float %1276, %1249
  %1278 = fadd float %1256, %1277
  br label %1279

1279:                                             ; preds = %1273, %1271
  %1280 = phi float [ %1278, %1273 ], [ %1256, %1271 ]
  %1281 = phi float [ %1269, %1273 ], [ %1136, %1271 ]
  %1282 = fcmp ogt float %1137, %1265
  br i1 %1282, label %1283, label %1290

1283:                                             ; preds = %1279
  %1284 = fsub float %1256, %1280
  %1285 = fsub float %1265, %1137
  %1286 = fmul float %1285, %1284
  %1287 = fsub float %1137, %1281
  %1288 = fdiv float %1286, %1287
  %1289 = fadd float %1256, %1288
  br label %1290

1290:                                             ; preds = %1283, %1279
  %1291 = phi float [ %1289, %1283 ], [ %1256, %1279 ]
  %1292 = phi float [ %1265, %1283 ], [ %1137, %1279 ]
  %1293 = sitofp i32 %1262 to float
  %1294 = fcmp ugt float %1280, %1293
  %1295 = fcmp ugt float %1291, %1293
  %1296 = select i1 %1294, i1 true, i1 %1295
  br i1 %1296, label %1305, label %1297

1297:                                             ; preds = %1290
  %1298 = getelementptr inbounds nuw i8, ptr %1251, i64 20
  %1299 = load float, ptr %1298, align 4, !tbaa !70
  %1300 = fsub float %1292, %1281
  %1301 = sext i32 %1262 to i64
  %1302 = getelementptr inbounds float, ptr %1111, i64 %1301
  %1303 = load float, ptr %1302, align 4, !tbaa !43
  %1304 = call float @llvm.fmuladd.f32(float %1299, float %1300, float %1303)
  store float %1304, ptr %1302, align 4, !tbaa !43
  br label %1325

1305:                                             ; preds = %1290
  %1306 = add i32 %1262, 1
  %1307 = sitofp i32 %1306 to float
  %1308 = fcmp ult float %1280, %1307
  %1309 = fcmp ult float %1291, %1307
  %1310 = select i1 %1308, i1 true, i1 %1309
  br i1 %1310, label %1311, label %1325

1311:                                             ; preds = %1305
  %1312 = getelementptr inbounds nuw i8, ptr %1251, i64 20
  %1313 = load float, ptr %1312, align 4, !tbaa !70
  %1314 = fsub float %1292, %1281
  %1315 = fmul float %1314, %1313
  %1316 = fsub float %1280, %1293
  %1317 = fsub float %1291, %1293
  %1318 = fadd float %1316, %1317
  %1319 = fmul float %1318, 5.000000e-01
  %1320 = fsub float 1.000000e+00, %1319
  %1321 = sext i32 %1262 to i64
  %1322 = getelementptr inbounds float, ptr %1111, i64 %1321
  %1323 = load float, ptr %1322, align 4, !tbaa !43
  %1324 = call float @llvm.fmuladd.f32(float %1315, float %1320, float %1323)
  store float %1324, ptr %1322, align 4, !tbaa !43
  br label %1325

1325:                                             ; preds = %1311, %1305, %1297, %1267, %1263
  %1326 = add i32 %1262, 1
  %1327 = load float, ptr %1264, align 4, !tbaa !67
  %1328 = fcmp olt float %1327, %1136
  br i1 %1328, label %2455, label %1329

1329:                                             ; preds = %1325
  %1330 = getelementptr inbounds nuw i8, ptr %1251, i64 24
  %1331 = load float, ptr %1330, align 8, !tbaa !81
  %1332 = fcmp olt float %1137, %1331
  br i1 %1332, label %2455, label %1333

1333:                                             ; preds = %1329
  %1334 = fcmp ogt float %1331, %1136
  br i1 %1334, label %1335, label %1341

1335:                                             ; preds = %1333
  %1336 = fsub float %1256, %1256
  %1337 = fsub float %1331, %1136
  %1338 = fmul float %1336, %1337
  %1339 = fdiv float %1338, %1249
  %1340 = fadd float %1256, %1339
  br label %1341

1341:                                             ; preds = %1335, %1333
  %1342 = phi float [ %1340, %1335 ], [ %1256, %1333 ]
  %1343 = phi float [ %1331, %1335 ], [ %1136, %1333 ]
  %1344 = fcmp ogt float %1137, %1327
  br i1 %1344, label %1345, label %1352

1345:                                             ; preds = %1341
  %1346 = fsub float %1256, %1342
  %1347 = fsub float %1327, %1137
  %1348 = fmul float %1347, %1346
  %1349 = fsub float %1137, %1343
  %1350 = fdiv float %1348, %1349
  %1351 = fadd float %1256, %1350
  br label %1352

1352:                                             ; preds = %1345, %1341
  %1353 = phi float [ %1351, %1345 ], [ %1256, %1341 ]
  %1354 = phi float [ %1327, %1345 ], [ %1137, %1341 ]
  %1355 = sitofp i32 %1326 to float
  %1356 = fcmp ugt float %1342, %1355
  %1357 = fcmp ugt float %1353, %1355
  %1358 = select i1 %1356, i1 true, i1 %1357
  br i1 %1358, label %1367, label %1359

1359:                                             ; preds = %1352
  %1360 = getelementptr inbounds nuw i8, ptr %1251, i64 20
  %1361 = load float, ptr %1360, align 4, !tbaa !70
  %1362 = fsub float %1354, %1343
  %1363 = sext i32 %1326 to i64
  %1364 = getelementptr inbounds float, ptr %1114, i64 %1363
  %1365 = load float, ptr %1364, align 4, !tbaa !43
  %1366 = call float @llvm.fmuladd.f32(float %1361, float %1362, float %1365)
  store float %1366, ptr %1364, align 4, !tbaa !43
  br label %2455

1367:                                             ; preds = %1352
  %1368 = add i32 %1262, 2
  %1369 = sitofp i32 %1368 to float
  %1370 = fcmp ult float %1342, %1369
  %1371 = fcmp ult float %1353, %1369
  %1372 = select i1 %1370, i1 true, i1 %1371
  br i1 %1372, label %1373, label %2455

1373:                                             ; preds = %1367
  %1374 = getelementptr inbounds nuw i8, ptr %1251, i64 20
  %1375 = load float, ptr %1374, align 4, !tbaa !70
  %1376 = fsub float %1354, %1343
  %1377 = fmul float %1376, %1375
  %1378 = fsub float %1342, %1355
  %1379 = fsub float %1353, %1355
  %1380 = fadd float %1378, %1379
  %1381 = fmul float %1380, 5.000000e-01
  %1382 = fsub float 1.000000e+00, %1381
  %1383 = sext i32 %1326 to i64
  %1384 = getelementptr inbounds float, ptr %1114, i64 %1383
  %1385 = load float, ptr %1384, align 4, !tbaa !43
  %1386 = call float @llvm.fmuladd.f32(float %1377, float %1382, float %1385)
  store float %1386, ptr %1384, align 4, !tbaa !43
  br label %2455

1387:                                             ; preds = %1259
  br i1 %1248, label %2455, label %1388

1388:                                             ; preds = %1387
  %1389 = getelementptr inbounds nuw i8, ptr %1251, i64 28
  %1390 = load float, ptr %1389, align 4, !tbaa !67
  %1391 = fcmp olt float %1390, %1136
  br i1 %1391, label %2455, label %1392

1392:                                             ; preds = %1388
  %1393 = getelementptr inbounds nuw i8, ptr %1251, i64 24
  %1394 = load float, ptr %1393, align 8, !tbaa !81
  %1395 = fcmp olt float %1137, %1394
  br i1 %1395, label %2455, label %1396

1396:                                             ; preds = %1392
  %1397 = fcmp ogt float %1394, %1136
  br i1 %1397, label %1398, label %1404

1398:                                             ; preds = %1396
  %1399 = fsub float %1256, %1256
  %1400 = fsub float %1394, %1136
  %1401 = fmul float %1399, %1400
  %1402 = fdiv float %1401, %1249
  %1403 = fadd float %1256, %1402
  br label %1404

1404:                                             ; preds = %1398, %1396
  %1405 = phi float [ %1403, %1398 ], [ %1256, %1396 ]
  %1406 = phi float [ %1394, %1398 ], [ %1136, %1396 ]
  %1407 = fcmp ogt float %1137, %1390
  br i1 %1407, label %1408, label %1415

1408:                                             ; preds = %1404
  %1409 = fsub float %1256, %1405
  %1410 = fsub float %1390, %1137
  %1411 = fmul float %1410, %1409
  %1412 = fsub float %1137, %1406
  %1413 = fdiv float %1411, %1412
  %1414 = fadd float %1256, %1413
  br label %1415

1415:                                             ; preds = %1408, %1404
  %1416 = phi float [ %1414, %1408 ], [ %1256, %1404 ]
  %1417 = phi float [ %1390, %1408 ], [ %1137, %1404 ]
  %1418 = fcmp ugt float %1405, 0.000000e+00
  %1419 = fcmp ugt float %1416, 0.000000e+00
  %1420 = select i1 %1418, i1 true, i1 %1419
  br i1 %1420, label %1427, label %1421

1421:                                             ; preds = %1415
  %1422 = getelementptr inbounds nuw i8, ptr %1251, i64 20
  %1423 = load float, ptr %1422, align 4, !tbaa !70
  %1424 = fsub float %1417, %1406
  %1425 = load float, ptr %1114, align 4, !tbaa !43
  %1426 = call float @llvm.fmuladd.f32(float %1423, float %1424, float %1425)
  store float %1426, ptr %1114, align 4, !tbaa !43
  br label %2455

1427:                                             ; preds = %1415
  %1428 = fcmp ult float %1405, 1.000000e+00
  %1429 = fcmp ult float %1416, 1.000000e+00
  %1430 = select i1 %1428, i1 true, i1 %1429
  br i1 %1430, label %1431, label %2455

1431:                                             ; preds = %1427
  %1432 = getelementptr inbounds nuw i8, ptr %1251, i64 20
  %1433 = load float, ptr %1432, align 4, !tbaa !70
  %1434 = fsub float %1417, %1406
  %1435 = fmul float %1434, %1433
  %1436 = fadd float %1405, %1416
  %1437 = fmul float %1436, 5.000000e-01
  %1438 = fsub float 1.000000e+00, %1437
  %1439 = load float, ptr %1114, align 4, !tbaa !43
  %1440 = call float @llvm.fmuladd.f32(float %1435, float %1438, float %1439)
  store float %1440, ptr %1114, align 4, !tbaa !43
  br label %2455

1441:                                             ; preds = %1250
  %1442 = fadd float %1253, %1256
  %1443 = getelementptr inbounds nuw i8, ptr %1251, i64 16
  %1444 = load float, ptr %1443, align 8, !tbaa !79
  %1445 = getelementptr inbounds nuw i8, ptr %1251, i64 24
  %1446 = load float, ptr %1445, align 8, !tbaa !81
  %1447 = fcmp ogt float %1446, %1136
  %1448 = fsub float %1446, %1136
  %1449 = call float @llvm.fmuladd.f32(float %1253, float %1448, float %1256)
  %1450 = select i1 %1447, float %1446, float %1136
  %1451 = select i1 %1447, float %1449, float %1256
  %1452 = getelementptr inbounds nuw i8, ptr %1251, i64 28
  %1453 = load float, ptr %1452, align 4, !tbaa !67
  %1454 = fcmp olt float %1453, %1137
  %1455 = fsub float %1453, %1136
  %1456 = call float @llvm.fmuladd.f32(float %1253, float %1455, float %1256)
  %1457 = select i1 %1454, float %1453, float %1137
  %1458 = select i1 %1454, float %1456, float %1442
  %1459 = fcmp oge float %1451, 0.000000e+00
  %1460 = fcmp oge float %1458, 0.000000e+00
  %1461 = select i1 %1459, i1 %1460, i1 false
  br i1 %1461, label %1462, label %1589

1462:                                             ; preds = %1441
  %1463 = fcmp olt float %1451, %1128
  %1464 = fcmp olt float %1458, %1128
  %1465 = select i1 %1463, i1 %1464, i1 false
  br i1 %1465, label %1466, label %1589

1466:                                             ; preds = %1462
  %1467 = fptosi float %1451 to i32
  %1468 = fptosi float %1458 to i32
  %1469 = icmp eq i32 %1467, %1468
  br i1 %1469, label %1470, label %1489

1470:                                             ; preds = %1466
  %1471 = fsub float %1457, %1450
  %1472 = getelementptr inbounds nuw i8, ptr %1251, i64 20
  %1473 = load float, ptr %1472, align 4, !tbaa !70
  %1474 = fmul float %1471, %1473
  %1475 = sitofp i32 %1467 to float
  %1476 = fadd float %1475, 1.000000e+00
  %1477 = fsub float %1476, %1451
  %1478 = fsub float %1476, %1458
  %1479 = fadd float %1477, %1478
  %1480 = fmul float %1479, 5.000000e-01
  %1481 = fmul float %1480, %1474
  %1482 = sext i32 %1467 to i64
  %1483 = getelementptr inbounds float, ptr %1111, i64 %1482
  %1484 = load float, ptr %1483, align 4, !tbaa !43
  %1485 = fadd float %1484, %1481
  store float %1485, ptr %1483, align 4, !tbaa !43
  %1486 = getelementptr inbounds float, ptr %1123, i64 %1482
  %1487 = load float, ptr %1486, align 4, !tbaa !43
  %1488 = fadd float %1474, %1487
  store float %1488, ptr %1486, align 4, !tbaa !43
  br label %2455

1489:                                             ; preds = %1466
  %1490 = fcmp ogt float %1451, %1458
  br i1 %1490, label %1491, label %1497

1491:                                             ; preds = %1489
  %1492 = fsub float %1136, %1450
  %1493 = fadd float %1137, %1492
  %1494 = fsub float %1136, %1457
  %1495 = fadd float %1137, %1494
  %1496 = fneg float %1444
  br label %1497

1497:                                             ; preds = %1491, %1489
  %1498 = phi i32 [ %1467, %1491 ], [ %1468, %1489 ]
  %1499 = phi i32 [ %1468, %1491 ], [ %1467, %1489 ]
  %1500 = phi float [ %1496, %1491 ], [ %1444, %1489 ]
  %1501 = phi float [ %1493, %1491 ], [ %1457, %1489 ]
  %1502 = phi float [ %1495, %1491 ], [ %1450, %1489 ]
  %1503 = phi float [ %1451, %1491 ], [ %1458, %1489 ]
  %1504 = phi float [ %1458, %1491 ], [ %1451, %1489 ]
  %1505 = phi float [ %1442, %1491 ], [ %1256, %1489 ]
  %1506 = add i32 %1499, 1
  %1507 = sitofp i32 %1506 to float
  %1508 = fsub float %1507, %1505
  %1509 = call float @llvm.fmuladd.f32(float %1500, float %1508, float %1136)
  %1510 = sitofp i32 %1498 to float
  %1511 = fsub float %1510, %1505
  %1512 = call float @llvm.fmuladd.f32(float %1500, float %1511, float %1136)
  %1513 = fcmp ogt float %1509, %1137
  %1514 = select i1 %1513, float %1137, float %1509
  %1515 = getelementptr inbounds nuw i8, ptr %1251, i64 20
  %1516 = load float, ptr %1515, align 4, !tbaa !70
  %1517 = fsub float %1514, %1502
  %1518 = fmul float %1516, %1517
  %1519 = fsub float %1507, %1504
  %1520 = fmul float %1519, %1518
  %1521 = fmul float %1520, 5.000000e-01
  %1522 = sext i32 %1499 to i64
  %1523 = getelementptr inbounds float, ptr %1111, i64 %1522
  %1524 = load float, ptr %1523, align 4, !tbaa !43
  %1525 = fadd float %1524, %1521
  store float %1525, ptr %1523, align 4, !tbaa !43
  %1526 = fcmp ogt float %1512, %1137
  %1527 = fsub float %1137, %1514
  %1528 = sub i32 %1498, %1506
  %1529 = sitofp i32 %1528 to float
  %1530 = fdiv float %1527, %1529
  %1531 = select i1 %1526, float %1137, float %1512
  %1532 = select i1 %1526, float %1530, float %1500
  %1533 = fmul float %1516, %1532
  %1534 = icmp slt i32 %1506, %1498
  br i1 %1534, label %1535, label %1571

1535:                                             ; preds = %1497
  %1536 = fmul float %1533, 5.000000e-01
  %1537 = sext i32 %1506 to i64
  %1538 = add i32 %1498, -2
  %1539 = sub i32 %1499, %1498
  %1540 = and i32 %1539, 1
  %1541 = icmp eq i32 %1540, 0
  br i1 %1541, label %1542, label %1549

1542:                                             ; preds = %1535
  %1543 = fadd float %1536, %1518
  %1544 = getelementptr inbounds float, ptr %1111, i64 %1537
  %1545 = load float, ptr %1544, align 4, !tbaa !43
  %1546 = fadd float %1543, %1545
  store float %1546, ptr %1544, align 4, !tbaa !43
  %1547 = fadd float %1533, %1518
  %1548 = add nsw i64 %1537, 1
  br label %1549

1549:                                             ; preds = %1542, %1535
  %1550 = phi float [ poison, %1535 ], [ %1547, %1542 ]
  %1551 = phi i64 [ %1537, %1535 ], [ %1548, %1542 ]
  %1552 = phi float [ %1518, %1535 ], [ %1547, %1542 ]
  %1553 = icmp eq i32 %1538, %1499
  br i1 %1553, label %1571, label %1554

1554:                                             ; preds = %1549, %1554
  %1555 = phi i64 [ %1568, %1554 ], [ %1551, %1549 ]
  %1556 = phi float [ %1567, %1554 ], [ %1552, %1549 ]
  %1557 = fadd float %1536, %1556
  %1558 = getelementptr inbounds float, ptr %1111, i64 %1555
  %1559 = load float, ptr %1558, align 4, !tbaa !43
  %1560 = fadd float %1557, %1559
  store float %1560, ptr %1558, align 4, !tbaa !43
  %1561 = fadd float %1533, %1556
  %1562 = fadd float %1536, %1561
  %1563 = getelementptr float, ptr %1111, i64 %1555
  %1564 = getelementptr i8, ptr %1563, i64 4
  %1565 = load float, ptr %1564, align 4, !tbaa !43
  %1566 = fadd float %1562, %1565
  store float %1566, ptr %1564, align 4, !tbaa !43
  %1567 = fadd float %1533, %1561
  %1568 = add nsw i64 %1555, 2
  %1569 = trunc i64 %1568 to i32
  %1570 = icmp eq i32 %1498, %1569
  br i1 %1570, label %1571, label %1554, !llvm.loop !83

1571:                                             ; preds = %1549, %1554, %1497
  %1572 = phi float [ %1518, %1497 ], [ %1550, %1549 ], [ %1567, %1554 ]
  %1573 = fsub float %1501, %1531
  %1574 = fadd float %1510, 1.000000e+00
  %1575 = fsub float %1574, %1510
  %1576 = fsub float %1574, %1503
  %1577 = fadd float %1575, %1576
  %1578 = fmul float %1577, 5.000000e-01
  %1579 = fmul float %1578, %1573
  %1580 = call float @llvm.fmuladd.f32(float %1516, float %1579, float %1572)
  %1581 = sext i32 %1498 to i64
  %1582 = getelementptr inbounds float, ptr %1111, i64 %1581
  %1583 = load float, ptr %1582, align 4, !tbaa !43
  %1584 = fadd float %1580, %1583
  store float %1584, ptr %1582, align 4, !tbaa !43
  %1585 = fsub float %1501, %1502
  %1586 = getelementptr inbounds float, ptr %1123, i64 %1581
  %1587 = load float, ptr %1586, align 4, !tbaa !43
  %1588 = call float @llvm.fmuladd.f32(float %1516, float %1585, float %1587)
  store float %1588, ptr %1586, align 4, !tbaa !43
  br label %2455

1589:                                             ; preds = %1462, %1441
  %1590 = fsub float %1442, %1256
  %1591 = getelementptr inbounds nuw i8, ptr %1251, i64 20
  br label %1592

1592:                                             ; preds = %2453, %1589
  %1593 = phi i64 [ 0, %1589 ], [ %1596, %2453 ]
  %1594 = trunc nuw nsw i64 %1593 to i32
  %1595 = uitofp nneg i32 %1594 to float
  %1596 = add nuw nsw i64 %1593, 1
  %1597 = trunc nuw nsw i64 %1596 to i32
  %1598 = uitofp nneg i32 %1597 to float
  %1599 = fsub float %1595, %1256
  %1600 = fdiv float %1599, %1253
  %1601 = fadd float %1600, %1136
  %1602 = fsub float %1598, %1256
  %1603 = fdiv float %1602, %1253
  %1604 = fadd float %1603, %1136
  %1605 = fcmp olt float %1256, %1595
  %1606 = fcmp ogt float %1442, %1598
  %1607 = and i1 %1605, %1606
  br i1 %1607, label %1608, label %1775

1608:                                             ; preds = %1592
  %1609 = fcmp oeq float %1601, %1136
  br i1 %1609, label %1663, label %1610

1610:                                             ; preds = %1608
  %1611 = load float, ptr %1452, align 4, !tbaa !67
  %1612 = fcmp olt float %1611, %1136
  br i1 %1612, label %1663, label %1613

1613:                                             ; preds = %1610
  %1614 = load float, ptr %1445, align 8, !tbaa !81
  %1615 = fcmp olt float %1601, %1614
  br i1 %1615, label %1663, label %1616

1616:                                             ; preds = %1613
  %1617 = fcmp ogt float %1614, %1136
  br i1 %1617, label %1618, label %1624

1618:                                             ; preds = %1616
  %1619 = fsub float %1614, %1136
  %1620 = fmul float %1599, %1619
  %1621 = fsub float %1601, %1136
  %1622 = fdiv float %1620, %1621
  %1623 = fadd float %1256, %1622
  br label %1624

1624:                                             ; preds = %1618, %1616
  %1625 = phi float [ %1623, %1618 ], [ %1256, %1616 ]
  %1626 = phi float [ %1614, %1618 ], [ %1136, %1616 ]
  %1627 = fcmp ogt float %1601, %1611
  br i1 %1627, label %1628, label %1635

1628:                                             ; preds = %1624
  %1629 = fsub float %1595, %1625
  %1630 = fsub float %1611, %1601
  %1631 = fmul float %1630, %1629
  %1632 = fsub float %1601, %1626
  %1633 = fdiv float %1631, %1632
  %1634 = fadd float %1633, %1595
  br label %1635

1635:                                             ; preds = %1628, %1624
  %1636 = phi float [ %1634, %1628 ], [ %1595, %1624 ]
  %1637 = phi float [ %1611, %1628 ], [ %1601, %1624 ]
  %1638 = fcmp ugt float %1625, %1595
  %1639 = fcmp ugt float %1636, %1595
  %1640 = select i1 %1638, i1 true, i1 %1639
  br i1 %1640, label %1647, label %1641

1641:                                             ; preds = %1635
  %1642 = load float, ptr %1591, align 4, !tbaa !70
  %1643 = fsub float %1637, %1626
  %1644 = getelementptr inbounds nuw float, ptr %1111, i64 %1593
  %1645 = load float, ptr %1644, align 4, !tbaa !43
  %1646 = call float @llvm.fmuladd.f32(float %1642, float %1643, float %1645)
  store float %1646, ptr %1644, align 4, !tbaa !43
  br label %1663

1647:                                             ; preds = %1635
  %1648 = fcmp ult float %1625, %1598
  %1649 = fcmp ult float %1636, %1598
  %1650 = select i1 %1648, i1 true, i1 %1649
  br i1 %1650, label %1651, label %1663

1651:                                             ; preds = %1647
  %1652 = load float, ptr %1591, align 4, !tbaa !70
  %1653 = fsub float %1637, %1626
  %1654 = fmul float %1653, %1652
  %1655 = fsub float %1625, %1595
  %1656 = fsub float %1636, %1595
  %1657 = fadd float %1655, %1656
  %1658 = fmul float %1657, 5.000000e-01
  %1659 = fsub float 1.000000e+00, %1658
  %1660 = getelementptr inbounds nuw float, ptr %1111, i64 %1593
  %1661 = load float, ptr %1660, align 4, !tbaa !43
  %1662 = call float @llvm.fmuladd.f32(float %1654, float %1659, float %1661)
  store float %1662, ptr %1660, align 4, !tbaa !43
  br label %1663

1663:                                             ; preds = %1651, %1647, %1641, %1613, %1610, %1608
  %1664 = fcmp oeq float %1601, %1604
  br i1 %1664, label %1719, label %1665

1665:                                             ; preds = %1663
  %1666 = load float, ptr %1452, align 4, !tbaa !67
  %1667 = fcmp ogt float %1601, %1666
  br i1 %1667, label %1719, label %1668

1668:                                             ; preds = %1665
  %1669 = load float, ptr %1445, align 8, !tbaa !81
  %1670 = fcmp olt float %1604, %1669
  br i1 %1670, label %1719, label %1671

1671:                                             ; preds = %1668
  %1672 = fcmp olt float %1601, %1669
  br i1 %1672, label %1673, label %1680

1673:                                             ; preds = %1671
  %1674 = fsub float %1598, %1595
  %1675 = fsub float %1669, %1601
  %1676 = fmul float %1674, %1675
  %1677 = fsub float %1604, %1601
  %1678 = fdiv float %1676, %1677
  %1679 = fadd float %1678, %1595
  br label %1680

1680:                                             ; preds = %1673, %1671
  %1681 = phi float [ %1679, %1673 ], [ %1595, %1671 ]
  %1682 = phi float [ %1669, %1673 ], [ %1601, %1671 ]
  %1683 = fcmp ogt float %1604, %1666
  br i1 %1683, label %1684, label %1691

1684:                                             ; preds = %1680
  %1685 = fsub float %1598, %1681
  %1686 = fsub float %1666, %1604
  %1687 = fmul float %1686, %1685
  %1688 = fsub float %1604, %1682
  %1689 = fdiv float %1687, %1688
  %1690 = fadd float %1689, %1598
  br label %1691

1691:                                             ; preds = %1684, %1680
  %1692 = phi float [ %1690, %1684 ], [ %1598, %1680 ]
  %1693 = phi float [ %1666, %1684 ], [ %1604, %1680 ]
  %1694 = fcmp ugt float %1681, %1595
  %1695 = fcmp ugt float %1692, %1595
  %1696 = select i1 %1694, i1 true, i1 %1695
  br i1 %1696, label %1703, label %1697

1697:                                             ; preds = %1691
  %1698 = load float, ptr %1591, align 4, !tbaa !70
  %1699 = fsub float %1693, %1682
  %1700 = getelementptr inbounds nuw float, ptr %1111, i64 %1593
  %1701 = load float, ptr %1700, align 4, !tbaa !43
  %1702 = call float @llvm.fmuladd.f32(float %1698, float %1699, float %1701)
  store float %1702, ptr %1700, align 4, !tbaa !43
  br label %1719

1703:                                             ; preds = %1691
  %1704 = fcmp ult float %1681, %1598
  %1705 = fcmp ult float %1692, %1598
  %1706 = select i1 %1704, i1 true, i1 %1705
  br i1 %1706, label %1707, label %1719

1707:                                             ; preds = %1703
  %1708 = load float, ptr %1591, align 4, !tbaa !70
  %1709 = fsub float %1693, %1682
  %1710 = fmul float %1709, %1708
  %1711 = fsub float %1681, %1595
  %1712 = fsub float %1692, %1595
  %1713 = fadd float %1711, %1712
  %1714 = fmul float %1713, 5.000000e-01
  %1715 = fsub float 1.000000e+00, %1714
  %1716 = getelementptr inbounds nuw float, ptr %1111, i64 %1593
  %1717 = load float, ptr %1716, align 4, !tbaa !43
  %1718 = call float @llvm.fmuladd.f32(float %1710, float %1715, float %1717)
  store float %1718, ptr %1716, align 4, !tbaa !43
  br label %1719

1719:                                             ; preds = %1707, %1703, %1697, %1668, %1665, %1663
  %1720 = fcmp oeq float %1604, %1137
  br i1 %1720, label %2453, label %1721

1721:                                             ; preds = %1719
  %1722 = load float, ptr %1452, align 4, !tbaa !67
  %1723 = fcmp ogt float %1604, %1722
  br i1 %1723, label %2453, label %1724

1724:                                             ; preds = %1721
  %1725 = load float, ptr %1445, align 8, !tbaa !81
  %1726 = fcmp olt float %1137, %1725
  br i1 %1726, label %2453, label %1727

1727:                                             ; preds = %1724
  %1728 = fcmp olt float %1604, %1725
  br i1 %1728, label %1729, label %1736

1729:                                             ; preds = %1727
  %1730 = fsub float %1442, %1598
  %1731 = fsub float %1725, %1604
  %1732 = fmul float %1730, %1731
  %1733 = fsub float %1137, %1604
  %1734 = fdiv float %1732, %1733
  %1735 = fadd float %1734, %1598
  br label %1736

1736:                                             ; preds = %1729, %1727
  %1737 = phi float [ %1735, %1729 ], [ %1598, %1727 ]
  %1738 = phi float [ %1725, %1729 ], [ %1604, %1727 ]
  %1739 = fcmp ogt float %1137, %1722
  br i1 %1739, label %1740, label %1747

1740:                                             ; preds = %1736
  %1741 = fsub float %1442, %1737
  %1742 = fsub float %1722, %1137
  %1743 = fmul float %1742, %1741
  %1744 = fsub float %1137, %1738
  %1745 = fdiv float %1743, %1744
  %1746 = fadd float %1442, %1745
  br label %1747

1747:                                             ; preds = %1740, %1736
  %1748 = phi float [ %1746, %1740 ], [ %1442, %1736 ]
  %1749 = phi float [ %1722, %1740 ], [ %1137, %1736 ]
  %1750 = fcmp ugt float %1737, %1595
  %1751 = fcmp ugt float %1748, %1595
  %1752 = select i1 %1750, i1 true, i1 %1751
  br i1 %1752, label %1759, label %1753

1753:                                             ; preds = %1747
  %1754 = load float, ptr %1591, align 4, !tbaa !70
  %1755 = fsub float %1749, %1738
  %1756 = getelementptr inbounds nuw float, ptr %1111, i64 %1593
  %1757 = load float, ptr %1756, align 4, !tbaa !43
  %1758 = call float @llvm.fmuladd.f32(float %1754, float %1755, float %1757)
  store float %1758, ptr %1756, align 4, !tbaa !43
  br label %2453

1759:                                             ; preds = %1747
  %1760 = fcmp ult float %1737, %1598
  %1761 = fcmp ult float %1748, %1598
  %1762 = select i1 %1760, i1 true, i1 %1761
  br i1 %1762, label %1763, label %2453

1763:                                             ; preds = %1759
  %1764 = load float, ptr %1591, align 4, !tbaa !70
  %1765 = fsub float %1749, %1738
  %1766 = fmul float %1765, %1764
  %1767 = fsub float %1737, %1595
  %1768 = fsub float %1748, %1595
  %1769 = fadd float %1767, %1768
  %1770 = fmul float %1769, 5.000000e-01
  %1771 = fsub float 1.000000e+00, %1770
  %1772 = getelementptr inbounds nuw float, ptr %1111, i64 %1593
  %1773 = load float, ptr %1772, align 4, !tbaa !43
  %1774 = call float @llvm.fmuladd.f32(float %1766, float %1771, float %1773)
  store float %1774, ptr %1772, align 4, !tbaa !43
  br label %2453

1775:                                             ; preds = %1592
  %1776 = fcmp olt float %1442, %1595
  %1777 = fcmp ogt float %1256, %1598
  %1778 = and i1 %1776, %1777
  br i1 %1778, label %1779, label %1946

1779:                                             ; preds = %1775
  %1780 = fcmp oeq float %1604, %1136
  br i1 %1780, label %1834, label %1781

1781:                                             ; preds = %1779
  %1782 = load float, ptr %1452, align 4, !tbaa !67
  %1783 = fcmp olt float %1782, %1136
  br i1 %1783, label %1834, label %1784

1784:                                             ; preds = %1781
  %1785 = load float, ptr %1445, align 8, !tbaa !81
  %1786 = fcmp olt float %1604, %1785
  br i1 %1786, label %1834, label %1787

1787:                                             ; preds = %1784
  %1788 = fcmp ogt float %1785, %1136
  br i1 %1788, label %1789, label %1795

1789:                                             ; preds = %1787
  %1790 = fsub float %1785, %1136
  %1791 = fmul float %1602, %1790
  %1792 = fsub float %1604, %1136
  %1793 = fdiv float %1791, %1792
  %1794 = fadd float %1256, %1793
  br label %1795

1795:                                             ; preds = %1789, %1787
  %1796 = phi float [ %1794, %1789 ], [ %1256, %1787 ]
  %1797 = phi float [ %1785, %1789 ], [ %1136, %1787 ]
  %1798 = fcmp ogt float %1604, %1782
  br i1 %1798, label %1799, label %1806

1799:                                             ; preds = %1795
  %1800 = fsub float %1598, %1796
  %1801 = fsub float %1782, %1604
  %1802 = fmul float %1801, %1800
  %1803 = fsub float %1604, %1797
  %1804 = fdiv float %1802, %1803
  %1805 = fadd float %1804, %1598
  br label %1806

1806:                                             ; preds = %1799, %1795
  %1807 = phi float [ %1805, %1799 ], [ %1598, %1795 ]
  %1808 = phi float [ %1782, %1799 ], [ %1604, %1795 ]
  %1809 = fcmp ugt float %1796, %1595
  %1810 = fcmp ugt float %1807, %1595
  %1811 = select i1 %1809, i1 true, i1 %1810
  br i1 %1811, label %1818, label %1812

1812:                                             ; preds = %1806
  %1813 = load float, ptr %1591, align 4, !tbaa !70
  %1814 = fsub float %1808, %1797
  %1815 = getelementptr inbounds nuw float, ptr %1111, i64 %1593
  %1816 = load float, ptr %1815, align 4, !tbaa !43
  %1817 = call float @llvm.fmuladd.f32(float %1813, float %1814, float %1816)
  store float %1817, ptr %1815, align 4, !tbaa !43
  br label %1834

1818:                                             ; preds = %1806
  %1819 = fcmp ult float %1796, %1598
  %1820 = fcmp ult float %1807, %1598
  %1821 = select i1 %1819, i1 true, i1 %1820
  br i1 %1821, label %1822, label %1834

1822:                                             ; preds = %1818
  %1823 = load float, ptr %1591, align 4, !tbaa !70
  %1824 = fsub float %1808, %1797
  %1825 = fmul float %1824, %1823
  %1826 = fsub float %1796, %1595
  %1827 = fsub float %1807, %1595
  %1828 = fadd float %1826, %1827
  %1829 = fmul float %1828, 5.000000e-01
  %1830 = fsub float 1.000000e+00, %1829
  %1831 = getelementptr inbounds nuw float, ptr %1111, i64 %1593
  %1832 = load float, ptr %1831, align 4, !tbaa !43
  %1833 = call float @llvm.fmuladd.f32(float %1825, float %1830, float %1832)
  store float %1833, ptr %1831, align 4, !tbaa !43
  br label %1834

1834:                                             ; preds = %1822, %1818, %1812, %1784, %1781, %1779
  %1835 = fcmp oeq float %1604, %1601
  br i1 %1835, label %1890, label %1836

1836:                                             ; preds = %1834
  %1837 = load float, ptr %1452, align 4, !tbaa !67
  %1838 = fcmp ogt float %1604, %1837
  br i1 %1838, label %1890, label %1839

1839:                                             ; preds = %1836
  %1840 = load float, ptr %1445, align 8, !tbaa !81
  %1841 = fcmp olt float %1601, %1840
  br i1 %1841, label %1890, label %1842

1842:                                             ; preds = %1839
  %1843 = fcmp olt float %1604, %1840
  br i1 %1843, label %1844, label %1851

1844:                                             ; preds = %1842
  %1845 = fsub float %1595, %1598
  %1846 = fsub float %1840, %1604
  %1847 = fmul float %1845, %1846
  %1848 = fsub float %1601, %1604
  %1849 = fdiv float %1847, %1848
  %1850 = fadd float %1849, %1598
  br label %1851

1851:                                             ; preds = %1844, %1842
  %1852 = phi float [ %1850, %1844 ], [ %1598, %1842 ]
  %1853 = phi float [ %1840, %1844 ], [ %1604, %1842 ]
  %1854 = fcmp ogt float %1601, %1837
  br i1 %1854, label %1855, label %1862

1855:                                             ; preds = %1851
  %1856 = fsub float %1595, %1852
  %1857 = fsub float %1837, %1601
  %1858 = fmul float %1857, %1856
  %1859 = fsub float %1601, %1853
  %1860 = fdiv float %1858, %1859
  %1861 = fadd float %1860, %1595
  br label %1862

1862:                                             ; preds = %1855, %1851
  %1863 = phi float [ %1861, %1855 ], [ %1595, %1851 ]
  %1864 = phi float [ %1837, %1855 ], [ %1601, %1851 ]
  %1865 = fcmp ugt float %1852, %1595
  %1866 = fcmp ugt float %1863, %1595
  %1867 = select i1 %1865, i1 true, i1 %1866
  br i1 %1867, label %1874, label %1868

1868:                                             ; preds = %1862
  %1869 = load float, ptr %1591, align 4, !tbaa !70
  %1870 = fsub float %1864, %1853
  %1871 = getelementptr inbounds nuw float, ptr %1111, i64 %1593
  %1872 = load float, ptr %1871, align 4, !tbaa !43
  %1873 = call float @llvm.fmuladd.f32(float %1869, float %1870, float %1872)
  store float %1873, ptr %1871, align 4, !tbaa !43
  br label %1890

1874:                                             ; preds = %1862
  %1875 = fcmp ult float %1852, %1598
  %1876 = fcmp ult float %1863, %1598
  %1877 = select i1 %1875, i1 true, i1 %1876
  br i1 %1877, label %1878, label %1890

1878:                                             ; preds = %1874
  %1879 = load float, ptr %1591, align 4, !tbaa !70
  %1880 = fsub float %1864, %1853
  %1881 = fmul float %1880, %1879
  %1882 = fsub float %1852, %1595
  %1883 = fsub float %1863, %1595
  %1884 = fadd float %1882, %1883
  %1885 = fmul float %1884, 5.000000e-01
  %1886 = fsub float 1.000000e+00, %1885
  %1887 = getelementptr inbounds nuw float, ptr %1111, i64 %1593
  %1888 = load float, ptr %1887, align 4, !tbaa !43
  %1889 = call float @llvm.fmuladd.f32(float %1881, float %1886, float %1888)
  store float %1889, ptr %1887, align 4, !tbaa !43
  br label %1890

1890:                                             ; preds = %1878, %1874, %1868, %1839, %1836, %1834
  %1891 = fcmp oeq float %1601, %1137
  br i1 %1891, label %2453, label %1892

1892:                                             ; preds = %1890
  %1893 = load float, ptr %1452, align 4, !tbaa !67
  %1894 = fcmp ogt float %1601, %1893
  br i1 %1894, label %2453, label %1895

1895:                                             ; preds = %1892
  %1896 = load float, ptr %1445, align 8, !tbaa !81
  %1897 = fcmp olt float %1137, %1896
  br i1 %1897, label %2453, label %1898

1898:                                             ; preds = %1895
  %1899 = fcmp olt float %1601, %1896
  br i1 %1899, label %1900, label %1907

1900:                                             ; preds = %1898
  %1901 = fsub float %1442, %1595
  %1902 = fsub float %1896, %1601
  %1903 = fmul float %1901, %1902
  %1904 = fsub float %1137, %1601
  %1905 = fdiv float %1903, %1904
  %1906 = fadd float %1905, %1595
  br label %1907

1907:                                             ; preds = %1900, %1898
  %1908 = phi float [ %1906, %1900 ], [ %1595, %1898 ]
  %1909 = phi float [ %1896, %1900 ], [ %1601, %1898 ]
  %1910 = fcmp ogt float %1137, %1893
  br i1 %1910, label %1911, label %1918

1911:                                             ; preds = %1907
  %1912 = fsub float %1442, %1908
  %1913 = fsub float %1893, %1137
  %1914 = fmul float %1913, %1912
  %1915 = fsub float %1137, %1909
  %1916 = fdiv float %1914, %1915
  %1917 = fadd float %1442, %1916
  br label %1918

1918:                                             ; preds = %1911, %1907
  %1919 = phi float [ %1917, %1911 ], [ %1442, %1907 ]
  %1920 = phi float [ %1893, %1911 ], [ %1137, %1907 ]
  %1921 = fcmp ugt float %1908, %1595
  %1922 = fcmp ugt float %1919, %1595
  %1923 = select i1 %1921, i1 true, i1 %1922
  br i1 %1923, label %1930, label %1924

1924:                                             ; preds = %1918
  %1925 = load float, ptr %1591, align 4, !tbaa !70
  %1926 = fsub float %1920, %1909
  %1927 = getelementptr inbounds nuw float, ptr %1111, i64 %1593
  %1928 = load float, ptr %1927, align 4, !tbaa !43
  %1929 = call float @llvm.fmuladd.f32(float %1925, float %1926, float %1928)
  store float %1929, ptr %1927, align 4, !tbaa !43
  br label %2453

1930:                                             ; preds = %1918
  %1931 = fcmp ult float %1908, %1598
  %1932 = fcmp ult float %1919, %1598
  %1933 = select i1 %1931, i1 true, i1 %1932
  br i1 %1933, label %1934, label %2453

1934:                                             ; preds = %1930
  %1935 = load float, ptr %1591, align 4, !tbaa !70
  %1936 = fsub float %1920, %1909
  %1937 = fmul float %1936, %1935
  %1938 = fsub float %1908, %1595
  %1939 = fsub float %1919, %1595
  %1940 = fadd float %1938, %1939
  %1941 = fmul float %1940, 5.000000e-01
  %1942 = fsub float 1.000000e+00, %1941
  %1943 = getelementptr inbounds nuw float, ptr %1111, i64 %1593
  %1944 = load float, ptr %1943, align 4, !tbaa !43
  %1945 = call float @llvm.fmuladd.f32(float %1937, float %1942, float %1944)
  store float %1945, ptr %1943, align 4, !tbaa !43
  br label %2453

1946:                                             ; preds = %1775
  %1947 = fcmp ogt float %1442, %1595
  %1948 = and i1 %1605, %1947
  br i1 %1948, label %1949, label %2060

1949:                                             ; preds = %1946
  %1950 = fcmp oeq float %1601, %1136
  br i1 %1950, label %2004, label %1951

1951:                                             ; preds = %1949
  %1952 = load float, ptr %1452, align 4, !tbaa !67
  %1953 = fcmp olt float %1952, %1136
  br i1 %1953, label %2004, label %1954

1954:                                             ; preds = %1951
  %1955 = load float, ptr %1445, align 8, !tbaa !81
  %1956 = fcmp olt float %1601, %1955
  br i1 %1956, label %2004, label %1957

1957:                                             ; preds = %1954
  %1958 = fcmp ogt float %1955, %1136
  br i1 %1958, label %1959, label %1965

1959:                                             ; preds = %1957
  %1960 = fsub float %1955, %1136
  %1961 = fmul float %1599, %1960
  %1962 = fsub float %1601, %1136
  %1963 = fdiv float %1961, %1962
  %1964 = fadd float %1256, %1963
  br label %1965

1965:                                             ; preds = %1959, %1957
  %1966 = phi float [ %1964, %1959 ], [ %1256, %1957 ]
  %1967 = phi float [ %1955, %1959 ], [ %1136, %1957 ]
  %1968 = fcmp ogt float %1601, %1952
  br i1 %1968, label %1969, label %1976

1969:                                             ; preds = %1965
  %1970 = fsub float %1595, %1966
  %1971 = fsub float %1952, %1601
  %1972 = fmul float %1971, %1970
  %1973 = fsub float %1601, %1967
  %1974 = fdiv float %1972, %1973
  %1975 = fadd float %1974, %1595
  br label %1976

1976:                                             ; preds = %1969, %1965
  %1977 = phi float [ %1975, %1969 ], [ %1595, %1965 ]
  %1978 = phi float [ %1952, %1969 ], [ %1601, %1965 ]
  %1979 = fcmp ugt float %1966, %1595
  %1980 = fcmp ugt float %1977, %1595
  %1981 = select i1 %1979, i1 true, i1 %1980
  br i1 %1981, label %1988, label %1982

1982:                                             ; preds = %1976
  %1983 = load float, ptr %1591, align 4, !tbaa !70
  %1984 = fsub float %1978, %1967
  %1985 = getelementptr inbounds nuw float, ptr %1111, i64 %1593
  %1986 = load float, ptr %1985, align 4, !tbaa !43
  %1987 = call float @llvm.fmuladd.f32(float %1983, float %1984, float %1986)
  store float %1987, ptr %1985, align 4, !tbaa !43
  br label %2004

1988:                                             ; preds = %1976
  %1989 = fcmp ult float %1966, %1598
  %1990 = fcmp ult float %1977, %1598
  %1991 = select i1 %1989, i1 true, i1 %1990
  br i1 %1991, label %1992, label %2004

1992:                                             ; preds = %1988
  %1993 = load float, ptr %1591, align 4, !tbaa !70
  %1994 = fsub float %1978, %1967
  %1995 = fmul float %1994, %1993
  %1996 = fsub float %1966, %1595
  %1997 = fsub float %1977, %1595
  %1998 = fadd float %1996, %1997
  %1999 = fmul float %1998, 5.000000e-01
  %2000 = fsub float 1.000000e+00, %1999
  %2001 = getelementptr inbounds nuw float, ptr %1111, i64 %1593
  %2002 = load float, ptr %2001, align 4, !tbaa !43
  %2003 = call float @llvm.fmuladd.f32(float %1995, float %2000, float %2002)
  store float %2003, ptr %2001, align 4, !tbaa !43
  br label %2004

2004:                                             ; preds = %1992, %1988, %1982, %1954, %1951, %1949
  %2005 = fcmp oeq float %1601, %1137
  br i1 %2005, label %2453, label %2006

2006:                                             ; preds = %2004
  %2007 = load float, ptr %1452, align 4, !tbaa !67
  %2008 = fcmp ogt float %1601, %2007
  br i1 %2008, label %2453, label %2009

2009:                                             ; preds = %2006
  %2010 = load float, ptr %1445, align 8, !tbaa !81
  %2011 = fcmp olt float %1137, %2010
  br i1 %2011, label %2453, label %2012

2012:                                             ; preds = %2009
  %2013 = fcmp olt float %1601, %2010
  br i1 %2013, label %2014, label %2021

2014:                                             ; preds = %2012
  %2015 = fsub float %1442, %1595
  %2016 = fsub float %2010, %1601
  %2017 = fmul float %2015, %2016
  %2018 = fsub float %1137, %1601
  %2019 = fdiv float %2017, %2018
  %2020 = fadd float %2019, %1595
  br label %2021

2021:                                             ; preds = %2014, %2012
  %2022 = phi float [ %2020, %2014 ], [ %1595, %2012 ]
  %2023 = phi float [ %2010, %2014 ], [ %1601, %2012 ]
  %2024 = fcmp ogt float %1137, %2007
  br i1 %2024, label %2025, label %2032

2025:                                             ; preds = %2021
  %2026 = fsub float %1442, %2022
  %2027 = fsub float %2007, %1137
  %2028 = fmul float %2027, %2026
  %2029 = fsub float %1137, %2023
  %2030 = fdiv float %2028, %2029
  %2031 = fadd float %1442, %2030
  br label %2032

2032:                                             ; preds = %2025, %2021
  %2033 = phi float [ %2031, %2025 ], [ %1442, %2021 ]
  %2034 = phi float [ %2007, %2025 ], [ %1137, %2021 ]
  %2035 = fcmp ugt float %2022, %1595
  %2036 = fcmp ugt float %2033, %1595
  %2037 = select i1 %2035, i1 true, i1 %2036
  br i1 %2037, label %2044, label %2038

2038:                                             ; preds = %2032
  %2039 = load float, ptr %1591, align 4, !tbaa !70
  %2040 = fsub float %2034, %2023
  %2041 = getelementptr inbounds nuw float, ptr %1111, i64 %1593
  %2042 = load float, ptr %2041, align 4, !tbaa !43
  %2043 = call float @llvm.fmuladd.f32(float %2039, float %2040, float %2042)
  store float %2043, ptr %2041, align 4, !tbaa !43
  br label %2453

2044:                                             ; preds = %2032
  %2045 = fcmp ult float %2022, %1598
  %2046 = fcmp ult float %2033, %1598
  %2047 = select i1 %2045, i1 true, i1 %2046
  br i1 %2047, label %2048, label %2453

2048:                                             ; preds = %2044
  %2049 = load float, ptr %1591, align 4, !tbaa !70
  %2050 = fsub float %2034, %2023
  %2051 = fmul float %2050, %2049
  %2052 = fsub float %2022, %1595
  %2053 = fsub float %2033, %1595
  %2054 = fadd float %2052, %2053
  %2055 = fmul float %2054, 5.000000e-01
  %2056 = fsub float 1.000000e+00, %2055
  %2057 = getelementptr inbounds nuw float, ptr %1111, i64 %1593
  %2058 = load float, ptr %2057, align 4, !tbaa !43
  %2059 = call float @llvm.fmuladd.f32(float %2051, float %2056, float %2058)
  store float %2059, ptr %2057, align 4, !tbaa !43
  br label %2453

2060:                                             ; preds = %1946
  %2061 = fcmp ogt float %1256, %1595
  %2062 = and i1 %1776, %2061
  br i1 %2062, label %2063, label %2174

2063:                                             ; preds = %2060
  %2064 = fcmp oeq float %1601, %1136
  br i1 %2064, label %2118, label %2065

2065:                                             ; preds = %2063
  %2066 = load float, ptr %1452, align 4, !tbaa !67
  %2067 = fcmp olt float %2066, %1136
  br i1 %2067, label %2118, label %2068

2068:                                             ; preds = %2065
  %2069 = load float, ptr %1445, align 8, !tbaa !81
  %2070 = fcmp olt float %1601, %2069
  br i1 %2070, label %2118, label %2071

2071:                                             ; preds = %2068
  %2072 = fcmp ogt float %2069, %1136
  br i1 %2072, label %2073, label %2079

2073:                                             ; preds = %2071
  %2074 = fsub float %2069, %1136
  %2075 = fmul float %1599, %2074
  %2076 = fsub float %1601, %1136
  %2077 = fdiv float %2075, %2076
  %2078 = fadd float %1256, %2077
  br label %2079

2079:                                             ; preds = %2073, %2071
  %2080 = phi float [ %2078, %2073 ], [ %1256, %2071 ]
  %2081 = phi float [ %2069, %2073 ], [ %1136, %2071 ]
  %2082 = fcmp ogt float %1601, %2066
  br i1 %2082, label %2083, label %2090

2083:                                             ; preds = %2079
  %2084 = fsub float %1595, %2080
  %2085 = fsub float %2066, %1601
  %2086 = fmul float %2085, %2084
  %2087 = fsub float %1601, %2081
  %2088 = fdiv float %2086, %2087
  %2089 = fadd float %2088, %1595
  br label %2090

2090:                                             ; preds = %2083, %2079
  %2091 = phi float [ %2089, %2083 ], [ %1595, %2079 ]
  %2092 = phi float [ %2066, %2083 ], [ %1601, %2079 ]
  %2093 = fcmp ugt float %2080, %1595
  %2094 = fcmp ugt float %2091, %1595
  %2095 = select i1 %2093, i1 true, i1 %2094
  br i1 %2095, label %2102, label %2096

2096:                                             ; preds = %2090
  %2097 = load float, ptr %1591, align 4, !tbaa !70
  %2098 = fsub float %2092, %2081
  %2099 = getelementptr inbounds nuw float, ptr %1111, i64 %1593
  %2100 = load float, ptr %2099, align 4, !tbaa !43
  %2101 = call float @llvm.fmuladd.f32(float %2097, float %2098, float %2100)
  store float %2101, ptr %2099, align 4, !tbaa !43
  br label %2118

2102:                                             ; preds = %2090
  %2103 = fcmp ult float %2080, %1598
  %2104 = fcmp ult float %2091, %1598
  %2105 = select i1 %2103, i1 true, i1 %2104
  br i1 %2105, label %2106, label %2118

2106:                                             ; preds = %2102
  %2107 = load float, ptr %1591, align 4, !tbaa !70
  %2108 = fsub float %2092, %2081
  %2109 = fmul float %2108, %2107
  %2110 = fsub float %2080, %1595
  %2111 = fsub float %2091, %1595
  %2112 = fadd float %2110, %2111
  %2113 = fmul float %2112, 5.000000e-01
  %2114 = fsub float 1.000000e+00, %2113
  %2115 = getelementptr inbounds nuw float, ptr %1111, i64 %1593
  %2116 = load float, ptr %2115, align 4, !tbaa !43
  %2117 = call float @llvm.fmuladd.f32(float %2109, float %2114, float %2116)
  store float %2117, ptr %2115, align 4, !tbaa !43
  br label %2118

2118:                                             ; preds = %2106, %2102, %2096, %2068, %2065, %2063
  %2119 = fcmp oeq float %1601, %1137
  br i1 %2119, label %2453, label %2120

2120:                                             ; preds = %2118
  %2121 = load float, ptr %1452, align 4, !tbaa !67
  %2122 = fcmp ogt float %1601, %2121
  br i1 %2122, label %2453, label %2123

2123:                                             ; preds = %2120
  %2124 = load float, ptr %1445, align 8, !tbaa !81
  %2125 = fcmp olt float %1137, %2124
  br i1 %2125, label %2453, label %2126

2126:                                             ; preds = %2123
  %2127 = fcmp olt float %1601, %2124
  br i1 %2127, label %2128, label %2135

2128:                                             ; preds = %2126
  %2129 = fsub float %1442, %1595
  %2130 = fsub float %2124, %1601
  %2131 = fmul float %2129, %2130
  %2132 = fsub float %1137, %1601
  %2133 = fdiv float %2131, %2132
  %2134 = fadd float %2133, %1595
  br label %2135

2135:                                             ; preds = %2128, %2126
  %2136 = phi float [ %2134, %2128 ], [ %1595, %2126 ]
  %2137 = phi float [ %2124, %2128 ], [ %1601, %2126 ]
  %2138 = fcmp ogt float %1137, %2121
  br i1 %2138, label %2139, label %2146

2139:                                             ; preds = %2135
  %2140 = fsub float %1442, %2136
  %2141 = fsub float %2121, %1137
  %2142 = fmul float %2141, %2140
  %2143 = fsub float %1137, %2137
  %2144 = fdiv float %2142, %2143
  %2145 = fadd float %1442, %2144
  br label %2146

2146:                                             ; preds = %2139, %2135
  %2147 = phi float [ %2145, %2139 ], [ %1442, %2135 ]
  %2148 = phi float [ %2121, %2139 ], [ %1137, %2135 ]
  %2149 = fcmp ugt float %2136, %1595
  %2150 = fcmp ugt float %2147, %1595
  %2151 = select i1 %2149, i1 true, i1 %2150
  br i1 %2151, label %2158, label %2152

2152:                                             ; preds = %2146
  %2153 = load float, ptr %1591, align 4, !tbaa !70
  %2154 = fsub float %2148, %2137
  %2155 = getelementptr inbounds nuw float, ptr %1111, i64 %1593
  %2156 = load float, ptr %2155, align 4, !tbaa !43
  %2157 = call float @llvm.fmuladd.f32(float %2153, float %2154, float %2156)
  store float %2157, ptr %2155, align 4, !tbaa !43
  br label %2453

2158:                                             ; preds = %2146
  %2159 = fcmp ult float %2136, %1598
  %2160 = fcmp ult float %2147, %1598
  %2161 = select i1 %2159, i1 true, i1 %2160
  br i1 %2161, label %2162, label %2453

2162:                                             ; preds = %2158
  %2163 = load float, ptr %1591, align 4, !tbaa !70
  %2164 = fsub float %2148, %2137
  %2165 = fmul float %2164, %2163
  %2166 = fsub float %2136, %1595
  %2167 = fsub float %2147, %1595
  %2168 = fadd float %2166, %2167
  %2169 = fmul float %2168, 5.000000e-01
  %2170 = fsub float 1.000000e+00, %2169
  %2171 = getelementptr inbounds nuw float, ptr %1111, i64 %1593
  %2172 = load float, ptr %2171, align 4, !tbaa !43
  %2173 = call float @llvm.fmuladd.f32(float %2165, float %2170, float %2172)
  store float %2173, ptr %2171, align 4, !tbaa !43
  br label %2453

2174:                                             ; preds = %2060
  %2175 = fcmp olt float %1256, %1598
  %2176 = and i1 %2175, %1606
  br i1 %2176, label %2177, label %2288

2177:                                             ; preds = %2174
  %2178 = fcmp oeq float %1604, %1136
  br i1 %2178, label %2232, label %2179

2179:                                             ; preds = %2177
  %2180 = load float, ptr %1452, align 4, !tbaa !67
  %2181 = fcmp olt float %2180, %1136
  br i1 %2181, label %2232, label %2182

2182:                                             ; preds = %2179
  %2183 = load float, ptr %1445, align 8, !tbaa !81
  %2184 = fcmp olt float %1604, %2183
  br i1 %2184, label %2232, label %2185

2185:                                             ; preds = %2182
  %2186 = fcmp ogt float %2183, %1136
  br i1 %2186, label %2187, label %2193

2187:                                             ; preds = %2185
  %2188 = fsub float %2183, %1136
  %2189 = fmul float %1602, %2188
  %2190 = fsub float %1604, %1136
  %2191 = fdiv float %2189, %2190
  %2192 = fadd float %1256, %2191
  br label %2193

2193:                                             ; preds = %2187, %2185
  %2194 = phi float [ %2192, %2187 ], [ %1256, %2185 ]
  %2195 = phi float [ %2183, %2187 ], [ %1136, %2185 ]
  %2196 = fcmp ogt float %1604, %2180
  br i1 %2196, label %2197, label %2204

2197:                                             ; preds = %2193
  %2198 = fsub float %1598, %2194
  %2199 = fsub float %2180, %1604
  %2200 = fmul float %2199, %2198
  %2201 = fsub float %1604, %2195
  %2202 = fdiv float %2200, %2201
  %2203 = fadd float %2202, %1598
  br label %2204

2204:                                             ; preds = %2197, %2193
  %2205 = phi float [ %2203, %2197 ], [ %1598, %2193 ]
  %2206 = phi float [ %2180, %2197 ], [ %1604, %2193 ]
  %2207 = fcmp ugt float %2194, %1595
  %2208 = fcmp ugt float %2205, %1595
  %2209 = select i1 %2207, i1 true, i1 %2208
  br i1 %2209, label %2216, label %2210

2210:                                             ; preds = %2204
  %2211 = load float, ptr %1591, align 4, !tbaa !70
  %2212 = fsub float %2206, %2195
  %2213 = getelementptr inbounds nuw float, ptr %1111, i64 %1593
  %2214 = load float, ptr %2213, align 4, !tbaa !43
  %2215 = call float @llvm.fmuladd.f32(float %2211, float %2212, float %2214)
  store float %2215, ptr %2213, align 4, !tbaa !43
  br label %2232

2216:                                             ; preds = %2204
  %2217 = fcmp ult float %2194, %1598
  %2218 = fcmp ult float %2205, %1598
  %2219 = select i1 %2217, i1 true, i1 %2218
  br i1 %2219, label %2220, label %2232

2220:                                             ; preds = %2216
  %2221 = load float, ptr %1591, align 4, !tbaa !70
  %2222 = fsub float %2206, %2195
  %2223 = fmul float %2222, %2221
  %2224 = fsub float %2194, %1595
  %2225 = fsub float %2205, %1595
  %2226 = fadd float %2224, %2225
  %2227 = fmul float %2226, 5.000000e-01
  %2228 = fsub float 1.000000e+00, %2227
  %2229 = getelementptr inbounds nuw float, ptr %1111, i64 %1593
  %2230 = load float, ptr %2229, align 4, !tbaa !43
  %2231 = call float @llvm.fmuladd.f32(float %2223, float %2228, float %2230)
  store float %2231, ptr %2229, align 4, !tbaa !43
  br label %2232

2232:                                             ; preds = %2220, %2216, %2210, %2182, %2179, %2177
  %2233 = fcmp oeq float %1604, %1137
  br i1 %2233, label %2453, label %2234

2234:                                             ; preds = %2232
  %2235 = load float, ptr %1452, align 4, !tbaa !67
  %2236 = fcmp ogt float %1604, %2235
  br i1 %2236, label %2453, label %2237

2237:                                             ; preds = %2234
  %2238 = load float, ptr %1445, align 8, !tbaa !81
  %2239 = fcmp olt float %1137, %2238
  br i1 %2239, label %2453, label %2240

2240:                                             ; preds = %2237
  %2241 = fcmp olt float %1604, %2238
  br i1 %2241, label %2242, label %2249

2242:                                             ; preds = %2240
  %2243 = fsub float %1442, %1598
  %2244 = fsub float %2238, %1604
  %2245 = fmul float %2243, %2244
  %2246 = fsub float %1137, %1604
  %2247 = fdiv float %2245, %2246
  %2248 = fadd float %2247, %1598
  br label %2249

2249:                                             ; preds = %2242, %2240
  %2250 = phi float [ %2248, %2242 ], [ %1598, %2240 ]
  %2251 = phi float [ %2238, %2242 ], [ %1604, %2240 ]
  %2252 = fcmp ogt float %1137, %2235
  br i1 %2252, label %2253, label %2260

2253:                                             ; preds = %2249
  %2254 = fsub float %1442, %2250
  %2255 = fsub float %2235, %1137
  %2256 = fmul float %2255, %2254
  %2257 = fsub float %1137, %2251
  %2258 = fdiv float %2256, %2257
  %2259 = fadd float %1442, %2258
  br label %2260

2260:                                             ; preds = %2253, %2249
  %2261 = phi float [ %2259, %2253 ], [ %1442, %2249 ]
  %2262 = phi float [ %2235, %2253 ], [ %1137, %2249 ]
  %2263 = fcmp ugt float %2250, %1595
  %2264 = fcmp ugt float %2261, %1595
  %2265 = select i1 %2263, i1 true, i1 %2264
  br i1 %2265, label %2272, label %2266

2266:                                             ; preds = %2260
  %2267 = load float, ptr %1591, align 4, !tbaa !70
  %2268 = fsub float %2262, %2251
  %2269 = getelementptr inbounds nuw float, ptr %1111, i64 %1593
  %2270 = load float, ptr %2269, align 4, !tbaa !43
  %2271 = call float @llvm.fmuladd.f32(float %2267, float %2268, float %2270)
  store float %2271, ptr %2269, align 4, !tbaa !43
  br label %2453

2272:                                             ; preds = %2260
  %2273 = fcmp ult float %2250, %1598
  %2274 = fcmp ult float %2261, %1598
  %2275 = select i1 %2273, i1 true, i1 %2274
  br i1 %2275, label %2276, label %2453

2276:                                             ; preds = %2272
  %2277 = load float, ptr %1591, align 4, !tbaa !70
  %2278 = fsub float %2262, %2251
  %2279 = fmul float %2278, %2277
  %2280 = fsub float %2250, %1595
  %2281 = fsub float %2261, %1595
  %2282 = fadd float %2280, %2281
  %2283 = fmul float %2282, 5.000000e-01
  %2284 = fsub float 1.000000e+00, %2283
  %2285 = getelementptr inbounds nuw float, ptr %1111, i64 %1593
  %2286 = load float, ptr %2285, align 4, !tbaa !43
  %2287 = call float @llvm.fmuladd.f32(float %2279, float %2284, float %2286)
  store float %2287, ptr %2285, align 4, !tbaa !43
  br label %2453

2288:                                             ; preds = %2174
  %2289 = fcmp olt float %1442, %1598
  %2290 = and i1 %2289, %1777
  br i1 %2290, label %2291, label %2402

2291:                                             ; preds = %2288
  %2292 = fcmp oeq float %1604, %1136
  br i1 %2292, label %2346, label %2293

2293:                                             ; preds = %2291
  %2294 = load float, ptr %1452, align 4, !tbaa !67
  %2295 = fcmp olt float %2294, %1136
  br i1 %2295, label %2346, label %2296

2296:                                             ; preds = %2293
  %2297 = load float, ptr %1445, align 8, !tbaa !81
  %2298 = fcmp olt float %1604, %2297
  br i1 %2298, label %2346, label %2299

2299:                                             ; preds = %2296
  %2300 = fcmp ogt float %2297, %1136
  br i1 %2300, label %2301, label %2307

2301:                                             ; preds = %2299
  %2302 = fsub float %2297, %1136
  %2303 = fmul float %1602, %2302
  %2304 = fsub float %1604, %1136
  %2305 = fdiv float %2303, %2304
  %2306 = fadd float %1256, %2305
  br label %2307

2307:                                             ; preds = %2301, %2299
  %2308 = phi float [ %2306, %2301 ], [ %1256, %2299 ]
  %2309 = phi float [ %2297, %2301 ], [ %1136, %2299 ]
  %2310 = fcmp ogt float %1604, %2294
  br i1 %2310, label %2311, label %2318

2311:                                             ; preds = %2307
  %2312 = fsub float %1598, %2308
  %2313 = fsub float %2294, %1604
  %2314 = fmul float %2313, %2312
  %2315 = fsub float %1604, %2309
  %2316 = fdiv float %2314, %2315
  %2317 = fadd float %2316, %1598
  br label %2318

2318:                                             ; preds = %2311, %2307
  %2319 = phi float [ %2317, %2311 ], [ %1598, %2307 ]
  %2320 = phi float [ %2294, %2311 ], [ %1604, %2307 ]
  %2321 = fcmp ugt float %2308, %1595
  %2322 = fcmp ugt float %2319, %1595
  %2323 = select i1 %2321, i1 true, i1 %2322
  br i1 %2323, label %2330, label %2324

2324:                                             ; preds = %2318
  %2325 = load float, ptr %1591, align 4, !tbaa !70
  %2326 = fsub float %2320, %2309
  %2327 = getelementptr inbounds nuw float, ptr %1111, i64 %1593
  %2328 = load float, ptr %2327, align 4, !tbaa !43
  %2329 = call float @llvm.fmuladd.f32(float %2325, float %2326, float %2328)
  store float %2329, ptr %2327, align 4, !tbaa !43
  br label %2346

2330:                                             ; preds = %2318
  %2331 = fcmp ult float %2308, %1598
  %2332 = fcmp ult float %2319, %1598
  %2333 = select i1 %2331, i1 true, i1 %2332
  br i1 %2333, label %2334, label %2346

2334:                                             ; preds = %2330
  %2335 = load float, ptr %1591, align 4, !tbaa !70
  %2336 = fsub float %2320, %2309
  %2337 = fmul float %2336, %2335
  %2338 = fsub float %2308, %1595
  %2339 = fsub float %2319, %1595
  %2340 = fadd float %2338, %2339
  %2341 = fmul float %2340, 5.000000e-01
  %2342 = fsub float 1.000000e+00, %2341
  %2343 = getelementptr inbounds nuw float, ptr %1111, i64 %1593
  %2344 = load float, ptr %2343, align 4, !tbaa !43
  %2345 = call float @llvm.fmuladd.f32(float %2337, float %2342, float %2344)
  store float %2345, ptr %2343, align 4, !tbaa !43
  br label %2346

2346:                                             ; preds = %2334, %2330, %2324, %2296, %2293, %2291
  %2347 = fcmp oeq float %1604, %1137
  br i1 %2347, label %2453, label %2348

2348:                                             ; preds = %2346
  %2349 = load float, ptr %1452, align 4, !tbaa !67
  %2350 = fcmp ogt float %1604, %2349
  br i1 %2350, label %2453, label %2351

2351:                                             ; preds = %2348
  %2352 = load float, ptr %1445, align 8, !tbaa !81
  %2353 = fcmp olt float %1137, %2352
  br i1 %2353, label %2453, label %2354

2354:                                             ; preds = %2351
  %2355 = fcmp olt float %1604, %2352
  br i1 %2355, label %2356, label %2363

2356:                                             ; preds = %2354
  %2357 = fsub float %1442, %1598
  %2358 = fsub float %2352, %1604
  %2359 = fmul float %2357, %2358
  %2360 = fsub float %1137, %1604
  %2361 = fdiv float %2359, %2360
  %2362 = fadd float %2361, %1598
  br label %2363

2363:                                             ; preds = %2356, %2354
  %2364 = phi float [ %2362, %2356 ], [ %1598, %2354 ]
  %2365 = phi float [ %2352, %2356 ], [ %1604, %2354 ]
  %2366 = fcmp ogt float %1137, %2349
  br i1 %2366, label %2367, label %2374

2367:                                             ; preds = %2363
  %2368 = fsub float %1442, %2364
  %2369 = fsub float %2349, %1137
  %2370 = fmul float %2369, %2368
  %2371 = fsub float %1137, %2365
  %2372 = fdiv float %2370, %2371
  %2373 = fadd float %1442, %2372
  br label %2374

2374:                                             ; preds = %2367, %2363
  %2375 = phi float [ %2373, %2367 ], [ %1442, %2363 ]
  %2376 = phi float [ %2349, %2367 ], [ %1137, %2363 ]
  %2377 = fcmp ugt float %2364, %1595
  %2378 = fcmp ugt float %2375, %1595
  %2379 = select i1 %2377, i1 true, i1 %2378
  br i1 %2379, label %2386, label %2380

2380:                                             ; preds = %2374
  %2381 = load float, ptr %1591, align 4, !tbaa !70
  %2382 = fsub float %2376, %2365
  %2383 = getelementptr inbounds nuw float, ptr %1111, i64 %1593
  %2384 = load float, ptr %2383, align 4, !tbaa !43
  %2385 = call float @llvm.fmuladd.f32(float %2381, float %2382, float %2384)
  store float %2385, ptr %2383, align 4, !tbaa !43
  br label %2453

2386:                                             ; preds = %2374
  %2387 = fcmp ult float %2364, %1598
  %2388 = fcmp ult float %2375, %1598
  %2389 = select i1 %2387, i1 true, i1 %2388
  br i1 %2389, label %2390, label %2453

2390:                                             ; preds = %2386
  %2391 = load float, ptr %1591, align 4, !tbaa !70
  %2392 = fsub float %2376, %2365
  %2393 = fmul float %2392, %2391
  %2394 = fsub float %2364, %1595
  %2395 = fsub float %2375, %1595
  %2396 = fadd float %2394, %2395
  %2397 = fmul float %2396, 5.000000e-01
  %2398 = fsub float 1.000000e+00, %2397
  %2399 = getelementptr inbounds nuw float, ptr %1111, i64 %1593
  %2400 = load float, ptr %2399, align 4, !tbaa !43
  %2401 = call float @llvm.fmuladd.f32(float %2393, float %2398, float %2400)
  store float %2401, ptr %2399, align 4, !tbaa !43
  br label %2453

2402:                                             ; preds = %2288
  br i1 %1248, label %2453, label %2403

2403:                                             ; preds = %2402
  %2404 = load float, ptr %1452, align 4, !tbaa !67
  %2405 = fcmp olt float %2404, %1136
  br i1 %2405, label %2453, label %2406

2406:                                             ; preds = %2403
  %2407 = load float, ptr %1445, align 8, !tbaa !81
  %2408 = fcmp olt float %1137, %2407
  br i1 %2408, label %2453, label %2409

2409:                                             ; preds = %2406
  %2410 = fcmp ogt float %2407, %1136
  %2411 = fsub float %2407, %1136
  %2412 = fmul float %1590, %2411
  %2413 = fdiv float %2412, %1249
  %2414 = fadd float %1256, %2413
  %2415 = select i1 %2410, float %2414, float %1256
  %2416 = select i1 %2410, float %2407, float %1136
  %2417 = fcmp ogt float %1137, %2404
  br i1 %2417, label %2418, label %2425

2418:                                             ; preds = %2409
  %2419 = fsub float %1442, %2415
  %2420 = fsub float %2404, %1137
  %2421 = fmul float %2420, %2419
  %2422 = fsub float %1137, %2416
  %2423 = fdiv float %2421, %2422
  %2424 = fadd float %1442, %2423
  br label %2425

2425:                                             ; preds = %2418, %2409
  %2426 = phi float [ %2424, %2418 ], [ %1442, %2409 ]
  %2427 = phi float [ %2404, %2418 ], [ %1137, %2409 ]
  %2428 = fcmp ugt float %2415, %1595
  %2429 = fcmp ugt float %2426, %1595
  %2430 = select i1 %2428, i1 true, i1 %2429
  br i1 %2430, label %2437, label %2431

2431:                                             ; preds = %2425
  %2432 = load float, ptr %1591, align 4, !tbaa !70
  %2433 = fsub float %2427, %2416
  %2434 = getelementptr inbounds nuw float, ptr %1111, i64 %1593
  %2435 = load float, ptr %2434, align 4, !tbaa !43
  %2436 = call float @llvm.fmuladd.f32(float %2432, float %2433, float %2435)
  store float %2436, ptr %2434, align 4, !tbaa !43
  br label %2453

2437:                                             ; preds = %2425
  %2438 = fcmp ult float %2415, %1598
  %2439 = fcmp ult float %2426, %1598
  %2440 = select i1 %2438, i1 true, i1 %2439
  br i1 %2440, label %2441, label %2453

2441:                                             ; preds = %2437
  %2442 = load float, ptr %1591, align 4, !tbaa !70
  %2443 = fsub float %2427, %2416
  %2444 = fmul float %2443, %2442
  %2445 = fsub float %2415, %1595
  %2446 = fsub float %2426, %1595
  %2447 = fadd float %2445, %2446
  %2448 = fmul float %2447, 5.000000e-01
  %2449 = fsub float 1.000000e+00, %2448
  %2450 = getelementptr inbounds nuw float, ptr %1111, i64 %1593
  %2451 = load float, ptr %2450, align 4, !tbaa !43
  %2452 = call float @llvm.fmuladd.f32(float %2444, float %2449, float %2451)
  store float %2452, ptr %2450, align 4, !tbaa !43
  br label %2453

2453:                                             ; preds = %2441, %2437, %2431, %2406, %2403, %2402, %2390, %2386, %2380, %2351, %2348, %2346, %2276, %2272, %2266, %2237, %2234, %2232, %2162, %2158, %2152, %2123, %2120, %2118, %2048, %2044, %2038, %2009, %2006, %2004, %1934, %1930, %1924, %1895, %1892, %1890, %1763, %1759, %1753, %1724, %1721, %1719
  %2454 = icmp eq i64 %1596, %1113
  br i1 %2454, label %2455, label %1592, !llvm.loop !84

2455:                                             ; preds = %2453, %1571, %1470, %1431, %1427, %1421, %1392, %1388, %1387, %1373, %1367, %1359, %1329, %1325, %1261, %1257
  %2456 = load ptr, ptr %1251, align 8, !tbaa !69
  %2457 = icmp eq ptr %2456, null
  br i1 %2457, label %2458, label %1250, !llvm.loop !85

2458:                                             ; preds = %2455, %1240
  %2459 = shl i32 %1132, 9
  br label %2461

2460:                                             ; preds = %2461
  br i1 %1246, label %2492, label %2483

2461:                                             ; preds = %2461, %2458
  %2462 = phi i64 [ %2481, %2461 ], [ 0, %2458 ]
  %2463 = phi float [ %2466, %2461 ], [ 0.000000e+00, %2458 ]
  %2464 = getelementptr inbounds nuw float, ptr %1114, i64 %2462
  %2465 = load float, ptr %2464, align 4, !tbaa !43
  %2466 = fadd float %2463, %2465
  %2467 = getelementptr inbounds nuw float, ptr %1111, i64 %2462
  %2468 = load float, ptr %2467, align 4, !tbaa !43
  %2469 = fadd float %2468, %2466
  %2470 = fcmp olt float %2469, 0.000000e+00
  %2471 = fneg float %2469
  %2472 = select i1 %2470, float %2471, float %2469
  %2473 = call float @llvm.fmuladd.f32(float %2472, float 2.550000e+02, float 5.000000e-01)
  %2474 = fptosi float %2473 to i32
  %2475 = call i32 @llvm.smin.i32(i32 %2474, i32 255)
  %2476 = trunc i32 %2475 to i8
  %2477 = trunc nuw nsw i64 %2462 to i32
  %2478 = add nuw nsw i32 %2459, %2477
  %2479 = sext i32 %2478 to i64
  %2480 = getelementptr inbounds i8, ptr %761, i64 %2479
  store i8 %2476, ptr %2480, align 1, !tbaa !11
  %2481 = add nuw nsw i64 %2462, 1
  %2482 = icmp eq i64 %2481, %1113
  br i1 %2482, label %2460, label %2461, !llvm.loop !86

2483:                                             ; preds = %2460, %2483
  %2484 = phi ptr [ %2490, %2483 ], [ %1245, %2460 ]
  %2485 = getelementptr inbounds nuw i8, ptr %2484, i64 12
  %2486 = load float, ptr %2485, align 4, !tbaa !78
  %2487 = getelementptr inbounds nuw i8, ptr %2484, i64 8
  %2488 = load float, ptr %2487, align 8, !tbaa !80
  %2489 = fadd float %2486, %2488
  store float %2489, ptr %2487, align 8, !tbaa !80
  %2490 = load ptr, ptr %2484, align 8, !tbaa !65
  %2491 = icmp eq ptr %2490, null
  br i1 %2491, label %2492, label %2483, !llvm.loop !87

2492:                                             ; preds = %2483, %2460
  %2493 = add i32 %1131, 1
  %2494 = add nuw nsw i32 %1132, 1
  %2495 = icmp eq i32 %705, %2494
  br i1 %2495, label %2496, label %1129, !llvm.loop !88

2496:                                             ; preds = %2492, %1100
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %2497

2497:                                             ; preds = %950, %951, %986, %995, %2496
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  br label %2498

2498:                                             ; preds = %2497, %742
  %2499 = add nuw nsw i32 %706, 1
  %2500 = add i32 %2499, %715
  %2501 = call i32 @llvm.smax.i32(i32 %707, i32 %629)
  %2502 = select i1 %711, i32 %707, i32 %2501
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #17
  %2503 = add nuw nsw i64 %626, 1
  %2504 = icmp eq i64 %2503, 95
  br i1 %2504, label %2507, label %625, !llvm.loop !89

2505:                                             ; preds = %709, %698
  store i32 826689362, ptr %4, align 1
  %2506 = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 3, ptr %2506, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #17
  br label %3500

2507:                                             ; preds = %2498
  %2508 = icmp eq i32 %163, 0
  %2509 = icmp eq i32 %165, 0
  %2510 = select i1 %2508, i1 %2509, i1 false
  %2511 = sext i32 %165 to i64
  %2512 = getelementptr inbounds i8, ptr %0, i64 %2511
  %2513 = load ptr, ptr @stbtt__lo, align 8
  %2514 = icmp uge ptr %2512, %2513
  %2515 = load ptr, ptr @stbtt__hi, align 8
  %2516 = icmp ult ptr %2512, %2515
  %2517 = select i1 %2514, i1 %2516, i1 false
  %2518 = getelementptr inbounds nuw i8, ptr %2512, i64 1
  %2519 = icmp uge ptr %2518, %2513
  %2520 = icmp ult ptr %2518, %2515
  %2521 = select i1 %2519, i1 %2520, i1 false
  %2522 = getelementptr inbounds nuw i8, ptr %2512, i64 2
  %2523 = icmp uge ptr %2522, %2513
  %2524 = icmp ult ptr %2522, %2515
  %2525 = select i1 %2523, i1 %2524, i1 false
  %2526 = getelementptr inbounds nuw i8, ptr %2512, i64 3
  %2527 = icmp uge ptr %2526, %2513
  %2528 = icmp ult ptr %2526, %2515
  %2529 = select i1 %2527, i1 %2528, i1 false
  %2530 = getelementptr inbounds nuw i8, ptr %2512, i64 8
  %2531 = icmp uge ptr %2530, %2513
  %2532 = icmp ult ptr %2530, %2515
  %2533 = select i1 %2531, i1 %2532, i1 false
  %2534 = getelementptr inbounds nuw i8, ptr %2512, i64 9
  %2535 = icmp uge ptr %2534, %2513
  %2536 = icmp ult ptr %2534, %2515
  %2537 = select i1 %2535, i1 %2536, i1 false
  %2538 = sext i32 %163 to i64
  %2539 = getelementptr inbounds i8, ptr %0, i64 %2538
  %2540 = getelementptr inbounds nuw i8, ptr %2539, i64 2
  %2541 = icmp uge ptr %2540, %2513
  %2542 = icmp ult ptr %2540, %2515
  %2543 = select i1 %2541, i1 %2542, i1 false
  %2544 = getelementptr inbounds nuw i8, ptr %2539, i64 3
  %2545 = icmp uge ptr %2544, %2513
  %2546 = icmp ult ptr %2544, %2515
  %2547 = select i1 %2545, i1 %2546, i1 false
  %2548 = getelementptr inbounds nuw i8, ptr %2539, i64 8
  %2549 = icmp uge ptr %2548, %2513
  %2550 = icmp ult ptr %2548, %2515
  %2551 = select i1 %2549, i1 %2550, i1 false
  %2552 = getelementptr inbounds nuw i8, ptr %2539, i64 9
  %2553 = icmp uge ptr %2552, %2513
  %2554 = icmp ult ptr %2552, %2515
  %2555 = select i1 %2553, i1 %2554, i1 false
  %2556 = getelementptr inbounds nuw i8, ptr %2539, i64 10
  %2557 = icmp uge ptr %2556, %2513
  %2558 = icmp ult ptr %2556, %2515
  %2559 = select i1 %2557, i1 %2558, i1 false
  %2560 = getelementptr inbounds nuw i8, ptr %2539, i64 11
  %2561 = icmp uge ptr %2560, %2513
  %2562 = icmp ult ptr %2560, %2515
  %2563 = select i1 %2561, i1 %2562, i1 false
  %2564 = getelementptr inbounds nuw i8, ptr %2539, i64 18
  %2565 = getelementptr inbounds nuw i8, ptr %2539, i64 22
  br label %2566

2566:                                             ; preds = %2507, %2582
  %2567 = phi i32 [ 32, %2507 ], [ %2584, %2582 ]
  %2568 = phi i32 [ 0, %2507 ], [ %2583, %2582 ]
  %2569 = icmp slt i32 %2568, 1024
  br i1 %2569, label %2570, label %2582

2570:                                             ; preds = %2566
  %2571 = trunc nuw i32 %2567 to i8
  br label %2586

2572:                                             ; preds = %2582
  %2573 = add nuw i32 %2502, 1
  %2574 = add i32 %2573, %714
  store i32 826689362, ptr %4, align 1
  %2575 = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %2575, align 1
  %2576 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %593, ptr %2576, align 1
  %2577 = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %611, ptr %2577, align 1
  %2578 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 512, ptr %2578, align 1
  %2579 = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 %2574, ptr %2579, align 1
  %2580 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 95, ptr %2580, align 1
  %2581 = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i32 %2583, ptr %2581, align 1
  br label %3500

2582:                                             ; preds = %3494, %2566
  %2583 = phi i32 [ %2568, %2566 ], [ %3495, %3494 ]
  %2584 = add nuw nsw i32 %2567, 1
  %2585 = icmp eq i32 %2584, 127
  br i1 %2585, label %2572, label %2566, !llvm.loop !90

2586:                                             ; preds = %2570, %3494
  %2587 = phi i32 [ 32, %2570 ], [ %3496, %3494 ]
  %2588 = phi i32 [ %2568, %2570 ], [ %3495, %3494 ]
  br i1 %2510, label %3471, label %2589

2589:                                             ; preds = %2586
  %2590 = call fastcc i32 @stbtt_FindGlyphIndex(ptr noundef nonnull readonly %20, i32 noundef range(i32 -2147483648, 127) %2567) #18
  %2591 = call fastcc i32 @stbtt_FindGlyphIndex(ptr noundef nonnull readonly %20, i32 noundef range(i32 -2147483648, 127) %2587) #18
  br i1 %2509, label %3343, label %2592

2592:                                             ; preds = %2589
  br i1 %2517, label %2593, label %2597

2593:                                             ; preds = %2592
  %2594 = load i8, ptr %2512, align 1, !tbaa !11
  %2595 = zext i8 %2594 to i16
  %2596 = shl nuw i16 %2595, 8
  br label %2597

2597:                                             ; preds = %2593, %2592
  %2598 = phi i16 [ %2596, %2593 ], [ 0, %2592 ]
  br i1 %2521, label %2599, label %3471

2599:                                             ; preds = %2597
  %2600 = load i8, ptr %2518, align 1, !tbaa !11
  %2601 = zext i8 %2600 to i16
  %2602 = or disjoint i16 %2598, %2601
  %2603 = icmp eq i16 %2602, 1
  br i1 %2603, label %2604, label %3471

2604:                                             ; preds = %2599
  br i1 %2525, label %2605, label %2609

2605:                                             ; preds = %2604
  %2606 = load i8, ptr %2522, align 1, !tbaa !11
  %2607 = zext i8 %2606 to i16
  %2608 = shl nuw i16 %2607, 8
  br label %2609

2609:                                             ; preds = %2605, %2604
  %2610 = phi i16 [ %2608, %2605 ], [ 0, %2604 ]
  br i1 %2529, label %2611, label %2615

2611:                                             ; preds = %2609
  %2612 = load i8, ptr %2526, align 1, !tbaa !11
  %2613 = zext i8 %2612 to i16
  %2614 = or disjoint i16 %2610, %2613
  br label %2615

2615:                                             ; preds = %2611, %2609
  %2616 = phi i16 [ %2614, %2611 ], [ %2610, %2609 ]
  %2617 = icmp eq i16 %2616, 0
  br i1 %2617, label %2618, label %3471

2618:                                             ; preds = %2615
  br i1 %2533, label %2619, label %2623

2619:                                             ; preds = %2618
  %2620 = load i8, ptr %2530, align 1, !tbaa !11
  %2621 = zext i8 %2620 to i16
  %2622 = shl nuw i16 %2621, 8
  br label %2623

2623:                                             ; preds = %2619, %2618
  %2624 = phi i16 [ %2622, %2619 ], [ 0, %2618 ]
  br i1 %2537, label %2625, label %2629

2625:                                             ; preds = %2623
  %2626 = load i8, ptr %2534, align 1, !tbaa !11
  %2627 = zext i8 %2626 to i16
  %2628 = or disjoint i16 %2624, %2627
  br label %2629

2629:                                             ; preds = %2625, %2623
  %2630 = phi i16 [ %2628, %2625 ], [ %2624, %2623 ]
  %2631 = zext i16 %2630 to i64
  %2632 = getelementptr inbounds nuw i8, ptr %2512, i64 %2631
  %2633 = icmp uge ptr %2632, %2513
  %2634 = icmp ult ptr %2632, %2515
  %2635 = select i1 %2633, i1 %2634, i1 false
  br i1 %2635, label %2636, label %2640

2636:                                             ; preds = %2629
  %2637 = load i8, ptr %2632, align 1, !tbaa !11
  %2638 = zext i8 %2637 to i16
  %2639 = shl nuw i16 %2638, 8
  br label %2640

2640:                                             ; preds = %2636, %2629
  %2641 = phi i16 [ %2639, %2636 ], [ 0, %2629 ]
  %2642 = getelementptr inbounds nuw i8, ptr %2632, i64 1
  %2643 = icmp uge ptr %2642, %2513
  %2644 = icmp ult ptr %2642, %2515
  %2645 = select i1 %2643, i1 %2644, i1 false
  br i1 %2645, label %2646, label %2650

2646:                                             ; preds = %2640
  %2647 = load i8, ptr %2642, align 1, !tbaa !11
  %2648 = zext i8 %2647 to i16
  %2649 = or disjoint i16 %2641, %2648
  br label %2650

2650:                                             ; preds = %2646, %2640
  %2651 = phi i16 [ %2649, %2646 ], [ %2641, %2640 ]
  %2652 = icmp eq i16 %2651, 0
  br i1 %2652, label %3471, label %2653

2653:                                             ; preds = %2650
  %2654 = getelementptr inbounds nuw i8, ptr %2632, i64 2
  %2655 = zext i16 %2651 to i64
  br label %2656

2656:                                             ; preds = %3340, %2653
  %2657 = phi i64 [ 0, %2653 ], [ %3341, %3340 ]
  %2658 = shl nuw nsw i64 %2657, 1
  %2659 = getelementptr inbounds nuw i8, ptr %2654, i64 %2658
  %2660 = icmp uge ptr %2659, %2513
  %2661 = icmp ult ptr %2659, %2515
  %2662 = select i1 %2660, i1 %2661, i1 false
  br i1 %2662, label %2663, label %2667

2663:                                             ; preds = %2656
  %2664 = load i8, ptr %2659, align 1, !tbaa !11
  %2665 = zext i8 %2664 to i16
  %2666 = shl nuw i16 %2665, 8
  br label %2667

2667:                                             ; preds = %2663, %2656
  %2668 = phi i16 [ %2666, %2663 ], [ 0, %2656 ]
  %2669 = getelementptr inbounds nuw i8, ptr %2659, i64 1
  %2670 = icmp uge ptr %2669, %2513
  %2671 = icmp ult ptr %2669, %2515
  %2672 = select i1 %2670, i1 %2671, i1 false
  br i1 %2672, label %2673, label %2677

2673:                                             ; preds = %2667
  %2674 = load i8, ptr %2669, align 1, !tbaa !11
  %2675 = zext i8 %2674 to i16
  %2676 = or disjoint i16 %2668, %2675
  br label %2677

2677:                                             ; preds = %2673, %2667
  %2678 = phi i16 [ %2676, %2673 ], [ %2668, %2667 ]
  %2679 = zext i16 %2678 to i64
  %2680 = getelementptr inbounds nuw i8, ptr %2632, i64 %2679
  %2681 = icmp uge ptr %2680, %2513
  %2682 = icmp ult ptr %2680, %2515
  %2683 = select i1 %2681, i1 %2682, i1 false
  br i1 %2683, label %2684, label %2688

2684:                                             ; preds = %2677
  %2685 = load i8, ptr %2680, align 1, !tbaa !11
  %2686 = zext i8 %2685 to i16
  %2687 = shl nuw i16 %2686, 8
  br label %2688

2688:                                             ; preds = %2684, %2677
  %2689 = phi i16 [ %2687, %2684 ], [ 0, %2677 ]
  %2690 = getelementptr inbounds nuw i8, ptr %2680, i64 1
  %2691 = icmp uge ptr %2690, %2513
  %2692 = icmp ult ptr %2690, %2515
  %2693 = select i1 %2691, i1 %2692, i1 false
  br i1 %2693, label %2694, label %2699

2694:                                             ; preds = %2688
  %2695 = load i8, ptr %2690, align 1, !tbaa !11
  %2696 = zext i8 %2695 to i16
  %2697 = or disjoint i16 %2689, %2696
  %2698 = icmp ne i16 %2697, 2
  br label %2699

2699:                                             ; preds = %2694, %2688
  %2700 = phi i1 [ %2698, %2694 ], [ true, %2688 ]
  %2701 = getelementptr inbounds nuw i8, ptr %2680, i64 4
  %2702 = icmp uge ptr %2701, %2513
  %2703 = icmp ult ptr %2701, %2515
  %2704 = select i1 %2702, i1 %2703, i1 false
  br i1 %2704, label %2705, label %2709

2705:                                             ; preds = %2699
  %2706 = load i8, ptr %2701, align 1, !tbaa !11
  %2707 = zext i8 %2706 to i16
  %2708 = shl nuw i16 %2707, 8
  br label %2709

2709:                                             ; preds = %2705, %2699
  %2710 = phi i16 [ %2708, %2705 ], [ 0, %2699 ]
  %2711 = getelementptr inbounds nuw i8, ptr %2680, i64 5
  %2712 = icmp uge ptr %2711, %2513
  %2713 = icmp ult ptr %2711, %2515
  %2714 = select i1 %2712, i1 %2713, i1 false
  br i1 %2714, label %2715, label %2719

2715:                                             ; preds = %2709
  %2716 = load i8, ptr %2711, align 1, !tbaa !11
  %2717 = zext i8 %2716 to i16
  %2718 = or disjoint i16 %2710, %2717
  br label %2719

2719:                                             ; preds = %2715, %2709
  %2720 = phi i16 [ %2718, %2715 ], [ %2710, %2709 ]
  %2721 = getelementptr inbounds nuw i8, ptr %2680, i64 6
  %2722 = icmp eq i16 %2720, 0
  %2723 = select i1 %2700, i1 true, i1 %2722
  br i1 %2723, label %3340, label %2724

2724:                                             ; preds = %2719
  %2725 = zext i16 %2720 to i64
  br label %2726

2726:                                             ; preds = %3337, %2724
  %2727 = phi i64 [ 0, %2724 ], [ %3338, %3337 ]
  %2728 = shl nuw nsw i64 %2727, 1
  %2729 = getelementptr inbounds nuw i8, ptr %2721, i64 %2728
  %2730 = icmp uge ptr %2729, %2513
  %2731 = icmp ult ptr %2729, %2515
  %2732 = select i1 %2730, i1 %2731, i1 false
  br i1 %2732, label %2733, label %2737

2733:                                             ; preds = %2726
  %2734 = load i8, ptr %2729, align 1, !tbaa !11
  %2735 = zext i8 %2734 to i16
  %2736 = shl nuw i16 %2735, 8
  br label %2737

2737:                                             ; preds = %2733, %2726
  %2738 = phi i16 [ %2736, %2733 ], [ 0, %2726 ]
  %2739 = getelementptr inbounds nuw i8, ptr %2729, i64 1
  %2740 = icmp uge ptr %2739, %2513
  %2741 = icmp ult ptr %2739, %2515
  %2742 = select i1 %2740, i1 %2741, i1 false
  br i1 %2742, label %2743, label %2747

2743:                                             ; preds = %2737
  %2744 = load i8, ptr %2739, align 1, !tbaa !11
  %2745 = zext i8 %2744 to i16
  %2746 = or disjoint i16 %2738, %2745
  br label %2747

2747:                                             ; preds = %2743, %2737
  %2748 = phi i16 [ %2746, %2743 ], [ %2738, %2737 ]
  %2749 = zext i16 %2748 to i64
  %2750 = getelementptr inbounds nuw i8, ptr %2680, i64 %2749
  %2751 = icmp uge ptr %2750, %2513
  %2752 = icmp ult ptr %2750, %2515
  %2753 = select i1 %2751, i1 %2752, i1 false
  br i1 %2753, label %2754, label %2758

2754:                                             ; preds = %2747
  %2755 = load i8, ptr %2750, align 1, !tbaa !11
  %2756 = zext i8 %2755 to i16
  %2757 = shl nuw i16 %2756, 8
  br label %2758

2758:                                             ; preds = %2754, %2747
  %2759 = phi i16 [ %2757, %2754 ], [ 0, %2747 ]
  %2760 = getelementptr inbounds nuw i8, ptr %2750, i64 1
  %2761 = icmp uge ptr %2760, %2513
  %2762 = icmp ult ptr %2760, %2515
  %2763 = select i1 %2761, i1 %2762, i1 false
  br i1 %2763, label %2764, label %2768

2764:                                             ; preds = %2758
  %2765 = load i8, ptr %2760, align 1, !tbaa !11
  %2766 = zext i8 %2765 to i16
  %2767 = or disjoint i16 %2759, %2766
  br label %2768

2768:                                             ; preds = %2764, %2758
  %2769 = phi i16 [ %2767, %2764 ], [ %2759, %2758 ]
  %2770 = getelementptr inbounds nuw i8, ptr %2750, i64 2
  %2771 = icmp uge ptr %2770, %2513
  %2772 = icmp ult ptr %2770, %2515
  %2773 = select i1 %2771, i1 %2772, i1 false
  br i1 %2773, label %2774, label %2778

2774:                                             ; preds = %2768
  %2775 = load i8, ptr %2770, align 1, !tbaa !11
  %2776 = zext i8 %2775 to i16
  %2777 = shl nuw i16 %2776, 8
  br label %2778

2778:                                             ; preds = %2774, %2768
  %2779 = phi i16 [ %2777, %2774 ], [ 0, %2768 ]
  %2780 = getelementptr inbounds nuw i8, ptr %2750, i64 3
  %2781 = icmp uge ptr %2780, %2513
  %2782 = icmp ult ptr %2780, %2515
  %2783 = select i1 %2781, i1 %2782, i1 false
  br i1 %2783, label %2784, label %2788

2784:                                             ; preds = %2778
  %2785 = load i8, ptr %2780, align 1, !tbaa !11
  %2786 = zext i8 %2785 to i16
  %2787 = or disjoint i16 %2779, %2786
  br label %2788

2788:                                             ; preds = %2784, %2778
  %2789 = phi i16 [ %2787, %2784 ], [ %2779, %2778 ]
  %2790 = zext i16 %2789 to i64
  %2791 = getelementptr inbounds nuw i8, ptr %2750, i64 %2790
  %2792 = icmp uge ptr %2791, %2513
  %2793 = icmp ult ptr %2791, %2515
  %2794 = select i1 %2792, i1 %2793, i1 false
  br i1 %2794, label %2795, label %2799

2795:                                             ; preds = %2788
  %2796 = load i8, ptr %2791, align 1, !tbaa !11
  %2797 = zext i8 %2796 to i16
  %2798 = shl nuw i16 %2797, 8
  br label %2799

2799:                                             ; preds = %2795, %2788
  %2800 = phi i16 [ %2798, %2795 ], [ 0, %2788 ]
  %2801 = getelementptr inbounds nuw i8, ptr %2791, i64 1
  %2802 = icmp uge ptr %2801, %2513
  %2803 = icmp ult ptr %2801, %2515
  %2804 = select i1 %2802, i1 %2803, i1 false
  br i1 %2804, label %2805, label %2809

2805:                                             ; preds = %2799
  %2806 = load i8, ptr %2801, align 1, !tbaa !11
  %2807 = zext i8 %2806 to i16
  %2808 = or disjoint i16 %2800, %2807
  br label %2809

2809:                                             ; preds = %2805, %2799
  %2810 = phi i16 [ %2808, %2805 ], [ %2800, %2799 ]
  switch i16 %2810, label %3337 [
    i16 1, label %2811
    i16 2, label %2876
  ]

2811:                                             ; preds = %2809
  %2812 = getelementptr inbounds nuw i8, ptr %2791, i64 2
  %2813 = icmp uge ptr %2812, %2513
  %2814 = icmp ult ptr %2812, %2515
  %2815 = select i1 %2813, i1 %2814, i1 false
  br i1 %2815, label %2816, label %2820

2816:                                             ; preds = %2811
  %2817 = load i8, ptr %2812, align 1, !tbaa !11
  %2818 = zext i8 %2817 to i16
  %2819 = shl nuw i16 %2818, 8
  br label %2820

2820:                                             ; preds = %2816, %2811
  %2821 = phi i16 [ %2819, %2816 ], [ 0, %2811 ]
  %2822 = getelementptr inbounds nuw i8, ptr %2791, i64 3
  %2823 = icmp uge ptr %2822, %2513
  %2824 = icmp ult ptr %2822, %2515
  %2825 = select i1 %2823, i1 %2824, i1 false
  br i1 %2825, label %2826, label %2830

2826:                                             ; preds = %2820
  %2827 = load i8, ptr %2822, align 1, !tbaa !11
  %2828 = zext i8 %2827 to i16
  %2829 = or disjoint i16 %2821, %2828
  br label %2830

2830:                                             ; preds = %2826, %2820
  %2831 = phi i16 [ %2829, %2826 ], [ %2821, %2820 ]
  %2832 = icmp eq i16 %2831, 0
  br i1 %2832, label %3337, label %2833

2833:                                             ; preds = %2830
  %2834 = zext i16 %2831 to i32
  %2835 = add nsw i32 %2834, -1
  %2836 = getelementptr inbounds nuw i8, ptr %2791, i64 4
  br label %2837

2837:                                             ; preds = %2872, %2833
  %2838 = phi i32 [ 0, %2833 ], [ %2874, %2872 ]
  %2839 = phi i32 [ %2835, %2833 ], [ %2873, %2872 ]
  %2840 = add i32 %2839, %2838
  %2841 = ashr i32 %2840, 1
  %2842 = and i32 %2840, -2
  %2843 = sext i32 %2842 to i64
  %2844 = getelementptr inbounds i8, ptr %2836, i64 %2843
  %2845 = icmp uge ptr %2844, %2513
  %2846 = icmp ult ptr %2844, %2515
  %2847 = select i1 %2845, i1 %2846, i1 false
  br i1 %2847, label %2848, label %2852

2848:                                             ; preds = %2837
  %2849 = load i8, ptr %2844, align 1, !tbaa !11
  %2850 = zext i8 %2849 to i16
  %2851 = shl nuw i16 %2850, 8
  br label %2852

2852:                                             ; preds = %2848, %2837
  %2853 = phi i16 [ %2851, %2848 ], [ 0, %2837 ]
  %2854 = getelementptr inbounds nuw i8, ptr %2844, i64 1
  %2855 = icmp uge ptr %2854, %2513
  %2856 = icmp ult ptr %2854, %2515
  %2857 = select i1 %2855, i1 %2856, i1 false
  br i1 %2857, label %2858, label %2862

2858:                                             ; preds = %2852
  %2859 = load i8, ptr %2854, align 1, !tbaa !11
  %2860 = zext i8 %2859 to i16
  %2861 = or disjoint i16 %2853, %2860
  br label %2862

2862:                                             ; preds = %2858, %2852
  %2863 = phi i16 [ %2861, %2858 ], [ %2853, %2852 ]
  %2864 = zext i16 %2863 to i32
  %2865 = icmp slt i32 %2590, %2864
  br i1 %2865, label %2866, label %2868

2866:                                             ; preds = %2862
  %2867 = add nsw i32 %2841, -1
  br label %2872

2868:                                             ; preds = %2862
  %2869 = icmp samesign ugt i32 %2590, %2864
  br i1 %2869, label %2870, label %2986

2870:                                             ; preds = %2868
  %2871 = add nsw i32 %2841, 1
  br label %2872

2872:                                             ; preds = %2870, %2866
  %2873 = phi i32 [ %2839, %2870 ], [ %2867, %2866 ]
  %2874 = phi i32 [ %2871, %2870 ], [ %2838, %2866 ]
  %2875 = icmp sgt i32 %2874, %2873
  br i1 %2875, label %3337, label %2837, !llvm.loop !91

2876:                                             ; preds = %2809
  %2877 = getelementptr inbounds nuw i8, ptr %2791, i64 2
  %2878 = icmp uge ptr %2877, %2513
  %2879 = icmp ult ptr %2877, %2515
  %2880 = select i1 %2878, i1 %2879, i1 false
  br i1 %2880, label %2881, label %2885

2881:                                             ; preds = %2876
  %2882 = load i8, ptr %2877, align 1, !tbaa !11
  %2883 = zext i8 %2882 to i16
  %2884 = shl nuw i16 %2883, 8
  br label %2885

2885:                                             ; preds = %2881, %2876
  %2886 = phi i16 [ %2884, %2881 ], [ 0, %2876 ]
  %2887 = getelementptr inbounds nuw i8, ptr %2791, i64 3
  %2888 = icmp uge ptr %2887, %2513
  %2889 = icmp ult ptr %2887, %2515
  %2890 = select i1 %2888, i1 %2889, i1 false
  br i1 %2890, label %2891, label %2895

2891:                                             ; preds = %2885
  %2892 = load i8, ptr %2887, align 1, !tbaa !11
  %2893 = zext i8 %2892 to i16
  %2894 = or disjoint i16 %2886, %2893
  br label %2895

2895:                                             ; preds = %2891, %2885
  %2896 = phi i16 [ %2894, %2891 ], [ %2886, %2885 ]
  %2897 = getelementptr inbounds nuw i8, ptr %2791, i64 4
  %2898 = icmp eq i16 %2896, 0
  br i1 %2898, label %3337, label %2899

2899:                                             ; preds = %2895
  %2900 = zext i16 %2896 to i32
  %2901 = add nsw i32 %2900, -1
  br label %2902

2902:                                             ; preds = %2977, %2899
  %2903 = phi i32 [ %2979, %2977 ], [ 0, %2899 ]
  %2904 = phi i32 [ %2978, %2977 ], [ %2901, %2899 ]
  %2905 = add i32 %2904, %2903
  %2906 = ashr i32 %2905, 1
  %2907 = mul i32 %2906, 6
  %2908 = sext i32 %2907 to i64
  %2909 = getelementptr inbounds i8, ptr %2897, i64 %2908
  %2910 = icmp uge ptr %2909, %2513
  %2911 = icmp ult ptr %2909, %2515
  %2912 = select i1 %2910, i1 %2911, i1 false
  br i1 %2912, label %2913, label %2917

2913:                                             ; preds = %2902
  %2914 = load i8, ptr %2909, align 1, !tbaa !11
  %2915 = zext i8 %2914 to i16
  %2916 = shl nuw i16 %2915, 8
  br label %2917

2917:                                             ; preds = %2913, %2902
  %2918 = phi i16 [ %2916, %2913 ], [ 0, %2902 ]
  %2919 = getelementptr inbounds nuw i8, ptr %2909, i64 1
  %2920 = icmp uge ptr %2919, %2513
  %2921 = icmp ult ptr %2919, %2515
  %2922 = select i1 %2920, i1 %2921, i1 false
  br i1 %2922, label %2923, label %2927

2923:                                             ; preds = %2917
  %2924 = load i8, ptr %2919, align 1, !tbaa !11
  %2925 = zext i8 %2924 to i16
  %2926 = or disjoint i16 %2918, %2925
  br label %2927

2927:                                             ; preds = %2923, %2917
  %2928 = phi i16 [ %2926, %2923 ], [ %2918, %2917 ]
  %2929 = zext i16 %2928 to i32
  %2930 = getelementptr inbounds nuw i8, ptr %2909, i64 2
  %2931 = icmp uge ptr %2930, %2513
  %2932 = icmp ult ptr %2930, %2515
  %2933 = select i1 %2931, i1 %2932, i1 false
  br i1 %2933, label %2934, label %2938

2934:                                             ; preds = %2927
  %2935 = load i8, ptr %2930, align 1, !tbaa !11
  %2936 = zext i8 %2935 to i16
  %2937 = shl nuw i16 %2936, 8
  br label %2938

2938:                                             ; preds = %2934, %2927
  %2939 = phi i16 [ %2937, %2934 ], [ 0, %2927 ]
  %2940 = getelementptr inbounds nuw i8, ptr %2909, i64 3
  %2941 = icmp uge ptr %2940, %2513
  %2942 = icmp ult ptr %2940, %2515
  %2943 = select i1 %2941, i1 %2942, i1 false
  br i1 %2943, label %2944, label %2948

2944:                                             ; preds = %2938
  %2945 = load i8, ptr %2940, align 1, !tbaa !11
  %2946 = zext i8 %2945 to i16
  %2947 = or disjoint i16 %2939, %2946
  br label %2948

2948:                                             ; preds = %2944, %2938
  %2949 = phi i16 [ %2947, %2944 ], [ %2939, %2938 ]
  %2950 = icmp slt i32 %2590, %2929
  br i1 %2950, label %2951, label %2953

2951:                                             ; preds = %2948
  %2952 = add nsw i32 %2906, -1
  br label %2977

2953:                                             ; preds = %2948
  %2954 = zext i16 %2949 to i32
  %2955 = icmp samesign ugt i32 %2590, %2954
  br i1 %2955, label %2956, label %2958

2956:                                             ; preds = %2953
  %2957 = add nsw i32 %2906, 1
  br label %2977

2958:                                             ; preds = %2953
  %2959 = getelementptr inbounds nuw i8, ptr %2909, i64 4
  %2960 = icmp uge ptr %2959, %2513
  %2961 = icmp ult ptr %2959, %2515
  %2962 = select i1 %2960, i1 %2961, i1 false
  br i1 %2962, label %2963, label %2967

2963:                                             ; preds = %2958
  %2964 = load i8, ptr %2959, align 1, !tbaa !11
  %2965 = zext i8 %2964 to i16
  %2966 = shl nuw i16 %2965, 8
  br label %2967

2967:                                             ; preds = %2963, %2958
  %2968 = phi i16 [ %2966, %2963 ], [ 0, %2958 ]
  %2969 = getelementptr inbounds nuw i8, ptr %2909, i64 5
  %2970 = icmp uge ptr %2969, %2513
  %2971 = icmp ult ptr %2969, %2515
  %2972 = select i1 %2970, i1 %2971, i1 false
  br i1 %2972, label %2973, label %2981

2973:                                             ; preds = %2967
  %2974 = load i8, ptr %2969, align 1, !tbaa !11
  %2975 = zext i8 %2974 to i16
  %2976 = or disjoint i16 %2968, %2975
  br label %2981

2977:                                             ; preds = %2956, %2951
  %2978 = phi i32 [ %2904, %2956 ], [ %2952, %2951 ]
  %2979 = phi i32 [ %2957, %2956 ], [ %2903, %2951 ]
  %2980 = icmp sgt i32 %2979, %2978
  br i1 %2980, label %3337, label %2902, !llvm.loop !92

2981:                                             ; preds = %2973, %2967
  %2982 = phi i16 [ %2976, %2973 ], [ %2968, %2967 ]
  %2983 = zext i16 %2982 to i32
  %2984 = sub nsw i32 %2590, %2929
  %2985 = add nsw i32 %2984, %2983
  br label %2986

2986:                                             ; preds = %2868, %2981
  %2987 = phi i32 [ %2985, %2981 ], [ %2841, %2868 ]
  %2988 = icmp eq i32 %2987, -1
  br i1 %2988, label %3337, label %2989

2989:                                             ; preds = %2986
  switch i16 %2769, label %3471 [
    i16 1, label %2990
    i16 2, label %3168
  ]

2990:                                             ; preds = %2989
  %2991 = getelementptr inbounds nuw i8, ptr %2750, i64 4
  %2992 = icmp uge ptr %2991, %2513
  %2993 = icmp ult ptr %2991, %2515
  %2994 = select i1 %2992, i1 %2993, i1 false
  br i1 %2994, label %2995, label %2999

2995:                                             ; preds = %2990
  %2996 = load i8, ptr %2991, align 1, !tbaa !11
  %2997 = zext i8 %2996 to i16
  %2998 = shl nuw i16 %2997, 8
  br label %2999

2999:                                             ; preds = %2995, %2990
  %3000 = phi i16 [ %2998, %2995 ], [ 0, %2990 ]
  %3001 = getelementptr inbounds nuw i8, ptr %2750, i64 5
  %3002 = icmp uge ptr %3001, %2513
  %3003 = icmp ult ptr %3001, %2515
  %3004 = select i1 %3002, i1 %3003, i1 false
  br i1 %3004, label %3005, label %3010

3005:                                             ; preds = %2999
  %3006 = load i8, ptr %3001, align 1, !tbaa !11
  %3007 = zext i8 %3006 to i16
  %3008 = or disjoint i16 %3000, %3007
  %3009 = icmp eq i16 %3008, 4
  br label %3010

3010:                                             ; preds = %3005, %2999
  %3011 = phi i1 [ %3009, %3005 ], [ false, %2999 ]
  %3012 = getelementptr inbounds nuw i8, ptr %2750, i64 6
  %3013 = icmp uge ptr %3012, %2513
  %3014 = icmp ult ptr %3012, %2515
  %3015 = select i1 %3013, i1 %3014, i1 false
  br i1 %3015, label %3016, label %3020

3016:                                             ; preds = %3010
  %3017 = load i8, ptr %3012, align 1, !tbaa !11
  %3018 = zext i8 %3017 to i16
  %3019 = shl nuw i16 %3018, 8
  br label %3020

3020:                                             ; preds = %3016, %3010
  %3021 = phi i16 [ %3019, %3016 ], [ 0, %3010 ]
  %3022 = getelementptr inbounds nuw i8, ptr %2750, i64 7
  %3023 = icmp uge ptr %3022, %2513
  %3024 = icmp ult ptr %3022, %2515
  %3025 = select i1 %3023, i1 %3024, i1 false
  br i1 %3025, label %3026, label %3030

3026:                                             ; preds = %3020
  %3027 = load i8, ptr %3022, align 1, !tbaa !11
  %3028 = zext i8 %3027 to i16
  %3029 = or disjoint i16 %3021, %3028
  br label %3030

3030:                                             ; preds = %3026, %3020
  %3031 = phi i16 [ %3029, %3026 ], [ %3021, %3020 ]
  %3032 = icmp eq i16 %3031, 0
  %3033 = select i1 %3011, i1 %3032, i1 false
  br i1 %3033, label %3034, label %3471

3034:                                             ; preds = %3030
  %3035 = getelementptr inbounds nuw i8, ptr %2750, i64 8
  %3036 = icmp uge ptr %3035, %2513
  %3037 = icmp ult ptr %3035, %2515
  %3038 = select i1 %3036, i1 %3037, i1 false
  br i1 %3038, label %3039, label %3043

3039:                                             ; preds = %3034
  %3040 = load i8, ptr %3035, align 1, !tbaa !11
  %3041 = zext i8 %3040 to i16
  %3042 = shl nuw i16 %3041, 8
  br label %3043

3043:                                             ; preds = %3039, %3034
  %3044 = phi i16 [ %3042, %3039 ], [ 0, %3034 ]
  %3045 = getelementptr inbounds nuw i8, ptr %2750, i64 9
  %3046 = icmp uge ptr %3045, %2513
  %3047 = icmp ult ptr %3045, %2515
  %3048 = select i1 %3046, i1 %3047, i1 false
  br i1 %3048, label %3049, label %3053

3049:                                             ; preds = %3043
  %3050 = load i8, ptr %3045, align 1, !tbaa !11
  %3051 = zext i8 %3050 to i16
  %3052 = or disjoint i16 %3044, %3051
  br label %3053

3053:                                             ; preds = %3049, %3043
  %3054 = phi i16 [ %3052, %3049 ], [ %3044, %3043 ]
  %3055 = getelementptr inbounds nuw i8, ptr %2750, i64 10
  %3056 = shl nsw i32 %2987, 1
  %3057 = sext i32 %3056 to i64
  %3058 = getelementptr inbounds i8, ptr %3055, i64 %3057
  %3059 = icmp uge ptr %3058, %2513
  %3060 = icmp ult ptr %3058, %2515
  %3061 = select i1 %3059, i1 %3060, i1 false
  br i1 %3061, label %3062, label %3066

3062:                                             ; preds = %3053
  %3063 = load i8, ptr %3058, align 1, !tbaa !11
  %3064 = zext i8 %3063 to i16
  %3065 = shl nuw i16 %3064, 8
  br label %3066

3066:                                             ; preds = %3062, %3053
  %3067 = phi i16 [ %3065, %3062 ], [ 0, %3053 ]
  %3068 = getelementptr inbounds nuw i8, ptr %3058, i64 1
  %3069 = icmp uge ptr %3068, %2513
  %3070 = icmp ult ptr %3068, %2515
  %3071 = select i1 %3069, i1 %3070, i1 false
  br i1 %3071, label %3072, label %3076

3072:                                             ; preds = %3066
  %3073 = load i8, ptr %3068, align 1, !tbaa !11
  %3074 = zext i8 %3073 to i16
  %3075 = or disjoint i16 %3067, %3074
  br label %3076

3076:                                             ; preds = %3072, %3066
  %3077 = phi i16 [ %3075, %3072 ], [ %3067, %3066 ]
  %3078 = zext i16 %3077 to i64
  %3079 = getelementptr inbounds nuw i8, ptr %2750, i64 %3078
  %3080 = icmp uge ptr %3079, %2513
  %3081 = icmp ult ptr %3079, %2515
  %3082 = select i1 %3080, i1 %3081, i1 false
  br i1 %3082, label %3083, label %3087

3083:                                             ; preds = %3076
  %3084 = load i8, ptr %3079, align 1, !tbaa !11
  %3085 = zext i8 %3084 to i16
  %3086 = shl nuw i16 %3085, 8
  br label %3087

3087:                                             ; preds = %3083, %3076
  %3088 = phi i16 [ %3086, %3083 ], [ 0, %3076 ]
  %3089 = getelementptr inbounds nuw i8, ptr %3079, i64 1
  %3090 = icmp uge ptr %3089, %2513
  %3091 = icmp ult ptr %3089, %2515
  %3092 = select i1 %3090, i1 %3091, i1 false
  br i1 %3092, label %3093, label %3097

3093:                                             ; preds = %3087
  %3094 = load i8, ptr %3089, align 1, !tbaa !11
  %3095 = zext i8 %3094 to i16
  %3096 = or disjoint i16 %3088, %3095
  br label %3097

3097:                                             ; preds = %3093, %3087
  %3098 = phi i16 [ %3096, %3093 ], [ %3088, %3087 ]
  %3099 = getelementptr inbounds nuw i8, ptr %3079, i64 2
  %3100 = zext i16 %3054 to i32
  %3101 = icmp slt i32 %2987, %3100
  br i1 %3101, label %3102, label %3471

3102:                                             ; preds = %3097
  %3103 = icmp eq i16 %3098, 0
  br i1 %3103, label %3337, label %3104

3104:                                             ; preds = %3102
  %3105 = zext i16 %3098 to i32
  %3106 = add nsw i32 %3105, -1
  br label %3107

3107:                                             ; preds = %3164, %3104
  %3108 = phi i32 [ %3166, %3164 ], [ 0, %3104 ]
  %3109 = phi i32 [ %3165, %3164 ], [ %3106, %3104 ]
  %3110 = add i32 %3109, %3108
  %3111 = ashr i32 %3110, 1
  %3112 = shl i32 %3111, 2
  %3113 = sext i32 %3112 to i64
  %3114 = getelementptr inbounds i8, ptr %3099, i64 %3113
  %3115 = icmp uge ptr %3114, %2513
  %3116 = icmp ult ptr %3114, %2515
  %3117 = select i1 %3115, i1 %3116, i1 false
  br i1 %3117, label %3118, label %3122

3118:                                             ; preds = %3107
  %3119 = load i8, ptr %3114, align 1, !tbaa !11
  %3120 = zext i8 %3119 to i16
  %3121 = shl nuw i16 %3120, 8
  br label %3122

3122:                                             ; preds = %3118, %3107
  %3123 = phi i16 [ %3121, %3118 ], [ 0, %3107 ]
  %3124 = getelementptr inbounds nuw i8, ptr %3114, i64 1
  %3125 = icmp uge ptr %3124, %2513
  %3126 = icmp ult ptr %3124, %2515
  %3127 = select i1 %3125, i1 %3126, i1 false
  br i1 %3127, label %3128, label %3132

3128:                                             ; preds = %3122
  %3129 = load i8, ptr %3124, align 1, !tbaa !11
  %3130 = zext i8 %3129 to i16
  %3131 = or disjoint i16 %3123, %3130
  br label %3132

3132:                                             ; preds = %3128, %3122
  %3133 = phi i16 [ %3131, %3128 ], [ %3123, %3122 ]
  %3134 = zext i16 %3133 to i32
  %3135 = icmp slt i32 %2591, %3134
  br i1 %3135, label %3136, label %3138

3136:                                             ; preds = %3132
  %3137 = add nsw i32 %3111, -1
  br label %3164

3138:                                             ; preds = %3132
  %3139 = icmp samesign ugt i32 %2591, %3134
  br i1 %3139, label %3140, label %3142

3140:                                             ; preds = %3138
  %3141 = add nsw i32 %3111, 1
  br label %3164

3142:                                             ; preds = %3138
  %3143 = getelementptr inbounds nuw i8, ptr %3114, i64 2
  %3144 = icmp uge ptr %3143, %2513
  %3145 = icmp ult ptr %3143, %2515
  %3146 = select i1 %3144, i1 %3145, i1 false
  br i1 %3146, label %3147, label %3151

3147:                                             ; preds = %3142
  %3148 = load i8, ptr %3143, align 1, !tbaa !11
  %3149 = zext i8 %3148 to i16
  %3150 = shl nuw i16 %3149, 8
  br label %3151

3151:                                             ; preds = %3147, %3142
  %3152 = phi i16 [ %3150, %3147 ], [ 0, %3142 ]
  %3153 = getelementptr inbounds nuw i8, ptr %3114, i64 3
  %3154 = icmp uge ptr %3153, %2513
  %3155 = icmp ult ptr %3153, %2515
  %3156 = select i1 %3154, i1 %3155, i1 false
  br i1 %3156, label %3157, label %3161

3157:                                             ; preds = %3151
  %3158 = load i8, ptr %3153, align 1, !tbaa !11
  %3159 = zext i8 %3158 to i16
  %3160 = or disjoint i16 %3152, %3159
  br label %3161

3161:                                             ; preds = %3157, %3151
  %3162 = phi i16 [ %3160, %3157 ], [ %3152, %3151 ]
  %3163 = sext i16 %3162 to i32
  br label %3471

3164:                                             ; preds = %3140, %3136
  %3165 = phi i32 [ %3109, %3140 ], [ %3137, %3136 ]
  %3166 = phi i32 [ %3141, %3140 ], [ %3108, %3136 ]
  %3167 = icmp sgt i32 %3166, %3165
  br i1 %3167, label %3337, label %3107, !llvm.loop !93

3168:                                             ; preds = %2989
  %3169 = getelementptr inbounds nuw i8, ptr %2750, i64 4
  %3170 = icmp uge ptr %3169, %2513
  %3171 = icmp ult ptr %3169, %2515
  %3172 = select i1 %3170, i1 %3171, i1 false
  br i1 %3172, label %3173, label %3177

3173:                                             ; preds = %3168
  %3174 = load i8, ptr %3169, align 1, !tbaa !11
  %3175 = zext i8 %3174 to i16
  %3176 = shl nuw i16 %3175, 8
  br label %3177

3177:                                             ; preds = %3173, %3168
  %3178 = phi i16 [ %3176, %3173 ], [ 0, %3168 ]
  %3179 = getelementptr inbounds nuw i8, ptr %2750, i64 5
  %3180 = icmp uge ptr %3179, %2513
  %3181 = icmp ult ptr %3179, %2515
  %3182 = select i1 %3180, i1 %3181, i1 false
  br i1 %3182, label %3183, label %3188

3183:                                             ; preds = %3177
  %3184 = load i8, ptr %3179, align 1, !tbaa !11
  %3185 = zext i8 %3184 to i16
  %3186 = or disjoint i16 %3178, %3185
  %3187 = icmp eq i16 %3186, 4
  br label %3188

3188:                                             ; preds = %3183, %3177
  %3189 = phi i1 [ %3187, %3183 ], [ false, %3177 ]
  %3190 = getelementptr inbounds nuw i8, ptr %2750, i64 6
  %3191 = icmp uge ptr %3190, %2513
  %3192 = icmp ult ptr %3190, %2515
  %3193 = select i1 %3191, i1 %3192, i1 false
  br i1 %3193, label %3194, label %3198

3194:                                             ; preds = %3188
  %3195 = load i8, ptr %3190, align 1, !tbaa !11
  %3196 = zext i8 %3195 to i16
  %3197 = shl nuw i16 %3196, 8
  br label %3198

3198:                                             ; preds = %3194, %3188
  %3199 = phi i16 [ %3197, %3194 ], [ 0, %3188 ]
  %3200 = getelementptr inbounds nuw i8, ptr %2750, i64 7
  %3201 = icmp uge ptr %3200, %2513
  %3202 = icmp ult ptr %3200, %2515
  %3203 = select i1 %3201, i1 %3202, i1 false
  br i1 %3203, label %3204, label %3208

3204:                                             ; preds = %3198
  %3205 = load i8, ptr %3200, align 1, !tbaa !11
  %3206 = zext i8 %3205 to i16
  %3207 = or disjoint i16 %3199, %3206
  br label %3208

3208:                                             ; preds = %3204, %3198
  %3209 = phi i16 [ %3207, %3204 ], [ %3199, %3198 ]
  %3210 = icmp eq i16 %3209, 0
  %3211 = select i1 %3189, i1 %3210, i1 false
  br i1 %3211, label %3212, label %3471

3212:                                             ; preds = %3208
  %3213 = getelementptr inbounds nuw i8, ptr %2750, i64 8
  %3214 = icmp uge ptr %3213, %2513
  %3215 = icmp ult ptr %3213, %2515
  %3216 = select i1 %3214, i1 %3215, i1 false
  br i1 %3216, label %3217, label %3221

3217:                                             ; preds = %3212
  %3218 = load i8, ptr %3213, align 1, !tbaa !11
  %3219 = zext i8 %3218 to i16
  %3220 = shl nuw i16 %3219, 8
  br label %3221

3221:                                             ; preds = %3217, %3212
  %3222 = phi i16 [ %3220, %3217 ], [ 0, %3212 ]
  %3223 = getelementptr inbounds nuw i8, ptr %2750, i64 9
  %3224 = icmp uge ptr %3223, %2513
  %3225 = icmp ult ptr %3223, %2515
  %3226 = select i1 %3224, i1 %3225, i1 false
  br i1 %3226, label %3227, label %3231

3227:                                             ; preds = %3221
  %3228 = load i8, ptr %3223, align 1, !tbaa !11
  %3229 = zext i8 %3228 to i16
  %3230 = or disjoint i16 %3222, %3229
  br label %3231

3231:                                             ; preds = %3227, %3221
  %3232 = phi i16 [ %3230, %3227 ], [ %3222, %3221 ]
  %3233 = getelementptr inbounds nuw i8, ptr %2750, i64 10
  %3234 = icmp uge ptr %3233, %2513
  %3235 = icmp ult ptr %3233, %2515
  %3236 = select i1 %3234, i1 %3235, i1 false
  br i1 %3236, label %3237, label %3241

3237:                                             ; preds = %3231
  %3238 = load i8, ptr %3233, align 1, !tbaa !11
  %3239 = zext i8 %3238 to i16
  %3240 = shl nuw i16 %3239, 8
  br label %3241

3241:                                             ; preds = %3237, %3231
  %3242 = phi i16 [ %3240, %3237 ], [ 0, %3231 ]
  %3243 = getelementptr inbounds nuw i8, ptr %2750, i64 11
  %3244 = icmp uge ptr %3243, %2513
  %3245 = icmp ult ptr %3243, %2515
  %3246 = select i1 %3244, i1 %3245, i1 false
  br i1 %3246, label %3247, label %3251

3247:                                             ; preds = %3241
  %3248 = load i8, ptr %3243, align 1, !tbaa !11
  %3249 = zext i8 %3248 to i16
  %3250 = or disjoint i16 %3242, %3249
  br label %3251

3251:                                             ; preds = %3247, %3241
  %3252 = phi i16 [ %3250, %3247 ], [ %3242, %3241 ]
  %3253 = zext i16 %3232 to i64
  %3254 = getelementptr inbounds nuw i8, ptr %2750, i64 %3253
  %3255 = call fastcc i32 @stbtt__GetGlyphClass(ptr noundef nonnull %3254, i32 noundef %2590) #18
  %3256 = zext i16 %3252 to i64
  %3257 = getelementptr inbounds nuw i8, ptr %2750, i64 %3256
  %3258 = call fastcc i32 @stbtt__GetGlyphClass(ptr noundef nonnull %3257, i32 noundef %2591) #18
  %3259 = getelementptr inbounds nuw i8, ptr %2750, i64 12
  %3260 = icmp uge ptr %3259, %2513
  %3261 = icmp ult ptr %3259, %2515
  %3262 = select i1 %3260, i1 %3261, i1 false
  br i1 %3262, label %3263, label %3267

3263:                                             ; preds = %3251
  %3264 = load i8, ptr %3259, align 1, !tbaa !11
  %3265 = zext i8 %3264 to i16
  %3266 = shl nuw i16 %3265, 8
  br label %3267

3267:                                             ; preds = %3263, %3251
  %3268 = phi i16 [ %3266, %3263 ], [ 0, %3251 ]
  %3269 = getelementptr inbounds nuw i8, ptr %2750, i64 13
  %3270 = icmp uge ptr %3269, %2513
  %3271 = icmp ult ptr %3269, %2515
  %3272 = select i1 %3270, i1 %3271, i1 false
  br i1 %3272, label %3273, label %3277

3273:                                             ; preds = %3267
  %3274 = load i8, ptr %3269, align 1, !tbaa !11
  %3275 = zext i8 %3274 to i16
  %3276 = or disjoint i16 %3268, %3275
  br label %3277

3277:                                             ; preds = %3273, %3267
  %3278 = phi i16 [ %3276, %3273 ], [ %3268, %3267 ]
  %3279 = getelementptr inbounds nuw i8, ptr %2750, i64 14
  %3280 = icmp uge ptr %3279, %2513
  %3281 = icmp ult ptr %3279, %2515
  %3282 = select i1 %3280, i1 %3281, i1 false
  br i1 %3282, label %3283, label %3287

3283:                                             ; preds = %3277
  %3284 = load i8, ptr %3279, align 1, !tbaa !11
  %3285 = zext i8 %3284 to i16
  %3286 = shl nuw i16 %3285, 8
  br label %3287

3287:                                             ; preds = %3283, %3277
  %3288 = phi i16 [ %3286, %3283 ], [ 0, %3277 ]
  %3289 = getelementptr inbounds nuw i8, ptr %2750, i64 15
  %3290 = icmp uge ptr %3289, %2513
  %3291 = icmp ult ptr %3289, %2515
  %3292 = select i1 %3290, i1 %3291, i1 false
  br i1 %3292, label %3293, label %3297

3293:                                             ; preds = %3287
  %3294 = load i8, ptr %3289, align 1, !tbaa !11
  %3295 = zext i8 %3294 to i16
  %3296 = or disjoint i16 %3288, %3295
  br label %3297

3297:                                             ; preds = %3293, %3287
  %3298 = phi i16 [ %3296, %3293 ], [ %3288, %3287 ]
  %3299 = icmp slt i32 %3255, 0
  %3300 = zext i16 %3278 to i32
  %3301 = icmp sge i32 %3255, %3300
  %3302 = select i1 %3299, i1 true, i1 %3301
  %3303 = icmp slt i32 %3258, 0
  %3304 = select i1 %3302, i1 true, i1 %3303
  br i1 %3304, label %3471, label %3305

3305:                                             ; preds = %3297
  %3306 = zext i16 %3298 to i32
  %3307 = icmp samesign ult i32 %3258, %3306
  br i1 %3307, label %3308, label %3471

3308:                                             ; preds = %3305
  %3309 = getelementptr inbounds nuw i8, ptr %2750, i64 16
  %3310 = shl nuw nsw i32 %3255, 1
  %3311 = mul i32 %3310, %3306
  %3312 = sext i32 %3311 to i64
  %3313 = getelementptr inbounds i8, ptr %3309, i64 %3312
  %3314 = shl nuw nsw i32 %3258, 1
  %3315 = zext nneg i32 %3314 to i64
  %3316 = getelementptr inbounds nuw i8, ptr %3313, i64 %3315
  %3317 = icmp uge ptr %3316, %2513
  %3318 = icmp ult ptr %3316, %2515
  %3319 = select i1 %3317, i1 %3318, i1 false
  br i1 %3319, label %3320, label %3324

3320:                                             ; preds = %3308
  %3321 = load i8, ptr %3316, align 1, !tbaa !11
  %3322 = zext i8 %3321 to i16
  %3323 = shl nuw i16 %3322, 8
  br label %3324

3324:                                             ; preds = %3320, %3308
  %3325 = phi i16 [ %3323, %3320 ], [ 0, %3308 ]
  %3326 = getelementptr inbounds nuw i8, ptr %3316, i64 1
  %3327 = icmp uge ptr %3326, %2513
  %3328 = icmp ult ptr %3326, %2515
  %3329 = select i1 %3327, i1 %3328, i1 false
  br i1 %3329, label %3330, label %3334

3330:                                             ; preds = %3324
  %3331 = load i8, ptr %3326, align 1, !tbaa !11
  %3332 = zext i8 %3331 to i16
  %3333 = or disjoint i16 %3325, %3332
  br label %3334

3334:                                             ; preds = %3330, %3324
  %3335 = phi i16 [ %3333, %3330 ], [ %3325, %3324 ]
  %3336 = sext i16 %3335 to i32
  br label %3471

3337:                                             ; preds = %2977, %2872, %3164, %3102, %2986, %2895, %2830, %2809
  %3338 = add nuw nsw i64 %2727, 1
  %3339 = icmp eq i64 %3338, %2725
  br i1 %3339, label %3340, label %2726, !llvm.loop !94

3340:                                             ; preds = %3337, %2719
  %3341 = add nuw nsw i64 %2657, 1
  %3342 = icmp eq i64 %3341, %2655
  br i1 %3342, label %3471, label %2656, !llvm.loop !95

3343:                                             ; preds = %2589
  br i1 %2508, label %3471, label %3344

3344:                                             ; preds = %3343
  br i1 %2543, label %3345, label %3349

3345:                                             ; preds = %3344
  %3346 = load i8, ptr %2540, align 1, !tbaa !11
  %3347 = zext i8 %3346 to i16
  %3348 = shl nuw i16 %3347, 8
  br label %3349

3349:                                             ; preds = %3345, %3344
  %3350 = phi i16 [ %3348, %3345 ], [ 0, %3344 ]
  br i1 %2547, label %3351, label %3355

3351:                                             ; preds = %3349
  %3352 = load i8, ptr %2544, align 1, !tbaa !11
  %3353 = zext i8 %3352 to i16
  %3354 = or disjoint i16 %3350, %3353
  br label %3355

3355:                                             ; preds = %3351, %3349
  %3356 = phi i16 [ %3354, %3351 ], [ %3350, %3349 ]
  %3357 = icmp eq i16 %3356, 0
  br i1 %3357, label %3471, label %3358

3358:                                             ; preds = %3355
  br i1 %2551, label %3359, label %3363

3359:                                             ; preds = %3358
  %3360 = load i8, ptr %2548, align 1, !tbaa !11
  %3361 = zext i8 %3360 to i16
  %3362 = shl nuw i16 %3361, 8
  br label %3363

3363:                                             ; preds = %3359, %3358
  %3364 = phi i16 [ %3362, %3359 ], [ 0, %3358 ]
  br i1 %2555, label %3365, label %3471

3365:                                             ; preds = %3363
  %3366 = load i8, ptr %2552, align 1, !tbaa !11
  %3367 = zext i8 %3366 to i16
  %3368 = or disjoint i16 %3364, %3367
  %3369 = icmp eq i16 %3368, 1
  br i1 %3369, label %3370, label %3471

3370:                                             ; preds = %3365
  br i1 %2559, label %3371, label %3375

3371:                                             ; preds = %3370
  %3372 = load i8, ptr %2556, align 1, !tbaa !11
  %3373 = zext i8 %3372 to i16
  %3374 = shl nuw i16 %3373, 8
  br label %3375

3375:                                             ; preds = %3371, %3370
  %3376 = phi i16 [ %3374, %3371 ], [ 0, %3370 ]
  br i1 %2563, label %3377, label %3381

3377:                                             ; preds = %3375
  %3378 = load i8, ptr %2560, align 1, !tbaa !11
  %3379 = zext i8 %3378 to i16
  %3380 = or disjoint i16 %3376, %3379
  br label %3381

3381:                                             ; preds = %3377, %3375
  %3382 = phi i16 [ %3380, %3377 ], [ %3376, %3375 ]
  %3383 = shl i32 %2590, 16
  %3384 = or i32 %3383, %2591
  %3385 = icmp eq i16 %3382, 0
  br i1 %3385, label %3471, label %3386

3386:                                             ; preds = %3381
  %3387 = zext i16 %3382 to i32
  %3388 = add nsw i32 %3387, -1
  br label %3389

3389:                                             ; preds = %3467, %3386
  %3390 = phi i32 [ %3388, %3386 ], [ %3469, %3467 ]
  %3391 = phi i32 [ 0, %3386 ], [ %3468, %3467 ]
  %3392 = add i32 %3391, %3390
  %3393 = ashr i32 %3392, 1
  %3394 = mul i32 %3393, 6
  %3395 = sext i32 %3394 to i64
  %3396 = getelementptr inbounds i8, ptr %2564, i64 %3395
  %3397 = icmp uge ptr %3396, %2513
  %3398 = icmp ult ptr %3396, %2515
  %3399 = select i1 %3397, i1 %3398, i1 false
  br i1 %3399, label %3400, label %3404

3400:                                             ; preds = %3389
  %3401 = load i8, ptr %3396, align 1, !tbaa !11
  %3402 = zext i8 %3401 to i32
  %3403 = shl nuw i32 %3402, 24
  br label %3404

3404:                                             ; preds = %3400, %3389
  %3405 = phi i32 [ %3403, %3400 ], [ 0, %3389 ]
  %3406 = getelementptr inbounds nuw i8, ptr %3396, i64 1
  %3407 = icmp uge ptr %3406, %2513
  %3408 = icmp ult ptr %3406, %2515
  %3409 = select i1 %3407, i1 %3408, i1 false
  br i1 %3409, label %3410, label %3415

3410:                                             ; preds = %3404
  %3411 = load i8, ptr %3406, align 1, !tbaa !11
  %3412 = zext i8 %3411 to i32
  %3413 = shl nuw nsw i32 %3412, 16
  %3414 = or disjoint i32 %3413, %3405
  br label %3415

3415:                                             ; preds = %3410, %3404
  %3416 = phi i32 [ %3414, %3410 ], [ %3405, %3404 ]
  %3417 = getelementptr inbounds nuw i8, ptr %3396, i64 2
  %3418 = icmp uge ptr %3417, %2513
  %3419 = icmp ult ptr %3417, %2515
  %3420 = select i1 %3418, i1 %3419, i1 false
  br i1 %3420, label %3421, label %3426

3421:                                             ; preds = %3415
  %3422 = load i8, ptr %3417, align 1, !tbaa !11
  %3423 = zext i8 %3422 to i32
  %3424 = shl nuw nsw i32 %3423, 8
  %3425 = add nuw nsw i32 %3424, %3416
  br label %3426

3426:                                             ; preds = %3421, %3415
  %3427 = phi i32 [ %3425, %3421 ], [ %3416, %3415 ]
  %3428 = getelementptr inbounds nuw i8, ptr %3396, i64 3
  %3429 = icmp uge ptr %3428, %2513
  %3430 = icmp ult ptr %3428, %2515
  %3431 = select i1 %3429, i1 %3430, i1 false
  br i1 %3431, label %3432, label %3436

3432:                                             ; preds = %3426
  %3433 = load i8, ptr %3428, align 1, !tbaa !11
  %3434 = zext i8 %3433 to i32
  %3435 = or disjoint i32 %3427, %3434
  br label %3436

3436:                                             ; preds = %3432, %3426
  %3437 = phi i32 [ %3435, %3432 ], [ %3427, %3426 ]
  %3438 = icmp ult i32 %3384, %3437
  br i1 %3438, label %3439, label %3441

3439:                                             ; preds = %3436
  %3440 = add nsw i32 %3393, -1
  br label %3467

3441:                                             ; preds = %3436
  %3442 = icmp ugt i32 %3384, %3437
  br i1 %3442, label %3443, label %3445

3443:                                             ; preds = %3441
  %3444 = add nsw i32 %3393, 1
  br label %3467

3445:                                             ; preds = %3441
  %3446 = getelementptr inbounds i8, ptr %2565, i64 %3395
  %3447 = icmp uge ptr %3446, %2513
  %3448 = icmp ult ptr %3446, %2515
  %3449 = select i1 %3447, i1 %3448, i1 false
  br i1 %3449, label %3450, label %3454

3450:                                             ; preds = %3445
  %3451 = load i8, ptr %3446, align 1, !tbaa !11
  %3452 = zext i8 %3451 to i16
  %3453 = shl nuw i16 %3452, 8
  br label %3454

3454:                                             ; preds = %3450, %3445
  %3455 = phi i16 [ %3453, %3450 ], [ 0, %3445 ]
  %3456 = getelementptr inbounds nuw i8, ptr %3446, i64 1
  %3457 = icmp uge ptr %3456, %2513
  %3458 = icmp ult ptr %3456, %2515
  %3459 = select i1 %3457, i1 %3458, i1 false
  br i1 %3459, label %3460, label %3464

3460:                                             ; preds = %3454
  %3461 = load i8, ptr %3456, align 1, !tbaa !11
  %3462 = zext i8 %3461 to i16
  %3463 = or disjoint i16 %3455, %3462
  br label %3464

3464:                                             ; preds = %3460, %3454
  %3465 = phi i16 [ %3463, %3460 ], [ %3455, %3454 ]
  %3466 = sext i16 %3465 to i32
  br label %3471

3467:                                             ; preds = %3443, %3439
  %3468 = phi i32 [ %3391, %3439 ], [ %3444, %3443 ]
  %3469 = phi i32 [ %3440, %3439 ], [ %3390, %3443 ]
  %3470 = icmp sgt i32 %3468, %3469
  br i1 %3470, label %3471, label %3389, !llvm.loop !96

3471:                                             ; preds = %3340, %3467, %2989, %3030, %3097, %2586, %2597, %2599, %2615, %2650, %3161, %3208, %3297, %3305, %3334, %3343, %3355, %3363, %3365, %3381, %3464
  %3472 = phi i32 [ 0, %2586 ], [ 0, %3343 ], [ 0, %3365 ], [ 0, %3467 ], [ 0, %2599 ], [ 0, %3208 ], [ 0, %2615 ], [ 0, %2650 ], [ 0, %2597 ], [ 0, %3305 ], [ 0, %3297 ], [ %3336, %3334 ], [ %3163, %3161 ], [ 0, %3363 ], [ 0, %2989 ], [ 0, %3381 ], [ 0, %3355 ], [ %3466, %3464 ], [ 0, %3097 ], [ 0, %3030 ], [ 0, %3340 ]
  %3473 = sitofp i32 %3472 to float
  %3474 = fmul float %536, %3473
  %3475 = fpext float %3474 to double
  %3476 = fcmp ogt double %3475, 0x41DFFFFFFFC00000
  br i1 %3476, label %3483, label %3477

3477:                                             ; preds = %3471
  %3478 = fcmp olt float %3474, 0xC1E0000000000000
  br i1 %3478, label %3483, label %3479

3479:                                             ; preds = %3477
  %3480 = fptosi float %3474 to i64
  %3481 = and i64 %3480, 4294967295
  %3482 = icmp eq i64 %3481, 0
  br i1 %3482, label %3494, label %3483

3483:                                             ; preds = %3477, %3471, %3479
  %3484 = phi i64 [ %3480, %3479 ], [ -2147483648, %3477 ], [ 2147483647, %3471 ]
  %3485 = sext i32 %2588 to i64
  %3486 = shl nsw i64 %3485, 2
  %3487 = getelementptr i8, ptr %4, i64 %3486
  %3488 = getelementptr i8, ptr %3487, i64 2692
  store i8 %2571, ptr %3488, align 1, !tbaa !11
  %3489 = trunc nuw i32 %2587 to i8
  %3490 = getelementptr i8, ptr %3487, i64 2693
  store i8 %3489, ptr %3490, align 1, !tbaa !11
  %3491 = getelementptr i8, ptr %3487, i64 2694
  %3492 = trunc i64 %3484 to i16
  store i16 %3492, ptr %3491, align 1
  %3493 = add nsw i32 %2588, 1
  br label %3494

3494:                                             ; preds = %3479, %3483
  %3495 = phi i32 [ %3493, %3483 ], [ %2588, %3479 ]
  %3496 = add nuw nsw i32 %2587, 1
  %3497 = icmp samesign ult i32 %2587, 126
  %3498 = icmp slt i32 %3495, 1024
  %3499 = select i1 %3497, i1 %3498, i1 false
  br i1 %3499, label %2586, label %2582, !llvm.loop !97

3500:                                             ; preds = %587, %2572, %2505, %479
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #17
  br label %3501

3501:                                             ; preds = %6, %3500, %29, %35
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define internal fastcc i32 @iceil(double noundef %0) unnamed_addr #2 {
  %2 = fcmp uno double %0, 0.000000e+00
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = fcmp ogt double %0, 0x41DFFFFFFFC00000
  br i1 %4, label %10, label %5

5:                                                ; preds = %3
  %6 = fcmp olt double %0, 0xC1E0000000000000
  br i1 %6, label %10, label %7

7:                                                ; preds = %5
  %8 = fptosi double %0 to i64
  %9 = sitofp i64 %8 to double
  br label %10

10:                                               ; preds = %1, %3, %5, %7
  %11 = phi double [ %9, %7 ], [ 0.000000e+00, %1 ], [ 0x41DFFFFFFFC00000, %3 ], [ 0xC1E0000000000000, %5 ]
  %12 = fcmp ogt double %0, %11
  %13 = fadd double %11, 1.000000e+00
  %14 = select i1 %12, double %13, double %11
  %15 = fcmp ogt double %14, 0x41DFFFFFFFC00000
  br i1 %15, label %21, label %16

16:                                               ; preds = %10
  %17 = fcmp olt double %14, 0xC1E0000000000000
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem0: none, target_mem1: none)
define internal fastcc i32 @ttULONG(ptr noundef readonly captures(address) %0) unnamed_addr #3 {
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
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load i8, ptr %24, align 1, !tbaa !11
  %30 = zext i8 %29 to i32
  %31 = shl nuw nsw i32 %30, 8
  br label %32

32:                                               ; preds = %22, %28
  %33 = phi i32 [ %31, %28 ], [ 0, %22 ]
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %35 = icmp uge ptr %34, %2
  %36 = icmp ult ptr %34, %4
  %37 = select i1 %35, i1 %36, i1 false
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i8, ptr %34, align 1, !tbaa !11
  %40 = zext i8 %39 to i32
  br label %41

41:                                               ; preds = %32, %38
  %42 = phi i32 [ %40, %38 ], [ 0, %32 ]
  %43 = or disjoint i32 %23, %33
  %44 = or disjoint i32 %43, %42
  ret i32 %44
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem0: none, target_mem1: none)
define internal fastcc i32 @ttLONG(ptr noundef readonly captures(address) %0) unnamed_addr #3 {
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
  %32 = or disjoint i32 %31, %23
  br label %33

33:                                               ; preds = %28, %22
  %34 = phi i32 [ %32, %28 ], [ %23, %22 ]
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %36 = icmp uge ptr %35, %2
  %37 = icmp ult ptr %35, %4
  %38 = select i1 %36, i1 %37, i1 false
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i8, ptr %35, align 1, !tbaa !11
  %41 = zext i8 %40 to i32
  br label %42

42:                                               ; preds = %33, %39
  %43 = phi i32 [ %41, %39 ], [ 0, %33 ]
  %44 = or disjoint i32 %34, %43
  ret i32 %44
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem0: none, target_mem1: none)
define internal fastcc i32 @stbtt__find_table(ptr noundef readonly captures(address) %0, i32 noundef range(i32 0, -2147483648) %1, ptr noundef readonly captures(none) %2) unnamed_addr #5 {
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
  br i1 %28, label %113, label %29

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

39:                                               ; preds = %29, %110
  %40 = phi i64 [ 0, %29 ], [ %111, %110 ]
  %41 = shl i64 %40, 4
  %42 = getelementptr i8, ptr %38, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !11
  %44 = zext i8 %43 to i32
  %45 = icmp eq i32 %44, %32
  br i1 %45, label %46, label %110

46:                                               ; preds = %39
  %47 = getelementptr inbounds nuw i8, ptr %42, i64 1
  %48 = load i8, ptr %47, align 1, !tbaa !11
  %49 = zext i8 %48 to i32
  %50 = load i8, ptr %33, align 1, !tbaa !11
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %53, label %110

53:                                               ; preds = %46
  %54 = getelementptr inbounds nuw i8, ptr %42, i64 2
  %55 = load i8, ptr %54, align 1, !tbaa !11
  %56 = zext i8 %55 to i32
  %57 = load i8, ptr %34, align 1, !tbaa !11
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %60, label %110

60:                                               ; preds = %53
  %61 = getelementptr inbounds nuw i8, ptr %42, i64 3
  %62 = load i8, ptr %61, align 1, !tbaa !11
  %63 = zext i8 %62 to i32
  %64 = load i8, ptr %35, align 1, !tbaa !11
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %63, %65
  br i1 %66, label %67, label %110

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
  %97 = or disjoint i32 %96, %88
  br label %98

98:                                               ; preds = %93, %87
  %99 = phi i32 [ %97, %93 ], [ %88, %87 ]
  %100 = getelementptr inbounds nuw i8, ptr %42, i64 11
  %101 = icmp uge ptr %100, %7
  %102 = icmp ult ptr %100, %9
  %103 = select i1 %101, i1 %102, i1 false
  br i1 %103, label %104, label %107

104:                                              ; preds = %98
  %105 = load i8, ptr %100, align 1, !tbaa !11
  %106 = zext i8 %105 to i32
  br label %107

107:                                              ; preds = %104, %98
  %108 = phi i32 [ %106, %104 ], [ 0, %98 ]
  %109 = or disjoint i32 %99, %108
  br label %113

110:                                              ; preds = %60, %53, %46, %39
  %111 = add nuw nsw i64 %40, 1
  %112 = icmp eq i64 %111, %37
  br i1 %112, label %113, label %39, !llvm.loop !98

113:                                              ; preds = %110, %26, %107
  %114 = phi i32 [ %109, %107 ], [ 0, %26 ], [ 0, %110 ]
  ret i32 %114
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem0: none, target_mem1: none)
define internal fastcc { ptr, i64 } @stbtt__cff_get_index(ptr noundef nonnull captures(none) %0) unnamed_addr #6 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %3 = load i32, ptr %2, align 8, !tbaa !24
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %5 = load i32, ptr %4, align 4, !tbaa !25
  %6 = load ptr, ptr @stbtt__lo, align 8
  %7 = load ptr, ptr @stbtt__hi, align 8
  %8 = icmp slt i32 %3, %5
  br i1 %8, label %9, label %21

9:                                                ; preds = %1
  %10 = load ptr, ptr %0, align 8, !tbaa !26
  %11 = add nsw i32 %3, 1
  store i32 %11, ptr %2, align 8, !tbaa !24
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
  %26 = load ptr, ptr %0, align 8, !tbaa !26
  %27 = add nsw i32 %22, 1
  store i32 %27, ptr %2, align 8, !tbaa !24
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
  %44 = load ptr, ptr %0, align 8, !tbaa !26
  %45 = add nsw i32 %38, 1
  store i32 %45, ptr %2, align 8, !tbaa !24
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
  %70 = load ptr, ptr %0, align 8, !tbaa !26
  %71 = add nsw i32 %64, 1
  store i32 %71, ptr %2, align 8, !tbaa !24
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
  br i1 %85, label %86, label %63, !llvm.loop !99

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
  store i32 %94, ptr %2, align 8, !tbaa !24
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
  %106 = load ptr, ptr %0, align 8, !tbaa !26
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

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem0: none, target_mem1: none)
define internal fastcc { ptr, i64 } @stbtt__cff_index_get(ptr %0, i64 %1, i32 noundef %2) unnamed_addr #5 {
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
  br i1 %101, label %102, label %61, !llvm.loop !99

102:                                              ; preds = %96
  %103 = icmp eq i32 %57, 0
  br i1 %103, label %122, label %104

104:                                              ; preds = %102, %50
  %105 = phi i32 [ %55, %50 ], [ %97, %102 ]
  %106 = phi i32 [ %55, %50 ], [ %98, %102 ]
  %107 = phi i32 [ 0, %50 ], [ %99, %102 ]
  %108 = icmp ne i32 %57, 0
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
  br i1 %166, label %167, label %129, !llvm.loop !99

167:                                              ; preds = %162
  %168 = icmp eq i32 %125, 0
  br i1 %168, label %185, label %169

169:                                              ; preds = %167, %122
  %170 = phi i32 [ %123, %122 ], [ %163, %167 ]
  %171 = phi i32 [ 0, %122 ], [ %164, %167 ]
  %172 = icmp ne i32 %125, 0
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

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem0: none, target_mem1: none)
define internal fastcc void @stbtt__dict_get_ints(ptr noundef nonnull captures(none) initializes((8, 12)) %0, i32 noundef range(i32 17, 294) %1, i32 noundef range(i32 1, 3) %2, ptr noundef nonnull writeonly captures(none) %3) unnamed_addr #6 {
  %5 = alloca %struct.stbtt__buf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %7 = load i32, ptr %6, align 4, !tbaa !25
  %8 = tail call i32 @llvm.smin.i32(i32 %7, i32 0)
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %8, ptr %9, align 8, !tbaa !24
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
  %22 = load ptr, ptr %0, align 8, !tbaa !26
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
  store i32 %36, ptr %9, align 8, !tbaa !24
  %37 = tail call i32 @llvm.smax.i32(i32 %36, i32 %20)
  %38 = sext i32 %37 to i64
  %39 = icmp slt i32 %36, %20
  br i1 %39, label %40, label %67

40:                                               ; preds = %33
  %41 = sext i32 %36 to i64
  br label %44

42:                                               ; preds = %55
  %43 = icmp eq i64 %46, %38
  br i1 %43, label %67, label %44, !llvm.loop !100

44:                                               ; preds = %40, %42
  %45 = phi i64 [ %46, %42 ], [ %41, %40 ]
  %46 = add nsw i64 %45, 1
  %47 = trunc nsw i64 %46 to i32
  store i32 %47, ptr %9, align 8, !tbaa !24
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
  br i1 %61, label %66, label %42, !llvm.loop !100

62:                                               ; preds = %31
  %63 = tail call fastcc i32 @stbtt__cff_int(ptr noundef nonnull %0) #18
  %64 = load i32, ptr %9, align 8, !tbaa !24
  %65 = load i32, ptr %6, align 4, !tbaa !25
  br label %67

66:                                               ; preds = %55
  br label %67, !llvm.loop !100

67:                                               ; preds = %42, %33, %66, %62
  %68 = phi i32 [ %65, %62 ], [ %19, %33 ], [ %19, %66 ], [ %19, %42 ]
  %69 = phi i32 [ %65, %62 ], [ %20, %33 ], [ %20, %66 ], [ %20, %42 ]
  %70 = phi i32 [ %64, %62 ], [ %36, %33 ], [ %47, %66 ], [ %47, %42 ]
  %71 = icmp slt i32 %70, %69
  br i1 %71, label %18, label %105, !llvm.loop !101

72:                                               ; preds = %18
  %73 = add nsw i32 %21, 1
  store i32 %73, ptr %9, align 8, !tbaa !24
  br label %105

74:                                               ; preds = %28
  %75 = add nsw i32 %21, 1
  store i32 %75, ptr %9, align 8, !tbaa !24
  %76 = load i8, ptr %24, align 1, !tbaa !11
  %77 = zext i8 %76 to i32
  %78 = icmp eq i8 %76, 12
  br i1 %78, label %79, label %92

79:                                               ; preds = %74
  %80 = icmp slt i32 %75, %20
  br i1 %80, label %81, label %92

81:                                               ; preds = %79
  %82 = add nsw i32 %21, 2
  store i32 %82, ptr %9, align 8, !tbaa !24
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
  %121 = call fastcc i32 @stbtt__cff_int(ptr noundef %5) #18
  %122 = getelementptr inbounds nuw i32, ptr %3, i64 %120
  store i32 %121, ptr %122, align 4, !tbaa !4
  %123 = add nuw nsw i64 %120, 1
  %124 = icmp samesign ult i64 %123, %118
  %125 = load i32, ptr %114, align 8
  %126 = load i32, ptr %115, align 4
  %127 = icmp slt i32 %125, %126
  %128 = select i1 %124, i1 %127, i1 false
  br i1 %128, label %119, label %129, !llvm.loop !102

129:                                              ; preds = %105, %119, %4, %100, %96, %109
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem0: none, target_mem1: none)
define internal fastcc { ptr, i64 } @stbtt__get_subrs(ptr %0, i64 %1, ptr %2, i64 %3) unnamed_addr #5 {
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
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  store i32 0, ptr %7, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  store i64 0, ptr %8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  call fastcc void @stbtt__dict_get_ints(ptr noundef %6, i32 noundef 18, i32 noundef 2, ptr noundef %8) #18
  %12 = getelementptr inbounds nuw i8, ptr %8, i64 4
  %13 = load i32, ptr %12, align 4, !tbaa !4
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
  call fastcc void @stbtt__dict_get_ints(ptr noundef %9, i32 noundef 19, i32 noundef 1, ptr noundef %7) #18
  %37 = load i32, ptr %7, align 4, !tbaa !4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %33
  %40 = add i32 %37, %13
  %41 = icmp slt i32 %40, 0
  %42 = tail call i32 @llvm.smin.i32(i32 %40, i32 %19)
  %43 = select i1 %41, i32 %19, i32 %42
  store i32 %43, ptr %10, align 8, !tbaa !24
  %44 = call fastcc { ptr, i64 } @stbtt__cff_get_index(ptr noundef %5) #18
  br label %45

45:                                               ; preds = %33, %4, %39
  %46 = phi { ptr, i64 } [ %44, %39 ], [ zeroinitializer, %4 ], [ zeroinitializer, %33 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  ret { ptr, i64 } %46
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem0: none, target_mem1: none)
define internal fastcc i32 @stbtt__cff_int(ptr noundef nonnull captures(none) %0) unnamed_addr #7 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %3 = load i32, ptr %2, align 8, !tbaa !24
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %5 = load i32, ptr %4, align 4, !tbaa !25
  %6 = icmp slt i32 %3, %5
  br i1 %6, label %7, label %151

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8, !tbaa !26
  %9 = add nsw i32 %3, 1
  store i32 %9, ptr %2, align 8, !tbaa !24
  %10 = sext i32 %3 to i64
  %11 = getelementptr inbounds i8, ptr %8, i64 %10
  %12 = load ptr, ptr @stbtt__lo, align 8, !tbaa !8
  %13 = icmp uge ptr %11, %12
  %14 = load ptr, ptr @stbtt__hi, align 8
  %15 = icmp ult ptr %11, %14
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %151

17:                                               ; preds = %7
  %18 = load i8, ptr %11, align 1, !tbaa !11
  %19 = zext i8 %18 to i32
  %20 = add i8 %18, -32
  %21 = icmp ult i8 %20, -41
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = add nsw i32 %19, -139
  br label %151

24:                                               ; preds = %17
  %25 = icmp slt i8 %18, -5
  br i1 %25, label %26, label %43

26:                                               ; preds = %24
  %27 = shl nuw nsw i32 %19, 8
  %28 = icmp slt i32 %9, %5
  br i1 %28, label %29, label %39

29:                                               ; preds = %26
  %30 = add nsw i32 %3, 2
  store i32 %30, ptr %2, align 8, !tbaa !24
  %31 = sext i32 %9 to i64
  %32 = getelementptr inbounds i8, ptr %8, i64 %31
  %33 = icmp uge ptr %32, %12
  %34 = icmp ult ptr %32, %14
  %35 = select i1 %33, i1 %34, i1 false
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i8, ptr %32, align 1, !tbaa !11
  %38 = zext i8 %37 to i32
  br label %39

39:                                               ; preds = %26, %29, %36
  %40 = phi i32 [ 0, %26 ], [ %38, %36 ], [ 0, %29 ]
  %41 = add nsw i32 %27, -63124
  %42 = add nuw nsw i32 %41, %40
  br label %151

43:                                               ; preds = %24
  %44 = icmp slt i8 %18, -1
  br i1 %44, label %45, label %62

45:                                               ; preds = %43
  %46 = icmp slt i32 %9, %5
  br i1 %46, label %47, label %57

47:                                               ; preds = %45
  %48 = add nsw i32 %3, 2
  store i32 %48, ptr %2, align 8, !tbaa !24
  %49 = sext i32 %9 to i64
  %50 = getelementptr inbounds i8, ptr %8, i64 %49
  %51 = icmp uge ptr %50, %12
  %52 = icmp ult ptr %50, %14
  %53 = select i1 %51, i1 %52, i1 false
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load i8, ptr %50, align 1, !tbaa !11
  %56 = zext i8 %55 to i32
  br label %57

57:                                               ; preds = %45, %47, %54
  %58 = phi i32 [ 0, %45 ], [ %56, %54 ], [ 0, %47 ]
  %59 = shl nuw nsw i32 %19, 8
  %60 = or disjoint i32 %59, %58
  %61 = sub nsw i32 64148, %60
  br label %151

62:                                               ; preds = %43
  switch i8 %18, label %151 [
    i8 28, label %63
    i8 29, label %91
  ]

63:                                               ; preds = %62
  %64 = icmp slt i32 %9, %5
  br i1 %64, label %65, label %76

65:                                               ; preds = %63
  %66 = add nsw i32 %3, 2
  store i32 %66, ptr %2, align 8, !tbaa !24
  %67 = sext i32 %9 to i64
  %68 = getelementptr inbounds i8, ptr %8, i64 %67
  %69 = icmp uge ptr %68, %12
  %70 = icmp ult ptr %68, %14
  %71 = select i1 %69, i1 %70, i1 false
  br i1 %71, label %72, label %76

72:                                               ; preds = %65
  %73 = load i8, ptr %68, align 1, !tbaa !11
  %74 = zext i8 %73 to i32
  %75 = shl nuw nsw i32 %74, 8
  br label %76

76:                                               ; preds = %72, %65, %63
  %77 = phi i32 [ %9, %63 ], [ %66, %72 ], [ %66, %65 ]
  %78 = phi i32 [ 0, %63 ], [ %75, %72 ], [ 0, %65 ]
  %79 = icmp slt i32 %77, %5
  br i1 %79, label %80, label %151

80:                                               ; preds = %76
  %81 = add nsw i32 %77, 1
  store i32 %81, ptr %2, align 8, !tbaa !24
  %82 = sext i32 %77 to i64
  %83 = getelementptr inbounds i8, ptr %8, i64 %82
  %84 = icmp uge ptr %83, %12
  %85 = icmp ult ptr %83, %14
  %86 = select i1 %84, i1 %85, i1 false
  br i1 %86, label %87, label %151

87:                                               ; preds = %80
  %88 = load i8, ptr %83, align 1, !tbaa !11
  %89 = zext i8 %88 to i32
  %90 = or disjoint i32 %78, %89
  br label %151

91:                                               ; preds = %62
  %92 = icmp slt i32 %9, %5
  br i1 %92, label %93, label %104

93:                                               ; preds = %91
  %94 = add nsw i32 %3, 2
  store i32 %94, ptr %2, align 8, !tbaa !24
  %95 = sext i32 %9 to i64
  %96 = getelementptr inbounds i8, ptr %8, i64 %95
  %97 = icmp uge ptr %96, %12
  %98 = icmp ult ptr %96, %14
  %99 = select i1 %97, i1 %98, i1 false
  br i1 %99, label %100, label %104

100:                                              ; preds = %93
  %101 = load i8, ptr %96, align 1, !tbaa !11
  %102 = zext i8 %101 to i32
  %103 = shl nuw nsw i32 %102, 8
  br label %104

104:                                              ; preds = %100, %93, %91
  %105 = phi i32 [ %9, %91 ], [ %94, %100 ], [ %94, %93 ]
  %106 = phi i32 [ 0, %91 ], [ %103, %100 ], [ 0, %93 ]
  %107 = icmp slt i32 %105, %5
  br i1 %107, label %108, label %119

108:                                              ; preds = %104
  %109 = add nsw i32 %105, 1
  store i32 %109, ptr %2, align 8, !tbaa !24
  %110 = sext i32 %105 to i64
  %111 = getelementptr inbounds i8, ptr %8, i64 %110
  %112 = icmp uge ptr %111, %12
  %113 = icmp ult ptr %111, %14
  %114 = select i1 %112, i1 %113, i1 false
  br i1 %114, label %115, label %119

115:                                              ; preds = %108
  %116 = load i8, ptr %111, align 1, !tbaa !11
  %117 = zext i8 %116 to i32
  %118 = or disjoint i32 %106, %117
  br label %119

119:                                              ; preds = %115, %108, %104
  %120 = phi i32 [ %105, %104 ], [ %109, %115 ], [ %109, %108 ]
  %121 = phi i32 [ %106, %104 ], [ %118, %115 ], [ %106, %108 ]
  %122 = shl nuw nsw i32 %121, 8
  %123 = icmp slt i32 %120, %5
  br i1 %123, label %124, label %135

124:                                              ; preds = %119
  %125 = add nsw i32 %120, 1
  store i32 %125, ptr %2, align 8, !tbaa !24
  %126 = sext i32 %120 to i64
  %127 = getelementptr inbounds i8, ptr %8, i64 %126
  %128 = icmp uge ptr %127, %12
  %129 = icmp ult ptr %127, %14
  %130 = select i1 %128, i1 %129, i1 false
  br i1 %130, label %131, label %135

131:                                              ; preds = %124
  %132 = load i8, ptr %127, align 1, !tbaa !11
  %133 = zext i8 %132 to i32
  %134 = or disjoint i32 %122, %133
  br label %135

135:                                              ; preds = %131, %124, %119
  %136 = phi i32 [ %120, %119 ], [ %125, %131 ], [ %125, %124 ]
  %137 = phi i32 [ %122, %119 ], [ %134, %131 ], [ %122, %124 ]
  %138 = shl nuw i32 %137, 8
  %139 = icmp slt i32 %136, %5
  br i1 %139, label %140, label %151

140:                                              ; preds = %135
  %141 = add nsw i32 %136, 1
  store i32 %141, ptr %2, align 8, !tbaa !24
  %142 = sext i32 %136 to i64
  %143 = getelementptr inbounds i8, ptr %8, i64 %142
  %144 = icmp uge ptr %143, %12
  %145 = icmp ult ptr %143, %14
  %146 = select i1 %144, i1 %145, i1 false
  br i1 %146, label %147, label %151

147:                                              ; preds = %140
  %148 = load i8, ptr %143, align 1, !tbaa !11
  %149 = zext i8 %148 to i32
  %150 = or disjoint i32 %138, %149
  br label %151

151:                                              ; preds = %135, %140, %147, %76, %80, %87, %1, %7, %62, %57, %39, %22
  %152 = phi i32 [ %23, %22 ], [ %42, %39 ], [ %61, %57 ], [ %78, %80 ], [ 0, %1 ], [ 0, %62 ], [ 0, %7 ], [ %78, %76 ], [ %90, %87 ], [ %138, %135 ], [ %150, %147 ], [ %138, %140 ]
  ret i32 %152
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem0: none, target_mem1: none)
define internal fastcc i32 @stbtt_FindGlyphIndex(ptr noundef nonnull readonly captures(none) %0, i32 noundef range(i32 -2147483648, 127) %1) unnamed_addr #5 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8, !tbaa !12
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %6 = load i32, ptr %5, align 8, !tbaa !103
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
  br i1 %286, label %287, label %251, !llvm.loop !104

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
  %462 = or disjoint i32 %461, %453
  br label %463

463:                                              ; preds = %458, %452
  %464 = phi i32 [ %462, %458 ], [ %453, %452 ]
  %465 = getelementptr inbounds nuw i8, ptr %8, i64 15
  %466 = icmp uge ptr %465, %9
  %467 = icmp ult ptr %465, %11
  %468 = select i1 %466, i1 %467, i1 false
  br i1 %468, label %469, label %472

469:                                              ; preds = %463
  %470 = load i8, ptr %465, align 1, !tbaa !11
  %471 = zext i8 %470 to i32
  br label %472

472:                                              ; preds = %463, %469
  %473 = phi i32 [ %471, %469 ], [ 0, %463 ]
  %474 = or disjoint i32 %464, %473
  %475 = icmp sgt i32 %474, 0
  br i1 %475, label %476, label %625

476:                                              ; preds = %472
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
  %515 = or disjoint i32 %514, %506
  br label %516

516:                                              ; preds = %511, %505
  %517 = phi i32 [ %515, %511 ], [ %506, %505 ]
  %518 = getelementptr inbounds nuw i8, ptr %486, i64 3
  %519 = icmp uge ptr %518, %9
  %520 = icmp ult ptr %518, %11
  %521 = select i1 %519, i1 %520, i1 false
  br i1 %521, label %522, label %525

522:                                              ; preds = %516
  %523 = load i8, ptr %518, align 1, !tbaa !11
  %524 = zext i8 %523 to i32
  br label %525

525:                                              ; preds = %516, %522
  %526 = phi i32 [ %524, %522 ], [ 0, %516 ]
  %527 = or disjoint i32 %517, %526
  %528 = getelementptr inbounds nuw i8, ptr %486, i64 4
  %529 = icmp uge ptr %528, %9
  %530 = icmp ult ptr %528, %11
  %531 = select i1 %529, i1 %530, i1 false
  br i1 %531, label %532, label %536

532:                                              ; preds = %525
  %533 = load i8, ptr %528, align 1, !tbaa !11
  %534 = zext i8 %533 to i32
  %535 = shl nuw i32 %534, 24
  br label %536

536:                                              ; preds = %532, %525
  %537 = phi i32 [ %535, %532 ], [ 0, %525 ]
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
  %557 = or disjoint i32 %556, %548
  br label %558

558:                                              ; preds = %553, %547
  %559 = phi i32 [ %557, %553 ], [ %548, %547 ]
  %560 = getelementptr inbounds nuw i8, ptr %486, i64 7
  %561 = icmp uge ptr %560, %9
  %562 = icmp ult ptr %560, %11
  %563 = select i1 %561, i1 %562, i1 false
  br i1 %563, label %564, label %567

564:                                              ; preds = %558
  %565 = load i8, ptr %560, align 1, !tbaa !11
  %566 = zext i8 %565 to i32
  br label %567

567:                                              ; preds = %558, %564
  %568 = phi i32 [ %566, %564 ], [ 0, %558 ]
  %569 = icmp ult i32 %1, %527
  br i1 %569, label %621, label %570

570:                                              ; preds = %567
  %571 = or disjoint i32 %559, %568
  %572 = icmp ugt i32 %1, %571
  br i1 %572, label %573, label %575

573:                                              ; preds = %570
  %574 = add i32 %483, 1
  br label %621

575:                                              ; preds = %570
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
  %605 = or disjoint i32 %604, %596
  br label %606

606:                                              ; preds = %601, %595
  %607 = phi i32 [ %605, %601 ], [ %596, %595 ]
  %608 = getelementptr inbounds nuw i8, ptr %486, i64 11
  %609 = icmp uge ptr %608, %9
  %610 = icmp ult ptr %608, %11
  %611 = select i1 %609, i1 %610, i1 false
  br i1 %611, label %612, label %615

612:                                              ; preds = %606
  %613 = load i8, ptr %608, align 1, !tbaa !11
  %614 = zext i8 %613 to i32
  br label %615

615:                                              ; preds = %612, %606
  %616 = phi i32 [ %614, %612 ], [ 0, %606 ]
  %617 = or disjoint i32 %607, %616
  %618 = sub i32 %1, %527
  %619 = select i1 %429, i32 %618, i32 0
  %620 = add i32 %617, %619
  br label %625

621:                                              ; preds = %573, %567
  %622 = phi i32 [ %480, %567 ], [ %574, %573 ]
  %623 = phi i32 [ %483, %567 ], [ %479, %573 ]
  %624 = icmp slt i32 %622, %623
  br i1 %624, label %478, label %625, !llvm.loop !105

625:                                              ; preds = %621, %472, %61, %54, %615, %428, %28, %134, %107, %104, %49, %425
  %626 = phi i32 [ 0, %54 ], [ 0, %49 ], [ 0, %104 ], [ %427, %425 ], [ 0, %28 ], [ 0, %428 ], [ %136, %134 ], [ 0, %107 ], [ %620, %615 ], [ %63, %61 ], [ 0, %472 ], [ 0, %621 ]
  ret i32 %626
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem0: none, target_mem1: none)
define internal fastcc void @stbtt_GetGlyphBitmapBoxSubpixel(ptr noundef nonnull readonly captures(none) %0, i32 noundef %1, float noundef %2, float noundef %3, ptr noundef nonnull writeonly captures(none) initializes((0, 4)) %4, ptr noundef nonnull writeonly captures(none) initializes((0, 4)) %5, ptr noundef writeonly captures(address_is_null) %6, ptr noundef writeonly captures(address_is_null) %7) unnamed_addr #9 {
  %9 = alloca %struct.stbtt__csctx, align 8
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %11 = load i32, ptr %10, align 4, !tbaa !106
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %28, label %13

13:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %9, i8 0, i64 56, i1 false)
  store i32 1, ptr %9, align 8
  %14 = call fastcc i32 @stbtt__run_charstring(ptr noundef nonnull readonly %0, i32 noundef %1, ptr noundef %9) #18
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
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %127

28:                                               ; preds = %8
  %29 = tail call fastcc i32 @stbtt__GetGlyfOffset(ptr noundef nonnull readonly %0, i32 noundef %1) #18
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
  store i32 0, ptr %4, align 4, !tbaa !4
  store i32 0, ptr %5, align 4, !tbaa !4
  %123 = icmp eq ptr %6, null
  br i1 %123, label %125, label %124

124:                                              ; preds = %122
  store i32 0, ptr %6, align 4, !tbaa !4
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
  %137 = fcmp ogt double %134, 0x41DFFFFFFFC00000
  br i1 %137, label %143, label %138

138:                                              ; preds = %136
  %139 = fcmp olt float %133, 0xC1E0000000000000
  br i1 %139, label %143, label %140

140:                                              ; preds = %138
  %141 = fptosi float %133 to i64
  %142 = sitofp i64 %141 to double
  br label %143

143:                                              ; preds = %140, %138, %136, %127
  %144 = phi double [ %142, %140 ], [ 0.000000e+00, %127 ], [ 0x41DFFFFFFFC00000, %136 ], [ 0xC1E0000000000000, %138 ]
  %145 = fcmp ogt double %144, %134
  %146 = fadd double %144, -1.000000e+00
  %147 = select i1 %145, double %146, double %144
  %148 = fcmp ogt double %147, 0x41DFFFFFFFC00000
  br i1 %148, label %154, label %149

149:                                              ; preds = %143
  %150 = fcmp olt double %147, 0xC1E0000000000000
  br i1 %150, label %154, label %151

151:                                              ; preds = %149
  %152 = fptosi double %147 to i64
  %153 = trunc i64 %152 to i32
  br label %154

154:                                              ; preds = %143, %149, %151
  %155 = phi i32 [ %153, %151 ], [ -2147483648, %149 ], [ 2147483647, %143 ]
  store i32 %155, ptr %4, align 4, !tbaa !4
  %156 = sub i32 0, %131
  %157 = sitofp i32 %156 to float
  %158 = call float @llvm.fmuladd.f32(float %157, float %3, float 0.000000e+00)
  %159 = fpext float %158 to double
  %160 = fcmp uno float %158, 0.000000e+00
  br i1 %160, label %168, label %161

161:                                              ; preds = %154
  %162 = fcmp ogt double %159, 0x41DFFFFFFFC00000
  br i1 %162, label %168, label %163

163:                                              ; preds = %161
  %164 = fcmp olt float %158, 0xC1E0000000000000
  br i1 %164, label %168, label %165

165:                                              ; preds = %163
  %166 = fptosi float %158 to i64
  %167 = sitofp i64 %166 to double
  br label %168

168:                                              ; preds = %165, %163, %161, %154
  %169 = phi double [ %167, %165 ], [ 0.000000e+00, %154 ], [ 0x41DFFFFFFFC00000, %161 ], [ 0xC1E0000000000000, %163 ]
  %170 = fcmp ogt double %169, %159
  %171 = fadd double %169, -1.000000e+00
  %172 = select i1 %170, double %171, double %169
  %173 = fcmp ogt double %172, 0x41DFFFFFFFC00000
  br i1 %173, label %179, label %174

174:                                              ; preds = %168
  %175 = fcmp olt double %172, 0xC1E0000000000000
  br i1 %175, label %179, label %176

176:                                              ; preds = %174
  %177 = fptosi double %172 to i64
  %178 = trunc i64 %177 to i32
  br label %179

179:                                              ; preds = %168, %174, %176
  %180 = phi i32 [ %178, %176 ], [ -2147483648, %174 ], [ 2147483647, %168 ]
  store i32 %180, ptr %5, align 4, !tbaa !4
  %181 = icmp eq ptr %6, null
  br i1 %181, label %207, label %182

182:                                              ; preds = %179
  %183 = sitofp i32 %130 to float
  %184 = call float @llvm.fmuladd.f32(float %183, float %2, float 0.000000e+00)
  %185 = fpext float %184 to double
  %186 = fcmp uno float %184, 0.000000e+00
  br i1 %186, label %194, label %187

187:                                              ; preds = %182
  %188 = fcmp ogt double %185, 0x41DFFFFFFFC00000
  br i1 %188, label %194, label %189

189:                                              ; preds = %187
  %190 = fcmp olt float %184, 0xC1E0000000000000
  br i1 %190, label %194, label %191

191:                                              ; preds = %189
  %192 = fptosi float %184 to i64
  %193 = sitofp i64 %192 to double
  br label %194

194:                                              ; preds = %191, %189, %187, %182
  %195 = phi double [ %193, %191 ], [ 0.000000e+00, %182 ], [ 0x41DFFFFFFFC00000, %187 ], [ 0xC1E0000000000000, %189 ]
  %196 = fcmp olt double %195, %185
  %197 = fadd double %195, 1.000000e+00
  %198 = select i1 %196, double %197, double %195
  %199 = fcmp ogt double %198, 0x41DFFFFFFFC00000
  br i1 %199, label %205, label %200

200:                                              ; preds = %194
  %201 = fcmp olt double %198, 0xC1E0000000000000
  br i1 %201, label %205, label %202

202:                                              ; preds = %200
  %203 = fptosi double %198 to i64
  %204 = trunc i64 %203 to i32
  br label %205

205:                                              ; preds = %194, %200, %202
  %206 = phi i32 [ %204, %202 ], [ -2147483648, %200 ], [ 2147483647, %194 ]
  store i32 %206, ptr %6, align 4, !tbaa !4
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
  %216 = fcmp ogt double %213, 0x41DFFFFFFFC00000
  br i1 %216, label %222, label %217

217:                                              ; preds = %215
  %218 = fcmp olt float %212, 0xC1E0000000000000
  br i1 %218, label %222, label %219

219:                                              ; preds = %217
  %220 = fptosi float %212 to i64
  %221 = sitofp i64 %220 to double
  br label %222

222:                                              ; preds = %219, %217, %215, %209
  %223 = phi double [ %221, %219 ], [ 0.000000e+00, %209 ], [ 0x41DFFFFFFFC00000, %215 ], [ 0xC1E0000000000000, %217 ]
  %224 = fcmp olt double %223, %213
  %225 = fadd double %223, 1.000000e+00
  %226 = select i1 %224, double %225, double %223
  %227 = fcmp ogt double %226, 0x41DFFFFFFFC00000
  br i1 %227, label %233, label %228

228:                                              ; preds = %222
  %229 = fcmp olt double %226, 0xC1E0000000000000
  br i1 %229, label %233, label %230

230:                                              ; preds = %228
  %231 = fptosi double %226 to i64
  %232 = trunc i64 %231 to i32
  br label %233

233:                                              ; preds = %230, %228, %222, %125
  %234 = phi i32 [ 0, %125 ], [ %232, %230 ], [ -2147483648, %228 ], [ 2147483647, %222 ]
  store i32 %234, ptr %7, align 4, !tbaa !4
  br label %235

235:                                              ; preds = %233, %207, %125
  ret void
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem0: none, target_mem1: none)
define internal fastcc i32 @stbtt__GetGlyfOffset(ptr noundef nonnull readonly captures(none) %0, i32 noundef %1) unnamed_addr #3 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %4 = load i32, ptr %3, align 4, !tbaa !27
  %5 = icmp slt i32 %1, %4
  br i1 %5, label %6, label %165

6:                                                ; preds = %2
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 60
  %8 = load i32, ptr %7, align 4, !tbaa !31
  %9 = icmp sgt i32 %8, 1
  br i1 %9, label %165, label %10

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
  br i1 %11, label %22, label %71

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
  %47 = add i32 %46, %13
  %48 = getelementptr inbounds nuw i8, ptr %25, i64 2
  %49 = icmp uge ptr %48, %20
  %50 = icmp ult ptr %48, %21
  %51 = select i1 %49, i1 %50, i1 false
  br i1 %51, label %52, label %56

52:                                               ; preds = %43
  %53 = load i8, ptr %48, align 1, !tbaa !11
  %54 = zext i8 %53 to i16
  %55 = shl nuw i16 %54, 8
  br label %56

56:                                               ; preds = %52, %43
  %57 = phi i16 [ %55, %52 ], [ 0, %43 ]
  %58 = getelementptr inbounds nuw i8, ptr %25, i64 3
  %59 = icmp uge ptr %58, %20
  %60 = icmp ult ptr %58, %21
  %61 = select i1 %59, i1 %60, i1 false
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load i8, ptr %58, align 1, !tbaa !11
  %64 = zext i8 %63 to i16
  %65 = or disjoint i16 %57, %64
  br label %66

66:                                               ; preds = %56, %62
  %67 = phi i16 [ %65, %62 ], [ %57, %56 ]
  %68 = zext i16 %67 to i32
  %69 = shl nuw nsw i32 %68, 1
  %70 = add i32 %69, %13
  br label %160

71:                                               ; preds = %10
  %72 = shl i32 %1, 2
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, ptr %19, i64 %73
  %75 = icmp uge ptr %74, %20
  %76 = icmp ult ptr %74, %21
  %77 = select i1 %75, i1 %76, i1 false
  br i1 %77, label %78, label %82

78:                                               ; preds = %71
  %79 = load i8, ptr %74, align 1, !tbaa !11
  %80 = zext i8 %79 to i32
  %81 = shl nuw i32 %80, 24
  br label %82

82:                                               ; preds = %78, %71
  %83 = phi i32 [ %81, %78 ], [ 0, %71 ]
  %84 = getelementptr inbounds nuw i8, ptr %74, i64 1
  %85 = icmp uge ptr %84, %20
  %86 = icmp ult ptr %84, %21
  %87 = select i1 %85, i1 %86, i1 false
  br i1 %87, label %88, label %93

88:                                               ; preds = %82
  %89 = load i8, ptr %84, align 1, !tbaa !11
  %90 = zext i8 %89 to i32
  %91 = shl nuw nsw i32 %90, 16
  %92 = or disjoint i32 %91, %83
  br label %93

93:                                               ; preds = %88, %82
  %94 = phi i32 [ %92, %88 ], [ %83, %82 ]
  %95 = getelementptr inbounds nuw i8, ptr %74, i64 2
  %96 = icmp uge ptr %95, %20
  %97 = icmp ult ptr %95, %21
  %98 = select i1 %96, i1 %97, i1 false
  br i1 %98, label %99, label %103

99:                                               ; preds = %93
  %100 = load i8, ptr %95, align 1, !tbaa !11
  %101 = zext i8 %100 to i32
  %102 = shl nuw nsw i32 %101, 8
  br label %103

103:                                              ; preds = %99, %93
  %104 = phi i32 [ %102, %99 ], [ 0, %93 ]
  %105 = getelementptr inbounds nuw i8, ptr %74, i64 3
  %106 = icmp uge ptr %105, %20
  %107 = icmp ult ptr %105, %21
  %108 = select i1 %106, i1 %107, i1 false
  br i1 %108, label %109, label %112

109:                                              ; preds = %103
  %110 = load i8, ptr %105, align 1, !tbaa !11
  %111 = zext i8 %110 to i32
  br label %112

112:                                              ; preds = %103, %109
  %113 = phi i32 [ %111, %109 ], [ 0, %103 ]
  %114 = or disjoint i32 %94, %104
  %115 = add i32 %114, %13
  %116 = add i32 %115, %113
  %117 = getelementptr inbounds nuw i8, ptr %74, i64 4
  %118 = icmp uge ptr %117, %20
  %119 = icmp ult ptr %117, %21
  %120 = select i1 %118, i1 %119, i1 false
  br i1 %120, label %121, label %125

121:                                              ; preds = %112
  %122 = load i8, ptr %117, align 1, !tbaa !11
  %123 = zext i8 %122 to i32
  %124 = shl nuw i32 %123, 24
  br label %125

125:                                              ; preds = %121, %112
  %126 = phi i32 [ %124, %121 ], [ 0, %112 ]
  %127 = getelementptr inbounds nuw i8, ptr %74, i64 5
  %128 = icmp uge ptr %127, %20
  %129 = icmp ult ptr %127, %21
  %130 = select i1 %128, i1 %129, i1 false
  br i1 %130, label %131, label %136

131:                                              ; preds = %125
  %132 = load i8, ptr %127, align 1, !tbaa !11
  %133 = zext i8 %132 to i32
  %134 = shl nuw nsw i32 %133, 16
  %135 = or disjoint i32 %134, %126
  br label %136

136:                                              ; preds = %131, %125
  %137 = phi i32 [ %135, %131 ], [ %126, %125 ]
  %138 = getelementptr inbounds nuw i8, ptr %74, i64 6
  %139 = icmp uge ptr %138, %20
  %140 = icmp ult ptr %138, %21
  %141 = select i1 %139, i1 %140, i1 false
  br i1 %141, label %142, label %146

142:                                              ; preds = %136
  %143 = load i8, ptr %138, align 1, !tbaa !11
  %144 = zext i8 %143 to i32
  %145 = shl nuw nsw i32 %144, 8
  br label %146

146:                                              ; preds = %142, %136
  %147 = phi i32 [ %145, %142 ], [ 0, %136 ]
  %148 = getelementptr inbounds nuw i8, ptr %74, i64 7
  %149 = icmp uge ptr %148, %20
  %150 = icmp ult ptr %148, %21
  %151 = select i1 %149, i1 %150, i1 false
  br i1 %151, label %152, label %155

152:                                              ; preds = %146
  %153 = load i8, ptr %148, align 1, !tbaa !11
  %154 = zext i8 %153 to i32
  br label %155

155:                                              ; preds = %146, %152
  %156 = phi i32 [ %154, %152 ], [ 0, %146 ]
  %157 = or disjoint i32 %137, %147
  %158 = add i32 %157, %13
  %159 = add i32 %158, %156
  br label %160

160:                                              ; preds = %155, %66
  %161 = phi i32 [ %47, %66 ], [ %116, %155 ]
  %162 = phi i32 [ %70, %66 ], [ %159, %155 ]
  %163 = icmp eq i32 %161, %162
  %164 = select i1 %163, i32 -1, i32 %161
  br label %165

165:                                              ; preds = %6, %2, %160
  %166 = phi i32 [ %164, %160 ], [ -1, %2 ], [ -1, %6 ]
  ret i32 %166
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem0: none, target_mem1: none)
define internal fastcc range(i32 0, 2) i32 @stbtt__run_charstring(ptr noundef nonnull readonly captures(none) %0, i32 noundef %1, ptr noundef nonnull %2) unnamed_addr #9 {
  %4 = alloca [48 x float], align 16
  %5 = alloca [10 x %struct.stbtt__buf], align 16
  %6 = alloca %struct.stbtt__buf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %8 = load ptr, ptr %7, align 8, !tbaa !8
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %10 = load i64, ptr %9, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %14 = load i64, ptr %13, align 8
  %15 = tail call fastcc { ptr, i64 } @stbtt__cff_index_get(ptr %12, i64 %14, i32 noundef %1) #18
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
  br i1 %23, label %24, label %1051

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

54:                                               ; preds = %24, %1034
  %55 = phi ptr [ %53, %24 ], [ %1035, %1034 ]
  %56 = phi ptr [ %52, %24 ], [ %1036, %1034 ]
  %57 = phi ptr [ %53, %24 ], [ %1037, %1034 ]
  %58 = phi ptr [ %52, %24 ], [ %1038, %1034 ]
  %59 = phi ptr [ %53, %24 ], [ %1039, %1034 ]
  %60 = phi ptr [ %52, %24 ], [ %1040, %1034 ]
  %61 = phi i32 [ %22, %24 ], [ %1049, %1034 ]
  %62 = phi i32 [ %20, %24 ], [ %1048, %1034 ]
  %63 = phi i32 [ 1, %24 ], [ %1041, %1034 ]
  %64 = phi i32 [ 0, %24 ], [ %1042, %1034 ]
  %65 = phi i32 [ 0, %24 ], [ %1043, %1034 ]
  %66 = phi i32 [ 0, %24 ], [ %1047, %1034 ]
  %67 = phi i32 [ 0, %24 ], [ %1044, %1034 ]
  %68 = phi i64 [ %10, %24 ], [ %1045, %1034 ]
  %69 = phi ptr [ %8, %24 ], [ %1046, %1034 ]
  %70 = load ptr, ptr %6, align 8, !tbaa !26
  %71 = add nsw i32 %62, 1
  store i32 %71, ptr %18, align 8, !tbaa !24
  %72 = sext i32 %62 to i64
  %73 = getelementptr inbounds i8, ptr %70, i64 %72
  %74 = icmp uge ptr %73, %60
  %75 = icmp ult ptr %73, %59
  %76 = select i1 %74, i1 %75, i1 false
  br i1 %76, label %77, label %1051

77:                                               ; preds = %54
  %78 = load i8, ptr %73, align 1, !tbaa !11
  switch i8 %78, label %944 [
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
  store i32 %91, ptr %18, align 8, !tbaa !24
  br label %1034

92:                                               ; preds = %77, %77, %77, %77
  %93 = sdiv i32 %66, 2
  %94 = add i32 %64, %93
  br label %1034

95:                                               ; preds = %77
  %96 = icmp slt i32 %66, 2
  br i1 %96, label %1051, label %97

97:                                               ; preds = %95
  %98 = zext nneg i32 %66 to i64
  %99 = getelementptr float, ptr %4, i64 %98
  %100 = getelementptr i8, ptr %99, i64 -8
  %101 = load float, ptr %100, align 4, !tbaa !43
  %102 = getelementptr i8, ptr %99, i64 -4
  %103 = load float, ptr %102, align 4, !tbaa !43
  tail call fastcc void @stbtt__csctx_rmove_to(ptr noundef %2, float noundef %101, float noundef %103) #18
  br label %1034

104:                                              ; preds = %77
  %105 = icmp slt i32 %66, 1
  br i1 %105, label %1051, label %106

106:                                              ; preds = %104
  %107 = zext nneg i32 %66 to i64
  %108 = getelementptr float, ptr %4, i64 %107
  %109 = getelementptr i8, ptr %108, i64 -4
  %110 = load float, ptr %109, align 4, !tbaa !43
  tail call fastcc void @stbtt__csctx_rmove_to(ptr noundef %2, float noundef 0.000000e+00, float noundef %110) #18
  br label %1034

111:                                              ; preds = %77
  %112 = icmp slt i32 %66, 1
  br i1 %112, label %1051, label %113

113:                                              ; preds = %111
  %114 = zext nneg i32 %66 to i64
  %115 = getelementptr float, ptr %4, i64 %114
  %116 = getelementptr i8, ptr %115, i64 -4
  %117 = load float, ptr %116, align 4, !tbaa !43
  tail call fastcc void @stbtt__csctx_rmove_to(ptr noundef %2, float noundef %117, float noundef 0.000000e+00) #18
  br label %1034

118:                                              ; preds = %77
  %119 = icmp slt i32 %66, 2
  br i1 %119, label %1051, label %120

120:                                              ; preds = %118
  %121 = load i32, ptr %2, align 8, !tbaa !107
  %122 = icmp eq i32 %121, 0
  %123 = load <2 x float>, ptr %44, align 8, !tbaa !43
  %124 = load i32, ptr %50, align 8
  %125 = zext nneg i32 %66 to i64
  br label %126

126:                                              ; preds = %120, %172
  %127 = phi i64 [ 0, %120 ], [ %174, %172 ]
  %128 = phi i32 [ %124, %120 ], [ %173, %172 ]
  %129 = phi <2 x float> [ %123, %120 ], [ %132, %172 ]
  %130 = getelementptr float, ptr %4, i64 %127
  %131 = load <2 x float>, ptr %130, align 8, !tbaa !43
  %132 = fadd <2 x float> %131, %129
  %133 = fptosi <2 x float> %132 to <2 x i32>
  br i1 %122, label %165, label %134

134:                                              ; preds = %126
  %135 = load i32, ptr %45, align 4, !tbaa !109
  %136 = extractelement <2 x i32> %133, i64 0
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %141, label %138

138:                                              ; preds = %134
  %139 = load i32, ptr %46, align 4, !tbaa !110
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %138, %134
  store i32 %136, ptr %45, align 4, !tbaa !109
  br label %142

142:                                              ; preds = %141, %138
  %143 = load i32, ptr %47, align 4, !tbaa !111
  %144 = extractelement <2 x i32> %133, i64 1
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %149, label %146

146:                                              ; preds = %142
  %147 = load i32, ptr %46, align 4, !tbaa !110
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %146, %142
  store i32 %144, ptr %47, align 4, !tbaa !111
  br label %150

150:                                              ; preds = %149, %146
  %151 = load i32, ptr %48, align 8, !tbaa !112
  %152 = icmp sgt i32 %151, %136
  br i1 %152, label %156, label %153

153:                                              ; preds = %150
  %154 = load i32, ptr %46, align 4, !tbaa !110
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %153, %150
  store i32 %136, ptr %48, align 8, !tbaa !112
  br label %157

157:                                              ; preds = %156, %153
  %158 = load i32, ptr %49, align 8, !tbaa !113
  %159 = icmp sgt i32 %158, %144
  br i1 %159, label %163, label %160

160:                                              ; preds = %157
  %161 = load i32, ptr %46, align 4, !tbaa !110
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %160, %157
  store i32 %144, ptr %49, align 8, !tbaa !113
  br label %164

164:                                              ; preds = %163, %160
  store i32 1, ptr %46, align 4, !tbaa !110
  br label %172

165:                                              ; preds = %126
  %166 = load ptr, ptr %51, align 8, !tbaa !114
  %167 = sext i32 %128 to i64
  %168 = getelementptr inbounds %struct.stbtt_vertex, ptr %166, i64 %167
  %169 = getelementptr inbounds nuw i8, ptr %168, i64 12
  store i8 2, ptr %169, align 2, !tbaa !33
  %170 = trunc <2 x i32> %133 to <2 x i16>
  store <2 x i16> %170, ptr %168, align 2, !tbaa !42
  %171 = getelementptr inbounds nuw i8, ptr %168, i64 4
  store <4 x i16> zeroinitializer, ptr %171, align 2, !tbaa !42
  br label %172

172:                                              ; preds = %164, %165
  %173 = add i32 %128, 1
  %174 = add nuw nsw i64 %127, 2
  %175 = or disjoint i64 %174, 1
  %176 = icmp samesign ult i64 %175, %125
  br i1 %176, label %126, label %1033, !llvm.loop !115

177:                                              ; preds = %77
  %178 = icmp slt i32 %66, 1
  br i1 %178, label %1051, label %238

179:                                              ; preds = %77
  %180 = icmp slt i32 %66, 1
  br i1 %180, label %1051, label %181

181:                                              ; preds = %179, %291
  %182 = phi i32 [ %294, %291 ], [ 0, %179 ]
  %183 = icmp slt i32 %182, %66
  br i1 %183, label %184, label %1034

184:                                              ; preds = %181
  %185 = sext i32 %182 to i64
  %186 = getelementptr inbounds float, ptr %4, i64 %185
  %187 = load float, ptr %186, align 4, !tbaa !43
  %188 = load <2 x float>, ptr %44, align 8, !tbaa !43
  %189 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %187, i64 0
  %190 = fadd <2 x float> %188, %189
  store <2 x float> %190, ptr %44, align 8, !tbaa !43
  %191 = fptosi <2 x float> %190 to <2 x i32>
  %192 = load i32, ptr %2, align 8, !tbaa !107
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %226, label %194

194:                                              ; preds = %184
  %195 = load i32, ptr %45, align 4, !tbaa !109
  %196 = extractelement <2 x i32> %191, i64 0
  %197 = icmp slt i32 %195, %196
  br i1 %197, label %201, label %198

198:                                              ; preds = %194
  %199 = load i32, ptr %46, align 4, !tbaa !110
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %198, %194
  store i32 %196, ptr %45, align 4, !tbaa !109
  br label %202

202:                                              ; preds = %201, %198
  %203 = load i32, ptr %47, align 4, !tbaa !111
  %204 = extractelement <2 x i32> %191, i64 1
  %205 = icmp slt i32 %203, %204
  br i1 %205, label %209, label %206

206:                                              ; preds = %202
  %207 = load i32, ptr %46, align 4, !tbaa !110
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %206, %202
  store i32 %204, ptr %47, align 4, !tbaa !111
  br label %210

210:                                              ; preds = %209, %206
  %211 = load i32, ptr %48, align 8, !tbaa !112
  %212 = icmp sgt i32 %211, %196
  br i1 %212, label %216, label %213

213:                                              ; preds = %210
  %214 = load i32, ptr %46, align 4, !tbaa !110
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %213, %210
  store i32 %196, ptr %48, align 8, !tbaa !112
  br label %217

217:                                              ; preds = %216, %213
  %218 = load i32, ptr %49, align 8, !tbaa !113
  %219 = icmp sgt i32 %218, %204
  br i1 %219, label %223, label %220

220:                                              ; preds = %217
  %221 = load i32, ptr %46, align 4, !tbaa !110
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %220, %217
  store i32 %204, ptr %49, align 8, !tbaa !113
  br label %224

224:                                              ; preds = %223, %220
  store i32 1, ptr %46, align 4, !tbaa !110
  %225 = load i32, ptr %50, align 8, !tbaa !116
  br label %234

226:                                              ; preds = %184
  %227 = load ptr, ptr %51, align 8, !tbaa !114
  %228 = load i32, ptr %50, align 8, !tbaa !116
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.stbtt_vertex, ptr %227, i64 %229
  %231 = getelementptr inbounds nuw i8, ptr %230, i64 12
  store i8 2, ptr %231, align 2, !tbaa !33
  %232 = trunc <2 x i32> %191 to <2 x i16>
  store <2 x i16> %232, ptr %230, align 2, !tbaa !42
  %233 = getelementptr inbounds nuw i8, ptr %230, i64 4
  store <4 x i16> zeroinitializer, ptr %233, align 2, !tbaa !42
  br label %234

234:                                              ; preds = %224, %226
  %235 = phi i32 [ %225, %224 ], [ %228, %226 ]
  %236 = add i32 %235, 1
  store i32 %236, ptr %50, align 8, !tbaa !116
  %237 = add nsw i32 %182, 1
  br label %238

238:                                              ; preds = %177, %234
  %239 = phi i32 [ 0, %177 ], [ %237, %234 ]
  %240 = icmp slt i32 %239, %66
  br i1 %240, label %241, label %1034

241:                                              ; preds = %238
  %242 = sext i32 %239 to i64
  %243 = getelementptr inbounds float, ptr %4, i64 %242
  %244 = load float, ptr %243, align 4, !tbaa !43
  %245 = load <2 x float>, ptr %44, align 8, !tbaa !43
  %246 = insertelement <2 x float> <float 0.000000e+00, float poison>, float %244, i64 1
  %247 = fadd <2 x float> %245, %246
  store <2 x float> %247, ptr %44, align 8, !tbaa !43
  %248 = fptosi <2 x float> %247 to <2 x i32>
  %249 = load i32, ptr %2, align 8, !tbaa !107
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %283, label %251

251:                                              ; preds = %241
  %252 = load i32, ptr %45, align 4, !tbaa !109
  %253 = extractelement <2 x i32> %248, i64 0
  %254 = icmp slt i32 %252, %253
  br i1 %254, label %258, label %255

255:                                              ; preds = %251
  %256 = load i32, ptr %46, align 4, !tbaa !110
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %259

258:                                              ; preds = %255, %251
  store i32 %253, ptr %45, align 4, !tbaa !109
  br label %259

259:                                              ; preds = %258, %255
  %260 = load i32, ptr %47, align 4, !tbaa !111
  %261 = extractelement <2 x i32> %248, i64 1
  %262 = icmp slt i32 %260, %261
  br i1 %262, label %266, label %263

263:                                              ; preds = %259
  %264 = load i32, ptr %46, align 4, !tbaa !110
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %266, label %267

266:                                              ; preds = %263, %259
  store i32 %261, ptr %47, align 4, !tbaa !111
  br label %267

267:                                              ; preds = %266, %263
  %268 = load i32, ptr %48, align 8, !tbaa !112
  %269 = icmp sgt i32 %268, %253
  br i1 %269, label %273, label %270

270:                                              ; preds = %267
  %271 = load i32, ptr %46, align 4, !tbaa !110
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %274

273:                                              ; preds = %270, %267
  store i32 %253, ptr %48, align 8, !tbaa !112
  br label %274

274:                                              ; preds = %273, %270
  %275 = load i32, ptr %49, align 8, !tbaa !113
  %276 = icmp sgt i32 %275, %261
  br i1 %276, label %280, label %277

277:                                              ; preds = %274
  %278 = load i32, ptr %46, align 4, !tbaa !110
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %280, label %281

280:                                              ; preds = %277, %274
  store i32 %261, ptr %49, align 8, !tbaa !113
  br label %281

281:                                              ; preds = %280, %277
  store i32 1, ptr %46, align 4, !tbaa !110
  %282 = load i32, ptr %50, align 8, !tbaa !116
  br label %291

283:                                              ; preds = %241
  %284 = load ptr, ptr %51, align 8, !tbaa !114
  %285 = load i32, ptr %50, align 8, !tbaa !116
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.stbtt_vertex, ptr %284, i64 %286
  %288 = getelementptr inbounds nuw i8, ptr %287, i64 12
  store i8 2, ptr %288, align 2, !tbaa !33
  %289 = trunc <2 x i32> %248 to <2 x i16>
  store <2 x i16> %289, ptr %287, align 2, !tbaa !42
  %290 = getelementptr inbounds nuw i8, ptr %287, i64 4
  store <4 x i16> zeroinitializer, ptr %290, align 2, !tbaa !42
  br label %291

291:                                              ; preds = %281, %283
  %292 = phi i32 [ %282, %281 ], [ %285, %283 ]
  %293 = add i32 %292, 1
  store i32 %293, ptr %50, align 8, !tbaa !116
  %294 = add nsw i32 %239, 1
  br label %181

295:                                              ; preds = %77
  %296 = icmp slt i32 %66, 4
  br i1 %296, label %1051, label %327

297:                                              ; preds = %77
  %298 = icmp slt i32 %66, 4
  br i1 %298, label %1051, label %299

299:                                              ; preds = %297, %350
  %300 = phi i32 [ %345, %350 ], [ 0, %297 ]
  %301 = add i32 %300, 3
  %302 = icmp slt i32 %301, %66
  br i1 %302, label %303, label %1034

303:                                              ; preds = %299
  %304 = sext i32 %300 to i64
  %305 = getelementptr inbounds float, ptr %4, i64 %304
  %306 = load float, ptr %305, align 4, !tbaa !43
  %307 = add i32 %300, 1
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds float, ptr %4, i64 %308
  %310 = load float, ptr %309, align 4, !tbaa !43
  %311 = add i32 %300, 2
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds float, ptr %4, i64 %312
  %314 = load float, ptr %313, align 4, !tbaa !43
  %315 = sext i32 %301 to i64
  %316 = getelementptr inbounds float, ptr %4, i64 %315
  %317 = load float, ptr %316, align 4, !tbaa !43
  %318 = sub i32 %66, %300
  %319 = icmp eq i32 %318, 5
  %320 = add i32 %300, 4
  br i1 %319, label %321, label %325

321:                                              ; preds = %303
  %322 = sext i32 %320 to i64
  %323 = getelementptr inbounds float, ptr %4, i64 %322
  %324 = load float, ptr %323, align 4, !tbaa !43
  br label %325

325:                                              ; preds = %303, %321
  %326 = phi float [ %324, %321 ], [ 0.000000e+00, %303 ]
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef 0.000000e+00, float noundef %306, float noundef %310, float noundef %314, float noundef %317, float noundef %326) #18
  br label %327

327:                                              ; preds = %295, %325
  %328 = phi i32 [ 0, %295 ], [ %320, %325 ]
  %329 = add i32 %328, 3
  %330 = icmp slt i32 %329, %66
  br i1 %330, label %331, label %1034

331:                                              ; preds = %327
  %332 = sext i32 %328 to i64
  %333 = getelementptr inbounds float, ptr %4, i64 %332
  %334 = load float, ptr %333, align 4, !tbaa !43
  %335 = add i32 %328, 1
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds float, ptr %4, i64 %336
  %338 = load float, ptr %337, align 4, !tbaa !43
  %339 = add i32 %328, 2
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds float, ptr %4, i64 %340
  %342 = load float, ptr %341, align 4, !tbaa !43
  %343 = sub i32 %66, %328
  %344 = icmp eq i32 %343, 5
  %345 = add i32 %328, 4
  br i1 %344, label %346, label %350

346:                                              ; preds = %331
  %347 = sext i32 %345 to i64
  %348 = getelementptr inbounds float, ptr %4, i64 %347
  %349 = load float, ptr %348, align 4, !tbaa !43
  br label %350

350:                                              ; preds = %331, %346
  %351 = phi float [ %349, %346 ], [ 0.000000e+00, %331 ]
  %352 = sext i32 %329 to i64
  %353 = getelementptr inbounds float, ptr %4, i64 %352
  %354 = load float, ptr %353, align 4, !tbaa !43
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %334, float noundef 0.000000e+00, float noundef %338, float noundef %342, float noundef %351, float noundef %354) #18
  br label %299

355:                                              ; preds = %77
  %356 = icmp slt i32 %66, 6
  br i1 %356, label %1051, label %357

357:                                              ; preds = %355, %357
  %358 = phi i32 [ %380, %357 ], [ 0, %355 ]
  %359 = add i32 %358, 5
  %360 = sext i32 %358 to i64
  %361 = getelementptr inbounds float, ptr %4, i64 %360
  %362 = load float, ptr %361, align 8, !tbaa !43
  %363 = getelementptr i8, ptr %361, i64 4
  %364 = load float, ptr %363, align 4, !tbaa !43
  %365 = add i32 %358, 2
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds float, ptr %4, i64 %366
  %368 = load float, ptr %367, align 8, !tbaa !43
  %369 = add i32 %358, 3
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds float, ptr %4, i64 %370
  %372 = load float, ptr %371, align 4, !tbaa !43
  %373 = add i32 %358, 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds float, ptr %4, i64 %374
  %376 = load float, ptr %375, align 8, !tbaa !43
  %377 = sext i32 %359 to i64
  %378 = getelementptr inbounds float, ptr %4, i64 %377
  %379 = load float, ptr %378, align 4, !tbaa !43
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %362, float noundef %364, float noundef %368, float noundef %372, float noundef %376, float noundef %379) #18
  %380 = add i32 %358, 6
  %381 = add i32 %358, 11
  %382 = icmp slt i32 %381, %66
  br i1 %382, label %357, label %1034, !llvm.loop !117

383:                                              ; preds = %77
  %384 = icmp slt i32 %66, 8
  br i1 %384, label %1051, label %385

385:                                              ; preds = %383
  %386 = add nsw i32 %66, -2
  br label %387

387:                                              ; preds = %385, %387
  %388 = phi i32 [ %410, %387 ], [ 0, %385 ]
  %389 = add i32 %388, 5
  %390 = sext i32 %388 to i64
  %391 = getelementptr inbounds float, ptr %4, i64 %390
  %392 = load float, ptr %391, align 8, !tbaa !43
  %393 = getelementptr i8, ptr %391, i64 4
  %394 = load float, ptr %393, align 4, !tbaa !43
  %395 = add i32 %388, 2
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds float, ptr %4, i64 %396
  %398 = load float, ptr %397, align 8, !tbaa !43
  %399 = add i32 %388, 3
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds float, ptr %4, i64 %400
  %402 = load float, ptr %401, align 4, !tbaa !43
  %403 = add i32 %388, 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds float, ptr %4, i64 %404
  %406 = load float, ptr %405, align 8, !tbaa !43
  %407 = sext i32 %389 to i64
  %408 = getelementptr inbounds float, ptr %4, i64 %407
  %409 = load float, ptr %408, align 4, !tbaa !43
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %392, float noundef %394, float noundef %398, float noundef %402, float noundef %406, float noundef %409) #18
  %410 = add i32 %388, 6
  %411 = add i32 %388, 11
  %412 = icmp slt i32 %411, %386
  br i1 %412, label %387, label %413, !llvm.loop !118

413:                                              ; preds = %387
  %414 = or disjoint i32 %410, 1
  %415 = icmp slt i32 %414, %66
  br i1 %415, label %416, label %1051

416:                                              ; preds = %413
  %417 = sext i32 %410 to i64
  %418 = getelementptr inbounds float, ptr %4, i64 %417
  %419 = load <2 x float>, ptr %418, align 4, !tbaa !43
  %420 = load <2 x float>, ptr %44, align 8, !tbaa !43
  %421 = fadd <2 x float> %419, %420
  store <2 x float> %421, ptr %44, align 8, !tbaa !43
  %422 = fptosi <2 x float> %421 to <2 x i32>
  %423 = load i32, ptr %2, align 8, !tbaa !107
  %424 = icmp eq i32 %423, 0
  br i1 %424, label %457, label %425

425:                                              ; preds = %416
  %426 = load i32, ptr %45, align 4, !tbaa !109
  %427 = extractelement <2 x i32> %422, i64 0
  %428 = icmp slt i32 %426, %427
  br i1 %428, label %432, label %429

429:                                              ; preds = %425
  %430 = load i32, ptr %46, align 4, !tbaa !110
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %432, label %433

432:                                              ; preds = %429, %425
  store i32 %427, ptr %45, align 4, !tbaa !109
  br label %433

433:                                              ; preds = %432, %429
  %434 = load i32, ptr %47, align 4, !tbaa !111
  %435 = extractelement <2 x i32> %422, i64 1
  %436 = icmp slt i32 %434, %435
  br i1 %436, label %440, label %437

437:                                              ; preds = %433
  %438 = load i32, ptr %46, align 4, !tbaa !110
  %439 = icmp eq i32 %438, 0
  br i1 %439, label %440, label %441

440:                                              ; preds = %437, %433
  store i32 %435, ptr %47, align 4, !tbaa !111
  br label %441

441:                                              ; preds = %440, %437
  %442 = load i32, ptr %48, align 8, !tbaa !112
  %443 = icmp sgt i32 %442, %427
  br i1 %443, label %447, label %444

444:                                              ; preds = %441
  %445 = load i32, ptr %46, align 4, !tbaa !110
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %447, label %448

447:                                              ; preds = %444, %441
  store i32 %427, ptr %48, align 8, !tbaa !112
  br label %448

448:                                              ; preds = %447, %444
  %449 = load i32, ptr %49, align 8, !tbaa !113
  %450 = icmp sgt i32 %449, %435
  br i1 %450, label %454, label %451

451:                                              ; preds = %448
  %452 = load i32, ptr %46, align 4, !tbaa !110
  %453 = icmp eq i32 %452, 0
  br i1 %453, label %454, label %455

454:                                              ; preds = %451, %448
  store i32 %435, ptr %49, align 8, !tbaa !113
  br label %455

455:                                              ; preds = %454, %451
  store i32 1, ptr %46, align 4, !tbaa !110
  %456 = load i32, ptr %50, align 8, !tbaa !116
  br label %465

457:                                              ; preds = %416
  %458 = load ptr, ptr %51, align 8, !tbaa !114
  %459 = load i32, ptr %50, align 8, !tbaa !116
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds %struct.stbtt_vertex, ptr %458, i64 %460
  %462 = getelementptr inbounds nuw i8, ptr %461, i64 12
  store i8 2, ptr %462, align 2, !tbaa !33
  %463 = trunc <2 x i32> %422 to <2 x i16>
  store <2 x i16> %463, ptr %461, align 2, !tbaa !42
  %464 = getelementptr inbounds nuw i8, ptr %461, i64 4
  store <4 x i16> zeroinitializer, ptr %464, align 2, !tbaa !42
  br label %465

465:                                              ; preds = %455, %457
  %466 = phi i32 [ %456, %455 ], [ %459, %457 ]
  %467 = add i32 %466, 1
  store i32 %467, ptr %50, align 8, !tbaa !116
  br label %1034

468:                                              ; preds = %77
  %469 = icmp slt i32 %66, 8
  br i1 %469, label %1051, label %470

470:                                              ; preds = %468
  %471 = add nsw i32 %66, -6
  %472 = load i32, ptr %2, align 8, !tbaa !107
  %473 = icmp eq i32 %472, 0
  %474 = load <2 x float>, ptr %44, align 8, !tbaa !43
  %475 = load i32, ptr %50, align 8
  %476 = zext nneg i32 %471 to i64
  br label %477

477:                                              ; preds = %470, %523
  %478 = phi i64 [ 0, %470 ], [ %525, %523 ]
  %479 = phi i32 [ %475, %470 ], [ %524, %523 ]
  %480 = phi <2 x float> [ %474, %470 ], [ %483, %523 ]
  %481 = getelementptr float, ptr %4, i64 %478
  %482 = load <2 x float>, ptr %481, align 8, !tbaa !43
  %483 = fadd <2 x float> %482, %480
  %484 = fptosi <2 x float> %483 to <2 x i32>
  br i1 %473, label %516, label %485

485:                                              ; preds = %477
  %486 = load i32, ptr %45, align 4, !tbaa !109
  %487 = extractelement <2 x i32> %484, i64 0
  %488 = icmp slt i32 %486, %487
  br i1 %488, label %492, label %489

489:                                              ; preds = %485
  %490 = load i32, ptr %46, align 4, !tbaa !110
  %491 = icmp eq i32 %490, 0
  br i1 %491, label %492, label %493

492:                                              ; preds = %489, %485
  store i32 %487, ptr %45, align 4, !tbaa !109
  br label %493

493:                                              ; preds = %492, %489
  %494 = load i32, ptr %47, align 4, !tbaa !111
  %495 = extractelement <2 x i32> %484, i64 1
  %496 = icmp slt i32 %494, %495
  br i1 %496, label %500, label %497

497:                                              ; preds = %493
  %498 = load i32, ptr %46, align 4, !tbaa !110
  %499 = icmp eq i32 %498, 0
  br i1 %499, label %500, label %501

500:                                              ; preds = %497, %493
  store i32 %495, ptr %47, align 4, !tbaa !111
  br label %501

501:                                              ; preds = %500, %497
  %502 = load i32, ptr %48, align 8, !tbaa !112
  %503 = icmp sgt i32 %502, %487
  br i1 %503, label %507, label %504

504:                                              ; preds = %501
  %505 = load i32, ptr %46, align 4, !tbaa !110
  %506 = icmp eq i32 %505, 0
  br i1 %506, label %507, label %508

507:                                              ; preds = %504, %501
  store i32 %487, ptr %48, align 8, !tbaa !112
  br label %508

508:                                              ; preds = %507, %504
  %509 = load i32, ptr %49, align 8, !tbaa !113
  %510 = icmp sgt i32 %509, %495
  br i1 %510, label %514, label %511

511:                                              ; preds = %508
  %512 = load i32, ptr %46, align 4, !tbaa !110
  %513 = icmp eq i32 %512, 0
  br i1 %513, label %514, label %515

514:                                              ; preds = %511, %508
  store i32 %495, ptr %49, align 8, !tbaa !113
  br label %515

515:                                              ; preds = %514, %511
  store i32 1, ptr %46, align 4, !tbaa !110
  br label %523

516:                                              ; preds = %477
  %517 = load ptr, ptr %51, align 8, !tbaa !114
  %518 = sext i32 %479 to i64
  %519 = getelementptr inbounds %struct.stbtt_vertex, ptr %517, i64 %518
  %520 = getelementptr inbounds nuw i8, ptr %519, i64 12
  store i8 2, ptr %520, align 2, !tbaa !33
  %521 = trunc <2 x i32> %484 to <2 x i16>
  store <2 x i16> %521, ptr %519, align 2, !tbaa !42
  %522 = getelementptr inbounds nuw i8, ptr %519, i64 4
  store <4 x i16> zeroinitializer, ptr %522, align 2, !tbaa !42
  br label %523

523:                                              ; preds = %515, %516
  %524 = add i32 %479, 1
  %525 = add nuw nsw i64 %478, 2
  %526 = or disjoint i64 %525, 1
  %527 = icmp samesign ult i64 %526, %476
  br i1 %527, label %477, label %528, !llvm.loop !119

528:                                              ; preds = %523
  store <2 x float> %483, ptr %44, align 8, !tbaa !43
  store i32 %524, ptr %50, align 8, !tbaa !116
  %529 = trunc nuw nsw i64 %525 to i32
  %530 = add i32 %529, 5
  %531 = icmp slt i32 %530, %66
  br i1 %531, label %532, label %1051

532:                                              ; preds = %528
  %533 = shl i64 %526, 32
  %534 = shl i64 %525, 32
  %535 = ashr exact i64 %534, 30
  %536 = getelementptr inbounds i8, ptr %4, i64 %535
  %537 = load float, ptr %536, align 4, !tbaa !43
  %538 = ashr exact i64 %533, 30
  %539 = getelementptr inbounds i8, ptr %4, i64 %538
  %540 = load float, ptr %539, align 4, !tbaa !43
  %541 = shl i64 %478, 32
  %542 = add i64 %541, 17179869184
  %543 = ashr exact i64 %542, 30
  %544 = getelementptr inbounds i8, ptr %4, i64 %543
  %545 = load float, ptr %544, align 8, !tbaa !43
  %546 = shl i64 %478, 32
  %547 = add i64 %546, 21474836480
  %548 = ashr exact i64 %547, 30
  %549 = getelementptr inbounds i8, ptr %4, i64 %548
  %550 = load float, ptr %549, align 4, !tbaa !43
  %551 = shl i64 %478, 32
  %552 = add i64 %551, 25769803776
  %553 = ashr exact i64 %552, 30
  %554 = getelementptr inbounds i8, ptr %4, i64 %553
  %555 = load float, ptr %554, align 8, !tbaa !43
  %556 = sext i32 %530 to i64
  %557 = getelementptr inbounds float, ptr %4, i64 %556
  %558 = load float, ptr %557, align 4, !tbaa !43
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %537, float noundef %540, float noundef %545, float noundef %550, float noundef %555, float noundef %558) #18
  br label %1034

559:                                              ; preds = %77, %77
  %560 = icmp slt i32 %66, 4
  br i1 %560, label %1051, label %561

561:                                              ; preds = %559
  %562 = and i32 %66, 1
  %563 = add nuw nsw i32 %562, 3
  %564 = icmp samesign ult i32 %563, %66
  br i1 %564, label %565, label %1034

565:                                              ; preds = %561
  %566 = icmp eq i32 %562, 0
  %567 = load float, ptr %4, align 16
  %568 = select i1 %566, float 0.000000e+00, float %567
  %569 = icmp eq i8 %78, 27
  %570 = zext nneg i32 %562 to i64
  %571 = getelementptr inbounds nuw float, ptr %4, i64 %570
  %572 = load float, ptr %571, align 4, !tbaa !43
  %573 = zext nneg i32 %562 to i64
  %574 = getelementptr inbounds nuw float, ptr %4, i64 %573
  %575 = getelementptr inbounds nuw i8, ptr %574, i64 4
  %576 = load float, ptr %575, align 4, !tbaa !43
  %577 = zext nneg i32 %562 to i64
  %578 = getelementptr inbounds nuw float, ptr %4, i64 %577
  %579 = getelementptr inbounds nuw i8, ptr %578, i64 8
  %580 = load float, ptr %579, align 4, !tbaa !43
  %581 = zext nneg i32 %563 to i64
  %582 = getelementptr inbounds nuw float, ptr %4, i64 %581
  %583 = load float, ptr %582, align 4, !tbaa !43
  br i1 %569, label %585, label %584

584:                                              ; preds = %565
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %568, float noundef %572, float noundef %576, float noundef %580, float noundef 0.000000e+00, float noundef %583) #18
  br label %586

585:                                              ; preds = %565
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %572, float noundef %568, float noundef %576, float noundef %580, float noundef %583, float noundef 0.000000e+00) #18
  br label %586

586:                                              ; preds = %585, %584
  %587 = add nuw nsw i32 %562, 7
  %588 = icmp samesign ult i32 %587, %66
  br i1 %588, label %589, label %1034

589:                                              ; preds = %586
  %590 = or disjoint i32 %562, 4
  br label %591

591:                                              ; preds = %589, %610
  %592 = phi i32 [ %587, %589 ], [ %612, %610 ]
  %593 = phi i32 [ %590, %589 ], [ %611, %610 ]
  %594 = sext i32 %593 to i64
  %595 = getelementptr inbounds float, ptr %4, i64 %594
  %596 = load float, ptr %595, align 4, !tbaa !43
  %597 = add i32 %593, 1
  %598 = sext i32 %597 to i64
  %599 = getelementptr inbounds float, ptr %4, i64 %598
  %600 = load float, ptr %599, align 4, !tbaa !43
  %601 = add i32 %593, 2
  %602 = sext i32 %601 to i64
  %603 = getelementptr inbounds float, ptr %4, i64 %602
  %604 = load float, ptr %603, align 4, !tbaa !43
  %605 = sext i32 %592 to i64
  %606 = getelementptr inbounds float, ptr %4, i64 %605
  %607 = load float, ptr %606, align 4, !tbaa !43
  br i1 %569, label %608, label %609

608:                                              ; preds = %591
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %596, float noundef 0.000000e+00, float noundef %600, float noundef %604, float noundef %607, float noundef 0.000000e+00) #18
  br label %610

609:                                              ; preds = %591
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef 0.000000e+00, float noundef %596, float noundef %600, float noundef %604, float noundef 0.000000e+00, float noundef %607) #18
  br label %610

610:                                              ; preds = %609, %608
  %611 = add i32 %593, 4
  %612 = add i32 %593, 7
  %613 = icmp slt i32 %612, %66
  br i1 %613, label %591, label %1034, !llvm.loop !120

614:                                              ; preds = %77
  %615 = icmp eq i32 %67, 0
  br i1 %615, label %616, label %773

616:                                              ; preds = %614
  %617 = load i32, ptr %36, align 4, !tbaa !122
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
  br i1 %709, label %761, label %710, !llvm.loop !123

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
  %765 = tail call fastcc { ptr, i64 } @stbtt__cff_index_get(ptr %763, i64 %764, i32 noundef %762) #18
  %766 = extractvalue { ptr, i64 } %765, 0
  %767 = extractvalue { ptr, i64 } %765, 1
  %768 = load ptr, ptr %38, align 8
  %769 = load i64, ptr %41, align 8
  %770 = tail call fastcc { ptr, i64 } @stbtt__get_subrs(ptr %768, i64 %769, ptr %766, i64 %767) #18
  %771 = extractvalue { ptr, i64 } %770, 0
  %772 = extractvalue { ptr, i64 } %770, 1
  br label %773

773:                                              ; preds = %616, %761, %614, %77
  %774 = phi ptr [ %69, %614 ], [ %69, %77 ], [ %771, %761 ], [ %69, %616 ]
  %775 = phi i64 [ %68, %614 ], [ %68, %77 ], [ %772, %761 ], [ %68, %616 ]
  %776 = phi i32 [ 1, %614 ], [ %67, %77 ], [ 1, %761 ], [ 1, %616 ]
  %777 = icmp slt i32 %66, 1
  br i1 %777, label %1051, label %778

778:                                              ; preds = %773
  %779 = add nsw i32 %66, -1
  %780 = zext nneg i32 %779 to i64
  %781 = getelementptr inbounds nuw float, ptr %4, i64 %780
  %782 = load float, ptr %781, align 4, !tbaa !43
  %783 = fptosi float %782 to i32
  %784 = icmp sgt i32 %65, 9
  br i1 %784, label %1051, label %785

785:                                              ; preds = %778
  %786 = add nsw i32 %65, 1
  %787 = sext i32 %65 to i64
  %788 = getelementptr inbounds %struct.stbtt__buf, ptr %5, i64 %787
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %788, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !23
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
  %842 = tail call fastcc { ptr, i64 } @stbtt__cff_index_get(ptr readonly %795, i64 %841, i32 noundef %834) #18
  br label %843

843:                                              ; preds = %827, %838
  %844 = phi { ptr, i64 } [ %842, %838 ], [ zeroinitializer, %827 ]
  %845 = extractvalue { ptr, i64 } %844, 0
  %846 = extractvalue { ptr, i64 } %844, 1
  store ptr %845, ptr %6, align 8, !tbaa !8
  store i64 %846, ptr %18, align 8
  %847 = icmp ult i64 %846, 4294967296
  br i1 %847, label %1051, label %848

848:                                              ; preds = %843
  store i32 0, ptr %18, align 8, !tbaa !24
  br label %1034

849:                                              ; preds = %77
  %850 = icmp slt i32 %65, 1
  br i1 %850, label %1051, label %851

851:                                              ; preds = %849
  %852 = add nsw i32 %65, -1
  %853 = zext nneg i32 %852 to i64
  %854 = getelementptr inbounds nuw %struct.stbtt__buf, ptr %5, i64 %853
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 16 dereferenceable(16) %854, i64 16, i1 false), !tbaa.struct !23
  br label %1034

855:                                              ; preds = %77
  tail call fastcc void @stbtt__csctx_close_shape(ptr noundef %2) #18
  br label %1051

856:                                              ; preds = %77
  %857 = icmp slt i32 %71, %61
  br i1 %857, label %858, label %1051

858:                                              ; preds = %856
  %859 = add nsw i32 %62, 2
  store i32 %859, ptr %18, align 8, !tbaa !24
  %860 = sext i32 %71 to i64
  %861 = getelementptr inbounds i8, ptr %70, i64 %860
  %862 = icmp uge ptr %861, %58
  %863 = icmp ult ptr %861, %57
  %864 = select i1 %862, i1 %863, i1 false
  br i1 %864, label %865, label %1051

865:                                              ; preds = %858
  %866 = load i8, ptr %861, align 1, !tbaa !11
  switch i8 %866, label %1051 [
    i8 34, label %867
    i8 35, label %878
    i8 36, label %893
    i8 37, label %908
  ]

867:                                              ; preds = %865
  %868 = icmp slt i32 %66, 7
  br i1 %868, label %1051, label %869

869:                                              ; preds = %867
  %870 = load float, ptr %4, align 16, !tbaa !43
  %871 = load float, ptr %25, align 4, !tbaa !43
  %872 = load float, ptr %26, align 8, !tbaa !43
  %873 = load float, ptr %27, align 4, !tbaa !43
  %874 = load float, ptr %28, align 16, !tbaa !43
  %875 = load float, ptr %29, align 4, !tbaa !43
  %876 = load float, ptr %30, align 8, !tbaa !43
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %870, float noundef 0.000000e+00, float noundef %871, float noundef %872, float noundef %873, float noundef 0.000000e+00) #18
  %877 = fneg float %872
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %874, float noundef 0.000000e+00, float noundef %875, float noundef %877, float noundef %876, float noundef 0.000000e+00) #18
  br label %1034

878:                                              ; preds = %865
  %879 = icmp slt i32 %66, 13
  br i1 %879, label %1051, label %880

880:                                              ; preds = %878
  %881 = load float, ptr %4, align 16, !tbaa !43
  %882 = load float, ptr %25, align 4, !tbaa !43
  %883 = load float, ptr %26, align 8, !tbaa !43
  %884 = load float, ptr %27, align 4, !tbaa !43
  %885 = load float, ptr %28, align 16, !tbaa !43
  %886 = load float, ptr %29, align 4, !tbaa !43
  %887 = load float, ptr %30, align 8, !tbaa !43
  %888 = load float, ptr %31, align 4, !tbaa !43
  %889 = load float, ptr %32, align 16, !tbaa !43
  %890 = load float, ptr %33, align 4, !tbaa !43
  %891 = load float, ptr %34, align 8, !tbaa !43
  %892 = load float, ptr %35, align 4, !tbaa !43
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %881, float noundef %882, float noundef %883, float noundef %884, float noundef %885, float noundef %886) #18
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %887, float noundef %888, float noundef %889, float noundef %890, float noundef %891, float noundef %892) #18
  br label %1034

893:                                              ; preds = %865
  %894 = icmp slt i32 %66, 9
  br i1 %894, label %1051, label %895

895:                                              ; preds = %893
  %896 = load float, ptr %4, align 16, !tbaa !43
  %897 = load float, ptr %25, align 4, !tbaa !43
  %898 = load float, ptr %26, align 8, !tbaa !43
  %899 = load float, ptr %27, align 4, !tbaa !43
  %900 = load float, ptr %28, align 16, !tbaa !43
  %901 = load float, ptr %29, align 4, !tbaa !43
  %902 = load float, ptr %30, align 8, !tbaa !43
  %903 = load float, ptr %31, align 4, !tbaa !43
  %904 = load float, ptr %32, align 16, !tbaa !43
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %896, float noundef %897, float noundef %898, float noundef %899, float noundef %900, float noundef 0.000000e+00) #18
  %905 = fadd float %897, %899
  %906 = fadd float %905, %903
  %907 = fneg float %906
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %901, float noundef 0.000000e+00, float noundef %902, float noundef %903, float noundef %904, float noundef %907) #18
  br label %1034

908:                                              ; preds = %865
  %909 = icmp slt i32 %66, 11
  br i1 %909, label %1051, label %910

910:                                              ; preds = %908
  %911 = load float, ptr %34, align 8, !tbaa !43
  %912 = load <2 x float>, ptr %4, align 16, !tbaa !43
  %913 = load <2 x float>, ptr %26, align 8, !tbaa !43
  %914 = load <2 x float>, ptr %28, align 16, !tbaa !43
  %915 = load <2 x float>, ptr %30, align 8, !tbaa !43
  %916 = load <2 x float>, ptr %32, align 16, !tbaa !43
  %917 = fadd <2 x float> %912, %913
  %918 = fadd <2 x float> %917, %914
  %919 = fadd <2 x float> %918, %915
  %920 = fadd <2 x float> %919, %916
  %921 = fpext <2 x float> %920 to <2 x double>
  %922 = fcmp olt <2 x float> %920, zeroinitializer
  %923 = fneg <2 x double> %921
  %924 = select <2 x i1> %922, <2 x double> %923, <2 x double> %921
  %925 = extractelement <2 x double> %924, i64 0
  %926 = extractelement <2 x double> %924, i64 1
  %927 = fcmp ogt double %925, %926
  %928 = extractelement <2 x float> %920, i64 1
  %929 = fneg float %928
  %930 = extractelement <2 x float> %920, i64 0
  %931 = fneg float %930
  %932 = select i1 %927, float %911, float %931
  %933 = select i1 %927, float %929, float %911
  %934 = extractelement <2 x float> %912, i64 0
  %935 = extractelement <2 x float> %912, i64 1
  %936 = extractelement <2 x float> %913, i64 0
  %937 = extractelement <2 x float> %913, i64 1
  %938 = extractelement <2 x float> %914, i64 0
  %939 = extractelement <2 x float> %914, i64 1
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %934, float noundef %935, float noundef %936, float noundef %937, float noundef %938, float noundef %939) #18
  %940 = extractelement <2 x float> %915, i64 0
  %941 = extractelement <2 x float> %915, i64 1
  %942 = extractelement <2 x float> %916, i64 0
  %943 = extractelement <2 x float> %916, i64 1
  tail call fastcc void @stbtt__csctx_rccurve_to(ptr noundef %2, float noundef %940, float noundef %941, float noundef %942, float noundef %943, float noundef %932, float noundef %933) #18
  br label %1034

944:                                              ; preds = %77
  %945 = icmp ne i8 %78, 28
  %946 = icmp ult i8 %78, 32
  %947 = and i1 %946, %945
  br i1 %947, label %1051, label %948

948:                                              ; preds = %944
  %949 = icmp eq i8 %78, -1
  br i1 %949, label %950, label %1015

950:                                              ; preds = %948
  %951 = icmp slt i32 %71, %61
  br i1 %951, label %952, label %963

952:                                              ; preds = %950
  %953 = add nsw i32 %62, 2
  %954 = sext i32 %71 to i64
  %955 = getelementptr inbounds i8, ptr %70, i64 %954
  %956 = icmp uge ptr %955, %56
  %957 = icmp ult ptr %955, %55
  %958 = select i1 %956, i1 %957, i1 false
  br i1 %958, label %959, label %963

959:                                              ; preds = %952
  %960 = load i8, ptr %955, align 1, !tbaa !11
  %961 = zext i8 %960 to i32
  %962 = shl nuw nsw i32 %961, 8
  br label %963

963:                                              ; preds = %959, %952, %950
  %964 = phi i32 [ %71, %950 ], [ %953, %959 ], [ %953, %952 ]
  %965 = phi i32 [ 0, %950 ], [ %962, %959 ], [ 0, %952 ]
  %966 = icmp slt i32 %964, %61
  br i1 %966, label %967, label %978

967:                                              ; preds = %963
  %968 = add nsw i32 %964, 1
  %969 = sext i32 %964 to i64
  %970 = getelementptr inbounds i8, ptr %70, i64 %969
  %971 = icmp uge ptr %970, %56
  %972 = icmp ult ptr %970, %55
  %973 = select i1 %971, i1 %972, i1 false
  br i1 %973, label %974, label %978

974:                                              ; preds = %967
  %975 = load i8, ptr %970, align 1, !tbaa !11
  %976 = zext i8 %975 to i32
  %977 = or disjoint i32 %965, %976
  br label %978

978:                                              ; preds = %974, %967, %963
  %979 = phi i32 [ %964, %963 ], [ %968, %974 ], [ %968, %967 ]
  %980 = phi i32 [ %965, %963 ], [ %977, %974 ], [ %965, %967 ]
  %981 = shl nuw nsw i32 %980, 8
  %982 = icmp slt i32 %979, %61
  br i1 %982, label %983, label %994

983:                                              ; preds = %978
  %984 = add nsw i32 %979, 1
  %985 = sext i32 %979 to i64
  %986 = getelementptr inbounds i8, ptr %70, i64 %985
  %987 = icmp uge ptr %986, %56
  %988 = icmp ult ptr %986, %55
  %989 = select i1 %987, i1 %988, i1 false
  br i1 %989, label %990, label %994

990:                                              ; preds = %983
  %991 = load i8, ptr %986, align 1, !tbaa !11
  %992 = zext i8 %991 to i32
  %993 = or disjoint i32 %981, %992
  br label %994

994:                                              ; preds = %990, %983, %978
  %995 = phi i32 [ %979, %978 ], [ %984, %990 ], [ %984, %983 ]
  %996 = phi i32 [ %981, %978 ], [ %993, %990 ], [ %981, %983 ]
  %997 = shl nuw i32 %996, 8
  %998 = icmp slt i32 %995, %61
  br i1 %998, label %999, label %1010

999:                                              ; preds = %994
  %1000 = add nsw i32 %995, 1
  %1001 = sext i32 %995 to i64
  %1002 = getelementptr inbounds i8, ptr %70, i64 %1001
  %1003 = icmp uge ptr %1002, %56
  %1004 = icmp ult ptr %1002, %55
  %1005 = select i1 %1003, i1 %1004, i1 false
  br i1 %1005, label %1006, label %1010

1006:                                             ; preds = %999
  %1007 = load i8, ptr %1002, align 1, !tbaa !11
  %1008 = zext i8 %1007 to i32
  %1009 = or disjoint i32 %997, %1008
  br label %1010

1010:                                             ; preds = %1006, %999, %994
  %1011 = phi i32 [ %995, %994 ], [ %1000, %1006 ], [ %1000, %999 ]
  %1012 = phi i32 [ %997, %994 ], [ %1009, %1006 ], [ %997, %999 ]
  store i32 %1011, ptr %18, align 8
  %1013 = sitofp i32 %1012 to float
  %1014 = fmul float %1013, 0x3EF0000000000000
  br label %1022

1015:                                             ; preds = %948
  %1016 = icmp slt i32 %62, 0
  %1017 = tail call i32 @llvm.smin.i32(i32 %62, i32 %61)
  %1018 = select i1 %1016, i32 %61, i32 %1017
  store i32 %1018, ptr %18, align 8, !tbaa !24
  %1019 = call fastcc i32 @stbtt__cff_int(ptr noundef %6) #18
  %1020 = trunc i32 %1019 to i16
  %1021 = sitofp i16 %1020 to float
  br label %1022

1022:                                             ; preds = %1015, %1010
  %1023 = phi ptr [ %55, %1010 ], [ %57, %1015 ]
  %1024 = phi ptr [ %56, %1010 ], [ %58, %1015 ]
  %1025 = phi ptr [ %55, %1010 ], [ %59, %1015 ]
  %1026 = phi ptr [ %56, %1010 ], [ %60, %1015 ]
  %1027 = phi float [ %1014, %1010 ], [ %1021, %1015 ]
  %1028 = icmp sgt i32 %66, 47
  br i1 %1028, label %1051, label %1029

1029:                                             ; preds = %1022
  %1030 = add nsw i32 %66, 1
  %1031 = sext i32 %66 to i64
  %1032 = getelementptr inbounds float, ptr %4, i64 %1031
  store float %1027, ptr %1032, align 4, !tbaa !43
  br label %1034

1033:                                             ; preds = %172
  store <2 x float> %132, ptr %44, align 8, !tbaa !43
  store i32 %173, ptr %50, align 8, !tbaa !116
  br label %1034

1034:                                             ; preds = %610, %357, %586, %561, %1033, %910, %895, %880, %869, %532, %465, %299, %327, %181, %238, %113, %106, %97, %92, %84, %1029, %851, %848
  %1035 = phi ptr [ %55, %851 ], [ %55, %1029 ], [ %800, %848 ], [ %55, %910 ], [ %55, %895 ], [ %55, %880 ], [ %55, %869 ], [ %55, %561 ], [ %55, %532 ], [ %55, %465 ], [ %55, %1033 ], [ %55, %299 ], [ %55, %327 ], [ %55, %181 ], [ %55, %238 ], [ %55, %84 ], [ %55, %113 ], [ %55, %106 ], [ %55, %97 ], [ %55, %92 ], [ %55, %586 ], [ %55, %357 ], [ %55, %610 ]
  %1036 = phi ptr [ %56, %851 ], [ %56, %1029 ], [ %799, %848 ], [ %56, %910 ], [ %56, %895 ], [ %56, %880 ], [ %56, %869 ], [ %56, %561 ], [ %56, %532 ], [ %56, %465 ], [ %56, %1033 ], [ %56, %299 ], [ %56, %327 ], [ %56, %181 ], [ %56, %238 ], [ %56, %84 ], [ %56, %113 ], [ %56, %106 ], [ %56, %97 ], [ %56, %92 ], [ %56, %586 ], [ %56, %357 ], [ %56, %610 ]
  %1037 = phi ptr [ %57, %851 ], [ %1023, %1029 ], [ %800, %848 ], [ %57, %910 ], [ %57, %895 ], [ %57, %880 ], [ %57, %869 ], [ %57, %561 ], [ %57, %532 ], [ %57, %465 ], [ %57, %1033 ], [ %57, %299 ], [ %57, %327 ], [ %57, %181 ], [ %57, %238 ], [ %57, %84 ], [ %57, %113 ], [ %57, %106 ], [ %57, %97 ], [ %57, %92 ], [ %57, %586 ], [ %57, %357 ], [ %57, %610 ]
  %1038 = phi ptr [ %58, %851 ], [ %1024, %1029 ], [ %799, %848 ], [ %58, %910 ], [ %58, %895 ], [ %58, %880 ], [ %58, %869 ], [ %58, %561 ], [ %58, %532 ], [ %58, %465 ], [ %58, %1033 ], [ %58, %299 ], [ %58, %327 ], [ %58, %181 ], [ %58, %238 ], [ %58, %84 ], [ %58, %113 ], [ %58, %106 ], [ %58, %97 ], [ %58, %92 ], [ %58, %586 ], [ %58, %357 ], [ %58, %610 ]
  %1039 = phi ptr [ %59, %851 ], [ %1025, %1029 ], [ %800, %848 ], [ %57, %910 ], [ %57, %895 ], [ %57, %880 ], [ %57, %869 ], [ %59, %561 ], [ %59, %532 ], [ %59, %465 ], [ %59, %1033 ], [ %59, %299 ], [ %59, %327 ], [ %59, %181 ], [ %59, %238 ], [ %59, %84 ], [ %59, %113 ], [ %59, %106 ], [ %59, %97 ], [ %59, %92 ], [ %59, %586 ], [ %59, %357 ], [ %59, %610 ]
  %1040 = phi ptr [ %60, %851 ], [ %1026, %1029 ], [ %799, %848 ], [ %58, %910 ], [ %58, %895 ], [ %58, %880 ], [ %58, %869 ], [ %60, %561 ], [ %60, %532 ], [ %60, %465 ], [ %60, %1033 ], [ %60, %299 ], [ %60, %327 ], [ %60, %181 ], [ %60, %238 ], [ %60, %84 ], [ %60, %113 ], [ %60, %106 ], [ %60, %97 ], [ %60, %92 ], [ %60, %586 ], [ %60, %357 ], [ %60, %610 ]
  %1041 = phi i32 [ %63, %851 ], [ %63, %1029 ], [ %63, %848 ], [ %63, %910 ], [ %63, %895 ], [ %63, %880 ], [ %63, %869 ], [ %63, %561 ], [ %63, %532 ], [ %63, %465 ], [ %63, %1033 ], [ %63, %299 ], [ %63, %327 ], [ %63, %181 ], [ %63, %238 ], [ 0, %84 ], [ 0, %113 ], [ 0, %106 ], [ 0, %97 ], [ %63, %92 ], [ %63, %586 ], [ %63, %357 ], [ %63, %610 ]
  %1042 = phi i32 [ %64, %851 ], [ %64, %1029 ], [ %64, %848 ], [ %64, %910 ], [ %64, %895 ], [ %64, %880 ], [ %64, %869 ], [ %64, %561 ], [ %64, %532 ], [ %64, %465 ], [ %64, %1033 ], [ %64, %299 ], [ %64, %327 ], [ %64, %181 ], [ %64, %238 ], [ %85, %84 ], [ %64, %113 ], [ %64, %106 ], [ %64, %97 ], [ %94, %92 ], [ %64, %586 ], [ %64, %357 ], [ %64, %610 ]
  %1043 = phi i32 [ %852, %851 ], [ %65, %1029 ], [ %786, %848 ], [ %65, %910 ], [ %65, %895 ], [ %65, %880 ], [ %65, %869 ], [ %65, %561 ], [ %65, %532 ], [ %65, %465 ], [ %65, %1033 ], [ %65, %299 ], [ %65, %327 ], [ %65, %181 ], [ %65, %238 ], [ %65, %84 ], [ %65, %113 ], [ %65, %106 ], [ %65, %97 ], [ %65, %92 ], [ %65, %586 ], [ %65, %357 ], [ %65, %610 ]
  %1044 = phi i32 [ %67, %851 ], [ %67, %1029 ], [ %776, %848 ], [ %67, %910 ], [ %67, %895 ], [ %67, %880 ], [ %67, %869 ], [ %67, %561 ], [ %67, %532 ], [ %67, %465 ], [ %67, %1033 ], [ %67, %299 ], [ %67, %327 ], [ %67, %181 ], [ %67, %238 ], [ %67, %84 ], [ %67, %113 ], [ %67, %106 ], [ %67, %97 ], [ %67, %92 ], [ %67, %586 ], [ %67, %357 ], [ %67, %610 ]
  %1045 = phi i64 [ %68, %851 ], [ %68, %1029 ], [ %775, %848 ], [ %68, %910 ], [ %68, %895 ], [ %68, %880 ], [ %68, %869 ], [ %68, %561 ], [ %68, %532 ], [ %68, %465 ], [ %68, %1033 ], [ %68, %299 ], [ %68, %327 ], [ %68, %181 ], [ %68, %238 ], [ %68, %84 ], [ %68, %113 ], [ %68, %106 ], [ %68, %97 ], [ %68, %92 ], [ %68, %586 ], [ %68, %357 ], [ %68, %610 ]
  %1046 = phi ptr [ %69, %851 ], [ %69, %1029 ], [ %774, %848 ], [ %69, %910 ], [ %69, %895 ], [ %69, %880 ], [ %69, %869 ], [ %69, %561 ], [ %69, %532 ], [ %69, %465 ], [ %69, %1033 ], [ %69, %299 ], [ %69, %327 ], [ %69, %181 ], [ %69, %238 ], [ %69, %84 ], [ %69, %113 ], [ %69, %106 ], [ %69, %97 ], [ %69, %92 ], [ %69, %586 ], [ %69, %357 ], [ %69, %610 ]
  %1047 = phi i32 [ %66, %851 ], [ %1030, %1029 ], [ %779, %848 ], [ 0, %910 ], [ 0, %895 ], [ 0, %880 ], [ 0, %869 ], [ 0, %561 ], [ 0, %532 ], [ 0, %465 ], [ 0, %1033 ], [ 0, %299 ], [ 0, %327 ], [ 0, %181 ], [ 0, %238 ], [ 0, %84 ], [ 0, %113 ], [ 0, %106 ], [ 0, %97 ], [ 0, %92 ], [ 0, %586 ], [ 0, %357 ], [ 0, %610 ]
  %1048 = load i32, ptr %18, align 8, !tbaa !24
  %1049 = load i32, ptr %19, align 4, !tbaa !25
  %1050 = icmp slt i32 %1048, %1049
  br i1 %1050, label %54, label %1051, !llvm.loop !124

1051:                                             ; preds = %95, %104, %111, %118, %177, %179, %295, %297, %355, %383, %413, %468, %528, %559, %773, %778, %843, %849, %944, %1022, %1034, %878, %867, %865, %893, %908, %856, %858, %54, %3, %855
  %1052 = phi i32 [ 1, %855 ], [ 0, %3 ], [ 0, %54 ], [ 0, %858 ], [ 0, %856 ], [ 0, %908 ], [ 0, %893 ], [ 0, %865 ], [ 0, %867 ], [ 0, %878 ], [ 0, %1034 ], [ 0, %1022 ], [ 0, %944 ], [ 0, %849 ], [ 0, %843 ], [ 0, %778 ], [ 0, %773 ], [ 0, %559 ], [ 0, %528 ], [ 0, %468 ], [ 0, %413 ], [ 0, %383 ], [ 0, %355 ], [ 0, %297 ], [ 0, %295 ], [ 0, %179 ], [ 0, %177 ], [ 0, %118 ], [ 0, %111 ], [ 0, %104 ], [ 0, %95 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret i32 %1052
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem0: none, target_mem1: none)
define internal fastcc void @stbtt__csctx_rmove_to(ptr noundef nonnull captures(none) %0, float noundef %1, float noundef %2) unnamed_addr #11 {
  tail call fastcc void @stbtt__csctx_close_shape(ptr noundef %0) #18
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load <2 x float>, ptr %4, align 8, !tbaa !43
  %7 = insertelement <2 x float> poison, float %1, i64 0
  %8 = insertelement <2 x float> %7, float %2, i64 1
  %9 = fadd <2 x float> %8, %6
  %10 = shufflevector <2 x float> %9, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  store <4 x float> %10, ptr %5, align 8, !tbaa !43
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
  store i8 1, ptr %63, align 2, !tbaa !33
  %64 = trunc <2 x i32> %11 to <2 x i16>
  store <2 x i16> %64, ptr %62, align 2, !tbaa !42
  %65 = getelementptr inbounds nuw i8, ptr %62, i64 4
  store <4 x i16> zeroinitializer, ptr %65, align 2, !tbaa !42
  br label %66

66:                                               ; preds = %52, %56
  %67 = phi i32 [ %55, %52 ], [ %60, %56 ]
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %69 = add i32 %67, 1
  store i32 %69, ptr %68, align 8, !tbaa !116
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem0: none, target_mem1: none)
define internal fastcc void @stbtt__csctx_rccurve_to(ptr noundef nonnull captures(none) %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6) unnamed_addr #11 {
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %9 = load <2 x float>, ptr %8, align 8, !tbaa !43
  %10 = insertelement <2 x float> poison, float %1, i64 0
  %11 = insertelement <2 x float> %10, float %2, i64 1
  %12 = fadd <2 x float> %11, %9
  %13 = insertelement <2 x float> poison, float %3, i64 0
  %14 = insertelement <2 x float> %13, float %4, i64 1
  %15 = fadd <2 x float> %14, %12
  %16 = insertelement <2 x float> poison, float %5, i64 0
  %17 = insertelement <2 x float> %16, float %6, i64 1
  %18 = fadd <2 x float> %17, %15
  store <2 x float> %18, ptr %8, align 8, !tbaa !43
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
  store i8 4, ptr %109, align 2, !tbaa !33
  %110 = trunc <4 x i32> %20 to <4 x i16>
  store <4 x i16> %110, ptr %108, align 2, !tbaa !42
  %111 = trunc <2 x i32> %21 to <2 x i16>
  %112 = getelementptr inbounds nuw i8, ptr %108, i64 8
  store <2 x i16> %111, ptr %112, align 2, !tbaa !42
  br label %113

113:                                              ; preds = %99, %102
  %114 = phi i32 [ %101, %99 ], [ %106, %102 ]
  %115 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %116 = add i32 %114, 1
  store i32 %116, ptr %115, align 8, !tbaa !116
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem0: none, target_mem1: none)
define internal fastcc void @stbtt__csctx_close_shape(ptr noundef nonnull captures(none) %0) unnamed_addr #11 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %4 = load float, ptr %3, align 8, !tbaa !125
  %5 = load <2 x float>, ptr %2, align 8, !tbaa !43
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
  store i8 2, ptr %66, align 2, !tbaa !33
  %67 = trunc <2 x i32> %14 to <2 x i16>
  store <2 x i16> %67, ptr %65, align 2, !tbaa !42
  %68 = getelementptr inbounds nuw i8, ptr %65, i64 4
  store <4 x i16> zeroinitializer, ptr %68, align 2, !tbaa !42
  br label %69

69:                                               ; preds = %55, %59
  %70 = phi i32 [ %58, %55 ], [ %63, %59 ]
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %72 = add i32 %70, 1
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
  %7 = load i32, ptr @stbtt_GetGlyphShape.depth, align 4, !tbaa !4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = load i32, ptr @stbtt_GetGlyphShape.budget, align 4
  br label %12

11:                                               ; preds = %3
  store i32 1024, ptr @stbtt_GetGlyphShape.budget, align 4, !tbaa !4
  br label %12

12:                                               ; preds = %9, %11
  %13 = phi i32 [ %10, %9 ], [ 1024, %11 ]
  %14 = icmp sgt i32 %7, 7
  %15 = icmp slt i32 %13, 1
  %16 = select i1 %14, i1 true, i1 %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store ptr null, ptr %2, align 8, !tbaa !32
  br label %1164

18:                                               ; preds = %12
  %19 = add nsw i32 %13, -1
  store i32 %19, ptr @stbtt_GetGlyphShape.budget, align 4, !tbaa !4
  %20 = add nsw i32 %7, 1
  store i32 %20, ptr @stbtt_GetGlyphShape.depth, align 4, !tbaa !4
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %22 = load i32, ptr %21, align 4, !tbaa !106
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %1134

24:                                               ; preds = %18
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %26 = load ptr, ptr %25, align 8, !tbaa !12
  %27 = tail call fastcc i32 @stbtt__GetGlyfOffset(ptr noundef nonnull %0, i32 noundef %1) #18
  store ptr null, ptr %2, align 8, !tbaa !32
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %1160, label %29

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
  %103 = add nuw nsw i32 %102, 29
  %104 = and i32 %103, 4194288
  %105 = zext nneg i32 %104 to i64
  %106 = load i64, ptr @arena_used, align 8, !tbaa !40
  %107 = sub i64 8388608, %106
  %108 = icmp ult i64 %107, %105
  br i1 %108, label %1160, label %109

109:                                              ; preds = %97
  %110 = getelementptr inbounds nuw i8, ptr @arena, i64 %106
  %111 = add i64 %106, %105
  store i64 %111, ptr @arena_used, align 8, !tbaa !40
  %112 = getelementptr inbounds nuw i8, ptr %59, i64 2
  %113 = zext i16 %78 to i64
  %114 = getelementptr inbounds nuw i8, ptr %112, i64 %113
  %115 = zext nneg i32 %101 to i64
  %116 = getelementptr inbounds nuw %struct.stbtt_vertex, ptr %110, i64 %115
  %117 = tail call ptr @memset(ptr noundef nonnull %116, i32 noundef 0, i64 noundef 14) #19
  %118 = load ptr, ptr @stbtt__lo, align 8
  %119 = load ptr, ptr @stbtt__hi, align 8
  %120 = zext i16 %56 to i64
  %121 = add nuw nsw i32 %99, 1
  %122 = zext nneg i32 %121 to i64
  %123 = getelementptr inbounds nuw %struct.stbtt_vertex, ptr %110, i64 %120
  br label %126

124:                                              ; preds = %148
  %125 = getelementptr inbounds nuw %struct.stbtt_vertex, ptr %110, i64 %120
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
  %152 = getelementptr inbounds nuw %struct.stbtt_vertex, ptr %123, i64 %127
  %153 = getelementptr inbounds nuw i8, ptr %152, i64 12
  store i8 %151, ptr %153, align 2, !tbaa !33
  %154 = add nuw nsw i64 %127, 1
  %155 = icmp eq i64 %154, %122
  br i1 %155, label %124, label %126, !llvm.loop !127

156:                                              ; preds = %208
  %157 = getelementptr inbounds nuw %struct.stbtt_vertex, ptr %110, i64 %120
  br label %213

158:                                              ; preds = %124, %208
  %159 = phi i64 [ 0, %124 ], [ %211, %208 ]
  %160 = phi ptr [ %149, %124 ], [ %210, %208 ]
  %161 = phi i16 [ 0, %124 ], [ %209, %208 ]
  %162 = getelementptr inbounds nuw %struct.stbtt_vertex, ptr %125, i64 %159
  %163 = getelementptr inbounds nuw i8, ptr %162, i64 12
  %164 = load i8, ptr %163, align 2, !tbaa !33
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
  store i16 %209, ptr %162, align 2, !tbaa !47
  %211 = add nuw nsw i64 %159, 1
  %212 = icmp eq i64 %211, %122
  br i1 %212, label %156, label %158, !llvm.loop !128

213:                                              ; preds = %156, %263
  %214 = phi i64 [ 0, %156 ], [ %267, %263 ]
  %215 = phi ptr [ %210, %156 ], [ %265, %263 ]
  %216 = phi i16 [ 0, %156 ], [ %264, %263 ]
  %217 = getelementptr inbounds nuw %struct.stbtt_vertex, ptr %157, i64 %214
  %218 = getelementptr inbounds nuw i8, ptr %217, i64 12
  %219 = load i8, ptr %218, align 2, !tbaa !33
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
  store i16 %264, ptr %266, align 2, !tbaa !48
  %267 = add nuw nsw i64 %214, 1
  %268 = icmp eq i64 %267, %122
  br i1 %268, label %269, label %213, !llvm.loop !129

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
  %284 = getelementptr inbounds %struct.stbtt_vertex, ptr %110, i64 %283
  %285 = getelementptr inbounds nuw i8, ptr %284, i64 12
  %286 = load i8, ptr %285, align 2, !tbaa !33
  %287 = load i16, ptr %284, align 2, !tbaa !47
  %288 = sext i16 %287 to i32
  %289 = getelementptr inbounds nuw i8, ptr %284, i64 2
  %290 = load i16, ptr %289, align 2, !tbaa !48
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
  %302 = getelementptr inbounds %struct.stbtt_vertex, ptr %110, i64 %301
  %303 = add nsw i32 %275, %279
  %304 = lshr i32 %303, 1
  %305 = add nsw i32 %274, %278
  %306 = lshr i32 %305, 1
  %307 = getelementptr inbounds nuw i8, ptr %302, i64 12
  store i8 3, ptr %307, align 2, !tbaa !33
  %308 = trunc i32 %304 to i16
  store i16 %308, ptr %302, align 2, !tbaa !47
  %309 = trunc i32 %306 to i16
  %310 = getelementptr inbounds nuw i8, ptr %302, i64 2
  store i16 %309, ptr %310, align 2, !tbaa !48
  %311 = trunc nsw i32 %279 to i16
  %312 = getelementptr inbounds nuw i8, ptr %302, i64 4
  store i16 %311, ptr %312, align 2, !tbaa !45
  %313 = trunc nsw i32 %278 to i16
  %314 = getelementptr inbounds nuw i8, ptr %302, i64 6
  store i16 %313, ptr %314, align 2, !tbaa !46
  br label %315

315:                                              ; preds = %299, %298
  %316 = phi i32 [ %300, %299 ], [ %270, %298 ]
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds %struct.stbtt_vertex, ptr %110, i64 %317
  %319 = getelementptr inbounds nuw i8, ptr %318, i64 12
  store i8 3, ptr %319, align 2, !tbaa !33
  %320 = trunc i32 %277 to i16
  store i16 %320, ptr %318, align 2, !tbaa !47
  %321 = trunc i32 %276 to i16
  %322 = getelementptr inbounds nuw i8, ptr %318, i64 2
  store i16 %321, ptr %322, align 2, !tbaa !48
  %323 = trunc nsw i32 %275 to i16
  %324 = getelementptr inbounds nuw i8, ptr %318, i64 4
  store i16 %323, ptr %324, align 2, !tbaa !45
  %325 = trunc nsw i32 %274 to i16
  br label %339

326:                                              ; preds = %295
  %327 = sext i32 %270 to i64
  %328 = getelementptr inbounds %struct.stbtt_vertex, ptr %110, i64 %327
  %329 = getelementptr inbounds nuw i8, ptr %328, i64 12
  %330 = trunc i32 %277 to i16
  %331 = trunc i32 %276 to i16
  %332 = getelementptr inbounds nuw i8, ptr %328, i64 2
  br i1 %297, label %337, label %333

333:                                              ; preds = %326
  store i8 3, ptr %329, align 2, !tbaa !33
  store i16 %330, ptr %328, align 2, !tbaa !47
  store i16 %331, ptr %332, align 2, !tbaa !48
  %334 = trunc nsw i32 %279 to i16
  %335 = getelementptr inbounds nuw i8, ptr %328, i64 4
  store i16 %334, ptr %335, align 2, !tbaa !45
  %336 = trunc nsw i32 %278 to i16
  br label %339

337:                                              ; preds = %326
  store i8 2, ptr %329, align 2, !tbaa !33
  store i16 %330, ptr %328, align 2, !tbaa !47
  store i16 %331, ptr %332, align 2, !tbaa !48
  %338 = getelementptr inbounds nuw i8, ptr %328, i64 4
  store i16 0, ptr %338, align 2, !tbaa !45
  br label %339

339:                                              ; preds = %315, %333, %337
  %340 = phi i64 [ %327, %333 ], [ %327, %337 ], [ %317, %315 ]
  %341 = phi i16 [ %336, %333 ], [ 0, %337 ], [ %325, %315 ]
  %342 = phi i32 [ %270, %333 ], [ %270, %337 ], [ %316, %315 ]
  %343 = getelementptr inbounds %struct.stbtt_vertex, ptr %110, i64 %340
  %344 = getelementptr inbounds nuw i8, ptr %343, i64 6
  store i16 %341, ptr %344, align 2, !tbaa !46
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
  %355 = load i8, ptr %354, align 2, !tbaa !33
  %356 = and i8 %355, 1
  %357 = icmp eq i8 %356, 0
  %358 = load i16, ptr %353, align 2, !tbaa !47
  br i1 %357, label %359, label %368

359:                                              ; preds = %352
  %360 = sext i16 %358 to i32
  %361 = add nsw i32 %360, %288
  %362 = ashr i32 %361, 1
  %363 = getelementptr i8, ptr %284, i64 16
  %364 = load i16, ptr %363, align 2, !tbaa !48
  %365 = sext i16 %364 to i32
  %366 = add nsw i32 %365, %291
  %367 = ashr i32 %366, 1
  br label %374

368:                                              ; preds = %352
  %369 = zext i16 %358 to i32
  %370 = getelementptr i8, ptr %284, i64 16
  %371 = load i16, ptr %370, align 2, !tbaa !48
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
  %382 = getelementptr inbounds %struct.stbtt_vertex, ptr %110, i64 %381
  %383 = getelementptr inbounds nuw i8, ptr %382, i64 12
  store i8 1, ptr %383, align 2, !tbaa !33
  %384 = trunc i32 %375 to i16
  store i16 %384, ptr %382, align 2, !tbaa !47
  %385 = trunc i32 %376 to i16
  %386 = getelementptr inbounds nuw i8, ptr %382, i64 2
  store i16 %385, ptr %386, align 2, !tbaa !48
  %387 = getelementptr inbounds nuw i8, ptr %382, i64 4
  store i16 0, ptr %387, align 2, !tbaa !45
  %388 = getelementptr inbounds nuw i8, ptr %382, i64 6
  store i16 0, ptr %388, align 2, !tbaa !46
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
  %422 = getelementptr inbounds %struct.stbtt_vertex, ptr %110, i64 %421
  %423 = add nsw i32 %279, %288
  %424 = lshr i32 %423, 1
  %425 = add nsw i32 %278, %291
  %426 = lshr i32 %425, 1
  %427 = getelementptr inbounds nuw i8, ptr %422, i64 12
  store i8 3, ptr %427, align 2, !tbaa !33
  %428 = trunc i32 %424 to i16
  store i16 %428, ptr %422, align 2, !tbaa !47
  %429 = trunc i32 %426 to i16
  %430 = getelementptr inbounds nuw i8, ptr %422, i64 2
  store i16 %429, ptr %430, align 2, !tbaa !48
  %431 = trunc nsw i32 %279 to i16
  %432 = getelementptr inbounds nuw i8, ptr %422, i64 4
  store i16 %431, ptr %432, align 2, !tbaa !45
  %433 = trunc nsw i32 %278 to i16
  %434 = getelementptr inbounds nuw i8, ptr %422, i64 6
  store i16 %433, ptr %434, align 2, !tbaa !46
  br label %450

435:                                              ; preds = %414
  %436 = sext i32 %270 to i64
  %437 = getelementptr inbounds %struct.stbtt_vertex, ptr %110, i64 %436
  %438 = getelementptr inbounds nuw i8, ptr %437, i64 12
  %439 = getelementptr inbounds nuw i8, ptr %437, i64 2
  br i1 %417, label %444, label %440

440:                                              ; preds = %435
  store i8 3, ptr %438, align 2, !tbaa !33
  store i16 %287, ptr %437, align 2, !tbaa !47
  store i16 %290, ptr %439, align 2, !tbaa !48
  %441 = trunc nsw i32 %279 to i16
  %442 = getelementptr inbounds nuw i8, ptr %437, i64 4
  store i16 %441, ptr %442, align 2, !tbaa !45
  %443 = trunc nsw i32 %278 to i16
  br label %446

444:                                              ; preds = %435
  store i8 2, ptr %438, align 2, !tbaa !33
  store i16 %287, ptr %437, align 2, !tbaa !47
  store i16 %290, ptr %439, align 2, !tbaa !48
  %445 = getelementptr inbounds nuw i8, ptr %437, i64 4
  store i16 0, ptr %445, align 2, !tbaa !45
  br label %446

446:                                              ; preds = %444, %440
  %447 = phi i16 [ 0, %444 ], [ %443, %440 ]
  %448 = getelementptr inbounds nuw i8, ptr %437, i64 6
  store i16 %447, ptr %448, align 2, !tbaa !46
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
  br i1 %465, label %466, label %269, !llvm.loop !130

466:                                              ; preds = %450
  %467 = icmp eq i32 %453, 0
  br i1 %467, label %496, label %468

468:                                              ; preds = %466
  br i1 %451, label %485, label %469

469:                                              ; preds = %468
  %470 = add i32 %463, 1
  %471 = sext i32 %463 to i64
  %472 = getelementptr inbounds %struct.stbtt_vertex, ptr %110, i64 %471
  %473 = add nsw i32 %458, %454
  %474 = lshr i32 %473, 1
  %475 = add nsw i32 %459, %455
  %476 = lshr i32 %475, 1
  %477 = getelementptr inbounds nuw i8, ptr %472, i64 12
  store i8 3, ptr %477, align 2, !tbaa !33
  %478 = trunc i32 %474 to i16
  store i16 %478, ptr %472, align 2, !tbaa !47
  %479 = trunc i32 %476 to i16
  %480 = getelementptr inbounds nuw i8, ptr %472, i64 2
  store i16 %479, ptr %480, align 2, !tbaa !48
  %481 = trunc nsw i32 %454 to i16
  %482 = getelementptr inbounds nuw i8, ptr %472, i64 4
  store i16 %481, ptr %482, align 2, !tbaa !45
  %483 = trunc nsw i32 %455 to i16
  %484 = getelementptr inbounds nuw i8, ptr %472, i64 6
  store i16 %483, ptr %484, align 2, !tbaa !46
  br label %485

485:                                              ; preds = %469, %468
  %486 = phi i32 [ %470, %469 ], [ %463, %468 ]
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds %struct.stbtt_vertex, ptr %110, i64 %487
  %489 = getelementptr inbounds nuw i8, ptr %488, i64 12
  store i8 3, ptr %489, align 2, !tbaa !33
  %490 = trunc i32 %456 to i16
  store i16 %490, ptr %488, align 2, !tbaa !47
  %491 = trunc i32 %457 to i16
  %492 = getelementptr inbounds nuw i8, ptr %488, i64 2
  store i16 %491, ptr %492, align 2, !tbaa !48
  %493 = trunc nsw i32 %458 to i16
  %494 = getelementptr inbounds nuw i8, ptr %488, i64 4
  store i16 %493, ptr %494, align 2, !tbaa !45
  %495 = trunc nsw i32 %459 to i16
  br label %509

496:                                              ; preds = %466
  %497 = sext i32 %463 to i64
  %498 = getelementptr inbounds %struct.stbtt_vertex, ptr %110, i64 %497
  %499 = getelementptr inbounds nuw i8, ptr %498, i64 12
  %500 = trunc i32 %456 to i16
  %501 = trunc i32 %457 to i16
  %502 = getelementptr inbounds nuw i8, ptr %498, i64 2
  br i1 %451, label %507, label %503

503:                                              ; preds = %496
  store i8 3, ptr %499, align 2, !tbaa !33
  store i16 %500, ptr %498, align 2, !tbaa !47
  store i16 %501, ptr %502, align 2, !tbaa !48
  %504 = trunc nsw i32 %454 to i16
  %505 = getelementptr inbounds nuw i8, ptr %498, i64 4
  store i16 %504, ptr %505, align 2, !tbaa !45
  %506 = trunc nsw i32 %455 to i16
  br label %509

507:                                              ; preds = %496
  store i8 2, ptr %499, align 2, !tbaa !33
  store i16 %500, ptr %498, align 2, !tbaa !47
  store i16 %501, ptr %502, align 2, !tbaa !48
  %508 = getelementptr inbounds nuw i8, ptr %498, i64 4
  store i16 0, ptr %508, align 2, !tbaa !45
  br label %509

509:                                              ; preds = %507, %503, %485
  %510 = phi i64 [ %497, %503 ], [ %497, %507 ], [ %487, %485 ]
  %511 = phi i16 [ %506, %503 ], [ 0, %507 ], [ %495, %485 ]
  %512 = phi i32 [ %463, %503 ], [ %463, %507 ], [ %486, %485 ]
  %513 = getelementptr inbounds %struct.stbtt_vertex, ptr %110, i64 %510
  %514 = getelementptr inbounds nuw i8, ptr %513, i64 6
  store i16 %511, ptr %514, align 2, !tbaa !46
  %515 = add i32 %512, 1
  br label %1131

516:                                              ; preds = %51
  %517 = icmp slt i16 %52, 0
  br i1 %517, label %518, label %1131

518:                                              ; preds = %516
  %519 = getelementptr inbounds nuw i8, ptr %31, i64 10
  br label %520

520:                                              ; preds = %518, %1125
  %521 = phi ptr [ null, %518 ], [ %1127, %1125 ]
  %522 = phi i32 [ 0, %518 ], [ %1126, %1125 ]
  %523 = phi ptr [ %519, %518 ], [ %789, %1125 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  store ptr null, ptr %6, align 8, !tbaa !32
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
  %647 = fmul float %646, 0x3F10000000000000
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
  %673 = fmul float %672, 0x3F10000000000000
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
  %695 = fmul float %694, 0x3F10000000000000
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
  %720 = fmul float %719, 0x3F10000000000000
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
  %742 = fmul float %741, 0x3F10000000000000
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
  %764 = fmul float %763, 0x3F10000000000000
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
  %786 = fmul float %785, 0x3F10000000000000
  %787 = getelementptr inbounds nuw i8, ptr %621, i64 8
  br label %788

788:                                              ; preds = %783, %697, %692, %644
  %789 = phi ptr [ %648, %644 ], [ %696, %692 ], [ %787, %783 ], [ %621, %697 ]
  %790 = phi float [ %647, %644 ], [ %695, %692 ], [ %786, %783 ], [ 1.000000e+00, %697 ]
  %791 = phi float [ 0.000000e+00, %644 ], [ 0.000000e+00, %692 ], [ %764, %783 ], [ 0.000000e+00, %697 ]
  %792 = phi float [ 0.000000e+00, %644 ], [ 0.000000e+00, %692 ], [ %742, %783 ], [ 0.000000e+00, %697 ]
  %793 = phi float [ %647, %644 ], [ %673, %692 ], [ %720, %783 ], [ 1.000000e+00, %697 ]
  %794 = fmul float %792, %792
  %795 = tail call float @llvm.fmuladd.f32(float %793, float %793, float %794)
  %796 = fpext float %795 to double
  %797 = tail call noundef double @llvm.sqrt.f64(double %796)
  %798 = fptrunc double %797 to float
  %799 = fmul float %790, %790
  %800 = tail call float @llvm.fmuladd.f32(float %791, float %791, float %799)
  %801 = fpext float %800 to double
  %802 = tail call noundef double @llvm.sqrt.f64(double %801)
  %803 = fptrunc double %802 to float
  %804 = zext i16 %554 to i32
  %805 = call fastcc i32 @stbtt_GetGlyphShape(ptr noundef nonnull %0, i32 noundef %804, ptr noundef %6) #18
  %806 = icmp sgt i32 %805, 0
  br i1 %806, label %807, label %1125

807:                                              ; preds = %788
  %808 = load ptr, ptr %6, align 8, !tbaa !32
  %809 = zext nneg i32 %805 to i64
  %810 = icmp ult i32 %805, 9
  br i1 %810, label %1031, label %811

811:                                              ; preds = %807
  %812 = and i64 %809, 7
  %813 = icmp eq i64 %812, 0
  %814 = select i1 %813, i64 8, i64 %812
  %815 = sub nsw i64 %809, %814
  %816 = insertelement <8 x float> poison, float %791, i64 0
  %817 = shufflevector <8 x float> %816, <8 x float> poison, <8 x i32> zeroinitializer
  %818 = insertelement <8 x float> poison, float %793, i64 0
  %819 = shufflevector <8 x float> %818, <8 x float> poison, <8 x i32> zeroinitializer
  %820 = insertelement <8 x float> poison, float %623, i64 0
  %821 = shufflevector <8 x float> %820, <8 x float> poison, <8 x i32> zeroinitializer
  %822 = insertelement <8 x float> poison, float %798, i64 0
  %823 = shufflevector <8 x float> %822, <8 x float> poison, <8 x i32> zeroinitializer
  %824 = insertelement <8 x float> poison, float %790, i64 0
  %825 = shufflevector <8 x float> %824, <8 x float> poison, <8 x i32> zeroinitializer
  %826 = insertelement <8 x float> poison, float %792, i64 0
  %827 = shufflevector <8 x float> %826, <8 x float> poison, <8 x i32> zeroinitializer
  %828 = insertelement <8 x float> poison, float %622, i64 0
  %829 = shufflevector <8 x float> %828, <8 x float> poison, <8 x i32> zeroinitializer
  %830 = insertelement <8 x float> poison, float %803, i64 0
  %831 = shufflevector <8 x float> %830, <8 x float> poison, <8 x i32> zeroinitializer
  br label %832

832:                                              ; preds = %832, %811
  %833 = phi i64 [ 0, %811 ], [ %1029, %832 ]
  %834 = getelementptr inbounds nuw %struct.stbtt_vertex, ptr %808, i64 %833
  %835 = getelementptr inbounds nuw %struct.stbtt_vertex, ptr %808, i64 %833
  %836 = getelementptr inbounds nuw i8, ptr %835, i64 14
  %837 = getelementptr inbounds nuw %struct.stbtt_vertex, ptr %808, i64 %833
  %838 = getelementptr inbounds nuw i8, ptr %837, i64 28
  %839 = getelementptr inbounds nuw %struct.stbtt_vertex, ptr %808, i64 %833
  %840 = getelementptr inbounds nuw i8, ptr %839, i64 42
  %841 = getelementptr inbounds nuw %struct.stbtt_vertex, ptr %808, i64 %833
  %842 = getelementptr inbounds nuw i8, ptr %841, i64 56
  %843 = getelementptr inbounds nuw %struct.stbtt_vertex, ptr %808, i64 %833
  %844 = getelementptr inbounds nuw i8, ptr %843, i64 70
  %845 = getelementptr inbounds nuw %struct.stbtt_vertex, ptr %808, i64 %833
  %846 = getelementptr inbounds nuw i8, ptr %845, i64 84
  %847 = getelementptr inbounds nuw %struct.stbtt_vertex, ptr %808, i64 %833
  %848 = getelementptr inbounds nuw i8, ptr %847, i64 98
  %849 = load i16, ptr %834, align 2, !tbaa !47
  %850 = load i16, ptr %836, align 2, !tbaa !47
  %851 = load i16, ptr %838, align 2, !tbaa !47
  %852 = load i16, ptr %840, align 2, !tbaa !47
  %853 = load i16, ptr %842, align 2, !tbaa !47
  %854 = load i16, ptr %844, align 2, !tbaa !47
  %855 = load i16, ptr %846, align 2, !tbaa !47
  %856 = load i16, ptr %848, align 2, !tbaa !47
  %857 = insertelement <8 x i16> poison, i16 %849, i64 0
  %858 = insertelement <8 x i16> %857, i16 %850, i64 1
  %859 = insertelement <8 x i16> %858, i16 %851, i64 2
  %860 = insertelement <8 x i16> %859, i16 %852, i64 3
  %861 = insertelement <8 x i16> %860, i16 %853, i64 4
  %862 = insertelement <8 x i16> %861, i16 %854, i64 5
  %863 = insertelement <8 x i16> %862, i16 %855, i64 6
  %864 = insertelement <8 x i16> %863, i16 %856, i64 7
  %865 = getelementptr inbounds nuw i8, ptr %834, i64 2
  %866 = getelementptr inbounds nuw i8, ptr %835, i64 16
  %867 = getelementptr inbounds nuw i8, ptr %837, i64 30
  %868 = getelementptr inbounds nuw i8, ptr %839, i64 44
  %869 = getelementptr inbounds nuw i8, ptr %841, i64 58
  %870 = getelementptr inbounds nuw i8, ptr %843, i64 72
  %871 = getelementptr inbounds nuw i8, ptr %845, i64 86
  %872 = getelementptr inbounds nuw i8, ptr %847, i64 100
  %873 = load i16, ptr %865, align 2, !tbaa !48
  %874 = load i16, ptr %866, align 2, !tbaa !48
  %875 = load i16, ptr %867, align 2, !tbaa !48
  %876 = load i16, ptr %868, align 2, !tbaa !48
  %877 = load i16, ptr %869, align 2, !tbaa !48
  %878 = load i16, ptr %870, align 2, !tbaa !48
  %879 = load i16, ptr %871, align 2, !tbaa !48
  %880 = load i16, ptr %872, align 2, !tbaa !48
  %881 = insertelement <8 x i16> poison, i16 %873, i64 0
  %882 = insertelement <8 x i16> %881, i16 %874, i64 1
  %883 = insertelement <8 x i16> %882, i16 %875, i64 2
  %884 = insertelement <8 x i16> %883, i16 %876, i64 3
  %885 = insertelement <8 x i16> %884, i16 %877, i64 4
  %886 = insertelement <8 x i16> %885, i16 %878, i64 5
  %887 = insertelement <8 x i16> %886, i16 %879, i64 6
  %888 = insertelement <8 x i16> %887, i16 %880, i64 7
  %889 = sitofp <8 x i16> %864 to <8 x float>
  %890 = sitofp <8 x i16> %888 to <8 x float>
  %891 = fmul <8 x float> %817, %890
  %892 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %819, <8 x float> %889, <8 x float> %891)
  %893 = fadd <8 x float> %821, %892
  %894 = fmul <8 x float> %893, %823
  %895 = fcmp uno <8 x float> %894, zeroinitializer
  %896 = fcmp ogt <8 x float> %894, splat (float 3.276700e+04)
  %897 = fcmp olt <8 x float> %894, splat (float -3.276800e+04)
  %898 = xor <8 x i1> %897, %896
  %899 = or <8 x i1> %895, %898
  %900 = fptosi <8 x float> %894 to <8 x i16>
  %901 = select <8 x i1> %896, <8 x i16> splat (i16 32767), <8 x i16> zeroinitializer
  %902 = select <8 x i1> %897, <8 x i16> splat (i16 -32768), <8 x i16> %901
  %903 = select <8 x i1> %899, <8 x i16> %902, <8 x i16> %900
  %904 = extractelement <8 x i16> %903, i64 4
  %905 = extractelement <8 x i16> %903, i64 5
  %906 = extractelement <8 x i16> %903, i64 6
  %907 = extractelement <8 x i16> %903, i64 7
  store i16 %904, ptr %842, align 2, !tbaa !47
  store i16 %905, ptr %844, align 2, !tbaa !47
  store i16 %906, ptr %846, align 2, !tbaa !47
  store i16 %907, ptr %848, align 2, !tbaa !47
  %908 = fmul <8 x float> %825, %890
  %909 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %827, <8 x float> %889, <8 x float> %908)
  %910 = fadd <8 x float> %829, %909
  %911 = fmul <8 x float> %910, %831
  %912 = fcmp uno <8 x float> %911, zeroinitializer
  %913 = fcmp ogt <8 x float> %911, splat (float 3.276700e+04)
  %914 = fcmp olt <8 x float> %911, splat (float -3.276800e+04)
  %915 = xor <8 x i1> %914, %913
  %916 = or <8 x i1> %912, %915
  %917 = fptosi <8 x float> %911 to <8 x i16>
  %918 = select <8 x i1> %913, <8 x i16> splat (i16 32767), <8 x i16> zeroinitializer
  %919 = select <8 x i1> %914, <8 x i16> splat (i16 -32768), <8 x i16> %918
  %920 = select <8 x i1> %916, <8 x i16> %919, <8 x i16> %917
  %921 = extractelement <8 x i16> %920, i64 4
  %922 = extractelement <8 x i16> %920, i64 5
  %923 = extractelement <8 x i16> %920, i64 6
  %924 = extractelement <8 x i16> %920, i64 7
  store i16 %921, ptr %869, align 2, !tbaa !48
  store i16 %922, ptr %870, align 2, !tbaa !48
  store i16 %923, ptr %871, align 2, !tbaa !48
  store i16 %924, ptr %872, align 2, !tbaa !48
  %925 = getelementptr inbounds nuw i8, ptr %834, i64 4
  %926 = getelementptr inbounds nuw i8, ptr %835, i64 18
  %927 = getelementptr inbounds nuw i8, ptr %837, i64 32
  %928 = getelementptr inbounds nuw i8, ptr %839, i64 46
  %929 = getelementptr inbounds nuw i8, ptr %841, i64 60
  %930 = getelementptr inbounds nuw i8, ptr %843, i64 74
  %931 = getelementptr inbounds nuw i8, ptr %845, i64 88
  %932 = getelementptr inbounds nuw i8, ptr %847, i64 102
  %933 = load i16, ptr %925, align 2, !tbaa !45
  %934 = load i16, ptr %926, align 2, !tbaa !45
  %935 = load i16, ptr %927, align 2, !tbaa !45
  %936 = load i16, ptr %928, align 2, !tbaa !45
  %937 = load i16, ptr %929, align 2, !tbaa !45
  %938 = load i16, ptr %930, align 2, !tbaa !45
  %939 = load i16, ptr %931, align 2, !tbaa !45
  %940 = load i16, ptr %932, align 2, !tbaa !45
  %941 = insertelement <8 x i16> poison, i16 %933, i64 0
  %942 = insertelement <8 x i16> %941, i16 %934, i64 1
  %943 = insertelement <8 x i16> %942, i16 %935, i64 2
  %944 = insertelement <8 x i16> %943, i16 %936, i64 3
  %945 = insertelement <8 x i16> %944, i16 %937, i64 4
  %946 = insertelement <8 x i16> %945, i16 %938, i64 5
  %947 = insertelement <8 x i16> %946, i16 %939, i64 6
  %948 = insertelement <8 x i16> %947, i16 %940, i64 7
  %949 = getelementptr inbounds nuw i8, ptr %834, i64 6
  %950 = getelementptr inbounds nuw i8, ptr %835, i64 20
  %951 = getelementptr inbounds nuw i8, ptr %837, i64 34
  %952 = getelementptr inbounds nuw i8, ptr %839, i64 48
  %953 = getelementptr inbounds nuw i8, ptr %841, i64 62
  %954 = getelementptr inbounds nuw i8, ptr %843, i64 76
  %955 = getelementptr inbounds nuw i8, ptr %845, i64 90
  %956 = getelementptr inbounds nuw i8, ptr %847, i64 104
  %957 = load i16, ptr %949, align 2, !tbaa !46
  %958 = load i16, ptr %950, align 2, !tbaa !46
  %959 = load i16, ptr %951, align 2, !tbaa !46
  %960 = load i16, ptr %952, align 2, !tbaa !46
  %961 = load i16, ptr %953, align 2, !tbaa !46
  %962 = load i16, ptr %954, align 2, !tbaa !46
  %963 = load i16, ptr %955, align 2, !tbaa !46
  %964 = load i16, ptr %956, align 2, !tbaa !46
  %965 = insertelement <8 x i16> poison, i16 %957, i64 0
  %966 = insertelement <8 x i16> %965, i16 %958, i64 1
  %967 = insertelement <8 x i16> %966, i16 %959, i64 2
  %968 = insertelement <8 x i16> %967, i16 %960, i64 3
  %969 = insertelement <8 x i16> %968, i16 %961, i64 4
  %970 = insertelement <8 x i16> %969, i16 %962, i64 5
  %971 = insertelement <8 x i16> %970, i16 %963, i64 6
  %972 = insertelement <8 x i16> %971, i16 %964, i64 7
  %973 = sitofp <8 x i16> %948 to <8 x float>
  %974 = sitofp <8 x i16> %972 to <8 x float>
  %975 = fmul <8 x float> %817, %974
  %976 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %819, <8 x float> %973, <8 x float> %975)
  %977 = fadd <8 x float> %821, %976
  %978 = fmul <8 x float> %977, %823
  %979 = fcmp uno <8 x float> %978, zeroinitializer
  %980 = fcmp ogt <8 x float> %978, splat (float 3.276700e+04)
  %981 = fcmp olt <8 x float> %978, splat (float -3.276800e+04)
  %982 = xor <8 x i1> %981, %980
  %983 = or <8 x i1> %979, %982
  %984 = fptosi <8 x float> %978 to <8 x i16>
  %985 = select <8 x i1> %980, <8 x i16> splat (i16 32767), <8 x i16> zeroinitializer
  %986 = select <8 x i1> %981, <8 x i16> splat (i16 -32768), <8 x i16> %985
  %987 = select <8 x i1> %983, <8 x i16> %986, <8 x i16> %984
  %988 = extractelement <8 x i16> %987, i64 2
  %989 = extractelement <8 x i16> %987, i64 4
  %990 = extractelement <8 x i16> %987, i64 5
  %991 = extractelement <8 x i16> %987, i64 6
  %992 = extractelement <8 x i16> %987, i64 7
  store i16 %989, ptr %929, align 2, !tbaa !45
  store i16 %990, ptr %930, align 2, !tbaa !45
  store i16 %991, ptr %931, align 2, !tbaa !45
  store i16 %992, ptr %932, align 2, !tbaa !45
  %993 = fmul <8 x float> %825, %974
  %994 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %827, <8 x float> %973, <8 x float> %993)
  %995 = fadd <8 x float> %829, %994
  %996 = fmul <8 x float> %995, %831
  %997 = fcmp uno <8 x float> %996, zeroinitializer
  %998 = fcmp ogt <8 x float> %996, splat (float 3.276700e+04)
  %999 = fcmp olt <8 x float> %996, splat (float -3.276800e+04)
  %1000 = xor <8 x i1> %999, %998
  %1001 = or <8 x i1> %997, %1000
  %1002 = fptosi <8 x float> %996 to <8 x i16>
  %1003 = select <8 x i1> %998, <8 x i16> splat (i16 32767), <8 x i16> zeroinitializer
  %1004 = select <8 x i1> %999, <8 x i16> splat (i16 -32768), <8 x i16> %1003
  %1005 = select <8 x i1> %1001, <8 x i16> %1004, <8 x i16> %1002
  %1006 = extractelement <8 x i16> %1005, i64 4
  %1007 = extractelement <8 x i16> %1005, i64 5
  %1008 = extractelement <8 x i16> %1005, i64 6
  %1009 = extractelement <8 x i16> %1005, i64 7
  %1010 = shufflevector <8 x i16> %903, <8 x i16> %920, <4 x i32> <i32 0, i32 8, i32 poison, i32 poison>
  %1011 = shufflevector <8 x i16> %987, <8 x i16> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %1012 = shufflevector <4 x i16> %1010, <4 x i16> %1011, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %1013 = shufflevector <8 x i16> %1005, <8 x i16> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %1014 = shufflevector <4 x i16> %1012, <4 x i16> %1013, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  store <4 x i16> %1014, ptr %834, align 2, !tbaa !42
  %1015 = shufflevector <8 x i16> %903, <8 x i16> %920, <4 x i32> <i32 1, i32 9, i32 poison, i32 poison>
  %1016 = shufflevector <8 x i16> %987, <8 x i16> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %1017 = shufflevector <4 x i16> %1015, <4 x i16> %1016, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %1018 = shufflevector <8 x i16> %1005, <8 x i16> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %1019 = shufflevector <4 x i16> %1017, <4 x i16> %1018, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  store <4 x i16> %1019, ptr %836, align 2, !tbaa !42
  %1020 = shufflevector <8 x i16> %903, <8 x i16> %920, <4 x i32> <i32 2, i32 10, i32 poison, i32 poison>
  %1021 = insertelement <4 x i16> %1020, i16 %988, i64 2
  %1022 = shufflevector <8 x i16> %1005, <8 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 2, i32 poison>
  %1023 = shufflevector <4 x i16> %1021, <4 x i16> %1022, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  store <4 x i16> %1023, ptr %838, align 2, !tbaa !42
  %1024 = shufflevector <8 x i16> %903, <8 x i16> %920, <4 x i32> <i32 3, i32 11, i32 poison, i32 poison>
  %1025 = shufflevector <8 x i16> %987, <8 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 3>
  %1026 = shufflevector <4 x i16> %1024, <4 x i16> %1025, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %1027 = shufflevector <8 x i16> %1005, <8 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 3>
  %1028 = shufflevector <4 x i16> %1026, <4 x i16> %1027, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  store <4 x i16> %1028, ptr %840, align 2, !tbaa !42
  store i16 %1006, ptr %953, align 2, !tbaa !46
  store i16 %1007, ptr %954, align 2, !tbaa !46
  store i16 %1008, ptr %955, align 2, !tbaa !46
  store i16 %1009, ptr %956, align 2, !tbaa !46
  %1029 = add nuw i64 %833, 8
  %1030 = icmp eq i64 %1029, %815
  br i1 %1030, label %1031, label %832, !llvm.loop !131

1031:                                             ; preds = %832, %807
  %1032 = phi i64 [ 0, %807 ], [ %815, %832 ]
  br label %1033

1033:                                             ; preds = %1031, %1097
  %1034 = phi i64 [ %1099, %1097 ], [ %1032, %1031 ]
  %1035 = getelementptr inbounds nuw %struct.stbtt_vertex, ptr %808, i64 %1034
  %1036 = load i16, ptr %1035, align 2, !tbaa !47
  %1037 = getelementptr inbounds nuw i8, ptr %1035, i64 2
  %1038 = load i16, ptr %1037, align 2, !tbaa !48
  %1039 = sitofp i16 %1036 to float
  %1040 = sitofp i16 %1038 to float
  %1041 = fmul float %791, %1040
  %1042 = tail call float @llvm.fmuladd.f32(float %793, float %1039, float %1041)
  %1043 = fadd float %623, %1042
  %1044 = fmul float %1043, %798
  %1045 = fcmp ord float %1044, 0.000000e+00
  br i1 %1045, label %1046, label %1052

1046:                                             ; preds = %1033
  %1047 = fcmp ogt float %1044, 3.276700e+04
  br i1 %1047, label %1052, label %1048

1048:                                             ; preds = %1046
  %1049 = fcmp olt float %1044, -3.276800e+04
  br i1 %1049, label %1052, label %1050

1050:                                             ; preds = %1048
  %1051 = fptosi float %1044 to i16
  br label %1052

1052:                                             ; preds = %1033, %1046, %1048, %1050
  %1053 = phi i16 [ 0, %1033 ], [ 32767, %1046 ], [ %1051, %1050 ], [ -32768, %1048 ]
  store i16 %1053, ptr %1035, align 2, !tbaa !47
  %1054 = fmul float %790, %1040
  %1055 = tail call float @llvm.fmuladd.f32(float %792, float %1039, float %1054)
  %1056 = fadd float %622, %1055
  %1057 = fmul float %1056, %803
  %1058 = fcmp ord float %1057, 0.000000e+00
  br i1 %1058, label %1059, label %1065

1059:                                             ; preds = %1052
  %1060 = fcmp ogt float %1057, 3.276700e+04
  br i1 %1060, label %1065, label %1061

1061:                                             ; preds = %1059
  %1062 = fcmp olt float %1057, -3.276800e+04
  br i1 %1062, label %1065, label %1063

1063:                                             ; preds = %1061
  %1064 = fptosi float %1057 to i16
  br label %1065

1065:                                             ; preds = %1052, %1059, %1061, %1063
  %1066 = phi i16 [ 0, %1052 ], [ 32767, %1059 ], [ %1064, %1063 ], [ -32768, %1061 ]
  store i16 %1066, ptr %1037, align 2, !tbaa !48
  %1067 = getelementptr inbounds nuw i8, ptr %1035, i64 4
  %1068 = load i16, ptr %1067, align 2, !tbaa !45
  %1069 = getelementptr inbounds nuw i8, ptr %1035, i64 6
  %1070 = load i16, ptr %1069, align 2, !tbaa !46
  %1071 = sitofp i16 %1068 to float
  %1072 = sitofp i16 %1070 to float
  %1073 = fmul float %791, %1072
  %1074 = tail call float @llvm.fmuladd.f32(float %793, float %1071, float %1073)
  %1075 = fadd float %623, %1074
  %1076 = fmul float %1075, %798
  %1077 = fcmp ord float %1076, 0.000000e+00
  br i1 %1077, label %1078, label %1084

1078:                                             ; preds = %1065
  %1079 = fcmp ogt float %1076, 3.276700e+04
  br i1 %1079, label %1084, label %1080

1080:                                             ; preds = %1078
  %1081 = fcmp olt float %1076, -3.276800e+04
  br i1 %1081, label %1084, label %1082

1082:                                             ; preds = %1080
  %1083 = fptosi float %1076 to i16
  br label %1084

1084:                                             ; preds = %1065, %1078, %1080, %1082
  %1085 = phi i16 [ 0, %1065 ], [ 32767, %1078 ], [ %1083, %1082 ], [ -32768, %1080 ]
  store i16 %1085, ptr %1067, align 2, !tbaa !45
  %1086 = fmul float %790, %1072
  %1087 = tail call float @llvm.fmuladd.f32(float %792, float %1071, float %1086)
  %1088 = fadd float %622, %1087
  %1089 = fmul float %1088, %803
  %1090 = fcmp ord float %1089, 0.000000e+00
  br i1 %1090, label %1091, label %1097

1091:                                             ; preds = %1084
  %1092 = fcmp ogt float %1089, 3.276700e+04
  br i1 %1092, label %1097, label %1093

1093:                                             ; preds = %1091
  %1094 = fcmp olt float %1089, -3.276800e+04
  br i1 %1094, label %1097, label %1095

1095:                                             ; preds = %1093
  %1096 = fptosi float %1089 to i16
  br label %1097

1097:                                             ; preds = %1084, %1091, %1093, %1095
  %1098 = phi i16 [ 0, %1084 ], [ 32767, %1091 ], [ %1096, %1095 ], [ -32768, %1093 ]
  store i16 %1098, ptr %1069, align 2, !tbaa !46
  %1099 = add nuw nsw i64 %1034, 1
  %1100 = icmp eq i64 %1099, %809
  br i1 %1100, label %1101, label %1033, !llvm.loop !132

1101:                                             ; preds = %1097
  %1102 = add i32 %805, %522
  %1103 = sext i32 %1102 to i64
  %1104 = mul nsw i64 %1103, 14
  %1105 = add nsw i64 %1104, 15
  %1106 = and i64 %1105, -16
  %1107 = load i64, ptr @arena_used, align 8, !tbaa !40
  %1108 = sub i64 8388608, %1107
  %1109 = icmp ugt i64 %1106, %1108
  br i1 %1109, label %1130, label %1110

1110:                                             ; preds = %1101
  %1111 = getelementptr inbounds nuw i8, ptr @arena, i64 %1107
  %1112 = add i64 %1107, %1106
  store i64 %1112, ptr @arena_used, align 8, !tbaa !40
  %1113 = icmp sgt i32 %522, 0
  %1114 = icmp ne ptr %521, null
  %1115 = select i1 %1113, i1 %1114, i1 false
  br i1 %1115, label %1116, label %1120

1116:                                             ; preds = %1110
  %1117 = zext nneg i32 %522 to i64
  %1118 = mul nuw nsw i64 %1117, 14
  %1119 = tail call ptr @memcpy(ptr noundef nonnull %1111, ptr noundef nonnull %521, i64 noundef %1118) #19
  br label %1120

1120:                                             ; preds = %1116, %1110
  %1121 = sext i32 %522 to i64
  %1122 = getelementptr inbounds %struct.stbtt_vertex, ptr %1111, i64 %1121
  %1123 = mul nuw nsw i64 %809, 14
  %1124 = tail call ptr @memcpy(ptr noundef nonnull %1122, ptr noundef nonnull %808, i64 noundef %1123) #19
  br label %1125

1125:                                             ; preds = %788, %1120
  %1126 = phi i32 [ %1102, %1120 ], [ %522, %788 ]
  %1127 = phi ptr [ %1111, %1120 ], [ %521, %788 ]
  %1128 = and i32 %534, 32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %1129 = icmp eq i32 %1128, 0
  br i1 %1129, label %1131, label %520, !llvm.loop !133

1130:                                             ; preds = %1101
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %1160

1131:                                             ; preds = %1125, %509, %516
  %1132 = phi i32 [ %515, %509 ], [ 0, %516 ], [ %1126, %1125 ]
  %1133 = phi ptr [ %110, %509 ], [ null, %516 ], [ %1127, %1125 ]
  store ptr %1133, ptr %2, align 8, !tbaa !32
  br label %1160

1134:                                             ; preds = %18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false)
  store i32 1, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false)
  %1135 = call fastcc i32 @stbtt__run_charstring(ptr noundef nonnull readonly %0, i32 noundef %1, ptr noundef %4) #18
  %1136 = icmp eq i32 %1135, 0
  br i1 %1136, label %1157, label %1137

1137:                                             ; preds = %1134
  %1138 = getelementptr inbounds nuw i8, ptr %4, i64 48
  %1139 = load i32, ptr %1138, align 8, !tbaa !116
  %1140 = sext i32 %1139 to i64
  %1141 = mul nsw i64 %1140, 14
  %1142 = add nsw i64 %1141, 15
  %1143 = and i64 %1142, -16
  %1144 = load i64, ptr @arena_used, align 8, !tbaa !40
  %1145 = sub i64 8388608, %1144
  %1146 = icmp ugt i64 %1143, %1145
  br i1 %1146, label %1147, label %1148

1147:                                             ; preds = %1137
  store ptr null, ptr %2, align 8, !tbaa !32
  br label %1158

1148:                                             ; preds = %1137
  %1149 = getelementptr inbounds nuw i8, ptr @arena, i64 %1144
  %1150 = add i64 %1143, %1144
  store i64 %1150, ptr @arena_used, align 8, !tbaa !40
  store ptr %1149, ptr %2, align 8, !tbaa !32
  %1151 = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %1149, ptr %1151, align 8, !tbaa !114
  %1152 = call fastcc i32 @stbtt__run_charstring(ptr noundef nonnull readonly %0, i32 noundef %1, ptr noundef %5) #18
  %1153 = icmp eq i32 %1152, 0
  br i1 %1153, label %1157, label %1154

1154:                                             ; preds = %1148
  %1155 = getelementptr inbounds nuw i8, ptr %5, i64 48
  %1156 = load i32, ptr %1155, align 8, !tbaa !116
  br label %1158

1157:                                             ; preds = %1148, %1134
  store ptr null, ptr %2, align 8, !tbaa !32
  br label %1158

1158:                                             ; preds = %1147, %1154, %1157
  %1159 = phi i32 [ 0, %1157 ], [ %1156, %1154 ], [ 0, %1147 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %1160

1160:                                             ; preds = %1130, %97, %1131, %24, %1158
  %1161 = phi i32 [ %1159, %1158 ], [ 0, %1130 ], [ %1132, %1131 ], [ 0, %24 ], [ 0, %97 ]
  %1162 = load i32, ptr @stbtt_GetGlyphShape.depth, align 4, !tbaa !4
  %1163 = add i32 %1162, -1
  store i32 %1163, ptr @stbtt_GetGlyphShape.depth, align 4, !tbaa !4
  br label %1164

1164:                                             ; preds = %1160, %17
  %1165 = phi i32 [ 0, %17 ], [ %1161, %1160 ]
  ret i32 %1165
}

declare ptr @memset(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #12

declare ptr @memcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #10

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite)
define internal fastcc void @stbtt__tesselate_curve(ptr noundef writeonly captures(address_is_null) %0, ptr noundef nonnull captures(none) %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, i32 noundef %9) unnamed_addr #13 {
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
  tail call fastcc void @stbtt__tesselate_curve(ptr noundef %0, ptr noundef %1, float noundef %23, float noundef %22, float noundef %42, float noundef %45, float noundef %34, float noundef %30, float noundef %8, i32 noundef %46) #18
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
  store float %7, ptr %57, align 4, !tbaa !55
  br label %58

58:                                               ; preds = %51, %54
  %59 = add i32 %52, 1
  store i32 %59, ptr %1, align 4, !tbaa !4
  br label %60

60:                                               ; preds = %39, %10, %58
  ret void
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite)
define internal fastcc void @stbtt__tesselate_cubic(ptr noundef writeonly captures(address_is_null) %0, ptr noundef nonnull captures(none) %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, float noundef %9, float noundef %10, i32 noundef %11) unnamed_addr #13 {
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
  tail call fastcc void @stbtt__tesselate_cubic(ptr noundef %0, ptr noundef %1, float noundef %21, float noundef %20, float noundef %73, float noundef %84, float noundef %78, float noundef %89, float noundef %81, float noundef %92, float noundef %10, i32 noundef %93) #18
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
  store float %9, ptr %101, align 4, !tbaa !55
  br label %102

102:                                              ; preds = %95, %98
  %103 = add i32 %96, 1
  store i32 %103, ptr %1, align 4, !tbaa !4
  br label %104

104:                                              ; preds = %58, %12, %102
  ret void
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite)
define internal fastcc void @stbtt__sort_edges_quicksort(ptr noundef nonnull %0, i32 noundef %1) unnamed_addr #13 {
  %3 = alloca %struct.stbtt__edge, align 4
  %4 = icmp sgt i32 %1, 12
  br i1 %4, label %5, label %62

5:                                                ; preds = %2, %58
  %6 = phi ptr [ %60, %58 ], [ %0, %2 ]
  %7 = phi i32 [ %59, %58 ], [ %1, %2 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %8 = lshr i32 %7, 1
  %9 = getelementptr inbounds nuw i8, ptr %6, i64 4
  %10 = load float, ptr %9, align 4, !tbaa !62
  %11 = zext nneg i32 %8 to i64
  %12 = getelementptr inbounds nuw %struct.stbtt__edge, ptr %6, i64 %11
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 4
  %14 = load float, ptr %13, align 4, !tbaa !62
  %15 = add nsw i32 %7, -1
  %16 = zext nneg i32 %15 to i64
  %17 = getelementptr inbounds nuw %struct.stbtt__edge, ptr %6, i64 %16
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 4
  %19 = load float, ptr %18, align 4, !tbaa !62
  %20 = fcmp olt float %14, %19
  %21 = fcmp uge float %10, %14
  %22 = xor i1 %21, %20
  br i1 %22, label %28, label %23

23:                                               ; preds = %5
  %24 = fcmp uge float %10, %19
  %25 = xor i1 %24, %20
  %26 = select i1 %25, i64 0, i64 %16
  %27 = getelementptr inbounds nuw %struct.stbtt__edge, ptr %6, i64 %26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %27, i64 20, i1 false), !tbaa.struct !63
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %27, ptr noundef nonnull align 4 dereferenceable(20) %12, i64 20, i1 false), !tbaa.struct !63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %12, ptr noundef nonnull align 4 dereferenceable(20) %3, i64 20, i1 false), !tbaa.struct !63
  br label %28

28:                                               ; preds = %23, %5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %6, i64 20, i1 false), !tbaa.struct !63
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %6, ptr noundef nonnull align 4 dereferenceable(20) %12, i64 20, i1 false), !tbaa.struct !63
  br label %29

29:                                               ; preds = %52, %28
  %30 = phi ptr [ %45, %52 ], [ %12, %28 ]
  %31 = phi i32 [ %41, %52 ], [ 1, %28 ]
  %32 = phi i32 [ %49, %52 ], [ %15, %28 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %30, ptr noundef nonnull align 4 dereferenceable(20) %3, i64 20, i1 false)
  %33 = load float, ptr %9, align 4, !tbaa !62
  br label %34

34:                                               ; preds = %34, %29
  %35 = phi i32 [ %31, %29 ], [ %41, %34 ]
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.stbtt__edge, ptr %6, i64 %36
  %38 = getelementptr inbounds nuw i8, ptr %37, i64 4
  %39 = load float, ptr %38, align 4, !tbaa !62
  %40 = fcmp olt float %39, %33
  %41 = add i32 %35, 1
  br i1 %40, label %34, label %42

42:                                               ; preds = %34, %42
  %43 = phi i32 [ %49, %42 ], [ %32, %34 ]
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.stbtt__edge, ptr %6, i64 %44
  %46 = getelementptr inbounds nuw i8, ptr %45, i64 4
  %47 = load float, ptr %46, align 4, !tbaa !62
  %48 = fcmp olt float %33, %47
  %49 = add i32 %43, -1
  br i1 %48, label %42, label %50

50:                                               ; preds = %42
  %51 = icmp slt i32 %35, %43
  br i1 %51, label %52, label %53

52:                                               ; preds = %50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %37, i64 20, i1 false), !tbaa.struct !63
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %37, ptr noundef nonnull align 4 dereferenceable(20) %45, i64 20, i1 false), !tbaa.struct !63
  br label %29

53:                                               ; preds = %50
  %54 = sub i32 %7, %35
  %55 = icmp slt i32 %43, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  tail call fastcc void @stbtt__sort_edges_quicksort(ptr noundef %6, i32 noundef %43) #18
  br label %58

57:                                               ; preds = %53
  tail call fastcc void @stbtt__sort_edges_quicksort(ptr noundef %37, i32 noundef %54) #18
  br label %58

58:                                               ; preds = %57, %56
  %59 = phi i32 [ %54, %56 ], [ %43, %57 ]
  %60 = phi ptr [ %37, %56 ], [ %6, %57 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %61 = icmp sgt i32 %59, 12
  br i1 %61, label %5, label %62, !llvm.loop !135

62:                                               ; preds = %58, %2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem0: none, target_mem1: none)
define internal fastcc range(i32 -1, 65536) i32 @stbtt__GetGlyphClass(ptr noundef readonly captures(address) %0, i32 noundef %1) unnamed_addr #5 {
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
  br i1 %201, label %205, label %123, !llvm.loop !136

202:                                              ; preds = %194, %188
  %203 = phi i16 [ %197, %194 ], [ %189, %188 ]
  %204 = zext i16 %203 to i32
  br label %205

205:                                              ; preds = %198, %116, %63, %68, %202, %94, %22
  %206 = phi i32 [ %204, %202 ], [ -1, %22 ], [ %96, %94 ], [ 0, %63 ], [ 0, %68 ], [ 0, %116 ], [ 0, %198 ]
  ret i32 %206
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #14

attributes #0 = { nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem0: none, target_mem1: none) "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem0: none, target_mem1: none) "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem0: none, target_mem1: none) "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem0: none, target_mem1: none) "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem0: none, target_mem1: none) "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem0: none, target_mem1: none) "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nosync nounwind memory(argmem: readwrite) "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nounwind }
attributes #18 = { nobuiltin "no-builtins" }
attributes #19 = { nobuiltin nounwind "no-builtins" }

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
!23 = !{i64 0, i64 8, !8, i64 8, i64 4, !4, i64 12, i64 4, !4}
!24 = !{!14, !5, i64 8}
!25 = !{!14, !5, i64 12}
!26 = !{!14, !9, i64 0}
!27 = !{!13, !5, i64 20}
!28 = !{!13, !5, i64 52}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!13, !5, i64 60}
!32 = !{!10, !10, i64 0}
!33 = !{!34, !6, i64 12}
!34 = !{!"", !35, i64 0, !35, i64 2, !35, i64 4, !35, i64 6, !35, i64 8, !35, i64 10, !6, i64 12, !6, i64 13}
!35 = !{!"short", !6, i64 0}
!36 = distinct !{!36, !30, !37, !38}
!37 = !{!"llvm.loop.isvectorized", i32 1}
!38 = !{!"llvm.loop.unroll.runtime.disable"}
!39 = distinct !{!39, !30, !38, !37}
!40 = !{!41, !41, i64 0}
!41 = !{!"long", !6, i64 0}
!42 = !{!35, !35, i64 0}
!43 = !{!44, !44, i64 0}
!44 = !{!"float", !6, i64 0}
!45 = !{!34, !35, i64 4}
!46 = !{!34, !35, i64 6}
!47 = !{!34, !35, i64 0}
!48 = !{!34, !35, i64 2}
!49 = !{!34, !35, i64 8}
!50 = !{!34, !35, i64 10}
!51 = distinct !{!51, !30}
!52 = distinct !{!52, !30}
!53 = distinct !{!53, !30, !37, !38}
!54 = distinct !{!54, !30, !38, !37}
!55 = !{!56, !44, i64 4}
!56 = !{!"", !44, i64 0, !44, i64 4}
!57 = !{!58, !5, i64 16}
!58 = !{!"stbtt__edge", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !5, i64 16}
!59 = distinct !{!59, !30}
!60 = distinct !{!60, !30}
!61 = !{i64 0, i64 4, !43, i64 4, i64 4, !43, i64 8, i64 4, !4}
!62 = !{!58, !44, i64 4}
!63 = !{i64 0, i64 4, !43, i64 4, i64 4, !43, i64 8, i64 4, !43, i64 12, i64 4, !43, i64 16, i64 4, !4}
!64 = distinct !{!64, !30}
!65 = !{!66, !66, i64 0}
!66 = !{!"p1 _ZTS18stbtt__active_edge", !10, i64 0}
!67 = !{!68, !44, i64 28}
!68 = !{!"stbtt__active_edge", !66, i64 0, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28}
!69 = !{!68, !66, i64 0}
!70 = !{!68, !44, i64 20}
!71 = distinct !{!71, !30}
!72 = !{!58, !44, i64 12}
!73 = !{!74, !75, i64 0}
!74 = !{!"stbtt__hheap_chunk", !75, i64 0}
!75 = !{!"p1 _ZTS18stbtt__hheap_chunk", !10, i64 0}
!76 = !{!58, !44, i64 8}
!77 = !{!58, !44, i64 0}
!78 = !{!68, !44, i64 12}
!79 = !{!68, !44, i64 16}
!80 = !{!68, !44, i64 8}
!81 = !{!68, !44, i64 24}
!82 = distinct !{!82, !30}
!83 = distinct !{!83, !30}
!84 = distinct !{!84, !30}
!85 = distinct !{!85, !30}
!86 = distinct !{!86, !30}
!87 = distinct !{!87, !30}
!88 = distinct !{!88, !30}
!89 = distinct !{!89, !30}
!90 = distinct !{!90, !30}
!91 = distinct !{!91, !30}
!92 = distinct !{!92, !30}
!93 = distinct !{!93, !30}
!94 = distinct !{!94, !30}
!95 = distinct !{!95, !30}
!96 = distinct !{!96, !30}
!97 = distinct !{!97, !30}
!98 = distinct !{!98, !30}
!99 = distinct !{!99, !30}
!100 = distinct !{!100, !30}
!101 = distinct !{!101, !30}
!102 = distinct !{!102, !30}
!103 = !{!13, !5, i64 56}
!104 = distinct !{!104, !30}
!105 = distinct !{!105, !30}
!106 = !{!13, !5, i64 76}
!107 = !{!108, !5, i64 0}
!108 = !{!"", !5, i64 0, !5, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !10, i64 40, !5, i64 48}
!109 = !{!108, !5, i64 28}
!110 = !{!108, !5, i64 4}
!111 = !{!108, !5, i64 36}
!112 = !{!108, !5, i64 24}
!113 = !{!108, !5, i64 32}
!114 = !{!108, !10, i64 40}
!115 = distinct !{!115, !30}
!116 = !{!108, !5, i64 48}
!117 = distinct !{!117, !30}
!118 = distinct !{!118, !30}
!119 = distinct !{!119, !30}
!120 = distinct !{!120, !30, !121}
!121 = !{!"llvm.loop.peeled.count", i32 1}
!122 = !{!13, !5, i64 156}
!123 = distinct !{!123, !30}
!124 = distinct !{!124, !30}
!125 = !{!108, !44, i64 16}
!126 = !{!108, !44, i64 20}
!127 = distinct !{!127, !30}
!128 = distinct !{!128, !30}
!129 = distinct !{!129, !30}
!130 = distinct !{!130, !30}
!131 = distinct !{!131, !30, !37, !38}
!132 = distinct !{!132, !30, !38, !37}
!133 = distinct !{!133, !30}
!134 = !{!56, !44, i64 0}
!135 = distinct !{!135, !30}
!136 = distinct !{!136, !30}
