.class public Lcom/android/mms/drm/DrmUtils;
.super Ljava/lang/Object;
.source "DrmUtils.java"


# static fields
.field private static final DRM_TEMP_URI:Landroid/net/Uri; = null

.field private static final TAG:Ljava/lang/String; = "DrmUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "content://mms/drm"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/drm/DrmUtils;->DRM_TEMP_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static cleanupStorage(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/drm/DrmUtils;->DRM_TEMP_URI:Landroid/net/Uri;

    invoke-static {p0, v0, v1, v2, v2}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 41
    return-void
.end method

.method public static insert(Landroid/content/Context;Lcom/android/mms/drm/DrmWrapper;)Landroid/net/Uri;
    .locals 8
    .parameter "context"
    .parameter "drmObj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 46
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v5, Lcom/android/mms/drm/DrmUtils;->DRM_TEMP_URI:Landroid/net/Uri;

    new-instance v6, Landroid/content/ContentValues;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroid/content/ContentValues;-><init>(I)V

    invoke-static {p0, v0, v5, v6}, Lcom/google/android/mms/util/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 48
    .local v4, uri:Landroid/net/Uri;
    const/4 v3, 0x0

    .line 50
    .local v3, os:Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v3

    .line 51
    invoke-virtual {p1}, Lcom/android/mms/drm/DrmWrapper;->getDecryptedData()[B

    move-result-object v1

    .line 52
    .local v1, data:[B
    if-eqz v1, :cond_0

    .line 53
    invoke-virtual {v3, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :cond_0
    if-eqz v3, :cond_1

    .line 59
    :try_start_1
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 62
    :cond_1
    :goto_0
    return-object v4

    .line 60
    :catch_0
    move-exception v2

    .line 61
    .local v2, e:Ljava/io/IOException;
    const-string v5, "DrmUtils"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 57
    .end local v1           #data:[B
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    if-eqz v3, :cond_2

    .line 59
    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 62
    :cond_2
    :goto_1
    throw v5

    .line 60
    :catch_1
    move-exception v2

    .line 61
    .restart local v2       #e:Ljava/io/IOException;
    const-string v6, "DrmUtils"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
