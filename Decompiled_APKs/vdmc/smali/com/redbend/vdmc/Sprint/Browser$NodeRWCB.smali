.class public Lcom/redbend/vdmc/Sprint/Browser$NodeRWCB;
.super Ljava/lang/Object;
.source "Browser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/redbend/vdmc/Sprint/Browser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NodeRWCB"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redbend/vdmc/Sprint/Browser;


# direct methods
.method public constructor <init>(Lcom/redbend/vdmc/Sprint/Browser;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/redbend/vdmc/Sprint/Browser$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/Browser;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method


# virtual methods
.method public read(I[BLjava/lang/String;)I
    .locals 6
    .parameter "offset"
    .parameter "data"
    .parameter "node"

    .prologue
    .line 66
    const-string v2, "default"

    .line 67
    .local v2, szData:Ljava/lang/String;
    const/4 v1, 0x0

    .line 68
    .local v1, ret:I
    iget-object v3, p0, Lcom/redbend/vdmc/Sprint/Browser$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/Browser;

    invoke-static {}, Lcom/htc/ipl/common;->getInstance()Lcom/htc/ipl/common;

    move-result-object v4

    #setter for: Lcom/redbend/vdmc/Sprint/Browser;->mCommonIPL:Lcom/htc/ipl/common;
    invoke-static {v3, v4}, Lcom/redbend/vdmc/Sprint/Browser;->access$002(Lcom/redbend/vdmc/Sprint/Browser;Lcom/htc/ipl/common;)Lcom/htc/ipl/common;

    .line 69
    iget-object v3, p0, Lcom/redbend/vdmc/Sprint/Browser$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/Browser;

    #getter for: Lcom/redbend/vdmc/Sprint/Browser;->mCommonIPL:Lcom/htc/ipl/common;
    invoke-static {v3}, Lcom/redbend/vdmc/Sprint/Browser;->access$000(Lcom/redbend/vdmc/Sprint/Browser;)Lcom/htc/ipl/common;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/htc/ipl/common;->GetBrowserValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 70
    const-string v3, "Browser"

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

    .line 71
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 72
    if-eqz p2, :cond_0

    .line 73
    iget-object v3, p0, Lcom/redbend/vdmc/Sprint/Browser$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/Browser;

    #getter for: Lcom/redbend/vdmc/Sprint/Browser;->mCommonIPL:Lcom/htc/ipl/common;
    invoke-static {v3}, Lcom/redbend/vdmc/Sprint/Browser;->access$000(Lcom/redbend/vdmc/Sprint/Browser;)Lcom/htc/ipl/common;

    move-result-object v3

    const/16 v4, 0xa

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/htc/ipl/common;->AccessToggle(IZ)V

    .line 74
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 75
    .local v0, buf:Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 77
    .end local v0           #buf:Ljava/nio/ByteBuffer;
    :cond_0
    return v1
.end method

.method public write(I[BILjava/lang/String;)V
    .locals 4
    .parameter "offset"
    .parameter "data"
    .parameter "totalSize"
    .parameter "node"

    .prologue
    .line 81
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([B)V

    .line 82
    .local v0, szData:Ljava/lang/String;
    iget-object v1, p0, Lcom/redbend/vdmc/Sprint/Browser$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/Browser;

    invoke-static {}, Lcom/htc/ipl/common;->getInstance()Lcom/htc/ipl/common;

    move-result-object v2

    #setter for: Lcom/redbend/vdmc/Sprint/Browser;->mCommonIPL:Lcom/htc/ipl/common;
    invoke-static {v1, v2}, Lcom/redbend/vdmc/Sprint/Browser;->access$002(Lcom/redbend/vdmc/Sprint/Browser;Lcom/htc/ipl/common;)Lcom/htc/ipl/common;

    .line 83
    iget-object v1, p0, Lcom/redbend/vdmc/Sprint/Browser$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/Browser;

    #getter for: Lcom/redbend/vdmc/Sprint/Browser;->mCommonIPL:Lcom/htc/ipl/common;
    invoke-static {v1}, Lcom/redbend/vdmc/Sprint/Browser;->access$000(Lcom/redbend/vdmc/Sprint/Browser;)Lcom/htc/ipl/common;

    move-result-object v1

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/htc/ipl/common;->AccessToggle(IZ)V

    .line 84
    iget-object v1, p0, Lcom/redbend/vdmc/Sprint/Browser$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/Browser;

    #getter for: Lcom/redbend/vdmc/Sprint/Browser;->mCommonIPL:Lcom/htc/ipl/common;
    invoke-static {v1}, Lcom/redbend/vdmc/Sprint/Browser;->access$000(Lcom/redbend/vdmc/Sprint/Browser;)Lcom/htc/ipl/common;

    move-result-object v1

    invoke-virtual {v1, p4, v0}, Lcom/htc/ipl/common;->SetBrowserValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v1, "Browser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "node:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " szData:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void
.end method
