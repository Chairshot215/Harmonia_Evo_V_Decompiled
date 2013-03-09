.class public Ltwitter4j/org/json/JSONWriter;
.super Ljava/lang/Object;
.source "JSONWriter.java"


# static fields
.field private static final maxdepth:I = 0x14


# instance fields
.field private comma:Z

.field protected mode:C

.field private stack:[Ltwitter4j/org/json/JSONObject;

.field private top:I

.field protected writer:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 2
    .parameter "w"

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-boolean v1, p0, Ltwitter4j/org/json/JSONWriter;->comma:Z

    .line 98
    const/16 v0, 0x69

    iput-char v0, p0, Ltwitter4j/org/json/JSONWriter;->mode:C

    .line 99
    const/16 v0, 0x14

    new-array v0, v0, [Ltwitter4j/org/json/JSONObject;

    iput-object v0, p0, Ltwitter4j/org/json/JSONWriter;->stack:[Ltwitter4j/org/json/JSONObject;

    .line 100
    iput v1, p0, Ltwitter4j/org/json/JSONWriter;->top:I

    .line 101
    iput-object p1, p0, Ltwitter4j/org/json/JSONWriter;->writer:Ljava/io/Writer;

    .line 102
    return-void
.end method

.method private append(Ljava/lang/String;)Ltwitter4j/org/json/JSONWriter;
    .locals 4
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x6f

    const/16 v2, 0x61

    .line 111
    if-nez p1, :cond_0

    .line 112
    new-instance v1, Ltwitter4j/org/json/JSONException;

    const-string v2, "Null pointer"

    invoke-direct {v1, v2}, Ltwitter4j/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 114
    :cond_0
    iget-char v1, p0, Ltwitter4j/org/json/JSONWriter;->mode:C

    if-eq v1, v3, :cond_1

    iget-char v1, p0, Ltwitter4j/org/json/JSONWriter;->mode:C

    if-ne v1, v2, :cond_4

    .line 116
    :cond_1
    :try_start_0
    iget-boolean v1, p0, Ltwitter4j/org/json/JSONWriter;->comma:Z

    if-eqz v1, :cond_2

    iget-char v1, p0, Ltwitter4j/org/json/JSONWriter;->mode:C

    if-ne v1, v2, :cond_2

    .line 117
    iget-object v1, p0, Ltwitter4j/org/json/JSONWriter;->writer:Ljava/io/Writer;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    .line 119
    :cond_2
    iget-object v1, p0, Ltwitter4j/org/json/JSONWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    iget-char v1, p0, Ltwitter4j/org/json/JSONWriter;->mode:C

    if-ne v1, v3, :cond_3

    .line 124
    const/16 v1, 0x6b

    iput-char v1, p0, Ltwitter4j/org/json/JSONWriter;->mode:C

    .line 126
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Ltwitter4j/org/json/JSONWriter;->comma:Z

    .line 127
    return-object p0

    .line 120
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 121
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ltwitter4j/org/json/JSONException;

    invoke-direct {v1, v0}, Ltwitter4j/org/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 129
    .end local v0           #e:Ljava/io/IOException;
    :cond_4
    new-instance v1, Ltwitter4j/org/json/JSONException;

    const-string v2, "Value out of sequence."

    invoke-direct {v1, v2}, Ltwitter4j/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private end(CC)Ltwitter4j/org/json/JSONWriter;
    .locals 3
    .parameter "m"
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 159
    iget-char v1, p0, Ltwitter4j/org/json/JSONWriter;->mode:C

    if-eq v1, p1, :cond_1

    .line 160
    new-instance v1, Ltwitter4j/org/json/JSONException;

    const/16 v2, 0x6f

    if-ne p1, v2, :cond_0

    const-string v2, "Misplaced endObject."

    :goto_0
    invoke-direct {v1, v2}, Ltwitter4j/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const-string v2, "Misplaced endArray."

    goto :goto_0

    .line 163
    :cond_1
    invoke-direct {p0, p1}, Ltwitter4j/org/json/JSONWriter;->pop(C)V

    .line 165
    :try_start_0
    iget-object v1, p0, Ltwitter4j/org/json/JSONWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    const/4 v1, 0x1

    iput-boolean v1, p0, Ltwitter4j/org/json/JSONWriter;->comma:Z

    .line 170
    return-object p0

    .line 166
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 167
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ltwitter4j/org/json/JSONException;

    invoke-direct {v1, v0}, Ltwitter4j/org/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private pop(C)V
    .locals 6
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x6b

    const/16 v4, 0x61

    const/4 v3, 0x1

    .line 254
    iget v1, p0, Ltwitter4j/org/json/JSONWriter;->top:I

    if-gtz v1, :cond_0

    .line 255
    new-instance v1, Ltwitter4j/org/json/JSONException;

    const-string v2, "Nesting error."

    invoke-direct {v1, v2}, Ltwitter4j/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 257
    :cond_0
    iget-object v1, p0, Ltwitter4j/org/json/JSONWriter;->stack:[Ltwitter4j/org/json/JSONObject;

    iget v2, p0, Ltwitter4j/org/json/JSONWriter;->top:I

    sub-int/2addr v2, v3

    aget-object v1, v1, v2

    if-nez v1, :cond_1

    move v0, v4

    .line 258
    .local v0, m:C
    :goto_0
    if-eq v0, p1, :cond_2

    .line 259
    new-instance v1, Ltwitter4j/org/json/JSONException;

    const-string v2, "Nesting error."

    invoke-direct {v1, v2}, Ltwitter4j/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v0           #m:C
    :cond_1
    move v0, v5

    .line 257
    goto :goto_0

    .line 261
    .restart local v0       #m:C
    :cond_2
    iget v1, p0, Ltwitter4j/org/json/JSONWriter;->top:I

    sub-int/2addr v1, v3

    iput v1, p0, Ltwitter4j/org/json/JSONWriter;->top:I

    .line 262
    iget v1, p0, Ltwitter4j/org/json/JSONWriter;->top:I

    if-nez v1, :cond_3

    const/16 v1, 0x64

    :goto_1
    iput-char v1, p0, Ltwitter4j/org/json/JSONWriter;->mode:C

    .line 263
    return-void

    .line 262
    :cond_3
    iget-object v1, p0, Ltwitter4j/org/json/JSONWriter;->stack:[Ltwitter4j/org/json/JSONObject;

    iget v2, p0, Ltwitter4j/org/json/JSONWriter;->top:I

    sub-int/2addr v2, v3

    aget-object v1, v1, v2

    if-nez v1, :cond_4

    move v1, v4

    goto :goto_1

    :cond_4
    move v1, v5

    goto :goto_1
.end method

.method private push(Ltwitter4j/org/json/JSONObject;)V
    .locals 2
    .parameter "jo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 271
    iget v0, p0, Ltwitter4j/org/json/JSONWriter;->top:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 272
    new-instance v0, Ltwitter4j/org/json/JSONException;

    const-string v1, "Nesting too deep."

    invoke-direct {v0, v1}, Ltwitter4j/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_0
    iget-object v0, p0, Ltwitter4j/org/json/JSONWriter;->stack:[Ltwitter4j/org/json/JSONObject;

    iget v1, p0, Ltwitter4j/org/json/JSONWriter;->top:I

    aput-object p1, v0, v1

    .line 275
    if-nez p1, :cond_1

    const/16 v0, 0x61

    :goto_0
    iput-char v0, p0, Ltwitter4j/org/json/JSONWriter;->mode:C

    .line 276
    iget v0, p0, Ltwitter4j/org/json/JSONWriter;->top:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ltwitter4j/org/json/JSONWriter;->top:I

    .line 277
    return-void

    .line 275
    :cond_1
    const/16 v0, 0x6b

    goto :goto_0
.end method


# virtual methods
.method public array()Ltwitter4j/org/json/JSONWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 142
    iget-char v0, p0, Ltwitter4j/org/json/JSONWriter;->mode:C

    const/16 v1, 0x69

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Ltwitter4j/org/json/JSONWriter;->mode:C

    const/16 v1, 0x6f

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Ltwitter4j/org/json/JSONWriter;->mode:C

    const/16 v1, 0x61

    if-ne v0, v1, :cond_1

    .line 143
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ltwitter4j/org/json/JSONWriter;->push(Ltwitter4j/org/json/JSONObject;)V

    .line 144
    const-string v0, "["

    invoke-direct {p0, v0}, Ltwitter4j/org/json/JSONWriter;->append(Ljava/lang/String;)Ltwitter4j/org/json/JSONWriter;

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltwitter4j/org/json/JSONWriter;->comma:Z

    .line 146
    return-object p0

    .line 148
    :cond_1
    new-instance v0, Ltwitter4j/org/json/JSONException;

    const-string v1, "Misplaced array."

    invoke-direct {v0, v1}, Ltwitter4j/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endArray()Ltwitter4j/org/json/JSONWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 180
    const/16 v0, 0x61

    const/16 v1, 0x5d

    invoke-direct {p0, v0, v1}, Ltwitter4j/org/json/JSONWriter;->end(CC)Ltwitter4j/org/json/JSONWriter;

    move-result-object v0

    return-object v0
.end method

.method public endObject()Ltwitter4j/org/json/JSONWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 190
    const/16 v0, 0x6b

    const/16 v1, 0x7d

    invoke-direct {p0, v0, v1}, Ltwitter4j/org/json/JSONWriter;->end(CC)Ltwitter4j/org/json/JSONWriter;

    move-result-object v0

    return-object v0
.end method

.method public key(Ljava/lang/String;)Ltwitter4j/org/json/JSONWriter;
    .locals 4
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 202
    if-nez p1, :cond_0

    .line 203
    new-instance v1, Ltwitter4j/org/json/JSONException;

    const-string v2, "Null key."

    invoke-direct {v1, v2}, Ltwitter4j/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 205
    :cond_0
    iget-char v1, p0, Ltwitter4j/org/json/JSONWriter;->mode:C

    const/16 v2, 0x6b

    if-ne v1, v2, :cond_2

    .line 207
    :try_start_0
    iget-boolean v1, p0, Ltwitter4j/org/json/JSONWriter;->comma:Z

    if-eqz v1, :cond_1

    .line 208
    iget-object v1, p0, Ltwitter4j/org/json/JSONWriter;->writer:Ljava/io/Writer;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    .line 210
    :cond_1
    iget-object v1, p0, Ltwitter4j/org/json/JSONWriter;->stack:[Ltwitter4j/org/json/JSONObject;

    iget v2, p0, Ltwitter4j/org/json/JSONWriter;->top:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-object v1, v1, v2

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, p1, v2}, Ltwitter4j/org/json/JSONObject;->putOnce(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/org/json/JSONObject;

    .line 211
    iget-object v1, p0, Ltwitter4j/org/json/JSONWriter;->writer:Ljava/io/Writer;

    invoke-static {p1}, Ltwitter4j/org/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 212
    iget-object v1, p0, Ltwitter4j/org/json/JSONWriter;->writer:Ljava/io/Writer;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    .line 213
    const/4 v1, 0x0

    iput-boolean v1, p0, Ltwitter4j/org/json/JSONWriter;->comma:Z

    .line 214
    const/16 v1, 0x6f

    iput-char v1, p0, Ltwitter4j/org/json/JSONWriter;->mode:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    return-object p0

    .line 216
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 217
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ltwitter4j/org/json/JSONException;

    invoke-direct {v1, v0}, Ltwitter4j/org/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 220
    .end local v0           #e:Ljava/io/IOException;
    :cond_2
    new-instance v1, Ltwitter4j/org/json/JSONException;

    const-string v2, "Misplaced key."

    invoke-direct {v1, v2}, Ltwitter4j/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public object()Ltwitter4j/org/json/JSONWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x6f

    .line 234
    iget-char v0, p0, Ltwitter4j/org/json/JSONWriter;->mode:C

    const/16 v1, 0x69

    if-ne v0, v1, :cond_0

    .line 235
    iput-char v2, p0, Ltwitter4j/org/json/JSONWriter;->mode:C

    .line 237
    :cond_0
    iget-char v0, p0, Ltwitter4j/org/json/JSONWriter;->mode:C

    if-eq v0, v2, :cond_1

    iget-char v0, p0, Ltwitter4j/org/json/JSONWriter;->mode:C

    const/16 v1, 0x61

    if-ne v0, v1, :cond_2

    .line 238
    :cond_1
    const-string v0, "{"

    invoke-direct {p0, v0}, Ltwitter4j/org/json/JSONWriter;->append(Ljava/lang/String;)Ltwitter4j/org/json/JSONWriter;

    .line 239
    new-instance v0, Ltwitter4j/org/json/JSONObject;

    invoke-direct {v0}, Ltwitter4j/org/json/JSONObject;-><init>()V

    invoke-direct {p0, v0}, Ltwitter4j/org/json/JSONWriter;->push(Ltwitter4j/org/json/JSONObject;)V

    .line 240
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltwitter4j/org/json/JSONWriter;->comma:Z

    .line 241
    return-object p0

    .line 243
    :cond_2
    new-instance v0, Ltwitter4j/org/json/JSONException;

    const-string v1, "Misplaced object."

    invoke-direct {v0, v1}, Ltwitter4j/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public value(D)Ltwitter4j/org/json/JSONWriter;
    .locals 1
    .parameter "d"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 298
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p1, p2}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {p0, v0}, Ltwitter4j/org/json/JSONWriter;->value(Ljava/lang/Object;)Ltwitter4j/org/json/JSONWriter;

    move-result-object v0

    return-object v0
.end method

.method public value(J)Ltwitter4j/org/json/JSONWriter;
    .locals 1
    .parameter "l"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 308
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/org/json/JSONWriter;->append(Ljava/lang/String;)Ltwitter4j/org/json/JSONWriter;

    move-result-object v0

    return-object v0
.end method

.method public value(Ljava/lang/Object;)Ltwitter4j/org/json/JSONWriter;
    .locals 1
    .parameter "o"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 321
    invoke-static {p1}, Ltwitter4j/org/json/JSONObject;->valueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/org/json/JSONWriter;->append(Ljava/lang/String;)Ltwitter4j/org/json/JSONWriter;

    move-result-object v0

    return-object v0
.end method

.method public value(Z)Ltwitter4j/org/json/JSONWriter;
    .locals 1
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 288
    if-eqz p1, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-direct {p0, v0}, Ltwitter4j/org/json/JSONWriter;->append(Ljava/lang/String;)Ltwitter4j/org/json/JSONWriter;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method
