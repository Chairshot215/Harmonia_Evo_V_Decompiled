.class public Lcom/htc/lmw/BaseListAdapter;
.super Landroid/widget/BaseAdapter;
.source "BaseListAdapter.java"


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/lmw/ViewEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/lmw/ViewEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 12
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/lmw/ViewEntry;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/htc/lmw/BaseListAdapter;->list:Ljava/util/List;

    .line 14
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/htc/lmw/BaseListAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/lmw/BaseListAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 28
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/htc/lmw/BaseListAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/lmw/ViewEntry;

    invoke-virtual {v0, p3}, Lcom/htc/lmw/ViewEntry;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
