.class public Lcom/futuredial/parser/androidParser;
.super Ljava/lang/Object;
.source "androidParser.java"

# interfaces
.implements Lcom/futuredial/IParser;


# instance fields
.field TAG:Ljava/lang/String;

.field m_Value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "androidParser"

    iput-object v0, p0, Lcom/futuredial/parser/androidParser;->TAG:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/parser/androidParser;->m_Value:Ljava/lang/String;

    return-void
.end method

.method private Time2String(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "src"

    .prologue
    .line 103
    const-string v0, ""

    .line 104
    .local v0, dst:Ljava/lang/String;
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 105
    .local v1, time:Landroid/text/format/Time;
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 106
    const-string v2, "%Y%m%dT%H%M%S"

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    return-object v0
.end method


# virtual methods
.method public CombineMultiFields(Lcom/futuredial/publicobj/ItemArray;)V
    .locals 0
    .parameter "iaUnCompleted"

    .prologue
    .line 27
    return-void
.end method

.method public initModule(Landroid/content/Context;ILjava/lang/String;)I
    .locals 1
    .parameter "application"
    .parameter "contentType"
    .parameter "parsePolicy"

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public parse(ILjava/lang/String;Lcom/futuredial/publicobj/ItemArray;Lcom/futuredial/publicobj/ItemArray;)I
    .locals 1
    .parameter "contentType"
    .parameter "content"
    .parameter "iaComplete"
    .parameter "iaUnCompleted"

    .prologue
    .line 68
    if-nez p1, :cond_1

    .line 69
    invoke-virtual {p0, p2, p3, p4}, Lcom/futuredial/parser/androidParser;->parseContact(Ljava/lang/String;Lcom/futuredial/publicobj/ItemArray;Lcom/futuredial/publicobj/ItemArray;)V

    .line 79
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 70
    :cond_1
    const/4 v0, 0x1

    if-ne v0, p1, :cond_2

    .line 71
    invoke-virtual {p0, p2, p3, p4}, Lcom/futuredial/parser/androidParser;->parseCalendar(Ljava/lang/String;Lcom/futuredial/publicobj/ItemArray;Lcom/futuredial/publicobj/ItemArray;)V

    goto :goto_0

    .line 72
    :cond_2
    const/4 v0, 0x2

    if-ne v0, p1, :cond_3

    .line 73
    invoke-virtual {p0, p2, p3, p4}, Lcom/futuredial/parser/androidParser;->parseSms(Ljava/lang/String;Lcom/futuredial/publicobj/ItemArray;Lcom/futuredial/publicobj/ItemArray;)V

    goto :goto_0

    .line 74
    :cond_3
    const/4 v0, 0x3

    if-ne v0, p1, :cond_4

    .line 75
    invoke-virtual {p0, p2, p3, p4}, Lcom/futuredial/parser/androidParser;->parseBookmark(Ljava/lang/String;Lcom/futuredial/publicobj/ItemArray;Lcom/futuredial/publicobj/ItemArray;)V

    goto :goto_0

    .line 76
    :cond_4
    const/4 v0, 0x6

    if-ne v0, p1, :cond_0

    .line 77
    invoke-virtual {p0, p2, p3, p4}, Lcom/futuredial/parser/androidParser;->parseTask(Ljava/lang/String;Lcom/futuredial/publicobj/ItemArray;Lcom/futuredial/publicobj/ItemArray;)V

    goto :goto_0
.end method

.method public parse(I[BILcom/futuredial/publicobj/ItemArray;Lcom/futuredial/publicobj/ItemArray;)I
    .locals 6
    .parameter "contentType"
    .parameter "result"
    .parameter "reslength"
    .parameter "iaComplete"
    .parameter "iaUnCompleted"

    .prologue
    const/4 v5, 0x0

    .line 47
    const/4 v1, 0x0

    .line 49
    .local v1, value:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "utf-8"

    invoke-direct {v2, p2, v3, p3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .end local v1           #value:Ljava/lang/String;
    .local v2, value:Ljava/lang/String;
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/futuredial/parser/androidParser;->m_Value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/futuredial/parser/androidParser;->m_Value:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 60
    .end local v2           #value:Ljava/lang/String;
    .restart local v1       #value:Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/futuredial/parser/androidParser;->m_Value:Ljava/lang/String;

    invoke-virtual {p0, p1, v3, p4, p5}, Lcom/futuredial/parser/androidParser;->parse(ILjava/lang/String;Lcom/futuredial/publicobj/ItemArray;Lcom/futuredial/publicobj/ItemArray;)I

    .line 61
    const-string v3, ""

    iput-object v3, p0, Lcom/futuredial/parser/androidParser;->m_Value:Ljava/lang/String;

    .line 62
    return v5

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    :goto_1
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 57
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    .end local v1           #value:Ljava/lang/String;
    .restart local v2       #value:Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2           #value:Ljava/lang/String;
    .restart local v1       #value:Ljava/lang/String;
    goto :goto_1
.end method

.method parseBookmark(Ljava/lang/String;Lcom/futuredial/publicobj/ItemArray;Lcom/futuredial/publicobj/ItemArray;)V
    .locals 6
    .parameter "content"
    .parameter "iaComplete"
    .parameter "iaUnCompleted"

    .prologue
    .line 189
    new-instance v2, Lcom/futuredial/publicobj/Item;

    invoke-direct {v2}, Lcom/futuredial/publicobj/Item;-><init>()V

    .line 190
    .local v2, item:Lcom/futuredial/publicobj/Item;
    const-string v4, ""

    .line 193
    .local v4, value:Ljava/lang/String;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 195
    .local v3, jsonObject:Lorg/json/JSONObject;
    const-string v5, "1"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 196
    const-string v5, "1"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 197
    const/4 v5, 0x1

    invoke-virtual {v2, v5, v4}, Lcom/futuredial/publicobj/Item;->AddFieldString(ILjava/lang/String;)Z

    .line 200
    :cond_0
    const-string v5, "2"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 201
    const-string v5, "2"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 202
    const/4 v5, 0x2

    invoke-virtual {v2, v5, v4}, Lcom/futuredial/publicobj/Item;->AddFieldString(ILjava/lang/String;)Z

    .line 205
    :cond_1
    const-string v5, "3"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 206
    const-string v5, "3"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 207
    const/4 v5, 0x3

    invoke-virtual {v2, v5, v4}, Lcom/futuredial/publicobj/Item;->AddFieldString(ILjava/lang/String;)Z

    .line 210
    :cond_2
    invoke-virtual {p2, v2}, Lcom/futuredial/publicobj/ItemArray;->AddItem(Lcom/futuredial/publicobj/Item;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    .end local v3           #jsonObject:Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 211
    :catch_0
    move-exception v1

    .line 213
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method parseCalendar(Ljava/lang/String;Lcom/futuredial/publicobj/ItemArray;Lcom/futuredial/publicobj/ItemArray;)V
    .locals 2
    .parameter "content"
    .parameter "iaComplete"
    .parameter "iaUnCompleted"

    .prologue
    .line 94
    new-instance v0, Lcom/futuredial/publicobj/Item;

    invoke-direct {v0}, Lcom/futuredial/publicobj/Item;-><init>()V

    .line 95
    .local v0, item:Lcom/futuredial/publicobj/Item;
    const/16 v1, 0x2710

    invoke-virtual {v0, v1, p1}, Lcom/futuredial/publicobj/Item;->AddFieldString(ILjava/lang/String;)Z

    .line 96
    invoke-virtual {p2, v0}, Lcom/futuredial/publicobj/ItemArray;->AddItem(Lcom/futuredial/publicobj/Item;)Z

    .line 97
    const-string p1, ""

    .line 98
    const/4 v0, 0x0

    .line 99
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 100
    return-void
.end method

.method parseContact(Ljava/lang/String;Lcom/futuredial/publicobj/ItemArray;Lcom/futuredial/publicobj/ItemArray;)V
    .locals 2
    .parameter "content"
    .parameter "iaComplete"
    .parameter "iaUnCompleted"

    .prologue
    .line 84
    new-instance v0, Lcom/futuredial/publicobj/Item;

    invoke-direct {v0}, Lcom/futuredial/publicobj/Item;-><init>()V

    .line 85
    .local v0, item:Lcom/futuredial/publicobj/Item;
    const/16 v1, 0x2710

    invoke-virtual {v0, v1, p1}, Lcom/futuredial/publicobj/Item;->AddFieldString(ILjava/lang/String;)Z

    .line 86
    invoke-virtual {p2, v0}, Lcom/futuredial/publicobj/ItemArray;->AddItem(Lcom/futuredial/publicobj/Item;)Z

    .line 87
    const-string p1, ""

    .line 88
    const/4 v0, 0x0

    .line 89
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 90
    return-void
.end method

.method parseSms(Ljava/lang/String;Lcom/futuredial/publicobj/ItemArray;Lcom/futuredial/publicobj/ItemArray;)V
    .locals 10
    .parameter "content"
    .parameter "iaComplete"
    .parameter "iaUnCompleted"

    .prologue
    const/4 v9, 0x1

    .line 112
    new-instance v2, Lcom/futuredial/publicobj/Item;

    invoke-direct {v2}, Lcom/futuredial/publicobj/Item;-><init>()V

    .line 113
    .local v2, item:Lcom/futuredial/publicobj/Item;
    const-string v5, ""

    .line 116
    .local v5, value:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_0

    .line 117
    iget-object v6, p0, Lcom/futuredial/parser/androidParser;->TAG:Ljava/lang/String;

    const-string v7, "content.length == 0"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :goto_0
    return-void

    .line 120
    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 122
    .local v3, jsonObject:Lorg/json/JSONObject;
    const-string v6, "2"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 123
    const-string v6, "2"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 124
    .local v4, type:I
    invoke-virtual {p0, v4}, Lcom/futuredial/parser/androidParser;->parseType(I)I

    move-result v4

    .line 125
    const/4 v6, 0x2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/futuredial/publicobj/Item;->AddFieldString(ILjava/lang/String;)Z

    .line 128
    .end local v4           #type:I
    :cond_1
    const-string v6, "3"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 129
    const-string v6, "3"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 130
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 131
    const/4 v6, 0x3

    invoke-virtual {v2, v6, v5}, Lcom/futuredial/publicobj/Item;->AddFieldString(ILjava/lang/String;)Z

    .line 135
    :cond_2
    const-string v6, "5"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 136
    const-string v6, "5"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 137
    invoke-direct {p0, v5}, Lcom/futuredial/parser/androidParser;->Time2String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 138
    const/4 v6, 0x5

    invoke-virtual {v2, v6, v5}, Lcom/futuredial/publicobj/Item;->AddFieldString(ILjava/lang/String;)Z

    .line 141
    :cond_3
    const-string v6, "7"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 142
    const-string v6, "7"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 143
    const/4 v6, 0x7

    invoke-virtual {v2, v6, v5}, Lcom/futuredial/publicobj/Item;->AddFieldString(ILjava/lang/String;)Z

    .line 146
    :cond_4
    const-string v6, "1"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 147
    const-string v6, "1"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 148
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v9, :cond_7

    .line 149
    const/4 v6, 0x1

    const-string v7, "0"

    invoke-virtual {v2, v6, v7}, Lcom/futuredial/publicobj/Item;->AddFieldString(ILjava/lang/String;)Z

    .line 154
    :cond_5
    :goto_1
    const-string v6, "8"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 155
    const-string v6, "8"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 156
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v9, :cond_8

    .line 157
    const/16 v6, 0x8

    const-string v7, "1"

    invoke-virtual {v2, v6, v7}, Lcom/futuredial/publicobj/Item;->AddFieldString(ILjava/lang/String;)Z

    .line 162
    :cond_6
    :goto_2
    invoke-virtual {p2, v2}, Lcom/futuredial/publicobj/ItemArray;->AddItem(Lcom/futuredial/publicobj/Item;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 163
    .end local v3           #jsonObject:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 165
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 151
    .end local v1           #e:Lorg/json/JSONException;
    .restart local v3       #jsonObject:Lorg/json/JSONObject;
    :cond_7
    const/4 v6, 0x1

    :try_start_1
    const-string v7, "1"

    invoke-virtual {v2, v6, v7}, Lcom/futuredial/publicobj/Item;->AddFieldString(ILjava/lang/String;)Z

    goto :goto_1

    .line 159
    :cond_8
    const/16 v6, 0x8

    const-string v7, "0"

    invoke-virtual {v2, v6, v7}, Lcom/futuredial/publicobj/Item;->AddFieldString(ILjava/lang/String;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method parseTask(Ljava/lang/String;Lcom/futuredial/publicobj/ItemArray;Lcom/futuredial/publicobj/ItemArray;)V
    .locals 2
    .parameter "content"
    .parameter "iaComplete"
    .parameter "iaUnCompleted"

    .prologue
    .line 219
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 221
    new-instance v0, Lcom/futuredial/publicobj/Item;

    invoke-direct {v0}, Lcom/futuredial/publicobj/Item;-><init>()V

    .line 222
    .local v0, item:Lcom/futuredial/publicobj/Item;
    const/16 v1, 0x157c

    invoke-virtual {v0, v1, p1}, Lcom/futuredial/publicobj/Item;->AddFieldString(ILjava/lang/String;)Z

    .line 223
    invoke-virtual {p2, v0}, Lcom/futuredial/publicobj/ItemArray;->AddItem(Lcom/futuredial/publicobj/Item;)Z

    .line 224
    const-string p1, ""

    .line 225
    const/4 v0, 0x0

    .line 226
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 228
    .end local v0           #item:Lcom/futuredial/publicobj/Item;
    :cond_0
    return-void
.end method

.method parseType(I)I
    .locals 5
    .parameter "type"

    .prologue
    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v0, -0x1

    const/4 v4, 0x0

    .line 170
    if-nez p1, :cond_1

    .line 184
    :cond_0
    :goto_0
    return v0

    .line 172
    :cond_1
    if-ne p1, v1, :cond_2

    move v0, v1

    .line 173
    goto :goto_0

    .line 174
    :cond_2
    if-ne p1, v3, :cond_3

    move v0, v2

    .line 175
    goto :goto_0

    .line 176
    :cond_3
    if-ne p1, v2, :cond_4

    move v0, v3

    .line 177
    goto :goto_0

    .line 178
    :cond_4
    const/4 v1, 0x4

    if-ne p1, v1, :cond_5

    move v0, v4

    .line 179
    goto :goto_0

    .line 180
    :cond_5
    const/4 v1, 0x5

    if-ne p1, v1, :cond_6

    move v0, v4

    .line 181
    goto :goto_0

    .line 182
    :cond_6
    const/4 v1, 0x6

    if-ne p1, v1, :cond_0

    move v0, v4

    .line 183
    goto :goto_0
.end method
