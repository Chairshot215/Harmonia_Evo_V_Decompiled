.class public abstract Lcom/google/protobuf/GeneratedMessageLite;
.super Lcom/google/protobuf/AbstractMessageLite;
.source "GeneratedMessageLite.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/GeneratedMessageLite$1;,
        Lcom/google/protobuf/GeneratedMessageLite$SerializedForm;,
        Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;,
        Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;,
        Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;,
        Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;,
        Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder;,
        Lcom/google/protobuf/GeneratedMessageLite$Builder;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/protobuf/AbstractMessageLite;-><init>()V

    .line 25
    return-void
.end method

.method protected constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 0
    .parameter "builder"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/protobuf/AbstractMessageLite;-><init>()V

    .line 28
    return-void
.end method

.method static synthetic access$300(Lcom/google/protobuf/FieldSet;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/protobuf/GeneratedMessageLite;->parseUnknownField(Lcom/google/protobuf/FieldSet;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    return v0
.end method

.method public static newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .locals 8
    .parameter
    .parameter
    .parameter "messageDefaultInstance"
    .parameter
    .parameter "number"
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/google/protobuf/MessageLite;",
            "Type:",
            "Ljava/lang/Object;",
            ">(TContainingType;TType;",
            "Lcom/google/protobuf/MessageLite;",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<*>;I",
            "Lcom/google/protobuf/WireFormat$FieldType;",
            ")",
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<TContainingType;TType;>;"
        }
    .end annotation

    .prologue
    .local p0, containingTypeDefaultInstance:Lcom/google/protobuf/MessageLite;,"TContainingType;"
    .local p1, defaultValue:Ljava/lang/Object;,"TType;"
    .local p3, enumTypeMap:Lcom/google/protobuf/Internal$EnumLiteMap;,"Lcom/google/protobuf/Internal$EnumLiteMap<*>;"
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 570
    new-instance v7, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    new-instance v0, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-object v1, p3

    move v2, p4

    move-object v3, p5

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;-><init>(Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;ZZLcom/google/protobuf/GeneratedMessageLite$1;)V

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;-><init>(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;Lcom/google/protobuf/GeneratedMessageLite$1;)V

    return-object v7
.end method

.method private static parseUnknownField(Lcom/google/protobuf/FieldSet;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
    .locals 15
    .parameter
    .parameter
    .parameter "input"
    .parameter "extensionRegistry"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType::",
            "Lcom/google/protobuf/MessageLite;",
            ">(",
            "Lcom/google/protobuf/FieldSet",
            "<",
            "Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;TMessageType;",
            "Lcom/google/protobuf/CodedInputStream;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            "I)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 454
    .local p0, extensions:Lcom/google/protobuf/FieldSet;,"Lcom/google/protobuf/FieldSet<Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;>;"
    .local p1, defaultInstance:Lcom/google/protobuf/MessageLite;,"TMessageType;"
    invoke-static/range {p4 .. p4}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v12

    .line 455
    .local v12, wireType:I
    invoke-static/range {p4 .. p4}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v4

    .line 457
    .local v4, fieldNumber:I
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lcom/google/protobuf/ExtensionRegistryLite;->findLiteExtensionByNumber(Lcom/google/protobuf/MessageLite;I)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v3

    .line 461
    .local v3, extension:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;,"Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension<TMessageType;*>;"
    const/4 v10, 0x0

    .line 462
    .local v10, unknown:Z
    const/4 v7, 0x0

    .line 463
    .local v7, packed:Z
    if-nez v3, :cond_0

    .line 464
    const/4 v10, 0x1

    .line 479
    :goto_0
    if-eqz v10, :cond_3

    .line 480
    move-object/from16 v0, p2

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/google/protobuf/CodedInputStream;->skipField(I)Z

    move-result v13

    .line 555
    :goto_1
    return v13

    .line 465
    :cond_0
    #getter for: Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v3}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$100(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/google/protobuf/FieldSet;->getWireFormatForFieldType(Lcom/google/protobuf/WireFormat$FieldType;Z)I

    move-result v13

    if-ne v12, v13, :cond_1

    .line 468
    const/4 v7, 0x0

    goto :goto_0

    .line 469
    :cond_1
    #getter for: Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v3}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$100(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v13

    #getter for: Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated:Z
    invoke-static {v13}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->access$600(Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;)Z

    move-result v13

    if-eqz v13, :cond_2

    #getter for: Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v3}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$100(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v13

    #getter for: Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->type:Lcom/google/protobuf/WireFormat$FieldType;
    invoke-static {v13}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->access$700(Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;)Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/protobuf/WireFormat$FieldType;->isPackable()Z

    move-result v13

    if-eqz v13, :cond_2

    #getter for: Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v3}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$100(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/google/protobuf/FieldSet;->getWireFormatForFieldType(Lcom/google/protobuf/WireFormat$FieldType;Z)I

    move-result v13

    if-ne v12, v13, :cond_2

    .line 474
    const/4 v7, 0x1

    goto :goto_0

    .line 476
    :cond_2
    const/4 v10, 0x1

    goto :goto_0

    .line 483
    :cond_3
    if-eqz v7, :cond_7

    .line 484
    invoke-virtual/range {p2 .. p2}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v5

    .line 485
    .local v5, length:I
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v6

    .line 486
    .local v6, limit:I
    #getter for: Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v3}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$100(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v13

    sget-object v14, Lcom/google/protobuf/WireFormat$FieldType;->ENUM:Lcom/google/protobuf/WireFormat$FieldType;

    if-ne v13, v14, :cond_5

    .line 487
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v13

    if-lez v13, :cond_6

    .line 488
    invoke-virtual/range {p2 .. p2}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v8

    .line 489
    .local v8, rawValue:I
    #getter for: Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v3}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$100(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getEnumType()Lcom/google/protobuf/Internal$EnumLiteMap;

    move-result-object v13

    invoke-interface {v13, v8}, Lcom/google/protobuf/Internal$EnumLiteMap;->findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;

    move-result-object v11

    .line 491
    .local v11, value:Lcom/google/protobuf/Internal$EnumLite;
    if-nez v11, :cond_4

    .line 494
    const/4 v13, 0x1

    goto :goto_1

    .line 496
    :cond_4
    #getter for: Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v3}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$100(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v13

    invoke-virtual {p0, v13, v11}, Lcom/google/protobuf/FieldSet;->addRepeatedField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_2

    .line 499
    .end local v8           #rawValue:I
    .end local v11           #value:Lcom/google/protobuf/Internal$EnumLite;
    :cond_5
    :goto_3
    invoke-virtual/range {p2 .. p2}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v13

    if-lez v13, :cond_6

    .line 500
    #getter for: Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v3}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$100(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-static {v0, v13}, Lcom/google/protobuf/FieldSet;->readPrimitiveField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/WireFormat$FieldType;)Ljava/lang/Object;

    move-result-object v11

    .line 503
    .local v11, value:Ljava/lang/Object;
    #getter for: Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v3}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$100(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v13

    invoke-virtual {p0, v13, v11}, Lcom/google/protobuf/FieldSet;->addRepeatedField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_3

    .line 506
    .end local v11           #value:Ljava/lang/Object;
    :cond_6
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    .line 555
    .end local v5           #length:I
    .end local v6           #limit:I
    :goto_4
    const/4 v13, 0x1

    goto/16 :goto_1

    .line 509
    :cond_7
    sget-object v13, Lcom/google/protobuf/GeneratedMessageLite$1;->$SwitchMap$com$google$protobuf$WireFormat$JavaType:[I

    #getter for: Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v3}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$100(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteJavaType()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/protobuf/WireFormat$JavaType;->ordinal()I

    move-result v14

    aget v13, v13, v14

    packed-switch v13, :pswitch_data_0

    .line 543
    #getter for: Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v3}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$100(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-static {v0, v13}, Lcom/google/protobuf/FieldSet;->readPrimitiveField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/WireFormat$FieldType;)Ljava/lang/Object;

    move-result-object v11

    .line 548
    :cond_8
    :goto_5
    #getter for: Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v3}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$100(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated()Z

    move-result v13

    if-eqz v13, :cond_c

    .line 549
    #getter for: Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v3}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$100(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v13

    invoke-virtual {p0, v13, v11}, Lcom/google/protobuf/FieldSet;->addRepeatedField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_4

    .line 511
    :pswitch_0
    const/4 v9, 0x0

    .line 512
    .local v9, subBuilder:Lcom/google/protobuf/MessageLite$Builder;
    #getter for: Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v3}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$100(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated()Z

    move-result v13

    if-nez v13, :cond_9

    .line 513
    #getter for: Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v3}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$100(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v13

    invoke-virtual {p0, v13}, Lcom/google/protobuf/FieldSet;->getField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    .line 515
    .local v2, existingValue:Lcom/google/protobuf/MessageLite;
    if-eqz v2, :cond_9

    .line 516
    invoke-interface {v2}, Lcom/google/protobuf/MessageLite;->toBuilder()Lcom/google/protobuf/MessageLite$Builder;

    move-result-object v9

    .line 519
    .end local v2           #existingValue:Lcom/google/protobuf/MessageLite;
    :cond_9
    if-nez v9, :cond_a

    .line 520
    #getter for: Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->messageDefaultInstance:Lcom/google/protobuf/MessageLite;
    invoke-static {v3}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$800(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/google/protobuf/MessageLite;

    move-result-object v13

    invoke-interface {v13}, Lcom/google/protobuf/MessageLite;->newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;

    move-result-object v9

    .line 522
    :cond_a
    #getter for: Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v3}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$100(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v13

    sget-object v14, Lcom/google/protobuf/WireFormat$FieldType;->GROUP:Lcom/google/protobuf/WireFormat$FieldType;

    if-ne v13, v14, :cond_b

    .line 524
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->getNumber()I

    move-result v13

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v13, v9, v1}, Lcom/google/protobuf/CodedInputStream;->readGroup(ILcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 529
    :goto_6
    invoke-interface {v9}, Lcom/google/protobuf/MessageLite$Builder;->build()Lcom/google/protobuf/MessageLite;

    move-result-object v11

    .line 530
    .local v11, value:Lcom/google/protobuf/MessageLite;
    goto :goto_5

    .line 527
    .end local v11           #value:Lcom/google/protobuf/MessageLite;
    :cond_b
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v9, v1}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    goto :goto_6

    .line 533
    .end local v9           #subBuilder:Lcom/google/protobuf/MessageLite$Builder;
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v8

    .line 534
    .restart local v8       #rawValue:I
    #getter for: Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v3}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$100(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getEnumType()Lcom/google/protobuf/Internal$EnumLiteMap;

    move-result-object v13

    invoke-interface {v13, v8}, Lcom/google/protobuf/Internal$EnumLiteMap;->findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;

    move-result-object v11

    .line 538
    .local v11, value:Lcom/google/protobuf/Internal$EnumLite;
    if-nez v11, :cond_8

    .line 539
    const/4 v13, 0x1

    goto/16 :goto_1

    .line 551
    .end local v8           #rawValue:I
    .end local v11           #value:Lcom/google/protobuf/Internal$EnumLite;
    :cond_c
    #getter for: Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v3}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$100(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v13

    invoke-virtual {p0, v13, v11}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 509
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected makeExtensionsImmutable()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method protected parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-virtual {p1, p3}, Lcom/google/protobuf/CodedInputStream;->skipField(I)Z

    move-result v0

    return v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 767
    new-instance v0, Lcom/google/protobuf/GeneratedMessageLite$SerializedForm;

    invoke-direct {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite$SerializedForm;-><init>(Lcom/google/protobuf/MessageLite;)V

    return-object v0
.end method
