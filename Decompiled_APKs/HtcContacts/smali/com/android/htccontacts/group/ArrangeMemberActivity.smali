.class public Lcom/android/htccontacts/group/ArrangeMemberActivity;
.super Lcom/android/htccontacts/app/BaseListActivity;
.source "ArrangeMemberActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/group/ArrangeMemberActivity$UpdateMemberOrderTask;,
        Lcom/android/htccontacts/group/ArrangeMemberActivity$MemberOrderData;,
        Lcom/android/htccontacts/group/ArrangeMemberActivity$RevertActionListener;,
        Lcom/android/htccontacts/group/ArrangeMemberActivity$DoActionListener;,
        Lcom/android/htccontacts/group/ArrangeMemberActivity$QueryHandler;,
        Lcom/android/htccontacts/group/ArrangeMemberActivity$MemberItem;,
        Lcom/android/htccontacts/group/ArrangeMemberActivity$ViewTag;,
        Lcom/android/htccontacts/group/ArrangeMemberActivity$ContactsOrderItemListAdapter;
    }
.end annotation


# static fields
.field private static final MAX_APPLY_BATCH:I = 0x1c2

.field private static final TAG:Ljava/lang/String; = "ArrangeMemberActivity"


# instance fields
.field private MemberProjection:[Ljava/lang/String;

.field private final QUERY_TOKEN:I

.field mAdapter:Lcom/android/htccontacts/group/ArrangeMemberActivity$ContactsOrderItemListAdapter;

.field private mDragListener:Lcom/htc/widget/HtcReorderListView$DragListener;

.field private mDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

.field mGroupTitle:Ljava/lang/String;

.field private mIsDirty:Z

.field private mProgressDialog:Lcom/htc/app/HtcProgressDialog;

.field private mQueryHandler:Lcom/android/htccontacts/group/ArrangeMemberActivity$QueryHandler;

.field private mRemoveListener:Lcom/htc/widget/HtcReorderListView$RemoveListener;

.field mTask:Lcom/android/htccontacts/group/ArrangeMemberActivity$UpdateMemberOrderTask;

.field private mTouchInterceptorView:Lcom/htc/widget/HtcReorderListView;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 40
    invoke-direct {p0}, Lcom/android/htccontacts/app/BaseListActivity;-><init>()V

    .line 41
    iput v3, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity;->QUERY_TOKEN:I

    .line 45
    iput-boolean v3, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity;->mIsDirty:Z

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity;->mTask:Lcom/android/htccontacts/group/ArrangeMemberActivity$UpdateMemberOrderTask;

    .line 51
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const-string v1, "display_name"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "ext_account_Type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ext_photo_url"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "status_update_id"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity;->MemberProjection:[Ljava/lang/String;

    .line 344
    new-instance v0, Lcom/android/htccontacts/group/ArrangeMemberActivity$1;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/group/ArrangeMemberActivity$1;-><init>(Lcom/android/htccontacts/group/ArrangeMemberActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity;->mDragListener:Lcom/htc/widget/HtcReorderListView$DragListener;

    .line 349
    new-instance v0, Lcom/android/htccontacts/group/ArrangeMemberActivity$2;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/group/ArrangeMemberActivity$2;-><init>(Lcom/android/htccontacts/group/ArrangeMemberActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity;->mDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

    .line 374
    new-instance v0, Lcom/android/htccontacts/group/ArrangeMemberActivity$3;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/group/ArrangeMemberActivity$3;-><init>(Lcom/android/htccontacts/group/ArrangeMemberActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity;->mRemoveListener:Lcom/htc/widget/HtcReorderListView$RemoveListener;

    .line 397
    return-void
.end method

.method static synthetic access$402(Lcom/android/htccontacts/group/ArrangeMemberActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity;->mIsDirty:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/htccontacts/group/ArrangeMemberActivity;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/htccontacts/group/ArrangeMemberActivity;->setAdapter(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/htccontacts/group/ArrangeMemberActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/htccontacts/group/ArrangeMemberActivity;->ensureOKButton()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/htccontacts/group/ArrangeMemberActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/htccontacts/group/ArrangeMemberActivity;->updateMemberOrder()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/htccontacts/group/ArrangeMemberActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/htccontacts/group/ArrangeMemberActivity;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/htccontacts/group/ArrangeMemberActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/htccontacts/group/ArrangeMemberActivity;->showProgressDialog()V

    return-void
.end method

.method private dismissProgressDialog()V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 192
    :cond_0
    return-void
.end method

.method private ensureOKButton()V
    .locals 4

    .prologue
    .line 88
    const/4 v1, 0x1

    .line 89
    .local v1, enabled:Z
    iget-object v3, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity;->mGroupTitle:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 90
    const/4 v1, 0x0

    .line 97
    :cond_0
    :goto_0
    const v3, 0x7f070017

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/group/ArrangeMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;

    .line 98
    .local v0, buttonFrame:Lcom/android/htccontacts/widget/HtcButtonFrameLayout;
    if-eqz v0, :cond_1

    .line 99
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getButton1View()Lcom/htc/widget/HtcFooterButton;

    move-result-object v2

    .line 100
    .local v2, okButton:Lcom/htc/widget/HtcFooterButton;
    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 102
    .end local v2           #okButton:Lcom/htc/widget/HtcFooterButton;
    :cond_1
    return-void

    .line 92
    .end local v0           #buttonFrame:Lcom/android/htccontacts/widget/HtcButtonFrameLayout;
    :cond_2
    iget-object v3, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity;->mAdapter:Lcom/android/htccontacts/group/ArrangeMemberActivity$ContactsOrderItemListAdapter;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity;->mAdapter:Lcom/android/htccontacts/group/ArrangeMemberActivity$ContactsOrderItemListAdapter;

    invoke-virtual {v3}, Lcom/android/htccontacts/group/ArrangeMemberActivity$ContactsOrderItemListAdapter;->getCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 93
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setAdapter(Landroid/database/Cursor;)V
    .locals 4
    .parameter "cursor"

    .prologue
    .line 146
    iget-object v1, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity;->mAdapter:Lcom/android/htccontacts/group/ArrangeMemberActivity$ContactsOrderItemListAdapter;

    if-nez v1, :cond_1

    .line 147
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isQHDProject()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    new-instance v1, Lcom/android/htccontacts/group/ArrangeMemberActivity$ContactsOrderItemListAdapter;

    iget-object v2, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    const v3, 0x7f030053

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/android/htccontacts/group/ArrangeMemberActivity$ContactsOrderItemListAdapter;-><init>(Lcom/android/htccontacts/group/ArrangeMemberActivity;Landroid/content/Context;ILandroid/database/Cursor;)V

    iput-object v1, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity;->mAdapter:Lcom/android/htccontacts/group/ArrangeMemberActivity$ContactsOrderItemListAdapter;

    .line 153
    :goto_0
    invoke-virtual {p0}, Lcom/android/htccontacts/group/ArrangeMemberActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    .line 154
    .local v0, listView:Lcom/htc/widget/HtcListView;
    iget-object v1, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity;->mAdapter:Lcom/android/htccontacts/group/ArrangeMemberActivity$ContactsOrderItemListAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 159
    .end local v0           #listView:Lcom/htc/widget/HtcListView;
    :goto_1
    return-void

    .line 151
    :cond_0
    new-instance v1, Lcom/android/htccontacts/group/ArrangeMemberActivity$ContactsOrderItemListAdapter;

    iget-object v2, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    const v3, 0x2090074

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/android/htccontacts/group/ArrangeMemberActivity$ContactsOrderItemListAdapter;-><init>(Lcom/android/htccontacts/group/ArrangeMemberActivity;Landroid/content/Context;ILandroid/database/Cursor;)V

    iput-object v1, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity;->mAdapter:Lcom/android/htccontacts/group/ArrangeMemberActivity$ContactsOrderItemListAdapter;

    goto :goto_0

    .line 157
    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity;->mAdapter:Lcom/android/htccontacts/group/ArrangeMemberActivity$ContactsOrderItemListAdapter;

    invoke-virtual {v1, p1}, Lcom/android/htccontacts/group/ArrangeMemberActivity$ContactsOrderItemListAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_1
.end method

.method private showProgressDialog()V
    .locals 4

    .prologue
    .line 177
    iget-object v1, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-nez v1, :cond_1

    .line 178
    const v1, 0x7f0a0128

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/group/ArrangeMemberActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, displayStr:Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v1, v0, v2, v3}, Lcom/htc/app/HtcProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/htc/app/HtcProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 186
    .end local v0           #displayStr:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v1}, Lcom/htc/app/HtcProgressDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 183
    iget-object v1, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v1}, Lcom/htc/app/HtcProgressDialog;->show()V

    goto :goto_0
.end method

.method private startQuery()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 138
    iget-object v0, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity;->mQueryHandler:Lcom/android/htccontacts/group/ArrangeMemberActivity$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/group/ArrangeMemberActivity$QueryHandler;->cancelOperation(I)V

    .line 139
    sget-object v3, Lcom/htc/provider/HtcContactsContract$Contacts;->ORDERED_GROUP_CONTACT_URI:Landroid/net/Uri;

    .line 140
    .local v3, queryUri:Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v4, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity;->mGroupTitle:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 141
    iget-object v0, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity;->mQueryHandler:Lcom/android/htccontacts/group/ArrangeMemberActivity$QueryHandler;

    iget-object v4, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity;->MemberProjection:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/htccontacts/group/ArrangeMemberActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method private updateMemberOrder()V
    .locals 6

    .prologue
    .line 163
    iget-object v3, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity;->mTask:Lcom/android/htccontacts/group/ArrangeMemberActivity$UpdateMemberOrderTask;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity;->mAdapter:Lcom/android/htccontacts/group/ArrangeMemberActivity$ContactsOrderItemListAdapter;

    if-eqz v3, :cond_0

    .line 164
    iget-object v3, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity;->mAdapter:Lcom/android/htccontacts/group/ArrangeMemberActivity$ContactsOrderItemListAdapter;

    invoke-virtual {v3}, Lcom/android/htccontacts/group/ArrangeMemberActivity$ContactsOrderItemListAdapter;->getOrderMemberList()Ljava/util/ArrayList;

    move-result-object v2

    .line 165
    .local v2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/group/ArrangeMemberActivity$MemberItem;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 166
    new-instance v3, Lcom/android/htccontacts/group/ArrangeMemberActivity$UpdateMemberOrderTask;

    invoke-direct {v3, p0}, Lcom/android/htccontacts/group/ArrangeMemberActivity$UpdateMemberOrderTask;-><init>(Lcom/android/htccontacts/group/ArrangeMemberActivity;)V

    iput-object v3, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity;->mTask:Lcom/android/htccontacts/group/ArrangeMemberActivity$UpdateMemberOrderTask;

    .line 167
    new-instance v0, Lcom/android/htccontacts/group/ArrangeMemberActivity$MemberOrderData;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/android/htccontacts/group/ArrangeMemberActivity$MemberOrderData;-><init>(Lcom/android/htccontacts/group/ArrangeMemberActivity$1;)V

    .line 168
    .local v0, data:Lcom/android/htccontacts/group/ArrangeMemberActivity$MemberOrderData;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v1, itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/group/ArrangeMemberActivity$MemberItem;>;"
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 170
    iput-object v1, v0, Lcom/android/htccontacts/group/ArrangeMemberActivity$MemberOrderData;->memberList:Ljava/util/ArrayList;

    .line 171
    iget-object v3, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity;->mTask:Lcom/android/htccontacts/group/ArrangeMemberActivity$UpdateMemberOrderTask;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/android/htccontacts/group/ArrangeMemberActivity$MemberOrderData;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v3, v4}, Lcom/android/htccontacts/group/ArrangeMemberActivity$UpdateMemberOrderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 174
    .end local v0           #data:Lcom/android/htccontacts/group/ArrangeMemberActivity$MemberOrderData;
    .end local v1           #itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/group/ArrangeMemberActivity$MemberItem;>;"
    .end local v2           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/group/ArrangeMemberActivity$MemberItem;>;"
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v6, 0x0

    .line 63
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v4, 0x7f030001

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/group/ArrangeMemberActivity;->setContentView(I)V

    .line 65
    new-instance v4, Lcom/android/htccontacts/group/ArrangeMemberActivity$QueryHandler;

    invoke-virtual {p0}, Lcom/android/htccontacts/group/ArrangeMemberActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/htccontacts/group/ArrangeMemberActivity$QueryHandler;-><init>(Lcom/android/htccontacts/group/ArrangeMemberActivity;Landroid/content/ContentResolver;)V

    iput-object v4, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity;->mQueryHandler:Lcom/android/htccontacts/group/ArrangeMemberActivity$QueryHandler;

    .line 66
    invoke-virtual {p0}, Lcom/android/htccontacts/group/ArrangeMemberActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 67
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "title"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity;->mGroupTitle:Ljava/lang/String;

    .line 68
    invoke-virtual {p0}, Lcom/android/htccontacts/group/ArrangeMemberActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcReorderListView;

    iput-object v4, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity;->mTouchInterceptorView:Lcom/htc/widget/HtcReorderListView;

    .line 69
    iget-object v4, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity;->mTouchInterceptorView:Lcom/htc/widget/HtcReorderListView;

    iget-object v5, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity;->mDragListener:Lcom/htc/widget/HtcReorderListView$DragListener;

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcReorderListView;->setDragListener(Lcom/htc/widget/HtcReorderListView$DragListener;)V

    .line 70
    iget-object v4, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity;->mTouchInterceptorView:Lcom/htc/widget/HtcReorderListView;

    iget-object v5, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity;->mDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcReorderListView;->setDropListener(Lcom/htc/widget/HtcReorderListView$DropListener;)V

    .line 71
    iget-object v4, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity;->mTouchInterceptorView:Lcom/htc/widget/HtcReorderListView;

    iget-object v5, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity;->mRemoveListener:Lcom/htc/widget/HtcReorderListView$RemoveListener;

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcReorderListView;->setRemoveListener(Lcom/htc/widget/HtcReorderListView$RemoveListener;)V

    .line 73
    const v4, 0x7f070017

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/group/ArrangeMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;

    .line 74
    .local v0, buttonFrame:Lcom/android/htccontacts/widget/HtcButtonFrameLayout;
    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getButton1View()Lcom/htc/widget/HtcFooterButton;

    move-result-object v3

    .line 76
    .local v3, okButton:Lcom/htc/widget/HtcFooterButton;
    new-instance v4, Lcom/android/htccontacts/group/ArrangeMemberActivity$DoActionListener;

    invoke-direct {v4, p0, v6}, Lcom/android/htccontacts/group/ArrangeMemberActivity$DoActionListener;-><init>(Lcom/android/htccontacts/group/ArrangeMemberActivity;Lcom/android/htccontacts/group/ArrangeMemberActivity$1;)V

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 78
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getButton2View()Lcom/htc/widget/HtcFooterButton;

    move-result-object v1

    .line 79
    .local v1, cancelButton:Lcom/htc/widget/HtcFooterButton;
    new-instance v4, Lcom/android/htccontacts/group/ArrangeMemberActivity$RevertActionListener;

    invoke-direct {v4, p0, v6}, Lcom/android/htccontacts/group/ArrangeMemberActivity$RevertActionListener;-><init>(Lcom/android/htccontacts/group/ArrangeMemberActivity;Lcom/android/htccontacts/group/ArrangeMemberActivity$1;)V

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    .end local v1           #cancelButton:Lcom/htc/widget/HtcFooterButton;
    .end local v3           #okButton:Lcom/htc/widget/HtcFooterButton;
    :cond_0
    const v4, 0x7f0a032f

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/group/ArrangeMemberActivity;->setGenericTitleBar(I)V

    .line 83
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 107
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onDestroy()V

    .line 108
    iget-object v0, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity;->mQueryHandler:Lcom/android/htccontacts/group/ArrangeMemberActivity$QueryHandler;

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/group/ArrangeMemberActivity$QueryHandler;->cancelOperation(I)V

    .line 110
    iget-object v0, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity;->mTouchInterceptorView:Lcom/htc/widget/HtcReorderListView;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcReorderListView;->setDragListener(Lcom/htc/widget/HtcReorderListView$DragListener;)V

    .line 111
    iget-object v0, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity;->mTouchInterceptorView:Lcom/htc/widget/HtcReorderListView;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcReorderListView;->setDropListener(Lcom/htc/widget/HtcReorderListView$DropListener;)V

    .line 112
    iget-object v0, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity;->mTouchInterceptorView:Lcom/htc/widget/HtcReorderListView;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcReorderListView;->setRemoveListener(Lcom/htc/widget/HtcReorderListView$RemoveListener;)V

    .line 114
    iget-object v0, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity;->mQueryHandler:Lcom/android/htccontacts/group/ArrangeMemberActivity$QueryHandler;

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/group/ArrangeMemberActivity$QueryHandler;->cancelOperation(I)V

    .line 115
    iget-object v0, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity;->mAdapter:Lcom/android/htccontacts/group/ArrangeMemberActivity$ContactsOrderItemListAdapter;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity;->mAdapter:Lcom/android/htccontacts/group/ArrangeMemberActivity$ContactsOrderItemListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/group/ArrangeMemberActivity$ContactsOrderItemListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 121
    iput-object v1, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 123
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 129
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onResume()V

    .line 131
    iget-boolean v0, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity;->mIsDirty:Z

    if-eqz v0, :cond_0

    .line 132
    invoke-direct {p0}, Lcom/android/htccontacts/group/ArrangeMemberActivity;->startQuery()V

    .line 134
    :cond_0
    return-void
.end method
