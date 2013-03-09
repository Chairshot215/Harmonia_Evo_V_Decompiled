.class public final Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7621
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$17600(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7616
    invoke-direct {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$17700()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;
    .locals 1

    .prologue
    .line 7616
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->create()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7667
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7668
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 7671
    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;
    .locals 3

    .prologue
    .line 7624
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;

    invoke-direct {v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;-><init>()V

    .line 7625
    .local v0, builder:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;
    new-instance v1, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;-><init>(Lcom/htc/protobuf/DescriptorProtos$1;)V

    iput-object v1, v0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    .line 7626
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;
    .locals 1

    .prologue
    .line 7659
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7660
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 7662
    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 7616
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7616
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;
    .locals 3

    .prologue
    .line 7675
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    if-nez v1, :cond_0

    .line 7676
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7679
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    .line 7680
    .local v0, returnMe:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    .line 7681
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 7616
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7616
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 7616
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;
    .locals 2

    .prologue
    .line 7634
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    if-nez v0, :cond_0

    .line 7635
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7638
    :cond_0
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;-><init>(Lcom/htc/protobuf/DescriptorProtos$1;)V

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    .line 7639
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 7616
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7616
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearIsExtension()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7773
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->hasIsExtension:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->access$18102(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;Z)Z

    .line 7774
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->isExtension_:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->access$18202(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;Z)Z

    .line 7775
    return-object p0
.end method

.method public clearNamePart()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;
    .locals 2

    .prologue
    .line 7755
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    const/4 v1, 0x0

    #setter for: Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->hasNamePart:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->access$17902(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;Z)Z

    .line 7756
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->getNamePart()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->namePart_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->access$18002(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;Ljava/lang/String;)Ljava/lang/String;

    .line 7757
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 7616
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 7616
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;
    .locals 2

    .prologue
    .line 7643
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->create()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    invoke-virtual {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 7616
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 7616
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7616
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;

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
    .line 7616
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;
    .locals 1

    .prologue
    .line 7652
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 7616
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7616
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 7648
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getIsExtension()Z
    .locals 1

    .prologue
    .line 7765
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->getIsExtension()Z

    move-result v0

    return v0
.end method

.method public getNamePart()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7744
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->getNamePart()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasIsExtension()Z
    .locals 1

    .prologue
    .line 7762
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->hasIsExtension()Z

    move-result v0

    return v0
.end method

.method public hasNamePart()Z
    .locals 1

    .prologue
    .line 7741
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->hasNamePart()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;
    .locals 1

    .prologue
    .line 7630
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 7616
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->internalGetResult()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 7656
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->isInitialized()Z

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
    .line 7616
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7616
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;

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
    .line 7616
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;
    .locals 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7709
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    .line 7713
    .local v1, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 7714
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 7719
    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7721
    invoke-virtual {v1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 7722
    :goto_1
    return-object p0

    .line 7716
    :sswitch_0
    invoke-virtual {v1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 7727
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->setNamePart(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;

    goto :goto_0

    .line 7731
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->setIsExtension(Z)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;

    goto :goto_0

    .line 7714
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 7694
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 7702
    :goto_0
    return-object p0

    .line 7695
    :cond_0
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->hasNamePart()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7696
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->getNamePart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->setNamePart(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;

    .line 7698
    :cond_1
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->hasIsExtension()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7699
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->getIsExtension()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->setIsExtension(Z)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;

    .line 7701
    :cond_2
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 7685
    instance-of v0, p1, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    if-eqz v0, :cond_0

    .line 7686
    check-cast p1, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;

    move-result-object p0

    .line 7689
    .end local p0
    :goto_0
    return-object p0

    .line 7688
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
    .line 7616
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7616
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;

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
    .line 7616
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setIsExtension(Z)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 7768
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->hasIsExtension:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->access$18102(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;Z)Z

    .line 7769
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->isExtension_:Z
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->access$18202(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;Z)Z

    .line 7770
    return-object p0
.end method

.method public setNamePart(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 7747
    if-nez p1, :cond_0

    .line 7748
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7750
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->hasNamePart:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->access$17902(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;Z)Z

    .line 7751
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->namePart_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->access$18002(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;Ljava/lang/String;)Ljava/lang/String;

    .line 7752
    return-object p0
.end method
