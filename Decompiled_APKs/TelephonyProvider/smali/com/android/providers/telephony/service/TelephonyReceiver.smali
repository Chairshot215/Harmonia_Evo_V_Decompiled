.class public Lcom/android/providers/telephony/service/TelephonyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TelephonyReceiver.java"


# static fields
.field public static final ACTION_CHECK_DB_CORRUPT:Ljava/lang/String; = "com.android.mms.intent.ACTION_CHECK_DB_CORRUPT"

.field private static final HTC_DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "TelephonyReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 25
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, action:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 29
    :cond_1
    const-string v3, "com.android.mms.intent.ACTION_CHECK_DB_CORRUPT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 30
    const-string v3, "TelephonyReceiver"

    const-string v4, "intent.ACTION_CHECK_DB_CORRUPT"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-static {p1}, Lcom/android/providers/telephony/util/TelephUtils;->getDbCorruptCount(Landroid/content/Context;)I

    move-result v1

    .line 33
    .local v1, count:I
    const-string v3, "TelephonyReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "corrupt count= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const/4 v3, 0x1

    if-ge v1, v3, :cond_2

    .line 37
    add-int/lit8 v1, v1, 0x1

    .line 38
    invoke-static {p1, v1}, Lcom/android/providers/telephony/util/TelephUtils;->setDbCorruptCount(Landroid/content/Context;I)V

    .line 39
    const-string v3, "TelephonyReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Increase corrupt count> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :goto_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Landroid/os/Process;->killProcess(I)V

    goto :goto_0

    .line 42
    :cond_2
    const/4 v3, 0x0

    invoke-static {p1, v3}, Lcom/android/providers/telephony/util/TelephUtils;->setDbCorruptCount(Landroid/content/Context;I)V

    .line 45
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/data/com.android.providers.telephony/databases/mmssms.db"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v2

    .line 46
    .local v2, sucess:Z
    const-string v3, "TelephonyReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing corrupted mmssms.db> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
