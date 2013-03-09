.class public Lcom/redbend/vdmc/Sprint/DevDetail$NodeRWCB;
.super Ljava/lang/Object;
.source "DevDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/redbend/vdmc/Sprint/DevDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NodeRWCB"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redbend/vdmc/Sprint/DevDetail;


# direct methods
.method public constructor <init>(Lcom/redbend/vdmc/Sprint/DevDetail;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/redbend/vdmc/Sprint/DevDetail$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/DevDetail;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 77
    return-void
.end method


# virtual methods
.method public read(I[BLjava/lang/String;)I
    .locals 6
    .parameter "offset"
    .parameter "data"
    .parameter "node"

    .prologue
    const/4 v5, 0x1

    .line 80
    const-string v2, "default"

    .line 81
    .local v2, szData:Ljava/lang/String;
    const/4 v1, 0x0

    .line 82
    .local v1, ret:I
    iget-object v3, p0, Lcom/redbend/vdmc/Sprint/DevDetail$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/DevDetail;

    invoke-static {}, Lcom/htc/ipl/common;->getInstance()Lcom/htc/ipl/common;

    move-result-object v4

    #setter for: Lcom/redbend/vdmc/Sprint/DevDetail;->mCommonIPL:Lcom/htc/ipl/common;
    invoke-static {v3, v4}, Lcom/redbend/vdmc/Sprint/DevDetail;->access$002(Lcom/redbend/vdmc/Sprint/DevDetail;Lcom/htc/ipl/common;)Lcom/htc/ipl/common;

    .line 83
    const-string v3, "./DevDetail/DevTyp"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v5, :cond_0

    .line 84
    iget-object v3, p0, Lcom/redbend/vdmc/Sprint/DevDetail$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/DevDetail;

    #getter for: Lcom/redbend/vdmc/Sprint/DevDetail;->mCommonIPL:Lcom/htc/ipl/common;
    invoke-static {v3}, Lcom/redbend/vdmc/Sprint/DevDetail;->access$000(Lcom/redbend/vdmc/Sprint/DevDetail;)Lcom/htc/ipl/common;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/ipl/common;->DevType()Ljava/lang/String;

    move-result-object v2

    .line 86
    :cond_0
    const-string v3, "./DevDetail/FwV"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v5, :cond_1

    .line 87
    iget-object v3, p0, Lcom/redbend/vdmc/Sprint/DevDetail$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/DevDetail;

    #getter for: Lcom/redbend/vdmc/Sprint/DevDetail;->mCommonIPL:Lcom/htc/ipl/common;
    invoke-static {v3}, Lcom/redbend/vdmc/Sprint/DevDetail;->access$000(Lcom/redbend/vdmc/Sprint/DevDetail;)Lcom/htc/ipl/common;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/ipl/common;->FwV()Ljava/lang/String;

    move-result-object v2

    .line 89
    :cond_1
    const-string v3, "./DevDetail/HwV"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v5, :cond_2

    .line 90
    iget-object v3, p0, Lcom/redbend/vdmc/Sprint/DevDetail$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/DevDetail;

    #getter for: Lcom/redbend/vdmc/Sprint/DevDetail;->mCommonIPL:Lcom/htc/ipl/common;
    invoke-static {v3}, Lcom/redbend/vdmc/Sprint/DevDetail;->access$000(Lcom/redbend/vdmc/Sprint/DevDetail;)Lcom/htc/ipl/common;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/ipl/common;->HwV()Ljava/lang/String;

    move-result-object v2

    .line 92
    :cond_2
    const-string v3, "./DevDetail/OEM"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v5, :cond_3

    .line 93
    iget-object v3, p0, Lcom/redbend/vdmc/Sprint/DevDetail$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/DevDetail;

    #getter for: Lcom/redbend/vdmc/Sprint/DevDetail;->mCommonIPL:Lcom/htc/ipl/common;
    invoke-static {v3}, Lcom/redbend/vdmc/Sprint/DevDetail;->access$000(Lcom/redbend/vdmc/Sprint/DevDetail;)Lcom/htc/ipl/common;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/ipl/common;->OEM()Ljava/lang/String;

    move-result-object v2

    .line 95
    :cond_3
    const-string v3, "./DevDetail/SwV"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v5, :cond_4

    .line 96
    iget-object v3, p0, Lcom/redbend/vdmc/Sprint/DevDetail$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/DevDetail;

    #getter for: Lcom/redbend/vdmc/Sprint/DevDetail;->mCommonIPL:Lcom/htc/ipl/common;
    invoke-static {v3}, Lcom/redbend/vdmc/Sprint/DevDetail;->access$000(Lcom/redbend/vdmc/Sprint/DevDetail;)Lcom/htc/ipl/common;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/ipl/common;->SwV()Ljava/lang/String;

    move-result-object v2

    .line 99
    :cond_4
    const-string v3, "DevDetail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "node:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " szData:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 101
    if-eqz p2, :cond_5

    .line 102
    iget-object v3, p0, Lcom/redbend/vdmc/Sprint/DevDetail$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/DevDetail;

    #getter for: Lcom/redbend/vdmc/Sprint/DevDetail;->mCommonIPL:Lcom/htc/ipl/common;
    invoke-static {v3}, Lcom/redbend/vdmc/Sprint/DevDetail;->access$000(Lcom/redbend/vdmc/Sprint/DevDetail;)Lcom/htc/ipl/common;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/htc/ipl/common;->AccessToggle(IZ)V

    .line 103
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 104
    .local v0, buf:Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 106
    .end local v0           #buf:Ljava/nio/ByteBuffer;
    :cond_5
    return v1
.end method

.method public write(I[BILjava/lang/String;)V
    .locals 3
    .parameter "offset"
    .parameter "data"
    .parameter "totalSize"
    .parameter "node"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/redbend/vdmc/Sprint/DevDetail$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/DevDetail;

    invoke-static {}, Lcom/htc/ipl/common;->getInstance()Lcom/htc/ipl/common;

    move-result-object v1

    #setter for: Lcom/redbend/vdmc/Sprint/DevDetail;->mCommonIPL:Lcom/htc/ipl/common;
    invoke-static {v0, v1}, Lcom/redbend/vdmc/Sprint/DevDetail;->access$002(Lcom/redbend/vdmc/Sprint/DevDetail;Lcom/htc/ipl/common;)Lcom/htc/ipl/common;

    .line 111
    iget-object v0, p0, Lcom/redbend/vdmc/Sprint/DevDetail$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/DevDetail;

    #getter for: Lcom/redbend/vdmc/Sprint/DevDetail;->mCommonIPL:Lcom/htc/ipl/common;
    invoke-static {v0}, Lcom/redbend/vdmc/Sprint/DevDetail;->access$000(Lcom/redbend/vdmc/Sprint/DevDetail;)Lcom/htc/ipl/common;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/ipl/common;->AccessToggle(IZ)V

    .line 112
    return-void
.end method
