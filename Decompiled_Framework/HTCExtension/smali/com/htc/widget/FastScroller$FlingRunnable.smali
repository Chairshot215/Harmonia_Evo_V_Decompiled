.class Lcom/htc/widget/FastScroller$FlingRunnable;
.super Ljava/lang/Object;
.source "FastScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# instance fields
.field private mEndPostionX:I

.field private mIsCloseWindow:Z

.field private mIsRunning:Z

.field private mLastFlingX:I

.field private mLongMode:Z

.field private mPos:I

.field private mScroller:Landroid/widget/Scroller;

.field final synthetic this$0:Lcom/htc/widget/FastScroller;


# direct methods
.method public constructor <init>(Lcom/htc/widget/FastScroller;)V
    .locals 2

    iput-object p1, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/widget/Scroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;
    invoke-static {p1}, Lcom/htc/widget/FastScroller;->access$400(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/AbsSpinner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/AbsSpinner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mIsRunning:Z

    return-void
.end method

.method private endFling()V
    .locals 7

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mIsRunning:Z

    iget-object v2, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    iget-object v2, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    iget v3, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mEndPostionX:I

    #setter for: Lcom/htc/widget/FastScroller;->mThumbLeft:I
    invoke-static {v2, v3}, Lcom/htc/widget/FastScroller;->access$502(Lcom/htc/widget/FastScroller;I)I

    iget v2, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mEndPostionX:I

    iget-object v3, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbLeft:I
    invoke-static {v3}, Lcom/htc/widget/FastScroller;->access$500(Lcom/htc/widget/FastScroller;)I

    move-result v3

    sub-int v0, v2, v3

    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mLongMode:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    iget-object v3, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbLeft:I
    invoke-static {v3}, Lcom/htc/widget/FastScroller;->access$500(Lcom/htc/widget/FastScroller;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/FastScroller;->adjustGallery(I)V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    iget v3, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mPos:I

    iget-boolean v4, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mIsCloseWindow:Z

    #calls: Lcom/htc/widget/FastScroller;->endAnimation(IZ)V
    invoke-static {v2, v3, v4}, Lcom/htc/widget/FastScroller;->access$1500(Lcom/htc/widget/FastScroller;IZ)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    invoke-virtual {v2, v4}, Lcom/htc/widget/FastScroller;->makeThumbView(Z)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$400(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/AbsSpinner;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/Gallery;

    invoke-virtual {v2, v1}, Lcom/htc/widget/Gallery;->setUpThumb(Landroid/view/View;)V

    iget-object v2, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$400(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/AbsSpinner;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbLeft:I
    invoke-static {v3}, Lcom/htc/widget/FastScroller;->access$500(Lcom/htc/widget/FastScroller;)I

    move-result v3

    sub-int/2addr v3, v0

    iget-object v4, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbTop:I
    invoke-static {v4}, Lcom/htc/widget/FastScroller;->access$1700(Lcom/htc/widget/FastScroller;)I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbLeft:I
    invoke-static {v5}, Lcom/htc/widget/FastScroller;->access$500(Lcom/htc/widget/FastScroller;)I

    move-result v5

    iget-object v6, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbW:I
    invoke-static {v6}, Lcom/htc/widget/FastScroller;->access$600(Lcom/htc/widget/FastScroller;)I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbBottom:I
    invoke-static {v6}, Lcom/htc/widget/FastScroller;->access$1800(Lcom/htc/widget/FastScroller;)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/htc/widget/AbsSpinner;->invalidate(IIII)V

    goto :goto_0
.end method

.method private startCommon()V
    .locals 6

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;
    invoke-static {v3}, Lcom/htc/widget/FastScroller;->access$400(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/AbsSpinner;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/htc/widget/AbsSpinner;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v3, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGalleryWidth:I
    invoke-static {v3}, Lcom/htc/widget/FastScroller;->access$1100(Lcom/htc/widget/FastScroller;)I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mPaddingLeft:I
    invoke-static {v4}, Lcom/htc/widget/FastScroller;->access$1200(Lcom/htc/widget/FastScroller;)I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mPaddingRight:I
    invoke-static {v4}, Lcom/htc/widget/FastScroller;->access$1300(Lcom/htc/widget/FastScroller;)I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mOffset:I
    invoke-static {v4}, Lcom/htc/widget/FastScroller;->access$1400(Lcom/htc/widget/FastScroller;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    sub-int v0, v3, v4

    iget-object v3, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;
    invoke-static {v3}, Lcom/htc/widget/FastScroller;->access$400(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/AbsSpinner;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v2

    iget-object v3, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mItemWidth:I
    invoke-static {v3}, Lcom/htc/widget/FastScroller;->access$1000(Lcom/htc/widget/FastScroller;)I

    move-result v1

    mul-int v3, v2, v1

    sub-int/2addr v3, v0

    if-lez v3, :cond_0

    iput-boolean v5, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mLongMode:Z

    :goto_0
    iput-boolean v5, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mIsRunning:Z

    return-void

    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mLongMode:Z

    goto :goto_0
.end method


# virtual methods
.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mIsRunning:Z

    return v0
.end method

.method public run()V
    .locals 10

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mItemCount:I
    invoke-static {v5}, Lcom/htc/widget/FastScroller;->access$1900(Lcom/htc/widget/FastScroller;)I

    move-result v5

    if-nez v5, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/FastScroller$FlingRunnable;->endFling()V

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #setter for: Lcom/htc/widget/FastScroller;->mShouldStopFling:Z
    invoke-static {v5, v7}, Lcom/htc/widget/FastScroller;->access$2002(Lcom/htc/widget/FastScroller;Z)Z

    iget-object v2, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    iget v5, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mLastFlingX:I

    sub-int v0, v5, v4

    if-lez v0, :cond_1

    iget-object v5, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGalleryWidth:I
    invoke-static {v5}, Lcom/htc/widget/FastScroller;->access$1100(Lcom/htc/widget/FastScroller;)I

    move-result v5

    iget-object v6, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mPaddingLeft:I
    invoke-static {v6}, Lcom/htc/widget/FastScroller;->access$1200(Lcom/htc/widget/FastScroller;)I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mPaddingRight:I
    invoke-static {v6}, Lcom/htc/widget/FastScroller;->access$1300(Lcom/htc/widget/FastScroller;)I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_1
    iget-object v5, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    invoke-static {v5, v0}, Lcom/htc/widget/FastScroller;->access$512(Lcom/htc/widget/FastScroller;I)I

    iget-boolean v5, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mLongMode:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    iget-object v6, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbLeft:I
    invoke-static {v6}, Lcom/htc/widget/FastScroller;->access$500(Lcom/htc/widget/FastScroller;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/htc/widget/FastScroller;->adjustGallery(I)V

    :goto_2
    if-eqz v1, :cond_4

    iget-object v5, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mShouldStopFling:Z
    invoke-static {v5}, Lcom/htc/widget/FastScroller;->access$2000(Lcom/htc/widget/FastScroller;)Z

    move-result v5

    if-nez v5, :cond_4

    iput v4, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mLastFlingX:I

    iget-object v5, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;
    invoke-static {v5}, Lcom/htc/widget/FastScroller;->access$400(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/AbsSpinner;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/htc/widget/AbsSpinner;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGalleryWidth:I
    invoke-static {v5}, Lcom/htc/widget/FastScroller;->access$1100(Lcom/htc/widget/FastScroller;)I

    move-result v5

    iget-object v6, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mPaddingRight:I
    invoke-static {v6}, Lcom/htc/widget/FastScroller;->access$1300(Lcom/htc/widget/FastScroller;)I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mPaddingLeft:I
    invoke-static {v6}, Lcom/htc/widget/FastScroller;->access$1200(Lcom/htc/widget/FastScroller;)I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    neg-int v5, v5

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    invoke-virtual {v5, v7}, Lcom/htc/widget/FastScroller;->makeThumbView(Z)Landroid/view/View;

    move-result-object v3

    iget-object v5, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;
    invoke-static {v5}, Lcom/htc/widget/FastScroller;->access$400(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/AbsSpinner;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/Gallery;

    invoke-virtual {v5, v3}, Lcom/htc/widget/Gallery;->setUpThumb(Landroid/view/View;)V

    if-lez v0, :cond_3

    iget-object v5, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;
    invoke-static {v5}, Lcom/htc/widget/FastScroller;->access$400(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/AbsSpinner;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbLeft:I
    invoke-static {v6}, Lcom/htc/widget/FastScroller;->access$500(Lcom/htc/widget/FastScroller;)I

    move-result v6

    sub-int/2addr v6, v0

    iget-object v7, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbTop:I
    invoke-static {v7}, Lcom/htc/widget/FastScroller;->access$1700(Lcom/htc/widget/FastScroller;)I

    move-result v7

    iget-object v8, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbLeft:I
    invoke-static {v8}, Lcom/htc/widget/FastScroller;->access$500(Lcom/htc/widget/FastScroller;)I

    move-result v8

    iget-object v9, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbW:I
    invoke-static {v9}, Lcom/htc/widget/FastScroller;->access$600(Lcom/htc/widget/FastScroller;)I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbBottom:I
    invoke-static {v9}, Lcom/htc/widget/FastScroller;->access$1800(Lcom/htc/widget/FastScroller;)I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/htc/widget/AbsSpinner;->invalidate(IIII)V

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;
    invoke-static {v5}, Lcom/htc/widget/FastScroller;->access$400(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/AbsSpinner;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbLeft:I
    invoke-static {v6}, Lcom/htc/widget/FastScroller;->access$500(Lcom/htc/widget/FastScroller;)I

    move-result v6

    iget-object v7, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbTop:I
    invoke-static {v7}, Lcom/htc/widget/FastScroller;->access$1700(Lcom/htc/widget/FastScroller;)I

    move-result v7

    iget-object v8, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbLeft:I
    invoke-static {v8}, Lcom/htc/widget/FastScroller;->access$500(Lcom/htc/widget/FastScroller;)I

    move-result v8

    iget-object v9, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbW:I
    invoke-static {v9}, Lcom/htc/widget/FastScroller;->access$600(Lcom/htc/widget/FastScroller;)I

    move-result v9

    add-int/2addr v8, v9

    sub-int/2addr v8, v0

    iget-object v9, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbBottom:I
    invoke-static {v9}, Lcom/htc/widget/FastScroller;->access$1800(Lcom/htc/widget/FastScroller;)I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/htc/widget/AbsSpinner;->invalidate(IIII)V

    goto/16 :goto_2

    :cond_4
    invoke-direct {p0}, Lcom/htc/widget/FastScroller$FlingRunnable;->endFling()V

    goto/16 :goto_0
.end method

.method public startUsingDistance(III)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/htc/widget/FastScroller$FlingRunnable;->startUsingDistance(IIIZ)V

    return-void
.end method

.method public startUsingDistance(IIIZ)V
    .locals 6

    const/4 v1, 0x0

    iput-boolean p4, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mIsCloseWindow:Z

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #calls: Lcom/htc/widget/FastScroller;->endAnimation(IZ)V
    invoke-static {v0, p3, p4}, Lcom/htc/widget/FastScroller;->access$1500(Lcom/htc/widget/FastScroller;IZ)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/htc/widget/FastScroller$FlingRunnable;->startCommon()V

    iput v1, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mLastFlingX:I

    iput p2, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mEndPostionX:I

    iput p3, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mPos:I

    iget-object v0, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    neg-int v3, p1

    iget-object v2, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mAnimationDuration:I
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$1600(Lcom/htc/widget/FastScroller;)I

    move-result v5

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    iget-object v0, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;
    invoke-static {v0}, Lcom/htc/widget/FastScroller;->access$400(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/AbsSpinner;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/widget/AbsSpinner;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public stop(Z)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;
    invoke-static {v0}, Lcom/htc/widget/FastScroller;->access$400(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/AbsSpinner;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/widget/AbsSpinner;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/FastScroller$FlingRunnable;->mIsRunning:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/FastScroller$FlingRunnable;->endFling()V

    :cond_0
    return-void
.end method
