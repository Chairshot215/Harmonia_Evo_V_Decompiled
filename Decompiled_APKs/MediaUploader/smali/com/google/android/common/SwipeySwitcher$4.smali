.class Lcom/google/android/common/SwipeySwitcher$4;
.super Ljava/lang/Object;
.source "SwipeySwitcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/common/SwipeySwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/common/SwipeySwitcher;


# direct methods
.method constructor <init>(Lcom/google/android/common/SwipeySwitcher;)V
    .locals 0
    .parameter

    .prologue
    .line 554
    iput-object p1, p0, Lcom/google/android/common/SwipeySwitcher$4;->this$0:Lcom/google/android/common/SwipeySwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 555
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher$4;->this$0:Lcom/google/android/common/SwipeySwitcher;

    #getter for: Lcom/google/android/common/SwipeySwitcher;->mAdapter:Lcom/google/android/common/SwipeySwitcher$Adapter;
    invoke-static {v0}, Lcom/google/android/common/SwipeySwitcher;->access$300(Lcom/google/android/common/SwipeySwitcher;)Lcom/google/android/common/SwipeySwitcher$Adapter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 590
    :cond_0
    :goto_0
    return-void

    .line 558
    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher$4;->this$0:Lcom/google/android/common/SwipeySwitcher;

    #getter for: Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;
    invoke-static {v1}, Lcom/google/android/common/SwipeySwitcher;->access$900(Lcom/google/android/common/SwipeySwitcher;)[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_5

    .line 559
    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher$4;->this$0:Lcom/google/android/common/SwipeySwitcher;

    #getter for: Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;
    invoke-static {v1}, Lcom/google/android/common/SwipeySwitcher;->access$900(Lcom/google/android/common/SwipeySwitcher;)[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    move-result-object v1

    aget-object v1, v1, v0

    .line 560
    iget-object v2, p0, Lcom/google/android/common/SwipeySwitcher$4;->this$0:Lcom/google/android/common/SwipeySwitcher;

    #getter for: Lcom/google/android/common/SwipeySwitcher;->mPlaceholders:Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;
    invoke-static {v2}, Lcom/google/android/common/SwipeySwitcher;->access$1100(Lcom/google/android/common/SwipeySwitcher;)Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;->memberOf(Lcom/google/android/common/SwipeySwitcher$IViewHolder;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 561
    invoke-interface {v1}, Lcom/google/android/common/SwipeySwitcher$IViewHolder;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 562
    if-nez v1, :cond_3

    .line 558
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 566
    :cond_3
    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher$4;->this$0:Lcom/google/android/common/SwipeySwitcher;

    #getter for: Lcom/google/android/common/SwipeySwitcher;->mSelection:I
    invoke-static {v1}, Lcom/google/android/common/SwipeySwitcher;->access$1200(Lcom/google/android/common/SwipeySwitcher;)I

    move-result v1

    add-int/2addr v1, v0

    sub-int/2addr v1, v4

    .line 567
    iget-object v2, p0, Lcom/google/android/common/SwipeySwitcher$4;->this$0:Lcom/google/android/common/SwipeySwitcher;

    #getter for: Lcom/google/android/common/SwipeySwitcher;->mAdapter:Lcom/google/android/common/SwipeySwitcher$Adapter;
    invoke-static {v2}, Lcom/google/android/common/SwipeySwitcher;->access$300(Lcom/google/android/common/SwipeySwitcher;)Lcom/google/android/common/SwipeySwitcher$Adapter;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/common/SwipeySwitcher$4;->this$0:Lcom/google/android/common/SwipeySwitcher;

    #calls: Lcom/google/android/common/SwipeySwitcher;->wrap(I)I
    invoke-static {v3, v1}, Lcom/google/android/common/SwipeySwitcher;->access$1300(Lcom/google/android/common/SwipeySwitcher;I)I

    move-result v1

    iget-object v3, p0, Lcom/google/android/common/SwipeySwitcher$4;->this$0:Lcom/google/android/common/SwipeySwitcher;

    invoke-interface {v2, v1, v3}, Lcom/google/android/common/SwipeySwitcher$Adapter;->getView(ILandroid/view/ViewGroup;)Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    move-result-object v1

    .line 569
    if-eqz v1, :cond_2

    .line 576
    iget-object v2, p0, Lcom/google/android/common/SwipeySwitcher$4;->this$0:Lcom/google/android/common/SwipeySwitcher;

    invoke-virtual {v2}, Lcom/google/android/common/SwipeySwitcher;->getChildCount()I

    move-result v2

    if-le v2, v0, :cond_4

    .line 577
    iget-object v2, p0, Lcom/google/android/common/SwipeySwitcher$4;->this$0:Lcom/google/android/common/SwipeySwitcher;

    #getter for: Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;
    invoke-static {v2}, Lcom/google/android/common/SwipeySwitcher;->access$900(Lcom/google/android/common/SwipeySwitcher;)[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/google/android/common/SwipeySwitcher$IViewHolder;->stop()V

    .line 578
    iget-object v2, p0, Lcom/google/android/common/SwipeySwitcher$4;->this$0:Lcom/google/android/common/SwipeySwitcher;

    invoke-virtual {v2, v0}, Lcom/google/android/common/SwipeySwitcher;->removeViewAt(I)V

    .line 582
    :cond_4
    iget-object v2, p0, Lcom/google/android/common/SwipeySwitcher$4;->this$0:Lcom/google/android/common/SwipeySwitcher;

    #calls: Lcom/google/android/common/SwipeySwitcher;->installView(Lcom/google/android/common/SwipeySwitcher$IViewHolder;I)V
    invoke-static {v2, v1, v0}, Lcom/google/android/common/SwipeySwitcher;->access$1400(Lcom/google/android/common/SwipeySwitcher;Lcom/google/android/common/SwipeySwitcher$IViewHolder;I)V

    goto :goto_2

    .line 587
    :cond_5
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher$4;->this$0:Lcom/google/android/common/SwipeySwitcher;

    #getter for: Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;
    invoke-static {v0}, Lcom/google/android/common/SwipeySwitcher;->access$900(Lcom/google/android/common/SwipeySwitcher;)[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    move-result-object v0

    aget-object v0, v0, v4

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher$4;->this$0:Lcom/google/android/common/SwipeySwitcher;

    #getter for: Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;
    invoke-static {v0}, Lcom/google/android/common/SwipeySwitcher;->access$900(Lcom/google/android/common/SwipeySwitcher;)[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-interface {v0}, Lcom/google/android/common/SwipeySwitcher$IViewHolder;->focus()V

    goto :goto_0
.end method
