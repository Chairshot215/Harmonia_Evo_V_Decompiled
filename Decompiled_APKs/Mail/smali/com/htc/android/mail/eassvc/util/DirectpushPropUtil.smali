.class public Lcom/htc/android/mail/eassvc/util/DirectpushPropUtil;
.super Ljava/lang/Object;
.source "DirectpushPropUtil.java"


# static fields
.field static mDpPrefFile:Ljava/io/File;

.field static mFileLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/android/mail/eassvc/util/DirectpushPropUtil;->mFileLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static delete(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 105
    sget-object v2, Lcom/htc/android/mail/eassvc/util/DirectpushPropUtil;->mDpPrefFile:Ljava/io/File;

    if-nez v2, :cond_0

    .line 106
    const-string v2, "config"

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 107
    .local v0, dataFilePath:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "config"

    invoke-virtual {p0, v3, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    const-string v3, "dp_config.prefs"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v2, Lcom/htc/android/mail/eassvc/util/DirectpushPropUtil;->mDpPrefFile:Ljava/io/File;

    .line 109
    sget-object v1, Lcom/htc/android/mail/eassvc/util/DirectpushPropUtil;->mDpPrefFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    .line 111
    .end local v0           #dataFilePath:Ljava/io/File;
    :cond_0
    return v1
.end method

.method public static loadFile(Landroid/content/Context;)Ljava/util/Properties;
    .locals 7
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 19
    sget-object v4, Lcom/htc/android/mail/eassvc/util/DirectpushPropUtil;->mDpPrefFile:Ljava/io/File;

    if-nez v4, :cond_0

    .line 20
    const-string v4, "config"

    invoke-virtual {p0, v4, v6}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 21
    .local v1, dataFilePath:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string v5, "config"

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v5

    const-string v6, "dp_config.prefs"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v4, Lcom/htc/android/mail/eassvc/util/DirectpushPropUtil;->mDpPrefFile:Ljava/io/File;

    .line 23
    .end local v1           #dataFilePath:Ljava/io/File;
    :cond_0
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 24
    .local v0, configFile:Ljava/util/Properties;
    sget-object v5, Lcom/htc/android/mail/eassvc/util/DirectpushPropUtil;->mFileLock:Ljava/lang/Object;

    monitor-enter v5

    .line 25
    :try_start_0
    sget-object v4, Lcom/htc/android/mail/eassvc/util/DirectpushPropUtil;->mDpPrefFile:Ljava/io/File;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/htc/android/mail/eassvc/util/DirectpushPropUtil;->mDpPrefFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v4

    if-eqz v4, :cond_1

    .line 26
    const/4 v2, 0x0

    .line 28
    .local v2, fis:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    sget-object v4, Lcom/htc/android/mail/eassvc/util/DirectpushPropUtil;->mDpPrefFile:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    .end local v2           #fis:Ljava/io/FileInputStream;
    .local v3, fis:Ljava/io/FileInputStream;
    :try_start_2
    invoke-virtual {v0, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 31
    if-eqz v3, :cond_1

    .line 32
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 36
    .end local v3           #fis:Ljava/io/FileInputStream;
    :cond_1
    monitor-exit v5

    .line 37
    return-object v0

    .line 31
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catchall_0
    move-exception v4

    :goto_0
    if-eqz v2, :cond_2

    .line 32
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 31
    :cond_2
    throw v4

    .line 36
    .end local v2           #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .line 31
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catchall_2
    move-exception v4

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_0
.end method

.method public static removeProp(Ljava/util/Properties;Ljava/lang/String;)Z
    .locals 1
    .parameter "prop"
    .parameter "key"

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0, p1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const/4 v0, 0x1

    .line 97
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static saveFile(Landroid/content/Context;Ljava/util/Properties;)V
    .locals 6
    .parameter "context"
    .parameter "prop"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 47
    sget-object v3, Lcom/htc/android/mail/eassvc/util/DirectpushPropUtil;->mDpPrefFile:Ljava/io/File;

    if-nez v3, :cond_0

    .line 48
    const-string v3, "config"

    invoke-virtual {p0, v3, v5}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 49
    .local v0, dataFilePath:Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v4, "config"

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    const-string v5, "dp_config.prefs"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v3, Lcom/htc/android/mail/eassvc/util/DirectpushPropUtil;->mDpPrefFile:Ljava/io/File;

    .line 51
    .end local v0           #dataFilePath:Ljava/io/File;
    :cond_0
    const-string v3, "version"

    invoke-virtual {p1, v3}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 52
    const-string v3, "version"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_1
    sget-object v4, Lcom/htc/android/mail/eassvc/util/DirectpushPropUtil;->mFileLock:Ljava/lang/Object;

    monitor-enter v4

    .line 54
    const/4 v1, 0x0

    .line 56
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    sget-object v3, Lcom/htc/android/mail/eassvc/util/DirectpushPropUtil;->mDpPrefFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .local v2, fos:Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p1, v2, v3}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 59
    if-eqz v2, :cond_2

    .line 60
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 63
    :cond_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 64
    return-void

    .line 59
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v3

    :goto_0
    if-eqz v1, :cond_3

    .line 60
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 59
    :cond_3
    throw v3

    .line 63
    :catchall_1
    move-exception v3

    :goto_1
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v3

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_1

    .line 59
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v3

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method public static updateProp(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "prop"
    .parameter "key"
    .parameter "value"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 74
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v0, v1

    .line 89
    :goto_0
    return v0

    .line 77
    :cond_1
    invoke-virtual {p0, p1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 78
    if-nez p2, :cond_2

    .line 79
    invoke-virtual {p0, p1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 81
    :cond_2
    invoke-virtual {p0, p1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 82
    invoke-virtual {p0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 85
    :cond_3
    if-eqz p2, :cond_4

    .line 86
    invoke-virtual {p0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    move v0, v1

    .line 89
    goto :goto_0
.end method
