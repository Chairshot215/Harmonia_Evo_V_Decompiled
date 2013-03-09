.class public Lcom/htc/opensense2/album/util/ExifUtil;
.super Ljava/lang/Object;
.source "ExifUtil.java"


# static fields
.field private static final EMPTY_LATLNG:Ljava/lang/String; = ""

.field private static final INVALID_LATLNG:Ljava/lang/String; = " "

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
    .line 43
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

    sput-object v0, Lcom/htc/opensense2/album/util/ExifUtil;->TAG_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
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
    .line 218
    .local p0, exifData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "GPSLatitude"

    invoke-virtual {p0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 219
    .local v1, latValue:Ljava/lang/String;
    const-string v5, "GPSLatitudeRef"

    invoke-virtual {p0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 220
    .local v0, latRef:Ljava/lang/String;
    const-string v5, "GPSLongitude"

    invoke-virtual {p0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 221
    .local v4, lngValue:Ljava/lang/String;
    const-string v5, "GPSLongitudeRef"

    invoke-virtual {p0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 224
    .local v3, lngRef:Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .line 226
    const/4 v2, 0x0

    .line 227
    .local v2, latlng:[F
    const/4 v5, 0x2

    new-array v2, v5, [F

    .line 228
    const/4 v5, 0x0

    invoke-static {v1, v0}, Lcom/htc/opensense2/album/util/ExifUtil;->convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v6

    aput v6, v2, v5

    .line 230
    const/4 v5, 0x1

    invoke-static {v4, v3}, Lcom/htc/opensense2/album/util/ExifUtil;->convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v6

    aput v6, v2, v5

    .line 235
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
    .line 243
    :try_start_0
    const-string v7, ","

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 246
    .local v4, parts:[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v7, v4, v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 247
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

    .line 250
    .local v0, degrees:I
    const/4 v7, 0x1

    aget-object v7, v4, v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 251
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

    .line 254
    .local v2, minutes:I
    const/4 v7, 0x2

    aget-object v7, v4, v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 255
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

    .line 258
    .local v6, seconds:F
    int-to-float v7, v0

    int-to-float v8, v2

    const/high16 v9, 0x4270

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    const/high16 v8, 0x4561

    div-float v8, v6, v8

    add-float v5, v7, v8

    .line 259
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

    .line 260
    :cond_0
    neg-float v5, v5

    .line 266
    .end local v0           #degrees:I
    .end local v2           #minutes:I
    .end local v3           #pair:[Ljava/lang/String;
    .end local v4           #parts:[Ljava/lang/String;
    .end local v5           #result:F
    .end local v6           #seconds:F
    :cond_1
    :goto_0
    return v5

    .line 263
    :catch_0
    move-exception v1

    .line 266
    .local v1, ex:Ljava/lang/RuntimeException;
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static getExifData(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 11
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
    .line 62
    if-nez p0, :cond_0

    .line 63
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "You need to specified file path"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 76
    :cond_0
    new-instance v5, Ljava/util/HashMap;

    sget-object v8, Lcom/htc/opensense2/album/util/ExifUtil;->TAG_ARRAY:[Ljava/lang/String;

    array-length v8, v8

    invoke-direct {v5, v8}, Ljava/util/HashMap;-><init>(I)V

    .line 78
    .local v5, retMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 79
    .local v2, exif:Landroid/media/ExifInterface;
    sget-object v0, Lcom/htc/opensense2/album/util/ExifUtil;->TAG_ARRAY:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v6, v0, v3

    .line 80
    .local v6, tag:Ljava/lang/String;
    invoke-virtual {v2, v6}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 81
    .local v7, value:Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 82
    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 85
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #exif:Landroid/media/ExifInterface;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v6           #tag:Ljava/lang/String;
    .end local v7           #value:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 86
    .local v1, ex:Ljava/io/IOException;
    const-string v8, "ExifInfo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[getExifData] Got exception during get exif data, path = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const/4 v5, 0x0

    .line 90
    .end local v1           #ex:Ljava/io/IOException;
    .end local v5           #retMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    return-object v5
.end method

.method public static getExifThumbnail(Ljava/lang/String;)[B
    .locals 6
    .parameter "path"

    .prologue
    .line 123
    if-nez p0, :cond_0

    .line 124
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "You need to specified file path"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 126
    :cond_0
    const/4 v0, 0x0

    .line 129
    .local v0, data:[B
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 130
    .local v2, exif:Landroid/media/ExifInterface;
    invoke-virtual {v2}, Landroid/media/ExifInterface;->getThumbnail()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 155
    .end local v2           #exif:Landroid/media/ExifInterface;
    :goto_0
    return-object v0

    .line 131
    :catch_0
    move-exception v1

    .line 132
    .local v1, ex:Ljava/io/IOException;
    const-string v3, "ExifInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getExifThumbnail] Got exception during get exif thumbnail, path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getLatLng(Ljava/lang/String;)[F
    .locals 7
    .parameter "path"

    .prologue
    .line 186
    if-nez p0, :cond_0

    .line 187
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "You need to specified file path"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 204
    :cond_0
    const/4 v4, 0x2

    new-array v2, v4, [F

    .line 205
    .local v2, latlng:[F
    const/4 v3, 0x0

    .line 207
    .local v3, result:Z
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 208
    .local v1, exif:Landroid/media/ExifInterface;
    invoke-virtual {v1, v2}, Landroid/media/ExifInterface;->getLatLong([F)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 214
    .end local v1           #exif:Landroid/media/ExifInterface;
    :goto_0
    if-eqz v3, :cond_1

    .end local v2           #latlng:[F
    :goto_1
    return-object v2

    .line 209
    .restart local v2       #latlng:[F
    :catch_0
    move-exception v0

    .line 210
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "ExifInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getLatLng] Got exception, path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 214
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
    .line 159
    .local p0, exifData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 160
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "You need to specified exif information value"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 164
    :cond_0
    const/4 v5, 0x2

    new-array v4, v5, [F

    .line 166
    .local v4, output:[F
    const-string v5, "GPSLatitude"

    invoke-virtual {p0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 167
    .local v1, latValue:Ljava/lang/String;
    const-string v5, "GPSLatitudeRef"

    invoke-virtual {p0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 168
    .local v0, latRef:Ljava/lang/String;
    const-string v5, "GPSLongitude"

    invoke-virtual {p0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 169
    .local v3, lngValue:Ljava/lang/String;
    const-string v5, "GPSLongitudeRef"

    invoke-virtual {p0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 171
    .local v2, lngRef:Ljava/lang/String;
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    const-string v5, ""

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, ""

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, ""

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, ""

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, " "

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, " "

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, " "

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, " "

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 177
    const/4 v5, 0x0

    invoke-static {v1, v0}, Lcom/htc/opensense2/album/util/ExifUtil;->convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v6

    aput v6, v4, v5

    .line 178
    const/4 v5, 0x1

    invoke-static {v3, v2}, Lcom/htc/opensense2/album/util/ExifUtil;->convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v6

    aput v6, v4, v5

    .line 181
    .end local v4           #output:[F
    :goto_0
    return-object v4

    .restart local v4       #output:[F
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static modifiedExifData(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 8
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
    .line 94
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 95
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "You need to specified file path and insert map"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 109
    :cond_1
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 110
    .local v2, exif:Landroid/media/ExifInterface;
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 111
    .local v4, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 112
    .local v3, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 113
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 114
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

    .line 117
    .end local v1           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2           #exif:Landroid/media/ExifInterface;
    .end local v3           #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v4           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :catch_0
    move-exception v0

    .line 118
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "ExifInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[modifiedExifData] Got exception during saving exif to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .end local v0           #e:Ljava/lang/Exception;
    :goto_1
    return-void

    .line 116
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
    .line 276
    packed-switch p0, :pswitch_data_0

    .line 282
    const-string v0, ""

    :goto_0
    return-object v0

    .line 278
    :pswitch_0
    const-string v0, "Auto"

    goto :goto_0

    .line 280
    :pswitch_1
    const-string v0, "Manual"

    goto :goto_0

    .line 276
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
