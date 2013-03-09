.class public final Ljava/security/SignedObject;
.super Ljava/lang/Object;
.source "SignedObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x9ffbd682a3cd5ffL


# instance fields
.field private content:[B

.field private signature:[B

.field private thealgorithm:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/Serializable;Ljava/security/PrivateKey;Ljava/security/Signature;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Ljava/security/SignedObject;->content:[B

    invoke-virtual {p3, p2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    invoke-virtual {p3}, Ljava/security/Signature;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/security/SignedObject;->thealgorithm:Ljava/lang/String;

    iget-object v2, p0, Ljava/security/SignedObject;->content:[B

    invoke-virtual {p3, v2}, Ljava/security/Signature;->update([B)V

    invoke-virtual {p3}, Ljava/security/Signature;->sign()[B

    move-result-object v2

    iput-object v2, p0, Ljava/security/SignedObject;->signature:[B

    return-void

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    throw v2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    iget-object v1, p0, Ljava/security/SignedObject;->content:[B

    array-length v1, v1

    new-array v0, v1, [B

    iget-object v1, p0, Ljava/security/SignedObject;->content:[B

    iget-object v2, p0, Ljava/security/SignedObject;->content:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Ljava/security/SignedObject;->content:[B

    iget-object v1, p0, Ljava/security/SignedObject;->signature:[B

    array-length v1, v1

    new-array v0, v1, [B

    iget-object v1, p0, Ljava/security/SignedObject;->signature:[B

    iget-object v2, p0, Ljava/security/SignedObject;->signature:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Ljava/security/SignedObject;->signature:[B

    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/security/SignedObject;->thealgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/io/ObjectInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Ljava/security/SignedObject;->content:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V

    throw v1
.end method

.method public getSignature()[B
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Ljava/security/SignedObject;->signature:[B

    array-length v1, v1

    new-array v0, v1, [B

    iget-object v1, p0, Ljava/security/SignedObject;->signature:[B

    iget-object v2, p0, Ljava/security/SignedObject;->signature:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public verify(Ljava/security/PublicKey;Ljava/security/Signature;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    invoke-virtual {p2, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    iget-object v0, p0, Ljava/security/SignedObject;->content:[B

    invoke-virtual {p2, v0}, Ljava/security/Signature;->update([B)V

    iget-object v0, p0, Ljava/security/SignedObject;->signature:[B

    invoke-virtual {p2, v0}, Ljava/security/Signature;->verify([B)Z

    move-result v0

    return v0
.end method
