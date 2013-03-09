.class public Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;
.super Ljava/lang/Object;


# static fields
.field public static final FALSE:Ljava/lang/Boolean; = null

.field private static final MSG_EOF:Ljava/lang/String; = "Unexp.EOF"

.field private static final MSG_MISMATCH:Ljava/lang/String; = "Type mismatch"

.field private static final MSG_UNSUPPORTED:Ljava/lang/String; = "Unsupp.Type"

.field public static final TRUE:Ljava/lang/Boolean; = null

.field private static final VARINT_MAX_BYTES:I = 0xa

.field static final WIRETYPE_END_GROUP:I = 0x4

.field static final WIRETYPE_FIXED32:I = 0x5

.field static final WIRETYPE_FIXED64:I = 0x1

.field static final WIRETYPE_LENGTH_DELIMITED:I = 0x2

.field static final WIRETYPE_START_GROUP:I = 0x3

.field static final WIRETYPE_VARINT:I


# instance fields
.field private cachedSize:I

.field private msgType:Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;

.field private final values:Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;

.field private final wireTypes:Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->TRUE:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x8000

    iput v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->cachedSize:I

    iput-object p1, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->msgType:Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;->newIntMapForProtoBuf()Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->values:Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;

    invoke-virtual {p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;->newIntMapForProtoBuf()Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->wireTypes:Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;

    invoke-direct {v0}, Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->values:Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;

    new-instance v0, Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;

    invoke-direct {v0}, Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->wireTypes:Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;

    goto :goto_0
.end method

.method private assertTypeMatch(ILjava/lang/Object;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getType(I)I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->msgType:Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    :pswitch_0
    :sswitch_0
    return-void

    :cond_1
    instance-of v2, p2, Ljava/lang/Boolean;

    if-eqz v2, :cond_3

    const/16 v2, 0x18

    if-eq v1, v2, :cond_0

    if-eqz v1, :cond_0

    :cond_2
    :goto_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Type mismatch type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->msgType:Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " tag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    instance-of v2, p2, Ljava/lang/Long;

    if-eqz v2, :cond_4

    packed-switch v1, :pswitch_data_0

    :pswitch_1
    goto :goto_1

    :cond_4
    instance-of v2, p2, [B

    if-eqz v2, :cond_5

    sparse-switch v1, :sswitch_data_0

    goto :goto_1

    :cond_5
    instance-of v2, p2, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;

    if-eqz v2, :cond_6

    sparse-switch v1, :sswitch_data_1

    goto :goto_1

    :sswitch_1
    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->msgType:Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->msgType:Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;

    invoke-virtual {v1, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;->getData(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->msgType:Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;

    if-eqz v1, :cond_0

    check-cast p2, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;

    iget-object v1, p2, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->msgType:Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;

    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->msgType:Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;->getData(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_6
    instance-of v2, p2, Ljava/lang/String;

    if-eqz v2, :cond_2

    sparse-switch v1, :sswitch_data_2

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_0
        0x1c -> :sswitch_0
        0x23 -> :sswitch_0
        0x24 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_1
        0x3 -> :sswitch_1
        0x19 -> :sswitch_1
        0x1a -> :sswitch_1
        0x1b -> :sswitch_1
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x2 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1c -> :sswitch_0
        0x24 -> :sswitch_0
    .end sparse-switch
.end method

.method private static convert(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unsupp.Type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    move-object v0, p0

    :goto_0
    return-object v0

    :pswitch_2
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    packed-switch v0, :pswitch_data_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Type mismatch"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    sget-object v0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :pswitch_5
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x1

    :goto_1
    invoke-static {v0, v1}, Lcom/google/android/apps/uploader/googlemobile/common/util/Primitives;->toLong(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1

    :cond_2
    move-object v0, p0

    goto :goto_0

    :pswitch_6
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_3

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/apps/uploader/googlemobile/common/io/IoUtil;->encodeUtf8(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    :cond_3
    instance-of v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;

    if-eqz v0, :cond_4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    check-cast p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    move-object v0, p0

    goto :goto_0

    :pswitch_7
    instance-of v0, p0, [B

    if-eqz v0, :cond_5

    check-cast p0, [B

    check-cast p0, [B

    const/4 v0, 0x0

    array-length v1, p0

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcom/google/android/apps/uploader/googlemobile/common/io/IoUtil;->decodeUtf8([BIIZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    move-object v0, p0

    goto :goto_0

    :pswitch_8
    instance-of v0, p0, [B

    if-eqz v0, :cond_6

    :try_start_1
    new-instance v0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;-><init>(Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;)V

    check-cast p0, [B

    check-cast p0, [B

    invoke-virtual {v0, p0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->parse([B)Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    move-object v0, p0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_2
        :pswitch_6
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getCachedDataSize(IIZ)I
    .locals 4

    shl-int/lit8 v0, p1, 0x3

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getVarIntSize(J)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const/16 v1, 0x10

    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object p0

    instance-of v1, p0, [B

    if-eqz v1, :cond_1

    check-cast p0, [B

    check-cast p0, [B

    array-length v1, p0

    :goto_0
    int-to-long v2, v1

    invoke-static {v2, v3}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getVarIntSize(J)I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    :goto_1
    return v0

    :pswitch_1
    add-int/lit8 v0, v0, 0x4

    goto :goto_1

    :pswitch_2
    add-int/lit8 v0, v0, 0x8

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getLong(II)J

    move-result-wide v1

    invoke-direct {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->isZigZagEncodedType(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v1, v2}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->zigZagEncode(J)J

    move-result-wide v1

    :cond_0
    invoke-static {v1, v2}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getVarIntSize(J)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getDataSize()I

    move-result v1

    add-int/2addr v1, v0

    add-int/2addr v0, v1

    goto :goto_1

    :cond_1
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_2

    check-cast p0, Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/google/android/apps/uploader/googlemobile/common/io/IoUtil;->encodeUtf8(Ljava/lang/String;[BI)I

    move-result v1

    goto :goto_0

    :cond_2
    check-cast p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;

    invoke-direct {p0, p3}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getCachedDataSize(Z)I

    move-result v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getCachedDataSize(Z)I
    .locals 6

    const/4 v5, 0x0

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->cachedSize:I

    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_0

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->cachedSize:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->values:Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;->keys()Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap$KeyIterator;

    move-result-object v0

    move v1, v5

    :goto_1
    invoke-virtual {v0}, Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap$KeyIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap$KeyIterator;->next()I

    move-result v2

    move v3, v1

    move v1, v5

    :goto_2
    invoke-virtual {p0, v2}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v4

    if-ge v1, v4, :cond_1

    invoke-direct {p0, v2, v1, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getCachedDataSize(IIZ)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    iput v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->cachedSize:I

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->cachedSize:I

    goto :goto_0
.end method

.method private getDefault(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getType(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->msgType:Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;->getData(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x1a -> :sswitch_0
        0x1b -> :sswitch_0
    .end sparse-switch
.end method

.method private getObject(II)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getDefault(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method private getObject(III)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    if-lt p2, v0, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->values:Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    instance-of v2, v0, Ljava/util/Vector;

    if-eqz v2, :cond_3

    check-cast v0, Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    invoke-static {v1, p3}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->convert(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v1, :cond_1

    if-eqz v1, :cond_1

    if-nez v0, :cond_2

    invoke-direct {p0, p1, v2}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)V

    :cond_1
    :goto_1
    return-object v2

    :cond_2
    invoke-virtual {v0, v2, p2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    goto :goto_1

    :cond_3
    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_0
.end method

.method private static getVarIntSize(J)I
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    const/16 v0, 0xa

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x1

    move-wide v1, p0

    :goto_0
    const-wide/16 v3, 0x80

    cmp-long v3, v1, v3

    if-ltz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x7

    shr-long/2addr v1, v3

    goto :goto_0
.end method

.method private final getWireType(I)I
    .locals 5

    const/16 v4, 0x2f

    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupp.Type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->msgType:Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    const/4 v0, 0x0

    :goto_0
    :pswitch_2
    return v0

    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_6
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_3
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private insertObject(IILjava/lang/Object;)V
    .locals 3

    invoke-direct {p0, p1, p3}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->assertTypeMatch(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1, p3}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->values:Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;

    invoke-virtual {v1, p1}, Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/util/Vector;

    if-eqz v2, :cond_1

    move-object v0, v1

    check-cast v0, Ljava/util/Vector;

    move-object p0, v0

    move-object v1, p0

    :goto_1
    invoke-virtual {v1, p3, p2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->values:Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;

    invoke-virtual {v1, p1, v2}, Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;->put(ILjava/lang/Object;)V

    move-object v1, v2

    goto :goto_1
.end method

.method private isZigZagEncodedType(I)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getType(I)I

    move-result v0

    const/16 v1, 0x21

    if-eq v0, v1, :cond_0

    const/16 v1, 0x22

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private outputField(ILjava/io/OutputStream;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    invoke-direct {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getWireType(I)I

    move-result v2

    shl-int/lit8 v0, p1, 0x3

    or-int v3, v0, v2

    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-ge v4, v1, :cond_5

    int-to-long v5, v3

    invoke-static {p2, v5, v6}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->writeVarInt(Ljava/io/OutputStream;J)V

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_1
    const/16 v0, 0x13

    invoke-direct {p0, p1, v4, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const/4 v0, 0x5

    if-ne v2, v0, :cond_0

    const/4 v0, 0x4

    :goto_1
    const/4 v7, 0x0

    move v10, v7

    move-wide v11, v5

    move-wide v6, v11

    move v5, v10

    :goto_2
    if-ge v5, v0, :cond_2

    const-wide/16 v8, 0xff

    and-long/2addr v8, v6

    long-to-int v8, v8

    invoke-virtual {p2, v8}, Ljava/io/OutputStream;->write(I)V

    const/16 v8, 0x8

    shr-long/2addr v6, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_0
    const/16 v0, 0x8

    goto :goto_1

    :pswitch_2
    const/16 v0, 0x13

    invoke-direct {p0, p1, v4, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->isZigZagEncodedType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v5, v6}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->zigZagEncode(J)J

    move-result-wide v5

    :cond_1
    invoke-static {p2, v5, v6}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->writeVarInt(Ljava/io/OutputStream;J)V

    :cond_2
    :goto_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getType(I)I

    move-result v0

    const/16 v5, 0x1b

    if-ne v0, v5, :cond_3

    const/16 v0, 0x10

    :goto_4
    invoke-direct {p0, p1, v4, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v0

    instance-of v5, v0, [B

    if-eqz v5, :cond_4

    check-cast v0, [B

    check-cast v0, [B

    array-length v5, v0

    int-to-long v5, v5

    invoke-static {p2, v5, v6}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->writeVarInt(Ljava/io/OutputStream;J)V

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_3

    :cond_3
    const/16 v0, 0x19

    goto :goto_4

    :cond_4
    check-cast v0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;

    const/4 v5, 0x1

    invoke-direct {v0, v5}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getCachedDataSize(Z)I

    move-result v5

    int-to-long v5, v5

    invoke-static {p2, v5, v6}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->writeVarInt(Ljava/io/OutputStream;J)V

    invoke-direct {v0, p2}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->outputToInternal(Ljava/io/OutputStream;)V

    goto :goto_3

    :pswitch_4
    const/16 v0, 0x1a

    invoke-direct {p0, p1, v4, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;

    invoke-direct {v0, p2}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->outputToInternal(Ljava/io/OutputStream;)V

    shl-int/lit8 v0, p1, 0x3

    or-int/lit8 v0, v0, 0x4

    int-to-long v5, v0

    invoke-static {p2, v5, v6}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->writeVarInt(Ljava/io/OutputStream;J)V

    goto :goto_3

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private outputToInternal(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->values:Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;->keys()Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap$KeyIterator;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap$KeyIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap$KeyIterator;->next()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->outputField(ILjava/io/OutputStream;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static readVarInt(Ljava/io/InputStream;Z)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    move v7, v2

    move v8, v2

    move-wide v2, v0

    move v0, v7

    move v1, v8

    :goto_0
    const/16 v4, 0xa

    if-ge v0, v4, :cond_3

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const-wide/16 v0, -0x1

    :goto_1
    return-wide v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    and-int/lit8 v5, v4, 0x7f

    int-to-long v5, v5

    shl-long/2addr v5, v1

    or-long/2addr v2, v5

    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_2

    move-wide v0, v2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x7

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move-wide v0, v2

    goto :goto_1
.end method

.method private setObject(ILjava/lang/Object;)V
    .locals 1

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    if-eqz p2, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->assertTypeMatch(ILjava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->values:Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;->put(ILjava/lang/Object;)V

    return-void
.end method

.method static writeVarInt(Ljava/io/OutputStream;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move-wide v1, p1

    :goto_0
    const/16 v3, 0xa

    if-ge v0, v3, :cond_0

    const-wide/16 v3, 0x7f

    and-long/2addr v3, v1

    long-to-int v3, v3

    const/4 v4, 0x7

    ushr-long/2addr v1, v4

    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-nez v4, :cond_1

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    :cond_0
    return-void

    :cond_1
    or-int/lit16 v3, v3, 0x80

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static zigZagDecode(J)J
    .locals 4

    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr v2, p0

    neg-long v2, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private static zigZagEncode(J)J
    .locals 4

    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    ushr-long v2, p0, v2

    neg-long v2, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public addBool(IZ)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->insertBool(IIZ)V

    return-void
.end method

.method public addBytes(I[B)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->insertBytes(II[B)V

    return-void
.end method

.method public addDouble(ID)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->insertDouble(IID)V

    return-void
.end method

.method public addFloat(IF)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->insertFloat(IIF)V

    return-void
.end method

.method public addInt(II)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->insertInt(III)V

    return-void
.end method

.method public addLong(IJ)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->insertLong(IIJ)V

    return-void
.end method

.method public addProtoBuf(ILcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->insertProtoBuf(IILcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;)V

    return-void
.end method

.method public addString(ILjava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->insertString(IILjava/lang/String;)V

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->values:Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;->clear()V

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->wireTypes:Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;->clear()V

    return-void
.end method

.method public createGroup(I)Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;
    .locals 2

    new-instance v0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getType()Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;->getData(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;

    invoke-direct {v0, p0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;-><init>(Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;)V

    return-object v0
.end method

.method public getBool(I)Z
    .locals 1

    const/16 v0, 0x18

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getBool(II)Z
    .locals 1

    const/16 v0, 0x18

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getBytes(I)[B
    .locals 1

    const/16 v0, 0x19

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    check-cast p0, [B

    return-object p0
.end method

.method public getBytes(II)[B
    .locals 1

    const/16 v0, 0x19

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    check-cast p0, [B

    return-object p0
.end method

.method public getCount(I)I
    .locals 1

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->values:Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    instance-of v0, p0, Ljava/util/Vector;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getDataSize()I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getCachedDataSize(Z)I

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .locals 2

    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDouble(II)D
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getLong(II)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public getFloat(II)F
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getInt(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 2

    const/16 v0, 0x15

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getInt(II)I
    .locals 2

    const/16 v0, 0x15

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getLong(I)J
    .locals 2

    const/16 v0, 0x13

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(II)J
    .locals 2

    const/16 v0, 0x13

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getProtoBuf(I)Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;
    .locals 1

    const/16 v0, 0x1a

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;

    return-object p0
.end method

.method public getProtoBuf(II)Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;
    .locals 1

    const/16 v0, 0x1a

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;

    return-object p0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x1c

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getString(II)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x1c

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getType(I)I
    .locals 4

    const/4 v3, 0x0

    const/16 v2, 0x10

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->msgType:Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->msgType:Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;->getType(I)I

    move-result v0

    move v1, v0

    :goto_0
    if-ne v1, v2, :cond_3

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->wireTypes:Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    if-ne v0, v2, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    if-lez v1, :cond_1

    invoke-direct {p0, p1, v3, v2}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Long;

    if-nez v1, :cond_0

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    :cond_0
    move v0, v3

    :cond_1
    :goto_2
    return v0

    :cond_2
    const/4 v0, 0x2

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public getType()Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->msgType:Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;

    return-object v0
.end method

.method public has(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    if-gtz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getDefault(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public insertBool(IIZ)V
    .locals 1

    if-eqz p3, :cond_0

    sget-object v0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->TRUE:Ljava/lang/Boolean;

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->insertObject(IILjava/lang/Object;)V

    return-void

    :cond_0
    sget-object v0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public insertBytes(II[B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->insertObject(IILjava/lang/Object;)V

    return-void
.end method

.method public insertDouble(IID)V
    .locals 2

    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->insertLong(IIJ)V

    return-void
.end method

.method public insertFloat(IIF)V
    .locals 1

    invoke-static {p3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->insertInt(III)V

    return-void
.end method

.method public insertInt(III)V
    .locals 2

    int-to-long v0, p3

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->insertLong(IIJ)V

    return-void
.end method

.method public insertLong(IIJ)V
    .locals 1

    invoke-static {p3, p4}, Lcom/google/android/apps/uploader/googlemobile/common/util/Primitives;->toLong(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->insertObject(IILjava/lang/Object;)V

    return-void
.end method

.method public insertProtoBuf(IILcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->insertObject(IILjava/lang/Object;)V

    return-void
.end method

.method public insertString(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->insertObject(IILjava/lang/Object;)V

    return-void
.end method

.method public maxTag()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->values:Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;->maxKey()I

    move-result v0

    return v0
.end method

.method public outputTo(Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getDataSize()I

    invoke-direct {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->outputToInternal(Ljava/io/OutputStream;)V

    return-void
.end method

.method public parse(Ljava/io/InputStream;I)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v10, 0x4

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->clear()V

    move v0, p2

    :goto_0
    if-lez v0, :cond_0

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->readVarInt(Ljava/io/InputStream;Z)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-nez v3, :cond_1

    :cond_0
    :goto_1
    if-gez v0, :cond_9

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_1
    invoke-static {v1, v2}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getVarIntSize(J)I

    move-result v3

    sub-int v3, v0, v3

    long-to-int v0, v1

    and-int/lit8 v0, v0, 0x7

    if-ne v0, v10, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    const/4 v4, 0x3

    ushr-long/2addr v1, v4

    long-to-int v1, v1

    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->wireTypes:Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;

    invoke-static {v0}, Lcom/google/android/apps/uploader/googlemobile/common/util/Primitives;->toInteger(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;->put(ILjava/lang/Object;)V

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown wire type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", reading garbage data?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    invoke-static {p1, v9}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->readVarInt(Ljava/io/InputStream;Z)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getVarIntSize(J)I

    move-result v0

    sub-int v0, v3, v0

    invoke-direct {p0, v1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->isZigZagEncodedType(I)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {v4, v5}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->zigZagDecode(J)J

    move-result-wide v2

    :goto_2
    invoke-static {v2, v3}, Lcom/google/android/apps/uploader/googlemobile/common/util/Primitives;->toLong(J)Ljava/lang/Long;

    move-result-object v2

    move-object v11, v2

    move v2, v0

    move-object v0, v11

    :goto_3
    invoke-virtual {p0, v1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    invoke-direct {p0, v1, v3, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->insertObject(IILjava/lang/Object;)V

    move v0, v2

    goto :goto_0

    :pswitch_2
    const-wide/16 v4, 0x0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_3

    move v0, v10

    :goto_4
    sub-int v2, v3, v0

    move v3, v9

    :goto_5
    add-int/lit8 v6, v0, -0x1

    if-lez v0, :cond_4

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-long v7, v0

    shl-long/2addr v7, v3

    or-long/2addr v4, v7

    add-int/lit8 v0, v3, 0x8

    move v3, v0

    move v0, v6

    goto :goto_5

    :cond_3
    const/16 v0, 0x8

    goto :goto_4

    :cond_4
    invoke-static {v4, v5}, Lcom/google/android/apps/uploader/googlemobile/common/util/Primitives;->toLong(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_3

    :pswitch_3
    invoke-static {p1, v9}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->readVarInt(Ljava/io/InputStream;Z)J

    move-result-wide v4

    long-to-int v2, v4

    int-to-long v4, v2

    invoke-static {v4, v5}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getVarIntSize(J)I

    move-result v0

    sub-int v0, v3, v0

    sub-int v3, v0, v2

    invoke-virtual {p0, v1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getType(I)I

    move-result v0

    const/16 v4, 0x1b

    if-ne v0, v4, :cond_5

    new-instance v4, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->msgType:Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;->getData(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;

    invoke-direct {v4, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;-><init>(Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;)V

    invoke-virtual {v4, p1, v2}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;I)I

    move-object v0, v4

    move v2, v3

    goto :goto_3

    :cond_5
    new-array v0, v2, [B

    move v4, v9

    :goto_6
    if-ge v4, v2, :cond_7

    sub-int v5, v2, v4

    invoke-virtual {p1, v0, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-gtz v5, :cond_6

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unexp.EOF"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    add-int/2addr v4, v5

    goto :goto_6

    :cond_7
    move v2, v3

    goto :goto_3

    :pswitch_4
    new-instance v2, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->msgType:Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    invoke-direct {v2, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;-><init>(Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;)V

    invoke-virtual {v2, p1, v3}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;I)I

    move-result v0

    move-object v11, v2

    move v2, v0

    move-object v0, v11

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->msgType:Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;->getData(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;

    goto :goto_7

    :cond_9
    return v0

    :cond_a
    move-wide v2, v4

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public parse(Ljava/io/InputStream;)Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;I)I

    return-object p0
.end method

.method public parse([B)Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;I)I

    return-object p0
.end method

.method public remove(II)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    if-lt p2, v0, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->values:Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;->remove(I)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->values:Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Vector;

    invoke-virtual {p0, p2}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_0
.end method

.method public setBool(IZ)V
    .locals 1

    if-eqz p2, :cond_0

    sget-object v0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->TRUE:Ljava/lang/Boolean;

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)V

    return-void

    :cond_0
    sget-object v0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public setBytes(I[B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)V

    return-void
.end method

.method public setDouble(ID)V
    .locals 2

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->setLong(IJ)V

    return-void
.end method

.method public setFloat(IF)V
    .locals 1

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->setInt(II)V

    return-void
.end method

.method public setInt(II)V
    .locals 2

    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->setLong(IJ)V

    return-void
.end method

.method public setLong(IJ)V
    .locals 1

    invoke-static {p2, p3}, Lcom/google/android/apps/uploader/googlemobile/common/util/Primitives;->toLong(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)V

    return-void
.end method

.method public setProtoBuf(ILcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)V

    return-void
.end method

.method public setString(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)V

    return-void
.end method

.method setType(Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->values:Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->msgType:Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->msgType:Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;

    if-eq p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->msgType:Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;

    return-void
.end method

.method public toByteArray()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
