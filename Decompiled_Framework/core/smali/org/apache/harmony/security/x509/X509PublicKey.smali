.class public final Lorg/apache/harmony/security/x509/X509PublicKey;
.super Ljava/lang/Object;
.source "X509PublicKey.java"

# interfaces
.implements Ljava/security/PublicKey;


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final encoded:[B

.field private final keyBytes:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;[B[B)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/harmony/security/x509/X509PublicKey;->algorithm:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/harmony/security/x509/X509PublicKey;->encoded:[B

    iput-object p3, p0, Lorg/apache/harmony/security/x509/X509PublicKey;->keyBytes:[B

    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/X509PublicKey;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/X509PublicKey;->encoded:[B

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "X.509"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "algorithm = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/harmony/security/x509/X509PublicKey;->algorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", params unparsed, unparsed keybits = \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
