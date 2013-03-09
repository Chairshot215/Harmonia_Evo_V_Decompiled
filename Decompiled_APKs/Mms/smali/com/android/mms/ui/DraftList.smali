.class public Lcom/android/mms/ui/DraftList;
.super Lcom/htc/app/HtcListActivity;
.source "DraftList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/DraftList$MainListQueryHandler;
    }
.end annotation


# static fields
.field static final COLUMN_ID:I = 0x1

.field static final COLUMN_MMS_BOX:I = 0xe

.field static final COLUMN_MMS_DATE:I = 0xb

.field static final COLUMN_MMS_LOCKED:I = 0xf

.field static final COLUMN_MMS_MSG_TYPE:I = 0xd

.field static final COLUMN_MMS_READ:I = 0xc

.field static final COLUMN_MMS_SUBJECT:I = 0x9

.field static final COLUMN_MMS_SUBJECT_CHARSET:I = 0xa

.field static final COLUMN_MSG_TYPE:I = 0x0

.field static final COLUMN_SMS_ADDRESS:I = 0x2

.field static final COLUMN_SMS_BODY:I = 0x3

.field static final COLUMN_SMS_BOX:I = 0x6

.field static final COLUMN_SMS_DATE:I = 0x4

.field static final COLUMN_SMS_LOCKED:I = 0x8

.field static final COLUMN_SMS_READ:I = 0x5

.field static final COLUMN_SMS_STATUS:I = 0x7

.field private static final DEBUG:Z = true

.field private static final DELETE_LIST_TOKEN:I = 0x709

.field private static final DELETE_PROJECTION:[Ljava/lang/String; = null

.field private static final LIST_QUERY_TOKEN:I = 0x6a5

.field private static final MENU_DELETE:I = 0x2

.field private static final MENU_DELETE_MESSAGES:I = 0x1

.field private static final MENU_EDIT:I = 0x0

.field private static final MENU_RETRY_SENDING:I = 0x1

.field private static final MENU_RETRY_SENDING_ALL:I = 0x0

.field static final MSG_FILTER_CONTACT_NAME:I = 0x64

.field private static final PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "DraftList"


# instance fields
.field private keypad:Lcom/android/mms/ui/MsgHWkeypad;

.field private mAdapter:Lcom/android/mms/ui/DraftMessagesListAdapter;

.field private mCategory:I

.field private final mConfirmDeleteMessageListener:Landroid/content/DialogInterface$OnClickListener;

.field private mCursor:Landroid/database/Cursor;

.field private final mCursorLock:Ljava/lang/Object;

.field private mDeleteDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mDuplicateCursor:Landroid/database/Cursor;

.field private final mEditorHandler:Landroid/os/Handler;

.field private final mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mQueryHandler:Lcom/android/mms/ui/DraftList$MainListQueryHandler;

.field private mTitle:Landroid/widget/TextView;

.field private mTitleShadow:Landroid/widget/TextView;

.field private mUIlistenter:Lcom/android/mms/ui/MessagingListener;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 120
    const/16 v0, 0x10

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

    const-string v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "locked"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "sub"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "sub_cs"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "date"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "read"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "m_type"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "msg_box"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "locked"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/DraftList;->PROJECTION:[Ljava/lang/String;

    .line 142
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

    sput-object v0, Lcom/android/mms/ui/DraftList;->DELETE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Lcom/htc/app/HtcListActivity;-><init>()V

    .line 111
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/DraftList;->mCursorLock:Ljava/lang/Object;

    .line 116
    iput-object v1, p0, Lcom/android/mms/ui/DraftList;->mDeleteDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 118
    iput-object v1, p0, Lcom/android/mms/ui/DraftList;->keypad:Lcom/android/mms/ui/MsgHWkeypad;

    .line 394
    new-instance v0, Lcom/android/mms/ui/DraftList$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/DraftList$2;-><init>(Lcom/android/mms/ui/DraftList;)V

    iput-object v0, p0, Lcom/android/mms/ui/DraftList;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 539
    new-instance v0, Lcom/android/mms/ui/DraftList$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/DraftList$3;-><init>(Lcom/android/mms/ui/DraftList;)V

    iput-object v0, p0, Lcom/android/mms/ui/DraftList;->mConfirmDeleteMessageListener:Landroid/content/DialogInterface$OnClickListener;

    .line 660
    new-instance v0, Lcom/android/mms/ui/DraftList$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/DraftList$4;-><init>(Lcom/android/mms/ui/DraftList;)V

    iput-object v0, p0, Lcom/android/mms/ui/DraftList;->mUIlistenter:Lcom/android/mms/ui/MessagingListener;

    .line 668
    new-instance v0, Lcom/android/mms/ui/DraftList$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/DraftList$5;-><init>(Lcom/android/mms/ui/DraftList;)V

    iput-object v0, p0, Lcom/android/mms/ui/DraftList;->mEditorHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/DraftList;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/mms/ui/DraftList;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/mms/ui/DraftList;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/mms/ui/DraftList;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/mms/ui/DraftList;JJLjava/lang/String;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 93
    invoke-direct/range {p0 .. p6}, Lcom/android/mms/ui/DraftList;->editMessage(JJLjava/lang/String;Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/DraftList;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/mms/ui/DraftList;->mDuplicateCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/mms/ui/DraftList;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/mms/ui/DraftList;->mDuplicateCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/mms/ui/DraftList;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/mms/ui/DraftList;->mCursorLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/DraftList;)Lcom/android/mms/ui/DraftMessagesListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/mms/ui/DraftList;->mAdapter:Lcom/android/mms/ui/DraftMessagesListAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/DraftList;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/mms/ui/DraftList;->mEditorHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private confirmDialog(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .parameter "messageId"
    .parameter "listener"

    .prologue
    .line 547
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 548
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v1, 0x7f0200d1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 549
    const v1, 0x20c01fc

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 550
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 551
    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 552
    const v1, 0x20c015f

    invoke-virtual {v0, v1, p2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 553
    const v1, 0x20c0164

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 555
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/DraftList;->mDeleteDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 556
    return-void
.end method

.method private editMessage(JJLjava/lang/String;Landroid/database/Cursor;)V
    .locals 15
    .parameter "threadId"
    .parameter "msgId"
    .parameter "msgType"
    .parameter "cur"

    .prologue
    .line 474
    invoke-static {p0}, Lcom/android/mms/util/SpaceBufferUtil;->isLowStorage(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 476
    const/4 v12, 0x1

    invoke-static {p0, v12}, Lcom/android/mms/ui/MessageUtils;->confirmStorageFullDialog(Landroid/content/Context;Z)V

    .line 536
    :goto_0
    return-void

    .line 481
    :cond_0
    new-instance v7, Landroid/content/Intent;

    const-class v12, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v7, p0, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 483
    .local v7, intent:Landroid/content/Intent;
    const-string v12, "category"

    iget v13, p0, Lcom/android/mms/ui/DraftList;->mCategory:I

    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 485
    const-string v12, "thread_id"

    move-wide/from16 v0, p1

    invoke-virtual {v7, v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 488
    const-string v12, "sms"

    move-object/from16 v0, p5

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 489
    const/4 v12, 0x2

    move-object/from16 v0, p6

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 490
    .local v4, address:Ljava/lang/String;
    const/4 v12, 0x3

    move-object/from16 v0, p6

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 491
    .local v5, body:Ljava/lang/String;
    const-string v12, "sms_body"

    invoke-virtual {v7, v12, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 530
    .end local v5           #body:Ljava/lang/String;
    :goto_1
    const-string v12, "address"

    invoke-virtual {v7, v12, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 531
    const-string v12, "from_draft"

    const/4 v13, 0x1

    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 532
    const-string v12, "msg_Id"

    move-wide/from16 v0, p3

    invoke-virtual {v7, v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 533
    const-string v12, "msg_type"

    move-object/from16 v0, p5

    invoke-virtual {v7, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 534
    const-string v12, "compose_mode"

    const/4 v13, 0x1

    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 535
    const/4 v12, -0x1

    invoke-virtual {p0, v7, v12}, Lcom/android/mms/ui/DraftList;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    goto :goto_0

    .line 493
    .end local v4           #address:Ljava/lang/String;
    :cond_1
    sget-object v12, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p3

    invoke-static {v12, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    .line 496
    .local v11, uri:Landroid/net/Uri;
    :try_start_0
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v12

    invoke-virtual {v12, v11}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v9

    check-cast v9, Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .local v9, msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    move-object v12, v9

    .line 502
    check-cast v12, Lcom/google/android/mms/pdu/SendReq;

    invoke-virtual {v12}, Lcom/google/android/mms/pdu/SendReq;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v10

    .line 506
    .local v10, sender:[Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportNGMGroupMessage()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 507
    invoke-virtual {p0}, Lcom/android/mms/ui/DraftList;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x20c016e

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #address:Ljava/lang/String;
    move-object v12, v9

    .line 508
    check-cast v12, Lcom/google/android/mms/pdu/SendReq;

    invoke-virtual {v12}, Lcom/google/android/mms/pdu/SendReq;->getBcc()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v2

    .line 509
    .local v2, Bcc:[Lcom/google/android/mms/pdu/EncodedStringValue;
    check-cast v9, Lcom/google/android/mms/pdu/SendReq;

    .end local v9           #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    invoke-virtual {v9}, Lcom/google/android/mms/pdu/SendReq;->getCc()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v3

    .line 510
    .local v3, Cc:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v10, :cond_2

    .line 511
    invoke-static {v10}, Lcom/google/android/mms/pdu/EncodedStringValue;->concat([Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v4

    .line 512
    :cond_2
    if-eqz v3, :cond_3

    .line 513
    invoke-static {v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->concat([Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v4

    .line 514
    :cond_3
    if-eqz v2, :cond_4

    .line 515
    invoke-static {v2}, Lcom/google/android/mms/pdu/EncodedStringValue;->concat([Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v4

    .line 525
    .end local v2           #Bcc:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v3           #Cc:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_4
    :goto_2
    const/16 v12, 0x9

    move-object/from16 v0, p6

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 526
    .local v8, mSubject:Ljava/lang/String;
    const-string v12, "subject"

    invoke-virtual {v7, v12, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 527
    sget-object v12, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p3

    invoke-static {v12, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    .line 528
    const-string v12, "msg_uri"

    invoke-virtual {v7, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 498
    .end local v4           #address:Ljava/lang/String;
    .end local v8           #mSubject:Ljava/lang/String;
    .end local v10           #sender:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_0
    move-exception v6

    .line 499
    .local v6, e:Lcom/google/android/mms/MmsException;
    const-string v12, "DraftList"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot load: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 518
    .end local v6           #e:Lcom/google/android/mms/MmsException;
    .restart local v9       #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    .restart local v10       #sender:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_5
    if-eqz v10, :cond_6

    .line 519
    check-cast v9, Lcom/google/android/mms/pdu/SendReq;

    .end local v9           #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    invoke-virtual {v9}, Lcom/google/android/mms/pdu/SendReq;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v12

    invoke-static {v12}, Lcom/google/android/mms/pdu/EncodedStringValue;->concat([Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #address:Ljava/lang/String;
    goto :goto_2

    .line 521
    .end local v4           #address:Ljava/lang/String;
    .restart local v9       #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :cond_6
    invoke-virtual {p0}, Lcom/android/mms/ui/DraftList;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x20c016e

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #address:Ljava/lang/String;
    goto :goto_2
.end method

.method private initActivity()V
    .locals 3

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/android/mms/ui/DraftList;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    .line 259
    .local v0, listView:Lcom/htc/widget/HtcListView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setFillEmpty(Z)V

    .line 260
    iget-object v1, p0, Lcom/android/mms/ui/DraftList;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 261
    new-instance v1, Lcom/android/mms/ui/DraftList$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/DraftList$1;-><init>(Lcom/android/mms/ui/DraftList;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 271
    invoke-virtual {p0}, Lcom/android/mms/ui/DraftList;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessagingController;->getSingleton(Landroid/content/Context;)Lcom/android/mms/ui/MessagingController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/DraftList;->mUIlistenter:Lcom/android/mms/ui/MessagingListener;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MessagingController;->addListener(Lcom/android/mms/ui/MessagingListener;)V

    .line 273
    return-void
.end method

.method private isNeedReQuery()Z
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/mms/ui/DraftList;->mQueryHandler:Lcom/android/mms/ui/DraftList$MainListQueryHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/DraftList;->mAdapter:Lcom/android/mms/ui/DraftMessagesListAdapter;

    if-eqz v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/android/mms/ui/DraftList;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/DraftList;->mAdapter:Lcom/android/mms/ui/DraftMessagesListAdapter;

    iget-boolean v0, v0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mNeedQuery:Z

    if-eqz v0, :cond_1

    .line 278
    :cond_0
    const/4 v0, 0x1

    .line 280
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method deleteMessageByCursor(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 10
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v2, 0x0

    .line 559
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 560
    .local v9, type:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 561
    .local v7, msgId:J
    const-string v0, "sms"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v6, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    .line 562
    .local v6, baseUri:Landroid/net/Uri;
    :goto_0
    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 563
    .local v3, deleteUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/ui/DraftList;->mQueryHandler:Lcom/android/mms/ui/DraftList$MainListQueryHandler;

    const/16 v1, 0x709

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/DraftList$MainListQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 565
    return-void

    .line 561
    .end local v3           #deleteUri:Landroid/net/Uri;
    .end local v6           #baseUri:Landroid/net/Uri;
    :cond_0
    sget-object v6, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    const/4 v2, 0x0

    .line 326
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 327
    iget-object v1, p0, Lcom/android/mms/ui/DraftList;->mDeleteDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v1, :cond_0

    .line 329
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/DraftList;->mDeleteDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    iput-object v2, p0, Lcom/android/mms/ui/DraftList;->mDeleteDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 336
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/DraftList;->closeContextMenu()V

    .line 339
    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_3_0()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 340
    invoke-virtual {p0}, Lcom/android/mms/ui/DraftList;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/mms/ui/DraftList;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils$SkinUtil;->getWindowBackgroundRes(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 344
    :cond_1
    return-void

    .line 330
    :catch_0
    move-exception v0

    .line 331
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 333
    iput-object v2, p0, Lcom/android/mms/ui/DraftList;->mDeleteDialog:Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iput-object v2, p0, Lcom/android/mms/ui/DraftList;->mDeleteDialog:Lcom/htc/widget/HtcAlertDialog;

    throw v1
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .parameter "item"

    .prologue
    const/4 v9, 0x0

    const/4 v0, 0x1

    .line 412
    const-wide/16 v1, 0x0

    .line 417
    .local v1, threadId:J
    :try_start_0
    iget-object v6, p0, Lcom/android/mms/ui/DraftList;->mDuplicateCursor:Landroid/database/Cursor;

    const/4 v8, 0x1

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 418
    .local v3, msgId:J
    iget-object v6, p0, Lcom/android/mms/ui/DraftList;->mDuplicateCursor:Landroid/database/Cursor;

    const/4 v8, 0x0

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 427
    .local v5, msgType:Ljava/lang/String;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 445
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/DraftList;->mDuplicateCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/android/mms/ui/DraftList;->mDuplicateCursor:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/android/mms/util/MmsAsyncWorkHandler;->CloseCursorInBG(Landroid/database/Cursor;)V

    .line 448
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .end local v3           #msgId:J
    .end local v5           #msgType:Ljava/lang/String;
    :goto_1
    return v0

    .line 419
    :catch_0
    move-exception v7

    .line 420
    .local v7, e:Landroid/database/CursorIndexOutOfBoundsException;
    const-string v6, "DraftList"

    const-string v8, "CursorIndexOutOfBoundsException on mCursor.getLong(COLUMN_ID), COLUMN_ID=1"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 422
    .end local v7           #e:Landroid/database/CursorIndexOutOfBoundsException;
    :catch_1
    move-exception v7

    .line 423
    .local v7, e:Ljava/lang/Exception;
    const-string v6, "DraftList"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getLong exception "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 429
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v3       #msgId:J
    .restart local v5       #msgType:Ljava/lang/String;
    :pswitch_1
    iget-object v6, p0, Lcom/android/mms/ui/DraftList;->mDuplicateCursor:Landroid/database/Cursor;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/DraftList;->editMessage(JJLjava/lang/String;Landroid/database/Cursor;)V

    goto :goto_0

    .line 433
    :pswitch_2
    invoke-static {p0}, Lcom/android/mms/util/SpaceBufferUtil;->isNoStorage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 435
    invoke-static {p0, v9}, Lcom/android/mms/ui/MessageUtils;->confirmStorageFullDialog(Landroid/content/Context;Z)V

    goto :goto_0

    .line 439
    :cond_1
    const v0, 0x7f0900ad

    iget-object v6, p0, Lcom/android/mms/ui/DraftList;->mConfirmDeleteMessageListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0, v0, v6}, Lcom/android/mms/ui/DraftList;->confirmDialog(ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 427
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 178
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 179
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/DraftList;->requestWindowFeature(I)Z

    .line 182
    sget-object v0, Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;->HEADER_SHORT:Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;

    const v1, 0x7f090134

    const/4 v3, -0x1

    invoke-static {p0, v0, v1, v3}, Lcom/android/mms/util/CommonActivityLayout;->createSimpleTextHeaderActivityLayout(Landroid/content/Context;Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;II)Lcom/android/mms/util/CommonActivityLayout$LayoutController;

    move-result-object v7

    .line 185
    .local v7, controller:Lcom/android/mms/util/CommonActivityLayout$LayoutController;
    invoke-virtual {v7}, Lcom/android/mms/util/CommonActivityLayout$LayoutController;->getActivityContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/DraftList;->setContentView(Landroid/view/View;)V

    .line 188
    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_3_0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/android/mms/ui/DraftList;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/DraftList;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils$SkinUtil;->getWindowBackgroundRes(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 196
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/DraftList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "category"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/DraftList;->mCategory:I

    .line 199
    new-instance v0, Lcom/android/mms/ui/DraftList$MainListQueryHandler;

    invoke-virtual {p0}, Lcom/android/mms/ui/DraftList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/DraftList$MainListQueryHandler;-><init>(Lcom/android/mms/ui/DraftList;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/mms/ui/DraftList;->mQueryHandler:Lcom/android/mms/ui/DraftList$MainListQueryHandler;

    .line 201
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportShortCutForHWKey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    new-instance v0, Lcom/android/mms/ui/MsgHWkeypad;

    const-wide/16 v3, -0x1

    invoke-virtual {p0}, Lcom/android/mms/ui/DraftList;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/DraftList;->mAdapter:Lcom/android/mms/ui/DraftMessagesListAdapter;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/MsgHWkeypad;-><init>(Landroid/app/Activity;Lcom/android/mms/category/Category;JLcom/htc/widget/HtcListView;Landroid/widget/CursorAdapter;)V

    iput-object v0, p0, Lcom/android/mms/ui/DraftList;->keypad:Lcom/android/mms/ui/MsgHWkeypad;

    .line 204
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/DraftList;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->setRoundedCorner(Landroid/view/View;)V

    .line 207
    invoke-direct {p0}, Lcom/android/mms/ui/DraftList;->initActivity()V

    .line 209
    iget-object v0, p0, Lcom/android/mms/ui/DraftList;->mAdapter:Lcom/android/mms/ui/DraftMessagesListAdapter;

    if-nez v0, :cond_3

    .line 210
    new-instance v0, Lcom/android/mms/ui/DraftMessagesListAdapter;

    invoke-virtual {p0}, Lcom/android/mms/ui/DraftList;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    invoke-direct {v0, p0, v2, v1}, Lcom/android/mms/ui/DraftMessagesListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/widget/HtcListView;)V

    iput-object v0, p0, Lcom/android/mms/ui/DraftList;->mAdapter:Lcom/android/mms/ui/DraftMessagesListAdapter;

    .line 211
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportLoadAnimation()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 212
    iget-object v0, p0, Lcom/android/mms/ui/DraftList;->mAdapter:Lcom/android/mms/ui/DraftMessagesListAdapter;

    invoke-virtual {p0}, Lcom/android/mms/ui/DraftList;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/DraftMessagesListAdapter;->addGetMoreView(Lcom/htc/widget/HtcListView;)V

    .line 213
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/DraftList;->mAdapter:Lcom/android/mms/ui/DraftMessagesListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/DraftList;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 215
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportLoadAnimation()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 216
    iget-object v0, p0, Lcom/android/mms/ui/DraftList;->mAdapter:Lcom/android/mms/ui/DraftMessagesListAdapter;

    invoke-virtual {p0}, Lcom/android/mms/ui/DraftList;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/DraftMessagesListAdapter;->removeGetMoreView(Lcom/htc/widget/HtcListView;)V

    .line 219
    :cond_3
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 310
    invoke-super {p0}, Lcom/htc/app/HtcListActivity;->onDestroy()V

    .line 312
    invoke-virtual {p0}, Lcom/android/mms/ui/DraftList;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessagingController;->getSingleton(Landroid/content/Context;)Lcom/android/mms/ui/MessagingController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/DraftList;->mUIlistenter:Lcom/android/mms/ui/MessagingListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingController;->removeListener(Lcom/android/mms/ui/MessagingListener;)V

    .line 315
    iget-object v0, p0, Lcom/android/mms/ui/DraftList;->mQueryHandler:Lcom/android/mms/ui/DraftList$MainListQueryHandler;

    if-eqz v0, :cond_0

    .line 316
    iput-object v2, p0, Lcom/android/mms/ui/DraftList;->mQueryHandler:Lcom/android/mms/ui/DraftList$MainListQueryHandler;

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/DraftList;->mAdapter:Lcom/android/mms/ui/DraftMessagesListAdapter;

    if-eqz v0, :cond_1

    .line 318
    iget-object v0, p0, Lcom/android/mms/ui/DraftList;->mAdapter:Lcom/android/mms/ui/DraftMessagesListAdapter;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/DraftMessagesListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 319
    iput-object v2, p0, Lcom/android/mms/ui/DraftList;->mAdapter:Lcom/android/mms/ui/DraftMessagesListAdapter;

    .line 321
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 454
    iget-object v2, p0, Lcom/android/mms/ui/DraftList;->keypad:Lcom/android/mms/ui/MsgHWkeypad;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/DraftList;->mAdapter:Lcom/android/mms/ui/DraftMessagesListAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/DraftList;->mAdapter:Lcom/android/mms/ui/DraftMessagesListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/ui/DraftMessagesListAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 455
    sparse-switch p1, :sswitch_data_0

    .line 463
    iget-object v2, p0, Lcom/android/mms/ui/DraftList;->keypad:Lcom/android/mms/ui/MsgHWkeypad;

    invoke-virtual {v2, p1}, Lcom/android/mms/ui/MsgHWkeypad;->executeKeyCode(I)Z

    move-result v0

    .line 465
    .local v0, result:Z
    if-eqz v0, :cond_0

    .line 469
    .end local v0           #result:Z
    :goto_0
    :sswitch_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/app/HtcListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 455
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
    .locals 5
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 365
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 390
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    .line 367
    :pswitch_0
    const-string v3, "ANALYTIC_Mms"

    const-string v4, "[DraftList]Delete messages"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    invoke-static {p0}, Lcom/android/mms/util/SpaceBufferUtil;->isNoStorage(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 370
    const/4 v3, 0x0

    invoke-static {p0, v3}, Lcom/android/mms/ui/MessageUtils;->confirmStorageFullDialog(Landroid/content/Context;Z)V

    goto :goto_0

    .line 376
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/android/mms/ui/MultipleDeleteActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 377
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "title"

    const v4, 0x7f090134

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 378
    const-string v3, "content://mms-sms-v2/draftlist"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 379
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v3, "category"

    iget v4, p0, Lcom/android/mms/ui/DraftList;->mCategory:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 380
    const-string v3, "uri"

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 381
    const-string v3, "projection"

    sget-object v4, Lcom/android/mms/ui/DraftList;->DELETE_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    const-string v3, "query_order"

    const-string v4, " normalized_date DESC "

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 383
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportLoadAnimation()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 384
    const-string v3, "query_limit"

    iget-object v4, p0, Lcom/android/mms/ui/DraftList;->mAdapter:Lcom/android/mms/ui/DraftMessagesListAdapter;

    iget v4, v4, Lcom/android/mms/ui/DraftMessagesListAdapter;->mCurrent_limit:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 386
    :cond_1
    const/4 v3, -0x1

    invoke-virtual {p0, v1, v3}, Lcom/android/mms/ui/DraftList;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    goto :goto_0

    .line 365
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 298
    invoke-super {p0}, Lcom/htc/app/HtcListActivity;->onPause()V

    .line 300
    iget-object v0, p0, Lcom/android/mms/ui/DraftList;->mDuplicateCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/android/mms/ui/DraftList;->mDuplicateCursor:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/android/mms/util/MmsAsyncWorkHandler;->CloseCursorInBG(Landroid/database/Cursor;)V

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/DraftList;->mAdapter:Lcom/android/mms/ui/DraftMessagesListAdapter;

    if-eqz v0, :cond_1

    .line 303
    iget-object v0, p0, Lcom/android/mms/ui/DraftList;->mAdapter:Lcom/android/mms/ui/DraftMessagesListAdapter;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mBackground:Z

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/DraftList;->mQueryHandler:Lcom/android/mms/ui/DraftList$MainListQueryHandler;

    if-eqz v0, :cond_2

    .line 305
    iget-object v0, p0, Lcom/android/mms/ui/DraftList;->mQueryHandler:Lcom/android/mms/ui/DraftList$MainListQueryHandler;

    const/16 v1, 0x6a5

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/DraftList$MainListQueryHandler;->cancelOperation(I)V

    .line 306
    :cond_2
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 349
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 351
    iget-object v2, p0, Lcom/android/mms/ui/DraftList;->mAdapter:Lcom/android/mms/ui/DraftMessagesListAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/DraftList;->mAdapter:Lcom/android/mms/ui/DraftMessagesListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/ui/DraftMessagesListAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 353
    const v2, 0x7f0902d5

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 355
    .local v0, mi:Landroid/view/MenuItem;
    const v2, 0x7f020121

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 356
    const/16 v2, 0x78

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 359
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
    .line 285
    invoke-super {p0}, Lcom/htc/app/HtcListActivity;->onResume()V

    .line 289
    iget-object v0, p0, Lcom/android/mms/ui/DraftList;->mAdapter:Lcom/android/mms/ui/DraftMessagesListAdapter;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/android/mms/ui/DraftList;->mAdapter:Lcom/android/mms/ui/DraftMessagesListAdapter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mBackground:Z

    .line 291
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/DraftList;->isNeedReQuery()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    invoke-virtual {p0}, Lcom/android/mms/ui/DraftList;->startAsyncQuery()V

    .line 294
    :cond_1
    return-void
.end method

.method public refreshContactName()V
    .locals 3

    .prologue
    .line 656
    iget-object v0, p0, Lcom/android/mms/ui/DraftList;->mEditorHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mms/ui/DraftList;->mEditorHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 657
    return-void
.end method

.method public startAsyncQuery()V
    .locals 11

    .prologue
    .line 223
    :try_start_0
    iget-object v10, p0, Lcom/android/mms/ui/DraftList;->mCursorLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/ui/DraftList;->mQueryHandler:Lcom/android/mms/ui/DraftList$MainListQueryHandler;

    const/16 v1, 0x6a5

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/DraftList$MainListQueryHandler;->cancelOperation(I)V

    .line 233
    const-string v0, "content://mms-sms-v2/draftlist"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    .line 234
    .local v8, builder:Landroid/net/Uri$Builder;
    const-string v0, "category"

    iget v1, p0, Lcom/android/mms/ui/DraftList;->mCategory:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 236
    const-string v7, " normalized_date DESC "

    .line 238
    .local v7, order:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportLoadAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/DraftList;->mAdapter:Lcom/android/mms/ui/DraftMessagesListAdapter;

    iget v1, v1, Lcom/android/mms/ui/DraftMessagesListAdapter;->mCurrent_limit:I

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->getQueryLimit(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/DraftList;->mQueryHandler:Lcom/android/mms/ui/DraftList$MainListQueryHandler;

    const/4 v1, 0x0

    const/16 v2, 0x6a5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/android/mms/ui/DraftList;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/DraftList$MainListQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    monitor-exit v10

    .line 250
    .end local v7           #order:Ljava/lang/String;
    .end local v8           #builder:Landroid/net/Uri$Builder;
    :goto_0
    return-void

    .line 246
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 247
    :catch_0
    move-exception v9

    .line 248
    .local v9, e:Landroid/database/sqlite/SQLiteException;
    invoke-static {p0, v9}, Lcom/google/android/mms/util/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method
