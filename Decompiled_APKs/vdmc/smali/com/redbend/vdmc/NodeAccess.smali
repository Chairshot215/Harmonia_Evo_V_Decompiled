.class public Lcom/redbend/vdmc/NodeAccess;
.super Ljava/lang/Object;
.source "NodeAccess.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "NodeAccess"

.field private static mVdmTree:Lcom/redbend/vdm/VdmTree;


# direct methods
.method public constructor <init>(Lcom/redbend/vdm/VdmTree;)V
    .locals 0
    .parameter "tree"

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    sput-object p1, Lcom/redbend/vdmc/NodeAccess;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    .line 17
    return-void
.end method


# virtual methods
.method public GetNodeBinValue(Ljava/lang/String;)[B
    .locals 6
    .parameter "node"

    .prologue
    .line 50
    const/4 v3, 0x3

    new-array v1, v3, [B

    fill-array-data v1, :array_0

    .line 53
    .local v1, NodeData:[B
    :try_start_0
    sget-object v3, Lcom/redbend/vdmc/NodeAccess;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    invoke-virtual {v3, p1, v1}, Lcom/redbend/vdm/VdmTree;->getBinValue(Ljava/lang/String;[B)I
    :try_end_0
    .catch Lcom/redbend/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 57
    :goto_0
    return-object v1

    .line 54
    :catch_0
    move-exception v2

    .line 55
    .local v2, e:Lcom/redbend/vdm/VdmException;
    const-string v3, "NodeAccess"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get node:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 50
    nop

    :array_0
    .array-data 0x1
        0x30t
        0x31t
        0x32t
    .end array-data
.end method

.method public GetNodeBooleanValue(Ljava/lang/String;)Z
    .locals 5
    .parameter "node"

    .prologue
    .line 20
    const/4 v0, 0x0

    .line 22
    .local v0, NodeData:Z
    :try_start_0
    sget-object v2, Lcom/redbend/vdmc/NodeAccess;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    invoke-virtual {v2, p1}, Lcom/redbend/vdm/VdmTree;->getBoolValue(Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/redbend/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 26
    :goto_0
    return v0

    .line 23
    :catch_0
    move-exception v1

    .line 24
    .local v1, e:Lcom/redbend/vdm/VdmException;
    const-string v2, "NodeAccess"

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

.method public GetNodeIntValue(Ljava/lang/String;)I
    .locals 5
    .parameter "node"

    .prologue
    .line 30
    const/4 v0, 0x0

    .line 32
    .local v0, NodeData:I
    :try_start_0
    sget-object v2, Lcom/redbend/vdmc/NodeAccess;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    invoke-virtual {v2, p1}, Lcom/redbend/vdm/VdmTree;->getIntValue(Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/redbend/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 36
    :goto_0
    return v0

    .line 33
    :catch_0
    move-exception v1

    .line 34
    .local v1, e:Lcom/redbend/vdm/VdmException;
    const-string v2, "NodeAccess"

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

.method public GetNodeStringValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "node"

    .prologue
    .line 40
    const/4 v0, 0x0

    .line 42
    .local v0, NodeData:Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/redbend/vdmc/NodeAccess;->mVdmTree:Lcom/redbend/vdm/VdmTree;

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
    const-string v2, "NodeAccess"

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

.method public ReplaceNodeBinValue(Ljava/lang/String;[B)V
    .locals 4
    .parameter "node"
    .parameter "value"

    .prologue
    .line 86
    :try_start_0
    sget-object v1, Lcom/redbend/vdmc/NodeAccess;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    invoke-virtual {v1, p1, p2}, Lcom/redbend/vdm/VdmTree;->replaceBinValue(Ljava/lang/String;[B)V
    :try_end_0
    .catch Lcom/redbend/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, e:Lcom/redbend/vdm/VdmException;
    const-string v1, "NodeAccess"

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

.method public ReplaceNodeBooleanValue(Ljava/lang/String;Z)V
    .locals 4
    .parameter "node"
    .parameter "value"

    .prologue
    .line 62
    :try_start_0
    sget-object v1, Lcom/redbend/vdmc/NodeAccess;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    invoke-virtual {v1, p1, p2}, Lcom/redbend/vdm/VdmTree;->replaceBoolValue(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lcom/redbend/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, e:Lcom/redbend/vdm/VdmException;
    const-string v1, "NodeAccess"

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

.method public ReplaceNodeIntValue(Ljava/lang/String;I)V
    .locals 4
    .parameter "node"
    .parameter "value"

    .prologue
    .line 70
    :try_start_0
    sget-object v1, Lcom/redbend/vdmc/NodeAccess;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    invoke-virtual {v1, p1, p2}, Lcom/redbend/vdm/VdmTree;->replaceIntValue(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/redbend/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, e:Lcom/redbend/vdm/VdmException;
    const-string v1, "NodeAccess"

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

.method public ReplaceNodeStringValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "node"
    .parameter "value"

    .prologue
    .line 78
    :try_start_0
    sget-object v1, Lcom/redbend/vdmc/NodeAccess;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    invoke-virtual {v1, p1, p2}, Lcom/redbend/vdm/VdmTree;->replaceStringValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/redbend/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, e:Lcom/redbend/vdm/VdmException;
    const-string v1, "NodeAccess"

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
    .line 94
    :try_start_0
    sget-object v1, Lcom/redbend/vdmc/NodeAccess;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    invoke-virtual {v1}, Lcom/redbend/vdm/VdmTree;->writeToPersistentStorage()V
    :try_end_0
    .catch Lcom/redbend/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, e:Lcom/redbend/vdm/VdmException;
    const-string v1, "NodeAccess"

    const-string v2, "Failed to sync node:"

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
