.class public Lorg/apache/http/impl/client/naf/wrapper/Cnonce;
.super Ljava/lang/Object;
.source "Cnonce.java"


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/http/impl/client/naf/wrapper/Cnonce;->value:Ljava/lang/String;

    return-void
.end method

.method public static create()Lorg/apache/http/impl/client/naf/wrapper/Cnonce;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lorg/apache/http/impl/client/naf/aka/Md5CalculatorImpl;

    invoke-direct {v3}, Lorg/apache/http/impl/client/naf/aka/Md5CalculatorImpl;-><init>()V

    invoke-interface {v3, v1}, Lorg/apache/http/impl/client/naf/aka/Md5Calculator;->calculate(Ljava/lang/String;)Lorg/apache/http/impl/client/naf/aka/Md5Result;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/http/impl/client/naf/aka/Md5Result;->getHexRepresentation()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lorg/apache/http/impl/client/naf/wrapper/Cnonce;

    invoke-direct {v0, v2}, Lorg/apache/http/impl/client/naf/wrapper/Cnonce;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static create(Ljava/lang/String;)Lorg/apache/http/impl/client/naf/wrapper/Cnonce;
    .locals 1

    new-instance v0, Lorg/apache/http/impl/client/naf/wrapper/Cnonce;

    invoke-direct {v0, p0}, Lorg/apache/http/impl/client/naf/wrapper/Cnonce;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/wrapper/Cnonce;->value:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cnonce [value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/wrapper/Cnonce;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
