.class public Lgnu/text/URIPath;
.super Lgnu/text/Path;
.source "URIPath.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgnu/text/Path;",
        "Ljava/lang/Comparable",
        "<",
        "Lgnu/text/URIPath;",
        ">;"
    }
.end annotation


# instance fields
.field final uri:Ljava/net/URI;


# direct methods
.method constructor <init>(Ljava/net/URI;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 26
    invoke-direct {p0}, Lgnu/text/Path;-><init>()V

    iput-object p1, p0, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    return-void
.end method

.method public static coerceToURIPathOrNull(Ljava/lang/Object;)Lgnu/text/URIPath;
    .locals 3
    .parameter "path"

    .prologue
    .line 34
    instance-of v2, p0, Lgnu/text/URIPath;

    if-eqz v2, :cond_0

    .line 35
    check-cast p0, Lgnu/text/URIPath;

    .end local p0
    move-object v2, p0

    .line 49
    :goto_0
    return-object v2

    .line 36
    .restart local p0
    :cond_0
    instance-of v2, p0, Ljava/net/URL;

    if-eqz v2, :cond_1

    .line 37
    check-cast p0, Ljava/net/URL;

    .end local p0
    invoke-static {p0}, Lgnu/text/URLPath;->valueOf(Ljava/net/URL;)Lgnu/text/URLPath;

    move-result-object v2

    goto :goto_0

    .line 39
    .restart local p0
    :cond_1
    instance-of v2, p0, Ljava/net/URI;

    if-eqz v2, :cond_2

    .line 40
    check-cast p0, Ljava/net/URI;

    .end local p0
    invoke-static {p0}, Lgnu/text/URIPath;->valueOf(Ljava/net/URI;)Lgnu/text/URIPath;

    move-result-object v2

    goto :goto_0

    .line 43
    .restart local p0
    :cond_2
    instance-of v2, p0, Ljava/io/File;

    if-nez v2, :cond_3

    instance-of v2, p0, Lgnu/text/Path;

    if-nez v2, :cond_3

    instance-of v2, p0, Lgnu/lists/FString;

    if-eqz v2, :cond_4

    .line 44
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, str:Ljava/lang/String;
    :goto_1
    invoke-static {v1}, Lgnu/text/URIPath;->valueOf(Ljava/lang/String;)Lgnu/text/URIPath;

    move-result-object v2

    goto :goto_0

    .line 45
    .end local v1           #str:Ljava/lang/String;
    :cond_4
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 46
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .restart local v1       #str:Ljava/lang/String;
    goto :goto_1

    .line 48
    .end local v1           #str:Ljava/lang/String;
    :cond_5
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static encodeForUri(Ljava/lang/String;C)Ljava/lang/String;
    .locals 10
    .parameter "str"
    .parameter "mode"

    .prologue
    .line 323
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 324
    .local v8, sbuf:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 325
    .local v5, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v5, :cond_e

    .line 327
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 329
    .local v0, ch:I
    const v2, 0xd800

    if-lt v0, v2, :cond_10

    const v2, 0xdc00

    if-ge v0, v2, :cond_10

    if-ge v1, v5, :cond_10

    .line 330
    const v2, 0xd800

    sub-int/2addr v0, v2

    mul-int/lit16 v0, v0, 0x400

    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .end local v0           #ch:I
    move-result v1

    const v3, 0xdc00

    sub-int/2addr v1, v3

    add-int/2addr v0, v1

    const/high16 v1, 0x1

    add-int/2addr v0, v1

    .restart local v0       #ch:I
    move v3, v2

    .line 332
    .end local v2           #i:I
    .local v3, i:I
    :goto_1
    const/16 v1, 0x48

    if-ne p1, v1, :cond_1

    const/16 v1, 0x20

    if-lt v0, v1, :cond_5

    const/16 v1, 0x7e

    if-gt v0, v1, :cond_5

    .line 342
    :cond_0
    int-to-char v1, v0

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_2
    move v0, v3

    .line 381
    .end local v3           #i:I
    .local v0, i:I
    goto :goto_0

    .line 332
    .local v0, ch:I
    .restart local v3       #i:I
    :cond_1
    const/16 v1, 0x61

    if-lt v0, v1, :cond_2

    const/16 v1, 0x7a

    if-le v0, v1, :cond_0

    :cond_2
    const/16 v1, 0x41

    if-lt v0, v1, :cond_3

    const/16 v1, 0x5a

    if-le v0, v1, :cond_0

    :cond_3
    const/16 v1, 0x30

    if-lt v0, v1, :cond_4

    const/16 v1, 0x39

    if-le v0, v1, :cond_0

    :cond_4
    const/16 v1, 0x2d

    if-eq v0, v1, :cond_0

    const/16 v1, 0x5f

    if-eq v0, v1, :cond_0

    const/16 v1, 0x2e

    if-eq v0, v1, :cond_0

    const/16 v1, 0x7e

    if-eq v0, v1, :cond_0

    const/16 v1, 0x49

    if-ne p1, v1, :cond_5

    const/16 v1, 0x3b

    if-eq v0, v1, :cond_0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_0

    const/16 v1, 0x3f

    if-eq v0, v1, :cond_0

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_0

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_0

    const/16 v1, 0x27

    if-eq v0, v1, :cond_0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_0

    const/16 v1, 0x29

    if-eq v0, v1, :cond_0

    const/16 v1, 0x40

    if-eq v0, v1, :cond_0

    const/16 v1, 0x26

    if-eq v0, v1, :cond_0

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_0

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_0

    const/16 v1, 0x24

    if-eq v0, v1, :cond_0

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_0

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_0

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_0

    const/16 v1, 0x23

    if-eq v0, v1, :cond_0

    const/16 v1, 0x21

    if-eq v0, v1, :cond_0

    const/16 v1, 0x25

    if-eq v0, v1, :cond_0

    .line 345
    :cond_5
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    .line 346
    .local v7, pos:I
    const/4 v1, 0x0

    .line 347
    .local v1, nbytes:I
    const/16 v2, 0x80

    if-ge v0, v2, :cond_7

    const/4 v2, 0x1

    .local v2, needed:I
    :goto_3
    move v2, v1

    .end local v1           #nbytes:I
    .local v2, nbytes:I
    move v1, v0

    .line 354
    .end local v0           #ch:I
    .local v1, ch:I
    :goto_4
    if-nez v2, :cond_a

    const/4 v0, 0x7

    .line 356
    .local v0, availbits:I
    :goto_5
    const/4 v4, 0x1

    shl-int v0, v4, v0

    if-ge v1, v0, :cond_b

    .line 359
    .end local v0           #availbits:I
    move v0, v1

    .line 360
    .local v0, b:I
    if-lez v2, :cond_6

    .line 361
    const v1, 0xff80

    shr-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 362
    .end local v1           #ch:I
    :cond_6
    const/4 v1, 0x0

    .line 369
    .restart local v1       #ch:I
    :goto_6
    add-int/lit8 v6, v2, 0x1

    .line 370
    .end local v2           #nbytes:I
    .local v6, nbytes:I
    const/4 v2, 0x0

    .local v2, j:I
    move v4, v2

    .end local v2           #j:I
    .local v4, j:I
    :goto_7
    const/4 v2, 0x1

    if-gt v4, v2, :cond_d

    .line 372
    and-int/lit8 v2, v0, 0xf

    .line 373
    .local v2, hex:I
    const/16 v9, 0x9

    if-gt v2, v9, :cond_c

    add-int/lit8 v2, v2, 0x30

    .end local v2           #hex:I
    :goto_8
    int-to-char v2, v2

    invoke-virtual {v8, v7, v2}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 375
    shr-int/lit8 v0, v0, 0x4

    .line 370
    add-int/lit8 v2, v4, 0x1

    .end local v4           #j:I
    .local v2, j:I
    move v4, v2

    .end local v2           #j:I
    .restart local v4       #j:I
    goto :goto_7

    .line 347
    .end local v4           #j:I
    .end local v6           #nbytes:I
    .local v0, ch:I
    .local v1, nbytes:I
    :cond_7
    const/16 v2, 0x800

    if-ge v0, v2, :cond_8

    const/4 v2, 0x2

    goto :goto_3

    :cond_8
    const/high16 v2, 0x1

    if-ge v0, v2, :cond_9

    const/4 v2, 0x3

    goto :goto_3

    :cond_9
    const/4 v2, 0x4

    goto :goto_3

    .line 354
    .end local v0           #ch:I
    .local v1, ch:I
    .local v2, nbytes:I
    :cond_a
    const/4 v0, 0x6

    sub-int/2addr v0, v2

    goto :goto_5

    .line 366
    :cond_b
    and-int/lit8 v0, v1, 0x3f

    or-int/lit16 v0, v0, 0x80

    .line 367
    .local v0, b:I
    shr-int/lit8 v1, v1, 0x6

    goto :goto_6

    .line 373
    .local v2, hex:I
    .restart local v4       #j:I
    .restart local v6       #nbytes:I
    :cond_c
    const/16 v9, 0xa

    sub-int/2addr v2, v9

    add-int/lit8 v2, v2, 0x41

    goto :goto_8

    .line 377
    .end local v2           #hex:I
    :cond_d
    const/16 v0, 0x25

    invoke-virtual {v8, v7, v0}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 379
    .end local v0           #b:I
    if-nez v1, :cond_f

    move v0, v1

    .end local v1           #ch:I
    .local v0, ch:I
    goto/16 :goto_2

    .line 382
    .end local v3           #i:I
    .end local v4           #j:I
    .end local v6           #nbytes:I
    .end local v7           #pos:I
    .local v0, i:I
    :cond_e
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0
    return-object p0

    .end local v0           #i:I
    .restart local v1       #ch:I
    .restart local v3       #i:I
    .restart local v4       #j:I
    .restart local v6       #nbytes:I
    .restart local v7       #pos:I
    .restart local p0
    :cond_f
    move v2, v6

    .end local v6           #nbytes:I
    .local v2, nbytes:I
    goto :goto_4

    .end local v2           #nbytes:I
    .end local v3           #i:I
    .end local v4           #j:I
    .end local v7           #pos:I
    .local v0, ch:I
    .local v1, i:I
    :cond_10
    move v3, v1

    .end local v1           #i:I
    .restart local v3       #i:I
    goto/16 :goto_1
.end method

.method public static makeURI(Ljava/lang/Object;)Lgnu/text/URIPath;
    .locals 5
    .parameter "arg"

    .prologue
    .line 54
    invoke-static {p0}, Lgnu/text/URIPath;->coerceToURIPathOrNull(Ljava/lang/Object;)Lgnu/text/URIPath;

    move-result-object v0

    .line 55
    .local v0, path:Lgnu/text/URIPath;
    if-nez v0, :cond_0

    .line 56
    new-instance v2, Lgnu/mapping/WrongType;

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    const/4 v3, -0x4

    const-string v4, "URI"

    invoke-direct {v2, v1, v3, p0, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v2

    .line 57
    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lgnu/text/URIPath;
    .locals 4
    .parameter "uri"

    .prologue
    .line 70
    :try_start_0
    new-instance v1, Lgnu/text/URIStringPath;

    new-instance v2, Ljava/net/URI;

    const/16 v3, 0x49

    invoke-static {p0, v3}, Lgnu/text/URIPath;->encodeForUri(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, p0}, Lgnu/text/URIStringPath;-><init>(Ljava/net/URI;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 72
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 74
    .local v0, ex:Ljava/lang/Throwable;
    invoke-static {v0}, Lgnu/mapping/WrappedException;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static valueOf(Ljava/net/URI;)Lgnu/text/URIPath;
    .locals 1
    .parameter "uri"

    .prologue
    .line 62
    new-instance v0, Lgnu/text/URIPath;

    invoke-direct {v0, p0}, Lgnu/text/URIPath;-><init>(Ljava/net/URI;)V

    return-object v0
.end method


# virtual methods
.method public compareTo(Lgnu/text/URIPath;)I
    .locals 2
    .parameter "path"

    .prologue
    .line 190
    iget-object v0, p0, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    iget-object v1, p1, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    invoke-virtual {v0, v1}, Ljava/net/URI;->compareTo(Ljava/net/URI;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    check-cast p1, Lgnu/text/URIPath;

    .end local p1
    invoke-virtual {p0, p1}, Lgnu/text/URIPath;->compareTo(Lgnu/text/URIPath;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "obj"

    .prologue
    .line 202
    instance-of v0, p1, Lgnu/text/URIPath;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    check-cast p1, Lgnu/text/URIPath;

    .end local p1
    iget-object v1, p1, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    invoke-virtual {v0, v1}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

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
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 94
    :try_start_0
    invoke-virtual {p0}, Lgnu/text/URIPath;->toURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 95
    .local v0, conn:Ljava/net/URLConnection;
    instance-of v2, v0, Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_1

    .line 96
    check-cast v0, Ljava/net/HttpURLConnection;

    .end local v0           #conn:Ljava/net/URLConnection;
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    move v2, v7

    .line 103
    :goto_0
    return v2

    :cond_0
    move v2, v6

    .line 96
    goto :goto_0

    .line 99
    .restart local v0       #conn:Ljava/net/URLConnection;
    :cond_1
    invoke-virtual {v0}, Ljava/net/URLConnection;->getLastModified()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    move v2, v7

    goto :goto_0

    :cond_2
    move v2, v6

    goto :goto_0

    .line 101
    .end local v0           #conn:Ljava/net/URLConnection;
    :catch_0
    move-exception v2

    move-object v1, v2

    .local v1, ex:Ljava/lang/Throwable;
    move v2, v6

    .line 103
    goto :goto_0
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCanonical()Lgnu/text/Path;
    .locals 2

    .prologue
    .line 306
    invoke-virtual {p0}, Lgnu/text/URIPath;->isAbsolute()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 309
    iget-object v1, p0, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v0

    .line 310
    .local v0, norm:Ljava/net/URI;
    iget-object v1, p0, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    if-ne v0, v1, :cond_0

    move-object v1, p0

    .line 318
    .end local v0           #norm:Ljava/net/URI;
    :goto_0
    return-object v1

    .line 312
    .restart local v0       #norm:Ljava/net/URI;
    :cond_0
    invoke-static {v0}, Lgnu/text/URIPath;->valueOf(Ljava/net/URI;)Lgnu/text/URIPath;

    move-result-object v1

    goto :goto_0

    .line 318
    .end local v0           #norm:Ljava/net/URI;
    :cond_1
    invoke-virtual {p0}, Lgnu/text/URIPath;->getAbsolute()Lgnu/text/Path;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/text/Path;->getCanonical()Lgnu/text/Path;

    move-result-object v1

    goto :goto_0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 114
    invoke-virtual {p0}, Lgnu/text/URIPath;->toURL()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lgnu/text/URLPath;->getContentLength(Ljava/net/URL;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getFragment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastModified()J
    .locals 2

    .prologue
    .line 109
    invoke-virtual {p0}, Lgnu/text/URIPath;->toURL()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lgnu/text/URLPath;->getLastModified(Ljava/net/URL;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v0

    return v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAbsolute()Z
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->isAbsolute()Z

    move-result v0

    return v0
.end method

.method public openInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    invoke-virtual {p0}, Lgnu/text/URIPath;->toURL()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lgnu/text/URLPath;->openInputStream(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public openOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 228
    invoke-virtual {p0}, Lgnu/text/URIPath;->toURL()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lgnu/text/URLPath;->openOutputStream(Ljava/net/URL;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public resolve(Ljava/lang/String;)Lgnu/text/Path;
    .locals 8
    .parameter "rstr"

    .prologue
    const/16 v7, 0x2f

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 127
    invoke-static {p1}, Lgnu/text/Path;->uriSchemeSpecified(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 128
    invoke-static {p1}, Lgnu/text/URIPath;->valueOf(Ljava/lang/String;)Lgnu/text/URIPath;

    move-result-object v3

    .line 185
    :goto_0
    return-object v3

    .line 129
    :cond_0
    sget-char v1, Ljava/io/File;->separatorChar:C

    .line 130
    .local v1, fileSep:C
    if-eq v1, v7, :cond_4

    .line 133
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_3

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v1, :cond_3

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v1, :cond_3

    .line 137
    :cond_2
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lgnu/text/FilePath;->valueOf(Ljava/io/File;)Lgnu/text/FilePath;

    move-result-object v3

    goto :goto_0

    .line 139
    :cond_3
    invoke-virtual {p1, v1, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 145
    :cond_4
    :try_start_0
    iget-object v3, p0, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    new-instance v4, Ljava/net/URI;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v4, v5, p1, v6}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 185
    .local v2, resolved:Ljava/net/URI;
    invoke-static {v2}, Lgnu/text/URIPath;->valueOf(Ljava/net/URI;)Lgnu/text/URIPath;

    move-result-object v3

    goto :goto_0

    .line 147
    .end local v2           #resolved:Ljava/net/URI;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 149
    .local v0, ex:Ljava/lang/Throwable;
    invoke-static {v0}, Lgnu/mapping/WrappedException;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    invoke-virtual {p0}, Lgnu/text/URIPath;->toURIString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toURIString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toURL()Ljava/net/URL;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgnu/text/Path;->toURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public toUri()Ljava/net/URI;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    return-object v0
.end method
