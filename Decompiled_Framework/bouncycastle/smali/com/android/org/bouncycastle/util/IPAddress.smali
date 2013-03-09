.class public Lcom/android/org/bouncycastle/util/IPAddress;
.super Ljava/lang/Object;
.source "IPAddress.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isMaskValue(Ljava/lang/String;I)Z
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-ltz v1, :cond_0

    if-gt v1, p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    :goto_0
    return v2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static isValid(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/IPAddress;->isValidIPv4(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/IPAddress;->isValidIPv6(Ljava/lang/String;)Z

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

.method public static isValidIPv4(Ljava/lang/String;)Z
    .locals 10

    const/4 v9, 0x4

    const/4 v6, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    const/4 v2, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v4, v7, :cond_2

    const/16 v7, 0x2e

    invoke-virtual {v5, v7, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-le v3, v4, :cond_2

    if-eq v2, v9, :cond_0

    :try_start_0
    invoke-virtual {v5, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-ltz v1, :cond_0

    const/16 v7, 0xff

    if-gt v1, v7, :cond_0

    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    if-ne v2, v9, :cond_0

    const/4 v6, 0x1

    goto :goto_0
.end method

.method public static isValidIPv4WithNetmask(Ljava/lang/String;)Z
    .locals 4

    const/4 v2, 0x0

    const-string v3, "/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    if-lez v0, :cond_1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/util/IPAddress;->isValidIPv4(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v1}, Lcom/android/org/bouncycastle/util/IPAddress;->isValidIPv4(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x20

    invoke-static {v1, v3}, Lcom/android/org/bouncycastle/util/IPAddress;->isMaskValue(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public static isValidIPv6(Ljava/lang/String;)Z
    .locals 13

    const/16 v12, 0x8

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_1

    :cond_0
    :goto_0
    return v8

    :cond_1
    const/4 v3, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x0

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v5, v10, :cond_6

    const/16 v10, 0x3a

    invoke-virtual {v6, v10, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-lt v4, v5, :cond_6

    if-eq v3, v12, :cond_0

    if-eq v5, v4, :cond_4

    invoke-virtual {v6, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ne v4, v10, :cond_3

    const/16 v10, 0x2e

    invoke-virtual {v7, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-lez v10, :cond_3

    invoke-static {v7}, Lcom/android/org/bouncycastle/util/IPAddress;->isValidIPv4(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_2
    :goto_2
    add-int/lit8 v5, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    :try_start_0
    invoke-virtual {v6, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x10

    invoke-static {v10, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ltz v2, :cond_0

    const v10, 0xffff

    if-le v2, v10, :cond_2

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_4
    if-eq v4, v9, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-eq v4, v10, :cond_5

    if-nez v0, :cond_0

    :cond_5
    const/4 v0, 0x1

    goto :goto_2

    :cond_6
    if-eq v3, v12, :cond_7

    if-eqz v0, :cond_0

    :cond_7
    move v8, v9

    goto :goto_0
.end method

.method public static isValidIPv6WithNetmask(Ljava/lang/String;)Z
    .locals 4

    const/4 v2, 0x0

    const-string v3, "/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    if-lez v0, :cond_1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/util/IPAddress;->isValidIPv6(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v1}, Lcom/android/org/bouncycastle/util/IPAddress;->isValidIPv6(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x80

    invoke-static {v1, v3}, Lcom/android/org/bouncycastle/util/IPAddress;->isMaskValue(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public static isValidWithNetMask(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/IPAddress;->isValidIPv4WithNetmask(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/IPAddress;->isValidIPv6WithNetmask(Ljava/lang/String;)Z

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
