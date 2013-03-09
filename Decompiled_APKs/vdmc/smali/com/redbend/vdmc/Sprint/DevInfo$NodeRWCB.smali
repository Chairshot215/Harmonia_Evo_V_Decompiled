.class public Lcom/redbend/vdmc/Sprint/DevInfo$NodeRWCB;
.super Ljava/lang/Object;
.source "DevInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/redbend/vdmc/Sprint/DevInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NodeRWCB"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redbend/vdmc/Sprint/DevInfo;


# direct methods
.method public constructor <init>(Lcom/redbend/vdmc/Sprint/DevInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/redbend/vdmc/Sprint/DevInfo$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/DevInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method


# virtual methods
.method public read(I[BLjava/lang/String;)I
    .locals 7
    .parameter "offset"
    .parameter "data"
    .parameter "node"

    .prologue
    const/4 v6, 0x1

    .line 76
    const-string v2, "default"

    .line 77
    .local v2, szData:Ljava/lang/String;
    const/4 v1, 0x0

    .line 78
    .local v1, ret:I
    iget-object v3, p0, Lcom/redbend/vdmc/Sprint/DevInfo$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/DevInfo;

    invoke-static {}, Lcom/htc/ipl/common;->getInstance()Lcom/htc/ipl/common;

    move-result-object v4

    #setter for: Lcom/redbend/vdmc/Sprint/DevInfo;->mCommonIPL:Lcom/htc/ipl/common;
    invoke-static {v3, v4}, Lcom/redbend/vdmc/Sprint/DevInfo;->access$002(Lcom/redbend/vdmc/Sprint/DevInfo;Lcom/htc/ipl/common;)Lcom/htc/ipl/common;

    .line 79
    const-string v3, "./DevInfo/DevId"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v6, :cond_0

    .line 80
    iget-object v3, p0, Lcom/redbend/vdmc/Sprint/DevInfo$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/DevInfo;

    #getter for: Lcom/redbend/vdmc/Sprint/DevInfo;->mCommonIPL:Lcom/htc/ipl/common;
    invoke-static {v3}, Lcom/redbend/vdmc/Sprint/DevInfo;->access$000(Lcom/redbend/vdmc/Sprint/DevInfo;)Lcom/htc/ipl/common;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/ipl/common;->DevId()Ljava/lang/String;

    move-result-object v2

    .line 82
    :cond_0
    const-string v3, "./DevInfo/Lang"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v6, :cond_1

    .line 83
    iget-object v3, p0, Lcom/redbend/vdmc/Sprint/DevInfo$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/DevInfo;

    #getter for: Lcom/redbend/vdmc/Sprint/DevInfo;->mCommonIPL:Lcom/htc/ipl/common;
    invoke-static {v3}, Lcom/redbend/vdmc/Sprint/DevInfo;->access$000(Lcom/redbend/vdmc/Sprint/DevInfo;)Lcom/htc/ipl/common;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/ipl/common;->Lang()Ljava/lang/String;

    move-result-object v2

    .line 85
    :cond_1
    const-string v3, "./DevInfo/Man"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v6, :cond_2

    .line 86
    iget-object v3, p0, Lcom/redbend/vdmc/Sprint/DevInfo$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/DevInfo;

    #getter for: Lcom/redbend/vdmc/Sprint/DevInfo;->mCommonIPL:Lcom/htc/ipl/common;
    invoke-static {v3}, Lcom/redbend/vdmc/Sprint/DevInfo;->access$000(Lcom/redbend/vdmc/Sprint/DevInfo;)Lcom/htc/ipl/common;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/ipl/common;->Man()Ljava/lang/String;

    move-result-object v2

    .line 88
    :cond_2
    const-string v3, "./DevInfo/Mod"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v6, :cond_3

    .line 89
    iget-object v3, p0, Lcom/redbend/vdmc/Sprint/DevInfo$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/DevInfo;

    #getter for: Lcom/redbend/vdmc/Sprint/DevInfo;->mCommonIPL:Lcom/htc/ipl/common;
    invoke-static {v3}, Lcom/redbend/vdmc/Sprint/DevInfo;->access$000(Lcom/redbend/vdmc/Sprint/DevInfo;)Lcom/htc/ipl/common;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/ipl/common;->Mod()Ljava/lang/String;

    move-result-object v2

    .line 91
    :cond_3
    const-string v3, "DevInfo"

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

    .line 92
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 93
    if-eqz p2, :cond_4

    .line 94
    iget-object v3, p0, Lcom/redbend/vdmc/Sprint/DevInfo$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/DevInfo;

    #getter for: Lcom/redbend/vdmc/Sprint/DevInfo;->mCommonIPL:Lcom/htc/ipl/common;
    invoke-static {v3}, Lcom/redbend/vdmc/Sprint/DevInfo;->access$000(Lcom/redbend/vdmc/Sprint/DevInfo;)Lcom/htc/ipl/common;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v6, v4}, Lcom/htc/ipl/common;->AccessToggle(IZ)V

    .line 95
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 96
    .local v0, buf:Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 98
    .end local v0           #buf:Ljava/nio/ByteBuffer;
    :cond_4
    return v1
.end method

.method public write(I[BILjava/lang/String;)V
    .locals 3
    .parameter "offset"
    .parameter "data"
    .parameter "totalSize"
    .parameter "node"

    .prologue
    const/4 v2, 0x1

    .line 102
    iget-object v0, p0, Lcom/redbend/vdmc/Sprint/DevInfo$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/DevInfo;

    invoke-static {}, Lcom/htc/ipl/common;->getInstance()Lcom/htc/ipl/common;

    move-result-object v1

    #setter for: Lcom/redbend/vdmc/Sprint/DevInfo;->mCommonIPL:Lcom/htc/ipl/common;
    invoke-static {v0, v1}, Lcom/redbend/vdmc/Sprint/DevInfo;->access$002(Lcom/redbend/vdmc/Sprint/DevInfo;Lcom/htc/ipl/common;)Lcom/htc/ipl/common;

    .line 103
    iget-object v0, p0, Lcom/redbend/vdmc/Sprint/DevInfo$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/DevInfo;

    #getter for: Lcom/redbend/vdmc/Sprint/DevInfo;->mCommonIPL:Lcom/htc/ipl/common;
    invoke-static {v0}, Lcom/redbend/vdmc/Sprint/DevInfo;->access$000(Lcom/redbend/vdmc/Sprint/DevInfo;)Lcom/htc/ipl/common;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/htc/ipl/common;->AccessToggle(IZ)V

    .line 104
    return-void
.end method
