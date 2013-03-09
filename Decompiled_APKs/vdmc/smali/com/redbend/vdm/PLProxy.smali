.class Lcom/redbend/vdm/PLProxy;
.super Ljava/lang/Object;
.source "PLProxy.java"


# instance fields
.field private _dlpkgProxy:Lcom/redbend/vdm/PLDlpkgProxy;

.field private _logProxy:Lcom/redbend/vdm/PLLoggerProxy;

.field private _regProxy:Lcom/redbend/vdm/PLRegistryProxy;

.field private _storageProxy:Lcom/redbend/vdm/PLStorageProxy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/redbend/vdm/PLFactory;Lcom/redbend/vdm/PLLogger;)V
    .locals 1
    .parameter "context"
    .parameter "factory"
    .parameter "logger"

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/redbend/vdm/PLStorageProxy;

    invoke-direct {v0, p2}, Lcom/redbend/vdm/PLStorageProxy;-><init>(Lcom/redbend/vdm/PLFactory;)V

    iput-object v0, p0, Lcom/redbend/vdm/PLProxy;->_storageProxy:Lcom/redbend/vdm/PLStorageProxy;

    .line 14
    new-instance v0, Lcom/redbend/vdm/PLRegistryProxy;

    invoke-direct {v0, p2}, Lcom/redbend/vdm/PLRegistryProxy;-><init>(Lcom/redbend/vdm/PLFactory;)V

    iput-object v0, p0, Lcom/redbend/vdm/PLProxy;->_regProxy:Lcom/redbend/vdm/PLRegistryProxy;

    .line 15
    new-instance v0, Lcom/redbend/vdm/PLDlpkgProxy;

    invoke-direct {v0, p2}, Lcom/redbend/vdm/PLDlpkgProxy;-><init>(Lcom/redbend/vdm/PLFactory;)V

    iput-object v0, p0, Lcom/redbend/vdm/PLProxy;->_dlpkgProxy:Lcom/redbend/vdm/PLDlpkgProxy;

    .line 21
    if-eqz p3, :cond_0

    .line 22
    invoke-static {}, Lcom/redbend/vdm/PLLoggerProxy;->getInstance()Lcom/redbend/vdm/PLLoggerProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/redbend/vdm/PLProxy;->_logProxy:Lcom/redbend/vdm/PLLoggerProxy;

    .line 23
    iget-object v0, p0, Lcom/redbend/vdm/PLProxy;->_logProxy:Lcom/redbend/vdm/PLLoggerProxy;

    invoke-virtual {v0, p3}, Lcom/redbend/vdm/PLLoggerProxy;->initInstance(Lcom/redbend/vdm/PLLogger;)V

    .line 25
    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/redbend/vdm/PLProxy;->_storageProxy:Lcom/redbend/vdm/PLStorageProxy;

    invoke-virtual {v0}, Lcom/redbend/vdm/PLStorageProxy;->terminate()V

    .line 35
    iget-object v0, p0, Lcom/redbend/vdm/PLProxy;->_regProxy:Lcom/redbend/vdm/PLRegistryProxy;

    invoke-virtual {v0}, Lcom/redbend/vdm/PLRegistryProxy;->terminate()V

    .line 36
    iget-object v0, p0, Lcom/redbend/vdm/PLProxy;->_dlpkgProxy:Lcom/redbend/vdm/PLDlpkgProxy;

    invoke-virtual {v0}, Lcom/redbend/vdm/PLDlpkgProxy;->terminate()V

    .line 37
    iget-object v0, p0, Lcom/redbend/vdm/PLProxy;->_logProxy:Lcom/redbend/vdm/PLLoggerProxy;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/redbend/vdm/PLProxy;->_logProxy:Lcom/redbend/vdm/PLLoggerProxy;

    invoke-virtual {v0}, Lcom/redbend/vdm/PLLoggerProxy;->destroy()V

    .line 40
    :cond_0
    return-void
.end method
