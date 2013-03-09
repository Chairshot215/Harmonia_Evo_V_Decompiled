.class public Lcom/htc/album/AlbumUtility/NonCursorImageManager;
.super Ljava/lang/Object;
.source "NonCursorImageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorBaseImage;,
        Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorVideo;,
        Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorImage;
    }
.end annotation


# static fields
.field public static DEBUG:Ljava/lang/String;

.field public static LOG_TAG:Ljava/lang/String;

.field private static sInstance:Lcom/htc/album/AlbumUtility/NonCursorImageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "[NonCursorImageManager]"

    sput-object v0, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->LOG_TAG:Ljava/lang/String;

    .line 27
    const-string v0, "KA>>> "

    sput-object v0, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->DEBUG:Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->sInstance:Lcom/htc/album/AlbumUtility/NonCursorImageManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method public static instance()Lcom/htc/album/AlbumUtility/NonCursorImageManager;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->sInstance:Lcom/htc/album/AlbumUtility/NonCursorImageManager;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/htc/album/AlbumUtility/NonCursorImageManager;

    invoke-direct {v0}, Lcom/htc/album/AlbumUtility/NonCursorImageManager;-><init>()V

    sput-object v0, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->sInstance:Lcom/htc/album/AlbumUtility/NonCursorImageManager;

    .line 35
    :cond_0
    sget-object v0, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->sInstance:Lcom/htc/album/AlbumUtility/NonCursorImageManager;

    return-object v0
.end method
