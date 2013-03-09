.class public Lcom/google/chrome/bookmarks/sync/api/impl/DataTypeTranslator;
.super Ljava/lang/Object;
.source "DataTypeTranslator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/chrome/bookmarks/sync/api/impl/DataTypeTranslator$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static translateDataTypeToEntitySpecifics(Lcom/google/chrome/bookmarks/sync/api/ChromeSyncClient$DataType;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;
    .locals 3
    .parameter "type"

    .prologue
    .line 16
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;

    move-result-object v0

    .line 17
    .local v0, entitySpecificsBuilder:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;
    sget-object v1, Lcom/google/chrome/bookmarks/sync/api/impl/DataTypeTranslator$1;->$SwitchMap$com$google$chrome$bookmarks$sync$api$ChromeSyncClient$DataType:[I

    invoke-virtual {p0}, Lcom/google/chrome/bookmarks/sync/api/ChromeSyncClient$DataType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 24
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 19
    :pswitch_0
    sget-object v1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks;->bookmark:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;->setExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;

    .line 21
    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;->build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    move-result-object v1

    goto :goto_0

    .line 17
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
