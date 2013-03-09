.class public Lcom/android/org/bouncycastle/crypto/io/MacOutputStream;
.super Ljava/io/FilterOutputStream;
.source "MacOutputStream.java"


# instance fields
.field protected mac:Lcom/android/org/bouncycastle/crypto/Mac;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lcom/android/org/bouncycastle/crypto/Mac;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/io/MacOutputStream;->mac:Lcom/android/org/bouncycastle/crypto/Mac;

    return-void
.end method


# virtual methods
.method public getMac()Lcom/android/org/bouncycastle/crypto/Mac;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/io/MacOutputStream;->mac:Lcom/android/org/bouncycastle/crypto/Mac;

    return-object v0
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/io/MacOutputStream;->mac:Lcom/android/org/bouncycastle/crypto/Mac;

    int-to-byte v1, p1

    invoke-interface {v0, v1}, Lcom/android/org/bouncycastle/crypto/Mac;->update(B)V

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/io/MacOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/io/MacOutputStream;->mac:Lcom/android/org/bouncycastle/crypto/Mac;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/Mac;->update([BII)V

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/io/MacOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
