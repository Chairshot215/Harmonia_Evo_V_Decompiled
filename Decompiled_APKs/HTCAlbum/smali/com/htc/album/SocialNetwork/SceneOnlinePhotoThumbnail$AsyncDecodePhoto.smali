.class Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncDecodePhoto;
.super Landroid/os/AsyncTask;
.source "SceneOnlinePhotoThumbnail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncDecodePhoto"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field private mFilePath:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;


# direct methods
.method public constructor <init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "filePath"

    .prologue
    const/4 v0, 0x0

    .line 164
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncDecodePhoto;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 159
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncDecodePhoto;->mContext:Landroid/content/Context;

    .line 160
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncDecodePhoto;->mFilePath:Ljava/lang/String;

    .line 161
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncDecodePhoto;->mBitmap:Landroid/graphics/Bitmap;

    .line 165
    iput-object p2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncDecodePhoto;->mContext:Landroid/content/Context;

    .line 166
    iput-object p3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncDecodePhoto;->mFilePath:Ljava/lang/String;

    .line 167
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 13
    .parameter "arg0"

    .prologue
    .line 171
    iget-object v10, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncDecodePhoto;->mContext:Landroid/content/Context;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncDecodePhoto;->mFilePath:Ljava/lang/String;

    if-nez v10, :cond_1

    :cond_0
    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 224
    :goto_0
    return-object v10

    .line 173
    :cond_1
    iget-object v10, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncDecodePhoto;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f02000e

    invoke-static {v10, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 174
    .local v4, nBackBackground:Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 175
    .local v9, resW:I
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 177
    .local v8, resH:I
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v8, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncDecodePhoto;->mBitmap:Landroid/graphics/Bitmap;

    .line 178
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v10, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncDecodePhoto;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 179
    .local v0, canvas:Landroid/graphics/Canvas;
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v0, v4, v10, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 181
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 182
    const/4 v4, 0x0

    .line 184
    iget-object v10, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncDecodePhoto;->mFilePath:Ljava/lang/String;

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncDecodePhoto;->mFilePath:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_4

    .line 186
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v3

    .line 187
    .local v3, instance:Lcom/htc/opensense/album/util/ScaladoLib2;
    invoke-virtual {v3}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeBegin()I

    move-result v2

    .line 190
    .local v2, handle:I
    :try_start_0
    sget v10, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->THUMBNAIL_TITLE_IMAGE_WIDTH_HEIGHT:I

    sget v11, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->THUMBNAIL_TITLE_IMAGE_WIDTH_HEIGHT:I

    invoke-virtual {v3, v2, v10, v11}, Lcom/htc/opensense/album/util/ScaladoLib2;->setPreferSize(III)I

    .line 191
    const/4 v10, 0x2

    invoke-virtual {v3, v2, v10}, Lcom/htc/opensense/album/util/ScaladoLib2;->setScaleType(II)I

    .line 192
    iget-object v10, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncDecodePhoto;->mFilePath:Ljava/lang/String;

    invoke-virtual {v3, v2, v10}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFilePath(ILjava/lang/String;)I

    .line 193
    :cond_2
    const-wide/16 v10, 0x7d0

    invoke-virtual {v3, v2, v10, v11}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeIterate(IJ)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-eqz v10, :cond_2

    .line 200
    :goto_1
    invoke-virtual {v3, v2}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeEnd(I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 201
    .local v5, nFolderThumbnail:Landroid/graphics/Bitmap;
    if-eqz v5, :cond_3

    .line 203
    sget v10, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->THUMBNAIL_TITLE_IMAGE_WIDTH_HEIGHT:I

    int-to-float v7, v10

    .line 204
    .local v7, nPhotoDimin:F
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 205
    .local v6, nMatrix:Landroid/graphics/Matrix;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float v10, v7, v10

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float v11, v7, v11

    invoke-virtual {v6, v10, v11}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 206
    int-to-float v10, v9

    sub-float/2addr v10, v7

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    int-to-float v11, v8

    sub-float/2addr v11, v7

    const/high16 v12, 0x4000

    div-float/2addr v11, v12

    invoke-virtual {v6, v10, v11}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 207
    const/4 v10, 0x0

    invoke-virtual {v0, v5, v6, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 209
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 210
    const/4 v5, 0x0

    .line 212
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto/16 :goto_0

    .line 195
    .end local v5           #nFolderThumbnail:Landroid/graphics/Bitmap;
    .end local v6           #nMatrix:Landroid/graphics/Matrix;
    .end local v7           #nPhotoDimin:F
    :catch_0
    move-exception v1

    .line 197
    .local v1, e:Ljava/lang/Exception;
    const-string v10, "SceneOnlinePhotoThumbnail"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[HTCAlbum][SceneOnlinePhotoThumbnail][AsyncDecodePhoto] File Loading Error: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 216
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v5       #nFolderThumbnail:Landroid/graphics/Bitmap;
    :cond_3
    const-string v10, "SceneOnlinePhotoThumbnail"

    const-string v11, "[HTCAlbum][SceneOnlinePhotoThumbnail][AsyncDecodePhoto] Bitmap is empty"

    invoke-static {v10, v11}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    .end local v2           #handle:I
    .end local v3           #instance:Lcom/htc/opensense/album/util/ScaladoLib2;
    .end local v5           #nFolderThumbnail:Landroid/graphics/Bitmap;
    :goto_2
    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto/16 :goto_0

    .line 221
    :cond_4
    const-string v10, "SceneOnlinePhotoThumbnail"

    const-string v11, "[HTCAlbum][SceneOnlinePhotoThumbnail][AsyncDecodePhoto] FilePath is empty"

    invoke-static {v10, v11}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncDecodePhoto;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 229
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 231
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncDecodePhoto;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;

    const/16 v1, 0x4ea4

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncDecodePhoto;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onPostMessage(ILjava/lang/Object;I)V

    .line 233
    :goto_0
    return-void

    .line 232
    :cond_0
    const-string v0, "SceneOnlinePhotoThumbnail"

    const-string v1, "[HTCAlbum][SceneOnlinePhotoThumbnail][AsyncDecodePhoto] Decode fail..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 157
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncDecodePhoto;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
