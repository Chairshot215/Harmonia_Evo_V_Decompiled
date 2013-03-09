.class Lcom/htc/encrypt/CipherGeneratorFactory;
.super Ljava/lang/Object;
.source "CipherGeneratorFactory.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCipherGeneratorByVersion(I)Lcom/htc/encrypt/CipherGenerator;
    .locals 3

    invoke-static {}, Lcom/htc/encrypt/CipherGeneratorFactory;->getDESedeCipherGenerator()Lcom/htc/encrypt/CipherGenerator;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/encrypt/CipherGenerator;->getVersion()B

    move-result v0

    if-ne p0, v0, :cond_0

    invoke-static {}, Lcom/htc/encrypt/CipherGeneratorFactory;->getDESedeCipherGenerator()Lcom/htc/encrypt/CipherGenerator;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There is no CipherGenerator related to version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getDESedeCipherGenerator()Lcom/htc/encrypt/CipherGenerator;
    .locals 1

    new-instance v0, Lcom/htc/encrypt/CipherGeneratorFactory$1;

    invoke-direct {v0}, Lcom/htc/encrypt/CipherGeneratorFactory$1;-><init>()V

    return-object v0
.end method
