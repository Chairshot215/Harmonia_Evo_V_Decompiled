.class public Lgnu/text/FilePath;
.super Lgnu/text/Path;
.source "FilePath.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgnu/text/Path;",
        "Ljava/lang/Comparable",
        "<",
        "Lgnu/text/FilePath;",
        ">;"
    }
.end annotation


# instance fields
.field final file:Ljava/io/File;

.field final path:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/io/File;)V
    .locals 1
    .parameter "file"

    .prologue
    .line 30
    invoke-direct {p0}, Lgnu/text/Path;-><init>()V

    .line 31
    iput-object p1, p0, Lgnu/text/FilePath;->file:Ljava/io/File;

    .line 32
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgnu/text/FilePath;->path:Ljava/lang/String;

    .line 33
    return-void
.end method

.method private constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 0
    .parameter "file"
    .parameter "path"

    .prologue
    .line 36
    invoke-direct {p0}, Lgnu/text/Path;-><init>()V

    .line 37
    iput-object p1, p0, Lgnu/text/FilePath;->file:Ljava/io/File;

    .line 38
    iput-object p2, p0, Lgnu/text/FilePath;->path:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public static coerceToFilePathOrNull(Ljava/lang/Object;)Lgnu/text/FilePath;
    .locals 4
    .parameter "path"

    .prologue
    .line 73
    instance-of v2, p0, Lgnu/text/FilePath;

    if-eqz v2, :cond_0

    .line 74
    check-cast p0, Lgnu/text/FilePath;

    .end local p0
    move-object v2, p0

    .line 94
    :goto_0
    return-object v2

    .line 75
    .restart local p0
    :cond_0
    instance-of v2, p0, Lgnu/text/URIPath;

    if-eqz v2, :cond_1

    .line 76
    new-instance v2, Ljava/io/File;

    check-cast p0, Lgnu/text/URIPath;

    .end local p0
    iget-object v3, p0, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-static {v2}, Lgnu/text/FilePath;->valueOf(Ljava/io/File;)Lgnu/text/FilePath;

    move-result-object v2

    goto :goto_0

    .line 82
    .restart local p0
    :cond_1
    instance-of v2, p0, Ljava/net/URI;

    if-eqz v2, :cond_2

    .line 83
    new-instance v2, Ljava/io/File;

    check-cast p0, Ljava/net/URI;

    .end local p0
    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-static {v2}, Lgnu/text/FilePath;->valueOf(Ljava/io/File;)Lgnu/text/FilePath;

    move-result-object v2

    goto :goto_0

    .line 85
    .restart local p0
    :cond_2
    instance-of v2, p0, Ljava/io/File;

    if-eqz v2, :cond_3

    .line 86
    check-cast p0, Ljava/io/File;

    .end local p0
    invoke-static {p0}, Lgnu/text/FilePath;->valueOf(Ljava/io/File;)Lgnu/text/FilePath;

    move-result-object v2

    goto :goto_0

    .line 88
    .restart local p0
    :cond_3
    instance-of v2, p0, Lgnu/lists/FString;

    if-eqz v2, :cond_4

    .line 89
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, str:Ljava/lang/String;
    :goto_1
    invoke-static {v1}, Lgnu/text/FilePath;->valueOf(Ljava/lang/String;)Lgnu/text/FilePath;

    move-result-object v2

    goto :goto_0

    .line 90
    .end local v1           #str:Ljava/lang/String;
    :cond_4
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 91
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .restart local v1       #str:Ljava/lang/String;
    goto :goto_1

    .line 93
    .end local v1           #str:Ljava/lang/String;
    :cond_5
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static makeFilePath(Ljava/lang/Object;)Lgnu/text/FilePath;
    .locals 5
    .parameter "arg"

    .prologue
    .line 98
    invoke-static {p0}, Lgnu/text/FilePath;->coerceToFilePathOrNull(Ljava/lang/Object;)Lgnu/text/FilePath;

    move-result-object v0

    .line 99
    .local v0, path:Lgnu/text/FilePath;
    if-nez v0, :cond_0

    .line 100
    new-instance v2, Lgnu/mapping/WrongType;

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    const/4 v3, -0x4

    const-string v4, "filepath"

    invoke-direct {v2, v1, v3, p0, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v2

    .line 101
    :cond_0
    return-object v0
.end method

.method private static toUri(Ljava/io/File;)Ljava/net/URI;
    .locals 7
    .parameter "file"

    .prologue
    const/16 v4, 0x2f

    .line 244
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->isAbsolute()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 245
    invoke-virtual {p0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v3

    .line 252
    :goto_0
    return-object v3

    .line 248
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    .line 249
    .local v2, fname:Ljava/lang/String;
    sget-char v1, Ljava/io/File;->separatorChar:C

    .line 250
    .local v1, fileSep:C
    if-eq v1, v4, :cond_1

    .line 251
    const/16 v3, 0x2f

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 252
    :cond_1
    new-instance v3, Ljava/net/URI;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v2, v6}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 254
    .end local v1           #fileSep:C
    .end local v2           #fname:Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 256
    .local v0, ex:Ljava/lang/Throwable;
    invoke-static {v0}, Lgnu/mapping/WrappedException;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public static valueOf(Ljava/io/File;)Lgnu/text/FilePath;
    .locals 1
    .parameter "file"

    .prologue
    .line 68
    new-instance v0, Lgnu/text/FilePath;

    invoke-direct {v0, p0}, Lgnu/text/FilePath;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lgnu/text/FilePath;
    .locals 3
    .parameter "str"

    .prologue
    .line 43
    move-object v0, p0

    .line 63
    .local v0, orig:Ljava/lang/String;
    new-instance v1, Lgnu/text/FilePath;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v0}, Lgnu/text/FilePath;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public compareTo(Lgnu/text/FilePath;)I
    .locals 2
    .parameter "path"

    .prologue
    .line 174
    iget-object v0, p0, Lgnu/text/FilePath;->file:Ljava/io/File;

    iget-object v1, p1, Lgnu/text/FilePath;->file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lgnu/text/FilePath;

    .end local p1
    invoke-virtual {p0, p1}, Lgnu/text/FilePath;->compareTo(Lgnu/text/FilePath;)I

    move-result v0

    return v0
.end method

.method public delete()Z
    .locals 1

    .prologue
    .line 128
    invoke-virtual {p0}, Lgnu/text/FilePath;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "obj"

    .prologue
    .line 186
    instance-of v0, p1, Lgnu/text/FilePath;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/text/FilePath;->file:Ljava/io/File;

    check-cast p1, Lgnu/text/FilePath;

    .end local p1
    iget-object v1, p1, Lgnu/text/FilePath;->file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public exists()Z
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lgnu/text/FilePath;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public getCanonical()Lgnu/text/Path;
    .locals 2

    .prologue
    .line 307
    :try_start_0
    iget-object v1, p0, Lgnu/text/FilePath;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    .line 308
    .local v0, canon:Ljava/io/File;
    iget-object v1, p0, Lgnu/text/FilePath;->file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 309
    invoke-static {v0}, Lgnu/text/FilePath;->valueOf(Ljava/io/File;)Lgnu/text/FilePath;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 314
    .end local v0           #canon:Ljava/io/File;
    :goto_0
    return-object v1

    .line 311
    :catch_0
    move-exception v1

    :cond_0
    move-object v1, p0

    .line 314
    goto :goto_0
.end method

.method public getContentLength()J
    .locals 4

    .prologue
    .line 143
    iget-object v2, p0, Lgnu/text/FilePath;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 144
    .local v0, length:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lgnu/text/FilePath;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    const-wide/16 v2, -0x1

    :goto_0
    return-wide v2

    :cond_0
    move-wide v2, v0

    goto :goto_0
.end method

.method public getLast()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lgnu/text/FilePath;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastModified()J
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lgnu/text/FilePath;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public getParent()Lgnu/text/FilePath;
    .locals 2

    .prologue
    .line 165
    iget-object v1, p0, Lgnu/text/FilePath;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 166
    .local v0, parent:Ljava/io/File;
    if-nez v0, :cond_0

    .line 167
    const/4 v1, 0x0

    .line 169
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lgnu/text/FilePath;->valueOf(Ljava/io/File;)Lgnu/text/FilePath;

    move-result-object v1

    goto :goto_0
.end method

.method public bridge synthetic getParent()Lgnu/text/Path;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lgnu/text/FilePath;->getParent()Lgnu/text/FilePath;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lgnu/text/FilePath;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    invoke-virtual {p0}, Lgnu/text/FilePath;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "file"

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lgnu/text/FilePath;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAbsolute()Z
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lgnu/text/Path;->userDirPath:Lgnu/text/FilePath;

    if-eq p0, v0, :cond_0

    iget-object v0, p0, Lgnu/text/FilePath;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDirectory()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 111
    iget-object v2, p0, Lgnu/text/FilePath;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v4

    .line 123
    :goto_0
    return v2

    .line 113
    :cond_0
    iget-object v2, p0, Lgnu/text/FilePath;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 115
    iget-object v2, p0, Lgnu/text/FilePath;->path:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 116
    .local v1, len:I
    if-lez v1, :cond_2

    .line 118
    iget-object v2, p0, Lgnu/text/FilePath;->path:Ljava/lang/String;

    sub-int v3, v1, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 119
    .local v0, last:C
    const/16 v2, 0x2f

    if-eq v0, v2, :cond_1

    sget-char v2, Ljava/io/File;->separatorChar:C

    if-ne v0, v2, :cond_2

    :cond_1
    move v2, v4

    .line 120
    goto :goto_0

    .line 123
    .end local v0           #last:C
    .end local v1           #len:I
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public openInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 271
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lgnu/text/FilePath;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public openOutputStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 276
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lgnu/text/FilePath;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public resolve(Ljava/lang/String;)Lgnu/text/Path;
    .locals 5
    .parameter "relative"

    .prologue
    const/16 v4, 0x2f

    .line 286
    invoke-static {p1}, Lgnu/text/Path;->uriSchemeSpecified(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 287
    invoke-static {p1}, Lgnu/text/URLPath;->valueOf(Ljava/lang/String;)Lgnu/text/URIPath;

    move-result-object v3

    .line 300
    :goto_0
    return-object v3

    .line 288
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 289
    .local v1, rfile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isAbsolute()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 290
    invoke-static {v1}, Lgnu/text/FilePath;->valueOf(Ljava/io/File;)Lgnu/text/FilePath;

    move-result-object v3

    goto :goto_0

    .line 291
    :cond_1
    sget-char v2, Ljava/io/File;->separatorChar:C

    .line 292
    .local v2, sep:C
    if-eq v2, v4, :cond_2

    .line 293
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 296
    :cond_2
    sget-object v3, Lgnu/text/Path;->userDirPath:Lgnu/text/FilePath;

    if-ne p0, v3, :cond_3

    .line 297
    new-instance v0, Ljava/io/File;

    const-string v3, "user.dir"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    .local v0, nfile:Ljava/io/File;
    :goto_1
    invoke-static {v0}, Lgnu/text/FilePath;->valueOf(Ljava/io/File;)Lgnu/text/FilePath;

    move-result-object v3

    goto :goto_0

    .line 299
    .end local v0           #nfile:Ljava/io/File;
    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lgnu/text/FilePath;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lgnu/text/FilePath;->file:Ljava/io/File;

    :goto_2
    invoke-direct {v0, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v0       #nfile:Ljava/io/File;
    goto :goto_1

    .end local v0           #nfile:Ljava/io/File;
    :cond_4
    iget-object v3, p0, Lgnu/text/FilePath;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    goto :goto_2
.end method

.method public toFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lgnu/text/FilePath;->file:Ljava/io/File;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lgnu/text/FilePath;->path:Ljava/lang/String;

    return-object v0
.end method

.method public toURL()Ljava/net/URL;
    .locals 2

    .prologue
    .line 206
    sget-object v1, Lgnu/text/Path;->userDirPath:Lgnu/text/FilePath;

    if-ne p0, v1, :cond_0

    .line 207
    const-string v1, ""

    invoke-virtual {p0, v1}, Lgnu/text/FilePath;->resolve(Ljava/lang/String;)Lgnu/text/Path;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/text/Path;->toURL()Ljava/net/URL;

    move-result-object v1

    .line 214
    :goto_0
    return-object v1

    .line 208
    :cond_0
    invoke-virtual {p0}, Lgnu/text/FilePath;->isAbsolute()Z

    move-result v1

    if-nez v1, :cond_1

    .line 209
    invoke-virtual {p0}, Lgnu/text/FilePath;->getAbsolute()Lgnu/text/Path;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/text/Path;->toURL()Ljava/net/URL;

    move-result-object v1

    goto :goto_0

    .line 214
    :cond_1
    :try_start_0
    iget-object v1, p0, Lgnu/text/FilePath;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toURL()Ljava/net/URL;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 223
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 225
    .local v0, ex:Ljava/lang/Throwable;
    invoke-static {v0}, Lgnu/mapping/WrappedException;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public toUri()Ljava/net/URI;
    .locals 1

    .prologue
    .line 263
    sget-object v0, Lgnu/text/Path;->userDirPath:Lgnu/text/FilePath;

    if-ne p0, v0, :cond_0

    .line 264
    const-string v0, ""

    invoke-virtual {p0, v0}, Lgnu/text/FilePath;->resolve(Ljava/lang/String;)Lgnu/text/Path;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/text/Path;->toURI()Ljava/net/URI;

    move-result-object v0

    .line 265
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lgnu/text/FilePath;->file:Ljava/io/File;

    invoke-static {v0}, Lgnu/text/FilePath;->toUri(Ljava/io/File;)Ljava/net/URI;

    move-result-object v0

    goto :goto_0
.end method
