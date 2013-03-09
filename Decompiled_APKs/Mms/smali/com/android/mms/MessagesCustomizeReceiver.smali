.class public Lcom/android/mms/MessagesCustomizeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MessagesCustomizeReceiver.java"


# static fields
.field private static final ACTION_CUSTOMIZATION:Ljava/lang/String; = "android.htc.intent.action.CUSTOMIZATION_CHANGE"

.field public static final CASE_FOTA_UPGRADE:Ljava/lang/String; = "com.htc.FOTA_UPGRADE"

.field public static final KEY_CUSTOMIZED_REASON:Ljava/lang/String; = "com.htc.CUSTOMIZED_REASON"

.field private static final TAG:Ljava/lang/String; = "Cust_MMSMS"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 20
    const-string v4, "Cust_MMSMS"

    const-string v5, "onReceive"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-static {}, Lcom/android/mms/util/CustomizeProvider;->clearAll()V

    .line 23
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 25
    .local v1, action:Ljava/lang/String;
    const-string v4, "android.htc.intent.action.CUSTOMIZATION_CHANGE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 26
    const-string v4, "com.htc.CUSTOMIZED_REASON"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 28
    .local v3, reason:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 29
    .local v0, ServiceIntent:Landroid/content/Intent;
    const-class v4, Lcom/android/mms/MessagesCustomizeService;

    invoke-virtual {v0, p1, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 30
    const-string v4, "com.htc.CUSTOMIZED_REASON"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    :try_start_0
    const-string v4, "Cust_MMSMS"

    const-string v5, "start MessagesCustomizeService"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .end local v0           #ServiceIntent:Landroid/content/Intent;
    .end local v3           #reason:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 35
    .restart local v0       #ServiceIntent:Landroid/content/Intent;
    .restart local v3       #reason:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 36
    .local v2, e:Ljava/lang/SecurityException;
    invoke-virtual {v2}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0
.end method
