.class public Lcom/htc/util/mail/lib/org/apache/commons/io/LineIterator;
.super Ljava/lang/Object;
.source "LineIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private final bufferedReader:Ljava/io/BufferedReader;

.field private cachedLine:Ljava/lang/String;

.field private finished:Z


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 2
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/LineIterator;->finished:Z

    .line 69
    if-nez p1, :cond_0

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Reader must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    instance-of v0, p1, Ljava/io/BufferedReader;

    if-eqz v0, :cond_1

    .line 73
    check-cast p1, Ljava/io/BufferedReader;

    .end local p1
    iput-object p1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/LineIterator;->bufferedReader:Ljava/io/BufferedReader;

    .line 77
    :goto_0
    return-void

    .line 75
    .restart local p1
    :cond_1
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/LineIterator;->bufferedReader:Ljava/io/BufferedReader;

    goto :goto_0
.end method

.method public static closeQuietly(Lcom/htc/util/mail/lib/org/apache/commons/io/LineIterator;)V
    .locals 0
    .parameter "iterator"

    .prologue
    .line 176
    if-eqz p0, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/LineIterator;->close()V

    .line 179
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/LineIterator;->finished:Z

    .line 156
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/LineIterator;->bufferedReader:Ljava/io/BufferedReader;

    invoke-static {v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/LineIterator;->cachedLine:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public hasNext()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 89
    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/LineIterator;->cachedLine:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 102
    :goto_0
    return v2

    .line 91
    :cond_0
    iget-boolean v4, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/LineIterator;->finished:Z

    if-eqz v4, :cond_1

    move v2, v3

    .line 92
    goto :goto_0

    .line 96
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/LineIterator;->bufferedReader:Ljava/io/BufferedReader;

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, line:Ljava/lang/String;
    if-nez v1, :cond_2

    .line 98
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/LineIterator;->finished:Z

    move v2, v3

    .line 99
    goto :goto_0

    .line 100
    :cond_2
    invoke-virtual {p0, v1}, Lcom/htc/util/mail/lib/org/apache/commons/io/LineIterator;->isValidLine(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 101
    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/LineIterator;->cachedLine:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 105
    .end local v1           #line:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 106
    .local v0, ioe:Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/LineIterator;->close()V

    .line 107
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected isValidLine(Ljava/lang/String;)Z
    .locals 1
    .parameter "line"

    .prologue
    .line 119
    const/4 v0, 0x1

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/LineIterator;->nextLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextLine()Ljava/lang/String;
    .locals 3

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/LineIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 140
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "No more lines"

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/LineIterator;->cachedLine:Ljava/lang/String;

    .line 143
    .local v0, currentLine:Ljava/lang/String;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/LineIterator;->cachedLine:Ljava/lang/String;

    .line 144
    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 166
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Remove unsupported on LineIterator"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
