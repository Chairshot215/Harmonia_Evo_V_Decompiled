.class public Lcom/google/android/finsky/adapters/UnevenGridAdapter;
.super Landroid/widget/BaseAdapter;
.source "UnevenGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/adapters/UnevenGridAdapter$UnevenGridItem;
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/adapters/UnevenGridAdapter$UnevenGridItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mLayoutInflater:Landroid/view/LayoutInflater;

.field private mShowCorpusStrip:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 20
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/adapters/UnevenGridAdapter;->mItems:Ljava/util/List;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/adapters/UnevenGridAdapter;->mShowCorpusStrip:Z

    .line 35
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/google/android/finsky/adapters/UnevenGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 37
    iput-object p1, p0, Lcom/google/android/finsky/adapters/UnevenGridAdapter;->mContext:Landroid/content/Context;

    .line 38
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/finsky/adapters/UnevenGridAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/google/android/finsky/adapters/UnevenGridAdapter$UnevenGridItem;
    .locals 1
    .parameter "position"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/finsky/adapters/UnevenGridAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/adapters/UnevenGridAdapter$UnevenGridItem;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/adapters/UnevenGridAdapter;->getItem(I)Lcom/google/android/finsky/adapters/UnevenGridAdapter$UnevenGridItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 80
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/finsky/adapters/UnevenGridAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/adapters/UnevenGridAdapter$UnevenGridItem;

    invoke-interface {v0}, Lcom/google/android/finsky/adapters/UnevenGridAdapter$UnevenGridItem;->getGridItemType()Lcom/google/android/finsky/adapters/UnevenGridItemType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/adapters/UnevenGridItemType;->ordinal()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 66
    iget-object v2, p0, Lcom/google/android/finsky/adapters/UnevenGridAdapter;->mItems:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/adapters/UnevenGridAdapter$UnevenGridItem;

    .line 68
    .local v0, item:Lcom/google/android/finsky/adapters/UnevenGridAdapter$UnevenGridItem;
    if-nez v0, :cond_0

    .line 69
    const/4 v1, 0x0

    .line 75
    :goto_0
    return-object v1

    .line 71
    :cond_0
    if-nez p2, :cond_1

    iget-object v2, p0, Lcom/google/android/finsky/adapters/UnevenGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-interface {v0}, Lcom/google/android/finsky/adapters/UnevenGridAdapter$UnevenGridItem;->getLayoutId()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    :goto_1
    check-cast v1, Landroid/view/ViewGroup;

    .line 74
    .local v1, view:Landroid/view/ViewGroup;
    iget-boolean v2, p0, Lcom/google/android/finsky/adapters/UnevenGridAdapter;->mShowCorpusStrip:Z

    invoke-interface {v0, v1, v2}, Lcom/google/android/finsky/adapters/UnevenGridAdapter$UnevenGridItem;->bind(Landroid/view/ViewGroup;Z)V

    goto :goto_0

    .end local v1           #view:Landroid/view/ViewGroup;
    :cond_1
    move-object v1, p2

    .line 71
    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Lcom/google/android/finsky/adapters/UnevenGridItemType;->values()[Lcom/google/android/finsky/adapters/UnevenGridItemType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/finsky/adapters/UnevenGridAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 62
    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/adapters/UnevenGridAdapter$UnevenGridItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, data:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/adapters/UnevenGridAdapter$UnevenGridItem;>;"
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/adapters/UnevenGridAdapter;->mItems:Ljava/util/List;

    .line 85
    iget-object v0, p0, Lcom/google/android/finsky/adapters/UnevenGridAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 86
    invoke-virtual {p0}, Lcom/google/android/finsky/adapters/UnevenGridAdapter;->notifyDataSetChanged()V

    .line 87
    return-void
.end method

.method public setShowCorpusStrip(Z)V
    .locals 0
    .parameter "showCorpusStrip"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/google/android/finsky/adapters/UnevenGridAdapter;->mShowCorpusStrip:Z

    .line 91
    return-void
.end method
