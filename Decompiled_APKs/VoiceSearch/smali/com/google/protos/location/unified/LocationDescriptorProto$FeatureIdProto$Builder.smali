.class public final Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LocationDescriptorProto.java"

# interfaces
.implements Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;",
        "Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;",
        ">;",
        "Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProtoOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private cellId_:J

.field private fprint_:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1830
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1831
    invoke-direct {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;->maybeForceBuilderInitialization()V

    .line 1832
    return-void
.end method

.method static synthetic access$1600()Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;
    .locals 1

    .prologue
    .line 1825
    invoke-static {}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;->create()Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;
    .locals 1

    .prologue
    .line 1837
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;

    invoke-direct {v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 1835
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1825
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;->build()Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;
    .locals 2

    .prologue
    .line 1858
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;->buildPartial()Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    move-result-object v0

    .line 1859
    .local v0, result:Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;
    invoke-virtual {v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1860
    invoke-static {v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1862
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1825
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;->buildPartial()Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;
    .locals 5

    .prologue
    .line 1866
    new-instance v1, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/location/unified/LocationDescriptorProto$1;)V

    .line 1867
    .local v1, result:Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;->bitField0_:I

    .line 1868
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 1869
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1870
    or-int/lit8 v2, v2, 0x1

    .line 1872
    :cond_0
    iget-wide v3, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;->cellId_:J

    #setter for: Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->cellId_:J
    invoke-static {v1, v3, v4}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->access$1802(Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;J)J

    .line 1873
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1874
    or-int/lit8 v2, v2, 0x2

    .line 1876
    :cond_1
    iget-wide v3, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;->fprint_:J

    #setter for: Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->fprint_:J
    invoke-static {v1, v3, v4}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->access$1902(Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;J)J

    .line 1877
    #setter for: Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->access$2002(Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;I)I

    .line 1878
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1825
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;->clone()Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1825
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;->clone()Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;
    .locals 2

    .prologue
    .line 1850
    invoke-static {}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;->create()Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;->buildPartial()Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;->mergeFrom(Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;)Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;

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
    .line 1825
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;->clone()Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 1825
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;->getDefaultInstanceForType()Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1825
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;->getDefaultInstanceForType()Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;
    .locals 1

    .prologue
    .line 1854
    invoke-static {}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->getDefaultInstance()Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1893
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
    .line 1825
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1825
    check-cast p1, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;->mergeFrom(Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;)Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;

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
    .line 1825
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1900
    const/4 v2, 0x0

    .line 1902
    .local v2, parsedMessage:Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;
    :try_start_0
    sget-object v3, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1907
    if-eqz v2, :cond_0

    .line 1908
    invoke-virtual {p0, v2}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;->mergeFrom(Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;)Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;

    .line 1911
    :cond_0
    return-object p0

    .line 1903
    :catch_0
    move-exception v1

    .line 1904
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    move-object v2, v0

    .line 1905
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1907
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 1908
    invoke-virtual {p0, v2}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;->mergeFrom(Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;)Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;)Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 1882
    invoke-static {}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->getDefaultInstance()Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 1889
    :cond_0
    :goto_0
    return-object p0

    .line 1883
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->hasCellId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1884
    invoke-virtual {p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->getCellId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;->setCellId(J)Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;

    .line 1886
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->hasFprint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1887
    invoke-virtual {p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->getFprint()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;->setFprint(J)Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;

    goto :goto_0
.end method

.method public setCellId(J)Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1924
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;->bitField0_:I

    .line 1925
    iput-wide p1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;->cellId_:J

    .line 1927
    return-object p0
.end method

.method public setFprint(J)Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1945
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;->bitField0_:I

    .line 1946
    iput-wide p1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;->fprint_:J

    .line 1948
    return-object p0
.end method
