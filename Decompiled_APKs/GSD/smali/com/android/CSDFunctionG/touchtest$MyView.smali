.class public Lcom/android/CSDFunctionG/touchtest$MyView;
.super Landroid/view/View;
.source "touchtest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/CSDFunctionG/touchtest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyView"
.end annotation


# instance fields
.field fingerOne:Lcom/android/CSDFunctionG/GSDFinger;

.field private mCurDown:Z

.field private mCurNX:I

.field private mCurNY:I

.field private mCurPressure:F

.field private mCurSize:F

.field private mCurWidth:I

.field private mHeaderBottom:I

.field private final mPaint:Landroid/graphics/Paint;

.field private final mTargetPaint:Landroid/graphics/Paint;

.field private final mTextBackgroundPaint:Landroid/graphics/Paint;

.field private final mTextBackgroundPaint2:Landroid/graphics/Paint;

.field private final mTextLevelPaint:Landroid/graphics/Paint;

.field private final mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field private final mTextPASS:Landroid/graphics/Paint;

.field private final mTextPaint:Landroid/graphics/Paint;

.field private mTwoFingers:Z

.field private mVelocity:Landroid/view/VelocityTracker;

.field final synthetic this$0:Lcom/android/CSDFunctionG/touchtest;


# direct methods
.method public constructor <init>(Lcom/android/CSDFunctionG/touchtest;Landroid/content/Context;)V
    .locals 6
    .parameter
    .parameter "c"

    .prologue
    const/16 v5, 0xc0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0xff

    .line 231
    iput-object p1, p0, Lcom/android/CSDFunctionG/touchtest$MyView;->this$0:Lcom/android/CSDFunctionG/touchtest;

    .line 232
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 217
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, Lcom/android/CSDFunctionG/touchtest$MyView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 220
    iput v3, p0, Lcom/android/CSDFunctionG/touchtest$MyView;->mCurNX:I

    .line 221
    iput v3, p0, Lcom/android/CSDFunctionG/touchtest$MyView;->mCurNY:I

    .line 229
    new-instance v0, Lcom/android/CSDFunctionG/GSDFinger;

    invoke-direct {v0}, Lcom/android/CSDFunctionG/GSDFinger;-><init>()V

    iput-object v0, p0, Lcom/android/CSDFunctionG/touchtest$MyView;->fingerOne:Lcom/android/CSDFunctionG/GSDFinger;

    .line 234
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/CSDFunctionG/touchtest$MyView;->mTextPaint:Landroid/graphics/Paint;

    .line 235
    iget-object v0, p0, Lcom/android/CSDFunctionG/touchtest$MyView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 236
    iget-object v0, p0, Lcom/android/CSDFunctionG/touchtest$MyView;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4120

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 237
    iget-object v0, p0, Lcom/android/CSDFunctionG/touchtest$MyView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v3, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 239
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/CSDFunctionG/touchtest$MyView;->mTextPASS:Landroid/graphics/Paint;

    .line 240
    iget-object v0, p0, Lcom/android/CSDFunctionG/touchtest$MyView;->mTextPASS:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 241
    iget-object v0, p0, Lcom/android/CSDFunctionG/touchtest$MyView;->mTextPASS:Landroid/graphics/Paint;

    const/high16 v1, 0x41f0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 242
    iget-object v0, p0, Lcom/android/CSDFunctionG/touchtest$MyView;->mTextPASS:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v3, v2, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 244
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/CSDFunctionG/touchtest$MyView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    .line 245
    iget-object v0, p0, Lcom/android/CSDFunctionG/touchtest$MyView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 246
    iget-object v0, p0, Lcom/android/CSDFunctionG/touchtest$MyView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    const/16 v1, 0x80

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 249
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/CSDFunctionG/touchtest$MyView;->mTextBackgroundPaint2:Landroid/graphics/Paint;

    .line 250
    iget-object v0, p0, Lcom/android/CSDFunctionG/touchtest$MyView;->mTextBackgroundPaint2:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 251
    iget-object v0, p0, Lcom/android/CSDFunctionG/touchtest$MyView;->mTextBackgroundPaint2:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 253
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/CSDFunctionG/touchtest$MyView;->mTextLevelPaint:Landroid/graphics/Paint;

    .line 254
    iget-object v0, p0, Lcom/android/CSDFunctionG/touchtest$MyView;->mTextLevelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 255
    iget-object v0, p0, Lcom/android/CSDFunctionG/touchtest$MyView;->mTextLevelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5, v2, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 257
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/CSDFunctionG/touchtest$MyView;->mPaint:Landroid/graphics/Paint;

    .line 258
    iget-object v0, p0, Lcom/android/CSDFunctionG/touchtest$MyView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 259
    iget-object v0, p0, Lcom/android/CSDFunctionG/touchtest$MyView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 261
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/CSDFunctionG/touchtest$MyView;->mTargetPaint:Landroid/graphics/Paint;

    .line 262
    iget-object v0, p0, Lcom/android/CSDFunctionG/touchtest$MyView;->mTargetPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 263
    iget-object v0, p0, Lcom/android/CSDFunctionG/touchtest$MyView;->mTargetPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 264
    iget-object v0, p0, Lcom/android/CSDFunctionG/touchtest$MyView;->mTargetPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4040

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 266
    return-void
.end method


# virtual methods
.method public EraseView()V
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/CSDFunctionG/touchtest$MyView;->fingerOne:Lcom/android/CSDFunctionG/GSDFinger;

    invoke-virtual {v0}, Lcom/android/CSDFunctionG/GSDFinger;->clearPath()V

    .line 282
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/touchtest$MyView;->invalidate()V

    .line 283
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/CSDFunctionG/touchtest$MyView;->fingerOne:Lcom/android/CSDFunctionG/GSDFinger;

    iget-object v1, p0, Lcom/android/CSDFunctionG/touchtest$MyView;->mTargetPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/CSDFunctionG/touchtest$MyView;->mTargetPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/CSDFunctionG/GSDFinger;->drawPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;)V

    .line 290
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 270
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 271
    iget-object v0, p0, Lcom/android/CSDFunctionG/touchtest$MyView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/CSDFunctionG/touchtest$MyView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 272
    iget-object v0, p0, Lcom/android/CSDFunctionG/touchtest$MyView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int v0, v0

    iget-object v1, p0, Lcom/android/CSDFunctionG/touchtest$MyView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/CSDFunctionG/touchtest$MyView;->mHeaderBottom:I

    .line 273
    const-string v0, "foo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metrics: ascent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/CSDFunctionG/touchtest$MyView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " descent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/CSDFunctionG/touchtest$MyView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " leading="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/CSDFunctionG/touchtest$MyView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " top="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/CSDFunctionG/touchtest$MyView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bottom="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/CSDFunctionG/touchtest$MyView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 294
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 296
    .local v0, action:I
    if-nez v0, :cond_0

    .line 298
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/android/CSDFunctionG/touchtest$MyView;->mVelocity:Landroid/view/VelocityTracker;

    .line 300
    :cond_0
    iget-object v3, p0, Lcom/android/CSDFunctionG/touchtest$MyView;->this$0:Lcom/android/CSDFunctionG/touchtest;

    iget-boolean v3, v3, Lcom/android/CSDFunctionG/touchtest;->StartTestFlag:Z

    if-nez v3, :cond_2

    .line 302
    iget-object v3, p0, Lcom/android/CSDFunctionG/touchtest$MyView;->this$0:Lcom/android/CSDFunctionG/touchtest;

    iget v3, v3, Lcom/android/CSDFunctionG/touchtest;->i_mode:I

    if-nez v3, :cond_6

    .line 304
    iget-object v3, p0, Lcom/android/CSDFunctionG/touchtest$MyView;->this$0:Lcom/android/CSDFunctionG/touchtest;

    #getter for: Lcom/android/CSDFunctionG/touchtest;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/CSDFunctionG/touchtest;->access$100(Lcom/android/CSDFunctionG/touchtest;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 305
    iget-object v3, p0, Lcom/android/CSDFunctionG/touchtest$MyView;->this$0:Lcom/android/CSDFunctionG/touchtest;

    #getter for: Lcom/android/CSDFunctionG/touchtest;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/CSDFunctionG/touchtest;->access$100(Lcom/android/CSDFunctionG/touchtest;)Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x3a98

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 310
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/CSDFunctionG/touchtest$MyView;->this$0:Lcom/android/CSDFunctionG/touchtest;

    iput-boolean v2, v3, Lcom/android/CSDFunctionG/touchtest;->StartTestFlag:Z

    .line 313
    :cond_2
    iget-object v3, p0, Lcom/android/CSDFunctionG/touchtest$MyView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 314
    iget-object v3, p0, Lcom/android/CSDFunctionG/touchtest$MyView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v3, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 316
    if-eqz v0, :cond_3

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    iput-boolean v1, p0, Lcom/android/CSDFunctionG/touchtest$MyView;->mCurDown:Z

    .line 319
    if-nez v0, :cond_7

    .line 320
    iget-object v1, p0, Lcom/android/CSDFunctionG/touchtest$MyView;->fingerOne:Lcom/android/CSDFunctionG/GSDFinger;

    invoke-virtual {v1, p1}, Lcom/android/CSDFunctionG/GSDFinger;->readPoint(Landroid/view/MotionEvent;)V

    .line 325
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v1

    iput v1, p0, Lcom/android/CSDFunctionG/touchtest$MyView;->mCurPressure:F

    .line 326
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSize()F

    move-result v1

    iput v1, p0, Lcom/android/CSDFunctionG/touchtest$MyView;->mCurSize:F

    .line 327
    iget v1, p0, Lcom/android/CSDFunctionG/touchtest$MyView;->mCurSize:F

    invoke-virtual {p0}, Lcom/android/CSDFunctionG/touchtest$MyView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Lcom/android/CSDFunctionG/touchtest$MyView;->mCurWidth:I

    .line 329
    iget-boolean v1, p0, Lcom/android/CSDFunctionG/touchtest$MyView;->mTwoFingers:Z

    if-eqz v1, :cond_5

    .line 331
    iget v1, p0, Lcom/android/CSDFunctionG/touchtest$MyView;->mCurWidth:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/CSDFunctionG/touchtest$MyView;->mCurWidth:I

    .line 334
    :cond_5
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/touchtest$MyView;->invalidate()V

    .line 335
    return v2

    .line 307
    :cond_6
    iget-object v3, p0, Lcom/android/CSDFunctionG/touchtest$MyView;->this$0:Lcom/android/CSDFunctionG/touchtest;

    iget v3, v3, Lcom/android/CSDFunctionG/touchtest;->i_mode:I

    if-ne v3, v2, :cond_1

    .line 308
    iget-object v3, p0, Lcom/android/CSDFunctionG/touchtest$MyView;->this$0:Lcom/android/CSDFunctionG/touchtest;

    iput-boolean v2, v3, Lcom/android/CSDFunctionG/touchtest;->Touch_Endtest:Z

    goto :goto_0

    .line 322
    :cond_7
    iget-object v1, p0, Lcom/android/CSDFunctionG/touchtest$MyView;->fingerOne:Lcom/android/CSDFunctionG/GSDFinger;

    invoke-virtual {v1, p1}, Lcom/android/CSDFunctionG/GSDFinger;->readPath(Landroid/view/MotionEvent;)V

    goto :goto_1
.end method
