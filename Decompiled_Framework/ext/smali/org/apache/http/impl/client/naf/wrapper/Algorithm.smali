.class public Lorg/apache/http/impl/client/naf/wrapper/Algorithm;
.super Ljava/lang/Object;
.source "Algorithm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/http/impl/client/naf/wrapper/Algorithm$AlgorithmValues;
    }
.end annotation


# static fields
.field private static final AKA_SPLITTER:Ljava/lang/String; = "-"

.field private static final AKA_VERSION:Ljava/lang/String; = "AKAv"

.field private static final ALGORITHM_NAME_MD5:Ljava/lang/String; = "MD5"

.field private static final ALGORITHM_NAME_MD5_SESS:Ljava/lang/String; = "MD5-sess"


# instance fields
.field private final akaVersion:Ljava/lang/String;

.field private final algorithmFromResponse:Ljava/lang/String;

.field private final value:Lorg/apache/http/impl/client/naf/wrapper/Algorithm$AlgorithmValues;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lorg/apache/http/impl/client/naf/wrapper/Algorithm$AlgorithmValues;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/http/impl/client/naf/wrapper/Algorithm;->akaVersion:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/http/impl/client/naf/wrapper/Algorithm;->value:Lorg/apache/http/impl/client/naf/wrapper/Algorithm$AlgorithmValues;

    iput-object p3, p0, Lorg/apache/http/impl/client/naf/wrapper/Algorithm;->algorithmFromResponse:Ljava/lang/String;

    return-void
.end method

.method public static parseServerAlgorithm(Ljava/lang/String;)Lorg/apache/http/impl/client/naf/wrapper/Algorithm;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const-string v4, "AKAv"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "-"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    move-object v1, p0

    :cond_2
    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    new-instance v2, Lorg/apache/http/impl/client/naf/wrapper/Algorithm;

    sget-object v4, Lorg/apache/http/impl/client/naf/wrapper/Algorithm$AlgorithmValues;->ALGORITHM_UNSPECIFIED:Lorg/apache/http/impl/client/naf/wrapper/Algorithm$AlgorithmValues;

    invoke-direct {v2, v0, v4, p0}, Lorg/apache/http/impl/client/naf/wrapper/Algorithm;-><init>(Ljava/lang/String;Lorg/apache/http/impl/client/naf/wrapper/Algorithm$AlgorithmValues;Ljava/lang/String;)V

    :goto_0
    return-object v2

    :cond_4
    sget-object v4, Lorg/apache/http/impl/client/naf/wrapper/Algorithm$AlgorithmValues;->ALGORITHM_MD5:Lorg/apache/http/impl/client/naf/wrapper/Algorithm$AlgorithmValues;

    invoke-virtual {v4}, Lorg/apache/http/impl/client/naf/wrapper/Algorithm$AlgorithmValues;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v2, Lorg/apache/http/impl/client/naf/wrapper/Algorithm;

    sget-object v4, Lorg/apache/http/impl/client/naf/wrapper/Algorithm$AlgorithmValues;->ALGORITHM_MD5:Lorg/apache/http/impl/client/naf/wrapper/Algorithm$AlgorithmValues;

    invoke-direct {v2, v0, v4, p0}, Lorg/apache/http/impl/client/naf/wrapper/Algorithm;-><init>(Ljava/lang/String;Lorg/apache/http/impl/client/naf/wrapper/Algorithm$AlgorithmValues;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    sget-object v4, Lorg/apache/http/impl/client/naf/wrapper/Algorithm$AlgorithmValues;->ALGORITHM_MD5_SESS:Lorg/apache/http/impl/client/naf/wrapper/Algorithm$AlgorithmValues;

    invoke-virtual {v4}, Lorg/apache/http/impl/client/naf/wrapper/Algorithm$AlgorithmValues;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v2, Lorg/apache/http/impl/client/naf/wrapper/Algorithm;

    sget-object v4, Lorg/apache/http/impl/client/naf/wrapper/Algorithm$AlgorithmValues;->ALGORITHM_MD5_SESS:Lorg/apache/http/impl/client/naf/wrapper/Algorithm$AlgorithmValues;

    invoke-direct {v2, v0, v4, p0}, Lorg/apache/http/impl/client/naf/wrapper/Algorithm;-><init>(Ljava/lang/String;Lorg/apache/http/impl/client/naf/wrapper/Algorithm$AlgorithmValues;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    new-instance v2, Lorg/apache/http/impl/client/naf/wrapper/Algorithm;

    sget-object v4, Lorg/apache/http/impl/client/naf/wrapper/Algorithm$AlgorithmValues;->ALGORITHM_UNKNOWN_NOT_EMPTY:Lorg/apache/http/impl/client/naf/wrapper/Algorithm$AlgorithmValues;

    invoke-direct {v2, v0, v4, p0}, Lorg/apache/http/impl/client/naf/wrapper/Algorithm;-><init>(Ljava/lang/String;Lorg/apache/http/impl/client/naf/wrapper/Algorithm$AlgorithmValues;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getAkaVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/wrapper/Algorithm;->akaVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getAlgorithmFromResponse()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/wrapper/Algorithm;->algorithmFromResponse:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/wrapper/Algorithm;->value:Lorg/apache/http/impl/client/naf/wrapper/Algorithm$AlgorithmValues;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/naf/wrapper/Algorithm$AlgorithmValues;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isMd5()Z
    .locals 3

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/wrapper/Algorithm;->value:Lorg/apache/http/impl/client/naf/wrapper/Algorithm$AlgorithmValues;

    sget-object v2, Lorg/apache/http/impl/client/naf/wrapper/Algorithm$AlgorithmValues;->ALGORITHM_MD5:Lorg/apache/http/impl/client/naf/wrapper/Algorithm$AlgorithmValues;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMd5Sess()Z
    .locals 3

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/wrapper/Algorithm;->value:Lorg/apache/http/impl/client/naf/wrapper/Algorithm$AlgorithmValues;

    sget-object v2, Lorg/apache/http/impl/client/naf/wrapper/Algorithm$AlgorithmValues;->ALGORITHM_MD5_SESS:Lorg/apache/http/impl/client/naf/wrapper/Algorithm$AlgorithmValues;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnspecified()Z
    .locals 3

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/wrapper/Algorithm;->value:Lorg/apache/http/impl/client/naf/wrapper/Algorithm$AlgorithmValues;

    sget-object v2, Lorg/apache/http/impl/client/naf/wrapper/Algorithm$AlgorithmValues;->ALGORITHM_UNSPECIFIED:Lorg/apache/http/impl/client/naf/wrapper/Algorithm$AlgorithmValues;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Algorithm [value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/wrapper/Algorithm;->value:Lorg/apache/http/impl/client/naf/wrapper/Algorithm$AlgorithmValues;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", akaVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/wrapper/Algorithm;->akaVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", algorithmFromResponse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/wrapper/Algorithm;->algorithmFromResponse:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
