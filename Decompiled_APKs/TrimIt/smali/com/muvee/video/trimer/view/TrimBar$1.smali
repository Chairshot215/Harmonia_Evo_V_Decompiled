.class Lcom/muvee/video/trimer/view/TrimBar$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "TrimBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/video/trimer/view/TrimBar;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/muvee/video/trimer/view/TrimBar;


# direct methods
.method constructor <init>(Lcom/muvee/video/trimer/view/TrimBar;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    .line 243
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method private change(F)F
    .locals 2
    .parameter "distanceX"

    .prologue
    .line 393
    iget-object v0, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    #getter for: Lcom/muvee/video/trimer/view/TrimBar;->mBarLength:I
    invoke-static {v0}, Lcom/muvee/video/trimer/view/TrimBar;->access$17(Lcom/muvee/video/trimer/view/TrimBar;)I

    move-result v0

    iget-object v1, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    #getter for: Lcom/muvee/video/trimer/view/TrimBar;->mIntrinsicWidth:I
    invoke-static {v1}, Lcom/muvee/video/trimer/view/TrimBar;->access$18(Lcom/muvee/video/trimer/view/TrimBar;)I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x3

    int-to-float v0, v0

    div-float v0, p1, v0

    iget-object v1, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    #getter for: Lcom/muvee/video/trimer/view/TrimBar;->mVideoDuration:I
    invoke-static {v1}, Lcom/muvee/video/trimer/view/TrimBar;->access$16(Lcom/muvee/video/trimer/view/TrimBar;)I

    move-result v1

    add-int/lit16 v1, v1, -0x3e8

    int-to-float v1, v1

    mul-float/2addr v0, v1

    return v0
.end method

.method private min()I
    .locals 1

    .prologue
    .line 389
    const/16 v0, 0x3e8

    return v0
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "e"

    .prologue
    const/4 v7, 0x1

    const/high16 v6, 0x4210

    const/4 v5, 0x0

    .line 246
    const-string v1, "com.muvee.video.trimer.view.TrimBar"

    const-string v2, "::onDown:"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v1, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    invoke-virtual {v1}, Lcom/muvee/video/trimer/view/TrimBar;->setPositionChanged()V

    .line 251
    iget-object v1, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    iget-object v2, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    #getter for: Lcom/muvee/video/trimer/view/TrimBar;->mRectFTrimLeft:Landroid/graphics/RectF;
    invoke-static {v2}, Lcom/muvee/video/trimer/view/TrimBar;->access$0(Lcom/muvee/video/trimer/view/TrimBar;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    #setter for: Lcom/muvee/video/trimer/view/TrimBar;->mTrimLeftPressed:Z
    invoke-static {v1, v2}, Lcom/muvee/video/trimer/view/TrimBar;->access$1(Lcom/muvee/video/trimer/view/TrimBar;Z)V

    .line 252
    iget-object v1, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    iget-object v2, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    #getter for: Lcom/muvee/video/trimer/view/TrimBar;->mRectFTrimRight:Landroid/graphics/RectF;
    invoke-static {v2}, Lcom/muvee/video/trimer/view/TrimBar;->access$2(Lcom/muvee/video/trimer/view/TrimBar;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    #setter for: Lcom/muvee/video/trimer/view/TrimBar;->mTrimRightPressed:Z
    invoke-static {v1, v2}, Lcom/muvee/video/trimer/view/TrimBar;->access$3(Lcom/muvee/video/trimer/view/TrimBar;Z)V

    .line 254
    iget-object v1, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    #getter for: Lcom/muvee/video/trimer/view/TrimBar;->mTrimLeftPressed:Z
    invoke-static {v1}, Lcom/muvee/video/trimer/view/TrimBar;->access$4(Lcom/muvee/video/trimer/view/TrimBar;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    #getter for: Lcom/muvee/video/trimer/view/TrimBar;->mTrimRightPressed:Z
    invoke-static {v1}, Lcom/muvee/video/trimer/view/TrimBar;->access$5(Lcom/muvee/video/trimer/view/TrimBar;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    #getter for: Lcom/muvee/video/trimer/view/TrimBar;->mRectFTrimLeft:Landroid/graphics/RectF;
    invoke-static {v2}, Lcom/muvee/video/trimer/view/TrimBar;->access$0(Lcom/muvee/video/trimer/view/TrimBar;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    #getter for: Lcom/muvee/video/trimer/view/TrimBar;->mRectFTrimRight:Landroid/graphics/RectF;
    invoke-static {v2}, Lcom/muvee/video/trimer/view/TrimBar;->access$2(Lcom/muvee/video/trimer/view/TrimBar;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_7

    .line 256
    iget-object v1, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    #setter for: Lcom/muvee/video/trimer/view/TrimBar;->mTrimLeftPressed:Z
    invoke-static {v1, v5}, Lcom/muvee/video/trimer/view/TrimBar;->access$1(Lcom/muvee/video/trimer/view/TrimBar;Z)V

    .line 261
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    #getter for: Lcom/muvee/video/trimer/view/TrimBar;->mTrimLeftPressed:Z
    invoke-static {v1}, Lcom/muvee/video/trimer/view/TrimBar;->access$4(Lcom/muvee/video/trimer/view/TrimBar;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    #getter for: Lcom/muvee/video/trimer/view/TrimBar;->mTrimRightPressed:Z
    invoke-static {v1}, Lcom/muvee/video/trimer/view/TrimBar;->access$5(Lcom/muvee/video/trimer/view/TrimBar;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 262
    iget-object v1, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    #setter for: Lcom/muvee/video/trimer/view/TrimBar;->mTrimRightPressed:Z
    invoke-static {v1, v5}, Lcom/muvee/video/trimer/view/TrimBar;->access$3(Lcom/muvee/video/trimer/view/TrimBar;Z)V

    .line 264
    :cond_1
    iget-object v1, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    #getter for: Lcom/muvee/video/trimer/view/TrimBar;->mTrimLeftPressed:Z
    invoke-static {v1}, Lcom/muvee/video/trimer/view/TrimBar;->access$4(Lcom/muvee/video/trimer/view/TrimBar;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    #getter for: Lcom/muvee/video/trimer/view/TrimBar;->mTrimRightPressed:Z
    invoke-static {v1}, Lcom/muvee/video/trimer/view/TrimBar;->access$5(Lcom/muvee/video/trimer/view/TrimBar;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 266
    :cond_2
    iget-object v1, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    sget-object v2, Lcom/muvee/video/trimer/view/TrimBar$State;->PAUSE:Lcom/muvee/video/trimer/view/TrimBar$State;

    #setter for: Lcom/muvee/video/trimer/view/TrimBar;->mState:Lcom/muvee/video/trimer/view/TrimBar$State;
    invoke-static {v1, v2}, Lcom/muvee/video/trimer/view/TrimBar;->access$6(Lcom/muvee/video/trimer/view/TrimBar;Lcom/muvee/video/trimer/view/TrimBar$State;)V

    .line 275
    iget-object v1, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    #getter for: Lcom/muvee/video/trimer/view/TrimBar;->mTrimLeftPressed:Z
    invoke-static {v1}, Lcom/muvee/video/trimer/view/TrimBar;->access$4(Lcom/muvee/video/trimer/view/TrimBar;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 276
    iget-object v1, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    #getter for: Lcom/muvee/video/trimer/view/TrimBar;->mOnTrimBarChangeListener:Lcom/muvee/video/trimer/view/TrimBar$OnTrimBarChangeListener;
    invoke-static {v1}, Lcom/muvee/video/trimer/view/TrimBar;->access$7(Lcom/muvee/video/trimer/view/TrimBar;)Lcom/muvee/video/trimer/view/TrimBar$OnTrimBarChangeListener;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 277
    iget-object v1, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    #getter for: Lcom/muvee/video/trimer/view/TrimBar;->mOnTrimBarChangeListener:Lcom/muvee/video/trimer/view/TrimBar$OnTrimBarChangeListener;
    invoke-static {v1}, Lcom/muvee/video/trimer/view/TrimBar;->access$7(Lcom/muvee/video/trimer/view/TrimBar;)Lcom/muvee/video/trimer/view/TrimBar$OnTrimBarChangeListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/muvee/video/trimer/view/TrimBar$OnTrimBarChangeListener;->onTrimLeftPressed()V

    .line 279
    :cond_3
    iget-object v1, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    iget-object v2, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    #getter for: Lcom/muvee/video/trimer/view/TrimBar;->mTrimLeft:I
    invoke-static {v2}, Lcom/muvee/video/trimer/view/TrimBar;->access$8(Lcom/muvee/video/trimer/view/TrimBar;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/muvee/video/trimer/view/TrimBar;->setCurrentPosition(I)V

    .line 281
    :cond_4
    iget-object v1, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    #getter for: Lcom/muvee/video/trimer/view/TrimBar;->mTrimRightPressed:Z
    invoke-static {v1}, Lcom/muvee/video/trimer/view/TrimBar;->access$5(Lcom/muvee/video/trimer/view/TrimBar;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 282
    iget-object v1, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    #getter for: Lcom/muvee/video/trimer/view/TrimBar;->mOnTrimBarChangeListener:Lcom/muvee/video/trimer/view/TrimBar$OnTrimBarChangeListener;
    invoke-static {v1}, Lcom/muvee/video/trimer/view/TrimBar;->access$7(Lcom/muvee/video/trimer/view/TrimBar;)Lcom/muvee/video/trimer/view/TrimBar$OnTrimBarChangeListener;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 283
    iget-object v1, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    #getter for: Lcom/muvee/video/trimer/view/TrimBar;->mOnTrimBarChangeListener:Lcom/muvee/video/trimer/view/TrimBar$OnTrimBarChangeListener;
    invoke-static {v1}, Lcom/muvee/video/trimer/view/TrimBar;->access$7(Lcom/muvee/video/trimer/view/TrimBar;)Lcom/muvee/video/trimer/view/TrimBar$OnTrimBarChangeListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/muvee/video/trimer/view/TrimBar$OnTrimBarChangeListener;->onTrimRightPressed()V

    .line 285
    :cond_5
    iget-object v1, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    iget-object v2, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    #getter for: Lcom/muvee/video/trimer/view/TrimBar;->mTrimRight:I
    invoke-static {v2}, Lcom/muvee/video/trimer/view/TrimBar;->access$9(Lcom/muvee/video/trimer/view/TrimBar;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/muvee/video/trimer/view/TrimBar;->setCurrentPosition(I)V

    .line 342
    :cond_6
    :goto_1
    return v7

    .line 258
    :cond_7
    iget-object v1, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    #setter for: Lcom/muvee/video/trimer/view/TrimBar;->mTrimRightPressed:Z
    invoke-static {v1, v5}, Lcom/muvee/video/trimer/view/TrimBar;->access$3(Lcom/muvee/video/trimer/view/TrimBar;Z)V

    goto :goto_0

    .line 290
    :cond_8
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    #getter for: Lcom/muvee/video/trimer/view/TrimBar;->mRectFSelected:Landroid/graphics/RectF;
    invoke-static {v1}, Lcom/muvee/video/trimer/view/TrimBar;->access$10(Lcom/muvee/video/trimer/view/TrimBar;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 291
    .local v0, rectF:Landroid/graphics/RectF;
    iget v1, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v6

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 292
    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v6

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 293
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 294
    iget-object v1, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    iget-object v2, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    #getter for: Lcom/muvee/video/trimer/view/TrimBar;->mTrimLeft:I
    invoke-static {v2}, Lcom/muvee/video/trimer/view/TrimBar;->access$8(Lcom/muvee/video/trimer/view/TrimBar;)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f80

    iget-object v4, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    #getter for: Lcom/muvee/video/trimer/view/TrimBar;->mTrimRight:I
    invoke-static {v4}, Lcom/muvee/video/trimer/view/TrimBar;->access$9(Lcom/muvee/video/trimer/view/TrimBar;)I

    move-result v4

    iget-object v5, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    #getter for: Lcom/muvee/video/trimer/view/TrimBar;->mTrimLeft:I
    invoke-static {v5}, Lcom/muvee/video/trimer/view/TrimBar;->access$8(Lcom/muvee/video/trimer/view/TrimBar;)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget-object v5, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    #getter for: Lcom/muvee/video/trimer/view/TrimBar;->mRectFSelected:Landroid/graphics/RectF;
    invoke-static {v5}, Lcom/muvee/video/trimer/view/TrimBar;->access$10(Lcom/muvee/video/trimer/view/TrimBar;)Landroid/graphics/RectF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    #getter for: Lcom/muvee/video/trimer/view/TrimBar;->mRectFSelected:Landroid/graphics/RectF;
    invoke-static {v4}, Lcom/muvee/video/trimer/view/TrimBar;->access$10(Lcom/muvee/video/trimer/view/TrimBar;)Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    #getter for: Lcom/muvee/video/trimer/view/TrimBar;->mRectFSelected:Landroid/graphics/RectF;
    invoke-static {v5}, Lcom/muvee/video/trimer/view/TrimBar;->access$10(Lcom/muvee/video/trimer/view/TrimBar;)Landroid/graphics/RectF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    #setter for: Lcom/muvee/video/trimer/view/TrimBar;->mCurrentPlayPosition:I
    invoke-static {v1, v2}, Lcom/muvee/video/trimer/view/TrimBar;->access$11(Lcom/muvee/video/trimer/view/TrimBar;I)V

    .line 295
    iget-object v1, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    #getter for: Lcom/muvee/video/trimer/view/TrimBar;->mOnTrimBarChangeListener:Lcom/muvee/video/trimer/view/TrimBar$OnTrimBarChangeListener;
    invoke-static {v1}, Lcom/muvee/video/trimer/view/TrimBar;->access$7(Lcom/muvee/video/trimer/view/TrimBar;)Lcom/muvee/video/trimer/view/TrimBar$OnTrimBarChangeListener;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 296
    iget-object v1, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    #getter for: Lcom/muvee/video/trimer/view/TrimBar;->mOnTrimBarChangeListener:Lcom/muvee/video/trimer/view/TrimBar$OnTrimBarChangeListener;
    invoke-static {v1}, Lcom/muvee/video/trimer/view/TrimBar;->access$7(Lcom/muvee/video/trimer/view/TrimBar;)Lcom/muvee/video/trimer/view/TrimBar$OnTrimBarChangeListener;

    move-result-object v1

    iget-object v2, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    #getter for: Lcom/muvee/video/trimer/view/TrimBar;->mCurrentPlayPosition:I
    invoke-static {v2}, Lcom/muvee/video/trimer/view/TrimBar;->access$12(Lcom/muvee/video/trimer/view/TrimBar;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/muvee/video/trimer/view/TrimBar$OnTrimBarChangeListener;->onTrimBarPressed(I)V

    goto :goto_1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/high16 v5, 0x4210

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 348
    const-string v3, "com.muvee.video.trimer.view.TrimBar"

    const-string v4, "::onScroll:"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v3, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    #getter for: Lcom/muvee/video/trimer/view/TrimBar;->mRectFTrimRight:Landroid/graphics/RectF;
    invoke-static {v3}, Lcom/muvee/video/trimer/view/TrimBar;->access$2(Lcom/muvee/video/trimer/view/TrimBar;)Landroid/graphics/RectF;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    #getter for: Lcom/muvee/video/trimer/view/TrimBar;->mRectFTrimLeft:Landroid/graphics/RectF;
    invoke-static {v3}, Lcom/muvee/video/trimer/view/TrimBar;->access$0(Lcom/muvee/video/trimer/view/TrimBar;)Landroid/graphics/RectF;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    #getter for: Lcom/muvee/video/trimer/view/TrimBar;->mBitmapDrawableTrimPopup:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/muvee/video/trimer/view/TrimBar;->access$13(Lcom/muvee/video/trimer/view/TrimBar;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_2

    :cond_0
    move v1, v2

    .line 384
    :cond_1
    :goto_0
    return v1

    .line 353
    :cond_2
    iget-object v3, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    #getter for: Lcom/muvee/video/trimer/view/TrimBar;->mTrimLeftPressed:Z
    invoke-static {v3}, Lcom/muvee/video/trimer/view/TrimBar;->access$4(Lcom/muvee/video/trimer/view/TrimBar;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 354
    iget-object v3, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    #getter for: Lcom/muvee/video/trimer/view/TrimBar;->mTrimLeft:I
    invoke-static {v3}, Lcom/muvee/video/trimer/view/TrimBar;->access$8(Lcom/muvee/video/trimer/view/TrimBar;)I

    move-result v4

    int-to-float v4, v4

    invoke-direct {p0, p3}, Lcom/muvee/video/trimer/view/TrimBar$1;->change(F)F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    #setter for: Lcom/muvee/video/trimer/view/TrimBar;->mTrimLeft:I
    invoke-static {v3, v4}, Lcom/muvee/video/trimer/view/TrimBar;->access$14(Lcom/muvee/video/trimer/view/TrimBar;I)V

    .line 355
    iget-object v3, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    iget-object v4, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    #getter for: Lcom/muvee/video/trimer/view/TrimBar;->mTrimLeft:I
    invoke-static {v4}, Lcom/muvee/video/trimer/view/TrimBar;->access$8(Lcom/muvee/video/trimer/view/TrimBar;)I

    move-result v4

    iget-object v5, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    #getter for: Lcom/muvee/video/trimer/view/TrimBar;->mTrimRight:I
    invoke-static {v5}, Lcom/muvee/video/trimer/view/TrimBar;->access$9(Lcom/muvee/video/trimer/view/TrimBar;)I

    move-result v5

    invoke-direct {p0}, Lcom/muvee/video/trimer/view/TrimBar$1;->min()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    #setter for: Lcom/muvee/video/trimer/view/TrimBar;->mTrimLeft:I
    invoke-static {v3, v4}, Lcom/muvee/video/trimer/view/TrimBar;->access$14(Lcom/muvee/video/trimer/view/TrimBar;I)V

    .line 356
    iget-object v3, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    iget-object v4, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    #getter for: Lcom/muvee/video/trimer/view/TrimBar;->mTrimLeft:I
    invoke-static {v4}, Lcom/muvee/video/trimer/view/TrimBar;->access$8(Lcom/muvee/video/trimer/view/TrimBar;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/muvee/video/trimer/view/TrimBar;->setCurrentPosition(I)V

    .line 357
    iget-object v3, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    iget-object v4, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    #getter for: Lcom/muvee/video/trimer/view/TrimBar;->mRectFTrimLeft:Landroid/graphics/RectF;
    invoke-static {v4}, Lcom/muvee/video/trimer/view/TrimBar;->access$0(Lcom/muvee/video/trimer/view/TrimBar;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v5, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    #getter for: Lcom/muvee/video/trimer/view/TrimBar;->mBitmapDrawableTrimPopup:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/muvee/video/trimer/view/TrimBar;->access$13(Lcom/muvee/video/trimer/view/TrimBar;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    #getter for: Lcom/muvee/video/trimer/view/TrimBar;->mRectFTrimLeft:Landroid/graphics/RectF;
    invoke-static {v5}, Lcom/muvee/video/trimer/view/TrimBar;->access$0(Lcom/muvee/video/trimer/view/TrimBar;)Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    iget-object v6, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    #getter for: Lcom/muvee/video/trimer/view/TrimBar;->mBitmapDrawableTrimPopup:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/muvee/video/trimer/view/TrimBar;->access$13(Lcom/muvee/video/trimer/view/TrimBar;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    add-float/2addr v5, v6

    float-to-int v5, v5

    iget-object v6, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    invoke-virtual {v6}, Lcom/muvee/video/trimer/view/TrimBar;->getHeight()I

    move-result v6

    invoke-virtual {v3, v4, v2, v5, v6}, Lcom/muvee/video/trimer/view/TrimBar;->invalidate(IIII)V

    goto/16 :goto_0

    .line 360
    :cond_3
    iget-object v3, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    #getter for: Lcom/muvee/video/trimer/view/TrimBar;->mTrimRightPressed:Z
    invoke-static {v3}, Lcom/muvee/video/trimer/view/TrimBar;->access$5(Lcom/muvee/video/trimer/view/TrimBar;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 361
    iget-object v3, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    #getter for: Lcom/muvee/video/trimer/view/TrimBar;->mTrimRight:I
    invoke-static {v3}, Lcom/muvee/video/trimer/view/TrimBar;->access$9(Lcom/muvee/video/trimer/view/TrimBar;)I

    move-result v4

    int-to-float v4, v4

    invoke-direct {p0, p3}, Lcom/muvee/video/trimer/view/TrimBar$1;->change(F)F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    #setter for: Lcom/muvee/video/trimer/view/TrimBar;->mTrimRight:I
    invoke-static {v3, v4}, Lcom/muvee/video/trimer/view/TrimBar;->access$15(Lcom/muvee/video/trimer/view/TrimBar;I)V

    .line 362
    iget-object v3, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    iget-object v4, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    #getter for: Lcom/muvee/video/trimer/view/TrimBar;->mTrimLeft:I
    invoke-static {v4}, Lcom/muvee/video/trimer/view/TrimBar;->access$8(Lcom/muvee/video/trimer/view/TrimBar;)I

    move-result v4

    invoke-direct {p0}, Lcom/muvee/video/trimer/view/TrimBar$1;->min()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    #getter for: Lcom/muvee/video/trimer/view/TrimBar;->mTrimRight:I
    invoke-static {v5}, Lcom/muvee/video/trimer/view/TrimBar;->access$9(Lcom/muvee/video/trimer/view/TrimBar;)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v5, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    #getter for: Lcom/muvee/video/trimer/view/TrimBar;->mVideoDuration:I
    invoke-static {v5}, Lcom/muvee/video/trimer/view/TrimBar;->access$16(Lcom/muvee/video/trimer/view/TrimBar;)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    #setter for: Lcom/muvee/video/trimer/view/TrimBar;->mTrimRight:I
    invoke-static {v3, v4}, Lcom/muvee/video/trimer/view/TrimBar;->access$15(Lcom/muvee/video/trimer/view/TrimBar;I)V

    .line 363
    iget-object v3, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    iget-object v4, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    #getter for: Lcom/muvee/video/trimer/view/TrimBar;->mTrimRight:I
    invoke-static {v4}, Lcom/muvee/video/trimer/view/TrimBar;->access$9(Lcom/muvee/video/trimer/view/TrimBar;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/muvee/video/trimer/view/TrimBar;->setCurrentPosition(I)V

    .line 364
    iget-object v3, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    iget-object v4, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    #getter for: Lcom/muvee/video/trimer/view/TrimBar;->mRectFTrimRight:Landroid/graphics/RectF;
    invoke-static {v4}, Lcom/muvee/video/trimer/view/TrimBar;->access$2(Lcom/muvee/video/trimer/view/TrimBar;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v5, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    #getter for: Lcom/muvee/video/trimer/view/TrimBar;->mBitmapDrawableTrimPopup:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/muvee/video/trimer/view/TrimBar;->access$13(Lcom/muvee/video/trimer/view/TrimBar;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    #getter for: Lcom/muvee/video/trimer/view/TrimBar;->mRectFTrimRight:Landroid/graphics/RectF;
    invoke-static {v5}, Lcom/muvee/video/trimer/view/TrimBar;->access$2(Lcom/muvee/video/trimer/view/TrimBar;)Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    iget-object v6, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    #getter for: Lcom/muvee/video/trimer/view/TrimBar;->mBitmapDrawableTrimPopup:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/muvee/video/trimer/view/TrimBar;->access$13(Lcom/muvee/video/trimer/view/TrimBar;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    add-float/2addr v5, v6

    float-to-int v5, v5

    iget-object v6, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    invoke-virtual {v6}, Lcom/muvee/video/trimer/view/TrimBar;->getHeight()I

    move-result v6

    invoke-virtual {v3, v4, v2, v5, v6}, Lcom/muvee/video/trimer/view/TrimBar;->invalidate(IIII)V

    goto/16 :goto_0

    .line 369
    :cond_4
    new-instance v0, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    #getter for: Lcom/muvee/video/trimer/view/TrimBar;->mRectFSelected:Landroid/graphics/RectF;
    invoke-static {v2}, Lcom/muvee/video/trimer/view/TrimBar;->access$10(Lcom/muvee/video/trimer/view/TrimBar;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 370
    .local v0, rectF:Landroid/graphics/RectF;
    iget v2, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v5

    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 371
    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, v5

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    .line 372
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 373
    iget-object v2, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    iget-object v3, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    #getter for: Lcom/muvee/video/trimer/view/TrimBar;->mTrimLeft:I
    invoke-static {v3}, Lcom/muvee/video/trimer/view/TrimBar;->access$8(Lcom/muvee/video/trimer/view/TrimBar;)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f80

    iget-object v5, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    #getter for: Lcom/muvee/video/trimer/view/TrimBar;->mTrimRight:I
    invoke-static {v5}, Lcom/muvee/video/trimer/view/TrimBar;->access$9(Lcom/muvee/video/trimer/view/TrimBar;)I

    move-result v5

    iget-object v6, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    #getter for: Lcom/muvee/video/trimer/view/TrimBar;->mTrimLeft:I
    invoke-static {v6}, Lcom/muvee/video/trimer/view/TrimBar;->access$8(Lcom/muvee/video/trimer/view/TrimBar;)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v4, v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget-object v6, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    #getter for: Lcom/muvee/video/trimer/view/TrimBar;->mRectFSelected:Landroid/graphics/RectF;
    invoke-static {v6}, Lcom/muvee/video/trimer/view/TrimBar;->access$10(Lcom/muvee/video/trimer/view/TrimBar;)Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->left:F

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    #getter for: Lcom/muvee/video/trimer/view/TrimBar;->mRectFSelected:Landroid/graphics/RectF;
    invoke-static {v5}, Lcom/muvee/video/trimer/view/TrimBar;->access$10(Lcom/muvee/video/trimer/view/TrimBar;)Landroid/graphics/RectF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/RectF;->right:F

    iget-object v6, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    #getter for: Lcom/muvee/video/trimer/view/TrimBar;->mRectFSelected:Landroid/graphics/RectF;
    invoke-static {v6}, Lcom/muvee/video/trimer/view/TrimBar;->access$10(Lcom/muvee/video/trimer/view/TrimBar;)Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->left:F

    sub-float/2addr v5, v6

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    #setter for: Lcom/muvee/video/trimer/view/TrimBar;->mCurrentPlayPosition:I
    invoke-static {v2, v3}, Lcom/muvee/video/trimer/view/TrimBar;->access$11(Lcom/muvee/video/trimer/view/TrimBar;I)V

    .line 376
    iget-object v2, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    #getter for: Lcom/muvee/video/trimer/view/TrimBar;->mOnTrimBarChangeListener:Lcom/muvee/video/trimer/view/TrimBar$OnTrimBarChangeListener;
    invoke-static {v2}, Lcom/muvee/video/trimer/view/TrimBar;->access$7(Lcom/muvee/video/trimer/view/TrimBar;)Lcom/muvee/video/trimer/view/TrimBar$OnTrimBarChangeListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 377
    iget-object v2, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    #getter for: Lcom/muvee/video/trimer/view/TrimBar;->mOnTrimBarChangeListener:Lcom/muvee/video/trimer/view/TrimBar$OnTrimBarChangeListener;
    invoke-static {v2}, Lcom/muvee/video/trimer/view/TrimBar;->access$7(Lcom/muvee/video/trimer/view/TrimBar;)Lcom/muvee/video/trimer/view/TrimBar$OnTrimBarChangeListener;

    move-result-object v2

    iget-object v3, p0, Lcom/muvee/video/trimer/view/TrimBar$1;->this$0:Lcom/muvee/video/trimer/view/TrimBar;

    #getter for: Lcom/muvee/video/trimer/view/TrimBar;->mCurrentPlayPosition:I
    invoke-static {v3}, Lcom/muvee/video/trimer/view/TrimBar;->access$12(Lcom/muvee/video/trimer/view/TrimBar;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/muvee/video/trimer/view/TrimBar$OnTrimBarChangeListener;->onTrimBarPressed(I)V

    goto/16 :goto_0
.end method
