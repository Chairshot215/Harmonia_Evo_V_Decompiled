.class public Lcom/redbend/vdmc/Sprint/Browser$TreeHandler;
.super Ljava/lang/Object;
.source "Browser.java"

# interfaces
.implements Lcom/redbend/vdm/NodeIoHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/redbend/vdmc/Sprint/Browser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TreeHandler"
.end annotation


# instance fields
.field private mNode:Ljava/lang/String;

.field private mRWcb:Lcom/redbend/vdmc/Sprint/Browser$NodeRWCB;

.field final synthetic this$0:Lcom/redbend/vdmc/Sprint/Browser;


# direct methods
.method public constructor <init>(Lcom/redbend/vdmc/Sprint/Browser;Lcom/redbend/vdm/VdmTree;Ljava/lang/String;Lcom/redbend/vdmc/Sprint/Browser$NodeRWCB;)V
    .locals 4
    .parameter
    .parameter "tree"
    .parameter "node"
    .parameter "rwcb"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/redbend/vdmc/Sprint/Browser$TreeHandler;->this$0:Lcom/redbend/vdmc/Sprint/Browser;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p3, p0, Lcom/redbend/vdmc/Sprint/Browser$TreeHandler;->mNode:Ljava/lang/String;

    .line 93
    iput-object p4, p0, Lcom/redbend/vdmc/Sprint/Browser$TreeHandler;->mRWcb:Lcom/redbend/vdmc/Sprint/Browser$NodeRWCB;

    .line 95
    :try_start_0
    invoke-virtual {p2, p3, p0}, Lcom/redbend/vdm/VdmTree;->registerNodeIoHandler(Ljava/lang/String;Lcom/redbend/vdm/NodeIoHandler;)V
    :try_end_0
    .catch Lcom/redbend/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, e:Lcom/redbend/vdm/VdmException;
    const-string v1, "Browser"

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
    .line 102
    iget-object v0, p0, Lcom/redbend/vdmc/Sprint/Browser$TreeHandler;->mRWcb:Lcom/redbend/vdmc/Sprint/Browser$NodeRWCB;

    iget-object v1, p0, Lcom/redbend/vdmc/Sprint/Browser$TreeHandler;->mNode:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, v1}, Lcom/redbend/vdmc/Sprint/Browser$NodeRWCB;->read(I[BLjava/lang/String;)I

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
    .line 106
    iget-object v0, p0, Lcom/redbend/vdmc/Sprint/Browser$TreeHandler;->mRWcb:Lcom/redbend/vdmc/Sprint/Browser$NodeRWCB;

    iget-object v1, p0, Lcom/redbend/vdmc/Sprint/Browser$TreeHandler;->mNode:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/redbend/vdmc/Sprint/Browser$NodeRWCB;->write(I[BILjava/lang/String;)V

    .line 107
    return-void
.end method
