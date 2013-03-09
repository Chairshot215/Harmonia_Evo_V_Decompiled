.class public Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;
.super Ljava/lang/Object;
.source "XmlGDataParser.java"

# interfaces
.implements Lcom/google/wireless/gdata/parser/GDataParser;


# instance fields
.field private final is:Ljava/io/InputStream;

.field private isInBadState:Z

.field private final parser:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .parameter "is"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->is:Ljava/io/InputStream;

    .line 53
    iput-object p2, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    .line 54
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->isInBadState:Z

    .line 55
    iget-object v1, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->is:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 57
    :try_start_0
    iget-object v1, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :cond_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v2, "Could not create XmlGDataParser"

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private handleAuthor(Lcom/google/wireless/gdata/data/Entry;)V
    .locals 7
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 454
    iget-object v4, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 455
    .local v2, eventType:I
    iget-object v4, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 457
    .local v3, name:Ljava/lang/String;
    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    const-string v4, "author"

    iget-object v5, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 460
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected <author>: Actual element: <"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 465
    :cond_1
    iget-object v4, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 466
    :goto_0
    const/4 v4, 0x1

    if-eq v2, v4, :cond_4

    .line 467
    packed-switch v2, :pswitch_data_0

    .line 487
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_0

    .line 469
    :pswitch_0
    iget-object v4, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 470
    const-string v4, "name"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 471
    iget-object v4, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v4}, Lcom/google/wireless/gdata/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    .line 472
    .local v0, authorName:Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata/data/Entry;->setAuthor(Ljava/lang/String;)V

    goto :goto_1

    .line 473
    .end local v0           #authorName:Ljava/lang/String;
    :cond_3
    const-string v4, "email"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 474
    iget-object v4, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v4}, Lcom/google/wireless/gdata/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 475
    .local v1, email:Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/google/wireless/gdata/data/Entry;->setEmail(Ljava/lang/String;)V

    goto :goto_1

    .line 479
    .end local v1           #email:Ljava/lang/String;
    :pswitch_1
    iget-object v4, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 480
    const-string v4, "author"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 489
    :cond_4
    return-void

    .line 467
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final parseFeed()Lcom/google/wireless/gdata/data/Feed;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 154
    invoke-virtual {p0}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->createFeed()Lcom/google/wireless/gdata/data/Feed;

    move-result-object v3

    .line 157
    .local v3, feed:Lcom/google/wireless/gdata/data/Feed;
    iget-object v5, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 158
    .local v2, eventType:I
    :goto_0
    const/4 v5, 0x1

    if-eq v2, v5, :cond_9

    .line 159
    packed-switch v2, :pswitch_data_0

    .line 199
    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_0

    .line 161
    :pswitch_0
    iget-object v5, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 162
    .local v4, name:Ljava/lang/String;
    const-string v5, "totalResults"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 163
    iget-object v5, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v5}, Lcom/google/wireless/gdata/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v7}, Lcom/google/wireless/gdata/data/StringUtils;->parseInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/google/wireless/gdata/data/Feed;->setTotalResults(I)V

    goto :goto_1

    .line 165
    :cond_1
    const-string v5, "startIndex"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 166
    iget-object v5, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v5}, Lcom/google/wireless/gdata/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v7}, Lcom/google/wireless/gdata/data/StringUtils;->parseInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/google/wireless/gdata/data/Feed;->setStartIndex(I)V

    goto :goto_1

    .line 168
    :cond_2
    const-string v5, "itemsPerPage"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 169
    iget-object v5, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v5}, Lcom/google/wireless/gdata/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v7}, Lcom/google/wireless/gdata/data/StringUtils;->parseInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/google/wireless/gdata/data/Feed;->setItemsPerPage(I)V

    goto :goto_1

    .line 171
    :cond_3
    const-string v5, "title"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 172
    iget-object v5, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v5}, Lcom/google/wireless/gdata/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/wireless/gdata/data/Feed;->setTitle(Ljava/lang/String;)V

    goto :goto_1

    .line 173
    :cond_4
    const-string v5, "id"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 174
    iget-object v5, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v5}, Lcom/google/wireless/gdata/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/wireless/gdata/data/Feed;->setId(Ljava/lang/String;)V

    goto :goto_1

    .line 175
    :cond_5
    const-string v5, "updated"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 176
    iget-object v5, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v5}, Lcom/google/wireless/gdata/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/wireless/gdata/data/Feed;->setLastUpdated(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 177
    :cond_6
    const-string v5, "category"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 178
    iget-object v5, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v6, "term"

    invoke-interface {v5, v8, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, category:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 181
    invoke-virtual {v3, v0}, Lcom/google/wireless/gdata/data/Feed;->setCategory(Ljava/lang/String;)V

    .line 183
    :cond_7
    iget-object v5, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v6, "scheme"

    invoke-interface {v5, v8, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, categoryScheme:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 186
    invoke-virtual {v3, v1}, Lcom/google/wireless/gdata/data/Feed;->setCategoryScheme(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 188
    .end local v0           #category:Ljava/lang/String;
    .end local v1           #categoryScheme:Ljava/lang/String;
    :cond_8
    const-string v5, "entry"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 202
    .end local v4           #name:Ljava/lang/String;
    :cond_9
    return-object v3

    .line 193
    .restart local v4       #name:Ljava/lang/String;
    :cond_a
    invoke-virtual {p0, v3}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->handleExtraElementInFeed(Lcom/google/wireless/gdata/data/Feed;)V

    goto/16 :goto_1

    .line 159
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->is:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 498
    :try_start_0
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    :cond_0
    :goto_0
    return-void

    .line 499
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected createEntry()Lcom/google/wireless/gdata/data/Entry;
    .locals 1

    .prologue
    .line 141
    new-instance v0, Lcom/google/wireless/gdata/data/Entry;

    invoke-direct {v0}, Lcom/google/wireless/gdata/data/Entry;-><init>()V

    return-object v0
.end method

.method protected createFeed()Lcom/google/wireless/gdata/data/Feed;
    .locals 1

    .prologue
    .line 132
    new-instance v0, Lcom/google/wireless/gdata/data/Feed;

    invoke-direct {v0}, Lcom/google/wireless/gdata/data/Feed;-><init>()V

    return-object v0
.end method

.method protected final getParser()Lorg/xmlpull/v1/XmlPullParser;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    return-object v0
.end method

.method protected handleEntry(Lcom/google/wireless/gdata/data/Entry;)V
    .locals 11
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 384
    iget-object v7, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 385
    .local v2, eventType:I
    :goto_0
    if-eq v2, v10, :cond_1

    .line 386
    packed-switch v2, :pswitch_data_0

    .line 447
    :cond_0
    :goto_1
    iget-object v7, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_0

    .line 389
    :pswitch_0
    iget-object v7, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 390
    .local v4, name:Ljava/lang/String;
    const-string v7, "entry"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 449
    .end local v4           #name:Ljava/lang/String;
    :cond_1
    return-void

    .line 393
    .restart local v4       #name:Ljava/lang/String;
    :cond_2
    const-string v7, "id"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 394
    iget-object v7, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v7}, Lcom/google/wireless/gdata/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/google/wireless/gdata/data/Entry;->setId(Ljava/lang/String;)V

    goto :goto_1

    .line 395
    :cond_3
    const-string v7, "title"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 396
    iget-object v7, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v7}, Lcom/google/wireless/gdata/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/google/wireless/gdata/data/Entry;->setTitle(Ljava/lang/String;)V

    goto :goto_1

    .line 397
    :cond_4
    const-string v7, "link"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 398
    iget-object v7, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v8, "rel"

    invoke-interface {v7, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 400
    .local v5, rel:Ljava/lang/String;
    iget-object v7, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v8, "type"

    invoke-interface {v7, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 402
    .local v6, type:Ljava/lang/String;
    iget-object v7, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v8, "href"

    invoke-interface {v7, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 404
    .local v3, href:Ljava/lang/String;
    const-string v7, "edit"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 405
    invoke-virtual {p1, v3}, Lcom/google/wireless/gdata/data/Entry;->setEditUri(Ljava/lang/String;)V

    goto :goto_1

    .line 406
    :cond_5
    const-string v7, "alternate"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "text/html"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 407
    invoke-virtual {p1, v3}, Lcom/google/wireless/gdata/data/Entry;->setHtmlUri(Ljava/lang/String;)V

    goto :goto_1

    .line 409
    :cond_6
    invoke-virtual {p0, v5, v6, v3, p1}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->handleExtraLinkInEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/gdata/data/Entry;)V

    goto :goto_1

    .line 414
    .end local v3           #href:Ljava/lang/String;
    .end local v5           #rel:Ljava/lang/String;
    .end local v6           #type:Ljava/lang/String;
    :cond_7
    const-string v7, "summary"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 415
    iget-object v7, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v7}, Lcom/google/wireless/gdata/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/google/wireless/gdata/data/Entry;->setSummary(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 416
    :cond_8
    const-string v7, "content"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 418
    iget-object v7, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v7}, Lcom/google/wireless/gdata/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/google/wireless/gdata/data/Entry;->setContent(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 419
    :cond_9
    const-string v7, "author"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 420
    invoke-direct {p0, p1}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->handleAuthor(Lcom/google/wireless/gdata/data/Entry;)V

    goto/16 :goto_1

    .line 421
    :cond_a
    const-string v7, "category"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 422
    iget-object v7, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v8, "term"

    invoke-interface {v7, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 424
    .local v0, category:Ljava/lang/String;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_b

    .line 425
    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata/data/Entry;->setCategory(Ljava/lang/String;)V

    .line 427
    :cond_b
    iget-object v7, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v8, "scheme"

    invoke-interface {v7, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 429
    .local v1, categoryScheme:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 430
    invoke-virtual {p1, v1}, Lcom/google/wireless/gdata/data/Entry;->setCategoryScheme(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 432
    .end local v0           #category:Ljava/lang/String;
    .end local v1           #categoryScheme:Ljava/lang/String;
    :cond_c
    const-string v7, "published"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 433
    iget-object v7, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v7}, Lcom/google/wireless/gdata/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/google/wireless/gdata/data/Entry;->setPublicationDate(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 435
    :cond_d
    const-string v7, "updated"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 436
    iget-object v7, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v7}, Lcom/google/wireless/gdata/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/google/wireless/gdata/data/Entry;->setUpdateDate(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 437
    :cond_e
    const-string v7, "deleted"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 438
    invoke-virtual {p1, v10}, Lcom/google/wireless/gdata/data/Entry;->setDeleted(Z)V

    goto/16 :goto_1

    .line 440
    :cond_f
    invoke-virtual {p0, p1}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->handleExtraElementInEntry(Lcom/google/wireless/gdata/data/Entry;)V

    goto/16 :goto_1

    .line 386
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected handleExtraElementInEntry(Lcom/google/wireless/gdata/data/Entry;)V
    .locals 0
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 513
    return-void
.end method

.method protected handleExtraElementInFeed(Lcom/google/wireless/gdata/data/Feed;)V
    .locals 0
    .parameter "feed"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    return-void
.end method

.method protected handleExtraLinkInEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/gdata/data/Entry;)V
    .locals 0
    .parameter "rel"
    .parameter "type"
    .parameter "href"
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 529
    return-void
.end method

.method public hasMoreData()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 220
    iget-boolean v4, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->isInBadState:Z

    if-eqz v4, :cond_0

    .line 227
    :goto_0
    return v3

    .line 224
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 225
    .local v0, eventType:I
    if-eq v0, v2, :cond_1

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    .line 226
    .end local v0           #eventType:I
    :catch_0
    move-exception v1

    .line 227
    .local v1, xppe:Lorg/xmlpull/v1/XmlPullParserException;
    goto :goto_0
.end method

.method public final init()Lcom/google/wireless/gdata/data/Feed;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 71
    :try_start_0
    iget-object v5, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 75
    .local v1, eventType:I
    if-eqz v1, :cond_0

    .line 76
    new-instance v5, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v6, "Attempting to initialize parsing beyond the start of the document."

    invoke-direct {v5, v6}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 72
    .end local v1           #eventType:I
    :catch_0
    move-exception v0

    .line 73
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v5, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v6, "Could not parse GData feed."

    invoke-direct {v5, v6, v0}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 81
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v1       #eventType:I
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v1

    .line 87
    :goto_0
    const/4 v5, 0x1

    if-eq v1, v5, :cond_2

    .line 88
    packed-switch v1, :pswitch_data_0

    .line 109
    :cond_1
    :try_start_2
    iget-object v5, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    move-result v1

    goto :goto_0

    .line 82
    :catch_1
    move-exception v4

    .line 83
    .local v4, xppe:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v5, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v6, "Could not read next event."

    invoke-direct {v5, v6, v4}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 84
    .end local v4           #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v2

    .line 85
    .local v2, ioe:Ljava/io/IOException;
    new-instance v5, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v6, "Could not read next event."

    invoke-direct {v5, v6, v2}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 90
    .end local v2           #ioe:Ljava/io/IOException;
    :pswitch_0
    iget-object v5, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 91
    .local v3, name:Ljava/lang/String;
    const-string v5, "feed"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 93
    :try_start_3
    invoke-direct {p0}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parseFeed()Lcom/google/wireless/gdata/data/Feed;
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v5

    return-object v5

    .line 94
    :catch_3
    move-exception v4

    .line 95
    .restart local v4       #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v5, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v6, "Unable to parse <feed>."

    invoke-direct {v5, v6, v4}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 97
    .end local v4           #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_4
    move-exception v2

    .line 98
    .restart local v2       #ioe:Ljava/io/IOException;
    new-instance v5, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v6, "Unable to parse <feed>."

    invoke-direct {v5, v6, v2}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 110
    .end local v2           #ioe:Ljava/io/IOException;
    .end local v3           #name:Ljava/lang/String;
    :catch_5
    move-exception v4

    .line 111
    .restart local v4       #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v5, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v6, "Could not read next event."

    invoke-direct {v5, v6, v4}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 112
    .end local v4           #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_6
    move-exception v2

    .line 113
    .restart local v2       #ioe:Ljava/io/IOException;
    new-instance v5, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v6, "Could not read next event."

    invoke-direct {v5, v6, v2}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 116
    .end local v2           #ioe:Ljava/io/IOException;
    :cond_2
    new-instance v5, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v6, "No <feed> found in document."

    invoke-direct {v5, v6}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public parseStandaloneEntry()Lcom/google/wireless/gdata/data/Entry;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->createEntry()Lcom/google/wireless/gdata/data/Entry;

    move-result-object v1

    .line 302
    .local v1, entry:Lcom/google/wireless/gdata/data/Entry;
    :try_start_0
    iget-object v6, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 306
    .local v2, eventType:I
    if-eqz v2, :cond_0

    .line 307
    new-instance v6, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v7, "Attempting to initialize parsing beyond the start of the document."

    invoke-direct {v6, v7}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 303
    .end local v2           #eventType:I
    :catch_0
    move-exception v0

    .line 304
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v6, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v7, "Could not parse GData entry."

    invoke-direct {v6, v7, v0}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 312
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v2       #eventType:I
    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v2

    .line 318
    :goto_0
    const/4 v6, 0x1

    if-eq v2, v6, :cond_2

    .line 319
    packed-switch v2, :pswitch_data_0

    .line 342
    :cond_1
    :try_start_2
    iget-object v6, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_5

    move-result v2

    goto :goto_0

    .line 313
    :catch_1
    move-exception v5

    .line 314
    .local v5, xppe:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v6, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v7, "Could not read next event."

    invoke-direct {v6, v7, v5}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 315
    .end local v5           #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v3

    .line 316
    .local v3, ioe:Ljava/io/IOException;
    new-instance v6, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v7, "Could not read next event."

    invoke-direct {v6, v7, v3}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 321
    .end local v3           #ioe:Ljava/io/IOException;
    :pswitch_0
    iget-object v6, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 322
    .local v4, name:Ljava/lang/String;
    const-string v6, "entry"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 324
    :try_start_3
    iget-object v6, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 325
    invoke-virtual {p0, v1}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->handleEntry(Lcom/google/wireless/gdata/data/Entry;)V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 326
    return-object v1

    .line 327
    :catch_3
    move-exception v5

    .line 328
    .restart local v5       #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v6, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v7, "Unable to parse <entry>."

    invoke-direct {v6, v7, v5}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 330
    .end local v5           #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_4
    move-exception v3

    .line 331
    .restart local v3       #ioe:Ljava/io/IOException;
    new-instance v6, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v7, "Unable to parse <entry>."

    invoke-direct {v6, v7, v3}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 343
    .end local v3           #ioe:Ljava/io/IOException;
    .end local v4           #name:Ljava/lang/String;
    :catch_5
    move-exception v5

    .line 344
    .restart local v5       #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v6, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v7, "Could not read next event."

    invoke-direct {v6, v7, v5}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 347
    .end local v5           #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_2
    new-instance v6, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v7, "No <entry> found in document."

    invoke-direct {v6, v7}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 319
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public readNextEntry(Lcom/google/wireless/gdata/data/Entry;)Lcom/google/wireless/gdata/data/Entry;
    .locals 8
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 236
    invoke-virtual {p0}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->hasMoreData()Z

    move-result v5

    if-nez v5, :cond_0

    .line 237
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "you shouldn\'t call this if hasMoreData() is false"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 242
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 247
    .local v1, eventType:I
    const/4 v5, 0x2

    if-eq v1, v5, :cond_1

    .line 248
    new-instance v5, Lcom/google/wireless/gdata/parser/ParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected event START_TAG: Actual event: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lorg/xmlpull/v1/XmlPullParser;->TYPES:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 243
    .end local v1           #eventType:I
    :catch_0
    move-exception v0

    .line 244
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v5, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v6, "Could not parse entry."

    invoke-direct {v5, v6, v0}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 252
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v1       #eventType:I
    :cond_1
    iget-object v5, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 253
    .local v2, name:Ljava/lang/String;
    const-string v5, "entry"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 254
    new-instance v5, Lcom/google/wireless/gdata/parser/ParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected <entry>: Actual element: <"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 258
    :cond_2
    if-nez p1, :cond_3

    .line 259
    invoke-virtual {p0}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->createEntry()Lcom/google/wireless/gdata/data/Entry;

    move-result-object p1

    .line 265
    :goto_0
    :try_start_1
    iget-object v5, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 266
    invoke-virtual {p0, p1}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->handleEntry(Lcom/google/wireless/gdata/data/Entry;)V

    .line 267
    invoke-virtual {p1}, Lcom/google/wireless/gdata/data/Entry;->validate()V
    :try_end_1
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3

    .line 287
    return-object p1

    .line 261
    :cond_3
    invoke-virtual {p1}, Lcom/google/wireless/gdata/data/Entry;->clear()V

    goto :goto_0

    .line 268
    :catch_1
    move-exception v3

    .line 270
    .local v3, xppe1:Lcom/google/wireless/gdata/parser/ParseException;
    :try_start_2
    invoke-virtual {p0}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->hasMoreData()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->skipToNextEntry()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2

    .line 276
    :cond_4
    :goto_1
    new-instance v5, Lcom/google/wireless/gdata/parser/ParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not parse <entry>, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 271
    :catch_2
    move-exception v4

    .line 274
    .local v4, xppe2:Lorg/xmlpull/v1/XmlPullParserException;
    iput-boolean v6, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->isInBadState:Z

    goto :goto_1

    .line 277
    .end local v3           #xppe1:Lcom/google/wireless/gdata/parser/ParseException;
    .end local v4           #xppe2:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_3
    move-exception v3

    .line 279
    .local v3, xppe1:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_3
    invoke-virtual {p0}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->hasMoreData()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->skipToNextEntry()V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_4

    .line 285
    :cond_5
    :goto_2
    new-instance v5, Lcom/google/wireless/gdata/parser/ParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not parse <entry>, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 280
    :catch_4
    move-exception v4

    .line 283
    .restart local v4       #xppe2:Lorg/xmlpull/v1/XmlPullParserException;
    iput-boolean v6, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->isInBadState:Z

    goto :goto_2
.end method

.method protected skipToNextEntry()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 355
    invoke-virtual {p0}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->hasMoreData()Z

    move-result v1

    if-nez v1, :cond_0

    .line 356
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "you shouldn\'t call this if hasMoreData() is false"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 359
    :cond_0
    iget-object v1, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 362
    .local v0, eventType:I
    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 363
    packed-switch v0, :pswitch_data_0

    .line 370
    :cond_1
    iget-object v1, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 365
    :pswitch_0
    const-string v1, "entry"

    iget-object v2, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 372
    :cond_2
    return-void

    .line 363
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
