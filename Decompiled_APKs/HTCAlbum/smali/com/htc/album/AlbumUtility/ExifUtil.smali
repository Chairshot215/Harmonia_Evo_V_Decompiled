.class public Lcom/htc/album/AlbumUtility/ExifUtil;
.super Ljava/lang/Object;
.source "ExifUtil.java"


# static fields
.field public static final INVALID_LATLNG:F = 255.0f

.field public static final ORIENTATION_FLIP_HORIZONTAL:I = 0x2

.field public static final ORIENTATION_FLIP_VERTICAL:I = 0x4

.field public static final ORIENTATION_NORMAL:I = 0x1

.field public static final ORIENTATION_ROTATE_180:I = 0x3

.field public static final ORIENTATION_ROTATE_270:I = 0x8

.field public static final ORIENTATION_ROTATE_90:I = 0x6

.field public static final ORIENTATION_TRANSPOSE:I = 0x5

.field public static final ORIENTATION_TRANSVERSE:I = 0x7

.field public static final ORIENTATION_UNDEFINED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ExifInfo"

.field public static final TAG_ARRAY:[Ljava/lang/String; = null

.field public static final TAG_DATE_TIME_DIGITIZED:Ljava/lang/String; = "DateTimeDigitized"

.field public static final TAG_DATE_TIME_ORIGINAL:Ljava/lang/String; = ""

.field public static final TAG_FLASH:Ljava/lang/String; = "Flash"

.field public static final TAG_GPS_LATITUDE:Ljava/lang/String; = "GPSLatitude"

.field public static final TAG_GPS_LATITUDE_REF:Ljava/lang/String; = "GPSLatitudeRef"

.field public static final TAG_GPS_LONGITUDE:Ljava/lang/String; = "GPSLongitude"

.field public static final TAG_GPS_LONGITUDE_REF:Ljava/lang/String; = "GPSLongitudeRef"

.field public static final TAG_IMAGE_LENGTH:Ljava/lang/String; = "ImageLength"

.field public static final TAG_IMAGE_WIDTH:Ljava/lang/String; = "ImageWidth"

.field public static final TAG_MAKE:Ljava/lang/String; = "Make"

.field public static final TAG_MODEL:Ljava/lang/String; = "Model"

.field public static final TAG_ORIENTATION:Ljava/lang/String; = "Orientation"

.field public static final TAG_WHITE_BALANCE:Ljava/lang/String; = "WhiteBalance"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Orientation"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "DateTimeDigitized"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Make"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Model"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Flash"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ImageWidth"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ImageLength"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "GPSLatitude"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "GPSLongitude"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "GPSLatitudeRef"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "GPSLongitudeRef"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "WhiteBalance"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/album/AlbumUtility/ExifUtil;->TAG_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calcuLat(Ljava/util/HashMap;)[F
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[F"
        }
    .end annotation

    .prologue
    .line 238
    .local p0, exifData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "GPSLatitude"

    invoke-virtual {p0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 239
    .local v1, latValue:Ljava/lang/String;
    const-string v5, "GPSLatitudeRef"

    invoke-virtual {p0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 240
    .local v0, latRef:Ljava/lang/String;
    const-string v5, "GPSLongitude"

    invoke-virtual {p0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 241
    .local v4, lngValue:Ljava/lang/String;
    const-string v5, "GPSLongitudeRef"

    invoke-virtual {p0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 244
    .local v3, lngRef:Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .line 246
    const/4 v2, 0x0

    .line 247
    .local v2, latlng:[F
    const/4 v5, 0x2

    new-array v2, v5, [F

    .line 248
    const/4 v5, 0x0

    invoke-static {v1, v0}, Lcom/htc/album/AlbumUtility/ExifUtil;->convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v6

    aput v6, v2, v5

    .line 250
    const/4 v5, 0x1

    invoke-static {v4, v3}, Lcom/htc/album/AlbumUtility/ExifUtil;->convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v6

    aput v6, v2, v5

    .line 255
    .end local v2           #latlng:[F
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F
    .locals 10
    .parameter "rationalString"
    .parameter "ref"

    .prologue
    .line 263
    :try_start_0
    const-string v7, ","

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 266
    .local v4, parts:[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v7, v4, v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 267
    .local v3, pair:[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v7, v3, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    const/4 v8, 0x1

    aget-object v8, v3, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    div-float/2addr v7, v8

    float-to-int v0, v7

    .line 270
    .local v0, degrees:I
    const/4 v7, 0x1

    aget-object v7, v4, v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 271
    const/4 v7, 0x0

    aget-object v7, v3, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    const/4 v8, 0x1

    aget-object v8, v3, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    div-float/2addr v7, v8

    float-to-int v2, v7

    .line 274
    .local v2, minutes:I
    const/4 v7, 0x2

    aget-object v7, v4, v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 275
    const/4 v7, 0x0

    aget-object v7, v3, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    const/4 v8, 0x1

    aget-object v8, v3, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    div-float v6, v7, v8

    .line 278
    .local v6, seconds:F
    int-to-float v7, v0

    int-to-float v8, v2

    const/high16 v9, 0x4270

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    const/high16 v8, 0x4561

    div-float v8, v6, v8

    add-float v5, v7, v8

    .line 279
    .local v5, result:F
    const-string v7, "S"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "W"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_1

    .line 280
    :cond_0
    neg-float v5, v5

    .line 287
    .end local v0           #degrees:I
    .end local v2           #minutes:I
    .end local v3           #pair:[Ljava/lang/String;
    .end local v4           #parts:[Ljava/lang/String;
    .end local v5           #result:F
    .end local v6           #seconds:F
    :cond_1
    :goto_0
    return v5

    .line 283
    :catch_0
    move-exception v1

    .line 286
    .local v1, ex:Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 287
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static getExifData(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 10
    .parameter "path"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    if-nez p0, :cond_0

    .line 61
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "You need to specified file path"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 74
    :cond_0
    new-instance v5, Ljava/util/HashMap;

    sget-object v8, Lcom/htc/album/AlbumUtility/ExifUtil;->TAG_ARRAY:[Ljava/lang/String;

    array-length v8, v8

    invoke-direct {v5, v8}, Ljava/util/HashMap;-><init>(I)V

    .line 76
    .local v5, retMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 77
    .local v2, exif:Landroid/media/ExifInterface;
    sget-object v0, Lcom/htc/album/AlbumUtility/ExifUtil;->TAG_ARRAY:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v6, v0, v3

    .line 78
    .local v6, tag:Ljava/lang/String;
    invoke-virtual {v2, v6}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 79
    .local v7, value:Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 80
    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 83
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #exif:Landroid/media/ExifInterface;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v6           #tag:Ljava/lang/String;
    .end local v7           #value:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 84
    .local v1, ex:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 85
    const/4 v5, 0x0

    .line 88
    .end local v1           #ex:Ljava/io/IOException;
    .end local v5           #retMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    return-object v5
.end method

.method public static getExifThumbnail(Ljava/lang/String;)[B
    .locals 5
    .parameter "path"

    .prologue
    .line 121
    if-nez p0, :cond_0

    .line 122
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "You need to specified file path"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 124
    :cond_0
    const/4 v0, 0x0

    .line 127
    .local v0, data:[B
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 128
    .local v2, exif:Landroid/media/ExifInterface;
    invoke-virtual {v2}, Landroid/media/ExifInterface;->getThumbnail()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 153
    .end local v2           #exif:Landroid/media/ExifInterface;
    :goto_0
    return-object v0

    .line 129
    :catch_0
    move-exception v1

    .line 130
    .local v1, ex:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getLatLng(Ljava/lang/String;)[F
    .locals 6
    .parameter "path"

    .prologue
    .line 206
    if-nez p0, :cond_0

    .line 207
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "You need to specified file path"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 224
    :cond_0
    const/4 v4, 0x2

    new-array v2, v4, [F

    .line 225
    .local v2, latlng:[F
    const/4 v3, 0x0

    .line 227
    .local v3, result:Z
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 228
    .local v1, exif:Landroid/media/ExifInterface;
    invoke-virtual {v1, v2}, Landroid/media/ExifInterface;->getLatLong([F)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 234
    .end local v1           #exif:Landroid/media/ExifInterface;
    :goto_0
    if-eqz v3, :cond_1

    .end local v2           #latlng:[F
    :goto_1
    return-object v2

    .line 229
    .restart local v2       #latlng:[F
    :catch_0
    move-exception v0

    .line 230
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 234
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getLatLng(Ljava/util/HashMap;)[F
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[F"
        }
    .end annotation

    .prologue
    .line 157
    .local p0, exifData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 158
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "You need to specified exif information value"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 162
    :cond_0
    const/4 v5, 0x2

    new-array v4, v5, [F

    .line 164
    .local v4, output:[F
    const-string v5, "GPSLatitude"

    invoke-virtual {p0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 165
    .local v1, latValue:Ljava/lang/String;
    const-string v5, "GPSLatitudeRef"

    invoke-virtual {p0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 166
    .local v0, latRef:Ljava/lang/String;
    const-string v5, "GPSLongitude"

    invoke-virtual {p0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 167
    .local v3, lngValue:Ljava/lang/String;
    const-string v5, "GPSLongitudeRef"

    invoke-virtual {p0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 169
    .local v2, lngRef:Ljava/lang/String;
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 170
    const/4 v5, 0x0

    invoke-static {v1, v0}, Lcom/htc/album/AlbumUtility/ExifUtil;->convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v6

    aput v6, v4, v5

    .line 171
    const/4 v5, 0x1

    invoke-static {v3, v2}, Lcom/htc/album/AlbumUtility/ExifUtil;->convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v6

    aput v6, v4, v5

    .line 174
    .end local v4           #output:[F
    :goto_0
    return-object v4

    .restart local v4       #output:[F
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static hasGpsInfo(Ljava/lang/String;)Z
    .locals 13
    .parameter "path"

    .prologue
    const/4 v7, 0x1

    const/high16 v12, 0x437f

    const/4 v6, 0x0

    .line 179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 181
    .local v2, t1:J
    invoke-static {p0}, Lcom/htc/album/AlbumUtility/ExifUtil;->getExifData(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 183
    .local v0, exifData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 184
    const-string v7, "ExifInfo"

    const-string v8, "no exif information"

    invoke-static {v7, v8}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :goto_0
    return v6

    .line 188
    :cond_0
    invoke-static {v0}, Lcom/htc/album/AlbumUtility/ExifUtil;->getLatLng(Ljava/util/HashMap;)[F

    move-result-object v1

    .line 189
    .local v1, latlng:[F
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 190
    .local v4, t2:J
    const-string v8, "ExifInfo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "check gps info takes "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    if-nez v1, :cond_1

    .line 193
    const-string v7, "ExifInfo"

    const-string v8, "no longtitude or latitude information"

    invoke-static {v7, v8}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 197
    :cond_1
    aget v8, v1, v6

    cmpl-float v8, v8, v12

    if-eqz v8, :cond_2

    aget v8, v1, v7

    cmpl-float v8, v8, v12

    if-nez v8, :cond_3

    .line 198
    :cond_2
    const-string v7, "ExifInfo"

    const-string v8, "longtitude or latitude information is wrong"

    invoke-static {v7, v8}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move v6, v7

    .line 202
    goto :goto_0
.end method

.method public static modifiedExifData(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 7
    .parameter "path"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 93
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "You need to specified file path and insert map"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 107
    :cond_1
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 108
    .local v2, exif:Landroid/media/ExifInterface;
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 109
    .local v4, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 110
    .local v3, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 111
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 112
    .local v1, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    .end local v1           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2           #exif:Landroid/media/ExifInterface;
    .end local v3           #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v4           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :catch_0
    move-exception v0

    .line 116
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 118
    .end local v0           #e:Ljava/lang/Exception;
    :goto_1
    return-void

    .line 114
    .restart local v2       #exif:Landroid/media/ExifInterface;
    .restart local v3       #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v4       #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static whiteBalanceToString(I)Ljava/lang/String;
    .locals 1
    .parameter "whitebalance"

    .prologue
    .line 297
    packed-switch p0, :pswitch_data_0

    .line 303
    const-string v0, ""

    :goto_0
    return-object v0

    .line 299
    :pswitch_0
    const-string v0, "Auto"

    goto :goto_0

    .line 301
    :pswitch_1
    const-string v0, "Manual"

    goto :goto_0

    .line 297
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
