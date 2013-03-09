.class public Ljava/security/DigestInputStream;
.super Ljava/io/FilterInputStream;
.source "DigestInputStream.java"


# instance fields
.field protected digest:Ljava/security/MessageDigest;

.field private isOn:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/security/DigestInputStream;->isOn:Z

    iput-object p2, p0, Ljava/security/DigestInputStream;->digest:Ljava/security/MessageDigest;

    return-void
.end method


# virtual methods
.method public getMessageDigest()Ljava/security/MessageDigest;
    .locals 1

    iget-object v0, p0, Ljava/security/DigestInputStream;->digest:Ljava/security/MessageDigest;

    return-object v0
.end method

.method public on(Z)V
    .locals 0

    iput-boolean p1, p0, Ljava/security/DigestInputStream;->isOn:Z

    return-void
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Ljava/security/DigestInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    iget-boolean v1, p0, Ljava/security/DigestInputStream;->isOn:Z

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Ljava/security/DigestInputStream;->digest:Ljava/security/MessageDigest;

    int-to-byte v2, v0

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update(B)V

    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Ljava/security/DigestInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    iget-boolean v1, p0, Ljava/security/DigestInputStream;->isOn:Z

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Ljava/security/DigestInputStream;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v1, p1, p2, v0}, Ljava/security/MessageDigest;->update([BII)V

    :cond_0
    return v0
.end method

.method public setMessageDigest(Ljava/security/MessageDigest;)V
    .locals 0

    iput-object p1, p0, Ljava/security/DigestInputStream;->digest:Ljava/security/MessageDigest;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/security/DigestInputStream;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Ljava/security/DigestInputStream;->isOn:Z

    if-eqz v0, :cond_0

    const-string v0, ", is on"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ", is off"

    goto :goto_0
.end method
