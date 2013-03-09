.class public Lcom/broadcom/bt/app/system/FtpService;
.super Landroid/app/Service;
.source "FtpService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/app/system/FtpService$BluetoothFTPServiceStub;
    }
.end annotation


# static fields
.field private static final D:Z = true

.field public static final TAG:Ljava/lang/String; = "FtpAppService"


# instance fields
.field private final mBinder:Lcom/broadcom/bt/app/system/FtpService$BluetoothFTPServiceStub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 41
    new-instance v0, Lcom/broadcom/bt/app/system/FtpService$BluetoothFTPServiceStub;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/app/system/FtpService$BluetoothFTPServiceStub;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/broadcom/bt/app/system/FtpService;->mBinder:Lcom/broadcom/bt/app/system/FtpService$BluetoothFTPServiceStub;

    .line 43
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 47
    const-string v0, "FtpAppService"

    const-string v1, "Binding service..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FtpService;->mBinder:Lcom/broadcom/bt/app/system/FtpService$BluetoothFTPServiceStub;

    return-object v0
.end method
