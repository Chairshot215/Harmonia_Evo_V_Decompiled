.class public Lcom/redbend/vdmc/Sprint/CDMA;
.super Ljava/lang/Object;
.source "CDMA.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/redbend/vdmc/Sprint/CDMA$TreeHandler;,
        Lcom/redbend/vdmc/Sprint/CDMA$NodeRWCB;
    }
.end annotation


# static fields
.field public static final AuthAlgoAAA:Ljava/lang/String; = "./CDMA/3GPD/Profile1/AuthAlgoAAA"

.field private static CDMARWCB:Lcom/redbend/vdmc/Sprint/CDMA$NodeRWCB; = null

.field public static final CdmaNam:Ljava/lang/String; = "./CDMA/NAM/CdmaNam"

.field private static final LOG_TAG:Ljava/lang/String; = "CDMA"

.field public static final MobDirNum:Ljava/lang/String; = "./CDMA/NAM/MobDirNum"

.field public static final MobileIpAddress:Ljava/lang/String; = "./CDMA/3GPD/Profile1/MobileIpAddress"

.field public static final NAI:Ljava/lang/String; = "./CDMA/3GPD/Profile1/NAI"

.field public static final PasswordAAA:Ljava/lang/String; = "./CDMA/3GPD/Profile1/PasswordAAA"

.field public static final PasswordHA:Ljava/lang/String; = "./CDMA/3GPD/Profile1/PasswordHA"

.field public static final PriHAIp:Ljava/lang/String; = "./CDMA/3GPD/Profile1/PriHAIp"

.field public static final ReverseTunneling:Ljava/lang/String; = "./CDMA/3GPD/Profile1/ReverseTunneling"

.field public static final SecHAIp:Ljava/lang/String; = "./CDMA/3GPD/Profile1/SecHAIp"

.field public static final SpiAAA:Ljava/lang/String; = "./CDMA/3GPD/Profile1/SpiAAA"

.field public static final SpiHA:Ljava/lang/String; = "./CDMA/3GPD/Profile1/SpiHA"

.field private static final TagID:I = 0x3

.field private static mVdmTree:Lcom/redbend/vdm/VdmTree;

.field private static me:Lcom/redbend/vdmc/Sprint/CDMA;


# instance fields
.field private hAuthAlgoAAA:Lcom/redbend/vdmc/Sprint/CDMA$TreeHandler;

.field private hCdmaNam:Lcom/redbend/vdmc/Sprint/CDMA$TreeHandler;

.field private hMobDirNum:Lcom/redbend/vdmc/Sprint/CDMA$TreeHandler;

.field private hMobileIpAddress:Lcom/redbend/vdmc/Sprint/CDMA$TreeHandler;

.field private hNAI:Lcom/redbend/vdmc/Sprint/CDMA$TreeHandler;

.field private hPasswordAAA:Lcom/redbend/vdmc/Sprint/CDMA$TreeHandler;

.field private hPasswordHA:Lcom/redbend/vdmc/Sprint/CDMA$TreeHandler;

.field private hPriHAIp:Lcom/redbend/vdmc/Sprint/CDMA$TreeHandler;

.field private hReverseTunneling:Lcom/redbend/vdmc/Sprint/CDMA$TreeHandler;

.field private hSecHAIp:Lcom/redbend/vdmc/Sprint/CDMA$TreeHandler;

.field private hSpiAAA:Lcom/redbend/vdmc/Sprint/CDMA$TreeHandler;

.field private hSpiHA:Lcom/redbend/vdmc/Sprint/CDMA$TreeHandler;

.field private mCDMAIPL:Lcom/htc/ipl/cdma;

.field private mCommonIPL:Lcom/htc/ipl/common;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    sput-object v0, Lcom/redbend/vdmc/Sprint/CDMA;->me:Lcom/redbend/vdmc/Sprint/CDMA;

    .line 41
    sput-object v0, Lcom/redbend/vdmc/Sprint/CDMA;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/redbend/vdmc/Sprint/CDMA;)Lcom/htc/ipl/cdma;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/redbend/vdmc/Sprint/CDMA;->mCDMAIPL:Lcom/htc/ipl/cdma;

    return-object v0
.end method

.method static synthetic access$002(Lcom/redbend/vdmc/Sprint/CDMA;Lcom/htc/ipl/cdma;)Lcom/htc/ipl/cdma;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    iput-object p1, p0, Lcom/redbend/vdmc/Sprint/CDMA;->mCDMAIPL:Lcom/htc/ipl/cdma;

    return-object p1
.end method

.method static synthetic access$100(Lcom/redbend/vdmc/Sprint/CDMA;)Lcom/htc/ipl/common;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/redbend/vdmc/Sprint/CDMA;->mCommonIPL:Lcom/htc/ipl/common;

    return-object v0
.end method

.method static synthetic access$102(Lcom/redbend/vdmc/Sprint/CDMA;Lcom/htc/ipl/common;)Lcom/htc/ipl/common;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    iput-object p1, p0, Lcom/redbend/vdmc/Sprint/CDMA;->mCommonIPL:Lcom/htc/ipl/common;

    return-object p1
.end method

.method public static getInstance()Lcom/redbend/vdmc/Sprint/CDMA;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/redbend/vdmc/Sprint/CDMA;->me:Lcom/redbend/vdmc/Sprint/CDMA;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/redbend/vdmc/Sprint/CDMA;

    invoke-direct {v0}, Lcom/redbend/vdmc/Sprint/CDMA;-><init>()V

    sput-object v0, Lcom/redbend/vdmc/Sprint/CDMA;->me:Lcom/redbend/vdmc/Sprint/CDMA;

    .line 50
    :cond_0
    sget-object v0, Lcom/redbend/vdmc/Sprint/CDMA;->me:Lcom/redbend/vdmc/Sprint/CDMA;

    return-object v0
.end method


# virtual methods
.method public Register(Lcom/redbend/vdm/VdmTree;)V
    .locals 4
    .parameter "tree"

    .prologue
    .line 57
    sput-object p1, Lcom/redbend/vdmc/Sprint/CDMA;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    .line 58
    new-instance v0, Lcom/redbend/vdmc/Sprint/CDMA$NodeRWCB;

    invoke-direct {v0, p0}, Lcom/redbend/vdmc/Sprint/CDMA$NodeRWCB;-><init>(Lcom/redbend/vdmc/Sprint/CDMA;)V

    sput-object v0, Lcom/redbend/vdmc/Sprint/CDMA;->CDMARWCB:Lcom/redbend/vdmc/Sprint/CDMA$NodeRWCB;

    .line 59
    new-instance v0, Lcom/redbend/vdmc/Sprint/CDMA$TreeHandler;

    sget-object v1, Lcom/redbend/vdmc/Sprint/CDMA;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    const-string v2, "./CDMA/3GPD/Profile1/AuthAlgoAAA"

    sget-object v3, Lcom/redbend/vdmc/Sprint/CDMA;->CDMARWCB:Lcom/redbend/vdmc/Sprint/CDMA$NodeRWCB;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/redbend/vdmc/Sprint/CDMA$TreeHandler;-><init>(Lcom/redbend/vdmc/Sprint/CDMA;Lcom/redbend/vdm/VdmTree;Ljava/lang/String;Lcom/redbend/vdmc/Sprint/CDMA$NodeRWCB;)V

    iput-object v0, p0, Lcom/redbend/vdmc/Sprint/CDMA;->hAuthAlgoAAA:Lcom/redbend/vdmc/Sprint/CDMA$TreeHandler;

    .line 60
    new-instance v0, Lcom/redbend/vdmc/Sprint/CDMA$TreeHandler;

    sget-object v1, Lcom/redbend/vdmc/Sprint/CDMA;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    const-string v2, "./CDMA/3GPD/Profile1/MobileIpAddress"

    sget-object v3, Lcom/redbend/vdmc/Sprint/CDMA;->CDMARWCB:Lcom/redbend/vdmc/Sprint/CDMA$NodeRWCB;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/redbend/vdmc/Sprint/CDMA$TreeHandler;-><init>(Lcom/redbend/vdmc/Sprint/CDMA;Lcom/redbend/vdm/VdmTree;Ljava/lang/String;Lcom/redbend/vdmc/Sprint/CDMA$NodeRWCB;)V

    iput-object v0, p0, Lcom/redbend/vdmc/Sprint/CDMA;->hMobileIpAddress:Lcom/redbend/vdmc/Sprint/CDMA$TreeHandler;

    .line 61
    new-instance v0, Lcom/redbend/vdmc/Sprint/CDMA$TreeHandler;

    sget-object v1, Lcom/redbend/vdmc/Sprint/CDMA;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    const-string v2, "./CDMA/3GPD/Profile1/NAI"

    sget-object v3, Lcom/redbend/vdmc/Sprint/CDMA;->CDMARWCB:Lcom/redbend/vdmc/Sprint/CDMA$NodeRWCB;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/redbend/vdmc/Sprint/CDMA$TreeHandler;-><init>(Lcom/redbend/vdmc/Sprint/CDMA;Lcom/redbend/vdm/VdmTree;Ljava/lang/String;Lcom/redbend/vdmc/Sprint/CDMA$NodeRWCB;)V

    iput-object v0, p0, Lcom/redbend/vdmc/Sprint/CDMA;->hNAI:Lcom/redbend/vdmc/Sprint/CDMA$TreeHandler;

    .line 62
    new-instance v0, Lcom/redbend/vdmc/Sprint/CDMA$TreeHandler;

    sget-object v1, Lcom/redbend/vdmc/Sprint/CDMA;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    const-string v2, "./CDMA/3GPD/Profile1/PasswordAAA"

    sget-object v3, Lcom/redbend/vdmc/Sprint/CDMA;->CDMARWCB:Lcom/redbend/vdmc/Sprint/CDMA$NodeRWCB;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/redbend/vdmc/Sprint/CDMA$TreeHandler;-><init>(Lcom/redbend/vdmc/Sprint/CDMA;Lcom/redbend/vdm/VdmTree;Ljava/lang/String;Lcom/redbend/vdmc/Sprint/CDMA$NodeRWCB;)V

    iput-object v0, p0, Lcom/redbend/vdmc/Sprint/CDMA;->hPasswordAAA:Lcom/redbend/vdmc/Sprint/CDMA$TreeHandler;

    .line 63
    new-instance v0, Lcom/redbend/vdmc/Sprint/CDMA$TreeHandler;

    sget-object v1, Lcom/redbend/vdmc/Sprint/CDMA;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    const-string v2, "./CDMA/3GPD/Profile1/PasswordHA"

    sget-object v3, Lcom/redbend/vdmc/Sprint/CDMA;->CDMARWCB:Lcom/redbend/vdmc/Sprint/CDMA$NodeRWCB;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/redbend/vdmc/Sprint/CDMA$TreeHandler;-><init>(Lcom/redbend/vdmc/Sprint/CDMA;Lcom/redbend/vdm/VdmTree;Ljava/lang/String;Lcom/redbend/vdmc/Sprint/CDMA$NodeRWCB;)V

    iput-object v0, p0, Lcom/redbend/vdmc/Sprint/CDMA;->hPasswordHA:Lcom/redbend/vdmc/Sprint/CDMA$TreeHandler;

    .line 64
    new-instance v0, Lcom/redbend/vdmc/Sprint/CDMA$TreeHandler;

    sget-object v1, Lcom/redbend/vdmc/Sprint/CDMA;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    const-string v2, "./CDMA/3GPD/Profile1/PriHAIp"

    sget-object v3, Lcom/redbend/vdmc/Sprint/CDMA;->CDMARWCB:Lcom/redbend/vdmc/Sprint/CDMA$NodeRWCB;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/redbend/vdmc/Sprint/CDMA$TreeHandler;-><init>(Lcom/redbend/vdmc/Sprint/CDMA;Lcom/redbend/vdm/VdmTree;Ljava/lang/String;Lcom/redbend/vdmc/Sprint/CDMA$NodeRWCB;)V

    iput-object v0, p0, Lcom/redbend/vdmc/Sprint/CDMA;->hPriHAIp:Lcom/redbend/vdmc/Sprint/CDMA$TreeHandler;

    .line 65
    new-instance v0, Lcom/redbend/vdmc/Sprint/CDMA$TreeHandler;

    sget-object v1, Lcom/redbend/vdmc/Sprint/CDMA;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    const-string v2, "./CDMA/3GPD/Profile1/ReverseTunneling"

    sget-object v3, Lcom/redbend/vdmc/Sprint/CDMA;->CDMARWCB:Lcom/redbend/vdmc/Sprint/CDMA$NodeRWCB;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/redbend/vdmc/Sprint/CDMA$TreeHandler;-><init>(Lcom/redbend/vdmc/Sprint/CDMA;Lcom/redbend/vdm/VdmTree;Ljava/lang/String;Lcom/redbend/vdmc/Sprint/CDMA$NodeRWCB;)V

    iput-object v0, p0, Lcom/redbend/vdmc/Sprint/CDMA;->hReverseTunneling:Lcom/redbend/vdmc/Sprint/CDMA$TreeHandler;

    .line 66
    new-instance v0, Lcom/redbend/vdmc/Sprint/CDMA$TreeHandler;

    sget-object v1, Lcom/redbend/vdmc/Sprint/CDMA;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    const-string v2, "./CDMA/3GPD/Profile1/SecHAIp"

    sget-object v3, Lcom/redbend/vdmc/Sprint/CDMA;->CDMARWCB:Lcom/redbend/vdmc/Sprint/CDMA$NodeRWCB;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/redbend/vdmc/Sprint/CDMA$TreeHandler;-><init>(Lcom/redbend/vdmc/Sprint/CDMA;Lcom/redbend/vdm/VdmTree;Ljava/lang/String;Lcom/redbend/vdmc/Sprint/CDMA$NodeRWCB;)V

    iput-object v0, p0, Lcom/redbend/vdmc/Sprint/CDMA;->hSecHAIp:Lcom/redbend/vdmc/Sprint/CDMA$TreeHandler;

    .line 67
    new-instance v0, Lcom/redbend/vdmc/Sprint/CDMA$TreeHandler;

    sget-object v1, Lcom/redbend/vdmc/Sprint/CDMA;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    const-string v2, "./CDMA/3GPD/Profile1/SpiAAA"

    sget-object v3, Lcom/redbend/vdmc/Sprint/CDMA;->CDMARWCB:Lcom/redbend/vdmc/Sprint/CDMA$NodeRWCB;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/redbend/vdmc/Sprint/CDMA$TreeHandler;-><init>(Lcom/redbend/vdmc/Sprint/CDMA;Lcom/redbend/vdm/VdmTree;Ljava/lang/String;Lcom/redbend/vdmc/Sprint/CDMA$NodeRWCB;)V

    iput-object v0, p0, Lcom/redbend/vdmc/Sprint/CDMA;->hSpiAAA:Lcom/redbend/vdmc/Sprint/CDMA$TreeHandler;

    .line 68
    new-instance v0, Lcom/redbend/vdmc/Sprint/CDMA$TreeHandler;

    sget-object v1, Lcom/redbend/vdmc/Sprint/CDMA;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    const-string v2, "./CDMA/3GPD/Profile1/SpiHA"

    sget-object v3, Lcom/redbend/vdmc/Sprint/CDMA;->CDMARWCB:Lcom/redbend/vdmc/Sprint/CDMA$NodeRWCB;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/redbend/vdmc/Sprint/CDMA$TreeHandler;-><init>(Lcom/redbend/vdmc/Sprint/CDMA;Lcom/redbend/vdm/VdmTree;Ljava/lang/String;Lcom/redbend/vdmc/Sprint/CDMA$NodeRWCB;)V

    iput-object v0, p0, Lcom/redbend/vdmc/Sprint/CDMA;->hSpiHA:Lcom/redbend/vdmc/Sprint/CDMA$TreeHandler;

    .line 69
    new-instance v0, Lcom/redbend/vdmc/Sprint/CDMA$TreeHandler;

    sget-object v1, Lcom/redbend/vdmc/Sprint/CDMA;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    const-string v2, "./CDMA/NAM/CdmaNam"

    sget-object v3, Lcom/redbend/vdmc/Sprint/CDMA;->CDMARWCB:Lcom/redbend/vdmc/Sprint/CDMA$NodeRWCB;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/redbend/vdmc/Sprint/CDMA$TreeHandler;-><init>(Lcom/redbend/vdmc/Sprint/CDMA;Lcom/redbend/vdm/VdmTree;Ljava/lang/String;Lcom/redbend/vdmc/Sprint/CDMA$NodeRWCB;)V

    iput-object v0, p0, Lcom/redbend/vdmc/Sprint/CDMA;->hCdmaNam:Lcom/redbend/vdmc/Sprint/CDMA$TreeHandler;

    .line 70
    new-instance v0, Lcom/redbend/vdmc/Sprint/CDMA$TreeHandler;

    sget-object v1, Lcom/redbend/vdmc/Sprint/CDMA;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    const-string v2, "./CDMA/NAM/MobDirNum"

    sget-object v3, Lcom/redbend/vdmc/Sprint/CDMA;->CDMARWCB:Lcom/redbend/vdmc/Sprint/CDMA$NodeRWCB;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/redbend/vdmc/Sprint/CDMA$TreeHandler;-><init>(Lcom/redbend/vdmc/Sprint/CDMA;Lcom/redbend/vdm/VdmTree;Ljava/lang/String;Lcom/redbend/vdmc/Sprint/CDMA$NodeRWCB;)V

    iput-object v0, p0, Lcom/redbend/vdmc/Sprint/CDMA;->hMobDirNum:Lcom/redbend/vdmc/Sprint/CDMA$TreeHandler;

    .line 71
    return-void
.end method
