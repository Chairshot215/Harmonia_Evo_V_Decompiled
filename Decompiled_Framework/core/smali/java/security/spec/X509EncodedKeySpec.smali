.class public Ljava/security/spec/X509EncodedKeySpec;
.super Ljava/security/spec/EncodedKeySpec;
.source "X509EncodedKeySpec.java"


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/security/spec/EncodedKeySpec;-><init>([B)V

    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 1

    invoke-super {p0}, Ljava/security/spec/EncodedKeySpec;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public final getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "X.509"

    return-object v0
.end method
