.class public final Llibcore/net/url/UrlUtils;
.super Ljava/lang/Object;
.source "UrlUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static authoritySafePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public static canonicalizePath(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 9

    const/16 v8, 0x2f

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v1, v5, :cond_7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v1, v5, :cond_0

    move v2, v1

    :goto_1
    add-int/lit8 v5, v4, 0x1

    if-ne v1, v5, :cond_2

    const-string v5, "."

    const/4 v6, 0x1

    invoke-virtual {p0, v4, v5, v7, v6}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    move v1, v4

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v8, :cond_1

    add-int/lit8 v2, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v5, v4, 0x2

    if-ne v1, v5, :cond_5

    const-string v5, ".."

    const/4 v6, 0x2

    invoke-virtual {p0, v4, v5, v7, v6}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v5

    if-eqz v5, :cond_5

    if-gtz v0, :cond_3

    if-eqz p1, :cond_4

    :cond_3
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v5, v4, -0x2

    invoke-virtual {p0, v8, v5}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v5

    add-int/lit8 v3, v5, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    move v4, v3

    move v1, v3

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    move v4, v1

    goto :goto_0

    :cond_5
    if-lez v1, :cond_6

    add-int/lit8 v0, v0, 0x1

    :cond_6
    add-int/lit8 v1, v1, 0x1

    move v4, v1

    goto/16 :goto_0

    :cond_7
    return-object p0
.end method

.method public static findFirstOf(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 4

    move v1, p2

    :goto_0
    if-ge v1, p3, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, p3

    goto :goto_1
.end method

.method public static getSchemePrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v3, 0x0

    const/16 v4, 0x3a

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v4, 0x1

    if-ge v1, v4, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v2, v0}, Llibcore/net/url/UrlUtils;->isValidSchemeChar(IC)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static isValidSchemeChar(IC)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x61

    if-lt p1, v1, :cond_0

    const/16 v1, 0x7a

    if-le p1, v1, :cond_1

    :cond_0
    const/16 v1, 0x41

    if-lt p1, v1, :cond_2

    const/16 v1, 0x5a

    if-gt p1, v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    if-lez p0, :cond_4

    const/16 v1, 0x30

    if-lt p1, v1, :cond_3

    const/16 v1, 0x39

    if-le p1, v1, :cond_1

    :cond_3
    const/16 v1, 0x2b

    if-eq p1, v1, :cond_1

    const/16 v1, 0x2d

    if-eq p1, v1, :cond_1

    const/16 v1, 0x2e

    if-eq p1, v1, :cond_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method
