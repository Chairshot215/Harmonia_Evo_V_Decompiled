.class public Lcom/htc/android/mail/eassvc/util/VersionUtil;
.super Ljava/lang/Object;
.source "VersionUtil.java"


# static fields
.field public static final VERSION_FILE_NAME:Ljava/lang/String; = "VERSION"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static delFile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "filename"

    .prologue
    .line 74
    const-string v2, "config"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 75
    .local v1, path:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 76
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 77
    return-void
.end method

.method public static getCurrentVersion(Landroid/content/Context;)I
    .locals 7
    .parameter "context"

    .prologue
    .line 16
    const/4 v4, -0x1

    .line 17
    .local v4, version:I
    invoke-static {p0}, Lcom/htc/android/mail/eassvc/util/VersionUtil;->getVersionFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    .line 18
    .local v5, versionFile:Ljava/io/File;
    const/4 v0, 0x0

    .line 19
    .local v0, dis:Ljava/io/DataInputStream;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 20
    const/4 v6, -0x1

    .line 38
    :goto_0
    return v6

    .line 23
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 24
    .local v3, fis:Ljava/io/FileInputStream;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .end local v0           #dis:Ljava/io/DataInputStream;
    .local v1, dis:Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result v4

    .line 29
    if-eqz v1, :cond_1

    .line 31
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_1
    :goto_1
    move-object v0, v1

    .end local v1           #dis:Ljava/io/DataInputStream;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v0       #dis:Ljava/io/DataInputStream;
    :cond_2
    :goto_2
    move v6, v4

    .line 38
    goto :goto_0

    .line 26
    :catch_0
    move-exception v2

    .line 27
    .local v2, e:Ljava/lang/Exception;
    :goto_3
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 29
    if-eqz v0, :cond_2

    .line 31
    :try_start_4
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 32
    :catch_1
    move-exception v2

    .line 33
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 29
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v0, :cond_3

    .line 31
    :try_start_5
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 29
    :cond_3
    :goto_5
    throw v6

    .line 32
    :catch_2
    move-exception v2

    .line 33
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 32
    .end local v0           #dis:Ljava/io/DataInputStream;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #dis:Ljava/io/DataInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_3
    move-exception v2

    .line 33
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 29
    .end local v2           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1           #dis:Ljava/io/DataInputStream;
    .restart local v0       #dis:Ljava/io/DataInputStream;
    goto :goto_4

    .line 26
    .end local v0           #dis:Ljava/io/DataInputStream;
    .restart local v1       #dis:Ljava/io/DataInputStream;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1           #dis:Ljava/io/DataInputStream;
    .restart local v0       #dis:Ljava/io/DataInputStream;
    goto :goto_3
.end method

.method private static getVersionFile(Landroid/content/Context;)Ljava/io/File;
    .locals 4
    .parameter "context"

    .prologue
    .line 80
    const-string v2, "config"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 81
    .local v1, pathStr:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v2, "VERSION"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 82
    .local v0, file:Ljava/io/File;
    return-object v0
.end method

.method public static moveFile(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 6
    .parameter "context"
    .parameter "filename"
    .parameter "newAccountId"

    .prologue
    .line 64
    const-string v4, "config"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 65
    .local v2, oldPath:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 66
    .local v1, newPath:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 67
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 69
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 70
    .local v3, src:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 71
    .local v0, dest:Ljava/io/File;
    invoke-virtual {v3, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 72
    return-void
.end method

.method public static setVersion(Landroid/content/Context;I)V
    .locals 6
    .parameter "context"
    .parameter "version"

    .prologue
    .line 43
    invoke-static {p0}, Lcom/htc/android/mail/eassvc/util/VersionUtil;->getVersionFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    .line 45
    .local v4, versionFile:Ljava/io/File;
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 46
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 48
    :cond_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .local v3, fos:Ljava/io/FileOutputStream;
    const/4 v0, 0x0

    .line 51
    .local v0, dos:Ljava/io/DataOutputStream;
    :try_start_1
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    .end local v0           #dos:Ljava/io/DataOutputStream;
    .local v1, dos:Ljava/io/DataOutputStream;
    :try_start_2
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 54
    if-eqz v3, :cond_1

    .line 55
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 61
    .end local v1           #dos:Ljava/io/DataOutputStream;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    :cond_1
    :goto_0
    return-void

    .line 54
    .restart local v0       #dos:Ljava/io/DataOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v5

    :goto_1
    if-eqz v3, :cond_2

    .line 55
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 54
    :cond_2
    throw v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 58
    .end local v0           #dos:Ljava/io/DataOutputStream;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 59
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 54
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #dos:Ljava/io/DataOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1           #dos:Ljava/io/DataOutputStream;
    .restart local v0       #dos:Ljava/io/DataOutputStream;
    goto :goto_1
.end method
