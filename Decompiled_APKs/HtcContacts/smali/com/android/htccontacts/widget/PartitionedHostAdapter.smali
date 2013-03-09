.class public Lcom/android/htccontacts/widget/PartitionedHostAdapter;
.super Lcom/htc/opensense/plugin/HostListAdapter;
.source "PartitionedHostAdapter.java"

# interfaces
.implements Lcom/android/htccontacts/widget/IIndexableListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/widget/PartitionedHostAdapter$1;,
        Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapterObserver;,
        Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;,
        Lcom/android/htccontacts/widget/PartitionedHostAdapter$AdapterPosition;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field public static final ADAPTER_LIMIT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PartitionedHostAdapter"


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mItems:[Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;

.field private final mRemoteAdapters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapterObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 70
    invoke-static {}, Lcom/android/htccontacts/util/ContactsUtils;->isSupportGridAlbumView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    sget v0, Lcom/android/htccontacts/widget/IndexListGridAdapter;->DEFAULT_ITEM_PER_ROW:I

    sget v1, Lcom/android/htccontacts/widget/IndexListGridAdapter;->DEFAULT_ROW_COUNT:I

    mul-int/2addr v0, v1

    sput v0, Lcom/android/htccontacts/widget/PartitionedHostAdapter;->ADAPTER_LIMIT:I

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    const/16 v0, 0xa

    sput v0, Lcom/android/htccontacts/widget/PartitionedHostAdapter;->ADAPTER_LIMIT:I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/htc/opensense/plugin/HostListAdapter;-><init>(Landroid/content/Context;)V

    .line 388
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter;->mItems:[Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;

    .line 85
    iput-object p1, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter;->mContext:Landroid/content/Context;

    .line 86
    iget-object v0, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter;->mRemoteAdapters:Ljava/util/List;

    .line 88
    return-void
.end method

.method static synthetic access$200(Lcom/android/htccontacts/widget/PartitionedHostAdapter;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private getRemoteAdapterPosition(I)Lcom/android/htccontacts/widget/PartitionedHostAdapter$AdapterPosition;
    .locals 7
    .parameter "position"

    .prologue
    const/4 v5, 0x0

    .line 144
    move v4, p1

    .line 145
    .local v4, orgPosition:I
    if-gez p1, :cond_0

    move-object v1, v5

    .line 161
    :goto_0
    return-object v1

    .line 150
    :cond_0
    iget-object v6, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter;->mRemoteAdapters:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapterObserver;

    .line 151
    .local v0, a:Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapterObserver;
    iget-object v6, v0, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapterObserver;->adapter:Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;

    invoke-virtual {v6}, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;->getCount()I

    move-result v2

    .line 152
    .local v2, count:I
    sub-int v6, p1, v2

    if-gez v6, :cond_1

    .line 153
    new-instance v1, Lcom/android/htccontacts/widget/PartitionedHostAdapter$AdapterPosition;

    invoke-direct {v1, v5}, Lcom/android/htccontacts/widget/PartitionedHostAdapter$AdapterPosition;-><init>(Lcom/android/htccontacts/widget/PartitionedHostAdapter$1;)V

    .line 154
    .local v1, ap:Lcom/android/htccontacts/widget/PartitionedHostAdapter$AdapterPosition;
    iput p1, v1, Lcom/android/htccontacts/widget/PartitionedHostAdapter$AdapterPosition;->position:I

    .line 155
    iput-object v0, v1, Lcom/android/htccontacts/widget/PartitionedHostAdapter$AdapterPosition;->observer:Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapterObserver;

    goto :goto_0

    .line 159
    .end local v1           #ap:Lcom/android/htccontacts/widget/PartitionedHostAdapter$AdapterPosition;
    :cond_1
    sub-int/2addr p1, v2

    .line 160
    goto :goto_1

    .end local v0           #a:Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapterObserver;
    .end local v2           #count:I
    :cond_2
    move-object v1, v5

    .line 161
    goto :goto_0
.end method

.method private getRemoteAdapterPositionCountSubHeader(I)Lcom/android/htccontacts/widget/PartitionedHostAdapter$AdapterPosition;
    .locals 7
    .parameter "position"

    .prologue
    const/4 v5, 0x0

    .line 165
    move v4, p1

    .line 166
    .local v4, orgPosition:I
    if-gez p1, :cond_0

    move-object v1, v5

    .line 190
    :goto_0
    return-object v1

    .line 171
    :cond_0
    iget-object v6, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter;->mRemoteAdapters:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapterObserver;

    .line 172
    .local v0, a:Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapterObserver;
    add-int/lit8 p1, p1, -0x1

    .line 173
    if-gez p1, :cond_2

    .end local v0           #a:Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapterObserver;
    :cond_1
    move-object v1, v5

    .line 190
    goto :goto_0

    .line 176
    .restart local v0       #a:Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapterObserver;
    :cond_2
    iget-object v6, v0, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapterObserver;->adapter:Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;

    invoke-virtual {v6}, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;->getCount()I

    move-result v2

    .line 177
    .local v2, count:I
    if-nez v2, :cond_3

    .line 178
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 180
    :cond_3
    sub-int v6, p1, v2

    if-gez v6, :cond_4

    .line 181
    new-instance v1, Lcom/android/htccontacts/widget/PartitionedHostAdapter$AdapterPosition;

    invoke-direct {v1, v5}, Lcom/android/htccontacts/widget/PartitionedHostAdapter$AdapterPosition;-><init>(Lcom/android/htccontacts/widget/PartitionedHostAdapter$1;)V

    .line 182
    .local v1, ap:Lcom/android/htccontacts/widget/PartitionedHostAdapter$AdapterPosition;
    iput p1, v1, Lcom/android/htccontacts/widget/PartitionedHostAdapter$AdapterPosition;->position:I

    .line 183
    iput-object v0, v1, Lcom/android/htccontacts/widget/PartitionedHostAdapter$AdapterPosition;->observer:Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapterObserver;

    goto :goto_0

    .line 187
    .end local v1           #ap:Lcom/android/htccontacts/widget/PartitionedHostAdapter$AdapterPosition;
    :cond_4
    sub-int/2addr p1, v2

    goto :goto_1
.end method


# virtual methods
.method public addExteriorAdapter(Lcom/htc/opensense/plugin/ExteriorListAdapter;)V
    .locals 3
    .parameter "adapter"

    .prologue
    .line 99
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->isSorted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    new-instance v0, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapterObserver;

    new-instance v1, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;

    sget v2, Lcom/android/htccontacts/widget/PartitionedHostAdapter;->ADAPTER_LIMIT:I

    invoke-direct {v1, p0, p1, v2}, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;-><init>(Lcom/android/htccontacts/widget/PartitionedHostAdapter;Lcom/htc/opensense/plugin/ExteriorListAdapter;I)V

    invoke-direct {v0, p0, v1}, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapterObserver;-><init>(Lcom/android/htccontacts/widget/PartitionedHostAdapter;Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;)V

    .line 102
    .local v0, new_adapter:Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapterObserver;
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapterObserver;->registerDataSetObserver()V

    .line 103
    iget-object v1, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter;->mRemoteAdapters:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/PartitionedHostAdapter;->notifyDataSetChanged()V

    .line 108
    .end local v0           #new_adapter:Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapterObserver;
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 232
    const/4 v0, 0x0

    .line 233
    .local v0, actual_count:I
    iget-object v3, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter;->mRemoteAdapters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapterObserver;

    .line 234
    .local v2, ob:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;
    iget-object v3, v2, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    invoke-virtual {v3}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->getCount()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0

    .line 236
    .end local v2           #ob:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;
    :cond_0
    return v0
.end method

.method public getExteriorAdapterAtPosition(I)Lcom/htc/opensense/plugin/ExteriorListAdapter;
    .locals 2
    .parameter "position"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/htccontacts/widget/PartitionedHostAdapter;->getRemoteAdapterPosition(I)Lcom/android/htccontacts/widget/PartitionedHostAdapter$AdapterPosition;

    move-result-object v0

    .line 92
    .local v0, ap:Lcom/android/htccontacts/widget/PartitionedHostAdapter$AdapterPosition;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/htccontacts/widget/PartitionedHostAdapter$AdapterPosition;->observer:Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapterObserver;

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, v0, Lcom/android/htccontacts/widget/PartitionedHostAdapter$AdapterPosition;->observer:Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapterObserver;

    iget-object v1, v1, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapterObserver;->adapter:Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;

    invoke-virtual {v1}, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;->getExteriorListAdapter()Lcom/htc/opensense/plugin/ExteriorListAdapter;

    move-result-object v1

    .line 95
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getExteriorContextMenuItems(I)Ljava/util/List;
    .locals 1
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/plugin/ExteriorListAdapter$ExteriorContextMenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 259
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIndexAt(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"

    .prologue
    .line 432
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIndexCount()I
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter;->mRemoteAdapters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getIndexItemCountAt(I)I
    .locals 2
    .parameter "index"

    .prologue
    .line 415
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter;->mRemoteAdapters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 417
    :cond_0
    const/4 v1, 0x0

    .line 420
    :goto_0
    return v1

    .line 419
    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter;->mRemoteAdapters:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;

    .line 420
    .local v0, ob:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;
    iget-object v1, v0, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    invoke-virtual {v1}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->getCount()I

    move-result v1

    goto :goto_0
.end method

.method public getIndexItemInfo()[Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 395
    iget-object v3, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter;->mRemoteAdapters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 396
    .local v2, size:I
    iget-object v3, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter;->mItems:[Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;

    if-nez v3, :cond_2

    .line 397
    new-array v3, v2, [Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;

    iput-object v3, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter;->mItems:[Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;

    .line 402
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter;->mItems:[Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;

    array-length v3, v3

    if-ge v1, v3, :cond_5

    .line 403
    iget-object v3, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter;->mItems:[Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;

    aget-object v3, v3, v1

    if-nez v3, :cond_1

    .line 404
    iget-object v3, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter;->mItems:[Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;

    new-instance v6, Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;

    invoke-direct {v6}, Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;-><init>()V

    aput-object v6, v3, v1

    .line 406
    :cond_1
    iget-object v3, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter;->mRemoteAdapters:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapterObserver;

    iget-object v3, v3, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapterObserver;->adapter:Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;

    invoke-virtual {v3}, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;->getCount()I

    move-result v0

    .line 407
    .local v0, count:I
    iget-object v3, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter;->mItems:[Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;

    aget-object v3, v3, v1

    iput v0, v3, Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;->count:I

    .line 408
    iget-object v3, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter;->mItems:[Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;

    aget-object v6, v3, v1

    if-lez v0, :cond_3

    move v3, v4

    :goto_2
    iput-boolean v3, v6, Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;->isShow:Z

    .line 409
    iget-object v3, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter;->mItems:[Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;

    aget-object v6, v3, v1

    iget-object v3, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter;->mRemoteAdapters:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapterObserver;

    iget-object v3, v3, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapterObserver;->adapter:Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;

    #getter for: Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;->nMaxShowingEntries:I
    invoke-static {v3}, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;->access$100(Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;)I

    move-result v3

    sget v7, Lcom/android/htccontacts/widget/PartitionedHostAdapter;->ADAPTER_LIMIT:I

    if-le v3, v7, :cond_4

    move v3, v4

    :goto_3
    iput-boolean v3, v6, Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;->isShowMax:Z

    .line 402
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 398
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_2
    iget-object v3, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter;->mItems:[Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;

    array-length v3, v3

    if-eq v3, v2, :cond_0

    .line 399
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter;->mItems:[Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;

    .line 400
    new-array v3, v2, [Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;

    iput-object v3, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter;->mItems:[Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;

    goto :goto_0

    .restart local v0       #count:I
    .restart local v1       #i:I
    :cond_3
    move v3, v5

    .line 408
    goto :goto_2

    :cond_4
    move v3, v5

    .line 409
    goto :goto_3

    .line 411
    .end local v0           #count:I
    :cond_5
    iget-object v3, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter;->mItems:[Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;

    return-object v3
.end method

.method public getIndexViewAt(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "index"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    .line 436
    if-ltz p1, :cond_0

    iget-object v4, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter;->mRemoteAdapters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt p1, v4, :cond_1

    .line 438
    :cond_0
    const/4 v4, 0x0

    .line 471
    :goto_0
    return-object v4

    .line 440
    :cond_1
    if-nez p2, :cond_2

    .line 441
    iget-object v4, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x2090026

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 442
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isLandscapeProject()Z

    move-result v4

    if-nez v4, :cond_2

    .line 443
    new-instance v4, Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;

    const-string v5, "index"

    invoke-direct {v4, v5, v6}, Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 446
    :cond_2
    const v4, 0x2020010

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 447
    .local v2, labelView:Landroid/widget/TextView;
    if-eqz v2, :cond_5

    .line 448
    iget-object v4, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter;->mRemoteAdapters:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;

    .line 449
    .local v3, ob:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;
    const-string v0, ""

    .line 450
    .local v0, label:Ljava/lang/String;
    iget-object v4, v3, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    invoke-virtual {v4, v6}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->getItemSeparationText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 451
    const-string v4, "blah"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getIndexViewAt("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") - separationText: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 453
    iget-object v4, v3, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    invoke-virtual {v4}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->getPluginContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v1, v4, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 454
    .local v1, labelRes:I
    if-lez v1, :cond_3

    .line 455
    iget-object v4, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, v3, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    invoke-virtual {v5}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->getPluginContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    invoke-virtual {v6}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->getPluginContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    invoke-virtual {v4, v5, v1, v6}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 457
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 458
    iget-object v4, v3, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    invoke-virtual {v4}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->getPluginContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 459
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 460
    iget-object v4, v3, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    invoke-virtual {v4}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->getPluginContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 464
    .end local v1           #labelRes:I
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 465
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .end local v0           #label:Ljava/lang/String;
    .end local v3           #ob:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;
    :cond_5
    move-object v4, p2

    .line 471
    goto/16 :goto_0
.end method

.method public getIndexViewTypeAt(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 428
    const/4 v0, 0x0

    return v0
.end method

.method public getIndexViewTypeCount()I
    .locals 1

    .prologue
    .line 424
    const/4 v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .parameter "position"

    .prologue
    .line 240
    invoke-direct {p0, p1}, Lcom/android/htccontacts/widget/PartitionedHostAdapter;->getRemoteAdapterPosition(I)Lcom/android/htccontacts/widget/PartitionedHostAdapter$AdapterPosition;

    move-result-object v0

    .line 241
    .local v0, ap:Lcom/android/htccontacts/widget/PartitionedHostAdapter$AdapterPosition;
    if-eqz v0, :cond_0

    .line 242
    iget-object v1, v0, Lcom/android/htccontacts/widget/PartitionedHostAdapter$AdapterPosition;->observer:Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapterObserver;

    iget-object v1, v1, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapterObserver;->adapter:Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;

    iget v2, v0, Lcom/android/htccontacts/widget/PartitionedHostAdapter$AdapterPosition;->position:I

    invoke-virtual {v1, v2}, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 244
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 3
    .parameter "position"

    .prologue
    .line 248
    invoke-direct {p0, p1}, Lcom/android/htccontacts/widget/PartitionedHostAdapter;->getRemoteAdapterPosition(I)Lcom/android/htccontacts/widget/PartitionedHostAdapter$AdapterPosition;

    move-result-object v0

    .line 249
    .local v0, ap:Lcom/android/htccontacts/widget/PartitionedHostAdapter$AdapterPosition;
    if-eqz v0, :cond_0

    .line 250
    iget-object v1, v0, Lcom/android/htccontacts/widget/PartitionedHostAdapter$AdapterPosition;->observer:Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapterObserver;

    iget-object v1, v1, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapterObserver;->adapter:Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;

    iget v2, v0, Lcom/android/htccontacts/widget/PartitionedHostAdapter$AdapterPosition;->position:I

    invoke-virtual {v1, v2}, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;->getItemId(I)J

    move-result-wide v1

    .line 252
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 12
    .parameter "position"

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/android/htccontacts/widget/PartitionedHostAdapter;->getRemoteAdapterPosition(I)Lcom/android/htccontacts/widget/PartitionedHostAdapter$AdapterPosition;

    move-result-object v0

    .line 197
    .local v0, ap:Lcom/android/htccontacts/widget/PartitionedHostAdapter$AdapterPosition;
    if-eqz v0, :cond_3

    .line 198
    iget-object v10, v0, Lcom/android/htccontacts/widget/PartitionedHostAdapter$AdapterPosition;->observer:Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapterObserver;

    iget-object v10, v10, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapterObserver;->adapter:Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;

    iget v11, v0, Lcom/android/htccontacts/widget/PartitionedHostAdapter$AdapterPosition;->position:I

    invoke-virtual {v10, v11}, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;->getItemViewProxy(I)Lcom/htc/opensense/plugin/ItemViewProxy;

    move-result-object v8

    .line 199
    .local v8, proxy:Lcom/htc/opensense/plugin/ItemViewProxy;
    invoke-static {}, Lcom/htc/opensense/plugin/HtcCommonResourceManager;->getListItemLayouts()[I

    move-result-object v6

    .line 200
    .local v6, lids:[I
    const/4 v7, 0x0

    .line 201
    .local v7, order:I
    if-eqz v8, :cond_2

    .line 202
    invoke-virtual {v8}, Lcom/htc/opensense/plugin/ItemViewProxy;->getItemLayoutId()I

    move-result v5

    .line 204
    .local v5, lid:I
    move-object v1, v6

    .local v1, arr$:[I
    array-length v4, v1

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_3

    aget v3, v1, v2

    .line 205
    .local v3, l:I
    if-ne v3, v5, :cond_1

    .line 222
    .end local v1           #arr$:[I
    .end local v2           #i$:I
    .end local v3           #l:I
    .end local v4           #len$:I
    .end local v5           #lid:I
    .end local v6           #lids:[I
    .end local v7           #order:I
    .end local v8           #proxy:Lcom/htc/opensense/plugin/ItemViewProxy;
    :cond_0
    :goto_1
    return v7

    .line 208
    .restart local v1       #arr$:[I
    .restart local v2       #i$:I
    .restart local v3       #l:I
    .restart local v4       #len$:I
    .restart local v5       #lid:I
    .restart local v6       #lids:[I
    .restart local v7       #order:I
    .restart local v8       #proxy:Lcom/htc/opensense/plugin/ItemViewProxy;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    .line 204
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 213
    .end local v1           #arr$:[I
    .end local v2           #i$:I
    .end local v3           #l:I
    .end local v4           #len$:I
    .end local v5           #lid:I
    :cond_2
    array-length v10, v6

    add-int/2addr v7, v10

    .line 214
    iget-object v10, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter;->mRemoteAdapters:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapterObserver;

    .line 215
    .local v9, r:Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapterObserver;
    iget-object v10, v9, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapterObserver;->adapter:Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;

    iget-object v11, v0, Lcom/android/htccontacts/widget/PartitionedHostAdapter$AdapterPosition;->observer:Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapterObserver;

    iget-object v11, v11, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapterObserver;->adapter:Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;

    if-eq v10, v11, :cond_0

    .line 218
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 222
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v6           #lids:[I
    .end local v7           #order:I
    .end local v8           #proxy:Lcom/htc/opensense/plugin/ItemViewProxy;
    .end local v9           #r:Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapterObserver;
    :cond_3
    const/4 v7, -0x1

    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 289
    invoke-direct/range {p0 .. p1}, Lcom/android/htccontacts/widget/PartitionedHostAdapter;->getRemoteAdapterPosition(I)Lcom/android/htccontacts/widget/PartitionedHostAdapter$AdapterPosition;

    move-result-object v2

    .line 290
    .local v2, ap:Lcom/android/htccontacts/widget/PartitionedHostAdapter$AdapterPosition;
    if-eqz v2, :cond_b

    .line 291
    iget-object v10, v2, Lcom/android/htccontacts/widget/PartitionedHostAdapter$AdapterPosition;->observer:Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapterObserver;

    if-eqz v10, :cond_b

    iget-object v10, v2, Lcom/android/htccontacts/widget/PartitionedHostAdapter$AdapterPosition;->observer:Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapterObserver;

    iget-object v10, v10, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapterObserver;->adapter:Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;

    if-eqz v10, :cond_b

    .line 295
    if-eqz p2, :cond_1

    .line 296
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense/plugin/HostListAdapter$ViewHolder;

    .line 300
    .local v4, holder:Lcom/htc/opensense/plugin/HostListAdapter$ViewHolder;
    :goto_0
    const/4 v7, 0x0

    .line 301
    .local v7, order:I
    iget-object v10, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter;->mRemoteAdapters:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapterObserver;

    .line 302
    .local v9, r:Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapterObserver;
    iget-object v10, v9, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapterObserver;->adapter:Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;

    iget-object v11, v2, Lcom/android/htccontacts/widget/PartitionedHostAdapter$AdapterPosition;->observer:Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapterObserver;

    iget-object v11, v11, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapterObserver;->adapter:Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;

    if-ne v10, v11, :cond_0

    .line 303
    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, v7}, Ljava/lang/Integer;-><init>(I)V

    iput-object v10, v4, Lcom/htc/opensense/plugin/HostListAdapter$ViewHolder;->mSeparationKey:Ljava/lang/Object;

    .line 305
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 298
    .end local v4           #holder:Lcom/htc/opensense/plugin/HostListAdapter$ViewHolder;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v7           #order:I
    .end local v9           #r:Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapterObserver;
    :cond_1
    new-instance v4, Lcom/htc/opensense/plugin/HostListAdapter$ViewHolder;

    invoke-direct {v4}, Lcom/htc/opensense/plugin/HostListAdapter$ViewHolder;-><init>()V

    .restart local v4       #holder:Lcom/htc/opensense/plugin/HostListAdapter$ViewHolder;
    goto :goto_0

    .line 308
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v7       #order:I
    :cond_2
    iget-object v10, v2, Lcom/android/htccontacts/widget/PartitionedHostAdapter$AdapterPosition;->observer:Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapterObserver;

    iget-object v10, v10, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapterObserver;->adapter:Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;

    iget v11, v2, Lcom/android/htccontacts/widget/PartitionedHostAdapter$AdapterPosition;->position:I

    invoke-virtual {v10, v11}, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;->getItemViewProxy(I)Lcom/htc/opensense/plugin/ItemViewProxy;

    move-result-object v8

    .line 309
    .local v8, proxy:Lcom/htc/opensense/plugin/ItemViewProxy;
    invoke-static {}, Lcom/htc/opensense/plugin/HtcCommonResourceManager;->getListItemLayouts()[I

    move-result-object v6

    .line 310
    .local v6, lids:[I
    const/4 v7, 0x0

    .line 311
    const/4 v3, 0x0

    .line 312
    .local v3, exteriorInflater:Landroid/view/LayoutInflater;
    if-eqz v8, :cond_9

    .line 313
    if-nez p2, :cond_3

    .line 314
    invoke-virtual {v8}, Lcom/htc/opensense/plugin/ItemViewProxy;->getItemLayoutId()I

    move-result v10

    invoke-static {v10}, Lcom/htc/opensense/plugin/HtcCommonResourceManager;->isSupported(I)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 315
    const-string v10, "PartitionedHostAdapter"

    const-string v11, "Inflating supported layout %d: %d"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual/range {p0 .. p1}, Lcom/android/htccontacts/widget/PartitionedHostAdapter;->getItemViewType(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-virtual {v8}, Lcom/htc/opensense/plugin/ItemViewProxy;->getItemLayoutId()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v10, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v8}, Lcom/htc/opensense/plugin/ItemViewProxy;->getItemLayoutId()I

    move-result v11

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v10, v11, v0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 337
    :cond_3
    :goto_2
    if-eqz p2, :cond_4

    .line 338
    move-object/from16 v0, p2

    invoke-virtual {v8, v0, v4}, Lcom/htc/opensense/plugin/ItemViewProxy;->apply(Landroid/view/View;Lcom/htc/opensense/plugin/HostListAdapter$ViewHolder;)V

    .line 339
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 341
    :cond_4
    invoke-virtual {v8}, Lcom/htc/opensense/plugin/ItemViewProxy;->recycle()V

    :cond_5
    move-object/from16 v10, p2

    .line 355
    .end local v3           #exteriorInflater:Landroid/view/LayoutInflater;
    .end local v4           #holder:Lcom/htc/opensense/plugin/HostListAdapter$ViewHolder;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #lids:[I
    .end local v7           #order:I
    .end local v8           #proxy:Lcom/htc/opensense/plugin/ItemViewProxy;
    :goto_3
    return-object v10

    .line 318
    .restart local v3       #exteriorInflater:Landroid/view/LayoutInflater;
    .restart local v4       #holder:Lcom/htc/opensense/plugin/HostListAdapter$ViewHolder;
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v6       #lids:[I
    .restart local v7       #order:I
    .restart local v8       #proxy:Lcom/htc/opensense/plugin/ItemViewProxy;
    :cond_6
    const-string v10, "backdoor"

    invoke-virtual {v8, v10}, Lcom/htc/opensense/plugin/ItemViewProxy;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    iget-object v10, v2, Lcom/android/htccontacts/widget/PartitionedHostAdapter$AdapterPosition;->observer:Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapterObserver;

    iget-object v10, v10, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapterObserver;->adapter:Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;

    invoke-virtual {v10}, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 319
    const-string v10, "inflateExterior"

    invoke-virtual {v8, v10}, Lcom/htc/opensense/plugin/ItemViewProxy;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 320
    const-string v10, "PartitionedHostAdapter"

    const-string v11, "Inflating backdoor exterior layout %d: %d"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual/range {p0 .. p1}, Lcom/android/htccontacts/widget/PartitionedHostAdapter;->getItemViewType(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-virtual {v8}, Lcom/htc/opensense/plugin/ItemViewProxy;->getItemLayoutId()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-virtual {v8}, Lcom/htc/opensense/plugin/ItemViewProxy;->getItemLayoutId()I

    move-result v10

    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v3, v10, v0, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_2

    .line 324
    :cond_7
    const-string v10, "PartitionedHostAdapter"

    const-string v11, "Inflating backdoor layout %d: %d"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual/range {p0 .. p1}, Lcom/android/htccontacts/widget/PartitionedHostAdapter;->getItemViewType(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-virtual {v8}, Lcom/htc/opensense/plugin/ItemViewProxy;->getItemLayoutId()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v10, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v8}, Lcom/htc/opensense/plugin/ItemViewProxy;->getItemLayoutId()I

    move-result v11

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v10, v11, v0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_2

    .line 329
    :cond_8
    const-string v10, "PartitionedHostAdapter"

    const-string v11, "Inflating default layout %d: %d"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual/range {p0 .. p1}, Lcom/android/htccontacts/widget/PartitionedHostAdapter;->getItemViewType(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-virtual {v8}, Lcom/htc/opensense/plugin/ItemViewProxy;->getItemLayoutId()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object v10, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 v11, -0x1

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v10, v11, v0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_2

    .line 344
    :cond_9
    array-length v10, v6

    add-int/2addr v7, v10

    .line 345
    iget-object v10, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter;->mRemoteAdapters:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_a
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapterObserver;

    .line 346
    .restart local v9       #r:Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapterObserver;
    iget-object v10, v9, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapterObserver;->adapter:Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;

    iget-object v11, v2, Lcom/android/htccontacts/widget/PartitionedHostAdapter$AdapterPosition;->observer:Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapterObserver;

    iget-object v11, v11, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapterObserver;->adapter:Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;

    if-ne v10, v11, :cond_a

    .line 347
    iget-object v10, v2, Lcom/android/htccontacts/widget/PartitionedHostAdapter$AdapterPosition;->observer:Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapterObserver;

    iget-object v10, v10, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapterObserver;->adapter:Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v10, v0, v1}, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;->getToggleView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 348
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_4

    .line 355
    .end local v3           #exteriorInflater:Landroid/view/LayoutInflater;
    .end local v4           #holder:Lcom/htc/opensense/plugin/HostListAdapter$ViewHolder;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #lids:[I
    .end local v7           #order:I
    .end local v8           #proxy:Lcom/htc/opensense/plugin/ItemViewProxy;
    .end local v9           #r:Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapterObserver;
    :cond_b
    const/4 v10, 0x0

    goto/16 :goto_3
.end method

.method public getViewTypeCount()I
    .locals 2

    .prologue
    .line 227
    invoke-static {}, Lcom/htc/opensense/plugin/HtcCommonResourceManager;->getListItemLayoutCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter;->mRemoteAdapters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isIndexEnabled(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 475
    const/4 v0, 0x0

    return v0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    .line 264
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;

    .line 265
    .local v1, info:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    iget v5, v1, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v5}, Lcom/android/htccontacts/widget/PartitionedHostAdapter;->getRemoteAdapterPosition(I)Lcom/android/htccontacts/widget/PartitionedHostAdapter$AdapterPosition;

    move-result-object v0

    .line 266
    .local v0, ap:Lcom/android/htccontacts/widget/PartitionedHostAdapter$AdapterPosition;
    iget v4, v1, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    .line 267
    .local v4, oldPosition:I
    iget-wide v2, v1, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->id:J

    .line 268
    .local v2, oldId:J
    iget v5, v0, Lcom/android/htccontacts/widget/PartitionedHostAdapter$AdapterPosition;->position:I

    iput v5, v1, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    .line 269
    iget-object v5, v0, Lcom/android/htccontacts/widget/PartitionedHostAdapter$AdapterPosition;->observer:Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapterObserver;

    iget-object v5, v5, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapterObserver;->adapter:Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;

    iget v6, v1, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v5, v6}, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;->getItemId(I)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->id:J

    .line 270
    iget-object v5, v0, Lcom/android/htccontacts/widget/PartitionedHostAdapter$AdapterPosition;->observer:Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapterObserver;

    iget-object v5, v5, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapterObserver;->adapter:Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    invoke-virtual {v5, v6, v1}, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;->onContextItemSelected(ILcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 271
    const/4 v5, 0x1

    .line 275
    :goto_0
    return v5

    .line 273
    :cond_0
    iput v4, v1, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    .line 274
    iput-wide v2, v1, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->id:J

    .line 275
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 280
    invoke-direct {p0, p3}, Lcom/android/htccontacts/widget/PartitionedHostAdapter;->getRemoteAdapterPositionCountSubHeader(I)Lcom/android/htccontacts/widget/PartitionedHostAdapter$AdapterPosition;

    move-result-object v0

    .line 281
    .local v0, ap:Lcom/android/htccontacts/widget/PartitionedHostAdapter$AdapterPosition;
    if-eqz v0, :cond_0

    .line 282
    iget p3, v0, Lcom/android/htccontacts/widget/PartitionedHostAdapter$AdapterPosition;->position:I

    .line 284
    iget-object v1, v0, Lcom/android/htccontacts/widget/PartitionedHostAdapter$AdapterPosition;->observer:Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapterObserver;

    iget-object v1, v1, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapterObserver;->adapter:Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;

    invoke-virtual {v1, p3}, Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapter;->onItemClick(I)V

    .line 286
    :cond_0
    return-void
.end method

.method public removeExteriorAdapter(Lcom/htc/opensense/plugin/ExteriorListAdapter;)V
    .locals 4
    .parameter "adapter"

    .prologue
    .line 111
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->isSorted()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, adapter_removed:Z
    iget-object v3, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter;->mRemoteAdapters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapterObserver;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 114
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;

    .line 115
    .local v2, ob:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;
    iget-object v3, v2, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 116
    const/4 v0, 0x1

    .line 117
    invoke-virtual {v2}, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->unregisterDataSetObserver()V

    .line 118
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 123
    .end local v2           #ob:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;
    :cond_1
    if-eqz v0, :cond_2

    .line 125
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/PartitionedHostAdapter;->notifyDataSetChanged()V

    .line 132
    .end local v0           #adapter_removed:Z
    .end local v1           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapterObserver;>;"
    :cond_2
    return-void
.end method

.method public removeExteriorAdapters()V
    .locals 3

    .prologue
    .line 135
    iget-object v2, p0, Lcom/android/htccontacts/widget/PartitionedHostAdapter;->mRemoteAdapters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/htccontacts/widget/PartitionedHostAdapter$ExpandableExteriorAdapterObserver;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 136
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;

    .line 137
    .local v1, ob:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;
    invoke-virtual {v1}, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->unregisterDataSetObserver()V

    .line 138
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 140
    .end local v1           #ob:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;
    :cond_0
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/PartitionedHostAdapter;->notifyDataSetChanged()V

    .line 141
    return-void
.end method
