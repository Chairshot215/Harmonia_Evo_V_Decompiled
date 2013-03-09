.class Lcom/redbend/vdm/VdmTreeProxy;
.super Ljava/lang/Object;
.source "VdmTreeProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/redbend/vdm/VdmTreeProxy$NodeHandler;
    }
.end annotation


# static fields
.field private static final VDM_ERR_OK:I

.field private static _instance:Lcom/redbend/vdm/VdmTreeProxy;

.field private static curId:I


# instance fields
.field _handlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/redbend/vdm/VdmTreeProxy$NodeHandler;",
            ">;"
        }
    .end annotation
.end field

.field private _preExecHandler:Lcom/redbend/vdm/NodePreExecuteHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Lcom/redbend/vdm/VdmTreeProxy;->initIDs()V

    .line 289
    const/4 v0, 0x0

    sput-object v0, Lcom/redbend/vdm/VdmTreeProxy;->_instance:Lcom/redbend/vdm/VdmTreeProxy;

    .line 290
    const/4 v0, 0x0

    sput v0, Lcom/redbend/vdm/VdmTreeProxy;->curId:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/redbend/vdm/VdmTreeProxy;->_handlers:Ljava/util/ArrayList;

    .line 16
    invoke-direct {p0}, Lcom/redbend/vdm/VdmTreeProxy;->initInstance()V

    .line 17
    return-void
.end method

.method private native _registerAdd(Ljava/lang/String;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation
.end method

.method private native _registerAddSubTree(Ljava/lang/String;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation
.end method

.method private native _registerDelete(Ljava/lang/String;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation
.end method

.method private native _registerDeleteSubTree(Ljava/lang/String;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation
.end method

.method private native _registerExecute(Ljava/lang/String;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation
.end method

.method private native _registerNodeIoHandler(Ljava/lang/String;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation
.end method

.method private native _registerSubTreeIoHandler(Ljava/lang/String;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation
.end method

.method public static declared-synchronized getInstance()Lcom/redbend/vdm/VdmTreeProxy;
    .locals 2

    .prologue
    .line 24
    const-class v1, Lcom/redbend/vdm/VdmTreeProxy;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/redbend/vdm/VdmTreeProxy;->_instance:Lcom/redbend/vdm/VdmTreeProxy;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/redbend/vdm/VdmTreeProxy;

    invoke-direct {v0}, Lcom/redbend/vdm/VdmTreeProxy;-><init>()V

    sput-object v0, Lcom/redbend/vdm/VdmTreeProxy;->_instance:Lcom/redbend/vdm/VdmTreeProxy;

    .line 27
    :cond_0
    sget-object v0, Lcom/redbend/vdm/VdmTreeProxy;->_instance:Lcom/redbend/vdm/VdmTreeProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native initIDs()V
.end method

.method private native initInstance()V
.end method


# virtual methods
.method public native _registerPreExecNotify()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation
.end method

.method public native addChildLeafNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation
.end method

.method public native addInteriorChildNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation
.end method

.method public native addInteriorNode(Ljava/lang/String;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation
.end method

.method public native addLeafNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation
.end method

.method public native deleteNode(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/redbend/vdm/VdmTreeProxy;->terminate()V

    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/redbend/vdm/VdmTreeProxy;->_instance:Lcom/redbend/vdm/VdmTreeProxy;

    .line 39
    return-void
.end method

.method public find(I)Ljava/lang/Object;
    .locals 3
    .parameter "id"

    .prologue
    .line 268
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/redbend/vdm/VdmTreeProxy;->_handlers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 269
    iget-object v2, p0, Lcom/redbend/vdm/VdmTreeProxy;->_handlers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/redbend/vdm/VdmTreeProxy$NodeHandler;

    .line 270
    .local v1, nh:Lcom/redbend/vdm/VdmTreeProxy$NodeHandler;
    iget v2, v1, Lcom/redbend/vdm/VdmTreeProxy$NodeHandler;->_id:I

    if-ne v2, p1, :cond_0

    .line 271
    iget-object v2, v1, Lcom/redbend/vdm/VdmTreeProxy$NodeHandler;->_obj:Ljava/lang/Object;

    .line 274
    .end local v1           #nh:Lcom/redbend/vdm/VdmTreeProxy$NodeHandler;
    :goto_1
    return-object v2

    .line 268
    .restart local v1       #nh:Lcom/redbend/vdm/VdmTreeProxy$NodeHandler;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 274
    .end local v1           #nh:Lcom/redbend/vdm/VdmTreeProxy$NodeHandler;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public native getACL(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation
.end method

.method public native getBinValue(Ljava/lang/String;[BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation
.end method

.method public native getBoolValue(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation
.end method

.method public native getExternalNodeUri()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation
.end method

.method public native getIntValue(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation
.end method

.method public native getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation
.end method

.method public native getStringValue(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation
.end method

.method public onExecuteNode(I[BLjava/lang/String;)I
    .locals 4
    .parameter "id"
    .parameter "buffer"
    .parameter "correlator"

    .prologue
    .line 207
    const/4 v1, 0x0

    .line 208
    .local v1, error:I
    invoke-virtual {p0, p1}, Lcom/redbend/vdm/VdmTreeProxy;->find(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/redbend/vdm/NodeExecuteHandler;

    .line 209
    .local v2, handler:Lcom/redbend/vdm/NodeExecuteHandler;
    if-eqz v2, :cond_1

    .line 211
    :try_start_0
    invoke-interface {v2, p2, p3}, Lcom/redbend/vdm/NodeExecuteHandler;->execute([BLjava/lang/String;)I
    :try_end_0
    .catch Lcom/redbend/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 212
    const/16 v3, 0xca

    if-ne v1, v3, :cond_0

    .line 213
    const/4 v1, 0x0

    .line 215
    :cond_0
    if-eqz v1, :cond_1

    .line 216
    add-int/lit16 v1, v1, 0x3000

    .line 223
    :cond_1
    :goto_0
    return v1

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, e:Lcom/redbend/vdm/VdmException;
    invoke-virtual {v0}, Lcom/redbend/vdm/VdmException;->getError()Lcom/redbend/vdm/VdmException$VdmError;

    move-result-object v3

    iget v1, v3, Lcom/redbend/vdm/VdmException$VdmError;->val:I

    goto :goto_0
.end method

.method public onNodeAdded(I[BIILjava/lang/String;Ljava/lang/String;I)I
    .locals 10
    .parameter "id"
    .parameter "buffer"
    .parameter "offset"
    .parameter "total"
    .parameter "format"
    .parameter "nodeUri"
    .parameter "phase"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 241
    const/16 v9, 0x7f

    .line 242
    .local v9, dfProperties:I
    invoke-virtual {p0, p1}, Lcom/redbend/vdm/VdmTreeProxy;->find(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/redbend/vdm/NodeAddHandler;

    .line 244
    .local v0, handler:Lcom/redbend/vdm/NodeAddHandler;
    if-eqz v0, :cond_0

    .line 245
    int-to-long v2, p3

    int-to-long v4, p4

    move-object v1, p2

    move-object v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-interface/range {v0 .. v8}, Lcom/redbend/vdm/NodeAddHandler;->add([BJJLjava/lang/String;Ljava/lang/String;I)I

    move-result v9

    .line 247
    :cond_0
    return v9
.end method

.method public onNodeDeleted(ILjava/lang/String;)I
    .locals 4
    .parameter "id"
    .parameter "nodeUri"

    .prologue
    .line 227
    const/4 v1, 0x0

    .line 228
    .local v1, error:I
    invoke-virtual {p0, p1}, Lcom/redbend/vdm/VdmTreeProxy;->find(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/redbend/vdm/NodeDeleteHandler;

    .line 229
    .local v2, handler:Lcom/redbend/vdm/NodeDeleteHandler;
    if-eqz v2, :cond_0

    .line 231
    :try_start_0
    invoke-interface {v2, p2}, Lcom/redbend/vdm/NodeDeleteHandler;->delete(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/redbend/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :cond_0
    :goto_0
    return v1

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, e:Lcom/redbend/vdm/VdmException;
    invoke-virtual {v0}, Lcom/redbend/vdm/VdmException;->getError()Lcom/redbend/vdm/VdmException$VdmError;

    move-result-object v3

    iget v1, v3, Lcom/redbend/vdm/VdmException$VdmError;->val:I

    goto :goto_0
.end method

.method public onPreExecNode(Ljava/lang/String;)I
    .locals 1
    .parameter "nodeUri"

    .prologue
    .line 251
    iget-object v0, p0, Lcom/redbend/vdm/VdmTreeProxy;->_preExecHandler:Lcom/redbend/vdm/NodePreExecuteHandler;

    invoke-interface {v0, p1}, Lcom/redbend/vdm/NodePreExecuteHandler;->onPreExecuteNode(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onReadNode(I[BI[I)I
    .locals 5
    .parameter "id"
    .parameter "buffer"
    .parameter "offset"
    .parameter "bytesRead"

    .prologue
    .line 179
    const/4 v2, 0x0

    .line 180
    .local v2, result:I
    invoke-virtual {p0, p1}, Lcom/redbend/vdm/VdmTreeProxy;->find(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/redbend/vdm/NodeIoHandler;

    .line 181
    .local v1, handler:Lcom/redbend/vdm/NodeIoHandler;
    if-eqz v1, :cond_0

    .line 183
    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v1, p3, p2}, Lcom/redbend/vdm/NodeIoHandler;->read(I[B)I

    move-result v4

    aput v4, p4, v3
    :try_end_0
    .catch Lcom/redbend/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :cond_0
    :goto_0
    return v2

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, e:Lcom/redbend/vdm/VdmException;
    invoke-virtual {v0}, Lcom/redbend/vdm/VdmException;->getError()Lcom/redbend/vdm/VdmException$VdmError;

    move-result-object v3

    iget v2, v3, Lcom/redbend/vdm/VdmException$VdmError;->val:I

    goto :goto_0
.end method

.method public onWriteNode(I[BII)I
    .locals 4
    .parameter "id"
    .parameter "buffer"
    .parameter "offset"
    .parameter "total"

    .prologue
    .line 193
    const/4 v2, 0x0

    .line 194
    .local v2, result:I
    invoke-virtual {p0, p1}, Lcom/redbend/vdm/VdmTreeProxy;->find(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/redbend/vdm/NodeIoHandler;

    .line 195
    .local v1, handler:Lcom/redbend/vdm/NodeIoHandler;
    if-eqz v1, :cond_0

    .line 197
    :try_start_0
    invoke-interface {v1, p3, p2, p4}, Lcom/redbend/vdm/NodeIoHandler;->write(I[BI)V
    :try_end_0
    .catch Lcom/redbend/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :cond_0
    :goto_0
    return v2

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, e:Lcom/redbend/vdm/VdmException;
    invoke-virtual {v0}, Lcom/redbend/vdm/VdmException;->getError()Lcom/redbend/vdm/VdmException$VdmError;

    move-result-object v3

    iget v2, v3, Lcom/redbend/vdm/VdmException$VdmError;->val:I

    goto :goto_0
.end method

.method public registerAdd(Ljava/lang/String;Lcom/redbend/vdm/NodeAddHandler;)I
    .locals 4
    .parameter "nodeUri"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 82
    sget v1, Lcom/redbend/vdm/VdmTreeProxy;->curId:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/redbend/vdm/VdmTreeProxy;->curId:I

    invoke-direct {p0, p1, v1}, Lcom/redbend/vdm/VdmTreeProxy;->_registerAdd(Ljava/lang/String;I)I

    move-result v0

    .line 83
    .local v0, result:I
    if-nez v0, :cond_0

    .line 84
    iget-object v1, p0, Lcom/redbend/vdm/VdmTreeProxy;->_handlers:Ljava/util/ArrayList;

    new-instance v2, Lcom/redbend/vdm/VdmTreeProxy$NodeHandler;

    sget v3, Lcom/redbend/vdm/VdmTreeProxy;->curId:I

    invoke-direct {v2, p0, p1, p2, v3}, Lcom/redbend/vdm/VdmTreeProxy$NodeHandler;-><init>(Lcom/redbend/vdm/VdmTreeProxy;Ljava/lang/String;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    :cond_0
    return v0
.end method

.method public registerAddSubTree(Ljava/lang/String;Lcom/redbend/vdm/NodeAddHandler;)I
    .locals 4
    .parameter "nodeUri"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 89
    sget v1, Lcom/redbend/vdm/VdmTreeProxy;->curId:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/redbend/vdm/VdmTreeProxy;->curId:I

    invoke-direct {p0, p1, v1}, Lcom/redbend/vdm/VdmTreeProxy;->_registerAddSubTree(Ljava/lang/String;I)I

    move-result v0

    .line 90
    .local v0, result:I
    if-nez v0, :cond_0

    .line 91
    iget-object v1, p0, Lcom/redbend/vdm/VdmTreeProxy;->_handlers:Ljava/util/ArrayList;

    new-instance v2, Lcom/redbend/vdm/VdmTreeProxy$NodeHandler;

    sget v3, Lcom/redbend/vdm/VdmTreeProxy;->curId:I

    invoke-direct {v2, p0, p1, p2, v3}, Lcom/redbend/vdm/VdmTreeProxy$NodeHandler;-><init>(Lcom/redbend/vdm/VdmTreeProxy;Ljava/lang/String;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_0
    return v0
.end method

.method public registerDelete(Ljava/lang/String;Lcom/redbend/vdm/NodeDeleteHandler;)I
    .locals 4
    .parameter "nodeUri"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 68
    sget v1, Lcom/redbend/vdm/VdmTreeProxy;->curId:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/redbend/vdm/VdmTreeProxy;->curId:I

    invoke-direct {p0, p1, v1}, Lcom/redbend/vdm/VdmTreeProxy;->_registerDelete(Ljava/lang/String;I)I

    move-result v0

    .line 69
    .local v0, result:I
    if-nez v0, :cond_0

    .line 70
    iget-object v1, p0, Lcom/redbend/vdm/VdmTreeProxy;->_handlers:Ljava/util/ArrayList;

    new-instance v2, Lcom/redbend/vdm/VdmTreeProxy$NodeHandler;

    sget v3, Lcom/redbend/vdm/VdmTreeProxy;->curId:I

    invoke-direct {v2, p0, p1, p2, v3}, Lcom/redbend/vdm/VdmTreeProxy$NodeHandler;-><init>(Lcom/redbend/vdm/VdmTreeProxy;Ljava/lang/String;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_0
    return v0
.end method

.method public registerDeleteSubTree(Ljava/lang/String;Lcom/redbend/vdm/NodeDeleteHandler;)I
    .locals 4
    .parameter "nodeUri"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 75
    sget v1, Lcom/redbend/vdm/VdmTreeProxy;->curId:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/redbend/vdm/VdmTreeProxy;->curId:I

    invoke-direct {p0, p1, v1}, Lcom/redbend/vdm/VdmTreeProxy;->_registerDeleteSubTree(Ljava/lang/String;I)I

    move-result v0

    .line 76
    .local v0, result:I
    if-nez v0, :cond_0

    .line 77
    iget-object v1, p0, Lcom/redbend/vdm/VdmTreeProxy;->_handlers:Ljava/util/ArrayList;

    new-instance v2, Lcom/redbend/vdm/VdmTreeProxy$NodeHandler;

    sget v3, Lcom/redbend/vdm/VdmTreeProxy;->curId:I

    invoke-direct {v2, p0, p1, p2, v3}, Lcom/redbend/vdm/VdmTreeProxy$NodeHandler;-><init>(Lcom/redbend/vdm/VdmTreeProxy;Ljava/lang/String;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_0
    return v0
.end method

.method public registerExecute(Ljava/lang/String;Lcom/redbend/vdm/NodeExecuteHandler;)I
    .locals 4
    .parameter "nodeUri"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 61
    sget v1, Lcom/redbend/vdm/VdmTreeProxy;->curId:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/redbend/vdm/VdmTreeProxy;->curId:I

    invoke-direct {p0, p1, v1}, Lcom/redbend/vdm/VdmTreeProxy;->_registerExecute(Ljava/lang/String;I)I

    move-result v0

    .line 62
    .local v0, result:I
    if-nez v0, :cond_0

    .line 63
    iget-object v1, p0, Lcom/redbend/vdm/VdmTreeProxy;->_handlers:Ljava/util/ArrayList;

    new-instance v2, Lcom/redbend/vdm/VdmTreeProxy$NodeHandler;

    sget v3, Lcom/redbend/vdm/VdmTreeProxy;->curId:I

    invoke-direct {v2, p0, p1, p2, v3}, Lcom/redbend/vdm/VdmTreeProxy$NodeHandler;-><init>(Lcom/redbend/vdm/VdmTreeProxy;Ljava/lang/String;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_0
    return v0
.end method

.method public registerNodeIoHandler(Ljava/lang/String;Lcom/redbend/vdm/NodeIoHandler;)I
    .locals 4
    .parameter "nodeUri"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 47
    sget v1, Lcom/redbend/vdm/VdmTreeProxy;->curId:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/redbend/vdm/VdmTreeProxy;->curId:I

    invoke-direct {p0, p1, v1}, Lcom/redbend/vdm/VdmTreeProxy;->_registerNodeIoHandler(Ljava/lang/String;I)I

    move-result v0

    .line 48
    .local v0, result:I
    if-nez v0, :cond_0

    .line 49
    iget-object v1, p0, Lcom/redbend/vdm/VdmTreeProxy;->_handlers:Ljava/util/ArrayList;

    new-instance v2, Lcom/redbend/vdm/VdmTreeProxy$NodeHandler;

    sget v3, Lcom/redbend/vdm/VdmTreeProxy;->curId:I

    invoke-direct {v2, p0, p1, p2, v3}, Lcom/redbend/vdm/VdmTreeProxy$NodeHandler;-><init>(Lcom/redbend/vdm/VdmTreeProxy;Ljava/lang/String;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_0
    return v0
.end method

.method public registerPreExecNotify(Lcom/redbend/vdm/NodePreExecuteHandler;)V
    .locals 0
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/redbend/vdm/VdmTreeProxy;->_registerPreExecNotify()V

    .line 43
    iput-object p1, p0, Lcom/redbend/vdm/VdmTreeProxy;->_preExecHandler:Lcom/redbend/vdm/NodePreExecuteHandler;

    .line 44
    return-void
.end method

.method public registerSubTreeIoHandler(Ljava/lang/String;Lcom/redbend/vdm/NodeIoHandler;)I
    .locals 4
    .parameter "nodeUri"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 54
    sget v1, Lcom/redbend/vdm/VdmTreeProxy;->curId:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/redbend/vdm/VdmTreeProxy;->curId:I

    invoke-direct {p0, p1, v1}, Lcom/redbend/vdm/VdmTreeProxy;->_registerSubTreeIoHandler(Ljava/lang/String;I)I

    move-result v0

    .line 55
    .local v0, result:I
    if-nez v0, :cond_0

    .line 56
    iget-object v1, p0, Lcom/redbend/vdm/VdmTreeProxy;->_handlers:Ljava/util/ArrayList;

    new-instance v2, Lcom/redbend/vdm/VdmTreeProxy$NodeHandler;

    sget v3, Lcom/redbend/vdm/VdmTreeProxy;->curId:I

    invoke-direct {v2, p0, p1, p2, v3}, Lcom/redbend/vdm/VdmTreeProxy$NodeHandler;-><init>(Lcom/redbend/vdm/VdmTreeProxy;Ljava/lang/String;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    :cond_0
    return v0
.end method

.method public native replaceACL(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation
.end method

.method public native replaceBinValue(Ljava/lang/String;[BI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation
.end method

.method public native replaceBoolValue(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation
.end method

.method public native replaceIntValue(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation
.end method

.method public native replaceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation
.end method

.method public native replaceStringValue(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation
.end method

.method public native terminate()V
.end method

.method public unregisterAdd(Lcom/redbend/vdm/NodeAddHandler;)I
    .locals 3
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 121
    invoke-virtual {p0, p1}, Lcom/redbend/vdm/VdmTreeProxy;->unregisterHandler(Ljava/lang/Object;)Lcom/redbend/vdm/VdmTreeProxy$NodeHandler;

    move-result-object v0

    .line 122
    .local v0, nh:Lcom/redbend/vdm/VdmTreeProxy$NodeHandler;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/redbend/vdm/VdmTreeProxy$NodeHandler;->_uri:Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lcom/redbend/vdm/VdmTreeProxy;->_registerAdd(Ljava/lang/String;I)I

    move-result v1

    :cond_0
    return v1
.end method

.method public unregisterAddSubTree(Lcom/redbend/vdm/NodeAddHandler;)I
    .locals 3
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 126
    invoke-virtual {p0, p1}, Lcom/redbend/vdm/VdmTreeProxy;->unregisterHandler(Ljava/lang/Object;)Lcom/redbend/vdm/VdmTreeProxy$NodeHandler;

    move-result-object v0

    .line 127
    .local v0, nh:Lcom/redbend/vdm/VdmTreeProxy$NodeHandler;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/redbend/vdm/VdmTreeProxy$NodeHandler;->_uri:Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lcom/redbend/vdm/VdmTreeProxy;->_registerAdd(Ljava/lang/String;I)I

    move-result v1

    :cond_0
    return v1
.end method

.method public unregisterDelete(Lcom/redbend/vdm/NodeDeleteHandler;)I
    .locals 3
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 111
    invoke-virtual {p0, p1}, Lcom/redbend/vdm/VdmTreeProxy;->unregisterHandler(Ljava/lang/Object;)Lcom/redbend/vdm/VdmTreeProxy$NodeHandler;

    move-result-object v0

    .line 112
    .local v0, nh:Lcom/redbend/vdm/VdmTreeProxy$NodeHandler;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/redbend/vdm/VdmTreeProxy$NodeHandler;->_uri:Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lcom/redbend/vdm/VdmTreeProxy;->_registerDelete(Ljava/lang/String;I)I

    move-result v1

    :cond_0
    return v1
.end method

.method public unregisterDeleteSubTree(Lcom/redbend/vdm/NodeDeleteHandler;)I
    .locals 3
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 116
    invoke-virtual {p0, p1}, Lcom/redbend/vdm/VdmTreeProxy;->unregisterHandler(Ljava/lang/Object;)Lcom/redbend/vdm/VdmTreeProxy$NodeHandler;

    move-result-object v0

    .line 117
    .local v0, nh:Lcom/redbend/vdm/VdmTreeProxy$NodeHandler;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/redbend/vdm/VdmTreeProxy$NodeHandler;->_uri:Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lcom/redbend/vdm/VdmTreeProxy;->_registerDelete(Ljava/lang/String;I)I

    move-result v1

    :cond_0
    return v1
.end method

.method public unregisterExecute(Lcom/redbend/vdm/NodeExecuteHandler;)I
    .locals 3
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 106
    invoke-virtual {p0, p1}, Lcom/redbend/vdm/VdmTreeProxy;->unregisterHandler(Ljava/lang/Object;)Lcom/redbend/vdm/VdmTreeProxy$NodeHandler;

    move-result-object v0

    .line 107
    .local v0, nh:Lcom/redbend/vdm/VdmTreeProxy$NodeHandler;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/redbend/vdm/VdmTreeProxy$NodeHandler;->_uri:Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lcom/redbend/vdm/VdmTreeProxy;->_registerExecute(Ljava/lang/String;I)I

    move-result v1

    :cond_0
    return v1
.end method

.method public unregisterHandler(Ljava/lang/Object;)Lcom/redbend/vdm/VdmTreeProxy$NodeHandler;
    .locals 3
    .parameter "obj"

    .prologue
    .line 279
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/redbend/vdm/VdmTreeProxy;->_handlers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 280
    iget-object v2, p0, Lcom/redbend/vdm/VdmTreeProxy;->_handlers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/redbend/vdm/VdmTreeProxy$NodeHandler;

    .line 281
    .local v1, nh:Lcom/redbend/vdm/VdmTreeProxy$NodeHandler;
    iget-object v2, v1, Lcom/redbend/vdm/VdmTreeProxy$NodeHandler;->_obj:Ljava/lang/Object;

    if-ne v2, p1, :cond_0

    .line 282
    iget-object v2, p0, Lcom/redbend/vdm/VdmTreeProxy;->_handlers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 286
    .end local v1           #nh:Lcom/redbend/vdm/VdmTreeProxy$NodeHandler;
    :goto_1
    return-object v1

    .line 279
    .restart local v1       #nh:Lcom/redbend/vdm/VdmTreeProxy$NodeHandler;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 286
    .end local v1           #nh:Lcom/redbend/vdm/VdmTreeProxy$NodeHandler;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public unregisterNodeIoHandler(Lcom/redbend/vdm/NodeIoHandler;)I
    .locals 3
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-virtual {p0, p1}, Lcom/redbend/vdm/VdmTreeProxy;->unregisterHandler(Ljava/lang/Object;)Lcom/redbend/vdm/VdmTreeProxy$NodeHandler;

    move-result-object v0

    .line 97
    .local v0, nh:Lcom/redbend/vdm/VdmTreeProxy$NodeHandler;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/redbend/vdm/VdmTreeProxy$NodeHandler;->_uri:Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lcom/redbend/vdm/VdmTreeProxy;->_registerNodeIoHandler(Ljava/lang/String;I)I

    move-result v1

    :cond_0
    return v1
.end method

.method public unregisterSubTreeIoHandler(Lcom/redbend/vdm/NodeIoHandler;)I
    .locals 3
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-virtual {p0, p1}, Lcom/redbend/vdm/VdmTreeProxy;->unregisterHandler(Ljava/lang/Object;)Lcom/redbend/vdm/VdmTreeProxy$NodeHandler;

    move-result-object v0

    .line 102
    .local v0, nh:Lcom/redbend/vdm/VdmTreeProxy$NodeHandler;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/redbend/vdm/VdmTreeProxy$NodeHandler;->_uri:Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lcom/redbend/vdm/VdmTreeProxy;->_registerNodeIoHandler(Ljava/lang/String;I)I

    move-result v1

    :cond_0
    return v1
.end method

.method public native writeToPersistentStorage()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation
.end method
