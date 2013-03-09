.class public final Lcom/htc/sdcardwizard/utils/IconHelper;
.super Ljava/lang/Object;
.source "IconHelper.java"


# static fields
.field private static final ALBUMART_URI:Landroid/net/Uri; = null

.field private static final TAG:Ljava/lang/String; = "LSCW/IconHelper"

.field private static defaultIcon:Landroid/graphics/drawable/Drawable;

.field private static final options:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 171
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/sdcardwizard/utils/IconHelper;->defaultIcon:Landroid/graphics/drawable/Drawable;

    .line 177
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/htc/sdcardwizard/utils/IconHelper;->options:Landroid/graphics/BitmapFactory$Options;

    .line 179
    const-string v0, "content://media/external/audio/albumart"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/sdcardwizard/utils/IconHelper;->ALBUMART_URI:Landroid/net/Uri;

    .line 182
    sget-object v0, Lcom/htc/sdcardwizard/utils/IconHelper;->options:Landroid/graphics/BitmapFactory$Options;

    const/16 v1, 0xf

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 183
    sget-object v0, Lcom/htc/sdcardwizard/utils/IconHelper;->options:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 184
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 168
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 169
    return-void
.end method

.method public static getAlbumart(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .parameter "context"
    .parameter "defaulDrawable"
    .parameter "id"

    .prologue
    .line 144
    if-nez p0, :cond_0

    .line 145
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Context is null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 147
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 148
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "id is null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 154
    :cond_1
    move-object v2, p1

    .line 156
    .local v2, icon:Landroid/graphics/drawable/Drawable;
    :try_start_0
    sget-object v5, Lcom/htc/sdcardwizard/utils/IconHelper;->ALBUMART_URI:Landroid/net/Uri;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 158
    .local v4, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    const/4 v6, 0x0

    sget-object v7, Lcom/htc/sdcardwizard/utils/IconHelper;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v5, v6, v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 159
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v3, v5, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #icon:Landroid/graphics/drawable/Drawable;
    .local v3, icon:Landroid/graphics/drawable/Drawable;
    move-object v2, v3

    .line 164
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #icon:Landroid/graphics/drawable/Drawable;
    .end local v4           #uri:Landroid/net/Uri;
    .restart local v2       #icon:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v2

    .line 160
    :catch_0
    move-exception v1

    .line 161
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "LSCW/IconHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t load icon: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getThumbnail(Landroid/content/Context;Ljava/lang/String;ZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .parameter "context"
    .parameter "id"
    .parameter "isImage"
    .parameter "defaultThumbnail"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    .line 119
    if-nez p0, :cond_0

    .line 120
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Context is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 128
    :cond_0
    const/4 v1, 0x0

    .line 129
    .local v1, thumbnail:Landroid/graphics/Bitmap;
    if-eqz p2, :cond_1

    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    sget-object v5, Lcom/htc/sdcardwizard/utils/IconHelper;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v2, v3, v4, v6, v5}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 131
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    sget-object v5, Lcom/htc/sdcardwizard/utils/IconHelper;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v2, v3, v4, v7, v5}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 137
    :goto_0
    if-eqz v1, :cond_2

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 139
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    :goto_1
    return-object v0

    .line 133
    .end local v0           #icon:Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    sget-object v5, Lcom/htc/sdcardwizard/utils/IconHelper;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v2, v3, v4, v6, v5}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 134
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    sget-object v5, Lcom/htc/sdcardwizard/utils/IconHelper;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v2, v3, v4, v7, v5}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v0, p3

    .line 137
    goto :goto_1
.end method

.method public static isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .parameter "context"
    .parameter "packageName"

    .prologue
    const/4 v5, 0x1

    .line 107
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 108
    .local v1, pm:Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 110
    .local v2, result:Z
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    const/4 v2, 0x1

    .line 115
    :goto_0
    return v2

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "LSCW/IconHelper"

    const-string v4, "Package %s is not installed"

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static loadDefaultIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "context"

    .prologue
    .line 100
    sget-object v0, Lcom/htc/sdcardwizard/utils/IconHelper;->defaultIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 101
    const/high16 v0, 0x7f02

    invoke-static {p0, v0}, Lcom/htc/sdcardwizard/utils/IconHelper;->loadIconByResourceId(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/htc/sdcardwizard/utils/IconHelper;->defaultIcon:Landroid/graphics/drawable/Drawable;

    .line 103
    :cond_0
    sget-object v0, Lcom/htc/sdcardwizard/utils/IconHelper;->defaultIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public static loadIconByFilePath(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "context"
    .parameter "filePath"

    .prologue
    .line 62
    if-nez p0, :cond_0

    .line 63
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Context is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 65
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "filePath is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 69
    :cond_1
    sget-object v1, Lcom/htc/sdcardwizard/utils/IconHelper;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 70
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_0
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static loadIconByPackageName(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 74
    if-nez p0, :cond_0

    .line 75
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Context is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 77
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 78
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "packageName is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 81
    :cond_1
    const/4 v1, 0x0

    .line 83
    .local v1, icon:Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 84
    .local v3, packageManager:Landroid/content/pm/PackageManager;
    const/16 v4, 0x80

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 85
    .local v2, pInfo:Landroid/content/pm/PackageInfo;
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 89
    .end local v2           #pInfo:Landroid/content/pm/PackageInfo;
    .end local v3           #packageManager:Landroid/content/pm/PackageManager;
    :goto_0
    return-object v1

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {p0}, Lcom/htc/sdcardwizard/utils/IconHelper;->loadDefaultIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public static loadIconByResourceId(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "context"
    .parameter "resourceId"

    .prologue
    .line 93
    if-nez p0, :cond_0

    .line 94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static loadIconByUri(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 25
    if-nez p0, :cond_0

    .line 26
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Context is null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 29
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 30
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Icon is null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 36
    :cond_1
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 37
    .local v1, bitmapFactoryOptions:Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    iput v5, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f02

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 39
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 41
    .local v3, iStream:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 42
    const/4 v5, 0x0

    invoke-static {v3, v5, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 46
    if-eqz v3, :cond_2

    .line 48
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 49
    const/4 v3, 0x0

    .line 55
    :cond_2
    :goto_0
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 57
    .local v4, icon:Landroid/graphics/drawable/Drawable;
    return-object v4

    .line 50
    .end local v4           #icon:Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v2

    .line 51
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 43
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 44
    .local v2, e:Ljava/lang/Exception;
    :try_start_2
    const-string v5, "LSCW/IconHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t load icon: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46
    if-eqz v3, :cond_2

    .line 48
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 49
    const/4 v3, 0x0

    goto :goto_0

    .line 50
    :catch_2
    move-exception v2

    .line 51
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 46
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    if-eqz v3, :cond_3

    .line 48
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 49
    const/4 v3, 0x0

    .line 52
    :cond_3
    :goto_1
    throw v5

    .line 50
    :catch_3
    move-exception v2

    .line 51
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
