.class public Lcom/htc/service/DisplayManager;
.super Ljava/lang/Object;
.source "DisplayManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DisplayManager"


# instance fields
.field private mService:Landroid/os/IDisplayService;


# direct methods
.method public constructor <init>(Landroid/os/IDisplayService;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/htc/service/DisplayManager;->mService:Landroid/os/IDisplayService;

    return-void
.end method


# virtual methods
.method public IsHDMIConnected()Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DisplayManager;->mService:Landroid/os/IDisplayService;

    invoke-interface {v1}, Landroid/os/IDisplayService;->IsHDMIConnected()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "DisplayManager"

    const-string v2, "IsHDMIConnected: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public IsHDMIEnable()Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DisplayManager;->mService:Landroid/os/IDisplayService;

    invoke-interface {v1}, Landroid/os/IDisplayService;->IsHDMIEnable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "DisplayManager"

    const-string v2, "IsHDMIEnable: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clearBitmapOnHDMI(Ljava/lang/String;)I
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DisplayManager;->mService:Landroid/os/IDisplayService;

    invoke-interface {v1, p1}, Landroid/os/IDisplayService;->clearBitmapOnHDMI(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "DisplayManager"

    const-string v2, "clearBitmapOnHDMI: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public get3DMode()I
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DisplayManager;->mService:Landroid/os/IDisplayService;

    invoke-interface {v1}, Landroid/os/IDisplayService;->Get3DMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "DisplayManager"

    const-string v2, "get3DMode: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public set3DMode(ILjava/lang/String;)I
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DisplayManager;->mService:Landroid/os/IDisplayService;

    invoke-interface {v1, p1, p2}, Landroid/os/IDisplayService;->set3DMode(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "DisplayManager"

    const-string/jumbo v2, "set3DMode: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setHDMI(ZLjava/lang/String;)I
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DisplayManager;->mService:Landroid/os/IDisplayService;

    invoke-interface {v1, p1, p2}, Landroid/os/IDisplayService;->setHDMI(ZLjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "DisplayManager"

    const-string/jumbo v2, "setHDMI: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setTVMode(ILjava/lang/String;)I
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DisplayManager;->mService:Landroid/os/IDisplayService;

    invoke-interface {v1, p1, p2}, Landroid/os/IDisplayService;->setTVMode(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "DisplayManager"

    const-string/jumbo v2, "setTVMode: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public showBitmapOnHDMI(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DisplayManager;->mService:Landroid/os/IDisplayService;

    invoke-interface {v1, p1, p2}, Landroid/os/IDisplayService;->showBitmapOnHDMI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "DisplayManager"

    const-string/jumbo v2, "showBitmapOnHDMI: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method
