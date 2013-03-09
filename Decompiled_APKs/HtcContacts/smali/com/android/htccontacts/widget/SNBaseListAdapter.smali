.class public Lcom/android/htccontacts/widget/SNBaseListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SNBaseListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/htccontacts/widget/ILinearExpandableListAdapter;
.implements Lcom/android/htccontacts/widget/IWrapperAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/widget/SNBaseListAdapter$MatchFriendEntry;,
        Lcom/android/htccontacts/widget/SNBaseListAdapter$LinkToOtherListener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field public static final INTENT_RESULT_LINK_SN:Ljava/lang/String; = "LINK_FRIEND"

.field private static final NOTIFY_CHANGE:I = 0x1

.field public static final STATUS_EMPTY:Ljava/lang/String; = "STATUS_EMPTY"

.field public static final STATUS_NOT_LOGIN:Ljava/lang/String; = "STATUS_NOT_LOGIN"


# instance fields
.field protected mAdapter:Lcom/android/htccontacts/widget/ISNBaseListAdapter;

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

.field private mContext:Landroid/content/Context;

.field private mEmptyView:Landroid/view/View;

.field protected mEmptyViewType:I

.field private mHandler:Landroid/os/Handler;

.field protected mInflater:Landroid/view/LayoutInflater;

.field protected mInternalViewTypeCount:I

.field private mLinkToOtherListener:Lcom/android/htccontacts/widget/SNBaseListAdapter$LinkToOtherListener;

.field private mLoginView:Landroid/view/View;

.field protected mLoginViewType:I

.field private mMatchFriendList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/htccontacts/widget/SNBaseListAdapter$MatchFriendEntry;",
            ">;"
        }
    .end annotation
.end field

.field protected mMatchFriendViewType:I

.field protected mObserver:Landroid/database/DataSetObserver;

.field protected mServiceType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils;->isDebug()Z

    move-result v0

    sput-boolean v0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/htccontacts/widget/ISNBaseListAdapter;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "adapter"
    .parameter "serviceType"

    .prologue
    const/4 v1, -0x1

    .line 120
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mAdaptersViewTypeMap:Ljava/util/HashMap;

    .line 73
    iput v1, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mLoginViewType:I

    .line 74
    iput v1, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mEmptyViewType:I

    .line 75
    iput v1, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mMatchFriendViewType:I

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mInternalViewTypeCount:I

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mMatchFriendList:Ljava/util/List;

    .line 98
    new-instance v0, Lcom/android/htccontacts/widget/SNBaseListAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/widget/SNBaseListAdapter$1;-><init>(Lcom/android/htccontacts/widget/SNBaseListAdapter;)V

    iput-object v0, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mObserver:Landroid/database/DataSetObserver;

    .line 108
    new-instance v0, Lcom/android/htccontacts/widget/SNBaseListAdapter$2;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/widget/SNBaseListAdapter$2;-><init>(Lcom/android/htccontacts/widget/SNBaseListAdapter;)V

    iput-object v0, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mHandler:Landroid/os/Handler;

    .line 121
    iput-object p1, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mContext:Landroid/content/Context;

    .line 122
    iput-object p2, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ISNBaseListAdapter;

    .line 123
    iget-object v0, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p2, v0}, Lcom/android/htccontacts/widget/ISNBaseListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 124
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 125
    new-instance v0, Lcom/android/htccontacts/widget/SNBaseListAdapter$LinkToOtherListener;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/widget/SNBaseListAdapter$LinkToOtherListener;-><init>(Lcom/android/htccontacts/widget/SNBaseListAdapter;)V

    iput-object v0, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mLinkToOtherListener:Lcom/android/htccontacts/widget/SNBaseListAdapter$LinkToOtherListener;

    .line 126
    iput-object p3, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mServiceType:Ljava/lang/String;

    .line 127
    return-void
.end method

.method private compareMatchFriendList(Ljava/util/List;Ljava/util/List;)I
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/htccontacts/widget/SNBaseListAdapter$MatchFriendEntry;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/htccontacts/widget/SNBaseListAdapter$MatchFriendEntry;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 193
    .local p1, listA:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/widget/SNBaseListAdapter$MatchFriendEntry;>;"
    .local p2, listB:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/widget/SNBaseListAdapter$MatchFriendEntry;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 194
    .local v3, length:I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-eq v3, v5, :cond_1

    .line 195
    const/4 v4, 0x1

    .line 207
    :cond_0
    :goto_0
    return v4

    .line 198
    :cond_1
    const/4 v4, 0x0

    .line 199
    .local v4, result:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_0

    .line 200
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/SNBaseListAdapter$MatchFriendEntry;

    .line 201
    .local v0, entryA:Lcom/android/htccontacts/widget/SNBaseListAdapter$MatchFriendEntry;
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/widget/SNBaseListAdapter$MatchFriendEntry;

    .line 202
    .local v1, entryB:Lcom/android/htccontacts/widget/SNBaseListAdapter$MatchFriendEntry;
    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/SNBaseListAdapter$MatchFriendEntry;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 203
    const/4 v4, 0x1

    .line 204
    goto :goto_0

    .line 199
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 409
    iget-object v1, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ISNBaseListAdapter;

    invoke-interface {v1}, Lcom/android/htccontacts/widget/ISNBaseListAdapter;->isClientLogin()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 410
    iget-object v1, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ISNBaseListAdapter;

    invoke-interface {v1}, Lcom/android/htccontacts/widget/ISNBaseListAdapter;->isLinked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 411
    iget-object v0, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ISNBaseListAdapter;

    invoke-interface {v0}, Lcom/android/htccontacts/widget/ISNBaseListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 412
    iget-object v0, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ISNBaseListAdapter;

    invoke-interface {v0}, Lcom/android/htccontacts/widget/ISNBaseListAdapter;->areAllItemsEnabled()Z

    move-result v0

    .line 420
    :cond_0
    :goto_0
    return v0

    .line 414
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 130
    iget-object v0, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ISNBaseListAdapter;

    iget-object v1, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Lcom/android/htccontacts/widget/ISNBaseListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 131
    iput-object v2, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ISNBaseListAdapter;

    .line 132
    iget-object v0, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mAdaptersViewTypeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 133
    iput-object v2, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mAdaptersViewTypeMap:Ljava/util/HashMap;

    .line 135
    iput-object v2, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mLoginView:Landroid/view/View;

    .line 137
    iput-object v2, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mEmptyView:Landroid/view/View;

    .line 138
    iget-object v0, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mMatchFriendList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 139
    iput-object v2, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mMatchFriendList:Ljava/util/List;

    .line 140
    iput-object v2, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 141
    iput-object v2, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mLinkToOtherListener:Lcom/android/htccontacts/widget/SNBaseListAdapter$LinkToOtherListener;

    .line 142
    return-void
.end method

.method public getAdapter()Lcom/android/htccontacts/widget/ISNBaseListAdapter;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ISNBaseListAdapter;

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 232
    iget-object v1, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ISNBaseListAdapter;

    invoke-interface {v1}, Lcom/android/htccontacts/widget/ISNBaseListAdapter;->isClientLogin()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    iget-object v1, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ISNBaseListAdapter;

    invoke-interface {v1}, Lcom/android/htccontacts/widget/ISNBaseListAdapter;->isLinked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 235
    iget-object v1, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ISNBaseListAdapter;

    invoke-interface {v1}, Lcom/android/htccontacts/widget/ISNBaseListAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 237
    iget-object v0, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ISNBaseListAdapter;

    invoke-interface {v0}, Lcom/android/htccontacts/widget/ISNBaseListAdapter;->getCount()I

    move-result v0

    .line 248
    :cond_0
    :goto_0
    return v0

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mMatchFriendList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ISNBaseListAdapter;

    invoke-interface {v0}, Lcom/android/htccontacts/widget/ISNBaseListAdapter;->isClientLogin()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ISNBaseListAdapter;

    invoke-interface {v0}, Lcom/android/htccontacts/widget/ISNBaseListAdapter;->isLinked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ISNBaseListAdapter;

    invoke-interface {v0}, Lcom/android/htccontacts/widget/ISNBaseListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ISNBaseListAdapter;

    invoke-interface {v0, p1}, Lcom/android/htccontacts/widget/ISNBaseListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 265
    :goto_0
    return-object v0

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mMatchFriendList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    if-ltz p1, :cond_1

    .line 261
    iget-object v0, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mMatchFriendList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 265
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ISNBaseListAdapter;

    invoke-interface {v0}, Lcom/android/htccontacts/widget/ISNBaseListAdapter;->isClientLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ISNBaseListAdapter;

    invoke-interface {v0}, Lcom/android/htccontacts/widget/ISNBaseListAdapter;->isLinked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ISNBaseListAdapter;

    invoke-interface {v0}, Lcom/android/htccontacts/widget/ISNBaseListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ISNBaseListAdapter;

    invoke-interface {v0, p1}, Lcom/android/htccontacts/widget/ISNBaseListAdapter;->getItemId(I)J

    move-result-wide v0

    .line 276
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 5
    .parameter "position"

    .prologue
    .line 280
    const/4 v0, 0x0

    .line 281
    .local v0, returnType:I
    iget-object v2, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ISNBaseListAdapter;

    invoke-interface {v2}, Lcom/android/htccontacts/widget/ISNBaseListAdapter;->isClientLogin()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 282
    iget-object v2, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ISNBaseListAdapter;

    invoke-interface {v2}, Lcom/android/htccontacts/widget/ISNBaseListAdapter;->isLinked()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 284
    iget-object v2, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ISNBaseListAdapter;

    invoke-interface {v2}, Lcom/android/htccontacts/widget/ISNBaseListAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 285
    iget-object v2, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ISNBaseListAdapter;

    invoke-interface {v2, p1}, Lcom/android/htccontacts/widget/ISNBaseListAdapter;->getItemViewType(I)I

    move-result v1

    .line 286
    .local v1, type:I
    iget-object v2, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mAdaptersViewTypeMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 287
    iget-object v2, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mAdaptersViewTypeMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 321
    .end local v1           #type:I
    :goto_0
    return v0

    .line 289
    .restart local v1       #type:I
    :cond_0
    iget v0, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mInternalViewTypeCount:I

    .line 290
    iget v2, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mInternalViewTypeCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mInternalViewTypeCount:I

    .line 291
    iget-object v2, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mAdaptersViewTypeMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 294
    .end local v1           #type:I
    :cond_1
    iget v2, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mEmptyViewType:I

    if-gez v2, :cond_2

    .line 295
    iget v2, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mInternalViewTypeCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mInternalViewTypeCount:I

    iput v2, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mEmptyViewType:I

    .line 297
    :cond_2
    iget v0, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mEmptyViewType:I

    goto :goto_0

    .line 301
    :cond_3
    iget-object v2, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mMatchFriendList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_5

    if-ltz p1, :cond_5

    .line 302
    iget v2, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mMatchFriendViewType:I

    if-gez v2, :cond_4

    .line 303
    iget v2, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mInternalViewTypeCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mInternalViewTypeCount:I

    iput v2, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mMatchFriendViewType:I

    .line 305
    :cond_4
    iget v0, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mMatchFriendViewType:I

    goto :goto_0

    .line 308
    :cond_5
    iget v2, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mEmptyViewType:I

    if-gez v2, :cond_6

    .line 309
    iget v2, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mInternalViewTypeCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mInternalViewTypeCount:I

    iput v2, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mEmptyViewType:I

    .line 311
    :cond_6
    iget v0, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mEmptyViewType:I

    goto :goto_0

    .line 315
    :cond_7
    iget v2, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mLoginViewType:I

    if-gez v2, :cond_8

    .line 316
    iget v2, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mInternalViewTypeCount:I

    iput v2, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mLoginViewType:I

    .line 317
    iget v2, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mInternalViewTypeCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mInternalViewTypeCount:I

    .line 319
    :cond_8
    iget v0, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mLoginViewType:I

    goto :goto_0
.end method

.method protected getMatchFriendView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 393
    return-object p2
.end method

.method protected getMatchOtherView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 389
    return-object p1
.end method

.method public getMaxShowingEntries()I
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ISNBaseListAdapter;

    invoke-interface {v0}, Lcom/android/htccontacts/widget/ISNBaseListAdapter;->getMaxShowingEntries()I

    move-result v0

    return v0
.end method

.method public getToggleView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 449
    iget-object v0, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ISNBaseListAdapter;

    invoke-interface {v0, p1, p2}, Lcom/android/htccontacts/widget/ISNBaseListAdapter;->getToggleView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v3, 0x0

    .line 325
    iget-object v2, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ISNBaseListAdapter;

    invoke-interface {v2}, Lcom/android/htccontacts/widget/ISNBaseListAdapter;->isClientLogin()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 326
    iget-object v2, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ISNBaseListAdapter;

    invoke-interface {v2}, Lcom/android/htccontacts/widget/ISNBaseListAdapter;->isLinked()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 327
    iget-object v2, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ISNBaseListAdapter;

    invoke-interface {v2}, Lcom/android/htccontacts/widget/ISNBaseListAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 329
    :try_start_0
    iget-object v2, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ISNBaseListAdapter;

    invoke-interface {v2, p1, p2, p3}, Lcom/android/htccontacts/widget/ISNBaseListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 385
    :goto_0
    return-object v1

    .line 330
    :catch_0
    move-exception v0

    .line 331
    .local v0, e:Ljava/lang/IllegalStateException;
    iget-object v2, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ISNBaseListAdapter;

    invoke-interface {v2, p2, p3}, Lcom/android/htccontacts/widget/ISNBaseListAdapter;->getEmptyView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 334
    .local v1, v:Landroid/view/View;
    iget-object v2, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mEmptyView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 336
    iget-object v2, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mEmptyView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    :cond_0
    iput-object v1, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mEmptyView:Landroid/view/View;

    .line 342
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 343
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 347
    .end local v0           #e:Ljava/lang/IllegalStateException;
    .end local v1           #v:Landroid/view/View;
    :cond_1
    iget-object v2, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ISNBaseListAdapter;

    invoke-interface {v2, p2, p3}, Lcom/android/htccontacts/widget/ISNBaseListAdapter;->getEmptyView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 349
    .restart local v1       #v:Landroid/view/View;
    iget-object v2, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mEmptyView:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 351
    iget-object v2, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mEmptyView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    :cond_2
    iput-object v1, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mEmptyView:Landroid/view/View;

    .line 358
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 359
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 364
    .end local v1           #v:Landroid/view/View;
    :cond_3
    iget-object v2, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mMatchFriendList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_4

    if-ltz p1, :cond_4

    .line 365
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/htccontacts/widget/SNBaseListAdapter;->getMatchFriendView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 366
    iget-object v2, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mMatchFriendList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    move-object v1, p2

    .line 385
    goto :goto_0

    .line 368
    :cond_4
    invoke-virtual {p0, p2, p3}, Lcom/android/htccontacts/widget/SNBaseListAdapter;->getMatchOtherView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_1

    .line 372
    :cond_5
    iget-object v2, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ISNBaseListAdapter;

    invoke-interface {v2, p2, p3}, Lcom/android/htccontacts/widget/ISNBaseListAdapter;->getLoginView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 374
    .restart local v1       #v:Landroid/view/View;
    iget-object v2, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mLoginView:Landroid/view/View;

    if-eqz v2, :cond_6

    .line 376
    iget-object v2, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mLoginView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    :cond_6
    iput-object v1, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mLoginView:Landroid/view/View;

    .line 382
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 2

    .prologue
    .line 397
    iget-object v1, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ISNBaseListAdapter;

    invoke-interface {v1}, Lcom/android/htccontacts/widget/ISNBaseListAdapter;->getViewTypeCount()I

    move-result v0

    .line 400
    .local v0, adapterCount:I
    add-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public getWrappedAdapterCount()I
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ISNBaseListAdapter;

    instance-of v0, v0, Lcom/android/htccontacts/widget/IWrapperAdapter;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ISNBaseListAdapter;

    check-cast v0, Lcom/android/htccontacts/widget/IWrapperAdapter;

    invoke-interface {v0}, Lcom/android/htccontacts/widget/IWrapperAdapter;->getWrappedAdapterCount()I

    move-result v0

    .line 225
    :goto_0
    return v0

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ISNBaseListAdapter;

    invoke-interface {v0}, Lcom/android/htccontacts/widget/ISNBaseListAdapter;->isClientLogin()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 215
    iget-object v0, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ISNBaseListAdapter;

    invoke-interface {v0}, Lcom/android/htccontacts/widget/ISNBaseListAdapter;->isLinked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 216
    iget-object v0, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ISNBaseListAdapter;

    invoke-interface {v0}, Lcom/android/htccontacts/widget/ISNBaseListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ISNBaseListAdapter;

    invoke-interface {v0}, Lcom/android/htccontacts/widget/ISNBaseListAdapter;->getCount()I

    move-result v0

    goto :goto_0

    .line 219
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 222
    :cond_2
    iget-object v0, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mMatchFriendList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 225
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 405
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter "position"

    .prologue
    const/4 v0, 0x1

    .line 425
    iget-object v1, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ISNBaseListAdapter;

    invoke-interface {v1}, Lcom/android/htccontacts/widget/ISNBaseListAdapter;->isClientLogin()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 426
    iget-object v1, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ISNBaseListAdapter;

    invoke-interface {v1}, Lcom/android/htccontacts/widget/ISNBaseListAdapter;->isLinked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 427
    iget-object v0, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ISNBaseListAdapter;

    invoke-interface {v0}, Lcom/android/htccontacts/widget/ISNBaseListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 428
    iget-object v0, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ISNBaseListAdapter;

    invoke-interface {v0, p1}, Lcom/android/htccontacts/widget/ISNBaseListAdapter;->isEnabled(I)Z

    move-result v0

    .line 436
    :cond_0
    :goto_0
    return v0

    .line 430
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isToggleViewAvailable()Z
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ISNBaseListAdapter;

    invoke-interface {v0}, Lcom/android/htccontacts/widget/ISNBaseListAdapter;->isToggleViewAvailable()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mLoginView:Landroid/view/View;

    if-ne v0, p1, :cond_1

    .line 478
    iget-object v0, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ISNBaseListAdapter;

    invoke-interface {v0, p1}, Lcom/android/htccontacts/widget/ISNBaseListAdapter;->onLoginViewClick(Landroid/view/View;)V

    .line 492
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/SNBaseListAdapter;->notifyDataSetChanged()V

    .line 493
    return-void

    .line 480
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mEmptyView:Landroid/view/View;

    if-ne v0, p1, :cond_0

    .line 482
    iget-object v0, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ISNBaseListAdapter;

    invoke-interface {v0, p1}, Lcom/android/htccontacts/widget/ISNBaseListAdapter;->onEmptyViewClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onEmptyViewClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 470
    iget-object v0, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ISNBaseListAdapter;

    invoke-interface {v0, p1}, Lcom/android/htccontacts/widget/ISNBaseListAdapter;->onEmptyViewClick(Landroid/view/View;)V

    .line 471
    return-void
.end method

.method public onLoginViewClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ISNBaseListAdapter;

    invoke-interface {v0, p1}, Lcom/android/htccontacts/widget/ISNBaseListAdapter;->onLoginViewClick(Landroid/view/View;)V

    .line 467
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 497
    const/4 v0, 0x0

    return v0
.end method

.method public onToggleViewClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 453
    iget-object v0, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ISNBaseListAdapter;

    invoke-interface {v0, p1}, Lcom/android/htccontacts/widget/ISNBaseListAdapter;->onToggleViewClick(Landroid/view/View;)V

    .line 455
    return-void
.end method

.method public onToggleViewLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 458
    const/4 v0, 0x0

    return v0
.end method

.method public onToggleViewTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "mv"

    .prologue
    .line 462
    const/4 v0, 0x0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "mv"

    .prologue
    .line 502
    const/4 v0, 0x0

    return v0
.end method

.method public searchMatchFriend()V
    .locals 21

    .prologue
    .line 149
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .local v14, matchCandidteFriendList:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/widget/SNBaseListAdapter$MatchFriendEntry;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ISNBaseListAdapter;

    invoke-interface {v2}, Lcom/android/htccontacts/widget/ISNBaseListAdapter;->getNamePattern()Ljava/util/List;

    move-result-object v16

    .line 152
    .local v16, searchName:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v18, ""

    .line 153
    .local v18, where:Ljava/lang/String;
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 154
    .local v15, nameSection:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto :goto_0

    .line 156
    .end local v15           #nameSection:Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ISNBaseListAdapter;

    invoke-interface {v2}, Lcom/android/htccontacts/widget/ISNBaseListAdapter;->getActiveUserRowId()J

    move-result-wide v8

    .line 157
    .local v8, activeUserRowId:J
    sget-boolean v2, Lcom/android/htccontacts/widget/SNBaseListAdapter;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 158
    const-string v2, "AutoMatch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Looking for the name pattern ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") and friend of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_1
    const/4 v13, 0x0

    .line 161
    .local v13, isNeedNotifyChange:Z
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-wide/16 v2, 0x0

    cmp-long v2, v8, v2

    if-lez v2, :cond_4

    .line 163
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/socialnetwork/User;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "full_name LIKE ? AND friend_of=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v18, v6, v7

    const/4 v7, 0x1

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 169
    .local v10, cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_4

    .line 170
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 171
    new-instance v17, Lcom/android/htccontacts/widget/SNBaseListAdapter$MatchFriendEntry;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/htccontacts/widget/SNBaseListAdapter$MatchFriendEntry;-><init>(Lcom/android/htccontacts/widget/SNBaseListAdapter;)V

    .line 172
    .local v17, values:Lcom/android/htccontacts/widget/SNBaseListAdapter$MatchFriendEntry;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    if-ge v11, v2, :cond_2

    .line 173
    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Lcom/android/htccontacts/widget/SNBaseListAdapter$MatchFriendEntry;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 175
    :cond_2
    move-object/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 177
    .end local v11           #i:I
    .end local v17           #values:Lcom/android/htccontacts/widget/SNBaseListAdapter$MatchFriendEntry;
    :cond_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 181
    .end local v10           #cursor:Landroid/database/Cursor;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mMatchFriendList:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14}, Lcom/android/htccontacts/widget/SNBaseListAdapter;->compareMatchFriendList(Ljava/util/List;Ljava/util/List;)I

    move-result v2

    if-eqz v2, :cond_5

    .line 182
    const/4 v13, 0x1

    .line 185
    :cond_5
    if-eqz v13, :cond_6

    .line 186
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mMatchFriendList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 187
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mMatchFriendList:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 188
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 190
    :cond_6
    return-void
.end method
