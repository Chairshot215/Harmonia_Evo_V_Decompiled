.class Lcom/google/common/io/MultiReader;
.super Ljava/io/Reader;
.source "MultiReader.java"


# instance fields
.field private current:Ljava/io/Reader;

.field private final it:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<+",
            "Lcom/google/common/io/InputSupplier",
            "<+",
            "Ljava/io/Reader;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Iterator;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<+",
            "Lcom/google/common/io/InputSupplier",
            "<+",
            "Ljava/io/Reader;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    .local p1, readers:Ljava/util/Iterator;,"Ljava/util/Iterator<+Lcom/google/common/io/InputSupplier<+Ljava/io/Reader;>;>;"
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/google/common/io/MultiReader;->it:Ljava/util/Iterator;

    .line 38
    invoke-direct {p0}, Lcom/google/common/io/MultiReader;->advance()V

    .line 39
    return-void
.end method

.method private advance()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/google/common/io/MultiReader;->close()V

    .line 46
    iget-object v0, p0, Lcom/google/common/io/MultiReader;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/google/common/io/MultiReader;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/io/InputSupplier;

    invoke-interface {v0}, Lcom/google/common/io/InputSupplier;->getInput()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Reader;

    iput-object v0, p0, Lcom/google/common/io/MultiReader;->current:Ljava/io/Reader;

    .line 49
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 82
    iget-object v0, p0, Lcom/google/common/io/MultiReader;->current:Ljava/io/Reader;

    if-eqz v0, :cond_0

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/google/common/io/MultiReader;->current:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    iput-object v1, p0, Lcom/google/common/io/MultiReader;->current:Ljava/io/Reader;

    .line 89
    :cond_0
    return-void

    .line 86
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/google/common/io/MultiReader;->current:Ljava/io/Reader;

    throw v0
.end method

.method public read([CII)I
    .locals 3
    .parameter "cbuf"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 52
    iget-object v2, p0, Lcom/google/common/io/MultiReader;->current:Ljava/io/Reader;

    if-nez v2, :cond_1

    move v0, v1

    .line 60
    :cond_0
    :goto_0
    return v0

    .line 55
    :cond_1
    iget-object v2, p0, Lcom/google/common/io/MultiReader;->current:Ljava/io/Reader;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/Reader;->read([CII)I

    move-result v0

    .line 56
    .local v0, result:I
    if-ne v0, v1, :cond_0

    .line 57
    invoke-direct {p0}, Lcom/google/common/io/MultiReader;->advance()V

    .line 58
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/io/MultiReader;->read([CII)I

    move-result v0

    goto :goto_0
.end method

.method public ready()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/common/io/MultiReader;->current:Ljava/io/Reader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/io/MultiReader;->current:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->ready()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public skip(J)J
    .locals 6
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v3, 0x0

    .line 64
    cmp-long v2, p1, v3

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    const-string v5, "n is negative"

    invoke-static {v2, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 65
    cmp-long v2, p1, v3

    if-lez v2, :cond_2

    .line 66
    :goto_1
    iget-object v2, p0, Lcom/google/common/io/MultiReader;->current:Ljava/io/Reader;

    if-eqz v2, :cond_2

    .line 67
    iget-object v2, p0, Lcom/google/common/io/MultiReader;->current:Ljava/io/Reader;

    invoke-virtual {v2, p1, p2}, Ljava/io/Reader;->skip(J)J

    move-result-wide v0

    .line 68
    .local v0, result:J
    cmp-long v2, v0, v3

    if-lez v2, :cond_1

    .line 74
    .end local v0           #result:J
    :goto_2
    return-wide v0

    .line 64
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 71
    .restart local v0       #result:J
    :cond_1
    invoke-direct {p0}, Lcom/google/common/io/MultiReader;->advance()V

    goto :goto_1

    .end local v0           #result:J
    :cond_2
    move-wide v0, v3

    .line 74
    goto :goto_2
.end method
