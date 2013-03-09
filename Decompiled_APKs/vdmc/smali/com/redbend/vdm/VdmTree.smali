.class public Lcom/redbend/vdm/VdmTree;
.super Ljava/lang/Object;
.source "VdmTree.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/redbend/vdm/VdmTree$DFProperties;
    }
.end annotation


# instance fields
.field private _proxy:Lcom/redbend/vdm/VdmTreeProxy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {}, Lcom/redbend/vdm/VdmTreeProxy;->getInstance()Lcom/redbend/vdm/VdmTreeProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/redbend/vdm/VdmTree;->_proxy:Lcom/redbend/vdm/VdmTreeProxy;

    .line 21
    return-void
.end method


# virtual methods
.method public addChildLeafNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 8
    .parameter "parentUri"
    .parameter "nodeName"
    .parameter "format"
    .parameter "type"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 228
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 229
    :cond_0
    new-instance v0, Lcom/redbend/vdm/VdmException;

    sget-object v1, Lcom/redbend/vdm/VdmException$VdmError;->INVALID_INPUT_PARAM:Lcom/redbend/vdm/VdmException$VdmError;

    invoke-direct {v0, v1}, Lcom/redbend/vdm/VdmException;-><init>(Lcom/redbend/vdm/VdmException$VdmError;)V

    throw v0

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/redbend/vdm/VdmTree;->_proxy:Lcom/redbend/vdm/VdmTreeProxy;

    if-nez p5, :cond_2

    const/4 v6, 0x0

    :goto_0
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/redbend/vdm/VdmTreeProxy;->addChildLeafNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BI)I

    move-result v7

    .line 232
    .local v7, result:I
    if-eqz v7, :cond_3

    .line 233
    new-instance v0, Lcom/redbend/vdm/VdmException;

    invoke-static {v7}, Lcom/redbend/vdm/VdmException$VdmError;->fromInt(I)Lcom/redbend/vdm/VdmException$VdmError;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/redbend/vdm/VdmException;-><init>(Lcom/redbend/vdm/VdmException$VdmError;)V

    throw v0

    .line 231
    .end local v7           #result:I
    :cond_2
    array-length v6, p5

    goto :goto_0

    .line 235
    .restart local v7       #result:I
    :cond_3
    return-void
.end method

.method public addInteriorChildNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "parentUri"
    .parameter "nodeName"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 275
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 276
    :cond_0
    new-instance v1, Lcom/redbend/vdm/VdmException;

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->INVALID_INPUT_PARAM:Lcom/redbend/vdm/VdmException$VdmError;

    invoke-direct {v1, v2}, Lcom/redbend/vdm/VdmException;-><init>(Lcom/redbend/vdm/VdmException$VdmError;)V

    throw v1

    .line 278
    :cond_1
    iget-object v1, p0, Lcom/redbend/vdm/VdmTree;->_proxy:Lcom/redbend/vdm/VdmTreeProxy;

    invoke-virtual {v1, p1, p2, p3}, Lcom/redbend/vdm/VdmTreeProxy;->addInteriorChildNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 279
    .local v0, result:I
    if-eqz v0, :cond_2

    .line 280
    new-instance v1, Lcom/redbend/vdm/VdmException;

    invoke-static {v0}, Lcom/redbend/vdm/VdmException$VdmError;->fromInt(I)Lcom/redbend/vdm/VdmException$VdmError;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/redbend/vdm/VdmException;-><init>(Lcom/redbend/vdm/VdmException$VdmError;)V

    throw v1

    .line 282
    :cond_2
    return-void
.end method

.method public addInteriorNode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "nodeUri"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 250
    if-nez p1, :cond_0

    .line 251
    new-instance v1, Lcom/redbend/vdm/VdmException;

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->INVALID_INPUT_PARAM:Lcom/redbend/vdm/VdmException$VdmError;

    invoke-direct {v1, v2}, Lcom/redbend/vdm/VdmException;-><init>(Lcom/redbend/vdm/VdmException$VdmError;)V

    throw v1

    .line 253
    :cond_0
    iget-object v1, p0, Lcom/redbend/vdm/VdmTree;->_proxy:Lcom/redbend/vdm/VdmTreeProxy;

    invoke-virtual {v1, p1, p2}, Lcom/redbend/vdm/VdmTreeProxy;->addInteriorNode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 254
    .local v0, result:I
    if-eqz v0, :cond_1

    .line 255
    new-instance v1, Lcom/redbend/vdm/VdmException;

    invoke-static {v0}, Lcom/redbend/vdm/VdmException$VdmError;->fromInt(I)Lcom/redbend/vdm/VdmException$VdmError;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/redbend/vdm/VdmException;-><init>(Lcom/redbend/vdm/VdmException$VdmError;)V

    throw v1

    .line 257
    :cond_1
    return-void
.end method

.method public addLeafNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 7
    .parameter "nodeUri"
    .parameter "format"
    .parameter "type"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 202
    if-nez p1, :cond_0

    .line 203
    new-instance v0, Lcom/redbend/vdm/VdmException;

    sget-object v1, Lcom/redbend/vdm/VdmException$VdmError;->INVALID_INPUT_PARAM:Lcom/redbend/vdm/VdmException$VdmError;

    invoke-direct {v0, v1}, Lcom/redbend/vdm/VdmException;-><init>(Lcom/redbend/vdm/VdmException$VdmError;)V

    throw v0

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/redbend/vdm/VdmTree;->_proxy:Lcom/redbend/vdm/VdmTreeProxy;

    if-nez p4, :cond_1

    const/4 v5, 0x0

    :goto_0
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/redbend/vdm/VdmTreeProxy;->addLeafNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BI)I

    move-result v6

    .line 206
    .local v6, result:I
    if-eqz v6, :cond_2

    .line 207
    new-instance v0, Lcom/redbend/vdm/VdmException;

    invoke-static {v6}, Lcom/redbend/vdm/VdmException$VdmError;->fromInt(I)Lcom/redbend/vdm/VdmException$VdmError;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/redbend/vdm/VdmException;-><init>(Lcom/redbend/vdm/VdmException$VdmError;)V

    throw v0

    .line 205
    .end local v6           #result:I
    :cond_1
    array-length v5, p4

    goto :goto_0

    .line 209
    .restart local v6       #result:I
    :cond_2
    return-void
.end method

.method public deleteNode(Ljava/lang/String;)V
    .locals 3
    .parameter "nodeUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 292
    if-nez p1, :cond_0

    .line 293
    new-instance v1, Lcom/redbend/vdm/VdmException;

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->INVALID_INPUT_PARAM:Lcom/redbend/vdm/VdmException$VdmError;

    invoke-direct {v1, v2}, Lcom/redbend/vdm/VdmException;-><init>(Lcom/redbend/vdm/VdmException$VdmError;)V

    throw v1

    .line 295
    :cond_0
    iget-object v1, p0, Lcom/redbend/vdm/VdmTree;->_proxy:Lcom/redbend/vdm/VdmTreeProxy;

    invoke-virtual {v1, p1}, Lcom/redbend/vdm/VdmTreeProxy;->deleteNode(Ljava/lang/String;)I

    move-result v0

    .line 296
    .local v0, result:I
    if-eqz v0, :cond_1

    .line 297
    new-instance v1, Lcom/redbend/vdm/VdmException;

    invoke-static {v0}, Lcom/redbend/vdm/VdmException$VdmError;->fromInt(I)Lcom/redbend/vdm/VdmException$VdmError;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/redbend/vdm/VdmException;-><init>(Lcom/redbend/vdm/VdmException$VdmError;)V

    throw v1

    .line 299
    :cond_1
    return-void
.end method

.method public getACL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "nodeUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 622
    if-nez p1, :cond_0

    .line 623
    new-instance v0, Lcom/redbend/vdm/VdmException;

    sget-object v1, Lcom/redbend/vdm/VdmException$VdmError;->INVALID_INPUT_PARAM:Lcom/redbend/vdm/VdmException$VdmError;

    invoke-direct {v0, v1}, Lcom/redbend/vdm/VdmException;-><init>(Lcom/redbend/vdm/VdmException$VdmError;)V

    throw v0

    .line 625
    :cond_0
    iget-object v0, p0, Lcom/redbend/vdm/VdmTree;->_proxy:Lcom/redbend/vdm/VdmTreeProxy;

    invoke-virtual {v0, p1}, Lcom/redbend/vdm/VdmTreeProxy;->getACL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBinValue(Ljava/lang/String;[B)I
    .locals 2
    .parameter "nodeUri"
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 164
    if-nez p1, :cond_0

    .line 165
    new-instance v0, Lcom/redbend/vdm/VdmException;

    sget-object v1, Lcom/redbend/vdm/VdmException$VdmError;->INVALID_INPUT_PARAM:Lcom/redbend/vdm/VdmException$VdmError;

    invoke-direct {v0, v1}, Lcom/redbend/vdm/VdmException;-><init>(Lcom/redbend/vdm/VdmException$VdmError;)V

    throw v0

    .line 167
    :cond_0
    iget-object v1, p0, Lcom/redbend/vdm/VdmTree;->_proxy:Lcom/redbend/vdm/VdmTreeProxy;

    if-nez p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, p1, p2, v0}, Lcom/redbend/vdm/VdmTreeProxy;->getBinValue(Ljava/lang/String;[BI)I

    move-result v0

    return v0

    :cond_1
    array-length v0, p2

    goto :goto_0
.end method

.method public getBoolValue(Ljava/lang/String;)Z
    .locals 2
    .parameter "nodeUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 126
    if-nez p1, :cond_0

    .line 127
    new-instance v0, Lcom/redbend/vdm/VdmException;

    sget-object v1, Lcom/redbend/vdm/VdmException$VdmError;->INVALID_INPUT_PARAM:Lcom/redbend/vdm/VdmException$VdmError;

    invoke-direct {v0, v1}, Lcom/redbend/vdm/VdmException;-><init>(Lcom/redbend/vdm/VdmException$VdmError;)V

    throw v0

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/redbend/vdm/VdmTree;->_proxy:Lcom/redbend/vdm/VdmTreeProxy;

    invoke-virtual {v0, p1}, Lcom/redbend/vdm/VdmTreeProxy;->getBoolValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getExternalNodeUri()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 585
    iget-object v0, p0, Lcom/redbend/vdm/VdmTree;->_proxy:Lcom/redbend/vdm/VdmTreeProxy;

    invoke-virtual {v0}, Lcom/redbend/vdm/VdmTreeProxy;->getExternalNodeUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntValue(Ljava/lang/String;)I
    .locals 2
    .parameter "nodeUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 92
    if-nez p1, :cond_0

    .line 93
    new-instance v0, Lcom/redbend/vdm/VdmException;

    sget-object v1, Lcom/redbend/vdm/VdmException$VdmError;->INVALID_INPUT_PARAM:Lcom/redbend/vdm/VdmException$VdmError;

    invoke-direct {v0, v1}, Lcom/redbend/vdm/VdmException;-><init>(Lcom/redbend/vdm/VdmException$VdmError;)V

    throw v0

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/redbend/vdm/VdmTree;->_proxy:Lcom/redbend/vdm/VdmTreeProxy;

    invoke-virtual {v0, p1}, Lcom/redbend/vdm/VdmTreeProxy;->getIntValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "nodeUri"
    .parameter "propertyName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 642
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 643
    :cond_0
    new-instance v0, Lcom/redbend/vdm/VdmException;

    sget-object v1, Lcom/redbend/vdm/VdmException$VdmError;->INVALID_INPUT_PARAM:Lcom/redbend/vdm/VdmException$VdmError;

    invoke-direct {v0, v1}, Lcom/redbend/vdm/VdmException;-><init>(Lcom/redbend/vdm/VdmException$VdmError;)V

    throw v0

    .line 645
    :cond_1
    iget-object v0, p0, Lcom/redbend/vdm/VdmTree;->_proxy:Lcom/redbend/vdm/VdmTreeProxy;

    invoke-virtual {v0, p1, p2}, Lcom/redbend/vdm/VdmTreeProxy;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "nodeUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 58
    if-nez p1, :cond_0

    .line 59
    new-instance v0, Lcom/redbend/vdm/VdmException;

    sget-object v1, Lcom/redbend/vdm/VdmException$VdmError;->INVALID_INPUT_PARAM:Lcom/redbend/vdm/VdmException$VdmError;

    invoke-direct {v0, v1}, Lcom/redbend/vdm/VdmException;-><init>(Lcom/redbend/vdm/VdmException$VdmError;)V

    throw v0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/redbend/vdm/VdmTree;->_proxy:Lcom/redbend/vdm/VdmTreeProxy;

    invoke-virtual {v0, p1}, Lcom/redbend/vdm/VdmTreeProxy;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public registerAdd(Ljava/lang/String;Lcom/redbend/vdm/NodeAddHandler;)V
    .locals 3
    .parameter "nodeUri"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 433
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 434
    :cond_0
    new-instance v1, Lcom/redbend/vdm/VdmException;

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->INVALID_INPUT_PARAM:Lcom/redbend/vdm/VdmException$VdmError;

    invoke-direct {v1, v2}, Lcom/redbend/vdm/VdmException;-><init>(Lcom/redbend/vdm/VdmException$VdmError;)V

    throw v1

    .line 436
    :cond_1
    iget-object v1, p0, Lcom/redbend/vdm/VdmTree;->_proxy:Lcom/redbend/vdm/VdmTreeProxy;

    invoke-virtual {v1, p1, p2}, Lcom/redbend/vdm/VdmTreeProxy;->registerAdd(Ljava/lang/String;Lcom/redbend/vdm/NodeAddHandler;)I

    move-result v0

    .line 437
    .local v0, result:I
    if-eqz v0, :cond_2

    .line 438
    new-instance v1, Lcom/redbend/vdm/VdmException;

    invoke-static {v0}, Lcom/redbend/vdm/VdmException$VdmError;->fromInt(I)Lcom/redbend/vdm/VdmException$VdmError;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/redbend/vdm/VdmException;-><init>(Lcom/redbend/vdm/VdmException$VdmError;)V

    throw v1

    .line 440
    :cond_2
    return-void
.end method

.method public registerAddSubTree(Ljava/lang/String;Lcom/redbend/vdm/NodeAddHandler;)V
    .locals 3
    .parameter "nodeUri"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 471
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 472
    :cond_0
    new-instance v1, Lcom/redbend/vdm/VdmException;

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->INVALID_INPUT_PARAM:Lcom/redbend/vdm/VdmException$VdmError;

    invoke-direct {v1, v2}, Lcom/redbend/vdm/VdmException;-><init>(Lcom/redbend/vdm/VdmException$VdmError;)V

    throw v1

    .line 474
    :cond_1
    iget-object v1, p0, Lcom/redbend/vdm/VdmTree;->_proxy:Lcom/redbend/vdm/VdmTreeProxy;

    invoke-virtual {v1, p1, p2}, Lcom/redbend/vdm/VdmTreeProxy;->registerAddSubTree(Ljava/lang/String;Lcom/redbend/vdm/NodeAddHandler;)I

    move-result v0

    .line 475
    .local v0, result:I
    if-eqz v0, :cond_2

    .line 476
    new-instance v1, Lcom/redbend/vdm/VdmException;

    invoke-static {v0}, Lcom/redbend/vdm/VdmException$VdmError;->fromInt(I)Lcom/redbend/vdm/VdmException$VdmError;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/redbend/vdm/VdmException;-><init>(Lcom/redbend/vdm/VdmException$VdmError;)V

    throw v1

    .line 478
    :cond_2
    return-void
.end method

.method public registerDelete(Ljava/lang/String;Lcom/redbend/vdm/NodeDeleteHandler;)V
    .locals 3
    .parameter "nodeUri"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 510
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 511
    :cond_0
    new-instance v1, Lcom/redbend/vdm/VdmException;

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->INVALID_INPUT_PARAM:Lcom/redbend/vdm/VdmException$VdmError;

    invoke-direct {v1, v2}, Lcom/redbend/vdm/VdmException;-><init>(Lcom/redbend/vdm/VdmException$VdmError;)V

    throw v1

    .line 513
    :cond_1
    iget-object v1, p0, Lcom/redbend/vdm/VdmTree;->_proxy:Lcom/redbend/vdm/VdmTreeProxy;

    invoke-virtual {v1, p1, p2}, Lcom/redbend/vdm/VdmTreeProxy;->registerDelete(Ljava/lang/String;Lcom/redbend/vdm/NodeDeleteHandler;)I

    move-result v0

    .line 514
    .local v0, result:I
    if-eqz v0, :cond_2

    .line 515
    new-instance v1, Lcom/redbend/vdm/VdmException;

    invoke-static {v0}, Lcom/redbend/vdm/VdmException$VdmError;->fromInt(I)Lcom/redbend/vdm/VdmException$VdmError;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/redbend/vdm/VdmException;-><init>(Lcom/redbend/vdm/VdmException$VdmError;)V

    throw v1

    .line 517
    :cond_2
    return-void
.end method

.method public registerDeleteSubTree(Ljava/lang/String;Lcom/redbend/vdm/NodeDeleteHandler;)V
    .locals 3
    .parameter "nodeUri"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 549
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 550
    :cond_0
    new-instance v1, Lcom/redbend/vdm/VdmException;

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->INVALID_INPUT_PARAM:Lcom/redbend/vdm/VdmException$VdmError;

    invoke-direct {v1, v2}, Lcom/redbend/vdm/VdmException;-><init>(Lcom/redbend/vdm/VdmException$VdmError;)V

    throw v1

    .line 552
    :cond_1
    iget-object v1, p0, Lcom/redbend/vdm/VdmTree;->_proxy:Lcom/redbend/vdm/VdmTreeProxy;

    invoke-virtual {v1, p1, p2}, Lcom/redbend/vdm/VdmTreeProxy;->registerDeleteSubTree(Ljava/lang/String;Lcom/redbend/vdm/NodeDeleteHandler;)I

    move-result v0

    .line 553
    .local v0, result:I
    if-eqz v0, :cond_2

    .line 554
    new-instance v1, Lcom/redbend/vdm/VdmException;

    invoke-static {v0}, Lcom/redbend/vdm/VdmException$VdmError;->fromInt(I)Lcom/redbend/vdm/VdmException$VdmError;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/redbend/vdm/VdmException;-><init>(Lcom/redbend/vdm/VdmException$VdmError;)V

    throw v1

    .line 556
    :cond_2
    return-void
.end method

.method public registerExecute(Ljava/lang/String;Lcom/redbend/vdm/NodeExecuteHandler;)V
    .locals 3
    .parameter "nodeUri"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 395
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 396
    :cond_0
    new-instance v1, Lcom/redbend/vdm/VdmException;

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->INVALID_INPUT_PARAM:Lcom/redbend/vdm/VdmException$VdmError;

    invoke-direct {v1, v2}, Lcom/redbend/vdm/VdmException;-><init>(Lcom/redbend/vdm/VdmException$VdmError;)V

    throw v1

    .line 398
    :cond_1
    iget-object v1, p0, Lcom/redbend/vdm/VdmTree;->_proxy:Lcom/redbend/vdm/VdmTreeProxy;

    invoke-virtual {v1, p1, p2}, Lcom/redbend/vdm/VdmTreeProxy;->registerExecute(Ljava/lang/String;Lcom/redbend/vdm/NodeExecuteHandler;)I

    move-result v0

    .line 399
    .local v0, result:I
    if-eqz v0, :cond_2

    .line 400
    new-instance v1, Lcom/redbend/vdm/VdmException;

    invoke-static {v0}, Lcom/redbend/vdm/VdmException$VdmError;->fromInt(I)Lcom/redbend/vdm/VdmException$VdmError;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/redbend/vdm/VdmException;-><init>(Lcom/redbend/vdm/VdmException$VdmError;)V

    throw v1

    .line 402
    :cond_2
    return-void
.end method

.method public registerNodeIoHandler(Ljava/lang/String;Lcom/redbend/vdm/NodeIoHandler;)V
    .locals 3
    .parameter "nodeUri"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 316
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 317
    :cond_0
    new-instance v1, Lcom/redbend/vdm/VdmException;

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->INVALID_INPUT_PARAM:Lcom/redbend/vdm/VdmException$VdmError;

    invoke-direct {v1, v2}, Lcom/redbend/vdm/VdmException;-><init>(Lcom/redbend/vdm/VdmException$VdmError;)V

    throw v1

    .line 319
    :cond_1
    iget-object v1, p0, Lcom/redbend/vdm/VdmTree;->_proxy:Lcom/redbend/vdm/VdmTreeProxy;

    invoke-virtual {v1, p1, p2}, Lcom/redbend/vdm/VdmTreeProxy;->registerNodeIoHandler(Ljava/lang/String;Lcom/redbend/vdm/NodeIoHandler;)I

    move-result v0

    .line 320
    .local v0, result:I
    if-eqz v0, :cond_2

    .line 321
    new-instance v1, Lcom/redbend/vdm/VdmException;

    invoke-static {v0}, Lcom/redbend/vdm/VdmException$VdmError;->fromInt(I)Lcom/redbend/vdm/VdmException$VdmError;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/redbend/vdm/VdmException;-><init>(Lcom/redbend/vdm/VdmException$VdmError;)V

    throw v1

    .line 323
    :cond_2
    return-void
.end method

.method public registerPreExecNotify(Lcom/redbend/vdm/NodePreExecuteHandler;)V
    .locals 1
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 690
    iget-object v0, p0, Lcom/redbend/vdm/VdmTree;->_proxy:Lcom/redbend/vdm/VdmTreeProxy;

    invoke-virtual {v0, p1}, Lcom/redbend/vdm/VdmTreeProxy;->registerPreExecNotify(Lcom/redbend/vdm/NodePreExecuteHandler;)V

    .line 691
    return-void
.end method

.method public registerSubTreeIoHandler(Ljava/lang/String;Lcom/redbend/vdm/NodeIoHandler;)V
    .locals 3
    .parameter "nodeUri"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 356
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 357
    :cond_0
    new-instance v1, Lcom/redbend/vdm/VdmException;

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->INVALID_INPUT_PARAM:Lcom/redbend/vdm/VdmException$VdmError;

    invoke-direct {v1, v2}, Lcom/redbend/vdm/VdmException;-><init>(Lcom/redbend/vdm/VdmException$VdmError;)V

    throw v1

    .line 359
    :cond_1
    iget-object v1, p0, Lcom/redbend/vdm/VdmTree;->_proxy:Lcom/redbend/vdm/VdmTreeProxy;

    invoke-virtual {v1, p1, p2}, Lcom/redbend/vdm/VdmTreeProxy;->registerSubTreeIoHandler(Ljava/lang/String;Lcom/redbend/vdm/NodeIoHandler;)I

    move-result v0

    .line 360
    .local v0, result:I
    if-eqz v0, :cond_2

    .line 361
    new-instance v1, Lcom/redbend/vdm/VdmException;

    invoke-static {v0}, Lcom/redbend/vdm/VdmException$VdmError;->fromInt(I)Lcom/redbend/vdm/VdmException$VdmError;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/redbend/vdm/VdmException;-><init>(Lcom/redbend/vdm/VdmException$VdmError;)V

    throw v1

    .line 363
    :cond_2
    return-void
.end method

.method public replaceACL(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "nodeUri"
    .parameter "newAcl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 602
    if-nez p1, :cond_0

    .line 603
    new-instance v0, Lcom/redbend/vdm/VdmException;

    sget-object v1, Lcom/redbend/vdm/VdmException$VdmError;->INVALID_INPUT_PARAM:Lcom/redbend/vdm/VdmException$VdmError;

    invoke-direct {v0, v1}, Lcom/redbend/vdm/VdmException;-><init>(Lcom/redbend/vdm/VdmException$VdmError;)V

    throw v0

    .line 605
    :cond_0
    iget-object v0, p0, Lcom/redbend/vdm/VdmTree;->_proxy:Lcom/redbend/vdm/VdmTreeProxy;

    invoke-virtual {v0, p1, p2}, Lcom/redbend/vdm/VdmTreeProxy;->replaceACL(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    return-void
.end method

.method public replaceBinValue(Ljava/lang/String;[B)V
    .locals 2
    .parameter "nodeUri"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 180
    if-nez p1, :cond_0

    .line 181
    new-instance v0, Lcom/redbend/vdm/VdmException;

    sget-object v1, Lcom/redbend/vdm/VdmException$VdmError;->INVALID_INPUT_PARAM:Lcom/redbend/vdm/VdmException$VdmError;

    invoke-direct {v0, v1}, Lcom/redbend/vdm/VdmException;-><init>(Lcom/redbend/vdm/VdmException$VdmError;)V

    throw v0

    .line 183
    :cond_0
    iget-object v1, p0, Lcom/redbend/vdm/VdmTree;->_proxy:Lcom/redbend/vdm/VdmTreeProxy;

    if-nez p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, p1, p2, v0}, Lcom/redbend/vdm/VdmTreeProxy;->replaceBinValue(Ljava/lang/String;[BI)V

    .line 184
    return-void

    .line 183
    :cond_1
    array-length v0, p2

    goto :goto_0
.end method

.method public replaceBoolValue(Ljava/lang/String;Z)V
    .locals 2
    .parameter "nodeUri"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 142
    if-nez p1, :cond_0

    .line 143
    new-instance v0, Lcom/redbend/vdm/VdmException;

    sget-object v1, Lcom/redbend/vdm/VdmException$VdmError;->INVALID_INPUT_PARAM:Lcom/redbend/vdm/VdmException$VdmError;

    invoke-direct {v0, v1}, Lcom/redbend/vdm/VdmException;-><init>(Lcom/redbend/vdm/VdmException$VdmError;)V

    throw v0

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/redbend/vdm/VdmTree;->_proxy:Lcom/redbend/vdm/VdmTreeProxy;

    invoke-virtual {v0, p1, p2}, Lcom/redbend/vdm/VdmTreeProxy;->replaceBoolValue(Ljava/lang/String;Z)V

    .line 146
    return-void
.end method

.method public replaceIntValue(Ljava/lang/String;I)V
    .locals 2
    .parameter "nodeUri"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 108
    if-nez p1, :cond_0

    .line 109
    new-instance v0, Lcom/redbend/vdm/VdmException;

    sget-object v1, Lcom/redbend/vdm/VdmException$VdmError;->INVALID_INPUT_PARAM:Lcom/redbend/vdm/VdmException$VdmError;

    invoke-direct {v0, v1}, Lcom/redbend/vdm/VdmException;-><init>(Lcom/redbend/vdm/VdmException$VdmError;)V

    throw v0

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/redbend/vdm/VdmTree;->_proxy:Lcom/redbend/vdm/VdmTreeProxy;

    invoke-virtual {v0, p1, p2}, Lcom/redbend/vdm/VdmTreeProxy;->replaceIntValue(Ljava/lang/String;I)V

    .line 112
    return-void
.end method

.method public replaceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "nodeUri"
    .parameter "propertyName"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 663
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 664
    :cond_0
    new-instance v0, Lcom/redbend/vdm/VdmException;

    sget-object v1, Lcom/redbend/vdm/VdmException$VdmError;->INVALID_INPUT_PARAM:Lcom/redbend/vdm/VdmException$VdmError;

    invoke-direct {v0, v1}, Lcom/redbend/vdm/VdmException;-><init>(Lcom/redbend/vdm/VdmException$VdmError;)V

    throw v0

    .line 665
    :cond_1
    iget-object v0, p0, Lcom/redbend/vdm/VdmTree;->_proxy:Lcom/redbend/vdm/VdmTreeProxy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/redbend/vdm/VdmTreeProxy;->replaceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    return-void
.end method

.method public replaceStringValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "nodeUri"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 74
    if-nez p1, :cond_0

    .line 75
    new-instance v0, Lcom/redbend/vdm/VdmException;

    sget-object v1, Lcom/redbend/vdm/VdmException$VdmError;->INVALID_INPUT_PARAM:Lcom/redbend/vdm/VdmException$VdmError;

    invoke-direct {v0, v1}, Lcom/redbend/vdm/VdmException;-><init>(Lcom/redbend/vdm/VdmException$VdmError;)V

    throw v0

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/redbend/vdm/VdmTree;->_proxy:Lcom/redbend/vdm/VdmTreeProxy;

    invoke-virtual {v0, p1, p2}, Lcom/redbend/vdm/VdmTreeProxy;->replaceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public unregisterAdd(Lcom/redbend/vdm/NodeAddHandler;)V
    .locals 3
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 452
    iget-object v1, p0, Lcom/redbend/vdm/VdmTree;->_proxy:Lcom/redbend/vdm/VdmTreeProxy;

    invoke-virtual {v1, p1}, Lcom/redbend/vdm/VdmTreeProxy;->unregisterAdd(Lcom/redbend/vdm/NodeAddHandler;)I

    move-result v0

    .line 453
    .local v0, result:I
    if-eqz v0, :cond_0

    .line 454
    new-instance v1, Lcom/redbend/vdm/VdmException;

    invoke-static {v0}, Lcom/redbend/vdm/VdmException$VdmError;->fromInt(I)Lcom/redbend/vdm/VdmException$VdmError;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/redbend/vdm/VdmException;-><init>(Lcom/redbend/vdm/VdmException$VdmError;)V

    throw v1

    .line 456
    :cond_0
    return-void
.end method

.method public unregisterAddSubTree(Lcom/redbend/vdm/NodeAddHandler;)V
    .locals 3
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 490
    iget-object v1, p0, Lcom/redbend/vdm/VdmTree;->_proxy:Lcom/redbend/vdm/VdmTreeProxy;

    invoke-virtual {v1, p1}, Lcom/redbend/vdm/VdmTreeProxy;->unregisterAddSubTree(Lcom/redbend/vdm/NodeAddHandler;)I

    move-result v0

    .line 491
    .local v0, result:I
    if-eqz v0, :cond_0

    .line 492
    new-instance v1, Lcom/redbend/vdm/VdmException;

    invoke-static {v0}, Lcom/redbend/vdm/VdmException$VdmError;->fromInt(I)Lcom/redbend/vdm/VdmException$VdmError;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/redbend/vdm/VdmException;-><init>(Lcom/redbend/vdm/VdmException$VdmError;)V

    throw v1

    .line 494
    :cond_0
    return-void
.end method

.method public unregisterDelete(Lcom/redbend/vdm/NodeDeleteHandler;)V
    .locals 3
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 529
    iget-object v1, p0, Lcom/redbend/vdm/VdmTree;->_proxy:Lcom/redbend/vdm/VdmTreeProxy;

    invoke-virtual {v1, p1}, Lcom/redbend/vdm/VdmTreeProxy;->unregisterDelete(Lcom/redbend/vdm/NodeDeleteHandler;)I

    move-result v0

    .line 530
    .local v0, result:I
    if-eqz v0, :cond_0

    .line 531
    new-instance v1, Lcom/redbend/vdm/VdmException;

    invoke-static {v0}, Lcom/redbend/vdm/VdmException$VdmError;->fromInt(I)Lcom/redbend/vdm/VdmException$VdmError;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/redbend/vdm/VdmException;-><init>(Lcom/redbend/vdm/VdmException$VdmError;)V

    throw v1

    .line 533
    :cond_0
    return-void
.end method

.method public unregisterDeleteSubTree(Lcom/redbend/vdm/NodeDeleteHandler;)V
    .locals 3
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 568
    iget-object v1, p0, Lcom/redbend/vdm/VdmTree;->_proxy:Lcom/redbend/vdm/VdmTreeProxy;

    invoke-virtual {v1, p1}, Lcom/redbend/vdm/VdmTreeProxy;->unregisterDeleteSubTree(Lcom/redbend/vdm/NodeDeleteHandler;)I

    move-result v0

    .line 569
    .local v0, result:I
    if-eqz v0, :cond_0

    .line 570
    new-instance v1, Lcom/redbend/vdm/VdmException;

    invoke-static {v0}, Lcom/redbend/vdm/VdmException$VdmError;->fromInt(I)Lcom/redbend/vdm/VdmException$VdmError;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/redbend/vdm/VdmException;-><init>(Lcom/redbend/vdm/VdmException$VdmError;)V

    throw v1

    .line 572
    :cond_0
    return-void
.end method

.method public unregisterExecute(Lcom/redbend/vdm/NodeExecuteHandler;)V
    .locals 3
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 414
    iget-object v1, p0, Lcom/redbend/vdm/VdmTree;->_proxy:Lcom/redbend/vdm/VdmTreeProxy;

    invoke-virtual {v1, p1}, Lcom/redbend/vdm/VdmTreeProxy;->unregisterExecute(Lcom/redbend/vdm/NodeExecuteHandler;)I

    move-result v0

    .line 415
    .local v0, result:I
    if-eqz v0, :cond_0

    .line 416
    new-instance v1, Lcom/redbend/vdm/VdmException;

    invoke-static {v0}, Lcom/redbend/vdm/VdmException$VdmError;->fromInt(I)Lcom/redbend/vdm/VdmException$VdmError;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/redbend/vdm/VdmException;-><init>(Lcom/redbend/vdm/VdmException$VdmError;)V

    throw v1

    .line 418
    :cond_0
    return-void
.end method

.method public unregisterNodeIoHandler(Lcom/redbend/vdm/NodeIoHandler;)V
    .locals 3
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 335
    iget-object v1, p0, Lcom/redbend/vdm/VdmTree;->_proxy:Lcom/redbend/vdm/VdmTreeProxy;

    invoke-virtual {v1, p1}, Lcom/redbend/vdm/VdmTreeProxy;->unregisterNodeIoHandler(Lcom/redbend/vdm/NodeIoHandler;)I

    move-result v0

    .line 336
    .local v0, result:I
    if-eqz v0, :cond_0

    .line 337
    new-instance v1, Lcom/redbend/vdm/VdmException;

    invoke-static {v0}, Lcom/redbend/vdm/VdmException$VdmError;->fromInt(I)Lcom/redbend/vdm/VdmException$VdmError;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/redbend/vdm/VdmException;-><init>(Lcom/redbend/vdm/VdmException$VdmError;)V

    throw v1

    .line 339
    :cond_0
    return-void
.end method

.method public unregisterSubTreeIoHandler(Lcom/redbend/vdm/NodeIoHandler;)V
    .locals 3
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 375
    iget-object v1, p0, Lcom/redbend/vdm/VdmTree;->_proxy:Lcom/redbend/vdm/VdmTreeProxy;

    invoke-virtual {v1, p1}, Lcom/redbend/vdm/VdmTreeProxy;->unregisterSubTreeIoHandler(Lcom/redbend/vdm/NodeIoHandler;)I

    move-result v0

    .line 376
    .local v0, result:I
    if-eqz v0, :cond_0

    .line 377
    new-instance v1, Lcom/redbend/vdm/VdmException;

    invoke-static {v0}, Lcom/redbend/vdm/VdmException$VdmError;->fromInt(I)Lcom/redbend/vdm/VdmException$VdmError;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/redbend/vdm/VdmException;-><init>(Lcom/redbend/vdm/VdmException$VdmError;)V

    throw v1

    .line 379
    :cond_0
    return-void
.end method

.method public writeToPersistentStorage()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 674
    iget-object v1, p0, Lcom/redbend/vdm/VdmTree;->_proxy:Lcom/redbend/vdm/VdmTreeProxy;

    invoke-virtual {v1}, Lcom/redbend/vdm/VdmTreeProxy;->writeToPersistentStorage()I

    move-result v0

    .line 675
    .local v0, result:I
    if-eqz v0, :cond_0

    .line 676
    new-instance v1, Lcom/redbend/vdm/VdmException;

    invoke-static {v0}, Lcom/redbend/vdm/VdmException$VdmError;->fromInt(I)Lcom/redbend/vdm/VdmException$VdmError;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/redbend/vdm/VdmException;-><init>(Lcom/redbend/vdm/VdmException$VdmError;)V

    throw v1

    .line 678
    :cond_0
    return-void
.end method
