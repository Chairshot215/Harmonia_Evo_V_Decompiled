.class public Lcom/android/mms/ui/ManageSimMessages;
.super Landroid/app/Activity;
.source "ManageSimMessages.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ManageSimMessages$DeleteAllAsyncTask;,
        Lcom/android/mms/ui/ManageSimMessages$SimSms;,
        Lcom/android/mms/ui/ManageSimMessages$CopyAllThread;,
        Lcom/android/mms/ui/ManageSimMessages$ChangeReadStatusTask;,
        Lcom/android/mms/ui/ManageSimMessages$copyToPhoneMemoryAsyncTask;,
        Lcom/android/mms/ui/ManageSimMessages$QueryHandler;
    }
.end annotation


# static fields
.field private static final MENU_COPY_TO_PHONE_MEMORY:I = 0x0

.field private static final MENU_DELETE_FROM_SIM:I = 0x1

.field private static final MENU_VIEW:I = 0x2

.field private static final OPTION_MENU_DELETE_ALL:I = 0x0

.field private static final OPTION_MENU_IMPORT_ALL:I = 0x1

.field private static final SHOW_BUSY:I = 0x2

.field private static final SHOW_EMPTY:I = 0x1

.field private static final SHOW_LIST:I = 0x0

.field private static final SHOW_NO_SIM:I = 0x3

.field public static final SIM_FULL_NOTIFICATION_ID:I = 0xea

.field private static final SIM_URI:Landroid/net/Uri; = null

.field private static final TAG:Ljava/lang/String; = "ManageSimMessages"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCopyToPhoneCursor:Landroid/database/Cursor;

.field private mCursor:Landroid/database/Cursor;

.field private mHeaderBar:Lcom/htc/widget/HeaderBar;

.field private mListAdapter:Lcom/android/mms/ui/SIMMessageListAdapter;

.field private mMessage:Landroid/widget/TextView;

.field private mProgressDialog:Lcom/htc/app/HtcProgressDialog;

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;

.field private mSimIcon:Landroid/view/View;

.field private mSimList:Lcom/htc/widget/HtcListView;

.field private mState:I

.field private mTextView:Landroid/widget/TextView;

.field private final simChangeObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const-string v0, "content://sms/sim"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/ManageSimMessages;->SIM_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 81
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 100
    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mCursor:Landroid/database/Cursor;

    .line 108
    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SIMMessageListAdapter;

    .line 109
    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 116
    new-instance v0, Lcom/android/mms/ui/ManageSimMessages$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/ManageSimMessages$1;-><init>(Lcom/android/mms/ui/ManageSimMessages;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->simChangeObserver:Landroid/database/ContentObserver;

    .line 920
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/ManageSimMessages;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->refreshMessageList()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/ManageSimMessages;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/ManageSimMessages;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->deleteAllFromSim()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/mms/ui/ManageSimMessages;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/mms/ui/ManageSimMessages;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/ManageSimMessages;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->initialize()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/ManageSimMessages;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mCopyToPhoneCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/ManageSimMessages;)Lcom/htc/app/HtcProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/ManageSimMessages;Landroid/database/Cursor;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ManageSimMessages;->copyToPhoneMemory(Landroid/database/Cursor;Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/ManageSimMessages;)Landroid/database/ContentObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->simChangeObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/ManageSimMessages;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ManageSimMessages;->updateState(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/ui/ManageSimMessages;)Lcom/android/mms/ui/SIMMessageListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SIMMessageListAdapter;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/mms/ui/ManageSimMessages;Lcom/android/mms/ui/SIMMessageListAdapter;)Lcom/android/mms/ui/SIMMessageListAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SIMMessageListAdapter;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/mms/ui/ManageSimMessages;)Lcom/htc/widget/HtcListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/ManageSimMessages;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->registerSimChangeObserver()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/ui/ManageSimMessages;Landroid/database/Cursor;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ManageSimMessages;->isIncomingMessage(Landroid/database/Cursor;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/ManageSimMessages;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method private confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;I)V
    .locals 3
    .parameter "listener"
    .parameter "messageId"

    .prologue
    .line 648
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 649
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v1, 0x20c01fc

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 650
    const v1, 0x7f0200d1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 651
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 652
    const v1, 0x20c015f

    invoke-virtual {v0, v1, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 653
    const v1, 0x20c0164

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 654
    invoke-virtual {v0, p2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 656
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 657
    return-void
.end method

.method private copyToPhoneMemory(Landroid/database/Cursor;Z)V
    .locals 11
    .parameter "cursor"
    .parameter "bShowMessage"

    .prologue
    const/4 v10, 0x1

    .line 499
    const-string v0, "address"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 501
    .local v1, address:Ljava/lang/String;
    const-string v0, "body"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 502
    .local v2, body:Ljava/lang/String;
    const-string v0, "date"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 504
    .local v4, date:Ljava/lang/Long;
    const/4 v7, 0x0

    .line 506
    .local v7, uri:Landroid/net/Uri;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ManageSimMessages;->isIncomingMessage(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 507
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Landroid/provider/Telephony$Sms$Inbox;->addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Z)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 515
    :goto_0
    if-ne p2, v10, :cond_0

    if-eqz v7, :cond_0

    .line 516
    const v0, 0x7f090244

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f09023b

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ManageSimMessages;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v0, v3}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    :cond_0
    return-void

    .line 509
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/provider/Telephony$Sms$Sent;->addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Landroid/net/Uri;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    goto :goto_0

    .line 511
    :catch_0
    move-exception v6

    .line 512
    .local v6, e:Landroid/database/sqlite/SQLiteException;
    invoke-static {p0, v6}, Lcom/google/android/mms/util/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method

.method private deleteAllFromSim()V
    .locals 8

    .prologue
    .line 570
    const/4 v0, 0x0

    .line 571
    .local v0, count:I
    iget-object v6, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SIMMessageListAdapter;

    invoke-virtual {v6}, Lcom/android/mms/ui/SIMMessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 572
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    .line 573
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 575
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ManageSimMessages;->copyCursorIndexToStructure(Landroid/database/Cursor;)[Lcom/android/mms/ui/ManageSimMessages$SimSms;

    move-result-object v3

    .line 577
    .local v3, smses:[Lcom/android/mms/ui/ManageSimMessages$SimSms;
    new-instance v4, Lcom/android/mms/ui/ManageSimMessages$DeleteAllAsyncTask;

    const/4 v6, 0x0

    invoke-direct {v4, p0, v6}, Lcom/android/mms/ui/ManageSimMessages$DeleteAllAsyncTask;-><init>(Lcom/android/mms/ui/ManageSimMessages;Lcom/android/mms/ui/ManageSimMessages$1;)V

    .line 579
    .local v4, task:Lcom/android/mms/ui/ManageSimMessages$DeleteAllAsyncTask;
    const v6, 0x7f0901cc

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/ManageSimMessages;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 580
    .local v5, title:Ljava/lang/CharSequence;
    const v6, 0x7f0903e4

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/ManageSimMessages;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 581
    .local v2, message:Ljava/lang/CharSequence;
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v7, 0x97

    if-ne v6, v7, :cond_1

    .line 582
    const v6, 0x7f09035c

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/ManageSimMessages;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 584
    :cond_1
    new-instance v6, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v6, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/mms/ui/ManageSimMessages;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 585
    iget-object v6, p0, Lcom/android/mms/ui/ManageSimMessages;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const v7, 0x7f0200d1

    invoke-virtual {v6, v7}, Lcom/htc/app/HtcProgressDialog;->setIcon(I)V

    .line 586
    iget-object v6, p0, Lcom/android/mms/ui/ManageSimMessages;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v6, v2}, Lcom/htc/app/HtcProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 588
    iget-object v6, p0, Lcom/android/mms/ui/ManageSimMessages;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/htc/app/HtcProgressDialog;->setProgressStyle(I)V

    .line 589
    iget-object v6, p0, Lcom/android/mms/ui/ManageSimMessages;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const/high16 v7, 0x104

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/ManageSimMessages;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Lcom/htc/app/HtcProgressDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 590
    iget-object v6, p0, Lcom/android/mms/ui/ManageSimMessages;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/htc/app/HtcProgressDialog;->setProgress(I)V

    .line 591
    iget-object v6, p0, Lcom/android/mms/ui/ManageSimMessages;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v6, v0}, Lcom/htc/app/HtcProgressDialog;->setMax(I)V

    .line 592
    iget-object v6, p0, Lcom/android/mms/ui/ManageSimMessages;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v6, v4}, Lcom/htc/app/HtcProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 593
    iget-object v6, p0, Lcom/android/mms/ui/ManageSimMessages;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v6}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 595
    invoke-virtual {v4, v3}, Lcom/android/mms/ui/ManageSimMessages$DeleteAllAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 596
    return-void
.end method

.method private importAllFromSim()V
    .locals 5

    .prologue
    .line 713
    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SIMMessageListAdapter;

    invoke-virtual {v3}, Lcom/android/mms/ui/SIMMessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/ManageSimMessages;->mCopyToPhoneCursor:Landroid/database/Cursor;

    .line 716
    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages;->mCopyToPhoneCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages;->mCopyToPhoneCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 718
    const v3, 0x7f0901d5

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ManageSimMessages;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 719
    .local v2, title:Ljava/lang/CharSequence;
    const v3, 0x7f0903eb

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ManageSimMessages;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 721
    .local v0, message:Ljava/lang/CharSequence;
    new-instance v1, Lcom/android/mms/ui/ManageSimMessages$CopyAllThread;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/android/mms/ui/ManageSimMessages$CopyAllThread;-><init>(Lcom/android/mms/ui/ManageSimMessages;Lcom/android/mms/ui/ManageSimMessages$1;)V

    .line 722
    .local v1, thread:Lcom/android/mms/ui/ManageSimMessages$CopyAllThread;
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/ManageSimMessages$CopyAllThread;->setPriority(I)V

    .line 724
    new-instance v3, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v3, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/mms/ui/ManageSimMessages;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 725
    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v3, v0}, Lcom/htc/app/HtcProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 727
    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/app/HtcProgressDialog;->setProgressStyle(I)V

    .line 728
    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const/high16 v4, 0x104

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/ManageSimMessages;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/htc/app/HtcProgressDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 729
    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/app/HtcProgressDialog;->setProgress(I)V

    .line 730
    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    iget-object v4, p0, Lcom/android/mms/ui/ManageSimMessages;->mCopyToPhoneCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/htc/app/HtcProgressDialog;->setMax(I)V

    .line 731
    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v3, v1}, Lcom/htc/app/HtcProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 732
    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v3}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 734
    invoke-virtual {v1}, Lcom/android/mms/ui/ManageSimMessages$CopyAllThread;->start()V

    .line 737
    .end local v0           #message:Ljava/lang/CharSequence;
    .end local v1           #thread:Lcom/android/mms/ui/ManageSimMessages$CopyAllThread;
    .end local v2           #title:Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method

.method private init_view()V
    .locals 5

    .prologue
    const v4, 0x7f0e00b1

    const/4 v3, 0x0

    .line 187
    const v1, 0x7f030034

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ManageSimMessages;->setContentView(I)V

    .line 189
    const v1, 0x7f0e00ac

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ManageSimMessages;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HeaderBar;

    iput-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    .line 190
    invoke-virtual {p0, v4}, Lcom/android/mms/ui/ManageSimMessages;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mTextView:Landroid/widget/TextView;

    .line 192
    const v1, 0x7f0e00ad

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ManageSimMessages;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarText;

    .line 194
    .local v0, titleText:Lcom/htc/widget/HeaderBarText;
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x97

    if-ne v1, v2, :cond_0

    .line 195
    const v1, 0x7f09035e

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 196
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mTextView:Landroid/widget/TextView;

    const v2, 0x7f09035f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 200
    :goto_0
    invoke-virtual {v0, v3}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 202
    const v1, 0x7f0e00ae

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ManageSimMessages;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListView;

    iput-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Lcom/htc/widget/HtcListView;

    .line 203
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListView;->setFillEmpty(Z)V

    .line 204
    invoke-virtual {p0, v4}, Lcom/android/mms/ui/ManageSimMessages;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mMessage:Landroid/widget/TextView;

    .line 205
    const v1, 0x7f0e00af

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ManageSimMessages;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimIcon:Landroid/view/View;

    .line 206
    return-void

    .line 198
    :cond_0
    const v1, 0x7f0903e6

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    goto :goto_0
.end method

.method private initialize()V
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->updateState(I)V

    .line 183
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->startQuery()V

    .line 184
    return-void
.end method

.method private isIncomingMessage(Landroid/database/Cursor;)Z
    .locals 3
    .parameter "cursor"

    .prologue
    const/4 v1, 0x1

    .line 561
    const-string v2, "type"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 563
    .local v0, messageType:I
    if-ne v0, v1, :cond_0

    .line 566
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isLocked(Landroid/view/ContextMenu$ContextMenuInfo;)Z
    .locals 13
    .parameter "menuInfo"

    .prologue
    const/4 v4, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 328
    move-object v7, p1

    check-cast v7, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;

    .line 329
    .local v7, info:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    iget v10, v7, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    .line 331
    .local v10, position:I
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    move v0, v11

    .line 357
    :goto_0
    return v0

    .line 333
    :cond_0
    if-ltz v10, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lt v10, v0, :cond_2

    :cond_1
    move v0, v11

    .line 334
    goto :goto_0

    .line 336
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mCursor:Landroid/database/Cursor;

    const-string v2, "index_on_sim"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 338
    .local v9, messageIndexString:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/mms/ui/ManageSimMessages;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://sms"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-array v2, v12, [Ljava/lang/String;

    const-string v3, "locked"

    aput-object v3, v2, v11

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "index_on_sim = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 341
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_3

    move v0, v11

    .line 342
    goto :goto_0

    .line 344
    :cond_3
    invoke-interface {v6, v11}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 346
    invoke-static {v6}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    move v0, v11

    .line 347
    goto :goto_0

    .line 350
    :cond_4
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 352
    .local v8, locked:I
    invoke-static {v6}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    .line 354
    if-nez v8, :cond_5

    move v0, v11

    .line 355
    goto :goto_0

    :cond_5
    move v0, v12

    .line 357
    goto :goto_0
.end method

.method private refreshMessageList()V
    .locals 1

    .prologue
    .line 311
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->updateState(I)V

    .line 312
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->stopManagingCursor(Landroid/database/Cursor;)V

    .line 316
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mCursor:Landroid/database/Cursor;

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SIMMessageListAdapter;

    if-eqz v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SIMMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/SIMMessageListAdapter;->clearMessageCache()V

    .line 324
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->startQuery()V

    .line 325
    return-void
.end method

.method private registerSimChangeObserver()V
    .locals 4

    .prologue
    .line 494
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/mms/ui/ManageSimMessages;->SIM_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages;->simChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 496
    return-void
.end method

.method private setItemClickable(Z)V
    .locals 2
    .parameter "canClick"

    .prologue
    .line 701
    if-eqz p1, :cond_0

    .line 702
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 705
    :goto_0
    return-void

    .line 704
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Lcom/htc/widget/HtcListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    goto :goto_0
.end method

.method private startQuery()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 300
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 303
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-object v3, Lcom/android/mms/ui/ManageSimMessages;->SIM_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    :goto_0
    return-void

    .line 304
    :catch_0
    move-exception v8

    .line 305
    .local v8, e:Landroid/database/sqlite/SQLiteException;
    invoke-static {p0, v8}, Lcom/google/android/mms/util/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method

.method private updateState(I)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 660
    iget v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mState:I

    if-ne v0, p1, :cond_0

    .line 696
    :goto_0
    return-void

    .line 664
    :cond_0
    iput p1, p0, Lcom/android/mms/ui/ManageSimMessages;->mState:I

    .line 665
    packed-switch p1, :pswitch_data_0

    .line 694
    const-string v0, "ManageSimMessages"

    const-string v1, "Invalid State"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 667
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->setItemClickable(Z)V

    .line 668
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListView;->setVisibility(I)V

    .line 669
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 670
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimIcon:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 671
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBar;->setProgressVisibility(I)V

    goto :goto_0

    .line 674
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setVisibility(I)V

    .line 675
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 676
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimIcon:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 677
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBar;->setProgressVisibility(I)V

    goto :goto_0

    .line 680
    :pswitch_2
    invoke-direct {p0, v2}, Lcom/android/mms/ui/ManageSimMessages;->setItemClickable(Z)V

    .line 681
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 682
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimIcon:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 683
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBar;->setProgressVisibility(I)V

    goto :goto_0

    .line 687
    :pswitch_3
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setVisibility(I)V

    .line 688
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 689
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimIcon:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 690
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBar;->setProgressVisibility(I)V

    goto :goto_0

    .line 665
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private viewMessage(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 710
    return-void
.end method


# virtual methods
.method copyCursorIndexToStructure(Landroid/database/Cursor;)[Lcom/android/mms/ui/ManageSimMessages$SimSms;
    .locals 8
    .parameter "cursor"

    .prologue
    const/4 v7, 0x1

    .line 880
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 881
    .local v4, simSms:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/ui/ManageSimMessages$SimSms;>;"
    const/4 v6, -0x1

    invoke-interface {p1, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 882
    const-string v6, "index_on_sim"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 883
    .local v0, index1:I
    const-string v6, "is_cdma_format"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 884
    .local v1, index3:I
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-ne v6, v7, :cond_2

    .line 885
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 886
    .local v2, ios:Ljava/lang/String;
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 887
    .local v3, isCdmaFormat:I
    invoke-static {v2}, Lcom/android/mms/util/SimIndexUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 888
    new-instance v5, Lcom/android/mms/ui/ManageSimMessages$SimSms;

    invoke-direct {v5, p0}, Lcom/android/mms/ui/ManageSimMessages$SimSms;-><init>(Lcom/android/mms/ui/ManageSimMessages;)V

    .line 889
    .local v5, sms:Lcom/android/mms/ui/ManageSimMessages$SimSms;
    invoke-static {v2}, Lcom/android/mms/util/SimIndexUtil;->getSimIndexes(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, v5, Lcom/android/mms/ui/ManageSimMessages$SimSms;->mIndexOnSim:Ljava/util/ArrayList;

    .line 890
    if-ne v3, v7, :cond_1

    move v6, v7

    :goto_1
    iput-boolean v6, v5, Lcom/android/mms/ui/ManageSimMessages$SimSms;->mIsCdmaFormat:Z

    .line 891
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 890
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 895
    .end local v2           #ios:Ljava/lang/String;
    .end local v3           #isCdmaFormat:I
    .end local v5           #sms:Lcom/android/mms/ui/ManageSimMessages$SimSms;
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Lcom/android/mms/ui/ManageSimMessages$SimSms;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/android/mms/ui/ManageSimMessages$SimSms;

    return-object v6
.end method

.method copyCursorUnreadIndexToStructure(Landroid/database/Cursor;)[Lcom/android/mms/ui/ManageSimMessages$SimSms;
    .locals 10
    .parameter "cursor"

    .prologue
    const/4 v9, 0x1

    .line 899
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 900
    .local v6, simSms:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/ui/ManageSimMessages$SimSms;>;"
    const/4 v8, -0x1

    invoke-interface {p1, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 901
    const-string v8, "index_on_sim"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 902
    .local v0, index1:I
    const-string v8, "read"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 903
    .local v1, index2:I
    const-string v8, "is_cdma_format"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 904
    .local v2, index3:I
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-ne v8, v9, :cond_2

    .line 905
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 906
    .local v3, ios:Ljava/lang/String;
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 907
    .local v5, read:I
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 908
    .local v4, isCdmaFormat:I
    invoke-static {v3}, Lcom/android/mms/util/SimIndexUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    if-nez v5, :cond_0

    .line 909
    new-instance v7, Lcom/android/mms/ui/ManageSimMessages$SimSms;

    invoke-direct {v7, p0}, Lcom/android/mms/ui/ManageSimMessages$SimSms;-><init>(Lcom/android/mms/ui/ManageSimMessages;)V

    .line 910
    .local v7, sms:Lcom/android/mms/ui/ManageSimMessages$SimSms;
    invoke-static {v3}, Lcom/android/mms/util/SimIndexUtil;->getSimIndexes(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    iput-object v8, v7, Lcom/android/mms/ui/ManageSimMessages$SimSms;->mIndexOnSim:Ljava/util/ArrayList;

    .line 911
    if-ne v4, v9, :cond_1

    move v8, v9

    :goto_1
    iput-boolean v8, v7, Lcom/android/mms/ui/ManageSimMessages$SimSms;->mIsCdmaFormat:Z

    .line 912
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 911
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 916
    .end local v3           #ios:Ljava/lang/String;
    .end local v4           #isCdmaFormat:I
    .end local v5           #read:I
    .end local v7           #sms:Lcom/android/mms/ui/ManageSimMessages$SimSms;
    :cond_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Lcom/android/mms/ui/ManageSimMessages$SimSms;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/android/mms/ui/ManageSimMessages$SimSms;

    return-object v8
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    const/4 v3, 0x1

    .line 148
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 149
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->init_view()V

    .line 152
    iget v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mState:I

    .line 153
    .local v0, oldState:I
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/mms/ui/ManageSimMessages;->mState:I

    .line 154
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ManageSimMessages;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 155
    .local v1, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 157
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/android/mms/ui/ManageSimMessages;->updateState(I)V

    .line 175
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ManageSimMessages;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/mms/ui/ManageSimMessages;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils$SkinUtil;->getWindowBackgroundRes(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 178
    return-void

    .line 161
    :cond_1
    if-ne v3, v0, :cond_2

    .line 162
    invoke-direct {p0, v3}, Lcom/android/mms/ui/ManageSimMessages;->updateState(I)V

    goto :goto_0

    .line 165
    :cond_2
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/mms/ui/ManageSimMessages;->updateState(I)V

    .line 166
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Lcom/htc/widget/HtcListView;

    if-eqz v2, :cond_0

    .line 168
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Lcom/htc/widget/HtcListView;

    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SIMMessageListAdapter;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 169
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v2, p0}, Lcom/htc/widget/HtcListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 383
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    .local v4, info:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    if-eqz v4, :cond_0

    .line 391
    iget-object v7, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SIMMessageListAdapter;

    iget v8, v4, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v7, v8}, Lcom/android/mms/ui/SIMMessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 392
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_1

    .line 473
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v4           #info:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    :cond_0
    :goto_0
    return v5

    .line 384
    :catch_0
    move-exception v3

    .line 385
    .local v3, exception:Ljava/lang/ClassCastException;
    const-string v6, "ManageSimMessages"

    const-string v7, "Bad menuInfo."

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 399
    .end local v3           #exception:Ljava/lang/ClassCastException;
    .restart local v0       #cursor:Landroid/database/Cursor;
    .restart local v4       #info:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    :cond_1
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/ManageSimMessages;->isFinishing()Z

    move-result v7

    if-nez v7, :cond_0

    .line 404
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 473
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v5

    goto :goto_0

    .line 406
    :pswitch_0
    const/4 v7, 0x2

    invoke-direct {p0, v7}, Lcom/android/mms/ui/ManageSimMessages;->updateState(I)V

    .line 407
    new-instance v7, Lcom/android/mms/ui/ManageSimMessages$copyToPhoneMemoryAsyncTask;

    invoke-direct {v7, p0, v0, v6}, Lcom/android/mms/ui/ManageSimMessages$copyToPhoneMemoryAsyncTask;-><init>(Lcom/android/mms/ui/ManageSimMessages;Landroid/database/Cursor;Z)V

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v7, v5}, Lcom/android/mms/ui/ManageSimMessages$copyToPhoneMemoryAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v5, v6

    .line 408
    goto :goto_0

    .line 411
    :pswitch_1
    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    .line 412
    .local v1, cursorpos:I
    const v2, 0x7f0903e5

    .line 413
    .local v2, delStr:I
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v7, 0x97

    if-ne v5, v7, :cond_2

    .line 414
    const v2, 0x7f09035d

    .line 416
    :cond_2
    new-instance v5, Lcom/android/mms/ui/ManageSimMessages$2;

    invoke-direct {v5, p0, v0, v1}, Lcom/android/mms/ui/ManageSimMessages$2;-><init>(Lcom/android/mms/ui/ManageSimMessages;Landroid/database/Cursor;I)V

    invoke-direct {p0, v5, v2}, Lcom/android/mms/ui/ManageSimMessages;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;I)V

    .line 465
    invoke-virtual {p0}, Lcom/android/mms/ui/ManageSimMessages;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/16 v7, 0xea

    invoke-static {v5, v7}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    move v5, v6

    .line 468
    goto :goto_0

    .line 470
    .end local v1           #cursorpos:I
    .end local v2           #delStr:I
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->viewMessage(Landroid/database/Cursor;)V

    move v5, v6

    .line 471
    goto :goto_0

    .line 404
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 127
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 128
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->requestWindowFeature(I)Z

    .line 129
    invoke-virtual {p0}, Lcom/android/mms/ui/ManageSimMessages;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mContentResolver:Landroid/content/ContentResolver;

    .line 130
    new-instance v0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;

    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, p0, v1, p0}, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;-><init>(Lcom/android/mms/ui/ManageSimMessages;Landroid/content/ContentResolver;Lcom/android/mms/ui/ManageSimMessages;)V

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 131
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->init_view()V

    .line 132
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->initialize()V

    .line 134
    invoke-virtual {p0}, Lcom/android/mms/ui/ManageSimMessages;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/ManageSimMessages;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils$SkinUtil;->getWindowBackgroundRes(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 137
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v2, 0x0

    .line 364
    const v0, 0x7f0900ce

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 367
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x97

    if-ne v0, v1, :cond_1

    .line 368
    const v0, 0x7f09035e

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 372
    :goto_0
    invoke-direct {p0, p3}, Lcom/android/mms/ui/ManageSimMessages;->isLocked(Landroid/view/ContextMenu$ContextMenuInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 373
    const/4 v0, 0x1

    const v1, 0x20c01fc

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 377
    :cond_0
    return-void

    .line 370
    :cond_1
    const v0, 0x7f0903e6

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 286
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 289
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 291
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 294
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 274
    packed-switch p1, :pswitch_data_0

    .line 281
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 276
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 277
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SIMMessageListAdapter;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SIMMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/SIMMessageListAdapter;->clearMessageCache()V

    goto :goto_0

    .line 274
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 141
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ManageSimMessages;->setIntent(Landroid/content/Intent;)V

    .line 142
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->initialize()V

    .line 143
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 616
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 644
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 618
    :pswitch_0
    const-string v0, "ANALYTIC_Mms"

    const-string v1, "[ManageSimMessages]Delete all"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x97

    if-ne v0, v1, :cond_0

    .line 621
    new-instance v0, Lcom/android/mms/ui/ManageSimMessages$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ManageSimMessages$3;-><init>(Lcom/android/mms/ui/ManageSimMessages;)V

    const v1, 0x7f09035c

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ManageSimMessages;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;I)V

    goto :goto_0

    .line 628
    :cond_0
    new-instance v0, Lcom/android/mms/ui/ManageSimMessages$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ManageSimMessages$4;-><init>(Lcom/android/mms/ui/ManageSimMessages;)V

    const v1, 0x7f0903e4

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ManageSimMessages;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;I)V

    goto :goto_0

    .line 638
    :pswitch_1
    const-string v0, "ANALYTIC_Mms"

    const-string v1, "[ManageSimMessages]Import all"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->importAllFromSim()V

    goto :goto_0

    .line 616
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 484
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 486
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SIMMessageListAdapter;

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SIMMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/SIMMessageListAdapter;->clearMessageCache()V

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->simChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 491
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 600
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 602
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mState:I

    if-nez v0, :cond_0

    .line 603
    const v0, 0x7f0900cc

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020121

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 606
    const v0, 0x7f090125

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02012b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 611
    :cond_0
    return v3
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 478
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 479
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->registerSimChangeObserver()V

    .line 480
    return-void
.end method
