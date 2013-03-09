.class public abstract Lgnu/text/Path;
.super Ljava/lang/Object;
.source "Path.java"


# static fields
.field public static defaultPath:Lgnu/text/Path;

.field private static pathLocation:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lgnu/text/Path;",
            ">;"
        }
    .end annotation
.end field

.field public static final userDirPath:Lgnu/text/FilePath;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Ljava/io/File;

    const-string v1, "."

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lgnu/text/FilePath;->valueOf(Ljava/io/File;)Lgnu/text/FilePath;

    move-result-object v0

    sput-object v0, Lgnu/text/Path;->userDirPath:Lgnu/text/FilePath;

    .line 22
    sget-object v0, Lgnu/text/Path;->userDirPath:Lgnu/text/FilePath;

    sput-object v0, Lgnu/text/Path;->defaultPath:Lgnu/text/Path;

    .line 25
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lgnu/text/Path;->pathLocation:Ljava/lang/ThreadLocal;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static coerceToPathOrNull(Ljava/lang/Object;)Lgnu/text/Path;
    .locals 3
    .parameter "path"

    .prologue
    .line 53
    instance-of v2, p0, Lgnu/text/Path;

    if-eqz v2, :cond_0

    .line 54
    check-cast p0, Lgnu/text/Path;

    .end local p0
    move-object v2, p0

    .line 73
    :goto_0
    return-object v2

    .line 55
    .restart local p0
    :cond_0
    instance-of v2, p0, Ljava/net/URL;

    if-eqz v2, :cond_1

    .line 56
    check-cast p0, Ljava/net/URL;

    .end local p0
    invoke-static {p0}, Lgnu/text/URLPath;->valueOf(Ljava/net/URL;)Lgnu/text/URLPath;

    move-result-object v2

    goto :goto_0

    .line 58
    .restart local p0
    :cond_1
    instance-of v2, p0, Ljava/net/URI;

    if-eqz v2, :cond_2

    .line 59
    check-cast p0, Ljava/net/URI;

    .end local p0
    invoke-static {p0}, Lgnu/text/URIPath;->valueOf(Ljava/net/URI;)Lgnu/text/URIPath;

    move-result-object v2

    goto :goto_0

    .line 61
    .restart local p0
    :cond_2
    instance-of v2, p0, Ljava/io/File;

    if-eqz v2, :cond_3

    .line 62
    check-cast p0, Ljava/io/File;

    .end local p0
    invoke-static {p0}, Lgnu/text/FilePath;->valueOf(Ljava/io/File;)Lgnu/text/FilePath;

    move-result-object v2

    goto :goto_0

    .line 64
    .restart local p0
    :cond_3
    instance-of v2, p0, Lgnu/lists/FString;

    if-eqz v2, :cond_4

    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, str:Ljava/lang/String;
    :goto_1
    invoke-static {v1}, Lgnu/text/Path;->uriSchemeSpecified(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 71
    invoke-static {v1}, Lgnu/text/URIPath;->valueOf(Ljava/lang/String;)Lgnu/text/URIPath;

    move-result-object v2

    goto :goto_0

    .line 66
    .end local v1           #str:Ljava/lang/String;
    :cond_4
    instance-of v2, p0, Ljava/lang/String;

    if-nez v2, :cond_5

    .line 67
    const/4 v2, 0x0

    goto :goto_0

    .line 69
    :cond_5
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .restart local v1       #str:Ljava/lang/String;
    goto :goto_1

    .line 73
    :cond_6
    invoke-static {v1}, Lgnu/text/FilePath;->valueOf(Ljava/lang/String;)Lgnu/text/FilePath;

    move-result-object v2

    goto :goto_0
.end method

.method public static currentPath()Lgnu/text/Path;
    .locals 2

    .prologue
    .line 35
    sget-object v1, Lgnu/text/Path;->pathLocation:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/text/Path;

    .line 36
    .local v0, path:Lgnu/text/Path;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 39
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lgnu/text/Path;->defaultPath:Lgnu/text/Path;

    goto :goto_0
.end method

.method public static openInputStream(Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 1
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 298
    invoke-static {p0}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/text/Path;->openInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static relativize(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "in"
    .parameter "base"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x2f

    .line 329
    move-object v1, p1

    .line 330
    .local v1, baseStr:Ljava/lang/String;
    move-object v7, p0

    .line 332
    .local v7, inStr:Ljava/lang/String;
    new-instance v10, Ljava/net/URI;

    invoke-direct {v10, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v10

    invoke-virtual {v10}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    .line 333
    invoke-static {p0}, Lgnu/text/URLPath;->valueOf(Ljava/lang/String;)Lgnu/text/URIPath;

    move-result-object v10

    invoke-virtual {v10}, Lgnu/text/URIPath;->toURI()Ljava/net/URI;

    move-result-object v10

    invoke-virtual {v10}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v10

    invoke-virtual {v10}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v7

    .line 335
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 336
    .local v0, baseLen:I
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    .line 337
    .local v6, inLen:I
    const/4 v5, 0x0

    .line 338
    .local v5, i:I
    const/4 v9, 0x0

    .line 339
    .local v9, sl:I
    const/4 v4, 0x0

    .line 340
    .local v4, colon:I
    :goto_0
    if-ge v5, v0, :cond_0

    if-ge v5, v6, :cond_0

    .line 342
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 343
    .local v2, cb:C
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 344
    .local v3, ci:C
    if-eq v2, v3, :cond_3

    .line 351
    .end local v2           #cb:C
    .end local v3           #ci:C
    :cond_0
    if-lez v4, :cond_6

    add-int/lit8 v10, v4, 0x2

    if-gt v9, v10, :cond_1

    add-int/lit8 v10, v4, 0x2

    if-le v0, v10, :cond_1

    add-int/lit8 v10, v4, 0x2

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eq v10, v11, :cond_6

    .line 360
    :cond_1
    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 361
    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 366
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 370
    .local v8, sbuf:Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .line 371
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    move v5, v0

    :cond_2
    :goto_1
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_7

    .line 372
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v11, :cond_2

    .line 373
    const-string v10, "../"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 346
    .end local v8           #sbuf:Ljava/lang/StringBuilder;
    .restart local v2       #cb:C
    .restart local v3       #ci:C
    :cond_3
    if-ne v2, v11, :cond_4

    .line 347
    move v9, v5

    .line 348
    :cond_4
    const/16 v10, 0x3a

    if-ne v2, v10, :cond_5

    .line 349
    move v4, v5

    .line 340
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .end local v2           #cb:C
    .end local v3           #ci:C
    :cond_6
    move-object v10, p0

    .line 375
    :goto_2
    return-object v10

    .line 374
    .restart local v8       #sbuf:Ljava/lang/StringBuilder;
    :cond_7
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_2
.end method

.method public static setCurrentPath(Lgnu/text/Path;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 45
    sget-object v0, Lgnu/text/Path;->pathLocation:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 49
    return-void
.end method

.method public static toURL(Ljava/lang/String;)Ljava/net/URL;
    .locals 4
    .parameter "str"

    .prologue
    .line 88
    :try_start_0
    invoke-static {p0}, Lgnu/text/Path;->uriSchemeSpecified(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 90
    invoke-static {}, Lgnu/text/Path;->currentPath()Lgnu/text/Path;

    move-result-object v0

    .line 91
    .local v0, cur:Lgnu/text/Path;
    invoke-virtual {v0, p0}, Lgnu/text/Path;->resolve(Ljava/lang/String;)Lgnu/text/Path;

    move-result-object v2

    .line 92
    .local v2, path:Lgnu/text/Path;
    invoke-virtual {v2}, Lgnu/text/Path;->isAbsolute()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 93
    invoke-virtual {v2}, Lgnu/text/Path;->toURL()Ljava/net/URL;

    move-result-object v3

    .line 96
    .end local v0           #cur:Lgnu/text/Path;
    .end local v2           #path:Lgnu/text/Path;
    :goto_0
    return-object v3

    .line 94
    .restart local v0       #cur:Lgnu/text/Path;
    .restart local v2       #path:Lgnu/text/Path;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 96
    .end local v0           #cur:Lgnu/text/Path;
    .end local v2           #path:Lgnu/text/Path;
    :cond_1
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 98
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 100
    .local v1, ex:Ljava/lang/Throwable;
    invoke-static {v1}, Lgnu/mapping/WrappedException;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public static uriSchemeLength(Ljava/lang/String;)I
    .locals 5
    .parameter "uri"

    .prologue
    const/4 v4, -0x1

    .line 112
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 113
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_4

    .line 115
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 116
    .local v0, ch:C
    const/16 v3, 0x3a

    if-ne v0, v3, :cond_0

    move v3, v1

    .line 123
    .end local v0           #ch:C
    :goto_1
    return v3

    .line 118
    .restart local v0       #ch:C
    :cond_0
    if-nez v1, :cond_2

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_1
    move v3, v4

    .line 121
    goto :goto_1

    .line 118
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

    .line 113
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #ch:C
    :cond_4
    move v3, v4

    .line 123
    goto :goto_1
.end method

.method public static uriSchemeSpecified(Ljava/lang/String;)Z
    .locals 6
    .parameter "name"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 131
    invoke-static {p0}, Lgnu/text/Path;->uriSchemeLength(Ljava/lang/String;)I

    move-result v1

    .line 132
    .local v1, ulen:I
    if-ne v1, v5, :cond_3

    sget-char v2, Ljava/io/File;->separatorChar:C

    const/16 v3, 0x5c

    if-ne v2, v3, :cond_3

    .line 134
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 135
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

    .line 138
    .end local v0           #drive:C
    :goto_0
    return v2

    .restart local v0       #drive:C
    :cond_2
    move v2, v4

    .line 135
    goto :goto_0

    .line 138
    .end local v0           #drive:C
    :cond_3
    if-lez v1, :cond_4

    move v2, v5

    goto :goto_0

    :cond_4
    move v2, v4

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/Object;)Lgnu/text/Path;
    .locals 5
    .parameter "arg"

    .prologue
    .line 78
    invoke-static {p0}, Lgnu/text/Path;->coerceToPathOrNull(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v0

    .line 79
    .local v0, path:Lgnu/text/Path;
    if-nez v0, :cond_0

    .line 80
    new-instance v2, Lgnu/mapping/WrongType;

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    const/4 v3, -0x4

    const-string v4, "path"

    invoke-direct {v2, v1, v3, p0, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v2

    .line 81
    :cond_0
    return-object v0
.end method


# virtual methods
.method public delete()Z
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public exists()Z
    .locals 4

    .prologue
    .line 167
    invoke-virtual {p0}, Lgnu/text/Path;->getLastModified()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAbsolute()Lgnu/text/Path;
    .locals 1

    .prologue
    .line 385
    sget-object v0, Lgnu/text/Path;->userDirPath:Lgnu/text/FilePath;

    if-ne p0, v0, :cond_0

    .line 386
    const-string v0, ""

    invoke-virtual {p0, v0}, Lgnu/text/Path;->resolve(Ljava/lang/String;)Lgnu/text/Path;

    move-result-object v0

    .line 388
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lgnu/text/Path;->currentPath()Lgnu/text/Path;

    move-result-object v0

    invoke-virtual {v0, p0}, Lgnu/text/Path;->resolve(Lgnu/text/Path;)Lgnu/text/Path;

    move-result-object v0

    goto :goto_0
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCanonical()Lgnu/text/Path;
    .locals 1

    .prologue
    .line 393
    invoke-virtual {p0}, Lgnu/text/Path;->getAbsolute()Lgnu/text/Path;

    move-result-object v0

    return-object v0
.end method

.method public getCharContent(Z)Ljava/lang/CharSequence;
    .locals 1
    .parameter "ignoreEncodingErrors"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 318
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 174
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getDirectory()Lgnu/text/Path;
    .locals 1

    .prologue
    .line 198
    invoke-virtual {p0}, Lgnu/text/Path;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 201
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    invoke-virtual {p0, v0}, Lgnu/text/Path;->resolve(Ljava/lang/String;)Lgnu/text/Path;

    move-result-object v0

    goto :goto_0
.end method

.method public getExtension()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 235
    invoke-virtual {p0}, Lgnu/text/Path;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 236
    .local v3, p:Ljava/lang/String;
    if-nez v3, :cond_0

    move-object v5, v6

    .line 255
    :goto_0
    return-object v5

    .line 238
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 239
    .local v2, len:I
    move v1, v2

    .line 241
    .local v1, i:I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_2

    move-object v5, v6

    .line 242
    goto :goto_0

    .line 243
    :cond_2
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 244
    .local v0, c:C
    const/4 v4, 0x0

    .line 245
    .local v4, sawDot:Z
    const/16 v5, 0x2e

    if-ne v0, v5, :cond_3

    .line 247
    const/4 v5, 0x1

    sub-int v5, v1, v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 248
    const/4 v4, 0x1

    .line 250
    :cond_3
    const/16 v5, 0x2f

    if-eq v0, v5, :cond_4

    instance-of v5, p0, Lgnu/text/FilePath;

    if-eqz v5, :cond_5

    sget-char v5, Ljava/io/File;->separatorChar:C

    if-ne v0, v5, :cond_5

    :cond_4
    move-object v5, v6

    .line 253
    goto :goto_0

    .line 254
    :cond_5
    if-eqz v4, :cond_1

    .line 255
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public getFragment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLast()Ljava/lang/String;
    .locals 6

    .prologue
    .line 211
    invoke-virtual {p0}, Lgnu/text/Path;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 212
    .local v4, p:Ljava/lang/String;
    if-nez v4, :cond_0

    .line 213
    const/4 v5, 0x0

    .line 228
    :goto_0
    return-object v5

    .line 214
    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 215
    .local v3, len:I
    move v1, v3

    .line 216
    .local v1, end:I
    move v2, v3

    .line 218
    .local v2, i:I
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, -0x1

    if-gtz v2, :cond_2

    .line 219
    const-string v5, ""

    goto :goto_0

    .line 220
    :cond_2
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 221
    .local v0, c:C
    const/16 v5, 0x2f

    if-eq v0, v5, :cond_3

    instance-of v5, p0, Lgnu/text/FilePath;

    if-eqz v5, :cond_1

    sget-char v5, Ljava/io/File;->separatorChar:C

    if-ne v0, v5, :cond_1

    .line 225
    :cond_3
    add-int/lit8 v5, v2, 0x1

    if-ne v5, v3, :cond_4

    .line 226
    move v1, v2

    goto :goto_1

    .line 228
    :cond_4
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public abstract getLastModified()J
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 380
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lgnu/text/Path;
    .locals 1

    .prologue
    .line 206
    invoke-virtual {p0}, Lgnu/text/Path;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ".."

    :goto_0
    invoke-virtual {p0, v0}, Lgnu/text/Path;->resolve(Ljava/lang/String;)Lgnu/text/Path;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public abstract getPath()Ljava/lang/String;
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 261
    const/4 v0, -0x1

    return v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getScheme()Ljava/lang/String;
.end method

.method public getUserInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract isAbsolute()Z
.end method

.method public isDirectory()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 149
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, str:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 151
    .local v1, len:I
    if-lez v1, :cond_1

    .line 153
    sub-int v3, v1, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 154
    .local v0, last:C
    const/16 v3, 0x2f

    if-eq v0, v3, :cond_0

    sget-char v3, Ljava/io/File;->separatorChar:C

    if-ne v0, v3, :cond_1

    :cond_0
    move v3, v4

    .line 157
    .end local v0           #last:C
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public abstract openInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract openOutputStream()Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public openReader(Z)Ljava/io/Reader;
    .locals 1
    .parameter "ignoreEncodingErrors"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 306
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public openWriter()Ljava/io/Writer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 311
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0}, Lgnu/text/Path;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public resolve(Lgnu/text/Path;)Lgnu/text/Path;
    .locals 1
    .parameter "relative"

    .prologue
    .line 289
    invoke-virtual {p1}, Lgnu/text/Path;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 291
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/text/Path;->resolve(Ljava/lang/String;)Lgnu/text/Path;

    move-result-object v0

    goto :goto_0
.end method

.method public abstract resolve(Ljava/lang/String;)Lgnu/text/Path;
.end method

.method public final toURI()Ljava/net/URI;
    .locals 1

    .prologue
    .line 279
    invoke-virtual {p0}, Lgnu/text/Path;->toUri()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public toURIString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    invoke-virtual {p0}, Lgnu/text/Path;->toUri()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract toURL()Ljava/net/URL;
.end method

.method public abstract toUri()Ljava/net/URI;
.end method
