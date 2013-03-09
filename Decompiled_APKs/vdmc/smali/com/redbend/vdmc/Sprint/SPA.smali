.class public Lcom/redbend/vdmc/Sprint/SPA;
.super Ljava/lang/Object;
.source "SPA.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;,
        Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;
    }
.end annotation


# static fields
.field public static final BarDomVoiceRoamingEnabled:Ljava/lang/String; = "./SPA/BarDomVoiceRoaming/Enabled"

.field public static final BarDomVoiceRoamingForced:Ljava/lang/String; = "./SPA/BarDomVoiceRoaming/Forced"

.field public static final DomDataGuardEnabled:Ljava/lang/String; = "./SPA/DomDataGuard/Enabled"

.field public static final DomDataGuardForced:Ljava/lang/String; = "./SPA/DomDataGuard/Forced"

.field public static final DomDataRoamingEnabled:Ljava/lang/String; = "./SPA/DomDataRoaming/Enabled"

.field public static final DomDataRoamingForced:Ljava/lang/String; = "./SPA/DomDataRoaming/Forced"

.field public static final DomVoiceGuardEnabled:Ljava/lang/String; = "./SPA/DomVoiceGuard/Enabled"

.field public static final DomVoiceGuardForced:Ljava/lang/String; = "./SPA/DomVoiceGuard/Forced"

.field public static final DomVoiceRoamingEnabled:Ljava/lang/String; = "./SPA/DomVoiceRoaming/Enabled"

.field public static final DomVoiceRoamingForced:Ljava/lang/String; = "./SPA/DomVoiceRoaming/Forced"

.field public static final IntlDataGuardEnabled:Ljava/lang/String; = "./SPA/IntlDataGuard/Enabled"

.field public static final IntlDataGuardForced:Ljava/lang/String; = "./SPA/IntlDataGuard/Forced"

.field public static final IntlDataRoamingEnabled:Ljava/lang/String; = "./SPA/IntlDataRoaming/Enabled"

.field public static final IntlDataRoamingForced:Ljava/lang/String; = "./SPA/IntlDataRoaming/Forced"

.field public static final IntlDialingEnabled:Ljava/lang/String; = "./SPA/IntlDialing/Enabled"

.field public static final IntlDialingForced:Ljava/lang/String; = "./SPA/IntlDialing/Forced"

.field public static final IntlVoiceGuardEnabled:Ljava/lang/String; = "./SPA/IntlVoiceGuard/Enabled"

.field public static final IntlVoiceGuardForced:Ljava/lang/String; = "./SPA/IntlVoiceGuard/Forced"

.field public static final IntlVoiceRoamingEnabled:Ljava/lang/String; = "./SPA/IntlVoiceRoaming/Enabled"

.field public static final IntlVoiceRoamingForced:Ljava/lang/String; = "./SPA/IntlVoiceRoaming/Forced"

.field private static final LOG_TAG:Ljava/lang/String; = "SPA"

.field private static SPARWCB:Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB; = null

.field private static final TagID:I = 0x8

.field private static mVdmTree:Lcom/redbend/vdm/VdmTree;

.field private static me:Lcom/redbend/vdmc/Sprint/SPA;


# instance fields
.field private hBarDomVoiceRoamingEnabled:Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;

.field private hBarDomVoiceRoamingForced:Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;

.field private hDomDataGuardEnabled:Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;

.field private hDomDataGuardForced:Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;

.field private hDomDataRoamingEnabled:Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;

.field private hDomDataRoamingForced:Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;

.field private hDomVoiceGuardEnabled:Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;

.field private hDomVoiceGuardForced:Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;

.field private hDomVoiceRoamingEnabled:Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;

.field private hDomVoiceRoamingForced:Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;

.field private hIntlDataGuardEnabled:Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;

.field private hIntlDataGuardForced:Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;

.field private hIntlDataRoamingEnabled:Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;

.field private hIntlDataRoamingForced:Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;

.field private hIntlDialingEnabled:Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;

.field private hIntlDialingForced:Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;

.field private hIntlVoiceGuardEnabled:Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;

.field private hIntlVoiceGuardForced:Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;

.field private hIntlVoiceRoamingEnabled:Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;

.field private hIntlVoiceRoamingForced:Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;

.field private mCommonIPL:Lcom/htc/ipl/common;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    sput-object v0, Lcom/redbend/vdmc/Sprint/SPA;->me:Lcom/redbend/vdmc/Sprint/SPA;

    .line 59
    sput-object v0, Lcom/redbend/vdmc/Sprint/SPA;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/redbend/vdmc/Sprint/SPA;)Lcom/htc/ipl/common;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-object v0, p0, Lcom/redbend/vdmc/Sprint/SPA;->mCommonIPL:Lcom/htc/ipl/common;

    return-object v0
.end method

.method static synthetic access$002(Lcom/redbend/vdmc/Sprint/SPA;Lcom/htc/ipl/common;)Lcom/htc/ipl/common;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-object p1, p0, Lcom/redbend/vdmc/Sprint/SPA;->mCommonIPL:Lcom/htc/ipl/common;

    return-object p1
.end method

.method public static getInstance()Lcom/redbend/vdmc/Sprint/SPA;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/redbend/vdmc/Sprint/SPA;->me:Lcom/redbend/vdmc/Sprint/SPA;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/redbend/vdmc/Sprint/SPA;

    invoke-direct {v0}, Lcom/redbend/vdmc/Sprint/SPA;-><init>()V

    sput-object v0, Lcom/redbend/vdmc/Sprint/SPA;->me:Lcom/redbend/vdmc/Sprint/SPA;

    .line 67
    :cond_0
    sget-object v0, Lcom/redbend/vdmc/Sprint/SPA;->me:Lcom/redbend/vdmc/Sprint/SPA;

    return-object v0
.end method


# virtual methods
.method public GetNodeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "node"

    .prologue
    .line 99
    const/4 v0, 0x0

    .line 101
    .local v0, NodeData:Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/redbend/vdmc/Sprint/SPA;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    invoke-virtual {v2, p1}, Lcom/redbend/vdm/VdmTree;->getStringValue(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/redbend/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 105
    :goto_0
    return-object v0

    .line 102
    :catch_0
    move-exception v1

    .line 103
    .local v1, e:Lcom/redbend/vdm/VdmException;
    const-string v2, "SPA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get node:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public Register(Lcom/redbend/vdm/VdmTree;)V
    .locals 4
    .parameter "tree"

    .prologue
    .line 74
    sput-object p1, Lcom/redbend/vdmc/Sprint/SPA;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    .line 75
    new-instance v0, Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;

    invoke-direct {v0, p0}, Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;-><init>(Lcom/redbend/vdmc/Sprint/SPA;)V

    sput-object v0, Lcom/redbend/vdmc/Sprint/SPA;->SPARWCB:Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;

    .line 76
    new-instance v0, Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;

    sget-object v1, Lcom/redbend/vdmc/Sprint/SPA;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    const-string v2, "./SPA/BarDomVoiceRoaming/Enabled"

    sget-object v3, Lcom/redbend/vdmc/Sprint/SPA;->SPARWCB:Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;-><init>(Lcom/redbend/vdmc/Sprint/SPA;Lcom/redbend/vdm/VdmTree;Ljava/lang/String;Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;)V

    iput-object v0, p0, Lcom/redbend/vdmc/Sprint/SPA;->hBarDomVoiceRoamingEnabled:Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;

    .line 77
    new-instance v0, Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;

    sget-object v1, Lcom/redbend/vdmc/Sprint/SPA;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    const-string v2, "./SPA/BarDomVoiceRoaming/Forced"

    sget-object v3, Lcom/redbend/vdmc/Sprint/SPA;->SPARWCB:Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;-><init>(Lcom/redbend/vdmc/Sprint/SPA;Lcom/redbend/vdm/VdmTree;Ljava/lang/String;Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;)V

    iput-object v0, p0, Lcom/redbend/vdmc/Sprint/SPA;->hBarDomVoiceRoamingForced:Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;

    .line 78
    new-instance v0, Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;

    sget-object v1, Lcom/redbend/vdmc/Sprint/SPA;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    const-string v2, "./SPA/IntlDataGuard/Enabled"

    sget-object v3, Lcom/redbend/vdmc/Sprint/SPA;->SPARWCB:Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;-><init>(Lcom/redbend/vdmc/Sprint/SPA;Lcom/redbend/vdm/VdmTree;Ljava/lang/String;Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;)V

    iput-object v0, p0, Lcom/redbend/vdmc/Sprint/SPA;->hIntlDataGuardEnabled:Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;

    .line 79
    new-instance v0, Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;

    sget-object v1, Lcom/redbend/vdmc/Sprint/SPA;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    const-string v2, "./SPA/IntlDataGuard/Forced"

    sget-object v3, Lcom/redbend/vdmc/Sprint/SPA;->SPARWCB:Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;-><init>(Lcom/redbend/vdmc/Sprint/SPA;Lcom/redbend/vdm/VdmTree;Ljava/lang/String;Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;)V

    iput-object v0, p0, Lcom/redbend/vdmc/Sprint/SPA;->hIntlDataGuardForced:Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;

    .line 80
    new-instance v0, Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;

    sget-object v1, Lcom/redbend/vdmc/Sprint/SPA;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    const-string v2, "./SPA/IntlDataRoaming/Enabled"

    sget-object v3, Lcom/redbend/vdmc/Sprint/SPA;->SPARWCB:Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;-><init>(Lcom/redbend/vdmc/Sprint/SPA;Lcom/redbend/vdm/VdmTree;Ljava/lang/String;Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;)V

    iput-object v0, p0, Lcom/redbend/vdmc/Sprint/SPA;->hIntlDataRoamingEnabled:Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;

    .line 81
    new-instance v0, Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;

    sget-object v1, Lcom/redbend/vdmc/Sprint/SPA;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    const-string v2, "./SPA/IntlDataRoaming/Forced"

    sget-object v3, Lcom/redbend/vdmc/Sprint/SPA;->SPARWCB:Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;-><init>(Lcom/redbend/vdmc/Sprint/SPA;Lcom/redbend/vdm/VdmTree;Ljava/lang/String;Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;)V

    iput-object v0, p0, Lcom/redbend/vdmc/Sprint/SPA;->hIntlDataRoamingForced:Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;

    .line 82
    new-instance v0, Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;

    sget-object v1, Lcom/redbend/vdmc/Sprint/SPA;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    const-string v2, "./SPA/IntlDialing/Enabled"

    sget-object v3, Lcom/redbend/vdmc/Sprint/SPA;->SPARWCB:Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;-><init>(Lcom/redbend/vdmc/Sprint/SPA;Lcom/redbend/vdm/VdmTree;Ljava/lang/String;Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;)V

    iput-object v0, p0, Lcom/redbend/vdmc/Sprint/SPA;->hIntlDialingEnabled:Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;

    .line 83
    new-instance v0, Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;

    sget-object v1, Lcom/redbend/vdmc/Sprint/SPA;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    const-string v2, "./SPA/IntlDialing/Forced"

    sget-object v3, Lcom/redbend/vdmc/Sprint/SPA;->SPARWCB:Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;-><init>(Lcom/redbend/vdmc/Sprint/SPA;Lcom/redbend/vdm/VdmTree;Ljava/lang/String;Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;)V

    iput-object v0, p0, Lcom/redbend/vdmc/Sprint/SPA;->hIntlDialingForced:Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;

    .line 84
    new-instance v0, Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;

    sget-object v1, Lcom/redbend/vdmc/Sprint/SPA;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    const-string v2, "./SPA/IntlVoiceGuard/Enabled"

    sget-object v3, Lcom/redbend/vdmc/Sprint/SPA;->SPARWCB:Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;-><init>(Lcom/redbend/vdmc/Sprint/SPA;Lcom/redbend/vdm/VdmTree;Ljava/lang/String;Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;)V

    iput-object v0, p0, Lcom/redbend/vdmc/Sprint/SPA;->hIntlVoiceGuardEnabled:Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;

    .line 85
    new-instance v0, Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;

    sget-object v1, Lcom/redbend/vdmc/Sprint/SPA;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    const-string v2, "./SPA/IntlVoiceGuard/Forced"

    sget-object v3, Lcom/redbend/vdmc/Sprint/SPA;->SPARWCB:Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;-><init>(Lcom/redbend/vdmc/Sprint/SPA;Lcom/redbend/vdm/VdmTree;Ljava/lang/String;Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;)V

    iput-object v0, p0, Lcom/redbend/vdmc/Sprint/SPA;->hIntlVoiceGuardForced:Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;

    .line 86
    new-instance v0, Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;

    sget-object v1, Lcom/redbend/vdmc/Sprint/SPA;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    const-string v2, "./SPA/IntlVoiceRoaming/Enabled"

    sget-object v3, Lcom/redbend/vdmc/Sprint/SPA;->SPARWCB:Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;-><init>(Lcom/redbend/vdmc/Sprint/SPA;Lcom/redbend/vdm/VdmTree;Ljava/lang/String;Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;)V

    iput-object v0, p0, Lcom/redbend/vdmc/Sprint/SPA;->hIntlVoiceRoamingEnabled:Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;

    .line 87
    new-instance v0, Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;

    sget-object v1, Lcom/redbend/vdmc/Sprint/SPA;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    const-string v2, "./SPA/IntlVoiceRoaming/Forced"

    sget-object v3, Lcom/redbend/vdmc/Sprint/SPA;->SPARWCB:Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;-><init>(Lcom/redbend/vdmc/Sprint/SPA;Lcom/redbend/vdm/VdmTree;Ljava/lang/String;Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;)V

    iput-object v0, p0, Lcom/redbend/vdmc/Sprint/SPA;->hIntlVoiceRoamingForced:Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;

    .line 88
    new-instance v0, Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;

    sget-object v1, Lcom/redbend/vdmc/Sprint/SPA;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    const-string v2, "./SPA/DomDataGuard/Enabled"

    sget-object v3, Lcom/redbend/vdmc/Sprint/SPA;->SPARWCB:Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;-><init>(Lcom/redbend/vdmc/Sprint/SPA;Lcom/redbend/vdm/VdmTree;Ljava/lang/String;Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;)V

    iput-object v0, p0, Lcom/redbend/vdmc/Sprint/SPA;->hDomDataGuardEnabled:Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;

    .line 89
    new-instance v0, Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;

    sget-object v1, Lcom/redbend/vdmc/Sprint/SPA;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    const-string v2, "./SPA/DomDataGuard/Forced"

    sget-object v3, Lcom/redbend/vdmc/Sprint/SPA;->SPARWCB:Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;-><init>(Lcom/redbend/vdmc/Sprint/SPA;Lcom/redbend/vdm/VdmTree;Ljava/lang/String;Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;)V

    iput-object v0, p0, Lcom/redbend/vdmc/Sprint/SPA;->hDomDataGuardForced:Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;

    .line 90
    new-instance v0, Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;

    sget-object v1, Lcom/redbend/vdmc/Sprint/SPA;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    const-string v2, "./SPA/DomDataRoaming/Enabled"

    sget-object v3, Lcom/redbend/vdmc/Sprint/SPA;->SPARWCB:Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;-><init>(Lcom/redbend/vdmc/Sprint/SPA;Lcom/redbend/vdm/VdmTree;Ljava/lang/String;Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;)V

    iput-object v0, p0, Lcom/redbend/vdmc/Sprint/SPA;->hDomDataRoamingEnabled:Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;

    .line 91
    new-instance v0, Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;

    sget-object v1, Lcom/redbend/vdmc/Sprint/SPA;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    const-string v2, "./SPA/DomDataRoaming/Forced"

    sget-object v3, Lcom/redbend/vdmc/Sprint/SPA;->SPARWCB:Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;-><init>(Lcom/redbend/vdmc/Sprint/SPA;Lcom/redbend/vdm/VdmTree;Ljava/lang/String;Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;)V

    iput-object v0, p0, Lcom/redbend/vdmc/Sprint/SPA;->hDomDataRoamingForced:Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;

    .line 92
    new-instance v0, Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;

    sget-object v1, Lcom/redbend/vdmc/Sprint/SPA;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    const-string v2, "./SPA/DomVoiceGuard/Enabled"

    sget-object v3, Lcom/redbend/vdmc/Sprint/SPA;->SPARWCB:Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;-><init>(Lcom/redbend/vdmc/Sprint/SPA;Lcom/redbend/vdm/VdmTree;Ljava/lang/String;Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;)V

    iput-object v0, p0, Lcom/redbend/vdmc/Sprint/SPA;->hDomVoiceGuardEnabled:Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;

    .line 93
    new-instance v0, Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;

    sget-object v1, Lcom/redbend/vdmc/Sprint/SPA;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    const-string v2, "./SPA/DomVoiceGuard/Forced"

    sget-object v3, Lcom/redbend/vdmc/Sprint/SPA;->SPARWCB:Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;-><init>(Lcom/redbend/vdmc/Sprint/SPA;Lcom/redbend/vdm/VdmTree;Ljava/lang/String;Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;)V

    iput-object v0, p0, Lcom/redbend/vdmc/Sprint/SPA;->hDomVoiceGuardForced:Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;

    .line 94
    new-instance v0, Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;

    sget-object v1, Lcom/redbend/vdmc/Sprint/SPA;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    const-string v2, "./SPA/DomVoiceRoaming/Enabled"

    sget-object v3, Lcom/redbend/vdmc/Sprint/SPA;->SPARWCB:Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;-><init>(Lcom/redbend/vdmc/Sprint/SPA;Lcom/redbend/vdm/VdmTree;Ljava/lang/String;Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;)V

    iput-object v0, p0, Lcom/redbend/vdmc/Sprint/SPA;->hDomVoiceRoamingEnabled:Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;

    .line 95
    new-instance v0, Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;

    sget-object v1, Lcom/redbend/vdmc/Sprint/SPA;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    const-string v2, "./SPA/DomVoiceRoaming/Forced"

    sget-object v3, Lcom/redbend/vdmc/Sprint/SPA;->SPARWCB:Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;-><init>(Lcom/redbend/vdmc/Sprint/SPA;Lcom/redbend/vdm/VdmTree;Ljava/lang/String;Lcom/redbend/vdmc/Sprint/SPA$NodeRWCB;)V

    iput-object v0, p0, Lcom/redbend/vdmc/Sprint/SPA;->hDomVoiceRoamingForced:Lcom/redbend/vdmc/Sprint/SPA$TreeHandler;

    .line 96
    return-void
.end method

.method public ReplaceNodeValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "node"
    .parameter "value"

    .prologue
    .line 110
    :try_start_0
    sget-object v1, Lcom/redbend/vdmc/Sprint/SPA;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    invoke-virtual {v1, p1, p2}, Lcom/redbend/vdm/VdmTree;->replaceStringValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/redbend/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, e:Lcom/redbend/vdm/VdmException;
    const-string v1, "SPA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to replace node:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public SyncNodeValue()V
    .locals 3

    .prologue
    .line 117
    :try_start_0
    sget-object v1, Lcom/redbend/vdmc/Sprint/SPA;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    invoke-virtual {v1}, Lcom/redbend/vdm/VdmTree;->writeToPersistentStorage()V
    :try_end_0
    .catch Lcom/redbend/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, e:Lcom/redbend/vdm/VdmException;
    const-string v1, "SPA"

    const-string v2, "Failed to sync node:"

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
