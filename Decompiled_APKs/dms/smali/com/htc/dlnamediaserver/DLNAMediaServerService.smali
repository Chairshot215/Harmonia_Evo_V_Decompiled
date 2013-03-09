.class public Lcom/htc/dlnamediaserver/DLNAMediaServerService;
.super Landroid/app/Service;
.source "DLNAMediaServerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;
    }
.end annotation


# static fields
.field public static final mMediaTypeInfo_Error:I = -0x1

.field public static final mMediaTypeInfo_Music:I = 0x4

.field public static final mMediaTypeInfo_Picture:I = 0x2

.field public static final mMediaTypeInfo_Video:I = 0x1


# instance fields
.field private final AndroidAPI1Only:Z

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private final mNotifyID:I

.field private mServiceCommunicationStub:Lcom/htc/dlnamediaserver/ServiceCommunication$Stub;

.field private mThread:Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;

.field private mWifiMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

.field private mWifilock:Landroid/net/wifi/WifiManager$WifiLock;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerService;->AndroidAPI1Only:Z

    .line 26
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerService;->mNotifyID:I

    .line 27
    iput-object v1, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerService;->mWifiMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    .line 28
    iput-object v1, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerService;->mThread:Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;

    .line 29
    iput-object v1, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 30
    iput-object v1, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerService;->mWifilock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 81
    new-instance v0, Lcom/htc/dlnamediaserver/DLNAMediaServerService$1;

    invoke-direct {v0, p0}, Lcom/htc/dlnamediaserver/DLNAMediaServerService$1;-><init>(Lcom/htc/dlnamediaserver/DLNAMediaServerService;)V

    iput-object v0, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerService;->mServiceCommunicationStub:Lcom/htc/dlnamediaserver/ServiceCommunication$Stub;

    .line 268
    return-void
.end method

.method private NotifyServerCancel()V
    .locals 2

    .prologue
    .line 68
    const-string v0, "DLNAMediaServer"

    const-string v1, "Notify: stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 70
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/htc/dlnamediaserver/DLNAMediaServerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerService;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 73
    return-void
.end method

.method private NotifyServerStart()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 41
    const-string v3, "DLNAMediaServer"

    const-string v4, "Notify: start"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v3, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v3, :cond_0

    .line 43
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Lcom/htc/dlnamediaserver/DLNAMediaServerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iput-object v3, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 46
    :cond_0
    new-instance v0, Landroid/app/Notification;

    const v3, 0x7f02000e

    const v4, 0x7f05001f

    invoke-virtual {p0, v4}, Lcom/htc/dlnamediaserver/DLNAMediaServerService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 48
    .local v0, theNotification:Landroid/app/Notification;
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/htc/dlnamediaserver/Settings;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    .local v2, theSettingsIntent:Landroid/content/Intent;
    const/high16 v3, 0x2000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 51
    invoke-static {p0, v7, v2, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 52
    .local v1, thePendingIntent:Landroid/app/PendingIntent;
    invoke-virtual {p0}, Lcom/htc/dlnamediaserver/DLNAMediaServerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f050020

    invoke-virtual {p0, v4}, Lcom/htc/dlnamediaserver/DLNAMediaServerService;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f050021

    invoke-virtual {p0, v5}, Lcom/htc/dlnamediaserver/DLNAMediaServerService;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 60
    iget v3, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v0, Landroid/app/Notification;->flags:I

    .line 61
    iget-object v3, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerService;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/htc/dlnamediaserver/DLNAMediaServerService;)Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerService;->mThread:Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/dlnamediaserver/DLNAMediaServerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/htc/dlnamediaserver/DLNAMediaServerService;->NotifyServerStart()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/dlnamediaserver/DLNAMediaServerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/htc/dlnamediaserver/DLNAMediaServerService;->NotifyServerCancel()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 186
    const-string v0, "DLNAMediaServer"

    const-string v1, "onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v0, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerService;->mServiceCommunicationStub:Lcom/htc/dlnamediaserver/ServiceCommunication$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 195
    const-string v0, "DLNAMediaServer"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 198
    iget-object v0, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerService;->mThread:Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;

    if-eqz v0, :cond_0

    .line 200
    const-string v0, "DLNAMediaServer"

    const-string v1, "onCreate: Thread already started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :goto_0
    return-void

    .line 204
    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/htc/dlnamediaserver/FrameworkService;->setWifiPowerSavingMode(Landroid/content/Context;I)V

    .line 208
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/htc/dlnamediaserver/DLNAMediaServerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const-string v1, "DLNAMediaServerWifiLock"

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerService;->mWifilock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 209
    iget-object v0, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerService;->mWifilock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 211
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/htc/dlnamediaserver/DLNAMediaServerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const-string v1, "DLNAMediaServerMulticastLock"

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerService;->mWifiMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    .line 212
    iget-object v0, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerService;->mWifiMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->acquire()V

    .line 215
    new-instance v0, Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;

    invoke-direct {v0, p0}, Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;-><init>(Lcom/htc/dlnamediaserver/DLNAMediaServerService;)V

    iput-object v0, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerService;->mThread:Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;

    .line 216
    iget-object v0, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerService;->mThread:Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;

    invoke-virtual {v0}, Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;->Start()V

    .line 218
    const-string v0, "DLNAMediaServer"

    const-string v1, "onCreate: End"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 225
    const-string v0, "DLNAMediaServer"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 229
    iget-object v0, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerService;->mThread:Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;

    if-nez v0, :cond_0

    .line 231
    const-string v0, "DLNAMediaServer"

    const-string v1, "onDestroy: Thread already stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :goto_0
    return-void

    .line 235
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerService;->mThread:Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;

    invoke-virtual {v0}, Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerService;->mThread:Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;

    invoke-virtual {v0}, Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;->Stop()V

    .line 238
    const-wide/16 v0, 0xc8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    .line 241
    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/htc/dlnamediaserver/FrameworkService;->setWifiPowerSavingMode(Landroid/content/Context;I)V

    .line 245
    iget-object v0, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerService;->mWifiMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerService;->mWifiMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 246
    iget-object v0, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerService;->mWifiMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    .line 248
    :cond_2
    iget-object v0, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerService;->mWifilock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerService;->mWifilock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 249
    iget-object v0, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerService;->mWifilock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 252
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerService;->mThread:Lcom/htc/dlnamediaserver/DLNAMediaServerService$DLNAMediaServerServiceThread;

    .line 255
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 256
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 258
    const-string v0, "DLNAMediaServer"

    const-string v1, "onDestroy: End"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
