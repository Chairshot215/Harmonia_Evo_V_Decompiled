.class public Lcom/redbend/vdmc/Sprint/SecureDevice$TreeHandler;
.super Ljava/lang/Object;
.source "SecureDevice.java"

# interfaces
.implements Lcom/redbend/vdm/NodeExecuteHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/redbend/vdmc/Sprint/SecureDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TreeHandler"
.end annotation


# instance fields
.field private mExeccb:Lcom/redbend/vdmc/Sprint/SecureDevice$NodeExecCB;

.field private mNode:Ljava/lang/String;

.field final synthetic this$0:Lcom/redbend/vdmc/Sprint/SecureDevice;


# direct methods
.method public constructor <init>(Lcom/redbend/vdmc/Sprint/SecureDevice;Lcom/redbend/vdm/VdmTree;Ljava/lang/String;Lcom/redbend/vdmc/Sprint/SecureDevice$NodeExecCB;)V
    .locals 4
    .parameter
    .parameter "tree"
    .parameter "node"
    .parameter "execcb"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/redbend/vdmc/Sprint/SecureDevice$TreeHandler;->this$0:Lcom/redbend/vdmc/Sprint/SecureDevice;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p3, p0, Lcom/redbend/vdmc/Sprint/SecureDevice$TreeHandler;->mNode:Ljava/lang/String;

    .line 97
    iput-object p4, p0, Lcom/redbend/vdmc/Sprint/SecureDevice$TreeHandler;->mExeccb:Lcom/redbend/vdmc/Sprint/SecureDevice$NodeExecCB;

    .line 99
    :try_start_0
    invoke-virtual {p2, p3, p0}, Lcom/redbend/vdm/VdmTree;->registerExecute(Ljava/lang/String;Lcom/redbend/vdm/NodeExecuteHandler;)V
    :try_end_0
    .catch Lcom/redbend/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, e:Lcom/redbend/vdm/VdmException;
    const-string v1, "SecureDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to register node:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public execute([BLjava/lang/String;)I
    .locals 2
    .parameter "data"
    .parameter "correlator"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/redbend/vdmc/Sprint/SecureDevice$TreeHandler;->mExeccb:Lcom/redbend/vdmc/Sprint/SecureDevice$NodeExecCB;

    iget-object v1, p0, Lcom/redbend/vdmc/Sprint/SecureDevice$TreeHandler;->mNode:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, v1}, Lcom/redbend/vdmc/Sprint/SecureDevice$NodeExecCB;->execute([BLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
