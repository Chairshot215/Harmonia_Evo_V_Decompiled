.class public Lcom/broadcom/bt/app/system/FmTxService;
.super Landroid/app/Service;
.source "FmTxService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;
    }
.end annotation


# static fields
.field private static final D:Z = true

.field public static final TAG:Ljava/lang/String; = "FMTXAppService"


# instance fields
.field private final mBinder:Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 43
    new-instance v0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService;->mBinder:Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;

    .line 45
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .parameter "intent"

    .prologue
    .line 50
    const-string v1, "FMTXAppService"

    const-string v2, "Binding service..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/app/system/FmTxService;->mBinder:Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    return-object v1

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "FMTXAppService"

    const-string v2, "Unable to enable FmReceiver Service: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    const/4 v1, 0x0

    goto :goto_0
.end method
