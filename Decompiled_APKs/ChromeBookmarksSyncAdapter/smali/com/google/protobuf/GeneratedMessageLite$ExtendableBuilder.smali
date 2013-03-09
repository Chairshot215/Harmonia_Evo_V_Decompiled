.class public abstract Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "GeneratedMessageLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ExtendableBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage",
        "<TMessageType;>;BuilderType:",
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder",
        "<TMessageType;TBuilderType;>;>",
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<TMessageType;TBuilderType;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 218
    .local p0, this:Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final addExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<TMessageType;",
            "Ljava/util/List",
            "<TType;>;>;TType;)TBuilderType;"
        }
    .end annotation

    .prologue
    .line 281
    .local p0, this:Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    .local p1, extension:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;,"Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension<TMessageType;Ljava/util/List<TType;>;>;"
    .local p2, value:Ljava/lang/Object;,"TType;"
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->internalGetResult()Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    move-result-object v0

    .line 282
    .local v0, message:Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;,"Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;>;"
    #calls: Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->verifyExtensionContainingType(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V
    invoke-static {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->access$400(Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 283
    #getter for: Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/FieldSet;
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->access$200(Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;)Lcom/google/protobuf/FieldSet;

    move-result-object v1

    #getter for: Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$000(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/google/protobuf/FieldSet;->addRepeatedField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 284
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 213
    .local p0, this:Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->clone()Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 213
    .local p0, this:Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->clone()Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .prologue
    .line 225
    .local p0, this:Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is supposed to be overridden by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 213
    .local p0, this:Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->clone()Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected abstract internalGetResult()Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation
.end method

.method protected final mergeExtensionFields(Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .prologue
    .line 413
    .local p0, this:Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    .local p1, other:Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;,"TMessageType;"
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->internalGetResult()Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    move-result-object v0

    #getter for: Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/FieldSet;
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->access$200(Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;)Lcom/google/protobuf/FieldSet;

    move-result-object v0

    #getter for: Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/FieldSet;
    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->access$200(Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;)Lcom/google/protobuf/FieldSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/FieldSet;->mergeFrom(Lcom/google/protobuf/FieldSet;)V

    .line 415
    return-void
.end method

.method protected parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
    .locals 16
    .parameter "input"
    .parameter "extensionRegistry"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 305
    .local p0, this:Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->internalGetResult()Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    move-result-object v14

    #getter for: Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/FieldSet;
    invoke-static {v14}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->access$200(Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;)Lcom/google/protobuf/FieldSet;

    move-result-object v4

    .line 308
    .local v4, extensions:Lcom/google/protobuf/FieldSet;,"Lcom/google/protobuf/FieldSet<Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;>;"
    invoke-static/range {p3 .. p3}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v13

    .line 309
    .local v13, wireType:I
    invoke-static/range {p3 .. p3}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v5

    .line 311
    .local v5, fieldNumber:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v5}, Lcom/google/protobuf/ExtensionRegistryLite;->findLiteExtensionByNumber(Lcom/google/protobuf/MessageLite;I)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v3

    .line 315
    .local v3, extension:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;,"Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension<TMessageType;*>;"
    const/4 v11, 0x0

    .line 316
    .local v11, unknown:Z
    const/4 v8, 0x0

    .line 317
    .local v8, packed:Z
    if-nez v3, :cond_0

    .line 318
    const/4 v11, 0x1

    .line 333
    :goto_0
    if-eqz v11, :cond_3

    .line 334
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/google/protobuf/CodedInputStream;->skipField(I)Z

    move-result v14

    .line 409
    :goto_1
    return v14

    .line 319
    :cond_0
    #getter for: Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v3}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$000(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/google/protobuf/FieldSet;->getWireFormatForFieldType(Lcom/google/protobuf/WireFormat$FieldType;Z)I

    move-result v14

    if-ne v13, v14, :cond_1

    .line 322
    const/4 v8, 0x0

    goto :goto_0

    .line 323
    :cond_1
    #getter for: Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v3}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$000(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v14

    #getter for: Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated:Z
    invoke-static {v14}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->access$500(Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;)Z

    move-result v14

    if-eqz v14, :cond_2

    #getter for: Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v3}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$000(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v14

    #getter for: Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->type:Lcom/google/protobuf/WireFormat$FieldType;
    invoke-static {v14}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->access$600(Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;)Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/protobuf/WireFormat$FieldType;->isPackable()Z

    move-result v14

    if-eqz v14, :cond_2

    #getter for: Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v3}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$000(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v14, v15}, Lcom/google/protobuf/FieldSet;->getWireFormatForFieldType(Lcom/google/protobuf/WireFormat$FieldType;Z)I

    move-result v14

    if-ne v13, v14, :cond_2

    .line 328
    const/4 v8, 0x1

    goto :goto_0

    .line 330
    :cond_2
    const/4 v11, 0x1

    goto :goto_0

    .line 337
    :cond_3
    if-eqz v8, :cond_7

    .line 338
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v6

    .line 339
    .local v6, length:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v7

    .line 340
    .local v7, limit:I
    #getter for: Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v3}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$000(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v14

    sget-object v15, Lcom/google/protobuf/WireFormat$FieldType;->ENUM:Lcom/google/protobuf/WireFormat$FieldType;

    if-ne v14, v15, :cond_5

    .line 341
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v14

    if-lez v14, :cond_6

    .line 342
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v9

    .line 343
    .local v9, rawValue:I
    #getter for: Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v3}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$000(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getEnumType()Lcom/google/protobuf/Internal$EnumLiteMap;

    move-result-object v14

    invoke-interface {v14, v9}, Lcom/google/protobuf/Internal$EnumLiteMap;->findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;

    move-result-object v12

    .line 345
    .local v12, value:Lcom/google/protobuf/Internal$EnumLite;
    if-nez v12, :cond_4

    .line 348
    const/4 v14, 0x1

    goto :goto_1

    .line 350
    :cond_4
    #getter for: Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v3}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$000(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v14

    invoke-virtual {v4, v14, v12}, Lcom/google/protobuf/FieldSet;->addRepeatedField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_2

    .line 353
    .end local v9           #rawValue:I
    .end local v12           #value:Lcom/google/protobuf/Internal$EnumLite;
    :cond_5
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v14

    if-lez v14, :cond_6

    .line 354
    #getter for: Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v3}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$000(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/google/protobuf/FieldSet;->readPrimitiveField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/WireFormat$FieldType;)Ljava/lang/Object;

    move-result-object v12

    .line 357
    .local v12, value:Ljava/lang/Object;
    #getter for: Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v3}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$000(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v14

    invoke-virtual {v4, v14, v12}, Lcom/google/protobuf/FieldSet;->addRepeatedField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_3

    .line 360
    .end local v12           #value:Ljava/lang/Object;
    :cond_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    .line 409
    .end local v6           #length:I
    .end local v7           #limit:I
    :goto_4
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 363
    :cond_7
    sget-object v14, Lcom/google/protobuf/GeneratedMessageLite$1;->$SwitchMap$com$google$protobuf$WireFormat$JavaType:[I

    #getter for: Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v3}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$000(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteJavaType()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/protobuf/WireFormat$JavaType;->ordinal()I

    move-result v15

    aget v14, v14, v15

    packed-switch v14, :pswitch_data_0

    .line 397
    #getter for: Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v3}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$000(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/google/protobuf/FieldSet;->readPrimitiveField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/WireFormat$FieldType;)Ljava/lang/Object;

    move-result-object v12

    .line 402
    :cond_8
    :goto_5
    #getter for: Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v3}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$000(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated()Z

    move-result v14

    if-eqz v14, :cond_c

    .line 403
    #getter for: Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v3}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$000(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v14

    invoke-virtual {v4, v14, v12}, Lcom/google/protobuf/FieldSet;->addRepeatedField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_4

    .line 365
    :pswitch_0
    const/4 v10, 0x0

    .line 366
    .local v10, subBuilder:Lcom/google/protobuf/MessageLite$Builder;
    #getter for: Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v3}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$000(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated()Z

    move-result v14

    if-nez v14, :cond_9

    .line 367
    #getter for: Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v3}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$000(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v14

    invoke-virtual {v4, v14}, Lcom/google/protobuf/FieldSet;->getField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    .line 369
    .local v2, existingValue:Lcom/google/protobuf/MessageLite;
    if-eqz v2, :cond_9

    .line 370
    invoke-interface {v2}, Lcom/google/protobuf/MessageLite;->toBuilder()Lcom/google/protobuf/MessageLite$Builder;

    move-result-object v10

    .line 373
    .end local v2           #existingValue:Lcom/google/protobuf/MessageLite;
    :cond_9
    if-nez v10, :cond_a

    .line 374
    #getter for: Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->messageDefaultInstance:Lcom/google/protobuf/MessageLite;
    invoke-static {v3}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$700(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/google/protobuf/MessageLite;

    move-result-object v14

    invoke-interface {v14}, Lcom/google/protobuf/MessageLite;->newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;

    move-result-object v10

    .line 376
    :cond_a
    #getter for: Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v3}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$000(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v14

    sget-object v15, Lcom/google/protobuf/WireFormat$FieldType;->GROUP:Lcom/google/protobuf/WireFormat$FieldType;

    if-ne v14, v15, :cond_b

    .line 378
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->getNumber()I

    move-result v14

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v14, v10, v1}, Lcom/google/protobuf/CodedInputStream;->readGroup(ILcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 383
    :goto_6
    invoke-interface {v10}, Lcom/google/protobuf/MessageLite$Builder;->build()Lcom/google/protobuf/MessageLite;

    move-result-object v12

    .line 384
    .local v12, value:Lcom/google/protobuf/MessageLite;
    goto :goto_5

    .line 381
    .end local v12           #value:Lcom/google/protobuf/MessageLite;
    :cond_b
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v10, v1}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    goto :goto_6

    .line 387
    .end local v10           #subBuilder:Lcom/google/protobuf/MessageLite$Builder;
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v9

    .line 388
    .restart local v9       #rawValue:I
    #getter for: Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v3}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$000(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getEnumType()Lcom/google/protobuf/Internal$EnumLiteMap;

    move-result-object v14

    invoke-interface {v14, v9}, Lcom/google/protobuf/Internal$EnumLiteMap;->findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;

    move-result-object v12

    .line 392
    .local v12, value:Lcom/google/protobuf/Internal$EnumLite;
    if-nez v12, :cond_8

    .line 393
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 405
    .end local v9           #rawValue:I
    .end local v12           #value:Lcom/google/protobuf/Internal$EnumLite;
    :cond_c
    #getter for: Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v3}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$000(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v14

    invoke-virtual {v4, v14, v12}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 363
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final setExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .locals 3
    .parameter
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<TMessageType;",
            "Ljava/util/List",
            "<TType;>;>;ITType;)TBuilderType;"
        }
    .end annotation

    .prologue
    .line 271
    .local p0, this:Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    .local p1, extension:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;,"Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension<TMessageType;Ljava/util/List<TType;>;>;"
    .local p3, value:Ljava/lang/Object;,"TType;"
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->internalGetResult()Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    move-result-object v0

    .line 272
    .local v0, message:Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;,"Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;>;"
    #calls: Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->verifyExtensionContainingType(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V
    invoke-static {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->access$400(Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 273
    #getter for: Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/FieldSet;
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->access$200(Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;)Lcom/google/protobuf/FieldSet;

    move-result-object v1

    #getter for: Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$000(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2, p2, p3}, Lcom/google/protobuf/FieldSet;->setRepeatedField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;ILjava/lang/Object;)V

    .line 274
    return-object p0
.end method

.method public final setExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<TMessageType;TType;>;TType;)TBuilderType;"
        }
    .end annotation

    .prologue
    .line 261
    .local p0, this:Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    .local p1, extension:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;,"Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension<TMessageType;TType;>;"
    .local p2, value:Ljava/lang/Object;,"TType;"
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->internalGetResult()Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    move-result-object v0

    .line 262
    .local v0, message:Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;,"Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;>;"
    #calls: Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->verifyExtensionContainingType(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V
    invoke-static {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->access$400(Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 263
    #getter for: Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/FieldSet;
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->access$200(Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;)Lcom/google/protobuf/FieldSet;

    move-result-object v1

    #getter for: Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->access$000(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 264
    return-object p0
.end method
