.class public Lcom/android/syncml/providers/SyncML$DatabaseInfo;
.super Ljava/lang/Object;
.source "SyncML.java"

# interfaces
.implements Lcom/android/syncml/providers/SyncML$DatabaseInfoColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/syncml/providers/SyncML;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DatabaseInfo"
.end annotation


# static fields
.field public static final CONTENT_DATABASE_JOIN_PROFILE_URI:Landroid/net/Uri; = null

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/syncml-databaseinfo"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/syncml-databaseinfo"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final IDX_CLIENT_DB_URI:I = 0x6

.field public static final IDX_CONN_INFO_ID:I = 0x8

.field public static final IDX_DB_CONTENT_TYPE:I = 0x5

.field public static final IDX_ID:I = 0x0

.field public static final IDX_IS_SYNC:I = 0x4

.field public static final IDX_LAST:I = 0x7

.field public static final IDX_SERVER_DB_PASSWORD:I = 0x3

.field public static final IDX_SERVER_DB_URI:I = 0x1

.field public static final IDX_SERVER_DB_USERNAME:I = 0x2

.field public static final PROJECTION:[Ljava/lang/String; = null

.field public static final TABLE_NAME:Ljava/lang/String; = "DatabaseInfo"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 381
    const-string v0, "content://syncml/databaseinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/syncml/providers/SyncML$DatabaseInfo;->CONTENT_URI:Landroid/net/Uri;

    .line 383
    const-string v0, "content://syncml/databaseinfo/profile"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/syncml/providers/SyncML$DatabaseInfo;->CONTENT_DATABASE_JOIN_PROFILE_URI:Landroid/net/Uri;

    .line 390
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ServerDbUri"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ServerDbUsername"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ServerDbPassword"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "IsSync"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "DbContentType"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ClientDbUri"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "AnchorLast"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ConnInfoId"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/syncml/providers/SyncML$DatabaseInfo;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 377
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
