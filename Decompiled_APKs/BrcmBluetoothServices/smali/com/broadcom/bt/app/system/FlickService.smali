.class public Lcom/broadcom/bt/app/system/FlickService;
.super Landroid/app/Service;
.source "FlickService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/app/system/FlickService$BluetoothFlickServiceStub;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "FlickAppService"


# instance fields
.field private mBinder:Lcom/broadcom/bt/app/system/FlickService$BluetoothFlickServiceStub;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 37
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FlickService;->mBinder:Lcom/broadcom/bt/app/system/FlickService$BluetoothFlickServiceStub;

    invoke-virtual {v0}, Lcom/broadcom/bt/app/system/FlickService$BluetoothFlickServiceStub;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 40
    const-string v1, "FlickAppService"

    const-string v2, "Starting service..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :try_start_0
    new-instance v1, Lcom/broadcom/bt/app/system/FlickService$BluetoothFlickServiceStub;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/app/system/FlickService$BluetoothFlickServiceStub;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/broadcom/bt/app/system/FlickService;->mBinder:Lcom/broadcom/bt/app/system/FlickService$BluetoothFlickServiceStub;

    .line 43
    iget-object v1, p0, Lcom/broadcom/bt/app/system/FlickService;->mBinder:Lcom/broadcom/bt/app/system/FlickService$BluetoothFlickServiceStub;

    invoke-virtual {v1}, Lcom/broadcom/bt/app/system/FlickService$BluetoothFlickServiceStub;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    const-string v1, "FlickAppService"

    const-string v2, "Done starting service..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "FlickAppService"

    const-string v2, "Error while enabling flick service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 52
    const-string v1, "FlickAppService"

    const-string v2, "Destroying service..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/app/system/FlickService;->mBinder:Lcom/broadcom/bt/app/system/FlickService$BluetoothFlickServiceStub;

    invoke-virtual {v1}, Lcom/broadcom/bt/app/system/FlickService$BluetoothFlickServiceStub;->stop()V

    .line 55
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/broadcom/bt/app/system/FlickService;->mBinder:Lcom/broadcom/bt/app/system/FlickService$BluetoothFlickServiceStub;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    const-string v1, "FlickAppService"

    const-string v2, "Done stopting service..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "FlickAppService"

    const-string v2, "Error while enabling flick service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
