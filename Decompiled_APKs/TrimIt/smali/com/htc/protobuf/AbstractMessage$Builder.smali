.class public abstract Lcom/htc/protobuf/AbstractMessage$Builder;
.super Lcom/htc/protobuf/AbstractMessageLite$Builder;
.source "AbstractMessage.java"

# interfaces
.implements Lcom/htc/protobuf/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/AbstractMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BuilderType:",
        "Lcom/htc/protobuf/AbstractMessage$Builder;",
        ">",
        "Lcom/htc/protobuf/AbstractMessageLite$Builder",
        "<TBuilderType;>;",
        "Lcom/htc/protobuf/Message$Builder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 183
    .local p0, this:Lcom/htc/protobuf/AbstractMessage$Builder;,"Lcom/htc/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-direct {p0}, Lcom/htc/protobuf/AbstractMessageLite$Builder;-><init>()V

    return-void
.end method

.method private static findMissingFields(Lcom/htc/protobuf/Message;)Ljava/util/List;
    .locals 2
    .parameter "message"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/protobuf/Message;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 539
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 540
    .local v0, results:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, ""

    invoke-static {p0, v1, v0}, Lcom/htc/protobuf/AbstractMessage$Builder;->findMissingFields(Lcom/htc/protobuf/Message;Ljava/lang/String;Ljava/util/List;)V

    .line 541
    return-object v0
.end method

.method private static findMissingFields(Lcom/htc/protobuf/Message;Ljava/lang/String;Ljava/util/List;)V
    .locals 10
    .parameter "message"
    .parameter "prefix"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/protobuf/Message;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 549
    .local p2, results:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Lcom/htc/protobuf/Message;->getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/protobuf/Descriptors$Descriptor;->getFields()Ljava/util/List;

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

    check-cast v2, Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    .line 550
    .local v2, field:Lcom/htc/protobuf/Descriptors$FieldDescriptor;
    invoke-virtual {v2}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->isRequired()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {p0, v2}, Lcom/htc/protobuf/Message;->hasField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 551
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 556
    .end local v2           #field:Lcom/htc/protobuf/Descriptors$FieldDescriptor;
    :cond_1
    invoke-interface {p0}, Lcom/htc/protobuf/Message;->getAllFields()Ljava/util/Map;

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

    .line 557
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    .line 558
    .restart local v2       #field:Lcom/htc/protobuf/Descriptors$FieldDescriptor;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 560
    .local v7, value:Ljava/lang/Object;
    invoke-virtual {v2}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v8

    sget-object v9, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v8, v9, :cond_2

    .line 561
    invoke-virtual {v2}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 562
    const/4 v3, 0x0

    .line 563
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

    .line 564
    .local v0, element:Ljava/lang/Object;
    check-cast v0, Lcom/htc/protobuf/Message;

    .end local v0           #element:Ljava/lang/Object;
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .local v4, i:I
    invoke-static {p1, v2, v3}, Lcom/htc/protobuf/AbstractMessage$Builder;->subMessagePrefix(Ljava/lang/String;Lcom/htc/protobuf/Descriptors$FieldDescriptor;I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8, p2}, Lcom/htc/protobuf/AbstractMessage$Builder;->findMissingFields(Lcom/htc/protobuf/Message;Ljava/lang/String;Ljava/util/List;)V

    move v3, v4

    .end local v4           #i:I
    .restart local v3       #i:I
    goto :goto_2

    .line 569
    .end local v3           #i:I
    .end local v6           #i$:Ljava/util/Iterator;
    .restart local v7       #value:Ljava/lang/Object;
    :cond_3
    invoke-interface {p0, v2}, Lcom/htc/protobuf/Message;->hasField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 570
    check-cast v7, Lcom/htc/protobuf/Message;

    .end local v7           #value:Ljava/lang/Object;
    const/4 v8, -0x1

    invoke-static {p1, v2, v8}, Lcom/htc/protobuf/AbstractMessage$Builder;->subMessagePrefix(Ljava/lang/String;Lcom/htc/protobuf/Descriptors$FieldDescriptor;I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, p2}, Lcom/htc/protobuf/AbstractMessage$Builder;->findMissingFields(Lcom/htc/protobuf/Message;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    .line 577
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;>;"
    .end local v2           #field:Lcom/htc/protobuf/Descriptors$FieldDescriptor;
    :cond_4
    return-void
.end method

.method static mergeFieldFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;Lcom/htc/protobuf/Message$Builder;I)Z
    .locals 14
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
    invoke-interface/range {p3 .. p3}, Lcom/htc/protobuf/Message$Builder;->getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v9

    .line 286
    .local v9, type:Lcom/htc/protobuf/Descriptors$Descriptor;
    invoke-virtual {v9}, Lcom/htc/protobuf/Descriptors$Descriptor;->getOptions()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v12

    invoke-virtual {v12}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->getMessageSetWireFormat()Z

    move-result v12

    if-eqz v12, :cond_0

    sget v12, Lcom/htc/protobuf/WireFormat;->MESSAGE_SET_ITEM_TAG:I

    move/from16 v0, p4

    if-ne v0, v12, :cond_0

    .line 288
    invoke-static/range {p0 .. p3}, Lcom/htc/protobuf/AbstractMessage$Builder;->mergeMessageSetExtensionFromCodedStream(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;Lcom/htc/protobuf/Message$Builder;)V

    .line 290
    const/4 v12, 0x1

    .line 405
    :goto_0
    return v12

    .line 293
    :cond_0
    invoke-static/range {p4 .. p4}, Lcom/htc/protobuf/WireFormat;->getTagWireType(I)I

    move-result v11

    .line 294
    .local v11, wireType:I
    invoke-static/range {p4 .. p4}, Lcom/htc/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v4

    .line 297
    .local v4, fieldNumber:I
    const/4 v1, 0x0

    .line 299
    .local v1, defaultInstance:Lcom/htc/protobuf/Message;
    invoke-virtual {v9, v4}, Lcom/htc/protobuf/Descriptors$Descriptor;->isExtensionNumber(I)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 305
    move-object/from16 v0, p2

    instance-of v12, v0, Lcom/htc/protobuf/ExtensionRegistry;

    if-eqz v12, :cond_3

    move-object/from16 v12, p2

    .line 306
    check-cast v12, Lcom/htc/protobuf/ExtensionRegistry;

    invoke-virtual {v12, v9, v4}, Lcom/htc/protobuf/ExtensionRegistry;->findExtensionByNumber(Lcom/htc/protobuf/Descriptors$Descriptor;I)Lcom/htc/protobuf/ExtensionRegistry$ExtensionInfo;

    move-result-object v2

    .line 309
    .local v2, extension:Lcom/htc/protobuf/ExtensionRegistry$ExtensionInfo;
    if-nez v2, :cond_2

    .line 310
    const/4 v3, 0x0

    .line 322
    .end local v2           #extension:Lcom/htc/protobuf/ExtensionRegistry$ExtensionInfo;
    .local v3, field:Lcom/htc/protobuf/Descriptors$FieldDescriptor;
    :goto_1
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getLiteType()Lcom/htc/protobuf/WireFormat$FieldType;

    move-result-object v12

    invoke-virtual {v3}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getOptions()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v13

    invoke-virtual {v13}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->getPacked()Z

    move-result v13

    invoke-static {v12, v13}, Lcom/htc/protobuf/FieldSet;->getWireFormatForFieldType(Lcom/htc/protobuf/WireFormat$FieldType;Z)I

    move-result v12

    if-eq v11, v12, :cond_5

    .line 327
    :cond_1
    move/from16 v0, p4

    invoke-virtual {p1, v0, p0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeFieldFrom(ILcom/htc/protobuf/CodedInputStream;)Z

    move-result v12

    goto :goto_0

    .line 312
    .end local v3           #field:Lcom/htc/protobuf/Descriptors$FieldDescriptor;
    .restart local v2       #extension:Lcom/htc/protobuf/ExtensionRegistry$ExtensionInfo;
    :cond_2
    iget-object v3, v2, Lcom/htc/protobuf/ExtensionRegistry$ExtensionInfo;->descriptor:Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    .line 313
    .restart local v3       #field:Lcom/htc/protobuf/Descriptors$FieldDescriptor;
    iget-object v1, v2, Lcom/htc/protobuf/ExtensionRegistry$ExtensionInfo;->defaultInstance:Lcom/htc/protobuf/Message;

    goto :goto_1

    .line 316
    .end local v2           #extension:Lcom/htc/protobuf/ExtensionRegistry$ExtensionInfo;
    .end local v3           #field:Lcom/htc/protobuf/Descriptors$FieldDescriptor;
    :cond_3
    const/4 v3, 0x0

    .restart local v3       #field:Lcom/htc/protobuf/Descriptors$FieldDescriptor;
    goto :goto_1

    .line 319
    .end local v3           #field:Lcom/htc/protobuf/Descriptors$FieldDescriptor;
    :cond_4
    invoke-virtual {v9, v4}, Lcom/htc/protobuf/Descriptors$Descriptor;->findFieldByNumber(I)Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    move-result-object v3

    .restart local v3       #field:Lcom/htc/protobuf/Descriptors$FieldDescriptor;
    goto :goto_1

    .line 330
    :cond_5
    invoke-virtual {v3}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getOptions()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v12

    invoke-virtual {v12}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->getPacked()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 331
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v5

    .line 332
    .local v5, length:I
    invoke-virtual {p0, v5}, Lcom/htc/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v6

    .line 333
    .local v6, limit:I
    invoke-virtual {v3}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getLiteType()Lcom/htc/protobuf/WireFormat$FieldType;

    move-result-object v12

    sget-object v13, Lcom/htc/protobuf/WireFormat$FieldType;->ENUM:Lcom/htc/protobuf/WireFormat$FieldType;

    if-ne v12, v13, :cond_7

    .line 334
    :goto_2
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v12

    if-lez v12, :cond_8

    .line 335
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->readEnum()I

    move-result v7

    .line 336
    .local v7, rawValue:I
    invoke-virtual {v3}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getEnumType()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v12

    invoke-virtual {v12, v7}, Lcom/htc/protobuf/Descriptors$EnumDescriptor;->findValueByNumber(I)Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;

    move-result-object v10

    .line 337
    .local v10, value:Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;
    if-nez v10, :cond_6

    .line 340
    const/4 v12, 0x1

    goto :goto_0

    .line 342
    :cond_6
    move-object/from16 v0, p3

    invoke-interface {v0, v3, v10}, Lcom/htc/protobuf/Message$Builder;->addRepeatedField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/htc/protobuf/Message$Builder;

    goto :goto_2

    .line 345
    .end local v7           #rawValue:I
    .end local v10           #value:Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;
    :cond_7
    :goto_3
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v12

    if-lez v12, :cond_8

    .line 346
    invoke-virtual {v3}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getLiteType()Lcom/htc/protobuf/WireFormat$FieldType;

    move-result-object v12

    invoke-static {p0, v12}, Lcom/htc/protobuf/FieldSet;->readPrimitiveField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/WireFormat$FieldType;)Ljava/lang/Object;

    move-result-object v10

    .line 348
    .local v10, value:Ljava/lang/Object;
    move-object/from16 v0, p3

    invoke-interface {v0, v3, v10}, Lcom/htc/protobuf/Message$Builder;->addRepeatedField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/htc/protobuf/Message$Builder;

    goto :goto_3

    .line 351
    .end local v10           #value:Ljava/lang/Object;
    :cond_8
    invoke-virtual {p0, v6}, Lcom/htc/protobuf/CodedInputStream;->popLimit(I)V

    .line 405
    .end local v5           #length:I
    .end local v6           #limit:I
    :goto_4
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 354
    :cond_9
    sget-object v12, Lcom/htc/protobuf/AbstractMessage$1;->$SwitchMap$com$htc$protobuf$Descriptors$FieldDescriptor$Type:[I

    invoke-virtual {v3}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v13

    invoke-virtual {v13}, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_0

    .line 394
    invoke-virtual {v3}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getLiteType()Lcom/htc/protobuf/WireFormat$FieldType;

    move-result-object v12

    invoke-static {p0, v12}, Lcom/htc/protobuf/FieldSet;->readPrimitiveField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/WireFormat$FieldType;)Ljava/lang/Object;

    move-result-object v10

    .line 398
    :cond_a
    :goto_5
    invoke-virtual {v3}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v12

    if-eqz v12, :cond_f

    .line 399
    move-object/from16 v0, p3

    invoke-interface {v0, v3, v10}, Lcom/htc/protobuf/Message$Builder;->addRepeatedField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/htc/protobuf/Message$Builder;

    goto :goto_4

    .line 357
    :pswitch_0
    if-eqz v1, :cond_c

    .line 358
    invoke-interface {v1}, Lcom/htc/protobuf/Message;->newBuilderForType()Lcom/htc/protobuf/Message$Builder;

    move-result-object v8

    .line 362
    .local v8, subBuilder:Lcom/htc/protobuf/Message$Builder;
    :goto_6
    invoke-virtual {v3}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v12

    if-nez v12, :cond_b

    .line 363
    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Lcom/htc/protobuf/Message$Builder;->getField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/htc/protobuf/Message;

    invoke-interface {v8, v12}, Lcom/htc/protobuf/Message$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;

    .line 365
    :cond_b
    invoke-virtual {v3}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v12

    move-object/from16 v0, p2

    invoke-virtual {p0, v12, v8, v0}, Lcom/htc/protobuf/CodedInputStream;->readGroup(ILcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 366
    invoke-interface {v8}, Lcom/htc/protobuf/Message$Builder;->build()Lcom/htc/protobuf/Message;

    move-result-object v10

    .line 367
    .local v10, value:Lcom/htc/protobuf/Message;
    goto :goto_5

    .line 360
    .end local v8           #subBuilder:Lcom/htc/protobuf/Message$Builder;
    .end local v10           #value:Lcom/htc/protobuf/Message;
    :cond_c
    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Lcom/htc/protobuf/Message$Builder;->newBuilderForField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Lcom/htc/protobuf/Message$Builder;

    move-result-object v8

    .restart local v8       #subBuilder:Lcom/htc/protobuf/Message$Builder;
    goto :goto_6

    .line 371
    .end local v8           #subBuilder:Lcom/htc/protobuf/Message$Builder;
    :pswitch_1
    if-eqz v1, :cond_e

    .line 372
    invoke-interface {v1}, Lcom/htc/protobuf/Message;->newBuilderForType()Lcom/htc/protobuf/Message$Builder;

    move-result-object v8

    .line 376
    .restart local v8       #subBuilder:Lcom/htc/protobuf/Message$Builder;
    :goto_7
    invoke-virtual {v3}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v12

    if-nez v12, :cond_d

    .line 377
    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Lcom/htc/protobuf/Message$Builder;->getField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/htc/protobuf/Message;

    invoke-interface {v8, v12}, Lcom/htc/protobuf/Message$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;

    .line 379
    :cond_d
    move-object/from16 v0, p2

    invoke-virtual {p0, v8, v0}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 380
    invoke-interface {v8}, Lcom/htc/protobuf/Message$Builder;->build()Lcom/htc/protobuf/Message;

    move-result-object v10

    .line 381
    .restart local v10       #value:Lcom/htc/protobuf/Message;
    goto :goto_5

    .line 374
    .end local v8           #subBuilder:Lcom/htc/protobuf/Message$Builder;
    .end local v10           #value:Lcom/htc/protobuf/Message;
    :cond_e
    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Lcom/htc/protobuf/Message$Builder;->newBuilderForField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Lcom/htc/protobuf/Message$Builder;

    move-result-object v8

    .restart local v8       #subBuilder:Lcom/htc/protobuf/Message$Builder;
    goto :goto_7

    .line 384
    .end local v8           #subBuilder:Lcom/htc/protobuf/Message$Builder;
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->readEnum()I

    move-result v7

    .line 385
    .restart local v7       #rawValue:I
    invoke-virtual {v3}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getEnumType()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v12

    invoke-virtual {v12, v7}, Lcom/htc/protobuf/Descriptors$EnumDescriptor;->findValueByNumber(I)Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;

    move-result-object v10

    .line 388
    .local v10, value:Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;
    if-nez v10, :cond_a

    .line 389
    invoke-virtual {p1, v4, v7}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    .line 390
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 401
    .end local v7           #rawValue:I
    .end local v10           #value:Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;
    :cond_f
    move-object/from16 v0, p3

    invoke-interface {v0, v3, v10}, Lcom/htc/protobuf/Message$Builder;->setField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/htc/protobuf/Message$Builder;

    goto/16 :goto_4

    .line 354
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static mergeMessageSetExtensionFromCodedStream(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;Lcom/htc/protobuf/Message$Builder;)V
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
    .line 414
    invoke-interface {p3}, Lcom/htc/protobuf/Message$Builder;->getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v6

    .line 432
    .local v6, type:Lcom/htc/protobuf/Descriptors$Descriptor;
    const/4 v7, 0x0

    .line 433
    .local v7, typeId:I
    const/4 v3, 0x0

    .line 434
    .local v3, rawBytes:Lcom/htc/protobuf/ByteString;
    const/4 v4, 0x0

    .line 435
    .local v4, subBuilder:Lcom/htc/protobuf/Message$Builder;
    const/4 v1, 0x0

    .line 438
    .local v1, field:Lcom/htc/protobuf/Descriptors$FieldDescriptor;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v5

    .line 439
    .local v5, tag:I
    if-nez v5, :cond_2

    .line 510
    :goto_1
    sget v8, Lcom/htc/protobuf/WireFormat;->MESSAGE_SET_ITEM_END_TAG:I

    invoke-virtual {p0, v8}, Lcom/htc/protobuf/CodedInputStream;->checkLastTagWas(I)V

    .line 512
    if-eqz v4, :cond_1

    .line 513
    invoke-interface {v4}, Lcom/htc/protobuf/Message$Builder;->build()Lcom/htc/protobuf/Message;

    move-result-object v8

    invoke-interface {p3, v1, v8}, Lcom/htc/protobuf/Message$Builder;->setField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/htc/protobuf/Message$Builder;

    .line 515
    :cond_1
    return-void

    .line 443
    :cond_2
    sget v8, Lcom/htc/protobuf/WireFormat;->MESSAGE_SET_TYPE_ID_TAG:I

    if-ne v5, v8, :cond_6

    .line 444
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->readUInt32()I

    move-result v7

    .line 446
    if-eqz v7, :cond_0

    .line 454
    instance-of v8, p2, Lcom/htc/protobuf/ExtensionRegistry;

    if-eqz v8, :cond_4

    move-object v8, p2

    .line 455
    check-cast v8, Lcom/htc/protobuf/ExtensionRegistry;

    invoke-virtual {v8, v6, v7}, Lcom/htc/protobuf/ExtensionRegistry;->findExtensionByNumber(Lcom/htc/protobuf/Descriptors$Descriptor;I)Lcom/htc/protobuf/ExtensionRegistry$ExtensionInfo;

    move-result-object v0

    .line 461
    .local v0, extension:Lcom/htc/protobuf/ExtensionRegistry$ExtensionInfo;
    :goto_2
    if-eqz v0, :cond_5

    .line 462
    iget-object v1, v0, Lcom/htc/protobuf/ExtensionRegistry$ExtensionInfo;->descriptor:Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    .line 463
    iget-object v8, v0, Lcom/htc/protobuf/ExtensionRegistry$ExtensionInfo;->defaultInstance:Lcom/htc/protobuf/Message;

    invoke-interface {v8}, Lcom/htc/protobuf/Message;->newBuilderForType()Lcom/htc/protobuf/Message$Builder;

    move-result-object v4

    .line 464
    invoke-interface {p3, v1}, Lcom/htc/protobuf/Message$Builder;->getField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/protobuf/Message;

    .line 465
    .local v2, originalMessage:Lcom/htc/protobuf/Message;
    if-eqz v2, :cond_3

    .line 466
    invoke-interface {v4, v2}, Lcom/htc/protobuf/Message$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;

    .line 468
    :cond_3
    if-eqz v3, :cond_0

    .line 470
    invoke-virtual {v3}, Lcom/htc/protobuf/ByteString;->newInput()Ljava/io/InputStream;

    move-result-object v8

    invoke-static {v8}, Lcom/htc/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Lcom/htc/protobuf/CodedInputStream;

    move-result-object v8

    invoke-interface {v4, v8}, Lcom/htc/protobuf/Message$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/Message$Builder;

    .line 472
    const/4 v3, 0x0

    goto :goto_0

    .line 458
    .end local v0           #extension:Lcom/htc/protobuf/ExtensionRegistry$ExtensionInfo;
    .end local v2           #originalMessage:Lcom/htc/protobuf/Message;
    :cond_4
    const/4 v0, 0x0

    .restart local v0       #extension:Lcom/htc/protobuf/ExtensionRegistry$ExtensionInfo;
    goto :goto_2

    .line 477
    :cond_5
    if-eqz v3, :cond_0

    .line 478
    invoke-static {}, Lcom/htc/protobuf/UnknownFieldSet$Field;->newBuilder()Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->addLengthDelimited(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet$Field;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeField(ILcom/htc/protobuf/UnknownFieldSet$Field;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    .line 482
    const/4 v3, 0x0

    goto :goto_0

    .line 486
    .end local v0           #extension:Lcom/htc/protobuf/ExtensionRegistry$ExtensionInfo;
    :cond_6
    sget v8, Lcom/htc/protobuf/WireFormat;->MESSAGE_SET_MESSAGE_TAG:I

    if-ne v5, v8, :cond_9

    .line 487
    if-nez v7, :cond_7

    .line 490
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->readBytes()Lcom/htc/protobuf/ByteString;

    move-result-object v3

    goto :goto_0

    .line 491
    :cond_7
    if-nez v4, :cond_8

    .line 493
    invoke-static {}, Lcom/htc/protobuf/UnknownFieldSet$Field;->newBuilder()Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->readBytes()Lcom/htc/protobuf/ByteString;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->addLengthDelimited(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet$Field;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeField(ILcom/htc/protobuf/UnknownFieldSet$Field;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 500
    :cond_8
    invoke-virtual {p0, v4, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    goto/16 :goto_0

    .line 504
    :cond_9
    invoke-virtual {p0, v5}, Lcom/htc/protobuf/CodedInputStream;->skipField(I)Z

    move-result v8

    if-nez v8, :cond_0

    goto/16 :goto_1
.end method

.method protected static newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;
    .locals 2
    .parameter "message"

    .prologue
    .line 531
    new-instance v0, Lcom/htc/protobuf/UninitializedMessageException;

    invoke-static {p0}, Lcom/htc/protobuf/AbstractMessage$Builder;->findMissingFields(Lcom/htc/protobuf/Message;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/protobuf/UninitializedMessageException;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private static subMessagePrefix(Ljava/lang/String;Lcom/htc/protobuf/Descriptors$FieldDescriptor;I)Ljava/lang/String;
    .locals 3
    .parameter "prefix"
    .parameter "field"
    .parameter "index"

    .prologue
    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 583
    .local v0, result:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 584
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getFullName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 590
    :goto_0
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 591
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 595
    :cond_0
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 596
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 588
    :cond_1
    invoke-virtual {p1}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .prologue
    .line 192
    .local p0, this:Lcom/htc/protobuf/AbstractMessage$Builder;,"Lcom/htc/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0}, Lcom/htc/protobuf/AbstractMessage$Builder;->getAllFields()Ljava/util/Map;

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
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {p0, v2}, Lcom/htc/protobuf/AbstractMessage$Builder;->clearField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Lcom/htc/protobuf/Message$Builder;

    goto :goto_0

    .line 195
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;>;"
    :cond_0
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 182
    .local p0, this:Lcom/htc/protobuf/AbstractMessage$Builder;,"Lcom/htc/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0}, Lcom/htc/protobuf/AbstractMessage$Builder;->clear()Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 182
    .local p0, this:Lcom/htc/protobuf/AbstractMessage$Builder;,"Lcom/htc/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0}, Lcom/htc/protobuf/AbstractMessage$Builder;->clear()Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public abstract clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 182
    .local p0, this:Lcom/htc/protobuf/AbstractMessage$Builder;,"Lcom/htc/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0}, Lcom/htc/protobuf/AbstractMessage$Builder;->clone()Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 182
    .local p0, this:Lcom/htc/protobuf/AbstractMessage$Builder;,"Lcom/htc/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0}, Lcom/htc/protobuf/AbstractMessage$Builder;->clone()Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 182
    .local p0, this:Lcom/htc/protobuf/AbstractMessage$Builder;,"Lcom/htc/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0}, Lcom/htc/protobuf/AbstractMessage$Builder;->clone()Lcom/htc/protobuf/AbstractMessage$Builder;

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
    .local p0, this:Lcom/htc/protobuf/AbstractMessage$Builder;,"Lcom/htc/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0}, Lcom/htc/protobuf/AbstractMessage$Builder;->clone()Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;
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
    .line 678
    .local p0, this:Lcom/htc/protobuf/AbstractMessage$Builder;,"Lcom/htc/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-super {p0, p1}, Lcom/htc/protobuf/AbstractMessageLite$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/AbstractMessage$Builder;

    return-object v0
.end method

.method public mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/htc/protobuf/ExtensionRegistryLite;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 686
    .local p0, this:Lcom/htc/protobuf/AbstractMessage$Builder;,"Lcom/htc/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-super {p0, p1, p2}, Lcom/htc/protobuf/AbstractMessageLite$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/AbstractMessage$Builder;

    return-object v0
.end method

.method public bridge synthetic mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    .local p0, this:Lcom/htc/protobuf/AbstractMessage$Builder;,"Lcom/htc/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessageLite$Builder;
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
    .local p0, this:Lcom/htc/protobuf/AbstractMessage$Builder;,"Lcom/htc/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    .local p0, this:Lcom/htc/protobuf/AbstractMessage$Builder;,"Lcom/htc/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/Message$Builder;
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
    .local p0, this:Lcom/htc/protobuf/AbstractMessage$Builder;,"Lcom/htc/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    .local p0, this:Lcom/htc/protobuf/AbstractMessage$Builder;,"Lcom/htc/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/MessageLite$Builder;
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
    .local p0, this:Lcom/htc/protobuf/AbstractMessage$Builder;,"Lcom/htc/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/protobuf/ByteString;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 621
    .local p0, this:Lcom/htc/protobuf/AbstractMessage$Builder;,"Lcom/htc/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-super {p0, p1}, Lcom/htc/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/AbstractMessage$Builder;

    return-object v0
.end method

.method public mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/protobuf/ByteString;",
            "Lcom/htc/protobuf/ExtensionRegistryLite;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 629
    .local p0, this:Lcom/htc/protobuf/AbstractMessage$Builder;,"Lcom/htc/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-super {p0, p1, p2}, Lcom/htc/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/AbstractMessage$Builder;

    return-object v0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/protobuf/CodedInputStream;",
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
    .local p0, this:Lcom/htc/protobuf/AbstractMessage$Builder;,"Lcom/htc/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-static {}, Lcom/htc/protobuf/ExtensionRegistry;->getEmptyRegistry()Lcom/htc/protobuf/ExtensionRegistry;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/htc/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/protobuf/CodedInputStream;",
            "Lcom/htc/protobuf/ExtensionRegistryLite;",
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
    .local p0, this:Lcom/htc/protobuf/AbstractMessage$Builder;,"Lcom/htc/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0}, Lcom/htc/protobuf/AbstractMessage$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    .line 255
    .local v1, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 256
    .local v0, tag:I
    if-nez v0, :cond_1

    .line 266
    :goto_0
    invoke-virtual {v1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/protobuf/AbstractMessage$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/Message$Builder;

    .line 267
    return-object p0

    .line 260
    :cond_1
    invoke-static {p1, v1, p2, p0, v0}, Lcom/htc/protobuf/AbstractMessage$Builder;->mergeFieldFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;Lcom/htc/protobuf/Message$Builder;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 8
    .parameter "other"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/protobuf/Message;",
            ")TBuilderType;"
        }
    .end annotation

    .prologue
    .line 199
    .local p0, this:Lcom/htc/protobuf/AbstractMessage$Builder;,"Lcom/htc/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-interface {p1}, Lcom/htc/protobuf/Message;->getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v6

    invoke-virtual {p0}, Lcom/htc/protobuf/AbstractMessage$Builder;->getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v7

    if-eq v6, v7, :cond_0

    .line 200
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "mergeFrom(Message) can only merge messages of the same type."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 214
    :cond_0
    invoke-interface {p1}, Lcom/htc/protobuf/Message;->getAllFields()Ljava/util/Map;

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
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    .line 216
    .local v3, field:Lcom/htc/protobuf/Descriptors$FieldDescriptor;
    invoke-virtual {v3}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

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
    invoke-virtual {p0, v3, v0}, Lcom/htc/protobuf/AbstractMessage$Builder;->addRepeatedField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/htc/protobuf/Message$Builder;

    goto :goto_1

    .line 220
    .end local v0           #element:Ljava/lang/Object;
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_2
    invoke-virtual {v3}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v6

    sget-object v7, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v6, v7, :cond_4

    .line 221
    invoke-virtual {p0, v3}, Lcom/htc/protobuf/AbstractMessage$Builder;->getField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/protobuf/Message;

    .line 222
    .local v2, existingValue:Lcom/htc/protobuf/Message;
    invoke-interface {v2}, Lcom/htc/protobuf/Message;->getDefaultInstanceForType()Lcom/htc/protobuf/Message;

    move-result-object v6

    if-ne v2, v6, :cond_3

    .line 223
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v3, v6}, Lcom/htc/protobuf/AbstractMessage$Builder;->setField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/htc/protobuf/Message$Builder;

    goto :goto_0

    .line 225
    :cond_3
    invoke-interface {v2}, Lcom/htc/protobuf/Message;->newBuilderForType()Lcom/htc/protobuf/Message$Builder;

    move-result-object v6

    invoke-interface {v6, v2}, Lcom/htc/protobuf/Message$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/protobuf/Message;

    invoke-interface {v7, v6}, Lcom/htc/protobuf/Message$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;

    move-result-object v6

    invoke-interface {v6}, Lcom/htc/protobuf/Message$Builder;->build()Lcom/htc/protobuf/Message;

    move-result-object v6

    invoke-virtual {p0, v3, v6}, Lcom/htc/protobuf/AbstractMessage$Builder;->setField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/htc/protobuf/Message$Builder;

    goto :goto_0

    .line 232
    .end local v2           #existingValue:Lcom/htc/protobuf/Message;
    :cond_4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v3, v6}, Lcom/htc/protobuf/AbstractMessage$Builder;->setField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/htc/protobuf/Message$Builder;

    goto :goto_0

    .line 236
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;>;"
    .end local v3           #field:Lcom/htc/protobuf/Descriptors$FieldDescriptor;
    :cond_5
    invoke-interface {p1}, Lcom/htc/protobuf/Message;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/htc/protobuf/AbstractMessage$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/AbstractMessage$Builder;

    .line 238
    return-object p0
.end method

.method public mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;
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
    .line 664
    .local p0, this:Lcom/htc/protobuf/AbstractMessage$Builder;,"Lcom/htc/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-super {p0, p1}, Lcom/htc/protobuf/AbstractMessageLite$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/AbstractMessage$Builder;

    return-object v0
.end method

.method public mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/htc/protobuf/ExtensionRegistryLite;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 672
    .local p0, this:Lcom/htc/protobuf/AbstractMessage$Builder;,"Lcom/htc/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-super {p0, p1, p2}, Lcom/htc/protobuf/AbstractMessageLite$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/AbstractMessage$Builder;

    return-object v0
.end method

.method public mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 635
    .local p0, this:Lcom/htc/protobuf/AbstractMessage$Builder;,"Lcom/htc/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-super {p0, p1}, Lcom/htc/protobuf/AbstractMessageLite$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/AbstractMessage$Builder;

    return-object v0
.end method

.method public mergeFrom([BII)Lcom/htc/protobuf/AbstractMessage$Builder;
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
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 642
    .local p0, this:Lcom/htc/protobuf/AbstractMessage$Builder;,"Lcom/htc/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/htc/protobuf/AbstractMessageLite$Builder;->mergeFrom([BII)Lcom/htc/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/AbstractMessage$Builder;

    return-object v0
.end method

.method public mergeFrom([BIILcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "data"
    .parameter "off"
    .parameter "len"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/htc/protobuf/ExtensionRegistryLite;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 658
    .local p0, this:Lcom/htc/protobuf/AbstractMessage$Builder;,"Lcom/htc/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/protobuf/AbstractMessageLite$Builder;->mergeFrom([BIILcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/AbstractMessage$Builder;

    return-object v0
.end method

.method public mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/htc/protobuf/ExtensionRegistryLite;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 650
    .local p0, this:Lcom/htc/protobuf/AbstractMessage$Builder;,"Lcom/htc/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-super {p0, p1, p2}, Lcom/htc/protobuf/AbstractMessageLite$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/AbstractMessage$Builder;

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 182
    .local p0, this:Lcom/htc/protobuf/AbstractMessage$Builder;,"Lcom/htc/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 182
    .local p0, this:Lcom/htc/protobuf/AbstractMessage$Builder;,"Lcom/htc/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    .local p0, this:Lcom/htc/protobuf/AbstractMessage$Builder;,"Lcom/htc/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessageLite$Builder;
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
    .local p0, this:Lcom/htc/protobuf/AbstractMessage$Builder;,"Lcom/htc/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    .local p0, this:Lcom/htc/protobuf/AbstractMessage$Builder;,"Lcom/htc/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessageLite$Builder;
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
    .local p0, this:Lcom/htc/protobuf/AbstractMessage$Builder;,"Lcom/htc/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom([B)Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 182
    .local p0, this:Lcom/htc/protobuf/AbstractMessage$Builder;,"Lcom/htc/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom([BII)Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 182
    .local p0, this:Lcom/htc/protobuf/AbstractMessage$Builder;,"Lcom/htc/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/protobuf/AbstractMessage$Builder;->mergeFrom([BII)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom([BIILcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 182
    .local p0, this:Lcom/htc/protobuf/AbstractMessage$Builder;,"Lcom/htc/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/htc/protobuf/AbstractMessage$Builder;->mergeFrom([BIILcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 182
    .local p0, this:Lcom/htc/protobuf/AbstractMessage$Builder;,"Lcom/htc/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 182
    .local p0, this:Lcom/htc/protobuf/AbstractMessage$Builder;,"Lcom/htc/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 182
    .local p0, this:Lcom/htc/protobuf/AbstractMessage$Builder;,"Lcom/htc/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    .local p0, this:Lcom/htc/protobuf/AbstractMessage$Builder;,"Lcom/htc/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/Message$Builder;
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
    .local p0, this:Lcom/htc/protobuf/AbstractMessage$Builder;,"Lcom/htc/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    .local p0, this:Lcom/htc/protobuf/AbstractMessage$Builder;,"Lcom/htc/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    .local p0, this:Lcom/htc/protobuf/AbstractMessage$Builder;,"Lcom/htc/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/Message$Builder;
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
    .local p0, this:Lcom/htc/protobuf/AbstractMessage$Builder;,"Lcom/htc/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom([B)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 182
    .local p0, this:Lcom/htc/protobuf/AbstractMessage$Builder;,"Lcom/htc/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom([BII)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 182
    .local p0, this:Lcom/htc/protobuf/AbstractMessage$Builder;,"Lcom/htc/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/protobuf/AbstractMessage$Builder;->mergeFrom([BII)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom([BIILcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 182
    .local p0, this:Lcom/htc/protobuf/AbstractMessage$Builder;,"Lcom/htc/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/htc/protobuf/AbstractMessage$Builder;->mergeFrom([BIILcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 182
    .local p0, this:Lcom/htc/protobuf/AbstractMessage$Builder;,"Lcom/htc/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 182
    .local p0, this:Lcom/htc/protobuf/AbstractMessage$Builder;,"Lcom/htc/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 182
    .local p0, this:Lcom/htc/protobuf/AbstractMessage$Builder;,"Lcom/htc/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    .local p0, this:Lcom/htc/protobuf/AbstractMessage$Builder;,"Lcom/htc/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/MessageLite$Builder;
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
    .local p0, this:Lcom/htc/protobuf/AbstractMessage$Builder;,"Lcom/htc/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    .local p0, this:Lcom/htc/protobuf/AbstractMessage$Builder;,"Lcom/htc/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/MessageLite$Builder;
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
    .local p0, this:Lcom/htc/protobuf/AbstractMessage$Builder;,"Lcom/htc/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom([B)Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 182
    .local p0, this:Lcom/htc/protobuf/AbstractMessage$Builder;,"Lcom/htc/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom([BII)Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 182
    .local p0, this:Lcom/htc/protobuf/AbstractMessage$Builder;,"Lcom/htc/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/protobuf/AbstractMessage$Builder;->mergeFrom([BII)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom([BIILcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 182
    .local p0, this:Lcom/htc/protobuf/AbstractMessage$Builder;,"Lcom/htc/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/htc/protobuf/AbstractMessage$Builder;->mergeFrom([BIILcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 182
    .local p0, this:Lcom/htc/protobuf/AbstractMessage$Builder;,"Lcom/htc/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "unknownFields"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/protobuf/UnknownFieldSet;",
            ")TBuilderType;"
        }
    .end annotation

    .prologue
    .line 518
    .local p0, this:Lcom/htc/protobuf/AbstractMessage$Builder;,"Lcom/htc/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0}, Lcom/htc/protobuf/AbstractMessage$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeFrom(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/AbstractMessage$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/Message$Builder;

    .line 522
    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    .local p0, this:Lcom/htc/protobuf/AbstractMessage$Builder;,"Lcom/htc/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/AbstractMessage$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method
