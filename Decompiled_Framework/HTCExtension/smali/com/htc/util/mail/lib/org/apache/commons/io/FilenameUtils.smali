.class public Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;
.super Ljava/lang/Object;
.source "FilenameUtils.java"


# static fields
.field public static final EXTENSION_SEPARATOR:C = '.'

.field public static final EXTENSION_SEPARATOR_STR:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field private static final OTHER_SEPARATOR:C = '\u0000'

#the value of this static final field might be set in the static constructor
.field private static final SYSTEM_SEPARATOR:C = '\u0000'

.field private static final UNIX_SEPARATOR:C = '/'

.field private static final WINDOWS_SEPARATOR:C = '\\'


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x2e

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->EXTENSION_SEPARATOR_STR:Ljava/lang/String;

    sget-char v0, Ljava/io/File;->separatorChar:C

    sput-char v0, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    invoke-static {}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->isSystemWindows()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2f

    sput-char v0, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->OTHER_SEPARATOR:C

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x5c

    sput-char v0, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->OTHER_SEPARATOR:C

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->getPrefixLength(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    if-lez v2, :cond_2

    invoke-static {p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->isSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static doGetFullPath(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez p0, :cond_1

    move-object p0, v3

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-static {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->getPrefixLength(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_2

    move-object p0, v3

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_3

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->indexOfLastSeparator(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_4

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    const/4 v3, 0x1

    :goto_1
    add-int v0, v1, v3

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_5
    move v3, v4

    goto :goto_1
.end method

.method private static doGetPath(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    invoke-static {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->getPrefixLength(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    invoke-static {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->indexOfLastSeparator(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    if-gez v0, :cond_3

    :cond_2
    const-string v2, ""

    goto :goto_0

    :cond_3
    add-int v2, v0, p1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static doNormalize(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 13

    const/4 v7, 0x0

    const/16 v12, 0x2e

    const/4 v11, 0x0

    if-nez p0, :cond_1

    move-object p0, v7

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->getPrefixLength(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_2

    move-object p0, v7

    goto :goto_0

    :cond_2
    add-int/lit8 v8, v5, 0x2

    new-array v0, v8, [C

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p0, v11, v8, v0, v11}, Ljava/lang/String;->getChars(II[CI)V

    const/4 v1, 0x0

    :goto_1
    array-length v8, v0

    if-ge v1, v8, :cond_4

    aget-char v8, v0, v1

    sget-char v9, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->OTHER_SEPARATOR:C

    if-ne v8, v9, :cond_3

    sget-char v8, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    aput-char v8, v0, v1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x1

    add-int/lit8 v8, v5, -0x1

    aget-char v8, v0, v8

    sget-char v9, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    if-eq v8, v9, :cond_5

    add-int/lit8 v6, v5, 0x1

    sget-char v8, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    aput-char v8, v0, v5

    const/4 v3, 0x0

    move v5, v6

    :cond_5
    add-int/lit8 v1, v4, 0x1

    :goto_2
    if-ge v1, v5, :cond_7

    aget-char v8, v0, v1

    sget-char v9, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    if-ne v8, v9, :cond_6

    add-int/lit8 v8, v1, -0x1

    aget-char v8, v0, v8

    sget-char v9, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    if-ne v8, v9, :cond_6

    add-int/lit8 v8, v1, -0x1

    sub-int v9, v5, v1

    invoke-static {v0, v1, v0, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v1, v1, -0x1

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    add-int/lit8 v1, v4, 0x1

    :goto_3
    if-ge v1, v5, :cond_b

    aget-char v8, v0, v1

    sget-char v9, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    if-ne v8, v9, :cond_a

    add-int/lit8 v8, v1, -0x1

    aget-char v8, v0, v8

    if-ne v8, v12, :cond_a

    add-int/lit8 v8, v4, 0x1

    if-eq v1, v8, :cond_8

    add-int/lit8 v8, v1, -0x2

    aget-char v8, v0, v8

    sget-char v9, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    if-ne v8, v9, :cond_a

    :cond_8
    add-int/lit8 v8, v5, -0x1

    if-ne v1, v8, :cond_9

    const/4 v3, 0x1

    :cond_9
    add-int/lit8 v8, v1, 0x1

    add-int/lit8 v9, v1, -0x1

    sub-int v10, v5, v1

    invoke-static {v0, v8, v0, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, v5, -0x2

    add-int/lit8 v1, v1, -0x1

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_b
    add-int/lit8 v1, v4, 0x2

    :goto_4
    if-ge v1, v5, :cond_12

    aget-char v8, v0, v1

    sget-char v9, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    if-ne v8, v9, :cond_f

    add-int/lit8 v8, v1, -0x1

    aget-char v8, v0, v8

    if-ne v8, v12, :cond_f

    add-int/lit8 v8, v1, -0x2

    aget-char v8, v0, v8

    if-ne v8, v12, :cond_f

    add-int/lit8 v8, v4, 0x2

    if-eq v1, v8, :cond_c

    add-int/lit8 v8, v1, -0x3

    aget-char v8, v0, v8

    sget-char v9, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    if-ne v8, v9, :cond_f

    :cond_c
    add-int/lit8 v8, v4, 0x2

    if-ne v1, v8, :cond_d

    move-object p0, v7

    goto/16 :goto_0

    :cond_d
    add-int/lit8 v8, v5, -0x1

    if-ne v1, v8, :cond_e

    const/4 v3, 0x1

    :cond_e
    add-int/lit8 v2, v1, -0x4

    :goto_5
    if-lt v2, v4, :cond_11

    aget-char v8, v0, v2

    sget-char v9, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    if-ne v8, v9, :cond_10

    add-int/lit8 v8, v1, 0x1

    add-int/lit8 v9, v2, 0x1

    sub-int v10, v5, v1

    invoke-static {v0, v8, v0, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int v8, v1, v2

    sub-int/2addr v5, v8

    add-int/lit8 v1, v2, 0x1

    :cond_f
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_10
    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    :cond_11
    add-int/lit8 v8, v1, 0x1

    sub-int v9, v5, v1

    invoke-static {v0, v8, v0, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v8, v1, 0x1

    sub-int/2addr v8, v4

    sub-int/2addr v5, v8

    add-int/lit8 v1, v4, 0x1

    goto :goto_6

    :cond_12
    if-gtz v5, :cond_13

    const-string p0, ""

    goto/16 :goto_0

    :cond_13
    if-gt v5, v4, :cond_14

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0, v11, v5}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_0

    :cond_14
    if-eqz v3, :cond_15

    if-eqz p1, :cond_15

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0, v11, v5}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_0

    :cond_15
    new-instance p0, Ljava/lang/String;

    add-int/lit8 v7, v5, -0x1

    invoke-direct {p0, v0, v11, v7}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_0
.end method

.method public static equals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;->SENSITIVE:Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;

    invoke-static {p0, p1, v0, v1}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->equals(Ljava/lang/String;Ljava/lang/String;ZLcom/htc/util/mail/lib/org/apache/commons/io/IOCase;)Z

    move-result v0

    return v0
.end method

.method public static equals(Ljava/lang/String;Ljava/lang/String;ZLcom/htc/util/mail/lib/org/apache/commons/io/IOCase;)Z
    .locals 2

    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_4

    invoke-static {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p0, :cond_3

    if-nez p1, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Error normalizing one or both of the file names"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    if-nez p3, :cond_5

    sget-object p3, Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;->SENSITIVE:Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;

    :cond_5
    invoke-virtual {p3, p0, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static equalsNormalized(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    sget-object v1, Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;->SENSITIVE:Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;

    invoke-static {p0, p1, v0, v1}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->equals(Ljava/lang/String;Ljava/lang/String;ZLcom/htc/util/mail/lib/org/apache/commons/io/IOCase;)Z

    move-result v0

    return v0
.end method

.method public static equalsNormalizedOnSystem(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    sget-object v1, Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;->SYSTEM:Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;

    invoke-static {p0, p1, v0, v1}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->equals(Ljava/lang/String;Ljava/lang/String;ZLcom/htc/util/mail/lib/org/apache/commons/io/IOCase;)Z

    move-result v0

    return v0
.end method

.method public static equalsOnSystem(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;->SYSTEM:Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;

    invoke-static {p0, p1, v0, v1}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->equals(Ljava/lang/String;Ljava/lang/String;ZLcom/htc/util/mail/lib/org/apache/commons/io/IOCase;)Z

    move-result v0

    return v0
.end method

.method public static getBaseName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->removeExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->indexOfExtension(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const-string v1, ""

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getFullPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->doGetFullPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFullPathNoEndSeparator(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->doGetFullPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->indexOfLastSeparator(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->doGetPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPathNoEndSeparator(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->doGetPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-static {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->getPrefixLength(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getPrefixLength(Ljava/lang/String;)I
    .locals 11

    const/16 v10, 0x2f

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x2

    const/4 v7, -0x1

    if-nez p0, :cond_1

    move v5, v7

    :cond_0
    :goto_0
    return v5

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    move v5, v6

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v9, 0x3a

    if-ne v0, v9, :cond_3

    move v5, v7

    goto :goto_0

    :cond_3
    if-ne v2, v5, :cond_5

    const/16 v7, 0x7e

    if-ne v0, v7, :cond_4

    move v5, v8

    goto :goto_0

    :cond_4
    invoke-static {v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->isSeparator(C)Z

    move-result v7

    if-nez v7, :cond_0

    move v5, v6

    goto :goto_0

    :cond_5
    const/16 v9, 0x7e

    if-ne v0, v9, :cond_9

    invoke-virtual {p0, v10, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    const/16 v6, 0x5c

    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-ne v3, v7, :cond_6

    if-ne v4, v7, :cond_6

    add-int/lit8 v5, v2, 0x1

    goto :goto_0

    :cond_6
    if-ne v3, v7, :cond_7

    move v3, v4

    :cond_7
    if-ne v4, v7, :cond_8

    move v4, v3

    :cond_8
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_9
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v9, 0x3a

    if-ne v1, v9, :cond_d

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    const/16 v5, 0x41

    if-lt v0, v5, :cond_c

    const/16 v5, 0x5a

    if-gt v0, v5, :cond_c

    if-eq v2, v8, :cond_a

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->isSeparator(C)Z

    move-result v5

    if-nez v5, :cond_b

    :cond_a
    move v5, v8

    goto :goto_0

    :cond_b
    const/4 v5, 0x3

    goto :goto_0

    :cond_c
    move v5, v7

    goto :goto_0

    :cond_d
    invoke-static {v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->isSeparator(C)Z

    move-result v9

    if-eqz v9, :cond_13

    invoke-static {v1}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->isSeparator(C)Z

    move-result v9

    if-eqz v9, :cond_13

    invoke-virtual {p0, v10, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    const/16 v5, 0x5c

    invoke-virtual {p0, v5, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-ne v3, v7, :cond_e

    if-eq v4, v7, :cond_f

    :cond_e
    if-eq v3, v8, :cond_f

    if-ne v4, v8, :cond_10

    :cond_f
    move v5, v7

    goto/16 :goto_0

    :cond_10
    if-ne v3, v7, :cond_11

    move v3, v4

    :cond_11
    if-ne v4, v7, :cond_12

    move v4, v3

    :cond_12
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_13
    invoke-static {v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->isSeparator(C)Z

    move-result v7

    if-nez v7, :cond_0

    move v5, v6

    goto/16 :goto_0
.end method

.method public static indexOfExtension(Ljava/lang/String;)I
    .locals 4

    const/4 v2, -0x1

    if-nez p0, :cond_0

    :goto_0
    return v2

    :cond_0
    const/16 v3, 0x2e

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    invoke-static {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->indexOfLastSeparator(Ljava/lang/String;)I

    move-result v1

    if-le v1, v0, :cond_1

    move v0, v2

    :cond_1
    move v2, v0

    goto :goto_0
.end method

.method public static indexOfLastSeparator(Ljava/lang/String;)I
    .locals 3

    if-nez p0, :cond_0

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/16 v2, 0x5c

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_0
.end method

.method public static isExtension(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    invoke-static {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->indexOfExtension(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isExtension(Ljava/lang/String;Ljava/util/Collection;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    invoke-static {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->indexOfExtension(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1

    :cond_4
    invoke-static {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v3, v2

    goto :goto_0
.end method

.method public static isExtension(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    if-eqz p1, :cond_2

    array-length v4, p1

    if-nez v4, :cond_4

    :cond_2
    invoke-static {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->indexOfExtension(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1

    :cond_4
    invoke-static {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_2
    array-length v4, p1

    if-ge v1, v4, :cond_0

    aget-object v4, p1, v1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v3, v2

    goto :goto_0

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private static isSeparator(C)Z
    .locals 1

    const/16 v0, 0x2f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x5c

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isSystemWindows()Z
    .locals 2

    sget-char v0, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->doNormalize(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static normalizeNoEndSeparator(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->doNormalize(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static removeExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_1

    const/4 p0, 0x0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-static {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->indexOfExtension(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static separatorsToSystem(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->isSystemWindows()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->separatorsToWindows(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->separatorsToUnix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static separatorsToUnix(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v2, 0x5c

    if-eqz p0, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    const/16 v0, 0x2f

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static separatorsToWindows(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v2, 0x2f

    if-eqz p0, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    const/16 v0, 0x5c

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method static splitOnTokens(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8

    const/16 v7, 0x3f

    const/4 v6, 0x0

    const/4 v5, -0x1

    const-string v4, "?"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v5, :cond_0

    const-string v4, "*"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p0, v4, v6

    :goto_0
    return-object v4

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    :goto_1
    array-length v4, v0

    if-ge v2, v4, :cond_7

    aget-char v4, v0, v2

    if-eq v4, v7, :cond_1

    aget-char v4, v0, v2

    const/16 v5, 0x2a

    if-ne v4, v5, :cond_6

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_2
    aget-char v4, v0, v2

    if-ne v4, v7, :cond_4

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_5

    if-lez v2, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_5
    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    aget-char v4, v0, v2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    check-cast v4, [Ljava/lang/String;

    goto :goto_0
.end method

.method public static wildcardMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;->SENSITIVE:Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;

    invoke-static {p0, p1, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->wildcardMatch(Ljava/lang/String;Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;)Z

    move-result v0

    return v0
.end method

.method public static wildcardMatch(Ljava/lang/String;Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;)Z
    .locals 11

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    move v7, v8

    :goto_0
    return v7

    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    move v7, v9

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    sget-object p2, Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;->SENSITIVE:Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;

    :cond_3
    invoke-virtual {p2, p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;->convertCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;->convertCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->splitOnTokens(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    :cond_4
    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v7

    if-lez v7, :cond_5

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    move-object v1, v7

    check-cast v1, [I

    aget v6, v1, v9

    aget v4, v1, v8

    const/4 v0, 0x1

    :cond_5
    :goto_1
    array-length v7, v5

    if-ge v6, v7, :cond_9

    aget-object v7, v5, v6

    const-string v10, "?"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    add-int/lit8 v4, v4, 0x1

    const/4 v0, 0x0

    :cond_6
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_7
    aget-object v7, v5, v6

    const-string v10, "*"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v0, 0x1

    array-length v7, v5

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    goto :goto_2

    :cond_8
    if-eqz v0, :cond_c

    aget-object v7, v5, v6

    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    const/4 v7, -0x1

    if-ne v4, v7, :cond_a

    :cond_9
    :goto_3
    array-length v7, v5

    if-ne v6, v7, :cond_d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v4, v7, :cond_d

    move v7, v8

    goto :goto_0

    :cond_a
    aget-object v7, v5, v6

    add-int/lit8 v10, v4, 0x1

    invoke-virtual {p0, v7, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-ltz v3, :cond_b

    const/4 v7, 0x2

    new-array v7, v7, [I

    aput v6, v7, v9

    aput v3, v7, v8

    invoke-virtual {v2, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    aget-object v7, v5, v6

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v4, v7

    const/4 v0, 0x0

    goto :goto_2

    :cond_c
    aget-object v7, v5, v6

    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_b

    goto :goto_3

    :cond_d
    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v7

    if-gtz v7, :cond_4

    move v7, v9

    goto/16 :goto_0
.end method

.method public static wildcardMatchOnSystem(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;->SYSTEM:Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;

    invoke-static {p0, p1, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->wildcardMatch(Ljava/lang/String;Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;)Z

    move-result v0

    return v0
.end method
