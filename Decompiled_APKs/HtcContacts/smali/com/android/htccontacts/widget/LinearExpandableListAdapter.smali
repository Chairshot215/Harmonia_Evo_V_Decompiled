.class public Lcom/android/htccontacts/widget/LinearExpandableListAdapter;
.super Landroid/widget/BaseAdapter;
.source "LinearExpandableListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/htccontacts/widget/IWrapperAdapter;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mAdapter:Lcom/android/htccontacts/widget/ILinearExpandableListAdapter;

.field protected mAdaptersViewTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mInternalViewTypeCount:I

.field protected mObserver:Landroid/database/DataSetObserver;

.field protected mToggleViewType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/android/htccontacts/widget/LinearExpandableListAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/htccontacts/widget/LinearExpandableListAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/htccontacts/widget/ILinearExpandableListAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/widget/LinearExpandableListAdapter;->mAdaptersViewTypeMap:Ljava/util/HashMap;

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/htccontacts/widget/LinearExpandableListAdapter;->mToggleViewType:I

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/htccontacts/widget/LinearExpandableListAdapter;->mInternalViewTypeCount:I

    .line 54
    new-instance v0, Lcom/android/htccontacts/widget/LinearExpandableListAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/widget/LinearExpandableListAdapter$1;-><init>(Lcom/android/htccontacts/widget/LinearExpandableListAdapter;)V

    iput-object v0, p0, Lcom/android/htccontacts/widget/LinearExpandableListAdapter;->mObserver:Landroid/database/DataSetObserver;

    .line 65
    iput-object p1, p0, Lcom/android/htccontacts/widget/LinearExpandableListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ILinearExpandableListAdapter;

    .line 66
    iget-object v0, p0, Lcom/android/htccontacts/widget/LinearExpandableListAdapter;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Lcom/android/htccontacts/widget/ILinearExpandableListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 67
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/htccontacts/widget/LinearExpandableListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ILinearExpandableListAdapter;

    invoke-interface {v0}, Lcom/android/htccontacts/widget/ILinearExpandableListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public close()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 70
    iget-object v0, p0, Lcom/android/htccontacts/widget/LinearExpandableListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ILinearExpandableListAdapter;

    iget-object v1, p0, Lcom/android/htccontacts/widget/LinearExpandableListAdapter;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Lcom/android/htccontacts/widget/ILinearExpandableListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 71
    iput-object v2, p0, Lcom/android/htccontacts/widget/LinearExpandableListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ILinearExpandableListAdapter;

    .line 72
    iget-object v0, p0, Lcom/android/htccontacts/widget/LinearExpandableListAdapter;->mAdaptersViewTypeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 73
    iput-object v2, p0, Lcom/android/htccontacts/widget/LinearExpandableListAdapter;->mAdaptersViewTypeMap:Ljava/util/HashMap;

    .line 74
    iput-object v2, p0, Lcom/android/htccontacts/widget/LinearExpandableListAdapter;->mObserver:Landroid/database/DataSetObserver;

    .line 75
    return-void
.end method

.method public getAdapter()Lcom/android/htccontacts/widget/ILinearExpandableListAdapter;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/htccontacts/widget/LinearExpandableListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ILinearExpandableListAdapter;

    return-object v0
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 91
    iget-object v2, p0, Lcom/android/htccontacts/widget/LinearExpandableListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ILinearExpandableListAdapter;

    invoke-interface {v2}, Lcom/android/htccontacts/widget/ILinearExpandableListAdapter;->getCount()I

    move-result v1

    .line 92
    .local v1, count:I
    iget-object v2, p0, Lcom/android/htccontacts/widget/LinearExpandableListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ILinearExpandableListAdapter;

    invoke-interface {v2}, Lcom/android/htccontacts/widget/ILinearExpandableListAdapter;->getMaxShowingEntries()I

    move-result v0

    .line 93
    .local v0, allowedCount:I
    if-lt v1, v0, :cond_1

    .line 94
    iget-object v2, p0, Lcom/android/htccontacts/widget/LinearExpandableListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ILinearExpandableListAdapter;

    invoke-interface {v2}, Lcom/android/htccontacts/widget/ILinearExpandableListAdapter;->isToggleViewAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    add-int/lit8 v0, v0, 0x1

    .line 100
    .end local v0           #allowedCount:I
    :cond_0
    :goto_0
    return v0

    .restart local v0       #allowedCount:I
    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 105
    iget-object v1, p0, Lcom/android/htccontacts/widget/LinearExpandableListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ILinearExpandableListAdapter;

    invoke-interface {v1}, Lcom/android/htccontacts/widget/ILinearExpandableListAdapter;->getMaxShowingEntries()I

    move-result v0

    .line 106
    .local v0, allowedCount:I
    if-lt p1, v0, :cond_0

    .line 107
    const/4 v1, 0x0

    .line 109
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/htccontacts/widget/LinearExpandableListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ILinearExpandableListAdapter;

    invoke-interface {v1, p1}, Lcom/android/htccontacts/widget/ILinearExpandableListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 3
    .parameter "position"

    .prologue
    .line 114
    iget-object v1, p0, Lcom/android/htccontacts/widget/LinearExpandableListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ILinearExpandableListAdapter;

    invoke-interface {v1}, Lcom/android/htccontacts/widget/ILinearExpandableListAdapter;->getMaxShowingEntries()I

    move-result v0

    .line 115
    .local v0, allowedCount:I
    if-lt p1, v0, :cond_0

    .line 116
    const-wide/16 v1, -0x1

    .line 118
    :goto_0
    return-wide v1

    :cond_0
    iget-object v1, p0, Lcom/android/htccontacts/widget/LinearExpandableListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ILinearExpandableListAdapter;

    invoke-interface {v1, p1}, Lcom/android/htccontacts/widget/ILinearExpandableListAdapter;->getItemId(I)J

    move-result-wide v1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 6
    .parameter "position"

    .prologue
    .line 123
    const/4 v1, 0x0

    .line 124
    .local v1, returnType:I
    iget-object v3, p0, Lcom/android/htccontacts/widget/LinearExpandableListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ILinearExpandableListAdapter;

    invoke-interface {v3}, Lcom/android/htccontacts/widget/ILinearExpandableListAdapter;->getMaxShowingEntries()I

    move-result v0

    .line 125
    .local v0, allowedCount:I
    if-lt p1, v0, :cond_2

    .line 126
    iget-object v3, p0, Lcom/android/htccontacts/widget/LinearExpandableListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ILinearExpandableListAdapter;

    invoke-interface {v3}, Lcom/android/htccontacts/widget/ILinearExpandableListAdapter;->isToggleViewAvailable()Z

    move-result v3

    if-eqz v3, :cond_1

    if-ne p1, v0, :cond_1

    .line 129
    iget v3, p0, Lcom/android/htccontacts/widget/LinearExpandableListAdapter;->mToggleViewType:I

    if-gez v3, :cond_0

    .line 130
    iget v3, p0, Lcom/android/htccontacts/widget/LinearExpandableListAdapter;->mInternalViewTypeCount:I

    iput v3, p0, Lcom/android/htccontacts/widget/LinearExpandableListAdapter;->mToggleViewType:I

    .line 131
    iget v3, p0, Lcom/android/htccontacts/widget/LinearExpandableListAdapter;->mInternalViewTypeCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/htccontacts/widget/LinearExpandableListAdapter;->mInternalViewTypeCount:I

    .line 133
    :cond_0
    iget v1, p0, Lcom/android/htccontacts/widget/LinearExpandableListAdapter;->mToggleViewType:I

    .line 145
    :cond_1
    :goto_0
    return v1

    .line 136
    :cond_2
    iget-object v3, p0, Lcom/android/htccontacts/widget/LinearExpandableListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ILinearExpandableListAdapter;

    invoke-interface {v3, p1}, Lcom/android/htccontacts/widget/ILinearExpandableListAdapter;->getItemViewType(I)I

    move-result v2

    .line 137
    .local v2, type:I
    iget-object v3, p0, Lcom/android/htccontacts/widget/LinearExpandableListAdapter;->mAdaptersViewTypeMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 138
    iget-object v3, p0, Lcom/android/htccontacts/widget/LinearExpandableListAdapter;->mAdaptersViewTypeMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 140
    :cond_3
    iget v1, p0, Lcom/android/htccontacts/widget/LinearExpandableListAdapter;->mInternalViewTypeCount:I

    .line 141
    iget v3, p0, Lcom/android/htccontacts/widget/LinearExpandableListAdapter;->mInternalViewTypeCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/htccontacts/widget/LinearExpandableListAdapter;->mInternalViewTypeCount:I

    .line 142
    iget-object v3, p0, Lcom/android/htccontacts/widget/LinearExpandableListAdapter;->mAdaptersViewTypeMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 149
    iget-object v2, p0, Lcom/android/htccontacts/widget/LinearExpandableListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ILinearExpandableListAdapter;

    invoke-interface {v2}, Lcom/android/htccontacts/widget/ILinearExpandableListAdapter;->getMaxShowingEntries()I

    move-result v0

    .line 150
    .local v0, allowedCount:I
    if-lt p1, v0, :cond_0

    .line 151
    iget-object v2, p0, Lcom/android/htccontacts/widget/LinearExpandableListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ILinearExpandableListAdapter;

    invoke-interface {v2}, Lcom/android/htccontacts/widget/ILinearExpandableListAdapter;->isToggleViewAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    if-ne p1, v0, :cond_1

    .line 152
    iget-object v2, p0, Lcom/android/htccontacts/widget/LinearExpandableListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ILinearExpandableListAdapter;

    invoke-interface {v2, p2, p3}, Lcom/android/htccontacts/widget/ILinearExpandableListAdapter;->getToggleView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 161
    :goto_0
    return-object v1

    .line 159
    :cond_0
    iget-object v2, p0, Lcom/android/htccontacts/widget/LinearExpandableListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ILinearExpandableListAdapter;

    invoke-interface {v2, p1, p2, p3}, Lcom/android/htccontacts/widget/ILinearExpandableListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, p2

    .line 161
    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/htccontacts/widget/LinearExpandableListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ILinearExpandableListAdapter;

    invoke-interface {v0}, Lcom/android/htccontacts/widget/ILinearExpandableListAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getWrappedAdapterCount()I
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/htccontacts/widget/LinearExpandableListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ILinearExpandableListAdapter;

    instance-of v0, v0, Lcom/android/htccontacts/widget/IWrapperAdapter;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/htccontacts/widget/LinearExpandableListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ILinearExpandableListAdapter;

    check-cast v0, Lcom/android/htccontacts/widget/IWrapperAdapter;

    invoke-interface {v0}, Lcom/android/htccontacts/widget/IWrapperAdapter;->getWrappedAdapterCount()I

    move-result v0

    .line 87
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/widget/LinearExpandableListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ILinearExpandableListAdapter;

    invoke-interface {v0}, Lcom/android/htccontacts/widget/ILinearExpandableListAdapter;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/htccontacts/widget/LinearExpandableListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ILinearExpandableListAdapter;

    invoke-interface {v0}, Lcom/android/htccontacts/widget/ILinearExpandableListAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 180
    iget-object v1, p0, Lcom/android/htccontacts/widget/LinearExpandableListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ILinearExpandableListAdapter;

    invoke-interface {v1}, Lcom/android/htccontacts/widget/ILinearExpandableListAdapter;->getMaxShowingEntries()I

    move-result v0

    .line 181
    .local v0, allowedCount:I
    if-lt p1, v0, :cond_0

    .line 182
    iget-object v1, p0, Lcom/android/htccontacts/widget/LinearExpandableListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ILinearExpandableListAdapter;

    invoke-interface {v1}, Lcom/android/htccontacts/widget/ILinearExpandableListAdapter;->isToggleViewAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    if-ne p1, v0, :cond_1

    .line 183
    const/4 v1, 0x1

    .line 188
    :goto_0
    return v1

    .line 186
    :cond_0
    iget-object v1, p0, Lcom/android/htccontacts/widget/LinearExpandableListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ILinearExpandableListAdapter;

    invoke-interface {v1, p1}, Lcom/android/htccontacts/widget/ILinearExpandableListAdapter;->isEnabled(I)Z

    move-result v1

    goto :goto_0

    .line 188
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 194
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "mv"

    .prologue
    .line 203
    const/4 v0, 0x0

    return v0
.end method
