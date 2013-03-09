.class final Llibcore/net/http/HeaderParser;
.super Ljava/lang/Object;
.source "HeaderParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/net/http/HeaderParser$CacheControlHandler;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseCacheControl(Ljava/lang/String;Llibcore/net/http/HeaderParser$CacheControlHandler;)V
    .locals 7

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_3

    move v4, v3

    const-string v5, "=,"

    invoke-static {p0, v3, v5}, Llibcore/net/http/HeaderParser;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v3, v5, :cond_0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2c

    if-ne v5, v6, :cond_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x0

    invoke-interface {p1, v0, v5}, Llibcore/net/http/HeaderParser$CacheControlHandler;->handle(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    invoke-static {p0, v3}, Llibcore/net/http/HeaderParser;->skipWhitespace(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x22

    if-ne v5, v6, :cond_2

    add-int/lit8 v3, v3, 0x1

    move v2, v3

    const-string v5, "\""

    invoke-static {p0, v3, v5}, Llibcore/net/http/HeaderParser;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v3, v3, 0x1

    :goto_1
    invoke-interface {p1, v0, v1}, Llibcore/net/http/HeaderParser$CacheControlHandler;->handle(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v2, v3

    const-string v5, ","

    invoke-static {p0, v3, v5}, Llibcore/net/http/HeaderParser;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public static parseSeconds(Ljava/lang/String;)I
    .locals 5

    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    const v3, 0x7fffffff

    :goto_0
    return v3

    :cond_0
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    long-to-int v3, v1

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v3, -0x1

    goto :goto_0
.end method

.method private static skipUntil(Ljava/lang/String;ILjava/lang/String;)I
    .locals 2

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    :cond_0
    return p1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method private static skipWhitespace(Ljava/lang/String;I)I
    .locals 2

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    :cond_0
    return p1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method
