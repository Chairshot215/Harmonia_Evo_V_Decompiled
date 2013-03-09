.class public Lcom/redbend/vdmc/Sprint/DevDetail;
.super Ljava/lang/Object;
.source "DevDetail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/redbend/vdmc/Sprint/DevDetail$TreeHandler;,
        Lcom/redbend/vdmc/Sprint/DevDetail$NodeRWCB;
    }
.end annotation


# static fields
.field private static DevDetailRWCB:Lcom/redbend/vdmc/Sprint/DevDetail$NodeRWCB; = null

.field public static final DevTyp:Ljava/lang/String; = "./DevDetail/DevTyp"

.field public static final FwV:Ljava/lang/String; = "./DevDetail/FwV"

.field public static final HwV:Ljava/lang/String; = "./DevDetail/HwV"

.field private static final LOG_TAG:Ljava/lang/String; = "DevDetail"

.field public static final OEM:Ljava/lang/String; = "./DevDetail/OEM"

.field public static final SwV:Ljava/lang/String; = "./DevDetail/SwV"

.field private static final TagID:I = 0x2

.field private static mVdmTree:Lcom/redbend/vdm/VdmTree;

.field private static me:Lcom/redbend/vdmc/Sprint/DevDetail;


# instance fields
.field private hDevTyp:Lcom/redbend/vdmc/Sprint/DevDetail$TreeHandler;

.field private hFwV:Lcom/redbend/vdmc/Sprint/DevDetail$TreeHandler;

.field private hHwV:Lcom/redbend/vdmc/Sprint/DevDetail$TreeHandler;

.field private hOEM:Lcom/redbend/vdmc/Sprint/DevDetail$TreeHandler;

.field private hSwV:Lcom/redbend/vdmc/Sprint/DevDetail$TreeHandler;

.field private mCommonIPL:Lcom/htc/ipl/common;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    sput-object v0, Lcom/redbend/vdmc/Sprint/DevDetail;->me:Lcom/redbend/vdmc/Sprint/DevDetail;

    .line 25
    sput-object v0, Lcom/redbend/vdmc/Sprint/DevDetail;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/redbend/vdmc/Sprint/DevDetail;)Lcom/htc/ipl/common;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-object v0, p0, Lcom/redbend/vdmc/Sprint/DevDetail;->mCommonIPL:Lcom/htc/ipl/common;

    return-object v0
.end method

.method static synthetic access$002(Lcom/redbend/vdmc/Sprint/DevDetail;Lcom/htc/ipl/common;)Lcom/htc/ipl/common;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-object p1, p0, Lcom/redbend/vdmc/Sprint/DevDetail;->mCommonIPL:Lcom/htc/ipl/common;

    return-object p1
.end method

.method public static getInstance()Lcom/redbend/vdmc/Sprint/DevDetail;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/redbend/vdmc/Sprint/DevDetail;->me:Lcom/redbend/vdmc/Sprint/DevDetail;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/redbend/vdmc/Sprint/DevDetail;

    invoke-direct {v0}, Lcom/redbend/vdmc/Sprint/DevDetail;-><init>()V

    sput-object v0, Lcom/redbend/vdmc/Sprint/DevDetail;->me:Lcom/redbend/vdmc/Sprint/DevDetail;

    .line 33
    :cond_0
    sget-object v0, Lcom/redbend/vdmc/Sprint/DevDetail;->me:Lcom/redbend/vdmc/Sprint/DevDetail;

    return-object v0
.end method


# virtual methods
.method public GetNodeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "node"

    .prologue
    .line 50
    const/4 v0, 0x0

    .line 52
    .local v0, NodeData:Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/redbend/vdmc/Sprint/DevDetail;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    invoke-virtual {v2, p1}, Lcom/redbend/vdm/VdmTree;->getStringValue(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/redbend/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 56
    :goto_0
    return-object v0

    .line 53
    :catch_0
    move-exception v1

    .line 54
    .local v1, e:Lcom/redbend/vdm/VdmException;
    const-string v2, "DevDetail"

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
    .line 40
    sput-object p1, Lcom/redbend/vdmc/Sprint/DevDetail;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    .line 41
    new-instance v0, Lcom/redbend/vdmc/Sprint/DevDetail$NodeRWCB;

    invoke-direct {v0, p0}, Lcom/redbend/vdmc/Sprint/DevDetail$NodeRWCB;-><init>(Lcom/redbend/vdmc/Sprint/DevDetail;)V

    sput-object v0, Lcom/redbend/vdmc/Sprint/DevDetail;->DevDetailRWCB:Lcom/redbend/vdmc/Sprint/DevDetail$NodeRWCB;

    .line 42
    new-instance v0, Lcom/redbend/vdmc/Sprint/DevDetail$TreeHandler;

    sget-object v1, Lcom/redbend/vdmc/Sprint/DevDetail;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    const-string v2, "./DevDetail/DevTyp"

    sget-object v3, Lcom/redbend/vdmc/Sprint/DevDetail;->DevDetailRWCB:Lcom/redbend/vdmc/Sprint/DevDetail$NodeRWCB;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/redbend/vdmc/Sprint/DevDetail$TreeHandler;-><init>(Lcom/redbend/vdmc/Sprint/DevDetail;Lcom/redbend/vdm/VdmTree;Ljava/lang/String;Lcom/redbend/vdmc/Sprint/DevDetail$NodeRWCB;)V

    iput-object v0, p0, Lcom/redbend/vdmc/Sprint/DevDetail;->hDevTyp:Lcom/redbend/vdmc/Sprint/DevDetail$TreeHandler;

    .line 43
    new-instance v0, Lcom/redbend/vdmc/Sprint/DevDetail$TreeHandler;

    sget-object v1, Lcom/redbend/vdmc/Sprint/DevDetail;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    const-string v2, "./DevDetail/FwV"

    sget-object v3, Lcom/redbend/vdmc/Sprint/DevDetail;->DevDetailRWCB:Lcom/redbend/vdmc/Sprint/DevDetail$NodeRWCB;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/redbend/vdmc/Sprint/DevDetail$TreeHandler;-><init>(Lcom/redbend/vdmc/Sprint/DevDetail;Lcom/redbend/vdm/VdmTree;Ljava/lang/String;Lcom/redbend/vdmc/Sprint/DevDetail$NodeRWCB;)V

    iput-object v0, p0, Lcom/redbend/vdmc/Sprint/DevDetail;->hFwV:Lcom/redbend/vdmc/Sprint/DevDetail$TreeHandler;

    .line 44
    new-instance v0, Lcom/redbend/vdmc/Sprint/DevDetail$TreeHandler;

    sget-object v1, Lcom/redbend/vdmc/Sprint/DevDetail;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    const-string v2, "./DevDetail/HwV"

    sget-object v3, Lcom/redbend/vdmc/Sprint/DevDetail;->DevDetailRWCB:Lcom/redbend/vdmc/Sprint/DevDetail$NodeRWCB;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/redbend/vdmc/Sprint/DevDetail$TreeHandler;-><init>(Lcom/redbend/vdmc/Sprint/DevDetail;Lcom/redbend/vdm/VdmTree;Ljava/lang/String;Lcom/redbend/vdmc/Sprint/DevDetail$NodeRWCB;)V

    iput-object v0, p0, Lcom/redbend/vdmc/Sprint/DevDetail;->hHwV:Lcom/redbend/vdmc/Sprint/DevDetail$TreeHandler;

    .line 45
    new-instance v0, Lcom/redbend/vdmc/Sprint/DevDetail$TreeHandler;

    sget-object v1, Lcom/redbend/vdmc/Sprint/DevDetail;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    const-string v2, "./DevDetail/OEM"

    sget-object v3, Lcom/redbend/vdmc/Sprint/DevDetail;->DevDetailRWCB:Lcom/redbend/vdmc/Sprint/DevDetail$NodeRWCB;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/redbend/vdmc/Sprint/DevDetail$TreeHandler;-><init>(Lcom/redbend/vdmc/Sprint/DevDetail;Lcom/redbend/vdm/VdmTree;Ljava/lang/String;Lcom/redbend/vdmc/Sprint/DevDetail$NodeRWCB;)V

    iput-object v0, p0, Lcom/redbend/vdmc/Sprint/DevDetail;->hOEM:Lcom/redbend/vdmc/Sprint/DevDetail$TreeHandler;

    .line 46
    new-instance v0, Lcom/redbend/vdmc/Sprint/DevDetail$TreeHandler;

    sget-object v1, Lcom/redbend/vdmc/Sprint/DevDetail;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    const-string v2, "./DevDetail/SwV"

    sget-object v3, Lcom/redbend/vdmc/Sprint/DevDetail;->DevDetailRWCB:Lcom/redbend/vdmc/Sprint/DevDetail$NodeRWCB;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/redbend/vdmc/Sprint/DevDetail$TreeHandler;-><init>(Lcom/redbend/vdmc/Sprint/DevDetail;Lcom/redbend/vdm/VdmTree;Ljava/lang/String;Lcom/redbend/vdmc/Sprint/DevDetail$NodeRWCB;)V

    iput-object v0, p0, Lcom/redbend/vdmc/Sprint/DevDetail;->hSwV:Lcom/redbend/vdmc/Sprint/DevDetail$TreeHandler;

    .line 47
    return-void
.end method

.method public ReplaceNodeValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "node"
    .parameter "value"

    .prologue
    .line 61
    :try_start_0
    sget-object v1, Lcom/redbend/vdmc/Sprint/DevDetail;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    invoke-virtual {v1, p1, p2}, Lcom/redbend/vdm/VdmTree;->replaceStringValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/redbend/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, e:Lcom/redbend/vdm/VdmException;
    const-string v1, "DevDetail"

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
    .line 69
    :try_start_0
    sget-object v1, Lcom/redbend/vdmc/Sprint/DevDetail;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    invoke-virtual {v1}, Lcom/redbend/vdm/VdmTree;->writeToPersistentStorage()V
    :try_end_0
    .catch Lcom/redbend/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, e:Lcom/redbend/vdm/VdmException;
    const-string v1, "DevDetail"

    const-string v2, "Failed to sync node:"

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
