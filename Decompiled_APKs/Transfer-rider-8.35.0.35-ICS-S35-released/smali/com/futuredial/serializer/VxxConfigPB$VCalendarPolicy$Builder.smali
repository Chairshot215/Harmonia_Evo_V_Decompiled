.class public final Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "VxxConfigPB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 742
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$2100(Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;)Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 737
    invoke-direct {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->buildParsed()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;
    .locals 1

    .prologue
    .line 737
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->create()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 788
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 789
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 792
    :cond_0
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->buildPartial()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;
    .locals 3

    .prologue
    .line 745
    new-instance v0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;

    invoke-direct {v0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;-><init>()V

    .line 746
    .local v0, builder:Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;
    new-instance v1, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;-><init>(Lcom/futuredial/serializer/VxxConfigPB$1;)V

    iput-object v1, v0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    .line 747
    return-object v0
.end method


# virtual methods
.method public build()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;
    .locals 1

    .prologue
    .line 780
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 781
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    invoke-static {v0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 783
    :cond_0
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->buildPartial()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 737
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->build()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 737
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->build()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;
    .locals 3

    .prologue
    .line 796
    iget-object v1, p0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    if-nez v1, :cond_0

    .line 797
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 800
    :cond_0
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    .line 801
    .local v0, returnMe:Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    .line 802
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 737
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->buildPartial()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 737
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->buildPartial()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;
    .locals 2

    .prologue
    .line 755
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    if-nez v0, :cond_0

    .line 756
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 759
    :cond_0
    new-instance v0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;-><init>(Lcom/futuredial/serializer/VxxConfigPB$1;)V

    iput-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    .line 760
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 737
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->clear()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 737
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->clear()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 737
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->clear()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearDefaultCharset()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;
    .locals 2

    .prologue
    .line 960
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    const/4 v1, 0x0

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->hasDefaultCharset:Z
    invoke-static {v0, v1}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->access$3002(Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;Z)Z

    .line 961
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->getDefaultInstance()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->getDefaultCharset()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->defaultCharset_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->access$3102(Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;Ljava/lang/String;)Ljava/lang/String;

    .line 962
    return-object p0
.end method

.method public clearEscChar()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;
    .locals 2

    .prologue
    .line 918
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    const/4 v1, 0x0

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->hasEscChar:Z
    invoke-static {v0, v1}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->access$2602(Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;Z)Z

    .line 919
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->getDefaultInstance()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->getEscChar()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->escChar_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->access$2702(Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;Ljava/lang/String;)Ljava/lang/String;

    .line 920
    return-object p0
.end method

.method public clearPolicyName()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;
    .locals 2

    .prologue
    .line 897
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    const/4 v1, 0x0

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->hasPolicyName:Z
    invoke-static {v0, v1}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->access$2402(Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;Z)Z

    .line 898
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->getDefaultInstance()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->getPolicyName()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->policyName_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->access$2502(Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;Ljava/lang/String;)Ljava/lang/String;

    .line 899
    return-object p0
.end method

.method public clearQpBeginWithBlank()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;
    .locals 2

    .prologue
    .line 978
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    const/4 v1, 0x0

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->hasQpBeginWithBlank:Z
    invoke-static {v0, v1}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->access$3202(Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;Z)Z

    .line 979
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    const/4 v1, 0x1

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->qpBeginWithBlank_:Z
    invoke-static {v0, v1}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->access$3302(Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;Z)Z

    .line 980
    return-object p0
.end method

.method public clearQuotedPrintCharset()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;
    .locals 2

    .prologue
    .line 939
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    const/4 v1, 0x0

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->hasQuotedPrintCharset:Z
    invoke-static {v0, v1}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->access$2802(Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;Z)Z

    .line 940
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->getDefaultInstance()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->getQuotedPrintCharset()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->quotedPrintCharset_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->access$2902(Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;Ljava/lang/String;)Ljava/lang/String;

    .line 941
    return-object p0
.end method

.method public clone()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;
    .locals 2

    .prologue
    .line 764
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->create()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    invoke-virtual {v0, v1}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->mergeFrom(Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;)Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 737
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->clone()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 737
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->clone()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 737
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->clone()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 737
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->clone()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 737
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->clone()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;

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
    .line 737
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->clone()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 949
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    invoke-virtual {v0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->getDefaultCharset()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;
    .locals 1

    .prologue
    .line 773
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->getDefaultInstance()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 737
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->getDefaultInstanceForType()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 737
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->getDefaultInstanceForType()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 769
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getEscChar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 907
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    invoke-virtual {v0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->getEscChar()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPolicyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 886
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    invoke-virtual {v0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->getPolicyName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQpBeginWithBlank()Z
    .locals 1

    .prologue
    .line 970
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    invoke-virtual {v0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->getQpBeginWithBlank()Z

    move-result v0

    return v0
.end method

.method public getQuotedPrintCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 928
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    invoke-virtual {v0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->getQuotedPrintCharset()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasDefaultCharset()Z
    .locals 1

    .prologue
    .line 946
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    invoke-virtual {v0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->hasDefaultCharset()Z

    move-result v0

    return v0
.end method

.method public hasEscChar()Z
    .locals 1

    .prologue
    .line 904
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    invoke-virtual {v0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->hasEscChar()Z

    move-result v0

    return v0
.end method

.method public hasPolicyName()Z
    .locals 1

    .prologue
    .line 883
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    invoke-virtual {v0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->hasPolicyName()Z

    move-result v0

    return v0
.end method

.method public hasQpBeginWithBlank()Z
    .locals 1

    .prologue
    .line 967
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    invoke-virtual {v0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->hasQpBeginWithBlank()Z

    move-result v0

    return v0
.end method

.method public hasQuotedPrintCharset()Z
    .locals 1

    .prologue
    .line 925
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    invoke-virtual {v0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->hasQuotedPrintCharset()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;
    .locals 1

    .prologue
    .line 751
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 737
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->internalGetResult()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 777
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    invoke-virtual {v0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;)Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 815
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->getDefaultInstance()Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 832
    :goto_0
    return-object p0

    .line 816
    :cond_0
    invoke-virtual {p1}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->hasPolicyName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 817
    invoke-virtual {p1}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->getPolicyName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->setPolicyName(Ljava/lang/String;)Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;

    .line 819
    :cond_1
    invoke-virtual {p1}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->hasEscChar()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 820
    invoke-virtual {p1}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->getEscChar()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->setEscChar(Ljava/lang/String;)Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;

    .line 822
    :cond_2
    invoke-virtual {p1}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->hasQuotedPrintCharset()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 823
    invoke-virtual {p1}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->getQuotedPrintCharset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->setQuotedPrintCharset(Ljava/lang/String;)Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;

    .line 825
    :cond_3
    invoke-virtual {p1}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->hasDefaultCharset()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 826
    invoke-virtual {p1}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->getDefaultCharset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->setDefaultCharset(Ljava/lang/String;)Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;

    .line 828
    :cond_4
    invoke-virtual {p1}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->hasQpBeginWithBlank()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 829
    invoke-virtual {p1}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->getQpBeginWithBlank()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->setQpBeginWithBlank(Z)Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;

    .line 831
    :cond_5
    invoke-virtual {p1}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;
    .locals 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 839
    invoke-virtual {p0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    .line 843
    .local v1, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 844
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 849
    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 851
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 852
    :goto_1
    return-object p0

    .line 846
    :sswitch_0
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 857
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->setPolicyName(Ljava/lang/String;)Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;

    goto :goto_0

    .line 861
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->setEscChar(Ljava/lang/String;)Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;

    goto :goto_0

    .line 865
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->setQuotedPrintCharset(Ljava/lang/String;)Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;

    goto :goto_0

    .line 869
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->setDefaultCharset(Ljava/lang/String;)Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;

    goto :goto_0

    .line 873
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->setQpBeginWithBlank(Z)Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;

    goto :goto_0

    .line 844
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 806
    instance-of v0, p1, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    if-eqz v0, :cond_0

    .line 807
    check-cast p1, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->mergeFrom(Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;)Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;

    move-result-object p0

    .line 810
    .end local p0
    :goto_0
    return-object p0

    .line 809
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
    .line 737
    invoke-virtual {p0, p1, p2}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 737
    invoke-virtual {p0, p1}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;

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
    .line 737
    invoke-virtual {p0, p1, p2}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;

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
    .line 737
    invoke-virtual {p0, p1, p2}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 737
    invoke-virtual {p0, p1}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;

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
    .line 737
    invoke-virtual {p0, p1, p2}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setDefaultCharset(Ljava/lang/String;)Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 952
    if-nez p1, :cond_0

    .line 953
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 955
    :cond_0
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    const/4 v1, 0x1

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->hasDefaultCharset:Z
    invoke-static {v0, v1}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->access$3002(Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;Z)Z

    .line 956
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->defaultCharset_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->access$3102(Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;Ljava/lang/String;)Ljava/lang/String;

    .line 957
    return-object p0
.end method

.method public setEscChar(Ljava/lang/String;)Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 910
    if-nez p1, :cond_0

    .line 911
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 913
    :cond_0
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    const/4 v1, 0x1

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->hasEscChar:Z
    invoke-static {v0, v1}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->access$2602(Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;Z)Z

    .line 914
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->escChar_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->access$2702(Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;Ljava/lang/String;)Ljava/lang/String;

    .line 915
    return-object p0
.end method

.method public setPolicyName(Ljava/lang/String;)Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 889
    if-nez p1, :cond_0

    .line 890
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 892
    :cond_0
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    const/4 v1, 0x1

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->hasPolicyName:Z
    invoke-static {v0, v1}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->access$2402(Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;Z)Z

    .line 893
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->policyName_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->access$2502(Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;Ljava/lang/String;)Ljava/lang/String;

    .line 894
    return-object p0
.end method

.method public setQpBeginWithBlank(Z)Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 973
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    const/4 v1, 0x1

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->hasQpBeginWithBlank:Z
    invoke-static {v0, v1}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->access$3202(Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;Z)Z

    .line 974
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->qpBeginWithBlank_:Z
    invoke-static {v0, p1}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->access$3302(Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;Z)Z

    .line 975
    return-object p0
.end method

.method public setQuotedPrintCharset(Ljava/lang/String;)Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 931
    if-nez p1, :cond_0

    .line 932
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 934
    :cond_0
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    const/4 v1, 0x1

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->hasQuotedPrintCharset:Z
    invoke-static {v0, v1}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->access$2802(Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;Z)Z

    .line 935
    iget-object v0, p0, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy$Builder;->result:Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    #setter for: Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->quotedPrintCharset_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->access$2902(Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;Ljava/lang/String;)Ljava/lang/String;

    .line 936
    return-object p0
.end method
