.class public final Lcom/google/protos/MobileappsExtensions$TextModification$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "MobileappsExtensions.java"

# interfaces
.implements Lcom/google/protos/MobileappsExtensions$TextModificationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/MobileappsExtensions$TextModification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/MobileappsExtensions$TextModification;",
        "Lcom/google/protos/MobileappsExtensions$TextModification$Builder;",
        ">;",
        "Lcom/google/protos/MobileappsExtensions$TextModificationOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private inputLength_:I

.field private modification_:Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 8756
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 8842
    sget-object v0, Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;->VOICE_INSERTION:Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->modification_:Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;

    .line 8757
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->maybeForceBuilderInitialization()V

    .line 8758
    return-void
.end method

.method static synthetic access$9500()Lcom/google/protos/MobileappsExtensions$TextModification$Builder;
    .locals 1

    .prologue
    .line 8751
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->create()Lcom/google/protos/MobileappsExtensions$TextModification$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/MobileappsExtensions$TextModification$Builder;
    .locals 1

    .prologue
    .line 8763
    new-instance v0, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 8761
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8751
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->build()Lcom/google/protos/MobileappsExtensions$TextModification;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/MobileappsExtensions$TextModification;
    .locals 2

    .prologue
    .line 8784
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$TextModification;

    move-result-object v0

    .line 8785
    .local v0, result:Lcom/google/protos/MobileappsExtensions$TextModification;
    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$TextModification;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8786
    invoke-static {v0}, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 8788
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8751
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$TextModification;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/MobileappsExtensions$TextModification;
    .locals 5

    .prologue
    .line 8792
    new-instance v1, Lcom/google/protos/MobileappsExtensions$TextModification;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/MobileappsExtensions$TextModification;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/MobileappsExtensions$1;)V

    .line 8793
    .local v1, result:Lcom/google/protos/MobileappsExtensions$TextModification;
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->bitField0_:I

    .line 8794
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 8795
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 8796
    or-int/lit8 v2, v2, 0x1

    .line 8798
    :cond_0
    iget-object v3, p0, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->modification_:Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;

    #setter for: Lcom/google/protos/MobileappsExtensions$TextModification;->modification_:Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;
    invoke-static {v1, v3}, Lcom/google/protos/MobileappsExtensions$TextModification;->access$9702(Lcom/google/protos/MobileappsExtensions$TextModification;Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;)Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;

    .line 8799
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 8800
    or-int/lit8 v2, v2, 0x2

    .line 8802
    :cond_1
    iget v3, p0, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->inputLength_:I

    #setter for: Lcom/google/protos/MobileappsExtensions$TextModification;->inputLength_:I
    invoke-static {v1, v3}, Lcom/google/protos/MobileappsExtensions$TextModification;->access$9802(Lcom/google/protos/MobileappsExtensions$TextModification;I)I

    .line 8803
    #setter for: Lcom/google/protos/MobileappsExtensions$TextModification;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/MobileappsExtensions$TextModification;->access$9902(Lcom/google/protos/MobileappsExtensions$TextModification;I)I

    .line 8804
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 8751
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->clone()Lcom/google/protos/MobileappsExtensions$TextModification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 8751
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->clone()Lcom/google/protos/MobileappsExtensions$TextModification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/MobileappsExtensions$TextModification$Builder;
    .locals 2

    .prologue
    .line 8776
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->create()Lcom/google/protos/MobileappsExtensions$TextModification$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$TextModification;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$TextModification;)Lcom/google/protos/MobileappsExtensions$TextModification$Builder;

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
    .line 8751
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->clone()Lcom/google/protos/MobileappsExtensions$TextModification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 8751
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$TextModification;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8751
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$TextModification;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$TextModification;
    .locals 1

    .prologue
    .line 8780
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$TextModification;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$TextModification;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 8819
    const/4 v0, 0x1

    return v0
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
    .line 8751
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$TextModification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8751
    check-cast p1, Lcom/google/protos/MobileappsExtensions$TextModification;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$TextModification;)Lcom/google/protos/MobileappsExtensions$TextModification$Builder;

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
    .line 8751
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$TextModification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$TextModification$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8826
    const/4 v2, 0x0

    .line 8828
    .local v2, parsedMessage:Lcom/google/protos/MobileappsExtensions$TextModification;
    :try_start_0
    sget-object v3, Lcom/google/protos/MobileappsExtensions$TextModification;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/MobileappsExtensions$TextModification;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8833
    if-eqz v2, :cond_0

    .line 8834
    invoke-virtual {p0, v2}, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$TextModification;)Lcom/google/protos/MobileappsExtensions$TextModification$Builder;

    .line 8837
    :cond_0
    return-object p0

    .line 8829
    :catch_0
    move-exception v1

    .line 8830
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/MobileappsExtensions$TextModification;

    move-object v2, v0

    .line 8831
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8833
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 8834
    invoke-virtual {p0, v2}, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$TextModification;)Lcom/google/protos/MobileappsExtensions$TextModification$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/MobileappsExtensions$TextModification;)Lcom/google/protos/MobileappsExtensions$TextModification$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 8808
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$TextModification;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$TextModification;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 8815
    :cond_0
    :goto_0
    return-object p0

    .line 8809
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$TextModification;->hasModification()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8810
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$TextModification;->getModification()Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->setModification(Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;)Lcom/google/protos/MobileappsExtensions$TextModification$Builder;

    .line 8812
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$TextModification;->hasInputLength()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8813
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$TextModification;->getInputLength()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->setInputLength(I)Lcom/google/protos/MobileappsExtensions$TextModification$Builder;

    goto :goto_0
.end method

.method public setInputLength(I)Lcom/google/protos/MobileappsExtensions$TextModification$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 8874
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->bitField0_:I

    .line 8875
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->inputLength_:I

    .line 8877
    return-object p0
.end method

.method public setModification(Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;)Lcom/google/protos/MobileappsExtensions$TextModification$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 8850
    if-nez p1, :cond_0

    .line 8851
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8853
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->bitField0_:I

    .line 8854
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->modification_:Lcom/google/protos/MobileappsExtensions$TextModification$TextModificationType;

    .line 8856
    return-object p0
.end method
