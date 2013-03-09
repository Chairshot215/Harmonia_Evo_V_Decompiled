.class public final Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Sync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;",
        "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 920
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$2100()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;
    .locals 1

    .prologue
    .line 914
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;->create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;
    .locals 3

    .prologue
    .line 923
    new-instance v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;

    invoke-direct {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;-><init>()V

    .line 924
    .local v0, builder:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;
    new-instance v1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;-><init>(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$1;)V

    iput-object v1, v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;

    .line 925
    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;
    .locals 1

    .prologue
    .line 953
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 954
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;

    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 956
    :cond_0
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;->buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 914
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;->build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;
    .locals 3

    .prologue
    .line 969
    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;

    if-nez v1, :cond_0

    .line 970
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 973
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;

    .line 974
    .local v0, returnMe:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;

    .line 975
    return-object v0
.end method

.method public clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;
    .locals 2

    .prologue
    .line 942
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;->create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;

    invoke-virtual {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 914
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;->clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 914
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;->clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;

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
    .line 914
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;->clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;
    .locals 1

    .prologue
    .line 946
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 914
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;->getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 950
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 979
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 989
    :cond_0
    :goto_0
    return-object p0

    .line 980
    :cond_1
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;->hasBookmarkFolder()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 981
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;->getBookmarkFolder()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;->setBookmarkFolder(Z)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;

    .line 983
    :cond_2
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;->hasBookmarkUrl()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 984
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;->getBookmarkUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;->setBookmarkUrl(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;

    .line 986
    :cond_3
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;->hasBookmarkFavicon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 987
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;->getBookmarkFavicon()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;->setBookmarkFavicon(Lcom/google/protobuf/ByteString;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;
    .locals 2
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 997
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 998
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1002
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1003
    :sswitch_0
    return-object p0

    .line 1008
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;->setBookmarkFolder(Z)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;

    goto :goto_0

    .line 1012
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;->setBookmarkUrl(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;

    goto :goto_0

    .line 1016
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;->setBookmarkFavicon(Lcom/google/protobuf/ByteString;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;

    goto :goto_0

    .line 998
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x60 -> :sswitch_1
        0x6a -> :sswitch_2
        0x72 -> :sswitch_3
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
    .line 914
    invoke-virtual {p0, p1, p2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 914
    check-cast p1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;

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
    .line 914
    invoke-virtual {p0, p1, p2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setBookmarkFavicon(Lcom/google/protobuf/ByteString;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1071
    if-nez p1, :cond_0

    .line 1072
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1074
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;->hasBookmarkFavicon:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;->access$2702(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;Z)Z

    .line 1075
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;->bookmarkFavicon_:Lcom/google/protobuf/ByteString;
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;->access$2802(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 1076
    return-object p0
.end method

.method public setBookmarkFolder(Z)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;->hasBookmarkFolder:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;->access$2302(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;Z)Z

    .line 1033
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;->bookmarkFolder_:Z
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;->access$2402(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;Z)Z

    .line 1034
    return-object p0
.end method

.method public setBookmarkUrl(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1050
    if-nez p1, :cond_0

    .line 1051
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1053
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;->hasBookmarkUrl:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;->access$2502(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;Z)Z

    .line 1054
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;->bookmarkUrl_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;->access$2602(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$BookmarkData;Ljava/lang/String;)Ljava/lang/String;

    .line 1055
    return-object p0
.end method
