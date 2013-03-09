.class public Lcom/broadcom/bt/app/system/BluetoothTestModeService;
.super Landroid/app/Service;
.source "BluetoothTestModeService.java"


# static fields
.field private static final D:Z = true

.field public static final TAG:Ljava/lang/String; = "BluetoothTestModeService"


# instance fields
.field private final mBinder:Lcom/broadcom/bt/service/test/BluetoothTestModeServiceStub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 36
    new-instance v0, Lcom/broadcom/bt/service/test/BluetoothTestModeServiceStub;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/service/test/BluetoothTestModeServiceStub;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/broadcom/bt/app/system/BluetoothTestModeService;->mBinder:Lcom/broadcom/bt/service/test/BluetoothTestModeServiceStub;

    .line 39
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 44
    const-string v0, "BluetoothTestModeService"

    const-string v1, "Binding service..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v0, p0, Lcom/broadcom/bt/app/system/BluetoothTestModeService;->mBinder:Lcom/broadcom/bt/service/test/BluetoothTestModeServiceStub;

    return-object v0
.end method
