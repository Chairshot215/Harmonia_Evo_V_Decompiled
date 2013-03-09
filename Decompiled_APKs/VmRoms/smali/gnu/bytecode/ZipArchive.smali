.class public Lgnu/bytecode/ZipArchive;
.super Ljava/lang/Object;
.source "ZipArchive.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;[B)J
    .locals 5
    .parameter "in"
    .parameter "out"
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25
    const-wide/16 v1, 0x0

    .line 28
    .local v1, total:J
    :goto_0
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 29
    .local v0, count:I
    if-gtz v0, :cond_0

    .line 30
    return-wide v1

    .line 31
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p1, p2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 32
    int-to-long v3, v0

    add-long/2addr v1, v3

    .line 33
    goto :goto_0
.end method

.method public static copy(Ljava/io/InputStream;Ljava/lang/String;[B)V
    .locals 7
    .parameter "in"
    .parameter "name"
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    .local v2, f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, dir_name:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 43
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 45
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mkdirs:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 47
    .end local v0           #dir:Ljava/io/File;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2f

    if-eq v4, v5, :cond_1

    .line 49
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 50
    .local v3, out:Ljava/io/OutputStream;
    invoke-static {p0, v3, p2}, Lgnu/bytecode/ZipArchive;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;[B)J

    .line 51
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 53
    .end local v3           #out:Ljava/io/OutputStream;
    :cond_1
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 9
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    array-length v0, p0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 78
    invoke-static {}, Lgnu/bytecode/ZipArchive;->usage()V

    .line 79
    :cond_0
    const/4 v0, 0x0

    aget-object v2, p0, v0

    .line 80
    .local v2, command:Ljava/lang/String;
    const/4 v0, 0x1

    aget-object v0, p0, v0

    .line 84
    .local v0, archive_name:Ljava/lang/String;
    :try_start_0
    const-string v1, "t"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "p"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "x"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 88
    :cond_1
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 89
    .local v5, out:Ljava/io/PrintStream;
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 90
    .local v1, buf:[B
    array-length v3, p0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 92
    new-instance p0, Ljava/io/BufferedInputStream;

    .end local p0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 94
    .local p0, in:Ljava/io/BufferedInputStream;
    new-instance v3, Ljava/util/zip/ZipInputStream;

    invoke-direct {v3, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 96
    .end local v0           #archive_name:Ljava/lang/String;
    .end local p0           #in:Ljava/io/BufferedInputStream;
    .local v3, zin:Ljava/util/zip/ZipInputStream;
    :goto_0
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    .local v0, zent:Ljava/util/zip/ZipEntry;
    if-eqz v0, :cond_2

    .line 98
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p0

    .line 99
    .local p0, name:Ljava/lang/String;
    const-string v4, "t"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 101
    invoke-virtual {v5, p0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 102
    const-string p0, " size: "

    .end local p0           #name:Ljava/lang/String;
    invoke-virtual {v5, p0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/io/PrintStream;->println(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 174
    .end local v0           #zent:Ljava/util/zip/ZipEntry;
    .end local v1           #buf:[B
    .end local v2           #command:Ljava/lang/String;
    .end local v3           #zin:Ljava/util/zip/ZipInputStream;
    .end local v5           #out:Ljava/io/PrintStream;
    :catch_0
    move-exception p0

    .line 176
    .local p0, ex:Ljava/io/IOException;
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "I/O Exception:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #ex:Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 178
    :cond_2
    :goto_1
    return-void

    .line 105
    .restart local v0       #zent:Ljava/util/zip/ZipEntry;
    .restart local v1       #buf:[B
    .restart local v2       #command:Ljava/lang/String;
    .restart local v3       #zin:Ljava/util/zip/ZipInputStream;
    .restart local v5       #out:Ljava/io/PrintStream;
    .local p0, name:Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v0, "p"

    .end local v0           #zent:Ljava/util/zip/ZipEntry;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 107
    invoke-static {v3, v5, v1}, Lgnu/bytecode/ZipArchive;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;[B)J

    goto :goto_0

    .line 111
    :cond_4
    invoke-static {v3, p0, v1}, Lgnu/bytecode/ZipArchive;->copy(Ljava/io/InputStream;Ljava/lang/String;[B)V

    goto :goto_0

    .line 117
    .end local v3           #zin:Ljava/util/zip/ZipInputStream;
    .local v0, archive_name:Ljava/lang/String;
    .local p0, args:[Ljava/lang/String;
    :cond_5
    new-instance v6, Ljava/util/zip/ZipFile;

    invoke-direct {v6, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 118
    .local v6, zar:Ljava/util/zip/ZipFile;
    const/4 v3, 0x2

    .local v3, i:I
    :goto_2
    array-length v4, p0

    if-ge v3, v4, :cond_2

    .line 120
    aget-object v4, p0, v3

    .line 121
    .local v4, name:Ljava/lang/String;
    invoke-virtual {v6, v4}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v7

    .line 122
    .local v7, zent:Ljava/util/zip/ZipEntry;
    if-nez v7, :cond_6

    .line 124
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .end local v4           #name:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    .end local v7           #zent:Ljava/util/zip/ZipEntry;
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "zipfile "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, p0, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - not found"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 126
    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .line 118
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 128
    .restart local v4       #name:Ljava/lang/String;
    .restart local v7       #zent:Ljava/util/zip/ZipEntry;
    :cond_6
    const-string v8, "t"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 130
    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 131
    const-string v4, " size: "

    .end local v4           #name:Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v7

    .end local v7           #zent:Ljava/util/zip/ZipEntry;
    invoke-virtual {v5, v7, v8}, Ljava/io/PrintStream;->println(J)V

    goto :goto_3

    .line 134
    .restart local v4       #name:Ljava/lang/String;
    .restart local v7       #zent:Ljava/util/zip/ZipEntry;
    :cond_7
    const-string v8, "p"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 136
    invoke-virtual {v6, v7}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    .end local v4           #name:Ljava/lang/String;
    invoke-static {v4, v5, v1}, Lgnu/bytecode/ZipArchive;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;[B)J

    goto :goto_3

    .line 140
    .restart local v4       #name:Ljava/lang/String;
    :cond_8
    invoke-virtual {v6, v7}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v7

    .end local v7           #zent:Ljava/util/zip/ZipEntry;
    invoke-static {v7, v4, v1}, Lgnu/bytecode/ZipArchive;->copy(Ljava/io/InputStream;Ljava/lang/String;[B)V

    goto :goto_3

    .line 145
    .end local v1           #buf:[B
    .end local v3           #i:I
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #out:Ljava/io/PrintStream;
    .end local v6           #zar:Ljava/util/zip/ZipFile;
    :cond_9
    const-string v1, "q"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 147
    new-instance v5, Ljava/util/zip/ZipOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 149
    .local v5, zar:Ljava/util/zip/ZipOutputStream;
    const/4 v0, 0x2

    .local v0, i:I
    move v2, v0

    .end local v0           #i:I
    .local v2, i:I
    :goto_4
    array-length v0, p0

    if-ge v2, v0, :cond_d

    .line 151
    new-instance v3, Ljava/io/File;

    aget-object v0, p0, v2

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 152
    .local v3, in:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_a

    .line 153
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object p0, p0, v2

    .end local p0           #args:[Ljava/lang/String;
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " - not found"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    .restart local p0       #args:[Ljava/lang/String;
    :cond_a
    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_b

    .line 155
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object p0, p0, v2

    .end local p0           #args:[Ljava/lang/String;
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " - not readable"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    .restart local p0       #args:[Ljava/lang/String;
    :cond_b
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v4, v0

    .line 157
    .local v4, size:I
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 158
    .local v1, fin:Ljava/io/FileInputStream;
    new-array v0, v4, [B

    .line 159
    .local v0, contents:[B
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    if-eq v6, v4, :cond_c

    .line 160
    new-instance v0, Ljava/io/IOException;

    .end local v0           #contents:[B
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1           #fin:Ljava/io/FileInputStream;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object p0, p0, v2

    .end local p0           #args:[Ljava/lang/String;
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " - read error"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    .restart local v0       #contents:[B
    .restart local v1       #fin:Ljava/io/FileInputStream;
    .restart local p0       #args:[Ljava/lang/String;
    :cond_c
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 163
    new-instance v1, Ljava/util/zip/ZipEntry;

    .end local v1           #fin:Ljava/io/FileInputStream;
    aget-object v6, p0, v2

    invoke-direct {v1, v6}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 164
    .local v1, ze:Ljava/util/zip/ZipEntry;
    int-to-long v6, v4

    invoke-virtual {v1, v6, v7}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 165
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 166
    invoke-virtual {v5, v1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 167
    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1, v4}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    .line 149
    .end local v1           #ze:Ljava/util/zip/ZipEntry;
    add-int/lit8 v0, v2, 0x1

    .end local v2           #i:I
    .local v0, i:I
    move v2, v0

    .end local v0           #i:I
    .restart local v2       #i:I
    goto/16 :goto_4

    .line 169
    .end local v3           #in:Ljava/io/File;
    .end local v4           #size:I
    :cond_d
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->close()V

    goto/16 :goto_1

    .line 172
    .end local v5           #zar:Ljava/util/zip/ZipOutputStream;
    .local v0, archive_name:Ljava/lang/String;
    .local v2, command:Ljava/lang/String;
    :cond_e
    invoke-static {}, Lgnu/bytecode/ZipArchive;->usage()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method private static usage()V
    .locals 2

    .prologue
    .line 18
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "zipfile [ptxq] archive [file ...]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 19
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 20
    return-void
.end method
