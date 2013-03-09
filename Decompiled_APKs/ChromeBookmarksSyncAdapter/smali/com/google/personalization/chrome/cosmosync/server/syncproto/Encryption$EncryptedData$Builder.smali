.class public final Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Encryption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;",
        "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;
    .locals 1

    .prologue
    .line 151
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;->create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;
    .locals 3

    .prologue
    .line 160
    new-instance v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;

    invoke-direct {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;-><init>()V

    .line 161
    .local v0, builder:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;
    new-instance v1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;-><init>(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$1;)V

    iput-object v1, v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;

    .line 162
    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;

    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 193
    :cond_0
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;->buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;->build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;
    .locals 3

    .prologue
    .line 206
    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;

    if-nez v1, :cond_0

    .line 207
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;

    .line 211
    .local v0, returnMe:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;

    .line 212
    return-object v0
.end method

.method public clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;
    .locals 2

    .prologue
    .line 179
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;->create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;

    invoke-virtual {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;->clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;->clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;

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
    .line 151
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;->clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;
    .locals 1

    .prologue
    .line 183
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;->getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 216
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 223
    :cond_0
    :goto_0
    return-object p0

    .line 217
    :cond_1
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;->hasKeyName()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 218
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;->getKeyName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;->setKeyName(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;

    .line 220
    :cond_2
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;->hasBlob()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;->getBlob()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;->setBlob(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;
    .locals 2
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 231
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 232
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 236
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 237
    :sswitch_0
    return-object p0

    .line 242
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;->setKeyName(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;

    goto :goto_0

    .line 246
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;->setBlob(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;

    goto :goto_0

    .line 232
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
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
    .line 151
    invoke-virtual {p0, p1, p2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 151
    check-cast p1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;

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
    .line 151
    invoke-virtual {p0, p1, p2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setBlob(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 283
    if-nez p1, :cond_0

    .line 284
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;->hasBlob:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;->access$502(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;Z)Z

    .line 287
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;->blob_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;->access$602(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;Ljava/lang/String;)Ljava/lang/String;

    .line 288
    return-object p0
.end method

.method public setKeyName(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 262
    if-nez p1, :cond_0

    .line 263
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;->hasKeyName:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;->access$302(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;Z)Z

    .line 266
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;->keyName_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;->access$402(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Encryption$EncryptedData;Ljava/lang/String;)Ljava/lang/String;

    .line 267
    return-object p0
.end method
