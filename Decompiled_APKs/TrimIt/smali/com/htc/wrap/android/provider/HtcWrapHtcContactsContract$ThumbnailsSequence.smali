.class public final Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$ThumbnailsSequence;
.super Ljava/lang/Object;
.source "HtcWrapHtcContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ThumbnailsSequence"
.end annotation


# static fields
.field public static final CONTACT_ID:Ljava/lang/String; = "contact_id"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/thumbnails_sequence"

.field public static final CONTENT_ITEM_TYPE_RAW:Ljava/lang/String; = "vnd.android.cursor.item/thumbnails_sequence-raw_contact"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/thumbnails_sequence"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final EMPTY:I = 0x0

.field public static final FILE_PREFIX:Ljava/lang/String; = "/data/data/com.android.providers.contacts/files/thumbnail_photo_"

#the value of this static final field might be set in the static constructor
.field public static final ICON_SIZE:I = 0x0

.field public static final OVERLAY_ICON:Ljava/lang/String; = "overlay_icon"

.field public static final SIZE_HD:I = 0x5a

.field public static final SIZE_HVGA:I = 0x30

.field public static final SIZE_QHD:I = 0x48

.field public static final SIZE_QVGA:I = 0x28

.field public static final SIZE_WVGA:I = 0x48

.field public static final TABLE_NAME:Ljava/lang/String; = "thumbnails_sequence"

.field public static final THUMBNAIL_EXTENSION:Ljava/lang/String; = ".png"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 579
    sget-object v0, Landroid/provider/HtcContactsContract$ThumbnailsSequence;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$ThumbnailsSequence;->CONTENT_URI:Landroid/net/Uri;

    .line 612
    sget v0, Landroid/provider/HtcContactsContract$ThumbnailsSequence;->ICON_SIZE:I

    sput v0, Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$ThumbnailsSequence;->ICON_SIZE:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContactThumbnailCursor(JLandroid/content/ContentResolver;)Landroid/database/Cursor;
    .locals 1
    .parameter "contactId"
    .parameter "cr"

    .prologue
    .line 656
    invoke-static {p0, p1, p2}, Landroid/provider/HtcContactsContract$ThumbnailsSequence;->getContactThumbnailCursor(JLandroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getRawcontactThumbnailCursor(JLandroid/content/ContentResolver;)Landroid/database/Cursor;
    .locals 1
    .parameter "rawContactId"
    .parameter "cr"

    .prologue
    .line 660
    invoke-static {p0, p1, p2}, Landroid/provider/HtcContactsContract$ThumbnailsSequence;->getRawcontactThumbnailCursor(JLandroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getThumbnailName(J)Ljava/lang/String;
    .locals 1
    .parameter "_id"

    .prologue
    .line 625
    invoke-static {p0, p1}, Landroid/provider/HtcContactsContract$ThumbnailsSequence;->getThumbnailName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static loadContactThumbnail(JLandroid/graphics/BitmapFactory$Options;Landroid/content/ContentResolver;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "contactId"
    .parameter "opts"
    .parameter "cr"

    .prologue
    .line 637
    invoke-static {p0, p1, p2, p3}, Landroid/provider/HtcContactsContract$ThumbnailsSequence;->loadContactThumbnail(JLandroid/graphics/BitmapFactory$Options;Landroid/content/ContentResolver;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static loadImageFromFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "source"
    .parameter "opts"

    .prologue
    .line 683
    invoke-static {p0, p1}, Landroid/provider/HtcContactsContract$ThumbnailsSequence;->loadImageFromFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static loadRawContactThumbnail(JLandroid/graphics/BitmapFactory$Options;Landroid/content/ContentResolver;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "rawContactId"
    .parameter "opts"
    .parameter "cr"

    .prologue
    .line 641
    invoke-static {p0, p1, p2, p3}, Landroid/provider/HtcContactsContract$ThumbnailsSequence;->loadRawContactThumbnail(JLandroid/graphics/BitmapFactory$Options;Landroid/content/ContentResolver;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static loadRawContactThumbnailId(JLandroid/content/ContentResolver;)J
    .locals 2
    .parameter "rawContactId"
    .parameter "cr"

    .prologue
    .line 645
    invoke-static {p0, p1, p2}, Landroid/provider/HtcContactsContract$ThumbnailsSequence;->loadRawContactThumbnailId(JLandroid/content/ContentResolver;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static loadThumbnail(JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "thumbnailId"
    .parameter "opts"

    .prologue
    .line 672
    invoke-static {p0, p1, p2}, Landroid/provider/HtcContactsContract$ThumbnailsSequence;->loadThumbnail(JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
