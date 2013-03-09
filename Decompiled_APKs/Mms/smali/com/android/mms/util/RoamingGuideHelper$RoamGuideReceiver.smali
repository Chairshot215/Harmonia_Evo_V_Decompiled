.class Lcom/android/mms/util/RoamingGuideHelper$RoamGuideReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RoamingGuideHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/RoamingGuideHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RoamGuideReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/util/RoamingGuideHelper;


# direct methods
.method private constructor <init>(Lcom/android/mms/util/RoamingGuideHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/mms/util/RoamingGuideHelper$RoamGuideReceiver;->this$0:Lcom/android/mms/util/RoamingGuideHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/util/RoamingGuideHelper;Lcom/android/mms/util/RoamingGuideHelper$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/mms/util/RoamingGuideHelper$RoamGuideReceiver;-><init>(Lcom/android/mms/util/RoamingGuideHelper;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 106
    sget-boolean v2, Lcom/android/mms/util/RoamingGuideHelper;->bHasAutoSend:Z

    if-nez v2, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 112
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 113
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 115
    .local v1, ni:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_2

    .line 116
    const-string v2, "RoamingGuideHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ni.isRoaming >"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_2
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v2

    if-nez v2, :cond_0

    .line 119
    iget-object v2, p0, Lcom/android/mms/util/RoamingGuideHelper$RoamGuideReceiver;->this$0:Lcom/android/mms/util/RoamingGuideHelper;

    #calls: Lcom/android/mms/util/RoamingGuideHelper;->moveAutoSendMsg2Queue()V
    invoke-static {v2}, Lcom/android/mms/util/RoamingGuideHelper;->access$200(Lcom/android/mms/util/RoamingGuideHelper;)V

    .line 120
    sput-boolean v5, Lcom/android/mms/util/RoamingGuideHelper;->bHasAutoSend:Z

    goto :goto_0
.end method
