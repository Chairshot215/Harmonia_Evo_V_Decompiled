.class public Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
.super Ljava/lang/Object;
.source "ProtoBuf.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$1;,
        Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;
    }
.end annotation


# static fields
.field public static final EMPTY_BYTE_ARRAY:[B

.field public static final FALSE:Ljava/lang/Boolean;

.field private static final NULL_COUNTER:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;

.field public static final TRUE:Ljava/lang/Boolean;


# instance fields
.field private cachedSize:I

.field private msgType:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;

.field private final values:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

.field private wireTypes:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v2}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->TRUE:Ljava/lang/Boolean;

    new-array v0, v2, [B

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->EMPTY_BYTE_ARRAY:[B

    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;-><init>(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$1;)V

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->NULL_COUNTER:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;

    return-void
.end method

.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x8000

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->cachedSize:I

    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->msgType:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;

    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    invoke-direct {v0}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->values:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    return-void
.end method

.method private addObject(ILjava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, p2, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->insertObject(IILjava/lang/Object;Z)V

    return-void
.end method

.method private assertTypeMatch(ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method private static checkTag(I)V
    .locals 0

    return-void
.end method

.method private static convert(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 6

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Unsupp.Type"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_1
    instance-of v3, p0, Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    :pswitch_2
    return-object p0

    :cond_1
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-int v3, v3

    packed-switch v3, :pswitch_data_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Type mismatch"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_3
    sget-object p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :pswitch_4
    sget-object p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :pswitch_5
    instance-of v3, p0, Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    const-wide/16 v3, 0x1

    :goto_1
    invoke-static {v3, v4}, Landroid_maps_conflict_avoidance/com/google/common/util/Primitives;->toLong(J)Ljava/lang/Long;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-wide/16 v3, 0x0

    goto :goto_1

    :pswitch_6
    instance-of v3, p0, Ljava/lang/String;

    if-eqz v3, :cond_3

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid_maps_conflict_avoidance/com/google/common/io/IoUtil;->encodeUtf8(Ljava/lang/String;)[B

    move-result-object p0

    goto :goto_0

    :cond_3
    instance-of v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    if-eqz v3, :cond_0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    check-cast p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    invoke-virtual {p0, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_7
    instance-of v3, p0, [B

    if-eqz v3, :cond_0

    check-cast p0, [B

    move-object v1, p0

    check-cast v1, [B

    const/4 v3, 0x0

    array-length v4, v1

    const/4 v5, 0x1

    invoke-static {v1, v3, v4, v5}, Landroid_maps_conflict_avoidance/com/google/common/io/IoUtil;->decodeUtf8([BIIZ)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :pswitch_8
    instance-of v3, p0, [B

    if-eqz v3, :cond_0

    :try_start_1
    new-instance v3, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;-><init>(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;)V

    check-cast p0, [B

    check-cast p0, [B

    invoke-virtual {v3, p0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->parse([B)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object p0

    goto :goto_0

    :catch_1
    move-exception v2

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_1
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

.method private static getCount(Ljava/lang/Object;)I
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    instance-of v0, p0, Ljava/util/Vector;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getDefault(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getType(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->msgType:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;->getData(I)Ljava/lang/Object;

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
    .locals 3

    invoke-static {p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->checkTag(I)V

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->values:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    invoke-virtual {v2, p1}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getCount(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getDefault(I)Ljava/lang/Object;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, p2, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getObjectWithoutArgChecking(IIILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method private getObject(III)Ljava/lang/Object;
    .locals 3

    invoke-static {p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->checkTag(I)V

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->values:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    invoke-virtual {v2, p1}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getCount(Ljava/lang/Object;)I

    move-result v0

    if-lt p2, v0, :cond_0

    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    :cond_0
    invoke-direct {p0, p1, p2, p3, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getObjectWithoutArgChecking(IIILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method private getObjectWithoutArgChecking(IIILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const/4 v1, 0x0

    instance-of v2, p4, Ljava/util/Vector;

    if-eqz v2, :cond_0

    move-object v1, p4

    check-cast v1, Ljava/util/Vector;

    invoke-virtual {v1, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p4

    :cond_0
    invoke-static {p4, p3}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->convert(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p4, :cond_1

    if-eqz p4, :cond_1

    if-nez v1, :cond_2

    invoke-direct {p0, p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {v1, v0, p2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method private static getVarIntSize(J)I
    .locals 3

    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-gez v1, :cond_1

    const/16 v0, 0xa

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    const-wide/16 v1, 0x80

    cmp-long v1, p0, v1

    if-ltz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x7

    shr-long/2addr p0, v1

    goto :goto_0
.end method

.method private final getWireType(I)I
    .locals 5

    const/16 v4, 0x2f

    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupp.Type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->msgType:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;

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

.method private insertObject(IILjava/lang/Object;Z)V
    .locals 3

    invoke-static {p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->checkTag(I)V

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->values:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    invoke-virtual {v2, p1}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    instance-of v2, v0, Ljava/util/Vector;

    if-eqz v2, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Vector;

    :cond_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    invoke-direct {p0, p1, p3}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_2
    invoke-direct {p0, p1, p3}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->assertTypeMatch(ILjava/lang/Object;)V

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->values:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    invoke-virtual {v2, p1, v1}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->put(ILjava/lang/Object;)V

    :cond_3
    if-eqz p4, :cond_4

    invoke-virtual {v1, p3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v1, p3, p2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method private isZigZagEncodedType(I)Z
    .locals 2

    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getType(I)I

    move-result v0

    const/16 v1, 0x21

    if-eq v0, v1, :cond_0

    const/16 v1, 0x22

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private outputField(ILandroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;)I
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v11

    invoke-direct/range {p0 .. p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getWireType(I)I

    move-result v16

    shl-int/lit8 v18, p1, 0x3

    or-int v17, v18, v16

    const/4 v13, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v11, :cond_6

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p2

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->writeVarInt(Ljava/io/OutputStream;J)I

    move-result v18

    add-int v13, v13, v18

    const/4 v3, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->availableContent()I

    move-result v6

    packed-switch v16, :pswitch_data_0

    :pswitch_0
    new-instance v18, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v18 .. v18}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v18

    :pswitch_1
    const/16 v18, 0x13

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v8, v2}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Long;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const/16 v18, 0x5

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    const/4 v5, 0x4

    :goto_1
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v5, :cond_2

    const-wide/16 v18, 0xff

    and-long v18, v18, v14

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->write(I)V

    const/16 v18, 0x8

    shr-long v14, v14, v18

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_0
    const/16 v5, 0x8

    goto :goto_1

    :pswitch_2
    const/16 v18, 0x13

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v8, v2}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Long;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-direct/range {p0 .. p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->isZigZagEncodedType(I)Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-static {v14, v15}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->zigZagEncode(J)J

    move-result-wide v14

    :cond_1
    move-object/from16 v0, p2

    invoke-static {v0, v14, v15}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->writeVarInt(Ljava/io/OutputStream;J)I

    :cond_2
    :goto_3
    if-nez v3, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->availableContent()I

    move-result v18

    sub-int v18, v18, v6

    add-int v13, v13, v18

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual/range {p0 .. p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getType(I)I

    move-result v18

    const/16 v19, 0x1b

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    const/16 v18, 0x10

    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v8, v2}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v9

    instance-of v0, v9, [B

    move/from16 v18, v0

    if-eqz v18, :cond_5

    check-cast v9, [B

    move-object v7, v9

    check-cast v7, [B

    array-length v0, v7

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p2

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->writeVarInt(Ljava/io/OutputStream;J)I

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->write([B)V

    goto :goto_3

    :cond_4
    const/16 v18, 0x19

    goto :goto_4

    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->availableContent()I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->addMarker(I)V

    invoke-virtual/range {p2 .. p2}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->numMarkers()I

    move-result v12

    const/16 v18, -0x1

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->addMarker(I)V

    check-cast v9, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    move-object/from16 v0, p2

    invoke-direct {v9, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->outputToInternal(Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;)I

    move-result v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v10}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->setMarker(II)V

    int-to-long v0, v10

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getVarIntSize(J)I

    move-result v18

    add-int v18, v18, v10

    add-int v13, v13, v18

    const/4 v3, 0x1

    goto :goto_3

    :pswitch_4
    const/16 v18, 0x1a

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v8, v2}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->outputToInternal(Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;)I

    move-result v18

    add-int v13, v13, v18

    shl-int/lit8 v18, p1, 0x3

    or-int/lit8 v18, v18, 0x4

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p2

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->writeVarInt(Ljava/io/OutputStream;J)I

    move-result v18

    add-int v13, v13, v18

    const/4 v3, 0x1

    goto/16 :goto_3

    :cond_6
    return v13

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

.method private outputTo(Ljava/io/OutputStream;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v2, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;

    invoke-direct {v2}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;-><init>()V

    invoke-direct {p0, v2}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->outputToInternal(Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;)I

    move-result v5

    if-eqz p2, :cond_0

    move-object v6, p1

    check-cast v6, Ljava/io/DataOutput;

    invoke-interface {v6, v5}, Ljava/io/DataOutput;->writeInt(I)V

    :cond_0
    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->numMarkers()I

    move-result v3

    :goto_0
    if-ge v1, v3, :cond_1

    invoke-virtual {v2, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->getMarker(I)I

    move-result v0

    sub-int v6, v0, v4

    invoke-virtual {v2, p1, v4, v6}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->writeContentsTo(Ljava/io/OutputStream;II)V

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v2, v6}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->getMarker(I)I

    move-result v6

    int-to-long v6, v6

    invoke-static {p1, v6, v7}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->writeVarInt(Ljava/io/OutputStream;J)I

    move v4, v0

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->availableContent()I

    move-result v6

    if-ge v4, v6, :cond_2

    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->availableContent()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {v2, p1, v4, v6}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->writeContentsTo(Ljava/io/OutputStream;II)V

    :cond_2
    return-void
.end method

.method private outputToInternal(Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->values:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->keys()Landroid_maps_conflict_avoidance/com/google/common/util/IntMap$KeyIterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap$KeyIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap$KeyIterator;->next()I

    move-result v1

    invoke-direct {p0, v1, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->outputField(ILandroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    return v2
.end method

.method private parseInternal(Ljava/io/InputStream;IZLandroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->clear()V

    :cond_0
    move v0, p2

    :goto_0
    if-lez v0, :cond_1

    const/4 v1, 0x1

    invoke-static {p1, v1, p4}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->readVarInt(Ljava/io/InputStream;ZLandroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;)J

    move-result-wide v3

    const-wide/16 v1, -0x1

    cmp-long v1, v3, v1

    if-nez v1, :cond_2

    :cond_1
    :goto_1
    if-gez v0, :cond_e

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_2
    iget v1, p4, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;->count:I

    sub-int v2, v0, v1

    long-to-int v0, v3

    and-int/lit8 v1, v0, 0x7

    const/4 v0, 0x4

    if-ne v1, v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    const/4 v0, 0x3

    ushr-long/2addr v3, v0

    long-to-int v6, v3

    invoke-virtual {p0, v6}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getType(I)I

    move-result v0

    const/16 v3, 0x10

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->wireTypes:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    if-nez v0, :cond_4

    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    invoke-direct {v0}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->wireTypes:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    :cond_4
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->wireTypes:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    invoke-static {v1}, Landroid_maps_conflict_avoidance/com/google/common/util/Primitives;->toInteger(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v6, v3}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->put(ILjava/lang/Object;)V

    move v0, v1

    :cond_5
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown wire type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reading garbage data?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    const/4 v0, 0x0

    invoke-static {p1, v0, p4}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->readVarInt(Ljava/io/InputStream;ZLandroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;)J

    move-result-wide v0

    iget v3, p4, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;->count:I

    sub-int/2addr v2, v3

    invoke-direct {p0, v6}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->isZigZagEncodedType(I)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->zigZagDecode(J)J

    move-result-wide v0

    :cond_6
    invoke-static {v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/util/Primitives;->toLong(J)Ljava/lang/Long;

    move-result-object v0

    move v1, v2

    :goto_2
    invoke-direct {p0, v6, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->addObject(ILjava/lang/Object;)V

    move v0, v1

    goto :goto_0

    :pswitch_2
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x5

    if-ne v1, v0, :cond_7

    const/4 v0, 0x4

    :goto_3
    sub-int v1, v2, v0

    :goto_4
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_8

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-long v7, v0

    shl-long/2addr v7, v3

    or-long/2addr v4, v7

    add-int/lit8 v0, v3, 0x8

    move v3, v0

    move v0, v2

    goto :goto_4

    :cond_7
    const/16 v0, 0x8

    goto :goto_3

    :cond_8
    invoke-static {v4, v5}, Landroid_maps_conflict_avoidance/com/google/common/util/Primitives;->toLong(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_2

    :pswitch_3
    const/4 v1, 0x0

    invoke-static {p1, v1, p4}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->readVarInt(Ljava/io/InputStream;ZLandroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;)J

    move-result-wide v3

    long-to-int v3, v3

    iget v1, p4, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;->count:I

    sub-int v1, v2, v1

    sub-int v2, v1, v3

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_9

    new-instance v1, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->msgType:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v6}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;->getData(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;-><init>(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;)V

    const/4 v0, 0x0

    invoke-direct {v1, p1, v3, v0, p4}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->parseInternal(Ljava/io/InputStream;IZLandroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;)I

    move-object v0, v1

    move v1, v2

    goto :goto_2

    :cond_9
    if-nez v3, :cond_a

    sget-object v0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->EMPTY_BYTE_ARRAY:[B

    :goto_5
    const/4 v1, 0x0

    :goto_6
    if-ge v1, v3, :cond_c

    sub-int v4, v3, v1

    invoke-virtual {p1, v0, v1, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-gtz v4, :cond_b

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unexp.EOF"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-array v0, v3, [B

    goto :goto_5

    :cond_b
    add-int/2addr v1, v4

    goto :goto_6

    :cond_c
    move v1, v2

    goto :goto_2

    :pswitch_4
    new-instance v1, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->msgType:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;

    if-nez v0, :cond_d

    const/4 v0, 0x0

    :goto_7
    invoke-direct {v1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;-><init>(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;)V

    const/4 v0, 0x0

    invoke-direct {v1, p1, v2, v0, p4}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->parseInternal(Ljava/io/InputStream;IZLandroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;)I

    move-result v0

    move-object v9, v1

    move v1, v0

    move-object v0, v9

    goto :goto_2

    :cond_d
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->msgType:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v6}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;->getData(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;

    goto :goto_7

    :cond_e
    return v0

    nop

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

.method private static readVarInt(Ljava/io/InputStream;ZLandroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    iput v0, p2, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;->count:I

    move v3, v0

    move v7, v0

    move-wide v8, v1

    move-wide v0, v8

    move v2, v7

    :goto_0
    const/16 v4, 0xa

    if-ge v2, v4, :cond_2

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    if-nez v2, :cond_0

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

    shl-long/2addr v5, v3

    or-long/2addr v0, v5

    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    iput v2, p2, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;->count:I

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x7

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private setObject(ILjava/lang/Object;)V
    .locals 1

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    if-eqz p2, :cond_1

    invoke-direct {p0, p1, p2}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->assertTypeMatch(ILjava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->values:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    invoke-virtual {v0, p1, p2}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->put(ILjava/lang/Object;)V

    return-void
.end method

.method static writeVarInt(Ljava/io/OutputStream;J)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    const-wide/16 v2, 0x7f

    and-long/2addr v2, p1

    long-to-int v1, v2

    const/4 v2, 0x7

    ushr-long/2addr p1, v2

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-nez v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0

    :cond_1
    or-int/lit16 v2, v1, 0x80

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

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

    xor-long p0, v0, v2

    return-wide p0
.end method

.method private static zigZagEncode(J)J
    .locals 4

    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    ushr-long v2, p0, v2

    neg-long v2, v2

    xor-long p0, v0, v2

    return-wide p0
.end method


# virtual methods
.method public addProtoBuf(ILandroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->addObject(ILjava/lang/Object;)V

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->values:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->wireTypes:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    return-void
.end method

.method public getBool(I)Z
    .locals 1

    const/16 v0, 0x18

    invoke-direct {p0, p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getBytes(I)[B
    .locals 1

    const/16 v0, 0x19

    invoke-direct {p0, p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public getCount(I)I
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->values:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    invoke-virtual {v0, p1}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getCount(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 2

    const/16 v0, 0x15

    invoke-direct {p0, p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getLong(I)J
    .locals 2

    const/16 v0, 0x13

    invoke-direct {p0, p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getProtoBuf(I)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    .locals 1

    const/16 v0, 0x1a

    invoke-direct {p0, p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    return-object v0
.end method

.method public getProtoBuf(II)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    .locals 1

    const/16 v0, 0x1a

    invoke-direct {p0, p1, p2, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x1c

    invoke-direct {p0, p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getString(II)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x1c

    invoke-direct {p0, p1, p2, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getType(I)I
    .locals 6

    const/4 v4, 0x0

    const/16 v5, 0x10

    const/16 v1, 0x10

    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->msgType:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->msgType:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v3, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;->getType(I)I

    move-result v1

    :cond_0
    if-ne v1, v5, :cond_1

    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->wireTypes:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->wireTypes:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    invoke-virtual {v3, p1}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    move-object v2, v3

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_1
    if-ne v1, v5, :cond_3

    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    if-lez v3, :cond_3

    invoke-direct {p0, p1, v4, v5}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Ljava/lang/Long;

    if-nez v3, :cond_2

    instance-of v3, v0, Ljava/lang/Boolean;

    if-eqz v3, :cond_5

    :cond_2
    move v1, v4

    :cond_3
    :goto_1
    return v1

    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    :cond_5
    const/4 v1, 0x2

    goto :goto_1
.end method

.method public has(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    if-gtz v0, :cond_0

    invoke-direct {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getDefault(I)Ljava/lang/Object;

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

.method public outputTo(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;Z)V

    return-void
.end method

.method public outputWithSizeTo(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;Z)V

    return-void
.end method

.method public parse(Ljava/io/InputStream;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-instance v1, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;-><init>(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$1;)V

    invoke-direct {p0, p1, p2, v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->parseInternal(Ljava/io/InputStream;IZLandroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;)I

    move-result v0

    return v0
.end method

.method public parse(Ljava/io/InputStream;)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;I)I

    return-object p0
.end method

.method public parse([B)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v1, p1

    invoke-virtual {p0, v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;I)I

    return-object p0
.end method

.method public setInt(II)V
    .locals 2

    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    return-void
.end method

.method public setLong(IJ)V
    .locals 1

    invoke-static {p2, p3}, Landroid_maps_conflict_avoidance/com/google/common/util/Primitives;->toLong(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)V

    return-void
.end method

.method public setString(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)V

    return-void
.end method
