.class public Lcom/android/mms/ui/UndeliveredMessagesActivity;
.super Lcom/htc/app/HtcListActivity;
.source "UndeliveredMessagesActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/UndeliveredMessagesActivity$MainListQueryHandler;
    }
.end annotation


# static fields
.field static final COLUMN_ID:I = 0x1

.field static final COLUMN_MMS_BOX:I = 0xf

.field static final COLUMN_MMS_DATE:I = 0xc

.field static final COLUMN_MMS_ERROR_TYPE:I = 0x10

.field static final COLUMN_MMS_LOCKED:I = 0x12

.field static final COLUMN_MMS_MSG_TYPE:I = 0xe

.field static final COLUMN_MMS_PRIORITY:I = 0x11

.field static final COLUMN_MMS_READ:I = 0xd

.field static final COLUMN_MMS_SUBJECT:I = 0xa

.field static final COLUMN_MMS_SUBJECT_CHARSET:I = 0xb

.field static final COLUMN_MSG_TYPE:I = 0x0

.field static final COLUMN_SMS_ADDRESS:I = 0x3

.field static final COLUMN_SMS_BODY:I = 0x4

.field static final COLUMN_SMS_BOX:I = 0x7

.field static final COLUMN_SMS_DATE:I = 0x5

.field static final COLUMN_SMS_LOCKED:I = 0x9

.field static final COLUMN_SMS_READ:I = 0x6

.field static final COLUMN_SMS_STATUS:I = 0x8

.field static final COLUMN_THREAD_ID:I = 0x2

.field private static final DEBUG:Z = true

.field private static final DELETE_LIST_TOKEN:I = 0x709

.field private static final DELETE_PROJECTION:[Ljava/lang/String; = null

.field private static final LIST_QUERY_TOKEN:I = 0x6a5

.field private static final MENU_DELETE:I = 0x2

.field private static final MENU_DELETE_MESSAGES:I = 0x1

.field private static final MENU_RETRY_SENDING:I = 0x1

.field private static final MENU_RETRY_SENDING_ALL:I = 0x0

.field private static final MENU_VIEW:I = 0x0

.field static final MSG_FILTER_CONTACT_NAME:I = 0x64

.field private static final PROJECTION:[Ljava/lang/String; = null

.field private static final RESEND_SMS_QUERY_TOKEN:I = 0x70a

.field private static final TAG:Ljava/lang/String; = "UndeliveredMessagesActivity"


# instance fields
.field private keypad:Lcom/android/mms/ui/MsgHWkeypad;

.field private mAdapter:Lcom/android/mms/ui/UndeliveredMessagesListAdapter;

.field private mCategory:I

.field private final mConfirmDeleteMessageListener:Landroid/content/DialogInterface$OnClickListener;

.field private mCursor:Landroid/database/Cursor;

.field private mDeleteDialog:Lcom/htc/widget/HtcAlertDialog;

.field private final mEditorHandler:Landroid/os/Handler;

.field private final mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mQueryHandler:Lcom/android/mms/ui/UndeliveredMessagesActivity$MainListQueryHandler;

.field private mTitle:Landroid/widget/TextView;

.field private mTitleShadow:Landroid/widget/TextView;

.field private mUIlistenter:Lcom/android/mms/ui/MessagingListener;

.field mprogressDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 123
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "transport_type"

    aput-object v1, v0, v3

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "thread_id"

    aput-object v1, v0, v5

    const-string v1, "address"

    aput-object v1, v0, v6

    const-string v1, "body"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "locked"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "sub"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "sub_cs"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "date"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "read"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "m_type"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "msg_box"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "err_type"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "pri"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "locked"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->PROJECTION:[Ljava/lang/String;

    .line 149
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "transport_type"

    aput-object v1, v0, v3

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "address"

    aput-object v1, v0, v5

    const-string v1, "body"

    aput-object v1, v0, v6

    const-string v1, "date"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "m_type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->DELETE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 94
    invoke-direct {p0}, Lcom/htc/app/HtcListActivity;-><init>()V

    .line 120
    iput-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mprogressDialog:Landroid/app/ProgressDialog;

    .line 184
    iput-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mDeleteDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 186
    iput-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->keypad:Lcom/android/mms/ui/MsgHWkeypad;

    .line 508
    new-instance v0, Lcom/android/mms/ui/UndeliveredMessagesActivity$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/UndeliveredMessagesActivity$3;-><init>(Lcom/android/mms/ui/UndeliveredMessagesActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 745
    new-instance v0, Lcom/android/mms/ui/UndeliveredMessagesActivity$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/UndeliveredMessagesActivity$4;-><init>(Lcom/android/mms/ui/UndeliveredMessagesActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mConfirmDeleteMessageListener:Landroid/content/DialogInterface$OnClickListener;

    .line 950
    new-instance v0, Lcom/android/mms/ui/UndeliveredMessagesActivity$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/UndeliveredMessagesActivity$5;-><init>(Lcom/android/mms/ui/UndeliveredMessagesActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mUIlistenter:Lcom/android/mms/ui/MessagingListener;

    .line 958
    new-instance v0, Lcom/android/mms/ui/UndeliveredMessagesActivity$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/UndeliveredMessagesActivity$6;-><init>(Lcom/android/mms/ui/UndeliveredMessagesActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mEditorHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/UndeliveredMessagesActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/mms/ui/UndeliveredMessagesActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/mms/ui/UndeliveredMessagesActivity;JJLjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 94
    invoke-direct/range {p0 .. p5}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->editMessage(JJLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/UndeliveredMessagesActivity;JJLjava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 94
    invoke-direct/range {p0 .. p6}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->retryToSendMessage(JJLjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/ui/UndeliveredMessagesActivity;)Lcom/android/mms/ui/UndeliveredMessagesListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mAdapter:Lcom/android/mms/ui/UndeliveredMessagesListAdapter;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/mms/ui/UndeliveredMessagesActivity;Lcom/android/mms/ui/UndeliveredMessagesListAdapter;)Lcom/android/mms/ui/UndeliveredMessagesListAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mAdapter:Lcom/android/mms/ui/UndeliveredMessagesListAdapter;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/mms/ui/UndeliveredMessagesActivity;)Lcom/android/mms/ui/UndeliveredMessagesActivity$MainListQueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mQueryHandler:Lcom/android/mms/ui/UndeliveredMessagesActivity$MainListQueryHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/UndeliveredMessagesActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mEditorHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private confirmDialog(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .parameter "messageId"
    .parameter "listener"

    .prologue
    .line 765
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 766
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v1, 0x7f0200d1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 767
    const v1, 0x20c01fc

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 768
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 769
    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 770
    const v1, 0x20c015f

    invoke-virtual {v0, v1, p2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 771
    const v1, 0x20c0164

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 774
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mDeleteDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 776
    return-void
.end method

.method private editMessage(JJLjava/lang/String;)V
    .locals 2
    .parameter "threadId"
    .parameter "msgId"
    .parameter "msgType"

    .prologue
    .line 605
    invoke-static {p0}, Lcom/android/mms/util/SpaceBufferUtil;->isLowStorage(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 607
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/android/mms/ui/MessageUtils;->confirmStorageFullDialog(Landroid/content/Context;Z)V

    .line 632
    :goto_0
    return-void

    .line 612
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 613
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "thread_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 631
    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    goto :goto_0
.end method

.method private initActivity()V
    .locals 2

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x315

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 319
    invoke-virtual {p0}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessagingController;->getSingleton(Landroid/content/Context;)Lcom/android/mms/ui/MessagingController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mUIlistenter:Lcom/android/mms/ui/MessagingListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingController;->addListener(Lcom/android/mms/ui/MessagingListener;)V

    .line 321
    return-void
.end method

.method private initListView()V
    .locals 2

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->setRoundedCorner(Landroid/view/View;)V

    .line 327
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportLoadAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mAdapter:Lcom/android/mms/ui/UndeliveredMessagesListAdapter;

    invoke-virtual {p0}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->addGetMoreView(Lcom/htc/widget/HtcListView;)V

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mAdapter:Lcom/android/mms/ui/UndeliveredMessagesListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 332
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportLoadAnimation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 333
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mAdapter:Lcom/android/mms/ui/UndeliveredMessagesListAdapter;

    invoke-virtual {p0}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->removeGetMoreView(Lcom/htc/widget/HtcListView;)V

    .line 335
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setFillEmpty(Z)V

    .line 336
    invoke-virtual {p0}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 337
    invoke-virtual {p0}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setClickable(Z)V

    .line 338
    invoke-virtual {p0}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    new-instance v1, Lcom/android/mms/ui/UndeliveredMessagesActivity$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/UndeliveredMessagesActivity$1;-><init>(Lcom/android/mms/ui/UndeliveredMessagesActivity;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 347
    return-void
.end method

.method private isNeedReQuery()Z
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mQueryHandler:Lcom/android/mms/ui/UndeliveredMessagesActivity$MainListQueryHandler;

    if-eqz v0, :cond_1

    .line 352
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mAdapter:Lcom/android/mms/ui/UndeliveredMessagesListAdapter;

    sget-boolean v0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mNeedQuery:Z

    if-eqz v0, :cond_1

    .line 353
    :cond_0
    const/4 v0, 0x1

    .line 355
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resendShortMessage(JJ)V
    .locals 8
    .parameter "threadId"
    .parameter "msgId"

    .prologue
    const/4 v5, 0x0

    .line 737
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 738
    .local v3, uri:Landroid/net/Uri;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 739
    .local v2, bundle:Landroid/os/Bundle;
    const-string v0, "threadId"

    invoke-virtual {v2, v0, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 740
    const-string v0, "msgId"

    invoke-virtual {v2, v0, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 741
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mQueryHandler:Lcom/android/mms/ui/UndeliveredMessagesActivity$MainListQueryHandler;

    const/16 v1, 0x70a

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "address"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-string v7, "body"

    aput-object v7, v4, v6

    const/4 v6, 0x2

    const-string v7, "thread_id"

    aput-object v7, v4, v6

    const/4 v6, 0x3

    const-string v7, "locked"

    aput-object v7, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/UndeliveredMessagesActivity$MainListQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    return-void
.end method

.method private resendShortMessageSyn(JJ)V
    .locals 22
    .parameter "threadId"
    .parameter "msgId"

    .prologue
    .line 692
    move-wide/from16 v20, p1

    .line 693
    .local v20, threadId1:J
    move-wide/from16 v17, p3

    .line 695
    .local v17, msgId1:J
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v17

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 696
    .local v4, uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v2, 0x4

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v7, "address"

    aput-object v7, v5, v2

    const/4 v2, 0x1

    const-string v7, "body"

    aput-object v7, v5, v2

    const/4 v2, 0x2

    const-string v7, "thread_id"

    aput-object v7, v5, v2

    const/4 v2, 0x3

    const-string v7, "locked"

    aput-object v7, v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 699
    .local v13, cursor:Landroid/database/Cursor;
    if-eqz v13, :cond_2

    .line 701
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 708
    const/4 v2, 0x0

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 709
    .local v5, dest:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 710
    .local v6, body:Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 711
    .local v9, realTid:J
    const/4 v2, 0x3

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-lez v2, :cond_3

    const/16 v16, 0x1

    .local v16, locked:Z
    :goto_0
    move-wide/from16 v7, p1

    move-wide/from16 v11, p3

    .line 712
    invoke-static/range {v5 .. v12}, Lcom/android/mms/ui/MessageUtils;->createSmsMessageSenderIntent(Ljava/lang/String;Ljava/lang/String;JJJ)Landroid/content/Intent;

    move-result-object v15

    .line 715
    .local v15, intent:Landroid/content/Intent;
    if-eqz v16, :cond_0

    const-string v2, "locked"

    move/from16 v0, v16

    invoke-virtual {v15, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 716
    :cond_0
    new-instance v19, Lcom/android/mms/transaction/SmsMessageSender;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 717
    .local v19, sender:Lcom/android/mms/transaction/MessageSender;
    invoke-interface/range {v19 .. v21}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z

    .line 718
    invoke-static {}, Lcom/android/mms/MmsApp;->isImproveSmsSending()Z

    move-result v2

    if-nez v2, :cond_1

    .line 721
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v4, v3, v7}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 730
    .end local v5           #dest:Ljava/lang/String;
    .end local v6           #body:Ljava/lang/String;
    .end local v9           #realTid:J
    .end local v15           #intent:Landroid/content/Intent;
    .end local v16           #locked:Z
    .end local v19           #sender:Lcom/android/mms/transaction/MessageSender;
    :cond_1
    invoke-static {v13}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    .line 733
    :cond_2
    :goto_1
    return-void

    .line 711
    .restart local v5       #dest:Ljava/lang/String;
    .restart local v6       #body:Ljava/lang/String;
    .restart local v9       #realTid:J
    :cond_3
    const/16 v16, 0x0

    goto :goto_0

    .line 726
    .end local v5           #dest:Ljava/lang/String;
    .end local v6           #body:Ljava/lang/String;
    .end local v9           #realTid:J
    :catch_0
    move-exception v14

    .line 727
    .local v14, e:Lcom/google/android/mms/MmsException;
    :try_start_1
    const-string v2, "UndeliveredMessagesActivity"

    invoke-virtual {v14}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 730
    invoke-static {v13}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    goto :goto_1

    .end local v14           #e:Lcom/google/android/mms/MmsException;
    :catchall_0
    move-exception v2

    invoke-static {v13}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    throw v2
.end method

.method private retryToSendMessage(JJLjava/lang/String;Z)V
    .locals 15
    .parameter "threadId"
    .parameter "msgId"
    .parameter "msgType"
    .parameter "isResendAll"

    .prologue
    .line 635
    const-string v2, "sms"

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 637
    if-eqz p6, :cond_1

    .line 638
    invoke-direct/range {p0 .. p4}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->resendShortMessageSyn(JJ)V

    .line 687
    :cond_0
    :goto_0
    return-void

    .line 640
    :cond_1
    invoke-direct/range {p0 .. p4}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->resendShortMessage(JJ)V

    goto :goto_0

    .line 644
    :cond_2
    sget-object v2, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v13

    .line 645
    .local v13, uriBuilder:Landroid/net/Uri$Builder;
    const-string v2, "protocol"

    move-object/from16 v0, p5

    invoke-virtual {v13, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 646
    const-string v2, "message"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 648
    invoke-virtual {p0}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v13}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v8}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 651
    .local v10, cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_0

    .line 653
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 655
    new-instance v14, Landroid/content/ContentValues;

    const/4 v2, 0x3

    invoke-direct {v14, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 656
    .local v14, values:Landroid/content/ContentValues;
    const-string v2, "err_type"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 657
    const-string v2, "retry_index"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 658
    const-string v2, "due_time"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 660
    const-string v2, "_id"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 662
    .local v9, columnIndex:I
    invoke-interface {v10, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 663
    .local v11, id:J
    invoke-virtual {p0}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v14, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 666
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-static {v2, v0, v1}, Lcom/android/mms/util/SendingProgressTokenManager;->put(Ljava/lang/Object;J)V

    .line 669
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 684
    .end local v9           #columnIndex:I
    .end local v11           #id:J
    .end local v14           #values:Landroid/content/ContentValues;
    :cond_3
    invoke-static {v10}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v10}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    throw v2
.end method


# virtual methods
.method deleteMessageByCursor(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 12
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v2, 0x0

    .line 780
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 808
    :cond_0
    :goto_0
    return-void

    .line 784
    :cond_1
    const/4 v3, 0x0

    .line 786
    .local v3, deleteUri:Landroid/net/Uri;
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 787
    .local v11, type:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 788
    .local v8, msgId:J
    const-string v0, "sms"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v6, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    .line 789
    .local v6, baseUri:Landroid/net/Uri;
    :goto_1
    invoke-static {v6, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 795
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mQueryHandler:Lcom/android/mms/ui/UndeliveredMessagesActivity$MainListQueryHandler;

    const/16 v1, 0x709

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/UndeliveredMessagesActivity$MainListQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 800
    const/16 v0, 0x315

    invoke-static {p1, v0}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 803
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    .line 804
    .local v10, suri:Ljava/lang/String;
    const-string v0, "Goven"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete Uri string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {p1, v10, v0}, Lcom/android/mms/transaction/MessagingNotification;->cancelMMSNotification(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 788
    .end local v6           #baseUri:Landroid/net/Uri;
    .end local v10           #suri:Ljava/lang/String;
    :cond_2
    :try_start_1
    sget-object v6, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;
    :try_end_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 790
    .end local v8           #msgId:J
    .end local v11           #type:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 792
    .local v7, e:Landroid/database/CursorIndexOutOfBoundsException;
    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    const/4 v2, 0x0

    .line 205
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 207
    iget-object v1, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mDeleteDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v1, :cond_0

    .line 209
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mDeleteDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    iput-object v2, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mDeleteDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 216
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->closeContextMenu()V

    .line 219
    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_3_0()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 220
    invoke-virtual {p0}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils$SkinUtil;->getWindowBackgroundRes(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 224
    :cond_1
    return-void

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 213
    iput-object v2, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mDeleteDialog:Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iput-object v2, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mDeleteDialog:Lcom/htc/widget/HtcAlertDialog;

    throw v1
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x1

    .line 540
    iget-object v7, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    if-ltz v7, :cond_0

    iget-object v7, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    iget-object v8, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-lt v7, v8, :cond_1

    .line 542
    :cond_0
    const-string v6, "UndeliveredMessagesActivity"

    const-string v7, "Invalid cursor position!, do nothing."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    :goto_0
    return v0

    .line 547
    :cond_1
    iget-object v7, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mCursor:Landroid/database/Cursor;

    const/4 v8, 0x2

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 548
    .local v1, threadId:J
    iget-object v7, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 549
    .local v3, msgId:J
    iget-object v7, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 550
    .local v5, msgType:Ljava/lang/String;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 579
    :goto_1
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    :pswitch_0
    move-object v0, p0

    .line 553
    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->editMessage(JJLjava/lang/String;)V

    goto :goto_1

    .line 558
    :pswitch_1
    invoke-static {p0}, Lcom/android/mms/util/SpaceBufferUtil;->isLowStorage(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 560
    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->confirmStorageFullDialog(Landroid/content/Context;Z)V

    goto :goto_1

    :cond_2
    move-object v0, p0

    .line 564
    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->retryToSendMessage(JJLjava/lang/String;Z)V

    goto :goto_1

    .line 568
    :pswitch_2
    invoke-static {p0}, Lcom/android/mms/util/SpaceBufferUtil;->isNoStorage(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 570
    invoke-static {p0, v6}, Lcom/android/mms/ui/MessageUtils;->confirmStorageFullDialog(Landroid/content/Context;Z)V

    goto :goto_0

    .line 574
    :cond_3
    const v0, 0x7f0900ad

    iget-object v6, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mConfirmDeleteMessageListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0, v0, v6}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->confirmDialog(ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_1

    .line 550
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    .line 228
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->requestWindowFeature(I)Z

    .line 229
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 232
    invoke-virtual {p0}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "category"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mCategory:I

    .line 238
    sget-object v0, Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;->HEADER_SHORT:Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;

    const v1, 0x7f09001d

    const/4 v2, -0x1

    invoke-static {p0, v0, v1, v2}, Lcom/android/mms/util/CommonActivityLayout;->createSimpleTextHeaderActivityLayout(Landroid/content/Context;Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;II)Lcom/android/mms/util/CommonActivityLayout$LayoutController;

    move-result-object v7

    .line 241
    .local v7, controller:Lcom/android/mms/util/CommonActivityLayout$LayoutController;
    invoke-virtual {v7}, Lcom/android/mms/util/CommonActivityLayout$LayoutController;->getActivityContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->setContentView(Landroid/view/View;)V

    .line 244
    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_3_0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {p0}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils$SkinUtil;->getWindowBackgroundRes(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 256
    :cond_0
    new-instance v0, Lcom/android/mms/ui/UndeliveredMessagesActivity$MainListQueryHandler;

    invoke-virtual {p0}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/UndeliveredMessagesActivity$MainListQueryHandler;-><init>(Lcom/android/mms/ui/UndeliveredMessagesActivity;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mQueryHandler:Lcom/android/mms/ui/UndeliveredMessagesActivity$MainListQueryHandler;

    .line 259
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportShortCutForHWKey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    new-instance v0, Lcom/android/mms/ui/MsgHWkeypad;

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    invoke-virtual {p0}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mAdapter:Lcom/android/mms/ui/UndeliveredMessagesListAdapter;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/MsgHWkeypad;-><init>(Landroid/app/Activity;Lcom/android/mms/category/Category;JLcom/htc/widget/HtcListView;Landroid/widget/CursorAdapter;)V

    iput-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->keypad:Lcom/android/mms/ui/MsgHWkeypad;

    .line 262
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->initActivity()V

    .line 265
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mAdapter:Lcom/android/mms/ui/UndeliveredMessagesListAdapter;

    if-nez v0, :cond_2

    .line 266
    new-instance v0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/widget/HtcListView;)V

    iput-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mAdapter:Lcom/android/mms/ui/UndeliveredMessagesListAdapter;

    .line 268
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->initListView()V

    .line 271
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 378
    invoke-super {p0}, Lcom/htc/app/HtcListActivity;->onDestroy()V

    .line 380
    invoke-virtual {p0}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessagingController;->getSingleton(Landroid/content/Context;)Lcom/android/mms/ui/MessagingController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mUIlistenter:Lcom/android/mms/ui/MessagingListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingController;->removeListener(Lcom/android/mms/ui/MessagingListener;)V

    .line 383
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mAdapter:Lcom/android/mms/ui/UndeliveredMessagesListAdapter;

    if-eqz v0, :cond_1

    .line 387
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mAdapter:Lcom/android/mms/ui/UndeliveredMessagesListAdapter;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 388
    iput-object v2, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mAdapter:Lcom/android/mms/ui/UndeliveredMessagesListAdapter;

    .line 390
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mEditorHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 391
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mEditorHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 393
    :cond_2
    iput-object v2, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mQueryHandler:Lcom/android/mms/ui/UndeliveredMessagesActivity$MainListQueryHandler;

    .line 396
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mprogressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_3

    .line 397
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mprogressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 398
    iput-object v2, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mprogressDialog:Landroid/app/ProgressDialog;

    .line 400
    :cond_3
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 585
    iget-object v2, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->keypad:Lcom/android/mms/ui/MsgHWkeypad;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mAdapter:Lcom/android/mms/ui/UndeliveredMessagesListAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mAdapter:Lcom/android/mms/ui/UndeliveredMessagesListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 586
    sparse-switch p1, :sswitch_data_0

    .line 594
    iget-object v2, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->keypad:Lcom/android/mms/ui/MsgHWkeypad;

    invoke-virtual {v2, p1}, Lcom/android/mms/ui/MsgHWkeypad;->executeKeyCode(I)Z

    move-result v0

    .line 596
    .local v0, result:Z
    if-eqz v0, :cond_0

    .line 600
    .end local v0           #result:Z
    :goto_0
    :sswitch_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/app/HtcListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 586
    :sswitch_data_0
    .sparse-switch
        0x1d -> :sswitch_0
        0x1f -> :sswitch_0
        0x22 -> :sswitch_0
        0x2e -> :sswitch_0
        0x43 -> :sswitch_0
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 426
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 504
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 428
    :pswitch_0
    const-string v2, "ANALYTIC_Mms"

    const-string v3, "[UndeliveredMessagesActivity]Retry sending all"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    invoke-static {p0}, Lcom/android/mms/util/SpaceBufferUtil;->isLowStorage(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 431
    invoke-static {p0, v1}, Lcom/android/mms/ui/MessageUtils;->confirmStorageFullDialog(Landroid/content/Context;Z)V

    goto :goto_0

    .line 437
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 441
    const/4 v2, 0x0

    const v3, 0x7f090167

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {p0, v2, v3, v1, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mprogressDialog:Landroid/app/ProgressDialog;

    .line 448
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/mms/ui/UndeliveredMessagesActivity$2;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/UndeliveredMessagesActivity$2;-><init>(Lcom/android/mms/ui/UndeliveredMessagesActivity;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 475
    :pswitch_1
    const-string v2, "ANALYTIC_Mms"

    const-string v3, "[UndeliveredMessagesActivity]Delete messages"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    invoke-static {p0}, Lcom/android/mms/util/SpaceBufferUtil;->isNoStorage(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 478
    invoke-static {p0, v4}, Lcom/android/mms/ui/MessageUtils;->confirmStorageFullDialog(Landroid/content/Context;Z)V

    goto :goto_0

    .line 487
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/ui/MultipleDeleteActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 488
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "title"

    const v3, 0x7f09001d

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 490
    const-string v2, "category"

    iget v3, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mCategory:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 492
    const-string v2, "uri"

    sget-object v3, Landroid/provider/Telephony$MmsSms;->CONTENT_UNDELIVERED_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 493
    const-string v2, "projection"

    sget-object v3, Lcom/android/mms/ui/UndeliveredMessagesActivity;->DELETE_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 495
    const-string v2, "locked"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 496
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportLoadAnimation()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 497
    const-string v2, "query_limit"

    iget-object v3, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mAdapter:Lcom/android/mms/ui/UndeliveredMessagesListAdapter;

    iget v3, v3, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mCurrent_limit:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 499
    :cond_2
    const-string v2, "query_order"

    const-string v3, "date DESC"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 500
    invoke-virtual {p0, v0, v5}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    goto/16 :goto_0

    .line 426
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 371
    invoke-super {p0}, Lcom/htc/app/HtcListActivity;->onPause()V

    .line 372
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mAdapter:Lcom/android/mms/ui/UndeliveredMessagesListAdapter;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mAdapter:Lcom/android/mms/ui/UndeliveredMessagesListAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->setActivityInBackround(Z)V

    .line 374
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 404
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 406
    iget-object v2, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mAdapter:Lcom/android/mms/ui/UndeliveredMessagesListAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mAdapter:Lcom/android/mms/ui/UndeliveredMessagesListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 408
    const v2, 0x7f0900cb

    invoke-interface {p1, v3, v3, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 410
    .local v0, mi:Landroid/view/MenuItem;
    const v2, 0x7f02012f

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 411
    const/16 v2, 0x61

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 414
    const v2, 0x20c01fc

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 416
    const v2, 0x7f020121

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 417
    const/16 v2, 0x78

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 420
    .end local v0           #mi:Landroid/view/MenuItem;
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 360
    invoke-super {p0}, Lcom/htc/app/HtcListActivity;->onResume()V

    .line 361
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mAdapter:Lcom/android/mms/ui/UndeliveredMessagesListAdapter;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mAdapter:Lcom/android/mms/ui/UndeliveredMessagesListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->setActivityInBackround(Z)V

    .line 364
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->isNeedReQuery()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 366
    invoke-virtual {p0}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->startAsyncQuery()V

    .line 368
    :cond_1
    return-void
.end method

.method public refreshContactName()V
    .locals 3

    .prologue
    .line 946
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mEditorHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mEditorHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 947
    return-void
.end method

.method startAsyncQuery()V
    .locals 10

    .prologue
    .line 279
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mQueryHandler:Lcom/android/mms/ui/UndeliveredMessagesActivity$MainListQueryHandler;

    const/16 v1, 0x6a5

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/UndeliveredMessagesActivity$MainListQueryHandler;->cancelOperation(I)V

    .line 287
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportContactBaseConversation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_UNDELIVERED_V2_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    .line 291
    .local v8, builder:Landroid/net/Uri$Builder;
    :goto_0
    const-string v0, "category"

    iget v1, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mCategory:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 294
    const-string v7, "date DESC"

    .line 296
    .local v7, order:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportLoadAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mAdapter:Lcom/android/mms/ui/UndeliveredMessagesListAdapter;

    iget v1, v1, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mCurrent_limit:I

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->getQueryLimit(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mAdapter:Lcom/android/mms/ui/UndeliveredMessagesListAdapter;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->mCurrentCursorCount:I

    .line 300
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mQueryHandler:Lcom/android/mms/ui/UndeliveredMessagesActivity$MainListQueryHandler;

    const/4 v1, 0x0

    const/16 v2, 0x6a5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/android/mms/ui/UndeliveredMessagesActivity;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/UndeliveredMessagesActivity$MainListQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    .end local v7           #order:Ljava/lang/String;
    .end local v8           #builder:Landroid/net/Uri$Builder;
    :goto_1
    return-void

    .line 290
    :cond_1
    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_UNDELIVERED_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .restart local v8       #builder:Landroid/net/Uri$Builder;
    goto :goto_0

    .line 303
    .end local v8           #builder:Landroid/net/Uri$Builder;
    :catch_0
    move-exception v9

    .line 304
    .local v9, e:Landroid/database/sqlite/SQLiteException;
    invoke-static {p0, v9}, Lcom/google/android/mms/util/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_1
.end method
