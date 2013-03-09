.class public final Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks;
.super Ljava/lang/Object;
.source "Bookmarks.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$1;,
        Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;
    }
.end annotation


# static fields
.field public static final bookmark:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<",
            "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;",
            "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 313
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->newGeneratedExtension()Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks;->bookmark:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    .line 318
    sget-object v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks;->bookmark:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    move-result-object v1

    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;

    move-result-object v2

    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x8088

    sget-object v6, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual/range {v0 .. v6}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->internalInitSingular(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;)V

    .line 325
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static internalForceInit()V
    .locals 0

    .prologue
    .line 327
    return-void
.end method
