.class Lcom/htc/home/personalize/LiveWallpaperPreview$WallpaperConnection;
.super Landroid/service/wallpaper/IWallpaperConnection$Stub;
.source "LiveWallpaperPreview.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/LiveWallpaperPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WallpaperConnection"
.end annotation


# instance fields
.field mConnected:Z

.field mEngine:Landroid/service/wallpaper/IWallpaperEngine;

.field final mIntent:Landroid/content/Intent;

.field mService:Landroid/service/wallpaper/IWallpaperService;

.field final synthetic this$0:Lcom/htc/home/personalize/LiveWallpaperPreview;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/LiveWallpaperPreview;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter "intent"

    .prologue
    .line 311
    iput-object p1, p0, Lcom/htc/home/personalize/LiveWallpaperPreview$WallpaperConnection;->this$0:Lcom/htc/home/personalize/LiveWallpaperPreview;

    invoke-direct {p0}, Landroid/service/wallpaper/IWallpaperConnection$Stub;-><init>()V

    .line 312
    iput-object p2, p0, Lcom/htc/home/personalize/LiveWallpaperPreview$WallpaperConnection;->mIntent:Landroid/content/Intent;

    .line 313
    return-void
.end method


# virtual methods
.method public attachEngine(Landroid/service/wallpaper/IWallpaperEngine;)V
    .locals 1
    .parameter "engine"

    .prologue
    .line 365
    monitor-enter p0

    .line 366
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/home/personalize/LiveWallpaperPreview$WallpaperConnection;->mConnected:Z

    if-eqz v0, :cond_0

    .line 367
    iput-object p1, p0, Lcom/htc/home/personalize/LiveWallpaperPreview$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    const/4 v0, 0x1

    :try_start_1
    invoke-interface {p1, v0}, Landroid/service/wallpaper/IWallpaperEngine;->setVisibility(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 380
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 381
    return-void

    .line 375
    :cond_0
    :try_start_3
    invoke-interface {p1}, Landroid/service/wallpaper/IWallpaperEngine;->destroy()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 376
    :catch_0
    move-exception v0

    goto :goto_0

    .line 380
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 370
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public connect()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 316
    monitor-enter p0

    .line 317
    :try_start_0
    iget-object v1, p0, Lcom/htc/home/personalize/LiveWallpaperPreview$WallpaperConnection;->this$0:Lcom/htc/home/personalize/LiveWallpaperPreview;

    iget-object v2, p0, Lcom/htc/home/personalize/LiveWallpaperPreview$WallpaperConnection;->mIntent:Landroid/content/Intent;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Lcom/htc/home/personalize/LiveWallpaperPreview;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 318
    const/4 v0, 0x0

    monitor-exit p0

    .line 322
    :goto_0
    return v0

    .line 321
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/home/personalize/LiveWallpaperPreview$WallpaperConnection;->mConnected:Z

    .line 322
    monitor-exit p0

    goto :goto_0

    .line 323
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
    .line 327
    monitor-enter p0

    .line 328
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/home/personalize/LiveWallpaperPreview$WallpaperConnection;->mConnected:Z

    .line 329
    iget-object v0, p0, Lcom/htc/home/personalize/LiveWallpaperPreview$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 331
    :try_start_1
    iget-object v0, p0, Lcom/htc/home/personalize/LiveWallpaperPreview$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {v0}, Landroid/service/wallpaper/IWallpaperEngine;->destroy()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 335
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/htc/home/personalize/LiveWallpaperPreview$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/LiveWallpaperPreview$WallpaperConnection;->this$0:Lcom/htc/home/personalize/LiveWallpaperPreview;

    invoke-virtual {v0, p0}, Lcom/htc/home/personalize/LiveWallpaperPreview;->unbindService(Landroid/content/ServiceConnection;)V

    .line 338
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/home/personalize/LiveWallpaperPreview$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 339
    monitor-exit p0

    .line 340
    return-void

    .line 339
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 332
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 9
    .parameter "name"
    .parameter "service"

    .prologue
    .line 343
    iget-object v0, p0, Lcom/htc/home/personalize/LiveWallpaperPreview$WallpaperConnection;->this$0:Lcom/htc/home/personalize/LiveWallpaperPreview;

    #getter for: Lcom/htc/home/personalize/LiveWallpaperPreview;->mWallpaperConnection:Lcom/htc/home/personalize/LiveWallpaperPreview$WallpaperConnection;
    invoke-static {v0}, Lcom/htc/home/personalize/LiveWallpaperPreview;->access$000(Lcom/htc/home/personalize/LiveWallpaperPreview;)Lcom/htc/home/personalize/LiveWallpaperPreview$WallpaperConnection;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 344
    invoke-static {p2}, Landroid/service/wallpaper/IWallpaperService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/wallpaper/IWallpaperService;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/home/personalize/LiveWallpaperPreview$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 346
    :try_start_0
    iget-object v0, p0, Lcom/htc/home/personalize/LiveWallpaperPreview$WallpaperConnection;->this$0:Lcom/htc/home/personalize/LiveWallpaperPreview;

    #getter for: Lcom/htc/home/personalize/LiveWallpaperPreview;->mFooterBar:Lcom/htc/widget/HtcFooter;
    invoke-static {v0}, Lcom/htc/home/personalize/LiveWallpaperPreview;->access$100(Lcom/htc/home/personalize/LiveWallpaperPreview;)Lcom/htc/widget/HtcFooter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcFooter;->getRootView()Landroid/view/View;

    move-result-object v8

    .line 347
    .local v8, root:Landroid/view/View;
    iget-object v0, p0, Lcom/htc/home/personalize/LiveWallpaperPreview$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    iget-object v1, p0, Lcom/htc/home/personalize/LiveWallpaperPreview$WallpaperConnection;->this$0:Lcom/htc/home/personalize/LiveWallpaperPreview;

    #getter for: Lcom/htc/home/personalize/LiveWallpaperPreview;->mFooterBar:Lcom/htc/widget/HtcFooter;
    invoke-static {v1}, Lcom/htc/home/personalize/LiveWallpaperPreview;->access$100(Lcom/htc/home/personalize/LiveWallpaperPreview;)Lcom/htc/widget/HtcFooter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcFooter;->getWindowToken()Landroid/os/IBinder;

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

    .line 354
    .end local v8           #root:Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 350
    :catch_0
    move-exception v7

    .line 351
    .local v7, e:Landroid/os/RemoteException;
    const-string v0, "LiveWallpaperPreview"

    const-string v1, "Failed attaching wallpaper; clearing"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "name"

    .prologue
    const/4 v0, 0x0

    .line 357
    iput-object v0, p0, Lcom/htc/home/personalize/LiveWallpaperPreview$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 358
    iput-object v0, p0, Lcom/htc/home/personalize/LiveWallpaperPreview$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 359
    iget-object v0, p0, Lcom/htc/home/personalize/LiveWallpaperPreview$WallpaperConnection;->this$0:Lcom/htc/home/personalize/LiveWallpaperPreview;

    #getter for: Lcom/htc/home/personalize/LiveWallpaperPreview;->mWallpaperConnection:Lcom/htc/home/personalize/LiveWallpaperPreview$WallpaperConnection;
    invoke-static {v0}, Lcom/htc/home/personalize/LiveWallpaperPreview;->access$000(Lcom/htc/home/personalize/LiveWallpaperPreview;)Lcom/htc/home/personalize/LiveWallpaperPreview$WallpaperConnection;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 360
    const-string v0, "LiveWallpaperPreview"

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

    .line 362
    :cond_0
    return-void
.end method

.method public setWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .parameter "name"

    .prologue
    .line 384
    const/4 v0, 0x0

    return-object v0
.end method
