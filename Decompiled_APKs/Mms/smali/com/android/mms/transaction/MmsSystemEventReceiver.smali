.class public Lcom/android/mms/transaction/MmsSystemEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MmsSystemEventReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transaction/MmsSystemEventReceiver$CBQueryHandler;,
        Lcom/android/mms/transaction/MmsSystemEventReceiver$ReceiveSystemEventTask;
    }
.end annotation


# static fields
.field public static final CBCHANNEL:Ljava/lang/String; = "channel"

.field public static final CBCHANNEL_NAME:Ljava/lang/String; = "channel_name"

.field public static final CBLOCALE:Ljava/lang/String; = "locale"

.field private static final CBPROJECTION:[Ljava/lang/String; = null

.field public static final CBREADONLY:Ljava/lang/String; = "readonly"

.field private static final CB_CONTENT_URI:Landroid/net/Uri; = null

.field private static final CB_QUERY_TOKEN:I = 0x1

.field private static final CB_REQUERY_TOKEN:I = 0x2

.field private static final DEBUG:Z = true

.field private static final ENUS:Ljava/lang/String; = "en_US"

.field public static final ID:Ljava/lang/String; = "_id"

.field private static final LOCAL_LOGV:Z = true

.field private static final TAG:Ljava/lang/String; = "MmsSystemEventReceiver"

.field private static mCBQueryHandler:Lcom/android/mms/transaction/MmsSystemEventReceiver$CBQueryHandler;

.field private static sMmsSystemEventReceiver:Lcom/android/mms/transaction/MmsSystemEventReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 83
    const-string v0, "content://cbsetting"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->CB_CONTENT_URI:Landroid/net/Uri;

    .line 84
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "locale"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "channel"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "channel_name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "readonly"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->CBPROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 321
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-static {p0}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->wakeUpService(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-static {p0}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->updateCBlocale(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200()Lcom/android/mms/transaction/MmsSystemEventReceiver$CBQueryHandler;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mCBQueryHandler:Lcom/android/mms/transaction/MmsSystemEventReceiver$CBQueryHandler;

    return-object v0
.end method

.method static synthetic access$300()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->CB_CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$400()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->CBPROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method public static registerForConnectionStateChanges(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 112
    invoke-static {p0}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->unRegisterForConnectionStateChanges(Landroid/content/Context;)V

    .line 114
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 115
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    const-string v1, "MmsSystemEventReceiver"

    const-string v2, "registerForConnectionStateChanges"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    sget-object v1, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sMmsSystemEventReceiver:Lcom/android/mms/transaction/MmsSystemEventReceiver;

    if-nez v1, :cond_0

    .line 122
    new-instance v1, Lcom/android/mms/transaction/MmsSystemEventReceiver;

    invoke-direct {v1}, Lcom/android/mms/transaction/MmsSystemEventReceiver;-><init>()V

    sput-object v1, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sMmsSystemEventReceiver:Lcom/android/mms/transaction/MmsSystemEventReceiver;

    .line 125
    :cond_0
    sget-object v1, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sMmsSystemEventReceiver:Lcom/android/mms/transaction/MmsSystemEventReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 126
    return-void
.end method

.method public static unRegisterForConnectionStateChanges(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 130
    const-string v0, "MmsSystemEventReceiver"

    const-string v1, "unRegisterForConnectionStateChanges"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    sget-object v0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sMmsSystemEventReceiver:Lcom/android/mms/transaction/MmsSystemEventReceiver;

    if-eqz v0, :cond_0

    .line 134
    :try_start_0
    sget-object v0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sMmsSystemEventReceiver:Lcom/android/mms/transaction/MmsSystemEventReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static updateCBlocale(Ljava/lang/String;)V
    .locals 8
    .parameter "locale"

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    .line 145
    sget-object v0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mCBQueryHandler:Lcom/android/mms/transaction/MmsSystemEventReceiver$CBQueryHandler;

    invoke-virtual {v0, v2}, Lcom/android/mms/transaction/MmsSystemEventReceiver$CBQueryHandler;->cancelOperation(I)V

    .line 146
    const/4 v5, 0x0

    .line 149
    .local v5, selection:Ljava/lang/String;
    const-string v0, "en_US"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "((locale = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "locale"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = \'en_US\') AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "readonly"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = 1)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 154
    :goto_0
    sget-object v0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mCBQueryHandler:Lcom/android/mms/transaction/MmsSystemEventReceiver$CBQueryHandler;

    const/4 v1, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/android/mms/transaction/MmsSystemEventReceiver;->CB_CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/mms/transaction/MmsSystemEventReceiver;->CBPROJECTION:[Ljava/lang/String;

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/transaction/MmsSystemEventReceiver$CBQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    return-void

    .line 152
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "((locale = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\') AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "readonly"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = 1)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private static wakeUpService(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 93
    const-string v0, "MmsSystemEventReceiver"

    const-string v1, "TransactionService is going to be woken up."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 97
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 102
    const-string v0, "MmsSystemEventReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Intent received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    new-instance v0, Lcom/android/mms/transaction/MmsSystemEventReceiver$CBQueryHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/mms/transaction/MmsSystemEventReceiver$CBQueryHandler;-><init>(Lcom/android/mms/transaction/MmsSystemEventReceiver;Landroid/content/ContentResolver;Landroid/content/Context;)V

    sput-object v0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mCBQueryHandler:Lcom/android/mms/transaction/MmsSystemEventReceiver$CBQueryHandler;

    .line 108
    new-instance v0, Lcom/android/mms/transaction/MmsSystemEventReceiver$ReceiveSystemEventTask;

    invoke-direct {v0, p1}, Lcom/android/mms/transaction/MmsSystemEventReceiver$ReceiveSystemEventTask;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/Intent;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/MmsSystemEventReceiver$ReceiveSystemEventTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 109
    return-void
.end method
