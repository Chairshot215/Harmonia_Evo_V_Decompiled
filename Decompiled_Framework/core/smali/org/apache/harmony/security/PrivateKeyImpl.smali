.class public Lorg/apache/harmony/security/PrivateKeyImpl;
.super Ljava/lang/Object;
.source "PrivateKeyImpl.java"

# interfaces
.implements Ljava/security/PrivateKey;


# static fields
.field private static final serialVersionUID:J = 0x6bebab423b256247L


# instance fields
.field private algorithm:Ljava/lang/String;

.field private encoding:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/harmony/security/PrivateKeyImpl;->algorithm:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/PrivateKeyImpl;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lorg/apache/harmony/security/PrivateKeyImpl;->encoding:[B

    array-length v1, v1

    new-array v0, v1, [B

    iget-object v1, p0, Lorg/apache/harmony/security/PrivateKeyImpl;->encoding:[B

    iget-object v2, p0, Lorg/apache/harmony/security/PrivateKeyImpl;->encoding:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "PKCS#8"

    return-object v0
.end method

.method public setAlgorithm(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/harmony/security/PrivateKeyImpl;->algorithm:Ljava/lang/String;

    return-void
.end method

.method public setEncoding([B)V
    .locals 3

    const/4 v2, 0x0

    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/harmony/security/PrivateKeyImpl;->encoding:[B

    iget-object v0, p0, Lorg/apache/harmony/security/PrivateKeyImpl;->encoding:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
