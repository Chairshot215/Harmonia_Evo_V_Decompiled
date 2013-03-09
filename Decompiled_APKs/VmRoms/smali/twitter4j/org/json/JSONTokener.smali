.class public Ltwitter4j/org/json/JSONTokener;
.super Ljava/lang/Object;
.source "JSONTokener.java"


# instance fields
.field private index:I

.field private lastChar:C

.field private reader:Ljava/io/Reader;

.field private useLastChar:Z


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 2
    .parameter "reader"

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p1}, Ljava/io/Reader;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    :goto_0
    iput-object v0, p0, Ltwitter4j/org/json/JSONTokener;->reader:Ljava/io/Reader;

    .line 55
    iput-boolean v1, p0, Ltwitter4j/org/json/JSONTokener;->useLastChar:Z

    .line 56
    iput v1, p0, Ltwitter4j/org/json/JSONTokener;->index:I

    .line 57
    return-void

    .line 53
    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 66
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ltwitter4j/org/json/JSONTokener;-><init>(Ljava/io/Reader;)V

    .line 67
    return-void
.end method

.method public static dehexchar(C)I
    .locals 2
    .parameter "c"

    .prologue
    const/16 v1, 0x30

    .line 92
    if-lt p0, v1, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 93
    sub-int v0, p0, v1

    .line 101
    :goto_0
    return v0

    .line 95
    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    .line 96
    const/16 v0, 0x37

    sub-int v0, p0, v0

    goto :goto_0

    .line 98
    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x66

    if-gt p0, v0, :cond_2

    .line 99
    const/16 v0, 0x57

    sub-int v0, p0, v0

    goto :goto_0

    .line 101
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public back()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 76
    iget-boolean v0, p0, Ltwitter4j/org/json/JSONTokener;->useLastChar:Z

    if-nez v0, :cond_0

    iget v0, p0, Ltwitter4j/org/json/JSONTokener;->index:I

    if-gtz v0, :cond_1

    .line 77
    :cond_0
    new-instance v0, Ltwitter4j/org/json/JSONException;

    const-string v1, "Stepping back two steps is not supported"

    invoke-direct {v0, v1}, Ltwitter4j/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_1
    iget v0, p0, Ltwitter4j/org/json/JSONTokener;->index:I

    sub-int/2addr v0, v1

    iput v0, p0, Ltwitter4j/org/json/JSONTokener;->index:I

    .line 80
    iput-boolean v1, p0, Ltwitter4j/org/json/JSONTokener;->useLastChar:Z

    .line 81
    return-void
.end method

.method public more()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 111
    invoke-virtual {p0}, Ltwitter4j/org/json/JSONTokener;->next()C

    move-result v0

    .line 112
    .local v0, nextChar:C
    if-nez v0, :cond_0

    .line 113
    const/4 v1, 0x0

    .line 116
    :goto_0
    return v1

    .line 115
    :cond_0
    invoke-virtual {p0}, Ltwitter4j/org/json/JSONTokener;->back()V

    .line 116
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public next()C
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 126
    iget-boolean v2, p0, Ltwitter4j/org/json/JSONTokener;->useLastChar:Z

    if-eqz v2, :cond_1

    .line 127
    iput-boolean v3, p0, Ltwitter4j/org/json/JSONTokener;->useLastChar:Z

    .line 128
    iget-char v2, p0, Ltwitter4j/org/json/JSONTokener;->lastChar:C

    if-eqz v2, :cond_0

    .line 129
    iget v2, p0, Ltwitter4j/org/json/JSONTokener;->index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ltwitter4j/org/json/JSONTokener;->index:I

    .line 131
    :cond_0
    iget-char v2, p0, Ltwitter4j/org/json/JSONTokener;->lastChar:C

    .line 146
    :goto_0
    return v2

    .line 135
    :cond_1
    :try_start_0
    iget-object v2, p0, Ltwitter4j/org/json/JSONTokener;->reader:Ljava/io/Reader;

    invoke-virtual {v2}, Ljava/io/Reader;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 140
    .local v0, c:I
    if-gtz v0, :cond_2

    .line 141
    iput-char v3, p0, Ltwitter4j/org/json/JSONTokener;->lastChar:C

    move v2, v3

    .line 142
    goto :goto_0

    .line 136
    .end local v0           #c:I
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 137
    .local v1, exc:Ljava/io/IOException;
    new-instance v2, Ltwitter4j/org/json/JSONException;

    invoke-direct {v2, v1}, Ltwitter4j/org/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 144
    .end local v1           #exc:Ljava/io/IOException;
    .restart local v0       #c:I
    :cond_2
    iget v2, p0, Ltwitter4j/org/json/JSONTokener;->index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ltwitter4j/org/json/JSONTokener;->index:I

    .line 145
    int-to-char v2, v0

    iput-char v2, p0, Ltwitter4j/org/json/JSONTokener;->lastChar:C

    .line 146
    iget-char v2, p0, Ltwitter4j/org/json/JSONTokener;->lastChar:C

    goto :goto_0
.end method

.method public next(C)C
    .locals 3
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 158
    invoke-virtual {p0}, Ltwitter4j/org/json/JSONTokener;->next()C

    move-result v0

    .line 159
    .local v0, n:C
    if-eq v0, p1, :cond_0

    .line 160
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Expected \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\' and instead saw \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ltwitter4j/org/json/JSONTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/org/json/JSONException;

    move-result-object v1

    throw v1

    .line 163
    :cond_0
    return v0
.end method

.method public next(I)Ljava/lang/String;
    .locals 6
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 177
    if-nez p1, :cond_0

    .line 178
    const-string v4, ""

    .line 205
    :goto_0
    return-object v4

    .line 181
    :cond_0
    new-array v0, p1, [C

    .line 182
    .local v0, buffer:[C
    const/4 v3, 0x0

    .line 184
    .local v3, pos:I
    iget-boolean v4, p0, Ltwitter4j/org/json/JSONTokener;->useLastChar:Z

    if-eqz v4, :cond_1

    .line 185
    iput-boolean v5, p0, Ltwitter4j/org/json/JSONTokener;->useLastChar:Z

    .line 186
    iget-char v4, p0, Ltwitter4j/org/json/JSONTokener;->lastChar:C

    aput-char v4, v0, v5

    .line 187
    const/4 v3, 0x1

    .line 192
    :cond_1
    :goto_1
    if-ge v3, p1, :cond_2

    :try_start_0
    iget-object v4, p0, Ltwitter4j/org/json/JSONTokener;->reader:Ljava/io/Reader;

    sub-int v5, p1, v3

    invoke-virtual {v4, v0, v3, v5}, Ljava/io/Reader;->read([CII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .local v2, len:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    .line 193
    add-int/2addr v3, v2

    goto :goto_1

    .line 195
    .end local v2           #len:I
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 196
    .local v1, exc:Ljava/io/IOException;
    new-instance v4, Ltwitter4j/org/json/JSONException;

    invoke-direct {v4, v1}, Ltwitter4j/org/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 198
    .end local v1           #exc:Ljava/io/IOException;
    :cond_2
    iget v4, p0, Ltwitter4j/org/json/JSONTokener;->index:I

    add-int/2addr v4, v3

    iput v4, p0, Ltwitter4j/org/json/JSONTokener;->index:I

    .line 200
    if-ge v3, p1, :cond_3

    .line 201
    const-string v4, "Substring bounds error"

    invoke-virtual {p0, v4}, Ltwitter4j/org/json/JSONTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/org/json/JSONException;

    move-result-object v4

    throw v4

    .line 204
    :cond_3
    const/4 v4, 0x1

    sub-int v4, p1, v4

    aget-char v4, v0, v4

    iput-char v4, p0, Ltwitter4j/org/json/JSONTokener;->lastChar:C

    .line 205
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public nextClean()C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 216
    :cond_0
    invoke-virtual {p0}, Ltwitter4j/org/json/JSONTokener;->next()C

    move-result v0

    .line 217
    .local v0, c:C
    if-eqz v0, :cond_1

    const/16 v1, 0x20

    if-le v0, v1, :cond_0

    .line 218
    :cond_1
    return v0
.end method

.method public nextString(C)Ljava/lang/String;
    .locals 4
    .parameter "quote"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x10

    .line 237
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 239
    .local v1, sb:Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {p0}, Ltwitter4j/org/json/JSONTokener;->next()C

    move-result v0

    .line 240
    .local v0, c:C
    sparse-switch v0, :sswitch_data_0

    .line 274
    if-ne v0, p1, :cond_0

    .line 275
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 244
    :sswitch_0
    const-string v2, "Unterminated string"

    invoke-virtual {p0, v2}, Ltwitter4j/org/json/JSONTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/org/json/JSONException;

    move-result-object v2

    throw v2

    .line 246
    :sswitch_1
    invoke-virtual {p0}, Ltwitter4j/org/json/JSONTokener;->next()C

    move-result v0

    .line 247
    sparse-switch v0, :sswitch_data_1

    .line 270
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 249
    :sswitch_2
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 252
    :sswitch_3
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 255
    :sswitch_4
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 258
    :sswitch_5
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 261
    :sswitch_6
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 264
    :sswitch_7
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Ltwitter4j/org/json/JSONTokener;->next(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 267
    :sswitch_8
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ltwitter4j/org/json/JSONTokener;->next(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 277
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 240
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x5c -> :sswitch_1
    .end sparse-switch

    .line 247
    :sswitch_data_1
    .sparse-switch
        0x62 -> :sswitch_2
        0x66 -> :sswitch_5
        0x6e -> :sswitch_4
        0x72 -> :sswitch_6
        0x74 -> :sswitch_3
        0x75 -> :sswitch_7
        0x78 -> :sswitch_8
    .end sparse-switch
.end method

.method public nextTo(C)Ljava/lang/String;
    .locals 3
    .parameter "d"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 290
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 292
    .local v1, sb:Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {p0}, Ltwitter4j/org/json/JSONTokener;->next()C

    move-result v0

    .line 293
    .local v0, c:C
    if-eq v0, p1, :cond_0

    if-eqz v0, :cond_0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_2

    .line 294
    :cond_0
    if-eqz v0, :cond_1

    .line 295
    invoke-virtual {p0}, Ltwitter4j/org/json/JSONTokener;->back()V

    .line 297
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 299
    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public nextTo(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "delimiters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 312
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 314
    .local v1, sb:Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {p0}, Ltwitter4j/org/json/JSONTokener;->next()C

    move-result v0

    .line 315
    .local v0, c:C
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_0

    if-eqz v0, :cond_0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_2

    .line 317
    :cond_0
    if-eqz v0, :cond_1

    .line 318
    invoke-virtual {p0}, Ltwitter4j/org/json/JSONTokener;->back()V

    .line 320
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 322
    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public nextValue()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 335
    invoke-virtual {p0}, Ltwitter4j/org/json/JSONTokener;->nextClean()C

    move-result v0

    .line 338
    .local v0, c:C
    sparse-switch v0, :sswitch_data_0

    .line 360
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 361
    .local v2, sb:Ljava/lang/StringBuffer;
    :goto_0
    const/16 v3, 0x20

    if-lt v0, v3, :cond_0

    const-string v3, ",:]}/\\\"[{;=#"

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_0

    .line 362
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 363
    invoke-virtual {p0}, Ltwitter4j/org/json/JSONTokener;->next()C

    move-result v0

    goto :goto_0

    .line 341
    .end local v2           #sb:Ljava/lang/StringBuffer;
    :sswitch_0
    invoke-virtual {p0, v0}, Ltwitter4j/org/json/JSONTokener;->nextString(C)Ljava/lang/String;

    move-result-object v3

    .line 371
    :goto_1
    return-object v3

    .line 343
    :sswitch_1
    invoke-virtual {p0}, Ltwitter4j/org/json/JSONTokener;->back()V

    .line 344
    new-instance v3, Ltwitter4j/org/json/JSONObject;

    invoke-direct {v3, p0}, Ltwitter4j/org/json/JSONObject;-><init>(Ltwitter4j/org/json/JSONTokener;)V

    goto :goto_1

    .line 347
    :sswitch_2
    invoke-virtual {p0}, Ltwitter4j/org/json/JSONTokener;->back()V

    .line 348
    new-instance v3, Ltwitter4j/org/json/JSONArray;

    invoke-direct {v3, p0}, Ltwitter4j/org/json/JSONArray;-><init>(Ltwitter4j/org/json/JSONTokener;)V

    goto :goto_1

    .line 365
    .restart local v2       #sb:Ljava/lang/StringBuffer;
    :cond_0
    invoke-virtual {p0}, Ltwitter4j/org/json/JSONTokener;->back()V

    .line 367
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 368
    .local v1, s:Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 369
    const-string v3, "Missing value"

    invoke-virtual {p0, v3}, Ltwitter4j/org/json/JSONTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/org/json/JSONException;

    move-result-object v3

    throw v3

    .line 371
    :cond_1
    invoke-static {v1}, Ltwitter4j/org/json/JSONObject;->stringToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    .line 338
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x27 -> :sswitch_0
        0x28 -> :sswitch_2
        0x5b -> :sswitch_2
        0x7b -> :sswitch_1
    .end sparse-switch
.end method

.method public skipTo(C)C
    .locals 5
    .parameter "to"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 385
    :try_start_0
    iget v2, p0, Ltwitter4j/org/json/JSONTokener;->index:I

    .line 386
    .local v2, startIndex:I
    iget-object v3, p0, Ltwitter4j/org/json/JSONTokener;->reader:Ljava/io/Reader;

    const v4, 0x7fffffff

    invoke-virtual {v3, v4}, Ljava/io/Reader;->mark(I)V

    .line 388
    :cond_0
    invoke-virtual {p0}, Ltwitter4j/org/json/JSONTokener;->next()C

    move-result v0

    .line 389
    .local v0, c:C
    if-nez v0, :cond_1

    .line 390
    iget-object v3, p0, Ltwitter4j/org/json/JSONTokener;->reader:Ljava/io/Reader;

    invoke-virtual {v3}, Ljava/io/Reader;->reset()V

    .line 391
    iput v2, p0, Ltwitter4j/org/json/JSONTokener;->index:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    :goto_0
    return v0

    .line 394
    :cond_1
    if-ne v0, p1, :cond_0

    .line 399
    invoke-virtual {p0}, Ltwitter4j/org/json/JSONTokener;->back()V

    goto :goto_0

    .line 395
    .end local v0           #c:C
    .end local v2           #startIndex:I
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 396
    .local v1, exc:Ljava/io/IOException;
    new-instance v3, Ltwitter4j/org/json/JSONException;

    invoke-direct {v3, v1}, Ltwitter4j/org/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public syntaxError(Ljava/lang/String;)Ltwitter4j/org/json/JSONException;
    .locals 3
    .parameter "message"

    .prologue
    .line 410
    new-instance v0, Ltwitter4j/org/json/JSONException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Ltwitter4j/org/json/JSONTokener;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/org/json/JSONException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 420
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, " at character "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/org/json/JSONTokener;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
