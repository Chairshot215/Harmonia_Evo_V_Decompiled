.class public final Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Bookmarks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;",
        "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;
    .locals 1

    .prologue
    .line 152
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;->create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;
    .locals 3

    .prologue
    .line 161
    new-instance v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;

    invoke-direct {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;-><init>()V

    .line 162
    .local v0, builder:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;
    new-instance v1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;-><init>(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$1;)V

    iput-object v1, v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;

    .line 163
    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;

    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 194
    :cond_0
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;->buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;->build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;
    .locals 3

    .prologue
    .line 207
    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;

    if-nez v1, :cond_0

    .line 208
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;

    .line 212
    .local v0, returnMe:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;

    .line 213
    return-object v0
.end method

.method public clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;
    .locals 2

    .prologue
    .line 180
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;->create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;

    invoke-virtual {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;->clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;->clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;

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
    .line 152
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;->clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;
    .locals 1

    .prologue
    .line 184
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;->getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 217
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-object p0

    .line 218
    :cond_1
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 219
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;->setUrl(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;

    .line 221
    :cond_2
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;->hasFavicon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;->getFavicon()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;->setFavicon(Lcom/google/protobuf/ByteString;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;
    .locals 2
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 232
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 233
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 237
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 238
    :sswitch_0
    return-object p0

    .line 243
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;->setUrl(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;

    goto :goto_0

    .line 247
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;->setFavicon(Lcom/google/protobuf/ByteString;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;

    goto :goto_0

    .line 233
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
    .line 152
    invoke-virtual {p0, p1, p2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    check-cast p1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;

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
    .line 152
    invoke-virtual {p0, p1, p2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setFavicon(Lcom/google/protobuf/ByteString;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 284
    if-nez p1, :cond_0

    .line 285
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;->hasFavicon:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;->access$502(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;Z)Z

    .line 288
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;->favicon_:Lcom/google/protobuf/ByteString;
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;->access$602(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 289
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 263
    if-nez p1, :cond_0

    .line 264
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;->hasUrl:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;->access$302(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;Z)Z

    .line 267
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;->url_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;->access$402(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;Ljava/lang/String;)Ljava/lang/String;

    .line 268
    return-object p0
.end method
