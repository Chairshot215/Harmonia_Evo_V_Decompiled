.class public abstract Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "GeneratedMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/GeneratedMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ExtendableMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;",
        ">",
        "Lcom/htc/protobuf/GeneratedMessage;"
    }
.end annotation


# instance fields
.field private final extensions:Lcom/htc/protobuf/FieldSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/protobuf/FieldSet",
            "<",
            "Lcom/htc/protobuf/Descriptors$FieldDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 316
    .local p0, this:Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;,"Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage<TMessageType;>;"
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 317
    invoke-static {}, Lcom/htc/protobuf/FieldSet;->newFieldSet()Lcom/htc/protobuf/FieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;->extensions:Lcom/htc/protobuf/FieldSet;

    .line 316
    return-void
.end method

.method static synthetic access$1100(Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;Lcom/htc/protobuf/Descriptors$FieldDescriptor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 313
    invoke-direct {p0, p1}, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;->verifyContainingType(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;)Lcom/htc/protobuf/FieldSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 313
    iget-object v0, p0, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;->extensions:Lcom/htc/protobuf/FieldSet;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 313
    invoke-direct {p0, p1}, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;->verifyExtensionContainingType(Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;)V

    return-void
.end method

.method private verifyContainingType(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)V
    .locals 2
    .parameter "field"

    .prologue
    .line 508
    .local p0, this:Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;,"Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage<TMessageType;>;"
    invoke-virtual {p1}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;->getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 509
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "FieldDescriptor does not match message type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 512
    :cond_0
    return-void
.end method

.method private verifyExtensionContainingType(Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension",
            "<TMessageType;*>;)V"
        }
    .end annotation

    .prologue
    .line 321
    .local p0, this:Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;,"Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage<TMessageType;>;"
    .local p1, extension:Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;,"Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension<TMessageType;*>;"
    invoke-virtual {p1}, Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;->getDescriptor()Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;->getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 324
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Extension is for type \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;->getDescriptor()Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/Descriptors$Descriptor;->getFullName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" which does not match message type \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;->getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/Descriptors$Descriptor;->getFullName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 330
    :cond_0
    return-void
.end method


# virtual methods
.method protected extensionsAreInitialized()Z
    .locals 1

    .prologue
    .line 379
    .local p0, this:Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;,"Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage<TMessageType;>;"
    iget-object v0, p0, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;->extensions:Lcom/htc/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/htc/protobuf/FieldSet;->isInitialized()Z

    move-result v0

    return v0
.end method

.method protected extensionsSerializedSize()I
    .locals 1

    .prologue
    .line 439
    .local p0, this:Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;,"Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage<TMessageType;>;"
    iget-object v0, p0, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;->extensions:Lcom/htc/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/htc/protobuf/FieldSet;->getSerializedSize()I

    move-result v0

    return v0
.end method

.method protected extensionsSerializedSizeAsMessageSet()I
    .locals 1

    .prologue
    .line 442
    .local p0, this:Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;,"Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage<TMessageType;>;"
    iget-object v0, p0, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;->extensions:Lcom/htc/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/htc/protobuf/FieldSet;->getMessageSetSerializedSize()I

    move-result v0

    return v0
.end method

.method public getAllFields()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/htc/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 450
    .local p0, this:Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;,"Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage<TMessageType;>;"
    #calls: Lcom/htc/protobuf/GeneratedMessage;->getAllFieldsMutable()Ljava/util/Map;
    invoke-static {p0}, Lcom/htc/protobuf/GeneratedMessage;->access$700(Lcom/htc/protobuf/GeneratedMessage;)Ljava/util/Map;

    move-result-object v0

    .line 451
    .local v0, result:Ljava/util/Map;,"Ljava/util/Map<Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;->extensions:Lcom/htc/protobuf/FieldSet;

    invoke-virtual {v1}, Lcom/htc/protobuf/FieldSet;->getAllFields()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 452
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method public final getExtension(Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;)Ljava/lang/Object;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension",
            "<TMessageType;TType;>;)TType;"
        }
    .end annotation

    .prologue
    .line 351
    .local p0, this:Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;,"Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage<TMessageType;>;"
    .local p1, extension:Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;,"Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension<TMessageType;TType;>;"
    invoke-direct {p0, p1}, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;->verifyExtensionContainingType(Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;)V

    .line 352
    invoke-virtual {p1}, Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;->getDescriptor()Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    move-result-object v0

    .line 353
    .local v0, descriptor:Lcom/htc/protobuf/Descriptors$FieldDescriptor;
    iget-object v2, p0, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;->extensions:Lcom/htc/protobuf/FieldSet;

    invoke-virtual {v2, v0}, Lcom/htc/protobuf/FieldSet;->getField(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v1

    .line 354
    .local v1, value:Ljava/lang/Object;
    if-nez v1, :cond_1

    .line 355
    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v2

    sget-object v3, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v2, v3, :cond_0

    .line 356
    invoke-virtual {p1}, Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;->getMessageDefaultInstance()Lcom/htc/protobuf/Message;

    move-result-object v2

    .line 362
    :goto_0
    return-object v2

    .line 358
    :cond_0
    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getDefaultValue()Ljava/lang/Object;

    move-result-object v2

    #calls: Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;->fromReflectionType(Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {p1, v2}, Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;->access$300(Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 362
    :cond_1
    #calls: Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;->fromReflectionType(Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {p1, v1}, Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;->access$300(Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method public final getExtension(Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;I)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension",
            "<TMessageType;",
            "Ljava/util/List",
            "<TType;>;>;I)TType;"
        }
    .end annotation

    .prologue
    .line 371
    .local p0, this:Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;,"Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage<TMessageType;>;"
    .local p1, extension:Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;,"Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension<TMessageType;Ljava/util/List<TType;>;>;"
    invoke-direct {p0, p1}, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;->verifyExtensionContainingType(Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;)V

    .line 372
    invoke-virtual {p1}, Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;->getDescriptor()Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    move-result-object v0

    .line 373
    .local v0, descriptor:Lcom/htc/protobuf/Descriptors$FieldDescriptor;
    iget-object v1, p0, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;->extensions:Lcom/htc/protobuf/FieldSet;

    invoke-virtual {v1, v0, p2}, Lcom/htc/protobuf/FieldSet;->getRepeatedField(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;I)Ljava/lang/Object;

    move-result-object v1

    #calls: Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;->singularFromReflectionType(Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {p1, v1}, Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;->access$400(Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public final getExtensionCount(Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;)I
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension",
            "<TMessageType;",
            "Ljava/util/List",
            "<TType;>;>;)I"
        }
    .end annotation

    .prologue
    .line 342
    .local p0, this:Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;,"Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage<TMessageType;>;"
    .local p1, extension:Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;,"Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension<TMessageType;Ljava/util/List<TType;>;>;"
    invoke-direct {p0, p1}, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;->verifyExtensionContainingType(Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;)V

    .line 343
    invoke-virtual {p1}, Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;->getDescriptor()Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    move-result-object v0

    .line 344
    .local v0, descriptor:Lcom/htc/protobuf/Descriptors$FieldDescriptor;
    iget-object v1, p0, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;->extensions:Lcom/htc/protobuf/FieldSet;

    invoke-virtual {v1, v0}, Lcom/htc/protobuf/FieldSet;->getRepeatedFieldCount(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;)I

    move-result v1

    return v1
.end method

.method public getField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
    .locals 3
    .parameter "field"

    .prologue
    .line 467
    .local p0, this:Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;,"Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage<TMessageType;>;"
    invoke-virtual {p1}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 468
    invoke-direct {p0, p1}, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;->verifyContainingType(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)V

    .line 469
    iget-object v1, p0, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;->extensions:Lcom/htc/protobuf/FieldSet;

    invoke-virtual {v1, p1}, Lcom/htc/protobuf/FieldSet;->getField(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    .line 470
    .local v0, value:Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 471
    invoke-virtual {p1}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v1

    sget-object v2, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v1, v2, :cond_1

    .line 474
    invoke-virtual {p1}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/protobuf/DynamicMessage;->getDefaultInstance(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/DynamicMessage;

    move-result-object v0

    .line 482
    .end local v0           #value:Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v0

    .line 476
    .restart local v0       #value:Ljava/lang/Object;
    :cond_1
    invoke-virtual {p1}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 482
    .end local v0           #value:Ljava/lang/Object;
    :cond_2
    invoke-super {p0, p1}, Lcom/htc/protobuf/GeneratedMessage;->getField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getRepeatedField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;I)Ljava/lang/Object;
    .locals 1
    .parameter "field"
    .parameter "index"

    .prologue
    .line 499
    .local p0, this:Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;,"Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage<TMessageType;>;"
    invoke-virtual {p1}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    invoke-direct {p0, p1}, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;->verifyContainingType(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)V

    .line 501
    iget-object v0, p0, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;->extensions:Lcom/htc/protobuf/FieldSet;

    invoke-virtual {v0, p1, p2}, Lcom/htc/protobuf/FieldSet;->getRepeatedField(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;I)Ljava/lang/Object;

    move-result-object v0

    .line 503
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/protobuf/GeneratedMessage;->getRepeatedField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getRepeatedFieldCount(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)I
    .locals 1
    .parameter "field"

    .prologue
    .line 488
    .local p0, this:Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;,"Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage<TMessageType;>;"
    invoke-virtual {p1}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 489
    invoke-direct {p0, p1}, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;->verifyContainingType(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)V

    .line 490
    iget-object v0, p0, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;->extensions:Lcom/htc/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/FieldSet;->getRepeatedFieldCount(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;)I

    move-result v0

    .line 492
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/protobuf/GeneratedMessage;->getRepeatedFieldCount(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)I

    move-result v0

    goto :goto_0
.end method

.method public final hasExtension(Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension",
            "<TMessageType;*>;)Z"
        }
    .end annotation

    .prologue
    .line 335
    .local p0, this:Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;,"Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage<TMessageType;>;"
    .local p1, extension:Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;,"Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension<TMessageType;*>;"
    invoke-direct {p0, p1}, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;->verifyExtensionContainingType(Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;)V

    .line 336
    iget-object v0, p0, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;->extensions:Lcom/htc/protobuf/FieldSet;

    invoke-virtual {p1}, Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;->getDescriptor()Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/protobuf/FieldSet;->hasField(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;)Z

    move-result v0

    return v0
.end method

.method public hasField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Z
    .locals 1
    .parameter "field"

    .prologue
    .line 457
    .local p0, this:Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;,"Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage<TMessageType;>;"
    invoke-virtual {p1}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    invoke-direct {p0, p1}, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;->verifyContainingType(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)V

    .line 459
    iget-object v0, p0, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;->extensions:Lcom/htc/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/FieldSet;->hasField(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;)Z

    move-result v0

    .line 461
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/protobuf/GeneratedMessage;->hasField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Z

    move-result v0

    goto :goto_0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 384
    .local p0, this:Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;,"Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage<TMessageType;>;"
    invoke-super {p0}, Lcom/htc/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;->extensionsAreInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected newExtensionWriter()Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage",
            "<TMessageType;>.ExtensionWriter;"
        }
    .end annotation

    .prologue
    .line 431
    .local p0, this:Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;,"Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage<TMessageType;>;"
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;-><init>(Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;ZLcom/htc/protobuf/GeneratedMessage$1;)V

    return-object v0
.end method

.method protected newMessageSetExtensionWriter()Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage",
            "<TMessageType;>.ExtensionWriter;"
        }
    .end annotation

    .prologue
    .line 434
    .local p0, this:Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;,"Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage<TMessageType;>;"
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;-><init>(Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;ZLcom/htc/protobuf/GeneratedMessage$1;)V

    return-object v0
.end method
