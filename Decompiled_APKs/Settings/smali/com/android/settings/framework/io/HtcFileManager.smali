.class public Lcom/android/settings/framework/io/HtcFileManager;
.super Ljava/lang/Object;
.source "HtcFileManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _copy(Ljava/io/File;Ljava/io/File;)Z
    .locals 10
    .parameter "src"
    .parameter "dest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 85
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 86
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 89
    .local v3, files:[Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 95
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v7

    if-nez v7, :cond_0

    .line 133
    .end local v3           #files:[Ljava/lang/String;
    :goto_0
    return v6

    .line 101
    .restart local v3       #files:[Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v6, v3

    if-ge v4, v6, :cond_4

    .line 102
    new-instance v6, Ljava/io/File;

    aget-object v7, v3, v4

    invoke-direct {v6, p0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    aget-object v8, v3, v4

    invoke-direct {v7, p1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v6, v7}, Lcom/android/settings/framework/io/HtcFileManager;->_copy(Ljava/io/File;Ljava/io/File;)Z

    .line 101
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 111
    .end local v3           #files:[Ljava/lang/String;
    .end local v4           #i:I
    :cond_1
    const/16 v7, 0x400

    new-array v2, v7, [B

    .line 116
    .local v2, buffer:[B
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v7

    if-nez v7, :cond_2

    .line 118
    const/4 v7, 0x0

    const-string v8, "666"

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/android/settings/framework/io/HtcFileManager;->changeMode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 121
    :cond_2
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 122
    .local v0, bis:Ljava/io/BufferedInputStream;
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 125
    .local v1, bos:Ljava/io/BufferedOutputStream;
    :goto_2
    invoke-virtual {v0, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v5

    .local v5, length:I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_3

    .line 126
    invoke-virtual {v1, v2, v6, v5}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_2

    .line 130
    :cond_3
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 131
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 133
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .end local v2           #buffer:[B
    .end local v5           #length:I
    :cond_4
    const/4 v6, 0x1

    goto :goto_0
.end method

.method public static changeMode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "option"
    .parameter "mode"
    .parameter "files"

    .prologue
    .line 278
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v5, "chmod"

    invoke-direct {v0, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 280
    .local v0, chmod:Ljava/lang/StringBuffer;
    if-eqz p0, :cond_0

    .line 281
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 284
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 285
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 288
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 289
    .local v4, p:Ljava/lang/Process;
    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I

    move-result v3

    .line 292
    .local v3, exitValue:I
    if-nez v3, :cond_1

    .line 293
    const/4 v5, 0x1

    .line 308
    .end local v3           #exitValue:I
    .end local v4           #p:Ljava/lang/Process;
    :goto_0
    return v5

    .line 296
    .restart local v3       #exitValue:I
    .restart local v4       #p:Ljava/lang/Process;
    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 297
    .local v2, error:Ljava/lang/StringBuffer;
    const-string v5, "The exit value of the process is "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 298
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 299
    const-string v5, " when changing the mode for the file "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 300
    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 301
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v5, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 308
    .end local v2           #error:Ljava/lang/StringBuffer;
    .end local v3           #exitValue:I
    .end local v4           #p:Ljava/lang/Process;
    :goto_1
    const/4 v5, 0x0

    goto :goto_0

    .line 303
    :catch_0
    move-exception v1

    .line 304
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 305
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 306
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method public static copy(Ljava/io/File;Ljava/io/File;)Z
    .locals 4
    .parameter "src"
    .parameter "dest"

    .prologue
    const/4 v2, 0x0

    .line 38
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 78
    :cond_0
    :goto_0
    return v2

    .line 43
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 48
    :try_start_0
    invoke-static {p0, p1}, Lcom/android/settings/framework/io/HtcFileManager;->_copy(Ljava/io/File;Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 52
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 54
    .local v1, error:Ljava/lang/StringBuffer;
    const-string v3, "\n[src]:\n   "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 56
    const-string v3, "\n[src.getAbsolutePath()]:\n   "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    :try_start_1
    const-string v3, "\n[src.getCanonicalPath())]:\n   "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 64
    :goto_1
    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    const-string v3, "\n[dest]:\n   "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 68
    const-string v3, "\n[dest.getAbsolutePath()]: \n   "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    :try_start_2
    const-string v3, "\n[dest.getCanonicalPath())]: \n   "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 76
    :goto_2
    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0

    .line 73
    :catch_1
    move-exception v3

    goto :goto_2

    .line 61
    :catch_2
    move-exception v3

    goto :goto_1
.end method

.method public static ensureParentDirectory(Ljava/io/File;)Z
    .locals 3
    .parameter "file"

    .prologue
    const/4 v1, 0x0

    .line 253
    if-nez p0, :cond_1

    .line 264
    :cond_0
    :goto_0
    return v1

    .line 257
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 258
    .local v0, parent:Ljava/io/File;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 264
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static read(Ljava/io/File;)Ljava/lang/StringBuilder;
    .locals 7
    .parameter "file"

    .prologue
    const/4 v5, 0x0

    .line 141
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .local v4, sb:Ljava/lang/StringBuilder;
    const/16 v6, 0x400

    new-array v1, v6, [C

    .line 147
    .local v1, buffer:[C
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 148
    .local v0, br:Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/BufferedReader;->read([C)I

    move-result v3

    .local v3, length:I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_0

    .line 149
    const/4 v6, 0x0

    invoke-virtual {v4, v1, v6, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 152
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #length:I
    :catch_0
    move-exception v2

    .line 153
    .local v2, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move-object v4, v5

    .line 159
    .end local v2           #e:Ljava/io/FileNotFoundException;
    .end local v4           #sb:Ljava/lang/StringBuilder;
    :goto_1
    return-object v4

    .line 151
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v3       #length:I
    .restart local v4       #sb:Ljava/lang/StringBuilder;
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 155
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #length:I
    :catch_1
    move-exception v2

    .line 156
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .line 157
    goto :goto_1
.end method

.method public static read(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 1
    .parameter "file"

    .prologue
    .line 137
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/settings/framework/io/HtcFileManager;->read(Ljava/io/File;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static write(Ljava/io/File;Ljava/lang/String;)Z
    .locals 6
    .parameter "file"
    .parameter "content"

    .prologue
    const/4 v2, 0x0

    .line 184
    if-nez p0, :cond_0

    .line 185
    const-string v1, "The file can not be null."

    .line 186
    .local v1, e:Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 190
    .end local v1           #e:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 191
    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-nez v3, :cond_1

    .line 194
    const/4 v3, 0x0

    :try_start_0
    const-string v4, "666"

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/settings/framework/io/HtcFileManager;->changeMode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :cond_1
    :try_start_1
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, p0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 228
    .local v0, bw:Ljava/io/BufferedWriter;
    if-nez p1, :cond_2

    .line 229
    const-string p1, ""

    .line 231
    :cond_2
    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 234
    const/4 v2, 0x1

    .line 240
    .end local v0           #bw:Ljava/io/BufferedWriter;
    :goto_0
    return v2

    .line 195
    :catch_0
    move-exception v1

    .line 196
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 205
    .end local v1           #e:Ljava/io/IOException;
    :cond_3
    invoke-static {p0}, Lcom/android/settings/framework/io/HtcFileManager;->ensureParentDirectory(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 206
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to create the file directory \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\"!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 214
    :cond_4
    :try_start_2
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    move-result v3

    if-nez v3, :cond_1

    .line 215
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to create the file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 219
    :catch_1
    move-exception v1

    .line 220
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 235
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 236
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 237
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v1

    .line 238
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static write(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "file"
    .parameter "content"

    .prologue
    .line 170
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/android/settings/framework/io/HtcFileManager;->write(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
