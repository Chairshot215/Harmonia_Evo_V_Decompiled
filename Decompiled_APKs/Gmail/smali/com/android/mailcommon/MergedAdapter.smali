.class public Lcom/android/mailcommon/MergedAdapter;
.super Landroid/widget/BaseAdapter;
.source "MergedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mailcommon/MergedAdapter$LocalAdapterPosition;,
        Lcom/android/mailcommon/MergedAdapter$ListSpinnerAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/android/mailcommon/MergedAdapter$ListSpinnerAdapter;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field private mAdapters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mObserver:Landroid/database/DataSetObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    .local p0, this:Lcom/android/mailcommon/MergedAdapter;,"Lcom/android/mailcommon/MergedAdapter<TT;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 59
    new-instance v0, Lcom/android/mailcommon/MergedAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/mailcommon/MergedAdapter$1;-><init>(Lcom/android/mailcommon/MergedAdapter;)V

    iput-object v0, p0, Lcom/android/mailcommon/MergedAdapter;->mObserver:Landroid/database/DataSetObserver;

    .line 65
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 4

    .prologue
    .line 180
    .local p0, this:Lcom/android/mailcommon/MergedAdapter;,"Lcom/android/mailcommon/MergedAdapter<TT;>;"
    const/4 v1, 0x1

    .line 181
    .local v1, enabled:Z
    iget-object v3, p0, Lcom/android/mailcommon/MergedAdapter;->mAdapters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mailcommon/MergedAdapter$ListSpinnerAdapter;

    .line 182
    .local v0, adapter:Lcom/android/mailcommon/MergedAdapter$ListSpinnerAdapter;,"TT;"
    invoke-interface {v0}, Lcom/android/mailcommon/MergedAdapter$ListSpinnerAdapter;->areAllItemsEnabled()Z

    move-result v3

    and-int/2addr v1, v3

    goto :goto_0

    .line 184
    .end local v0           #adapter:Lcom/android/mailcommon/MergedAdapter$ListSpinnerAdapter;,"TT;"
    :cond_0
    return v1
.end method

.method public getAdapterOffsetForItem(I)Lcom/android/mailcommon/MergedAdapter$LocalAdapterPosition;
    .locals 7
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/mailcommon/MergedAdapter$LocalAdapterPosition",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, this:Lcom/android/mailcommon/MergedAdapter;,"Lcom/android/mailcommon/MergedAdapter<TT;>;"
    iget-object v5, p0, Lcom/android/mailcommon/MergedAdapter;->mAdapters:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    .line 109
    .local v1, adapterCount:I
    const/4 v3, 0x0

    .line 110
    .local v3, i:I
    const/4 v2, 0x0

    .line 112
    .local v2, count:I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 113
    iget-object v5, p0, Lcom/android/mailcommon/MergedAdapter;->mAdapters:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mailcommon/MergedAdapter$ListSpinnerAdapter;

    .line 114
    .local v0, a:Lcom/android/mailcommon/MergedAdapter$ListSpinnerAdapter;,"TT;"
    invoke-interface {v0}, Lcom/android/mailcommon/MergedAdapter$ListSpinnerAdapter;->getCount()I

    move-result v5

    add-int v4, v2, v5

    .line 115
    .local v4, newCount:I
    if-ge p1, v4, :cond_0

    .line 116
    new-instance v5, Lcom/android/mailcommon/MergedAdapter$LocalAdapterPosition;

    sub-int v6, p1, v2

    invoke-direct {v5, v0, v6}, Lcom/android/mailcommon/MergedAdapter$LocalAdapterPosition;-><init>(Lcom/android/mailcommon/MergedAdapter$ListSpinnerAdapter;I)V

    .line 121
    .end local v0           #a:Lcom/android/mailcommon/MergedAdapter$ListSpinnerAdapter;,"TT;"
    .end local v4           #newCount:I
    :goto_1
    return-object v5

    .line 118
    .restart local v0       #a:Lcom/android/mailcommon/MergedAdapter$ListSpinnerAdapter;,"TT;"
    .restart local v4       #newCount:I
    :cond_0
    move v2, v4

    .line 119
    add-int/lit8 v3, v3, 0x1

    .line 120
    goto :goto_0

    .line 121
    .end local v0           #a:Lcom/android/mailcommon/MergedAdapter$ListSpinnerAdapter;,"TT;"
    .end local v4           #newCount:I
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 91
    .local p0, this:Lcom/android/mailcommon/MergedAdapter;,"Lcom/android/mailcommon/MergedAdapter<TT;>;"
    const/4 v1, 0x0

    .line 92
    .local v1, count:I
    iget-object v3, p0, Lcom/android/mailcommon/MergedAdapter;->mAdapters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mailcommon/MergedAdapter$ListSpinnerAdapter;

    .line 93
    .local v0, adapter:Lcom/android/mailcommon/MergedAdapter$ListSpinnerAdapter;,"TT;"
    invoke-interface {v0}, Lcom/android/mailcommon/MergedAdapter$ListSpinnerAdapter;->getCount()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0

    .line 95
    .end local v0           #adapter:Lcom/android/mailcommon/MergedAdapter$ListSpinnerAdapter;,"TT;"
    :cond_0
    return v1
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 174
    .local p0, this:Lcom/android/mailcommon/MergedAdapter;,"Lcom/android/mailcommon/MergedAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/mailcommon/MergedAdapter;->getAdapterOffsetForItem(I)Lcom/android/mailcommon/MergedAdapter$LocalAdapterPosition;

    move-result-object v0

    .line 175
    .local v0, result:Lcom/android/mailcommon/MergedAdapter$LocalAdapterPosition;,"Lcom/android/mailcommon/MergedAdapter$LocalAdapterPosition<TT;>;"
    iget-object v1, v0, Lcom/android/mailcommon/MergedAdapter$LocalAdapterPosition;->mAdapter:Lcom/android/mailcommon/MergedAdapter$ListSpinnerAdapter;

    iget v2, v0, Lcom/android/mailcommon/MergedAdapter$LocalAdapterPosition;->mLocalPosition:I

    invoke-interface {v1, v2, p2, p3}, Lcom/android/mailcommon/MergedAdapter$ListSpinnerAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .parameter "position"

    .prologue
    .line 126
    .local p0, this:Lcom/android/mailcommon/MergedAdapter;,"Lcom/android/mailcommon/MergedAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/mailcommon/MergedAdapter;->getAdapterOffsetForItem(I)Lcom/android/mailcommon/MergedAdapter$LocalAdapterPosition;

    move-result-object v0

    .line 127
    .local v0, result:Lcom/android/mailcommon/MergedAdapter$LocalAdapterPosition;,"Lcom/android/mailcommon/MergedAdapter$LocalAdapterPosition<TT;>;"
    if-nez v0, :cond_0

    .line 128
    const/4 v1, 0x0

    .line 130
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/android/mailcommon/MergedAdapter$LocalAdapterPosition;->mAdapter:Lcom/android/mailcommon/MergedAdapter$ListSpinnerAdapter;

    iget v2, v0, Lcom/android/mailcommon/MergedAdapter$LocalAdapterPosition;->mLocalPosition:I

    invoke-interface {v1, v2}, Lcom/android/mailcommon/MergedAdapter$ListSpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 135
    .local p0, this:Lcom/android/mailcommon/MergedAdapter;,"Lcom/android/mailcommon/MergedAdapter<TT;>;"
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 7
    .parameter "position"

    .prologue
    .line 149
    .local p0, this:Lcom/android/mailcommon/MergedAdapter;,"Lcom/android/mailcommon/MergedAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/mailcommon/MergedAdapter;->getAdapterOffsetForItem(I)Lcom/android/mailcommon/MergedAdapter$LocalAdapterPosition;

    move-result-object v3

    .line 150
    .local v3, result:Lcom/android/mailcommon/MergedAdapter$LocalAdapterPosition;,"Lcom/android/mailcommon/MergedAdapter$LocalAdapterPosition<TT;>;"
    const/4 v2, 0x0

    .line 151
    .local v2, otherViewTypeCount:I
    iget-object v5, p0, Lcom/android/mailcommon/MergedAdapter;->mAdapters:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mailcommon/MergedAdapter$ListSpinnerAdapter;

    .line 152
    .local v0, adapter:Lcom/android/mailcommon/MergedAdapter$ListSpinnerAdapter;,"TT;"
    iget-object v5, v3, Lcom/android/mailcommon/MergedAdapter$LocalAdapterPosition;->mAdapter:Lcom/android/mailcommon/MergedAdapter$ListSpinnerAdapter;

    if-ne v0, v5, :cond_2

    .line 157
    .end local v0           #adapter:Lcom/android/mailcommon/MergedAdapter$ListSpinnerAdapter;,"TT;"
    :cond_0
    iget-object v5, v3, Lcom/android/mailcommon/MergedAdapter$LocalAdapterPosition;->mAdapter:Lcom/android/mailcommon/MergedAdapter$ListSpinnerAdapter;

    iget v6, v3, Lcom/android/mailcommon/MergedAdapter$LocalAdapterPosition;->mLocalPosition:I

    invoke-interface {v5, v6}, Lcom/android/mailcommon/MergedAdapter$ListSpinnerAdapter;->getItemViewType(I)I

    move-result v4

    .line 160
    .local v4, type:I
    if-ltz v4, :cond_1

    .line 161
    add-int/2addr v4, v2

    .line 163
    :cond_1
    return v4

    .line 155
    .end local v4           #type:I
    .restart local v0       #adapter:Lcom/android/mailcommon/MergedAdapter$ListSpinnerAdapter;,"TT;"
    :cond_2
    invoke-interface {v0}, Lcom/android/mailcommon/MergedAdapter$ListSpinnerAdapter;->getViewTypeCount()I

    move-result v5

    add-int/2addr v2, v5

    goto :goto_0
.end method

.method public getSubAdapter(I)Lcom/android/mailcommon/MergedAdapter$ListSpinnerAdapter;
    .locals 1
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, this:Lcom/android/mailcommon/MergedAdapter;,"Lcom/android/mailcommon/MergedAdapter<TT;>;"
    iget-object v0, p0, Lcom/android/mailcommon/MergedAdapter;->mAdapters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mailcommon/MergedAdapter$ListSpinnerAdapter;

    return-object v0
.end method

.method public getSubAdapterCount()I
    .locals 1

    .prologue
    .line 82
    .local p0, this:Lcom/android/mailcommon/MergedAdapter;,"Lcom/android/mailcommon/MergedAdapter<TT;>;"
    iget-object v0, p0, Lcom/android/mailcommon/MergedAdapter;->mAdapters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 168
    .local p0, this:Lcom/android/mailcommon/MergedAdapter;,"Lcom/android/mailcommon/MergedAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/mailcommon/MergedAdapter;->getAdapterOffsetForItem(I)Lcom/android/mailcommon/MergedAdapter$LocalAdapterPosition;

    move-result-object v0

    .line 169
    .local v0, result:Lcom/android/mailcommon/MergedAdapter$LocalAdapterPosition;,"Lcom/android/mailcommon/MergedAdapter$LocalAdapterPosition<TT;>;"
    iget-object v1, v0, Lcom/android/mailcommon/MergedAdapter$LocalAdapterPosition;->mAdapter:Lcom/android/mailcommon/MergedAdapter$ListSpinnerAdapter;

    iget v2, v0, Lcom/android/mailcommon/MergedAdapter$LocalAdapterPosition;->mLocalPosition:I

    invoke-interface {v1, v2, p2, p3}, Lcom/android/mailcommon/MergedAdapter$ListSpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public getViewTypeCount()I
    .locals 4

    .prologue
    .line 140
    .local p0, this:Lcom/android/mailcommon/MergedAdapter;,"Lcom/android/mailcommon/MergedAdapter<TT;>;"
    const/4 v1, 0x0

    .line 141
    .local v1, count:I
    iget-object v3, p0, Lcom/android/mailcommon/MergedAdapter;->mAdapters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mailcommon/MergedAdapter$ListSpinnerAdapter;

    .line 142
    .local v0, adapter:Lcom/android/mailcommon/MergedAdapter$ListSpinnerAdapter;,"TT;"
    invoke-interface {v0}, Lcom/android/mailcommon/MergedAdapter$ListSpinnerAdapter;->getViewTypeCount()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0

    .line 144
    .end local v0           #adapter:Lcom/android/mailcommon/MergedAdapter$ListSpinnerAdapter;,"TT;"
    :cond_0
    return v1
.end method

.method public isEnabled(I)Z
    .locals 3
    .parameter "position"

    .prologue
    .line 189
    .local p0, this:Lcom/android/mailcommon/MergedAdapter;,"Lcom/android/mailcommon/MergedAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/mailcommon/MergedAdapter;->getAdapterOffsetForItem(I)Lcom/android/mailcommon/MergedAdapter$LocalAdapterPosition;

    move-result-object v0

    .line 190
    .local v0, result:Lcom/android/mailcommon/MergedAdapter$LocalAdapterPosition;,"Lcom/android/mailcommon/MergedAdapter$LocalAdapterPosition<TT;>;"
    iget-object v1, v0, Lcom/android/mailcommon/MergedAdapter$LocalAdapterPosition;->mAdapter:Lcom/android/mailcommon/MergedAdapter$ListSpinnerAdapter;

    iget v2, v0, Lcom/android/mailcommon/MergedAdapter$LocalAdapterPosition;->mLocalPosition:I

    invoke-interface {v1, v2}, Lcom/android/mailcommon/MergedAdapter$ListSpinnerAdapter;->isEnabled(I)Z

    move-result v1

    return v1
.end method

.method public varargs setAdapters([Lcom/android/mailcommon/MergedAdapter$ListSpinnerAdapter;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, this:Lcom/android/mailcommon/MergedAdapter;,"Lcom/android/mailcommon/MergedAdapter<TT;>;"
    .local p1, adapters:[Lcom/android/mailcommon/MergedAdapter$ListSpinnerAdapter;,"[TT;"
    iget-object v2, p0, Lcom/android/mailcommon/MergedAdapter;->mAdapters:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 69
    iget-object v2, p0, Lcom/android/mailcommon/MergedAdapter;->mAdapters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mailcommon/MergedAdapter$ListSpinnerAdapter;

    .line 70
    .local v0, adapter:Lcom/android/mailcommon/MergedAdapter$ListSpinnerAdapter;,"TT;"
    iget-object v2, p0, Lcom/android/mailcommon/MergedAdapter;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v2}, Lcom/android/mailcommon/MergedAdapter$ListSpinnerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0

    .line 74
    .end local v0           #adapter:Lcom/android/mailcommon/MergedAdapter$ListSpinnerAdapter;,"TT;"
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mailcommon/MergedAdapter;->mAdapters:Ljava/util/List;

    .line 76
    iget-object v2, p0, Lcom/android/mailcommon/MergedAdapter;->mAdapters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mailcommon/MergedAdapter$ListSpinnerAdapter;

    .line 77
    .restart local v0       #adapter:Lcom/android/mailcommon/MergedAdapter$ListSpinnerAdapter;,"TT;"
    iget-object v2, p0, Lcom/android/mailcommon/MergedAdapter;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v2}, Lcom/android/mailcommon/MergedAdapter$ListSpinnerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_1

    .line 79
    .end local v0           #adapter:Lcom/android/mailcommon/MergedAdapter$ListSpinnerAdapter;,"TT;"
    :cond_1
    return-void
.end method
