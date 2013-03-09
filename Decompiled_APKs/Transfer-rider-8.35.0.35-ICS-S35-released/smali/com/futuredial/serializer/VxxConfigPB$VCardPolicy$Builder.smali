.class public final Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "VxxConfigPB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 239
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;)Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 234
    invoke-direct {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->buildParsed()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;
    .locals 1

    .prologue
    .line 234
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->create()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 289
    :cond_0
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->buildPartial()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;
    .locals 3

    .prologue
    .line 242
    new-instance v0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;

    invoke-direct {v0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;-><init>()V

    .line 243
    .local v0, builder:Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;
    new-instance v1, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;-><init>(Lcom/futuredial/serializer/VxxConfigPB$1;)V

    iput-object v1, v0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    .line 244
    return-object v0
.end method


# virtual methods
.method public build()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 280
    :cond_0
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->buildPartial()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->build()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->build()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;
    .locals 3

    .prologue
    .line 293
    iget-object v1, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    if-nez v1, :cond_0

    .line 294
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    .line 298
    .local v0, returnMe:Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    .line 299
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->buildPartial()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->buildPartial()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    if-nez v0, :cond_0

    .line 253
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_0
    new-instance v0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;-><init>(Lcom/futuredial/serializer/VxxConfigPB$1;)V

    iput-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    .line 257
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->clear()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->clear()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->clear()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearDefaultCharset()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;
    .locals 2

    .prologue
    .line 507
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    const/4 v1, 0x0

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->hasDefaultCharset:Z
    invoke-static {v0, v1}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->access$1502(Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;Z)Z

    .line 508
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->getDefaultInstance()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->getDefaultCharset()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->defaultCharset_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->access$1602(Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;Ljava/lang/String;)Ljava/lang/String;

    .line 509
    return-object p0
.end method

.method public clearEscChar()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;
    .locals 2

    .prologue
    .line 429
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    const/4 v1, 0x0

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->hasEscChar:Z
    invoke-static {v0, v1}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->access$702(Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;Z)Z

    .line 430
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->getDefaultInstance()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->getEscChar()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->escChar_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->access$802(Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;Ljava/lang/String;)Ljava/lang/String;

    .line 431
    return-object p0
.end method

.method public clearEscEncode()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 447
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->hasEscEncode:Z
    invoke-static {v0, v1}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->access$902(Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;Z)Z

    .line 448
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->escEncode_:I
    invoke-static {v0, v1}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->access$1002(Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;I)I

    .line 449
    return-object p0
.end method

.method public clearEscSinglefield()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;
    .locals 2

    .prologue
    .line 465
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    const/4 v1, 0x0

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->hasEscSinglefield:Z
    invoke-static {v0, v1}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->access$1102(Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;Z)Z

    .line 466
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    const/4 v1, 0x1

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->escSinglefield_:Z
    invoke-static {v0, v1}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->access$1202(Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;Z)Z

    .line 467
    return-object p0
.end method

.method public clearPolicyName()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;
    .locals 2

    .prologue
    .line 408
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    const/4 v1, 0x0

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->hasPolicyName:Z
    invoke-static {v0, v1}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->access$502(Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;Z)Z

    .line 409
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->getDefaultInstance()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->getPolicyName()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->policyName_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->access$602(Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;Ljava/lang/String;)Ljava/lang/String;

    .line 410
    return-object p0
.end method

.method public clearQpBeginWithBlank()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;
    .locals 2

    .prologue
    .line 525
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    const/4 v1, 0x0

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->hasQpBeginWithBlank:Z
    invoke-static {v0, v1}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->access$1702(Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;Z)Z

    .line 526
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    const/4 v1, 0x1

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->qpBeginWithBlank_:Z
    invoke-static {v0, v1}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->access$1802(Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;Z)Z

    .line 527
    return-object p0
.end method

.method public clearQuotedPrintCharset()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;
    .locals 2

    .prologue
    .line 486
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    const/4 v1, 0x0

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->hasQuotedPrintCharset:Z
    invoke-static {v0, v1}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->access$1302(Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;Z)Z

    .line 487
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->getDefaultInstance()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->getQuotedPrintCharset()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->quotedPrintCharset_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->access$1402(Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;Ljava/lang/String;)Ljava/lang/String;

    .line 488
    return-object p0
.end method

.method public clone()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;
    .locals 2

    .prologue
    .line 261
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->create()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    invoke-virtual {v0, v1}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->mergeFrom(Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;)Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->clone()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->clone()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->clone()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->clone()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->clone()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;

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
    .line 234
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->clone()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    invoke-virtual {v0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->getDefaultCharset()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;
    .locals 1

    .prologue
    .line 270
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->getDefaultInstance()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->getDefaultInstanceForType()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->getDefaultInstanceForType()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 266
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getEscChar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    invoke-virtual {v0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->getEscChar()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEscEncode()I
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    invoke-virtual {v0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->getEscEncode()I

    move-result v0

    return v0
.end method

.method public getEscSinglefield()Z
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    invoke-virtual {v0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->getEscSinglefield()Z

    move-result v0

    return v0
.end method

.method public getPolicyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    invoke-virtual {v0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->getPolicyName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQpBeginWithBlank()Z
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    invoke-virtual {v0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->getQpBeginWithBlank()Z

    move-result v0

    return v0
.end method

.method public getQuotedPrintCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    invoke-virtual {v0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->getQuotedPrintCharset()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasDefaultCharset()Z
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    invoke-virtual {v0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->hasDefaultCharset()Z

    move-result v0

    return v0
.end method

.method public hasEscChar()Z
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    invoke-virtual {v0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->hasEscChar()Z

    move-result v0

    return v0
.end method

.method public hasEscEncode()Z
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    invoke-virtual {v0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->hasEscEncode()Z

    move-result v0

    return v0
.end method

.method public hasEscSinglefield()Z
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    invoke-virtual {v0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->hasEscSinglefield()Z

    move-result v0

    return v0
.end method

.method public hasPolicyName()Z
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    invoke-virtual {v0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->hasPolicyName()Z

    move-result v0

    return v0
.end method

.method public hasQpBeginWithBlank()Z
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    invoke-virtual {v0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->hasQpBeginWithBlank()Z

    move-result v0

    return v0
.end method

.method public hasQuotedPrintCharset()Z
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    invoke-virtual {v0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->hasQuotedPrintCharset()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->internalGetResult()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    invoke-virtual {v0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;)Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 312
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->getDefaultInstance()Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 335
    :goto_0
    return-object p0

    .line 313
    :cond_0
    invoke-virtual {p1}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->hasPolicyName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 314
    invoke-virtual {p1}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->getPolicyName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->setPolicyName(Ljava/lang/String;)Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;

    .line 316
    :cond_1
    invoke-virtual {p1}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->hasEscChar()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 317
    invoke-virtual {p1}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->getEscChar()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->setEscChar(Ljava/lang/String;)Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;

    .line 319
    :cond_2
    invoke-virtual {p1}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->hasEscEncode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 320
    invoke-virtual {p1}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->getEscEncode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->setEscEncode(I)Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;

    .line 322
    :cond_3
    invoke-virtual {p1}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->hasEscSinglefield()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 323
    invoke-virtual {p1}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->getEscSinglefield()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->setEscSinglefield(Z)Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;

    .line 325
    :cond_4
    invoke-virtual {p1}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->hasQuotedPrintCharset()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 326
    invoke-virtual {p1}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->getQuotedPrintCharset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->setQuotedPrintCharset(Ljava/lang/String;)Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;

    .line 328
    :cond_5
    invoke-virtual {p1}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->hasDefaultCharset()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 329
    invoke-virtual {p1}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->getDefaultCharset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->setDefaultCharset(Ljava/lang/String;)Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;

    .line 331
    :cond_6
    invoke-virtual {p1}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->hasQpBeginWithBlank()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 332
    invoke-virtual {p1}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->getQpBeginWithBlank()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->setQpBeginWithBlank(Z)Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;

    .line 334
    :cond_7
    invoke-virtual {p1}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;
    .locals 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    .line 346
    .local v1, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 347
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 352
    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 354
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 355
    :goto_1
    return-object p0

    .line 349
    :sswitch_0
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 360
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->setPolicyName(Ljava/lang/String;)Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;

    goto :goto_0

    .line 364
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->setEscChar(Ljava/lang/String;)Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;

    goto :goto_0

    .line 368
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->setEscEncode(I)Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;

    goto :goto_0

    .line 372
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->setEscSinglefield(Z)Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;

    goto :goto_0

    .line 376
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->setQuotedPrintCharset(Ljava/lang/String;)Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;

    goto :goto_0

    .line 380
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->setDefaultCharset(Ljava/lang/String;)Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;

    goto :goto_0

    .line 384
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->setQpBeginWithBlank(Z)Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;

    goto :goto_0

    .line 347
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 303
    instance-of v0, p1, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    if-eqz v0, :cond_0

    .line 304
    check-cast p1, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->mergeFrom(Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;)Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;

    move-result-object p0

    .line 307
    .end local p0
    :goto_0
    return-object p0

    .line 306
    .restart local p0
    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    invoke-virtual {p0, p1, p2}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 234
    invoke-virtual {p0, p1}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;

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
    .line 234
    invoke-virtual {p0, p1, p2}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;

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
    .line 234
    invoke-virtual {p0, p1, p2}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 234
    invoke-virtual {p0, p1}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;

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
    .line 234
    invoke-virtual {p0, p1, p2}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setDefaultCharset(Ljava/lang/String;)Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 499
    if-nez p1, :cond_0

    .line 500
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    const/4 v1, 0x1

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->hasDefaultCharset:Z
    invoke-static {v0, v1}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->access$1502(Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;Z)Z

    .line 503
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->defaultCharset_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->access$1602(Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;Ljava/lang/String;)Ljava/lang/String;

    .line 504
    return-object p0
.end method

.method public setEscChar(Ljava/lang/String;)Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 421
    if-nez p1, :cond_0

    .line 422
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    const/4 v1, 0x1

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->hasEscChar:Z
    invoke-static {v0, v1}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->access$702(Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;Z)Z

    .line 425
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->escChar_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->access$802(Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;Ljava/lang/String;)Ljava/lang/String;

    .line 426
    return-object p0
.end method

.method public setEscEncode(I)Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 442
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    const/4 v1, 0x1

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->hasEscEncode:Z
    invoke-static {v0, v1}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->access$902(Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;Z)Z

    .line 443
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->escEncode_:I
    invoke-static {v0, p1}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->access$1002(Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;I)I

    .line 444
    return-object p0
.end method

.method public setEscSinglefield(Z)Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 460
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    const/4 v1, 0x1

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->hasEscSinglefield:Z
    invoke-static {v0, v1}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->access$1102(Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;Z)Z

    .line 461
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->escSinglefield_:Z
    invoke-static {v0, p1}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->access$1202(Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;Z)Z

    .line 462
    return-object p0
.end method

.method public setPolicyName(Ljava/lang/String;)Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 400
    if-nez p1, :cond_0

    .line 401
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    const/4 v1, 0x1

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->hasPolicyName:Z
    invoke-static {v0, v1}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->access$502(Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;Z)Z

    .line 404
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->policyName_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->access$602(Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;Ljava/lang/String;)Ljava/lang/String;

    .line 405
    return-object p0
.end method

.method public setQpBeginWithBlank(Z)Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 520
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    const/4 v1, 0x1

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->hasQpBeginWithBlank:Z
    invoke-static {v0, v1}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->access$1702(Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;Z)Z

    .line 521
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->qpBeginWithBlank_:Z
    invoke-static {v0, p1}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->access$1802(Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;Z)Z

    .line 522
    return-object p0
.end method

.method public setQuotedPrintCharset(Ljava/lang/String;)Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 478
    if-nez p1, :cond_0

    .line 479
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    const/4 v1, 0x1

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->hasQuotedPrintCharset:Z
    invoke-static {v0, v1}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->access$1302(Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;Z)Z

    .line 482
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->quotedPrintCharset_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->access$1402(Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;Ljava/lang/String;)Ljava/lang/String;

    .line 483
    return-object p0
.end method
