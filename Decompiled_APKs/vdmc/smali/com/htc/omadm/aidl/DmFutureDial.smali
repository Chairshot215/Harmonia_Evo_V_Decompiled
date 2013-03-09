.class public Lcom/htc/omadm/aidl/DmFutureDial;
.super Landroid/app/Service;
.source "DmFutureDial.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DmFutureDial"

.field public static mContext:Landroid/content/Context;

.field private static mVdmc:Lcom/redbend/vdmc/Vdmc;


# instance fields
.field hDMAcc:Lcom/redbend/vdmc/HandleDMAcc;

.field private mCommonIPL:Lcom/htc/ipl/common;

.field private final stub:Lcom/htc/omadm/aidl/IDmFutureDial$Stub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/omadm/aidl/DmFutureDial;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 66
    new-instance v0, Lcom/htc/omadm/aidl/DmFutureDial$1;

    invoke-direct {v0, p0}, Lcom/htc/omadm/aidl/DmFutureDial$1;-><init>(Lcom/htc/omadm/aidl/DmFutureDial;)V

    iput-object v0, p0, Lcom/htc/omadm/aidl/DmFutureDial;->stub:Lcom/htc/omadm/aidl/IDmFutureDial$Stub;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 161
    const-string v0, "DmFutureDial"

    const-string v1, "onBind..."

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lcom/htc/omadm/aidl/DmFutureDial;->stub:Lcom/htc/omadm/aidl/IDmFutureDial$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 45
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 46
    sput-object p0, Lcom/htc/omadm/aidl/DmFutureDial;->mContext:Landroid/content/Context;

    .line 47
    invoke-static {}, Lcom/htc/omadm/rule/Factory;->GetContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 49
    const-string v0, "DmFutureDial"

    const-string v1, "Factory.GetContext() is null"

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    sget-object v0, Lcom/htc/omadm/aidl/DmFutureDial;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/omadm/rule/Factory;->Init(Landroid/content/Context;)V

    .line 52
    :cond_0
    invoke-static {}, Lcom/htc/omadm/rule/Factory;->InitVDMC()V

    .line 53
    const-string v0, "DmFutureDial"

    const-string v1, "VdmcCtl.Init() by OMADM tool"

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    sget-object v0, Lcom/htc/omadm/aidl/DmFutureDial;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/VdmcCtl;->getInstance(Landroid/content/Context;)Lcom/htc/VdmcCtl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/VdmcCtl;->Init()Z

    .line 55
    sget-object v0, Lcom/htc/omadm/aidl/DmFutureDial;->mVdmc:Lcom/redbend/vdmc/Vdmc;

    invoke-static {}, Lcom/redbend/vdmc/Vdmc;->getDMAccHandler()Lcom/redbend/vdmc/HandleDMAcc;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/omadm/aidl/DmFutureDial;->hDMAcc:Lcom/redbend/vdmc/HandleDMAcc;

    .line 56
    invoke-static {}, Lcom/htc/ipl/common;->getInstance()Lcom/htc/ipl/common;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/omadm/aidl/DmFutureDial;->mCommonIPL:Lcom/htc/ipl/common;

    .line 57
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 62
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 63
    return-void
.end method
