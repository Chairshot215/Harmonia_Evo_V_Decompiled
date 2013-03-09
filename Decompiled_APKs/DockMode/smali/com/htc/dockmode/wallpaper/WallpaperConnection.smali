.class public Lcom/htc/dockmode/wallpaper/WallpaperConnection;
.super Landroid/service/wallpaper/IWallpaperConnection$Stub;
.source "WallpaperConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mConnected:Z

.field private mContext:Landroid/content/Context;

.field private mEngine:Landroid/service/wallpaper/IWallpaperEngine;

.field private mIntent:Landroid/content/Intent;

.field private mService:Landroid/service/wallpaper/IWallpaperService;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/htc/dockmode/wallpaper/WallpaperConnection;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/dockmode/wallpaper/WallpaperConnection;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Intent;Landroid/content/Context;Landroid/view/View;)V
    .locals 0
    .parameter "intent"
    .parameter "context"
    .parameter "view"

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/service/wallpaper/IWallpaperConnection$Stub;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/htc/dockmode/wallpaper/WallpaperConnection;->mIntent:Landroid/content/Intent;

    .line 30
    iput-object p2, p0, Lcom/htc/dockmode/wallpaper/WallpaperConnection;->mContext:Landroid/content/Context;

    .line 31
    iput-object p3, p0, Lcom/htc/dockmode/wallpaper/WallpaperConnection;->mView:Landroid/view/View;

    .line 32
    return-void
.end method


# virtual methods
.method public attachEngine(Landroid/service/wallpaper/IWallpaperEngine;)V
    .locals 1
    .parameter "engine"

    .prologue
    .line 80
    monitor-enter p0

    .line 81
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperConnection;->mConnected:Z

    if-eqz v0, :cond_0

    .line 82
    iput-object p1, p0, Lcom/htc/dockmode/wallpaper/WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    const/4 v0, 0x1

    :try_start_1
    invoke-interface {p1, v0}, Landroid/service/wallpaper/IWallpaperEngine;->setVisibility(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 95
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96
    return-void

    .line 90
    :cond_0
    :try_start_3
    invoke-interface {p1}, Landroid/service/wallpaper/IWallpaperEngine;->destroy()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    goto :goto_0

    .line 95
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 85
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public connect()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 35
    monitor-enter p0

    .line 36
    :try_start_0
    iget-object v1, p0, Lcom/htc/dockmode/wallpaper/WallpaperConnection;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/dockmode/wallpaper/WallpaperConnection;->mIntent:Landroid/content/Intent;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 37
    const/4 v0, 0x0

    monitor-exit p0

    .line 40
    :goto_0
    return v0

    .line 39
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/dockmode/wallpaper/WallpaperConnection;->mConnected:Z

    .line 40
    monitor-exit p0

    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 45
    monitor-enter p0

    .line 46
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperConnection;->mConnected:Z

    .line 47
    iget-object v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 49
    :try_start_1
    iget-object v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {v0}, Landroid/service/wallpaper/IWallpaperEngine;->destroy()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 53
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 57
    monitor-exit p0

    .line 58
    return-void

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 50
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public doPause()V
    .locals 2

    .prologue
    .line 113
    sget-object v0, Lcom/htc/dockmode/wallpaper/WallpaperConnection;->TAG:Ljava/lang/String;

    const-string v1, "wallpaper connection doing nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return-void
.end method

.method public doResume()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-nez v0, :cond_0

    .line 110
    :goto_0
    return-void

    .line 106
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/service/wallpaper/IWallpaperEngine;->setVisibility(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public doStop()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-nez v0, :cond_0

    .line 130
    :goto_0
    return-void

    .line 126
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/service/wallpaper/IWallpaperEngine;->setVisibility(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 10
    .parameter "name"
    .parameter "service"

    .prologue
    .line 61
    invoke-static {p2}, Landroid/service/wallpaper/IWallpaperService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/wallpaper/IWallpaperService;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 63
    :try_start_0
    iget-object v9, p0, Lcom/htc/dockmode/wallpaper/WallpaperConnection;->mView:Landroid/view/View;

    .line 64
    .local v9, view:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v8

    .line 65
    .local v8, root:Landroid/view/View;
    iget-object v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    invoke-virtual {v9}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/16 v3, 0x3ec

    const/4 v4, 0x1

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v6

    move-object v1, p0

    invoke-interface/range {v0 .. v6}, Landroid/service/wallpaper/IWallpaperService;->attach(Landroid/service/wallpaper/IWallpaperConnection;Landroid/os/IBinder;IZII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .end local v8           #root:Landroid/view/View;
    .end local v9           #view:Landroid/view/View;
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v7

    .line 69
    .local v7, e:Landroid/os/RemoteException;
    sget-object v0, Lcom/htc/dockmode/wallpaper/WallpaperConnection;->TAG:Ljava/lang/String;

    const-string v1, "Failed attaching wallpaper; clearing"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "name"

    .prologue
    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 75
    iput-object v0, p0, Lcom/htc/dockmode/wallpaper/WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 76
    sget-object v0, Lcom/htc/dockmode/wallpaper/WallpaperConnection;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wallpaper service gone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-void
.end method

.method public setWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .parameter "name"

    .prologue
    .line 99
    const/4 v0, 0x0

    return-object v0
.end method
