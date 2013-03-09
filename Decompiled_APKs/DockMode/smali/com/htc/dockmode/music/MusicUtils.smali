.class public Lcom/htc/dockmode/music/MusicUtils;
.super Ljava/lang/Object;
.source "MusicUtils.java"


# static fields
.field public static final ATSTAG:Ljava/lang/String; = ""

.field protected static final TAG:Ljava/lang/String; = "[MusicUtils]"

.field private static final sArtworkUri:Landroid/net/Uri;

.field private static final sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field private static final sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 82
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/htc/dockmode/music/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    .line 83
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/htc/dockmode/music/MusicUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 84
    const-string v0, "content://media/external/audio/albumart"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/dockmode/music/MusicUtils;->sArtworkUri:Landroid/net/Uri;

    .line 92
    sget-object v0, Lcom/htc/dockmode/music/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 93
    sget-object v0, Lcom/htc/dockmode/music/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 95
    sget-object v0, Lcom/htc/dockmode/music/MusicUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 96
    sget-object v0, Lcom/htc/dockmode/music/MusicUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 97
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getArtworkFromFilePath(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "path"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 178
    const/4 v0, 0x0

    .line 180
    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/htc/dockmode/music/MusicUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 181
    :cond_0
    const-string v2, "[MusicUtils]"

    const-string v3, "getArtworkFromFilePath()...path is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const/4 v2, 0x0

    .line 193
    :goto_0
    return-object v2

    .line 185
    :cond_1
    sget-object v2, Lcom/htc/dockmode/music/MusicUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 186
    .local v1, temp:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    .line 187
    const/4 v2, 0x1

    invoke-static {v1, p1, p2, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 188
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :goto_1
    move-object v2, v0

    .line 193
    goto :goto_0

    .line 190
    :cond_2
    const-string v2, "[MusicUtils]"

    const-string v3, "decodeFile()...temp is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getArtworkQuickWithWrite(Landroid/content/Context;Lcom/htc/music/IMediaPlaybackService;III)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "context"
    .parameter "service"
    .parameter "album_id"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 108
    if-gez p2, :cond_1

    .line 113
    invoke-static {p0}, Lcom/htc/dockmode/music/MusicUtils;->getDefaultArtwork(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 172
    :cond_0
    :goto_0
    return-object v0

    .line 115
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 116
    .local v4, res:Landroid/content/ContentResolver;
    sget-object v8, Lcom/htc/dockmode/music/MusicUtils;->sArtworkUri:Landroid/net/Uri;

    int-to-long v9, p2

    invoke-static {v8, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 117
    .local v7, uri:Landroid/net/Uri;
    if-eqz v7, :cond_6

    .line 118
    const/4 v1, 0x0

    .line 120
    .local v1, fd:Landroid/os/ParcelFileDescriptor;
    :try_start_0
    const-string v8, "r"

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 123
    if-nez v1, :cond_2

    .line 124
    const-string v8, "[MusicUtils]"

    const-string v9, "fd is null..."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 125
    const/4 v0, 0x0

    .line 166
    if-eqz v1, :cond_0

    .line 167
    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 168
    :catch_0
    move-exception v8

    goto :goto_0

    .line 129
    :cond_2
    const/4 v5, 0x1

    .line 134
    .local v5, sampleSize:I
    :try_start_2
    sget-object v8, Lcom/htc/dockmode/music/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    const/4 v9, 0x1

    iput-boolean v9, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 137
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    const/4 v9, 0x0

    sget-object v10, Lcom/htc/dockmode/music/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v8, v9, v10}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 139
    sget-object v8, Lcom/htc/dockmode/music/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iget v8, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    shr-int/lit8 v3, v8, 0x1

    .line 140
    .local v3, nextWidth:I
    sget-object v8, Lcom/htc/dockmode/music/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iget v8, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    shr-int/lit8 v2, v8, 0x1

    .line 141
    .local v2, nextHeight:I
    :goto_1
    if-le v3, p3, :cond_3

    if-le v2, p4, :cond_3

    .line 142
    shl-int/lit8 v5, v5, 0x1

    .line 143
    shr-int/lit8 v3, v3, 0x1

    .line 144
    shr-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 147
    :cond_3
    sget-object v8, Lcom/htc/dockmode/music/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iput v5, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 148
    sget-object v8, Lcom/htc/dockmode/music/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 149
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    const/4 v9, 0x0

    sget-object v10, Lcom/htc/dockmode/music/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v8, v9, v10}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 152
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_5

    .line 154
    sget-object v8, Lcom/htc/dockmode/music/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iget v8, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-ne v8, p3, :cond_4

    sget-object v8, Lcom/htc/dockmode/music/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iget v8, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eq v8, p4, :cond_5

    .line 156
    :cond_4
    const/4 v8, 0x1

    invoke-static {v0, p3, p4, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 157
    .local v6, tmp:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 158
    move-object v0, v6

    .line 166
    .end local v6           #tmp:Landroid/graphics/Bitmap;
    :cond_5
    if-eqz v1, :cond_0

    .line 167
    :try_start_3
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 168
    :catch_1
    move-exception v8

    goto :goto_0

    .line 163
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v2           #nextHeight:I
    .end local v3           #nextWidth:I
    .end local v5           #sampleSize:I
    :catch_2
    move-exception v8

    .line 166
    if-eqz v1, :cond_6

    .line 167
    :try_start_4
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 172
    .end local v1           #fd:Landroid/os/ParcelFileDescriptor;
    :cond_6
    :goto_2
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 165
    .restart local v1       #fd:Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v8

    .line 166
    if-eqz v1, :cond_7

    .line 167
    :try_start_5
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 169
    :cond_7
    :goto_3
    throw v8

    .line 168
    :catch_3
    move-exception v8

    goto :goto_2

    :catch_4
    move-exception v9

    goto :goto_3
.end method

.method public static getDatabaseErrorStr(Landroid/content/res/Resources;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 7
    .parameter "res"
    .parameter "cursor"

    .prologue
    const v6, 0x7f080050

    const v5, 0x7f08004f

    .line 45
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 46
    .local v0, ret:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, status:Ljava/lang/String;
    const-string v2, "[MusicUtils]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDatabaseErrorStr()...status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", cursor = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 51
    const-string v2, "shared"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 52
    const v2, 0x7f080053

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 77
    :cond_0
    :goto_0
    const-string v2, "[MusicUtils]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDatabaseErrorStr()...ret:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-object v0

    .line 55
    :cond_1
    const-string v2, "removed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "bad_removal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 60
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x20c00a1

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 63
    :cond_3
    const-string v2, "unmounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 64
    const v2, 0x7f080054

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 65
    :cond_4
    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    if-eqz p1, :cond_5

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_5

    .line 71
    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 73
    :cond_5
    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getDefaultArtwork(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "context"

    .prologue
    .line 211
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 212
    .local v0, opts:Landroid/graphics/BitmapFactory$Options;
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 213
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f02

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method private static isFileExists(Ljava/lang/String;)Z
    .locals 2
    .parameter "path"

    .prologue
    .line 198
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 199
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    const/4 v1, 0x1

    .line 202
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
