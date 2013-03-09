.class public Lcom/google/android/gsf/settings/IdUtils;
.super Ljava/lang/Object;
.source "IdUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAndroidId(Landroid/content/Context;)J
    .locals 8
    .parameter "context"

    .prologue
    const-wide/16 v6, 0x0

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 28
    .local v4, resolver:Landroid/content/ContentResolver;
    const-string v5, "android_id"

    invoke-static {v4, v5, v6, v7}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 29
    .local v0, androidId:J
    cmp-long v5, v0, v6

    if-nez v5, :cond_0

    .line 31
    :try_start_0
    new-instance v2, Ljava/io/DataInputStream;

    const-string v5, "pre_froyo_aid"

    invoke-virtual {p0, v5}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 33
    .local v2, dis:Ljava/io/DataInputStream;
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    .line 34
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .end local v2           #dis:Ljava/io/DataInputStream;
    :goto_0
    const-string v5, "GoogleSettingsUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pre-froyo android id is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_0
    return-wide v0

    .line 37
    :catch_0
    move-exception v3

    .line 38
    .local v3, e:Ljava/io/IOException;
    const-string v5, "GoogleSettingsUtils"

    const-string v6, "error reading pre-froyo android id file"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 35
    .end local v3           #e:Ljava/io/IOException;
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method public static getLoggingId(Landroid/content/Context;)J
    .locals 8
    .parameter "context"

    .prologue
    const/16 v7, 0x10

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 53
    .local v3, resolver:Landroid/content/ContentResolver;
    const-wide/16 v1, 0x0

    .line 55
    .local v1, loggingId:J
    :try_start_0
    const-string v5, "logging_id2"

    invoke-static {v3, v5}, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 57
    .local v4, str:Ljava/lang/String;
    if-eqz v4, :cond_0

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 62
    .end local v4           #str:Ljava/lang/String;
    :cond_0
    :goto_0
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-nez v5, :cond_1

    .line 63
    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v5}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v1

    .line 65
    invoke-static {v1, v2, v7}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v4

    .line 66
    .restart local v4       #str:Ljava/lang/String;
    const-string v5, "logging_id2"

    invoke-static {v3, v5, v4}, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 70
    .end local v4           #str:Ljava/lang/String;
    :cond_1
    return-wide v1

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v5, "GoogleSettingsUtils"

    const-string v6, "Can\'t parse Logging ID"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
