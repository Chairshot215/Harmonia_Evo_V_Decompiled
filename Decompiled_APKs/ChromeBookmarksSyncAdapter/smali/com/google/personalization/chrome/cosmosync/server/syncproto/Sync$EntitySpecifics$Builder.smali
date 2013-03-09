.class public final Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
.source "Sync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder",
        "<",
        "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;",
        "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 597
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;-><init>()V

    return-void
.end method

.method static synthetic access$1600()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;
    .locals 1

    .prologue
    .line 591
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;->create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;
    .locals 3

    .prologue
    .line 600
    new-instance v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;

    invoke-direct {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;-><init>()V

    .line 601
    .local v0, builder:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;
    new-instance v1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;-><init>(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$1;)V

    iput-object v1, v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    .line 602
    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 633
    :cond_0
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;->buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 591
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;->build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;
    .locals 3

    .prologue
    .line 646
    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    if-nez v1, :cond_0

    .line 647
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 650
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    .line 651
    .local v0, returnMe:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    .line 652
    return-object v0
.end method

.method public clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;
    .locals 2

    .prologue
    .line 619
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;->create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    invoke-virtual {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 591
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;->clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 591
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;->clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .locals 1

    .prologue
    .line 591
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;->clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;

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
    .line 591
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;->clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;
    .locals 1

    .prologue
    .line 623
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 591
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;->getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    move-result-object v0

    return-object v0
.end method

.method public getEncrypted()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;->getEncrypted()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;

    move-result-object v0

    return-object v0
.end method

.method public hasEncrypted()Z
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;->hasEncrypted()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;
    .locals 1

    .prologue
    .line 591
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;->internalGetResult()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeEncrypted(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 714
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;->hasEncrypted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;->encrypted_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;->access$1900(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;

    move-result-object v0

    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 716
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;->encrypted_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;
    invoke-static {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;->access$1900(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;

    move-result-object v1

    invoke-static {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;->newBuilder(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;->buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;

    move-result-object v1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;->encrypted_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;->access$1902(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;

    .line 721
    :goto_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;->hasEncrypted:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;->access$1802(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;Z)Z

    .line 722
    return-object p0

    .line 719
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;->encrypted_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;->access$1902(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 656
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 661
    :goto_0
    return-object p0

    .line 657
    :cond_0
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;->hasEncrypted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 658
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;->getEncrypted()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;->mergeEncrypted(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;

    .line 660
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;->mergeExtensionFields(Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;)V

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;
    .locals 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 669
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 670
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 674
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 675
    :sswitch_0
    return-object p0

    .line 680
    :sswitch_1
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;

    move-result-object v0

    .line 681
    .local v0, subBuilder:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;->hasEncrypted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 682
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;->getEncrypted()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;

    .line 684
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 685
    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;->buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;->setEncrypted(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;

    goto :goto_0

    .line 670
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
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
    .line 591
    invoke-virtual {p0, p1, p2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 591
    check-cast p1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;

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
    .line 591
    invoke-virtual {p0, p1, p2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setEncrypted(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 709
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;->hasEncrypted:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;->access$1802(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;Z)Z

    .line 710
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;->build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;

    move-result-object v1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;->encrypted_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;->access$1902(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;

    .line 711
    return-object p0
.end method

.method public setEncrypted(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 701
    if-nez p1, :cond_0

    .line 702
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 704
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;->hasEncrypted:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;->access$1802(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;Z)Z

    .line 705
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;->encrypted_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;->access$1902(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;

    .line 706
    return-object p0
.end method
