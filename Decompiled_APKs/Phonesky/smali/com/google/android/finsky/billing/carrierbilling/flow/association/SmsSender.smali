.class public Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender;
.super Ljava/lang/Object;
.source "SmsSender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$SmsSendListener;
    }
.end annotation


# static fields
.field private static mListener:Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$SmsSendListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$SmsSendListener$SmsSenderResult;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-static {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender;->dispatch(Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$SmsSendListener$SmsSenderResult;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$SmsSendListener;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender;->mListener:Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$SmsSendListener;

    return-object v0
.end method

.method private static dispatch(Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$SmsSendListener$SmsSenderResult;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 85
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender;->mListener:Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$SmsSendListener;

    if-nez v0, :cond_0

    .line 94
    :goto_0
    return-void

    .line 88
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$2;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$2;-><init>(Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$SmsSendListener$SmsSenderResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static send(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$SmsSendListener;)V
    .locals 6
    .parameter "context"
    .parameter "destinationAddress"
    .parameter "serviceCenterAddress"
    .parameter "text"
    .parameter "listener"

    .prologue
    const/4 v3, 0x0

    .line 54
    sput-object p4, Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender;->mListener:Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$SmsSendListener;

    .line 55
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    const-string v1, "Send sms failed invalid destination address"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$SmsSendListener$SmsSenderResult;->RESULT_ERROR:Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$SmsSendListener$SmsSenderResult;

    invoke-static {v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender;->dispatch(Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$SmsSendListener$SmsSenderResult;)V

    .line 82
    :goto_0
    return-void

    .line 61
    :cond_0
    const/4 v4, 0x0

    .line 62
    .local v4, sentIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_1

    .line 64
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.finsky.SMS_SENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 66
    new-instance v1, Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$1;

    invoke-direct {v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$1;-><init>()V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.finsky.SMS_SENT"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 80
    :cond_1
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 81
    .local v0, sms:Landroid/telephony/SmsManager;
    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method
