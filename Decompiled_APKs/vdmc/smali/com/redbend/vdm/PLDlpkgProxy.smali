.class Lcom/redbend/vdm/PLDlpkgProxy;
.super Ljava/lang/Object;
.source "PLDlpkgProxy.java"


# instance fields
.field private _factory:Lcom/redbend/vdm/PLFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 10
    invoke-static {}, Lcom/redbend/vdm/PLDlpkgProxy;->initIDs()V

    .line 11
    return-void
.end method

.method public constructor <init>(Lcom/redbend/vdm/PLFactory;)V
    .locals 0
    .parameter "factory"

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-direct {p0}, Lcom/redbend/vdm/PLDlpkgProxy;->initInstance()V

    .line 16
    iput-object p1, p0, Lcom/redbend/vdm/PLDlpkgProxy;->_factory:Lcom/redbend/vdm/PLFactory;

    .line 17
    return-void
.end method

.method private static native initIDs()V
.end method

.method private native initInstance()V
.end method


# virtual methods
.method public create(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "vdmIdentifier"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 26
    iget-object v2, p0, Lcom/redbend/vdm/PLDlpkgProxy;->_factory:Lcom/redbend/vdm/PLFactory;

    invoke-interface {v2}, Lcom/redbend/vdm/PLFactory;->getDownloadPkg()Lcom/redbend/vdm/PLDlPkg;

    move-result-object v1

    .line 27
    .local v1, pkg:Lcom/redbend/vdm/PLDlPkg;
    new-instance v0, Ljava/lang/String;

    invoke-interface {v1, p1}, Lcom/redbend/vdm/PLDlPkg;->getFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 28
    .local v0, filename:Ljava/lang/String;
    return-object v0
.end method

.method public getMaxSize()I
    .locals 2

    .prologue
    .line 48
    iget-object v1, p0, Lcom/redbend/vdm/PLDlpkgProxy;->_factory:Lcom/redbend/vdm/PLFactory;

    invoke-interface {v1}, Lcom/redbend/vdm/PLFactory;->getDownloadPkg()Lcom/redbend/vdm/PLDlPkg;

    move-result-object v0

    .line 49
    .local v0, pkg:Lcom/redbend/vdm/PLDlPkg;
    invoke-interface {v0}, Lcom/redbend/vdm/PLDlPkg;->getMaxSize()I

    move-result v1

    return v1
.end method

.method public getPkgSize(Ljava/lang/String;)I
    .locals 2
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 32
    iget-object v1, p0, Lcom/redbend/vdm/PLDlpkgProxy;->_factory:Lcom/redbend/vdm/PLFactory;

    invoke-interface {v1}, Lcom/redbend/vdm/PLFactory;->getDownloadPkg()Lcom/redbend/vdm/PLDlPkg;

    move-result-object v0

    .line 33
    .local v0, pkg:Lcom/redbend/vdm/PLDlPkg;
    invoke-interface {v0, p1}, Lcom/redbend/vdm/PLDlPkg;->getPkgSize(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public remove(Ljava/lang/String;)V
    .locals 2
    .parameter "fullpath"

    .prologue
    .line 43
    iget-object v1, p0, Lcom/redbend/vdm/PLDlpkgProxy;->_factory:Lcom/redbend/vdm/PLFactory;

    invoke-interface {v1}, Lcom/redbend/vdm/PLFactory;->getDownloadPkg()Lcom/redbend/vdm/PLDlPkg;

    move-result-object v0

    .line 44
    .local v0, pkg:Lcom/redbend/vdm/PLDlPkg;
    invoke-interface {v0, p1}, Lcom/redbend/vdm/PLDlPkg;->remove(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method protected native terminate()V
.end method

.method public writeChunk(Ljava/lang/String;I[B)I
    .locals 2
    .parameter "filename"
    .parameter "offset"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 38
    iget-object v1, p0, Lcom/redbend/vdm/PLDlpkgProxy;->_factory:Lcom/redbend/vdm/PLFactory;

    invoke-interface {v1}, Lcom/redbend/vdm/PLFactory;->getDownloadPkg()Lcom/redbend/vdm/PLDlPkg;

    move-result-object v0

    .line 39
    .local v0, pkg:Lcom/redbend/vdm/PLDlPkg;
    invoke-interface {v0, p1, p2, p3}, Lcom/redbend/vdm/PLDlPkg;->writeChunk(Ljava/lang/String;I[B)I

    move-result v1

    return v1
.end method
