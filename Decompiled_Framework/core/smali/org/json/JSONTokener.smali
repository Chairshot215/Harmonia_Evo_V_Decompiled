.class public Lorg/json/JSONTokener;
.super Ljava/lang/Object;
.source "JSONTokener.java"


# instance fields
.field private final in:Ljava/lang/String;

.field private pos:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    const-string v0, "\ufeff"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    return-void
.end method

.method public static dehexchar(C)I
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x66

    if-gt p0, v0, :cond_2

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private nextCleanInternal()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v3, -0x1

    :goto_0
    :sswitch_0
    iget v4, p0, Lorg/json/JSONTokener;->pos:I

    iget-object v5, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    iget-object v4, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    iget v5, p0, Lorg/json/JSONTokener;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/json/JSONTokener;->pos:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_1
    return v0

    :sswitch_1
    iget v4, p0, Lorg/json/JSONTokener;->pos:I

    iget-object v5, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    iget v5, p0, Lorg/json/JSONTokener;->pos:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_1

    goto :goto_1

    :sswitch_2
    iget v4, p0, Lorg/json/JSONTokener;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/json/JSONTokener;->pos:I

    iget-object v4, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    const-string v5, "*/"

    iget v6, p0, Lorg/json/JSONTokener;->pos:I

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1

    const-string v3, "Unterminated comment"

    invoke-virtual {p0, v3}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v3

    throw v3

    :cond_1
    add-int/lit8 v4, v1, 0x2

    iput v4, p0, Lorg/json/JSONTokener;->pos:I

    goto :goto_0

    :sswitch_3
    iget v4, p0, Lorg/json/JSONTokener;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/json/JSONTokener;->pos:I

    invoke-direct {p0}, Lorg/json/JSONTokener;->skipToEndOfLine()V

    goto :goto_0

    :sswitch_4
    invoke-direct {p0}, Lorg/json/JSONTokener;->skipToEndOfLine()V

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
        0x23 -> :sswitch_4
        0x2f -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2a -> :sswitch_2
        0x2f -> :sswitch_3
    .end sparse-switch
.end method

.method private nextToInternal(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget v1, p0, Lorg/json/JSONTokener;->pos:I

    :goto_0
    iget v2, p0, Lorg/json/JSONTokener;->pos:I

    iget-object v3, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v2, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    iget v3, p0, Lorg/json/JSONTokener;->pos:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0xd

    if-eq v0, v2, :cond_0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    :cond_0
    iget-object v2, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    iget v3, p0, Lorg/json/JSONTokener;->pos:I

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_1
    return-object v2

    :cond_1
    iget v2, p0, Lorg/json/JSONTokener;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/json/JSONTokener;->pos:I

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private readArray()Lorg/json/JSONArray;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0}, Lorg/json/JSONTokener;->nextCleanInternal()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    iget v2, p0, Lorg/json/JSONTokener;->pos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/json/JSONTokener;->pos:I

    invoke-virtual {p0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONTokener;->nextCleanInternal()I

    move-result v2

    sparse-switch v2, :sswitch_data_1

    const-string v2, "Unterminated array"

    invoke-virtual {p0, v2}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v2

    throw v2

    :sswitch_0
    const-string v2, "Unterminated array"

    invoke-virtual {p0, v2}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v2

    throw v2

    :sswitch_1
    if-eqz v0, :cond_0

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_0
    :sswitch_2
    return-object v1

    :sswitch_3
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_4
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x2c -> :sswitch_3
        0x3b -> :sswitch_3
        0x5d -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2c -> :sswitch_4
        0x3b -> :sswitch_4
        0x5d -> :sswitch_2
    .end sparse-switch
.end method

.method private readEscapeCharacter()C
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    iget-object v2, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    iget v3, p0, Lorg/json/JSONTokener;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/json/JSONTokener;->pos:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    iget v2, p0, Lorg/json/JSONTokener;->pos:I

    add-int/lit8 v2, v2, 0x4

    iget-object v3, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_0

    const-string v2, "Unterminated escape sequence"

    invoke-virtual {p0, v2}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v2

    throw v2

    :cond_0
    iget-object v2, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    iget v3, p0, Lorg/json/JSONTokener;->pos:I

    iget v4, p0, Lorg/json/JSONTokener;->pos:I

    add-int/lit8 v4, v4, 0x4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lorg/json/JSONTokener;->pos:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Lorg/json/JSONTokener;->pos:I

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-char v0, v2

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x9

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x8

    goto :goto_0

    :sswitch_3
    const/16 v0, 0xa

    goto :goto_0

    :sswitch_4
    const/16 v0, 0xd

    goto :goto_0

    :sswitch_5
    const/16 v0, 0xc

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x62 -> :sswitch_2
        0x66 -> :sswitch_5
        0x6e -> :sswitch_3
        0x72 -> :sswitch_4
        0x74 -> :sswitch_1
        0x75 -> :sswitch_0
    .end sparse-switch
.end method

.method private readLiteral()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v7, 0x1

    const-string v5, "{}[]/\\:,=;# \t\u000c"

    invoke-direct {p0, v5}, Lorg/json/JSONTokener;->nextToInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "Expected literal value"

    invoke-virtual {p0, v5}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v5

    throw v5

    :cond_0
    const-string v5, "null"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :goto_0
    return-object v5

    :cond_1
    const-string v5, "true"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    const-string v5, "false"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_3
    const/16 v5, 0x2e

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_8

    const/16 v0, 0xa

    move-object v4, v1

    const-string v5, "0x"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "0X"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_4
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const/16 v0, 0x10

    :cond_5
    :goto_1
    :try_start_0
    invoke-static {v4, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    const-wide/32 v5, 0x7fffffff

    cmp-long v5, v2, v5

    if-gtz v5, :cond_7

    const-wide/32 v5, -0x80000000

    cmp-long v5, v2, v5

    if-ltz v5, :cond_7

    long-to-int v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    :cond_6
    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v7, :cond_5

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const/16 v0, 0x8

    goto :goto_1

    :cond_7
    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    goto :goto_0

    :catch_0
    move-exception v5

    :cond_8
    :try_start_2
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v5

    goto :goto_0

    :catch_1
    move-exception v5

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private readObject()Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p0}, Lorg/json/JSONTokener;->nextCleanInternal()I

    move-result v0

    const/16 v4, 0x7d

    if-ne v0, v4, :cond_0

    :sswitch_0
    return-object v2

    :cond_0
    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    iget v4, p0, Lorg/json/JSONTokener;->pos:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/json/JSONTokener;->pos:I

    :cond_1
    :sswitch_1
    invoke-virtual {p0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v4, v1, Ljava/lang/String;

    if-nez v4, :cond_3

    if-nez v1, :cond_2

    const-string v4, "Names cannot be null"

    invoke-virtual {p0, v4}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v4

    throw v4

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Names must be strings, but "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is of type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v4

    throw v4

    :cond_3
    invoke-direct {p0}, Lorg/json/JSONTokener;->nextCleanInternal()I

    move-result v3

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_4

    const/16 v4, 0x3d

    if-eq v3, v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected \':\' after "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v4

    throw v4

    :cond_4
    iget v4, p0, Lorg/json/JSONTokener;->pos:I

    iget-object v5, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_5

    iget-object v4, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    iget v5, p0, Lorg/json/JSONTokener;->pos:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3e

    if-ne v4, v5, :cond_5

    iget v4, p0, Lorg/json/JSONTokener;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/json/JSONTokener;->pos:I

    :cond_5
    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONTokener;->nextCleanInternal()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    const-string v4, "Unterminated object"

    invoke-virtual {p0, v4}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v4

    throw v4

    nop

    :sswitch_data_0
    .sparse-switch
        0x2c -> :sswitch_1
        0x3b -> :sswitch_1
        0x7d -> :sswitch_0
    .end sparse-switch
.end method

.method private skipToEndOfLine()V
    .locals 3

    :goto_0
    iget v1, p0, Lorg/json/JSONTokener;->pos:I

    iget-object v2, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    iget v2, p0, Lorg/json/JSONTokener;->pos:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    :cond_0
    iget v1, p0, Lorg/json/JSONTokener;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/json/JSONTokener;->pos:I

    :cond_1
    return-void

    :cond_2
    iget v1, p0, Lorg/json/JSONTokener;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/json/JSONTokener;->pos:I

    goto :goto_0
.end method


# virtual methods
.method public back()V
    .locals 2

    iget v0, p0, Lorg/json/JSONTokener;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/json/JSONTokener;->pos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lorg/json/JSONTokener;->pos:I

    :cond_0
    return-void
.end method

.method public more()Z
    .locals 2

    iget v0, p0, Lorg/json/JSONTokener;->pos:I

    iget-object v1, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()C
    .locals 3

    iget v0, p0, Lorg/json/JSONTokener;->pos:I

    iget-object v1, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    iget v1, p0, Lorg/json/JSONTokener;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/json/JSONTokener;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next(C)C
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v0

    if-eq v0, p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v1

    throw v1

    :cond_0
    return v0
.end method

.method public next(I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    iget v1, p0, Lorg/json/JSONTokener;->pos:I

    add-int/2addr v1, p1

    iget-object v2, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is out of bounds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v1

    throw v1

    :cond_0
    iget-object v1, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    iget v2, p0, Lorg/json/JSONTokener;->pos:I

    iget v3, p0, Lorg/json/JSONTokener;->pos:I

    add-int/2addr v3, p1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/json/JSONTokener;->pos:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/json/JSONTokener;->pos:I

    return-object v0
.end method

.method public nextClean()C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/json/JSONTokener;->nextCleanInternal()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    int-to-char v1, v0

    goto :goto_0
.end method

.method public nextString(C)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    iget v2, p0, Lorg/json/JSONTokener;->pos:I

    :cond_0
    :goto_0
    iget v3, p0, Lorg/json/JSONTokener;->pos:I

    iget-object v4, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_5

    iget-object v3, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    iget v4, p0, Lorg/json/JSONTokener;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/json/JSONTokener;->pos:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, p1, :cond_2

    if-nez v0, :cond_1

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    iget v5, p0, Lorg/json/JSONTokener;->pos:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    return-object v3

    :cond_1
    iget-object v3, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    iget v4, p0, Lorg/json/JSONTokener;->pos:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v3, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    const/16 v3, 0x5c

    if-ne v1, v3, :cond_0

    iget v3, p0, Lorg/json/JSONTokener;->pos:I

    iget-object v4, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_3

    const-string v3, "Unterminated escape sequence"

    invoke-virtual {p0, v3}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v3

    throw v3

    :cond_3
    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :cond_4
    iget-object v3, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    iget v4, p0, Lorg/json/JSONTokener;->pos:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v3, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/json/JSONTokener;->readEscapeCharacter()C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/json/JSONTokener;->pos:I

    goto :goto_0

    :cond_5
    const-string v3, "Unterminated string"

    invoke-virtual {p0, v3}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v3

    throw v3
.end method

.method public nextTo(C)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/json/JSONTokener;->nextToInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextTo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0, p1}, Lorg/json/JSONTokener;->nextToInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/json/JSONTokener;->nextCleanInternal()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    iget v1, p0, Lorg/json/JSONTokener;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/json/JSONTokener;->pos:I

    invoke-direct {p0}, Lorg/json/JSONTokener;->readLiteral()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    :sswitch_0
    const-string v1, "End of input"

    invoke-virtual {p0, v1}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v1

    throw v1

    :sswitch_1
    invoke-direct {p0}, Lorg/json/JSONTokener;->readObject()Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lorg/json/JSONTokener;->readArray()Lorg/json/JSONArray;

    move-result-object v1

    goto :goto_0

    :sswitch_3
    int-to-char v1, v0

    invoke-virtual {p0, v1}, Lorg/json/JSONTokener;->nextString(C)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x22 -> :sswitch_3
        0x27 -> :sswitch_3
        0x5b -> :sswitch_2
        0x7b -> :sswitch_1
    .end sparse-switch
.end method

.method public skipPast(Ljava/lang/String;)V
    .locals 3

    iget-object v1, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    iget v2, p0, Lorg/json/JSONTokener;->pos:I

    invoke-virtual {v1, p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    iput v1, p0, Lorg/json/JSONTokener;->pos:I

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    goto :goto_0
.end method

.method public skipTo(C)C
    .locals 3

    iget-object v1, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    iget v2, p0, Lorg/json/JSONTokener;->pos:I

    invoke-virtual {v1, p1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iput v0, p0, Lorg/json/JSONTokener;->pos:I

    :goto_0
    return p1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public syntaxError(Ljava/lang/String;)Lorg/json/JSONException;
    .locals 2

    new-instance v0, Lorg/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " at character "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/json/JSONTokener;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/json/JSONTokener;->in:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
