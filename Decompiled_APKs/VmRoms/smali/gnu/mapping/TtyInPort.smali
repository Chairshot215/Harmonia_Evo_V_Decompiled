.class public Lgnu/mapping/TtyInPort;
.super Lgnu/mapping/InPort;
.source "TtyInPort.java"


# instance fields
.field protected promptEmitted:Z

.field protected prompter:Lgnu/mapping/Procedure;

.field protected tie:Lgnu/mapping/OutPort;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lgnu/text/Path;Lgnu/mapping/OutPort;)V
    .locals 1
    .parameter "in"
    .parameter "name"
    .parameter "tie"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lgnu/mapping/InPort;-><init>(Ljava/io/InputStream;Lgnu/text/Path;)V

    .line 31
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgnu/mapping/TtyInPort;->setConvertCR(Z)V

    .line 32
    iput-object p3, p0, Lgnu/mapping/TtyInPort;->tie:Lgnu/mapping/OutPort;

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Lgnu/text/Path;Lgnu/mapping/OutPort;)V
    .locals 1
    .parameter "in"
    .parameter "name"
    .parameter "tie"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lgnu/mapping/InPort;-><init>(Ljava/io/Reader;Lgnu/text/Path;)V

    .line 38
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgnu/mapping/TtyInPort;->setConvertCR(Z)V

    .line 39
    iput-object p3, p0, Lgnu/mapping/TtyInPort;->tie:Lgnu/mapping/OutPort;

    .line 40
    return-void
.end method


# virtual methods
.method public emitPrompt(Ljava/lang/String;)V
    .locals 1
    .parameter "prompt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lgnu/mapping/TtyInPort;->tie:Lgnu/mapping/OutPort;

    invoke-virtual {v0, p1}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lgnu/mapping/TtyInPort;->tie:Lgnu/mapping/OutPort;

    invoke-virtual {v0}, Lgnu/mapping/OutPort;->flush()V

    .line 56
    iget-object v0, p0, Lgnu/mapping/TtyInPort;->tie:Lgnu/mapping/OutPort;

    invoke-virtual {v0}, Lgnu/mapping/OutPort;->clearBuffer()V

    .line 57
    return-void
.end method

.method public fill(I)I
    .locals 4
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    iget-object v1, p0, Lgnu/mapping/TtyInPort;->in:Ljava/io/Reader;

    iget-object v2, p0, Lgnu/mapping/TtyInPort;->buffer:[C

    iget v3, p0, Lgnu/mapping/TtyInPort;->pos:I

    invoke-virtual {v1, v2, v3, p1}, Ljava/io/Reader;->read([CII)I

    move-result v0

    .line 47
    .local v0, count:I
    iget-object v1, p0, Lgnu/mapping/TtyInPort;->tie:Lgnu/mapping/OutPort;

    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    .line 48
    iget-object v1, p0, Lgnu/mapping/TtyInPort;->tie:Lgnu/mapping/OutPort;

    iget-object v2, p0, Lgnu/mapping/TtyInPort;->buffer:[C

    iget v3, p0, Lgnu/mapping/TtyInPort;->pos:I

    invoke-virtual {v1, v2, v3, v0}, Lgnu/mapping/OutPort;->echo([CII)V

    .line 49
    :cond_0
    return v0
.end method

.method public getPrompter()Lgnu/mapping/Procedure;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lgnu/mapping/TtyInPort;->prompter:Lgnu/mapping/Procedure;

    return-object v0
.end method

.method public lineStart(Z)V
    .locals 6
    .parameter "revisited"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    if-nez p1, :cond_1

    .line 63
    iget-object v3, p0, Lgnu/mapping/TtyInPort;->tie:Lgnu/mapping/OutPort;

    if-eqz v3, :cond_0

    .line 64
    iget-object v3, p0, Lgnu/mapping/TtyInPort;->tie:Lgnu/mapping/OutPort;

    invoke-virtual {v3}, Lgnu/mapping/OutPort;->freshLine()V

    .line 65
    :cond_0
    iget-object v3, p0, Lgnu/mapping/TtyInPort;->prompter:Lgnu/mapping/Procedure;

    if-eqz v3, :cond_1

    .line 69
    :try_start_0
    iget-object v3, p0, Lgnu/mapping/TtyInPort;->prompter:Lgnu/mapping/Procedure;

    invoke-virtual {v3, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 70
    .local v1, prompt:Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 72
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, string:Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 75
    invoke-virtual {p0, v2}, Lgnu/mapping/TtyInPort;->emitPrompt(Ljava/lang/String;)V

    .line 76
    const/4 v3, 0x1

    iput-boolean v3, p0, Lgnu/mapping/TtyInPort;->promptEmitted:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .end local v1           #prompt:Ljava/lang/Object;
    .end local v2           #string:Ljava/lang/String;
    :cond_1
    return-void

    .line 80
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 81
    .local v0, ex:Ljava/lang/Throwable;
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error when evaluating prompt:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 89
    iget-object v1, p0, Lgnu/mapping/TtyInPort;->tie:Lgnu/mapping/OutPort;

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lgnu/mapping/TtyInPort;->tie:Lgnu/mapping/OutPort;

    invoke-virtual {v1}, Lgnu/mapping/OutPort;->flush()V

    .line 91
    :cond_0
    invoke-super {p0}, Lgnu/mapping/InPort;->read()I

    move-result v0

    .line 92
    .local v0, ch:I
    if-gez v0, :cond_1

    .line 94
    iget-boolean v1, p0, Lgnu/mapping/TtyInPort;->promptEmitted:Z

    iget-object v2, p0, Lgnu/mapping/TtyInPort;->tie:Lgnu/mapping/OutPort;

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 95
    iget-object v1, p0, Lgnu/mapping/TtyInPort;->tie:Lgnu/mapping/OutPort;

    invoke-virtual {v1}, Lgnu/mapping/OutPort;->println()V

    .line 97
    :cond_1
    iput-boolean v3, p0, Lgnu/mapping/TtyInPort;->promptEmitted:Z

    .line 98
    return v0

    :cond_2
    move v2, v3

    .line 94
    goto :goto_0
.end method

.method public read([CII)I
    .locals 4
    .parameter "cbuf"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 103
    iget-object v1, p0, Lgnu/mapping/TtyInPort;->tie:Lgnu/mapping/OutPort;

    if-eqz v1, :cond_0

    .line 104
    iget-object v1, p0, Lgnu/mapping/TtyInPort;->tie:Lgnu/mapping/OutPort;

    invoke-virtual {v1}, Lgnu/mapping/OutPort;->flush()V

    .line 105
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lgnu/mapping/InPort;->read([CII)I

    move-result v0

    .line 106
    .local v0, count:I
    if-gez v0, :cond_1

    iget-boolean v1, p0, Lgnu/mapping/TtyInPort;->promptEmitted:Z

    iget-object v2, p0, Lgnu/mapping/TtyInPort;->tie:Lgnu/mapping/OutPort;

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 107
    iget-object v1, p0, Lgnu/mapping/TtyInPort;->tie:Lgnu/mapping/OutPort;

    invoke-virtual {v1}, Lgnu/mapping/OutPort;->println()V

    .line 108
    :cond_1
    iput-boolean v3, p0, Lgnu/mapping/TtyInPort;->promptEmitted:Z

    .line 109
    return v0

    :cond_2
    move v2, v3

    .line 106
    goto :goto_0
.end method

.method public setPrompter(Lgnu/mapping/Procedure;)V
    .locals 0
    .parameter "prompter"

    .prologue
    .line 25
    iput-object p1, p0, Lgnu/mapping/TtyInPort;->prompter:Lgnu/mapping/Procedure;

    .line 26
    return-void
.end method
