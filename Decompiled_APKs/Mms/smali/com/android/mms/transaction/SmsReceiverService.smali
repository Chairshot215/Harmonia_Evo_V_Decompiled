.class public Lcom/android/mms/transaction/SmsReceiverService;
.super Landroid/app/Service;
.source "SmsReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transaction/SmsReceiverService$MyPhoneStateListener;,
        Lcom/android/mms/transaction/SmsReceiverService$SenderObject;,
        Lcom/android/mms/transaction/SmsReceiverService$GsDialogListener;,
        Lcom/android/mms/transaction/SmsReceiverService$DialogListener;,
        Lcom/android/mms/transaction/SmsReceiverService$UpdateSimIndexAsyncTask;,
        Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;
    }
.end annotation


# static fields
.field public static final ACTION_SEND_MESSAGE:Ljava/lang/String; = "com.android.mms.transaction.SEND_MESSAGE"

.field private static final BODY_COLUMN_ID:I = 0x5

.field public static final CB_IMMEDIATE_MSG_KEY:Ljava/lang/String; = "CB_IMMEDIATE_MSG"

.field public static final CLASS_ZERO_BODY_KEY:Ljava/lang/String; = "CLASS_ZERO_BODY"

.field public static final CLASS_ZERO_TITLE_KEY:Ljava/lang/String; = "CLASS_ZERO_TITLE"

.field public static final CMAS_BODY_KEY:Ljava/lang/String; = "CMAS_BODY_KEY"

.field public static final CMAS_SYNC_SERVICE_TABLE_ACTION:Ljava/lang/String; = "android.message.CMAS_SYNC_SERVICE_TABLE"

.field private static final DATE2_COLUMN_ID:I = 0x7

.field private static final DATE_COLUMN_ID:I = 0x3

.field private static final DCS_216:I = 0xd8

.field private static final DEBUG:Z = false

.field private static final EVENT_SMS_CLEARMWI:I = 0x5

.field private static final EVENT_SMS_ERROR_DIALOG:I = 0x3

.field private static final EVENT_SMS_OUTOFSERVICE_TOAST:I = 0x4

.field public static final EXTRA_MESSAGE_SENT_SEND_NEXT:Ljava/lang/String; = "SendNextMsg"

.field public static final ISEVDO:Ljava/lang/String; = "isevdo"

.field private static IsInBlocklist:Z = false

.field public static final LBS_MESSAGE_RECEIVED_RECEIVE_ACTION:Ljava/lang/String; = "com.android.mms.transaction.LBSMESSAGE_RECEIVE"

.field private static final LOCAL_LOGV:Z = false

.field private static final MAX_SENDING_LIMIT:I = 0x1

.field public static final MESSAGE_MWICLEAR_RECEIVE_ACTION:Ljava/lang/String; = "com.android.mms.transaction.HTC_MWICLEAR_RECEIVE"

.field public static final MESSAGE_SENT_ACTION:Ljava/lang/String; = "com.android.mms.transaction.MESSAGE_SENT"

.field private static final MSG_FDN_ERROR:I = 0x9c2

.field private static final MSG_RADIO_ERROR:I = 0x1

.field public static final NOTIFICATION_NEW_MESSAGE:I = 0x1

.field private static final PID_65:I = 0x41

.field private static final READ_COLUMN_ID:I = 0x6

.field private static final REPLACE_COLUMN_ID:I = 0x0

.field private static final REPLACE_PROJECTION:[Ljava/lang/String; = null

.field private static final SEND_COLUMN_ADDRESS:I = 0x2

.field private static final SEND_COLUMN_BODY:I = 0x3

.field private static final SEND_COLUMN_CALLBACK_NUM:I = 0x5

.field private static final SEND_COLUMN_ID:I = 0x0

.field private static final SEND_COLUMN_PRIORITY:I = 0x4

.field private static final SEND_COLUMN_STATUS:I = 0x6

.field private static final SEND_COLUMN_THREAD_ID:I = 0x1

.field private static final SEND_MOREINFO_PROJECTION:[Ljava/lang/String; = null

.field private static final SEND_PROJECTION:[Ljava/lang/String; = null

.field public static final SEV_EVENT_CLEAR_NEW_MESSAGE_COUNT:I = 0x1

.field public static final SMS_EMAIL_NUMBER:Ljava/lang/String; = "6245"

.field private static final SMS_SENT_NO_SERVICE_DIALOG:I = 0x65

.field private static final TAG:Ljava/lang/String; = "SmsReceiverService"

.field private static final THREADID_COLUMN_ID:I = 0x4

.field private static final THREAD_PROJECTION:[Ljava/lang/String;

.field private static mSendingCnt:I

.field private static mSendingCntLock:Ljava/lang/Object;

.field public static mSmsMsgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static mUpdateLocked:Z

.field private static mcontext:Landroid/content/Context;

.field public static sMsgSenderList:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/mms/transaction/SmsReceiverService$SenderObject;",
            ">;"
        }
    .end annotation
.end field

.field public static sPhoneStateListener:Lcom/android/mms/transaction/SmsReceiverService$MyPhoneStateListener;

.field static s_GsListener:Lcom/android/mms/transaction/SmsReceiverService$GsDialogListener;

.field static s_listener:Lcom/android/mms/transaction/SmsReceiverService$DialogListener;


# instance fields
.field private final ID_PROJECTION:[Ljava/lang/String;

.field private mCurrentCBMsg:Ljava/lang/String;

.field private mIsNeedNotifyForReplaceSMS:Z

.field private mResultCode:I

.field private mServiceHandler:Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;

.field private mServiceLooper:Landroid/os/Looper;

.field public mToastHandler:Landroid/os/Handler;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 156
    sput v3, Lcom/android/mms/transaction/SmsReceiverService;->mSendingCnt:I

    .line 157
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/mms/transaction/SmsReceiverService;->mSendingCntLock:Ljava/lang/Object;

    .line 193
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "thread_id"

    aput-object v1, v0, v4

    const-string v1, "address"

    aput-object v1, v0, v5

    const-string v1, "body"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "priority"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "callback_number"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "status"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/transaction/SmsReceiverService;->SEND_PROJECTION:[Ljava/lang/String;

    .line 202
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "thread_id"

    aput-object v1, v0, v4

    const-string v1, "address"

    aput-object v1, v0, v5

    const-string v1, "body"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "priority"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "callback_number"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "status"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/transaction/SmsReceiverService;->SEND_MOREINFO_PROJECTION:[Ljava/lang/String;

    .line 212
    sput-object v6, Lcom/android/mms/transaction/SmsReceiverService;->mcontext:Landroid/content/Context;

    .line 213
    sput-boolean v3, Lcom/android/mms/transaction/SmsReceiverService;->IsInBlocklist:Z

    .line 230
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "recipient_address"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/mms/transaction/SmsReceiverService;->THREAD_PROJECTION:[Ljava/lang/String;

    .line 246
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/mms/transaction/SmsReceiverService;->sMsgSenderList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2292
    sput-boolean v3, Lcom/android/mms/transaction/SmsReceiverService;->mUpdateLocked:Z

    .line 2616
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "address"

    aput-object v1, v0, v4

    const-string v1, "protocol"

    aput-object v1, v0, v5

    const-string v1, "date"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "thread_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "body"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "date2"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/transaction/SmsReceiverService;->REPLACE_PROJECTION:[Ljava/lang/String;

    .line 3466
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/android/mms/transaction/SmsReceiverService;->mSmsMsgMap:Ljava/util/HashMap;

    .line 3467
    new-instance v0, Lcom/android/mms/transaction/SmsReceiverService$DialogListener;

    invoke-direct {v0, v6}, Lcom/android/mms/transaction/SmsReceiverService$DialogListener;-><init>(Lcom/android/mms/transaction/SmsReceiverService$1;)V

    sput-object v0, Lcom/android/mms/transaction/SmsReceiverService;->s_listener:Lcom/android/mms/transaction/SmsReceiverService$DialogListener;

    .line 4062
    new-instance v0, Lcom/android/mms/transaction/SmsReceiverService$GsDialogListener;

    invoke-direct {v0, v6}, Lcom/android/mms/transaction/SmsReceiverService$GsDialogListener;-><init>(Lcom/android/mms/transaction/SmsReceiverService$1;)V

    sput-object v0, Lcom/android/mms/transaction/SmsReceiverService;->s_GsListener:Lcom/android/mms/transaction/SmsReceiverService$GsDialogListener;

    .line 4385
    sput-object v6, Lcom/android/mms/transaction/SmsReceiverService;->sPhoneStateListener:Lcom/android/mms/transaction/SmsReceiverService$MyPhoneStateListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 148
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 227
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "address"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->ID_PROJECTION:[Ljava/lang/String;

    .line 253
    new-instance v0, Lcom/android/mms/transaction/SmsReceiverService$1;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/SmsReceiverService$1;-><init>(Lcom/android/mms/transaction/SmsReceiverService;)V

    iput-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mToastHandler:Landroid/os/Handler;

    .line 2610
    iput-boolean v3, p0, Lcom/android/mms/transaction/SmsReceiverService;->mIsNeedNotifyForReplaceSMS:Z

    .line 4394
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/transaction/SmsReceiverService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mCurrentCBMsg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->handleSmsSent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/mms/transaction/SmsReceiverService;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->copyAllMsgToPhone(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->handleUnSupSmsReceived(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1400(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 148
    invoke-static {p0}, Lcom/android/mms/transaction/SmsReceiverService;->unRegisterPhoneStateListener(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/transaction/SmsReceiverService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/android/mms/transaction/SmsReceiverService;->acquireBrightScreeen()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->handleCBReceived(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 148
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/SmsReceiverService;->handleSmsReceived(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->handleMwiClearReceived(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/transaction/SmsReceiverService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/android/mms/transaction/SmsReceiverService;->handleBootCompleted()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/transaction/SmsReceiverService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->updateNotificationAndShortcutStatus(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->handleServiceStateChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/mms/transaction/SmsReceiverService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/android/mms/transaction/SmsReceiverService;->handleSendMessage()V

    return-void
.end method

.method private acquireBrightScreeen()V
    .locals 4

    .prologue
    .line 424
    invoke-static {p0}, Lcom/htc/util/settings/NotificationFlashLightUtility;->getSms(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 436
    :goto_0
    return-void

    .line 427
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 429
    .local v0, pm:Landroid/os/PowerManager;
    const v1, 0x3000000a

    const-string v2, "SmsReceiverService"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 431
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_1

    .line 432
    iget-object v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 435
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    goto :goto_0

    .line 434
    :cond_1
    iget-object v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto :goto_1
.end method

.method private asyncMoveMessageToFolder(Landroid/net/Uri;II)V
    .locals 1
    .parameter "uri"
    .parameter "type"
    .parameter "errorCode"

    .prologue
    .line 940
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/mms/transaction/SmsReceiverService;->asyncMoveMessageToFolder(Landroid/net/Uri;IIZ)V

    .line 941
    return-void
.end method

.method private asyncMoveMessageToFolder(Landroid/net/Uri;IIZ)V
    .locals 7
    .parameter "uri"
    .parameter "type"
    .parameter "errorCode"
    .parameter "autosend"

    .prologue
    .line 945
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/android/mms/transaction/SmsReceiverService$2;

    move-object v1, p0

    move v2, p2

    move-object v3, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/transaction/SmsReceiverService$2;-><init>(Lcom/android/mms/transaction/SmsReceiverService;ILandroid/net/Uri;IZ)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 962
    return-void
.end method

.method private static changeOriginatingAddress(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 12
    .parameter "sms_body"
    .parameter "values"

    .prologue
    const/4 v11, 0x0

    .line 4201
    if-eqz p0, :cond_4

    .line 4202
    const-string v8, "body"

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4204
    new-instance v5, Landroid/text/SpannableString;

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 4205
    .local v5, text:Landroid/text/SpannableString;
    const/16 v8, 0xf

    invoke-static {v5, v8}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 4206
    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v8

    const-class v9, Landroid/text/style/URLSpan;

    invoke-virtual {v5, v11, v8, v9}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/text/style/URLSpan;

    invoke-static {v8}, Lcom/android/mms/ui/MessageUtils;->extractUris([Landroid/text/style/URLSpan;)Ljava/util/ArrayList;

    move-result-object v7

    .line 4208
    .local v7, uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_4

    .line 4209
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 4212
    .local v6, uriString:Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 4213
    const-string v8, ":"

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 4214
    .local v3, sep:I
    const/4 v2, 0x0

    .line 4215
    .local v2, prefix:Ljava/lang/String;
    if-ltz v3, :cond_0

    .line 4216
    invoke-virtual {v6, v11, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 4217
    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 4219
    :cond_0
    const-string v8, "mailto"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 4220
    const-string v8, "SmsReceiverService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "extract destination:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4221
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p0, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 4222
    .local v0, emailAddr:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 4223
    .local v1, messageBody:Ljava/lang/String;
    const-string v8, "SmsReceiverService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Email Addr:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Extract Message Body:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4224
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 4225
    const-string v8, "SmsReceiverService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Change destination To:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Body:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4226
    const-string v8, "address"

    invoke-virtual {p1, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4227
    const-string v8, "body"

    invoke-virtual {p1, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4230
    :cond_1
    sget-short v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v9, 0x94

    if-eq v8, v9, :cond_2

    sget-short v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v9, 0xa8

    if-ne v8, v9, :cond_3

    :cond_2
    const-string v8, "address"

    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 4234
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_3

    .line 4235
    const-string v8, "address"

    invoke-virtual {p1, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4240
    .end local v0           #emailAddr:Ljava/lang/String;
    .end local v1           #messageBody:Ljava/lang/String;
    :cond_3
    const-string v8, "SmsReceiverService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "extract pre-tel: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4241
    const-string v8, "tel"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 4242
    const-string v8, "SmsReceiverService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "extract tel: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4243
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p0, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 4246
    .local v4, smsbodyStartString:Ljava/lang/String;
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 4248
    const-string v8, " "

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 4249
    if-lez v3, :cond_5

    .line 4250
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p0, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 4255
    .restart local v1       #messageBody:Ljava/lang/String;
    :goto_0
    const-string v8, "SmsReceiverService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Change destination To:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Body:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4256
    const-string v8, "address"

    invoke-virtual {p1, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4257
    const-string v8, "body"

    invoke-virtual {p1, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4264
    .end local v1           #messageBody:Ljava/lang/String;
    .end local v2           #prefix:Ljava/lang/String;
    .end local v3           #sep:I
    .end local v4           #smsbodyStartString:Ljava/lang/String;
    .end local v5           #text:Landroid/text/SpannableString;
    .end local v6           #uriString:Ljava/lang/String;
    .end local v7           #uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    return-void

    .line 4252
    .restart local v2       #prefix:Ljava/lang/String;
    .restart local v3       #sep:I
    .restart local v4       #smsbodyStartString:Ljava/lang/String;
    .restart local v5       #text:Landroid/text/SpannableString;
    .restart local v6       #uriString:Ljava/lang/String;
    .restart local v7       #uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #messageBody:Ljava/lang/String;
    goto :goto_0
.end method

.method private checkIfNeedAck(Landroid/content/Intent;)V
    .locals 3
    .parameter "it"

    .prologue
    .line 927
    const-string v1, "ack_dm"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 928
    new-instance v0, Landroid/content/Intent;

    const-string v1, "DM_SMS_SENT"

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 929
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "mResultCode"

    iget v2, p0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 933
    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/SmsReceiverService;->sendBroadcast(Landroid/content/Intent;)V

    .line 936
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private converCdmaErrorCauseCodeToastMessage(ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "value"
    .parameter "errorCode"

    .prologue
    const v4, 0x7f09018d

    const v1, 0x7f09018a

    const v0, 0x7f090184

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2035
    packed-switch p1, :pswitch_data_0

    .line 2286
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2036
    :pswitch_1
    const v0, 0x7f09017f

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/SmsReceiverService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2037
    :pswitch_2
    const v0, 0x7f090180

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/SmsReceiverService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2038
    :pswitch_3
    const v0, 0x7f090181

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/SmsReceiverService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2039
    :pswitch_4
    const v0, 0x7f090182

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/SmsReceiverService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2040
    :pswitch_5
    const v0, 0x7f090183

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/SmsReceiverService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2041
    :pswitch_6
    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/SmsReceiverService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2067
    :pswitch_7
    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/SmsReceiverService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2068
    :pswitch_8
    const v0, 0x7f090185

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/SmsReceiverService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2069
    :pswitch_9
    const v0, 0x7f090186

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/SmsReceiverService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2070
    :pswitch_a
    const v0, 0x7f090188

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/SmsReceiverService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2071
    :pswitch_b
    const v0, 0x7f090189

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/SmsReceiverService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2072
    :pswitch_c
    invoke-virtual {p0, v1}, Lcom/android/mms/transaction/SmsReceiverService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2073
    :pswitch_d
    const v0, 0x7f09018b

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/SmsReceiverService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2074
    :pswitch_e
    const v0, 0x7f09018c

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/SmsReceiverService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2075
    :pswitch_f
    invoke-virtual {p0, v4}, Lcom/android/mms/transaction/SmsReceiverService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2083
    :pswitch_10
    invoke-virtual {p0, v4}, Lcom/android/mms/transaction/SmsReceiverService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2099
    :pswitch_11
    invoke-virtual {p0, v1}, Lcom/android/mms/transaction/SmsReceiverService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2100
    :pswitch_12
    const v0, 0x7f09018e

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/SmsReceiverService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2101
    :pswitch_13
    const v0, 0x7f09018f

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/SmsReceiverService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 2102
    :pswitch_14
    const v0, 0x7f090190

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/SmsReceiverService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 2132
    :pswitch_15
    const v0, 0x7f090191

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/SmsReceiverService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 2134
    :pswitch_16
    invoke-static {}, Lcom/android/mms/MmsApp;->isIotProject()Z

    move-result v0

    if-ne v0, v2, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xa8

    if-ne v0, v1, :cond_0

    .line 2135
    const v0, 0x7f090192

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/transaction/SmsReceiverService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 2137
    :cond_0
    const v0, 0x7f090193

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/transaction/SmsReceiverService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 2138
    :pswitch_17
    const v0, 0x7f090194

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/SmsReceiverService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 2139
    :pswitch_18
    const v0, 0x7f090195

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/SmsReceiverService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 2140
    :pswitch_19
    const v0, 0x7f090196

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/SmsReceiverService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 2141
    :pswitch_1a
    const v0, 0x7f090197

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/SmsReceiverService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 2142
    :pswitch_1b
    const v0, 0x7f090198

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/SmsReceiverService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 2143
    :pswitch_1c
    const v0, 0x7f090199

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/SmsReceiverService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 2144
    :pswitch_1d
    const v0, 0x7f09019a

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/SmsReceiverService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 2145
    :pswitch_1e
    const v0, 0x7f09019b

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/SmsReceiverService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 2146
    :pswitch_1f
    const v0, 0x7f09019d

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/transaction/SmsReceiverService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 2147
    :pswitch_20
    const v0, 0x7f09019e

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/SmsReceiverService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 2284
    :pswitch_21
    const v0, 0x7f09019e

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/SmsReceiverService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 2035
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
    .end packed-switch
.end method

.method private converVerizonCdmaErrorCauseCodeToastMessage(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "value"
    .parameter "errorCode"

    .prologue
    .line 1778
    sparse-switch p1, :sswitch_data_0

    .line 2025
    const v0, 0x7f0901f2

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/SmsReceiverService;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1810
    :sswitch_0
    const v0, 0x7f0901ed

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/SmsReceiverService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1876
    :sswitch_1
    const v0, 0x7f0901ee

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/SmsReceiverService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1877
    :sswitch_2
    const v0, 0x7f0901ef

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/transaction/SmsReceiverService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1879
    :sswitch_3
    const v0, 0x7f0901f1

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/SmsReceiverService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1885
    :sswitch_4
    const v0, 0x7f0901f0

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/SmsReceiverService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1778
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
        0x7 -> :sswitch_0
        0x8 -> :sswitch_0
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0xe -> :sswitch_0
        0xf -> :sswitch_0
        0x10 -> :sswitch_0
        0x11 -> :sswitch_0
        0x12 -> :sswitch_0
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1a -> :sswitch_0
        0x1b -> :sswitch_0
        0x1c -> :sswitch_0
        0x1d -> :sswitch_0
        0x1e -> :sswitch_0
        0x1f -> :sswitch_0
        0x61 -> :sswitch_1
        0x62 -> :sswitch_2
        0x64 -> :sswitch_3
        0x6a -> :sswitch_4
    .end sparse-switch
.end method

.method private convertCdmaErrorCauseCodeToastMessage(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "errorCause"
    .parameter "errorStr"

    .prologue
    .line 1500
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xa8

    if-ne v1, v2, :cond_0

    .line 1501
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/SmsReceiverService;->converVerizonCdmaErrorCauseCodeToastMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1505
    .local v0, txt:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1503
    .end local v0           #txt:Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/SmsReceiverService;->converCdmaErrorCauseCodeToastMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #txt:Ljava/lang/String;
    goto :goto_0
.end method

.method private copyAllMsgToPhone(Landroid/database/Cursor;)V
    .locals 6
    .parameter "mCursor"

    .prologue
    const/4 v5, 0x1

    .line 4270
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 4272
    .local v1, nCount:I
    if-lez v1, :cond_2

    .line 4274
    const-string v4, "power"

    invoke-virtual {p0, v4}, Lcom/android/mms/transaction/SmsReceiverService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 4275
    .local v3, pm:Landroid/os/PowerManager;
    const-string v4, "SmsReceiverService"

    invoke-virtual {v3, v5, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    .line 4278
    .local v2, partialWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4279
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 4280
    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v4

    if-ne v4, v5, :cond_0

    .line 4281
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->copyToPhoneMemory(Landroid/database/Cursor;)V

    .line 4279
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4286
    :cond_1
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4290
    .end local v0           #i:I
    .end local v2           #partialWakeLock:Landroid/os/PowerManager$WakeLock;
    .end local v3           #pm:Landroid/os/PowerManager;
    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_3

    .line 4291
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 4292
    :cond_3
    return-void
.end method

.method private copyMoSmsToUICC(Landroid/content/Intent;)V
    .locals 12
    .parameter "intent"

    .prologue
    .line 1561
    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v10, 0x61

    if-eq v9, v10, :cond_0

    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v10, 0xad

    if-ne v9, v10, :cond_2

    :cond_0
    const-string v9, "gsm.vzw.sms.writeuicc"

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 1565
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    .line 1566
    .local v7, uri:Landroid/net/Uri;
    const-string v9, "under_retry"

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 1567
    .local v6, underRetry:Z
    const-string v9, "result"

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1568
    .local v0, iResultCode:I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_4

    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->isCdmaMo()Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    .line 1570
    const/4 v2, 0x0

    .line 1571
    .local v2, indexes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v9, -0x1

    if-ne v0, v9, :cond_3

    .line 1572
    const/4 v9, 0x5

    invoke-static {v7, v9}, Lcom/android/mms/util/SimIoUtil;->savetoCSIM(Landroid/net/Uri;I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1578
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_2

    .line 1579
    new-instance v8, Landroid/content/ContentValues;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 1580
    .local v8, values:Landroid/content/ContentValues;
    const-string v9, "index_on_sim"

    invoke-static {v2}, Lcom/android/mms/util/SimIndexUtil;->turnIndexesToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1581
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v7, v8, v10, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1599
    .end local v0           #iResultCode:I
    .end local v2           #indexes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v6           #underRetry:Z
    .end local v7           #uri:Landroid/net/Uri;
    .end local v8           #values:Landroid/content/ContentValues;
    :cond_2
    :goto_1
    return-void

    .line 1573
    .restart local v0       #iResultCode:I
    .restart local v2       #indexes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v6       #underRetry:Z
    .restart local v7       #uri:Landroid/net/Uri;
    :cond_3
    if-nez v6, :cond_1

    const-string v9, "bFirstOfAll"

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    .line 1574
    const/4 v9, 0x7

    invoke-static {v7, v9}, Lcom/android/mms/util/SimIoUtil;->savetoCSIM(Landroid/net/Uri;I)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0

    .line 1584
    .end local v2           #indexes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_4
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v5

    .line 1585
    .local v5, smsManager:Landroid/telephony/SmsManager;
    const-string v9, "pdu"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v4

    .line 1586
    .local v4, pdu:[B
    invoke-static {v4}, Lcom/android/mms/util/SimIoUtil;->fillGsmSubmitPduWithValidityTime([B)[B

    move-result-object v3

    .line 1587
    .local v3, newPdu:[B
    const/4 v1, 0x0

    .line 1588
    .local v1, index:I
    if-eqz v3, :cond_5

    .line 1589
    const/4 v9, -0x1

    if-ne v0, v9, :cond_6

    .line 1590
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x5

    invoke-virtual {v5, v9, v10, v3, v11}, Landroid/telephony/SmsManager;->copyMessageToIccForResult(Z[B[BI)I

    move-result v1

    .line 1594
    :cond_5
    :goto_2
    if-lez v1, :cond_2

    .line 1595
    new-instance v9, Lcom/android/mms/transaction/SmsReceiverService$UpdateSimIndexAsyncTask;

    invoke-direct {v9, v1, v7}, Lcom/android/mms/transaction/SmsReceiverService$UpdateSimIndexAsyncTask;-><init>(ILandroid/net/Uri;)V

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Void;

    invoke-virtual {v9, v10}, Lcom/android/mms/transaction/SmsReceiverService$UpdateSimIndexAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 1591
    :cond_6
    if-nez v6, :cond_5

    const-string v9, "bFirstOfAll"

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    .line 1592
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x7

    invoke-virtual {v5, v9, v10, v3, v11}, Landroid/telephony/SmsManager;->copyMessageToIccForResult(Z[B[BI)I

    move-result v1

    goto :goto_2
.end method

.method private copyToPhoneMemory(Landroid/database/Cursor;)V
    .locals 11
    .parameter "cursor"

    .prologue
    .line 4295
    const-string v0, "address"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4297
    .local v1, address:Ljava/lang/String;
    const-string v0, "body"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4298
    .local v2, body:Ljava/lang/String;
    const-string v0, "date"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 4299
    .local v4, date:Ljava/lang/Long;
    const-string v0, "index_on_sim"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 4300
    .local v6, sIndexes:Ljava/lang/String;
    const-string v0, "read"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 4303
    .local v8, read:I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    if-nez v8, :cond_0

    const/4 v5, 0x0

    :goto_0
    invoke-static/range {v0 .. v6}, Landroid/provider/Telephony$Sms$Inbox;->addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZLjava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4307
    :goto_1
    return-void

    .line 4303
    :cond_0
    const/4 v5, 0x1

    goto :goto_0

    .line 4304
    :catch_0
    move-exception v7

    .line 4305
    .local v7, e:Landroid/database/sqlite/SQLiteException;
    invoke-static {p0, v7}, Lcom/google/android/mms/util/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_1
.end method

.method private displayClassZeroMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;Z)V
    .locals 11
    .parameter "context"
    .parameter "msgs"
    .parameter "isevdo"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 3505
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3506
    .local v2, sb:Ljava/lang/StringBuilder;
    array-length v7, p2

    if-ne v7, v10, :cond_3

    .line 3507
    aget-object v7, p2, v9

    invoke-virtual {v7}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_2

    const v7, 0x7f09011d

    invoke-virtual {p0, v7}, Lcom/android/mms/transaction/SmsReceiverService;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_0
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3514
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3516
    .local v4, str:Ljava/lang/String;
    const-string v7, "\r\n"

    const-string v8, "\n"

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3517
    const-string v7, "\r"

    const-string v8, ""

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3520
    new-instance v0, Lcom/android/mms/util/ScheduledDialogActivity$dialogAttr;

    invoke-direct {v0}, Lcom/android/mms/util/ScheduledDialogActivity$dialogAttr;-><init>()V

    .line 3521
    .local v0, attr:Lcom/android/mms/util/ScheduledDialogActivity$dialogAttr;
    iput-object v4, v0, Lcom/android/mms/util/ScheduledDialogActivity$dialogAttr;->bodyStr:Ljava/lang/String;

    .line 3522
    const v7, 0x7f0900b6

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/mms/util/ScheduledDialogActivity$dialogAttr;->title:Ljava/lang/String;

    .line 3523
    const v7, 0x7f090148

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/mms/util/ScheduledDialogActivity$dialogAttr;->positiveStr:Ljava/lang/String;

    .line 3524
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportClassZeroHyperLink()Z

    move-result v7

    iput-boolean v7, v0, Lcom/android/mms/util/ScheduledDialogActivity$dialogAttr;->hasHyperlink:Z

    .line 3525
    iput-boolean v9, v0, Lcom/android/mms/util/ScheduledDialogActivity$dialogAttr;->cancelable:Z

    .line 3526
    sget v7, Lcom/android/mms/util/ScheduledDialogActivity;->CLASS_ZERO_KEY:I

    iput v7, v0, Lcom/android/mms/util/ScheduledDialogActivity$dialogAttr;->listenerKey:I

    .line 3528
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportClassZeroSave()Z

    move-result v7

    if-ne v7, v10, :cond_1

    .line 3529
    const v7, 0x20c0164

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/mms/util/ScheduledDialogActivity$dialogAttr;->negativeStr:Ljava/lang/String;

    .line 3532
    :cond_1
    iget v7, v0, Lcom/android/mms/util/ScheduledDialogActivity$dialogAttr;->listenerKey:I

    sget-object v8, Lcom/android/mms/transaction/SmsReceiverService;->s_listener:Lcom/android/mms/transaction/SmsReceiverService$DialogListener;

    invoke-static {v7, v8}, Lcom/android/mms/util/ScheduledDialogActivity;->resgisterListener(ILcom/android/mms/util/ScheduledDialogActivity$buttonListener;)V

    .line 3533
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 3535
    .local v5, time:J
    invoke-static {p1, v0}, Lcom/android/mms/util/ScheduledDialogActivity;->createDlgIntent(Landroid/content/Context;Lcom/android/mms/util/ScheduledDialogActivity$dialogAttr;)Landroid/content/Intent;

    move-result-object v3

    .line 3536
    .local v3, smsDialogIntent:Landroid/content/Intent;
    sget-object v7, Lcom/android/mms/transaction/SmsReceiverService;->mSmsMsgMap:Ljava/util/HashMap;

    new-instance v8, Ljava/lang/Long;

    invoke-direct {v8, v5, v6}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v7, v8, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3537
    const-string v7, "MapKey"

    invoke-virtual {v3, v7, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3538
    const-string v7, "isevdo"

    invoke-virtual {v3, v7, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3539
    const/high16 v7, 0x1800

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3540
    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 3555
    return-void

    .line 3507
    .end local v0           #attr:Lcom/android/mms/util/ScheduledDialogActivity$dialogAttr;
    .end local v3           #smsDialogIntent:Landroid/content/Intent;
    .end local v4           #str:Ljava/lang/String;
    .end local v5           #time:J
    :cond_2
    aget-object v7, p2, v9

    invoke-virtual {v7}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 3510
    :cond_3
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v7, p2

    if-ge v1, v7, :cond_0

    .line 3511
    aget-object v7, p2, v1

    invoke-virtual {v7}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3510
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private displayCmasMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;JIJZ)V
    .locals 10
    .parameter "context"
    .parameter "msgs"
    .parameter "id"
    .parameter "type"
    .parameter "timestamp"
    .parameter "isCdma"

    .prologue
    .line 3567
    move/from16 v0, p8

    invoke-direct {p0, p2, v0}, Lcom/android/mms/transaction/SmsReceiverService;->getMessageBody([Landroid/telephony/SmsMessage;Z)Ljava/lang/String;

    move-result-object v2

    .line 3569
    .local v2, body:Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    const-class v7, Lcom/android/mms/ui/CmasDialogActivity;

    invoke-direct {v4, p1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3570
    .local v4, smsDialogIntent:Landroid/content/Intent;
    const-string v7, "CMAS_BODY_KEY"

    invoke-virtual {v4, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3571
    const/high16 v7, 0x1400

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3576
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 3577
    .local v5, time:J
    const-string v7, "MapKey"

    invoke-virtual {v4, v7, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3578
    const-string v7, "ReceiveTime"

    move-wide/from16 v0, p6

    invoke-virtual {v4, v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3579
    const-string v7, "id"

    invoke-virtual {v4, v7, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3580
    const-string v7, "c_type"

    invoke-virtual {v4, v7, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3582
    const/4 v7, 0x0

    aget-object v7, p2, v7

    invoke-virtual {v7}, Landroid/telephony/SmsMessage;->getHtcCmasMessage()Landroid/telephony/HtcCmasMessage;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 3583
    const-string v7, "ExpireTime"

    const/4 v8, 0x0

    aget-object v8, p2, v8

    invoke-virtual {v8}, Landroid/telephony/SmsMessage;->getHtcCmasMessage()Landroid/telephony/HtcCmasMessage;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/HtcCmasMessage;->getExpiredMillis()J

    move-result-wide v8

    invoke-virtual {v4, v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3586
    :cond_0
    sget-object v7, Lcom/android/mms/ui/CmasDialogActivity;->sCmasIntentStack:Ljava/util/Stack;

    invoke-virtual {v7, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3588
    invoke-static {p1}, Lcom/android/mms/transaction/SmsReceiverService;->getCallState(Landroid/content/Context;)I

    move-result v3

    .line 3589
    .local v3, callState:I
    if-eqz v3, :cond_1

    .line 3591
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplication()Landroid/app/Application;

    move-result-object v7

    const/16 v8, 0x20

    invoke-static {v7, v8}, Lcom/android/mms/transaction/SmsReceiverService;->registerPhoneStateListener(Landroid/content/Context;I)V

    .line 3595
    :goto_0
    return-void

    .line 3593
    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/mms/transaction/SmsReceiverService;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static displayGsZeroMessage(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 4111
    new-instance v0, Lcom/android/mms/util/ScheduledDialogActivity$dialogAttr;

    invoke-direct {v0}, Lcom/android/mms/util/ScheduledDialogActivity$dialogAttr;-><init>()V

    .line 4112
    .local v0, attr:Lcom/android/mms/util/ScheduledDialogActivity$dialogAttr;
    const-string v4, "pdus"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/mms/util/ScheduledDialogActivity$dialogAttr;->bodyStr:Ljava/lang/String;

    .line 4113
    const v4, 0x7f0900b6

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/mms/util/ScheduledDialogActivity$dialogAttr;->title:Ljava/lang/String;

    .line 4114
    const v4, 0x7f090148

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/mms/util/ScheduledDialogActivity$dialogAttr;->positiveStr:Ljava/lang/String;

    .line 4115
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportClassZeroHyperLink()Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/mms/util/ScheduledDialogActivity$dialogAttr;->hasHyperlink:Z

    .line 4116
    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/android/mms/util/ScheduledDialogActivity$dialogAttr;->cancelable:Z

    .line 4117
    sget v4, Lcom/android/mms/util/ScheduledDialogActivity;->GS_ZERO_KEY:I

    iput v4, v0, Lcom/android/mms/util/ScheduledDialogActivity$dialogAttr;->listenerKey:I

    .line 4119
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportClassZeroSave()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 4120
    const v4, 0x20c0164

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/mms/util/ScheduledDialogActivity$dialogAttr;->negativeStr:Ljava/lang/String;

    .line 4123
    :cond_0
    iget v4, v0, Lcom/android/mms/util/ScheduledDialogActivity$dialogAttr;->listenerKey:I

    sget-object v5, Lcom/android/mms/transaction/SmsReceiverService;->s_GsListener:Lcom/android/mms/transaction/SmsReceiverService$GsDialogListener;

    invoke-static {v4, v5}, Lcom/android/mms/util/ScheduledDialogActivity;->resgisterListener(ILcom/android/mms/util/ScheduledDialogActivity$buttonListener;)V

    .line 4124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 4126
    .local v2, time:J
    sget-object v4, Lcom/android/mms/transaction/SmsReceiverService;->mSmsMsgMap:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4127
    invoke-static {p0, v0}, Lcom/android/mms/util/ScheduledDialogActivity;->createDlgIntent(Landroid/content/Context;Lcom/android/mms/util/ScheduledDialogActivity$dialogAttr;)Landroid/content/Intent;

    move-result-object v1

    .line 4128
    .local v1, smsDialogIntent:Landroid/content/Intent;
    const/high16 v4, 0x1800

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4129
    const-string v4, "MapKey"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4130
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 4131
    return-void
.end method

.method private extractCmasContentValues(Landroid/telephony/SmsMessage;J)Landroid/content/ContentValues;
    .locals 19
    .parameter "sms"
    .parameter "nowTime"

    .prologue
    .line 3724
    move-object/from16 v10, p1

    .line 3725
    .local v10, isms:Landroid/telephony/HtcIfSmsMessage;
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 3727
    .local v15, values:Landroid/content/ContentValues;
    invoke-interface {v10}, Landroid/telephony/HtcIfSmsMessage;->getHtcCmasMessage()Landroid/telephony/HtcCmasMessage;

    move-result-object v6

    .line 3728
    .local v6, cmas:Landroid/telephony/HtcCmasMessage;
    invoke-virtual {v6}, Landroid/telephony/HtcCmasMessage;->getCmasFormat()I

    move-result v16

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_a

    const/4 v9, 0x1

    .line 3729
    .local v9, isCdma:Z
    :goto_0
    const-string v16, "SmsReceiverService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "isCdma> "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3730
    const-string v16, "SmsReceiverService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "nowTime> "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3732
    const-string v16, "toa"

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SmsMessage;->getToaOfOriginatingAddress()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3737
    if-eqz v9, :cond_c

    .line 3738
    invoke-virtual {v6}, Landroid/telephony/HtcCmasMessage;->getAlertHandling()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 3739
    .local v3, OriAddr:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsApp;->isUseDeviceTime()Z

    move-result v16

    if-eqz v16, :cond_b

    .line 3740
    const-string v16, "SmsReceiverService"

    const-string v17, "MT use device time."

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3741
    move-wide/from16 v13, p2

    .line 3750
    .local v13, timestamp:J
    :goto_1
    if-eqz v3, :cond_0

    const-string v16, "address"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3751
    :cond_0
    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-static {v13, v14, v0}, Lcom/android/mms/ui/MessageUtils;->getDateString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3752
    .local v12, strTime:Ljava/lang/String;
    const-string v16, "SmsReceiverService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "cmas timestamp> "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3753
    const-string v16, "date"

    new-instance v17, Ljava/lang/Long;

    move-object/from16 v0, v17

    invoke-direct {v0, v13, v14}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3758
    const/4 v11, -0x1

    .line 3759
    .local v11, sn:I
    if-eqz v9, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SmsMessage;->getMessageIdentifier()I

    move-result v11

    .line 3763
    :cond_1
    const-string v16, "SmsReceiverService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "sn> "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3764
    const-string v16, "protocol"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3768
    const-string v16, "read"

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3775
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SmsMessage;->getPseudoSubject()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_2

    .line 3776
    const-string v16, "subject"

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SmsMessage;->getPseudoSubject()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3779
    :cond_2
    const-string v16, "sc_toa"

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SmsMessage;->getToaOfScAddress()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3781
    const-string v16, "service_center"

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3783
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SmsMessage;->getCallBackNumber()Ljava/lang/String;

    move-result-object v5

    .line 3784
    .local v5, callback:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_3

    .line 3785
    const-string v16, "callback_number"

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SmsMessage;->getCallBackNumber()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3788
    :cond_3
    if-eqz v9, :cond_4

    const-string v16, "priority"

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SmsMessage;->getPriority()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3790
    :cond_4
    const-string v16, "is_cdma_format"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3792
    invoke-virtual {v6}, Landroid/telephony/HtcCmasMessage;->getCmasType()I

    move-result v4

    .line 3793
    .local v4, c_type:I
    const-string v16, "SmsReceiverService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "cmas type> "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3794
    const-string v16, "c_type"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3796
    invoke-virtual {v6}, Landroid/telephony/HtcCmasMessage;->getExpiredMillis()J

    move-result-wide v7

    .line 3797
    .local v7, expt:J
    const-string v16, "SmsReceiverService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "cmas exp time> "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3798
    const-string v16, "exp"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3800
    const-string v16, "received_time"

    new-instance v17, Ljava/lang/Long;

    move-object/from16 v0, v17

    move-wide/from16 v1, p2

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3803
    invoke-virtual {v6}, Landroid/telephony/HtcCmasMessage;->getCategory()I

    move-result v16

    if-ltz v16, :cond_5

    .line 3804
    const-string v16, "category"

    invoke-virtual {v6}, Landroid/telephony/HtcCmasMessage;->getCategory()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3806
    :cond_5
    invoke-virtual {v6}, Landroid/telephony/HtcCmasMessage;->getResponseType()I

    move-result v16

    if-ltz v16, :cond_6

    .line 3807
    const-string v16, "response"

    invoke-virtual {v6}, Landroid/telephony/HtcCmasMessage;->getResponseType()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3809
    :cond_6
    invoke-virtual {v6}, Landroid/telephony/HtcCmasMessage;->getSeverity()I

    move-result v16

    if-ltz v16, :cond_7

    .line 3810
    const-string v16, "severity"

    invoke-virtual {v6}, Landroid/telephony/HtcCmasMessage;->getSeverity()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3812
    :cond_7
    invoke-virtual {v6}, Landroid/telephony/HtcCmasMessage;->getUrgency()I

    move-result v16

    if-ltz v16, :cond_8

    .line 3813
    const-string v16, "urgency"

    invoke-virtual {v6}, Landroid/telephony/HtcCmasMessage;->getUrgency()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3815
    :cond_8
    invoke-virtual {v6}, Landroid/telephony/HtcCmasMessage;->getCertainty()I

    move-result v16

    if-ltz v16, :cond_9

    .line 3816
    const-string v16, "certainty"

    invoke-virtual {v6}, Landroid/telephony/HtcCmasMessage;->getCertainty()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3820
    :cond_9
    return-object v15

    .line 3728
    .end local v3           #OriAddr:Ljava/lang/String;
    .end local v4           #c_type:I
    .end local v5           #callback:Ljava/lang/String;
    .end local v7           #expt:J
    .end local v9           #isCdma:Z
    .end local v11           #sn:I
    .end local v12           #strTime:Ljava/lang/String;
    .end local v13           #timestamp:J
    :cond_a
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 3743
    .restart local v3       #OriAddr:Ljava/lang/String;
    .restart local v9       #isCdma:Z
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v13

    .restart local v13       #timestamp:J
    goto/16 :goto_1

    .line 3747
    .end local v3           #OriAddr:Ljava/lang/String;
    .end local v13           #timestamp:J
    :cond_c
    invoke-virtual {v6}, Landroid/telephony/HtcCmasMessage;->getMsgId()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 3748
    .restart local v3       #OriAddr:Ljava/lang/String;
    move-wide/from16 v13, p2

    .restart local v13       #timestamp:J
    goto/16 :goto_1
.end method

.method private static extractContentValues(Landroid/telephony/SmsMessage;Landroid/content/Context;)Landroid/content/ContentValues;
    .locals 15
    .parameter "sms"
    .parameter "context"

    .prologue
    .line 3353
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 3356
    .local v10, values:Landroid/content/ContentValues;
    const-string v11, "toa"

    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getToaOfOriginatingAddress()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3359
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    .line 3361
    .local v0, OriAddr:Ljava/lang/String;
    sget-short v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v12, 0x7

    if-ne v11, v12, :cond_0

    .line 3362
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 3363
    const-string v11, "886"

    invoke-virtual {v0, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_0

    .line 3364
    const-string v11, "886"

    const-string v12, "0"

    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3369
    :cond_0
    const-string v11, "6245"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 3370
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_6

    .line 3381
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 3382
    .local v4, nowTime:J
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v8

    .line 3383
    .local v8, smscTime:J
    const/4 v11, 0x0

    invoke-static {v8, v9, v11}, Lcom/android/mms/ui/MessageUtils;->getDateString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3384
    .local v7, smscT:Ljava/lang/String;
    const/4 v11, 0x0

    invoke-static {v4, v5, v11}, Lcom/android/mms/ui/MessageUtils;->getDateString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3385
    .local v3, nowT:Ljava/lang/String;
    const-string v11, "SmsReceiverService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "smsc time: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3386
    const-string v11, "SmsReceiverService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "device time: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3390
    invoke-static {}, Lcom/android/mms/MmsApp;->isUseDeviceTime()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 3391
    const-string v11, "SmsReceiverService"

    const-string v12, "MT use device time."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3392
    const-string v11, "date"

    new-instance v12, Ljava/lang/Long;

    invoke-direct {v12, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3402
    :goto_1
    const-string v11, "date2"

    new-instance v12, Ljava/lang/Long;

    invoke-direct {v12, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3406
    const-string v11, "protocol"

    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3408
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v11

    sget-object v12, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    if-ne v11, v12, :cond_a

    .line 3409
    const-string v11, "read"

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3412
    :goto_2
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getPseudoSubject()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_1

    .line 3413
    const-string v11, "subject"

    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getPseudoSubject()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3415
    :cond_1
    const-string v12, "reply_path_present"

    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->isReplyPathPresent()Z

    move-result v11

    if-eqz v11, :cond_b

    const/4 v11, 0x1

    :goto_3
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3417
    const-string v11, "sc_toa"

    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getToaOfScAddress()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3419
    const-string v11, "service_center"

    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3422
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSmsCallback()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 3424
    :try_start_0
    const-string v11, "callback_number"

    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getCallBackNumber()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3431
    :cond_2
    :goto_4
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSMSPriority()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 3432
    const-string v11, "priority"

    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getPriority()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3435
    :cond_3
    const-string v11, "is_cdma_format"

    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->isCdmaFormat()Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3437
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->isFromEVDO()Z

    move-result v11

    if-eqz v11, :cond_c

    .line 3438
    const-string v11, "SmsReceiverService"

    const-string v12, "extractContentValues: EVDO"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3442
    :goto_5
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportBlocklist()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 3444
    sget-boolean v11, Lcom/android/mms/transaction/SmsReceiverService;->IsInBlocklist:Z

    if-eqz v11, :cond_4

    .line 3445
    const/4 v11, 0x0

    sput-boolean v11, Lcom/android/mms/transaction/SmsReceiverService;->IsInBlocklist:Z

    .line 3446
    const-string v11, "SmsReceiverService"

    const-string v12, "Block by Block list"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3447
    const-string v11, "htc_category"

    sget-object v12, Lcom/android/mms/category/Category;->BLOCKED:Lcom/android/mms/category/Category;

    invoke-virtual {v12}, Lcom/android/mms/category/Category;->value()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3452
    :cond_4
    const/4 v2, 0x0

    .line 3453
    .local v2, flags:I
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getPrivacyInd()I

    move-result v6

    .line 3455
    .local v6, privacy:I
    if-lez v6, :cond_5

    .line 3456
    shl-int/lit8 v11, v6, 0x1e

    or-int/2addr v2, v11

    .line 3457
    const-string v11, "extra"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3459
    :cond_5
    const-string v11, "SmsReceiverService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "insert flags> 0x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v2}, Lcom/android/internal/util/HexDump;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3462
    return-object v10

    .line 3373
    .end local v2           #flags:I
    .end local v3           #nowT:Ljava/lang/String;
    .end local v4           #nowTime:J
    .end local v6           #privacy:I
    .end local v7           #smscT:Ljava/lang/String;
    .end local v8           #smscTime:J
    :cond_6
    const-string v11, "address"

    invoke-virtual {v10, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3376
    :cond_7
    const-string v11, "address"

    invoke-virtual {v10, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3394
    .restart local v3       #nowT:Ljava/lang/String;
    .restart local v4       #nowTime:J
    .restart local v7       #smscT:Ljava/lang/String;
    .restart local v8       #smscTime:J
    :cond_8
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-nez v11, :cond_9

    .line 3395
    const-string v11, "date"

    new-instance v12, Ljava/lang/Long;

    invoke-direct {v12, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_1

    .line 3397
    :cond_9
    const-string v11, "date"

    new-instance v12, Ljava/lang/Long;

    invoke-direct {v12, v8, v9}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_1

    .line 3411
    :cond_a
    const-string v11, "read"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_2

    .line 3415
    :cond_b
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 3425
    :catch_0
    move-exception v1

    .line 3426
    .local v1, e:Ljava/lang/Exception;
    const-string v11, "SmsReceiverService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "null callback value >"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3427
    const-string v11, "callback_number"

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 3440
    .end local v1           #e:Ljava/lang/Exception;
    :cond_c
    const-string v11, "SmsReceiverService"

    const-string v12, "extractContentValues: not EVDO"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5
.end method

.method private extractEarthquakeAlertContentValues(Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;
    .locals 11
    .parameter "sms"

    .prologue
    .line 3827
    move-object v1, p1

    .line 3828
    .local v1, isms:Landroid/telephony/HtcIfSmsMessage;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 3831
    .local v7, values:Landroid/content/ContentValues;
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v5

    .line 3832
    .local v5, timestamp:J
    const-string v8, "SmsReceiverService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cmas timestamp> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3833
    const-string v8, "date"

    new-instance v9, Ljava/lang/Long;

    invoke-direct {v9, v5, v6}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3836
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 3837
    .local v2, nowTime:J
    const-string v8, "SmsReceiverService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "nowTime> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3838
    const-string v8, "received_time"

    new-instance v9, Ljava/lang/Long;

    invoke-direct {v9, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3841
    const-string v8, "read"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3844
    const-string v8, "is_cdma_format"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3847
    const/16 v0, 0x64

    .line 3848
    .local v0, c_type:I
    const-string v8, "c_type"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3853
    const/4 v4, -0x1

    .line 3854
    .local v4, sn:I
    invoke-interface {v1}, Landroid/telephony/HtcIfSmsMessage;->getMessageIdentifier()I

    move-result v4

    .line 3855
    const-string v8, "SmsReceiverService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sn> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3856
    const-string v8, "protocol"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3859
    return-object v7
.end method

.method private static getCallState(Landroid/content/Context;)I
    .locals 5
    .parameter "context"

    .prologue
    .line 4416
    const/4 v0, 0x0

    .line 4417
    .local v0, callState:I
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/HtcIfTelephonyManager;

    .line 4419
    .local v1, tm:Landroid/telephony/HtcIfTelephonyManager;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/telephony/HtcIfTelephonyManager;->getCallState()I

    move-result v0

    .line 4421
    :goto_0
    const-string v2, "SmsReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4422
    return v0

    .line 4420
    :cond_0
    const-string v2, "SmsReceiverService"

    const-string v3, "getCallState tm is null."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getCmasTime([Landroid/telephony/SmsMessage;)J
    .locals 9
    .parameter "msgs"

    .prologue
    const/4 v1, 0x0

    .line 4473
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 4474
    .local v2, nowTime:J
    aget-object v4, p1, v1

    .line 4475
    .local v4, sms:Landroid/telephony/SmsMessage;
    invoke-virtual {v4}, Landroid/telephony/SmsMessage;->getCmasMessage()Lcom/android/internal/telephony/CmasMessage;

    move-result-object v0

    .line 4476
    .local v0, cmas:Landroid/telephony/HtcCmasMessage;
    invoke-virtual {v0}, Landroid/telephony/HtcCmasMessage;->getCmasFormat()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    const/4 v1, 0x1

    .line 4477
    .local v1, isCdma:Z
    :cond_0
    const-wide/16 v5, 0x0

    .line 4478
    .local v5, timestamp:J
    if-eqz v1, :cond_2

    .line 4479
    invoke-static {}, Lcom/android/mms/MmsApp;->isUseDeviceTime()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4481
    move-wide v5, v2

    .line 4490
    :goto_0
    return-wide v5

    .line 4484
    :cond_1
    invoke-virtual {v4}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v5

    goto :goto_0

    .line 4488
    :cond_2
    move-wide v5, v2

    goto :goto_0
.end method

.method private getErrorCause(I)I
    .locals 3
    .parameter "iResultCode"

    .prologue
    .line 1522
    const/4 v0, -0x1

    .line 1523
    .local v0, errorCause:I
    const/4 v2, 0x1

    if-le p1, v2, :cond_0

    .line 1524
    add-int/lit16 v1, p1, -0x7d0

    .line 1525
    .local v1, errorCode:I
    const v2, 0xffff

    and-int v0, v1, v2

    .line 1528
    .end local v1           #errorCode:I
    :goto_0
    return v0

    .line 1527
    :cond_0
    and-int/lit16 v0, p1, 0xff

    goto :goto_0
.end method

.method private getErrorClass(I)I
    .locals 3
    .parameter "iResultCode"

    .prologue
    .line 1510
    const/4 v0, 0x3

    .line 1511
    .local v0, errorClass:I
    const/4 v2, 0x1

    if-le p1, v2, :cond_1

    .line 1512
    add-int/lit16 v1, p1, -0x7d0

    .line 1513
    .local v1, errorCode:I
    shr-int/lit8 v0, v1, 0x10

    .line 1514
    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    const/4 v2, 0x3

    if-le v0, v2, :cond_1

    .line 1515
    :cond_0
    const/4 v0, 0x3

    .line 1517
    .end local v1           #errorCode:I
    :cond_1
    return v0
.end method

.method private getErrorString(Landroid/content/Context;Landroid/net/Uri;I)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "uri"
    .parameter "errorCause"

    .prologue
    const/4 v4, 0x0

    .line 1538
    const-string v8, ""

    .line 1539
    .local v8, errorStr:Ljava/lang/String;
    const/16 v0, 0x62

    if-eq p3, v0, :cond_0

    const/16 v0, 0x61

    if-ne p3, v0, :cond_2

    .line 1540
    :cond_0
    const-string v0, "Jerry"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URI >"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/transaction/SmsReceiverService;->ID_PROJECTION:[Ljava/lang/String;

    move-object v0, p1

    move-object v2, p2

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1544
    .local v7, cursor:Landroid/database/Cursor;
    const-string v0, "Jerry"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cursor >"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    if-eqz v7, :cond_2

    .line 1546
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1547
    const-string v0, "Jerry"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cursor.count >"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1549
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1551
    :cond_1
    const-string v0, "Jerry"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "errorStr >"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1555
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_2
    return-object v8
.end method

.method private getGsmMessageFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;
    .locals 9
    .parameter "intent"

    .prologue
    .line 3600
    const-string v7, "cbPdu"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    move-object v2, v7

    check-cast v2, [Ljava/lang/Object;

    .line 3601
    .local v2, messages:[Ljava/lang/Object;
    array-length v7, v2

    new-array v5, v7, [[B

    .line 3603
    .local v5, pduObjs:[[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v7, v2

    if-ge v1, v7, :cond_0

    .line 3604
    aget-object v7, v2, v1

    check-cast v7, [B

    check-cast v7, [B

    aput-object v7, v5, v1

    .line 3603
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3606
    :cond_0
    array-length v7, v5

    new-array v6, v7, [[B

    .line 3607
    .local v6, pdus:[[B
    array-length v4, v6

    .line 3608
    .local v4, pduCount:I
    new-array v3, v4, [Landroid/telephony/SmsMessage;

    .line 3609
    .local v3, msgs:[Landroid/telephony/SmsMessage;
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_1

    .line 3610
    aget-object v7, v5, v1

    aput-object v7, v6, v1

    .line 3611
    const/4 v7, 0x1

    aget-object v8, v6, v1

    invoke-static {v7, v8}, Landroid/telephony/HtcCmasMessage;->getCmasMessage(I[B)Landroid/telephony/HtcCmasMessage;

    move-result-object v0

    .line 3612
    .local v0, cmas:Landroid/telephony/HtcCmasMessage;
    aget-object v7, v6, v1

    invoke-virtual {v0, v7}, Landroid/telephony/HtcCmasMessage;->parseGsmPdu([B)V

    .line 3614
    new-instance v7, Landroid/telephony/SmsMessage;

    invoke-direct {v7}, Landroid/telephony/SmsMessage;-><init>()V

    aput-object v7, v3, v1

    .line 3615
    aget-object v7, v3, v1

    invoke-virtual {v7, v0}, Landroid/telephony/SmsMessage;->setHtcCmasMessage(Landroid/telephony/HtcCmasMessage;)V

    .line 3609
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3620
    .end local v0           #cmas:Landroid/telephony/HtcCmasMessage;
    :cond_1
    add-int/lit8 v7, v4, -0x1

    aget-object v7, v3, v7

    invoke-virtual {v7}, Landroid/telephony/SmsMessage;->getHtcCmasMessage()Landroid/telephony/HtcCmasMessage;

    move-result-object v7

    const-string v8, "pdus"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/telephony/HtcCmasMessage;->setAlertTextStr(Ljava/lang/String;)V

    .line 3621
    return-object v3
.end method

.method private getMessageBody([Landroid/telephony/SmsMessage;Z)Ljava/lang/String;
    .locals 5
    .parameter "msgs"
    .parameter "isCdma"

    .prologue
    .line 4442
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 4443
    .local v2, sb:Ljava/lang/StringBuilder;
    array-length v3, p1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 4444
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3, p2}, Lcom/android/mms/transaction/SmsReceiverService;->getMessageBodyByIndex([Landroid/telephony/SmsMessage;IZ)Ljava/lang/String;

    move-result-object v0

    .line 4445
    .local v0, body:Ljava/lang/String;
    if-nez v0, :cond_0

    const v3, 0x7f09011d

    invoke-virtual {p0, v3}, Lcom/android/mms/transaction/SmsReceiverService;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4453
    .end local v0           #body:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 4448
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_2

    .line 4450
    invoke-direct {p0, p1, v1, p2}, Lcom/android/mms/transaction/SmsReceiverService;->getMessageBodyByIndex([Landroid/telephony/SmsMessage;IZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4448
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4453
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getMessageBodyByIndex([Landroid/telephony/SmsMessage;IZ)Ljava/lang/String;
    .locals 3
    .parameter "msgs"
    .parameter "index"
    .parameter "isCdma"

    .prologue
    .line 4459
    aget-object v2, p1, p2

    .line 4460
    .local v2, sms:Landroid/telephony/SmsMessage;
    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getCmasMessage()Lcom/android/internal/telephony/CmasMessage;

    move-result-object v1

    .line 4462
    .local v1, cmas:Landroid/telephony/HtcCmasMessage;
    const/4 v0, 0x0

    .line 4463
    .local v0, body:Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 4464
    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    .line 4468
    :goto_0
    return-object v0

    .line 4466
    :cond_0
    invoke-virtual {v1}, Landroid/telephony/HtcCmasMessage;->getAlertTextStr()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private handleBootCompleted()V
    .locals 2

    .prologue
    .line 2491
    invoke-direct {p0}, Lcom/android/mms/transaction/SmsReceiverService;->moveOutboxMessagesToQueuedBox()V

    .line 2493
    invoke-static {}, Lcom/android/mms/MmsApp;->isImproveSmsSending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2494
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->sendFirstQueuedMessage()V

    .line 2525
    :goto_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/transaction/SmsReceiverService$3;

    invoke-direct {v1, p0}, Lcom/android/mms/transaction/SmsReceiverService$3;-><init>(Lcom/android/mms/transaction/SmsReceiverService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2530
    return-void

    .line 2496
    :cond_0
    invoke-static {}, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->getInstance()Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->register(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private handleCBReceived(Landroid/content/Intent;)V
    .locals 25
    .parameter "intent"

    .prologue
    .line 3627
    const-string v2, "SmsReceiverService"

    const-string v11, "CB_RECEIVED_ACTION"

    invoke-static {v2, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3633
    const-string v2, "cmas"

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v19

    .line 3634
    .local v19, isCmas:Z
    const-string v2, "earthquake_alert"

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v20

    .line 3635
    .local v20, isEarthquakeAlert:Z
    const-string v2, "isCdma"

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    .line 3637
    .local v10, cdmaFormat:Z
    if-nez v19, :cond_0

    if-eqz v20, :cond_7

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportCMAS()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportEarthquakeAlert()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v10, :cond_7

    .line 3640
    :cond_1
    if-eqz v10, :cond_3

    .line 3642
    invoke-static/range {p1 .. p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v4

    .line 3651
    .local v4, smss:[Landroid/telephony/SmsMessage;
    :goto_0
    const/16 v18, 0x0

    .line 3652
    .local v18, cmasuri:Landroid/net/Uri;
    const/4 v7, 0x0

    .line 3654
    .local v7, c_type:I
    const-wide/16 v8, 0x0

    .line 3655
    .local v8, timeStamp:J
    if-eqz v19, :cond_4

    .line 3656
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/mms/transaction/SmsReceiverService;->getCmasTime([Landroid/telephony/SmsMessage;)J

    move-result-wide v8

    .line 3662
    :goto_1
    if-eqz v19, :cond_5

    .line 3663
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplication()Landroid/app/Application;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v8, v9}, Lcom/android/mms/transaction/SmsReceiverService;->insertCmasMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;J)Landroid/net/Uri;

    move-result-object v18

    .line 3664
    const/4 v2, 0x0

    aget-object v2, v4, v2

    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getHtcCmasMessage()Landroid/telephony/HtcCmasMessage;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/HtcCmasMessage;->getCmasType()I

    move-result v7

    .line 3671
    :cond_2
    :goto_2
    const-wide/16 v5, -0x1

    .line 3672
    .local v5, tid:J
    if-eqz v18, :cond_6

    .line 3673
    new-instance v2, Ljava/lang/Long;

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v2, v11}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 3678
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplication()Landroid/app/Application;

    move-result-object v3

    .local v3, context:Landroid/content/Context;
    move-object/from16 v2, p0

    .line 3679
    invoke-direct/range {v2 .. v10}, Lcom/android/mms/transaction/SmsReceiverService;->displayCmasMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;JIJZ)V

    .line 3681
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v10}, Lcom/android/mms/transaction/SmsReceiverService;->getMessageBody([Landroid/telephony/SmsMessage;Z)Ljava/lang/String;

    move-result-object v16

    .line 3683
    .local v16, body:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v11, "power"

    invoke-virtual {v2, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/os/PowerManager;

    .line 3684
    .local v23, pm:Landroid/os/PowerManager;
    const v2, 0x1000000a

    const-string v11, "SmsReceiverService"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v11}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v24

    .line 3685
    .local v24, tempWakeLock:Landroid/os/PowerManager$WakeLock;
    const-wide/16 v11, 0x3a98

    move-object/from16 v0, v24

    invoke-virtual {v0, v11, v12}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 3686
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v11, v12, v2}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 3688
    const/4 v12, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v11, p0

    move v13, v7

    move-wide v14, v5

    invoke-static/range {v11 .. v17}, Lcom/android/mms/transaction/MessagingNotification;->updateNewCmasMessageIndicator(Landroid/content/Context;ZIJLjava/lang/String;Ljava/lang/Long;)V

    .line 3720
    .end local v3           #context:Landroid/content/Context;
    .end local v4           #smss:[Landroid/telephony/SmsMessage;
    .end local v5           #tid:J
    .end local v7           #c_type:I
    .end local v8           #timeStamp:J
    .end local v16           #body:Ljava/lang/String;
    .end local v18           #cmasuri:Landroid/net/Uri;
    .end local v23           #pm:Landroid/os/PowerManager;
    .end local v24           #tempWakeLock:Landroid/os/PowerManager$WakeLock;
    :goto_4
    return-void

    .line 3645
    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/android/mms/transaction/SmsReceiverService;->getGsmMessageFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v4

    .restart local v4       #smss:[Landroid/telephony/SmsMessage;
    goto :goto_0

    .line 3658
    .restart local v7       #c_type:I
    .restart local v8       #timeStamp:J
    .restart local v18       #cmasuri:Landroid/net/Uri;
    :cond_4
    const/4 v2, 0x0

    aget-object v2, v4, v2

    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v8

    goto :goto_1

    .line 3665
    :cond_5
    if-eqz v20, :cond_2

    .line 3666
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplication()Landroid/app/Application;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/mms/transaction/SmsReceiverService;->insertEarthquakeAlertMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;)Landroid/net/Uri;

    move-result-object v18

    .line 3667
    const/16 v7, 0x64

    goto :goto_2

    .line 3676
    .restart local v5       #tid:J
    :cond_6
    const-string v2, "SmsReceiverService"

    const-string v11, "CMAS insertion failure: "

    invoke-static {v2, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 3691
    .end local v4           #smss:[Landroid/telephony/SmsMessage;
    .end local v5           #tid:J
    .end local v7           #c_type:I
    .end local v8           #timeStamp:J
    .end local v18           #cmasuri:Landroid/net/Uri;
    :cond_7
    if-nez v10, :cond_b

    .line 3692
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v11, 0x78

    if-eq v2, v11, :cond_8

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v11, 0xd4

    if-eq v2, v11, :cond_8

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v11, 0x9

    if-eq v2, v11, :cond_8

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v11, 0xae

    if-ne v2, v11, :cond_9

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v11, 0x35

    if-ne v2, v11, :cond_9

    .line 3697
    :cond_8
    const-string v2, "pdus"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 3698
    .local v22, msgs:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/SmsReceiverService;->showCBImmutableNotification(Ljava/lang/String;)V

    goto :goto_4

    .line 3700
    .end local v22           #msgs:Ljava/lang/String;
    :cond_9
    const-string v2, "SmsReceiverService"

    const-string v11, "sms notification lock"

    invoke-static {v2, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3701
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/mms/transaction/SmsReceiverService;->mUpdateLocked:Z

    .line 3703
    const/4 v2, 0x0

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v2}, Lcom/android/mms/transaction/SmsReceiverService;->insertcbMessage(Landroid/content/Context;Landroid/content/Intent;Z)Landroid/net/Uri;

    move-result-object v21

    .line 3705
    .local v21, messageUri:Landroid/net/Uri;
    if-eqz v21, :cond_a

    .line 3706
    const/4 v2, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v2, v11, v12, v1}, Lcom/android/mms/transaction/MessagingNotification;->updateNewMessageIndicator(Landroid/content/Context;ZZZLandroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3712
    :goto_5
    const-string v2, "SmsReceiverService"

    const-string v11, "sms notification unlock"

    invoke-static {v2, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3713
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/mms/transaction/SmsReceiverService;->mUpdateLocked:Z

    goto :goto_4

    .line 3709
    :cond_a
    const/16 v2, 0x7d1

    :try_start_1
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/mms/transaction/MessagingNotification;->alertWithoutNotificationIcon(Landroid/content/Context;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 3712
    .end local v21           #messageUri:Landroid/net/Uri;
    :catchall_0
    move-exception v2

    const-string v11, "SmsReceiverService"

    const-string v12, "sms notification unlock"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3713
    const/4 v11, 0x0

    sput-boolean v11, Lcom/android/mms/transaction/SmsReceiverService;->mUpdateLocked:Z

    throw v2

    .line 3718
    :cond_b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/SmsReceiverService;->handleSmsReceived(Landroid/content/Intent;I)V

    goto/16 :goto_4
.end method

.method private handleMwiClearReceived(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 2486
    iget-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mToastHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->mToastHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2487
    return-void
.end method

.method private handleSendMessage()V
    .locals 3

    .prologue
    .line 704
    const-string v0, "SmsReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSendMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/transaction/SmsReceiverService;->mSendingCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    sget v0, Lcom/android/mms/transaction/SmsReceiverService;->mSendingCnt:I

    if-gtz v0, :cond_0

    .line 706
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->sendFirstQueuedMessage()V

    .line 708
    :cond_0
    return-void
.end method

.method private handleServiceStateChanged(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 696
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v0

    .line 697
    .local v0, serviceState:Landroid/telephony/ServiceState;
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_0

    .line 698
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->sendFirstQueuedMessage()V

    .line 700
    :cond_0
    return-void
.end method

.method private handleSmsReceived(Landroid/content/Intent;I)V
    .locals 13
    .parameter "intent"
    .parameter "port"

    .prologue
    .line 2309
    const-string v0, "SmsReceiverService"

    const-string v1, "[HTC_MESSAGES] - SmsReceiverService: handleSmsReceived()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2311
    invoke-static {p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v2

    .line 2314
    .local v2, msgs:[Landroid/telephony/SmsMessage;
    array-length v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    aget-object v0, v2, v0

    if-nez v0, :cond_1

    .line 2315
    const-string v0, "handleSmsReceived"

    const-string v1, "NULL Message, Fatal problem!!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2437
    :cond_0
    :goto_0
    return-void

    .line 2321
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/mms/transaction/SmsReceiverService;->kddiFormatCmailBody([Landroid/telephony/SmsMessage;)V

    .line 2324
    const/4 v5, 0x0

    .line 2325
    .local v5, idxonsimarray:[I
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x94

    if-eq v0, v1, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xc

    if-eq v0, v1, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xaf

    if-ne v0, v1, :cond_3

    .line 2328
    :cond_2
    if-eqz v2, :cond_3

    const/4 v0, 0x0

    aget-object v0, v2, v0

    if-eqz v0, :cond_3

    .line 2329
    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v9

    .line 2330
    .local v9, firstMessage:Ljava/lang/String;
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_0

    .line 2340
    .end local v9           #firstMessage:Ljava/lang/String;
    :cond_3
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xa8

    if-ne v0, v1, :cond_6

    .line 2341
    if-eqz v2, :cond_6

    const/4 v0, 0x0

    aget-object v0, v2, v0

    if-eqz v0, :cond_6

    .line 2342
    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v9

    .line 2344
    .restart local v9       #firstMessage:Ljava/lang/String;
    if-eqz v9, :cond_6

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_6

    .line 2345
    const-string v0, "//VWMVVMBB5001"

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "//VWMVVMBB5001"

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 2349
    :cond_4
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_6

    const-string v0, "//VZW"

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "//VZW"

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    .line 2351
    const-string v0, "SmsReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got lbs //VZW message: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2353
    const-string v0, ":"

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 2354
    .local v8, colonidx:I
    if-lez v8, :cond_0

    .line 2355
    add-int/lit8 v8, v8, 0x1

    .line 2356
    const/4 v0, 0x0

    invoke-virtual {v9, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 2357
    .local v12, prefix:Ljava/lang/String;
    const/4 v11, 0x0

    .line 2360
    .local v11, messagetext:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v8, 0x1

    if-le v0, v1, :cond_5

    .line 2361
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v9, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 2363
    :cond_5
    const-string v0, "SmsReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--prefix--messagetext--=> --"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "--"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "--"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2364
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 2365
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 2366
    .local v7, bintent:Landroid/content/Intent;
    const-string v0, "com.android.mms.transaction.LbsMessageReceiver.LBSSMS_MAPPING"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2367
    const-string v0, "prefixStr"

    invoke-virtual {v7, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2368
    const-string v0, "textStr"

    invoke-virtual {v7, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2369
    invoke-virtual {p0, v7}, Lcom/android/mms/transaction/SmsReceiverService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2379
    .end local v7           #bintent:Landroid/content/Intent;
    .end local v8           #colonidx:I
    .end local v9           #firstMessage:Ljava/lang/String;
    .end local v11           #messagetext:Ljava/lang/String;
    .end local v12           #prefix:Ljava/lang/String;
    :cond_6
    array-length v0, v2

    if-eqz v0, :cond_7

    .line 2380
    const/4 v0, 0x0

    aget-object v0, v2, v0

    const-string v1, "SimSmsRecordIndex"

    const/4 v3, -0x1

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/SmsMessage;->setIndexOnIcc(I)V

    .line 2385
    :cond_7
    array-length v0, v2

    const/4 v1, 0x1

    if-le v0, v1, :cond_8

    .line 2386
    const-string v0, "idxonsims"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v5

    .line 2391
    :cond_8
    const-string v0, "EVDOSms"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 2392
    .local v4, isEvdo:Z
    const-string v0, "SmsReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEvdo: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "  before inserMessage"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2394
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/mms/util/MsgForwardHelper;->autoForwardSMS(Landroid/content/Context;[Landroid/telephony/SmsMessage;)Z

    .line 2397
    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v6

    .line 2398
    .local v6, address:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/SmsReceiverService;->mcontext:Landroid/content/Context;

    .line 2399
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/transaction/SmsReceiverService;->IsInBlocklist:Z

    .line 2400
    const/4 v10, 0x0

    .line 2401
    .local v10, messageUri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportBlocklist()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {v6}, Lcom/android/mms/transaction/SmsReceiverService;->isNumberBlocked(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 2402
    :cond_9
    const-string v0, "SmsReceiverService"

    const-string v1, "sms notification lock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2403
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/transaction/SmsReceiverService;->mUpdateLocked:Z

    move-object v0, p0

    move-object v1, p0

    move v3, p2

    .line 2405
    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/android/mms/transaction/SmsReceiverService;->insertMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;IZ[I)Landroid/net/Uri;

    move-result-object v10

    .line 2407
    if-eqz v10, :cond_b

    .line 2408
    iget-boolean v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mIsNeedNotifyForReplaceSMS:Z

    if-eqz v0, :cond_a

    .line 2409
    const/4 v0, 0x1

    const/4 v1, 0x1

    const/4 v3, 0x1

    invoke-static {p0, v0, v1, v3, v10}, Lcom/android/mms/transaction/MessagingNotification;->updateNewMessageIndicator(Landroid/content/Context;ZZZLandroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2418
    :cond_a
    :goto_1
    const-string v0, "SmsReceiverService"

    const-string v1, "sms notification unlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2419
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/transaction/SmsReceiverService;->mUpdateLocked:Z

    .line 2435
    :goto_2
    if-eqz v10, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mIsNeedNotifyForReplaceSMS:Z

    if-eqz v0, :cond_0

    .line 2436
    const/4 v0, 0x0

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/transaction/SmsReceiverService;->sendDatamanageIntent(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 2413
    :cond_b
    const/16 v0, 0x7d1

    :try_start_1
    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->alertWithoutNotificationIcon(Landroid/content/Context;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2418
    :catchall_0
    move-exception v0

    const-string v1, "SmsReceiverService"

    const-string v3, "sms notification unlock"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2419
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/mms/transaction/SmsReceiverService;->mUpdateLocked:Z

    throw v0

    .line 2424
    :cond_c
    invoke-direct {p0}, Lcom/android/mms/transaction/SmsReceiverService;->needToSaveBlockMessage()Z

    move-result v0

    if-nez v0, :cond_d

    .line 2426
    const-string v0, "SmsReceiverService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2427
    const-string v0, "SmsReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is blocked and saving blocked messages is disabled."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_d
    move-object v0, p0

    move-object v1, p0

    move v3, p2

    .line 2431
    invoke-direct/range {v0 .. v5}, Lcom/android/mms/transaction/SmsReceiverService;->insertMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;IZ[I)Landroid/net/Uri;

    move-result-object v10

    goto :goto_2
.end method

.method private handleSmsSent(Landroid/content/Intent;)V
    .locals 30
    .parameter "intent"

    .prologue
    .line 1313
    const-string v4, "SmsReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSmsSent start> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/mms/transaction/SmsReceiverService;->mSendingCnt:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportPacketSms()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1316
    invoke-direct/range {p0 .. p1}, Lcom/android/mms/transaction/SmsReceiverService;->kddiHandleSmsSent(Landroid/content/Intent;)V

    .line 1495
    :goto_0
    return-void

    .line 1320
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v29

    .line 1321
    .local v29, uri:Landroid/net/Uri;
    const-string v4, "SendNextMsg"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v25

    .line 1322
    .local v25, sendNextMsg:Z
    const-string v4, "under_retry"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v28

    .line 1323
    .local v28, underRetry:Z
    const-string v4, "middle_success"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v23

    .line 1324
    .local v23, middlesuccess:Z
    const-string v4, "auto_send"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    .line 1328
    .local v17, auto_send:Z
    if-nez v28, :cond_2

    invoke-static {}, Lcom/android/mms/MmsApp;->isImproveSmsSending()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1329
    sget-object v5, Lcom/android/mms/transaction/SmsReceiverService;->mSendingCntLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1330
    :try_start_0
    sget v4, Lcom/android/mms/transaction/SmsReceiverService;->mSendingCnt:I

    add-int/lit8 v4, v4, -0x1

    sput v4, Lcom/android/mms/transaction/SmsReceiverService;->mSendingCnt:I

    .line 1332
    sget v4, Lcom/android/mms/transaction/SmsReceiverService;->mSendingCnt:I

    if-gez v4, :cond_1

    const/4 v4, 0x0

    sput v4, Lcom/android/mms/transaction/SmsReceiverService;->mSendingCnt:I

    .line 1333
    :cond_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1335
    :cond_2
    const-string v4, "SmsReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "underRetry? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", next? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    sget v4, Lcom/android/mms/transaction/SmsReceiverService;->mSendingCnt:I

    if-gtz v4, :cond_3

    const/16 v25, 0x1

    .line 1339
    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/android/mms/transaction/SmsReceiverService;->checkIfNeedAck(Landroid/content/Intent;)V

    .line 1343
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    move/from16 v22, v0

    .line 1344
    .local v22, iResultCode:I
    if-eqz p1, :cond_4

    .line 1345
    const-string v4, "result"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    .line 1346
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    move/from16 v0, v22

    if-eq v4, v0, :cond_4

    .line 1347
    const-string v4, "SmsReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SmsReceiverService/handleSmsSent mResultCode/iResultCode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    .line 1353
    :cond_4
    const/16 v21, 0x0

    .line 1354
    .local v21, groupMessage:Lcom/android/mms/transaction/GroupMessage;
    const-wide/16 v8, 0x0

    .line 1355
    .local v8, groupMessageId:J
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportNotificationEnhancement()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1356
    const-string v4, "groupMessageId"

    const-wide/16 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 1357
    invoke-static {v8, v9}, Lcom/android/mms/transaction/MessagingNotification;->getGroupMessage(J)Lcom/android/mms/transaction/GroupMessage;

    move-result-object v21

    .line 1358
    if-eqz v21, :cond_5

    const-string v4, "bFirstOfAll"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1359
    sget-object v4, Lcom/android/mms/transaction/GroupMessage$Status;->RESULT_FAIL:Lcom/android/mms/transaction/GroupMessage$Status;

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v4}, Lcom/android/mms/transaction/GroupMessage;->updateStatus(Landroid/net/Uri;Lcom/android/mms/transaction/GroupMessage$Status;)V

    .line 1363
    :cond_5
    const-string v4, "SmsReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mResultCode> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", middlesuccess> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    const-string v4, "SmsReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSmsSent sending uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    invoke-direct/range {p0 .. p1}, Lcom/android/mms/transaction/SmsReceiverService;->copyMoSmsToUICC(Landroid/content/Intent;)V

    .line 1370
    const/4 v4, -0x1

    move/from16 v0, v22

    if-ne v0, v4, :cond_b

    .line 1374
    if-nez v23, :cond_6

    .line 1375
    const/4 v4, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v22

    invoke-direct {v0, v1, v4, v2}, Lcom/android/mms/transaction/SmsReceiverService;->moveMessageToFolder(Landroid/net/Uri;II)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1376
    const-string v4, "SmsReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSmsSent: failed to move message "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to sent folder"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsApp;->isImproveSmsSending()Z

    move-result v4

    if-eqz v4, :cond_7

    if-eqz v25, :cond_7

    .line 1388
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->sendFirstQueuedMessage()V

    .line 1392
    :cond_7
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->updateSendFailedNotification(Landroid/content/Context;)V

    .line 1395
    if-eqz v21, :cond_8

    .line 1396
    sget-object v4, Lcom/android/mms/transaction/GroupMessage$Status;->RESULT_OK:Lcom/android/mms/transaction/GroupMessage$Status;

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v4}, Lcom/android/mms/transaction/GroupMessage;->updateStatus(Landroid/net/Uri;Lcom/android/mms/transaction/GroupMessage$Status;)V

    .line 1398
    :cond_8
    const-string v4, "SmsReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "got sent success: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    if-nez v23, :cond_9

    .line 1400
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v4, v5, v8, v9}, Lcom/android/mms/transaction/MessagingNotification;->showSendNotification(Landroid/content/Context;Landroid/net/Uri;J)V

    .line 1401
    const/4 v4, 0x1

    invoke-virtual/range {v29 .. v29}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/mms/transaction/SmsReceiverService;->sendDatamanageIntent(ZLjava/lang/String;)V

    .line 1489
    :cond_9
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsApp;->isImproveSmsSending()Z

    move-result v4

    if-nez v4, :cond_a

    .line 1491
    invoke-static {}, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->notifyNextPendMegtoSend()V

    .line 1494
    :cond_a
    const-string v4, "SmsReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSmsSent end> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/mms/transaction/SmsReceiverService;->mSendingCnt:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1333
    .end local v8           #groupMessageId:J
    .end local v21           #groupMessage:Lcom/android/mms/transaction/GroupMessage;
    .end local v22           #iResultCode:I
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 1405
    .restart local v8       #groupMessageId:J
    .restart local v21       #groupMessage:Lcom/android/mms/transaction/GroupMessage;
    .restart local v22       #iResultCode:I
    :cond_b
    const/4 v4, 0x2

    move/from16 v0, v22

    if-eq v0, v4, :cond_c

    const/4 v4, 0x4

    move/from16 v0, v22

    if-ne v0, v4, :cond_f

    .line 1411
    :cond_c
    invoke-static {}, Lcom/android/mms/MmsApp;->isImproveSmsSending()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1412
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->registerForServiceStateChanges()V

    .line 1417
    :goto_2
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0xa8

    if-ne v4, v5, :cond_e

    .line 1419
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SmsReceiverService;->mToastHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/SmsReceiverService;->mToastHandler:Landroid/os/Handler;

    const/16 v6, 0x65

    move-object/from16 v0, v29

    invoke-virtual {v5, v6, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 1414
    :cond_d
    invoke-static {}, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->getInstance()Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->register(Landroid/content/Context;)V

    goto :goto_2

    .line 1422
    :cond_e
    const/4 v4, 0x6

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v22

    invoke-direct {v0, v1, v4, v2}, Lcom/android/mms/transaction/SmsReceiverService;->moveMessageToFolder(Landroid/net/Uri;II)Z

    .line 1424
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SmsReceiverService;->mToastHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/SmsReceiverService;->mToastHandler:Landroid/os/Handler;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 1434
    :cond_f
    if-nez v28, :cond_10

    .line 1435
    const/4 v4, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v22

    move/from16 v3, v17

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/mms/transaction/SmsReceiverService;->moveMessageToFolder(Landroid/net/Uri;IIZ)Z

    .line 1436
    invoke-static {}, Lcom/android/mms/MmsApp;->isImproveSmsSending()Z

    move-result v4

    if-eqz v4, :cond_10

    if-eqz v25, :cond_10

    .line 1437
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->sendFirstQueuedMessage()V

    .line 1441
    :cond_10
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSentSmsErrorCodeHandling()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1442
    const-string v4, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/mms/transaction/SmsReceiverService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/telephony/TelephonyManager;

    .line 1443
    .local v26, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v26 .. v26}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    if-eqz v4, :cond_11

    .line 1444
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplication()Landroid/app/Application;

    move-result-object v4

    const/4 v5, 0x0

    move/from16 v0, v22

    add-int/lit16 v6, v0, -0x7d0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-static/range {v4 .. v9}, Lcom/android/mms/transaction/MessagingNotification;->notifySendFailed(Landroid/content/Context;ZILandroid/net/Uri;J)V

    goto/16 :goto_0

    .line 1453
    :cond_11
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/SmsReceiverService;->getErrorClass(I)I

    move-result v19

    .line 1454
    .local v19, errorClass:I
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/SmsReceiverService;->getErrorCause(I)I

    move-result v18

    .line 1455
    .local v18, errorCause:I
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/mms/transaction/SmsReceiverService;->getErrorString(Landroid/content/Context;Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v20

    .line 1461
    .local v20, errorStr:Ljava/lang/String;
    const-string v4, "SmsReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Sms Receiver Service: Class> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Sms Result code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/SmsReceiverService;->convertCdmaErrorCauseCodeToastMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1465
    .local v27, toastMsg:Ljava/lang/String;
    if-nez v27, :cond_12

    .line 1466
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplication()Landroid/app/Application;

    move-result-object v4

    const/4 v5, 0x0

    move/from16 v0, v22

    add-int/lit16 v6, v0, -0x7d0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-static/range {v4 .. v9}, Lcom/android/mms/transaction/MessagingNotification;->notifySendFailed(Landroid/content/Context;ZILandroid/net/Uri;J)V

    .line 1474
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SmsReceiverService;->mToastHandler:Landroid/os/Handler;

    const/4 v5, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v27

    invoke-virtual {v4, v5, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v24

    .line 1476
    .local v24, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SmsReceiverService;->mToastHandler:Landroid/os/Handler;

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 1481
    .end local v18           #errorCause:I
    .end local v19           #errorClass:I
    .end local v20           #errorStr:Ljava/lang/String;
    .end local v24           #msg:Landroid/os/Message;
    .end local v26           #tm:Landroid/telephony/TelephonyManager;
    .end local v27           #toastMsg:Ljava/lang/String;
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplication()Landroid/app/Application;

    move-result-object v10

    const/4 v11, 0x0

    move/from16 v0, v22

    add-int/lit16 v12, v0, -0x7d0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v14

    move-object/from16 v13, p1

    move-wide v15, v8

    invoke-static/range {v10 .. v16}, Lcom/android/mms/transaction/MessagingNotification;->notifySendFailed(Landroid/content/Context;ZILandroid/content/Intent;Landroid/net/Uri;J)V

    goto/16 :goto_1
.end method

.method private handleSmsSent2(Landroid/content/Intent;)V
    .locals 38
    .parameter "intent"

    .prologue
    .line 1051
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportPacketSms()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1052
    invoke-direct/range {p0 .. p1}, Lcom/android/mms/transaction/SmsReceiverService;->kddiHandleSmsSent(Landroid/content/Intent;)V

    .line 1309
    :goto_0
    return-void

    .line 1056
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    .line 1057
    .local v11, uri:Landroid/net/Uri;
    const-string v3, "under_retry"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v35

    .line 1058
    .local v35, underRetry:Z
    const-string v3, "middle_success"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v29

    .line 1059
    .local v29, middlesuccess:Z
    const-string v3, "auto_send"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v19

    .line 1061
    .local v19, auto_send:Z
    invoke-direct/range {p0 .. p1}, Lcom/android/mms/transaction/SmsReceiverService;->checkIfNeedAck(Landroid/content/Intent;)V

    .line 1065
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    move/from16 v26, v0

    .line 1066
    .local v26, iResultCode:I
    if-eqz p1, :cond_1

    .line 1067
    const-string v3, "result"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v26

    .line 1069
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    move/from16 v0, v26

    if-eq v3, v0, :cond_1

    .line 1070
    const-string v3, "SmsReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SmsReceiverService/handleSmsSent mResultCode/iResultCode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    .line 1076
    :cond_1
    const/16 v25, 0x0

    .line 1077
    .local v25, groupMessage:Lcom/android/mms/transaction/GroupMessage;
    const-wide/16 v7, 0x0

    .line 1078
    .local v7, groupMessageId:J
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportNotificationEnhancement()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1079
    const-string v3, "groupMessageId"

    const-wide/16 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    .line 1080
    invoke-static {v7, v8}, Lcom/android/mms/transaction/MessagingNotification;->getGroupMessage(J)Lcom/android/mms/transaction/GroupMessage;

    move-result-object v25

    .line 1081
    if-eqz v25, :cond_2

    const-string v3, "bFirstOfAll"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1082
    sget-object v3, Lcom/android/mms/transaction/GroupMessage$Status;->RESULT_FAIL:Lcom/android/mms/transaction/GroupMessage$Status;

    move-object/from16 v0, v25

    invoke-virtual {v0, v11, v3}, Lcom/android/mms/transaction/GroupMessage;->updateStatus(Landroid/net/Uri;Lcom/android/mms/transaction/GroupMessage$Status;)V

    .line 1088
    :cond_2
    const-string v3, "Jerry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mResultCode>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x61

    if-eq v3, v4, :cond_3

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0xad

    if-ne v3, v4, :cond_5

    :cond_3
    const-string v3, "gsm.vzw.sms.writeuicc"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    .line 1094
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_9

    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->isCdmaMo()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_9

    .line 1096
    const/16 v28, 0x0

    .line 1097
    .local v28, indexes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, -0x1

    move/from16 v0, v26

    if-ne v0, v3, :cond_8

    .line 1098
    const/4 v3, 0x5

    invoke-static {v11, v3}, Lcom/android/mms/util/SimIoUtil;->savetoCSIM(Landroid/net/Uri;I)Ljava/util/ArrayList;

    move-result-object v28

    .line 1104
    :cond_4
    :goto_1
    if-eqz v28, :cond_5

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 1105
    new-instance v36, Landroid/content/ContentValues;

    const/4 v3, 0x1

    move-object/from16 v0, v36

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 1106
    .local v36, values:Landroid/content/ContentValues;
    const-string v3, "index_on_sim"

    invoke-static/range {v28 .. v28}, Lcom/android/mms/util/SimIndexUtil;->turnIndexesToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v3, v11, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1126
    .end local v28           #indexes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v36           #values:Landroid/content/ContentValues;
    :cond_5
    :goto_2
    const/4 v3, -0x1

    move/from16 v0, v26

    if-ne v0, v3, :cond_c

    .line 1127
    const/4 v3, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v11, v3, v1}, Lcom/android/mms/transaction/SmsReceiverService;->asyncMoveMessageToFolder(Landroid/net/Uri;II)V

    .line 1139
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->updateSendFailedNotification(Landroid/content/Context;)V

    .line 1150
    if-eqz v25, :cond_6

    .line 1151
    sget-object v3, Lcom/android/mms/transaction/GroupMessage$Status;->RESULT_OK:Lcom/android/mms/transaction/GroupMessage$Status;

    move-object/from16 v0, v25

    invoke-virtual {v0, v11, v3}, Lcom/android/mms/transaction/GroupMessage;->updateStatus(Landroid/net/Uri;Lcom/android/mms/transaction/GroupMessage$Status;)V

    .line 1153
    :cond_6
    const-string v3, "SmsReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "got sent success: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    if-nez v29, :cond_7

    .line 1155
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v3, v4, v7, v8}, Lcom/android/mms/transaction/MessagingNotification;->showSendNotification(Landroid/content/Context;Landroid/net/Uri;J)V

    .line 1156
    const/4 v3, 0x1

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/mms/transaction/SmsReceiverService;->sendDatamanageIntent(ZLjava/lang/String;)V

    .line 1307
    :cond_7
    :goto_3
    invoke-static {}, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->notifyNextPendMegtoSend()V

    goto/16 :goto_0

    .line 1099
    .restart local v28       #indexes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_8
    if-nez v35, :cond_4

    const-string v3, "bFirstOfAll"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 1100
    const/4 v3, 0x7

    invoke-static {v11, v3}, Lcom/android/mms/util/SimIoUtil;->savetoCSIM(Landroid/net/Uri;I)Ljava/util/ArrayList;

    move-result-object v28

    goto/16 :goto_1

    .line 1110
    .end local v28           #indexes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_9
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v33

    .line 1111
    .local v33, smsManager:Landroid/telephony/SmsManager;
    const-string v3, "pdu"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v32

    .line 1112
    .local v32, pdu:[B
    invoke-static/range {v32 .. v32}, Lcom/android/mms/util/SimIoUtil;->fillGsmSubmitPduWithValidityTime([B)[B

    move-result-object v31

    .line 1113
    .local v31, newPdu:[B
    const/16 v27, 0x0

    .line 1114
    .local v27, index:I
    if-eqz v31, :cond_a

    .line 1115
    const/4 v3, -0x1

    move/from16 v0, v26

    if-ne v0, v3, :cond_b

    .line 1116
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x5

    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-virtual {v0, v3, v4, v1, v5}, Landroid/telephony/SmsManager;->copyMessageToIccForResult(Z[B[BI)I

    move-result v27

    .line 1120
    :cond_a
    :goto_4
    if-lez v27, :cond_5

    .line 1121
    new-instance v3, Lcom/android/mms/transaction/SmsReceiverService$UpdateSimIndexAsyncTask;

    move/from16 v0, v27

    invoke-direct {v3, v0, v11}, Lcom/android/mms/transaction/SmsReceiverService$UpdateSimIndexAsyncTask;-><init>(ILandroid/net/Uri;)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/android/mms/transaction/SmsReceiverService$UpdateSimIndexAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_2

    .line 1117
    :cond_b
    if-nez v35, :cond_a

    const-string v3, "bFirstOfAll"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_a

    .line 1118
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-virtual {v0, v3, v4, v1, v5}, Landroid/telephony/SmsManager;->copyMessageToIccForResult(Z[B[BI)I

    move-result v27

    goto :goto_4

    .line 1160
    .end local v27           #index:I
    .end local v31           #newPdu:[B
    .end local v32           #pdu:[B
    .end local v33           #smsManager:Landroid/telephony/SmsManager;
    :cond_c
    const/4 v3, 0x2

    move/from16 v0, v26

    if-eq v0, v3, :cond_d

    const/4 v3, 0x4

    move/from16 v0, v26

    if-ne v0, v3, :cond_10

    .line 1162
    :cond_d
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0xa8

    if-ne v3, v4, :cond_e

    .line 1164
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsReceiverService;->mToastHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SmsReceiverService;->mToastHandler:Landroid/os/Handler;

    const/16 v5, 0x65

    invoke-virtual {v4, v5, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1176
    :goto_5
    const-string v3, "SmsReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no_service, register: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    invoke-static {}, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->getInstance()Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->register(Landroid/content/Context;)V

    goto/16 :goto_3

    .line 1167
    :cond_e
    if-nez v35, :cond_f

    .line 1168
    const/4 v3, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v11, v3, v1}, Lcom/android/mms/transaction/SmsReceiverService;->asyncMoveMessageToFolder(Landroid/net/Uri;II)V

    .line 1171
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsReceiverService;->mToastHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SmsReceiverService;->mToastHandler:Landroid/os/Handler;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_5

    .line 1181
    :cond_10
    if-nez v35, :cond_11

    .line 1182
    const/4 v3, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v19

    invoke-direct {v0, v11, v3, v1, v2}, Lcom/android/mms/transaction/SmsReceiverService;->asyncMoveMessageToFolder(Landroid/net/Uri;IIZ)V

    .line 1188
    :cond_11
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_12

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0xa8

    if-ne v3, v4, :cond_1f

    .line 1190
    :cond_12
    const-string v3, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/mms/transaction/SmsReceiverService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/telephony/TelephonyManager;

    .line 1191
    .local v34, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v34 .. v34}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    if-eqz v3, :cond_13

    .line 1192
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplication()Landroid/app/Application;

    move-result-object v3

    const/4 v4, 0x0

    move/from16 v0, v26

    add-int/lit16 v5, v0, -0x7d0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-static/range {v3 .. v8}, Lcom/android/mms/transaction/MessagingNotification;->notifySendFailed(Landroid/content/Context;ZILandroid/net/Uri;J)V

    goto/16 :goto_0

    .line 1204
    :cond_13
    const/16 v22, 0x3

    .line 1205
    .local v22, errorClass:I
    const/16 v21, -0x1

    .line 1206
    .local v21, errorCause:I
    const/4 v3, 0x1

    move/from16 v0, v26

    if-le v0, v3, :cond_1b

    .line 1207
    move/from16 v0, v26

    add-int/lit16 v0, v0, -0x7d0

    move/from16 v23, v0

    .line 1208
    .local v23, errorCode:I
    shr-int/lit8 v22, v23, 0x10

    .line 1209
    const/4 v3, 0x2

    move/from16 v0, v22

    if-lt v0, v3, :cond_14

    const/4 v3, 0x3

    move/from16 v0, v22

    if-le v0, v3, :cond_15

    .line 1210
    :cond_14
    const/16 v22, 0x3

    .line 1211
    :cond_15
    const v3, 0xffff

    and-int v21, v23, v3

    .line 1212
    const-string v3, "Jerry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "errorCause1 >"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    const-string v3, "Jerry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "errorClass1 >"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    .end local v23           #errorCode:I
    :goto_6
    const-string v3, "Jerry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "errorCause >"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    const-string v3, "Jerry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "errorClass >"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    const-string v24, ""

    .line 1220
    .local v24, errorStr:Ljava/lang/String;
    const/16 v3, 0x62

    move/from16 v0, v21

    if-eq v0, v3, :cond_16

    const/16 v3, 0x61

    move/from16 v0, v21

    if-ne v0, v3, :cond_18

    .line 1221
    :cond_16
    const-string v3, "Jerry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "URI >"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/transaction/SmsReceiverService;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v9 .. v15}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 1224
    .local v20, cursor:Landroid/database/Cursor;
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1225
    const-string v3, "Jerry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cursor >"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", cursor.count >"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    if-eqz v20, :cond_18

    .line 1227
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_17

    .line 1228
    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 1231
    :cond_17
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 1236
    .end local v20           #cursor:Landroid/database/Cursor;
    :cond_18
    const/16 v37, 0x0

    .line 1237
    .local v37, verizonErrorMessage:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsApp;->isIotProject()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1c

    .line 1238
    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/SmsReceiverService;->converCdmaErrorCauseCodeToastMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 1242
    :goto_7
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0xa8

    if-ne v3, v4, :cond_1d

    .line 1243
    if-nez v37, :cond_19

    .line 1244
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplication()Landroid/app/Application;

    move-result-object v3

    const/4 v4, 0x0

    move/from16 v0, v26

    add-int/lit16 v5, v0, -0x7d0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-static/range {v3 .. v8}, Lcom/android/mms/transaction/MessagingNotification;->notifySendFailed(Landroid/content/Context;ZILandroid/net/Uri;J)V

    .line 1261
    :cond_19
    :goto_8
    const-string v3, "SmsReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Sms Receiver Service: Class"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Sms Result code:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsReceiverService;->mToastHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v30

    .line 1264
    .local v30, msg:Landroid/os/Message;
    move/from16 v0, v21

    move-object/from16 v1, v30

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 1265
    move/from16 v0, v22

    move-object/from16 v1, v30

    iput v0, v1, Landroid/os/Message;->arg2:I

    .line 1266
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0xa8

    if-ne v3, v4, :cond_1e

    .line 1267
    move-object/from16 v0, v37

    move-object/from16 v1, v30

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1280
    :goto_9
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0xa8

    if-eq v3, v4, :cond_1a

    invoke-static {}, Lcom/android/mms/MmsApp;->isIotProject()Z

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1a

    invoke-static {}, Lcom/android/mms/MmsApp;->isIotProject()Z

    move-result v3

    if-nez v3, :cond_7

    if-nez v35, :cond_7

    .line 1283
    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsReceiverService;->mToastHandler:Landroid/os/Handler;

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_3

    .line 1215
    .end local v24           #errorStr:Ljava/lang/String;
    .end local v30           #msg:Landroid/os/Message;
    .end local v37           #verizonErrorMessage:Ljava/lang/String;
    :cond_1b
    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    goto/16 :goto_6

    .line 1240
    .restart local v24       #errorStr:Ljava/lang/String;
    .restart local v37       #verizonErrorMessage:Ljava/lang/String;
    :cond_1c
    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/SmsReceiverService;->converVerizonCdmaErrorCauseCodeToastMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v37

    goto/16 :goto_7

    .line 1249
    :cond_1d
    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/SmsReceiverService;->converCdmaErrorCauseCodeToastMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_19

    .line 1250
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplication()Landroid/app/Application;

    move-result-object v12

    const/4 v13, 0x0

    move/from16 v0, v26

    add-int/lit16 v14, v0, -0x7d0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v16

    move-object/from16 v15, p1

    move-wide/from16 v17, v7

    invoke-static/range {v12 .. v18}, Lcom/android/mms/transaction/MessagingNotification;->notifySendFailed(Landroid/content/Context;ZILandroid/content/Intent;Landroid/net/Uri;J)V

    goto/16 :goto_8

    .line 1269
    .restart local v30       #msg:Landroid/os/Message;
    :cond_1e
    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/SmsReceiverService;->converCdmaErrorCauseCodeToastMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v30

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_9

    .line 1292
    .end local v21           #errorCause:I
    .end local v22           #errorClass:I
    .end local v24           #errorStr:Ljava/lang/String;
    .end local v30           #msg:Landroid/os/Message;
    .end local v34           #tm:Landroid/telephony/TelephonyManager;
    .end local v37           #verizonErrorMessage:Ljava/lang/String;
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplication()Landroid/app/Application;

    move-result-object v12

    const/4 v13, 0x0

    move/from16 v0, v26

    add-int/lit16 v14, v0, -0x7d0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v16

    move-object/from16 v15, p1

    move-wide/from16 v17, v7

    invoke-static/range {v12 .. v18}, Lcom/android/mms/transaction/MessagingNotification;->notifySendFailed(Landroid/content/Context;ZILandroid/content/Intent;Landroid/net/Uri;J)V

    goto/16 :goto_3
.end method

.method private handleUnSupSmsReceived(Landroid/content/Intent;)V
    .locals 10
    .parameter "intent"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 4320
    invoke-static {p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v1

    .line 4321
    .local v1, msgs:[Landroid/telephony/SmsMessage;
    aget-object v3, v1, v9

    .line 4324
    .local v3, sms:Landroid/telephony/SmsMessage;
    invoke-static {v3, p0}, Lcom/android/mms/transaction/SmsReceiverService;->extractContentValues(Landroid/telephony/SmsMessage;Landroid/content/Context;)Landroid/content/ContentValues;

    move-result-object v5

    .line 4326
    .local v5, values:Landroid/content/ContentValues;
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090378

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 4327
    .local v4, unsupStr:Ljava/lang/String;
    const-string v6, "body"

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4328
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 4330
    .local v2, resolver:Landroid/content/ContentResolver;
    const-string v6, "SmsReceiverService"

    const-string v7, "sms notification lock"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4331
    sput-boolean v8, Lcom/android/mms/transaction/SmsReceiverService;->mUpdateLocked:Z

    .line 4333
    :try_start_0
    sget-object v6, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v2, v6, v5}, Lcom/google/android/mms/util/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 4335
    .local v0, messageUri:Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 4336
    const/4 v6, 0x1

    invoke-static {p0, v6}, Lcom/android/mms/transaction/MessagingNotification;->updateNewMessageIndicator(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4339
    :cond_0
    const-string v6, "SmsReceiverService"

    const-string v7, "sms notification unlock"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4340
    sput-boolean v9, Lcom/android/mms/transaction/SmsReceiverService;->mUpdateLocked:Z

    .line 4342
    return-void

    .line 4339
    .end local v0           #messageUri:Landroid/net/Uri;
    :catchall_0
    move-exception v6

    const-string v7, "SmsReceiverService"

    const-string v8, "sms notification unlock"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4340
    sput-boolean v9, Lcom/android/mms/transaction/SmsReceiverService;->mUpdateLocked:Z

    throw v6
.end method

.method private insertCmasMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;J)Landroid/net/Uri;
    .locals 20
    .parameter "context"
    .parameter "msgs"
    .parameter "nowTime"

    .prologue
    .line 3932
    const/16 v17, 0x0

    aget-object v14, p2, v17

    .line 3933
    .local v14, sms:Landroid/telephony/SmsMessage;
    move-object v8, v14

    .line 3934
    .local v8, isms:Landroid/telephony/HtcIfSmsMessage;
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-direct {v0, v14, v1, v2}, Lcom/android/mms/transaction/SmsReceiverService;->extractCmasContentValues(Landroid/telephony/SmsMessage;J)Landroid/content/ContentValues;

    move-result-object v16

    .line 3935
    .local v16, values:Landroid/content/ContentValues;
    invoke-interface {v8}, Landroid/telephony/HtcIfSmsMessage;->getHtcCmasMessage()Landroid/telephony/HtcCmasMessage;

    move-result-object v4

    .line 3936
    .local v4, cmas:Landroid/telephony/HtcCmasMessage;
    invoke-virtual {v4}, Landroid/telephony/HtcCmasMessage;->getCmasFormat()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    const/4 v7, 0x1

    .line 3938
    .local v7, isCdma:Z
    :goto_0
    move-object/from16 v0, p2

    array-length v11, v0

    .line 3939
    .local v11, pduCount:I
    const-string v17, "SmsReceiverService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "pduCount> "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3940
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v11, v0, :cond_5

    .line 3943
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v7}, Lcom/android/mms/transaction/SmsReceiverService;->getMessageBody([Landroid/telephony/SmsMessage;Z)Ljava/lang/String;

    move-result-object v3

    .line 3944
    .local v3, body:Ljava/lang/String;
    if-nez v3, :cond_0

    const v17, 0x7f09011d

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/SmsReceiverService;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3947
    :cond_0
    if-eqz v7, :cond_4

    .line 3948
    invoke-virtual {v14}, Landroid/telephony/SmsMessage;->getPdu()[B

    move-result-object v10

    .line 3953
    .local v10, pdu:[B
    :goto_1
    const-string v17, "body"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3954
    if-eqz v10, :cond_1

    .line 3955
    const-string v17, "pdu"

    invoke-static {v10}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3993
    .end local v3           #body:Ljava/lang/String;
    .end local v10           #pdu:[B
    :cond_1
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 3994
    .local v13, resolver:Landroid/content/ContentResolver;
    const/4 v15, 0x0

    .line 3997
    .local v15, uri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportCmasRecycle()Z

    move-result v17

    if-eqz v17, :cond_d

    .line 3998
    sget-object v17, Landroid/provider/Telephony$HtcCmas;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/mms/util/CmasRecycler;->tryToInsertWithRecycle(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v15

    .line 4009
    :goto_3
    if-nez v15, :cond_2

    .line 4010
    const-string v17, "SmsReceiverService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "insert cmas fail: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "body"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4012
    :cond_2
    return-object v15

    .line 3936
    .end local v7           #isCdma:Z
    .end local v11           #pduCount:I
    .end local v13           #resolver:Landroid/content/ContentResolver;
    .end local v15           #uri:Landroid/net/Uri;
    :cond_3
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 3950
    .restart local v3       #body:Ljava/lang/String;
    .restart local v7       #isCdma:Z
    .restart local v11       #pduCount:I
    :cond_4
    invoke-virtual {v4}, Landroid/telephony/HtcCmasMessage;->getPdu()[B

    move-result-object v10

    .restart local v10       #pdu:[B
    goto :goto_1

    .line 3958
    .end local v3           #body:Ljava/lang/String;
    .end local v10           #pdu:[B
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 3959
    .local v3, body:Ljava/lang/StringBuilder;
    const/4 v12, 0x0

    .line 3960
    .local v12, pdus:Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_4
    if-ge v6, v11, :cond_c

    .line 3961
    aget-object v14, p2, v6

    .line 3962
    if-nez v14, :cond_7

    .line 3960
    :cond_6
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 3963
    :cond_7
    const/4 v10, 0x0

    .line 3965
    .restart local v10       #pdu:[B
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Lcom/android/mms/transaction/SmsReceiverService;->getMessageBodyByIndex([Landroid/telephony/SmsMessage;IZ)Ljava/lang/String;

    move-result-object v9

    .line 3966
    .local v9, partMsg:Ljava/lang/String;
    if-eqz v7, :cond_a

    .line 3967
    invoke-virtual {v14}, Landroid/telephony/SmsMessage;->getPdu()[B

    move-result-object v10

    .line 3976
    :cond_8
    :goto_6
    if-eqz v10, :cond_9

    .line 3977
    if-nez v12, :cond_b

    .line 3978
    new-instance v12, Ljava/lang/StringBuilder;

    .end local v12           #pdus:Ljava/lang/StringBuilder;
    invoke-static {v10}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3984
    .restart local v12       #pdus:Ljava/lang/StringBuilder;
    :cond_9
    :goto_7
    if-eqz v9, :cond_6

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 3970
    :cond_a
    invoke-interface {v8}, Landroid/telephony/HtcIfSmsMessage;->getHtcCmasMessage()Landroid/telephony/HtcCmasMessage;

    move-result-object v4

    .line 3971
    if-eqz v4, :cond_8

    .line 3972
    invoke-virtual {v4}, Landroid/telephony/HtcCmasMessage;->getPdu()[B

    move-result-object v10

    goto :goto_6

    .line 3980
    :cond_b
    const-string v17, ";"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v10}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 3987
    .end local v9           #partMsg:Ljava/lang/String;
    .end local v10           #pdu:[B
    :cond_c
    const-string v17, "body"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3988
    if-eqz v12, :cond_1

    .line 3989
    const-string v17, "pdu"

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 4003
    .end local v3           #body:Ljava/lang/StringBuilder;
    .end local v6           #i:I
    .end local v12           #pdus:Ljava/lang/StringBuilder;
    .restart local v13       #resolver:Landroid/content/ContentResolver;
    .restart local v15       #uri:Landroid/net/Uri;
    :cond_d
    :try_start_0
    sget-object v17, Landroid/provider/Telephony$HtcCmas;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v16

    invoke-static {v0, v13, v1, v2}, Lcom/google/android/mms/util/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v15

    .line 4004
    const-string v17, "SmsReceiverService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "insert cmas> "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 4005
    :catch_0
    move-exception v5

    .line 4006
    .local v5, e:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3
.end method

.method private insertEarthquakeAlertMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;)Landroid/net/Uri;
    .locals 15
    .parameter "context"
    .parameter "msgs"

    .prologue
    .line 3865
    const/4 v12, 0x0

    aget-object v9, p2, v12

    .line 3866
    .local v9, sms:Landroid/telephony/SmsMessage;
    invoke-direct {p0, v9}, Lcom/android/mms/transaction/SmsReceiverService;->extractEarthquakeAlertContentValues(Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;

    move-result-object v11

    .line 3868
    .local v11, values:Landroid/content/ContentValues;
    move-object/from16 v0, p2

    array-length v6, v0

    .line 3869
    .local v6, pduCount:I
    const-string v12, "SmsReceiverService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "pduCount> "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3871
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3872
    .local v1, body:Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .line 3874
    .local v7, pdus:Ljava/lang/StringBuilder;
    const/4 v12, 0x1

    if-ne v6, v12, :cond_3

    .line 3876
    invoke-virtual {v9}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_2

    .line 3877
    const v12, 0x7f09011d

    invoke-virtual {p0, v12}, Lcom/android/mms/transaction/SmsReceiverService;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3883
    :goto_0
    invoke-virtual {v9}, Landroid/telephony/SmsMessage;->getPdu()[B

    move-result-object v5

    .line 3884
    .local v5, pdu:[B
    new-instance v7, Ljava/lang/StringBuilder;

    .end local v7           #pdus:Ljava/lang/StringBuilder;
    invoke-static {v5}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3911
    .end local v5           #pdu:[B
    .restart local v7       #pdus:Ljava/lang/StringBuilder;
    :cond_0
    const-string v12, "body"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3914
    if-eqz v7, :cond_1

    .line 3915
    const-string v12, "pdu"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3917
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 3918
    .local v8, resolver:Landroid/content/ContentResolver;
    const/4 v10, 0x0

    .line 3920
    .local v10, uri:Landroid/net/Uri;
    :try_start_0
    sget-object v12, Landroid/provider/Telephony$HtcCmas;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    invoke-static {v0, v8, v12, v11}, Lcom/google/android/mms/util/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    .line 3921
    const-string v12, "SmsReceiverService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "insert earthquake alert> "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3926
    :goto_1
    return-object v10

    .line 3879
    .end local v8           #resolver:Landroid/content/ContentResolver;
    .end local v10           #uri:Landroid/net/Uri;
    :cond_2
    invoke-virtual {v9}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    goto :goto_0

    .line 3887
    :cond_3
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-ge v3, v6, :cond_0

    .line 3888
    aget-object v9, p2, v3

    .line 3889
    if-nez v9, :cond_5

    .line 3887
    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 3893
    :cond_5
    invoke-virtual {v9}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v4

    .line 3894
    .local v4, partMsg:Ljava/lang/String;
    invoke-virtual {v9}, Landroid/telephony/SmsMessage;->getPdu()[B

    move-result-object v5

    .line 3896
    .restart local v5       #pdu:[B
    if-eqz v4, :cond_6

    .line 3897
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3900
    :cond_6
    if-eqz v5, :cond_4

    .line 3901
    if-nez v7, :cond_7

    .line 3902
    new-instance v7, Ljava/lang/StringBuilder;

    .end local v7           #pdus:Ljava/lang/StringBuilder;
    invoke-static {v5}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .restart local v7       #pdus:Ljava/lang/StringBuilder;
    goto :goto_3

    .line 3904
    :cond_7
    const-string v12, ";"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v5}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 3922
    .end local v3           #i:I
    .end local v4           #partMsg:Ljava/lang/String;
    .end local v5           #pdu:[B
    .restart local v8       #resolver:Landroid/content/ContentResolver;
    .restart local v10       #uri:Landroid/net/Uri;
    :catch_0
    move-exception v2

    .line 3923
    .local v2, e:Ljava/lang/Exception;
    const-string v12, "SmsReceiverService"

    const-string v13, "insert earthquake alert fail.. "

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3924
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private insertMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;IZ[I)Landroid/net/Uri;
    .locals 3
    .parameter "context"
    .parameter "msgs"
    .parameter "port"
    .parameter "isevdo"
    .parameter "idxonsims"

    .prologue
    .line 2654
    const/4 v1, 0x0

    aget-object v0, p2, v1

    .line 2656
    .local v0, sms:Landroid/telephony/SmsMessage;
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v1

    sget-object v2, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    if-ne v1, v2, :cond_0

    .line 2657
    invoke-direct {p0, p1, p2, p4}, Lcom/android/mms/transaction/SmsReceiverService;->displayClassZeroMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;Z)V

    .line 2658
    const/4 v1, 0x0

    .line 2669
    :goto_0
    return-object v1

    .line 2662
    :cond_0
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xa8

    if-ne v1, v2, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 2664
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/transaction/SmsReceiverService;->replaceMessageVerizon(Landroid/content/Context;[Landroid/telephony/SmsMessage;IZ)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 2666
    :cond_1
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->isReplace()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2667
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/transaction/SmsReceiverService;->replaceMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;IZ)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 2669
    :cond_2
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/mms/transaction/SmsReceiverService;->storeMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;IZ[I)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method public static insertcbMessage(Landroid/content/Context;Landroid/content/Intent;Z)Landroid/net/Uri;
    .locals 14
    .parameter "context"
    .parameter "intent"
    .parameter "bForce"

    .prologue
    .line 4019
    if-nez p2, :cond_1

    const-string v11, "gs"

    const/4 v12, 0x0

    invoke-virtual {p1, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    if-nez v11, :cond_1

    .line 4020
    invoke-static {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->displayGsZeroMessage(Landroid/content/Context;Landroid/content/Intent;)V

    .line 4021
    const/4 v9, 0x0

    .line 4056
    :cond_0
    :goto_0
    return-object v9

    .line 4024
    :cond_1
    const-string v11, "pdus"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4025
    .local v3, msgs:Ljava/lang/String;
    const-string v11, "gs"

    const/4 v12, 0x0

    invoke-virtual {p1, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 4026
    .local v1, gs:I
    const-string v11, "upnum"

    const/4 v12, 0x0

    invoke-virtual {p1, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 4027
    .local v7, num:I
    const-string v11, "mId"

    const/4 v12, 0x0

    invoke-virtual {p1, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 4028
    .local v2, mid:I
    const-string v11, "dcs"

    const/4 v12, 0x0

    invoke-virtual {p1, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 4031
    .local v0, dcs:I
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 4032
    .local v10, values:Landroid/content/ContentValues;
    const-string v11, "address"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4033
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 4034
    .local v5, nowTime:J
    const/4 v11, 0x0

    invoke-static {v5, v6, v11}, Lcom/android/mms/ui/MessageUtils;->getDateString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4035
    .local v4, nowT:Ljava/lang/String;
    const-string v11, "SmsReceiverService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "cb device time: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4036
    const-string v11, "date"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4038
    const-string v11, "protocol"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4039
    const-string v11, "read"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4040
    const-string v11, "subject"

    const-string v12, "cb"

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4041
    const-string v11, "reply_path_present"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 4042
    const-string v11, "service_center"

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4044
    const-string v11, "body"

    invoke-virtual {v10, v11, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4045
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 4048
    .local v8, resolver:Landroid/content/ContentResolver;
    sget-object v11, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8, v11, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v9

    .line 4049
    .local v9, uri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/mms/MmsApp;->accumulateNewIncomingMSG()V

    .line 4051
    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_3_0()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 4052
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->sendSMSReceiveLog()V

    .line 4053
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->sendMsgCountLog(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method private isIncomingMessage(Landroid/database/Cursor;)Z
    .locals 3
    .parameter "cursor"

    .prologue
    const/4 v1, 0x1

    .line 4311
    const-string v2, "status"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 4313
    .local v0, messageStatus:I
    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isNumberBlocked(Ljava/lang/String;)Z
    .locals 12
    .parameter "number"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 2441
    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_V2_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    .line 2442
    .local v7, builder:Landroid/net/Uri$Builder;
    const-string v0, "blocklist"

    invoke-virtual {v7, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2443
    const-string v0, "number"

    invoke-virtual {v7, v0, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2444
    sget-object v0, Lcom/android/mms/transaction/SmsReceiverService;->mcontext:Landroid/content/Context;

    if-nez v0, :cond_0

    move v0, v10

    .line 2475
    :goto_0
    return v0

    .line 2447
    :cond_0
    const/4 v8, 0x0

    .line 2450
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Lcom/android/mms/transaction/SmsReceiverService;->mcontext:Landroid/content/Context;

    sget-object v1, Lcom/android/mms/transaction/SmsReceiverService;->mcontext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 2457
    :goto_1
    if-eqz v8, :cond_2

    .line 2460
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 2462
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/transaction/SmsReceiverService;->IsInBlocklist:Z

    .line 2463
    const-string v0, "SmsReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The Block Number is = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2472
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move v0, v11

    goto :goto_0

    .line 2453
    :catch_0
    move-exception v9

    .line 2454
    .local v9, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 2472
    .end local v9           #e:Ljava/lang/Exception;
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move v0, v10

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    move v0, v10

    .line 2475
    goto :goto_0
.end method

.method private kddiFormatCmailBody([Landroid/telephony/SmsMessage;)V
    .locals 2
    .parameter "msgs"

    .prologue
    .line 2297
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 2298
    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    .line 2297
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2303
    :cond_1
    return-void
.end method

.method private kddiHandleSmsSent(Landroid/content/Intent;)V
    .locals 10
    .parameter "intent"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v9, 0x4

    const/4 v4, 0x2

    const/4 v1, 0x0

    .line 1604
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    .line 1613
    .local v8, uri:Landroid/net/Uri;
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->checkIfNeedAck(Landroid/content/Intent;)V

    .line 1616
    iget v7, p0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    .line 1617
    .local v7, iResultCode:I
    const-string v0, "SmsReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mResultCode> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    if-eqz p1, :cond_0

    .line 1619
    const-string v0, "result"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 1620
    const-string v0, "SmsReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    iget v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    if-eq v0, v7, :cond_0

    .line 1623
    const-string v0, "SmsReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SmsReceiverService/handleSmsSent mResultCode/iResultCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    iput v7, p0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    .line 1654
    :cond_0
    const-string v0, "SmsReceiverService"

    const-string v2, "Received From PacketSMSManager"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    const-string v0, "SmsReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ResultCode["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    const/4 v0, -0x1

    if-eq v7, v0, :cond_1

    sget v0, Lcom/android/mms/custom/CustomizedManager$KddiSmsManager;->KDDI_RESULT_TR_OK:I

    if-eq v7, v0, :cond_1

    sget v0, Lcom/android/mms/custom/CustomizedManager$KddiSmsManager;->KDDI_RESULT_ST_OK:I

    if-eq v7, v0, :cond_1

    sget v0, Lcom/android/mms/custom/CustomizedManager$KddiSmsManager;->KDDI_RESULT_TR_CANCEL_COMPLETED:I

    if-eq v7, v0, :cond_1

    sget v0, Lcom/android/mms/custom/CustomizedManager$KddiSmsManager;->KDDI_RESULT_ST_CANCEL_COMPLETED:I

    if-ne v7, v0, :cond_2

    .line 1664
    :cond_1
    invoke-static {p0, v8, v4, v7}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    .line 1669
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->updateSendFailedNotification(Landroid/content/Context;)V

    .line 1671
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1, v5, v6}, Lcom/android/mms/transaction/MessagingNotification;->showSendNotification(Landroid/content/Context;Landroid/net/Uri;J)V

    .line 1745
    :goto_0
    invoke-static {}, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->notifyNextPendMegtoSend()V

    .line 1747
    return-void

    .line 1672
    :cond_2
    if-eq v7, v4, :cond_3

    if-ne v7, v9, :cond_4

    .line 1685
    :cond_3
    const/4 v0, 0x6

    invoke-static {p0, v8, v0, v7}, Lcom/android/mms/ui/MessageUtils;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    .line 1690
    iget-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mToastHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->mToastHandler:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1693
    invoke-static {}, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->getInstance()Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->register(Landroid/content/Context;)V

    goto :goto_0

    .line 1738
    :cond_4
    const/4 v0, 0x5

    invoke-static {p0, v8, v0, v7}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    .line 1739
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    move v2, v1

    move-object v3, p1

    invoke-static/range {v0 .. v6}, Lcom/android/mms/transaction/MessagingNotification;->notifySendFailed(Landroid/content/Context;ZILandroid/content/Intent;Landroid/net/Uri;J)V

    goto :goto_0
.end method

.method private moveMessageToFolder(Landroid/net/Uri;II)Z
    .locals 1
    .parameter "uri"
    .parameter "type"
    .parameter "errorCode"

    .prologue
    .line 968
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/mms/transaction/SmsReceiverService;->moveMessageToFolder(Landroid/net/Uri;IIZ)Z

    move-result v0

    return v0
.end method

.method private moveMessageToFolder(Landroid/net/Uri;IIZ)Z
    .locals 5
    .parameter "uri"
    .parameter "type"
    .parameter "errorCode"
    .parameter "autosend"

    .prologue
    .line 971
    const-string v2, "SmsReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveMessageToFolder: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1, p2, p3}, Lcom/android/mms/ui/MessageUtils;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    move-result v1

    .line 981
    .local v1, result:Z
    const-string v2, "Jerry1"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "autosend >"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    invoke-static {}, Lcom/android/mms/util/RoamingGuideHelper;->getInstance()Lcom/android/mms/util/RoamingGuideHelper;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz p4, :cond_0

    .line 983
    invoke-static {}, Lcom/android/mms/util/RoamingGuideHelper;->getInstance()Lcom/android/mms/util/RoamingGuideHelper;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/mms/util/RoamingGuideHelper;->moveAutoSend2AutoSendType(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 988
    :cond_0
    :goto_0
    return v1

    .line 984
    .end local v1           #result:Z
    :catch_0
    move-exception v0

    .line 985
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "SmsReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveMessageToFolder exception >"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    const/4 v1, 0x0

    .restart local v1       #result:Z
    goto :goto_0
.end method

.method private moveOutboxMessagesToQueuedBox()V
    .locals 16

    .prologue
    .line 2548
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v3, v0

    .line 2552
    .local v3, OUTBOX_PROJECTION:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Sms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2554
    .local v10, c:Landroid/database/Cursor;
    if-eqz v10, :cond_0

    .line 2556
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v13

    .line 2557
    .local v13, size:I
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2558
    const-string v0, "SmsReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OutBoxSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2559
    if-eqz v13, :cond_0

    .line 2561
    new-instance v7, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v7, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 2562
    .local v7, values:Landroid/content/ContentValues;
    const/16 v14, 0xa

    .line 2563
    .local v14, sleepnum:I
    const-string v0, "type"

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2565
    int-to-double v0, v13

    int-to-double v4, v14

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v15, v0

    .line 2566
    .local v15, times:I
    const-string v0, "SmsReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatetimes = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2567
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    if-ge v12, v15, :cond_0

    .line 2569
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Telephony$Sms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id in (select _id from sms where type = 4 limit 0,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2576
    const-wide/16 v0, 0xc8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2567
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 2577
    :catch_0
    move-exception v11

    .line 2579
    .local v11, e:Ljava/lang/InterruptedException;
    invoke-virtual {v11}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 2596
    .end local v7           #values:Landroid/content/ContentValues;
    .end local v11           #e:Ljava/lang/InterruptedException;
    .end local v12           #i:I
    .end local v13           #size:I
    .end local v14           #sleepnum:I
    .end local v15           #times:I
    :cond_0
    return-void
.end method

.method private needToSaveBlockMessage()Z
    .locals 3

    .prologue
    .line 2479
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2480
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "pref_key_save_block_message"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private registerForServiceStateChanges()V
    .locals 3

    .prologue
    .line 4347
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 4348
    .local v0, context:Landroid/content/Context;
    invoke-direct {p0}, Lcom/android/mms/transaction/SmsReceiverService;->unRegisterForServiceStateChanges()V

    .line 4350
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 4351
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4355
    invoke-static {}, Lcom/android/mms/transaction/SmsReceiver;->getInstance()Lcom/android/mms/transaction/SmsReceiver;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4356
    return-void
.end method

.method private static registerPhoneStateListener(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "events"

    .prologue
    .line 4426
    const-string v1, "SmsReceiverService"

    const-string v2, "registerPhoneStateListener: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4427
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 4428
    .local v0, tm:Landroid/telephony/TelephonyManager;
    sget-object v1, Lcom/android/mms/transaction/SmsReceiverService;->sPhoneStateListener:Lcom/android/mms/transaction/SmsReceiverService$MyPhoneStateListener;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 4429
    return-void
.end method

.method private replaceMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;IZ)Landroid/net/Uri;
    .locals 29
    .parameter "context"
    .parameter "msgs"
    .parameter "port"
    .parameter "isevdo"

    .prologue
    .line 2686
    const/4 v4, 0x0

    aget-object v28, p2, v4

    .line 2687
    .local v28, sms:Landroid/telephony/SmsMessage;
    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/mms/transaction/SmsReceiverService;->extractContentValues(Landroid/telephony/SmsMessage;Landroid/content/Context;)Landroid/content/ContentValues;

    move-result-object v13

    .line 2689
    .local v13, values:Landroid/content/ContentValues;
    const/16 v4, 0x23f4

    move/from16 v0, p3

    if-ne v0, v4, :cond_3

    .line 2690
    const-string v4, "body"

    new-instance v6, Ljava/lang/String;

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v13, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2696
    :goto_0
    if-eqz p4, :cond_5

    .line 2697
    const-string v4, "is_evdo"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v13, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2702
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 2703
    .local v5, resolver:Landroid/content/ContentResolver;
    invoke-virtual/range {v28 .. v28}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v25

    .line 2704
    .local v25, originatingAddress:Ljava/lang/String;
    invoke-virtual/range {v28 .. v28}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v27

    .line 2708
    .local v27, protocolIdentifier:I
    invoke-virtual/range {v28 .. v28}, Landroid/telephony/SmsMessage;->getIndexOnIcc()I

    move-result v4

    if-gtz v4, :cond_0

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/mms/MmsApp;->isCheckSmscAddressBeforeReplace()Z

    move-result v4

    if-nez v4, :cond_6

    .line 2710
    :cond_0
    const-string v8, "toa = ? AND address = ? AND protocol = ?"

    .line 2715
    .local v8, selection:Ljava/lang/String;
    const/4 v4, 0x3

    new-array v9, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/SmsMessage;->getToaOfOriginatingAddress()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v4

    const/4 v4, 0x1

    aput-object v25, v9, v4

    const/4 v4, 0x2

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v4

    .line 2738
    .local v9, selectionArgs:[Ljava/lang/String;
    :goto_2
    sget-object v6, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Lcom/android/mms/transaction/SmsReceiverService;->REPLACE_PROJECTION:[Ljava/lang/String;

    const/4 v10, 0x0

    move-object/from16 v4, p1

    invoke-static/range {v4 .. v10}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 2741
    .local v17, cursor:Landroid/database/Cursor;
    if-eqz v17, :cond_10

    .line 2755
    :cond_1
    :try_start_0
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 2756
    const/4 v4, 0x4

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-wide/16 v10, 0x0

    cmp-long v4, v6, v10

    if-eqz v4, :cond_1

    .line 2757
    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    .line 2758
    .local v23, messageId:J
    sget-object v4, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v23

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    .line 2762
    .local v12, messageUri:Landroid/net/Uri;
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v26, v0

    .line 2763
    .local v26, pduCount:I
    invoke-virtual/range {v28 .. v28}, Landroid/telephony/SmsMessage;->isCMAS()Z

    move-result v20

    .line 2764
    .local v20, isCmas:Z
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 2765
    .local v16, body:Ljava/lang/StringBuilder;
    const/16 v18, 0x0

    .local v18, i:I
    :goto_3
    move/from16 v0, v18

    move/from16 v1, v26

    if-ge v0, v1, :cond_9

    .line 2766
    aget-object v28, p2, v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2767
    if-nez v28, :cond_7

    .line 2765
    :cond_2
    :goto_4
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 2692
    .end local v5           #resolver:Landroid/content/ContentResolver;
    .end local v8           #selection:Ljava/lang/String;
    .end local v9           #selectionArgs:[Ljava/lang/String;
    .end local v12           #messageUri:Landroid/net/Uri;
    .end local v16           #body:Ljava/lang/StringBuilder;
    .end local v17           #cursor:Landroid/database/Cursor;
    .end local v18           #i:I
    .end local v20           #isCmas:Z
    .end local v23           #messageId:J
    .end local v25           #originatingAddress:Ljava/lang/String;
    .end local v26           #pduCount:I
    .end local v27           #protocolIdentifier:I
    :cond_3
    const-string v6, "body"

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    const v4, 0x7f09011d

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/mms/transaction/SmsReceiverService;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_5
    invoke-virtual {v13, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual/range {v28 .. v28}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    .line 2699
    :cond_5
    const-string v4, "is_evdo"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v13, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 2721
    .restart local v5       #resolver:Landroid/content/ContentResolver;
    .restart local v25       #originatingAddress:Ljava/lang/String;
    .restart local v27       #protocolIdentifier:I
    :cond_6
    const-string v8, "toa = ? AND address = ? AND protocol = ? AND sc_toa = ? AND service_center = ?"

    .line 2728
    .restart local v8       #selection:Ljava/lang/String;
    const/4 v4, 0x5

    new-array v9, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/SmsMessage;->getToaOfOriginatingAddress()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v4

    const/4 v4, 0x1

    aput-object v25, v9, v4

    const/4 v4, 0x2

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v4

    const/4 v4, 0x3

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/SmsMessage;->getToaOfScAddress()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v4

    const/4 v4, 0x4

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v4

    .restart local v9       #selectionArgs:[Ljava/lang/String;
    goto/16 :goto_2

    .line 2770
    .restart local v12       #messageUri:Landroid/net/Uri;
    .restart local v16       #body:Ljava/lang/StringBuilder;
    .restart local v17       #cursor:Landroid/database/Cursor;
    .restart local v18       #i:I
    .restart local v20       #isCmas:Z
    .restart local v23       #messageId:J
    .restart local v26       #pduCount:I
    :cond_7
    const/16 v4, 0x23f4

    move/from16 v0, p3

    if-ne v0, v4, :cond_8

    .line 2771
    :try_start_1
    new-instance v4, Ljava/lang/String;

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2774
    :goto_6
    if-nez v20, :cond_2

    move-object/from16 v0, v28

    move/from16 v1, p3

    invoke-static {v0, v13, v1}, Lcom/android/mms/transaction/SmsReceiverService;->replaceSMSMailShortNum(Landroid/telephony/SmsMessage;Landroid/content/ContentValues;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 2823
    .end local v12           #messageUri:Landroid/net/Uri;
    .end local v16           #body:Ljava/lang/StringBuilder;
    .end local v18           #i:I
    .end local v20           #isCmas:Z
    .end local v23           #messageId:J
    .end local v26           #pduCount:I
    :catchall_0
    move-exception v4

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    throw v4

    .line 2773
    .restart local v12       #messageUri:Landroid/net/Uri;
    .restart local v16       #body:Ljava/lang/StringBuilder;
    .restart local v18       #i:I
    .restart local v20       #isCmas:Z
    .restart local v23       #messageId:J
    .restart local v26       #pduCount:I
    :cond_8
    :try_start_2
    invoke-virtual/range {v28 .. v28}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 2776
    :cond_9
    const-string v4, "body"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2780
    invoke-virtual/range {v28 .. v28}, Landroid/telephony/SmsMessage;->getIndexOnIcc()I

    move-result v4

    if-lez v4, :cond_c

    .line 2781
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 2782
    .local v19, indexes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v18, 0x0

    :goto_7
    move-object/from16 v0, p2

    array-length v4, v0

    move/from16 v0, v18

    if-ge v0, v4, :cond_a

    .line 2783
    new-instance v4, Ljava/lang/Integer;

    aget-object v6, p2, v18

    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getIndexOnIcc()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2782
    add-int/lit8 v18, v18, 0x1

    goto :goto_7

    .line 2784
    :cond_a
    const-string v4, "index_on_sim"

    invoke-static/range {v19 .. v19}, Lcom/android/mms/util/SimIndexUtil;->turnIndexesToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2792
    .end local v19           #indexes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_8
    const-string v4, "body"

    invoke-virtual {v13, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x5

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v6, 0x1

    if-eq v4, v6, :cond_e

    .line 2794
    const/4 v4, 0x6

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_d

    .line 2795
    invoke-static {}, Lcom/android/mms/MmsApp;->accumulateNewIncomingMSG()V

    .line 2807
    :cond_b
    :goto_9
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/mms/transaction/SmsReceiverService;->mIsNeedNotifyForReplaceSMS:Z

    .line 2816
    :goto_a
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, p1

    move-object v11, v5

    invoke-static/range {v10 .. v15}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2823
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 2826
    .end local v12           #messageUri:Landroid/net/Uri;
    .end local v16           #body:Ljava/lang/StringBuilder;
    .end local v18           #i:I
    .end local v20           #isCmas:Z
    .end local v23           #messageId:J
    .end local v26           #pduCount:I
    :goto_b
    return-object v12

    .line 2786
    .restart local v12       #messageUri:Landroid/net/Uri;
    .restart local v16       #body:Ljava/lang/StringBuilder;
    .restart local v18       #i:I
    .restart local v20       #isCmas:Z
    .restart local v23       #messageId:J
    .restart local v26       #pduCount:I
    :cond_c
    :try_start_3
    const-string v4, "index_on_sim"

    const-string v6, ""

    invoke-virtual {v13, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 2800
    :cond_d
    const-string v4, "com.android.mms.shared_pref"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v6, "clear_shortcut_timestamp"

    const-wide/16 v10, 0x0

    invoke-interface {v4, v6, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v21

    .line 2803
    .local v21, lastClearTime:J
    const/4 v4, 0x7

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    cmp-long v4, v6, v21

    if-gez v4, :cond_b

    .line 2804
    invoke-static {}, Lcom/android/mms/MmsApp;->accumulateNewIncomingMSG()V

    goto :goto_9

    .line 2811
    .end local v21           #lastClearTime:J
    :cond_e
    const-string v4, "read"

    invoke-virtual {v13, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2812
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/mms/transaction/SmsReceiverService;->mIsNeedNotifyForReplaceSMS:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_a

    .line 2823
    .end local v12           #messageUri:Landroid/net/Uri;
    .end local v16           #body:Ljava/lang/StringBuilder;
    .end local v18           #i:I
    .end local v20           #isCmas:Z
    .end local v23           #messageId:J
    .end local v26           #pduCount:I
    :cond_f
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 2826
    :cond_10
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/mms/transaction/SmsReceiverService;->storeMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;IZ[I)Landroid/net/Uri;

    move-result-object v12

    goto :goto_b
.end method

.method private replaceMessageVerizon(Landroid/content/Context;[Landroid/telephony/SmsMessage;IZ)Landroid/net/Uri;
    .locals 29
    .parameter "context"
    .parameter "msgs"
    .parameter "port"
    .parameter "isevdo"

    .prologue
    .line 2853
    const/4 v4, 0x0

    aget-object v28, p2, v4

    .line 2855
    .local v28, sms:Landroid/telephony/SmsMessage;
    const-string v16, ""

    .line 2856
    .local v16, callback:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSmsCallback()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2858
    :try_start_0
    invoke-virtual/range {v28 .. v28}, Landroid/telephony/SmsMessage;->getCallBackNumber()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    .line 2864
    :cond_0
    :goto_0
    const/16 v26, 0x0

    .line 2865
    .local v26, priority:I
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSMSPriority()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2866
    invoke-virtual/range {v28 .. v28}, Landroid/telephony/SmsMessage;->getPriority()I

    move-result v26

    .line 2868
    :cond_1
    invoke-virtual/range {v28 .. v28}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v25

    .line 2869
    .local v25, originatingAddress:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 2872
    .local v5, resolver:Landroid/content/ContentResolver;
    invoke-virtual/range {v28 .. v28}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v27

    .line 2874
    .local v27, protocolIdentifier:I
    const-string v8, "toa = ? AND address = ? AND protocol = ? AND callback_number = ? AND priority = ? AND body = ? "

    .line 2883
    .local v8, selection:Ljava/lang/String;
    const/4 v4, 0x6

    new-array v9, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/SmsMessage;->getToaOfOriginatingAddress()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v4

    const/4 v4, 0x1

    aput-object v25, v9, v4

    const/4 v4, 0x2

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v4

    const/4 v4, 0x3

    aput-object v16, v9, v4

    const/4 v4, 0x4

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v4

    const/4 v6, 0x5

    const/16 v4, 0x23f4

    move/from16 v0, p3

    if-ne v0, v4, :cond_4

    new-instance v4, Ljava/lang/String;

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/String;-><init>([B)V

    :goto_1
    aput-object v4, v9, v6

    .line 2894
    .local v9, selectionArgs:[Ljava/lang/String;
    sget-object v6, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Lcom/android/mms/transaction/SmsReceiverService;->REPLACE_PROJECTION:[Ljava/lang/String;

    const/4 v10, 0x0

    move-object/from16 v4, p1

    invoke-static/range {v4 .. v10}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 2898
    .local v17, cursor:Landroid/database/Cursor;
    if-eqz v17, :cond_c

    .line 2901
    :try_start_1
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 2902
    const/16 v20, 0x0

    .line 2903
    .local v20, duplicatedNetworkMsg:Z
    const/16 v21, 0x0

    .line 2906
    .local v21, duplicatedUserMsg:Z
    :cond_2
    const/4 v4, 0x3

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v18, v0

    .line 2907
    .local v18, date:J
    invoke-virtual/range {v28 .. v28}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v6

    cmp-long v4, v18, v6

    if-nez v4, :cond_3

    .line 2908
    const/16 v20, 0x1

    .line 2917
    :cond_3
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-nez v4, :cond_2

    .line 2921
    if-eqz v20, :cond_6

    .line 2923
    const/4 v12, 0x0

    .line 2956
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 2961
    .end local v18           #date:J
    .end local v20           #duplicatedNetworkMsg:Z
    .end local v21           #duplicatedUserMsg:Z
    :goto_2
    return-object v12

    .line 2859
    .end local v5           #resolver:Landroid/content/ContentResolver;
    .end local v8           #selection:Ljava/lang/String;
    .end local v9           #selectionArgs:[Ljava/lang/String;
    .end local v17           #cursor:Landroid/database/Cursor;
    .end local v25           #originatingAddress:Ljava/lang/String;
    .end local v26           #priority:I
    .end local v27           #protocolIdentifier:I
    :catch_0
    move-exception v22

    .line 2860
    .local v22, e:Ljava/lang/Exception;
    const-string v4, "SmsReceiverService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "null callback >"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2883
    .end local v22           #e:Ljava/lang/Exception;
    .restart local v5       #resolver:Landroid/content/ContentResolver;
    .restart local v8       #selection:Ljava/lang/String;
    .restart local v25       #originatingAddress:Ljava/lang/String;
    .restart local v26       #priority:I
    .restart local v27       #protocolIdentifier:I
    :cond_4
    invoke-virtual/range {v28 .. v28}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    const v4, 0x7f09011d

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/mms/transaction/SmsReceiverService;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_5
    invoke-virtual/range {v28 .. v28}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 2927
    .restart local v9       #selectionArgs:[Ljava/lang/String;
    .restart local v17       #cursor:Landroid/database/Cursor;
    .restart local v18       #date:J
    .restart local v20       #duplicatedNetworkMsg:Z
    .restart local v21       #duplicatedUserMsg:Z
    :cond_6
    if-eqz v21, :cond_b

    .line 2928
    :try_start_2
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2930
    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/mms/transaction/SmsReceiverService;->extractContentValues(Landroid/telephony/SmsMessage;Landroid/content/Context;)Landroid/content/ContentValues;

    move-result-object v13

    .line 2931
    .local v13, values:Landroid/content/ContentValues;
    const/16 v4, 0x23f4

    move/from16 v0, p3

    if-ne v0, v4, :cond_9

    .line 2932
    const-string v4, "body"

    new-instance v6, Ljava/lang/String;

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v13, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2937
    :goto_3
    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    .line 2938
    .local v23, messageId:J
    sget-object v4, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v23

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    .line 2941
    .local v12, messageUri:Landroid/net/Uri;
    move-object/from16 v0, v28

    move/from16 v1, p3

    invoke-static {v0, v13, v1}, Lcom/android/mms/transaction/SmsReceiverService;->replaceSMSMailShortNum(Landroid/telephony/SmsMessage;Landroid/content/ContentValues;I)V

    .line 2943
    const-string v4, "address"

    invoke-virtual {v13, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 2944
    const-string v4, "address"

    const v6, 0x7f090021

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2947
    :cond_7
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, p1

    move-object v11, v5

    invoke-static/range {v10 .. v15}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2949
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSMSPriority()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2950
    const-string v4, "address"

    invoke-virtual {v13, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/SmsMessage;->getPriority()I

    move-result v6

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-static {v0, v4, v6, v1}, Lcom/android/mms/transaction/SmsReceiverService;->updateThreadTablePriority(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2956
    :cond_8
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 2934
    .end local v12           #messageUri:Landroid/net/Uri;
    .end local v23           #messageId:J
    :cond_9
    :try_start_3
    const-string v6, "body"

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_a

    const v4, 0x7f09011d

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/mms/transaction/SmsReceiverService;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_4
    invoke-virtual {v13, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 2956
    .end local v13           #values:Landroid/content/ContentValues;
    .end local v18           #date:J
    .end local v20           #duplicatedNetworkMsg:Z
    .end local v21           #duplicatedUserMsg:Z
    :catchall_0
    move-exception v4

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    throw v4

    .line 2934
    .restart local v13       #values:Landroid/content/ContentValues;
    .restart local v18       #date:J
    .restart local v20       #duplicatedNetworkMsg:Z
    .restart local v21       #duplicatedUserMsg:Z
    :cond_a
    :try_start_4
    invoke-virtual/range {v28 .. v28}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v4

    goto :goto_4

    .line 2956
    .end local v13           #values:Landroid/content/ContentValues;
    .end local v18           #date:J
    .end local v20           #duplicatedNetworkMsg:Z
    .end local v21           #duplicatedUserMsg:Z
    :cond_b
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 2961
    :cond_c
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/mms/transaction/SmsReceiverService;->storeMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;IZ[I)Landroid/net/Uri;

    move-result-object v12

    goto/16 :goto_2
.end method

.method private static replaceSMSMailShortNum(Landroid/telephony/SmsMessage;Landroid/content/ContentValues;I)V
    .locals 3
    .parameter "sms"
    .parameter "values"
    .parameter "port"

    .prologue
    .line 2831
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/mms/MmsApp;->getEmailServerNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSMS2Email()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2835
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->changeOriginatingAddress(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 2848
    :goto_0
    return-void

    .line 2837
    :cond_0
    const/16 v0, 0x23f4

    if-ne p2, v0, :cond_1

    .line 2838
    const-string v0, "body"

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2840
    :cond_1
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v1, 0x7

    if-ne v0, v1, :cond_3

    .line 2841
    const-string v1, "body"

    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_1
    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2844
    :cond_3
    const-string v1, "body"

    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f09011d

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private sendDatamanageIntent(ZLjava/lang/String;)V
    .locals 2
    .parameter "sent"
    .parameter "uri"

    .prologue
    .line 1036
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1037
    .local v0, it:Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 1038
    const-string v1, "com.htc.mms.smssentinfo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1042
    :goto_0
    const-string v1, "uri"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1044
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1045
    return-void

    .line 1040
    :cond_0
    const-string v1, "com.htc.mms.smsreceiveinfo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private showCBImmutableNotification(Ljava/lang/String;)V
    .locals 10
    .parameter "text"

    .prologue
    const v9, 0x7f090161

    const/4 v7, 0x0

    .line 4139
    const-string v6, "notification"

    invoke-virtual {p0, v6}, Lcom/android/mms/transaction/SmsReceiverService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 4142
    .local v3, nm:Landroid/app/NotificationManager;
    move-object v2, p1

    .line 4145
    .local v2, message:Ljava/lang/CharSequence;
    new-instance v0, Landroid/content/Intent;

    const-string v6, "null_broadcast"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4146
    .local v0, CBIntent:Landroid/content/Intent;
    const/high16 v6, 0x800

    invoke-static {p0, v7, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 4149
    .local v1, contentIntent:Landroid/app/PendingIntent;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v7

    invoke-virtual {p0, v9, v6}, Lcom/android/mms/transaction/SmsReceiverService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 4152
    .local v5, tickerText:Ljava/lang/String;
    new-instance v4, Landroid/app/Notification;

    const v6, 0x7f0201a3

    const-wide/16 v7, 0x0

    invoke-direct {v4, v6, v5, v7, v8}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 4155
    .local v4, notif:Landroid/app/Notification;
    iget v6, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x20

    iput v6, v4, Landroid/app/Notification;->flags:I

    .line 4191
    const-string v6, ""

    invoke-virtual {v4, p0, v6, v2, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 4192
    invoke-virtual {v3, v9, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 4193
    return-void
.end method

.method public static storeMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;IZ[I)Landroid/net/Uri;
    .locals 36
    .parameter "context"
    .parameter "msgs"
    .parameter "port"
    .parameter "isevdo"
    .parameter "idxonsims"

    .prologue
    .line 3079
    const/4 v3, 0x0

    aget-object v30, p1, v3

    .line 3082
    .local v30, sms:Landroid/telephony/SmsMessage;
    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/android/mms/transaction/SmsReceiverService;->extractContentValues(Landroid/telephony/SmsMessage;Landroid/content/Context;)Landroid/content/ContentValues;

    move-result-object v35

    .line 3083
    .local v35, values:Landroid/content/ContentValues;
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v28, v0

    .line 3086
    .local v28, pduCount:I
    if-eqz p1, :cond_2

    .line 3087
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 3088
    .local v21, indexes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v18, 0x0

    .line 3089
    .local v18, idx:I
    move-object/from16 v12, p1

    .local v12, arr$:[Landroid/telephony/SmsMessage;
    array-length v0, v12

    move/from16 v24, v0

    .local v24, len$:I
    const/16 v17, 0x0

    .local v17, i$:I
    move/from16 v19, v18

    .end local v18           #idx:I
    .local v19, idx:I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v24

    if-ge v0, v1, :cond_2

    aget-object v25, v12, v17

    .line 3090
    .local v25, msg:Landroid/telephony/SmsMessage;
    const-string v3, "SmsReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MsgBase: from Evdo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    iget-object v5, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/SmsMessageBase;->isFromEVDO()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3092
    if-eqz p4, :cond_0

    .line 3093
    add-int/lit8 v18, v19, 0x1

    .end local v19           #idx:I
    .restart local v18       #idx:I
    aget v3, p4, v19

    move-object/from16 v0, v21

    invoke-static {v0, v3}, Lcom/android/mms/util/SimIndexUtil;->addSimIndexes(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v21

    .line 3096
    :goto_1
    const-string v3, "index_on_sim"

    invoke-static/range {v21 .. v21}, Lcom/android/mms/util/SimIndexUtil;->turnIndexesToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3098
    const-string v3, "SmsReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "index_on_sim, str: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v21 .. v21}, Lcom/android/mms/util/SimIndexUtil;->turnIndexesToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3100
    if-eqz p3, :cond_1

    .line 3101
    const-string v3, "is_evdo"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3089
    :goto_2
    add-int/lit8 v17, v17, 0x1

    move/from16 v19, v18

    .end local v18           #idx:I
    .restart local v19       #idx:I
    goto :goto_0

    .line 3095
    :cond_0
    invoke-virtual/range {v30 .. v30}, Landroid/telephony/SmsMessage;->getIndexOnIcc()I

    move-result v3

    move-object/from16 v0, v21

    invoke-static {v0, v3}, Lcom/android/mms/util/SimIndexUtil;->addSimIndexes(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v21

    move/from16 v18, v19

    .end local v19           #idx:I
    .restart local v18       #idx:I
    goto :goto_1

    .line 3103
    :cond_1
    const-string v3, "is_evdo"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    .line 3110
    .end local v12           #arr$:[Landroid/telephony/SmsMessage;
    .end local v17           #i$:I
    .end local v18           #idx:I
    .end local v21           #indexes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v24           #len$:I
    .end local v25           #msg:Landroid/telephony/SmsMessage;
    :cond_2
    const/4 v3, 0x1

    move/from16 v0, v28

    if-ne v0, v3, :cond_11

    .line 3123
    move-object/from16 v0, v30

    move-object/from16 v1, v35

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/android/mms/transaction/SmsReceiverService;->replaceSMSMailShortNum(Landroid/telephony/SmsMessage;Landroid/content/ContentValues;I)V

    .line 3160
    :goto_3
    const-string v3, "address"

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 3161
    const-string v3, "address"

    const v4, 0x7f090021

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3164
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    .line 3166
    .local v29, resolver:Landroid/content/ContentResolver;
    const/16 v23, 0x0

    .line 3167
    .local v23, insertUri:Landroid/net/Uri;
    const/16 v34, 0x0

    .line 3169
    .local v34, unfindThreadID:Z
    :try_start_0
    sget-object v3, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v35

    invoke-static {v0, v1, v3, v2}, Lcom/google/android/mms/util/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v23

    .line 3171
    const-string v3, "SmsReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insertUri> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3172
    const/4 v3, 0x0

    aget-object v15, p1, v3

    .line 3173
    .local v15, firstSms:Landroid/telephony/SmsMessage;
    if-eqz v15, :cond_4

    .line 3174
    const-string v3, "SmsReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "class: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Landroid/telephony/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3177
    :cond_4
    if-eqz v15, :cond_5

    invoke-virtual {v15}, Landroid/telephony/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v3

    sget-object v4, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    if-eq v3, v4, :cond_6

    .line 3179
    :cond_5
    invoke-static {}, Lcom/android/mms/MmsApp;->accumulateNewIncomingMSG()V

    .line 3181
    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_3_0()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3182
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->sendSMSReceiveLog()V

    .line 3183
    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessageUtils;->sendMsgCountLog(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 3200
    .end local v15           #firstSms:Landroid/telephony/SmsMessage;
    :cond_6
    :goto_4
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSMSPriority()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 3201
    const-string v3, "address"

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v30 .. v30}, Landroid/telephony/SmsMessage;->getPriority()I

    move-result v4

    const-string v5, "address"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4, v5}, Lcom/android/mms/transaction/SmsReceiverService;->updateThreadTablePriority(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    .line 3206
    :cond_7
    const-string v3, "thread_id"

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v33

    .line 3207
    .local v33, threadId:Ljava/lang/Long;
    const-string v3, "address"

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3216
    .local v11, address:Ljava/lang/String;
    if-eqz v33, :cond_8

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_9

    :cond_8
    if-eqz v11, :cond_9

    .line 3218
    :try_start_1
    const-string v3, "thread_id"

    move-object/from16 v0, p0

    invoke-static {v0, v11}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 3235
    :cond_9
    const-string v3, "thread_id"

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v33

    .line 3236
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v3

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/mms/util/Recycler$SmsRecycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V

    .line 3240
    const/16 v3, 0xd8

    invoke-static {v3}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_a

    .line 3241
    invoke-virtual/range {v33 .. v33}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4, v5, v6}, Lcom/android/mms/ui/MessageUtils;->getContactIdFromThreadID(Landroid/content/Context;JJ)J

    move-result-wide v7

    .line 3242
    .local v7, contactId:J
    const-wide/16 v3, 0x0

    cmp-long v3, v7, v3

    if-lez v3, :cond_a

    const-wide/32 v3, 0x5f5e100

    cmp-long v3, v7, v3

    if-gez v3, :cond_a

    .line 3243
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    invoke-static/range {v3 .. v8}, Landroid/provider/HtcContactsContract$Frequency;->markAsFromMsg(Landroid/content/ContentResolver;IJJ)V

    .line 3250
    .end local v7           #contactId:J
    :cond_a
    if-eqz v34, :cond_c

    if-eqz v33, :cond_c

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_c

    .line 3252
    const-string v3, "SmsReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "try insert again with new thread id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3254
    :try_start_2
    sget-object v3, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v35

    invoke-static {v0, v1, v3, v2}, Lcom/google/android/mms/util/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v23

    .line 3256
    invoke-static {}, Lcom/android/mms/MmsApp;->accumulateNewIncomingMSG()V

    .line 3258
    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_3_0()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 3259
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->sendSMSReceiveLog()V

    .line 3260
    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessageUtils;->sendMsgCountLog(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    .line 3274
    :cond_b
    :goto_5
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSMSPriority()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 3275
    const-string v3, "address"

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v30 .. v30}, Landroid/telephony/SmsMessage;->getPriority()I

    move-result v4

    const-string v5, "address"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4, v5}, Lcom/android/mms/transaction/SmsReceiverService;->updateThreadTablePriority(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    .line 3281
    :cond_c
    const/4 v10, 0x0

    .line 3282
    .local v10, SMSid:I
    const-string v3, "body"

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3283
    .local v9, SMSbody:Ljava/lang/String;
    if-eqz v9, :cond_e

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_e

    const-string v3, "BEGIN:VCARD"

    invoke-virtual {v9, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    const-string v3, "END:VCARD"

    invoke-virtual {v9, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 3286
    if-eqz v23, :cond_d

    .line 3287
    :try_start_3
    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9

    move-result v10

    .line 3295
    :cond_d
    :goto_6
    if-lez v10, :cond_e

    .line 3296
    invoke-static {}, Lcom/android/mms/util/VCardSaveIndicatorCache;->getInstance()Lcom/android/mms/util/VCardSaveIndicatorCache;

    move-result-object v22

    .line 3297
    .local v22, ins:Lcom/android/mms/util/VCardSaveIndicatorCache;
    if-eqz v22, :cond_e

    .line 3298
    move-object/from16 v0, v22

    invoke-virtual {v0, v10, v9}, Lcom/android/mms/util/VCardSaveIndicatorCache;->setSMSvCardtoParse(ILjava/lang/String;)V

    .line 3305
    .end local v22           #ins:Lcom/android/mms/util/VCardSaveIndicatorCache;
    :cond_e
    if-eqz v23, :cond_10

    const/16 v3, 0x23f4

    move/from16 v0, p2

    if-eq v0, v3, :cond_10

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x61

    if-eq v3, v4, :cond_f

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0xad

    if-ne v3, v4, :cond_10

    .line 3308
    :cond_f
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v31

    .line 3309
    .local v31, smsManager:Landroid/telephony/SmsManager;
    invoke-virtual/range {v31 .. v31}, Landroid/telephony/SmsManager;->updateNvItem()V

    .line 3311
    const-string v3, "gsm.vzw.sms.writeuicc"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 3312
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_16

    invoke-virtual/range {v30 .. v30}, Landroid/telephony/SmsMessage;->isCdmaFormat()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_16

    .line 3314
    const/16 v21, 0x0

    .line 3315
    .restart local v21       #indexes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, 0x3

    move-object/from16 v0, v23

    invoke-static {v0, v3}, Lcom/android/mms/util/SimIoUtil;->savetoCSIM(Landroid/net/Uri;I)Ljava/util/ArrayList;

    move-result-object v21

    .line 3318
    if-eqz v21, :cond_10

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_10

    .line 3319
    new-instance v35, Landroid/content/ContentValues;

    .end local v35           #values:Landroid/content/ContentValues;
    const/4 v3, 0x1

    move-object/from16 v0, v35

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 3320
    .restart local v35       #values:Landroid/content/ContentValues;
    const-string v3, "index_on_sim"

    invoke-static/range {v21 .. v21}, Lcom/android/mms/util/SimIndexUtil;->turnIndexesToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3321
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-virtual {v3, v0, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .end local v21           #indexes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v31           #smsManager:Landroid/telephony/SmsManager;
    :cond_10
    move-object/from16 v3, v23

    .line 3344
    .end local v9           #SMSbody:Ljava/lang/String;
    .end local v10           #SMSid:I
    :goto_7
    return-object v3

    .line 3129
    .end local v11           #address:Ljava/lang/String;
    .end local v23           #insertUri:Landroid/net/Uri;
    .end local v29           #resolver:Landroid/content/ContentResolver;
    .end local v33           #threadId:Ljava/lang/Long;
    .end local v34           #unfindThreadID:Z
    :cond_11
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 3130
    .local v13, body:Ljava/lang/StringBuilder;
    const/16 v16, 0x0

    .local v16, i:I
    :goto_8
    move/from16 v0, v16

    move/from16 v1, v28

    if-ge v0, v1, :cond_14

    .line 3131
    aget-object v30, p1, v16

    .line 3132
    if-nez v30, :cond_12

    .line 3130
    :goto_9
    add-int/lit8 v16, v16, 0x1

    goto :goto_8

    .line 3144
    :cond_12
    const/16 v3, 0x23f4

    move/from16 v0, p2

    if-ne v0, v3, :cond_13

    .line 3145
    new-instance v3, Ljava/lang/String;

    invoke-virtual/range {v30 .. v30}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3153
    :goto_a
    move-object/from16 v0, v30

    move-object/from16 v1, v35

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/android/mms/transaction/SmsReceiverService;->replaceSMSMailShortNum(Landroid/telephony/SmsMessage;Landroid/content/ContentValues;I)V

    goto :goto_9

    .line 3147
    :cond_13
    invoke-virtual/range {v30 .. v30}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 3157
    :cond_14
    const-string v3, "body"

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3188
    .end local v13           #body:Ljava/lang/StringBuilder;
    .end local v16           #i:I
    .restart local v23       #insertUri:Landroid/net/Uri;
    .restart local v29       #resolver:Landroid/content/ContentResolver;
    .restart local v34       #unfindThreadID:Z
    :catch_0
    move-exception v14

    .line 3189
    .local v14, e:Ljava/lang/IllegalStateException;
    :try_start_4
    invoke-virtual {v14}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_4

    .line 3198
    .end local v14           #e:Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v3

    throw v3

    .line 3190
    :catch_1
    move-exception v14

    .line 3191
    .local v14, e:Ljava/lang/IllegalArgumentException;
    :try_start_5
    const-string v3, "SmsReceiverService"

    const-string v4, "IllegalArgumentException"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3192
    invoke-virtual {v14}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Unable to find or allocate a thread ID"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 3193
    const/16 v34, 0x1

    .line 3194
    :cond_15
    invoke-virtual {v14}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_4

    .line 3195
    .end local v14           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v14

    .line 3196
    .local v14, e:Ljava/lang/Exception;
    const-string v3, "SmsReceiverService"

    const-string v4, "General Exception"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3197
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_4

    .line 3220
    .end local v14           #e:Ljava/lang/Exception;
    .restart local v11       #address:Ljava/lang/String;
    .restart local v33       #threadId:Ljava/lang/Long;
    :catch_3
    move-exception v14

    .line 3221
    .local v14, e:Ljava/lang/IllegalArgumentException;
    :try_start_6
    const-string v3, "SmsReceiverService"

    const-string v4, "IllegalArgumentException"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3222
    invoke-virtual {v14}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 3223
    const/16 v23, 0x0

    .line 3224
    const/4 v3, 0x0

    goto/16 :goto_7

    .line 3225
    .end local v14           #e:Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v14

    .line 3226
    .local v14, e:Ljava/lang/Exception;
    const-string v3, "SmsReceiverService"

    const-string v4, "General Exception"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3227
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 3228
    const/16 v23, 0x0

    .line 3229
    const/4 v3, 0x0

    goto/16 :goto_7

    .line 3230
    .end local v14           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v3

    throw v3

    .line 3264
    :catch_5
    move-exception v14

    .line 3265
    .local v14, e:Ljava/lang/IllegalStateException;
    :try_start_7
    invoke-virtual {v14}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto/16 :goto_5

    .line 3272
    .end local v14           #e:Ljava/lang/IllegalStateException;
    :catchall_2
    move-exception v3

    throw v3

    .line 3266
    :catch_6
    move-exception v14

    .line 3267
    .local v14, e:Ljava/lang/IllegalArgumentException;
    :try_start_8
    const-string v3, "SmsReceiverService"

    const-string v4, "IllegalArgumentException"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3268
    invoke-virtual {v14}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_5

    .line 3269
    .end local v14           #e:Ljava/lang/IllegalArgumentException;
    :catch_7
    move-exception v14

    .line 3270
    .local v14, e:Ljava/lang/Exception;
    const-string v3, "SmsReceiverService"

    const-string v4, "General Exception"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3271
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto/16 :goto_5

    .line 3290
    .end local v14           #e:Ljava/lang/Exception;
    .restart local v9       #SMSbody:Ljava/lang/String;
    .restart local v10       #SMSid:I
    :catch_8
    move-exception v14

    .line 3291
    .local v14, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v14}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_6

    .line 3292
    .end local v14           #e:Ljava/lang/NumberFormatException;
    :catch_9
    move-exception v14

    .line 3293
    .local v14, e:Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6

    .line 3324
    .end local v14           #e:Ljava/lang/Exception;
    .restart local v31       #smsManager:Landroid/telephony/SmsManager;
    :cond_16
    move-object/from16 v12, p1

    .restart local v12       #arr$:[Landroid/telephony/SmsMessage;
    array-length v0, v12

    move/from16 v24, v0

    .restart local v24       #len$:I
    const/16 v17, 0x0

    .restart local v17       #i$:I
    :goto_b
    move/from16 v0, v17

    move/from16 v1, v24

    if-ge v0, v1, :cond_10

    aget-object v25, v12, v17

    .line 3325
    .restart local v25       #msg:Landroid/telephony/SmsMessage;
    invoke-virtual/range {v25 .. v25}, Landroid/telephony/SmsMessage;->getPdu()[B

    move-result-object v27

    .line 3326
    .local v27, pdu:[B
    const/16 v20, 0x0

    .line 3327
    .local v20, index:I
    if-eqz v27, :cond_17

    move-object/from16 v0, v27

    array-length v3, v0

    const/16 v4, 0xd

    if-lt v3, v4, :cond_17

    .line 3329
    const/4 v3, 0x0

    aget-byte v3, v27, v3

    add-int/lit8 v32, v3, 0x1

    .line 3330
    .local v32, smscBytes:I
    move-object/from16 v0, v27

    array-length v3, v0

    sub-int v3, v3, v32

    new-array v0, v3, [B

    move-object/from16 v26, v0

    .line 3331
    .local v26, newPdu:[B
    const/4 v3, 0x0

    move-object/from16 v0, v27

    array-length v4, v0

    sub-int v4, v4, v32

    move-object/from16 v0, v27

    move/from16 v1, v32

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3333
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x3

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v3, v4, v1, v5}, Landroid/telephony/SmsManager;->copyMessageToIccForResult(Z[B[BI)I

    move-result v20

    .line 3336
    .end local v26           #newPdu:[B
    .end local v32           #smscBytes:I
    :cond_17
    if-lez v20, :cond_18

    .line 3337
    new-instance v3, Lcom/android/mms/transaction/SmsReceiverService$UpdateSimIndexAsyncTask;

    move/from16 v0, v20

    move-object/from16 v1, v23

    invoke-direct {v3, v0, v1}, Lcom/android/mms/transaction/SmsReceiverService$UpdateSimIndexAsyncTask;-><init>(ILandroid/net/Uri;)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/android/mms/transaction/SmsReceiverService$UpdateSimIndexAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3324
    :cond_18
    add-int/lit8 v17, v17, 0x1

    goto :goto_b
.end method

.method private unRegisterForServiceStateChanges()V
    .locals 2

    .prologue
    .line 4362
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 4363
    .local v0, context:Landroid/content/Context;
    invoke-static {}, Lcom/android/mms/transaction/SmsReceiver;->getInstance()Lcom/android/mms/transaction/SmsReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4367
    .end local v0           #context:Landroid/content/Context;
    :goto_0
    return-void

    .line 4364
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static unRegisterPhoneStateListener(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 4432
    const-string v1, "SmsReceiverService"

    const-string v2, "unRegisterPhoneStateListener: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4433
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 4434
    .local v0, tm:Landroid/telephony/TelephonyManager;
    sget-object v1, Lcom/android/mms/transaction/SmsReceiverService;->sPhoneStateListener:Lcom/android/mms/transaction/SmsReceiverService$MyPhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 4435
    return-void
.end method

.method private updateNotificationAndShortcutStatus(I)V
    .locals 4
    .parameter "serv_id"

    .prologue
    .line 2534
    const-wide/16 v0, 0xbb8

    .line 2535
    .local v0, delayTime:J
    iget-object v2, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceHandler:Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;

    new-instance v3, Lcom/android/mms/transaction/SmsReceiverService$4;

    invoke-direct {v3, p0, p1}, Lcom/android/mms/transaction/SmsReceiverService$4;-><init>(Lcom/android/mms/transaction/SmsReceiverService;I)V

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2543
    return-void
.end method

.method public static updateThreadTablePriority(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .locals 17
    .parameter "context"
    .parameter "OriAddr"
    .parameter "priority"
    .parameter "tAddr"

    .prologue
    .line 2965
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2969
    .local v3, resolver:Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v10

    .line 2970
    .local v10, builder:Landroid/net/Uri$Builder;
    const-string v2, "FromThreadTable"

    const-string v4, "true"

    invoke-virtual {v10, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2971
    const-string v2, "formal"

    const-string v4, "true"

    invoke-virtual {v10, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2974
    invoke-virtual {v10}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lcom/android/mms/transaction/SmsReceiverService;->THREAD_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 2983
    .local v12, c:Landroid/database/Cursor;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 2984
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2986
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 2989
    :cond_0
    if-eqz v12, :cond_e

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 2992
    const-wide/16 v14, -0x1

    .line 2995
    .local v14, threadID:J
    :cond_1
    const/4 v2, 0x1

    :try_start_0
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2996
    .local v9, addr:Ljava/lang/String;
    if-eqz v9, :cond_7

    .line 2997
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 3001
    invoke-static/range {p1 .. p1}, Landroid/provider/Telephony$Sms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3003
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_7

    .line 3005
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 3030
    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v2, v14, v6

    if-ltz v2, :cond_3

    .line 3031
    sget-object v2, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v16

    .line 3032
    .local v16, tmp:Landroid/net/Uri;
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v11

    .line 3033
    .local v11, builder1:Landroid/net/Uri$Builder;
    const-string v2, "update"

    const-string v4, "true"

    invoke-virtual {v11, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3034
    new-instance v5, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v5, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 3038
    .local v5, values1:Landroid/content/ContentValues;
    invoke-static {}, Lcom/android/mms/MmsApp;->getSMSHighPriorityLevel()I

    move-result v13

    .line 3039
    .local v13, highPriorityLevel:I
    const/4 v2, -0x1

    if-eq v13, v2, :cond_9

    .line 3040
    move/from16 v0, p2

    if-ge v0, v13, :cond_8

    .line 3041
    const-string v2, "priority"

    const/16 v4, 0x81

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3062
    :cond_2
    :goto_1
    invoke-virtual {v11}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3068
    .end local v5           #values1:Landroid/content/ContentValues;
    .end local v11           #builder1:Landroid/net/Uri$Builder;
    .end local v13           #highPriorityLevel:I
    .end local v16           #tmp:Landroid/net/Uri;
    :cond_3
    invoke-static {v12}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    .line 3076
    .end local v9           #addr:Ljava/lang/String;
    .end local v14           #threadID:J
    :cond_4
    :goto_2
    return-void

    .line 3010
    .restart local v9       #addr:Ljava/lang/String;
    .restart local v14       #threadID:J
    :cond_5
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v2, v4, :cond_6

    .line 3013
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3015
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 3017
    goto/16 :goto_0

    .line 3020
    :cond_6
    invoke-virtual {v9, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_7

    .line 3021
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 3027
    :cond_7
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 3043
    .restart local v5       #values1:Landroid/content/ContentValues;
    .restart local v11       #builder1:Landroid/net/Uri$Builder;
    .restart local v13       #highPriorityLevel:I
    .restart local v16       #tmp:Landroid/net/Uri;
    :cond_8
    const-string v2, "priority"

    const/16 v4, 0x82

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 3068
    .end local v5           #values1:Landroid/content/ContentValues;
    .end local v9           #addr:Ljava/lang/String;
    .end local v11           #builder1:Landroid/net/Uri$Builder;
    .end local v13           #highPriorityLevel:I
    .end local v16           #tmp:Landroid/net/Uri;
    :catchall_0
    move-exception v2

    invoke-static {v12}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    throw v2

    .line 3047
    .restart local v5       #values1:Landroid/content/ContentValues;
    .restart local v9       #addr:Ljava/lang/String;
    .restart local v11       #builder1:Landroid/net/Uri$Builder;
    .restart local v13       #highPriorityLevel:I
    .restart local v16       #tmp:Landroid/net/Uri;
    :cond_9
    :try_start_2
    invoke-static {}, Lcom/android/mms/MmsApp;->isSpecialSMSpriority()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 3048
    const/4 v2, 0x2

    move/from16 v0, p2

    if-ge v0, v2, :cond_a

    .line 3049
    const-string v2, "priority"

    const/16 v4, 0x81

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 3050
    :cond_a
    const/4 v2, 0x2

    move/from16 v0, p2

    if-eq v0, v2, :cond_b

    const/4 v2, 0x3

    move/from16 v0, p2

    if-ne v0, v2, :cond_2

    .line 3051
    :cond_b
    const-string v2, "priority"

    const/16 v4, 0x82

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 3054
    :cond_c
    if-nez p2, :cond_d

    .line 3055
    const-string v2, "priority"

    const/16 v4, 0x81

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 3057
    :cond_d
    const-string v2, "priority"

    const/16 v4, 0x82

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 3073
    .end local v5           #values1:Landroid/content/ContentValues;
    .end local v9           #addr:Ljava/lang/String;
    .end local v11           #builder1:Landroid/net/Uri$Builder;
    .end local v13           #highPriorityLevel:I
    .end local v14           #threadID:J
    .end local v16           #tmp:Landroid/net/Uri;
    :cond_e
    if-eqz v12, :cond_4

    .line 3074
    invoke-static {v12}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    goto/16 :goto_2
.end method


# virtual methods
.method public launchSMSErrorDialogVerizon(Ljava/lang/String;II)V
    .locals 7
    .parameter "message"
    .parameter "causeCode"
    .parameter "errorClass"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1761
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1762
    .local v2, intent:Landroid/content/Intent;
    const/high16 v3, 0x1084

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1765
    const-string v3, "com.android.mms"

    const-class v4, Lcom/htc/messaging/ui/HtcSMSErrorScreen;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1767
    new-array v1, v6, [Ljava/lang/String;

    aput-object p1, v1, v5

    .line 1768
    .local v1, errorMessageArray:[Ljava/lang/String;
    const-string v3, "errorMessage"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1769
    const/4 v3, 0x2

    new-array v0, v3, [I

    aput p2, v0, v5

    aput p3, v0, v6

    .line 1770
    .local v0, errorCodeArray:[I
    const-string v3, "errorCode"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1771
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1773
    return-void
.end method

.method public launchSmsSentNoServiceDialog(Landroid/net/Uri;)V
    .locals 3
    .parameter "uri"

    .prologue
    .line 1752
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1753
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1754
    const-string v1, "com.android.mms"

    const-string v2, "com.android.mms.ui.SmsSentNoServiceDialog"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1755
    const/high16 v1, 0x1800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1756
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    .line 1757
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 441
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 371
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SmsReceiverService"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 372
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 374
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceLooper:Landroid/os/Looper;

    .line 375
    new-instance v1, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;

    iget-object v2, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;-><init>(Lcom/android/mms/transaction/SmsReceiverService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceHandler:Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;

    .line 378
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 420
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v1, 0x0

    .line 402
    const-string v2, "SmsReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStart: #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    if-eqz p1, :cond_0

    const-string v2, "result"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    :cond_0
    iput v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    .line 406
    iget-object v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceHandler:Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;

    invoke-virtual {v1}, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 407
    .local v0, msg:Landroid/os/Message;
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 408
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 409
    iget-object v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceHandler:Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;

    invoke-virtual {v1, v0}, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 410
    const/4 v1, 0x2

    return v1
.end method

.method public declared-synchronized sendFirstQueuedMessage()V
    .locals 27

    .prologue
    .line 799
    monitor-enter p0

    :try_start_0
    const-string v2, "SmsReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendFirstQueuedMessage start: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/mms/transaction/SmsReceiverService;->mSendingCnt:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    const/16 v24, 0x1

    .line 802
    .local v24, success:Z
    const-string v2, "content://sms/queued"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 805
    .local v4, uri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSortByDeviceTime()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 806
    const-string v8, "date2 ASC"

    .line 811
    .local v8, sortOrder:Ljava/lang/String;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 812
    .local v3, resolver:Landroid/content/ContentResolver;
    sget-object v5, Lcom/android/mms/transaction/SmsReceiverService;->SEND_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v10

    .line 816
    .local v10, c:Landroid/database/Cursor;
    if-eqz v10, :cond_c

    .line 818
    const/16 v20, 0x0

    .line 819
    .local v20, position:I
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 820
    .local v12, count:I
    const/4 v2, 0x1

    if-ge v2, v12, :cond_8

    const/4 v15, 0x1

    .line 821
    .local v15, max:I
    :goto_1
    move/from16 v0, v20

    if-ge v0, v15, :cond_b

    .line 822
    move/from16 v0, v20

    invoke-interface {v10, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 823
    const/4 v2, 0x3

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 824
    .local v17, msgText:Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 825
    .local v9, address:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    .line 826
    .local v25, threadId:J
    const/4 v2, 0x6

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 828
    .local v23, status:I
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 829
    .local v16, msgId:I
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move/from16 v0, v16

    int-to-long v5, v0

    invoke-static {v2, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v18

    .line 831
    .local v18, msgUri:Landroid/net/Uri;
    const/16 v21, 0x0

    .line 832
    .local v21, priority:I
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSMSPriority()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 833
    const/4 v2, 0x4

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 835
    :cond_0
    const/4 v11, 0x0

    .line 836
    .local v11, callback:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSmsCallback()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 837
    const/4 v2, 0x5

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 842
    :cond_1
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 843
    .local v14, intent:Landroid/content/Intent;
    sget-object v2, Lcom/android/mms/transaction/SmsReceiverService;->sMsgSenderList:Ljava/util/concurrent/ConcurrentHashMap;

    move/from16 v0, v16

    int-to-long v5, v0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/mms/transaction/SmsReceiverService$SenderObject;

    .line 844
    .local v19, obj:Lcom/android/mms/transaction/SmsReceiverService$SenderObject;
    if-eqz v19, :cond_2

    .line 845
    const-string v2, "ack_dm"

    move-object/from16 v0, v19

    iget v5, v0, Lcom/android/mms/transaction/SmsReceiverService$SenderObject;->needAck:I

    invoke-virtual {v14, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 847
    const-string v2, "first_msg"

    move-object/from16 v0, v19

    iget-boolean v5, v0, Lcom/android/mms/transaction/SmsReceiverService$SenderObject;->grpFirst:Z

    invoke-virtual {v14, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 849
    const-string v2, "last_msg"

    move-object/from16 v0, v19

    iget-boolean v5, v0, Lcom/android/mms/transaction/SmsReceiverService$SenderObject;->grpLast:Z

    invoke-virtual {v14, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 852
    :cond_2
    const-string v2, "single_dest"

    invoke-virtual {v14, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 854
    const-string v2, "msg"

    move-object/from16 v0, v17

    invoke-virtual {v14, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 857
    invoke-static/range {v17 .. v17}, Lcom/android/mms/ui/MessageUtils;->hasSmsVcardBody(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 858
    const-string v2, "vcard"

    const/4 v5, 0x1

    invoke-virtual {v14, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 861
    :cond_3
    const-string v2, "real_threadId"

    move-wide/from16 v0, v25

    invoke-virtual {v14, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 863
    const-string v5, "status_report"

    const/16 v2, 0x20

    move/from16 v0, v23

    if-ne v0, v2, :cond_9

    const/4 v2, 0x1

    :goto_2
    invoke-virtual {v14, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 865
    if-lez v21, :cond_4

    .line 866
    const-string v2, "priority_int"

    move/from16 v0, v21

    invoke-virtual {v14, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 869
    :cond_4
    if-eqz v11, :cond_5

    .line 870
    const-string v2, "callback"

    invoke-virtual {v14, v2, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 875
    :cond_5
    const-string v2, "update_time"

    const/4 v5, 0x1

    invoke-virtual {v14, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 877
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 879
    new-instance v22, Lcom/android/mms/transaction/SmsSingleRecipientSender;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14}, Lcom/android/mms/transaction/SmsSingleRecipientSender;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 882
    .local v22, sender:Lcom/android/mms/transaction/SmsSingleRecipientSender;
    if-eqz v19, :cond_6

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/mms/transaction/SmsReceiverService$SenderObject;->groupMsg:Lcom/android/mms/transaction/GroupMessage;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/android/mms/transaction/SmsSingleRecipientSender;->setGroupMessage(Lcom/android/mms/transaction/GroupMessage;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 891
    :cond_6
    const-wide/16 v5, -0x1

    :try_start_2
    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v6}, Lcom/android/mms/transaction/SmsSingleRecipientSender;->sendMessage(J)Z

    .line 892
    sget-object v5, Lcom/android/mms/transaction/SmsReceiverService;->mSendingCntLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_0

    .line 893
    :try_start_3
    sget v2, Lcom/android/mms/transaction/SmsReceiverService;->mSendingCnt:I

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/transaction/SmsSingleRecipientSender;->getMessageCount()I

    move-result v6

    add-int/2addr v2, v6

    sput v2, Lcom/android/mms/transaction/SmsReceiverService;->mSendingCnt:I

    .line 894
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 911
    :goto_3
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_1

    .line 808
    .end local v3           #resolver:Landroid/content/ContentResolver;
    .end local v8           #sortOrder:Ljava/lang/String;
    .end local v9           #address:Ljava/lang/String;
    .end local v10           #c:Landroid/database/Cursor;
    .end local v11           #callback:Ljava/lang/String;
    .end local v12           #count:I
    .end local v14           #intent:Landroid/content/Intent;
    .end local v15           #max:I
    .end local v16           #msgId:I
    .end local v17           #msgText:Ljava/lang/String;
    .end local v18           #msgUri:Landroid/net/Uri;
    .end local v19           #obj:Lcom/android/mms/transaction/SmsReceiverService$SenderObject;
    .end local v20           #position:I
    .end local v21           #priority:I
    .end local v22           #sender:Lcom/android/mms/transaction/SmsSingleRecipientSender;
    .end local v23           #status:I
    .end local v25           #threadId:J
    :cond_7
    :try_start_4
    const-string v8, "date ASC"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .restart local v8       #sortOrder:Ljava/lang/String;
    goto/16 :goto_0

    .restart local v3       #resolver:Landroid/content/ContentResolver;
    .restart local v10       #c:Landroid/database/Cursor;
    .restart local v12       #count:I
    .restart local v20       #position:I
    :cond_8
    move v15, v12

    .line 820
    goto/16 :goto_1

    .line 863
    .restart local v9       #address:Ljava/lang/String;
    .restart local v11       #callback:Ljava/lang/String;
    .restart local v14       #intent:Landroid/content/Intent;
    .restart local v15       #max:I
    .restart local v16       #msgId:I
    .restart local v17       #msgText:Ljava/lang/String;
    .restart local v18       #msgUri:Landroid/net/Uri;
    .restart local v19       #obj:Lcom/android/mms/transaction/SmsReceiverService$SenderObject;
    .restart local v21       #priority:I
    .restart local v23       #status:I
    .restart local v25       #threadId:J
    :cond_9
    const/4 v2, 0x0

    goto :goto_2

    .line 894
    .restart local v22       #sender:Lcom/android/mms/transaction/SmsSingleRecipientSender;
    :catchall_0
    move-exception v2

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_6 .. :try_end_6} :catch_0

    .line 895
    :catch_0
    move-exception v13

    .line 896
    .local v13, e:Lcom/google/android/mms/MmsException;
    :try_start_7
    const-string v2, "SmsReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendFirstQueuedMessage: failed to send message "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", caught "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 905
    const/16 v24, 0x0

    goto :goto_3

    .line 908
    .end local v9           #address:Ljava/lang/String;
    .end local v11           #callback:Ljava/lang/String;
    .end local v13           #e:Lcom/google/android/mms/MmsException;
    .end local v14           #intent:Landroid/content/Intent;
    .end local v16           #msgId:I
    .end local v17           #msgText:Ljava/lang/String;
    .end local v18           #msgUri:Landroid/net/Uri;
    .end local v19           #obj:Lcom/android/mms/transaction/SmsReceiverService$SenderObject;
    .end local v21           #priority:I
    .end local v22           #sender:Lcom/android/mms/transaction/SmsSingleRecipientSender;
    .end local v23           #status:I
    .end local v25           #threadId:J
    :cond_a
    const-string v2, "SmsReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "give up due to move cursor fail: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 914
    :cond_b
    :try_start_8
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 917
    .end local v12           #count:I
    .end local v15           #max:I
    .end local v20           #position:I
    :cond_c
    if-eqz v24, :cond_d

    .line 920
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->unRegisterForServiceStateChanges()V

    .line 922
    :cond_d
    const-string v2, "SmsReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendFirstQueuedMessage end cnt> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/mms/transaction/SmsReceiverService;->mSendingCnt:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 923
    monitor-exit p0

    return-void

    .line 914
    .restart local v20       #position:I
    :catchall_1
    move-exception v2

    :try_start_9
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 799
    .end local v3           #resolver:Landroid/content/ContentResolver;
    .end local v4           #uri:Landroid/net/Uri;
    .end local v8           #sortOrder:Ljava/lang/String;
    .end local v10           #c:Landroid/database/Cursor;
    .end local v20           #position:I
    .end local v24           #success:Z
    :catchall_2
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized sendFirstQueuedMessage2()V
    .locals 22

    .prologue
    .line 713
    monitor-enter p0

    :try_start_0
    const-string v2, "content://sms/queued"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 714
    .local v4, uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 715
    .local v3, resolver:Landroid/content/ContentResolver;
    const/4 v10, 0x0

    .line 716
    .local v10, c:Landroid/database/Cursor;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSMSPriority()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSmsCallback()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 718
    :cond_0
    sget-object v5, Lcom/android/mms/transaction/SmsReceiverService;->SEND_MOREINFO_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v10

    .line 729
    :goto_0
    if-eqz v10, :cond_7

    .line 731
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 732
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 733
    .local v14, msgId:I
    const/4 v2, 0x3

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 734
    .local v15, msgText:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v9, v2, [Ljava/lang/String;

    .line 735
    .local v9, address:[Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v5, 0x2

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v2

    .line 736
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 737
    .local v20, threadId:J
    const-string v17, "normal"

    .line 738
    .local v17, priStr:Ljava/lang/String;
    const-string v11, ""

    .line 741
    .local v11, callback:Ljava/lang/String;
    const/16 v18, 0x0

    .line 742
    .local v18, pri_id:I
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSMSPriority()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 743
    const/4 v2, 0x4

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 744
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSmsCallback()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 745
    const/4 v2, 0x5

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 747
    :cond_2
    if-lez v18, :cond_9

    .line 748
    new-instance v17, Ljava/lang/String;

    .end local v17           #priStr:Ljava/lang/String;
    const-string v2, "high"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 754
    .restart local v17       #priStr:Ljava/lang/String;
    :goto_1
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 755
    .local v13, intent:Landroid/content/Intent;
    const-string v2, "dest"

    invoke-virtual {v13, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 756
    const-string v2, "msg"

    invoke-virtual {v13, v2, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 757
    const-string v2, "threadId"

    move-wide/from16 v0, v20

    invoke-virtual {v13, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 758
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSMSPriority()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 759
    const-string v2, "priority"

    move-object/from16 v0, v17

    invoke-virtual {v13, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 760
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSmsCallback()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 761
    const-string v2, "callback"

    invoke-virtual {v13, v2, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 770
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportPacketSms()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 771
    const-string v2, "send_mode"

    sget v5, Lcom/android/mms/custom/CustomizedManager$KddiSmsManager;->KDDI_SEND_MODE_TRANSACTION:I

    invoke-virtual {v13, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 774
    :cond_5
    new-instance v19, Lcom/android/mms/transaction/SmsMessageSender;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 781
    .local v19, sender:Lcom/android/mms/transaction/SmsMessageSender;
    const-wide/16 v5, -0x1

    :try_start_2
    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v6}, Lcom/android/mms/transaction/SmsMessageSender;->sendMessage(J)Z

    .line 785
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v5, v14

    invoke-static {v2, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v16

    .line 786
    .local v16, msgUri:Landroid/net/Uri;
    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v3, v1, v2, v5}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_0

    .line 792
    .end local v9           #address:[Ljava/lang/String;
    .end local v11           #callback:Ljava/lang/String;
    .end local v13           #intent:Landroid/content/Intent;
    .end local v14           #msgId:I
    .end local v15           #msgText:Ljava/lang/String;
    .end local v16           #msgUri:Landroid/net/Uri;
    .end local v17           #priStr:Ljava/lang/String;
    .end local v18           #pri_id:I
    .end local v19           #sender:Lcom/android/mms/transaction/SmsMessageSender;
    .end local v20           #threadId:J
    :cond_6
    :goto_2
    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 795
    :cond_7
    monitor-exit p0

    return-void

    .line 721
    :cond_8
    :try_start_4
    sget-object v5, Lcom/android/mms/transaction/SmsReceiverService;->SEND_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v10

    goto/16 :goto_0

    .line 750
    .restart local v9       #address:[Ljava/lang/String;
    .restart local v11       #callback:Ljava/lang/String;
    .restart local v14       #msgId:I
    .restart local v15       #msgText:Ljava/lang/String;
    .restart local v17       #priStr:Ljava/lang/String;
    .restart local v18       #pri_id:I
    .restart local v20       #threadId:J
    :cond_9
    :try_start_5
    new-instance v17, Ljava/lang/String;

    .end local v17           #priStr:Ljava/lang/String;
    const-string v2, "normal"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .restart local v17       #priStr:Ljava/lang/String;
    goto :goto_1

    .line 787
    .restart local v13       #intent:Landroid/content/Intent;
    .restart local v19       #sender:Lcom/android/mms/transaction/SmsMessageSender;
    :catch_0
    move-exception v12

    .line 788
    .local v12, e:Lcom/google/android/mms/MmsException;
    const-string v2, "SmsReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to send message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 792
    .end local v9           #address:[Ljava/lang/String;
    .end local v11           #callback:Ljava/lang/String;
    .end local v12           #e:Lcom/google/android/mms/MmsException;
    .end local v13           #intent:Landroid/content/Intent;
    .end local v14           #msgId:I
    .end local v15           #msgText:Ljava/lang/String;
    .end local v17           #priStr:Ljava/lang/String;
    .end local v18           #pri_id:I
    .end local v19           #sender:Lcom/android/mms/transaction/SmsMessageSender;
    .end local v20           #threadId:J
    :catchall_0
    move-exception v2

    :try_start_6
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 713
    .end local v3           #resolver:Landroid/content/ContentResolver;
    .end local v4           #uri:Landroid/net/Uri;
    .end local v10           #c:Landroid/database/Cursor;
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2
.end method
