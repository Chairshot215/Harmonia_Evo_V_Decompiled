.class public Lkawa/TelnetOutputStream;
.super Ljava/io/FilterOutputStream;
.source "TelnetOutputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .parameter "out"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 15
    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 1
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19
    const/16 v0, 0xff

    if-ne p1, v0, :cond_0

    .line 20
    iget-object v0, p0, Lkawa/TelnetOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 21
    :cond_0
    iget-object v0, p0, Lkawa/TelnetOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 22
    return-void
.end method

.method public write([B)V
    .locals 2
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lkawa/TelnetOutputStream;->write([BII)V

    .line 27
    return-void
.end method

.method public write([BII)V
    .locals 4
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    add-int v1, p2, p3

    .line 33
    .local v1, limit:I
    move v0, p2

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 35
    aget-byte v2, p1, v0

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 38
    iget-object v2, p0, Lkawa/TelnetOutputStream;->out:Ljava/io/OutputStream;

    add-int/lit8 v3, v0, 0x1

    sub-int/2addr v3, p2

    invoke-virtual {v2, p1, p2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 41
    move p2, v0

    .line 33
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    :cond_1
    iget-object v2, p0, Lkawa/TelnetOutputStream;->out:Ljava/io/OutputStream;

    sub-int v3, v1, p2

    invoke-virtual {v2, p1, p2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 46
    return-void
.end method

.method public writeCommand(I)V
    .locals 2
    .parameter "code"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lkawa/TelnetOutputStream;->out:Ljava/io/OutputStream;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 51
    iget-object v0, p0, Lkawa/TelnetOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 52
    return-void
.end method

.method public final writeCommand(II)V
    .locals 2
    .parameter "code"
    .parameter "option"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lkawa/TelnetOutputStream;->out:Ljava/io/OutputStream;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 57
    iget-object v0, p0, Lkawa/TelnetOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 58
    iget-object v0, p0, Lkawa/TelnetOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write(I)V

    .line 59
    return-void
.end method

.method public final writeDo(I)V
    .locals 1
    .parameter "option"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    const/16 v0, 0xfd

    invoke-virtual {p0, v0, p1}, Lkawa/TelnetOutputStream;->writeCommand(II)V

    .line 64
    return-void
.end method

.method public final writeDont(I)V
    .locals 1
    .parameter "option"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    const/16 v0, 0xfe

    invoke-virtual {p0, v0, p1}, Lkawa/TelnetOutputStream;->writeCommand(II)V

    .line 69
    return-void
.end method

.method public final writeSubCommand(I[B)V
    .locals 1
    .parameter "option"
    .parameter "command"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    const/16 v0, 0xfa

    invoke-virtual {p0, v0, p1}, Lkawa/TelnetOutputStream;->writeCommand(II)V

    .line 85
    invoke-virtual {p0, p2}, Lkawa/TelnetOutputStream;->write([B)V

    .line 86
    const/16 v0, 0xf0

    invoke-virtual {p0, v0}, Lkawa/TelnetOutputStream;->writeCommand(I)V

    .line 87
    return-void
.end method

.method public final writeWill(I)V
    .locals 1
    .parameter "option"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    const/16 v0, 0xfb

    invoke-virtual {p0, v0, p1}, Lkawa/TelnetOutputStream;->writeCommand(II)V

    .line 74
    return-void
.end method

.method public final writeWont(I)V
    .locals 1
    .parameter "option"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    const/16 v0, 0xfc

    invoke-virtual {p0, v0, p1}, Lkawa/TelnetOutputStream;->writeCommand(II)V

    .line 79
    return-void
.end method
