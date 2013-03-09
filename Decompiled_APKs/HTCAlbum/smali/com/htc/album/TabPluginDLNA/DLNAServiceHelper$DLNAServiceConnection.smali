.class public Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;
.super Ljava/lang/Object;
.source "DLNAServiceHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DLNAServiceConnection"
.end annotation


# instance fields
.field private mCallback:Lcom/htc/dlnainterface/IDLNAPluginNotify;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mService:Lcom/htc/dlnainterface/IDLNAPluginService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .parameter "context"
    .parameter "handler"

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;->mContext:Landroid/content/Context;

    .line 121
    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;->mHandler:Landroid/os/Handler;

    .line 122
    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    .line 123
    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;->mCallback:Lcom/htc/dlnainterface/IDLNAPluginNotify;

    .line 62
    iput-object p2, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;->mHandler:Landroid/os/Handler;

    .line 63
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;->mContext:Landroid/content/Context;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;)Lcom/htc/dlnainterface/IDLNAPluginNotify;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;->mCallback:Lcom/htc/dlnainterface/IDLNAPluginNotify;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;)Lcom/htc/dlnainterface/IDLNAPluginService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    return-object v0
.end method


# virtual methods
.method public getService()Lcom/htc/dlnainterface/IDLNAPluginService;
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-nez v0, :cond_0

    const-string v0, "DLNAServiceHelper"

    const-string v1, "getService null"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 96
    invoke-static {p2}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    .line 97
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x139a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 100
    :cond_0
    const-string v0, "DLNAServiceHelper"

    const-string v1, "DLNA service binded"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .parameter "name"

    .prologue
    .line 107
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;->mCallback:Lcom/htc/dlnainterface/IDLNAPluginNotify;

    if-eqz v1, :cond_0

    .line 110
    :try_start_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;->mCallback:Lcom/htc/dlnainterface/IDLNAPluginNotify;

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->unregisterCallback(ILcom/htc/dlnainterface/IDLNAPluginNotify;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    .line 117
    const-string v1, "DLNAServiceHelper"

    const-string v2, "DLNA service unbinded"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 113
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "DLNAServiceHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setNotifyCallback(Lcom/htc/dlnainterface/IDLNAPluginNotify;)V
    .locals 5
    .parameter "callback"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;->mCallback:Lcom/htc/dlnainterface/IDLNAPluginNotify;

    .line 76
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;->mCallback:Lcom/htc/dlnainterface/IDLNAPluginNotify;

    if-eqz v2, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;->getService()Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v1

    .line 79
    .local v1, service:Lcom/htc/dlnainterface/IDLNAPluginService;
    if-eqz v1, :cond_0

    .line 82
    :try_start_0
    const-string v2, "DLNAServiceHelper"

    const-string v3, "Register DLNA service callback."

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;->mCallback:Lcom/htc/dlnainterface/IDLNAPluginNotify;

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->registerCallback(ILcom/htc/dlnainterface/IDLNAPluginNotify;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .end local v1           #service:Lcom/htc/dlnainterface/IDLNAPluginService;
    :cond_0
    :goto_0
    return-void

    .line 84
    .restart local v1       #service:Lcom/htc/dlnainterface/IDLNAPluginService;
    :catch_0
    move-exception v0

    .line 86
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "DLNAServiceHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set service callback fail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
