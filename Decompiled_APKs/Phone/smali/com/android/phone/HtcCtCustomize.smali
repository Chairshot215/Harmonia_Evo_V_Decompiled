.class public Lcom/android/phone/HtcCtCustomize;
.super Landroid/os/Handler;
.source "HtcCtCustomize.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/HtcCtCustomize$CustomizeObj;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DBG_DETAIL:Z = false

#the value of this static final field might be set in the static constructor
.field public static final ENABLE:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "HtcCtCustomize"


# instance fields
.field private mObj:Lcom/android/phone/HtcCtCustomize$CustomizeObj;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xd8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/phone/HtcCtCustomize;->ENABLE:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .parameter "phoneObj"

    .prologue
    const/4 v3, 0x0

    .line 43
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 44
    sget-boolean v1, Lcom/android/phone/HtcCtCustomize;->ENABLE:Z

    if-eqz v1, :cond_0

    .line 45
    new-instance v1, Lcom/android/phone/HtcCtCustomize$CustomizeObj;

    invoke-direct {v1, p0}, Lcom/android/phone/HtcCtCustomize$CustomizeObj;-><init>(Lcom/android/phone/HtcCtCustomize;)V

    iput-object v1, p0, Lcom/android/phone/HtcCtCustomize;->mObj:Lcom/android/phone/HtcCtCustomize$CustomizeObj;

    .line 46
    iget-object v1, p0, Lcom/android/phone/HtcCtCustomize;->mObj:Lcom/android/phone/HtcCtCustomize$CustomizeObj;

    iput-object v3, v1, Lcom/android/phone/HtcCtCustomize$CustomizeObj;->inService:Ljava/lang/Boolean;

    .line 47
    iget-object v1, p0, Lcom/android/phone/HtcCtCustomize;->mObj:Lcom/android/phone/HtcCtCustomize$CustomizeObj;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/phone/HtcCtCustomize$CustomizeObj;->isRoaming:Z

    .line 48
    iget-object v1, p0, Lcom/android/phone/HtcCtCustomize;->mObj:Lcom/android/phone/HtcCtCustomize$CustomizeObj;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, v1, Lcom/android/phone/HtcCtCustomize$CustomizeObj;->context:Landroid/content/Context;

    .line 49
    iget-object v1, p0, Lcom/android/phone/HtcCtCustomize;->mObj:Lcom/android/phone/HtcCtCustomize$CustomizeObj;

    iput-object p1, v1, Lcom/android/phone/HtcCtCustomize$CustomizeObj;->phone:Lcom/android/internal/telephony/Phone;

    .line 50
    iget-object v1, p0, Lcom/android/phone/HtcCtCustomize;->mObj:Lcom/android/phone/HtcCtCustomize$CustomizeObj;

    iput-object v3, v1, Lcom/android/phone/HtcCtCustomize$CustomizeObj;->vibr:Landroid/os/Vibrator;

    .line 51
    iget-object v1, p0, Lcom/android/phone/HtcCtCustomize;->mObj:Lcom/android/phone/HtcCtCustomize$CustomizeObj;

    iput-object v3, v1, Lcom/android/phone/HtcCtCustomize$CustomizeObj;->tone:Landroid/media/ToneGenerator;

    .line 52
    iget-object v1, p0, Lcom/android/phone/HtcCtCustomize;->mObj:Lcom/android/phone/HtcCtCustomize$CustomizeObj;

    new-instance v2, Lcom/android/phone/HtcCtCustomize$1;

    invoke-direct {v2, p0}, Lcom/android/phone/HtcCtCustomize$1;-><init>(Lcom/android/phone/HtcCtCustomize;)V

    iput-object v2, v1, Lcom/android/phone/HtcCtCustomize$CustomizeObj;->bcastReceiver:Landroid/content/BroadcastReceiver;

    .line 89
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 90
    .local v0, intentFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/phone/HtcCtCustomize;->mObj:Lcom/android/phone/HtcCtCustomize$CustomizeObj;

    iget-object v1, v1, Lcom/android/phone/HtcCtCustomize$CustomizeObj;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/phone/HtcCtCustomize;->mObj:Lcom/android/phone/HtcCtCustomize$CustomizeObj;

    iget-object v2, v2, Lcom/android/phone/HtcCtCustomize$CustomizeObj;->bcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 92
    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/HtcCtCustomize;)Lcom/android/phone/HtcCtCustomize$CustomizeObj;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/phone/HtcCtCustomize;->mObj:Lcom/android/phone/HtcCtCustomize$CustomizeObj;

    return-object v0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 96
    sget-boolean v0, Lcom/android/phone/HtcCtCustomize;->ENABLE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/HtcCtCustomize;->mObj:Lcom/android/phone/HtcCtCustomize$CustomizeObj;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/phone/HtcCtCustomize;->mObj:Lcom/android/phone/HtcCtCustomize$CustomizeObj;

    iget-object v0, v0, Lcom/android/phone/HtcCtCustomize$CustomizeObj;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/phone/HtcCtCustomize;->mObj:Lcom/android/phone/HtcCtCustomize$CustomizeObj;

    iget-object v1, v1, Lcom/android/phone/HtcCtCustomize$CustomizeObj;->bcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/HtcCtCustomize;->mObj:Lcom/android/phone/HtcCtCustomize$CustomizeObj;

    .line 101
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 105
    sget-boolean v2, Lcom/android/phone/HtcCtCustomize;->ENABLE:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/HtcCtCustomize;->mObj:Lcom/android/phone/HtcCtCustomize$CustomizeObj;

    if-eqz v2, :cond_0

    .line 119
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 120
    .local v0, notification:Landroid/app/Notification;
    const/4 v2, 0x3

    iput v2, v0, Landroid/app/Notification;->defaults:I

    .line 122
    iget-object v2, p0, Lcom/android/phone/HtcCtCustomize;->mObj:Lcom/android/phone/HtcCtCustomize$CustomizeObj;

    iget-object v2, v2, Lcom/android/phone/HtcCtCustomize$CustomizeObj;->context:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 123
    .local v1, notificationMgr:Landroid/app/NotificationManager;
    const/16 v2, 0x64

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 125
    .end local v0           #notification:Landroid/app/Notification;
    .end local v1           #notificationMgr:Landroid/app/NotificationManager;
    :cond_0
    return-void
.end method
