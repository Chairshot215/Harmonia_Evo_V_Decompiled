.class public Lorg/apache/xml/utils/SystemIDResolver;
.super Ljava/lang/Object;
.source "SystemIDResolver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAbsolutePathFromRelativePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAbsoluteURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v6, 0x5

    move-object v0, p0

    invoke-static {p0}, Lorg/apache/xml/utils/SystemIDResolver;->isAbsoluteURI(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "file:"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "///"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "//"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    const/16 v5, 0x3a

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-lez v3, :cond_1

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Lorg/apache/xml/utils/SystemIDResolver;->isAbsolutePath(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Lorg/apache/xml/utils/SystemIDResolver;->getAbsolutePathFromRelativePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_1
    invoke-static {v0}, Lorg/apache/xml/utils/SystemIDResolver;->replaceChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_2
    :goto_0
    return-object p0

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/xml/utils/SystemIDResolver;->getAbsoluteURIFromRelative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_4
    invoke-static {p0}, Lorg/apache/xml/utils/SystemIDResolver;->getAbsoluteURIFromRelative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getAbsoluteURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-static {p0}, Lorg/apache/xml/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    return-object v4

    :cond_0
    invoke-static {p1}, Lorg/apache/xml/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    :try_start_0
    new-instance v1, Lorg/apache/xml/utils/URI;

    invoke-direct {v1, v0}, Lorg/apache/xml/utils/URI;-><init>(Ljava/lang/String;)V

    new-instance v3, Lorg/apache/xml/utils/URI;

    invoke-direct {v3, v1, p0}, Lorg/apache/xml/utils/URI;-><init>(Lorg/apache/xml/utils/URI;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/xml/utils/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v3}, Lorg/apache/xml/utils/URI;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/xml/utils/SystemIDResolver;->replaceChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v4, Ljavax/xml/transform/TransformerException;

    invoke-direct {v4, v2}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public static getAbsoluteURIFromRelative(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const-string v3, ""

    :goto_0
    return-object v3

    :cond_1
    move-object v0, p0

    invoke-static {p0}, Lorg/apache/xml/utils/SystemIDResolver;->isAbsolutePath(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    :try_start_0
    invoke-static {p0}, Lorg/apache/xml/utils/SystemIDResolver;->getAbsolutePathFromRelativePath(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_4

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v2}, Lorg/apache/xml/utils/SystemIDResolver;->replaceChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file:///"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public static isAbsolutePath(Ljava/lang/String;)Z
    .locals 2

    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isAbsolute()Z

    move-result v1

    goto :goto_0
.end method

.method public static isAbsoluteURI(Ljava/lang/String;)Z
    .locals 7

    const/4 v5, 0x0

    invoke-static {p0}, Lorg/apache/xml/utils/SystemIDResolver;->isWindowsAbsolutePath(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    const/16 v6, 0x23

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/16 v6, 0x3f

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/16 v6, 0x2f

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/16 v6, 0x3a

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    if-lez v1, :cond_2

    move v2, v1

    :cond_2
    if-lez v3, :cond_3

    if-ge v3, v2, :cond_3

    move v2, v3

    :cond_3
    if-lez v4, :cond_4

    if-ge v4, v2, :cond_4

    move v2, v4

    :cond_4
    if-lez v0, :cond_0

    if-ge v0, v2, :cond_0

    const/4 v5, 0x1

    goto :goto_0
.end method

.method private static isWindowsAbsolutePath(Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v4, 0x2

    const/4 v0, 0x0

    invoke-static {p0}, Lorg/apache/xml/utils/SystemIDResolver;->isAbsolutePath(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5c

    if-eq v2, v3, :cond_2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private static replaceChars(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    const/16 v4, 0x20

    if-ne v1, v4, :cond_1

    const/16 v4, 0x25

    invoke-virtual {v0, v2, v4}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    add-int/lit8 v4, v2, 0x1

    const-string v5, "20"

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v2, v2, 0x2

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 v4, 0x5c

    if-ne v1, v4, :cond_0

    const/16 v4, 0x2f

    invoke-virtual {v0, v2, v4}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
