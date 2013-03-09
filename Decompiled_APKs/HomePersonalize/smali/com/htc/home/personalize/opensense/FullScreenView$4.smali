.class Lcom/htc/home/personalize/opensense/FullScreenView$4;
.super Ljava/lang/Object;
.source "FullScreenView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/home/personalize/opensense/FullScreenView;->initFullScreenView(Landroid/app/Activity;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/opensense/FullScreenView;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/opensense/FullScreenView;)V
    .locals 0
    .parameter

    .prologue
    .line 372
    iput-object p1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$4;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 375
    iget-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$4;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mScroller:Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;
    invoke-static {v1}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$400(Lcom/htc/home/personalize/opensense/FullScreenView;)Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->getScrollX()I

    move-result v0

    .line 377
    .local v0, x:I
    iget-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$4;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    invoke-virtual {v1}, Lcom/htc/home/personalize/opensense/FullScreenView;->getScrollState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    .line 379
    invoke-static {}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$500()I

    move-result v1

    invoke-static {}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$600()I

    move-result v2

    add-int/2addr v1, v2

    if-le v0, v1, :cond_1

    iget-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$4;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mCurrentPosition:I
    invoke-static {v1}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$700(Lcom/htc/home/personalize/opensense/FullScreenView;)I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$4;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;
    invoke-static {v1}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$800(Lcom/htc/home/personalize/opensense/FullScreenView;)[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    move-result-object v1

    aget-object v1, v1, v4

    invoke-virtual {v1}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->isBitmapRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 381
    iget-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$4;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v1}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$900(Lcom/htc/home/personalize/opensense/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$4;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mCurrentPosition:I
    invoke-static {v2}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$700(Lcom/htc/home/personalize/opensense/FullScreenView;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/htc/home/personalize/opensense/FullScreenView$4;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;
    invoke-static {v3}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$800(Lcom/htc/home/personalize/opensense/FullScreenView;)[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    move-result-object v3

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3, v7}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 382
    iget-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$4;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;
    invoke-static {v1}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$800(Lcom/htc/home/personalize/opensense/FullScreenView;)[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    move-result-object v1

    aget-object v1, v1, v4

    #setter for: Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->disableDrawing:Z
    invoke-static {v1, v4}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->access$1002(Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;Z)Z

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    invoke-static {}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$500()I

    move-result v1

    invoke-static {}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$600()I

    move-result v2

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$4;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mCurrentPosition:I
    invoke-static {v1}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$700(Lcom/htc/home/personalize/opensense/FullScreenView;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$4;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v2}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$900(Lcom/htc/home/personalize/opensense/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$4;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;
    invoke-static {v1}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$800(Lcom/htc/home/personalize/opensense/FullScreenView;)[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    move-result-object v1

    aget-object v1, v1, v6

    invoke-virtual {v1}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->isBitmapRecycled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 385
    iget-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$4;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v1}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$900(Lcom/htc/home/personalize/opensense/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$4;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mCurrentPosition:I
    invoke-static {v2}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$700(Lcom/htc/home/personalize/opensense/FullScreenView;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/htc/home/personalize/opensense/FullScreenView$4;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;
    invoke-static {v3}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$800(Lcom/htc/home/personalize/opensense/FullScreenView;)[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    move-result-object v3

    aget-object v3, v3, v6

    invoke-virtual {v1, v2, v3, v7}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 386
    iget-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$4;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;
    invoke-static {v1}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$800(Lcom/htc/home/personalize/opensense/FullScreenView;)[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    move-result-object v1

    aget-object v1, v1, v6

    #setter for: Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->disableDrawing:Z
    invoke-static {v1, v4}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->access$1002(Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;Z)Z

    goto :goto_0

    .line 391
    :cond_2
    iget-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$4;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mCurrentPosition:I
    invoke-static {v1}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$700(Lcom/htc/home/personalize/opensense/FullScreenView;)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$4;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;
    invoke-static {v1}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$800(Lcom/htc/home/personalize/opensense/FullScreenView;)[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    move-result-object v1

    aget-object v1, v1, v5

    invoke-virtual {v1}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->isBitmapRecycled()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$4;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;
    invoke-static {v1}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$800(Lcom/htc/home/personalize/opensense/FullScreenView;)[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    move-result-object v1

    aget-object v1, v1, v5

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->disableDrawing:Z
    invoke-static {v1}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->access$1000(Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 393
    :cond_3
    iget-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$4;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v1}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$900(Lcom/htc/home/personalize/opensense/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$4;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mCurrentPosition:I
    invoke-static {v2}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$700(Lcom/htc/home/personalize/opensense/FullScreenView;)I

    move-result v2

    iget-object v3, p0, Lcom/htc/home/personalize/opensense/FullScreenView$4;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;
    invoke-static {v3}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$800(Lcom/htc/home/personalize/opensense/FullScreenView;)[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-virtual {v1, v2, v3, v7}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 394
    iget-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$4;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;
    invoke-static {v1}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$800(Lcom/htc/home/personalize/opensense/FullScreenView;)[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    move-result-object v1

    aget-object v1, v1, v5

    #setter for: Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->disableDrawing:Z
    invoke-static {v1, v4}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->access$1002(Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;Z)Z

    goto/16 :goto_0
.end method
