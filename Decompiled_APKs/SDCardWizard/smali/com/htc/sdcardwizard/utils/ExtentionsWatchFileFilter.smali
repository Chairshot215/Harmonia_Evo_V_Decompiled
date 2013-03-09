.class public Lcom/htc/sdcardwizard/utils/ExtentionsWatchFileFilter;
.super Lcom/htc/sdcardwizard/utils/ExtentionsFileFilter;
.source "ExtentionsWatchFileFilter.java"


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 0
    .parameter "extentions"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/htc/sdcardwizard/utils/ExtentionsFileFilter;-><init>([Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method private readStringFromFile(Ljava/io/File;)J
    .locals 9
    .parameter "file"

    .prologue
    .line 36
    const/4 v2, 0x0

    .line 37
    .local v2, fis:Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 38
    .local v4, ois:Ljava/io/ObjectInputStream;
    const/4 v6, 0x0

    .line 40
    .local v6, ret:Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5

    .line 41
    .end local v2           #fis:Ljava/io/FileInputStream;
    .local v3, fis:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v5, Ljava/io/ObjectInputStream;

    invoke-direct {v5, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_8

    .line 42
    .end local v4           #ois:Ljava/io/ObjectInputStream;
    .local v5, ois:Ljava/io/ObjectInputStream;
    :try_start_2
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    move-object v6, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_9

    .line 51
    if-eqz v5, :cond_0

    .line 52
    :try_start_3
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V

    .line 54
    :cond_0
    if-eqz v3, :cond_1

    .line 55
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    move-object v4, v5

    .end local v5           #ois:Ljava/io/ObjectInputStream;
    .restart local v4       #ois:Ljava/io/ObjectInputStream;
    move-object v2, v3

    .line 61
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :cond_2
    :goto_0
    if-nez v6, :cond_8

    const-wide/16 v7, 0x0

    :goto_1
    return-wide v7

    .line 57
    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v4           #ois:Ljava/io/ObjectInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    .restart local v5       #ois:Ljava/io/ObjectInputStream;
    :catch_0
    move-exception v1

    .line 58
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .end local v5           #ois:Ljava/io/ObjectInputStream;
    .restart local v4       #ois:Ljava/io/ObjectInputStream;
    move-object v2, v3

    .line 60
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_0

    .line 43
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 44
    .local v1, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 51
    if-eqz v4, :cond_3

    .line 52
    :try_start_5
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V

    .line 54
    :cond_3
    if-eqz v2, :cond_2

    .line 55
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 57
    :catch_2
    move-exception v1

    .line 58
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 45
    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 46
    .restart local v1       #e:Ljava/io/IOException;
    :goto_3
    :try_start_6
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 51
    if-eqz v4, :cond_4

    .line 52
    :try_start_7
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V

    .line 54
    :cond_4
    if-eqz v2, :cond_2

    .line 55
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_0

    .line 57
    :catch_4
    move-exception v1

    .line 58
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 47
    .end local v1           #e:Ljava/io/IOException;
    :catch_5
    move-exception v1

    .line 48
    .local v1, e:Ljava/lang/ClassNotFoundException;
    :goto_4
    :try_start_8
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 51
    if-eqz v4, :cond_5

    .line 52
    :try_start_9
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V

    .line 54
    :cond_5
    if-eqz v2, :cond_2

    .line 55
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_0

    .line 57
    :catch_6
    move-exception v1

    .line 58
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 50
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 51
    :goto_5
    if-eqz v4, :cond_6

    .line 52
    :try_start_a
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V

    .line 54
    :cond_6
    if-eqz v2, :cond_7

    .line 55
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 59
    :cond_7
    :goto_6
    throw v7

    .line 57
    :catch_7
    move-exception v1

    .line 58
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 61
    .end local v1           #e:Ljava/io/IOException;
    :cond_8
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    goto :goto_1

    .line 50
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_5

    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v4           #ois:Ljava/io/ObjectInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    .restart local v5       #ois:Ljava/io/ObjectInputStream;
    :catchall_2
    move-exception v7

    move-object v4, v5

    .end local v5           #ois:Ljava/io/ObjectInputStream;
    .restart local v4       #ois:Ljava/io/ObjectInputStream;
    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_5

    .line 47
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_8
    move-exception v1

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_4

    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v4           #ois:Ljava/io/ObjectInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    .restart local v5       #ois:Ljava/io/ObjectInputStream;
    :catch_9
    move-exception v1

    move-object v4, v5

    .end local v5           #ois:Ljava/io/ObjectInputStream;
    .restart local v4       #ois:Ljava/io/ObjectInputStream;
    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_4

    .line 45
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_a
    move-exception v1

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v4           #ois:Ljava/io/ObjectInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    .restart local v5       #ois:Ljava/io/ObjectInputStream;
    :catch_b
    move-exception v1

    move-object v4, v5

    .end local v5           #ois:Ljava/io/ObjectInputStream;
    .restart local v4       #ois:Ljava/io/ObjectInputStream;
    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .line 43
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_c
    move-exception v1

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v4           #ois:Ljava/io/ObjectInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    .restart local v5       #ois:Ljava/io/ObjectInputStream;
    :catch_d
    move-exception v1

    move-object v4, v5

    .end local v5           #ois:Ljava/io/ObjectInputStream;
    .restart local v4       #ois:Ljava/io/ObjectInputStream;
    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_2
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 11
    .parameter "pathname"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 17
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 32
    :cond_0
    :goto_0
    return v7

    .line 20
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 21
    .local v3, item:Ljava/lang/String;
    iget-object v9, p0, Lcom/htc/sdcardwizard/utils/ExtentionsFileFilter;->extentions:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 22
    .local v0, ext:Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 23
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 25
    .local v6, videoFile:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".lenght"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 26
    .local v1, fileLenght:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 27
    invoke-direct {p0, v1}, Lcom/htc/sdcardwizard/utils/ExtentionsWatchFileFilter;->readStringFromFile(Ljava/io/File;)J

    move-result-wide v4

    .line 28
    .local v4, size:J
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v9

    cmp-long v9, v9, v4

    if-eqz v9, :cond_0

    move v7, v8

    goto :goto_0

    .end local v0           #ext:Ljava/lang/String;
    .end local v1           #fileLenght:Ljava/io/File;
    .end local v4           #size:J
    .end local v6           #videoFile:Ljava/lang/String;
    :cond_3
    move v7, v8

    .line 32
    goto :goto_0
.end method
