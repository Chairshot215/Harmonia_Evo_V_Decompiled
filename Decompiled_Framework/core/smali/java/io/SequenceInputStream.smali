.class public Ljava/io/SequenceInputStream;
.super Ljava/io/InputStream;
.source "SequenceInputStream.java"


# instance fields
.field private e:Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Enumeration",
            "<+",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private in:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/InputStream;)V
    .locals 2

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_0
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    invoke-virtual {v0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    iput-object v1, p0, Ljava/io/SequenceInputStream;->e:Ljava/util/Enumeration;

    iput-object p1, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    return-void
.end method

.method public constructor <init>(Ljava/util/Enumeration;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Enumeration",
            "<+",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Ljava/io/SequenceInputStream;->e:Ljava/util/Enumeration;

    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    iput-object v0, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    iget-object v0, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method private nextStream()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    iget-object v0, p0, Ljava/io/SequenceInputStream;->e:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava/io/SequenceInputStream;->e:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    iput-object v0, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    iget-object v0, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    :cond_2
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/SequenceInputStream;->e:Ljava/util/Enumeration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ljava/io/SequenceInputStream;->nextStream()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/SequenceInputStream;->e:Ljava/util/Enumeration;

    return-void
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget-object v1, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    if-eqz v1, :cond_1

    iget-object v1, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_0

    :goto_1
    return v0

    :cond_0
    invoke-direct {p0}, Ljava/io/SequenceInputStream;->nextStream()V

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, -0x1

    iget-object v2, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    if-nez v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    array-length v2, p1

    invoke-static {v2, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    :goto_1
    iget-object v2, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    if-eqz v2, :cond_2

    iget-object v2, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-gez v0, :cond_0

    invoke-direct {p0}, Ljava/io/SequenceInputStream;->nextStream()V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method
