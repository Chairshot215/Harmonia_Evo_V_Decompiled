.class public final Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 4382
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$10000()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 1

    .prologue
    .line 4377
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->create()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9900(Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4377
    invoke-direct {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4428
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4429
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 4432
    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 3

    .prologue
    .line 4385
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    invoke-direct {v0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;-><init>()V

    .line 4386
    .local v0, builder:Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    new-instance v1, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;-><init>(Lcom/htc/protobuf/DescriptorProtos$1;)V

    iput-object v1, v0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    .line 4387
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;
    .locals 1

    .prologue
    .line 4420
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4421
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 4423
    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 4377
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4377
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;
    .locals 3

    .prologue
    .line 4436
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    if-nez v1, :cond_0

    .line 4437
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4440
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    .line 4441
    .local v0, returnMe:Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    .line 4442
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 4377
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4377
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 4377
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 2

    .prologue
    .line 4395
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    if-nez v0, :cond_0

    .line 4396
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4399
    :cond_0
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;-><init>(Lcom/htc/protobuf/DescriptorProtos$1;)V

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    .line 4400
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4377
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4377
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearInputType()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 2

    .prologue
    .line 4556
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    const/4 v1, 0x0

    #setter for: Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->hasInputType:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->access$10402(Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;Z)Z

    .line 4557
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->getInputType()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->inputType_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->access$10502(Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;Ljava/lang/String;)Ljava/lang/String;

    .line 4558
    return-object p0
.end method

.method public clearName()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 2

    .prologue
    .line 4535
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    const/4 v1, 0x0

    #setter for: Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->hasName:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->access$10202(Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;Z)Z

    .line 4536
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->name_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->access$10302(Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;Ljava/lang/String;)Ljava/lang/String;

    .line 4537
    return-object p0
.end method

.method public clearOptions()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 2

    .prologue
    .line 4614
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    const/4 v1, 0x0

    #setter for: Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->hasOptions:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->access$10802(Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;Z)Z

    .line 4615
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$MethodOptions;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->access$10902(Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;Lcom/htc/protobuf/DescriptorProtos$MethodOptions;)Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    .line 4616
    return-object p0
.end method

.method public clearOutputType()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 2

    .prologue
    .line 4577
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    const/4 v1, 0x0

    #setter for: Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->hasOutputType:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->access$10602(Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;Z)Z

    .line 4578
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->getOutputType()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->outputType_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->access$10702(Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;Ljava/lang/String;)Ljava/lang/String;

    .line 4579
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 4377
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 4377
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 2

    .prologue
    .line 4404
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->create()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-virtual {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 4377
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4377
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4377
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

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
    .line 4377
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;
    .locals 1

    .prologue
    .line 4413
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 4377
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4377
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 4409
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getInputType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4545
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->getInputType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4524
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()Lcom/htc/protobuf/DescriptorProtos$MethodOptions;
    .locals 1

    .prologue
    .line 4587
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->getOptions()Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public getOutputType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4566
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->getOutputType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasInputType()Z
    .locals 1

    .prologue
    .line 4542
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->hasInputType()Z

    move-result v0

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 4521
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->hasName()Z

    move-result v0

    return v0
.end method

.method public hasOptions()Z
    .locals 1

    .prologue
    .line 4584
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->hasOptions()Z

    move-result v0

    return v0
.end method

.method public hasOutputType()Z
    .locals 1

    .prologue
    .line 4563
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->hasOutputType()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;
    .locals 1

    .prologue
    .line 4391
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 4377
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->internalGetResult()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 4417
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4377
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4377
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

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
    .line 4377
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4476
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 4480
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 4481
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 4486
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4488
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 4489
    :goto_1
    return-object p0

    .line 4483
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 4494
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->setName(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    goto :goto_0

    .line 4498
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->setInputType(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    goto :goto_0

    .line 4502
    :sswitch_3
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->setOutputType(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    goto :goto_0

    .line 4506
    :sswitch_4
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    .line 4507
    .local v0, subBuilder:Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->hasOptions()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4508
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->getOptions()Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$MethodOptions;)Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;

    .line 4510
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 4511
    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->setOptions(Lcom/htc/protobuf/DescriptorProtos$MethodOptions;)Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    goto :goto_0

    .line 4481
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 4455
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 4469
    :goto_0
    return-object p0

    .line 4456
    :cond_0
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->hasName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4457
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->setName(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    .line 4459
    :cond_1
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->hasInputType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4460
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->getInputType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->setInputType(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    .line 4462
    :cond_2
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->hasOutputType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4463
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->getOutputType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->setOutputType(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    .line 4465
    :cond_3
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4466
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->getOptions()Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->mergeOptions(Lcom/htc/protobuf/DescriptorProtos$MethodOptions;)Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    .line 4468
    :cond_4
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 4446
    instance-of v0, p1, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    if-eqz v0, :cond_0

    .line 4447
    check-cast p1, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object p0

    .line 4450
    .end local p0
    :goto_0
    return-object p0

    .line 4449
    .restart local p0
    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;

    goto :goto_0
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
    .line 4377
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4377
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

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
    .line 4377
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeOptions(Lcom/htc/protobuf/DescriptorProtos$MethodOptions;)Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 4603
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$MethodOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->access$10900(Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4605
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$MethodOptions;
    invoke-static {v1}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->access$10900(Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->newBuilder(Lcom/htc/protobuf/DescriptorProtos$MethodOptions;)Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$MethodOptions;)Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$MethodOptions;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->access$10902(Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;Lcom/htc/protobuf/DescriptorProtos$MethodOptions;)Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    .line 4610
    :goto_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->hasOptions:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->access$10802(Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;Z)Z

    .line 4611
    return-object p0

    .line 4608
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$MethodOptions;
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->access$10902(Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;Lcom/htc/protobuf/DescriptorProtos$MethodOptions;)Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    goto :goto_0
.end method

.method public setInputType(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 4548
    if-nez p1, :cond_0

    .line 4549
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4551
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->hasInputType:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->access$10402(Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;Z)Z

    .line 4552
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->inputType_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->access$10502(Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;Ljava/lang/String;)Ljava/lang/String;

    .line 4553
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 4527
    if-nez p1, :cond_0

    .line 4528
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4530
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->hasName:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->access$10202(Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;Z)Z

    .line 4531
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->name_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->access$10302(Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;Ljava/lang/String;)Ljava/lang/String;

    .line 4532
    return-object p0
.end method

.method public setOptions(Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 4598
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->hasOptions:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->access$10802(Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;Z)Z

    .line 4599
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$MethodOptions;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->access$10902(Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;Lcom/htc/protobuf/DescriptorProtos$MethodOptions;)Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    .line 4600
    return-object p0
.end method

.method public setOptions(Lcom/htc/protobuf/DescriptorProtos$MethodOptions;)Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 4590
    if-nez p1, :cond_0

    .line 4591
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4593
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->hasOptions:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->access$10802(Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;Z)Z

    .line 4594
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$MethodOptions;
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->access$10902(Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;Lcom/htc/protobuf/DescriptorProtos$MethodOptions;)Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    .line 4595
    return-object p0
.end method

.method public setOutputType(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 4569
    if-nez p1, :cond_0

    .line 4570
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4572
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->hasOutputType:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->access$10602(Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;Z)Z

    .line 4573
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->outputType_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->access$10702(Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;Ljava/lang/String;)Ljava/lang/String;

    .line 4574
    return-object p0
.end method
