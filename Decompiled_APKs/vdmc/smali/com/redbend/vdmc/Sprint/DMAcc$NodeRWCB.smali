.class public Lcom/redbend/vdmc/Sprint/DMAcc$NodeRWCB;
.super Ljava/lang/Object;
.source "DMAcc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/redbend/vdmc/Sprint/DMAcc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NodeRWCB"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redbend/vdmc/Sprint/DMAcc;


# direct methods
.method public constructor <init>(Lcom/redbend/vdmc/Sprint/DMAcc;)V
    .locals 0
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/redbend/vdmc/Sprint/DMAcc$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/DMAcc;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 235
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

    .line 238
    const-string v2, "default"

    .line 239
    .local v2, szData:Ljava/lang/String;
    const/4 v1, 0x0

    .line 240
    .local v1, ret:I
    iget-object v3, p0, Lcom/redbend/vdmc/Sprint/DMAcc$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/DMAcc;

    invoke-static {}, Lcom/htc/ipl/common;->getInstance()Lcom/htc/ipl/common;

    move-result-object v4

    #setter for: Lcom/redbend/vdmc/Sprint/DMAcc;->mCommonIPL:Lcom/htc/ipl/common;
    invoke-static {v3, v4}, Lcom/redbend/vdmc/Sprint/DMAcc;->access$002(Lcom/redbend/vdmc/Sprint/DMAcc;Lcom/htc/ipl/common;)Lcom/htc/ipl/common;

    .line 241
    const-string v3, "./DMAcc/sprint/AppAuth/clientAuth/AAuthSecret"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v5, :cond_0

    .line 242
    iget-object v3, p0, Lcom/redbend/vdmc/Sprint/DMAcc$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/DMAcc;

    #getter for: Lcom/redbend/vdmc/Sprint/DMAcc;->mCommonIPL:Lcom/htc/ipl/common;
    invoke-static {v3}, Lcom/redbend/vdmc/Sprint/DMAcc;->access$000(Lcom/redbend/vdmc/Sprint/DMAcc;)Lcom/htc/ipl/common;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/ipl/common;->CalcClnPWD()Ljava/lang/String;

    move-result-object v2

    .line 244
    :cond_0
    const-string v3, "./DMAcc/sprint/AppAuth/clientAuth/AAuthName"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v5, :cond_1

    .line 245
    iget-object v3, p0, Lcom/redbend/vdmc/Sprint/DMAcc$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/DMAcc;

    #getter for: Lcom/redbend/vdmc/Sprint/DMAcc;->mCommonIPL:Lcom/htc/ipl/common;
    invoke-static {v3}, Lcom/redbend/vdmc/Sprint/DMAcc;->access$000(Lcom/redbend/vdmc/Sprint/DMAcc;)Lcom/htc/ipl/common;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/ipl/common;->ClientName()Ljava/lang/String;

    move-result-object v2

    .line 247
    :cond_1
    const-string v3, "./DMAcc/sprint/AppAuth/serverAuth/AAuthSecret"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v5, :cond_2

    .line 248
    iget-object v3, p0, Lcom/redbend/vdmc/Sprint/DMAcc$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/DMAcc;

    #getter for: Lcom/redbend/vdmc/Sprint/DMAcc;->mCommonIPL:Lcom/htc/ipl/common;
    invoke-static {v3}, Lcom/redbend/vdmc/Sprint/DMAcc;->access$000(Lcom/redbend/vdmc/Sprint/DMAcc;)Lcom/htc/ipl/common;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/ipl/common;->CalcSvrPWD()Ljava/lang/String;

    move-result-object v2

    .line 250
    :cond_2
    const-string v3, "./DMAcc/sprint/AppAuth/serverAuth/AAuthName"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v5, :cond_3

    .line 251
    iget-object v3, p0, Lcom/redbend/vdmc/Sprint/DMAcc$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/DMAcc;

    #getter for: Lcom/redbend/vdmc/Sprint/DMAcc;->mCommonIPL:Lcom/htc/ipl/common;
    invoke-static {v3}, Lcom/redbend/vdmc/Sprint/DMAcc;->access$000(Lcom/redbend/vdmc/Sprint/DMAcc;)Lcom/htc/ipl/common;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/ipl/common;->ServerName()Ljava/lang/String;

    move-result-object v2

    .line 253
    :cond_3
    const-string v3, "DMAcc"

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

    .line 254
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 255
    if-eqz p2, :cond_4

    .line 256
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 257
    .local v0, buf:Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 259
    .end local v0           #buf:Ljava/nio/ByteBuffer;
    :cond_4
    return v1
.end method

.method public write(I[BILjava/lang/String;)V
    .locals 0
    .parameter "offset"
    .parameter "data"
    .parameter "totalSize"
    .parameter "node"

    .prologue
    .line 264
    return-void
.end method
