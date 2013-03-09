.class public Lcom/htc/ipl/secureDevice;
.super Ljava/lang/Object;
.source "secureDevice.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "HtcIPL"

.field public static bLawmoUnfinishJob:Z

.field private static me:Lcom/htc/ipl/secureDevice;


# instance fields
.field private PinCode:Ljava/lang/String;

.field private bCodeAction:Z

.field private bEraseAction:Z

.field private bLockAction:Z

.field private bShutdownAction:Z

.field private mContext:Landroid/content/Context;

.field private mLawmo:Lcom/htc/omadm/libdo/system/Lawmo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/ipl/secureDevice;->me:Lcom/htc/ipl/secureDevice;

    .line 23
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/ipl/secureDevice;->bLawmoUnfinishJob:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-boolean v0, p0, Lcom/htc/ipl/secureDevice;->bLockAction:Z

    .line 19
    iput-boolean v0, p0, Lcom/htc/ipl/secureDevice;->bEraseAction:Z

    .line 20
    iput-boolean v0, p0, Lcom/htc/ipl/secureDevice;->bShutdownAction:Z

    .line 21
    iput-boolean v0, p0, Lcom/htc/ipl/secureDevice;->bCodeAction:Z

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/ipl/secureDevice;->PinCode:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/htc/ipl/secureDevice;->mContext:Landroid/content/Context;

    .line 36
    iget-object v0, p0, Lcom/htc/ipl/secureDevice;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/omadm/libdo/system/Lawmo;->getSingleton(Landroid/content/Context;)Lcom/htc/omadm/libdo/system/Lawmo;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/ipl/secureDevice;->mLawmo:Lcom/htc/omadm/libdo/system/Lawmo;

    .line 37
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/htc/ipl/secureDevice;
    .locals 1
    .parameter "context"

    .prologue
    .line 28
    sget-object v0, Lcom/htc/ipl/secureDevice;->me:Lcom/htc/ipl/secureDevice;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/htc/ipl/secureDevice;

    invoke-direct {v0, p0}, Lcom/htc/ipl/secureDevice;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/ipl/secureDevice;->me:Lcom/htc/ipl/secureDevice;

    .line 31
    :cond_0
    sget-object v0, Lcom/htc/ipl/secureDevice;->me:Lcom/htc/ipl/secureDevice;

    return-object v0
.end method


# virtual methods
.method public Progress()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 75
    iget-boolean v0, p0, Lcom/htc/ipl/secureDevice;->bLockAction:Z

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/htc/ipl/secureDevice;->mLawmo:Lcom/htc/omadm/libdo/system/Lawmo;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/htc/omadm/libdo/system/Lawmo;->PartialLock(Ljava/lang/String;)I

    .line 77
    iput-boolean v2, p0, Lcom/htc/ipl/secureDevice;->bLockAction:Z

    .line 79
    :cond_0
    iget-boolean v0, p0, Lcom/htc/ipl/secureDevice;->bCodeAction:Z

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/htc/ipl/secureDevice;->mLawmo:Lcom/htc/omadm/libdo/system/Lawmo;

    iget-object v1, p0, Lcom/htc/ipl/secureDevice;->PinCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/omadm/libdo/system/Lawmo;->SetPinCode(Ljava/lang/String;)I

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/ipl/secureDevice;->PinCode:Ljava/lang/String;

    .line 82
    iput-boolean v2, p0, Lcom/htc/ipl/secureDevice;->bCodeAction:Z

    .line 84
    :cond_1
    iget-boolean v0, p0, Lcom/htc/ipl/secureDevice;->bEraseAction:Z

    if-eqz v0, :cond_2

    .line 85
    const-string v0, "HtcIPL"

    const-string v1, "erase action."

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-static {}, Lcom/htc/omadm/libdo/system/SysLib;->getSingleton()Lcom/htc/omadm/libdo/system/SysLib;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/omadm/libdo/system/SysLib;->ExecRefurbish()V

    .line 87
    iget-object v0, p0, Lcom/htc/ipl/secureDevice;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/omadm/libdo/system/StorageCtl;->getSingleton(Landroid/content/Context;)Lcom/htc/omadm/libdo/system/StorageCtl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/omadm/libdo/system/StorageCtl;->FactoryReset()I

    .line 88
    iput-boolean v2, p0, Lcom/htc/ipl/secureDevice;->bEraseAction:Z

    .line 90
    :cond_2
    iget-boolean v0, p0, Lcom/htc/ipl/secureDevice;->bShutdownAction:Z

    if-eqz v0, :cond_3

    .line 91
    const-string v0, "HtcIPL"

    const-string v1, "reboot action."

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-static {}, Lcom/htc/omadm/libdo/system/SysLib;->getSingleton()Lcom/htc/omadm/libdo/system/SysLib;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/omadm/libdo/system/SysLib;->Reboot()V

    .line 93
    iput-boolean v2, p0, Lcom/htc/ipl/secureDevice;->bShutdownAction:Z

    .line 95
    :cond_3
    sput-boolean v2, Lcom/htc/ipl/secureDevice;->bLawmoUnfinishJob:Z

    .line 96
    return-void
.end method

.method public code(Ljava/lang/String;)V
    .locals 1
    .parameter "pin"

    .prologue
    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/htc/ipl/secureDevice;->bCodeAction:Z

    .line 70
    iput-object p1, p0, Lcom/htc/ipl/secureDevice;->PinCode:Ljava/lang/String;

    .line 71
    sput-boolean v0, Lcom/htc/ipl/secureDevice;->bLawmoUnfinishJob:Z

    .line 72
    return-void
.end method

.method public erase(Z)V
    .locals 1
    .parameter "bFlag"

    .prologue
    const/4 v0, 0x1

    .line 59
    if-eqz p1, :cond_0

    .line 61
    iput-boolean v0, p0, Lcom/htc/ipl/secureDevice;->bEraseAction:Z

    .line 62
    sput-boolean v0, Lcom/htc/ipl/secureDevice;->bLawmoUnfinishJob:Z

    .line 65
    :cond_0
    return-void
.end method

.method public lock(Z)V
    .locals 1
    .parameter "bFlag"

    .prologue
    const/4 v0, 0x1

    .line 50
    if-eqz p1, :cond_0

    .line 52
    iput-boolean v0, p0, Lcom/htc/ipl/secureDevice;->bLockAction:Z

    .line 53
    sput-boolean v0, Lcom/htc/ipl/secureDevice;->bLawmoUnfinishJob:Z

    .line 55
    :cond_0
    return-void
.end method

.method public reboot(Z)V
    .locals 1
    .parameter "bFlag"

    .prologue
    const/4 v0, 0x1

    .line 41
    if-eqz p1, :cond_0

    .line 43
    iput-boolean v0, p0, Lcom/htc/ipl/secureDevice;->bShutdownAction:Z

    .line 44
    sput-boolean v0, Lcom/htc/ipl/secureDevice;->bLawmoUnfinishJob:Z

    .line 47
    :cond_0
    return-void
.end method
