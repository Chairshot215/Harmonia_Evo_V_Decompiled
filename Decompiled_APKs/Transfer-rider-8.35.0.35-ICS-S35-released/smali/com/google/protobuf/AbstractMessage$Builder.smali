.class public abstract Lcom/google/protobuf/AbstractMessage$Builder;
.super Lcom/google/protobuf/AbstractMessageLite$Builder;
.source "AbstractMessage.java"

# interfaces
.implements Lcom/google/protobuf/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/AbstractMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BuilderType:",
        "Lcom/google/protobuf/AbstractMessage$Builder;",
        ">",
        "Lcom/google/protobuf/AbstractMessageLite$Builder",
        "<TBuilderType;>;",
        "Lcom/google/protobuf/Message$Builder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 183
    .local p0, this:Lcom/google/protobuf/AbstractMessage$Builder;,"Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-direct {p0}, Lcom/google/protobuf/AbstractMessageLite$Builder;-><init>()V

    return-void
.end method

.method private static findMissingFields(Lcom/google/protobuf/Message;)Ljava/util/List;
    .locals 2
    .parameter "message"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Message;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 558
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 559
    .local v0, results:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, ""

    invoke-static {p0, v1, v0}, Lcom/google/protobuf/AbstractMessage$Builder;->findMissingFields(Lcom/google/protobuf/Message;Ljava/lang/String;Ljava/util/List;)V

    .line 560
    return-object v0
.end method

.method private static findMissingFields(Lcom/google/protobuf/Message;Ljava/lang/String;Ljava/util/List;)V
    .locals 10
    .parameter "message"
    .parameter "prefix"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Message;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 568
    .local p2, results:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Lcom/google/protobuf/Message;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/protobuf/Descriptors$Descriptor;->getFields()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 569
    .local v2, field:Lcom/google/protobuf/Descriptors$FieldDescriptor;
    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRequired()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {p0, v2}, Lcom/google/protobuf/Message;->hasField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 570
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 575
    .end local v2           #field:Lcom/google/protobuf/Descriptors$FieldDescriptor;
    :cond_1
    invoke-interface {p0}, Lcom/google/protobuf/Message;->getAllFields()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v5           #i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 576
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 577
    .restart local v2       #field:Lcom/google/protobuf/Descriptors$FieldDescriptor;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 579
    .local v7, value:Ljava/lang/Object;
    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v8

    sget-object v9, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v8, v9, :cond_2

    .line 580
    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 581
    const/4 v3, 0x0

    .line 582
    .local v3, i:I
    check-cast v7, Ljava/util/List;

    .end local v7           #value:Ljava/lang/Object;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 583
    .local v0, element:Ljava/lang/Object;
    check-cast v0, Lcom/google/protobuf/Message;

    .end local v0           #element:Ljava/lang/Object;
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .local v4, i:I
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/AbstractMessage$Builder;->subMessagePrefix(Ljava/lang/String;Lcom/google/protobuf/Descriptors$FieldDescriptor;I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8, p2}, Lcom/google/protobuf/AbstractMessage$Builder;->findMissingFields(Lcom/google/protobuf/Message;Ljava/lang/String;Ljava/util/List;)V

    move v3, v4

    .end local v4           #i:I
    .restart local v3       #i:I
    goto :goto_2

    .line 588
    .end local v3           #i:I
    .end local v6           #i$:Ljava/util/Iterator;
    .restart local v7       #value:Ljava/lang/Object;
    :cond_3
    invoke-interface {p0, v2}, Lcom/google/protobuf/Message;->hasField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 589
    check-cast v7, Lcom/google/protobuf/Message;

    .end local v7           #value:Ljava/lang/Object;
    const/4 v8, -0x1

    invoke-static {p1, v2, v8}, Lcom/google/protobuf/AbstractMessage$Builder;->subMessagePrefix(Ljava/lang/String;Lcom/google/protobuf/Descriptors$FieldDescriptor;I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, p2}, Lcom/google/protobuf/AbstractMessage$Builder;->findMissingFields(Lcom/google/protobuf/Message;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    .line 596
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;>;"
    .end local v2           #field:Lcom/google/protobuf/Descriptors$FieldDescriptor;
    :cond_4
    return-void
.end method

.method static mergeFieldFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/Message$Builder;I)Z
    .locals 19
    .parameter "input"
    .parameter "unknownFields"
    .parameter "extensionRegistry"
    .parameter "builder"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    invoke-interface/range {p3 .. p3}, Lcom/google/protobuf/Message$Builder;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v12

    .line 286
    .local v12, type:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-virtual {v12}, Lcom/google/protobuf/Descriptors$Descriptor;->getOptions()Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->getMessageSetWireFormat()Z

    move-result v16

    if-eqz v16, :cond_0

    sget v16, Lcom/google/protobuf/WireFormat;->MESSAGE_SET_ITEM_TAG:I

    move/from16 v0, p4

    move/from16 v1, v16

    if-ne v0, v1, :cond_0

    .line 288
    invoke-static/range {p0 .. p3}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeMessageSetExtensionFromCodedStream(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/Message$Builder;)V

    .line 290
    const/16 v16, 0x1

    .line 424
    :goto_0
    return v16

    .line 293
    :cond_0
    invoke-static/range {p4 .. p4}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v15

    .line 294
    .local v15, wireType:I
    invoke-static/range {p4 .. p4}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v6

    .line 297
    .local v6, fieldNumber:I
    const/4 v3, 0x0

    .line 299
    .local v3, defaultInstance:Lcom/google/protobuf/Message;
    invoke-virtual {v12, v6}, Lcom/google/protobuf/Descriptors$Descriptor;->isExtensionNumber(I)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 305
    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/google/protobuf/ExtensionRegistry;

    move/from16 v16, v0

    if-eqz v16, :cond_3

    move-object/from16 v16, p2

    .line 306
    check-cast v16, Lcom/google/protobuf/ExtensionRegistry;

    move-object/from16 v0, v16

    invoke-virtual {v0, v12, v6}, Lcom/google/protobuf/ExtensionRegistry;->findExtensionByNumber(Lcom/google/protobuf/Descriptors$Descriptor;I)Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;

    move-result-object v4

    .line 309
    .local v4, extension:Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;
    if-nez v4, :cond_2

    .line 310
    const/4 v5, 0x0

    .line 328
    .end local v4           #extension:Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;
    .local v5, field:Lcom/google/protobuf/Descriptors$FieldDescriptor;
    :cond_1
    :goto_1
    const/4 v13, 0x0

    .line 329
    .local v13, unknown:Z
    const/4 v9, 0x0

    .line 330
    .local v9, packed:Z
    if-nez v5, :cond_5

    .line 331
    const/4 v13, 0x1

    .line 345
    :goto_2
    if-eqz v13, :cond_8

    .line 346
    move-object/from16 v0, p1

    move/from16 v1, p4

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeFieldFrom(ILcom/google/protobuf/CodedInputStream;)Z

    move-result v16

    goto :goto_0

    .line 312
    .end local v5           #field:Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .end local v9           #packed:Z
    .end local v13           #unknown:Z
    .restart local v4       #extension:Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;
    :cond_2
    iget-object v5, v4, Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;->descriptor:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 313
    .restart local v5       #field:Lcom/google/protobuf/Descriptors$FieldDescriptor;
    iget-object v3, v4, Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;->defaultInstance:Lcom/google/protobuf/Message;

    .line 314
    if-nez v3, :cond_1

    invoke-virtual {v5}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v16

    sget-object v17, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_1

    .line 316
    new-instance v16, Ljava/lang/IllegalStateException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Message-typed extension lacked default instance: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v5}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getFullName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 322
    .end local v4           #extension:Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;
    .end local v5           #field:Lcom/google/protobuf/Descriptors$FieldDescriptor;
    :cond_3
    const/4 v5, 0x0

    .restart local v5       #field:Lcom/google/protobuf/Descriptors$FieldDescriptor;
    goto :goto_1

    .line 325
    .end local v5           #field:Lcom/google/protobuf/Descriptors$FieldDescriptor;
    :cond_4
    invoke-virtual {v12, v6}, Lcom/google/protobuf/Descriptors$Descriptor;->findFieldByNumber(I)Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v5

    .restart local v5       #field:Lcom/google/protobuf/Descriptors$FieldDescriptor;
    goto :goto_1

    .line 332
    .restart local v9       #packed:Z
    .restart local v13       #unknown:Z
    :cond_5
    invoke-virtual {v5}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v16

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Lcom/google/protobuf/FieldSet;->getWireFormatForFieldType(Lcom/google/protobuf/WireFormat$FieldType;Z)I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    .line 335
    const/4 v9, 0x0

    goto :goto_2

    .line 336
    :cond_6
    invoke-virtual {v5}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isPackable()Z

    move-result v16

    if-eqz v16, :cond_7

    invoke-virtual {v5}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v16

    const/16 v17, 0x1

    invoke-static/range {v16 .. v17}, Lcom/google/protobuf/FieldSet;->getWireFormatForFieldType(Lcom/google/protobuf/WireFormat$FieldType;Z)I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    .line 340
    const/4 v9, 0x1

    goto :goto_2

    .line 342
    :cond_7
    const/4 v13, 0x1

    goto :goto_2

    .line 349
    :cond_8
    if-eqz v9, :cond_c

    .line 350
    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v7

    .line 351
    .local v7, length:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v8

    .line 352
    .local v8, limit:I
    invoke-virtual {v5}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v16

    sget-object v17, Lcom/google/protobuf/WireFormat$FieldType;->ENUM:Lcom/google/protobuf/WireFormat$FieldType;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_a

    .line 353
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v16

    if-lez v16, :cond_b

    .line 354
    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v10

    .line 355
    .local v10, rawValue:I
    invoke-virtual {v5}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getEnumType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->findValueByNumber(I)Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    move-result-object v14

    .line 356
    .local v14, value:Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    if-nez v14, :cond_9

    .line 359
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 361
    :cond_9
    move-object/from16 v0, p3

    invoke-interface {v0, v5, v14}, Lcom/google/protobuf/Message$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;

    goto :goto_3

    .line 364
    .end local v10           #rawValue:I
    .end local v14           #value:Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    :cond_a
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v16

    if-lez v16, :cond_b

    .line 365
    invoke-virtual {v5}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/google/protobuf/FieldSet;->readPrimitiveField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/WireFormat$FieldType;)Ljava/lang/Object;

    move-result-object v14

    .line 367
    .local v14, value:Ljava/lang/Object;
    move-object/from16 v0, p3

    invoke-interface {v0, v5, v14}, Lcom/google/protobuf/Message$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;

    goto :goto_4

    .line 370
    .end local v14           #value:Ljava/lang/Object;
    :cond_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    .line 424
    .end local v7           #length:I
    .end local v8           #limit:I
    :goto_5
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 373
    :cond_c
    sget-object v16, Lcom/google/protobuf/AbstractMessage$1;->$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type:[I

    invoke-virtual {v5}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->ordinal()I

    move-result v17

    aget v16, v16, v17

    packed-switch v16, :pswitch_data_0

    .line 413
    invoke-virtual {v5}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/google/protobuf/FieldSet;->readPrimitiveField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/WireFormat$FieldType;)Ljava/lang/Object;

    move-result-object v14

    .line 417
    :cond_d
    :goto_6
    invoke-virtual {v5}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v16

    if-eqz v16, :cond_12

    .line 418
    move-object/from16 v0, p3

    invoke-interface {v0, v5, v14}, Lcom/google/protobuf/Message$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;

    goto :goto_5

    .line 376
    :pswitch_0
    if-eqz v3, :cond_f

    .line 377
    invoke-interface {v3}, Lcom/google/protobuf/Message;->newBuilderForType()Lcom/google/protobuf/Message$Builder;

    move-result-object v11

    .line 381
    .local v11, subBuilder:Lcom/google/protobuf/Message$Builder;
    :goto_7
    invoke-virtual {v5}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v16

    if-nez v16, :cond_e

    .line 382
    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Lcom/google/protobuf/Message$Builder;->getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/protobuf/Message;

    move-object/from16 v0, v16

    invoke-interface {v11, v0}, Lcom/google/protobuf/Message$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;

    .line 384
    :cond_e
    invoke-virtual {v5}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v11, v2}, Lcom/google/protobuf/CodedInputStream;->readGroup(ILcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 385
    invoke-interface {v11}, Lcom/google/protobuf/Message$Builder;->build()Lcom/google/protobuf/Message;

    move-result-object v14

    .line 386
    .local v14, value:Lcom/google/protobuf/Message;
    goto :goto_6

    .line 379
    .end local v11           #subBuilder:Lcom/google/protobuf/Message$Builder;
    .end local v14           #value:Lcom/google/protobuf/Message;
    :cond_f
    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Lcom/google/protobuf/Message$Builder;->newBuilderForField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;

    move-result-object v11

    .restart local v11       #subBuilder:Lcom/google/protobuf/Message$Builder;
    goto :goto_7

    .line 390
    .end local v11           #subBuilder:Lcom/google/protobuf/Message$Builder;
    :pswitch_1
    if-eqz v3, :cond_11

    .line 391
    invoke-interface {v3}, Lcom/google/protobuf/Message;->newBuilderForType()Lcom/google/protobuf/Message$Builder;

    move-result-object v11

    .line 395
    .restart local v11       #subBuilder:Lcom/google/protobuf/Message$Builder;
    :goto_8
    invoke-virtual {v5}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v16

    if-nez v16, :cond_10

    .line 396
    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Lcom/google/protobuf/Message$Builder;->getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/protobuf/Message;

    move-object/from16 v0, v16

    invoke-interface {v11, v0}, Lcom/google/protobuf/Message$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;

    .line 398
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v11, v1}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 399
    invoke-interface {v11}, Lcom/google/protobuf/Message$Builder;->build()Lcom/google/protobuf/Message;

    move-result-object v14

    .line 400
    .restart local v14       #value:Lcom/google/protobuf/Message;
    goto :goto_6

    .line 393
    .end local v11           #subBuilder:Lcom/google/protobuf/Message$Builder;
    .end local v14           #value:Lcom/google/protobuf/Message;
    :cond_11
    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Lcom/google/protobuf/Message$Builder;->newBuilderForField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;

    move-result-object v11

    .restart local v11       #subBuilder:Lcom/google/protobuf/Message$Builder;
    goto :goto_8

    .line 403
    .end local v11           #subBuilder:Lcom/google/protobuf/Message$Builder;
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v10

    .line 404
    .restart local v10       #rawValue:I
    invoke-virtual {v5}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getEnumType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->findValueByNumber(I)Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    move-result-object v14

    .line 407
    .local v14, value:Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    if-nez v14, :cond_d

    .line 408
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v10}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    .line 409
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 420
    .end local v10           #rawValue:I
    .end local v14           #value:Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    :cond_12
    move-object/from16 v0, p3

    invoke-interface {v0, v5, v14}, Lcom/google/protobuf/Message$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;

    goto/16 :goto_5

    .line 373
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static mergeMessageSetExtensionFromCodedStream(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/Message$Builder;)V
    .locals 10
    .parameter "input"
    .parameter "unknownFields"
    .parameter "extensionRegistry"
    .parameter "builder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 433
    invoke-interface {p3}, Lcom/google/protobuf/Message$Builder;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v6

    .line 451
    .local v6, type:Lcom/google/protobuf/Descriptors$Descriptor;
    const/4 v7, 0x0

    .line 452
    .local v7, typeId:I
    const/4 v3, 0x0

    .line 453
    .local v3, rawBytes:Lcom/google/protobuf/ByteString;
    const/4 v4, 0x0

    .line 454
    .local v4, subBuilder:Lcom/google/protobuf/Message$Builder;
    const/4 v1, 0x0

    .line 457
    .local v1, field:Lcom/google/protobuf/Descriptors$FieldDescriptor;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v5

    .line 458
    .local v5, tag:I
    if-nez v5, :cond_2

    .line 529
    :goto_1
    sget v8, Lcom/google/protobuf/WireFormat;->MESSAGE_SET_ITEM_END_TAG:I

    invoke-virtual {p0, v8}, Lcom/google/protobuf/CodedInputStream;->checkLastTagWas(I)V

    .line 531
    if-eqz v4, :cond_1

    .line 532
    invoke-interface {v4}, Lcom/google/protobuf/Message$Builder;->build()Lcom/google/protobuf/Message;

    move-result-object v8

    invoke-interface {p3, v1, v8}, Lcom/google/protobuf/Message$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;

    .line 534
    :cond_1
    return-void

    .line 462
    :cond_2
    sget v8, Lcom/google/protobuf/WireFormat;->MESSAGE_SET_TYPE_ID_TAG:I

    if-ne v5, v8, :cond_6

    .line 463
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v7

    .line 465
    if-eqz v7, :cond_0

    .line 473
    instance-of v8, p2, Lcom/google/protobuf/ExtensionRegistry;

    if-eqz v8, :cond_4

    move-object v8, p2

    .line 474
    check-cast v8, Lcom/google/protobuf/ExtensionRegistry;

    invoke-virtual {v8, v6, v7}, Lcom/google/protobuf/ExtensionRegistry;->findExtensionByNumber(Lcom/google/protobuf/Descriptors$Descriptor;I)Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;

    move-result-object v0

    .line 480
    .local v0, extension:Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;
    :goto_2
    if-eqz v0, :cond_5

    .line 481
    iget-object v1, v0, Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;->descriptor:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 482
    iget-object v8, v0, Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;->defaultInstance:Lcom/google/protobuf/Message;

    invoke-interface {v8}, Lcom/google/protobuf/Message;->newBuilderForType()Lcom/google/protobuf/Message$Builder;

    move-result-object v4

    .line 483
    invoke-interface {p3, v1}, Lcom/google/protobuf/Message$Builder;->getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Message;

    .line 484
    .local v2, originalMessage:Lcom/google/protobuf/Message;
    if-eqz v2, :cond_3

    .line 485
    invoke-interface {v4, v2}, Lcom/google/protobuf/Message$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;

    .line 487
    :cond_3
    if-eqz v3, :cond_0

    .line 489
    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->newInput()Ljava/io/InputStream;

    move-result-object v8

    invoke-static {v8}, Lcom/google/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Lcom/google/protobuf/CodedInputStream;

    move-result-object v8

    invoke-interface {v4, v8}, Lcom/google/protobuf/Message$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message$Builder;

    .line 491
    const/4 v3, 0x0

    goto :goto_0

    .line 477
    .end local v0           #extension:Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;
    .end local v2           #originalMessage:Lcom/google/protobuf/Message;
    :cond_4
    const/4 v0, 0x0

    .restart local v0       #extension:Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;
    goto :goto_2

    .line 496
    :cond_5
    if-eqz v3, :cond_0

    .line 497
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet$Field;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/google/protobuf/UnknownFieldSet$Field$Builder;->addLengthDelimited(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/protobuf/UnknownFieldSet$Field$Builder;->build()Lcom/google/protobuf/UnknownFieldSet$Field;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeField(ILcom/google/protobuf/UnknownFieldSet$Field;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    .line 501
    const/4 v3, 0x0

    goto :goto_0

    .line 505
    .end local v0           #extension:Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;
    :cond_6
    sget v8, Lcom/google/protobuf/WireFormat;->MESSAGE_SET_MESSAGE_TAG:I

    if-ne v5, v8, :cond_9

    .line 506
    if-nez v7, :cond_7

    .line 509
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    goto :goto_0

    .line 510
    :cond_7
    if-nez v4, :cond_8

    .line 512
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet$Field;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/protobuf/UnknownFieldSet$Field$Builder;->addLengthDelimited(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/protobuf/UnknownFieldSet$Field$Builder;->build()Lcom/google/protobuf/UnknownFieldSet$Field;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeField(ILcom/google/protobuf/UnknownFieldSet$Field;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 519
    :cond_8
    invoke-virtual {p0, v4, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    goto/16 :goto_0

    .line 523
    :cond_9
    invoke-virtual {p0, v5}, Lcom/google/protobuf/CodedInputStream;->skipField(I)Z

    move-result v8

    if-nez v8, :cond_0

    goto/16 :goto_1
.end method

.method protected static newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;
    .locals 2
    .parameter "message"

    .prologue
    .line 550
    new-instance v0, Lcom/google/protobuf/UninitializedMessageException;

    invoke-static {p0}, Lcom/google/protobuf/AbstractMessage$Builder;->findMissingFields(Lcom/google/protobuf/Message;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/protobuf/UninitializedMessageException;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private static subMessagePrefix(Ljava/lang/String;Lcom/google/protobuf/Descriptors$FieldDescriptor;I)Ljava/lang/String;
    .locals 3
    .parameter "prefix"
    .parameter "field"
    .parameter "index"

    .prologue
    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 602
    .local v0, result:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 603
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getFullName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 609
    :goto_0
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 610
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 614
    :cond_0
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 615
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 607
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .prologue
    .line 192
    .local p0, this:Lcom/google/protobuf/AbstractMessage$Builder;,"Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage$Builder;->getAllFields()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 193
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {p0, v2}, Lcom/google/protobuf/AbstractMessage$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;

    goto :goto_0

    .line 195
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;>;"
    :cond_0
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 182
    .local p0, this:Lcom/google/protobuf/AbstractMessage$Builder;,"Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage$Builder;->clear()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 182
    .local p0, this:Lcom/google/protobuf/AbstractMessage$Builder;,"Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage$Builder;->clear()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public abstract clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 182
    .local p0, this:Lcom/google/protobuf/AbstractMessage$Builder;,"Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage$Builder;->clone()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 182
    .local p0, this:Lcom/google/protobuf/AbstractMessage$Builder;,"Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage$Builder;->clone()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 182
    .local p0, this:Lcom/google/protobuf/AbstractMessage$Builder;,"Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage$Builder;->clone()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 182
    .local p0, this:Lcom/google/protobuf/AbstractMessage$Builder;,"Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage$Builder;->clone()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeDelimitedFrom(Ljava/io/InputStream;)Z
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 697
    .local p0, this:Lcom/google/protobuf/AbstractMessage$Builder;,"Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessageLite$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v0

    return v0
.end method

.method public mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 705
    .local p0, this:Lcom/google/protobuf/AbstractMessage$Builder;,"Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/AbstractMessageLite$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/ByteString;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 640
    .local p0, this:Lcom/google/protobuf/AbstractMessage$Builder;,"Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/AbstractMessage$Builder;

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/ByteString;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 648
    .local p0, this:Lcom/google/protobuf/AbstractMessage$Builder;,"Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/AbstractMessage$Builder;

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/CodedInputStream;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    .local p0, this:Lcom/google/protobuf/AbstractMessage$Builder;,"Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-static {}, Lcom/google/protobuf/ExtensionRegistry;->getEmptyRegistry()Lcom/google/protobuf/ExtensionRegistry;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/CodedInputStream;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 252
    .local p0, this:Lcom/google/protobuf/AbstractMessage$Builder;,"Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    .line 255
    .local v1, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 256
    .local v0, tag:I
    if-nez v0, :cond_1

    .line 266
    :goto_0
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/protobuf/AbstractMessage$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;

    .line 267
    return-object p0

    .line 260
    :cond_1
    invoke-static {p1, v1, p2, p0, v0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFieldFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/Message$Builder;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 8
    .parameter "other"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Message;",
            ")TBuilderType;"
        }
    .end annotation

    .prologue
    .line 199
    .local p0, this:Lcom/google/protobuf/AbstractMessage$Builder;,"Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-interface {p1}, Lcom/google/protobuf/Message;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage$Builder;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v7

    if-eq v6, v7, :cond_0

    .line 200
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "mergeFrom(Message) can only merge messages of the same type."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 214
    :cond_0
    invoke-interface {p1}, Lcom/google/protobuf/Message;->getAllFields()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 215
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 216
    .local v3, field:Lcom/google/protobuf/Descriptors$FieldDescriptor;
    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 217
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 218
    .local v0, element:Ljava/lang/Object;
    invoke-virtual {p0, v3, v0}, Lcom/google/protobuf/AbstractMessage$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;

    goto :goto_1

    .line 220
    .end local v0           #element:Ljava/lang/Object;
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_2
    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v6

    sget-object v7, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v6, v7, :cond_4

    .line 221
    invoke-virtual {p0, v3}, Lcom/google/protobuf/AbstractMessage$Builder;->getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Message;

    .line 222
    .local v2, existingValue:Lcom/google/protobuf/Message;
    invoke-interface {v2}, Lcom/google/protobuf/Message;->getDefaultInstanceForType()Lcom/google/protobuf/Message;

    move-result-object v6

    if-ne v2, v6, :cond_3

    .line 223
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v3, v6}, Lcom/google/protobuf/AbstractMessage$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;

    goto :goto_0

    .line 225
    :cond_3
    invoke-interface {v2}, Lcom/google/protobuf/Message;->newBuilderForType()Lcom/google/protobuf/Message$Builder;

    move-result-object v6

    invoke-interface {v6, v2}, Lcom/google/protobuf/Message$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/protobuf/Message;

    invoke-interface {v7, v6}, Lcom/google/protobuf/Message$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/protobuf/Message$Builder;->build()Lcom/google/protobuf/Message;

    move-result-object v6

    invoke-virtual {p0, v3, v6}, Lcom/google/protobuf/AbstractMessage$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;

    goto :goto_0

    .line 232
    .end local v2           #existingValue:Lcom/google/protobuf/Message;
    :cond_4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v3, v6}, Lcom/google/protobuf/AbstractMessage$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;

    goto :goto_0

    .line 236
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;>;"
    .end local v3           #field:Lcom/google/protobuf/Descriptors$FieldDescriptor;
    :cond_5
    invoke-interface {p1}, Lcom/google/protobuf/Message;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;

    .line 238
    return-object p0
.end method

.method public mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 683
    .local p0, this:Lcom/google/protobuf/AbstractMessage$Builder;,"Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessageLite$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/AbstractMessage$Builder;

    return-object v0
.end method

.method public mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 691
    .local p0, this:Lcom/google/protobuf/AbstractMessage$Builder;,"Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/AbstractMessageLite$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/AbstractMessage$Builder;

    return-object v0
.end method

.method public mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 654
    .local p0, this:Lcom/google/protobuf/AbstractMessage$Builder;,"Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessageLite$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/AbstractMessage$Builder;

    return-object v0
.end method

.method public mergeFrom([BII)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "data"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 661
    .local p0, this:Lcom/google/protobuf/AbstractMessage$Builder;,"Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/AbstractMessageLite$Builder;->mergeFrom([BII)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/AbstractMessage$Builder;

    return-object v0
.end method

.method public mergeFrom([BIILcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "data"
    .parameter "off"
    .parameter "len"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 677
    .local p0, this:Lcom/google/protobuf/AbstractMessage$Builder;,"Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/protobuf/AbstractMessageLite$Builder;->mergeFrom([BIILcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/AbstractMessage$Builder;

    return-object v0
.end method

.method public mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 669
    .local p0, this:Lcom/google/protobuf/AbstractMessage$Builder;,"Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/AbstractMessageLite$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/AbstractMessage$Builder;

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 182
    .local p0, this:Lcom/google/protobuf/AbstractMessage$Builder;,"Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 182
    .local p0, this:Lcom/google/protobuf/AbstractMessage$Builder;,"Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    .local p0, this:Lcom/google/protobuf/AbstractMessage$Builder;,"Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    .local p0, this:Lcom/google/protobuf/AbstractMessage$Builder;,"Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    .local p0, this:Lcom/google/protobuf/AbstractMessage$Builder;,"Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    .local p0, this:Lcom/google/protobuf/AbstractMessage$Builder;,"Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 182
    .local p0, this:Lcom/google/protobuf/AbstractMessage$Builder;,"Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom([BII)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 182
    .local p0, this:Lcom/google/protobuf/AbstractMessage$Builder;,"Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BII)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom([BIILcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 182
    .local p0, this:Lcom/google/protobuf/AbstractMessage$Builder;,"Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BIILcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 182
    .local p0, this:Lcom/google/protobuf/AbstractMessage$Builder;,"Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 182
    .local p0, this:Lcom/google/protobuf/AbstractMessage$Builder;,"Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 182
    .local p0, this:Lcom/google/protobuf/AbstractMessage$Builder;,"Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    .local p0, this:Lcom/google/protobuf/AbstractMessage$Builder;,"Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    .local p0, this:Lcom/google/protobuf/AbstractMessage$Builder;,"Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    .local p0, this:Lcom/google/protobuf/AbstractMessage$Builder;,"Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    .local p0, this:Lcom/google/protobuf/AbstractMessage$Builder;,"Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    .local p0, this:Lcom/google/protobuf/AbstractMessage$Builder;,"Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom([B)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 182
    .local p0, this:Lcom/google/protobuf/AbstractMessage$Builder;,"Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom([BII)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 182
    .local p0, this:Lcom/google/protobuf/AbstractMessage$Builder;,"Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BII)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom([BIILcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 182
    .local p0, this:Lcom/google/protobuf/AbstractMessage$Builder;,"Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BIILcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 182
    .local p0, this:Lcom/google/protobuf/AbstractMessage$Builder;,"Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 182
    .local p0, this:Lcom/google/protobuf/AbstractMessage$Builder;,"Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 182
    .local p0, this:Lcom/google/protobuf/AbstractMessage$Builder;,"Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    .local p0, this:Lcom/google/protobuf/AbstractMessage$Builder;,"Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    .local p0, this:Lcom/google/protobuf/AbstractMessage$Builder;,"Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    .local p0, this:Lcom/google/protobuf/AbstractMessage$Builder;,"Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    .local p0, this:Lcom/google/protobuf/AbstractMessage$Builder;,"Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom([B)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 182
    .local p0, this:Lcom/google/protobuf/AbstractMessage$Builder;,"Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom([BII)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 182
    .local p0, this:Lcom/google/protobuf/AbstractMessage$Builder;,"Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BII)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom([BIILcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 182
    .local p0, this:Lcom/google/protobuf/AbstractMessage$Builder;,"Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BIILcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 182
    .local p0, this:Lcom/google/protobuf/AbstractMessage$Builder;,"Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "unknownFields"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/UnknownFieldSet;",
            ")TBuilderType;"
        }
    .end annotation

    .prologue
    .line 537
    .local p0, this:Lcom/google/protobuf/AbstractMessage$Builder;,"Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeFrom(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/AbstractMessage$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;

    .line 541
    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    .local p0, this:Lcom/google/protobuf/AbstractMessage$Builder;,"Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method
