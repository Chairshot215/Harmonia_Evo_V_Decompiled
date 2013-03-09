.class public final Lcom/google/wireless/gdata2/data/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 1
    .parameter "string"

    .prologue
    .line 20
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmptyOrWhitespace(Ljava/lang/String;)Z
    .locals 4
    .parameter "string"

    .prologue
    const/4 v2, 0x1

    .line 32
    if-nez p0, :cond_1

    .line 41
    :cond_0
    :goto_0
    return v2

    .line 35
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 36
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 37
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/google/wireless/gdata2/data/StringUtils;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_2

    .line 38
    const/4 v2, 0x0

    goto :goto_0

    .line 36
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static isWhitespace(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 72
    const/16 v0, 0x9

    if-gt v0, p0, :cond_0

    const/16 v0, 0xd

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x20

    if-eq p0, v0, :cond_2

    const/16 v0, 0x85

    if-eq p0, v0, :cond_2

    const/16 v0, 0xa0

    if-eq p0, v0, :cond_2

    const/16 v0, 0x1680

    if-eq p0, v0, :cond_2

    const/16 v0, 0x180e

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2000

    if-gt v0, p0, :cond_1

    const/16 v0, 0x200a

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x2028

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2029

    if-eq p0, v0, :cond_2

    const/16 v0, 0x202f

    if-eq p0, v0, :cond_2

    const/16 v0, 0x205f

    if-eq p0, v0, :cond_2

    const/16 v0, 0x3000

    if-ne p0, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseInt(Ljava/lang/String;I)I
    .locals 1
    .parameter "string"
    .parameter "defaultValue"

    .prologue
    .line 53
    if-eqz p0, :cond_0

    .line 55
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 60
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 56
    .restart local p1
    :catch_0
    move-exception v0

    goto :goto_0
.end method
