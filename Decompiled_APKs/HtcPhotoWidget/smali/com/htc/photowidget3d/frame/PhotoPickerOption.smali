.class public Lcom/htc/photowidget3d/frame/PhotoPickerOption;
.super Landroid/app/Activity;
.source "PhotoPickerOption.java"


# static fields
.field public static final ACTION_PICK_FOLDER:Ljava/lang/String; = "com.htc.HTCAlbum.action.FOLDER_PICKER_FROM_COLLECTIONS"

.field public static final ACTION_PICK_ITEM:Ljava/lang/String; = "com.htc.HTCAlbum.action.ITEM_PICKER_FROM_COLLECTIONS"

.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final SELECT_TYPE:I = 0x1e61

.field private static final SELECT_TYPE_ALBUM:I = 0x1e63

.field private static final SELECT_TYPE_SINGLE:I = 0x1e62

.field private static final START_CAMERA:I = 0x47e

.field private static final START_CAMERA_DIALOG:I = 0x480

.field private static final WIDGET_ITEMTYPE:Ljava/lang/String; = "item_type"

.field private static final WIDGET_ITEMTYPE_DEFAULT:I = -0x1


# instance fields
.field private mItemType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/htc/photowidget3d/frame/PhotoPickerOption;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/photowidget3d/frame/PhotoPickerOption;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/htc/photowidget3d/frame/PhotoPickerOption;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/htc/photowidget3d/frame/PhotoPickerOption;->startCamera()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/htc/photowidget3d/frame/PhotoPickerOption;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getCameraShotsArgs()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 231
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getExternalStorageCameraPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method private getCameraShotsWhere()Ljava/lang/String;
    .locals 3

    .prologue
    .line 234
    invoke-static {}, Lcom/htc/photowidget3d/frame/PhotoPickerOption;->getSupportedImageFormatWhereClause()Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, where:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " like ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 241
    :goto_0
    return-object v0

    .line 239
    :cond_0
    const-string v0, "_data like ?"

    goto :goto_0
.end method

.method public static getSupportedImageFormatWhereClause()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    const-string v0, "((mime_type like \'image/jpeg\') OR ( mime_type like \'image/png\') OR (mime_type like \'image/bmp\') OR (mime_type like \'image/gif\') OR (mime_type like \'image/vnd.wap.wbmp\') OR (mime_type like \'image/x-ms-bmp\')) AND  (NOT _display_name LIKE \'cover%\') AND (_size> 0)  AND (NOT _display_name LIKE \'back%\') AND (NOT _display_name LIKE \'cd%\') AND (NOT _display_name LIKE \'~htc_%\') AND (NOT _data LIKE \'%/My Music/%\') AND (NOT _data LIKE \'%/Music/%\') AND (NOT _display_name LIKE \'folder%\') AND (NOT _display_name LIKE \'AlbumArt%\')"

    .line 206
    .local v0, albumArtFilter:Ljava/lang/String;
    return-object v0
.end method

.method private hasValidImage(Landroid/net/Uri;)Z
    .locals 9
    .parameter "target"

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 108
    invoke-static {}, Lcom/htc/photowidget3d/frame/PhotoPickerOption;->getSupportedImageFormatWhereClause()Ljava/lang/String;

    move-result-object v3

    .line 109
    .local v3, where:Ljava/lang/String;
    new-array v2, v7, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v8

    .line 110
    .local v2, col:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/photowidget3d/frame/PhotoPickerOption;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 115
    .local v6, cur:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_1

    .line 119
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    move v0, v7

    .line 121
    :goto_0
    return v0

    .line 119
    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v8

    .line 121
    goto :goto_0

    .line 119
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private putCameraParams(Landroid/content/Intent;)V
    .locals 9
    .parameter "intent"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 213
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 215
    .local v1, image:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/htc/photowidget3d/frame/PhotoPickerOption;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_data"

    aput-object v4, v2, v7

    const-string v4, "mime_type"

    aput-object v4, v2, v8

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 220
    .local v6, cur:Landroid/database/Cursor;
    const-string v0, "folder_type"

    const-string v2, "com.htc.HTCAlbum.CAMERA_SHOTS "

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    const-string v0, "filepath"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    const-string v0, "mime_type"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 228
    :cond_0
    return-void
.end method

.method private startCamera()V
    .locals 2

    .prologue
    .line 103
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 104
    .local v0, intentCapture:Landroid/content/Intent;
    const/16 v1, 0x47e

    invoke-virtual {p0, v0, v1}, Lcom/htc/photowidget3d/frame/PhotoPickerOption;->startActivityForResult(Landroid/content/Intent;I)V

    .line 105
    return-void
.end method

.method private startPhotoCrop(Landroid/app/Activity;)V
    .locals 6
    .parameter "activity"

    .prologue
    const/4 v5, 0x1

    .line 87
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.htc.HTCAlbum.action.ITEM_PICKER_FROM_COLLECTIONS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "image/*"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    const-string v3, "crop"

    const-string v4, "true"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f04

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 91
    .local v2, w:I
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f040001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 92
    .local v0, h:I
    const-string v3, "aspectX"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 93
    const-string v3, "aspectY"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 94
    const-string v3, "outputX"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 95
    const-string v3, "outputY"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 96
    const-string v3, "return-data"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 97
    const-string v3, "noFaceDetection"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 99
    const/16 v3, 0x1e62

    invoke-virtual {p0, v1, v3}, Lcom/htc/photowidget3d/frame/PhotoPickerOption;->startActivityForResult(Landroid/content/Intent;I)V

    .line 100
    return-void
.end method

.method private startSinglePhotoWidget(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 69
    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->isExternalMediaMounted()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getExternalPhotosUri()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/photowidget3d/frame/PhotoPickerOption;->hasValidImage(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    .line 72
    .local v0, bShow:Z
    :goto_0
    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->isSupportPhoneStorage()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 74
    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->isPhoneMediaMounted()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getPhonePhotosUri()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/photowidget3d/frame/PhotoPickerOption;->hasValidImage(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 78
    :cond_0
    :goto_1
    if-eqz v0, :cond_3

    .line 79
    invoke-direct {p0, p1}, Lcom/htc/photowidget3d/frame/PhotoPickerOption;->startPhotoCrop(Landroid/app/Activity;)V

    .line 82
    :goto_2
    return-void

    .end local v0           #bShow:Z
    :cond_1
    move v0, v2

    .line 69
    goto :goto_0

    .restart local v0       #bShow:Z
    :cond_2
    move v0, v2

    .line 74
    goto :goto_1

    .line 81
    :cond_3
    const/16 v1, 0x480

    invoke-virtual {p0, v1}, Lcom/htc/photowidget3d/frame/PhotoPickerOption;->showDialog(I)V

    goto :goto_2
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v3, -0x1

    .line 250
    if-eqz p3, :cond_0

    iget v1, p0, Lcom/htc/photowidget3d/frame/PhotoPickerOption;->mItemType:I

    if-eq v1, v3, :cond_0

    .line 251
    const-string v1, "item_type"

    iget v2, p0, Lcom/htc/photowidget3d/frame/PhotoPickerOption;->mItemType:I

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 254
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 278
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/htc/photowidget3d/frame/PhotoPickerOption;->finish()V

    .line 279
    return-void

    .line 256
    :sswitch_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 257
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 258
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 259
    const-string v1, "SINGLE"

    const-string v2, "SINGLE"

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    invoke-virtual {p0, v3, p3}, Lcom/htc/photowidget3d/frame/PhotoPickerOption;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 265
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    :sswitch_1
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 266
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 267
    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 268
    const-string v1, "SINGLE"

    const-string v2, "SINGLE"

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    invoke-direct {p0, p3}, Lcom/htc/photowidget3d/frame/PhotoPickerOption;->putCameraParams(Landroid/content/Intent;)V

    .line 270
    invoke-virtual {p0, v3, p3}, Lcom/htc/photowidget3d/frame/PhotoPickerOption;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 254
    :sswitch_data_0
    .sparse-switch
        0x47e -> :sswitch_1
        0x1e62 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/htc/photowidget3d/frame/PhotoPickerOption;->requestWindowFeature(I)Z

    .line 52
    invoke-direct {p0, p0}, Lcom/htc/photowidget3d/frame/PhotoPickerOption;->startSinglePhotoWidget(Landroid/app/Activity;)V

    .line 55
    invoke-virtual {p0}, Lcom/htc/photowidget3d/frame/PhotoPickerOption;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 56
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 57
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 58
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 59
    const-string v2, "item_type"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/htc/photowidget3d/frame/PhotoPickerOption;->mItemType:I

    .line 63
    .end local v0           #extras:Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 126
    const/4 v0, 0x0

    .line 127
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 178
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 129
    :pswitch_0
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f05000f

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f050010

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 134
    invoke-virtual {p0}, Lcom/htc/photowidget3d/frame/PhotoPickerOption;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20c013c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/htc/photowidget3d/frame/PhotoPickerOption$1;

    invoke-direct {v2, p0}, Lcom/htc/photowidget3d/frame/PhotoPickerOption$1;-><init>(Lcom/htc/photowidget3d/frame/PhotoPickerOption;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 150
    invoke-virtual {p0}, Lcom/htc/photowidget3d/frame/PhotoPickerOption;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20c013d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/htc/photowidget3d/frame/PhotoPickerOption$2;

    invoke-direct {v2, p0}, Lcom/htc/photowidget3d/frame/PhotoPickerOption$2;-><init>(Lcom/htc/photowidget3d/frame/PhotoPickerOption;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 156
    new-instance v1, Lcom/htc/photowidget3d/frame/PhotoPickerOption$3;

    invoke-direct {v1, p0}, Lcom/htc/photowidget3d/frame/PhotoPickerOption$3;-><init>(Lcom/htc/photowidget3d/frame/PhotoPickerOption;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 176
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    goto :goto_0

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x480
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 295
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 296
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 283
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 284
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 287
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 288
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 291
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 292
    return-void
.end method
