.class public Lcom/htc/android/htcsetupwizard/tmo/TmoClientService;
.super Landroid/app/Service;
.source "TmoClientService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/htcsetupwizard/tmo/TmoClientService$TmoClientProfileServiceConnection;
    }
.end annotation


# static fields
.field private static final COMMUNITY_STATUS_FROM_SERVER:Ljava/lang/String; = "community_status_from_server"

.field private static final LOG_TAG:Ljava/lang/String; = "TmoClientService"

.field private static final TMO_CLIENT_SERVICE_STATUS:Ljava/lang/String; = "tmo_client_service_status"

.field private static final TMO_CLIENT_SERVICE_STATUS_NOT_RUN:Ljava/lang/String; = "tmo_service_not_run"

.field private static final TMO_CLIENT_SERVICE_STATUS_RUNNING:Ljava/lang/String; = "tmo_service_running"


# instance fields
.field private mCallback:Lcom/htc/clientprofileservice/IClientProfileCallback;

.field private mConnection:Lcom/htc/android/htcsetupwizard/tmo/TmoClientService$TmoClientProfileServiceConnection;

.field private mService:Lcom/htc/clientprofileservice/IClientProfileService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 50
    new-instance v0, Lcom/htc/android/htcsetupwizard/tmo/TmoClientService$1;

    invoke-direct {v0, p0}, Lcom/htc/android/htcsetupwizard/tmo/TmoClientService$1;-><init>(Lcom/htc/android/htcsetupwizard/tmo/TmoClientService;)V

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/tmo/TmoClientService;->mCallback:Lcom/htc/clientprofileservice/IClientProfileCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/htcsetupwizard/tmo/TmoClientService;)Lcom/htc/clientprofileservice/IClientProfileService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/tmo/TmoClientService;->mService:Lcom/htc/clientprofileservice/IClientProfileService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/htc/android/htcsetupwizard/tmo/TmoClientService;Lcom/htc/clientprofileservice/IClientProfileService;)Lcom/htc/clientprofileservice/IClientProfileService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/htc/android/htcsetupwizard/tmo/TmoClientService;->mService:Lcom/htc/clientprofileservice/IClientProfileService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/htc/android/htcsetupwizard/tmo/TmoClientService;)Lcom/htc/clientprofileservice/IClientProfileCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/tmo/TmoClientService;->mCallback:Lcom/htc/clientprofileservice/IClientProfileCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/android/htcsetupwizard/tmo/TmoClientService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/tmo/TmoClientService;->syncStatus()V

    return-void
.end method

.method private initService()V
    .locals 5

    .prologue
    .line 107
    new-instance v2, Lcom/htc/android/htcsetupwizard/tmo/TmoClientService$TmoClientProfileServiceConnection;

    invoke-direct {v2, p0}, Lcom/htc/android/htcsetupwizard/tmo/TmoClientService$TmoClientProfileServiceConnection;-><init>(Lcom/htc/android/htcsetupwizard/tmo/TmoClientService;)V

    iput-object v2, p0, Lcom/htc/android/htcsetupwizard/tmo/TmoClientService;->mConnection:Lcom/htc/android/htcsetupwizard/tmo/TmoClientService$TmoClientProfileServiceConnection;

    .line 108
    const/4 v1, 0x0

    .line 111
    .local v1, result:Z
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/htc/clientprofileservice/IClientProfileService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/tmo/TmoClientService;->mConnection:Lcom/htc/android/htcsetupwizard/tmo/TmoClientService$TmoClientProfileServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4}, Lcom/htc/android/htcsetupwizard/tmo/TmoClientService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 118
    :goto_0
    const-string v2, "TmoClientService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initService() bound with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "TmoClientService"

    const-string v3, "OOBETMOClientProfileActivity bindService exception occurs"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const-string v2, "TmoClientService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OOBETMOClientProfileActivity bindService exception cause by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const-string v2, "TmoClientService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OOBETMOClientProfileActivity bindService exception message , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private releaseService()V
    .locals 4

    .prologue
    .line 123
    const-string v1, "TmoClientService"

    const-string v2, "releaseService() unbound"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/tmo/TmoClientService;->mConnection:Lcom/htc/android/htcsetupwizard/tmo/TmoClientService$TmoClientProfileServiceConnection;

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/tmo/TmoClientService;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/android/htcsetupwizard/tmo/TmoClientService;->mConnection:Lcom/htc/android/htcsetupwizard/tmo/TmoClientService$TmoClientProfileServiceConnection;

    .line 133
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "TmoClientService"

    const-string v2, "OOBETMOClientProfileActivity unbindService exception occurs"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const-string v1, "TmoClientService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OOBETMOClientProfileActivity unbindService exception cause by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const-string v1, "TmoClientService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OOBETMOClientProfileActivity unbindService exception message , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private syncStatus()V
    .locals 3

    .prologue
    .line 136
    const-string v1, "TmoClientService"

    const-string v2, "syncStatus()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/tmo/TmoClientService;->mService:Lcom/htc/clientprofileservice/IClientProfileService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/htc/clientprofileservice/IClientProfileService;->retrieveProfile(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 142
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/tmo/TmoClientService;->stopSelf()V

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 149
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 92
    const-string v0, "TmoClientService"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/tmo/TmoClientService;->initService()V

    .line 94
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 98
    const-string v0, "TmoClientService"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 100
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/tmo/TmoClientService;->releaseService()V

    .line 101
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/tmo/TmoClientService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tmo_client_service_status"

    const-string v2, "tmo_service_not_run"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 102
    return-void
.end method
