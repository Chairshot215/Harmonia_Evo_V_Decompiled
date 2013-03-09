.class public Landroid/net/HtcNetworkConnectivityHelper;
.super Ljava/lang/Object;
.source "HtcNetworkConnectivityHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/HtcNetworkConnectivityHelper$1;,
        Landroid/net/HtcNetworkConnectivityHelper$State;,
        Landroid/net/HtcNetworkConnectivityHelper$ConnectivityBroadcastReceiver;
    }
.end annotation


# static fields
.field static final APN_ALREADY_ACTIVE:I = 0x0

.field static final APN_REQUEST_FAILED:I = 0x3

.field static final APN_REQUEST_STARTED:I = 0x1

.field static final APN_TYPE_NOT_AVAILABLE:I = 0x2

.field private static final DBG:Z = true

.field static final FEATConnectivityBroadcastReceiverURE_ENABLE_MMS:Ljava/lang/String; = "enableMMS"

.field static final FEATURE_ENABLE_DUN:Ljava/lang/String; = "enableDUN"

.field static final FEATURE_ENABLE_HIPRI:Ljava/lang/String; = "enableHIPRI"

.field static final FEATURE_ENABLE_HTTPPROXY:Ljava/lang/String; = "enableHTTPPROXY"

.field static final FEATURE_ENABLE_SUPL:Ljava/lang/String; = "enableSUPL"

.field static final FEATURE_ENABLE_WAPGATEWAY:Ljava/lang/String; = "enableWAPGATEWAY"

.field static final REASON_APN_MISSING:Ljava/lang/String; = "apnMissing"

.field static final REASON_HTC_APN_FAILED:Ljava/lang/String; = "apnFailed"

.field static final REASON_HTC_NO_APN_FOR_FOTA:Ljava/lang/String; = "noApnForFOTA"

.field private static final TAG:Ljava/lang/String; = "HtcNetworkConnectivityHelper"


# instance fields
.field gw0:Ljava/lang/String;

.field gw1:Ljava/lang/String;

.field gw2:Ljava/lang/String;

.field private mApnType:Ljava/lang/String;

.field private mConnMgr:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/Handler;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mListening:Z

.field private mOldState:Landroid/net/HtcNetworkConnectivityHelper$State;

.field private mReason:Ljava/lang/String;

.field private mReceiver:Landroid/net/HtcNetworkConnectivityHelper$ConnectivityBroadcastReceiver;

.field private mRequestFeature:Ljava/lang/String;

.field private mState:Landroid/net/HtcNetworkConnectivityHelper$State;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/HtcNetworkConnectivityHelper;->mHandlers:Ljava/util/HashMap;

    const-string v0, ""

    iput-object v0, p0, Landroid/net/HtcNetworkConnectivityHelper;->gw0:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/net/HtcNetworkConnectivityHelper;->gw1:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/net/HtcNetworkConnectivityHelper;->gw2:Ljava/lang/String;

    sget-object v0, Landroid/net/HtcNetworkConnectivityHelper$State;->NOT_CONNECTED:Landroid/net/HtcNetworkConnectivityHelper$State;

    iput-object v0, p0, Landroid/net/HtcNetworkConnectivityHelper;->mState:Landroid/net/HtcNetworkConnectivityHelper$State;

    sget-object v0, Landroid/net/HtcNetworkConnectivityHelper$State;->NOT_CONNECTED:Landroid/net/HtcNetworkConnectivityHelper$State;

    iput-object v0, p0, Landroid/net/HtcNetworkConnectivityHelper;->mOldState:Landroid/net/HtcNetworkConnectivityHelper$State;

    iput-object p1, p0, Landroid/net/HtcNetworkConnectivityHelper;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/net/HtcNetworkConnectivityHelper$ConnectivityBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/net/HtcNetworkConnectivityHelper$ConnectivityBroadcastReceiver;-><init>(Landroid/net/HtcNetworkConnectivityHelper;Landroid/net/HtcNetworkConnectivityHelper$1;)V

    iput-object v0, p0, Landroid/net/HtcNetworkConnectivityHelper;->mReceiver:Landroid/net/HtcNetworkConnectivityHelper$ConnectivityBroadcastReceiver;

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Landroid/net/HtcNetworkConnectivityHelper;->mConnMgr:Landroid/net/ConnectivityManager;

    return-void
.end method

.method static synthetic access$000(Landroid/net/HtcNetworkConnectivityHelper;Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 1

    invoke-direct {p0, p1}, Landroid/net/HtcNetworkConnectivityHelper;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/net/HtcNetworkConnectivityHelper;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/HtcNetworkConnectivityHelper;->mApnType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Landroid/net/HtcNetworkConnectivityHelper;)Landroid/net/HtcNetworkConnectivityHelper$State;
    .locals 1

    iget-object v0, p0, Landroid/net/HtcNetworkConnectivityHelper;->mOldState:Landroid/net/HtcNetworkConnectivityHelper$State;

    return-object v0
.end method

.method static synthetic access$202(Landroid/net/HtcNetworkConnectivityHelper;Landroid/net/HtcNetworkConnectivityHelper$State;)Landroid/net/HtcNetworkConnectivityHelper$State;
    .locals 0

    iput-object p1, p0, Landroid/net/HtcNetworkConnectivityHelper;->mOldState:Landroid/net/HtcNetworkConnectivityHelper$State;

    return-object p1
.end method

.method static synthetic access$300(Landroid/net/HtcNetworkConnectivityHelper;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/net/HtcNetworkConnectivityHelper;->isApnTypeIncluded(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/net/HtcNetworkConnectivityHelper;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/HtcNetworkConnectivityHelper;->mRequestFeature:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Landroid/net/HtcNetworkConnectivityHelper;)Landroid/net/HtcNetworkConnectivityHelper$State;
    .locals 1

    iget-object v0, p0, Landroid/net/HtcNetworkConnectivityHelper;->mState:Landroid/net/HtcNetworkConnectivityHelper$State;

    return-object v0
.end method

.method static synthetic access$502(Landroid/net/HtcNetworkConnectivityHelper;Landroid/net/HtcNetworkConnectivityHelper$State;)Landroid/net/HtcNetworkConnectivityHelper$State;
    .locals 0

    iput-object p1, p0, Landroid/net/HtcNetworkConnectivityHelper;->mState:Landroid/net/HtcNetworkConnectivityHelper$State;

    return-object p1
.end method

.method static synthetic access$602(Landroid/net/HtcNetworkConnectivityHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/net/HtcNetworkConnectivityHelper;->mReason:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Landroid/net/HtcNetworkConnectivityHelper;)V
    .locals 0

    invoke-direct {p0}, Landroid/net/HtcNetworkConnectivityHelper;->notifyhandler()V

    return-void
.end method

.method private convertApnbyFeature(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "enableMMS"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "mms"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "enableSUPL"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "supl"

    goto :goto_0

    :cond_1
    const-string v0, "enableDUN"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "dun"

    goto :goto_0

    :cond_2
    const-string v0, "enableHIPRI"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "hipri"

    goto :goto_0

    :cond_3
    const-string v0, "enableWAPGATEWAY"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "wapgateway"

    goto :goto_0

    :cond_4
    const-string v0, "enableHTTPPROXY"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "httpproxy"

    goto :goto_0

    :cond_5
    const-string v0, "enableFOTA"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "fota"

    goto :goto_0

    :cond_6
    const-string v0, "default"

    goto :goto_0
.end method

.method private getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 3

    const-string/jumbo v2, "state"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "apnType"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/HtcNetworkConnectivityHelper;->isApnTypeIncluded(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-class v2, Lcom/android/internal/telephony/Phone$DataState;

    invoke-static {v2, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Phone$DataState;

    :goto_0
    return-object v2

    :cond_0
    sget-object v2, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0
.end method

.method private isApnTypeIncluded(Ljava/lang/String;)Z
    .locals 5

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_0

    aget-object v3, v1, v0

    iget-object v4, p0, Landroid/net/HtcNetworkConnectivityHelper;->mApnType:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    aget-object v3, v1, v0

    const-string v4, "*"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private notifyhandler()V
    .locals 4

    iget-object v3, p0, Landroid/net/HtcNetworkConnectivityHelper;->mHandlers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    iget-object v3, p0, Landroid/net/HtcNetworkConnectivityHelper;->mHandlers:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getReason()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/HtcNetworkConnectivityHelper;->mReason:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Landroid/net/HtcNetworkConnectivityHelper$State;
    .locals 1

    iget-object v0, p0, Landroid/net/HtcNetworkConnectivityHelper;->mState:Landroid/net/HtcNetworkConnectivityHelper$State;

    return-object v0
.end method

.method public startUsingNetowrkFeature(Ljava/lang/String;Landroid/os/Handler;I)I
    .locals 4

    iput-object p1, p0, Landroid/net/HtcNetworkConnectivityHelper;->mRequestFeature:Ljava/lang/String;

    invoke-direct {p0, p1}, Landroid/net/HtcNetworkConnectivityHelper;->convertApnbyFeature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/HtcNetworkConnectivityHelper;->mApnType:Ljava/lang/String;

    const-string/jumbo v2, "net.rmnet0.gw"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/HtcNetworkConnectivityHelper;->gw0:Ljava/lang/String;

    const-string/jumbo v2, "net.rmnet1.gw"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/HtcNetworkConnectivityHelper;->gw1:Ljava/lang/String;

    const-string/jumbo v2, "net.rmnet2.gw"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/HtcNetworkConnectivityHelper;->gw2:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/HtcNetworkConnectivityHelper;->mHandlers:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/net/HtcNetworkConnectivityHelper;->mHandlers:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/net/HtcNetworkConnectivityHelper;->mConnMgr:Landroid/net/ConnectivityManager;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/net/HtcNetworkConnectivityHelper;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v1

    iget-boolean v2, p0, Landroid/net/HtcNetworkConnectivityHelper;->mListening:Z

    if-nez v2, :cond_1

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/HtcNetworkConnectivityHelper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/net/HtcNetworkConnectivityHelper;->mReceiver:Landroid/net/HtcNetworkConnectivityHelper$ConnectivityBroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/net/HtcNetworkConnectivityHelper;->mListening:Z

    move v2, v1

    :goto_0
    return v2

    :cond_1
    if-nez v1, :cond_2

    invoke-direct {p0}, Landroid/net/HtcNetworkConnectivityHelper;->notifyhandler()V

    move v2, v1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Landroid/net/HtcNetworkConnectivityHelper;->notifyhandler()V

    const/4 v2, 0x3

    goto :goto_0
.end method

.method public stopUsingNetworkFeature(Landroid/os/Handler;)I
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/net/HtcNetworkConnectivityHelper;->mConnMgr:Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/net/HtcNetworkConnectivityHelper;->mConnMgr:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Landroid/net/HtcNetworkConnectivityHelper;->mRequestFeature:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    move-result v0

    iget-boolean v1, p0, Landroid/net/HtcNetworkConnectivityHelper;->mListening:Z

    if-eqz v1, :cond_1

    sget-object v1, Landroid/net/HtcNetworkConnectivityHelper$State;->NOT_CONNECTED:Landroid/net/HtcNetworkConnectivityHelper$State;

    iput-object v1, p0, Landroid/net/HtcNetworkConnectivityHelper;->mState:Landroid/net/HtcNetworkConnectivityHelper$State;

    sget-object v1, Landroid/net/HtcNetworkConnectivityHelper$State;->NOT_CONNECTED:Landroid/net/HtcNetworkConnectivityHelper$State;

    iput-object v1, p0, Landroid/net/HtcNetworkConnectivityHelper;->mOldState:Landroid/net/HtcNetworkConnectivityHelper$State;

    invoke-direct {p0}, Landroid/net/HtcNetworkConnectivityHelper;->notifyhandler()V

    iget-object v1, p0, Landroid/net/HtcNetworkConnectivityHelper;->mHandlers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/HtcNetworkConnectivityHelper;->mHandlers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Landroid/net/HtcNetworkConnectivityHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/net/HtcNetworkConnectivityHelper;->mReceiver:Landroid/net/HtcNetworkConnectivityHelper$ConnectivityBroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-boolean v3, p0, Landroid/net/HtcNetworkConnectivityHelper;->mListening:Z

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/HtcNetworkConnectivityHelper;->mRequestFeature:Ljava/lang/String;

    :cond_1
    move v1, v0

    :goto_0
    return v1

    :cond_2
    const/4 v1, -0x1

    goto :goto_0
.end method
