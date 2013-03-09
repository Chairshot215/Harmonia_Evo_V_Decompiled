.class Lcom/redbend/vdm/PLStorageProxy;
.super Ljava/lang/Object;
.source "PLStorageProxy.java"


# instance fields
.field private _factory:Lcom/redbend/vdm/PLFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 11
    invoke-static {}, Lcom/redbend/vdm/PLStorageProxy;->initIDs()V

    .line 12
    return-void
.end method

.method constructor <init>(Lcom/redbend/vdm/PLFactory;)V
    .locals 0
    .parameter "factory"

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-direct {p0}, Lcom/redbend/vdm/PLStorageProxy;->initInstance()V

    .line 17
    iput-object p1, p0, Lcom/redbend/vdm/PLStorageProxy;->_factory:Lcom/redbend/vdm/PLFactory;

    .line 18
    return-void
.end method

.method private static native initIDs()V
.end method

.method private native initInstance()V
.end method


# virtual methods
.method protected close(Lcom/redbend/vdm/PLFile;Z)I
    .locals 4
    .parameter "file"
    .parameter "commit"

    .prologue
    .line 61
    :try_start_0
    invoke-interface {p1, p2}, Lcom/redbend/vdm/PLFile;->close(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    const/4 v1, 0x0

    .line 65
    :goto_0
    return v1

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, e:Ljava/io/IOException;
    const-string v1, "vDM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PLStorageProxy.close exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/redbend/vdm/VdmLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    sget-object v1, Lcom/redbend/vdm/VdmException$VdmError;->STORAGE_READ:Lcom/redbend/vdm/VdmException$VdmError;

    iget v1, v1, Lcom/redbend/vdm/VdmException$VdmError;->val:I

    goto :goto_0
.end method

.method protected delete(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/redbend/vdm/PLStorageProxy;->_factory:Lcom/redbend/vdm/PLFactory;

    invoke-interface {v0}, Lcom/redbend/vdm/PLFactory;->getStorage()Lcom/redbend/vdm/PLStorage;

    move-result-object v0

    invoke-static {}, Lcom/redbend/vdm/PLStorage$ItemType;->values()[Lcom/redbend/vdm/PLStorage$ItemType;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-interface {v0, v1}, Lcom/redbend/vdm/PLStorage;->delete(Lcom/redbend/vdm/PLStorage$ItemType;)V

    .line 71
    return-void
.end method

.method protected open(II)Lcom/redbend/vdm/PLFile;
    .locals 5
    .parameter "type"
    .parameter "mode"

    .prologue
    .line 27
    const/4 v1, 0x0

    .line 29
    .local v1, file:Lcom/redbend/vdm/PLFile;
    :try_start_0
    iget-object v2, p0, Lcom/redbend/vdm/PLStorageProxy;->_factory:Lcom/redbend/vdm/PLFactory;

    invoke-interface {v2}, Lcom/redbend/vdm/PLFactory;->getStorage()Lcom/redbend/vdm/PLStorage;

    move-result-object v2

    invoke-static {}, Lcom/redbend/vdm/PLStorage$ItemType;->values()[Lcom/redbend/vdm/PLStorage$ItemType;

    move-result-object v3

    aget-object v3, v3, p1

    invoke-static {}, Lcom/redbend/vdm/PLStorage$AccessMode;->values()[Lcom/redbend/vdm/PLStorage$AccessMode;

    move-result-object v4

    aget-object v4, v4, p2

    invoke-interface {v2, v3, v4}, Lcom/redbend/vdm/PLStorage;->open(Lcom/redbend/vdm/PLStorage$ItemType;Lcom/redbend/vdm/PLStorage$AccessMode;)Lcom/redbend/vdm/PLFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v2, v1

    .line 35
    :goto_0
    return-object v2

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, e:Ljava/io/IOException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected read(Lcom/redbend/vdm/PLFile;[B)I
    .locals 5
    .parameter "file"
    .parameter "buf"

    .prologue
    .line 39
    const/4 v0, 0x0

    .line 41
    .local v0, count:I
    :try_start_0
    invoke-interface {p1, p2}, Lcom/redbend/vdm/PLFile;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 46
    :goto_0
    return v0

    .line 42
    :catch_0
    move-exception v1

    .line 43
    .local v1, e:Ljava/io/IOException;
    const-string v2, "vDM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PLStorageProxy.read exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/redbend/vdm/VdmLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected native terminate()V
.end method

.method protected write(Lcom/redbend/vdm/PLFile;[B)I
    .locals 4
    .parameter "file"
    .parameter "buf"

    .prologue
    .line 51
    :try_start_0
    invoke-interface {p1, p2}, Lcom/redbend/vdm/PLFile;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    const/4 v1, 0x0

    .line 55
    :goto_0
    return v1

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, e:Ljava/io/IOException;
    const-string v1, "vDM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PLStorageProxy.write exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/redbend/vdm/VdmLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    sget-object v1, Lcom/redbend/vdm/VdmException$VdmError;->STORAGE_WRITE:Lcom/redbend/vdm/VdmException$VdmError;

    iget v1, v1, Lcom/redbend/vdm/VdmException$VdmError;->val:I

    goto :goto_0
.end method
