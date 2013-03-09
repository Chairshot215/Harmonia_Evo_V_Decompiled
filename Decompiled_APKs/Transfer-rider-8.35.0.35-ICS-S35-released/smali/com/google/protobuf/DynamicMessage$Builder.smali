.class public final Lcom/google/protobuf/DynamicMessage$Builder;
.super Lcom/google/protobuf/AbstractMessage$Builder;
.source "DynamicMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DynamicMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/AbstractMessage$Builder",
        "<",
        "Lcom/google/protobuf/DynamicMessage$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private fields:Lcom/google/protobuf/FieldSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/FieldSet",
            "<",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final type:Lcom/google/protobuf/Descriptors$Descriptor;

.field private unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method private constructor <init>(Lcom/google/protobuf/Descriptors$Descriptor;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/google/protobuf/AbstractMessage$Builder;-><init>()V

    .line 259
    iput-object p1, p0, Lcom/google/protobuf/DynamicMessage$Builder;->type:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 260
    invoke-static {}, Lcom/google/protobuf/FieldSet;->newFieldSet()Lcom/google/protobuf/FieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DynamicMessage$Builder;->fields:Lcom/google/protobuf/FieldSet;

    .line 261
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DynamicMessage$Builder;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 262
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/Descriptors$Descriptor;Lcom/google/protobuf/DynamicMessage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 252
    invoke-direct {p0, p1}, Lcom/google/protobuf/DynamicMessage$Builder;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/protobuf/DynamicMessage$Builder;)Lcom/google/protobuf/DynamicMessage;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 252
    invoke-direct {p0}, Lcom/google/protobuf/DynamicMessage$Builder;->buildParsed()Lcom/google/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/protobuf/DynamicMessage;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/google/protobuf/DynamicMessage$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    new-instance v0, Lcom/google/protobuf/DynamicMessage;

    iget-object v1, p0, Lcom/google/protobuf/DynamicMessage$Builder;->type:Lcom/google/protobuf/Descriptors$Descriptor;

    iget-object v2, p0, Lcom/google/protobuf/DynamicMessage$Builder;->fields:Lcom/google/protobuf/FieldSet;

    iget-object v3, p0, Lcom/google/protobuf/DynamicMessage$Builder;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/DynamicMessage;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;Lcom/google/protobuf/FieldSet;Lcom/google/protobuf/UnknownFieldSet;Lcom/google/protobuf/DynamicMessage$1;)V

    invoke-static {v0}, Lcom/google/protobuf/DynamicMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 311
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/DynamicMessage$Builder;->buildPartial()Lcom/google/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method private verifyContainingType(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V
    .locals 2
    .parameter "field"

    .prologue
    .line 432
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/DynamicMessage$Builder;->type:Lcom/google/protobuf/Descriptors$Descriptor;

    if-eq v0, v1, :cond_0

    .line 433
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "FieldDescriptor does not match message type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 436
    :cond_0
    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/DynamicMessage$Builder;
    .locals 1
    .parameter "field"
    .parameter "value"

    .prologue
    .line 408
    invoke-direct {p0, p1}, Lcom/google/protobuf/DynamicMessage$Builder;->verifyContainingType(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 409
    iget-object v0, p0, Lcom/google/protobuf/DynamicMessage$Builder;->fields:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/FieldSet;->addRepeatedField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 410
    return-object p0
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 252
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DynamicMessage$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protobuf/DynamicMessage;
    .locals 5

    .prologue
    .line 293
    iget-object v0, p0, Lcom/google/protobuf/DynamicMessage$Builder;->fields:Lcom/google/protobuf/FieldSet;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/DynamicMessage$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    new-instance v0, Lcom/google/protobuf/DynamicMessage;

    iget-object v1, p0, Lcom/google/protobuf/DynamicMessage$Builder;->type:Lcom/google/protobuf/Descriptors$Descriptor;

    iget-object v2, p0, Lcom/google/protobuf/DynamicMessage$Builder;->fields:Lcom/google/protobuf/FieldSet;

    iget-object v3, p0, Lcom/google/protobuf/DynamicMessage$Builder;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/DynamicMessage;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;Lcom/google/protobuf/FieldSet;Lcom/google/protobuf/UnknownFieldSet;Lcom/google/protobuf/DynamicMessage$1;)V

    invoke-static {v0}, Lcom/google/protobuf/DynamicMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 297
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/DynamicMessage$Builder;->buildPartial()Lcom/google/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/google/protobuf/DynamicMessage$Builder;->build()Lcom/google/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/google/protobuf/DynamicMessage$Builder;->build()Lcom/google/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protobuf/DynamicMessage;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 315
    iget-object v1, p0, Lcom/google/protobuf/DynamicMessage$Builder;->fields:Lcom/google/protobuf/FieldSet;

    if-nez v1, :cond_0

    .line 316
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 319
    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/DynamicMessage$Builder;->fields:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/FieldSet;->makeImmutable()V

    .line 320
    new-instance v0, Lcom/google/protobuf/DynamicMessage;

    iget-object v1, p0, Lcom/google/protobuf/DynamicMessage$Builder;->type:Lcom/google/protobuf/Descriptors$Descriptor;

    iget-object v2, p0, Lcom/google/protobuf/DynamicMessage$Builder;->fields:Lcom/google/protobuf/FieldSet;

    iget-object v3, p0, Lcom/google/protobuf/DynamicMessage$Builder;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/DynamicMessage;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;Lcom/google/protobuf/FieldSet;Lcom/google/protobuf/UnknownFieldSet;Lcom/google/protobuf/DynamicMessage$1;)V

    .line 322
    .local v0, result:Lcom/google/protobuf/DynamicMessage;
    iput-object v4, p0, Lcom/google/protobuf/DynamicMessage$Builder;->fields:Lcom/google/protobuf/FieldSet;

    .line 323
    iput-object v4, p0, Lcom/google/protobuf/DynamicMessage$Builder;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 324
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/google/protobuf/DynamicMessage$Builder;->buildPartial()Lcom/google/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/google/protobuf/DynamicMessage$Builder;->buildPartial()Lcom/google/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/google/protobuf/DynamicMessage$Builder;->clear()Lcom/google/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protobuf/DynamicMessage$Builder;
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/google/protobuf/DynamicMessage$Builder;->fields:Lcom/google/protobuf/FieldSet;

    if-nez v0, :cond_0

    .line 269
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DynamicMessage$Builder;->fields:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->clear()V

    .line 272
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/google/protobuf/DynamicMessage$Builder;->clear()Lcom/google/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/google/protobuf/DynamicMessage$Builder;->clear()Lcom/google/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/DynamicMessage$Builder;
    .locals 1
    .parameter "field"

    .prologue
    .line 385
    invoke-direct {p0, p1}, Lcom/google/protobuf/DynamicMessage$Builder;->verifyContainingType(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 386
    iget-object v0, p0, Lcom/google/protobuf/DynamicMessage$Builder;->fields:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/FieldSet;->clearField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)V

    .line 387
    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 252
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DynamicMessage$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/google/protobuf/DynamicMessage$Builder;->clone()Lcom/google/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/google/protobuf/DynamicMessage$Builder;->clone()Lcom/google/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/DynamicMessage$Builder;
    .locals 3

    .prologue
    .line 328
    new-instance v0, Lcom/google/protobuf/DynamicMessage$Builder;

    iget-object v1, p0, Lcom/google/protobuf/DynamicMessage$Builder;->type:Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-direct {v0, v1}, Lcom/google/protobuf/DynamicMessage$Builder;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;)V

    .line 329
    .local v0, result:Lcom/google/protobuf/DynamicMessage$Builder;
    iget-object v1, v0, Lcom/google/protobuf/DynamicMessage$Builder;->fields:Lcom/google/protobuf/FieldSet;

    iget-object v2, p0, Lcom/google/protobuf/DynamicMessage$Builder;->fields:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/FieldSet;->mergeFrom(Lcom/google/protobuf/FieldSet;)V

    .line 330
    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/google/protobuf/DynamicMessage$Builder;->clone()Lcom/google/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/google/protobuf/DynamicMessage$Builder;->clone()Lcom/google/protobuf/DynamicMessage$Builder;

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
    .line 252
    invoke-virtual {p0}, Lcom/google/protobuf/DynamicMessage$Builder;->clone()Lcom/google/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAllFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 346
    iget-object v0, p0, Lcom/google/protobuf/DynamicMessage$Builder;->fields:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->getAllFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protobuf/DynamicMessage;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/google/protobuf/DynamicMessage$Builder;->type:Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/google/protobuf/DynamicMessage;->getDefaultInstance(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/google/protobuf/DynamicMessage$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/google/protobuf/DynamicMessage$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/google/protobuf/DynamicMessage$Builder;->type:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
    .locals 3
    .parameter "field"

    .prologue
    .line 366
    invoke-direct {p0, p1}, Lcom/google/protobuf/DynamicMessage$Builder;->verifyContainingType(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 367
    iget-object v1, p0, Lcom/google/protobuf/DynamicMessage$Builder;->fields:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/FieldSet;->getField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    .line 368
    .local v0, result:Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 369
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v1

    sget-object v2, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v1, v2, :cond_1

    .line 370
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/DynamicMessage;->getDefaultInstance(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/DynamicMessage;

    move-result-object v0

    .line 375
    .end local v0           #result:Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v0

    .line 372
    .restart local v0       #result:Ljava/lang/Object;
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;I)Ljava/lang/Object;
    .locals 1
    .parameter "field"
    .parameter "index"

    .prologue
    .line 396
    invoke-direct {p0, p1}, Lcom/google/protobuf/DynamicMessage$Builder;->verifyContainingType(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 397
    iget-object v0, p0, Lcom/google/protobuf/DynamicMessage$Builder;->fields:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/FieldSet;->getRepeatedField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRepeatedFieldCount(Lcom/google/protobuf/Descriptors$FieldDescriptor;)I
    .locals 1
    .parameter "field"

    .prologue
    .line 391
    invoke-direct {p0, p1}, Lcom/google/protobuf/DynamicMessage$Builder;->verifyContainingType(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 392
    iget-object v0, p0, Lcom/google/protobuf/DynamicMessage$Builder;->fields:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/FieldSet;->getRepeatedFieldCount(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)I

    move-result v0

    return v0
.end method

.method public getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/google/protobuf/DynamicMessage$Builder;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Z
    .locals 1
    .parameter "field"

    .prologue
    .line 361
    invoke-direct {p0, p1}, Lcom/google/protobuf/DynamicMessage$Builder;->verifyContainingType(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 362
    iget-object v0, p0, Lcom/google/protobuf/DynamicMessage$Builder;->fields:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/FieldSet;->hasField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Z

    move-result v0

    return v0
.end method

.method public isInitialized()Z
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/google/protobuf/DynamicMessage$Builder;->type:Lcom/google/protobuf/Descriptors$Descriptor;

    iget-object v1, p0, Lcom/google/protobuf/DynamicMessage$Builder;->fields:Lcom/google/protobuf/FieldSet;

    #calls: Lcom/google/protobuf/DynamicMessage;->isInitialized(Lcom/google/protobuf/Descriptors$Descriptor;Lcom/google/protobuf/FieldSet;)Z
    invoke-static {v0, v1}, Lcom/google/protobuf/DynamicMessage;->access$600(Lcom/google/protobuf/Descriptors$Descriptor;Lcom/google/protobuf/FieldSet;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 252
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DynamicMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/DynamicMessage$Builder;
    .locals 3
    .parameter "other"

    .prologue
    .line 276
    instance-of v1, p1, Lcom/google/protobuf/DynamicMessage;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 278
    check-cast v0, Lcom/google/protobuf/DynamicMessage;

    .line 279
    .local v0, otherDynamicMessage:Lcom/google/protobuf/DynamicMessage;
    #getter for: Lcom/google/protobuf/DynamicMessage;->type:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/google/protobuf/DynamicMessage;->access$200(Lcom/google/protobuf/DynamicMessage;)Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    iget-object v2, p0, Lcom/google/protobuf/DynamicMessage$Builder;->type:Lcom/google/protobuf/Descriptors$Descriptor;

    if-eq v1, v2, :cond_0

    .line 280
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "mergeFrom(Message) can only merge messages of the same type."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 283
    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/DynamicMessage$Builder;->fields:Lcom/google/protobuf/FieldSet;

    #getter for: Lcom/google/protobuf/DynamicMessage;->fields:Lcom/google/protobuf/FieldSet;
    invoke-static {v0}, Lcom/google/protobuf/DynamicMessage;->access$300(Lcom/google/protobuf/DynamicMessage;)Lcom/google/protobuf/FieldSet;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/FieldSet;->mergeFrom(Lcom/google/protobuf/FieldSet;)V

    .line 284
    #getter for: Lcom/google/protobuf/DynamicMessage;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;
    invoke-static {v0}, Lcom/google/protobuf/DynamicMessage;->access$400(Lcom/google/protobuf/DynamicMessage;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/DynamicMessage$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/DynamicMessage$Builder;

    .line 287
    .end local v0           #otherDynamicMessage:Lcom/google/protobuf/DynamicMessage;
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/DynamicMessage$Builder;

    move-object p0, v1

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 252
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DynamicMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 252
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DynamicMessage$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/DynamicMessage$Builder;
    .locals 1
    .parameter "unknownFields"

    .prologue
    .line 423
    iget-object v0, p0, Lcom/google/protobuf/DynamicMessage$Builder;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-static {v0}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeFrom(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DynamicMessage$Builder;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 427
    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 252
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DynamicMessage$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/DynamicMessage$Builder;
    .locals 2
    .parameter "field"

    .prologue
    .line 350
    invoke-direct {p0, p1}, Lcom/google/protobuf/DynamicMessage$Builder;->verifyContainingType(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 352
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-eq v0, v1, :cond_0

    .line 353
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "newBuilderForField is only valid for fields with message type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 357
    :cond_0
    new-instance v0, Lcom/google/protobuf/DynamicMessage$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/protobuf/DynamicMessage$Builder;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 252
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DynamicMessage$Builder;->newBuilderForField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/DynamicMessage$Builder;
    .locals 1
    .parameter "field"
    .parameter "value"

    .prologue
    .line 379
    invoke-direct {p0, p1}, Lcom/google/protobuf/DynamicMessage$Builder;->verifyContainingType(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 380
    iget-object v0, p0, Lcom/google/protobuf/DynamicMessage$Builder;->fields:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 381
    return-object p0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 252
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DynamicMessage$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/DynamicMessage$Builder;
    .locals 1
    .parameter "field"
    .parameter "index"
    .parameter "value"

    .prologue
    .line 402
    invoke-direct {p0, p1}, Lcom/google/protobuf/DynamicMessage$Builder;->verifyContainingType(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 403
    iget-object v0, p0, Lcom/google/protobuf/DynamicMessage$Builder;->fields:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/FieldSet;->setRepeatedField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;ILjava/lang/Object;)V

    .line 404
    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 252
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/DynamicMessage$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/DynamicMessage$Builder;
    .locals 0
    .parameter "unknownFields"

    .prologue
    .line 418
    iput-object p1, p0, Lcom/google/protobuf/DynamicMessage$Builder;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 419
    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 252
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DynamicMessage$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method
