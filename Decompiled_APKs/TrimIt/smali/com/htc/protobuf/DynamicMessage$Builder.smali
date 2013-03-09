.class public final Lcom/htc/protobuf/DynamicMessage$Builder;
.super Lcom/htc/protobuf/AbstractMessage$Builder;
.source "DynamicMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/DynamicMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/AbstractMessage$Builder",
        "<",
        "Lcom/htc/protobuf/DynamicMessage$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private fields:Lcom/htc/protobuf/FieldSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/protobuf/FieldSet",
            "<",
            "Lcom/htc/protobuf/Descriptors$FieldDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final type:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private unknownFields:Lcom/htc/protobuf/UnknownFieldSet;


# direct methods
.method private constructor <init>(Lcom/htc/protobuf/Descriptors$Descriptor;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/htc/protobuf/AbstractMessage$Builder;-><init>()V

    .line 259
    iput-object p1, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->type:Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 260
    invoke-static {}, Lcom/htc/protobuf/FieldSet;->newFieldSet()Lcom/htc/protobuf/FieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->fields:Lcom/htc/protobuf/FieldSet;

    .line 261
    invoke-static {}, Lcom/htc/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->unknownFields:Lcom/htc/protobuf/UnknownFieldSet;

    .line 262
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/protobuf/Descriptors$Descriptor;Lcom/htc/protobuf/DynamicMessage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 252
    invoke-direct {p0, p1}, Lcom/htc/protobuf/DynamicMessage$Builder;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;)V

    return-void
.end method

.method static synthetic access$000(Lcom/htc/protobuf/DynamicMessage$Builder;)Lcom/htc/protobuf/DynamicMessage;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 252
    invoke-direct {p0}, Lcom/htc/protobuf/DynamicMessage$Builder;->buildParsed()Lcom/htc/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/protobuf/DynamicMessage;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/htc/protobuf/DynamicMessage$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    new-instance v0, Lcom/htc/protobuf/DynamicMessage;

    iget-object v1, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->type:Lcom/htc/protobuf/Descriptors$Descriptor;

    iget-object v2, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->fields:Lcom/htc/protobuf/FieldSet;

    iget-object v3, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->unknownFields:Lcom/htc/protobuf/UnknownFieldSet;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/DynamicMessage;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;Lcom/htc/protobuf/FieldSet;Lcom/htc/protobuf/UnknownFieldSet;Lcom/htc/protobuf/DynamicMessage$1;)V

    invoke-static {v0}, Lcom/htc/protobuf/DynamicMessage$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 311
    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/DynamicMessage$Builder;->buildPartial()Lcom/htc/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method private verifyContainingType(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)V
    .locals 2
    .parameter "field"

    .prologue
    .line 432
    invoke-virtual {p1}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->type:Lcom/htc/protobuf/Descriptors$Descriptor;

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
.method public addRepeatedField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/htc/protobuf/DynamicMessage$Builder;
    .locals 1
    .parameter "field"
    .parameter "value"

    .prologue
    .line 408
    invoke-direct {p0, p1}, Lcom/htc/protobuf/DynamicMessage$Builder;->verifyContainingType(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)V

    .line 409
    iget-object v0, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->fields:Lcom/htc/protobuf/FieldSet;

    invoke-virtual {v0, p1, p2}, Lcom/htc/protobuf/FieldSet;->addRepeatedField(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 410
    return-object p0
.end method

.method public bridge synthetic addRepeatedField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 252
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DynamicMessage$Builder;->addRepeatedField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/htc/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/htc/protobuf/DynamicMessage;
    .locals 5

    .prologue
    .line 293
    iget-object v0, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->fields:Lcom/htc/protobuf/FieldSet;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/protobuf/DynamicMessage$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    new-instance v0, Lcom/htc/protobuf/DynamicMessage;

    iget-object v1, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->type:Lcom/htc/protobuf/Descriptors$Descriptor;

    iget-object v2, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->fields:Lcom/htc/protobuf/FieldSet;

    iget-object v3, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->unknownFields:Lcom/htc/protobuf/UnknownFieldSet;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/DynamicMessage;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;Lcom/htc/protobuf/FieldSet;Lcom/htc/protobuf/UnknownFieldSet;Lcom/htc/protobuf/DynamicMessage$1;)V

    invoke-static {v0}, Lcom/htc/protobuf/DynamicMessage$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 297
    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/DynamicMessage$Builder;->buildPartial()Lcom/htc/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/htc/protobuf/DynamicMessage$Builder;->build()Lcom/htc/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/htc/protobuf/DynamicMessage$Builder;->build()Lcom/htc/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/protobuf/DynamicMessage;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 315
    iget-object v1, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->fields:Lcom/htc/protobuf/FieldSet;

    if-nez v1, :cond_0

    .line 316
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 319
    :cond_0
    iget-object v1, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->fields:Lcom/htc/protobuf/FieldSet;

    invoke-virtual {v1}, Lcom/htc/protobuf/FieldSet;->makeImmutable()V

    .line 320
    new-instance v0, Lcom/htc/protobuf/DynamicMessage;

    iget-object v1, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->type:Lcom/htc/protobuf/Descriptors$Descriptor;

    iget-object v2, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->fields:Lcom/htc/protobuf/FieldSet;

    iget-object v3, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->unknownFields:Lcom/htc/protobuf/UnknownFieldSet;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/DynamicMessage;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;Lcom/htc/protobuf/FieldSet;Lcom/htc/protobuf/UnknownFieldSet;Lcom/htc/protobuf/DynamicMessage$1;)V

    .line 322
    .local v0, result:Lcom/htc/protobuf/DynamicMessage;
    iput-object v4, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->fields:Lcom/htc/protobuf/FieldSet;

    .line 323
    iput-object v4, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->unknownFields:Lcom/htc/protobuf/UnknownFieldSet;

    .line 324
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/htc/protobuf/DynamicMessage$Builder;->buildPartial()Lcom/htc/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/htc/protobuf/DynamicMessage$Builder;->buildPartial()Lcom/htc/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/htc/protobuf/DynamicMessage$Builder;->clear()Lcom/htc/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/protobuf/DynamicMessage$Builder;
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->fields:Lcom/htc/protobuf/FieldSet;

    if-nez v0, :cond_0

    .line 269
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->fields:Lcom/htc/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/htc/protobuf/FieldSet;->clear()V

    .line 272
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/htc/protobuf/DynamicMessage$Builder;->clear()Lcom/htc/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/htc/protobuf/DynamicMessage$Builder;->clear()Lcom/htc/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Lcom/htc/protobuf/DynamicMessage$Builder;
    .locals 1
    .parameter "field"

    .prologue
    .line 385
    invoke-direct {p0, p1}, Lcom/htc/protobuf/DynamicMessage$Builder;->verifyContainingType(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)V

    .line 386
    iget-object v0, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->fields:Lcom/htc/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/FieldSet;->clearField(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;)V

    .line 387
    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 252
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DynamicMessage$Builder;->clearField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Lcom/htc/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/htc/protobuf/DynamicMessage$Builder;->clone()Lcom/htc/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/htc/protobuf/DynamicMessage$Builder;->clone()Lcom/htc/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/htc/protobuf/DynamicMessage$Builder;
    .locals 3

    .prologue
    .line 328
    new-instance v0, Lcom/htc/protobuf/DynamicMessage$Builder;

    iget-object v1, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->type:Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-direct {v0, v1}, Lcom/htc/protobuf/DynamicMessage$Builder;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;)V

    .line 329
    .local v0, result:Lcom/htc/protobuf/DynamicMessage$Builder;
    iget-object v1, v0, Lcom/htc/protobuf/DynamicMessage$Builder;->fields:Lcom/htc/protobuf/FieldSet;

    iget-object v2, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->fields:Lcom/htc/protobuf/FieldSet;

    invoke-virtual {v1, v2}, Lcom/htc/protobuf/FieldSet;->mergeFrom(Lcom/htc/protobuf/FieldSet;)V

    .line 330
    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/htc/protobuf/DynamicMessage$Builder;->clone()Lcom/htc/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/htc/protobuf/DynamicMessage$Builder;->clone()Lcom/htc/protobuf/DynamicMessage$Builder;

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
    invoke-virtual {p0}, Lcom/htc/protobuf/DynamicMessage$Builder;->clone()Lcom/htc/protobuf/DynamicMessage$Builder;

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
            "Lcom/htc/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 346
    iget-object v0, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->fields:Lcom/htc/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/htc/protobuf/FieldSet;->getAllFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/protobuf/DynamicMessage;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->type:Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/protobuf/DynamicMessage;->getDefaultInstance(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/htc/protobuf/DynamicMessage$Builder;->getDefaultInstanceForType()Lcom/htc/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/htc/protobuf/DynamicMessage$Builder;->getDefaultInstanceForType()Lcom/htc/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->type:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
    .locals 3
    .parameter "field"

    .prologue
    .line 366
    invoke-direct {p0, p1}, Lcom/htc/protobuf/DynamicMessage$Builder;->verifyContainingType(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)V

    .line 367
    iget-object v1, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->fields:Lcom/htc/protobuf/FieldSet;

    invoke-virtual {v1, p1}, Lcom/htc/protobuf/FieldSet;->getField(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    .line 368
    .local v0, result:Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 369
    invoke-virtual {p1}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v1

    sget-object v2, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v1, v2, :cond_1

    .line 370
    invoke-virtual {p1}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/protobuf/DynamicMessage;->getDefaultInstance(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/DynamicMessage;

    move-result-object v0

    .line 375
    .end local v0           #result:Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v0

    .line 372
    .restart local v0       #result:Ljava/lang/Object;
    :cond_1
    invoke-virtual {p1}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getRepeatedField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;I)Ljava/lang/Object;
    .locals 1
    .parameter "field"
    .parameter "index"

    .prologue
    .line 396
    invoke-direct {p0, p1}, Lcom/htc/protobuf/DynamicMessage$Builder;->verifyContainingType(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)V

    .line 397
    iget-object v0, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->fields:Lcom/htc/protobuf/FieldSet;

    invoke-virtual {v0, p1, p2}, Lcom/htc/protobuf/FieldSet;->getRepeatedField(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRepeatedFieldCount(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)I
    .locals 1
    .parameter "field"

    .prologue
    .line 391
    invoke-direct {p0, p1}, Lcom/htc/protobuf/DynamicMessage$Builder;->verifyContainingType(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)V

    .line 392
    iget-object v0, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->fields:Lcom/htc/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/FieldSet;->getRepeatedFieldCount(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;)I

    move-result v0

    return v0
.end method

.method public getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->unknownFields:Lcom/htc/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Z
    .locals 1
    .parameter "field"

    .prologue
    .line 361
    invoke-direct {p0, p1}, Lcom/htc/protobuf/DynamicMessage$Builder;->verifyContainingType(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)V

    .line 362
    iget-object v0, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->fields:Lcom/htc/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/FieldSet;->hasField(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;)Z

    move-result v0

    return v0
.end method

.method public isInitialized()Z
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->type:Lcom/htc/protobuf/Descriptors$Descriptor;

    iget-object v1, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->fields:Lcom/htc/protobuf/FieldSet;

    #calls: Lcom/htc/protobuf/DynamicMessage;->isInitialized(Lcom/htc/protobuf/Descriptors$Descriptor;Lcom/htc/protobuf/FieldSet;)Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DynamicMessage;->access$600(Lcom/htc/protobuf/Descriptors$Descriptor;Lcom/htc/protobuf/FieldSet;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 252
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DynamicMessage$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DynamicMessage$Builder;
    .locals 3
    .parameter "other"

    .prologue
    .line 276
    instance-of v1, p1, Lcom/htc/protobuf/DynamicMessage;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 278
    check-cast v0, Lcom/htc/protobuf/DynamicMessage;

    .line 279
    .local v0, otherDynamicMessage:Lcom/htc/protobuf/DynamicMessage;
    #getter for: Lcom/htc/protobuf/DynamicMessage;->type:Lcom/htc/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/htc/protobuf/DynamicMessage;->access$200(Lcom/htc/protobuf/DynamicMessage;)Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->type:Lcom/htc/protobuf/Descriptors$Descriptor;

    if-eq v1, v2, :cond_0

    .line 280
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "mergeFrom(Message) can only merge messages of the same type."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 283
    :cond_0
    iget-object v1, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->fields:Lcom/htc/protobuf/FieldSet;

    #getter for: Lcom/htc/protobuf/DynamicMessage;->fields:Lcom/htc/protobuf/FieldSet;
    invoke-static {v0}, Lcom/htc/protobuf/DynamicMessage;->access$300(Lcom/htc/protobuf/DynamicMessage;)Lcom/htc/protobuf/FieldSet;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/protobuf/FieldSet;->mergeFrom(Lcom/htc/protobuf/FieldSet;)V

    .line 284
    #getter for: Lcom/htc/protobuf/DynamicMessage;->unknownFields:Lcom/htc/protobuf/UnknownFieldSet;
    invoke-static {v0}, Lcom/htc/protobuf/DynamicMessage;->access$400(Lcom/htc/protobuf/DynamicMessage;)Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/protobuf/DynamicMessage$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/DynamicMessage$Builder;

    .line 287
    .end local v0           #otherDynamicMessage:Lcom/htc/protobuf/DynamicMessage;
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_1
    invoke-super {p0, p1}, Lcom/htc/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v1

    check-cast v1, Lcom/htc/protobuf/DynamicMessage$Builder;

    move-object p0, v1

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 252
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DynamicMessage$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 252
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DynamicMessage$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/DynamicMessage$Builder;
    .locals 1
    .parameter "unknownFields"

    .prologue
    .line 423
    iget-object v0, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->unknownFields:Lcom/htc/protobuf/UnknownFieldSet;

    invoke-static {v0}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeFrom(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->unknownFields:Lcom/htc/protobuf/UnknownFieldSet;

    .line 427
    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 252
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DynamicMessage$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Lcom/htc/protobuf/DynamicMessage$Builder;
    .locals 2
    .parameter "field"

    .prologue
    .line 350
    invoke-direct {p0, p1}, Lcom/htc/protobuf/DynamicMessage$Builder;->verifyContainingType(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)V

    .line 352
    invoke-virtual {p1}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-eq v0, v1, :cond_0

    .line 353
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "newBuilderForField is only valid for fields with message type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 357
    :cond_0
    new-instance v0, Lcom/htc/protobuf/DynamicMessage$Builder;

    invoke-virtual {p1}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/protobuf/DynamicMessage$Builder;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 252
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DynamicMessage$Builder;->newBuilderForField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Lcom/htc/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/htc/protobuf/DynamicMessage$Builder;
    .locals 1
    .parameter "field"
    .parameter "value"

    .prologue
    .line 379
    invoke-direct {p0, p1}, Lcom/htc/protobuf/DynamicMessage$Builder;->verifyContainingType(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)V

    .line 380
    iget-object v0, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->fields:Lcom/htc/protobuf/FieldSet;

    invoke-virtual {v0, p1, p2}, Lcom/htc/protobuf/FieldSet;->setField(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 381
    return-object p0
.end method

.method public bridge synthetic setField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 252
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DynamicMessage$Builder;->setField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/htc/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setRepeatedField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/htc/protobuf/DynamicMessage$Builder;
    .locals 1
    .parameter "field"
    .parameter "index"
    .parameter "value"

    .prologue
    .line 402
    invoke-direct {p0, p1}, Lcom/htc/protobuf/DynamicMessage$Builder;->verifyContainingType(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)V

    .line 403
    iget-object v0, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->fields:Lcom/htc/protobuf/FieldSet;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/protobuf/FieldSet;->setRepeatedField(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;ILjava/lang/Object;)V

    .line 404
    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 252
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/protobuf/DynamicMessage$Builder;->setRepeatedField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/htc/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/DynamicMessage$Builder;
    .locals 0
    .parameter "unknownFields"

    .prologue
    .line 418
    iput-object p1, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->unknownFields:Lcom/htc/protobuf/UnknownFieldSet;

    .line 419
    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 252
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DynamicMessage$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method
