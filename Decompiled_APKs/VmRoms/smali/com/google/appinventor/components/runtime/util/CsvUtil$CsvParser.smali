.class Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/CsvUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CsvParser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final ESCAPED_QUOTE_PATTERN:Ljava/util/regex/Pattern;

.field private final buf:[C

.field private cellLength:I

.field private delimitedCellLength:I

.field private final in:Ljava/io/Reader;

.field private lastException:Ljava/lang/Exception;

.field private limit:I

.field private opened:Z

.field private pos:I

.field private previouslyRead:J


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "\"\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->ESCAPED_QUOTE_PATTERN:Ljava/util/regex/Pattern;

    const/16 v0, 0x2800

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->buf:[C

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->opened:Z

    iput v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->cellLength:I

    iput v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->delimitedCellLength:I

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->in:Ljava/io/Reader;

    return-void
.end method

.method private checkedIndex(I)I
    .locals 1

    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    if-ge p1, v0, :cond_0

    move v0, p1

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->indexAfterCompactionAndFilling(I)I

    move-result v0

    goto :goto_0
.end method

.method private compact(I)I
    .locals 5

    const/4 v4, 0x0

    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    iput v4, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    iget v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    sub-int/2addr v1, v0

    if-lez v1, :cond_0

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->buf:[C

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->buf:[C

    invoke-static {v2, v0, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    iget-wide v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->previouslyRead:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->previouslyRead:J

    sub-int v0, p1, v0

    return v0
.end method

.method private fill()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->buf:[C

    array-length v0, v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    sub-int/2addr v0, v1

    :goto_0
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->opened:Z

    if-eqz v1, :cond_1

    if-lez v0, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->in:Ljava/io/Reader;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->buf:[C

    iget v3, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/Reader;->read([CII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->opened:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->lastException:Ljava/lang/Exception;

    iput-boolean v4, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->opened:Z

    goto :goto_0

    :cond_0
    :try_start_1
    iget v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private findDelimOrEnd(I)Z
    .locals 4

    const/4 v3, 0x1

    move v0, p1

    :goto_0
    iget v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    if-lt v0, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->indexAfterCompactionAndFilling(I)I

    move-result v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    if-ge v0, v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->buf:[C

    aget-char v1, v1, v0

    sparse-switch v1, :sswitch_data_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Syntax Error: non-whitespace between closing quote and delimiter or end"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->lastException:Ljava/lang/Exception;

    const/4 v0, 0x0

    :goto_1
    return v0

    :sswitch_0
    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->checkedIndex(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->buf:[C

    aget-char v1, v1, v0

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->checkedIndex(I)I

    move-result v0

    :cond_1
    iget v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->delimitedCellLength:I

    move v0, v3

    goto :goto_1

    :sswitch_1
    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->checkedIndex(I)I

    move-result v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->delimitedCellLength:I

    move v0, v3

    goto :goto_1

    :sswitch_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    iget v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->delimitedCellLength:I

    move v0, v3

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_2
        0xa -> :sswitch_1
        0xd -> :sswitch_0
        0x20 -> :sswitch_2
        0x2c -> :sswitch_1
    .end sparse-switch
.end method

.method private findUnescapedEndQuote(I)Z
    .locals 3

    const/16 v2, 0x22

    move v0, p1

    :goto_0
    iget v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    if-lt v0, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->indexAfterCompactionAndFilling(I)I

    move-result v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    if-ge v0, v1, :cond_3

    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->buf:[C

    aget-char v1, v1, v0

    if-ne v1, v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->checkedIndex(I)I

    move-result v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->buf:[C

    aget-char v1, v1, v0

    if-eq v1, v2, :cond_2

    :cond_1
    iget v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    sub-int v1, v0, v1

    iput v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->cellLength:I

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->findDelimOrEnd(I)Z

    move-result v0

    :goto_1
    return v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Syntax Error. unclosed quoted cell"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->lastException:Ljava/lang/Exception;

    const/4 v0, 0x0

    goto :goto_1
.end method

.method private findUnquotedCellEnd(I)Z
    .locals 4

    const/4 v3, 0x1

    move v0, p1

    :goto_0
    iget v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    if-lt v0, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->indexAfterCompactionAndFilling(I)I

    move-result v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    if-ge v0, v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->buf:[C

    aget-char v1, v1, v0

    sparse-switch v1, :sswitch_data_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :sswitch_0
    iget v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->cellLength:I

    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->cellLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->delimitedCellLength:I

    move v0, v3

    :goto_1
    return v0

    :sswitch_1
    iget v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    sub-int v1, v0, v1

    iput v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->cellLength:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->checkedIndex(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->buf:[C

    aget-char v1, v1, v0

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->checkedIndex(I)I

    move-result v0

    :cond_1
    iget v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->delimitedCellLength:I

    move v0, v3

    goto :goto_1

    :sswitch_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Syntax Error: quote in unquoted cell"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->lastException:Ljava/lang/Exception;

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    iget v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->cellLength:I

    iput v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->delimitedCellLength:I

    move v0, v3

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xd -> :sswitch_1
        0x22 -> :sswitch_2
        0x2c -> :sswitch_0
    .end sparse-switch
.end method

.method private indexAfterCompactionAndFilling(I)I
    .locals 1

    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    if-lez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->compact(I)I

    move-result v0

    :goto_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->fill()V

    return v0

    :cond_0
    move v0, p1

    goto :goto_0
.end method

.method private lookingAtCell()Z
    .locals 2

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->buf:[C

    iget v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->findUnescapedEndQuote(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->findUnquotedCellEnd(I)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public getCharPosition()J
    .locals 4

    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->previouslyRead:J

    iget v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public hasNext()Z
    .locals 2

    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->fill()V

    :cond_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    iget v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->indexAfterCompactionAndFilling(I)I

    move-result v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    if-ge v0, v1, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->lookingAtCell()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->next()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->buf:[C

    iget v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    aget-char v1, v1, v2

    const/16 v2, 0x22

    if-eq v1, v2, :cond_3

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->buf:[C

    iget v3, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    iget v4, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->cellLength:I

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    iget v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->delimitedCellLength:I

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->buf:[C

    iget v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    iget v3, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->delimitedCellLength:I

    add-int/2addr v2, v3

    sub-int/2addr v2, v6

    aget-char v1, v1, v2

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_4

    move v1, v6

    :goto_1
    iget v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    iget v3, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->delimitedCellLength:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->cellLength:I

    iput v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->delimitedCellLength:I

    iget v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    iget v3, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    if-lt v2, v3, :cond_1

    iget v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    invoke-direct {p0, v2}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->indexAfterCompactionAndFilling(I)I

    move-result v2

    iget v3, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    if-ge v2, v3, :cond_5

    :cond_1
    move v2, v6

    :goto_2
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->lookingAtCell()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    return-object v0

    :cond_3
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->buf:[C

    iget v3, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->cellLength:I

    const/4 v5, 0x2

    sub-int/2addr v4, v5

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->ESCAPED_QUOTE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    move v1, v7

    goto :goto_1

    :cond_5
    move v2, v7

    goto :goto_2
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public skip(J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-wide v0, p1

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->in:Ljava/io/Reader;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->buf:[C

    const/4 v4, 0x0

    long-to-int v5, v0

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->buf:[C

    array-length v6, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/Reader;->read([CII)I

    move-result v2

    if-gez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-wide v3, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->previouslyRead:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->previouslyRead:J

    int-to-long v2, v2

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public throwAnyProblem()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->lastException:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->lastException:Ljava/lang/Exception;

    throw v0

    :cond_0
    return-void
.end method
