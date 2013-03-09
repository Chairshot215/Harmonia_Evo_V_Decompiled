.class public Lcom/android/htccontacts/ArrageGroupActivity;
.super Lcom/android/htccontacts/app/BaseListActivity;
.source "ArrageGroupActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/ArrageGroupActivity$GroupContentObserver;,
        Lcom/android/htccontacts/ArrageGroupActivity$UpdateOrderTask;,
        Lcom/android/htccontacts/ArrageGroupActivity$ViewTag;,
        Lcom/android/htccontacts/ArrageGroupActivity$OrderGroupItem;,
        Lcom/android/htccontacts/ArrageGroupActivity$RevertActionListener;,
        Lcom/android/htccontacts/ArrageGroupActivity$DoActionListener;,
        Lcom/android/htccontacts/ArrageGroupActivity$QueryHandler;
    }
.end annotation


# static fields
.field protected static final DELETE_TOKEN_1:I = 0x1

.field protected static final DIALOG_PROGRESS:I = 0xa

.field private static final TAG:Ljava/lang/String; = "ArrageGroupActivity"


# instance fields
.field private final QUERY_TOKEN:I

.field private SORTED_GROUP_ORDER:Ljava/lang/String;

.field private mAdapter:Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter;

.field private mDragListener:Lcom/htc/widget/HtcReorderListView$DragListener;

.field private mDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

.field private mGroupItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/ArrageGroupActivity$OrderGroupItem;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupObserver:Landroid/database/ContentObserver;

.field private mGroupOrderMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupTitleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHasPhotoGroupTitleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDirty:Z

.field private mProgressDialog:Lcom/htc/app/HtcProgressDialog;

.field private mQueryHandler:Lcom/android/htccontacts/ArrageGroupActivity$QueryHandler;

.field private mRemoveListener:Lcom/htc/widget/HtcReorderListView$RemoveListener;

.field private mSaveRestoreGroupOrderMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSaveRestoreGroupTitleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchInterceptorView:Lcom/htc/widget/HtcReorderListView;

.field private mUpdateTask:Lcom/android/htccontacts/ArrageGroupActivity$UpdateOrderTask;

.field private okButton:Lcom/htc/widget/HtcFooterButton;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 41
    invoke-direct {p0}, Lcom/android/htccontacts/app/BaseListActivity;-><init>()V

    .line 42
    iput v1, p0, Lcom/android/htccontacts/ArrageGroupActivity;->QUERY_TOKEN:I

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ArrageGroupActivity;->mGroupOrderMap:Ljava/util/HashMap;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ArrageGroupActivity;->mGroupTitleList:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ArrageGroupActivity;->mHasPhotoGroupTitleList:Ljava/util/ArrayList;

    .line 53
    iput-object v2, p0, Lcom/android/htccontacts/ArrageGroupActivity;->mSaveRestoreGroupOrderMap:Ljava/util/HashMap;

    .line 54
    iput-object v2, p0, Lcom/android/htccontacts/ArrageGroupActivity;->mSaveRestoreGroupTitleList:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ArrageGroupActivity;->mGroupItemList:Ljava/util/ArrayList;

    .line 63
    const-string v0, " display_order ASC , display_title  COLLATE LOCALIZED ASC "

    iput-object v0, p0, Lcom/android/htccontacts/ArrageGroupActivity;->SORTED_GROUP_ORDER:Ljava/lang/String;

    .line 64
    iput-boolean v1, p0, Lcom/android/htccontacts/ArrageGroupActivity;->mIsDirty:Z

    .line 431
    new-instance v0, Lcom/android/htccontacts/ArrageGroupActivity$1;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/ArrageGroupActivity$1;-><init>(Lcom/android/htccontacts/ArrageGroupActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/ArrageGroupActivity;->mDragListener:Lcom/htc/widget/HtcReorderListView$DragListener;

    .line 436
    new-instance v0, Lcom/android/htccontacts/ArrageGroupActivity$2;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/ArrageGroupActivity$2;-><init>(Lcom/android/htccontacts/ArrageGroupActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/ArrageGroupActivity;->mDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

    .line 461
    new-instance v0, Lcom/android/htccontacts/ArrageGroupActivity$3;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/ArrageGroupActivity$3;-><init>(Lcom/android/htccontacts/ArrageGroupActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/ArrageGroupActivity;->mRemoveListener:Lcom/htc/widget/HtcReorderListView$RemoveListener;

    .line 572
    return-void
.end method

.method static synthetic access$200(Lcom/android/htccontacts/ArrageGroupActivity;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/htccontacts/ArrageGroupActivity;->setAdapter(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/htccontacts/ArrageGroupActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/android/htccontacts/ArrageGroupActivity;->mIsDirty:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/htccontacts/ArrageGroupActivity;)Lcom/htc/widget/HtcFooterButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/htccontacts/ArrageGroupActivity;->okButton:Lcom/htc/widget/HtcFooterButton;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/htccontacts/ArrageGroupActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/htccontacts/ArrageGroupActivity;->updateGroupOrder()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/htccontacts/ArrageGroupActivity;)Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/htccontacts/ArrageGroupActivity;->mAdapter:Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/htccontacts/ArrageGroupActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/htccontacts/ArrageGroupActivity;->showProgressDialog()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/htccontacts/ArrageGroupActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/htccontacts/ArrageGroupActivity;->dismissProgressDialog()V

    return-void
.end method

.method private dismissProgressDialog()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/htccontacts/ArrageGroupActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/ArrageGroupActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/htccontacts/ArrageGroupActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 171
    :cond_0
    return-void
.end method

.method private setAdapter(Landroid/database/Cursor;)V
    .locals 9
    .parameter "cursor"

    .prologue
    const/4 v8, 0x0

    .line 220
    iget-object v6, p0, Lcom/android/htccontacts/ArrageGroupActivity;->mGroupOrderMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 221
    iget-object v6, p0, Lcom/android/htccontacts/ArrageGroupActivity;->mGroupTitleList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 222
    iget-object v6, p0, Lcom/android/htccontacts/ArrageGroupActivity;->mSaveRestoreGroupTitleList:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/htccontacts/ArrageGroupActivity;->mSaveRestoreGroupOrderMap:Ljava/util/HashMap;

    if-nez v6, :cond_4

    .line 224
    :cond_0
    const-string v6, "title"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 225
    .local v5, titleIndex:I
    const-string v6, "photo"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 227
    .local v3, photoIndex:I
    const/4 v2, 0x0

    .line 229
    .local v2, ordering:I
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 231
    :cond_1
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 232
    .local v4, title:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/htccontacts/ArrageGroupActivity;->mGroupOrderMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-object v6, p0, Lcom/android/htccontacts/ArrageGroupActivity;->mGroupTitleList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    const/4 v0, 0x0

    .line 236
    .local v0, hasPhoto:Z
    if-ltz v3, :cond_2

    .line 237
    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    .line 238
    .local v1, isNull:Z
    if-nez v1, :cond_2

    .line 239
    const/4 v0, 0x1

    .line 242
    .end local v1           #isNull:Z
    :cond_2
    iget-object v6, p0, Lcom/android/htccontacts/ArrageGroupActivity;->mHasPhotoGroupTitleList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    add-int/lit8 v2, v2, 0x1

    .line 246
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 254
    .end local v0           #hasPhoto:Z
    .end local v2           #ordering:I
    .end local v3           #photoIndex:I
    .end local v4           #title:Ljava/lang/String;
    .end local v5           #titleIndex:I
    :cond_3
    :goto_0
    iget-object v6, p0, Lcom/android/htccontacts/ArrageGroupActivity;->mAdapter:Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter;

    if-nez v6, :cond_5

    .line 255
    new-instance v6, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter;

    iget-object v7, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    invoke-direct {v6, v7, p1}, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v6, p0, Lcom/android/htccontacts/ArrageGroupActivity;->mAdapter:Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter;

    .line 256
    iget-object v6, p0, Lcom/android/htccontacts/ArrageGroupActivity;->mAdapter:Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter;

    invoke-virtual {p0, v6}, Lcom/android/htccontacts/ArrageGroupActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 261
    :goto_1
    return-void

    .line 249
    :cond_4
    iget-object v6, p0, Lcom/android/htccontacts/ArrageGroupActivity;->mGroupTitleList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/htccontacts/ArrageGroupActivity;->mSaveRestoreGroupTitleList:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 250
    iget-object v6, p0, Lcom/android/htccontacts/ArrageGroupActivity;->mGroupOrderMap:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/android/htccontacts/ArrageGroupActivity;->mSaveRestoreGroupOrderMap:Ljava/util/HashMap;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 251
    iput-object v8, p0, Lcom/android/htccontacts/ArrageGroupActivity;->mSaveRestoreGroupTitleList:Ljava/util/ArrayList;

    .line 252
    iput-object v8, p0, Lcom/android/htccontacts/ArrageGroupActivity;->mSaveRestoreGroupOrderMap:Ljava/util/HashMap;

    goto :goto_0

    .line 259
    :cond_5
    iget-object v6, p0, Lcom/android/htccontacts/ArrageGroupActivity;->mAdapter:Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter;

    invoke-virtual {v6, p1}, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_1
.end method

.method private showProgressDialog()V
    .locals 4

    .prologue
    .line 156
    iget-object v1, p0, Lcom/android/htccontacts/ArrageGroupActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-nez v1, :cond_1

    .line 157
    const v1, 0x7f0a0128

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ArrageGroupActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, displayStr:Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v1, v0, v2, v3}, Lcom/htc/app/HtcProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/htc/app/HtcProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/ArrageGroupActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 165
    .end local v0           #displayStr:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/ArrageGroupActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v1}, Lcom/htc/app/HtcProgressDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/android/htccontacts/ArrageGroupActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v1}, Lcom/htc/app/HtcProgressDialog;->show()V

    goto :goto_0
.end method

.method private startQuery()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 175
    iget-object v7, p0, Lcom/android/htccontacts/ArrageGroupActivity;->SORTED_GROUP_ORDER:Ljava/lang/String;

    .line 177
    .local v7, order:Ljava/lang/String;
    sget-object v3, Lcom/htc/provider/HtcContactsContract$Groups;->CONTENT_NAME_SUMMARY_URI:Landroid/net/Uri;

    .line 178
    .local v3, simpleUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/htccontacts/ArrageGroupActivity;->okButton:Lcom/htc/widget/HtcFooterButton;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/htccontacts/ArrageGroupActivity;->okButton:Lcom/htc/widget/HtcFooterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/ArrageGroupActivity;->mQueryHandler:Lcom/android/htccontacts/ArrageGroupActivity$QueryHandler;

    const/4 v1, 0x1

    const-string v5, ""

    move-object v4, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/htccontacts/ArrageGroupActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method private updateGroupOrder()V
    .locals 4

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/htccontacts/ArrageGroupActivity;->mUpdateTask:Lcom/android/htccontacts/ArrageGroupActivity$UpdateOrderTask;

    if-nez v0, :cond_0

    .line 474
    new-instance v0, Lcom/android/htccontacts/ArrageGroupActivity$UpdateOrderTask;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/ArrageGroupActivity$UpdateOrderTask;-><init>(Lcom/android/htccontacts/ArrageGroupActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/ArrageGroupActivity;->mUpdateTask:Lcom/android/htccontacts/ArrageGroupActivity$UpdateOrderTask;

    .line 475
    iget-object v0, p0, Lcom/android/htccontacts/ArrageGroupActivity;->mUpdateTask:Lcom/android/htccontacts/ArrageGroupActivity$UpdateOrderTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/ArrayList;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/htccontacts/ArrageGroupActivity;->mAdapter:Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter;

    invoke-virtual {v3}, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter;->getOrderGroupList()Ljava/util/ArrayList;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ArrageGroupActivity$UpdateOrderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 480
    :cond_0
    return-void
.end method


# virtual methods
.method public doUpdateDelete(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 589
    .local p1, deleteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 590
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/ArrageGroupActivity;->removeGroup(Ljava/util/ArrayList;)V

    .line 592
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 593
    .local v1, title:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    const-string v3, ""

    invoke-static {v2, v3, v1}, Lcom/android/htccontacts/util/ContactsUtils;->broadcastFavoriteChangeIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 596
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #title:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v4, 0x0

    .line 73
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const/high16 v2, 0x7f03

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ArrageGroupActivity;->setContentView(I)V

    .line 75
    new-instance v2, Lcom/android/htccontacts/ArrageGroupActivity$QueryHandler;

    invoke-virtual {p0}, Lcom/android/htccontacts/ArrageGroupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/htccontacts/ArrageGroupActivity$QueryHandler;-><init>(Lcom/android/htccontacts/ArrageGroupActivity;Landroid/content/ContentResolver;)V

    iput-object v2, p0, Lcom/android/htccontacts/ArrageGroupActivity;->mQueryHandler:Lcom/android/htccontacts/ArrageGroupActivity$QueryHandler;

    .line 76
    invoke-virtual {p0}, Lcom/android/htccontacts/ArrageGroupActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcReorderListView;

    iput-object v2, p0, Lcom/android/htccontacts/ArrageGroupActivity;->mTouchInterceptorView:Lcom/htc/widget/HtcReorderListView;

    .line 78
    iget-object v2, p0, Lcom/android/htccontacts/ArrageGroupActivity;->mTouchInterceptorView:Lcom/htc/widget/HtcReorderListView;

    iget-object v3, p0, Lcom/android/htccontacts/ArrageGroupActivity;->mDragListener:Lcom/htc/widget/HtcReorderListView$DragListener;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcReorderListView;->setDragListener(Lcom/htc/widget/HtcReorderListView$DragListener;)V

    .line 79
    iget-object v2, p0, Lcom/android/htccontacts/ArrageGroupActivity;->mTouchInterceptorView:Lcom/htc/widget/HtcReorderListView;

    iget-object v3, p0, Lcom/android/htccontacts/ArrageGroupActivity;->mDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcReorderListView;->setDropListener(Lcom/htc/widget/HtcReorderListView$DropListener;)V

    .line 80
    iget-object v2, p0, Lcom/android/htccontacts/ArrageGroupActivity;->mTouchInterceptorView:Lcom/htc/widget/HtcReorderListView;

    iget-object v3, p0, Lcom/android/htccontacts/ArrageGroupActivity;->mRemoveListener:Lcom/htc/widget/HtcReorderListView$RemoveListener;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcReorderListView;->setRemoveListener(Lcom/htc/widget/HtcReorderListView$RemoveListener;)V

    .line 82
    const v2, 0x7f070017

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ArrageGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;

    .line 83
    .local v0, buttonFrame:Lcom/android/htccontacts/widget/HtcButtonFrameLayout;
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getButton1View()Lcom/htc/widget/HtcFooterButton;

    move-result-object v2

    iput-object v2, p0, Lcom/android/htccontacts/ArrageGroupActivity;->okButton:Lcom/htc/widget/HtcFooterButton;

    .line 84
    iget-object v2, p0, Lcom/android/htccontacts/ArrageGroupActivity;->okButton:Lcom/htc/widget/HtcFooterButton;

    new-instance v3, Lcom/android/htccontacts/ArrageGroupActivity$DoActionListener;

    invoke-direct {v3, p0, v4}, Lcom/android/htccontacts/ArrageGroupActivity$DoActionListener;-><init>(Lcom/android/htccontacts/ArrageGroupActivity;Lcom/android/htccontacts/ArrageGroupActivity$1;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getButton2View()Lcom/htc/widget/HtcFooterButton;

    move-result-object v1

    .line 86
    .local v1, cancelButton:Lcom/htc/widget/HtcFooterButton;
    new-instance v2, Lcom/android/htccontacts/ArrageGroupActivity$RevertActionListener;

    invoke-direct {v2, p0, v4}, Lcom/android/htccontacts/ArrageGroupActivity$RevertActionListener;-><init>(Lcom/android/htccontacts/ArrageGroupActivity;Lcom/android/htccontacts/ArrageGroupActivity$1;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    new-instance v2, Lcom/android/htccontacts/ArrageGroupActivity$GroupContentObserver;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/htccontacts/ArrageGroupActivity$GroupContentObserver;-><init>(Lcom/android/htccontacts/ArrageGroupActivity;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/htccontacts/ArrageGroupActivity;->mGroupObserver:Landroid/database/ContentObserver;

    .line 88
    invoke-virtual {p0}, Lcom/android/htccontacts/ArrageGroupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/htccontacts/ArrageGroupActivity;->mGroupObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 90
    const v2, 0x7f0a01a7

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ArrageGroupActivity;->setGenericTitleBar(I)V

    .line 91
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 110
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onDestroy()V

    .line 113
    iget-object v0, p0, Lcom/android/htccontacts/ArrageGroupActivity;->mTouchInterceptorView:Lcom/htc/widget/HtcReorderListView;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcReorderListView;->setDragListener(Lcom/htc/widget/HtcReorderListView$DragListener;)V

    .line 114
    iget-object v0, p0, Lcom/android/htccontacts/ArrageGroupActivity;->mTouchInterceptorView:Lcom/htc/widget/HtcReorderListView;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcReorderListView;->setDropListener(Lcom/htc/widget/HtcReorderListView$DropListener;)V

    .line 115
    iget-object v0, p0, Lcom/android/htccontacts/ArrageGroupActivity;->mTouchInterceptorView:Lcom/htc/widget/HtcReorderListView;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcReorderListView;->setRemoveListener(Lcom/htc/widget/HtcReorderListView$RemoveListener;)V

    .line 117
    iget-object v0, p0, Lcom/android/htccontacts/ArrageGroupActivity;->mQueryHandler:Lcom/android/htccontacts/ArrageGroupActivity$QueryHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ArrageGroupActivity$QueryHandler;->cancelOperation(I)V

    .line 118
    iget-object v0, p0, Lcom/android/htccontacts/ArrageGroupActivity;->mAdapter:Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/htccontacts/ArrageGroupActivity;->mAdapter:Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter;

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 120
    iget-object v0, p0, Lcom/android/htccontacts/ArrageGroupActivity;->mAdapter:Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter;

    invoke-virtual {v0}, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter;->destroy()V

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/ArrageGroupActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/htccontacts/ArrageGroupActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/android/htccontacts/ArrageGroupActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 125
    iput-object v2, p0, Lcom/android/htccontacts/ArrageGroupActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 128
    :cond_1
    invoke-virtual {p0}, Lcom/android/htccontacts/ArrageGroupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/ArrageGroupActivity;->mGroupObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 129
    return-void
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 134
    invoke-super/range {p0 .. p5}, Lcom/android/htccontacts/app/BaseListActivity;->onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V

    .line 135
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 139
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 140
    const-string v0, "titleList"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/ArrageGroupActivity;->mSaveRestoreGroupTitleList:Ljava/util/ArrayList;

    .line 141
    const-string v0, "titleMap"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/android/htccontacts/ArrageGroupActivity;->mSaveRestoreGroupOrderMap:Ljava/util/HashMap;

    .line 142
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 96
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onResume()V

    .line 97
    iget-boolean v0, p0, Lcom/android/htccontacts/ArrageGroupActivity;->mIsDirty:Z

    if-eqz v0, :cond_0

    .line 98
    invoke-direct {p0}, Lcom/android/htccontacts/ArrageGroupActivity;->startQuery()V

    .line 101
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 148
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 149
    const-string v0, "titleList"

    iget-object v1, p0, Lcom/android/htccontacts/ArrageGroupActivity;->mGroupTitleList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 150
    const-string v0, "titleMap"

    iget-object v1, p0, Lcom/android/htccontacts/ArrageGroupActivity;->mGroupOrderMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 151
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 105
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onStop()V

    .line 106
    return-void
.end method

.method protected removeGroup(Ljava/util/ArrayList;)V
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, deleteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 599
    const-string v0, "content://com.android.contacts/group_with_favorite"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 601
    .local v3, removeGroupUri:Landroid/net/Uri;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 602
    .local v6, buffer:Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 603
    .local v9, size:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v9, :cond_1

    .line 604
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 605
    .local v10, title:Ljava/lang/String;
    const-string v0, "title"

    invoke-static {v0, v10}, Lcom/android/htccontacts/util/ContactsUtils;->getEqualWhereString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 608
    .local v8, selection:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 609
    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 610
    add-int/lit8 v0, v9, -0x1

    if-ge v7, v0, :cond_0

    .line 611
    const-string v0, "  OR "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 603
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 614
    .end local v8           #selection:Ljava/lang/String;
    .end local v10           #title:Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/ArrageGroupActivity;->mQueryHandler:Lcom/android/htccontacts/ArrageGroupActivity$QueryHandler;

    const/4 v1, 0x1

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/htccontacts/ArrageGroupActivity$QueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 616
    return-void
.end method
