.class Lcom/htc/widget/FastScroller$RecycleBin;
.super Ljava/lang/Object;
.source "FastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecycleBin"
.end annotation


# instance fields
.field private final mScrapHeap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/widget/FastScroller;


# direct methods
.method constructor <init>(Lcom/htc/widget/FastScroller;)V
    .locals 1
    .parameter

    .prologue
    .line 1309
    iput-object p1, p0, Lcom/htc/widget/FastScroller$RecycleBin;->this$0:Lcom/htc/widget/FastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1310
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/FastScroller$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    .prologue
    .line 1331
    iget-object v0, p0, Lcom/htc/widget/FastScroller$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    .line 1332
    .local v0, scrapHeap:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/view/View;>;"
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1333
    return-void
.end method

.method get(I)Landroid/view/View;
    .locals 2
    .parameter "position"

    .prologue
    .line 1319
    iget-object v1, p0, Lcom/htc/widget/FastScroller$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1320
    .local v0, result:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1327
    :cond_0
    return-object v0
.end method

.method public put(ILandroid/view/View;)V
    .locals 1
    .parameter "position"
    .parameter "v"

    .prologue
    .line 1313
    iget-object v0, p0, Lcom/htc/widget/FastScroller$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1314
    return-void
.end method
