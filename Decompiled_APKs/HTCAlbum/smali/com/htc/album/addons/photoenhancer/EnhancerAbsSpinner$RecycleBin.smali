.class Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner$RecycleBin;
.super Ljava/lang/Object;
.source "EnhancerAbsSpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecycleBin"
.end annotation


# instance fields
.field private mScrapHeap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;


# direct methods
.method constructor <init>(Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;)V
    .locals 1
    .parameter

    .prologue
    .line 456
    iput-object p1, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner$RecycleBin;->this$0:Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 457
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method clear()V
    .locals 6

    .prologue
    .line 481
    iget-object v2, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    .line 482
    .local v2, scrapHeap:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/view/View;>;"
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 483
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 484
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 485
    .local v3, view:Landroid/view/View;
    if-eqz v3, :cond_0

    .line 486
    iget-object v4, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner$RecycleBin;->this$0:Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;

    const/4 v5, 0x1

    #calls: Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v4, v3, v5}, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->access$100(Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;Landroid/view/View;Z)V

    .line 483
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 489
    .end local v3           #view:Landroid/view/View;
    :cond_1
    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 490
    return-void
.end method

.method get(I)Landroid/view/View;
    .locals 2
    .parameter "position"

    .prologue
    .line 465
    iget-object v1, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 466
    .local v0, result:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 468
    iget-object v1, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 472
    :cond_0
    return-object v0
.end method

.method peek(I)Landroid/view/View;
    .locals 1
    .parameter "position"

    .prologue
    .line 477
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public put(ILandroid/view/View;)V
    .locals 1
    .parameter "position"
    .parameter "v"

    .prologue
    .line 460
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 461
    return-void
.end method
