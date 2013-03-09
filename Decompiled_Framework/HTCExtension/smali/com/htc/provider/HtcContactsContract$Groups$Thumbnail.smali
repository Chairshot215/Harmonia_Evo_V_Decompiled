.class public Lcom/htc/provider/HtcContactsContract$Groups$Thumbnail;
.super Ljava/lang/Object;
.source "HtcContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/provider/HtcContactsContract$Groups;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Thumbnail"
.end annotation


# static fields
.field private static EMPTY:Ljava/lang/String;

.field private static EXTENSTION:Ljava/lang/String;

.field private static PREFIX_ABSOLUTE_FILE_PATH:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0"

    sput-object v0, Lcom/htc/provider/HtcContactsContract$Groups$Thumbnail;->EMPTY:Ljava/lang/String;

    const-string v0, "/data/data/com.android.providers.contacts/files/thumbnail_photo_group_"

    sput-object v0, Lcom/htc/provider/HtcContactsContract$Groups$Thumbnail;->PREFIX_ABSOLUTE_FILE_PATH:Ljava/lang/String;

    const-string v0, ".jpg"

    sput-object v0, Lcom/htc/provider/HtcContactsContract$Groups$Thumbnail;->EXTENSTION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGroupThumbnailPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/provider/HtcContactsContract$Groups$Thumbnail;->PREFIX_ABSOLUTE_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/provider/HtcContactsContract$Groups$Thumbnail;->EXTENSTION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static loadGroupPhotoThumbnail(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    invoke-static {p1}, Lcom/htc/provider/HtcContactsContract$Groups$Thumbnail;->getGroupThumbnailPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static loadGroupPhotoThumbnail(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2

    invoke-static {p1}, Lcom/htc/provider/HtcContactsContract$Groups$Thumbnail;->getGroupThumbnailPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1, p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
