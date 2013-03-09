.class public Lcom/redbend/vdmc/Sprint/Browser;
.super Ljava/lang/Object;
.source "Browser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/redbend/vdmc/Sprint/Browser$TreeHandler;,
        Lcom/redbend/vdmc/Sprint/Browser$NodeRWCB;
    }
.end annotation


# static fields
.field public static final BrowserHomepage:Ljava/lang/String; = "./Con/Browser/Homepage"

.field public static final BrowserPriProxyIP:Ljava/lang/String; = "./Con/Browser/PriProxyIP"

.field public static final BrowserPriProxyPort:Ljava/lang/String; = "./Con/Browser/PriProxyPort"

.field private static BrowserRWCB:Lcom/redbend/vdmc/Sprint/Browser$NodeRWCB; = null

.field private static final LOG_TAG:Ljava/lang/String; = "Browser"

.field private static final TagID:I = 0xa

.field private static mVdmTree:Lcom/redbend/vdm/VdmTree;

.field private static me:Lcom/redbend/vdmc/Sprint/Browser;


# instance fields
.field private hBrowserHomepage:Lcom/redbend/vdmc/Sprint/Browser$TreeHandler;

.field private hBrowserPriProxyIP:Lcom/redbend/vdmc/Sprint/Browser$TreeHandler;

.field private hBrowserPriProxyPort:Lcom/redbend/vdmc/Sprint/Browser$TreeHandler;

.field private mCommonIPL:Lcom/htc/ipl/common;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    sput-object v0, Lcom/redbend/vdmc/Sprint/Browser;->me:Lcom/redbend/vdmc/Sprint/Browser;

    .line 21
    sput-object v0, Lcom/redbend/vdmc/Sprint/Browser;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/redbend/vdmc/Sprint/Browser;)Lcom/htc/ipl/common;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-object v0, p0, Lcom/redbend/vdmc/Sprint/Browser;->mCommonIPL:Lcom/htc/ipl/common;

    return-object v0
.end method

.method static synthetic access$002(Lcom/redbend/vdmc/Sprint/Browser;Lcom/htc/ipl/common;)Lcom/htc/ipl/common;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-object p1, p0, Lcom/redbend/vdmc/Sprint/Browser;->mCommonIPL:Lcom/htc/ipl/common;

    return-object p1
.end method

.method public static getInstance()Lcom/redbend/vdmc/Sprint/Browser;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/redbend/vdmc/Sprint/Browser;->me:Lcom/redbend/vdmc/Sprint/Browser;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/redbend/vdmc/Sprint/Browser;

    invoke-direct {v0}, Lcom/redbend/vdmc/Sprint/Browser;-><init>()V

    sput-object v0, Lcom/redbend/vdmc/Sprint/Browser;->me:Lcom/redbend/vdmc/Sprint/Browser;

    .line 29
    :cond_0
    sget-object v0, Lcom/redbend/vdmc/Sprint/Browser;->me:Lcom/redbend/vdmc/Sprint/Browser;

    return-object v0
.end method


# virtual methods
.method public GetNodeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "node"

    .prologue
    .line 44
    const/4 v0, 0x0

    .line 46
    .local v0, NodeData:Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/redbend/vdmc/Sprint/Browser;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    invoke-virtual {v2, p1}, Lcom/redbend/vdm/VdmTree;->getStringValue(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/redbend/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 50
    :goto_0
    return-object v0

    .line 47
    :catch_0
    move-exception v1

    .line 48
    .local v1, e:Lcom/redbend/vdm/VdmException;
    const-string v2, "Browser"

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
    .line 36
    sput-object p1, Lcom/redbend/vdmc/Sprint/Browser;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    .line 37
    new-instance v0, Lcom/redbend/vdmc/Sprint/Browser$NodeRWCB;

    invoke-direct {v0, p0}, Lcom/redbend/vdmc/Sprint/Browser$NodeRWCB;-><init>(Lcom/redbend/vdmc/Sprint/Browser;)V

    sput-object v0, Lcom/redbend/vdmc/Sprint/Browser;->BrowserRWCB:Lcom/redbend/vdmc/Sprint/Browser$NodeRWCB;

    .line 38
    new-instance v0, Lcom/redbend/vdmc/Sprint/Browser$TreeHandler;

    sget-object v1, Lcom/redbend/vdmc/Sprint/Browser;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    const-string v2, "./Con/Browser/Homepage"

    sget-object v3, Lcom/redbend/vdmc/Sprint/Browser;->BrowserRWCB:Lcom/redbend/vdmc/Sprint/Browser$NodeRWCB;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/redbend/vdmc/Sprint/Browser$TreeHandler;-><init>(Lcom/redbend/vdmc/Sprint/Browser;Lcom/redbend/vdm/VdmTree;Ljava/lang/String;Lcom/redbend/vdmc/Sprint/Browser$NodeRWCB;)V

    iput-object v0, p0, Lcom/redbend/vdmc/Sprint/Browser;->hBrowserHomepage:Lcom/redbend/vdmc/Sprint/Browser$TreeHandler;

    .line 39
    new-instance v0, Lcom/redbend/vdmc/Sprint/Browser$TreeHandler;

    sget-object v1, Lcom/redbend/vdmc/Sprint/Browser;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    const-string v2, "./Con/Browser/PriProxyIP"

    sget-object v3, Lcom/redbend/vdmc/Sprint/Browser;->BrowserRWCB:Lcom/redbend/vdmc/Sprint/Browser$NodeRWCB;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/redbend/vdmc/Sprint/Browser$TreeHandler;-><init>(Lcom/redbend/vdmc/Sprint/Browser;Lcom/redbend/vdm/VdmTree;Ljava/lang/String;Lcom/redbend/vdmc/Sprint/Browser$NodeRWCB;)V

    iput-object v0, p0, Lcom/redbend/vdmc/Sprint/Browser;->hBrowserPriProxyIP:Lcom/redbend/vdmc/Sprint/Browser$TreeHandler;

    .line 40
    new-instance v0, Lcom/redbend/vdmc/Sprint/Browser$TreeHandler;

    sget-object v1, Lcom/redbend/vdmc/Sprint/Browser;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    const-string v2, "./Con/Browser/PriProxyPort"

    sget-object v3, Lcom/redbend/vdmc/Sprint/Browser;->BrowserRWCB:Lcom/redbend/vdmc/Sprint/Browser$NodeRWCB;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/redbend/vdmc/Sprint/Browser$TreeHandler;-><init>(Lcom/redbend/vdmc/Sprint/Browser;Lcom/redbend/vdm/VdmTree;Ljava/lang/String;Lcom/redbend/vdmc/Sprint/Browser$NodeRWCB;)V

    iput-object v0, p0, Lcom/redbend/vdmc/Sprint/Browser;->hBrowserPriProxyPort:Lcom/redbend/vdmc/Sprint/Browser$TreeHandler;

    .line 41
    return-void
.end method

.method public ReplaceNodeValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "node"
    .parameter "value"

    .prologue
    .line 55
    :try_start_0
    sget-object v1, Lcom/redbend/vdmc/Sprint/Browser;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    invoke-virtual {v1, p1, p2}, Lcom/redbend/vdm/VdmTree;->replaceStringValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/redbend/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, e:Lcom/redbend/vdm/VdmException;
    const-string v1, "Browser"

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
