.class public Lcom/htc/omadm/rule/Factory;
.super Ljava/lang/Object;
.source "Factory.java"


# static fields
.field protected static LOG_TAG:Ljava/lang/String;

.field private static bAlreadyInit:Z

.field private static dmdCmd:Lcom/htc/omadm/libdo/system/Dmdcmd;

.field private static hasInitVDMC:Z

.field private static mCONTEXT:Landroid/content/Context;


# instance fields
.field protected DBG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    const-string v0, "DMFactory"

    sput-object v0, Lcom/htc/omadm/rule/Factory;->LOG_TAG:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/omadm/rule/Factory;->mCONTEXT:Landroid/content/Context;

    .line 28
    new-instance v0, Lcom/htc/omadm/libdo/system/Dmdcmd;

    invoke-direct {v0}, Lcom/htc/omadm/libdo/system/Dmdcmd;-><init>()V

    sput-object v0, Lcom/htc/omadm/rule/Factory;->dmdCmd:Lcom/htc/omadm/libdo/system/Dmdcmd;

    .line 29
    sput-boolean v1, Lcom/htc/omadm/rule/Factory;->hasInitVDMC:Z

    .line 30
    sput-boolean v1, Lcom/htc/omadm/rule/Factory;->bAlreadyInit:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/omadm/rule/Factory;->DBG:Z

    return-void
.end method

.method public static GetContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/htc/omadm/rule/Factory;->mCONTEXT:Landroid/content/Context;

    return-object v0
.end method

.method public static Init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 33
    invoke-static {p0}, Lcom/htc/omadm/rule/Factory;->SetContext(Landroid/content/Context;)V

    .line 35
    sget-object v0, Lcom/htc/omadm/rule/Factory;->mCONTEXT:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/omadm/libdo/config/ConfigManager;->Init(Landroid/content/Context;)V

    .line 36
    sget-object v0, Lcom/htc/omadm/rule/Factory;->mCONTEXT:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/omadm/rule/ConnMo;->Init(Landroid/content/Context;)V

    .line 37
    sget-object v0, Lcom/htc/omadm/rule/Factory;->mCONTEXT:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/omadm/libdo/firmware/FumoManager;->Init(Landroid/content/Context;)V

    .line 38
    sget-boolean v0, Lcom/htc/omadm/prop/PropertyFeature;->ENABLE_LAWMO:Z

    if-eqz v0, :cond_0

    .line 39
    sget-object v0, Lcom/htc/omadm/rule/Factory;->mCONTEXT:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/omadm/libdo/system/Lawmo;->getSingleton(Landroid/content/Context;)Lcom/htc/omadm/libdo/system/Lawmo;

    .line 40
    :cond_0
    sget-object v0, Lcom/htc/omadm/rule/Factory;->mCONTEXT:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/omadm/libdo/system/PhoneInfo;->Init(Landroid/content/Context;)V

    .line 41
    sget-object v0, Lcom/htc/omadm/rule/Factory;->mCONTEXT:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/omadm/util/Setting;->Init(Landroid/content/Context;)V

    .line 42
    sget-object v0, Lcom/htc/omadm/rule/Factory;->mCONTEXT:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->Init(Landroid/content/Context;)V

    .line 44
    sget-object v0, Lcom/htc/omadm/rule/Factory;->mCONTEXT:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/omadm/libdo/status/StateTracker;->Init(Landroid/content/Context;)V

    .line 45
    sget-object v0, Lcom/htc/omadm/rule/Factory;->mCONTEXT:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;->Init(Landroid/content/Context;)V

    .line 46
    sget-object v0, Lcom/htc/omadm/rule/Factory;->mCONTEXT:Landroid/content/Context;

    sput-object v0, Lcom/htc/omadm/rule/Rule;->mCONTEXT:Landroid/content/Context;

    .line 47
    sget-object v0, Lcom/htc/omadm/rule/Factory;->mCONTEXT:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/omadm/libdo/system/SysLib;->Init(Landroid/content/Context;)V

    .line 48
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/omadm/rule/Factory;->bAlreadyInit:Z

    .line 50
    return-void
.end method

.method public static InitVDMC()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 59
    sget-boolean v2, Lcom/htc/omadm/rule/Factory;->hasInitVDMC:Z

    if-eqz v2, :cond_0

    .line 73
    .local v0, pkgInst:Lcom/htc/omadm/util/PkgInst;
    :goto_0
    return-void

    .line 62
    .end local v0           #pkgInst:Lcom/htc/omadm/util/PkgInst;
    :cond_0
    sget-object v2, Lcom/htc/omadm/rule/Factory;->mCONTEXT:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/omadm/util/PkgInst;->getSingleton(Landroid/content/Context;)Lcom/htc/omadm/util/PkgInst;

    move-result-object v0

    .line 63
    .restart local v0       #pkgInst:Lcom/htc/omadm/util/PkgInst;
    invoke-virtual {v0, v5}, Lcom/htc/omadm/util/PkgInst;->Install(Z)V

    .line 64
    sget-object v2, Lcom/htc/omadm/rule/Factory;->LOG_TAG:Ljava/lang/String;

    const-string v3, "pkgInst.Install()"

    invoke-static {v2, v3}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    sget-object v2, Lcom/htc/omadm/rule/Factory;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Vdmc dispath lib.so"

    invoke-static {v2, v3}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    sget-object v2, Lcom/htc/omadm/rule/Factory;->dmdCmd:Lcom/htc/omadm/libdo/system/Dmdcmd;

    invoke-virtual {v2}, Lcom/htc/omadm/libdo/system/Dmdcmd;->Conn()Z

    move-result v2

    if-ne v2, v5, :cond_1

    .line 68
    sget-object v2, Lcom/htc/omadm/rule/Factory;->dmdCmd:Lcom/htc/omadm/libdo/system/Dmdcmd;

    const-string v3, ":DMD:RBLIB"

    invoke-virtual {v2, v3}, Lcom/htc/omadm/libdo/system/Dmdcmd;->Command(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, result:Ljava/lang/String;
    sget-object v2, Lcom/htc/omadm/rule/Factory;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Vdmc dispath lib.so:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .end local v1           #result:Ljava/lang/String;
    :cond_1
    sput-boolean v5, Lcom/htc/omadm/rule/Factory;->hasInitVDMC:Z

    goto :goto_0
.end method

.method public static SetContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 52
    sput-object p0, Lcom/htc/omadm/rule/Factory;->mCONTEXT:Landroid/content/Context;

    .line 53
    return-void
.end method

.method public static checkFactoryInit(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 75
    sget-object v0, Lcom/htc/omadm/rule/Factory;->mCONTEXT:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/omadm/rule/Factory;->Init(Landroid/content/Context;)V

    .line 78
    :cond_0
    return-void
.end method

.method public static checkInit()Z
    .locals 1

    .prologue
    .line 80
    sget-boolean v0, Lcom/htc/omadm/rule/Factory;->bAlreadyInit:Z

    return v0
.end method
