.class final Lcom/htc/protobuf/FieldSet;
.super Ljava/lang/Object;
.source "FieldSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/protobuf/FieldSet$1;,
        Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FieldDescriptorType::",
        "Lcom/htc/protobuf/FieldSet$FieldDescriptorLite",
        "<TFieldDescriptorType;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/htc/protobuf/FieldSet;


# instance fields
.field private fields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/htc/protobuf/FieldSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/htc/protobuf/FieldSet;-><init>(Z)V

    sput-object v0, Lcom/htc/protobuf/FieldSet;->DEFAULT_INSTANCE:Lcom/htc/protobuf/FieldSet;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/htc/protobuf/FieldSet;->fields:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/FieldSet;->fields:Ljava/util/Map;

    return-void
.end method

.method private static computeElementSize(Lcom/htc/protobuf/WireFormat$FieldType;ILjava/lang/Object;)I
    .locals 2

    invoke-static {p1}, Lcom/htc/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    sget-object v1, Lcom/htc/protobuf/WireFormat$FieldType;->GROUP:Lcom/htc/protobuf/WireFormat$FieldType;

    if-ne p0, v1, :cond_0

    mul-int/lit8 v0, v0, 0x2

    :cond_0
    invoke-static {p0, p2}, Lcom/htc/protobuf/FieldSet;->computeElementSizeNoTag(Lcom/htc/protobuf/WireFormat$FieldType;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method private static computeElementSizeNoTag(Lcom/htc/protobuf/WireFormat$FieldType;Ljava/lang/Object;)I
    .locals 2

    sget-object v0, Lcom/htc/protobuf/FieldSet$1;->$SwitchMap$com$htc$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p0}, Lcom/htc/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->computeDoubleSizeNoTag(D)I

    move-result v0

    :goto_0
    return v0

    :pswitch_1
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/htc/protobuf/CodedOutputStream;->computeFloatSizeNoTag(F)I

    move-result v0

    goto :goto_0

    :pswitch_2
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->computeInt64SizeNoTag(J)I

    move-result v0

    goto :goto_0

    :pswitch_3
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->computeUInt64SizeNoTag(J)I

    move-result v0

    goto :goto_0

    :pswitch_4
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/htc/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v0

    goto :goto_0

    :pswitch_5
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->computeFixed64SizeNoTag(J)I

    move-result v0

    goto :goto_0

    :pswitch_6
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/htc/protobuf/CodedOutputStream;->computeFixed32SizeNoTag(I)I

    move-result v0

    goto :goto_0

    :pswitch_7
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/htc/protobuf/CodedOutputStream;->computeBoolSizeNoTag(Z)I

    move-result v0

    goto :goto_0

    :pswitch_8
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :pswitch_9
    check-cast p1, Lcom/htc/protobuf/MessageLite;

    invoke-static {p1}, Lcom/htc/protobuf/CodedOutputStream;->computeGroupSizeNoTag(Lcom/htc/protobuf/MessageLite;)I

    move-result v0

    goto :goto_0

    :pswitch_a
    check-cast p1, Lcom/htc/protobuf/MessageLite;

    invoke-static {p1}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSizeNoTag(Lcom/htc/protobuf/MessageLite;)I

    move-result v0

    goto :goto_0

    :pswitch_b
    check-cast p1, Lcom/htc/protobuf/ByteString;

    invoke-static {p1}, Lcom/htc/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/htc/protobuf/ByteString;)I

    move-result v0

    goto :goto_0

    :pswitch_c
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/htc/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v0

    goto :goto_0

    :pswitch_d
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/htc/protobuf/CodedOutputStream;->computeSFixed32SizeNoTag(I)I

    move-result v0

    goto :goto_0

    :pswitch_e
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->computeSFixed64SizeNoTag(J)I

    move-result v0

    goto/16 :goto_0

    :pswitch_f
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/htc/protobuf/CodedOutputStream;->computeSInt32SizeNoTag(I)I

    move-result v0

    goto/16 :goto_0

    :pswitch_10
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->computeSInt64SizeNoTag(J)I

    move-result v0

    goto/16 :goto_0

    :pswitch_11
    check-cast p1, Lcom/htc/protobuf/Internal$EnumLite;

    invoke-interface {p1}, Lcom/htc/protobuf/Internal$EnumLite;->getNumber()I

    move-result v0

    invoke-static {v0}, Lcom/htc/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_9
        :pswitch_a
        :pswitch_11
    .end packed-switch
.end method

.method public static computeFieldSize(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/protobuf/FieldSet$FieldDescriptorLite",
            "<*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    invoke-interface {p0}, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lcom/htc/protobuf/WireFormat$FieldType;

    move-result-object v5

    invoke-interface {p0}, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result v3

    invoke-interface {p0}, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {p0}, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;->isPacked()Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v0, 0x0

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/htc/protobuf/FieldSet;->computeElementSizeNoTag(Lcom/htc/protobuf/WireFormat$FieldType;Ljava/lang/Object;)I

    move-result v6

    add-int/2addr v0, v6

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lcom/htc/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v6

    add-int/2addr v6, v0

    invoke-static {v0}, Lcom/htc/protobuf/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v7

    add-int v4, v6, v7

    :cond_1
    :goto_1
    return v4

    :cond_2
    const/4 v4, 0x0

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v5, v3, v1}, Lcom/htc/protobuf/FieldSet;->computeElementSize(Lcom/htc/protobuf/WireFormat$FieldType;ILjava/lang/Object;)I

    move-result v6

    add-int/2addr v4, v6

    goto :goto_2

    :cond_3
    invoke-static {v5, v3, p1}, Lcom/htc/protobuf/FieldSet;->computeElementSize(Lcom/htc/protobuf/WireFormat$FieldType;ILjava/lang/Object;)I

    move-result v4

    goto :goto_1
.end method

.method public static emptySet()Lcom/htc/protobuf/FieldSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/htc/protobuf/FieldSet$FieldDescriptorLite",
            "<TT;>;>()",
            "Lcom/htc/protobuf/FieldSet",
            "<TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/htc/protobuf/FieldSet;->DEFAULT_INSTANCE:Lcom/htc/protobuf/FieldSet;

    return-object v0
.end method

.method static getWireFormatForFieldType(Lcom/htc/protobuf/WireFormat$FieldType;Z)I
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/WireFormat$FieldType;->getWireType()I

    move-result v0

    goto :goto_0
.end method

.method public static newFieldSet()Lcom/htc/protobuf/FieldSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/htc/protobuf/FieldSet$FieldDescriptorLite",
            "<TT;>;>()",
            "Lcom/htc/protobuf/FieldSet",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/htc/protobuf/FieldSet;

    invoke-direct {v0}, Lcom/htc/protobuf/FieldSet;-><init>()V

    return-object v0
.end method

.method public static readPrimitiveField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/WireFormat$FieldType;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/htc/protobuf/FieldSet$1;->$SwitchMap$com$htc$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p1}, Lcom/htc/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->readFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :pswitch_8
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_9
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->readBytes()Lcom/htc/protobuf/ByteString;

    move-result-object v0

    goto :goto_0

    :pswitch_a
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_b
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->readSFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_c
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->readSFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :pswitch_d
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->readSInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_e
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->readSInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :pswitch_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "readPrimitiveField() cannot handle nested groups."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "readPrimitiveField() cannot handle embedded messages."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "readPrimitiveField() cannot handle enums."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method private static verifyType(Lcom/htc/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_0
    const/4 v0, 0x0

    sget-object v1, Lcom/htc/protobuf/FieldSet$1;->$SwitchMap$com$htc$protobuf$WireFormat$JavaType:[I

    invoke-virtual {p0}, Lcom/htc/protobuf/WireFormat$FieldType;->getJavaType()Lcom/htc/protobuf/WireFormat$JavaType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/WireFormat$JavaType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Wrong object type used with protocol message reflection."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    instance-of v0, p1, Ljava/lang/Integer;

    goto :goto_0

    :pswitch_1
    instance-of v0, p1, Ljava/lang/Long;

    goto :goto_0

    :pswitch_2
    instance-of v0, p1, Ljava/lang/Float;

    goto :goto_0

    :pswitch_3
    instance-of v0, p1, Ljava/lang/Double;

    goto :goto_0

    :pswitch_4
    instance-of v0, p1, Ljava/lang/Boolean;

    goto :goto_0

    :pswitch_5
    instance-of v0, p1, Ljava/lang/String;

    goto :goto_0

    :pswitch_6
    instance-of v0, p1, Lcom/htc/protobuf/ByteString;

    goto :goto_0

    :pswitch_7
    instance-of v0, p1, Lcom/htc/protobuf/Internal$EnumLite;

    goto :goto_0

    :pswitch_8
    instance-of v0, p1, Lcom/htc/protobuf/MessageLite;

    goto :goto_0

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private static writeElement(Lcom/htc/protobuf/CodedOutputStream;Lcom/htc/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/htc/protobuf/WireFormat$FieldType;->GROUP:Lcom/htc/protobuf/WireFormat$FieldType;

    if-ne p1, v0, :cond_0

    check-cast p3, Lcom/htc/protobuf/MessageLite;

    invoke-virtual {p0, p2, p3}, Lcom/htc/protobuf/CodedOutputStream;->writeGroup(ILcom/htc/protobuf/MessageLite;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/htc/protobuf/FieldSet;->getWireFormatForFieldType(Lcom/htc/protobuf/WireFormat$FieldType;Z)I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeTag(II)V

    invoke-static {p0, p1, p3}, Lcom/htc/protobuf/FieldSet;->writeElementNoTag(Lcom/htc/protobuf/CodedOutputStream;Lcom/htc/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static writeElementNoTag(Lcom/htc/protobuf/CodedOutputStream;Lcom/htc/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/htc/protobuf/FieldSet$1;->$SwitchMap$com$htc$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p1}, Lcom/htc/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeDoubleNoTag(D)V

    goto :goto_0

    :pswitch_1
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeFloatNoTag(F)V

    goto :goto_0

    :pswitch_2
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeInt64NoTag(J)V

    goto :goto_0

    :pswitch_3
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeUInt64NoTag(J)V

    goto :goto_0

    :pswitch_4
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeInt32NoTag(I)V

    goto :goto_0

    :pswitch_5
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeFixed64NoTag(J)V

    goto :goto_0

    :pswitch_6
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeFixed32NoTag(I)V

    goto :goto_0

    :pswitch_7
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeBoolNoTag(Z)V

    goto :goto_0

    :pswitch_8
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/htc/protobuf/CodedOutputStream;->writeStringNoTag(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_9
    check-cast p2, Lcom/htc/protobuf/MessageLite;

    invoke-virtual {p0, p2}, Lcom/htc/protobuf/CodedOutputStream;->writeGroupNoTag(Lcom/htc/protobuf/MessageLite;)V

    goto :goto_0

    :pswitch_a
    check-cast p2, Lcom/htc/protobuf/MessageLite;

    invoke-virtual {p0, p2}, Lcom/htc/protobuf/CodedOutputStream;->writeMessageNoTag(Lcom/htc/protobuf/MessageLite;)V

    goto :goto_0

    :pswitch_b
    check-cast p2, Lcom/htc/protobuf/ByteString;

    invoke-virtual {p0, p2}, Lcom/htc/protobuf/CodedOutputStream;->writeBytesNoTag(Lcom/htc/protobuf/ByteString;)V

    goto :goto_0

    :pswitch_c
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    goto :goto_0

    :pswitch_d
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeSFixed32NoTag(I)V

    goto :goto_0

    :pswitch_e
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeSFixed64NoTag(J)V

    goto/16 :goto_0

    :pswitch_f
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeSInt32NoTag(I)V

    goto/16 :goto_0

    :pswitch_10
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeSInt64NoTag(J)V

    goto/16 :goto_0

    :pswitch_11
    check-cast p2, Lcom/htc/protobuf/Internal$EnumLite;

    invoke-interface {p2}, Lcom/htc/protobuf/Internal$EnumLite;->getNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeEnumNoTag(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_9
        :pswitch_a
        :pswitch_11
    .end packed-switch
.end method

.method public static writeField(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;Lcom/htc/protobuf/CodedOutputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/protobuf/FieldSet$FieldDescriptorLite",
            "<*>;",
            "Ljava/lang/Object;",
            "Lcom/htc/protobuf/CodedOutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lcom/htc/protobuf/WireFormat$FieldType;

    move-result-object v4

    invoke-interface {p0}, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result v3

    invoke-interface {p0}, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v5, p1

    check-cast v5, Ljava/util/List;

    invoke-interface {p0}, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;->isPacked()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x2

    invoke-virtual {p2, v3, v6}, Lcom/htc/protobuf/CodedOutputStream;->writeTag(II)V

    const/4 v0, 0x0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/htc/protobuf/FieldSet;->computeElementSizeNoTag(Lcom/htc/protobuf/WireFormat$FieldType;Ljava/lang/Object;)I

    move-result v6

    add-int/2addr v0, v6

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2, v4, v1}, Lcom/htc/protobuf/FieldSet;->writeElementNoTag(Lcom/htc/protobuf/CodedOutputStream;Lcom/htc/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2, v4, v3, v1}, Lcom/htc/protobuf/FieldSet;->writeElement(Lcom/htc/protobuf/CodedOutputStream;Lcom/htc/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V

    goto :goto_2

    :cond_2
    invoke-static {p2, v4, v3, p1}, Lcom/htc/protobuf/FieldSet;->writeElement(Lcom/htc/protobuf/CodedOutputStream;Lcom/htc/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "addRepeatedField() can only be called on repeated fields."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-interface {p1}, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lcom/htc/protobuf/WireFormat$FieldType;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/htc/protobuf/FieldSet;->verifyType(Lcom/htc/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/htc/protobuf/FieldSet;->fields:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/htc/protobuf/FieldSet;->fields:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/util/List;

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/FieldSet;->fields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public clearField(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/protobuf/FieldSet;->fields:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getAllFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/protobuf/FieldSet;->fields:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getField(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/protobuf/FieldSet;->fields:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getMessageSetSerializedSize()I
    .locals 6

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/htc/protobuf/FieldSet;->fields:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v0}, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;->getLiteJavaType()Lcom/htc/protobuf/WireFormat$JavaType;

    move-result-object v4

    sget-object v5, Lcom/htc/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/htc/protobuf/WireFormat$JavaType;

    if-ne v4, v5, :cond_0

    invoke-interface {v0}, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v0}, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;->isPacked()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v4}, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/protobuf/MessageLite;

    invoke-static {v5, v4}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSetExtensionSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/htc/protobuf/FieldSet;->computeFieldSize(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_0

    :cond_1
    return v3
.end method

.method public getRepeatedField(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "getRepeatedField() can only be called on repeated fields."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/htc/protobuf/FieldSet;->fields:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    :cond_1
    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getRepeatedFieldCount(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;)I"
        }
    .end annotation

    invoke-interface {p1}, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "getRepeatedField() can only be called on repeated fields."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/htc/protobuf/FieldSet;->fields:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/protobuf/FieldSet;->fields:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/protobuf/FieldSet;->computeFieldSize(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    return v2
.end method

.method public hasField(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;)Z"
        }
    .end annotation

    invoke-interface {p1}, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "hasField() can only be called on non-repeated fields."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/FieldSet;->fields:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInitialized()Z
    .locals 8

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/htc/protobuf/FieldSet;->fields:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v0}, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;->getLiteJavaType()Lcom/htc/protobuf/WireFormat$JavaType;

    move-result-object v5

    sget-object v7, Lcom/htc/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/htc/protobuf/WireFormat$JavaType;

    if-ne v5, v7, :cond_0

    invoke-interface {v0}, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/protobuf/MessageLite;

    invoke-interface {v1}, Lcom/htc/protobuf/MessageLite;->isInitialized()Z

    move-result v5

    if-nez v5, :cond_1

    move v5, v6

    :goto_0
    return v5

    :cond_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/protobuf/MessageLite;

    invoke-interface {v5}, Lcom/htc/protobuf/MessageLite;->isInitialized()Z

    move-result v5

    if-nez v5, :cond_0

    move v5, v6

    goto :goto_0

    :cond_3
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/protobuf/FieldSet;->fields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public makeImmutable()V
    .locals 6

    iget-object v3, p0, Lcom/htc/protobuf/FieldSet;->fields:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v3}, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iget-object v3, p0, Lcom/htc/protobuf/FieldSet;->fields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/htc/protobuf/FieldSet;->fields:Ljava/util/Map;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/protobuf/FieldSet;->fields:Ljava/util/Map;

    return-void
.end method

.method public mergeFrom(Lcom/htc/protobuf/FieldSet;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/protobuf/FieldSet",
            "<TFieldDescriptorType;>;)V"
        }
    .end annotation

    iget-object v5, p1, Lcom/htc/protobuf/FieldSet;->fields:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/htc/protobuf/FieldSet;->fields:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    iget-object v5, p0, Lcom/htc/protobuf/FieldSet;->fields:Ljava/util/Map;

    new-instance v6, Ljava/util/ArrayList;

    check-cast v3, Ljava/util/List;

    invoke-direct {v6, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    check-cast v4, Ljava/util/List;

    check-cast v3, Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;->getLiteJavaType()Lcom/htc/protobuf/WireFormat$JavaType;

    move-result-object v5

    sget-object v6, Lcom/htc/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/htc/protobuf/WireFormat$JavaType;

    if-ne v5, v6, :cond_3

    iget-object v5, p0, Lcom/htc/protobuf/FieldSet;->fields:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    iget-object v5, p0, Lcom/htc/protobuf/FieldSet;->fields:Ljava/util/Map;

    invoke-interface {v5, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/htc/protobuf/FieldSet;->fields:Ljava/util/Map;

    check-cast v4, Lcom/htc/protobuf/MessageLite;

    invoke-interface {v4}, Lcom/htc/protobuf/MessageLite;->toBuilder()Lcom/htc/protobuf/MessageLite$Builder;

    move-result-object v6

    check-cast v3, Lcom/htc/protobuf/MessageLite;

    invoke-interface {v0, v6, v3}, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;->internalMergeFrom(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/MessageLite;)Lcom/htc/protobuf/MessageLite$Builder;

    move-result-object v6

    invoke-interface {v6}, Lcom/htc/protobuf/MessageLite$Builder;->build()Lcom/htc/protobuf/MessageLite;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/htc/protobuf/FieldSet;->fields:Ljava/util/Map;

    invoke-interface {v5, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    return-void
.end method

.method public setField(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v3

    if-eqz v3, :cond_2

    instance-of v3, p2, Ljava/util/List;

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Wrong object type used with protocol message reflection."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lcom/htc/protobuf/WireFormat$FieldType;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/htc/protobuf/FieldSet;->verifyType(Lcom/htc/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move-object p2, v2

    :goto_1
    iget-object v3, p0, Lcom/htc/protobuf/FieldSet;->fields:Ljava/util/Map;

    invoke-interface {v3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    invoke-interface {p1}, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lcom/htc/protobuf/WireFormat$FieldType;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/htc/protobuf/FieldSet;->verifyType(Lcom/htc/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public setRepeatedField(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;ILjava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "getRepeatedField() can only be called on repeated fields."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/htc/protobuf/FieldSet;->fields:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    :cond_1
    invoke-interface {p1}, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lcom/htc/protobuf/WireFormat$FieldType;

    move-result-object v1

    invoke-static {v1, p3}, Lcom/htc/protobuf/FieldSet;->verifyType(Lcom/htc/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public writeMessageSetTo(Lcom/htc/protobuf/CodedOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v3, p0, Lcom/htc/protobuf/FieldSet;->fields:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v0}, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;->getLiteJavaType()Lcom/htc/protobuf/WireFormat$JavaType;

    move-result-object v3

    sget-object v4, Lcom/htc/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/htc/protobuf/WireFormat$JavaType;

    if-ne v3, v4, :cond_0

    invoke-interface {v0}, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0}, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;->isPacked()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v3}, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/protobuf/MessageLite;

    invoke-virtual {p1, v4, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeMessageSetExtension(ILcom/htc/protobuf/MessageLite;)V

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3, p1}, Lcom/htc/protobuf/FieldSet;->writeField(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;Lcom/htc/protobuf/CodedOutputStream;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public writeTo(Lcom/htc/protobuf/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v2, p0, Lcom/htc/protobuf/FieldSet;->fields:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3, p1}, Lcom/htc/protobuf/FieldSet;->writeField(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;Lcom/htc/protobuf/CodedOutputStream;)V

    goto :goto_0

    :cond_0
    return-void
.end method
