.class Lcom/redbend/vdm/PLRegistryProxy;
.super Ljava/lang/Object;
.source "PLRegistryProxy.java"


# instance fields
.field private _factory:Lcom/redbend/vdm/PLFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 10
    invoke-static {}, Lcom/redbend/vdm/PLRegistryProxy;->initIDs()V

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
    invoke-direct {p0}, Lcom/redbend/vdm/PLRegistryProxy;->initInstance()V

    .line 16
    iput-object p1, p0, Lcom/redbend/vdm/PLRegistryProxy;->_factory:Lcom/redbend/vdm/PLFactory;

    .line 17
    return-void
.end method

.method private static native initIDs()V
.end method

.method private native initInstance()V
.end method


# virtual methods
.method protected deleteKeysByPrefix(Ljava/lang/String;)V
    .locals 1
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/redbend/vdm/PLRegistryProxy;->_factory:Lcom/redbend/vdm/PLFactory;

    invoke-interface {v0}, Lcom/redbend/vdm/PLFactory;->getRegistry()Lcom/redbend/vdm/PLRegistry;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/redbend/vdm/PLRegistry;->deleteKeysByPrefix(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method protected getIntValue(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .parameter "key"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/redbend/vdm/PLRegistryProxy;->_factory:Lcom/redbend/vdm/PLFactory;

    invoke-interface {v0}, Lcom/redbend/vdm/PLFactory;->getRegistry()Lcom/redbend/vdm/PLRegistry;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/redbend/vdm/PLRegistry;->getIntValue(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected getStringValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"

    .prologue
    .line 35
    iget-object v1, p0, Lcom/redbend/vdm/PLRegistryProxy;->_factory:Lcom/redbend/vdm/PLFactory;

    invoke-interface {v1}, Lcom/redbend/vdm/PLFactory;->getRegistry()Lcom/redbend/vdm/PLRegistry;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/redbend/vdm/PLRegistry;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, value:Ljava/lang/String;
    return-object v0
.end method

.method protected setIntValue(Ljava/lang/String;I)I
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 40
    const/4 v1, 0x0

    .line 42
    .local v1, result:I
    :try_start_0
    iget-object v2, p0, Lcom/redbend/vdm/PLRegistryProxy;->_factory:Lcom/redbend/vdm/PLFactory;

    invoke-interface {v2}, Lcom/redbend/vdm/PLFactory;->getRegistry()Lcom/redbend/vdm/PLRegistry;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/redbend/vdm/PLRegistry;->setIntValue(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/redbend/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_0
    return v1

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, e:Lcom/redbend/vdm/VdmException;
    iget-object v2, v0, Lcom/redbend/vdm/VdmException;->vdmError:Lcom/redbend/vdm/VdmException$VdmError;

    iget v1, v2, Lcom/redbend/vdm/VdmException$VdmError;->val:I

    goto :goto_0
.end method

.method protected setStringValue(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 25
    const/4 v1, 0x0

    .line 27
    .local v1, result:I
    :try_start_0
    iget-object v2, p0, Lcom/redbend/vdm/PLRegistryProxy;->_factory:Lcom/redbend/vdm/PLFactory;

    invoke-interface {v2}, Lcom/redbend/vdm/PLFactory;->getRegistry()Lcom/redbend/vdm/PLRegistry;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/redbend/vdm/PLRegistry;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/redbend/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :goto_0
    return v1

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, e:Lcom/redbend/vdm/VdmException;
    iget-object v2, v0, Lcom/redbend/vdm/VdmException;->vdmError:Lcom/redbend/vdm/VdmException$VdmError;

    iget v1, v2, Lcom/redbend/vdm/VdmException$VdmError;->val:I

    goto :goto_0
.end method

.method protected native terminate()V
.end method
