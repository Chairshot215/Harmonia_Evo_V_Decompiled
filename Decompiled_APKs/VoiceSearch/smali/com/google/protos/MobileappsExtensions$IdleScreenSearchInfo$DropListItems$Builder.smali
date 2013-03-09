.class public final Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "MobileappsExtensions.java"

# interfaces
.implements Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItemsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;",
        "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;",
        ">;",
        "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItemsOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private droplistType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 4694
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 4771
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->HISTORY:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;->droplistType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    .line 4695
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;->maybeForceBuilderInitialization()V

    .line 4696
    return-void
.end method

.method static synthetic access$3500()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;
    .locals 1

    .prologue
    .line 4689
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;->create()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;
    .locals 1

    .prologue
    .line 4701
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 4699
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4689
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;->build()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;
    .locals 2

    .prologue
    .line 4720
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;

    move-result-object v0

    .line 4721
    .local v0, result:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;
    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4722
    invoke-static {v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 4724
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4689
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;
    .locals 5

    .prologue
    .line 4728
    new-instance v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/MobileappsExtensions$1;)V

    .line 4729
    .local v1, result:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;->bitField0_:I

    .line 4730
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 4731
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 4732
    or-int/lit8 v2, v2, 0x1

    .line 4734
    :cond_0
    iget-object v3, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;->droplistType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    #setter for: Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->droplistType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;
    invoke-static {v1, v3}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->access$3702(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    .line 4735
    #setter for: Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->access$3802(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;I)I

    .line 4736
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 4689
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;->clone()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 4689
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;->clone()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;
    .locals 2

    .prologue
    .line 4712
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;->create()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;

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
    .line 4689
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;->clone()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 4689
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;->getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4689
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;->getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;
    .locals 1

    .prologue
    .line 4716
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 4748
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
    .line 4689
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4689
    check-cast p1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;

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
    .line 4689
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4755
    const/4 v2, 0x0

    .line 4757
    .local v2, parsedMessage:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;
    :try_start_0
    sget-object v3, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4762
    if-eqz v2, :cond_0

    .line 4763
    invoke-virtual {p0, v2}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;

    .line 4766
    :cond_0
    return-object p0

    .line 4758
    :catch_0
    move-exception v1

    .line 4759
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;

    move-object v2, v0

    .line 4760
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4762
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 4763
    invoke-virtual {p0, v2}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 4740
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 4744
    :cond_0
    :goto_0
    return-object p0

    .line 4741
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->hasDroplistType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4742
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->getDroplistType()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;->setDroplistType(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;

    goto :goto_0
.end method

.method public setDroplistType(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 4779
    if-nez p1, :cond_0

    .line 4780
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4782
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;->bitField0_:I

    .line 4783
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems$Builder;->droplistType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    .line 4785
    return-object p0
.end method
