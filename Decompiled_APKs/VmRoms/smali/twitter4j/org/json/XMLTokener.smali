.class public Ltwitter4j/org/json/XMLTokener;
.super Ltwitter4j/org/json/JSONTokener;
.source "XMLTokener.java"


# static fields
.field public static final entity:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Ltwitter4j/org/json/XMLTokener;->entity:Ljava/util/HashMap;

    .line 43
    sget-object v0, Ltwitter4j/org/json/XMLTokener;->entity:Ljava/util/HashMap;

    const-string v1, "amp"

    sget-object v2, Ltwitter4j/org/json/XML;->AMP:Ljava/lang/Character;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Ltwitter4j/org/json/XMLTokener;->entity:Ljava/util/HashMap;

    const-string v1, "apos"

    sget-object v2, Ltwitter4j/org/json/XML;->APOS:Ljava/lang/Character;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Ltwitter4j/org/json/XMLTokener;->entity:Ljava/util/HashMap;

    const-string v1, "gt"

    sget-object v2, Ltwitter4j/org/json/XML;->GT:Ljava/lang/Character;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Ltwitter4j/org/json/XMLTokener;->entity:Ljava/util/HashMap;

    const-string v1, "lt"

    sget-object v2, Ltwitter4j/org/json/XML;->LT:Ljava/lang/Character;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Ltwitter4j/org/json/XMLTokener;->entity:Ljava/util/HashMap;

    const-string v1, "quot"

    sget-object v2, Ltwitter4j/org/json/XML;->QUOT:Ljava/lang/Character;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Ltwitter4j/org/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 56
    return-void
.end method


# virtual methods
.method public nextCDATA()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x5d

    .line 66
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 68
    .local v2, sb:Ljava/lang/StringBuffer;
    :cond_0
    invoke-virtual {p0}, Ltwitter4j/org/json/XMLTokener;->next()C

    move-result v0

    .line 69
    .local v0, c:C
    if-nez v0, :cond_1

    .line 70
    const-string v3, "Unclosed CDATA"

    invoke-virtual {p0, v3}, Ltwitter4j/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/org/json/JSONException;

    move-result-object v3

    throw v3

    .line 72
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 73
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    const/4 v4, 0x3

    sub-int v1, v3, v4

    .line 74
    .local v1, i:I
    if-ltz v1, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_0

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_0

    add-int/lit8 v3, v1, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    const/16 v4, 0x3e

    if-ne v3, v4, :cond_0

    .line 76
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 77
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public nextContent()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x3c

    .line 96
    :cond_0
    invoke-virtual {p0}, Ltwitter4j/org/json/XMLTokener;->next()C

    move-result v0

    .line 97
    .local v0, c:C
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 98
    if-nez v0, :cond_1

    .line 99
    const/4 v2, 0x0

    .line 108
    :goto_0
    return-object v2

    .line 101
    :cond_1
    if-ne v0, v3, :cond_2

    .line 102
    sget-object v2, Ltwitter4j/org/json/XML;->LT:Ljava/lang/Character;

    goto :goto_0

    .line 104
    :cond_2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 106
    .local v1, sb:Ljava/lang/StringBuffer;
    :goto_1
    if-eq v0, v3, :cond_3

    if-nez v0, :cond_4

    .line 107
    :cond_3
    invoke-virtual {p0}, Ltwitter4j/org/json/XMLTokener;->back()V

    .line 108
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 110
    :cond_4
    const/16 v2, 0x26

    if-ne v0, v2, :cond_5

    .line 111
    invoke-virtual {p0, v0}, Ltwitter4j/org/json/XMLTokener;->nextEntity(C)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 115
    :goto_2
    invoke-virtual {p0}, Ltwitter4j/org/json/XMLTokener;->next()C

    move-result v0

    goto :goto_1

    .line 113
    :cond_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method public nextEntity(C)Ljava/lang/Object;
    .locals 6
    .parameter "a"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 128
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 130
    .local v3, sb:Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {p0}, Ltwitter4j/org/json/XMLTokener;->next()C

    move-result v0

    .line 131
    .local v0, c:C
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-nez v4, :cond_0

    const/16 v4, 0x23

    if-ne v0, v4, :cond_1

    .line 132
    :cond_0
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 133
    :cond_1
    const/16 v4, 0x3b

    if-ne v0, v4, :cond_2

    .line 139
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, s:Ljava/lang/String;
    sget-object v4, Ltwitter4j/org/json/XMLTokener;->entity:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 141
    .local v1, e:Ljava/lang/Object;
    if-eqz v1, :cond_3

    move-object v4, v1

    :goto_1
    return-object v4

    .line 136
    .end local v1           #e:Ljava/lang/Object;
    .end local v2           #s:Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Missing \';\' in XML entity: &"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ltwitter4j/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/org/json/JSONException;

    move-result-object v4

    throw v4

    .line 141
    .restart local v1       #e:Ljava/lang/Object;
    .restart local v2       #s:Ljava/lang/String;
    :cond_3
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public nextMeta()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 158
    :cond_0
    invoke-virtual {p0}, Ltwitter4j/org/json/XMLTokener;->next()C

    move-result v0

    .line 159
    .local v0, c:C
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 160
    sparse-switch v0, :sswitch_data_0

    .line 189
    :goto_0
    invoke-virtual {p0}, Ltwitter4j/org/json/XMLTokener;->next()C

    move-result v0

    .line 190
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 191
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 204
    :goto_1
    return-object v2

    .line 162
    :sswitch_0
    const-string v2, "Misshaped meta tag"

    invoke-virtual {p0, v2}, Ltwitter4j/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/org/json/JSONException;

    move-result-object v2

    throw v2

    .line 164
    :sswitch_1
    sget-object v2, Ltwitter4j/org/json/XML;->LT:Ljava/lang/Character;

    goto :goto_1

    .line 166
    :sswitch_2
    sget-object v2, Ltwitter4j/org/json/XML;->GT:Ljava/lang/Character;

    goto :goto_1

    .line 168
    :sswitch_3
    sget-object v2, Ltwitter4j/org/json/XML;->SLASH:Ljava/lang/Character;

    goto :goto_1

    .line 170
    :sswitch_4
    sget-object v2, Ltwitter4j/org/json/XML;->EQ:Ljava/lang/Character;

    goto :goto_1

    .line 172
    :sswitch_5
    sget-object v2, Ltwitter4j/org/json/XML;->BANG:Ljava/lang/Character;

    goto :goto_1

    .line 174
    :sswitch_6
    sget-object v2, Ltwitter4j/org/json/XML;->QUEST:Ljava/lang/Character;

    goto :goto_1

    .line 177
    :sswitch_7
    move v1, v0

    .line 179
    .local v1, q:C
    :cond_1
    invoke-virtual {p0}, Ltwitter4j/org/json/XMLTokener;->next()C

    move-result v0

    .line 180
    if-nez v0, :cond_2

    .line 181
    const-string v2, "Unterminated string"

    invoke-virtual {p0, v2}, Ltwitter4j/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/org/json/JSONException;

    move-result-object v2

    throw v2

    .line 183
    :cond_2
    if-ne v0, v1, :cond_1

    .line 184
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    .line 193
    .end local v1           #q:C
    :cond_3
    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    .line 203
    :sswitch_8
    invoke-virtual {p0}, Ltwitter4j/org/json/XMLTokener;->back()V

    .line 204
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    .line 160
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x21 -> :sswitch_5
        0x22 -> :sswitch_7
        0x27 -> :sswitch_7
        0x2f -> :sswitch_3
        0x3c -> :sswitch_1
        0x3d -> :sswitch_4
        0x3e -> :sswitch_2
        0x3f -> :sswitch_6
    .end sparse-switch

    .line 193
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_8
        0x21 -> :sswitch_8
        0x22 -> :sswitch_8
        0x27 -> :sswitch_8
        0x2f -> :sswitch_8
        0x3c -> :sswitch_8
        0x3d -> :sswitch_8
        0x3e -> :sswitch_8
        0x3f -> :sswitch_8
    .end sparse-switch
.end method

.method public nextToken()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 224
    :cond_0
    invoke-virtual {p0}, Ltwitter4j/org/json/XMLTokener;->next()C

    move-result v0

    .line 225
    .local v0, c:C
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_0

    .line 226
    sparse-switch v0, :sswitch_data_0

    .line 266
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 268
    .local v2, sb:Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 269
    invoke-virtual {p0}, Ltwitter4j/org/json/XMLTokener;->next()C

    move-result v0

    .line 270
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 271
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 284
    .end local v2           #sb:Ljava/lang/StringBuffer;
    :goto_1
    return-object v3

    .line 228
    :sswitch_0
    const-string v3, "Misshaped element"

    invoke-virtual {p0, v3}, Ltwitter4j/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/org/json/JSONException;

    move-result-object v3

    throw v3

    .line 230
    :sswitch_1
    const-string v3, "Misplaced \'<\'"

    invoke-virtual {p0, v3}, Ltwitter4j/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/org/json/JSONException;

    move-result-object v3

    throw v3

    .line 232
    :sswitch_2
    sget-object v3, Ltwitter4j/org/json/XML;->GT:Ljava/lang/Character;

    goto :goto_1

    .line 234
    :sswitch_3
    sget-object v3, Ltwitter4j/org/json/XML;->SLASH:Ljava/lang/Character;

    goto :goto_1

    .line 236
    :sswitch_4
    sget-object v3, Ltwitter4j/org/json/XML;->EQ:Ljava/lang/Character;

    goto :goto_1

    .line 238
    :sswitch_5
    sget-object v3, Ltwitter4j/org/json/XML;->BANG:Ljava/lang/Character;

    goto :goto_1

    .line 240
    :sswitch_6
    sget-object v3, Ltwitter4j/org/json/XML;->QUEST:Ljava/lang/Character;

    goto :goto_1

    .line 246
    :sswitch_7
    move v1, v0

    .line 247
    .local v1, q:C
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 249
    .restart local v2       #sb:Ljava/lang/StringBuffer;
    :goto_2
    invoke-virtual {p0}, Ltwitter4j/org/json/XMLTokener;->next()C

    move-result v0

    .line 250
    if-nez v0, :cond_1

    .line 251
    const-string v3, "Unterminated string"

    invoke-virtual {p0, v3}, Ltwitter4j/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/org/json/JSONException;

    move-result-object v3

    throw v3

    .line 253
    :cond_1
    if-ne v0, v1, :cond_2

    .line 254
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 256
    :cond_2
    const/16 v3, 0x26

    if-ne v0, v3, :cond_3

    .line 257
    invoke-virtual {p0, v0}, Ltwitter4j/org/json/XMLTokener;->nextEntity(C)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 259
    :cond_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 273
    .end local v1           #q:C
    :cond_4
    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    .line 275
    :sswitch_8
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 283
    :sswitch_9
    invoke-virtual {p0}, Ltwitter4j/org/json/XMLTokener;->back()V

    .line 284
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 288
    :sswitch_a
    const-string v3, "Bad character in a name"

    invoke-virtual {p0, v3}, Ltwitter4j/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/org/json/JSONException;

    move-result-object v3

    throw v3

    .line 226
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x21 -> :sswitch_5
        0x22 -> :sswitch_7
        0x27 -> :sswitch_7
        0x2f -> :sswitch_3
        0x3c -> :sswitch_1
        0x3d -> :sswitch_4
        0x3e -> :sswitch_2
        0x3f -> :sswitch_6
    .end sparse-switch

    .line 273
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_8
        0x21 -> :sswitch_9
        0x22 -> :sswitch_a
        0x27 -> :sswitch_a
        0x2f -> :sswitch_9
        0x3c -> :sswitch_a
        0x3d -> :sswitch_9
        0x3e -> :sswitch_9
        0x3f -> :sswitch_9
        0x5b -> :sswitch_9
        0x5d -> :sswitch_9
    .end sparse-switch
.end method

.method public skipPast(Ljava/lang/String;)Z
    .locals 10
    .parameter "to"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 306
    const/4 v6, 0x0

    .line 307
    .local v6, offset:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 308
    .local v5, n:I
    new-array v2, v5, [C

    .line 315
    .local v2, circle:[C
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v5, :cond_2

    .line 316
    invoke-virtual {p0}, Ltwitter4j/org/json/XMLTokener;->next()C

    move-result v1

    .line 317
    .local v1, c:C
    if-nez v1, :cond_0

    move v7, v9

    .line 352
    .end local v1           #c:C
    :goto_1
    return v7

    .line 320
    .restart local v1       #c:C
    :cond_0
    aput-char v1, v2, v3

    .line 315
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 358
    .local v0, b:Z
    .local v4, j:I
    :cond_1
    aput-char v1, v2, v6

    .line 359
    add-int/lit8 v6, v6, 0x1

    .line 360
    if-lt v6, v5, :cond_2

    .line 361
    sub-int/2addr v6, v5

    .line 326
    .end local v0           #b:Z
    .end local v1           #c:C
    .end local v4           #j:I
    :cond_2
    move v4, v6

    .line 327
    .restart local v4       #j:I
    const/4 v0, 0x1

    .line 331
    .restart local v0       #b:Z
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v5, :cond_3

    .line 332
    aget-char v7, v2, v4

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v7, v8, :cond_4

    .line 333
    const/4 v0, 0x0

    .line 344
    :cond_3
    if-eqz v0, :cond_6

    .line 345
    const/4 v7, 0x1

    goto :goto_1

    .line 336
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 337
    if-lt v4, v5, :cond_5

    .line 338
    sub-int/2addr v4, v5

    .line 331
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 350
    :cond_6
    invoke-virtual {p0}, Ltwitter4j/org/json/XMLTokener;->next()C

    move-result v1

    .line 351
    .restart local v1       #c:C
    if-nez v1, :cond_1

    move v7, v9

    .line 352
    goto :goto_1
.end method
