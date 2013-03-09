.class public Lcom/android/mms/transaction/SmsStorageEventsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmsStorageEventsReceiver.java"


# static fields
.field private static final HTC_DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SmsStorageEventsReceiver"

.field private static sInstance:Lcom/android/mms/transaction/SmsStorageEventsReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static getInstance()Lcom/android/mms/transaction/SmsStorageEventsReceiver;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/mms/transaction/SmsStorageEventsReceiver;->sInstance:Lcom/android/mms/transaction/SmsStorageEventsReceiver;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/android/mms/transaction/SmsStorageEventsReceiver;

    invoke-direct {v0}, Lcom/android/mms/transaction/SmsStorageEventsReceiver;-><init>()V

    sput-object v0, Lcom/android/mms/transaction/SmsStorageEventsReceiver;->sInstance:Lcom/android/mms/transaction/SmsStorageEventsReceiver;

    .line 45
    :cond_0
    sget-object v0, Lcom/android/mms/transaction/SmsStorageEventsReceiver;->sInstance:Lcom/android/mms/transaction/SmsStorageEventsReceiver;

    return-object v0
.end method

.method private static htclogd(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 80
    return-void
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 83
    const-string v0, "SmsStorageEventsReceiver"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return-void
.end method

.method public static registerReceiver(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 69
    const-string v1, "registerReceiver"

    invoke-static {v1}, Lcom/android/mms/transaction/SmsStorageEventsReceiver;->htclogd(Ljava/lang/String;)V

    .line 70
    invoke-static {p0}, Lcom/android/mms/transaction/SmsStorageEventsReceiver;->unregisterReceiver(Landroid/content/Context;)V

    .line 72
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 73
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SMS_STORAGE_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    const-string v1, "android.intent.action.SMS_STORAGE_OK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    invoke-static {}, Lcom/android/mms/transaction/SmsStorageEventsReceiver;->getInstance()Lcom/android/mms/transaction/SmsStorageEventsReceiver;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 76
    return-void
.end method

.method public static unregisterReceiver(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 60
    const-string v0, "unregisterReceiver"

    invoke-static {v0}, Lcom/android/mms/transaction/SmsStorageEventsReceiver;->htclogd(Ljava/lang/String;)V

    .line 62
    :try_start_0
    invoke-static {}, Lcom/android/mms/transaction/SmsStorageEventsReceiver;->getInstance()Lcom/android/mms/transaction/SmsStorageEventsReceiver;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/transaction/SmsStorageEventsReceiver;->logd(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.SMS_STORAGE_LOW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/mms/MmsApp;->setSmsStorageAvailable(Z)V

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    const-string v1, "android.intent.action.SMS_STORAGE_OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/mms/MmsApp;->setSmsStorageAvailable(Z)V

    goto :goto_0
.end method
