.class public Lcom/htc/util/mail/lib/org/apache/commons/io/input/DemuxInputStream;
.super Ljava/io/InputStream;
.source "DemuxInputStream.java"


# instance fields
.field private m_streams:Ljava/lang/InheritableThreadLocal;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/InheritableThreadLocal;

    invoke-direct {v0}, Ljava/lang/InheritableThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/DemuxInputStream;->m_streams:Ljava/lang/InheritableThreadLocal;

    return-void
.end method

.method private getStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/DemuxInputStream;->m_streams:Ljava/lang/InheritableThreadLocal;

    invoke-virtual {v0}, Ljava/lang/InheritableThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    return-object v0
.end method


# virtual methods
.method public bindStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 2
    .parameter "input"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/input/DemuxInputStream;->getStream()Ljava/io/InputStream;

    move-result-object v0

    .line 43
    .local v0, oldValue:Ljava/io/InputStream;
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/DemuxInputStream;->m_streams:Ljava/lang/InheritableThreadLocal;

    invoke-virtual {v1, p1}, Ljava/lang/InheritableThreadLocal;->set(Ljava/lang/Object;)V

    .line 44
    return-object v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/input/DemuxInputStream;->getStream()Ljava/io/InputStream;

    move-result-object v0

    .line 56
    .local v0, input:Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 60
    :cond_0
    return-void
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/input/DemuxInputStream;->getStream()Ljava/io/InputStream;

    move-result-object v0

    .line 72
    .local v0, input:Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 78
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method
