.class public Lcom/broadcom/bt/app/system/FmService;
.super Landroid/app/Service;
.source "FmService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;
    }
.end annotation


# static fields
.field private static final D:Z = true

.field public static final TAG:Ljava/lang/String; = "FMAppService"


# instance fields
.field private final mBinder:Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 43
    new-instance v0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/broadcom/bt/app/system/FmService;->mBinder:Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;

    .line 45
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 49
    const-string v0, "FMAppService"

    const-string v1, "Binding service..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService;->mBinder:Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;

    return-object v0
.end method
