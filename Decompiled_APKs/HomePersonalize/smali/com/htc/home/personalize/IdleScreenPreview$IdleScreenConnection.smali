.class Lcom/htc/home/personalize/IdleScreenPreview$IdleScreenConnection;
.super Lcom/htc/lockscreen/idlescreen/IIdleScreenConnection$Stub;
.source "IdleScreenPreview.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/IdleScreenPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IdleScreenConnection"
.end annotation


# instance fields
.field mConnected:Z

.field mEngine:Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine;

.field final mIntent:Landroid/content/Intent;

.field mService:Lcom/htc/lockscreen/idlescreen/IIdleScreenService;

.field final synthetic this$0:Lcom/htc/home/personalize/IdleScreenPreview;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/IdleScreenPreview;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter "intent"

    .prologue
    .line 317
    iput-object p1, p0, Lcom/htc/home/personalize/IdleScreenPreview$IdleScreenConnection;->this$0:Lcom/htc/home/personalize/IdleScreenPreview;

    invoke-direct {p0}, Lcom/htc/lockscreen/idlescreen/IIdleScreenConnection$Stub;-><init>()V

    .line 318
    iput-object p2, p0, Lcom/htc/home/personalize/IdleScreenPreview$IdleScreenConnection;->mIntent:Landroid/content/Intent;

    .line 319
    return-void
.end method


# virtual methods
.method public attachEngine(Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine;)V
    .locals 1
    .parameter "engine"

    .prologue
    .line 374
    monitor-enter p0

    .line 375
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/home/personalize/IdleScreenPreview$IdleScreenConnection;->mConnected:Z

    if-eqz v0, :cond_0

    .line 376
    iput-object p1, p0, Lcom/htc/home/personalize/IdleScreenPreview$IdleScreenConnection;->mEngine:Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    const/4 v0, 0x1

    :try_start_1
    invoke-interface {p1, v0}, Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine;->setVisibility(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 389
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 390
    return-void

    .line 384
    :cond_0
    :try_start_3
    invoke-interface {p1}, Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine;->destroy()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 385
    :catch_0
    move-exception v0

    goto :goto_0

    .line 389
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 379
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public connect()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 322
    monitor-enter p0

    .line 323
    :try_start_0
    iget-object v1, p0, Lcom/htc/home/personalize/IdleScreenPreview$IdleScreenConnection;->this$0:Lcom/htc/home/personalize/IdleScreenPreview;

    iget-object v2, p0, Lcom/htc/home/personalize/IdleScreenPreview$IdleScreenConnection;->mIntent:Landroid/content/Intent;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Lcom/htc/home/personalize/IdleScreenPreview;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 324
    const/4 v0, 0x0

    monitor-exit p0

    .line 328
    :goto_0
    return v0

    .line 327
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/home/personalize/IdleScreenPreview$IdleScreenConnection;->mConnected:Z

    .line 328
    monitor-exit p0

    goto :goto_0

    .line 329
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
    .line 333
    monitor-enter p0

    .line 334
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/home/personalize/IdleScreenPreview$IdleScreenConnection;->mConnected:Z

    .line 335
    iget-object v0, p0, Lcom/htc/home/personalize/IdleScreenPreview$IdleScreenConnection;->mEngine:Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 337
    :try_start_1
    iget-object v0, p0, Lcom/htc/home/personalize/IdleScreenPreview$IdleScreenConnection;->mEngine:Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine;

    invoke-interface {v0}, Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine;->destroy()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 341
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/htc/home/personalize/IdleScreenPreview$IdleScreenConnection;->mEngine:Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine;

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/IdleScreenPreview$IdleScreenConnection;->this$0:Lcom/htc/home/personalize/IdleScreenPreview;

    invoke-virtual {v0, p0}, Lcom/htc/home/personalize/IdleScreenPreview;->unbindService(Landroid/content/ServiceConnection;)V

    .line 344
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/home/personalize/IdleScreenPreview$IdleScreenConnection;->mService:Lcom/htc/lockscreen/idlescreen/IIdleScreenService;

    .line 345
    monitor-exit p0

    .line 346
    return-void

    .line 345
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 338
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 12
    .parameter "name"
    .parameter "service"

    .prologue
    .line 349
    iget-object v0, p0, Lcom/htc/home/personalize/IdleScreenPreview$IdleScreenConnection;->this$0:Lcom/htc/home/personalize/IdleScreenPreview;

    #getter for: Lcom/htc/home/personalize/IdleScreenPreview;->mIdleScreenConnection:Lcom/htc/home/personalize/IdleScreenPreview$IdleScreenConnection;
    invoke-static {v0}, Lcom/htc/home/personalize/IdleScreenPreview;->access$000(Lcom/htc/home/personalize/IdleScreenPreview;)Lcom/htc/home/personalize/IdleScreenPreview$IdleScreenConnection;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 350
    invoke-static {p2}, Lcom/htc/lockscreen/idlescreen/IIdleScreenService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/lockscreen/idlescreen/IIdleScreenService;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/home/personalize/IdleScreenPreview$IdleScreenConnection;->mService:Lcom/htc/lockscreen/idlescreen/IIdleScreenService;

    .line 352
    :try_start_0
    iget-object v0, p0, Lcom/htc/home/personalize/IdleScreenPreview$IdleScreenConnection;->this$0:Lcom/htc/home/personalize/IdleScreenPreview;

    #getter for: Lcom/htc/home/personalize/IdleScreenPreview;->mFooterBar:Lcom/htc/widget/HtcFooter;
    invoke-static {v0}, Lcom/htc/home/personalize/IdleScreenPreview;->access$100(Lcom/htc/home/personalize/IdleScreenPreview;)Lcom/htc/widget/HtcFooter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcFooter;->getRootView()Landroid/view/View;

    move-result-object v11

    .line 353
    .local v11, root:Landroid/view/View;
    iget-object v0, p0, Lcom/htc/home/personalize/IdleScreenPreview$IdleScreenConnection;->mService:Lcom/htc/lockscreen/idlescreen/IIdleScreenService;

    iget-object v1, p0, Lcom/htc/home/personalize/IdleScreenPreview$IdleScreenConnection;->this$0:Lcom/htc/home/personalize/IdleScreenPreview;

    #getter for: Lcom/htc/home/personalize/IdleScreenPreview;->mFooterBar:Lcom/htc/widget/HtcFooter;
    invoke-static {v1}, Lcom/htc/home/personalize/IdleScreenPreview;->access$100(Lcom/htc/home/personalize/IdleScreenPreview;)Lcom/htc/widget/HtcFooter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcFooter;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/16 v3, 0x3ec

    const/4 v4, 0x0

    const v5, 0x10100318

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v9

    move-object v1, p0

    invoke-interface/range {v0 .. v9}, Lcom/htc/lockscreen/idlescreen/IIdleScreenService;->attach(Lcom/htc/lockscreen/idlescreen/IIdleScreenConnection;Landroid/os/IBinder;IIIIZII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    .end local v11           #root:Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 359
    :catch_0
    move-exception v10

    .line 360
    .local v10, e:Landroid/os/RemoteException;
    const-string v0, "IdleScreenPreview"

    const-string v1, "Failed attaching wallpaper; clearing"

    invoke-static {v0, v1, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "name"

    .prologue
    const/4 v0, 0x0

    .line 366
    iput-object v0, p0, Lcom/htc/home/personalize/IdleScreenPreview$IdleScreenConnection;->mService:Lcom/htc/lockscreen/idlescreen/IIdleScreenService;

    .line 367
    iput-object v0, p0, Lcom/htc/home/personalize/IdleScreenPreview$IdleScreenConnection;->mEngine:Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine;

    .line 368
    iget-object v0, p0, Lcom/htc/home/personalize/IdleScreenPreview$IdleScreenConnection;->this$0:Lcom/htc/home/personalize/IdleScreenPreview;

    #getter for: Lcom/htc/home/personalize/IdleScreenPreview;->mIdleScreenConnection:Lcom/htc/home/personalize/IdleScreenPreview$IdleScreenConnection;
    invoke-static {v0}, Lcom/htc/home/personalize/IdleScreenPreview;->access$000(Lcom/htc/home/personalize/IdleScreenPreview;)Lcom/htc/home/personalize/IdleScreenPreview$IdleScreenConnection;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 369
    const-string v0, "IdleScreenPreview"

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

    .line 371
    :cond_0
    return-void
.end method

.method public sendLockScreenCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .parameter "action"
    .parameter "extra"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 398
    const-string v0, "idlescreen_surface_create"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/htc/home/personalize/IdleScreenPreview$IdleScreenConnection;->this$0:Lcom/htc/home/personalize/IdleScreenPreview;

    #getter for: Lcom/htc/home/personalize/IdleScreenPreview;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/htc/home/personalize/IdleScreenPreview;->access$200(Lcom/htc/home/personalize/IdleScreenPreview;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/home/personalize/IdleScreenPreview$IdleScreenConnection;->this$0:Lcom/htc/home/personalize/IdleScreenPreview;

    #getter for: Lcom/htc/home/personalize/IdleScreenPreview;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/htc/home/personalize/IdleScreenPreview;->access$200(Lcom/htc/home/personalize/IdleScreenPreview;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 402
    :cond_0
    return-void
.end method

.method public setWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .parameter "name"

    .prologue
    .line 393
    const/4 v0, 0x0

    return-object v0
.end method
