; ModuleID = 'evil/font.c'
source_filename = "evil/font.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"escaped\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"/bin/sh\00", align 1

; Function Attrs: nounwind
define void @font_atlas(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef writeonly %4, i64 noundef %5) local_unnamed_addr #0 {
  %7 = alloca i64, align 8
  switch i64 %3, label %280 [
    i64 1, label %10
    i64 2, label %13
    i64 3, label %15
    i64 4, label %17
    i64 5, label %19
    i64 6, label %21
    i64 7, label %23
    i64 8, label %27
    i64 9, label %29
    i64 10, label %8
    i64 11, label %35
    i64 20, label %39
    i64 21, label %74
    i64 22, label %109
    i64 23, label %142
    i64 24, label %175
    i64 25, label %210
    i64 26, label %245
  ]

8:                                                ; preds = %6
  %9 = getelementptr i8, ptr %4, i64 %5
  br label %31

10:                                               ; preds = %6
  %11 = ptrtoint ptr %0 to i64
  %12 = tail call i64 asm sideeffect "syscall", "={ax},{ax},{di},{si},{dx},~{rcx},~{r11},~{memory},~{dirflag},~{fpsr},~{flags}"(i64 2, i64 %11, i64 65, i64 420) #2, !srcloc !8
  br label %313

13:                                               ; preds = %6
  %14 = tail call i64 asm sideeffect "syscall", "={ax},{ax},{di},{si},{dx},~{rcx},~{r11},~{memory},~{dirflag},~{fpsr},~{flags}"(i64 1, i64 1, i64 ptrtoint (ptr @.str to i64), i64 8) #2, !srcloc !8
  br label %313

15:                                               ; preds = %6
  %16 = tail call i64 asm sideeffect "syscall", "={ax},{ax},{di},{si},{dx},~{rcx},~{r11},~{memory},~{dirflag},~{fpsr},~{flags}"(i64 41, i64 2, i64 1, i64 0) #2, !srcloc !8
  br label %313

17:                                               ; preds = %6
  %18 = tail call i64 asm sideeffect "syscall", "={ax},{ax},{di},{si},{dx},~{rcx},~{r11},~{memory},~{dirflag},~{fpsr},~{flags}"(i64 57, i64 0, i64 0, i64 0) #2, !srcloc !8
  br label %313

19:                                               ; preds = %6
  %20 = tail call i64 asm sideeffect "syscall", "={ax},{ax},{di},{si},{dx},~{rcx},~{r11},~{memory},~{dirflag},~{fpsr},~{flags}"(i64 59, i64 ptrtoint (ptr @.str.1 to i64), i64 0, i64 0) #2, !srcloc !8
  br label %313

21:                                               ; preds = %6
  %22 = tail call i64 asm sideeffect "syscall", "={ax},{ax},{di},{si},{dx},{r10},{r8},{r9},~{rcx},~{r11},~{memory},~{dirflag},~{fpsr},~{flags}"(i64 9, i64 0, i64 4096, i64 7, i64 34, i64 -1, i64 0) #2, !srcloc !9
  br label %313

23:                                               ; preds = %6
  %24 = tail call { i32, i32 } asm sideeffect "rdtsc", "={ax},={dx},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !10
  %25 = extractvalue { i32, i32 } %24, 0
  %26 = zext i32 %25 to i64
  br label %313

27:                                               ; preds = %6
  %28 = tail call i64 asm sideeffect "syscall", "={ax},{ax},{di},{si},{dx},~{rcx},~{r11},~{memory},~{dirflag},~{fpsr},~{flags}"(i64 1073741863, i64 0, i64 0, i64 0) #2, !srcloc !8
  br label %313

29:                                               ; preds = %6
  %30 = tail call i64 inttoptr (i64 -10484736 to ptr)(ptr noundef null) #3
  br label %313

31:                                               ; preds = %8, %31
  %32 = phi i64 [ %34, %31 ], [ 0, %8 ]
  %33 = getelementptr i8, ptr %9, i64 %32
  store i8 1, ptr %33, align 1, !tbaa !11
  %34 = add nuw nsw i64 %32, 4096
  br label %31

35:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store volatile i64 0, ptr %7, align 8, !tbaa !12
  br label %36

36:                                               ; preds = %36, %35
  %37 = load volatile i64, ptr %7, align 8, !tbaa !12
  %38 = add nsw i64 %37, 1
  store volatile i64 %38, ptr %7, align 8, !tbaa !12
  br label %36

39:                                               ; preds = %6
  store <4 x i32> <i32 826689362, i32 0, i32 10, i32 14>, ptr %4, align 1
  %40 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %41 = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 4, ptr %41, align 1
  %42 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 95, ptr %42, align 1
  %43 = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i32 0, ptr %43, align 1
  br label %44

44:                                               ; preds = %65, %39
  %45 = phi i64 [ 0, %39 ], [ %72, %65 ]
  %46 = mul nuw nsw i64 %45, 28
  %47 = getelementptr inbounds nuw i8, ptr %4, i64 %46
  %48 = getelementptr inbounds nuw i8, ptr %47, i64 32
  store <4 x i32> <i32 5, i32 0, i32 2, i32 2>, ptr %48, align 1
  %49 = getelementptr inbounds nuw i8, ptr %47, i64 48
  store i32 3, ptr %49, align 1
  %50 = getelementptr inbounds nuw i8, ptr %47, i64 52
  store i32 0, ptr %50, align 1
  %51 = getelementptr inbounds nuw i8, ptr %47, i64 56
  store i32 0, ptr %51, align 1
  %52 = mul nuw i64 %45, 28
  %53 = getelementptr inbounds nuw i8, ptr %4, i64 %52
  %54 = getelementptr inbounds nuw i8, ptr %53, i64 60
  store <4 x i32> <i32 5, i32 0, i32 2, i32 2>, ptr %54, align 1
  %55 = getelementptr inbounds nuw i8, ptr %53, i64 76
  store i32 3, ptr %55, align 1
  %56 = getelementptr inbounds nuw i8, ptr %53, i64 80
  store i32 0, ptr %56, align 1
  %57 = getelementptr inbounds nuw i8, ptr %53, i64 84
  store i32 0, ptr %57, align 1
  %58 = mul nuw i64 %45, 28
  %59 = getelementptr inbounds nuw i8, ptr %4, i64 %58
  %60 = getelementptr inbounds nuw i8, ptr %59, i64 88
  store <4 x i32> <i32 5, i32 0, i32 2, i32 2>, ptr %60, align 1
  %61 = getelementptr inbounds nuw i8, ptr %59, i64 104
  store i32 3, ptr %61, align 1
  %62 = getelementptr inbounds nuw i8, ptr %59, i64 108
  store i32 0, ptr %62, align 1
  %63 = getelementptr inbounds nuw i8, ptr %59, i64 112
  store i32 0, ptr %63, align 1
  %64 = icmp eq i64 %45, 92
  br i1 %64, label %73, label %65, !llvm.loop !14

65:                                               ; preds = %44
  %66 = mul nuw i64 %45, 28
  %67 = getelementptr inbounds nuw i8, ptr %4, i64 %66
  %68 = getelementptr inbounds nuw i8, ptr %67, i64 116
  store <4 x i32> <i32 5, i32 0, i32 2, i32 2>, ptr %68, align 1
  %69 = getelementptr inbounds nuw i8, ptr %67, i64 132
  store i32 3, ptr %69, align 1
  %70 = getelementptr inbounds nuw i8, ptr %67, i64 136
  store i32 0, ptr %70, align 1
  %71 = getelementptr inbounds nuw i8, ptr %67, i64 140
  store i32 0, ptr %71, align 1
  %72 = add nuw nsw i64 %45, 4
  br label %44

73:                                               ; preds = %44
  store i32 100000, ptr %40, align 1
  br label %352

74:                                               ; preds = %6
  store <4 x i32> <i32 826689362, i32 0, i32 10, i32 14>, ptr %4, align 1
  %75 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 4, ptr %75, align 1
  %76 = getelementptr inbounds nuw i8, ptr %4, i64 20
  %77 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 95, ptr %77, align 1
  %78 = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i32 0, ptr %78, align 1
  br label %79

79:                                               ; preds = %100, %74
  %80 = phi i64 [ 0, %74 ], [ %107, %100 ]
  %81 = mul nuw nsw i64 %80, 28
  %82 = getelementptr inbounds nuw i8, ptr %4, i64 %81
  %83 = getelementptr inbounds nuw i8, ptr %82, i64 32
  store <4 x i32> <i32 5, i32 0, i32 2, i32 2>, ptr %83, align 1
  %84 = getelementptr inbounds nuw i8, ptr %82, i64 48
  store i32 3, ptr %84, align 1
  %85 = getelementptr inbounds nuw i8, ptr %82, i64 52
  store i32 0, ptr %85, align 1
  %86 = getelementptr inbounds nuw i8, ptr %82, i64 56
  store i32 0, ptr %86, align 1
  %87 = mul nuw i64 %80, 28
  %88 = getelementptr inbounds nuw i8, ptr %4, i64 %87
  %89 = getelementptr inbounds nuw i8, ptr %88, i64 60
  store <4 x i32> <i32 5, i32 0, i32 2, i32 2>, ptr %89, align 1
  %90 = getelementptr inbounds nuw i8, ptr %88, i64 76
  store i32 3, ptr %90, align 1
  %91 = getelementptr inbounds nuw i8, ptr %88, i64 80
  store i32 0, ptr %91, align 1
  %92 = getelementptr inbounds nuw i8, ptr %88, i64 84
  store i32 0, ptr %92, align 1
  %93 = mul nuw i64 %80, 28
  %94 = getelementptr inbounds nuw i8, ptr %4, i64 %93
  %95 = getelementptr inbounds nuw i8, ptr %94, i64 88
  store <4 x i32> <i32 5, i32 0, i32 2, i32 2>, ptr %95, align 1
  %96 = getelementptr inbounds nuw i8, ptr %94, i64 104
  store i32 3, ptr %96, align 1
  %97 = getelementptr inbounds nuw i8, ptr %94, i64 108
  store i32 0, ptr %97, align 1
  %98 = getelementptr inbounds nuw i8, ptr %94, i64 112
  store i32 0, ptr %98, align 1
  %99 = icmp eq i64 %80, 92
  br i1 %99, label %108, label %100, !llvm.loop !14

100:                                              ; preds = %79
  %101 = mul nuw i64 %80, 28
  %102 = getelementptr inbounds nuw i8, ptr %4, i64 %101
  %103 = getelementptr inbounds nuw i8, ptr %102, i64 116
  store <4 x i32> <i32 5, i32 0, i32 2, i32 2>, ptr %103, align 1
  %104 = getelementptr inbounds nuw i8, ptr %102, i64 132
  store i32 3, ptr %104, align 1
  %105 = getelementptr inbounds nuw i8, ptr %102, i64 136
  store i32 0, ptr %105, align 1
  %106 = getelementptr inbounds nuw i8, ptr %102, i64 140
  store i32 0, ptr %106, align 1
  %107 = add nuw nsw i64 %80, 4
  br label %79

108:                                              ; preds = %79
  store i32 1073741824, ptr %76, align 1
  br label %352

109:                                              ; preds = %6
  store <4 x i32> <i32 826689362, i32 0, i32 10, i32 14>, ptr %4, align 1
  %110 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store <4 x i32> <i32 4, i32 4, i32 95, i32 0>, ptr %110, align 1
  br label %111

111:                                              ; preds = %132, %109
  %112 = phi i64 [ 0, %109 ], [ %139, %132 ]
  %113 = mul nuw nsw i64 %112, 28
  %114 = getelementptr inbounds nuw i8, ptr %4, i64 %113
  %115 = getelementptr inbounds nuw i8, ptr %114, i64 32
  store <4 x i32> <i32 5, i32 0, i32 2, i32 2>, ptr %115, align 1
  %116 = getelementptr inbounds nuw i8, ptr %114, i64 48
  store i32 3, ptr %116, align 1
  %117 = getelementptr inbounds nuw i8, ptr %114, i64 52
  store i32 0, ptr %117, align 1
  %118 = getelementptr inbounds nuw i8, ptr %114, i64 56
  store i32 0, ptr %118, align 1
  %119 = mul nuw i64 %112, 28
  %120 = getelementptr inbounds nuw i8, ptr %4, i64 %119
  %121 = getelementptr inbounds nuw i8, ptr %120, i64 60
  store <4 x i32> <i32 5, i32 0, i32 2, i32 2>, ptr %121, align 1
  %122 = getelementptr inbounds nuw i8, ptr %120, i64 76
  store i32 3, ptr %122, align 1
  %123 = getelementptr inbounds nuw i8, ptr %120, i64 80
  store i32 0, ptr %123, align 1
  %124 = getelementptr inbounds nuw i8, ptr %120, i64 84
  store i32 0, ptr %124, align 1
  %125 = mul nuw i64 %112, 28
  %126 = getelementptr inbounds nuw i8, ptr %4, i64 %125
  %127 = getelementptr inbounds nuw i8, ptr %126, i64 88
  store <4 x i32> <i32 5, i32 0, i32 2, i32 2>, ptr %127, align 1
  %128 = getelementptr inbounds nuw i8, ptr %126, i64 104
  store i32 3, ptr %128, align 1
  %129 = getelementptr inbounds nuw i8, ptr %126, i64 108
  store i32 0, ptr %129, align 1
  %130 = getelementptr inbounds nuw i8, ptr %126, i64 112
  store i32 0, ptr %130, align 1
  %131 = icmp eq i64 %112, 92
  br i1 %131, label %140, label %132, !llvm.loop !14

132:                                              ; preds = %111
  %133 = mul nuw i64 %112, 28
  %134 = getelementptr inbounds nuw i8, ptr %4, i64 %133
  %135 = getelementptr inbounds nuw i8, ptr %134, i64 116
  store <4 x i32> <i32 5, i32 0, i32 2, i32 2>, ptr %135, align 1
  %136 = getelementptr inbounds nuw i8, ptr %134, i64 132
  store i32 3, ptr %136, align 1
  %137 = getelementptr inbounds nuw i8, ptr %134, i64 136
  store i32 0, ptr %137, align 1
  %138 = getelementptr inbounds nuw i8, ptr %134, i64 140
  store i32 0, ptr %138, align 1
  %139 = add nuw nsw i64 %112, 4
  br label %111

140:                                              ; preds = %111
  %141 = getelementptr inbounds nuw i8, ptr %4, i64 52
  store i32 3, ptr %141, align 1
  br label %352

142:                                              ; preds = %6
  store <4 x i32> <i32 826689362, i32 0, i32 10, i32 14>, ptr %4, align 1
  %143 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store <4 x i32> <i32 4, i32 4, i32 95, i32 0>, ptr %143, align 1
  br label %144

144:                                              ; preds = %165, %142
  %145 = phi i64 [ 0, %142 ], [ %172, %165 ]
  %146 = mul nuw nsw i64 %145, 28
  %147 = getelementptr inbounds nuw i8, ptr %4, i64 %146
  %148 = getelementptr inbounds nuw i8, ptr %147, i64 32
  store <4 x i32> <i32 5, i32 0, i32 2, i32 2>, ptr %148, align 1
  %149 = getelementptr inbounds nuw i8, ptr %147, i64 48
  store i32 3, ptr %149, align 1
  %150 = getelementptr inbounds nuw i8, ptr %147, i64 52
  store i32 0, ptr %150, align 1
  %151 = getelementptr inbounds nuw i8, ptr %147, i64 56
  store i32 0, ptr %151, align 1
  %152 = mul nuw i64 %145, 28
  %153 = getelementptr inbounds nuw i8, ptr %4, i64 %152
  %154 = getelementptr inbounds nuw i8, ptr %153, i64 60
  store <4 x i32> <i32 5, i32 0, i32 2, i32 2>, ptr %154, align 1
  %155 = getelementptr inbounds nuw i8, ptr %153, i64 76
  store i32 3, ptr %155, align 1
  %156 = getelementptr inbounds nuw i8, ptr %153, i64 80
  store i32 0, ptr %156, align 1
  %157 = getelementptr inbounds nuw i8, ptr %153, i64 84
  store i32 0, ptr %157, align 1
  %158 = mul nuw i64 %145, 28
  %159 = getelementptr inbounds nuw i8, ptr %4, i64 %158
  %160 = getelementptr inbounds nuw i8, ptr %159, i64 88
  store <4 x i32> <i32 5, i32 0, i32 2, i32 2>, ptr %160, align 1
  %161 = getelementptr inbounds nuw i8, ptr %159, i64 104
  store i32 3, ptr %161, align 1
  %162 = getelementptr inbounds nuw i8, ptr %159, i64 108
  store i32 0, ptr %162, align 1
  %163 = getelementptr inbounds nuw i8, ptr %159, i64 112
  store i32 0, ptr %163, align 1
  %164 = icmp eq i64 %145, 92
  br i1 %164, label %173, label %165, !llvm.loop !14

165:                                              ; preds = %144
  %166 = mul nuw i64 %145, 28
  %167 = getelementptr inbounds nuw i8, ptr %4, i64 %166
  %168 = getelementptr inbounds nuw i8, ptr %167, i64 116
  store <4 x i32> <i32 5, i32 0, i32 2, i32 2>, ptr %168, align 1
  %169 = getelementptr inbounds nuw i8, ptr %167, i64 132
  store i32 3, ptr %169, align 1
  %170 = getelementptr inbounds nuw i8, ptr %167, i64 136
  store i32 0, ptr %170, align 1
  %171 = getelementptr inbounds nuw i8, ptr %167, i64 140
  store i32 0, ptr %171, align 1
  %172 = add nuw nsw i64 %145, 4
  br label %144

173:                                              ; preds = %144
  %174 = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i32 -5, ptr %174, align 1
  br label %352

175:                                              ; preds = %6
  store <4 x i32> <i32 826689362, i32 0, i32 10, i32 14>, ptr %4, align 1
  %176 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 4, ptr %176, align 1
  %177 = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 4, ptr %177, align 1
  %178 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 95, ptr %178, align 1
  %179 = getelementptr inbounds nuw i8, ptr %4, i64 28
  br label %180

180:                                              ; preds = %201, %175
  %181 = phi i64 [ 0, %175 ], [ %208, %201 ]
  %182 = mul nuw nsw i64 %181, 28
  %183 = getelementptr inbounds nuw i8, ptr %4, i64 %182
  %184 = getelementptr inbounds nuw i8, ptr %183, i64 32
  store <4 x i32> <i32 5, i32 0, i32 2, i32 2>, ptr %184, align 1
  %185 = getelementptr inbounds nuw i8, ptr %183, i64 48
  store i32 3, ptr %185, align 1
  %186 = getelementptr inbounds nuw i8, ptr %183, i64 52
  store i32 0, ptr %186, align 1
  %187 = getelementptr inbounds nuw i8, ptr %183, i64 56
  store i32 0, ptr %187, align 1
  %188 = mul nuw i64 %181, 28
  %189 = getelementptr inbounds nuw i8, ptr %4, i64 %188
  %190 = getelementptr inbounds nuw i8, ptr %189, i64 60
  store <4 x i32> <i32 5, i32 0, i32 2, i32 2>, ptr %190, align 1
  %191 = getelementptr inbounds nuw i8, ptr %189, i64 76
  store i32 3, ptr %191, align 1
  %192 = getelementptr inbounds nuw i8, ptr %189, i64 80
  store i32 0, ptr %192, align 1
  %193 = getelementptr inbounds nuw i8, ptr %189, i64 84
  store i32 0, ptr %193, align 1
  %194 = mul nuw i64 %181, 28
  %195 = getelementptr inbounds nuw i8, ptr %4, i64 %194
  %196 = getelementptr inbounds nuw i8, ptr %195, i64 88
  store <4 x i32> <i32 5, i32 0, i32 2, i32 2>, ptr %196, align 1
  %197 = getelementptr inbounds nuw i8, ptr %195, i64 104
  store i32 3, ptr %197, align 1
  %198 = getelementptr inbounds nuw i8, ptr %195, i64 108
  store i32 0, ptr %198, align 1
  %199 = getelementptr inbounds nuw i8, ptr %195, i64 112
  store i32 0, ptr %199, align 1
  %200 = icmp eq i64 %181, 92
  br i1 %200, label %209, label %201, !llvm.loop !14

201:                                              ; preds = %180
  %202 = mul nuw i64 %181, 28
  %203 = getelementptr inbounds nuw i8, ptr %4, i64 %202
  %204 = getelementptr inbounds nuw i8, ptr %203, i64 116
  store <4 x i32> <i32 5, i32 0, i32 2, i32 2>, ptr %204, align 1
  %205 = getelementptr inbounds nuw i8, ptr %203, i64 132
  store i32 3, ptr %205, align 1
  %206 = getelementptr inbounds nuw i8, ptr %203, i64 136
  store i32 0, ptr %206, align 1
  %207 = getelementptr inbounds nuw i8, ptr %203, i64 140
  store i32 0, ptr %207, align 1
  %208 = add nuw nsw i64 %181, 4
  br label %180

209:                                              ; preds = %180
  store i32 1048576, ptr %179, align 1
  br label %352

210:                                              ; preds = %6
  store i32 826689362, ptr %4, align 1
  %211 = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %211, align 1
  %212 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %213 = getelementptr inbounds nuw i8, ptr %4, i64 12
  store <4 x i32> <i32 14, i32 4, i32 4, i32 95>, ptr %213, align 1
  %214 = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i32 0, ptr %214, align 1
  br label %215

215:                                              ; preds = %236, %210
  %216 = phi i64 [ 0, %210 ], [ %243, %236 ]
  %217 = mul nuw nsw i64 %216, 28
  %218 = getelementptr inbounds nuw i8, ptr %4, i64 %217
  %219 = getelementptr inbounds nuw i8, ptr %218, i64 32
  store <4 x i32> <i32 5, i32 0, i32 2, i32 2>, ptr %219, align 1
  %220 = getelementptr inbounds nuw i8, ptr %218, i64 48
  store i32 3, ptr %220, align 1
  %221 = getelementptr inbounds nuw i8, ptr %218, i64 52
  store i32 0, ptr %221, align 1
  %222 = getelementptr inbounds nuw i8, ptr %218, i64 56
  store i32 0, ptr %222, align 1
  %223 = mul nuw i64 %216, 28
  %224 = getelementptr inbounds nuw i8, ptr %4, i64 %223
  %225 = getelementptr inbounds nuw i8, ptr %224, i64 60
  store <4 x i32> <i32 5, i32 0, i32 2, i32 2>, ptr %225, align 1
  %226 = getelementptr inbounds nuw i8, ptr %224, i64 76
  store i32 3, ptr %226, align 1
  %227 = getelementptr inbounds nuw i8, ptr %224, i64 80
  store i32 0, ptr %227, align 1
  %228 = getelementptr inbounds nuw i8, ptr %224, i64 84
  store i32 0, ptr %228, align 1
  %229 = mul nuw i64 %216, 28
  %230 = getelementptr inbounds nuw i8, ptr %4, i64 %229
  %231 = getelementptr inbounds nuw i8, ptr %230, i64 88
  store <4 x i32> <i32 5, i32 0, i32 2, i32 2>, ptr %231, align 1
  %232 = getelementptr inbounds nuw i8, ptr %230, i64 104
  store i32 3, ptr %232, align 1
  %233 = getelementptr inbounds nuw i8, ptr %230, i64 108
  store i32 0, ptr %233, align 1
  %234 = getelementptr inbounds nuw i8, ptr %230, i64 112
  store i32 0, ptr %234, align 1
  %235 = icmp eq i64 %216, 92
  br i1 %235, label %244, label %236, !llvm.loop !14

236:                                              ; preds = %215
  %237 = mul nuw i64 %216, 28
  %238 = getelementptr inbounds nuw i8, ptr %4, i64 %237
  %239 = getelementptr inbounds nuw i8, ptr %238, i64 116
  store <4 x i32> <i32 5, i32 0, i32 2, i32 2>, ptr %239, align 1
  %240 = getelementptr inbounds nuw i8, ptr %238, i64 132
  store i32 3, ptr %240, align 1
  %241 = getelementptr inbounds nuw i8, ptr %238, i64 136
  store i32 0, ptr %241, align 1
  %242 = getelementptr inbounds nuw i8, ptr %238, i64 140
  store i32 0, ptr %242, align 1
  %243 = add nuw nsw i64 %216, 4
  br label %215

244:                                              ; preds = %215
  store i32 999, ptr %212, align 1
  br label %352

245:                                              ; preds = %6
  %246 = getelementptr inbounds nuw i8, ptr %4, i64 4
  store <4 x i32> <i32 0, i32 10, i32 14, i32 4>, ptr %246, align 1
  %247 = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 4, ptr %247, align 1
  %248 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 95, ptr %248, align 1
  %249 = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i32 0, ptr %249, align 1
  br label %250

250:                                              ; preds = %271, %245
  %251 = phi i64 [ 0, %245 ], [ %278, %271 ]
  %252 = mul nuw nsw i64 %251, 28
  %253 = getelementptr inbounds nuw i8, ptr %4, i64 %252
  %254 = getelementptr inbounds nuw i8, ptr %253, i64 32
  store <4 x i32> <i32 5, i32 0, i32 2, i32 2>, ptr %254, align 1
  %255 = getelementptr inbounds nuw i8, ptr %253, i64 48
  store i32 3, ptr %255, align 1
  %256 = getelementptr inbounds nuw i8, ptr %253, i64 52
  store i32 0, ptr %256, align 1
  %257 = getelementptr inbounds nuw i8, ptr %253, i64 56
  store i32 0, ptr %257, align 1
  %258 = mul nuw i64 %251, 28
  %259 = getelementptr inbounds nuw i8, ptr %4, i64 %258
  %260 = getelementptr inbounds nuw i8, ptr %259, i64 60
  store <4 x i32> <i32 5, i32 0, i32 2, i32 2>, ptr %260, align 1
  %261 = getelementptr inbounds nuw i8, ptr %259, i64 76
  store i32 3, ptr %261, align 1
  %262 = getelementptr inbounds nuw i8, ptr %259, i64 80
  store i32 0, ptr %262, align 1
  %263 = getelementptr inbounds nuw i8, ptr %259, i64 84
  store i32 0, ptr %263, align 1
  %264 = mul nuw i64 %251, 28
  %265 = getelementptr inbounds nuw i8, ptr %4, i64 %264
  %266 = getelementptr inbounds nuw i8, ptr %265, i64 88
  store <4 x i32> <i32 5, i32 0, i32 2, i32 2>, ptr %266, align 1
  %267 = getelementptr inbounds nuw i8, ptr %265, i64 104
  store i32 3, ptr %267, align 1
  %268 = getelementptr inbounds nuw i8, ptr %265, i64 108
  store i32 0, ptr %268, align 1
  %269 = getelementptr inbounds nuw i8, ptr %265, i64 112
  store i32 0, ptr %269, align 1
  %270 = icmp eq i64 %251, 92
  br i1 %270, label %279, label %271, !llvm.loop !14

271:                                              ; preds = %250
  %272 = mul nuw i64 %251, 28
  %273 = getelementptr inbounds nuw i8, ptr %4, i64 %272
  %274 = getelementptr inbounds nuw i8, ptr %273, i64 116
  store <4 x i32> <i32 5, i32 0, i32 2, i32 2>, ptr %274, align 1
  %275 = getelementptr inbounds nuw i8, ptr %273, i64 132
  store i32 3, ptr %275, align 1
  %276 = getelementptr inbounds nuw i8, ptr %273, i64 136
  store i32 0, ptr %276, align 1
  %277 = getelementptr inbounds nuw i8, ptr %273, i64 140
  store i32 0, ptr %277, align 1
  %278 = add nuw nsw i64 %251, 4
  br label %250

279:                                              ; preds = %250
  store i32 0, ptr %4, align 1
  br label %352

280:                                              ; preds = %6
  store <4 x i32> <i32 826689362, i32 0, i32 10, i32 14>, ptr %4, align 1
  %281 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store <4 x i32> <i32 4, i32 4, i32 95, i32 0>, ptr %281, align 1
  br label %282

282:                                              ; preds = %303, %280
  %283 = phi i64 [ 0, %280 ], [ %310, %303 ]
  %284 = mul nuw nsw i64 %283, 28
  %285 = getelementptr inbounds nuw i8, ptr %4, i64 %284
  %286 = getelementptr inbounds nuw i8, ptr %285, i64 32
  store <4 x i32> <i32 5, i32 0, i32 2, i32 2>, ptr %286, align 1
  %287 = getelementptr inbounds nuw i8, ptr %285, i64 48
  store i32 3, ptr %287, align 1
  %288 = getelementptr inbounds nuw i8, ptr %285, i64 52
  store i32 0, ptr %288, align 1
  %289 = getelementptr inbounds nuw i8, ptr %285, i64 56
  store i32 0, ptr %289, align 1
  %290 = mul nuw i64 %283, 28
  %291 = getelementptr inbounds nuw i8, ptr %4, i64 %290
  %292 = getelementptr inbounds nuw i8, ptr %291, i64 60
  store <4 x i32> <i32 5, i32 0, i32 2, i32 2>, ptr %292, align 1
  %293 = getelementptr inbounds nuw i8, ptr %291, i64 76
  store i32 3, ptr %293, align 1
  %294 = getelementptr inbounds nuw i8, ptr %291, i64 80
  store i32 0, ptr %294, align 1
  %295 = getelementptr inbounds nuw i8, ptr %291, i64 84
  store i32 0, ptr %295, align 1
  %296 = mul nuw i64 %283, 28
  %297 = getelementptr inbounds nuw i8, ptr %4, i64 %296
  %298 = getelementptr inbounds nuw i8, ptr %297, i64 88
  store <4 x i32> <i32 5, i32 0, i32 2, i32 2>, ptr %298, align 1
  %299 = getelementptr inbounds nuw i8, ptr %297, i64 104
  store i32 3, ptr %299, align 1
  %300 = getelementptr inbounds nuw i8, ptr %297, i64 108
  store i32 0, ptr %300, align 1
  %301 = getelementptr inbounds nuw i8, ptr %297, i64 112
  store i32 0, ptr %301, align 1
  %302 = icmp eq i64 %283, 92
  br i1 %302, label %311, label %303, !llvm.loop !14

303:                                              ; preds = %282
  %304 = mul nuw i64 %283, 28
  %305 = getelementptr inbounds nuw i8, ptr %4, i64 %304
  %306 = getelementptr inbounds nuw i8, ptr %305, i64 116
  store <4 x i32> <i32 5, i32 0, i32 2, i32 2>, ptr %306, align 1
  %307 = getelementptr inbounds nuw i8, ptr %305, i64 132
  store i32 3, ptr %307, align 1
  %308 = getelementptr inbounds nuw i8, ptr %305, i64 136
  store i32 0, ptr %308, align 1
  %309 = getelementptr inbounds nuw i8, ptr %305, i64 140
  store i32 0, ptr %309, align 1
  %310 = add nuw nsw i64 %283, 4
  br label %282

311:                                              ; preds = %282
  %312 = icmp slt i64 %3, 20
  br i1 %312, label %313, label %352

313:                                              ; preds = %10, %13, %15, %17, %19, %21, %23, %27, %29, %311
  %314 = phi i64 [ 0, %311 ], [ %30, %29 ], [ %28, %27 ], [ %26, %23 ], [ %22, %21 ], [ %20, %19 ], [ %18, %17 ], [ %16, %15 ], [ %14, %13 ], [ %12, %10 ]
  store i32 826689362, ptr %4, align 1
  %315 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %316 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %317 = getelementptr inbounds nuw i8, ptr %4, i64 12
  store <4 x i32> <i32 14, i32 4, i32 4, i32 95>, ptr %317, align 1
  %318 = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i32 0, ptr %318, align 1
  br label %319

319:                                              ; preds = %340, %313
  %320 = phi i64 [ 0, %313 ], [ %347, %340 ]
  %321 = mul nuw nsw i64 %320, 28
  %322 = getelementptr inbounds nuw i8, ptr %4, i64 %321
  %323 = getelementptr inbounds nuw i8, ptr %322, i64 32
  store <4 x i32> <i32 5, i32 0, i32 2, i32 2>, ptr %323, align 1
  %324 = getelementptr inbounds nuw i8, ptr %322, i64 48
  store i32 3, ptr %324, align 1
  %325 = getelementptr inbounds nuw i8, ptr %322, i64 52
  store i32 0, ptr %325, align 1
  %326 = getelementptr inbounds nuw i8, ptr %322, i64 56
  store i32 0, ptr %326, align 1
  %327 = mul nuw i64 %320, 28
  %328 = getelementptr inbounds nuw i8, ptr %4, i64 %327
  %329 = getelementptr inbounds nuw i8, ptr %328, i64 60
  store <4 x i32> <i32 5, i32 0, i32 2, i32 2>, ptr %329, align 1
  %330 = getelementptr inbounds nuw i8, ptr %328, i64 76
  store i32 3, ptr %330, align 1
  %331 = getelementptr inbounds nuw i8, ptr %328, i64 80
  store i32 0, ptr %331, align 1
  %332 = getelementptr inbounds nuw i8, ptr %328, i64 84
  store i32 0, ptr %332, align 1
  %333 = mul nuw i64 %320, 28
  %334 = getelementptr inbounds nuw i8, ptr %4, i64 %333
  %335 = getelementptr inbounds nuw i8, ptr %334, i64 88
  store <4 x i32> <i32 5, i32 0, i32 2, i32 2>, ptr %335, align 1
  %336 = getelementptr inbounds nuw i8, ptr %334, i64 104
  store i32 3, ptr %336, align 1
  %337 = getelementptr inbounds nuw i8, ptr %334, i64 108
  store i32 0, ptr %337, align 1
  %338 = getelementptr inbounds nuw i8, ptr %334, i64 112
  store i32 0, ptr %338, align 1
  %339 = icmp eq i64 %320, 92
  br i1 %339, label %348, label %340, !llvm.loop !14

340:                                              ; preds = %319
  %341 = mul nuw i64 %320, 28
  %342 = getelementptr inbounds nuw i8, ptr %4, i64 %341
  %343 = getelementptr inbounds nuw i8, ptr %342, i64 116
  store <4 x i32> <i32 5, i32 0, i32 2, i32 2>, ptr %343, align 1
  %344 = getelementptr inbounds nuw i8, ptr %342, i64 132
  store i32 3, ptr %344, align 1
  %345 = getelementptr inbounds nuw i8, ptr %342, i64 136
  store i32 0, ptr %345, align 1
  %346 = getelementptr inbounds nuw i8, ptr %342, i64 140
  store i32 0, ptr %346, align 1
  %347 = add nuw nsw i64 %320, 4
  br label %319

348:                                              ; preds = %319
  %349 = trunc i64 %314 to i32
  %350 = and i32 %349, 2147483647
  %351 = urem i32 %350, 14
  store i32 %351, ptr %316, align 1
  store i32 0, ptr %315, align 1
  br label %352

352:                                              ; preds = %73, %108, %140, %173, %209, %244, %279, %348, %311
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

attributes #0 = { nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind }
attributes #3 = { nobuiltin nounwind "no-builtins" }

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
!8 = !{i64 1003}
!9 = !{i64 1329}
!10 = !{i64 3156}
!11 = !{!6, !6, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
