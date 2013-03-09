.class public Lcom/redbend/vdmc/Sprint/CDMA$NodeRWCB;
.super Ljava/lang/Object;
.source "CDMA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/redbend/vdmc/Sprint/CDMA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NodeRWCB"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redbend/vdmc/Sprint/CDMA;


# direct methods
.method public constructor <init>(Lcom/redbend/vdmc/Sprint/CDMA;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/redbend/vdmc/Sprint/CDMA$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/CDMA;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 75
    return-void
.end method


# virtual methods
.method public byteToHexString([B)Ljava/lang/String;
    .locals 6
    .parameter "bytes"

    .prologue
    const/4 v5, 0x1

    .line 117
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 118
    .local v1, rslt:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_2

    .line 119
    aget-byte v3, p1, v0

    if-ltz v3, :cond_1

    aget-byte v3, p1, v0

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 121
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 122
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 123
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    .end local v2           #s:Ljava/lang/String;
    :cond_1
    aget-byte v3, p1, v0

    add-int/lit16 v3, v3, 0x100

    goto :goto_1

    .line 125
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public read(I[BLjava/lang/String;)I
    .locals 6
    .parameter "offset"
    .parameter "data"
    .parameter "node"

    .prologue
    const/4 v5, 0x1

    .line 78
    const-string v2, "default"

    .line 79
    .local v2, szData:Ljava/lang/String;
    const/4 v1, 0x0

    .line 80
    .local v1, ret:I
    iget-object v3, p0, Lcom/redbend/vdmc/Sprint/CDMA$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/CDMA;

    invoke-static {}, Lcom/htc/ipl/cdma;->getInstance()Lcom/htc/ipl/cdma;

    move-result-object v4

    #setter for: Lcom/redbend/vdmc/Sprint/CDMA;->mCDMAIPL:Lcom/htc/ipl/cdma;
    invoke-static {v3, v4}, Lcom/redbend/vdmc/Sprint/CDMA;->access$002(Lcom/redbend/vdmc/Sprint/CDMA;Lcom/htc/ipl/cdma;)Lcom/htc/ipl/cdma;

    .line 81
    iget-object v3, p0, Lcom/redbend/vdmc/Sprint/CDMA$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/CDMA;

    invoke-static {}, Lcom/htc/ipl/common;->getInstance()Lcom/htc/ipl/common;

    move-result-object v4

    #setter for: Lcom/redbend/vdmc/Sprint/CDMA;->mCommonIPL:Lcom/htc/ipl/common;
    invoke-static {v3, v4}, Lcom/redbend/vdmc/Sprint/CDMA;->access$102(Lcom/redbend/vdmc/Sprint/CDMA;Lcom/htc/ipl/common;)Lcom/htc/ipl/common;

    .line 83
    const-string v3, "./CDMA/3GPD/Profile1/PasswordAAA"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v5, :cond_1

    .line 84
    const-string v3, "CDMA"

    const-string v4, "Do not have permission to read PasswordAAA."

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const-string v2, ""

    .line 93
    :goto_0
    const-string v3, "CDMA"

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

    .line 94
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 95
    if-eqz p2, :cond_0

    .line 96
    iget-object v3, p0, Lcom/redbend/vdmc/Sprint/CDMA$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/CDMA;

    #getter for: Lcom/redbend/vdmc/Sprint/CDMA;->mCommonIPL:Lcom/htc/ipl/common;
    invoke-static {v3}, Lcom/redbend/vdmc/Sprint/CDMA;->access$100(Lcom/redbend/vdmc/Sprint/CDMA;)Lcom/htc/ipl/common;

    move-result-object v3

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/htc/ipl/common;->AccessToggle(IZ)V

    .line 97
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 98
    .local v0, buf:Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 100
    .end local v0           #buf:Ljava/nio/ByteBuffer;
    :cond_0
    return v1

    .line 86
    :cond_1
    const-string v3, "./CDMA/3GPD/Profile1/PasswordHA"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v5, :cond_2

    .line 87
    const-string v3, "CDMA"

    const-string v4, "Do not have permission to read PasswordHA."

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const-string v2, ""

    goto :goto_0

    .line 90
    :cond_2
    iget-object v3, p0, Lcom/redbend/vdmc/Sprint/CDMA$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/CDMA;

    #getter for: Lcom/redbend/vdmc/Sprint/CDMA;->mCDMAIPL:Lcom/htc/ipl/cdma;
    invoke-static {v3}, Lcom/redbend/vdmc/Sprint/CDMA;->access$000(Lcom/redbend/vdmc/Sprint/CDMA;)Lcom/htc/ipl/cdma;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/htc/ipl/cdma;->GetConfigValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public write(I[BILjava/lang/String;)V
    .locals 4
    .parameter "offset"
    .parameter "data"
    .parameter "totalSize"
    .parameter "node"

    .prologue
    const/4 v3, 0x1

    .line 105
    const-string v1, "./CDMA/NAM/MobDirNum"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v3, :cond_0

    const-string v1, "./CDMA/NAM/CdmaNam"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_1

    .line 106
    :cond_0
    invoke-virtual {p0, p2}, Lcom/redbend/vdmc/Sprint/CDMA$NodeRWCB;->byteToHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, szData:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/redbend/vdmc/Sprint/CDMA$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/CDMA;

    invoke-static {}, Lcom/htc/ipl/cdma;->getInstance()Lcom/htc/ipl/cdma;

    move-result-object v2

    #setter for: Lcom/redbend/vdmc/Sprint/CDMA;->mCDMAIPL:Lcom/htc/ipl/cdma;
    invoke-static {v1, v2}, Lcom/redbend/vdmc/Sprint/CDMA;->access$002(Lcom/redbend/vdmc/Sprint/CDMA;Lcom/htc/ipl/cdma;)Lcom/htc/ipl/cdma;

    .line 110
    iget-object v1, p0, Lcom/redbend/vdmc/Sprint/CDMA$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/CDMA;

    invoke-static {}, Lcom/htc/ipl/common;->getInstance()Lcom/htc/ipl/common;

    move-result-object v2

    #setter for: Lcom/redbend/vdmc/Sprint/CDMA;->mCommonIPL:Lcom/htc/ipl/common;
    invoke-static {v1, v2}, Lcom/redbend/vdmc/Sprint/CDMA;->access$102(Lcom/redbend/vdmc/Sprint/CDMA;Lcom/htc/ipl/common;)Lcom/htc/ipl/common;

    .line 111
    iget-object v1, p0, Lcom/redbend/vdmc/Sprint/CDMA$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/CDMA;

    #getter for: Lcom/redbend/vdmc/Sprint/CDMA;->mCommonIPL:Lcom/htc/ipl/common;
    invoke-static {v1}, Lcom/redbend/vdmc/Sprint/CDMA;->access$100(Lcom/redbend/vdmc/Sprint/CDMA;)Lcom/htc/ipl/common;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/htc/ipl/common;->AccessToggle(IZ)V

    .line 112
    iget-object v1, p0, Lcom/redbend/vdmc/Sprint/CDMA$NodeRWCB;->this$0:Lcom/redbend/vdmc/Sprint/CDMA;

    #getter for: Lcom/redbend/vdmc/Sprint/CDMA;->mCDMAIPL:Lcom/htc/ipl/cdma;
    invoke-static {v1}, Lcom/redbend/vdmc/Sprint/CDMA;->access$000(Lcom/redbend/vdmc/Sprint/CDMA;)Lcom/htc/ipl/cdma;

    move-result-object v1

    invoke-virtual {v1, p4, v0}, Lcom/htc/ipl/cdma;->SetConfigValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v1, "CDMA"

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

    .line 114
    return-void

    .line 108
    .end local v0           #szData:Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([B)V

    .restart local v0       #szData:Ljava/lang/String;
    goto :goto_0
.end method
