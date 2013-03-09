.class public Lcom/htc/album/AlbumCommon/AlbumCommonItem;
.super Ljava/lang/Object;
.source "AlbumCommonItem.java"


# static fields
.field public static final PROJECTION_IMAGE:[Ljava/lang/String;

.field public static final PROJECTION_VIDEO:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "bucket_id"

    aput-object v1, v0, v4

    const-string v1, "bucket_display_name"

    aput-object v1, v0, v5

    const-string v1, "datetaken"

    aput-object v1, v0, v6

    const-string v1, "favorite"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/album/AlbumCommon/AlbumCommonItem;->PROJECTION_IMAGE:[Ljava/lang/String;

    .line 17
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "bucket_id"

    aput-object v1, v0, v4

    const-string v1, "bucket_display_name"

    aput-object v1, v0, v5

    const-string v1, "datetaken"

    aput-object v1, v0, v6

    const-string v1, "favorite"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/album/AlbumCommon/AlbumCommonItem;->PROJECTION_VIDEO:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
