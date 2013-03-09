.class public Lgnu/bytecode/dump;
.super Lgnu/bytecode/ClassFileInput;
.source "dump.java"


# instance fields
.field writer:Lgnu/bytecode/ClassTypeWriter;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Lgnu/bytecode/ClassTypeWriter;)V
    .locals 1
    .parameter "str"
    .parameter "writer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassFormatError;
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lgnu/bytecode/ClassFileInput;-><init>(Ljava/io/InputStream;)V

    .line 35
    new-instance v0, Lgnu/bytecode/ClassType;

    invoke-direct {v0}, Lgnu/bytecode/ClassType;-><init>()V

    iput-object v0, p0, Lgnu/bytecode/dump;->ctype:Lgnu/bytecode/ClassType;

    .line 36
    invoke-virtual {p0}, Lgnu/bytecode/dump;->readFormatVersion()V

    .line 38
    invoke-virtual {p0}, Lgnu/bytecode/dump;->readConstants()Lgnu/bytecode/ConstantPool;

    .line 39
    invoke-virtual {p0}, Lgnu/bytecode/dump;->readClassInfo()V

    .line 40
    invoke-virtual {p0}, Lgnu/bytecode/dump;->readFields()V

    .line 41
    invoke-virtual {p0}, Lgnu/bytecode/dump;->readMethods()V

    .line 42
    iget-object v0, p0, Lgnu/bytecode/dump;->ctype:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, v0}, Lgnu/bytecode/dump;->readAttributes(Lgnu/bytecode/AttrContainer;)I

    .line 44
    iget-object v0, p0, Lgnu/bytecode/dump;->ctype:Lgnu/bytecode/ClassType;

    invoke-virtual {p2, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Lgnu/bytecode/ClassType;)V

    .line 45
    invoke-virtual {p2}, Lgnu/bytecode/ClassTypeWriter;->flush()V

    .line 46
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 11
    .parameter "args"

    .prologue
    .line 153
    array-length v0, p0

    .line 154
    .local v0, alen:I
    new-instance v6, Lgnu/bytecode/ClassTypeWriter;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v3, 0x0

    invoke-direct {v6, v1, v2, v3}, Lgnu/bytecode/ClassTypeWriter;-><init>(Lgnu/bytecode/ClassType;Ljava/io/OutputStream;I)V

    .line 155
    .local v6, out:Lgnu/bytecode/ClassTypeWriter;
    if-nez v0, :cond_0

    .line 156
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {v1}, Lgnu/bytecode/dump;->usage(Ljava/io/PrintStream;)V

    .line 157
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    move v5, v1

    .end local v1           #i:I
    .local v5, i:I
    :goto_0
    if-ge v5, v0, :cond_8

    .line 159
    aget-object v2, p0, v5

    .line 160
    .local v2, filename:Ljava/lang/String;
    const-string v1, "-verbose"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "--verbose"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 162
    :cond_1
    const/16 v1, 0xf

    invoke-virtual {v6, v1}, Lgnu/bytecode/ClassTypeWriter;->setFlags(I)V

    move-object v1, v2

    .line 157
    .end local v2           #filename:Ljava/lang/String;
    .local v1, filename:Ljava/lang/String;
    :goto_1
    add-int/lit8 v1, v5, 0x1

    .end local v5           #i:I
    .local v1, i:I
    move v5, v1

    .end local v1           #i:I
    .restart local v5       #i:I
    goto :goto_0

    .line 165
    .restart local v2       #filename:Ljava/lang/String;
    :cond_2
    invoke-static {v2}, Lgnu/bytecode/dump;->uriSchemeSpecified(Ljava/lang/String;)Z

    move-result v1

    .line 169
    .local v1, isURL:Z
    if-eqz v1, :cond_7

    .line 171
    :try_start_0
    const-string v1, "jar:"

    .end local v1           #isURL:Z
    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    .line 172
    .local v4, isJarURL:Z
    if-eqz v4, :cond_a

    .line 174
    const/4 v1, 0x4

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 176
    .local v7, part:Ljava/lang/String;
    invoke-static {v7}, Lgnu/bytecode/dump;->uriSchemeSpecified(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 178
    const/16 v1, 0x21

    invoke-virtual {v7, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 179
    .local v1, excl:I
    if-ltz v1, :cond_3

    .line 181
    const/4 v3, 0x0

    invoke-virtual {v7, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 183
    .local v3, filepart:Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v3

    .end local v3           #filepart:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    .line 187
    .restart local v3       #filepart:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "jar:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .end local v3           #filepart:Ljava/lang/String;
    invoke-virtual {v7, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .end local v1           #excl:I
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v2           #filename:Ljava/lang/String;
    .local v1, filename:Ljava/lang/String;
    move-object v2, v1

    .line 191
    .end local v1           #filename:Ljava/lang/String;
    .restart local v2       #filename:Ljava/lang/String;
    :cond_3
    const-string v1, "!/"

    invoke-virtual {v7, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_a

    .line 193
    const/16 v1, 0x21

    invoke-virtual {v2, v1}, Ljava/lang/String;->lastIndexOf(I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9

    move-result v1

    .line 194
    .local v1, excl:I
    if-gtz v1, :cond_4

    .line 195
    const/4 v1, 0x0

    .end local v4           #isJarURL:Z
    .local v1, isJarURL:Z
    move-object v3, v2

    .end local v2           #filename:Ljava/lang/String;
    .local v3, filename:Ljava/lang/String;
    move v2, v1

    .line 207
    .end local v1           #isJarURL:Z
    .end local v7           #part:Ljava/lang/String;
    .local v2, isJarURL:Z
    :goto_2
    :try_start_1
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/zip/ZipException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a

    .line 210
    .local v4, url:Ljava/net/URL;
    :try_start_2
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/util/zip/ZipException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a

    move-result-object v1

    .end local v2           #isJarURL:Z
    .end local v4           #url:Ljava/net/URL;
    .local v1, in:Ljava/io/InputStream;
    :goto_3
    move-object v2, v1

    .end local v1           #in:Ljava/io/InputStream;
    .local v2, in:Ljava/io/InputStream;
    move-object v1, v3

    .line 302
    .end local v3           #filename:Ljava/lang/String;
    .local v1, filename:Ljava/lang/String;
    :goto_4
    :try_start_3
    invoke-static {v2, v1, v6}, Lgnu/bytecode/dump;->process(Ljava/io/InputStream;Ljava/lang/String;Lgnu/bytecode/ClassTypeWriter;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 305
    :catch_0
    move-exception v2

    move-object v10, v2

    move-object v2, v1

    .end local v1           #filename:Ljava/lang/String;
    .local v2, filename:Ljava/lang/String;
    move-object v1, v10

    .line 307
    .local v1, e:Ljava/io/IOException;
    :goto_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 308
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "caught "

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 309
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 310
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .end local v1           #e:Ljava/io/IOException;
    move-object v1, v2

    .end local v2           #filename:Ljava/lang/String;
    .local v1, filename:Ljava/lang/String;
    goto/16 :goto_1

    .line 196
    .local v1, excl:I
    .restart local v2       #filename:Ljava/lang/String;
    .local v4, isJarURL:Z
    .restart local v7       #part:Ljava/lang/String;
    :cond_4
    const/16 v3, 0x2f

    :try_start_4
    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-gez v3, :cond_a

    .line 198
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 199
    .end local v7           #part:Ljava/lang/String;
    .local v3, part:Ljava/lang/String;
    const/16 v7, 0x2e

    const/16 v8, 0x2f

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 200
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .end local v1           #excl:I
    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v7, 0x2f

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".class"

    .end local v3           #part:Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9

    move-result-object v1

    .end local v2           #filename:Ljava/lang/String;
    .local v1, filename:Ljava/lang/String;
    move v2, v4

    .end local v4           #isJarURL:Z
    .local v2, isJarURL:Z
    move-object v3, v1

    .end local v1           #filename:Ljava/lang/String;
    .local v3, filename:Ljava/lang/String;
    goto :goto_2

    .line 212
    .local v4, url:Ljava/net/URL;
    :catch_1
    move-exception v1

    .line 214
    .local v1, e1:Ljava/util/zip/ZipException;
    if-eqz v2, :cond_5

    .line 216
    :try_start_5
    invoke-virtual {v4}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v2

    .line 217
    .local v2, filepart:Ljava/lang/String;
    const/16 v4, 0x21

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    .end local v4           #url:Ljava/net/URL;
    move-result v4

    .line 218
    .local v4, sl:I
    if-lez v4, :cond_9

    .line 219
    const/4 v7, 0x0

    invoke-virtual {v2, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/util/zip/ZipException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_a

    move-result-object v2

    move-object v4, v2

    .line 222
    .end local v2           #filepart:Ljava/lang/String;
    .local v4, filepart:Ljava/lang/String;
    :goto_6
    :try_start_6
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/util/zip/ZipException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_a

    .line 232
    .end local v4           #filepart:Ljava/lang/String;
    :cond_5
    :goto_7
    :try_start_7
    throw v1
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/util/zip/ZipException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_a

    .line 235
    .end local v1           #e1:Ljava/util/zip/ZipException;
    :catch_2
    move-exception v1

    .line 237
    .local v1, e1:Ljava/io/FileNotFoundException;
    :try_start_8
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .end local v1           #e1:Ljava/io/FileNotFoundException;
    const-string v2, "File for URL "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 238
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 239
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, " not found."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 240
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_a

    .line 241
    const/4 v1, 0x0

    .line 253
    .local v1, in:Ljava/io/InputStream;
    goto/16 :goto_3

    .line 224
    .local v1, e1:Ljava/util/zip/ZipException;
    .restart local v4       #filepart:Ljava/lang/String;
    :catch_3
    move-exception v2

    .line 226
    .local v2, e2:Ljava/io/FileNotFoundException;
    :try_start_9
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .end local v2           #e2:Ljava/io/FileNotFoundException;
    const-string v7, "Jar File for URL "

    invoke-virtual {v2, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 227
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 228
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, " not found."

    .end local v4           #filepart:Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 229
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/System;->exit(I)V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/util/zip/ZipException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_a

    goto :goto_7

    .line 243
    .end local v1           #e1:Ljava/util/zip/ZipException;
    :catch_4
    move-exception v1

    .line 245
    .restart local v1       #e1:Ljava/util/zip/ZipException;
    :try_start_a
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Error opening zip archive "

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 246
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 247
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, " not found."

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v1}, Ljava/util/zip/ZipException;->printStackTrace()V

    .line 249
    invoke-virtual {v1}, Ljava/util/zip/ZipException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 250
    invoke-virtual {v1}, Ljava/util/zip/ZipException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .end local v1           #e1:Ljava/util/zip/ZipException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 251
    :cond_6
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a

    .line 252
    const/4 v1, 0x0

    .local v1, in:Ljava/io/InputStream;
    goto/16 :goto_3

    .line 259
    .end local v3           #filename:Ljava/lang/String;
    .local v1, isURL:Z
    .local v2, filename:Ljava/lang/String;
    :cond_7
    :try_start_b
    new-instance v1, Ljava/io/FileInputStream;

    .end local v1           #isURL:Z
    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    .local v1, in:Ljava/io/InputStream;
    move-object v10, v1

    .end local v1           #in:Ljava/io/InputStream;
    .local v10, in:Ljava/io/InputStream;
    move-object v1, v2

    .end local v2           #filename:Ljava/lang/String;
    .local v1, filename:Ljava/lang/String;
    move-object v2, v10

    .line 300
    .end local v10           #in:Ljava/io/InputStream;
    .local v2, in:Ljava/io/InputStream;
    goto/16 :goto_4

    .line 261
    .end local v1           #filename:Ljava/lang/String;
    .local v2, filename:Ljava/lang/String;
    :catch_5
    move-exception v1

    .line 267
    .local v1, e1:Ljava/io/FileNotFoundException;
    :try_start_c
    invoke-static {v2}, Lgnu/bytecode/ObjectType;->getContextClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 268
    .local v1, clas:Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
    :try_end_c
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_7
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    move-result-object v1

    .local v1, loader:Ljava/lang/ClassLoader;
    move-object v3, v1

    .line 284
    .end local v1           #loader:Ljava/lang/ClassLoader;
    .local v3, loader:Ljava/lang/ClassLoader;
    :goto_8
    :try_start_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x2e

    const/16 v7, 0x2f

    invoke-virtual {v2, v4, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ".class"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    move-result-object v1

    .line 287
    .local v1, clfilename:Ljava/lang/String;
    :try_start_e
    invoke-virtual {v3, v1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    .line 288
    .local v1, resource:Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    .end local v3           #loader:Ljava/lang/ClassLoader;
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 289
    .local v3, in:Ljava/io/InputStream;
    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_8
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    move-result-object v1

    .end local v2           #filename:Ljava/lang/String;
    .local v1, filename:Ljava/lang/String;
    move-object v2, v3

    .line 299
    .end local v3           #in:Ljava/io/InputStream;
    .local v2, in:Ljava/io/InputStream;
    goto/16 :goto_4

    .line 270
    .end local v1           #filename:Ljava/lang/String;
    .local v2, filename:Ljava/lang/String;
    :catch_6
    move-exception v1

    .line 272
    .local v1, e2:Ljava/lang/NoClassDefFoundError;
    :try_start_f
    invoke-static {}, Lgnu/bytecode/ObjectType;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .local v1, loader:Ljava/lang/ClassLoader;
    move-object v3, v1

    .line 282
    .end local v1           #loader:Ljava/lang/ClassLoader;
    .local v3, loader:Ljava/lang/ClassLoader;
    goto :goto_8

    .line 274
    .end local v3           #loader:Ljava/lang/ClassLoader;
    :catch_7
    move-exception v1

    .line 276
    .local v1, e2:Ljava/lang/Throwable;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .end local v1           #e2:Ljava/lang/Throwable;
    const-string v3, "File "

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 277
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 278
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, " not found."

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 279
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 280
    const/4 v1, 0x0

    .local v1, loader:Ljava/lang/ClassLoader;
    move-object v3, v1

    .line 281
    .end local v1           #loader:Ljava/lang/ClassLoader;
    .restart local v3       #loader:Ljava/lang/ClassLoader;
    goto :goto_8

    .line 291
    .end local v3           #loader:Ljava/lang/ClassLoader;
    :catch_8
    move-exception v1

    .line 293
    .local v1, ex:Ljava/lang/Throwable;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Can\'t find .class file for class "

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 294
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 295
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 296
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 297
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    .line 298
    .end local v1           #ex:Ljava/lang/Throwable;
    const/4 v1, 0x0

    .local v1, in:Ljava/io/InputStream;
    move-object v10, v1

    .end local v1           #in:Ljava/io/InputStream;
    .restart local v10       #in:Ljava/io/InputStream;
    move-object v1, v2

    .end local v2           #filename:Ljava/lang/String;
    .local v1, filename:Ljava/lang/String;
    move-object v2, v10

    .end local v10           #in:Ljava/io/InputStream;
    .local v2, in:Ljava/io/InputStream;
    goto/16 :goto_4

    .line 313
    .end local v1           #filename:Ljava/lang/String;
    .end local v2           #in:Ljava/io/InputStream;
    :cond_8
    return-void

    .line 305
    .local v2, filename:Ljava/lang/String;
    :catch_9
    move-exception v1

    goto/16 :goto_5

    .end local v2           #filename:Ljava/lang/String;
    .local v3, filename:Ljava/lang/String;
    :catch_a
    move-exception v1

    move-object v2, v3

    .end local v3           #filename:Ljava/lang/String;
    .restart local v2       #filename:Ljava/lang/String;
    goto/16 :goto_5

    .local v1, e1:Ljava/util/zip/ZipException;
    .local v2, filepart:Ljava/lang/String;
    .restart local v3       #filename:Ljava/lang/String;
    .local v4, sl:I
    :cond_9
    move-object v4, v2

    .end local v2           #filepart:Ljava/lang/String;
    .local v4, filepart:Ljava/lang/String;
    goto/16 :goto_6

    .end local v1           #e1:Ljava/util/zip/ZipException;
    .end local v3           #filename:Ljava/lang/String;
    .local v2, filename:Ljava/lang/String;
    .local v4, isJarURL:Z
    :cond_a
    move-object v3, v2

    .end local v2           #filename:Ljava/lang/String;
    .restart local v3       #filename:Ljava/lang/String;
    move v2, v4

    .end local v4           #isJarURL:Z
    .local v2, isJarURL:Z
    goto/16 :goto_2
.end method

.method public static process(Ljava/io/InputStream;Ljava/lang/String;Lgnu/bytecode/ClassTypeWriter;)V
    .locals 9
    .parameter "in"
    .parameter "filename"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    const v7, -0x35014542

    const/16 v6, 0x2e

    .line 91
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 92
    .local v0, inp:Ljava/io/InputStream;
    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/io/InputStream;->mark(I)V

    .line 93
    invoke-static {v0}, Lgnu/bytecode/dump;->readMagic(Ljava/io/InputStream;)I

    move-result v1

    .line 94
    .local v1, magic:I
    if-ne v1, v7, :cond_0

    .line 96
    const-string v5, "Reading .class from "

    invoke-virtual {p2, v5}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2, p1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2, v6}, Lgnu/bytecode/ClassTypeWriter;->println(C)V

    .line 99
    new-instance v5, Lgnu/bytecode/dump;

    invoke-direct {v5, v0, p2}, Lgnu/bytecode/dump;-><init>(Ljava/io/InputStream;Lgnu/bytecode/ClassTypeWriter;)V

    .line 144
    :goto_0
    return-void

    .line 101
    :cond_0
    const v5, 0x504b0304

    if-ne v1, v5, :cond_4

    .line 103
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 104
    const-string v5, "Reading classes from archive "

    invoke-virtual {p2, v5}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2, p1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2, v6}, Lgnu/bytecode/ClassTypeWriter;->println(C)V

    .line 107
    new-instance v4, Ljava/util/zip/ZipInputStream;

    invoke-direct {v4, v0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 109
    .local v4, zin:Ljava/util/zip/ZipInputStream;
    :goto_1
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v3

    .local v3, zent:Ljava/util/zip/ZipEntry;
    if-eqz v3, :cond_3

    .line 111
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, name:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 114
    const-string v5, "Archive directory: "

    invoke-virtual {p2, v5}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2, v2}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2, v6}, Lgnu/bytecode/ClassTypeWriter;->println(C)V

    goto :goto_1

    .line 120
    :cond_1
    invoke-virtual {p2}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 121
    invoke-static {v4}, Lgnu/bytecode/dump;->readMagic(Ljava/io/InputStream;)I

    move-result v1

    .line 122
    if-ne v1, v7, :cond_2

    .line 124
    const-string v5, "Reading class member: "

    invoke-virtual {p2, v5}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2, v2}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2, v6}, Lgnu/bytecode/ClassTypeWriter;->println(C)V

    .line 127
    new-instance v5, Lgnu/bytecode/dump;

    invoke-direct {v5, v4, p2}, Lgnu/bytecode/dump;-><init>(Ljava/io/InputStream;Lgnu/bytecode/ClassTypeWriter;)V

    goto :goto_1

    .line 131
    :cond_2
    const-string v5, "Skipping non-class member: "

    invoke-virtual {p2, v5}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2, v2}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2, v6}, Lgnu/bytecode/ClassTypeWriter;->println(C)V

    goto :goto_1

    .line 137
    .end local v2           #name:Ljava/lang/String;
    :cond_3
    invoke-static {v8}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 141
    .end local v3           #zent:Ljava/util/zip/ZipEntry;
    .end local v4           #zin:Ljava/util/zip/ZipInputStream;
    :cond_4
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "File "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not a valid .class file"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 142
    invoke-static {v8}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method

.method public static process(Ljava/io/InputStream;Ljava/lang/String;Ljava/io/OutputStream;I)V
    .locals 2
    .parameter "in"
    .parameter "filename"
    .parameter "out"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    new-instance v0, Lgnu/bytecode/ClassTypeWriter;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, p3}, Lgnu/bytecode/ClassTypeWriter;-><init>(Lgnu/bytecode/ClassType;Ljava/io/OutputStream;I)V

    invoke-static {p0, p1, v0}, Lgnu/bytecode/dump;->process(Ljava/io/InputStream;Ljava/lang/String;Lgnu/bytecode/ClassTypeWriter;)V

    .line 78
    return-void
.end method

.method public static process(Ljava/io/InputStream;Ljava/lang/String;Ljava/io/Writer;I)V
    .locals 2
    .parameter "in"
    .parameter "filename"
    .parameter "out"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    new-instance v0, Lgnu/bytecode/ClassTypeWriter;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, p3}, Lgnu/bytecode/ClassTypeWriter;-><init>(Lgnu/bytecode/ClassType;Ljava/io/Writer;I)V

    invoke-static {p0, p1, v0}, Lgnu/bytecode/dump;->process(Ljava/io/InputStream;Ljava/lang/String;Lgnu/bytecode/ClassTypeWriter;)V

    .line 85
    return-void
.end method

.method static readMagic(Ljava/io/InputStream;)I
    .locals 5
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    const/4 v2, 0x0

    .line 63
    .local v2, magic:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    const/4 v3, 0x4

    if-ge v1, v3, :cond_0

    .line 65
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 66
    .local v0, b:I
    if-gez v0, :cond_1

    .line 70
    .end local v0           #b:I
    :cond_0
    return v2

    .line 68
    .restart local v0       #b:I
    :cond_1
    shl-int/lit8 v3, v2, 0x8

    and-int/lit16 v4, v0, 0xff

    or-int v2, v3, v4

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static uriSchemeLength(Ljava/lang/String;)I
    .locals 5
    .parameter "uri"

    .prologue
    const/4 v4, -0x1

    .line 325
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 326
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_4

    .line 328
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 329
    .local v0, ch:C
    const/16 v3, 0x3a

    if-ne v0, v3, :cond_0

    move v3, v1

    .line 336
    .end local v0           #ch:C
    :goto_1
    return v3

    .line 331
    .restart local v0       #ch:C
    :cond_0
    if-nez v1, :cond_2

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_1
    move v3, v4

    .line 334
    goto :goto_1

    .line 331
    :cond_2
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-nez v3, :cond_3

    const/16 v3, 0x2b

    if-eq v0, v3, :cond_3

    const/16 v3, 0x2d

    if-eq v0, v3, :cond_3

    const/16 v3, 0x2e

    if-ne v0, v3, :cond_1

    .line 326
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #ch:C
    :cond_4
    move v3, v4

    .line 336
    goto :goto_1
.end method

.method static uriSchemeSpecified(Ljava/lang/String;)Z
    .locals 6
    .parameter "name"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 348
    invoke-static {p0}, Lgnu/bytecode/dump;->uriSchemeLength(Ljava/lang/String;)I

    move-result v1

    .line 349
    .local v1, ulen:I
    if-ne v1, v5, :cond_3

    sget-char v2, Ljava/io/File;->separatorChar:C

    const/16 v3, 0x5c

    if-ne v2, v3, :cond_3

    .line 351
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 352
    .local v0, drive:C
    const/16 v2, 0x61

    if-lt v0, v2, :cond_0

    const/16 v2, 0x7a

    if-le v0, v2, :cond_2

    :cond_0
    const/16 v2, 0x41

    if-lt v0, v2, :cond_1

    const/16 v2, 0x5a

    if-le v0, v2, :cond_2

    :cond_1
    move v2, v5

    .line 355
    .end local v0           #drive:C
    :goto_0
    return v2

    .restart local v0       #drive:C
    :cond_2
    move v2, v4

    .line 352
    goto :goto_0

    .line 355
    .end local v0           #drive:C
    :cond_3
    if-lez v1, :cond_4

    move v2, v5

    goto :goto_0

    :cond_4
    move v2, v4

    goto :goto_0
.end method

.method public static usage(Ljava/io/PrintStream;)V
    .locals 1
    .parameter "err"

    .prologue
    .line 360
    const-string v0, "Prints and dis-assembles the contents of JVM .class files."

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 361
    const-string v0, "Usage: [--verbose] class-or-jar ..."

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 362
    const-string v0, "where a class-or-jar can be one of:"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 363
    const-string v0, "- a fully-qualified class name; or"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 364
    const-string v0, "- the name of a .class file, or a URL reference to one; or"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 365
    const-string v0, "- the name of a .jar or .zip archive file, or a URL reference to one."

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 366
    const-string v0, "If a .jar/.zip archive is named, all its.class file members are printed."

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    .line 368
    const-string v0, "You can name a single .class member of an archive with a jar: URL,"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 369
    const-string v0, "which looks like: jar:jar-spec!/p1/p2/cl.class"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 370
    const-string v0, "The jar-spec can be a URL or the name of the .jar file."

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 371
    const-string v0, "You can also use the shorthand syntax: jar:jar-spec!p1.p2.cl"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 372
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 373
    return-void
.end method


# virtual methods
.method public readAttribute(Ljava/lang/String;ILgnu/bytecode/AttrContainer;)Lgnu/bytecode/Attribute;
    .locals 1
    .parameter "name"
    .parameter "length"
    .parameter "container"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-super {p0, p1, p2, p3}, Lgnu/bytecode/ClassFileInput;->readAttribute(Ljava/lang/String;ILgnu/bytecode/AttrContainer;)Lgnu/bytecode/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public readConstants()Lgnu/bytecode/ConstantPool;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lgnu/bytecode/dump;->ctype:Lgnu/bytecode/ClassType;

    invoke-super {p0}, Lgnu/bytecode/ClassFileInput;->readConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v1

    iput-object v1, v0, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    .line 51
    iget-object v0, p0, Lgnu/bytecode/dump;->ctype:Lgnu/bytecode/ClassType;

    iget-object v0, v0, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    return-object v0
.end method
