.class public Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;
.super Ljava/lang/Object;
.source "XmlGDataParser.java"

# interfaces
.implements Lcom/google/wireless/gdata/parser/GDataParser;


# static fields
.field public static final NAMESPACE_ATOM_URI:Ljava/lang/String; = "http://www.w3.org/2005/Atom"

.field public static final NAMESPACE_GD:Ljava/lang/String; = "gd"

.field public static final NAMESPACE_GD_URI:Ljava/lang/String; = "http://schemas.google.com/g/2005"

.field public static final NAMESPACE_OPENSEARCH:Ljava/lang/String; = "openSearch"

.field public static final NAMESPACE_OPENSEARCH_URI:Ljava/lang/String; = "http://a9.com/-/spec/opensearchrss/1.0/"


# instance fields
.field private final is:Ljava/io/InputStream;

.field private isInBadState:Z

.field private final parser:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .parameter
    .parameter
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
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->isInBadState:Z

    .line 55
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->is:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :cond_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    new-instance v1, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v2, "Could not create XmlGDataParser"

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private handleAuthor(Lcom/google/wireless/gdata/data/Entry;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 454
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 455
    iget-object v1, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 457
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "author"

    iget-object v1, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 460
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected <author>: Actual element: <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 465
    :cond_1
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 466
    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    .line 467
    packed-switch v0, :pswitch_data_0

    .line 487
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 469
    :pswitch_0
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 470
    const-string v1, "name"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 471
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lcom/google/wireless/gdata/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    .line 472
    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata/data/Entry;->setAuthor(Ljava/lang/String;)V

    goto :goto_1

    .line 473
    :cond_3
    const-string v1, "email"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 474
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lcom/google/wireless/gdata/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    .line 475
    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata/data/Entry;->setEmail(Ljava/lang/String;)V

    goto :goto_1

    .line 479
    :pswitch_1
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 480
    const-string v1, "author"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 489
    :cond_4
    return-void

    .line 467
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final parseFeed()Lcom/google/wireless/gdata/data/Feed;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 154
    invoke-virtual {p0}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->createFeed()Lcom/google/wireless/gdata/data/Feed;

    move-result-object v0

    .line 157
    iget-object v1, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 158
    :goto_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_9

    .line 159
    packed-switch v1, :pswitch_data_0

    .line 199
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 161
    :pswitch_0
    iget-object v1, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 162
    const-string v2, "totalResults"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 163
    iget-object v1, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v1}, Lcom/google/wireless/gdata/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/google/wireless/gdata/data/StringUtils;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/data/Feed;->setTotalResults(I)V

    goto :goto_1

    .line 165
    :cond_1
    const-string v2, "startIndex"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 166
    iget-object v1, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v1}, Lcom/google/wireless/gdata/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/google/wireless/gdata/data/StringUtils;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/data/Feed;->setStartIndex(I)V

    goto :goto_1

    .line 168
    :cond_2
    const-string v2, "itemsPerPage"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 169
    iget-object v1, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v1}, Lcom/google/wireless/gdata/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/google/wireless/gdata/data/StringUtils;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/data/Feed;->setItemsPerPage(I)V

    goto :goto_1

    .line 171
    :cond_3
    const-string v2, "title"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 172
    iget-object v1, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v1}, Lcom/google/wireless/gdata/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/data/Feed;->setTitle(Ljava/lang/String;)V

    goto :goto_1

    .line 173
    :cond_4
    const-string v2, "id"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 174
    iget-object v1, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v1}, Lcom/google/wireless/gdata/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/data/Feed;->setId(Ljava/lang/String;)V

    goto :goto_1

    .line 175
    :cond_5
    const-string v2, "updated"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 176
    iget-object v1, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v1}, Lcom/google/wireless/gdata/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/data/Feed;->setLastUpdated(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 177
    :cond_6
    const-string v2, "category"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 178
    iget-object v1, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v2, "term"

    invoke-interface {v1, v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 180
    invoke-static {v1}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 181
    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/data/Feed;->setCategory(Ljava/lang/String;)V

    .line 183
    :cond_7
    iget-object v1, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v2, "scheme"

    invoke-interface {v1, v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-static {v1}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 186
    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/data/Feed;->setCategoryScheme(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 188
    :cond_8
    const-string v2, "entry"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 202
    :cond_9
    return-object v0

    .line 193
    :cond_a
    invoke-virtual {p0, v0}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->handleExtraElementInFeed(Lcom/google/wireless/gdata/data/Feed;)V

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
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 384
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 385
    :goto_0
    if-eq v0, v5, :cond_1

    .line 386
    packed-switch v0, :pswitch_data_0

    .line 447
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 389
    :pswitch_0
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 390
    const-string v1, "entry"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 449
    :cond_1
    return-void

    .line 393
    :cond_2
    const-string v1, "id"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 394
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lcom/google/wireless/gdata/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata/data/Entry;->setId(Ljava/lang/String;)V

    goto :goto_1

    .line 395
    :cond_3
    const-string v1, "title"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 396
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lcom/google/wireless/gdata/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata/data/Entry;->setTitle(Ljava/lang/String;)V

    goto :goto_1

    .line 397
    :cond_4
    const-string v1, "link"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 398
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v1, "rel"

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 400
    iget-object v1, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v2, "type"

    invoke-interface {v1, v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 402
    iget-object v2, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v3, "href"

    invoke-interface {v2, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 404
    const-string v3, "edit"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 405
    invoke-virtual {p1, v2}, Lcom/google/wireless/gdata/data/Entry;->setEditUri(Ljava/lang/String;)V

    goto :goto_1

    .line 406
    :cond_5
    const-string v3, "alternate"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "text/html"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 407
    invoke-virtual {p1, v2}, Lcom/google/wireless/gdata/data/Entry;->setHtmlUri(Ljava/lang/String;)V

    goto :goto_1

    .line 409
    :cond_6
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->handleExtraLinkInEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/gdata/data/Entry;)V

    goto :goto_1

    .line 414
    :cond_7
    const-string v1, "summary"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 415
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lcom/google/wireless/gdata/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata/data/Entry;->setSummary(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 416
    :cond_8
    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 418
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lcom/google/wireless/gdata/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata/data/Entry;->setContent(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 419
    :cond_9
    const-string v1, "author"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 420
    invoke-direct {p0, p1}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->handleAuthor(Lcom/google/wireless/gdata/data/Entry;)V

    goto/16 :goto_1

    .line 421
    :cond_a
    const-string v1, "category"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 422
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v1, "term"

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 424
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_b

    .line 425
    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata/data/Entry;->setCategory(Ljava/lang/String;)V

    .line 427
    :cond_b
    iget-object v1, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v2, "scheme"

    invoke-interface {v1, v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 429
    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 430
    invoke-virtual {p1, v1}, Lcom/google/wireless/gdata/data/Entry;->setCategoryScheme(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 432
    :cond_c
    const-string v1, "published"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 433
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lcom/google/wireless/gdata/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata/data/Entry;->setPublicationDate(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 435
    :cond_d
    const-string v1, "updated"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 436
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lcom/google/wireless/gdata/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata/data/Entry;->setUpdateDate(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 437
    :cond_e
    const-string v1, "deleted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 438
    invoke-virtual {p1, v5}, Lcom/google/wireless/gdata/data/Entry;->setDeleted(Z)V

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
    .parameter
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
    .parameter
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
    .parameter
    .parameter
    .parameter
    .parameter
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
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 220
    iget-boolean v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->isInBadState:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 227
    :goto_0
    return v0

    .line 224
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 225
    if-eq v0, v2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 226
    :catch_0
    move-exception v0

    move v0, v1

    .line 227
    goto :goto_0
.end method

.method public final init()Lcom/google/wireless/gdata/data/Feed;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 75
    if-eqz v0, :cond_0

    .line 76
    new-instance v0, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v1, "Attempting to initialize parsing beyond the start of the document."

    invoke-direct {v0, v1}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    new-instance v1, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v2, "Could not parse GData feed."

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 81
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v0

    .line 87
    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 88
    packed-switch v0, :pswitch_data_0

    .line 109
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    move-result v0

    goto :goto_0

    .line 82
    :catch_1
    move-exception v0

    .line 83
    new-instance v1, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v2, "Could not read next event."

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 84
    :catch_2
    move-exception v0

    .line 85
    new-instance v1, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v2, "Could not read next event."

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 90
    :pswitch_0
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 91
    const-string v1, "feed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    :try_start_3
    invoke-direct {p0}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parseFeed()Lcom/google/wireless/gdata/data/Feed;
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v0

    return-object v0

    .line 94
    :catch_3
    move-exception v0

    .line 95
    new-instance v1, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v2, "Unable to parse <feed>."

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 97
    :catch_4
    move-exception v0

    .line 98
    new-instance v1, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v2, "Unable to parse <feed>."

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 110
    :catch_5
    move-exception v0

    .line 111
    new-instance v1, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v2, "Could not read next event."

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 112
    :catch_6
    move-exception v0

    .line 113
    new-instance v1, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v2, "Could not read next event."

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 116
    :cond_2
    new-instance v0, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v1, "No <feed> found in document."

    invoke-direct {v0, v1}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public parseStandaloneEntry()Lcom/google/wireless/gdata/data/Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->createEntry()Lcom/google/wireless/gdata/data/Entry;

    move-result-object v0

    .line 302
    :try_start_0
    iget-object v1, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 306
    if-eqz v1, :cond_0

    .line 307
    new-instance v0, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v1, "Attempting to initialize parsing beyond the start of the document."

    invoke-direct {v0, v1}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :catch_0
    move-exception v0

    .line 304
    new-instance v1, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v2, "Could not parse GData entry."

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 312
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v1

    .line 318
    :goto_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 319
    packed-switch v1, :pswitch_data_0

    .line 342
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_5

    move-result v1

    goto :goto_0

    .line 313
    :catch_1
    move-exception v0

    .line 314
    new-instance v1, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v2, "Could not read next event."

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 315
    :catch_2
    move-exception v0

    .line 316
    new-instance v1, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v2, "Could not read next event."

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 321
    :pswitch_0
    iget-object v1, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 322
    const-string v2, "entry"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 324
    :try_start_3
    iget-object v1, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 325
    invoke-virtual {p0, v0}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->handleEntry(Lcom/google/wireless/gdata/data/Entry;)V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 326
    return-object v0

    .line 327
    :catch_3
    move-exception v0

    .line 328
    new-instance v1, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v2, "Unable to parse <entry>."

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 330
    :catch_4
    move-exception v0

    .line 331
    new-instance v1, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v2, "Unable to parse <entry>."

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 343
    :catch_5
    move-exception v0

    .line 344
    new-instance v1, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v2, "Could not read next event."

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 347
    :cond_2
    new-instance v0, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v1, "No <entry> found in document."

    invoke-direct {v0, v1}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 319
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public readNextEntry(Lcom/google/wireless/gdata/data/Entry;)Lcom/google/wireless/gdata/data/Entry;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 236
    invoke-virtual {p0}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->hasMoreData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "you shouldn\'t call this if hasMoreData() is false"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 247
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 248
    new-instance v1, Lcom/google/wireless/gdata/parser/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected event START_TAG: Actual event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lorg/xmlpull/v1/XmlPullParser;->TYPES:[Ljava/lang/String;

    aget-object v0, v3, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 243
    :catch_0
    move-exception v0

    .line 244
    new-instance v1, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v2, "Could not parse entry."

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 253
    const-string v1, "entry"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 254
    new-instance v1, Lcom/google/wireless/gdata/parser/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected <entry>: Actual element: <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 258
    :cond_2
    if-nez p1, :cond_3

    .line 259
    invoke-virtual {p0}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->createEntry()Lcom/google/wireless/gdata/data/Entry;

    move-result-object v0

    .line 265
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 266
    invoke-virtual {p0, v0}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->handleEntry(Lcom/google/wireless/gdata/data/Entry;)V

    .line 267
    invoke-virtual {v0}, Lcom/google/wireless/gdata/data/Entry;->validate()V
    :try_end_1
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3

    .line 287
    return-object v0

    .line 261
    :cond_3
    invoke-virtual {p1}, Lcom/google/wireless/gdata/data/Entry;->clear()V

    move-object v0, p1

    goto :goto_0

    .line 268
    :catch_1
    move-exception v1

    .line 270
    :try_start_2
    invoke-virtual {p0}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->hasMoreData()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->skipToNextEntry()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2

    .line 276
    :cond_4
    :goto_1
    new-instance v2, Lcom/google/wireless/gdata/parser/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not parse <entry>, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 271
    :catch_2
    move-exception v2

    .line 274
    iput-boolean v3, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->isInBadState:Z

    goto :goto_1

    .line 277
    :catch_3
    move-exception v1

    .line 279
    :try_start_3
    invoke-virtual {p0}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->hasMoreData()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->skipToNextEntry()V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_4

    .line 285
    :cond_5
    :goto_2
    new-instance v2, Lcom/google/wireless/gdata/parser/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not parse <entry>, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 280
    :catch_4
    move-exception v2

    .line 283
    iput-boolean v3, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->isInBadState:Z

    goto :goto_2
.end method

.method protected skipToNextEntry()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 355
    invoke-virtual {p0}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->hasMoreData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 356
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "you shouldn\'t call this if hasMoreData() is false"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 362
    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 363
    packed-switch v0, :pswitch_data_0

    .line 370
    :cond_1
    iget-object v0, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 365
    :pswitch_0
    const-string v0, "entry"

    iget-object v1, p0, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 372
    :cond_2
    return-void

    .line 363
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
