.class Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "HtcGridView2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isSkipDown:Z

.field final synthetic this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;


# direct methods
.method constructor <init>(Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;)V
    .locals 1
    .parameter

    .prologue
    .line 2183
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;,"Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture.1;"
    iput-object p1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 2184
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->isSkipDown:Z

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "e"

    .prologue
    .line 2311
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;,"Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture.1;"
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-object v1, v1, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    iget-object v1, v1, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v1, v1, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->cx:I

    iget-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-object v2, v2, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    iget-object v2, v2, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v2, v2, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->cy:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->setCurrentPosition(II)V

    .line 2312
    const/4 v0, 0x1

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "e"

    .prologue
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;,"Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture.1;"
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2188
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mIsFling:Z
    invoke-static {v1}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->access$1400(Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->isSkipDown:Z

    .line 2190
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mIsFling:Z
    invoke-static {v1}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->access$1400(Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2191
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    #calls: Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->stopFling()V
    invoke-static {v1}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->access$1500(Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;)V

    .line 2194
    :cond_0
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-object v2, v2, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    iget-object v2, v2, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v2, v2, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->cx:I

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-object v3, v3, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    iget-object v3, v3, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v3, v3, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->cy:I

    invoke-virtual {v1, v2, v3}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->setCurrentPosition(II)V

    .line 2196
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-object v1, v1, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/opensense/widget/HtcGridView2;->getItemPos(II)I

    move-result v0

    .line 2197
    .local v0, nFocusPos:I
    iget-boolean v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->isSkipDown:Z

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-eq v1, v0, :cond_1

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-object v1, v1, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    iget-object v1, v1, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    invoke-virtual {v1, v0}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->isItemLoaded(I)Z

    move-result v1

    if-ne v4, v1, :cond_1

    .line 2201
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-object v1, v1, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v1, v4}, Lcom/htc/opensense/widget/HtcGridView2;->setPressed(Z)V

    .line 2202
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-object v1, v1, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    #calls: Lcom/htc/opensense/widget/HtcGridView2;->positionSelector(I)V
    invoke-static {v1, v0}, Lcom/htc/opensense/widget/HtcGridView2;->access$900(Lcom/htc/opensense/widget/HtcGridView2;I)V

    .line 2203
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-object v1, v1, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    iput-boolean v4, v1, Lcom/htc/opensense/widget/HtcGridView2;->mIsSelectorFocused:Z

    .line 2204
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-object v1, v1, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v1}, Lcom/htc/opensense/widget/HtcGridView2;->invalidate()V

    .line 2210
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-object v1, v1, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    iget-object v1, v1, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v1, v1, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->cy:I

    iget-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-object v2, v2, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    #calls: Lcom/htc/opensense/widget/HtcGridView2;->getBottomBoundary()I
    invoke-static {v2}, Lcom/htc/opensense/widget/HtcGridView2;->access$1200(Lcom/htc/opensense/widget/HtcGridView2;)I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 2211
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-object v1, v1, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    iput-boolean v4, v1, Lcom/htc/opensense/widget/HtcGridView2;->mEnableScrollOutOfBottom:Z

    .line 2216
    :goto_0
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-object v1, v1, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    iget-object v1, v1, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v1, v1, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->cy:I

    iget-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-object v2, v2, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    #calls: Lcom/htc/opensense/widget/HtcGridView2;->getTopBoundary()I
    invoke-static {v2}, Lcom/htc/opensense/widget/HtcGridView2;->access$1600(Lcom/htc/opensense/widget/HtcGridView2;)I

    move-result v2

    if-gt v1, v2, :cond_3

    .line 2217
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-object v1, v1, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    iput-boolean v4, v1, Lcom/htc/opensense/widget/HtcGridView2;->mEnableScrollOutOfTop:Z

    .line 2222
    :goto_1
    return v4

    .line 2213
    :cond_2
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-object v1, v1, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    iput-boolean v5, v1, Lcom/htc/opensense/widget/HtcGridView2;->mEnableScrollOutOfBottom:Z

    goto :goto_0

    .line 2219
    :cond_3
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-object v1, v1, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    iput-boolean v5, v1, Lcom/htc/opensense/widget/HtcGridView2;->mEnableScrollOutOfTop:Z

    goto :goto_1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 10
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;,"Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture.1;"
    const/16 v6, 0x7d0

    const/4 v3, 0x0

    const/16 v2, -0x7d0

    const/4 v9, 0x1

    .line 2317
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mScroller:Lcom/htc/widget/HtcScroller;
    invoke-static {v0}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->access$1700(Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;)Lcom/htc/widget/HtcScroller;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2362
    :goto_0
    return v9

    .line 2321
    :cond_0
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mFlingDirection:I
    invoke-static {v0}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->access$1900(Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;)I

    move-result v0

    if-nez v0, :cond_2

    float-to-int v0, p4

    :goto_1
    #setter for: Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mVelocity:I
    invoke-static {v1, v0}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->access$1802(Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;I)I

    .line 2326
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mVelocity:I
    invoke-static {v0}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->access$1800(Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;)I

    move-result v0

    if-ge v6, v0, :cond_3

    .line 2328
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    #setter for: Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mVelocity:I
    invoke-static {v0, v6}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->access$1802(Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;I)I

    .line 2335
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mCurrentX:I
    invoke-static {v1}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->access$2100(Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;)I

    move-result v1

    #setter for: Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mLastX:I
    invoke-static {v0, v1}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->access$2002(Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;I)I

    .line 2336
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mCurrentY:I
    invoke-static {v1}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->access$2300(Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;)I

    move-result v1

    #setter for: Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mLastY:I
    invoke-static {v0, v1}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->access$2202(Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;I)I

    .line 2338
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mEnableBouncing:Z
    invoke-static {v0}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->access$2400(Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;)Z

    move-result v0

    if-ne v9, v0, :cond_4

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mOutOfBoundary:Z
    invoke-static {v0}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->access$2500(Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;)Z

    move-result v0

    if-ne v9, v0, :cond_4

    .line 2340
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->startBouncingBack()V

    .line 2361
    :goto_3
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    #setter for: Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mIsFling:Z
    invoke-static {v0, v9}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->access$1402(Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;Z)Z

    goto :goto_0

    .line 2321
    :cond_2
    float-to-int v0, p3

    goto :goto_1

    .line 2330
    :cond_3
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mVelocity:I
    invoke-static {v0}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->access$1800(Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;)I

    move-result v0

    if-le v2, v0, :cond_1

    .line 2332
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    #setter for: Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mVelocity:I
    invoke-static {v0, v2}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->access$1802(Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;I)I

    goto :goto_2

    .line 2345
    :cond_4
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    #setter for: Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mFlingMode:I
    invoke-static {v0, v3}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->access$2602(Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;I)I

    .line 2346
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mScroller:Lcom/htc/widget/HtcScroller;
    invoke-static {v0}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->access$1700(Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;)Lcom/htc/widget/HtcScroller;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mCurrentX:I
    invoke-static {v1}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->access$2100(Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mCurrentY:I
    invoke-static {v2}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->access$2300(Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;)I

    move-result v2

    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mVelocity:I
    invoke-static {v6}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->access$1800(Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;)I

    move-result v6

    neg-int v4, v6

    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mMinimuX:I
    invoke-static {v6}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->access$2700(Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;)I

    move-result v5

    iget-object v6, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mMaximumX:I
    invoke-static {v6}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->access$2800(Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;)I

    move-result v6

    iget-object v7, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mMinimuY:I
    invoke-static {v7}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->access$2900(Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;)I

    move-result v7

    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mMaximumY:I
    invoke-static {v8}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->access$3000(Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;)I

    move-result v8

    invoke-virtual/range {v0 .. v8}, Lcom/htc/widget/HtcScroller;->fling(IIIIIIII)V

    .line 2352
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mScroller:Lcom/htc/widget/HtcScroller;
    invoke-static {v0}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->access$1700(Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;)Lcom/htc/widget/HtcScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->getFinalX()I

    move-result v0

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mCurrentX:I
    invoke-static {v1}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->access$2100(Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;)I

    move-result v1

    sub-int v3, v0, v1

    .line 2353
    .local v3, nDeltaX:I
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mScroller:Lcom/htc/widget/HtcScroller;
    invoke-static {v0}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->access$1700(Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;)Lcom/htc/widget/HtcScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->getFinalY()I

    move-result v0

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mCurrentY:I
    invoke-static {v1}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->access$2300(Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;)I

    move-result v1

    sub-int v4, v0, v1

    .line 2354
    .local v4, nDelataY:I
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mScroller:Lcom/htc/widget/HtcScroller;
    invoke-static {v0}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->access$1700(Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;)Lcom/htc/widget/HtcScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->getDuration()I

    move-result v5

    .line 2355
    .local v5, nDuration:I
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mScroller:Lcom/htc/widget/HtcScroller;
    invoke-static {v0}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->access$1700(Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;)Lcom/htc/widget/HtcScroller;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/htc/widget/HtcScroller;->forceFinished(Z)V

    .line 2357
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mScroller:Lcom/htc/widget/HtcScroller;
    invoke-static {v0}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->access$1700(Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;)Lcom/htc/widget/HtcScroller;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mCurrentX:I
    invoke-static {v1}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->access$2100(Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->mCurrentY:I
    invoke-static {v2}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->access$2300(Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;)I

    move-result v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcScroller;->startScroll(IIIII)V

    .line 2358
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->fling_start()V

    goto/16 :goto_3
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 6
    .parameter "e"

    .prologue
    .line 2281
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;,"Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture.1;"
    iget-boolean v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->isSkipDown:Z

    if-nez v1, :cond_0

    .line 2282
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-object v1, v1, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/opensense/widget/HtcGridView2;->getItemPos(II)I

    move-result v0

    .line 2284
    .local v0, nFocusPos:I
    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    .line 2295
    .end local v0           #nFocusPos:I
    :cond_0
    :goto_0
    return-void

    .line 2286
    .restart local v0       #nFocusPos:I
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-object v1, v1, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/opensense/widget/HtcGridView2;->setPressed(Z)V

    .line 2287
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-object v2, v2, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    iget-object v2, v2, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v2, v2, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->cx:I

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-object v3, v3, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    iget-object v3, v3, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v3, v3, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->cy:I

    invoke-virtual {v1, v2, v3}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->setCurrentPosition(II)V

    .line 2288
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-object v1, v1, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    #calls: Lcom/htc/opensense/widget/HtcGridView2;->positionSelector(I)V
    invoke-static {v1, v0}, Lcom/htc/opensense/widget/HtcGridView2;->access$900(Lcom/htc/opensense/widget/HtcGridView2;I)V

    .line 2290
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-object v1, v1, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    iget-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-object v2, v2, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v2}, Lcom/htc/opensense/widget/HtcGridView2;->getCenterView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-object v3, v3, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    iget v3, v3, Lcom/htc/opensense/widget/HtcGridView2;->mFocusedPos:I

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-object v4, v4, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    iget v4, v4, Lcom/htc/opensense/widget/HtcGridView2;->mFocusedPos:I

    iget-object v5, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-object v5, v5, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    iget-object v5, v5, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v5, v5, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    div-int/2addr v4, v5

    int-to-long v4, v4

    #calls: Lcom/htc/opensense/widget/HtcGridView2;->performLongPress(Landroid/view/View;IJ)Z
    invoke-static {v1, v2, v3, v4, v5}, Lcom/htc/opensense/widget/HtcGridView2;->access$500(Lcom/htc/opensense/widget/HtcGridView2;Landroid/view/View;IJ)Z

    .line 2292
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-object v1, v1, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/htc/opensense/widget/HtcGridView2;->mIsSelectorFocused:Z

    .line 2293
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-object v1, v1, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v1}, Lcom/htc/opensense/widget/HtcGridView2;->invalidate()V

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 2366
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;,"Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture.1;"
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/opensense/widget/HtcGridView2;->mEnableFakeFocusViewItem:Z

    .line 2367
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    if-eqz v0, :cond_0

    .line 2368
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->pausePrefetch()V

    .line 2371
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-object v1, v1, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    iget-object v1, v1, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v1, v1, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->cx:I

    float-to-int v2, p3

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-object v2, v2, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    iget-object v2, v2, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v2, v2, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->cy:I

    float-to-int v3, p4

    add-int/2addr v2, v3

    #calls: Lcom/htc/opensense/widget/HtcGridView2;->onScrollViewTo(II)V
    invoke-static {v0, v1, v2}, Lcom/htc/opensense/widget/HtcGridView2;->access$3100(Lcom/htc/opensense/widget/HtcGridView2;II)V

    .line 2373
    const/4 v0, 0x1

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "e"

    .prologue
    .line 2300
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;,"Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture.1;"
    iget-boolean v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->isSkipDown:Z

    if-nez v1, :cond_0

    .line 2301
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-object v1, v1, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/opensense/widget/HtcGridView2;->getItemPos(II)I

    move-result v0

    .line 2302
    .local v0, nFocusPos:I
    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    .line 2307
    .end local v0           #nFocusPos:I
    :cond_0
    :goto_0
    return-void

    .line 2304
    .restart local v0       #nFocusPos:I
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-object v1, v1, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/htc/opensense/widget/HtcGridView2;->mIsSelectorFocused:Z

    .line 2305
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-object v1, v1, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v1}, Lcom/htc/opensense/widget/HtcGridView2;->invalidate()V

    goto :goto_0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "e"

    .prologue
    .line 2227
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;,"Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture.1;"
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-object v1, v1, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    iget-object v1, v1, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v1, v1, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->cx:I

    iget-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-object v2, v2, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    iget-object v2, v2, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v2, v2, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->cy:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->setCurrentPosition(II)V

    .line 2235
    const/4 v0, 0x1

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "e"

    .prologue
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;,"Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture.1;"
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 2241
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    #calls: Lcom/htc/opensense/widget/HtcGridView2;->getTopBoundary()I
    invoke-static {v0}, Lcom/htc/opensense/widget/HtcGridView2;->access$1600(Lcom/htc/opensense/widget/HtcGridView2;)I

    move-result v0

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-object v1, v1, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    iget-object v1, v1, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v1, v1, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->cy:I

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v0, v0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->cy:I

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-object v1, v1, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    #calls: Lcom/htc/opensense/widget/HtcGridView2;->getBottomBoundary()I
    invoke-static {v1}, Lcom/htc/opensense/widget/HtcGridView2;->access$1200(Lcom/htc/opensense/widget/HtcGridView2;)I

    move-result v1

    if-gt v0, v1, :cond_1

    move v6, v8

    .line 2243
    .local v6, isBounceOff:Z
    :goto_0
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-object v1, v1, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    iget-object v1, v1, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v1, v1, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->cx:I

    iget-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-object v2, v2, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    iget-object v2, v2, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v2, v2, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->cy:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->setCurrentPosition(II)V

    .line 2245
    if-ne v8, v6, :cond_4

    iget-boolean v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->isSkipDown:Z

    if-nez v0, :cond_4

    .line 2246
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense/widget/HtcGridView2;->getItemPos(II)I

    move-result v7

    .line 2247
    .local v7, nFocusPos:I
    const/4 v0, -0x1

    if-eq v0, v7, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcGridView2;->mPageCache:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    invoke-virtual {v0, v7}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->isItemLoaded(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2275
    .end local v7           #nFocusPos:I
    :cond_0
    :goto_1
    return v8

    .end local v6           #isBounceOff:Z
    :cond_1
    move v6, v9

    .line 2241
    goto :goto_0

    .line 2251
    .restart local v6       #isBounceOff:Z
    .restart local v7       #nFocusPos:I
    :cond_2
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    #calls: Lcom/htc/opensense/widget/HtcGridView2;->positionSelector(I)V
    invoke-static {v0, v7}, Lcom/htc/opensense/widget/HtcGridView2;->access$900(Lcom/htc/opensense/widget/HtcGridView2;I)V

    .line 2253
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcGridView2;->mItemClickCallback:Lcom/htc/opensense/widget/HtcGridView2$OnItemClickListener;

    if-eqz v0, :cond_3

    .line 2254
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcGridView2;->mItemClickCallback:Lcom/htc/opensense/widget/HtcGridView2$OnItemClickListener;

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-object v1, v1, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    iget-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-object v2, v2, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v2}, Lcom/htc/opensense/widget/HtcGridView2;->getCenterView()Landroid/view/View;

    move-result-object v2

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-object v4, v4, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    iget v3, v4, Lcom/htc/opensense/widget/HtcGridView2;->mFocusedPos:I

    iget-object v4, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-object v4, v4, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    iget v4, v4, Lcom/htc/opensense/widget/HtcGridView2;->mFocusedPos:I

    iget-object v5, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-object v5, v5, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    iget-object v5, v5, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v5, v5, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    div-int/2addr v4, v5

    int-to-long v4, v4

    invoke-interface/range {v0 .. v5}, Lcom/htc/opensense/widget/HtcGridView2$OnItemClickListener;->onItemClick(Lcom/htc/opensense/widget/HtcGridView2;Landroid/view/View;IJ)V

    .line 2257
    :cond_3
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    iput-boolean v9, v0, Lcom/htc/opensense/widget/HtcGridView2;->mIsSelectorFocused:Z

    .line 2258
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcGridView2;->invalidate()V

    goto :goto_1

    .line 2260
    .end local v7           #nFocusPos:I
    :cond_4
    if-nez v6, :cond_0

    .line 2261
    const/4 v3, 0x0

    .line 2262
    .local v3, delta:I
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    #calls: Lcom/htc/opensense/widget/HtcGridView2;->getBottomBoundary()I
    invoke-static {v0}, Lcom/htc/opensense/widget/HtcGridView2;->access$1200(Lcom/htc/opensense/widget/HtcGridView2;)I

    move-result v0

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-object v1, v1, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    iget-object v1, v1, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v1, v1, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->cy:I

    if-ge v0, v1, :cond_5

    .line 2263
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    #calls: Lcom/htc/opensense/widget/HtcGridView2;->getBottomBoundary()I
    invoke-static {v0}, Lcom/htc/opensense/widget/HtcGridView2;->access$1200(Lcom/htc/opensense/widget/HtcGridView2;)I

    move-result v0

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-object v1, v1, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    iget-object v1, v1, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v1, v1, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->cy:I

    sub-int v3, v0, v1

    .line 2269
    :goto_2
    const-string v0, "HtcGridView2"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onSingleTapUp: delta="

    aput-object v2, v1, v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2271
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    const/4 v4, 0x0

    int-to-float v1, v3

    iget-object v2, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-object v2, v2, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    iget v2, v2, Lcom/htc/opensense/widget/HtcGridView2;->mViewHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    move v1, v8

    move v2, v9

    invoke-virtual/range {v0 .. v5}, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->setOutOfBoundary(ZIIFF)V

    goto/16 :goto_1

    .line 2266
    :cond_5
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    #calls: Lcom/htc/opensense/widget/HtcGridView2;->getTopBoundary()I
    invoke-static {v0}, Lcom/htc/opensense/widget/HtcGridView2;->access$1600(Lcom/htc/opensense/widget/HtcGridView2;)I

    move-result v0

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture$1;->this$1:Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;

    iget-object v1, v1, Lcom/htc/opensense/widget/HtcGridView2$GridViewGesture;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    iget-object v1, v1, Lcom/htc/opensense/widget/HtcGridView2;->mGInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    iget v1, v1, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->cy:I

    sub-int v3, v0, v1

    goto :goto_2
.end method
