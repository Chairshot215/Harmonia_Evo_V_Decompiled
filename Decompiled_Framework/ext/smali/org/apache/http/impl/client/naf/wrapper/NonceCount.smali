.class public Lorg/apache/http/impl/client/naf/wrapper/NonceCount;
.super Ljava/lang/Object;
.source "NonceCount.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/http/impl/client/naf/wrapper/NonceCount$NonceCountGenerator;
    }
.end annotation


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/http/impl/client/naf/wrapper/NonceCount;->value:Ljava/lang/String;

    return-void
.end method

.method public static create(Ljava/lang/String;)Lorg/apache/http/impl/client/naf/wrapper/NonceCount;
    .locals 1

    new-instance v0, Lorg/apache/http/impl/client/naf/wrapper/NonceCount;

    invoke-direct {v0, p0}, Lorg/apache/http/impl/client/naf/wrapper/NonceCount;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static createNext()Lorg/apache/http/impl/client/naf/wrapper/NonceCount;
    .locals 3

    new-instance v0, Lorg/apache/http/impl/client/naf/wrapper/NonceCount$NonceCountGenerator;

    invoke-direct {v0}, Lorg/apache/http/impl/client/naf/wrapper/NonceCount$NonceCountGenerator;-><init>()V

    invoke-virtual {v0}, Lorg/apache/http/impl/client/naf/wrapper/NonceCount$NonceCountGenerator;->getNextNc()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lorg/apache/http/impl/client/naf/wrapper/NonceCount;

    invoke-direct {v1, v2}, Lorg/apache/http/impl/client/naf/wrapper/NonceCount;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static createNext(Lorg/apache/http/impl/client/naf/wrapper/NonceCount;)Lorg/apache/http/impl/client/naf/wrapper/NonceCount;
    .locals 4

    if-nez p0, :cond_0

    invoke-static {}, Lorg/apache/http/impl/client/naf/wrapper/NonceCount;->createNext()Lorg/apache/http/impl/client/naf/wrapper/NonceCount;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    new-instance v0, Lorg/apache/http/impl/client/naf/wrapper/NonceCount$NonceCountGenerator;

    invoke-direct {v0}, Lorg/apache/http/impl/client/naf/wrapper/NonceCount$NonceCountGenerator;-><init>()V

    invoke-virtual {p0}, Lorg/apache/http/impl/client/naf/wrapper/NonceCount;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/http/impl/client/naf/wrapper/NonceCount$NonceCountGenerator;->getNextNc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lorg/apache/http/impl/client/naf/wrapper/NonceCount;

    invoke-direct {v1, v2}, Lorg/apache/http/impl/client/naf/wrapper/NonceCount;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/wrapper/NonceCount;->value:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NonceCount [value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/wrapper/NonceCount;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
