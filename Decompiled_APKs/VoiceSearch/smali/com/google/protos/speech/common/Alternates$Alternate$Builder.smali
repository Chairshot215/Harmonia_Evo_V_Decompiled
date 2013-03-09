.class public final Lcom/google/protos/speech/common/Alternates$Alternate$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Alternates.java"

# interfaces
.implements Lcom/google/protos/speech/common/Alternates$AlternateOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/common/Alternates$Alternate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/speech/common/Alternates$Alternate;",
        "Lcom/google/protos/speech/common/Alternates$Alternate$Builder;",
        ">;",
        "Lcom/google/protos/speech/common/Alternates$AlternateOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private confidence_:F

.field private text_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1845
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1937
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->text_:Ljava/lang/Object;

    .line 1846
    invoke-direct {p0}, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->maybeForceBuilderInitialization()V

    .line 1847
    return-void
.end method

.method static synthetic access$2300()Lcom/google/protos/speech/common/Alternates$Alternate$Builder;
    .locals 1

    .prologue
    .line 1840
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->create()Lcom/google/protos/speech/common/Alternates$Alternate$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/common/Alternates$Alternate$Builder;
    .locals 1

    .prologue
    .line 1852
    new-instance v0, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 1850
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1840
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->build()Lcom/google/protos/speech/common/Alternates$Alternate;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/common/Alternates$Alternate;
    .locals 2

    .prologue
    .line 1873
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->buildPartial()Lcom/google/protos/speech/common/Alternates$Alternate;

    move-result-object v0

    .line 1874
    .local v0, result:Lcom/google/protos/speech/common/Alternates$Alternate;
    invoke-virtual {v0}, Lcom/google/protos/speech/common/Alternates$Alternate;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1875
    invoke-static {v0}, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1877
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1840
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->buildPartial()Lcom/google/protos/speech/common/Alternates$Alternate;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/common/Alternates$Alternate;
    .locals 5

    .prologue
    .line 1881
    new-instance v1, Lcom/google/protos/speech/common/Alternates$Alternate;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/speech/common/Alternates$Alternate;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/common/Alternates$1;)V

    .line 1882
    .local v1, result:Lcom/google/protos/speech/common/Alternates$Alternate;
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->bitField0_:I

    .line 1883
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 1884
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1885
    or-int/lit8 v2, v2, 0x1

    .line 1887
    :cond_0
    iget-object v3, p0, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->text_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/speech/common/Alternates$Alternate;->text_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/speech/common/Alternates$Alternate;->access$2502(Lcom/google/protos/speech/common/Alternates$Alternate;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1888
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1889
    or-int/lit8 v2, v2, 0x2

    .line 1891
    :cond_1
    iget v3, p0, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->confidence_:F

    #setter for: Lcom/google/protos/speech/common/Alternates$Alternate;->confidence_:F
    invoke-static {v1, v3}, Lcom/google/protos/speech/common/Alternates$Alternate;->access$2602(Lcom/google/protos/speech/common/Alternates$Alternate;F)F

    .line 1892
    #setter for: Lcom/google/protos/speech/common/Alternates$Alternate;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/speech/common/Alternates$Alternate;->access$2702(Lcom/google/protos/speech/common/Alternates$Alternate;I)I

    .line 1893
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1840
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->clone()Lcom/google/protos/speech/common/Alternates$Alternate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1840
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->clone()Lcom/google/protos/speech/common/Alternates$Alternate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/common/Alternates$Alternate$Builder;
    .locals 2

    .prologue
    .line 1865
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->create()Lcom/google/protos/speech/common/Alternates$Alternate$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->buildPartial()Lcom/google/protos/speech/common/Alternates$Alternate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->mergeFrom(Lcom/google/protos/speech/common/Alternates$Alternate;)Lcom/google/protos/speech/common/Alternates$Alternate$Builder;

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
    .line 1840
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->clone()Lcom/google/protos/speech/common/Alternates$Alternate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 1840
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/common/Alternates$Alternate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1840
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/common/Alternates$Alternate;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/common/Alternates$Alternate;
    .locals 1

    .prologue
    .line 1869
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$Alternate;->getDefaultInstance()Lcom/google/protos/speech/common/Alternates$Alternate;

    move-result-object v0

    return-object v0
.end method

.method public hasText()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1939
    iget v1, p0, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1910
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->hasText()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1912
    const/4 v0, 0x0

    .line 1914
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
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
    .line 1840
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/common/Alternates$Alternate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1840
    check-cast p1, Lcom/google/protos/speech/common/Alternates$Alternate;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->mergeFrom(Lcom/google/protos/speech/common/Alternates$Alternate;)Lcom/google/protos/speech/common/Alternates$Alternate$Builder;

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
    .line 1840
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/common/Alternates$Alternate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/common/Alternates$Alternate$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1921
    const/4 v2, 0x0

    .line 1923
    .local v2, parsedMessage:Lcom/google/protos/speech/common/Alternates$Alternate;
    :try_start_0
    sget-object v3, Lcom/google/protos/speech/common/Alternates$Alternate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/common/Alternates$Alternate;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1928
    if-eqz v2, :cond_0

    .line 1929
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->mergeFrom(Lcom/google/protos/speech/common/Alternates$Alternate;)Lcom/google/protos/speech/common/Alternates$Alternate$Builder;

    .line 1932
    :cond_0
    return-object p0

    .line 1924
    :catch_0
    move-exception v1

    .line 1925
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/common/Alternates$Alternate;

    move-object v2, v0

    .line 1926
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1928
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 1929
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->mergeFrom(Lcom/google/protos/speech/common/Alternates$Alternate;)Lcom/google/protos/speech/common/Alternates$Alternate$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/speech/common/Alternates$Alternate;)Lcom/google/protos/speech/common/Alternates$Alternate$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 1897
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$Alternate;->getDefaultInstance()Lcom/google/protos/speech/common/Alternates$Alternate;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 1906
    :cond_0
    :goto_0
    return-object p0

    .line 1898
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/speech/common/Alternates$Alternate;->hasText()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1899
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->bitField0_:I

    .line 1900
    #getter for: Lcom/google/protos/speech/common/Alternates$Alternate;->text_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/speech/common/Alternates$Alternate;->access$2500(Lcom/google/protos/speech/common/Alternates$Alternate;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->text_:Ljava/lang/Object;

    .line 1903
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/speech/common/Alternates$Alternate;->hasConfidence()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1904
    invoke-virtual {p1}, Lcom/google/protos/speech/common/Alternates$Alternate;->getConfidence()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->setConfidence(F)Lcom/google/protos/speech/common/Alternates$Alternate$Builder;

    goto :goto_0
.end method

.method public setConfidence(F)Lcom/google/protos/speech/common/Alternates$Alternate$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1998
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->bitField0_:I

    .line 1999
    iput p1, p0, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->confidence_:F

    .line 2001
    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/google/protos/speech/common/Alternates$Alternate$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1964
    if-nez p1, :cond_0

    .line 1965
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1967
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->bitField0_:I

    .line 1968
    iput-object p1, p0, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->text_:Ljava/lang/Object;

    .line 1970
    return-object p0
.end method
