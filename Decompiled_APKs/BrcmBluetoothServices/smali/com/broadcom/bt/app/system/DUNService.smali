.class public Lcom/broadcom/bt/app/system/DUNService;
.super Landroid/app/Service;
.source "DUNService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/app/system/DUNService$BluetoothDUNServiceStub;
    }
.end annotation


# static fields
.field public static D:Z = false

.field public static final TAG:Ljava/lang/String; = "DUNAppService"


# instance fields
.field private final mBinder:Lcom/broadcom/bt/service/dun/IBluetoothDUN$Stub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    sput-boolean v0, Lcom/broadcom/bt/app/system/DUNService;->D:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 42
    new-instance v0, Lcom/broadcom/bt/app/system/DUNService$BluetoothDUNServiceStub;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/app/system/DUNService$BluetoothDUNServiceStub;-><init>(Landroid/content/Context;)V

    .line 43
    .local v0, svc:Lcom/broadcom/bt/app/system/DUNService$BluetoothDUNServiceStub;
    iput-object v0, p0, Lcom/broadcom/bt/app/system/DUNService;->mBinder:Lcom/broadcom/bt/service/dun/IBluetoothDUN$Stub;

    .line 44
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 48
    sget-boolean v0, Lcom/broadcom/bt/app/system/DUNService;->D:Z

    if-eqz v0, :cond_0

    .line 49
    const-string v0, "DUNAppService"

    const-string v1, "Binding service..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/DUNService;->mBinder:Lcom/broadcom/bt/service/dun/IBluetoothDUN$Stub;

    return-object v0
.end method
