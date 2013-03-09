.class public Lcom/redbend/vdmc/Sprint/WiMax$TreeHandler;
.super Ljava/lang/Object;
.source "WiMax.java"

# interfaces
.implements Lcom/redbend/vdm/NodeIoHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/redbend/vdmc/Sprint/WiMax;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TreeHandler"
.end annotation


# instance fields
.field private mNode:Ljava/lang/String;

.field private mRWcb:Lcom/redbend/vdmc/Sprint/WiMax$NodeRWCB;

.field final synthetic this$0:Lcom/redbend/vdmc/Sprint/WiMax;


# direct methods
.method public constructor <init>(Lcom/redbend/vdmc/Sprint/WiMax;Lcom/redbend/vdm/VdmTree;Ljava/lang/String;Lcom/redbend/vdmc/Sprint/WiMax$NodeRWCB;)V
    .locals 4
    .parameter
    .parameter "tree"
    .parameter "node"
    .parameter "rwcb"

    .prologue
    .line 1135
    iput-object p1, p0, Lcom/redbend/vdmc/Sprint/WiMax$TreeHandler;->this$0:Lcom/redbend/vdmc/Sprint/WiMax;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1136
    iput-object p3, p0, Lcom/redbend/vdmc/Sprint/WiMax$TreeHandler;->mNode:Ljava/lang/String;

    .line 1137
    iput-object p4, p0, Lcom/redbend/vdmc/Sprint/WiMax$TreeHandler;->mRWcb:Lcom/redbend/vdmc/Sprint/WiMax$NodeRWCB;

    .line 1139
    :try_start_0
    invoke-virtual {p2, p3, p0}, Lcom/redbend/vdm/VdmTree;->registerNodeIoHandler(Ljava/lang/String;Lcom/redbend/vdm/NodeIoHandler;)V
    :try_end_0
    .catch Lcom/redbend/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1143
    :goto_0
    return-void

    .line 1140
    :catch_0
    move-exception v0

    .line 1141
    .local v0, e:Lcom/redbend/vdm/VdmException;
    const-string v1, "WiMax"

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
.method public read(I[B)I
    .locals 2
    .parameter "offset"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/redbend/vdmc/Sprint/WiMax$TreeHandler;->mRWcb:Lcom/redbend/vdmc/Sprint/WiMax$NodeRWCB;

    iget-object v1, p0, Lcom/redbend/vdmc/Sprint/WiMax$TreeHandler;->mNode:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, v1}, Lcom/redbend/vdmc/Sprint/WiMax$NodeRWCB;->read(I[BLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public write(I[BI)V
    .locals 2
    .parameter "offset"
    .parameter "data"
    .parameter "totalSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/redbend/vdmc/Sprint/WiMax$TreeHandler;->mRWcb:Lcom/redbend/vdmc/Sprint/WiMax$NodeRWCB;

    iget-object v1, p0, Lcom/redbend/vdmc/Sprint/WiMax$TreeHandler;->mNode:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/redbend/vdmc/Sprint/WiMax$NodeRWCB;->write(I[BILjava/lang/String;)V

    .line 1151
    return-void
.end method
