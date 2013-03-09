.class public Lcom/google/android/finsky/utils/ThumbnailUtils;
.super Ljava/lang/Object;
.source "ThumbnailUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/utils/ThumbnailUtils$CustomBoundsTransitionDrawable;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    return-void
.end method

.method private static addFifeOptions(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 4
    .parameter "url"
    .parameter "options"

    .prologue
    const/4 v3, 0x1

    .line 248
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 249
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, path:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_0

    const/16 v2, 0x2f

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "?fife"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 252
    const/4 v2, 0x0

    const-string v3, "/"

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 257
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static buildCroppedFifeUrl(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "url"
    .parameter "size"

    .prologue
    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "s"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 238
    .local v0, options:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 239
    const-string v1, "-p"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-static {p0, v0}, Lcom/google/android/finsky/utils/ThumbnailUtils;->addFifeOptions(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static buildFifeUrl(Ljava/lang/String;II)Ljava/lang/String;
    .locals 3
    .parameter "url"
    .parameter "desiredWidth"
    .parameter "desiredHeight"

    .prologue
    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    .local v1, options:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 220
    .local v0, hasWidth:Z
    if-lez p1, :cond_0

    .line 221
    const/4 v0, 0x1

    .line 222
    const-string v2, "w"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 224
    :cond_0
    if-lez p2, :cond_2

    .line 225
    if-eqz v0, :cond_1

    .line 226
    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 228
    :cond_1
    const/16 v2, 0x68

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 230
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 233
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_3
    invoke-static {p0, v1}, Lcom/google/android/finsky/utils/ThumbnailUtils;->addFifeOptions(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static getBestCroppedImageUrl(Ljava/util/List;I)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter "size"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$Image;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 165
    .local p0, images:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Doc$Image;>;"
    invoke-static {p0, p1, p1}, Lcom/google/android/finsky/utils/ThumbnailUtils;->getBestImage(Ljava/util/List;II)Lcom/google/android/finsky/remoting/protos/Doc$Image;

    move-result-object v0

    .line 166
    .local v0, image:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    if-nez v0, :cond_0

    .line 167
    const/4 v1, 0x0

    .line 174
    :goto_0
    return-object v1

    .line 170
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getSupportsFifeUrlOptions()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 171
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/android/finsky/utils/ThumbnailUtils;->buildCroppedFifeUrl(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 174
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static getBestImage(Ljava/util/List;II)Lcom/google/android/finsky/remoting/protos/Doc$Image;
    .locals 9
    .parameter
    .parameter "minWidth"
    .parameter "minHeight"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$Image;",
            ">;II)",
            "Lcom/google/android/finsky/remoting/protos/Doc$Image;"
        }
    .end annotation

    .prologue
    .local p0, images:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Doc$Image;>;"
    const/4 v7, 0x0

    .line 181
    if-nez p0, :cond_1

    move-object v1, v7

    .line 214
    :cond_0
    :goto_0
    return-object v1

    .line 185
    :cond_1
    const v6, 0x7fffffff

    .line 186
    .local v6, selectedWidth:I
    const v4, 0x7fffffff

    .line 187
    .local v4, selectedHeight:I
    const/4 v5, 0x0

    .line 188
    .local v5, selectedImage:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/Doc$Image;

    .line 189
    .local v1, image:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getSupportsFifeUrlOptions()Z

    move-result v8

    if-nez v8, :cond_0

    .line 191
    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getDimension()Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 192
    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getDimension()Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->getWidth()I

    move-result v3

    .line 193
    .local v3, imgWidth:I
    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getDimension()Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->getHeight()I

    move-result v2

    .line 196
    .local v2, imgHeight:I
    if-lt v3, p1, :cond_2

    if-lt v2, p2, :cond_2

    if-lt v6, v3, :cond_2

    if-lt v4, v2, :cond_2

    .line 198
    move v6, v3

    .line 199
    move v4, v2

    .line 200
    move-object v5, v1

    goto :goto_1

    .line 206
    .end local v1           #image:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    .end local v2           #imgHeight:I
    .end local v3           #imgWidth:I
    :cond_3
    if-eqz v5, :cond_4

    move-object v1, v5

    .line 207
    goto :goto_0

    .line 211
    :cond_4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_5

    .line 212
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/finsky/remoting/protos/Doc$Image;

    move-object v1, v7

    goto :goto_0

    :cond_5
    move-object v1, v7

    .line 214
    goto :goto_0
.end method

.method private static getBestImageUrl(Ljava/util/List;II)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter "minWidth"
    .parameter "minHeight"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$Image;",
            ">;II)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 148
    .local p0, images:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Doc$Image;>;"
    invoke-static {p0, p1, p2}, Lcom/google/android/finsky/utils/ThumbnailUtils;->getBestImage(Ljava/util/List;II)Lcom/google/android/finsky/remoting/protos/Doc$Image;

    move-result-object v0

    .line 149
    .local v0, image:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    if-nez v0, :cond_0

    .line 150
    const/4 v1, 0x0

    .line 157
    :goto_0
    return-object v1

    .line 153
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getSupportsFifeUrlOptions()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 154
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/google/android/finsky/utils/ThumbnailUtils;->buildFifeUrl(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 157
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getCroppedIconUrlFromDocument(Lcom/google/android/finsky/api/model/Document;I)Ljava/lang/String;
    .locals 2
    .parameter "document"
    .parameter "size"

    .prologue
    .line 57
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/api/model/Document;->getImages(I)Ljava/util/List;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/android/finsky/utils/ThumbnailUtils;->getBestCroppedImageUrl(Ljava/util/List;I)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, url:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 59
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/api/model/Document;->getImages(I)Ljava/util/List;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/android/finsky/utils/ThumbnailUtils;->getBestCroppedImageUrl(Ljava/util/List;I)Ljava/lang/String;

    move-result-object v0

    .line 61
    :cond_0
    return-object v0
.end method

.method public static getIconUrlFromDocument(Lcom/google/android/finsky/api/model/Document;II)Ljava/lang/String;
    .locals 2
    .parameter "document"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 39
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/api/model/Document;->getImages(I)Ljava/util/List;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/google/android/finsky/utils/ThumbnailUtils;->getBestImageUrl(Ljava/util/List;II)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, url:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 41
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/api/model/Document;->getImages(I)Ljava/util/List;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/google/android/finsky/utils/ThumbnailUtils;->getBestImageUrl(Ljava/util/List;II)Ljava/lang/String;

    move-result-object v0

    .line 43
    :cond_0
    return-object v0
.end method

.method public static varargs getImageFromDocument(Lcom/google/android/finsky/api/model/Document;II[I)Lcom/google/android/finsky/remoting/protos/Doc$Image;
    .locals 6
    .parameter "document"
    .parameter "width"
    .parameter "height"
    .parameter "imageTypes"

    .prologue
    .line 66
    move-object v0, p3

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget v2, v0, v1

    .line 67
    .local v2, imageType:I
    invoke-virtual {p0, v2}, Lcom/google/android/finsky/api/model/Document;->getImages(I)Ljava/util/List;

    move-result-object v5

    invoke-static {v5, p1, p2}, Lcom/google/android/finsky/utils/ThumbnailUtils;->getBestImage(Ljava/util/List;II)Lcom/google/android/finsky/remoting/protos/Doc$Image;

    move-result-object v4

    .line 68
    .local v4, result:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    if-eqz v4, :cond_0

    .line 72
    .end local v2           #imageType:I
    .end local v4           #result:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    :goto_1
    return-object v4

    .line 66
    .restart local v2       #imageType:I
    .restart local v4       #result:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    .end local v2           #imageType:I
    .end local v4           #result:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static getPageHeaderBannerUrlFromDocument(Lcom/google/android/finsky/api/model/Document;ZII)Ljava/lang/String;
    .locals 2
    .parameter "document"
    .parameter "requestWideAssImage"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 113
    if-eqz p1, :cond_0

    const/16 v0, 0x8

    .line 115
    .local v0, imageType:I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/api/model/Document;->getImages(I)Ljava/util/List;

    move-result-object v1

    invoke-static {v1, p2, p3}, Lcom/google/android/finsky/utils/ThumbnailUtils;->getBestImageUrl(Ljava/util/List;II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 113
    .end local v0           #imageType:I
    :cond_0
    const/16 v0, 0x9

    goto :goto_0
.end method

.method public static getPreviewUrlFromDocument(Lcom/google/android/finsky/api/model/Document;II)Ljava/lang/String;
    .locals 1
    .parameter "document"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 128
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/api/model/Document;->getImages(I)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/google/android/finsky/utils/ThumbnailUtils;->getBestImageUrl(Ljava/util/List;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPromoBitmapUrlFromDocument(Lcom/google/android/finsky/api/model/Document;II)Ljava/lang/String;
    .locals 1
    .parameter "document"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 99
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/api/model/Document;->getImages(I)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/google/android/finsky/utils/ThumbnailUtils;->getBestImageUrl(Ljava/util/List;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getScreenshotUrlFromDocument(Lcom/google/android/finsky/api/model/Document;II)Ljava/lang/String;
    .locals 1
    .parameter "document"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 86
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/api/model/Document;->getImages(I)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/google/android/finsky/utils/ThumbnailUtils;->getBestImageUrl(Ljava/util/List;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setImageBitmapWithFade(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "imageView"
    .parameter "bitmap"

    .prologue
    .line 268
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 269
    .local v0, bd:Landroid/graphics/drawable/BitmapDrawable;
    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 270
    invoke-static {p0, v0}, Lcom/google/android/finsky/utils/ThumbnailUtils;->setImageDrawableWithFade(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 271
    return-void
.end method

.method public static setImageDrawableWithFade(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .parameter "imageView"
    .parameter "drawable"

    .prologue
    const/4 v5, 0x1

    .line 280
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 281
    .local v1, oldDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 285
    new-instance v0, Lcom/google/android/finsky/utils/ThumbnailUtils$CustomBoundsTransitionDrawable;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    aput-object p1, v2, v5

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/finsky/utils/ThumbnailUtils$CustomBoundsTransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;II)V

    .line 288
    .local v0, newDrawable:Landroid/graphics/drawable/TransitionDrawable;
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 289
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 290
    const/16 v2, 0xfa

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 294
    .end local v0           #newDrawable:Landroid/graphics/drawable/TransitionDrawable;
    :goto_0
    return-void

    .line 292
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
