.class public Lcom/redbend/vdmc/Sprint/PRL;
.super Ljava/lang/Object;
.source "PRL.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/redbend/vdmc/Sprint/PRL$TreeHandler;,
        Lcom/redbend/vdmc/Sprint/PRL$NodeRWCB;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PRL"

.field private static PRLRWCB:Lcom/redbend/vdmc/Sprint/PRL$NodeRWCB; = null

.field public static final PrefRoamList:Ljava/lang/String; = "./CDMA/PRL/PrefRoamList"

.field private static final TagID:I = 0x4

.field private static mVdmTree:Lcom/redbend/vdm/VdmTree;

.field private static me:Lcom/redbend/vdmc/Sprint/PRL;


# instance fields
.field private hPrefRoamList:Lcom/redbend/vdmc/Sprint/PRL$TreeHandler;

.field private mCDMAIPL:Lcom/htc/ipl/cdma;

.field private mCommonIPL:Lcom/htc/ipl/common;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    sput-object v0, Lcom/redbend/vdmc/Sprint/PRL;->me:Lcom/redbend/vdmc/Sprint/PRL;

    .line 18
    sput-object v0, Lcom/redbend/vdmc/Sprint/PRL;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/redbend/vdmc/Sprint/PRL;)Lcom/htc/ipl/cdma;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/redbend/vdmc/Sprint/PRL;->mCDMAIPL:Lcom/htc/ipl/cdma;

    return-object v0
.end method

.method static synthetic access$002(Lcom/redbend/vdmc/Sprint/PRL;Lcom/htc/ipl/cdma;)Lcom/htc/ipl/cdma;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    iput-object p1, p0, Lcom/redbend/vdmc/Sprint/PRL;->mCDMAIPL:Lcom/htc/ipl/cdma;

    return-object p1
.end method

.method static synthetic access$100(Lcom/redbend/vdmc/Sprint/PRL;)Lcom/htc/ipl/common;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/redbend/vdmc/Sprint/PRL;->mCommonIPL:Lcom/htc/ipl/common;

    return-object v0
.end method

.method static synthetic access$102(Lcom/redbend/vdmc/Sprint/PRL;Lcom/htc/ipl/common;)Lcom/htc/ipl/common;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    iput-object p1, p0, Lcom/redbend/vdmc/Sprint/PRL;->mCommonIPL:Lcom/htc/ipl/common;

    return-object p1
.end method

.method public static getInstance()Lcom/redbend/vdmc/Sprint/PRL;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/redbend/vdmc/Sprint/PRL;->me:Lcom/redbend/vdmc/Sprint/PRL;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/redbend/vdmc/Sprint/PRL;

    invoke-direct {v0}, Lcom/redbend/vdmc/Sprint/PRL;-><init>()V

    sput-object v0, Lcom/redbend/vdmc/Sprint/PRL;->me:Lcom/redbend/vdmc/Sprint/PRL;

    .line 27
    :cond_0
    sget-object v0, Lcom/redbend/vdmc/Sprint/PRL;->me:Lcom/redbend/vdmc/Sprint/PRL;

    return-object v0
.end method


# virtual methods
.method public GetNodeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "node"

    .prologue
    .line 40
    const/4 v0, 0x0

    .line 42
    .local v0, NodeData:Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/redbend/vdmc/Sprint/PRL;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    invoke-virtual {v2, p1}, Lcom/redbend/vdm/VdmTree;->getStringValue(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/redbend/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 46
    :goto_0
    return-object v0

    .line 43
    :catch_0
    move-exception v1

    .line 44
    .local v1, e:Lcom/redbend/vdm/VdmException;
    const-string v2, "PRL"

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
    .line 34
    sput-object p1, Lcom/redbend/vdmc/Sprint/PRL;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    .line 35
    new-instance v0, Lcom/redbend/vdmc/Sprint/PRL$NodeRWCB;

    invoke-direct {v0, p0}, Lcom/redbend/vdmc/Sprint/PRL$NodeRWCB;-><init>(Lcom/redbend/vdmc/Sprint/PRL;)V

    sput-object v0, Lcom/redbend/vdmc/Sprint/PRL;->PRLRWCB:Lcom/redbend/vdmc/Sprint/PRL$NodeRWCB;

    .line 36
    new-instance v0, Lcom/redbend/vdmc/Sprint/PRL$TreeHandler;

    sget-object v1, Lcom/redbend/vdmc/Sprint/PRL;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    const-string v2, "./CDMA/PRL/PrefRoamList"

    sget-object v3, Lcom/redbend/vdmc/Sprint/PRL;->PRLRWCB:Lcom/redbend/vdmc/Sprint/PRL$NodeRWCB;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/redbend/vdmc/Sprint/PRL$TreeHandler;-><init>(Lcom/redbend/vdmc/Sprint/PRL;Lcom/redbend/vdm/VdmTree;Ljava/lang/String;Lcom/redbend/vdmc/Sprint/PRL$NodeRWCB;)V

    iput-object v0, p0, Lcom/redbend/vdmc/Sprint/PRL;->hPrefRoamList:Lcom/redbend/vdmc/Sprint/PRL$TreeHandler;

    .line 37
    return-void
.end method

.method public ReplaceNodeValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "node"
    .parameter "value"

    .prologue
    .line 51
    :try_start_0
    sget-object v1, Lcom/redbend/vdmc/Sprint/PRL;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    invoke-virtual {v1, p1, p2}, Lcom/redbend/vdm/VdmTree;->replaceStringValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/redbend/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, e:Lcom/redbend/vdm/VdmException;
    const-string v1, "PRL"

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
