.class public Lcom/android/mms/ui/AllMessageListActivity;
.super Lcom/android/mms/ui/ConversationListBaseActivity;
.source "AllMessageListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/AllMessageListActivity$DeletCookie;,
        Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;,
        Lcom/android/mms/ui/AllMessageListActivity$UIHandler;,
        Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener;
    }
.end annotation


# static fields
.field public static final MESSAGE_PREVIEW:Ljava/lang/String; = "pref_key_msg_preview"

.field private static final TAG:Ljava/lang/String; = "AllMessageListActivity"

.field private static mOldIndex:I


# instance fields
.field private ThreadListHandler:Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;

.field mListAdapter:Lcom/android/mms/ui/AllMessageListAdapter;

.field mNotifyContentChangeCallback:Ljava/lang/Runnable;

.field private mWorkingThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    const/4 v0, -0x1

    sput v0, Lcom/android/mms/ui/AllMessageListActivity;->mOldIndex:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;-><init>()V

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/AllMessageListActivity;->mWorkingThread:Landroid/os/HandlerThread;

    .line 453
    new-instance v0, Lcom/android/mms/ui/AllMessageListActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/AllMessageListActivity$2;-><init>(Lcom/android/mms/ui/AllMessageListActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/AllMessageListActivity;->mNotifyContentChangeCallback:Ljava/lang/Runnable;

    .line 912
    new-instance v0, Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;-><init>(Lcom/android/mms/ui/AllMessageListActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/AllMessageListActivity;->ThreadListHandler:Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;

    .line 1211
    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/AllMessageListActivity;)Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/mms/ui/AllMessageListActivity;->ThreadListHandler:Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/AllMessageListActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/mms/ui/AllMessageListActivity;->queryAndSortCMAS(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/AllMessageListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/mms/ui/AllMessageListActivity;->getDraftCount()V

    return-void
.end method

.method private confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;ZZ)V
    .locals 9
    .parameter "listener"
    .parameter "deleteAll"
    .parameter "showCheckBox"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 226
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 229
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v5, 0x7f030005

    invoke-static {p0, v5, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 230
    .local v2, contents:Landroid/view/View;
    const v5, 0x7f0e0025

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 231
    .local v1, checkbox:Landroid/widget/CheckBox;
    if-eqz p3, :cond_0

    move-object v5, p1

    .line 232
    check-cast v5, Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener;->setDeleteLockedMessage(Z)V

    .line 238
    :goto_0
    new-instance v5, Lcom/android/mms/ui/AllMessageListActivity$1;

    invoke-direct {v5, p0, p3, p1, v1}, Lcom/android/mms/ui/AllMessageListActivity$1;-><init>(Lcom/android/mms/ui/AllMessageListActivity;ZLandroid/content/DialogInterface$OnClickListener;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 247
    const v5, 0x20c01fc

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 248
    const v5, 0x7f0200d1

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 249
    invoke-virtual {v0, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 250
    const v5, 0x20c015f

    invoke-virtual {v0, v5, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 251
    const v5, 0x20c0164

    invoke-virtual {v0, v5, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 253
    if-eqz p2, :cond_1

    const v3, 0x7f0900ac

    .line 256
    .local v3, nID:I
    :goto_1
    const v5, 0x7f0e0024

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 257
    .local v4, textDelete:Landroid/widget/TextView;
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/AllMessageListActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 260
    return-void

    .end local v3           #nID:I
    .end local v4           #textDelete:Landroid/widget/TextView;
    :cond_0
    move-object v5, p1

    .line 234
    check-cast v5, Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener;

    invoke-virtual {v5, v7}, Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener;->setDeleteLockedMessage(Z)V

    .line 235
    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0

    .line 253
    :cond_1
    const v3, 0x7f0900ae

    goto :goto_1
.end method

.method private getDraftCount()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v0, 0x0

    .line 1196
    iput v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mSmsDraftCount:I

    .line 1197
    iput v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mMmsDraftCount:I

    .line 1199
    invoke-virtual {p0}, Lcom/android/mms/ui/AllMessageListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$MmsSms;->CONTENT_DRAFT_LIST_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/util/QueryURI;->MIN_PROJECT:[Ljava/lang/String;

    const-string v5, " limit 1 normalized_date DESC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1200
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 1208
    :goto_0
    return-void

    .line 1203
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1204
    iput v7, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mSmsDraftCount:I

    .line 1205
    iput v7, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mMmsDraftCount:I

    .line 1207
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private queryAndSortCMAS(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 10
    .parameter "oriCursor"

    .prologue
    const/4 v2, 0x0

    .line 1142
    const/4 v9, 0x0

    .line 1144
    .local v9, c:Landroid/database/Cursor;
    const/4 v7, 0x4

    .line 1145
    .local v7, ColumnNumber:I
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSortConversation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1146
    iget v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->iSortBy:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->iSortBy:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1147
    :cond_0
    const/4 v7, 0x3

    .line 1149
    :cond_1
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapTelephony$HtcCmas;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    .line 1150
    .local v8, builder:Landroid/net/Uri$Builder;
    const-string v0, "limit"

    const-string v1, "1"

    invoke-virtual {v8, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1152
    invoke-virtual {p0}, Lcom/android/mms/ui/AllMessageListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const-string v5, "presidential DESC, date DESC"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1161
    .local v2, _cursor:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/android/mms/ui/AllMessageListActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v5, p0, Lcom/android/mms/ui/AllMessageListActivity;->mListAdapter:Lcom/android/mms/ui/AllMessageListAdapter;

    iget v6, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->iSortBy:I

    move-object v1, p1

    move v3, v7

    move-object v4, p0

    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/ConversationListBaseAdapter;->sortCMASCursor(Landroid/content/Context;Landroid/database/Cursor;Landroid/database/Cursor;ILandroid/app/Activity;Lcom/android/mms/ui/ConversationListBaseAdapter;I)Landroid/database/Cursor;

    move-result-object v9

    .line 1162
    if-eqz v2, :cond_2

    .line 1163
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1165
    :cond_2
    return-object v9
.end method


# virtual methods
.method protected delteThread(JJ)V
    .locals 7
    .parameter "threadId"
    .parameter "htcThreadId"

    .prologue
    const/4 v6, 0x0

    .line 621
    new-instance v0, Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener;-><init>(Lcom/android/mms/ui/AllMessageListActivity;JJ)V

    .line 622
    .local v0, l:Lcom/android/mms/ui/AllMessageListActivity$DeleteThreadListener;
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    .line 623
    const/4 v1, 0x1

    invoke-direct {p0, v0, v6, v1}, Lcom/android/mms/ui/AllMessageListActivity;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;ZZ)V

    .line 628
    :goto_0
    return-void

    .line 625
    :cond_0
    invoke-direct {p0, v0, v6, v6}, Lcom/android/mms/ui/AllMessageListActivity;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;ZZ)V

    goto :goto_0
.end method

.method protected extractContextMenuDataFromCursor(Landroid/database/Cursor;Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;)V
    .locals 8
    .parameter "threadCursor"
    .parameter "iInfo"

    .prologue
    const/16 v4, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 577
    invoke-virtual {p2}, Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;->reset()V

    .line 579
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p2, Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;->htcthreadId:J

    .line 580
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p2, Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;->threadId:J

    .line 581
    const/16 v2, 0x14

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p2, Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;->threadtype:I

    .line 582
    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;->address:Ljava/lang/String;

    .line 583
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;->msgType:Ljava/lang/String;

    .line 584
    const/4 v2, 0x4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p2, Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;->latest_date:J

    .line 585
    const/16 v2, 0xd

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p2, Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;->date:J

    .line 586
    const/16 v2, 0xa

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p2, Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;->is_private:J

    .line 595
    const-string v2, "vvm"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 596
    .local v0, hasVvm:Z
    const/16 v2, 0x15

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 597
    .local v1, t_Type:Ljava/lang/String;
    iget-wide v2, p2, Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;->latest_date:J

    iget-wide v4, p2, Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;->date:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 598
    iput-boolean v6, p2, Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;->b_lastestVvm:Z

    .line 612
    :goto_0
    return-void

    .line 602
    :cond_0
    if-eqz v0, :cond_1

    const-string v2, "mms"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 603
    iput-boolean v7, p2, Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;->b_lastestVvm:Z

    goto :goto_0

    .line 605
    :cond_1
    iput-boolean v6, p2, Lcom/android/mms/ui/ConversationListBaseActivity$ContextMenuItemInfo;->b_lastestVvm:Z

    goto :goto_0
.end method

.method protected getListCursorAdapter()Landroid/widget/CursorAdapter;
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lcom/android/mms/ui/AllMessageListActivity;->mListAdapter:Lcom/android/mms/ui/AllMessageListAdapter;

    return-object v0
.end method

.method protected getMultipleDeleteIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 549
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/MultipleDeleteActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 550
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "title"

    const v2, 0x7f09010c

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 551
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportContactBaseConversation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 552
    const-string v1, "uri"

    sget-object v2, Landroid/provider/Telephony$HtcThreads;->CONTACTBASE_THREAD_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 555
    :goto_0
    const-string v1, "htcThread_mode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 556
    const-string v1, "projection"

    iget-object v2, p0, Lcom/android/mms/ui/AllMessageListActivity;->mListAdapter:Lcom/android/mms/ui/AllMessageListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/ui/AllMessageListAdapter;->getProjection()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 557
    return-object v0

    .line 554
    :cond_0
    const-string v1, "uri"

    sget-object v2, Landroid/provider/Telephony$HtcThreads;->THREAD_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected getThreadsCount()I
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lcom/android/mms/ui/AllMessageListActivity;->mListAdapter:Lcom/android/mms/ui/AllMessageListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/AllMessageListActivity;->mListAdapter:Lcom/android/mms/ui/AllMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/AllMessageListAdapter;->getCount()I

    move-result v0

    .line 544
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getThreadsCount()I

    move-result v0

    goto :goto_0
.end method

.method protected initCommonResources(Landroid/view/View;)V
    .locals 1
    .parameter "title2"

    .prologue
    .line 264
    invoke-super {p0, p1}, Lcom/android/mms/ui/ConversationListBaseActivity;->initCommonResources(Landroid/view/View;)V

    .line 266
    const v0, 0x7f09010c

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/AllMessageListActivity;->setTitleText(I)V

    .line 268
    return-void
.end method

.method protected onCmasChange(Z)V
    .locals 2
    .parameter "selfUpdate"

    .prologue
    .line 464
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportCMASSort()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    if-nez v0, :cond_1

    .line 470
    :cond_0
    :goto_0
    return-void

    .line 467
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    iget-object v1, p0, Lcom/android/mms/ui/AllMessageListActivity;->mNotifyContentChangeCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 468
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    iget-object v1, p0, Lcom/android/mms/ui/AllMessageListActivity;->mNotifyContentChangeCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 377
    const-string v0, "AllMessageListActivity"

    const-string v1, "onCreate() >>>>>>>>>>>>>>>>>>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-super {p0, p1}, Lcom/android/mms/ui/ConversationListBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 380
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mMode:I

    .line 382
    new-instance v0, Lcom/android/mms/ui/AllMessageListActivity$UIHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/AllMessageListActivity$UIHandler;-><init>(Lcom/android/mms/ui/AllMessageListActivity;Lcom/android/mms/ui/AllMessageListActivity$1;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    .line 384
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AllMessageListBGThread"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/mms/ui/AllMessageListActivity;->mWorkingThread:Landroid/os/HandlerThread;

    .line 385
    iget-object v0, p0, Lcom/android/mms/ui/AllMessageListActivity;->mWorkingThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 386
    new-instance v0, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationListWorkingHandler;

    iget-object v1, p0, Lcom/android/mms/ui/AllMessageListActivity;->mWorkingThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationListWorkingHandler;-><init>(Landroid/os/Looper;Lcom/android/mms/ui/ConversationListBaseActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mWorkingHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationListWorkingHandler;

    .line 393
    invoke-virtual {p0}, Lcom/android/mms/ui/AllMessageListActivity;->setListView()V

    .line 397
    const-string v0, "AllMessageListActivity"

    const-string v1, "[ATS][com.android.mms][press_widget][successful]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    const-string v0, "AllMessageListActivity"

    const-string v1, "onCreate() <<<<<<<<<<<<<<<<<<<<"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 538
    invoke-super {p0, p1}, Lcom/android/mms/ui/ConversationListBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 506
    invoke-super {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->onDestroy()V

    .line 507
    const-string v0, "AllMessageListActivity"

    const-string v1, "onDestroy() >>>>>>>>>>>>>>>>>>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    iget-object v0, p0, Lcom/android/mms/ui/AllMessageListActivity;->ThreadListHandler:Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/android/mms/ui/AllMessageListActivity;->ThreadListHandler:Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;

    const/16 v1, 0x4e2b

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;->removeMessages(I)V

    .line 512
    iget-object v0, p0, Lcom/android/mms/ui/AllMessageListActivity;->ThreadListHandler:Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;

    const/16 v1, 0x2715

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;->removeMessages(I)V

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/AllMessageListActivity;->mListAdapter:Lcom/android/mms/ui/AllMessageListAdapter;

    if-eqz v0, :cond_1

    .line 518
    iget-object v0, p0, Lcom/android/mms/ui/AllMessageListActivity;->mListAdapter:Lcom/android/mms/ui/AllMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/AllMessageListAdapter;->close()V

    .line 525
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mWorkingHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationListWorkingHandler;

    if-eqz v0, :cond_2

    .line 527
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mWorkingHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationListWorkingHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationListWorkingHandler;->removeMessages(I)V

    .line 528
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mWorkingHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationListWorkingHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationListWorkingHandler;->removeMessages(I)V

    .line 530
    iget-object v0, p0, Lcom/android/mms/ui/AllMessageListActivity;->mWorkingThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/AllMessageListActivity;->mWorkingThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 533
    :cond_2
    const-string v0, "AllMessageListActivity"

    const-string v1, "onDestroy() <<<<<<<<<<<<<<<<<<<<"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    return-void
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
    .locals 26
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 272
    invoke-super/range {p0 .. p5}, Lcom/android/mms/ui/ConversationListBaseActivity;->onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V

    .line 273
    const-string v2, "AllMessageListActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onListItemClick: position="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/AllMessageListActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/util/SpaceBufferUtil;->isLowStorage(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 275
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/mms/ui/MessageUtils;->confirmStorageFullDialog(Landroid/content/Context;Z)V

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/mms/ui/ConversationHeader;

    .line 288
    .local v22, ch:Lcom/android/mms/ui/ConversationHeader;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportCMASSort()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 290
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportCMAS()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 293
    const-wide/16 v4, -0x3e8

    cmp-long v2, p4, v4

    if-nez v2, :cond_2

    .line 295
    new-instance v23, Landroid/content/Intent;

    invoke-direct/range {v23 .. v23}, Landroid/content/Intent;-><init>()V

    .line 296
    .local v23, cmasIntent:Landroid/content/Intent;
    const-string v2, "mode"

    const/4 v4, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 297
    const-class v2, Lcom/android/mms/ui/MmsListActivity;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 299
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/AllMessageListActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 300
    :catch_0
    move-exception v24

    .line 301
    .local v24, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual/range {v24 .. v24}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 302
    .end local v24           #e:Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v24

    .line 303
    .local v24, e:Ljava/lang/SecurityException;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 311
    .end local v23           #cmasIntent:Landroid/content/Intent;
    .end local v24           #e:Ljava/lang/SecurityException;
    :cond_2
    const-string v2, "AllMessageListActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cursor id >"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const-string v2, "AllMessageListActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "view id >"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    iget-wide v5, v0, Lcom/android/mms/ui/ConversationHeader;->mHtcThreadId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportContactBaseConversation()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 315
    move-object/from16 v0, v22

    iget-wide v4, v0, Lcom/android/mms/ui/ConversationHeader;->mHtcThreadId:J

    cmp-long v2, p4, v4

    if-eqz v2, :cond_4

    .line 316
    const-string v2, "AllMessageListActivity"

    const-string v4, "Error handling for cursor id not equal to view id"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    sget-object v3, Landroid/provider/Telephony$HtcThreads;->CONTACTBASE_THREAD_URI:Landroid/net/Uri;

    .line 318
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/AllMessageListActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "recipient_address"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "type"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "unread_count"

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p4

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    .line 320
    .local v25, threadCursor:Landroid/database/Cursor;
    if-eqz v25, :cond_0

    .line 321
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 322
    const-string v2, "recipient_address"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 323
    .local v9, address:Ljava/lang/String;
    const-string v2, "type"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 324
    .local v11, threadType:I
    const-string v2, "unread_count"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 330
    .local v12, unreadCount:I
    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p0

    move-wide/from16 v5, p4

    invoke-virtual/range {v4 .. v12}, Lcom/android/mms/ui/AllMessageListActivity;->openThread(JJLjava/lang/String;ZII)V

    .line 332
    .end local v9           #address:Ljava/lang/String;
    .end local v11           #threadType:I
    .end local v12           #unreadCount:I
    :cond_3
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 341
    .end local v3           #uri:Landroid/net/Uri;
    .end local v25           #threadCursor:Landroid/database/Cursor;
    :cond_4
    move-object/from16 v0, v22

    iget-wide v14, v0, Lcom/android/mms/ui/ConversationHeader;->mHtcThreadId:J

    const-wide/16 v16, 0x0

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/ui/ConversationHeader;->getFrom()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/ui/ConversationHeader;->getThreadBroadcastType()I

    move-result v20

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/ui/ConversationHeader;->getUnreadCount()I

    move-result v21

    move-object/from16 v13, p0

    invoke-virtual/range {v13 .. v21}, Lcom/android/mms/ui/AllMessageListActivity;->openThread(JJLjava/lang/String;ZII)V

    goto/16 :goto_0

    .line 348
    :cond_5
    move-object/from16 v0, v22

    iget-wide v14, v0, Lcom/android/mms/ui/ConversationHeader;->mHtcThreadId:J

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/ui/ConversationHeader;->getThreadId()J

    move-result-wide v16

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/ui/ConversationHeader;->getFrom()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/ui/ConversationHeader;->getThreadBroadcastType()I

    move-result v20

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/ui/ConversationHeader;->getUnreadCount()I

    move-result v21

    move-object/from16 v13, p0

    invoke-virtual/range {v13 .. v21}, Lcom/android/mms/ui/AllMessageListActivity;->openThread(JJLjava/lang/String;ZII)V

    goto/16 :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 567
    invoke-super {p0, p1}, Lcom/android/mms/ui/ConversationListBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 572
    invoke-super {p0, p1}, Lcom/android/mms/ui/ConversationListBaseActivity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 573
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 475
    invoke-super {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->onPause()V

    .line 476
    const-string v0, "AllMessageListActivity"

    const-string v1, "onPause() >>>>>>>>>>>>>>>>>>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v0, p0, Lcom/android/mms/ui/AllMessageListActivity;->mListAdapter:Lcom/android/mms/ui/AllMessageListAdapter;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/android/mms/ui/AllMessageListActivity;->mListAdapter:Lcom/android/mms/ui/AllMessageListAdapter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mAutoQuery:Z

    .line 492
    :cond_0
    const-string v0, "AllMessageListActivity"

    const-string v1, "onPause() <<<<<<<<<<<<<<<<<<<<"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 562
    invoke-super {p0, p1}, Lcom/android/mms/ui/ConversationListBaseActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 6

    .prologue
    .line 413
    invoke-super {p0}, Lcom/android/mms/ui/ConversationListBaseActivity;->onResume()V

    .line 414
    const-string v3, "AllMessageListActivity"

    const-string v4, "onResume() >>>>>>>>>>>>>>>>>>>>"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object v3, p0, Lcom/android/mms/ui/AllMessageListActivity;->mListAdapter:Lcom/android/mms/ui/AllMessageListAdapter;

    if-eqz v3, :cond_0

    .line 417
    iget-object v3, p0, Lcom/android/mms/ui/AllMessageListActivity;->mListAdapter:Lcom/android/mms/ui/AllMessageListAdapter;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/mms/ui/ConversationListBaseAdapter;->mAutoQuery:Z

    .line 421
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMessagePreview()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 422
    invoke-static {p0}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 423
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v3, "pref_key_msg_preview"

    const-string v4, "1"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 424
    .local v1, mSize:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 425
    .local v0, mIndex:I
    sget v3, Lcom/android/mms/ui/AllMessageListActivity;->mOldIndex:I

    if-eq v0, v3, :cond_1

    .line 427
    sput v0, Lcom/android/mms/ui/AllMessageListActivity;->mOldIndex:I

    .line 428
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 433
    .end local v0           #mIndex:I
    .end local v1           #mSize:Ljava/lang/String;
    .end local v2           #prefs:Landroid/content/SharedPreferences;
    :cond_1
    const-string v3, "AllMessageListActivity"

    const-string v4, "onResume() <<<<<<<<<<<<<<<<<<<<"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    return-void
.end method

.method protected setListView()V
    .locals 3

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/android/mms/ui/AllMessageListActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    .line 129
    .local v0, listView:Lcom/htc/widget/HtcListView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setFillEmpty(Z)V

    .line 134
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/AllMessageListActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 139
    new-instance v1, Lcom/android/mms/ui/AllMessageListAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/mms/ui/AllMessageListAdapter;-><init>(Lcom/android/mms/ui/AllMessageListActivity;Landroid/database/Cursor;)V

    iput-object v1, p0, Lcom/android/mms/ui/AllMessageListActivity;->mListAdapter:Lcom/android/mms/ui/AllMessageListAdapter;

    .line 142
    iget-object v1, p0, Lcom/android/mms/ui/AllMessageListActivity;->mListAdapter:Lcom/android/mms/ui/AllMessageListAdapter;

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/AllMessageListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 152
    return-void
.end method

.method protected startQueryConversation()V
    .locals 7

    .prologue
    .line 158
    :try_start_0
    iget-object v4, p0, Lcom/android/mms/ui/AllMessageListActivity;->mListAdapter:Lcom/android/mms/ui/AllMessageListAdapter;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/mms/ui/AllMessageListActivity;->mListAdapter:Lcom/android/mms/ui/AllMessageListAdapter;

    invoke-virtual {v4}, Lcom/android/mms/ui/AllMessageListAdapter;->isNeedRequery()Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, p0, Lcom/android/mms/ui/ConversationListBaseActivity;->iSortBy:I

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/AllMessageListActivity;->IsSortDifferent(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 164
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportContactBaseConversation()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 165
    sget-object v4, Landroid/provider/Telephony$HtcThreads;->CONTACTBASE_THREAD_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 169
    .local v1, builder:Landroid/net/Uri$Builder;
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSortByDeviceTime()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 170
    const-string v4, "SortbyDate2"

    const-string v5, "1"

    invoke-virtual {v1, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 174
    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/AllMessageListActivity;->ThreadListHandler:Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;

    const/16 v5, 0x2715

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 175
    .local v3, msg:Landroid/os/Message;
    const/16 v4, 0x2715

    iput v4, v3, Landroid/os/Message;->arg1:I

    .line 176
    const/16 v4, 0x2715

    iput v4, v3, Landroid/os/Message;->arg2:I

    .line 178
    new-instance v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;

    invoke-direct {v0}, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;-><init>()V

    .line 179
    .local v0, args:Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->uri:Landroid/net/Uri;

    .line 181
    iget-object v4, p0, Lcom/android/mms/ui/AllMessageListActivity;->mListAdapter:Lcom/android/mms/ui/AllMessageListAdapter;

    invoke-virtual {v4}, Lcom/android/mms/ui/AllMessageListAdapter;->getProjection()[Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->projection:[Ljava/lang/String;

    .line 182
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->selection:Ljava/lang/String;

    .line 183
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    .line 184
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->orderBy:Ljava/lang/String;

    .line 185
    iget-object v4, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->orderBy:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/mms/ui/AllMessageListActivity;->ModifySortCommand(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->orderBy:Ljava/lang/String;

    .line 186
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    .line 187
    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 190
    iget-object v4, p0, Lcom/android/mms/ui/AllMessageListActivity;->ThreadListHandler:Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;

    if-eqz v4, :cond_2

    .line 191
    iget-object v4, p0, Lcom/android/mms/ui/AllMessageListActivity;->ThreadListHandler:Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;

    const/16 v5, 0x2715

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;->removeMessages(I)V

    .line 192
    iget-object v4, p0, Lcom/android/mms/ui/AllMessageListActivity;->ThreadListHandler:Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;

    invoke-virtual {v4, v3}, Lcom/android/mms/ui/AllMessageListActivity$AllMessageQueryHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 193
    iget-object v4, p0, Lcom/android/mms/ui/AllMessageListActivity;->mListAdapter:Lcom/android/mms/ui/AllMessageListAdapter;

    if-eqz v4, :cond_2

    .line 194
    iget-object v4, p0, Lcom/android/mms/ui/AllMessageListActivity;->mListAdapter:Lcom/android/mms/ui/AllMessageListAdapter;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/mms/ui/ConversationListBaseAdapter;->isRequeryNeeded:Z

    .line 204
    .end local v0           #args:Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;
    .end local v1           #builder:Landroid/net/Uri$Builder;
    .end local v3           #msg:Landroid/os/Message;
    :cond_2
    :goto_1
    return-void

    .line 167
    :cond_3
    sget-object v4, Landroid/provider/Telephony$HtcThreads;->THREAD_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .restart local v1       #builder:Landroid/net/Uri$Builder;
    goto :goto_0

    .line 200
    .end local v1           #builder:Landroid/net/Uri$Builder;
    :catch_0
    move-exception v2

    .line 201
    .local v2, e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {p0}, Lcom/android/mms/ui/AllMessageListActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/google/android/mms/util/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_1
.end method
