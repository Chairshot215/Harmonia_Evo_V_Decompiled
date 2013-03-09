.class public Lcom/android/settings/framework/content/custom/HtcCustomNotificationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HtcCustomNotificationReceiver.java"


# static fields
.field private static final CASE_FOTA_UPGRADE:Ljava/lang/String; = "com.htc.FOTA_UPGRADE"

.field private static final KEY_CUSTOMIZED_REASON:Ljava/lang/String; = "com.htc.CUSTOMIZED_REASON"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/android/settings/framework/content/custom/HtcCustomNotificationReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/content/custom/HtcCustomNotificationReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 37
    const-string v2, "com.htc.CUSTOMIZED_REASON"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, reason:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    new-instance v2, Lcom/android/settings/framework/content/custom/HtcCustomAgent;

    invoke-direct {v2}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;-><init>()V

    invoke-virtual {v2, p1}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->onCustomize(Landroid/content/Context;)V

    .line 51
    :cond_0
    invoke-static {p1}, Lcom/android/settings/framework/content/custom/HtcCustomApDisabler;->disableCustomAp(Landroid/content/Context;)V

    .line 52
    invoke-static {p1}, Lcom/android/settings/framework/content/custom/HtcCustomLog;->dumpLog(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method
