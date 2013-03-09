.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItemOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContactsWithAlternatesResponseItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;


# instance fields
.field private contact_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11204
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$1;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$1;-><init>()V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;->PARSER:Lcom/google/protobuf/Parser;

    .line 11532
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;-><init>(Z)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;

    .line 11533
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;->initFields()V

    .line 11534
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    const/4 v6, 0x1

    .line 11164
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 11243
    iput-byte v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;->memoizedIsInitialized:B

    .line 11266
    iput v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;->memoizedSerializedSize:I

    .line 11165
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;->initFields()V

    .line 11166
    const/4 v2, 0x0

    .line 11168
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 11169
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 11170
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 11171
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 11176
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 11178
    const/4 v0, 0x1

    goto :goto_0

    .line 11173
    :sswitch_0
    const/4 v0, 0x1

    .line 11174
    goto :goto_0

    .line 11183
    :sswitch_1
    and-int/lit8 v4, v2, 0x1

    if-eq v4, v6, :cond_1

    .line 11184
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;->contact_:Ljava/util/List;

    .line 11185
    or-int/lit8 v2, v2, 0x1

    .line 11187
    :cond_1
    iget-object v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;->contact_:Ljava/util/List;

    sget-object v5, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 11192
    .end local v3           #tag:I
    :catch_0
    move-exception v1

    .line 11193
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11198
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v4

    and-int/lit8 v5, v2, 0x1

    if-ne v5, v6, :cond_2

    .line 11199
    iget-object v5, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;->contact_:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;->contact_:Ljava/util/List;

    .line 11201
    :cond_2
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;->makeExtensionsImmutable()V

    throw v4

    .line 11198
    :cond_3
    and-int/lit8 v4, v2, 0x1

    if-ne v4, v6, :cond_4

    .line 11199
    iget-object v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;->contact_:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;->contact_:Ljava/util/List;

    .line 11201
    :cond_4
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;->makeExtensionsImmutable()V

    .line 11203
    return-void

    .line 11194
    :catch_1
    move-exception v1

    .line 11195
    .local v1, e:Ljava/io/IOException;
    :try_start_2
    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11171
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 11142
    invoke-direct {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 11147
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 11243
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;->memoizedIsInitialized:B

    .line 11266
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;->memoizedSerializedSize:I

    .line 11149
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11142
    invoke-direct {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 11150
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 11243
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;->memoizedIsInitialized:B

    .line 11266
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;->memoizedSerializedSize:I

    .line 11150
    return-void
.end method

.method static synthetic access$13700(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11142
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;->contact_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$13702(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11142
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;->contact_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;
    .locals 1

    .prologue
    .line 11154
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 11241
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;->contact_:Ljava/util/List;

    .line 11242
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;
    .locals 1

    .prologue
    .line 11339
    #calls: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;->access$13500()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 11342
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getContact(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;
    .locals 1
    .parameter "index"

    .prologue
    .line 11233
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;->contact_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

    return-object v0
.end method

.method public getContactCount()I
    .locals 1

    .prologue
    .line 11230
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;->contact_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 11142
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;
    .locals 1

    .prologue
    .line 11158
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 11268
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;->memoizedSerializedSize:I

    .line 11269
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 11277
    .end local v1           #size:I
    .local v2, size:I
    :goto_0
    return v2

    .line 11271
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_0
    const/4 v1, 0x0

    .line 11272
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;->contact_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 11273
    const/4 v4, 0x1

    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;->contact_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 11272
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 11276
    :cond_1
    iput v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;->memoizedSerializedSize:I

    move v2, v1

    .line 11277
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 11245
    iget-byte v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;->memoizedIsInitialized:B

    .line 11246
    .local v1, isInitialized:B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    if-ne v1, v2, :cond_0

    .line 11255
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 11246
    goto :goto_0

    .line 11248
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;->getContactCount()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 11249
    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;->getContact(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_2

    .line 11250
    iput-byte v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;->memoizedIsInitialized:B

    move v2, v3

    .line 11251
    goto :goto_0

    .line 11248
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 11254
    :cond_3
    iput-byte v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11142
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;->newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;
    .locals 1

    .prologue
    .line 11340
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11142
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;->toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;
    .locals 1

    .prologue
    .line 11344
    invoke-static {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;->newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 11283
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11260
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;->getSerializedSize()I

    .line 11261
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;->contact_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 11262
    const/4 v2, 0x1

    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;->contact_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 11261
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11264
    :cond_0
    return-void
.end method
