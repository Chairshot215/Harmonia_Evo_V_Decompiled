.class public final Lcom/google/common/io/protocol/ProtoBufUtil;
.super Ljava/lang/Object;
.source "ProtoBufUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static readNextProtoBuf(Lcom/google/common/io/protocol/ProtoBufType;Ljava/io/InputStream;Lcom/google/common/io/protocol/ProtoBuf;)I
    .locals 8
    .parameter "umbrellaType"
    .parameter "is"
    .parameter "result"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    const/4 v4, 0x1

    invoke-static {p1, v4}, Lcom/google/common/io/protocol/ProtoBuf;->readVarInt(Ljava/io/InputStream;Z)J

    move-result-wide v2

    .line 157
    .local v2, tagAndType:J
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 158
    const/4 v1, -0x1

    .line 169
    :goto_0
    return v1

    .line 161
    :cond_0
    const-wide/16 v4, 0x7

    and-long/2addr v4, v2

    const-wide/16 v6, 0x2

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 162
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Message expected"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 164
    :cond_1
    const/4 v4, 0x3

    ushr-long v4, v2, v4

    long-to-int v1, v4

    .line 166
    .local v1, tag:I
    invoke-virtual {p0, v1}, Lcom/google/common/io/protocol/ProtoBufType;->getData(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {p2, v4}, Lcom/google/common/io/protocol/ProtoBuf;->setType(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 167
    const/4 v4, 0x0

    invoke-static {p1, v4}, Lcom/google/common/io/protocol/ProtoBuf;->readVarInt(Ljava/io/InputStream;Z)J

    move-result-wide v4

    long-to-int v0, v4

    .line 168
    .local v0, length:I
    invoke-virtual {p2, p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;I)I

    goto :goto_0
.end method
