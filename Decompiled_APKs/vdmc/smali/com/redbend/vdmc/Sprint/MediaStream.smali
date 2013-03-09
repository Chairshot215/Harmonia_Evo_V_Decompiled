.class public Lcom/redbend/vdmc/Sprint/MediaStream;
.super Ljava/lang/Object;
.source "MediaStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/redbend/vdmc/Sprint/MediaStream$TreeHandler;,
        Lcom/redbend/vdmc/Sprint/MediaStream$NodeRWCB;
    }
.end annotation


# static fields
.field public static final HTTPPDProxyAddress:Ljava/lang/String; = "./Con/MediaStream/HTTPPDProxyAddress"

.field public static final HTTPPDProxyPort:Ljava/lang/String; = "./Con/MediaStream/HTTPPDProxyPort"

.field private static final LOG_TAG:Ljava/lang/String; = "MediaStream"

.field private static MediaStreamRWCB:Lcom/redbend/vdmc/Sprint/MediaStream$NodeRWCB; = null

.field public static final RTSPProxyAddress:Ljava/lang/String; = "./Con/MediaStream/RTSPProxyAddress"

.field public static final RTSPProxyPort:Ljava/lang/String; = "./Con/MediaStream/RTSPProxyPort"

.field private static final TagID:I = 0x5

.field private static mVdmTree:Lcom/redbend/vdm/VdmTree;

.field private static me:Lcom/redbend/vdmc/Sprint/MediaStream;


# instance fields
.field private hHTTPPDProxyAddress:Lcom/redbend/vdmc/Sprint/MediaStream$TreeHandler;

.field private hHTTPPDProxyPort:Lcom/redbend/vdmc/Sprint/MediaStream$TreeHandler;

.field private hRTSPProxyAddress:Lcom/redbend/vdmc/Sprint/MediaStream$TreeHandler;

.field private hRTSPProxyPort:Lcom/redbend/vdmc/Sprint/MediaStream$TreeHandler;

.field private mCommonIPL:Lcom/htc/ipl/common;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    sput-object v0, Lcom/redbend/vdmc/Sprint/MediaStream;->me:Lcom/redbend/vdmc/Sprint/MediaStream;

    .line 23
    sput-object v0, Lcom/redbend/vdmc/Sprint/MediaStream;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/redbend/vdmc/Sprint/MediaStream;)Lcom/htc/ipl/common;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-object v0, p0, Lcom/redbend/vdmc/Sprint/MediaStream;->mCommonIPL:Lcom/htc/ipl/common;

    return-object v0
.end method

.method static synthetic access$002(Lcom/redbend/vdmc/Sprint/MediaStream;Lcom/htc/ipl/common;)Lcom/htc/ipl/common;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-object p1, p0, Lcom/redbend/vdmc/Sprint/MediaStream;->mCommonIPL:Lcom/htc/ipl/common;

    return-object p1
.end method

.method public static getInstance()Lcom/redbend/vdmc/Sprint/MediaStream;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/redbend/vdmc/Sprint/MediaStream;->me:Lcom/redbend/vdmc/Sprint/MediaStream;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/redbend/vdmc/Sprint/MediaStream;

    invoke-direct {v0}, Lcom/redbend/vdmc/Sprint/MediaStream;-><init>()V

    sput-object v0, Lcom/redbend/vdmc/Sprint/MediaStream;->me:Lcom/redbend/vdmc/Sprint/MediaStream;

    .line 31
    :cond_0
    sget-object v0, Lcom/redbend/vdmc/Sprint/MediaStream;->me:Lcom/redbend/vdmc/Sprint/MediaStream;

    return-object v0
.end method


# virtual methods
.method public GetNodeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "node"

    .prologue
    .line 47
    const/4 v0, 0x0

    .line 49
    .local v0, NodeData:Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/redbend/vdmc/Sprint/MediaStream;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    invoke-virtual {v2, p1}, Lcom/redbend/vdm/VdmTree;->getStringValue(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/redbend/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 53
    :goto_0
    return-object v0

    .line 50
    :catch_0
    move-exception v1

    .line 51
    .local v1, e:Lcom/redbend/vdm/VdmException;
    const-string v2, "MediaStream"

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
    .line 38
    sput-object p1, Lcom/redbend/vdmc/Sprint/MediaStream;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    .line 39
    new-instance v0, Lcom/redbend/vdmc/Sprint/MediaStream$NodeRWCB;

    invoke-direct {v0, p0}, Lcom/redbend/vdmc/Sprint/MediaStream$NodeRWCB;-><init>(Lcom/redbend/vdmc/Sprint/MediaStream;)V

    sput-object v0, Lcom/redbend/vdmc/Sprint/MediaStream;->MediaStreamRWCB:Lcom/redbend/vdmc/Sprint/MediaStream$NodeRWCB;

    .line 40
    new-instance v0, Lcom/redbend/vdmc/Sprint/MediaStream$TreeHandler;

    sget-object v1, Lcom/redbend/vdmc/Sprint/MediaStream;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    const-string v2, "./Con/MediaStream/RTSPProxyAddress"

    sget-object v3, Lcom/redbend/vdmc/Sprint/MediaStream;->MediaStreamRWCB:Lcom/redbend/vdmc/Sprint/MediaStream$NodeRWCB;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/redbend/vdmc/Sprint/MediaStream$TreeHandler;-><init>(Lcom/redbend/vdmc/Sprint/MediaStream;Lcom/redbend/vdm/VdmTree;Ljava/lang/String;Lcom/redbend/vdmc/Sprint/MediaStream$NodeRWCB;)V

    iput-object v0, p0, Lcom/redbend/vdmc/Sprint/MediaStream;->hRTSPProxyAddress:Lcom/redbend/vdmc/Sprint/MediaStream$TreeHandler;

    .line 41
    new-instance v0, Lcom/redbend/vdmc/Sprint/MediaStream$TreeHandler;

    sget-object v1, Lcom/redbend/vdmc/Sprint/MediaStream;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    const-string v2, "./Con/MediaStream/RTSPProxyPort"

    sget-object v3, Lcom/redbend/vdmc/Sprint/MediaStream;->MediaStreamRWCB:Lcom/redbend/vdmc/Sprint/MediaStream$NodeRWCB;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/redbend/vdmc/Sprint/MediaStream$TreeHandler;-><init>(Lcom/redbend/vdmc/Sprint/MediaStream;Lcom/redbend/vdm/VdmTree;Ljava/lang/String;Lcom/redbend/vdmc/Sprint/MediaStream$NodeRWCB;)V

    iput-object v0, p0, Lcom/redbend/vdmc/Sprint/MediaStream;->hRTSPProxyPort:Lcom/redbend/vdmc/Sprint/MediaStream$TreeHandler;

    .line 42
    new-instance v0, Lcom/redbend/vdmc/Sprint/MediaStream$TreeHandler;

    sget-object v1, Lcom/redbend/vdmc/Sprint/MediaStream;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    const-string v2, "./Con/MediaStream/HTTPPDProxyAddress"

    sget-object v3, Lcom/redbend/vdmc/Sprint/MediaStream;->MediaStreamRWCB:Lcom/redbend/vdmc/Sprint/MediaStream$NodeRWCB;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/redbend/vdmc/Sprint/MediaStream$TreeHandler;-><init>(Lcom/redbend/vdmc/Sprint/MediaStream;Lcom/redbend/vdm/VdmTree;Ljava/lang/String;Lcom/redbend/vdmc/Sprint/MediaStream$NodeRWCB;)V

    iput-object v0, p0, Lcom/redbend/vdmc/Sprint/MediaStream;->hHTTPPDProxyAddress:Lcom/redbend/vdmc/Sprint/MediaStream$TreeHandler;

    .line 43
    new-instance v0, Lcom/redbend/vdmc/Sprint/MediaStream$TreeHandler;

    sget-object v1, Lcom/redbend/vdmc/Sprint/MediaStream;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    const-string v2, "./Con/MediaStream/HTTPPDProxyPort"

    sget-object v3, Lcom/redbend/vdmc/Sprint/MediaStream;->MediaStreamRWCB:Lcom/redbend/vdmc/Sprint/MediaStream$NodeRWCB;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/redbend/vdmc/Sprint/MediaStream$TreeHandler;-><init>(Lcom/redbend/vdmc/Sprint/MediaStream;Lcom/redbend/vdm/VdmTree;Ljava/lang/String;Lcom/redbend/vdmc/Sprint/MediaStream$NodeRWCB;)V

    iput-object v0, p0, Lcom/redbend/vdmc/Sprint/MediaStream;->hHTTPPDProxyPort:Lcom/redbend/vdmc/Sprint/MediaStream$TreeHandler;

    .line 44
    return-void
.end method

.method public ReplaceNodeValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "node"
    .parameter "value"

    .prologue
    .line 58
    :try_start_0
    sget-object v1, Lcom/redbend/vdmc/Sprint/MediaStream;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    invoke-virtual {v1, p1, p2}, Lcom/redbend/vdm/VdmTree;->replaceStringValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/redbend/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, e:Lcom/redbend/vdm/VdmException;
    const-string v1, "MediaStream"

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
