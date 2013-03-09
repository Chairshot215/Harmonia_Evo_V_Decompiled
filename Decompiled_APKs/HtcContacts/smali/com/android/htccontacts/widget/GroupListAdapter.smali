.class public Lcom/android/htccontacts/widget/GroupListAdapter;
.super Landroid/widget/BaseAdapter;
.source "GroupListAdapter.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/BaseAdapter;",
        "Ljava/util/List",
        "<",
        "Landroid/widget/BaseAdapter;",
        ">;"
    }
.end annotation


# static fields
.field public static final INVALID_ITEM_ID:I = -0x1

.field private static final LOG_ENABLE:Z = false

.field private static final TAG:Ljava/lang/String; = "GroupListAdapter"

.field public static final UNKNOWN_VIEW_TYPE:I = -0x80000000


# instance fields
.field protected mAdapterList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/widget/BaseAdapter;",
            ">;"
        }
    .end annotation
.end field

.field protected mAdaptersViewTypeMap:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mInternalViewTypeCount:I

.field private mMockView:Landroid/view/View;

.field protected mObserver:Landroid/database/DataSetObserver;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 76
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 57
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mAdaptersViewTypeMap:Ljava/util/LinkedList;

    .line 59
    iput v3, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mInternalViewTypeCount:I

    .line 64
    iput-object v4, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mMockView:Landroid/view/View;

    .line 66
    new-instance v1, Lcom/android/htccontacts/widget/GroupListAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/widget/GroupListAdapter$1;-><init>(Lcom/android/htccontacts/widget/GroupListAdapter;)V

    iput-object v1, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mObserver:Landroid/database/DataSetObserver;

    .line 77
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mAdapterList:Ljava/util/LinkedList;

    .line 79
    invoke-static {}, Lcom/android/htccontacts/PeopleApp;->getInstance()Lcom/android/htccontacts/PeopleApp;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Lcom/android/htccontacts/PeopleApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 80
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x1090003

    invoke-virtual {v0, v1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mMockView:Landroid/view/View;

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Landroid/widget/BaseAdapter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<+Landroid/widget/BaseAdapter;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 57
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mAdaptersViewTypeMap:Ljava/util/LinkedList;

    .line 59
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mInternalViewTypeCount:I

    .line 64
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mMockView:Landroid/view/View;

    .line 66
    new-instance v1, Lcom/android/htccontacts/widget/GroupListAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/widget/GroupListAdapter$1;-><init>(Lcom/android/htccontacts/widget/GroupListAdapter;)V

    iput-object v1, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mObserver:Landroid/database/DataSetObserver;

    .line 84
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mAdapterList:Ljava/util/LinkedList;

    .line 85
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mAdaptersViewTypeMap:Ljava/util/LinkedList;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    :cond_0
    return-void
.end method


# virtual methods
.method public add(ILandroid/widget/BaseAdapter;)V
    .locals 2
    .parameter "index"
    .parameter "adapter"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mAdapterList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 102
    iget-object v0, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mObserver:Landroid/database/DataSetObserver;

    invoke-virtual {p2, v0}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 103
    iget-object v0, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mAdaptersViewTypeMap:Ljava/util/LinkedList;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 104
    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    check-cast p2, Landroid/widget/BaseAdapter;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/widget/GroupListAdapter;->add(ILandroid/widget/BaseAdapter;)V

    return-void
.end method

.method public add(Landroid/widget/BaseAdapter;)Z
    .locals 3
    .parameter "adapter"

    .prologue
    .line 92
    iget-object v1, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mAdapterList:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 93
    .local v0, success:Z
    if-eqz v0, :cond_0

    .line 94
    iget-object v1, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mObserver:Landroid/database/DataSetObserver;

    invoke-virtual {p1, v1}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 95
    iget-object v1, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mAdaptersViewTypeMap:Ljava/util/LinkedList;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_0
    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    check-cast p1, Landroid/widget/BaseAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/widget/GroupListAdapter;->add(Landroid/widget/BaseAdapter;)Z

    move-result v0

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 4
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+",
            "Landroid/widget/BaseAdapter;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 117
    .local p2, c:Ljava/util/Collection;,"Ljava/util/Collection<+Landroid/widget/BaseAdapter;>;"
    iget-object v2, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mAdapterList:Ljava/util/LinkedList;

    invoke-virtual {v2, p1, p2}, Ljava/util/LinkedList;->addAll(ILjava/util/Collection;)Z

    move-result v1

    .line 118
    .local v1, success:Z
    if-eqz v1, :cond_0

    .line 119
    move v0, p1

    .local v0, i:I
    :goto_0
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 120
    iget-object v2, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mAdaptersViewTypeMap:Ljava/util/LinkedList;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2, v0, v3}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    .end local v0           #i:I
    :cond_0
    return v1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Landroid/widget/BaseAdapter;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 107
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<+Landroid/widget/BaseAdapter;>;"
    iget-object v2, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mAdapterList:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    move-result v1

    .line 108
    .local v1, success:Z
    if-eqz v1, :cond_0

    .line 109
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 110
    iget-object v2, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mAdaptersViewTypeMap:Ljava/util/LinkedList;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    .end local v0           #i:I
    :cond_0
    return v1
.end method

.method public areAllItemsEnabled()Z
    .locals 3

    .prologue
    .line 387
    iget-object v2, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mAdapterList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    .line 388
    .local v0, a:Landroid/widget/BaseAdapter;
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->areAllItemsEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 389
    const/4 v2, 0x0

    .line 392
    .end local v0           #a:Landroid/widget/BaseAdapter;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public areAllItemsEnabledAt(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mAdapterList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 127
    iget-object v2, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mAdapterList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    .line 128
    .local v0, adapter:Landroid/widget/BaseAdapter;
    iget-object v2, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v2}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0

    .line 130
    .end local v0           #adapter:Landroid/widget/BaseAdapter;
    :cond_0
    iget-object v2, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mAdapterList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 131
    iget-object v2, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mAdaptersViewTypeMap:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 132
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mAdapterList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 139
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mAdapterList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mAdapterList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(I)Landroid/widget/BaseAdapter;
    .locals 1
    .parameter "index"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mAdapterList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/widget/GroupListAdapter;->get(I)Landroid/widget/BaseAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapterForPosition(I)Landroid/widget/BaseAdapter;
    .locals 5
    .parameter "position"

    .prologue
    .line 425
    move v3, p1

    .line 427
    .local v3, orgPosition:I
    iget-object v4, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mAdapterList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    .line 428
    .local v0, a:Landroid/widget/BaseAdapter;
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v1

    .line 429
    .local v1, count:I
    sub-int v4, p1, v1

    if-gez v4, :cond_0

    .line 438
    .end local v0           #a:Landroid/widget/BaseAdapter;
    .end local v1           #count:I
    :goto_1
    return-object v0

    .line 432
    .restart local v0       #a:Landroid/widget/BaseAdapter;
    .restart local v1       #count:I
    :cond_0
    sub-int/2addr p1, v1

    goto :goto_0

    .line 438
    .end local v0           #a:Landroid/widget/BaseAdapter;
    .end local v1           #count:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 238
    const/4 v2, 0x0

    .line 239
    .local v2, totalCount:I
    iget-object v3, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mAdapterList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    .line 240
    .local v0, a:Landroid/widget/BaseAdapter;
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 242
    .end local v0           #a:Landroid/widget/BaseAdapter;
    :cond_0
    return v2
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 4
    .parameter "position"

    .prologue
    .line 247
    iget-object v3, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mAdapterList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    .line 248
    .local v0, a:Landroid/widget/BaseAdapter;
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v1

    .line 249
    .local v1, count:I
    sub-int v3, p1, v1

    if-gez v3, :cond_0

    .line 250
    invoke-virtual {v0, p1}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    .line 258
    .end local v0           #a:Landroid/widget/BaseAdapter;
    .end local v1           #count:I
    :goto_1
    return-object v3

    .line 252
    .restart local v0       #a:Landroid/widget/BaseAdapter;
    .restart local v1       #count:I
    :cond_0
    sub-int/2addr p1, v1

    goto :goto_0

    .line 258
    .end local v0           #a:Landroid/widget/BaseAdapter;
    .end local v1           #count:I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getItemId(I)J
    .locals 5
    .parameter "position"

    .prologue
    .line 263
    iget-object v3, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mAdapterList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    .line 264
    .local v0, a:Landroid/widget/BaseAdapter;
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v1

    .line 265
    .local v1, count:I
    sub-int v3, p1, v1

    if-gez v3, :cond_0

    .line 266
    invoke-virtual {v0, p1}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v3

    .line 274
    .end local v0           #a:Landroid/widget/BaseAdapter;
    .end local v1           #count:I
    :goto_1
    return-wide v3

    .line 268
    .restart local v0       #a:Landroid/widget/BaseAdapter;
    .restart local v1       #count:I
    :cond_0
    sub-int/2addr p1, v1

    goto :goto_0

    .line 274
    .end local v0           #a:Landroid/widget/BaseAdapter;
    .end local v1           #count:I
    :cond_1
    const-wide/16 v3, -0x1

    goto :goto_1
.end method

.method public getItemViewType(I)I
    .locals 10
    .parameter "position"

    .prologue
    const/high16 v4, -0x8000

    .line 320
    const/high16 v6, -0x8000

    .line 321
    .local v6, type:I
    const/4 v5, 0x0

    .line 322
    .local v5, totalCount:I
    const/4 v3, 0x0

    .line 323
    .local v3, index:I
    iget-object v7, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mAdapterList:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    .line 324
    .local v0, a:Landroid/widget/BaseAdapter;
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v1

    .line 325
    .local v1, count:I
    sub-int v7, p1, v1

    if-gez v7, :cond_1

    .line 326
    invoke-virtual {v0, p1}, Landroid/widget/BaseAdapter;->getItemViewType(I)I

    move-result v6

    .line 333
    .end local v0           #a:Landroid/widget/BaseAdapter;
    .end local v1           #count:I
    :cond_0
    if-ne v6, v4, :cond_2

    .line 347
    :goto_1
    return v4

    .line 329
    .restart local v0       #a:Landroid/widget/BaseAdapter;
    .restart local v1       #count:I
    :cond_1
    add-int/2addr v5, v1

    .line 330
    sub-int/2addr p1, v1

    .line 331
    add-int/lit8 v3, v3, 0x1

    .line 332
    goto :goto_0

    .line 338
    .end local v0           #a:Landroid/widget/BaseAdapter;
    .end local v1           #count:I
    :cond_2
    iget-object v7, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mAdaptersViewTypeMap:Ljava/util/LinkedList;

    invoke-virtual {v7, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 340
    iget-object v7, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mAdaptersViewTypeMap:Ljava/util/LinkedList;

    invoke-virtual {v7, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_1

    .line 344
    :cond_3
    iget v4, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mInternalViewTypeCount:I

    .line 345
    .local v4, newTypeValue:I
    iget v7, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mInternalViewTypeCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mInternalViewTypeCount:I

    .line 346
    iget-object v7, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mAdaptersViewTypeMap:Ljava/util/LinkedList;

    invoke-virtual {v7, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 278
    move v5, p1

    .line 280
    .local v5, initPosition:I
    const/4 v2, 0x0

    .line 281
    .local v2, adapterIndex:I
    iget-object v10, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mAdapterList:Ljava/util/LinkedList;

    invoke-virtual {v10}, Ljava/util/LinkedList;->size()I

    move-result v1

    .line 282
    .local v1, adapterCount:I
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/GroupListAdapter;->getCount()I

    move-result v8

    .line 283
    .local v8, totalCount:I
    iget-object v10, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mAdapterList:Ljava/util/LinkedList;

    invoke-virtual {v10}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    .line 284
    .local v0, a:Landroid/widget/BaseAdapter;
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v3

    .line 285
    .local v3, count:I
    sub-int v10, p1, v3

    if-gez v10, :cond_2

    .line 286
    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 287
    .local v9, view:Landroid/view/View;
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v3

    .line 288
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    .line 289
    .local v6, obj:Ljava/lang/Object;
    if-eqz v6, :cond_1

    instance-of v10, v9, Lcom/htc/widget/HtcListItem;

    if-eqz v10, :cond_1

    .line 292
    add-int/lit8 v10, v3, -0x1

    if-ne p1, v10, :cond_0

    add-int/lit8 v10, v5, 0x1

    if-ge v10, v8, :cond_0

    add-int/lit8 v10, v1, -0x1

    if-ge v2, v10, :cond_0

    move-object v10, v9

    .line 293
    check-cast v10, Lcom/htc/widget/HtcListItem;

    const/16 v11, 0xb

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcListItem;->setRoundCorner(I)V

    .line 314
    .end local v0           #a:Landroid/widget/BaseAdapter;
    .end local v3           #count:I
    .end local v6           #obj:Ljava/lang/Object;
    .end local v9           #view:Landroid/view/View;
    :cond_0
    :goto_1
    return-object v9

    .line 296
    .restart local v0       #a:Landroid/widget/BaseAdapter;
    .restart local v3       #count:I
    .restart local v6       #obj:Ljava/lang/Object;
    .restart local v9       #view:Landroid/view/View;
    :cond_1
    if-eqz v6, :cond_0

    instance-of v10, v6, Lcom/htc/widget/HtcListItemSeparableType;

    if-eqz v10, :cond_0

    move-object v7, v6

    .line 297
    check-cast v7, Lcom/htc/widget/HtcListItemSeparableType;

    .line 300
    .local v7, tag:Lcom/htc/widget/HtcListItemSeparableType;
    add-int/lit8 v10, v3, -0x1

    if-ne p1, v10, :cond_0

    add-int/lit8 v10, v5, 0x1

    if-ge v10, v8, :cond_0

    add-int/lit8 v10, v1, -0x1

    if-ge v2, v10, :cond_0

    .line 301
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Lcom/htc/widget/HtcListItemSeparableType;->setBottomRound(Z)V

    goto :goto_1

    .line 307
    .end local v6           #obj:Ljava/lang/Object;
    .end local v7           #tag:Lcom/htc/widget/HtcListItemSeparableType;
    .end local v9           #view:Landroid/view/View;
    :cond_2
    sub-int/2addr p1, v3

    .line 309
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 314
    .end local v0           #a:Landroid/widget/BaseAdapter;
    .end local v3           #count:I
    :cond_3
    iget-object v9, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mMockView:Landroid/view/View;

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 4

    .prologue
    .line 352
    const/4 v2, 0x0

    .line 353
    .local v2, totalCount:I
    iget-object v3, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mAdapterList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    .line 354
    .local v0, a:Landroid/widget/BaseAdapter;
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getViewTypeCount()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 356
    .end local v0           #a:Landroid/widget/BaseAdapter;
    :cond_0
    return v2
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 360
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mAdapterList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .parameter "o"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mAdapterList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 3

    .prologue
    .line 364
    iget-object v2, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mAdapterList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    .line 365
    .local v0, a:Landroid/widget/BaseAdapter;
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 366
    const/4 v2, 0x0

    .line 369
    .end local v0           #a:Landroid/widget/BaseAdapter;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 4
    .parameter "position"

    .prologue
    .line 397
    iget-object v3, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mAdapterList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    .line 398
    .local v0, a:Landroid/widget/BaseAdapter;
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v1

    .line 399
    .local v1, count:I
    sub-int v3, p1, v1

    if-gez v3, :cond_0

    .line 400
    invoke-virtual {v0, p1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result v3

    .line 408
    .end local v0           #a:Landroid/widget/BaseAdapter;
    .end local v1           #count:I
    :goto_1
    return v3

    .line 402
    .restart local v0       #a:Landroid/widget/BaseAdapter;
    .restart local v1       #count:I
    :cond_0
    sub-int/2addr p1, v1

    goto :goto_0

    .line 408
    .end local v0           #a:Landroid/widget/BaseAdapter;
    .end local v1           #count:I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Landroid/widget/BaseAdapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mAdapterList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .parameter "o"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mAdapterList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<",
            "Landroid/widget/BaseAdapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mAdapterList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<",
            "Landroid/widget/BaseAdapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mAdapterList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .parameter "observer"

    .prologue
    .line 373
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 377
    return-void
.end method

.method public registerDataSetObserverAt(ILandroid/database/DataSetObserver;)V
    .locals 1
    .parameter "index"
    .parameter "observer"

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mAdapterList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p2}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 418
    return-void
.end method

.method public remove(I)Landroid/widget/BaseAdapter;
    .locals 2
    .parameter "index"

    .prologue
    .line 179
    iget-object v1, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mAdaptersViewTypeMap:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 180
    iget-object v1, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mAdapterList:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    .line 181
    .local v0, adapter:Landroid/widget/BaseAdapter;
    iget-object v1, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 182
    return-object v0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/widget/GroupListAdapter;->remove(I)Landroid/widget/BaseAdapter;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 186
    iget-object v1, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mAdapterList:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 187
    .local v0, index:I
    iget-object v1, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mAdapterList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/BaseAdapter;

    iget-object v2, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v1, v2}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 188
    iget-object v1, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mAdapterList:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 192
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mAdapterList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 196
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mAdapterList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public set(ILandroid/widget/BaseAdapter;)Landroid/widget/BaseAdapter;
    .locals 2
    .parameter "index"
    .parameter "adapter"

    .prologue
    .line 200
    iget-object v1, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mAdapterList:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    .line 201
    .local v0, adapterOld:Landroid/widget/BaseAdapter;
    iget-object v1, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 202
    iget-object v1, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mObserver:Landroid/database/DataSetObserver;

    invoke-virtual {p2, v1}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 203
    iget-object v1, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mAdapterList:Ljava/util/LinkedList;

    invoke-virtual {v1, p1, p2}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/BaseAdapter;

    return-object v1
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    check-cast p2, Landroid/widget/BaseAdapter;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/widget/GroupListAdapter;->set(ILandroid/widget/BaseAdapter;)Landroid/widget/BaseAdapter;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mAdapterList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .parameter "fromIndex"
    .parameter "toIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/widget/BaseAdapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mAdapterList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedList;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mAdapterList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 219
    .local p1, a:[Ljava/lang/Object;,"[TT;"
    iget-object v0, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mAdapterList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .parameter "observer"

    .prologue
    .line 380
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 384
    return-void
.end method

.method public unregisterDataSetObserverAt(ILandroid/database/DataSetObserver;)V
    .locals 1
    .parameter "index"
    .parameter "observer"

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mAdapterList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p2}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 422
    return-void
.end method
