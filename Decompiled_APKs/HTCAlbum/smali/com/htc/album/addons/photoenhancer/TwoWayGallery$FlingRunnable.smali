.class Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;
.super Ljava/lang/Object;
.source "TwoWayGallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/addons/photoenhancer/TwoWayGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# instance fields
.field private mLastFlingX:I

.field private mLastFlingY:I

.field private mOnFling:Z

.field private mScroller:Lcom/htc/widget/HtcScroller;

.field final synthetic this$0:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;


# direct methods
.method public constructor <init>(Lcom/htc/album/addons/photoenhancer/TwoWayGallery;)V
    .locals 2
    .parameter

    .prologue
    .line 2043
    iput-object p1, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->this$0:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2041
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->mOnFling:Z

    .line 2044
    new-instance v0, Lcom/htc/widget/HtcScroller;

    invoke-virtual {p1}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    .line 2045
    return-void
.end method

.method static synthetic access$100(Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;)Lcom/htc/widget/HtcScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2027
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    return-object v0
.end method

.method private endFling(Z)V
    .locals 3
    .parameter "scrollIntoSlots"

    .prologue
    .line 2111
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcScroller;->forceFinished(Z)V

    .line 2113
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->this$0:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    #getter for: Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->DEBUG:Z
    invoke-static {v0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->access$300(Lcom/htc/album/addons/photoenhancer/TwoWayGallery;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2114
    const-string v0, "TwoWayGallery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop: scrollIntoSlots="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2116
    :cond_0
    const/4 p1, 0x0

    .line 2117
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->this$0:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    #calls: Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->scrollIntoSlots()V
    invoke-static {v0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->access$600(Lcom/htc/album/addons/photoenhancer/TwoWayGallery;)V

    .line 2119
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->mOnFling:Z

    .line 2120
    const-string v0, "TwoWayGallery"

    const-string v1, "Fling end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2121
    return-void
.end method

.method private startCommon()V
    .locals 2

    .prologue
    .line 2057
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->this$0:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    invoke-virtual {v0, p0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2059
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->mOnFling:Z

    .line 2060
    const-string v0, "TwoWayGallery"

    const-string v1, "Fling start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2061
    return-void
.end method


# virtual methods
.method public isFinish()Z
    .locals 1

    .prologue
    .line 2052
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->isFinished()Z

    move-result v0

    return v0
.end method

.method public isOnFling()Z
    .locals 1

    .prologue
    .line 2048
    iget-boolean v0, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->mOnFling:Z

    return v0
.end method

.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 2125
    iget-object v6, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->this$0:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    iget v6, v6, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mItemCount:I

    if-nez v6, :cond_0

    .line 2126
    invoke-direct {p0, v9}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->endFling(Z)V

    .line 2202
    :goto_0
    return-void

    .line 2130
    :cond_0
    iget-object v6, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->this$0:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    const/4 v7, 0x0

    #setter for: Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mShouldStopFling:Z
    invoke-static {v6, v7}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->access$702(Lcom/htc/album/addons/photoenhancer/TwoWayGallery;Z)Z

    .line 2132
    iget-object v3, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    .line 2133
    .local v3, scroller:Lcom/htc/widget/HtcScroller;
    invoke-virtual {v3}, Lcom/htc/widget/HtcScroller;->computeScrollOffset()Z

    move-result v1

    .line 2136
    .local v1, more:Z
    iget-object v6, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->this$0:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    #getter for: Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->horizontal:Z
    invoke-static {v6}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->access$400(Lcom/htc/album/addons/photoenhancer/TwoWayGallery;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2137
    invoke-virtual {v3}, Lcom/htc/widget/HtcScroller;->getCurrX()I

    move-result v4

    .line 2141
    .local v4, x:I
    iget v6, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->mLastFlingX:I

    sub-int v0, v6, v4

    .line 2143
    .local v0, delta:I
    iget-object v6, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->this$0:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    #getter for: Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->DEBUG:Z
    invoke-static {v6}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->access$300(Lcom/htc/album/addons/photoenhancer/TwoWayGallery;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2144
    const-string v6, "TwoWayGallery"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "x="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ,mLastFlingX="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->mLastFlingX:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ,delta="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2148
    :cond_1
    if-lez v0, :cond_2

    .line 2150
    iget-object v6, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->this$0:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    iget-object v7, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->this$0:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    iget v7, v7, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mFirstPosition:I

    #setter for: Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mDownTouchPosition:I
    invoke-static {v6, v7}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->access$802(Lcom/htc/album/addons/photoenhancer/TwoWayGallery;I)I

    .line 2153
    iget-object v6, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->this$0:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    invoke-virtual {v6}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->this$0:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    #getter for: Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mPaddingLeft:I
    invoke-static {v7}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->access$900(Lcom/htc/album/addons/photoenhancer/TwoWayGallery;)I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->this$0:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    #getter for: Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mPaddingRight:I
    invoke-static {v7}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->access$1000(Lcom/htc/album/addons/photoenhancer/TwoWayGallery;)I

    move-result v7

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2163
    :goto_1
    iget-object v6, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->this$0:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    invoke-virtual {v6, v0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->trackMotionScroll(I)V

    .line 2165
    if-eqz v1, :cond_3

    iget-object v6, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->this$0:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    #getter for: Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mShouldStopFling:Z
    invoke-static {v6}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->access$700(Lcom/htc/album/addons/photoenhancer/TwoWayGallery;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 2166
    iput v4, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->mLastFlingX:I

    .line 2167
    iget-object v6, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->this$0:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    invoke-virtual {v6, p0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 2156
    :cond_2
    iget-object v6, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->this$0:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    invoke-virtual {v6}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->getChildCount()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .line 2157
    .local v2, offsetToLast:I
    iget-object v6, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->this$0:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    iget-object v7, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->this$0:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    iget v7, v7, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mFirstPosition:I

    add-int/2addr v7, v2

    #setter for: Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mDownTouchPosition:I
    invoke-static {v6, v7}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->access$802(Lcom/htc/album/addons/photoenhancer/TwoWayGallery;I)I

    .line 2160
    iget-object v6, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->this$0:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    invoke-virtual {v6}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->this$0:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    #getter for: Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mPaddingRight:I
    invoke-static {v7}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->access$1100(Lcom/htc/album/addons/photoenhancer/TwoWayGallery;)I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->this$0:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    #getter for: Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mPaddingLeft:I
    invoke-static {v7}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->access$1200(Lcom/htc/album/addons/photoenhancer/TwoWayGallery;)I

    move-result v7

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    neg-int v6, v6

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    .line 2169
    .end local v2           #offsetToLast:I
    :cond_3
    invoke-direct {p0, v9}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->endFling(Z)V

    goto/16 :goto_0

    .line 2172
    .end local v0           #delta:I
    .end local v4           #x:I
    :cond_4
    invoke-virtual {v3}, Lcom/htc/widget/HtcScroller;->getCurrY()I

    move-result v5

    .line 2176
    .local v5, y:I
    iget v6, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->mLastFlingY:I

    sub-int v0, v6, v5

    .line 2178
    .restart local v0       #delta:I
    if-lez v0, :cond_5

    .line 2180
    iget-object v6, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->this$0:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    iget-object v7, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->this$0:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    iget v7, v7, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mFirstPosition:I

    #setter for: Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mDownTouchPosition:I
    invoke-static {v6, v7}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->access$802(Lcom/htc/album/addons/photoenhancer/TwoWayGallery;I)I

    .line 2183
    iget-object v6, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->this$0:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    invoke-virtual {v6}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->getHeight()I

    move-result v6

    iget-object v7, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->this$0:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    #getter for: Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mPaddingTop:I
    invoke-static {v7}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->access$1300(Lcom/htc/album/addons/photoenhancer/TwoWayGallery;)I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->this$0:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    #getter for: Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mPaddingBottom:I
    invoke-static {v7}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->access$1400(Lcom/htc/album/addons/photoenhancer/TwoWayGallery;)I

    move-result v7

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2193
    :goto_2
    iget-object v6, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->this$0:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    invoke-virtual {v6, v0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->trackMotionScroll(I)V

    .line 2195
    if-eqz v1, :cond_6

    iget-object v6, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->this$0:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    #getter for: Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mShouldStopFling:Z
    invoke-static {v6}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->access$700(Lcom/htc/album/addons/photoenhancer/TwoWayGallery;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 2196
    iput v5, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->mLastFlingY:I

    .line 2197
    iget-object v6, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->this$0:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    invoke-virtual {v6, p0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 2186
    :cond_5
    iget-object v6, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->this$0:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    invoke-virtual {v6}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->getChildCount()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .line 2187
    .restart local v2       #offsetToLast:I
    iget-object v6, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->this$0:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    iget-object v7, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->this$0:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    iget v7, v7, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mFirstPosition:I

    add-int/2addr v7, v2

    #setter for: Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mDownTouchPosition:I
    invoke-static {v6, v7}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->access$802(Lcom/htc/album/addons/photoenhancer/TwoWayGallery;I)I

    .line 2190
    iget-object v6, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->this$0:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    invoke-virtual {v6}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->getHeight()I

    move-result v6

    iget-object v7, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->this$0:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    #getter for: Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mPaddingBottom:I
    invoke-static {v7}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->access$1500(Lcom/htc/album/addons/photoenhancer/TwoWayGallery;)I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->this$0:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    #getter for: Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mPaddingTop:I
    invoke-static {v7}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->access$1600(Lcom/htc/album/addons/photoenhancer/TwoWayGallery;)I

    move-result v7

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    neg-int v6, v6

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_2

    .line 2199
    .end local v2           #offsetToLast:I
    :cond_6
    invoke-direct {p0, v9}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->endFling(Z)V

    goto/16 :goto_0
.end method

.method public startUsingDistance(I)V
    .locals 6
    .parameter "distance"

    .prologue
    const/4 v1, 0x0

    .line 2084
    if-nez p1, :cond_0

    .line 2099
    :goto_0
    return-void

    .line 2085
    :cond_0
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->this$0:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    #getter for: Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->DEBUG:Z
    invoke-static {v0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->access$300(Lcom/htc/album/addons/photoenhancer/TwoWayGallery;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2086
    const-string v0, "TwoWayGallery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startUsingDistance: distance="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2088
    :cond_1
    invoke-direct {p0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->startCommon()V

    .line 2091
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->this$0:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    #getter for: Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->horizontal:Z
    invoke-static {v0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->access$400(Lcom/htc/album/addons/photoenhancer/TwoWayGallery;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2092
    iput v1, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->mLastFlingX:I

    .line 2093
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    neg-int v3, p1

    iget-object v2, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->this$0:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    #getter for: Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mAnimationDuration:I
    invoke-static {v2}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->access$500(Lcom/htc/album/addons/photoenhancer/TwoWayGallery;)I

    move-result v5

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcScroller;->startScroll(IIIII)V

    .line 2098
    :goto_1
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->this$0:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    invoke-virtual {v0, p0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 2095
    :cond_2
    iput v1, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->mLastFlingY:I

    .line 2096
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    neg-int v4, p1

    iget-object v2, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->this$0:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    #getter for: Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->mAnimationDuration:I
    invoke-static {v2}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->access$500(Lcom/htc/album/addons/photoenhancer/TwoWayGallery;)I

    move-result v5

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcScroller;->startScroll(IIIII)V

    goto :goto_1
.end method

.method public startUsingVelocity(I)V
    .locals 11
    .parameter "initialVelocity"

    .prologue
    .line 2064
    if-nez p1, :cond_0

    .line 2081
    :goto_0
    return-void

    .line 2065
    :cond_0
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->this$0:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    #getter for: Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->DEBUG:Z
    invoke-static {v0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->access$300(Lcom/htc/album/addons/photoenhancer/TwoWayGallery;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2066
    const-string v0, "TwoWayGallery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startUsingVelocity: initialVelocity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2068
    :cond_1
    invoke-direct {p0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->startCommon()V

    .line 2071
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->this$0:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    #getter for: Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->horizontal:Z
    invoke-static {v0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->access$400(Lcom/htc/album/addons/photoenhancer/TwoWayGallery;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2072
    if-gez p1, :cond_2

    const v1, 0x7fffffff

    .line 2073
    .local v1, initialX:I
    :goto_1
    iput v1, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->mLastFlingX:I

    .line 2074
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7fffffff

    const/4 v7, 0x0

    const v8, 0x7fffffff

    move v3, p1

    invoke-virtual/range {v0 .. v8}, Lcom/htc/widget/HtcScroller;->fling(IIIIIIII)V

    .line 2080
    .end local v1           #initialX:I
    :goto_2
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->this$0:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    invoke-virtual {v0, p0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 2072
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 2076
    :cond_3
    if-gez p1, :cond_4

    const v4, 0x7fffffff

    .line 2077
    .local v4, initialY:I
    :goto_3
    iput v4, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->mLastFlingY:I

    .line 2078
    iget-object v2, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const v8, 0x7fffffff

    const/4 v9, 0x0

    const v10, 0x7fffffff

    move v6, p1

    invoke-virtual/range {v2 .. v10}, Lcom/htc/widget/HtcScroller;->fling(IIIIIIII)V

    goto :goto_2

    .line 2076
    .end local v4           #initialY:I
    :cond_4
    const/4 v4, 0x0

    goto :goto_3
.end method

.method public stop(Z)V
    .locals 1
    .parameter "scrollIntoSlots"

    .prologue
    .line 2102
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->this$0:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    invoke-virtual {v0, p0}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2103
    invoke-direct {p0, p1}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery$FlingRunnable;->endFling(Z)V

    .line 2104
    return-void
.end method
