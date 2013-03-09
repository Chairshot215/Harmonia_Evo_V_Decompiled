.class public Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;
.super Ljava/lang/Object;
.source "XmlGDataParser.java"

# interfaces
.implements Lcom/google/wireless/gdata2/parser/GDataParser;


# instance fields
.field private fields:Ljava/lang/String;

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
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->is:Ljava/io/InputStream;

    .line 68
    iput-object p2, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    .line 70
    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-interface {p2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 72
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "A XmlGDataParser needs to be constructed with a namespace aware XmlPullParser"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 76
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->isInBadState:Z

    .line 77
    iget-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->is:Ljava/io/InputStream;

    if-eqz v1, :cond_1

    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :cond_1
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v2, "Could not create XmlGDataParser"

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static getAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "parser"
    .parameter "name"

    .prologue
    .line 711
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I
    .locals 1
    .parameter "parser"
    .parameter "name"

    .prologue
    .line 715
    invoke-static {p0, p1}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->getAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private handleAuthor(Lcom/google/wireless/gdata2/data/Entry;)V
    .locals 7
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 644
    iget-object v4, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 645
    .local v2, eventType:I
    iget-object v4, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 647
    .local v3, name:Ljava/lang/String;
    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    sget-object v4, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->AUTHOR:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 650
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected <author>: Actual element: <"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

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

    .line 655
    :cond_1
    iget-object v4, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 656
    :goto_0
    const/4 v4, 0x1

    if-eq v2, v4, :cond_4

    .line 657
    packed-switch v2, :pswitch_data_0

    .line 677
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_0

    .line 659
    :pswitch_0
    iget-object v4, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 660
    sget-object v4, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->NAME:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 661
    iget-object v4, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v4}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    .line 662
    .local v0, authorName:Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata2/data/Entry;->setAuthor(Ljava/lang/String;)V

    goto :goto_1

    .line 663
    .end local v0           #authorName:Ljava/lang/String;
    :cond_3
    sget-object v4, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->EMAIL:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 664
    iget-object v4, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v4}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 665
    .local v1, email:Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/google/wireless/gdata2/data/Entry;->setEmail(Ljava/lang/String;)V

    goto :goto_1

    .line 669
    .end local v1           #email:Ljava/lang/String;
    :pswitch_1
    iget-object v4, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 670
    sget-object v4, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->AUTHOR:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 679
    :cond_4
    return-void

    .line 657
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleBatchInfo(Lcom/google/wireless/gdata2/data/Entry;)V
    .locals 6
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 683
    iget-object v3, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 684
    .local v1, name:Ljava/lang/String;
    sget-object v3, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->STATUS:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 685
    new-instance v2, Lcom/google/wireless/gdata2/data/batch/BatchStatus;

    invoke-direct {v2}, Lcom/google/wireless/gdata2/data/batch/BatchStatus;-><init>()V

    .line 686
    .local v2, status:Lcom/google/wireless/gdata2/data/batch/BatchStatus;
    invoke-static {p1, v2}, Lcom/google/wireless/gdata2/data/batch/BatchUtils;->setBatchStatus(Lcom/google/wireless/gdata2/data/Entry;Lcom/google/wireless/gdata2/data/batch/BatchStatus;)V

    .line 687
    iget-object v3, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v4, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->CODE:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/wireless/gdata2/data/batch/BatchStatus;->setStatusCode(I)V

    .line 688
    iget-object v3, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v4, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->REASON:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->getAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/wireless/gdata2/data/batch/BatchStatus;->setReason(Ljava/lang/String;)V

    .line 689
    iget-object v3, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v4, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->CONTENT_TYPE:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->getAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/wireless/gdata2/data/batch/BatchStatus;->setContentType(Ljava/lang/String;)V

    .line 691
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->skipSubTree()V

    .line 708
    .end local v2           #status:Lcom/google/wireless/gdata2/data/batch/BatchStatus;
    :goto_0
    return-void

    .line 692
    :cond_0
    sget-object v3, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ID:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 693
    iget-object v3, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v3}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/google/wireless/gdata2/data/batch/BatchUtils;->setBatchId(Lcom/google/wireless/gdata2/data/Entry;Ljava/lang/String;)V

    goto :goto_0

    .line 694
    :cond_1
    sget-object v3, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->OPERATION:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 695
    iget-object v3, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v4, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->TYPE:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->getAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/google/wireless/gdata2/data/batch/BatchUtils;->setBatchOperation(Lcom/google/wireless/gdata2/data/Entry;Ljava/lang/String;)V

    goto :goto_0

    .line 696
    :cond_2
    const-string v3, "interrupted"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 697
    new-instance v0, Lcom/google/wireless/gdata2/data/batch/BatchInterrupted;

    invoke-direct {v0}, Lcom/google/wireless/gdata2/data/batch/BatchInterrupted;-><init>()V

    .line 698
    .local v0, interrupted:Lcom/google/wireless/gdata2/data/batch/BatchInterrupted;
    invoke-static {p1, v0}, Lcom/google/wireless/gdata2/data/batch/BatchUtils;->setBatchInterrupted(Lcom/google/wireless/gdata2/data/Entry;Lcom/google/wireless/gdata2/data/batch/BatchInterrupted;)V

    .line 699
    iget-object v3, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v4, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->REASON:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->getAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/wireless/gdata2/data/batch/BatchInterrupted;->setReason(Ljava/lang/String;)V

    .line 700
    iget-object v3, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v4, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ERROR:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/wireless/gdata2/data/batch/BatchInterrupted;->setErrorCount(I)V

    .line 701
    iget-object v3, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v4, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->SUCCESS:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/wireless/gdata2/data/batch/BatchInterrupted;->setSuccessCount(I)V

    .line 702
    iget-object v3, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v4, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->PARSED:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/wireless/gdata2/data/batch/BatchInterrupted;->setTotalCount(I)V

    .line 704
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->skipSubTree()V

    goto :goto_0

    .line 706
    .end local v0           #interrupted:Lcom/google/wireless/gdata2/data/batch/BatchInterrupted;
    :cond_3
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected batch element "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private final parseFeed()Lcom/google/wireless/gdata2/data/Feed;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 222
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->createFeed()Lcom/google/wireless/gdata2/data/Feed;

    move-result-object v3

    .line 224
    .local v3, feed:Lcom/google/wireless/gdata2/data/Feed;
    iget-object v6, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v7, "http://schemas.google.com/g/2005"

    sget-object v8, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ETAG:Ljava/lang/String;

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/wireless/gdata2/data/Feed;->setETag(Ljava/lang/String;)V

    .line 226
    iget-object v6, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 227
    .local v2, eventType:I
    :goto_0
    const/4 v6, 0x1

    if-eq v2, v6, :cond_a

    .line 228
    packed-switch v2, :pswitch_data_0

    .line 274
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_0

    .line 230
    :pswitch_0
    iget-object v6, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 231
    .local v4, name:Ljava/lang/String;
    iget-object v6, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v5

    .line 234
    .local v5, namespace:Ljava/lang/String;
    const-string v6, "http://a9.com/-/spec/opensearchrss/1.0/"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "http://a9.com/-/spec/opensearch/1.1/"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 236
    :cond_1
    sget-object v6, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->TOTAL_RESULTS:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 237
    iget-object v6, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v6}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v9}, Lcom/google/wireless/gdata2/data/StringUtils;->parseInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/google/wireless/gdata2/data/Feed;->setTotalResults(I)V

    goto :goto_1

    .line 239
    :cond_2
    sget-object v6, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->START_INDEX:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 240
    iget-object v6, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v6}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v9}, Lcom/google/wireless/gdata2/data/StringUtils;->parseInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/google/wireless/gdata2/data/Feed;->setStartIndex(I)V

    goto :goto_1

    .line 242
    :cond_3
    sget-object v6, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ITEMS_PER_PAGE:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 243
    iget-object v6, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v6}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v9}, Lcom/google/wireless/gdata2/data/StringUtils;->parseInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/google/wireless/gdata2/data/Feed;->setItemsPerPage(I)V

    goto :goto_1

    .line 246
    :cond_4
    const-string v6, "http://www.w3.org/2005/Atom"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 247
    sget-object v6, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->TITLE:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 248
    iget-object v6, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v6}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/wireless/gdata2/data/Feed;->setTitle(Ljava/lang/String;)V

    goto :goto_1

    .line 249
    :cond_5
    sget-object v6, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ID:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 250
    iget-object v6, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v6}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/wireless/gdata2/data/Feed;->setId(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 251
    :cond_6
    sget-object v6, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->UPDATED:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 252
    iget-object v6, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v6}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/wireless/gdata2/data/Feed;->setLastUpdated(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 253
    :cond_7
    sget-object v6, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->CATEGORY:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 254
    iget-object v6, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v7, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->TERM:Ljava/lang/String;

    invoke-interface {v6, v10, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, category:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 257
    invoke-virtual {v3, v0}, Lcom/google/wireless/gdata2/data/Feed;->setCategory(Ljava/lang/String;)V

    .line 259
    :cond_8
    iget-object v6, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v7, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->SCHEME:Ljava/lang/String;

    invoke-interface {v6, v10, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 261
    .local v1, categoryScheme:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 262
    invoke-virtual {v3, v1}, Lcom/google/wireless/gdata2/data/Feed;->setCategoryScheme(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 264
    .end local v0           #category:Ljava/lang/String;
    .end local v1           #categoryScheme:Ljava/lang/String;
    :cond_9
    sget-object v6, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ENTRY:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 277
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #namespace:Ljava/lang/String;
    :cond_a
    return-object v3

    .line 269
    .restart local v4       #name:Ljava/lang/String;
    .restart local v5       #namespace:Ljava/lang/String;
    :cond_b
    invoke-virtual {p0, v3}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->handleExtraElementInFeed(Lcom/google/wireless/gdata2/data/Feed;)V

    goto/16 :goto_1

    .line 228
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private final parsePartialFeed()Lcom/google/wireless/gdata2/data/Feed;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 187
    iget-object v4, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v5, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->FIELDS:Ljava/lang/String;

    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->fields:Ljava/lang/String;

    .line 189
    iget-object v4, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 190
    .local v0, eventType:I
    :goto_0
    const/4 v4, 0x1

    if-eq v0, v4, :cond_1

    .line 191
    packed-switch v0, :pswitch_data_0

    .line 204
    :cond_0
    iget-object v4, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 193
    :pswitch_0
    iget-object v4, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, name:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, namespace:Ljava/lang/String;
    const-string v4, "http://www.w3.org/2005/Atom"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 197
    sget-object v4, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->FEED:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 198
    invoke-direct {p0}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parseFeed()Lcom/google/wireless/gdata2/data/Feed;

    move-result-object v3

    .line 207
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #namespace:Ljava/lang/String;
    :cond_1
    return-object v3

    .line 191
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 723
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->is:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 725
    :try_start_0
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 730
    :cond_0
    :goto_0
    return-void

    .line 726
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected createEntry()Lcom/google/wireless/gdata2/data/Entry;
    .locals 1

    .prologue
    .line 172
    new-instance v0, Lcom/google/wireless/gdata2/data/Entry;

    invoke-direct {v0}, Lcom/google/wireless/gdata2/data/Entry;-><init>()V

    return-object v0
.end method

.method protected createFeed()Lcom/google/wireless/gdata2/data/Feed;
    .locals 1

    .prologue
    .line 163
    new-instance v0, Lcom/google/wireless/gdata2/data/Feed;

    invoke-direct {v0}, Lcom/google/wireless/gdata2/data/Feed;-><init>()V

    return-object v0
.end method

.method protected final getParser()Lorg/xmlpull/v1/XmlPullParser;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    return-object v0
.end method

.method protected handleDefaultEntryElements(Lcom/google/wireless/gdata2/data/Entry;)Z
    .locals 1
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 757
    const/4 v0, 0x0

    return v0
.end method

.method protected handleEntry(Lcom/google/wireless/gdata2/data/Entry;)V
    .locals 12
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 550
    sget-object v7, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ENTRY:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 551
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Expected <entry>: Actual element: <"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ">"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 556
    :cond_0
    iget-object v7, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v8, "http://schemas.google.com/g/2005"

    sget-object v9, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ETAG:Ljava/lang/String;

    invoke-interface {v7, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/google/wireless/gdata2/data/Entry;->setETag(Ljava/lang/String;)V

    .line 557
    iget-object v7, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->fields:Ljava/lang/String;

    invoke-virtual {p1, v7}, Lcom/google/wireless/gdata2/data/Entry;->setFields(Ljava/lang/String;)V

    .line 559
    iget-object v7, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 561
    iget-object v7, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 562
    .local v2, eventType:I
    :goto_0
    if-eq v2, v11, :cond_11

    .line 563
    packed-switch v2, :pswitch_data_0

    .line 636
    :cond_1
    :goto_1
    iget-object v7, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_0

    .line 565
    :pswitch_0
    iget-object v7, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 566
    .local v4, name:Ljava/lang/String;
    sget-object v7, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ENTRY:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 639
    .end local v4           #name:Ljava/lang/String;
    :goto_2
    return-void

    .line 572
    .restart local v4       #name:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->handleDefaultEntryElements(Lcom/google/wireless/gdata2/data/Entry;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 576
    const-string v7, "http://schemas.google.com/gdata/batch"

    iget-object v8, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 579
    invoke-direct {p0, p1}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->handleBatchInfo(Lcom/google/wireless/gdata2/data/Entry;)V

    goto :goto_1

    .line 580
    :cond_3
    sget-object v7, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ID:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 581
    iget-object v7, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v7}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/google/wireless/gdata2/data/Entry;->setId(Ljava/lang/String;)V

    goto :goto_1

    .line 582
    :cond_4
    sget-object v7, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->TITLE:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 583
    iget-object v7, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v7}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/google/wireless/gdata2/data/Entry;->setTitle(Ljava/lang/String;)V

    goto :goto_1

    .line 584
    :cond_5
    sget-object v7, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->LINK:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 585
    iget-object v7, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v8, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->REL:Ljava/lang/String;

    invoke-interface {v7, v10, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 587
    .local v5, rel:Ljava/lang/String;
    iget-object v7, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v8, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->TYPE:Ljava/lang/String;

    invoke-interface {v7, v10, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 589
    .local v6, type:Ljava/lang/String;
    iget-object v7, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v8, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->HREF:Ljava/lang/String;

    invoke-interface {v7, v10, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 591
    .local v3, href:Ljava/lang/String;
    sget-object v7, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->EDIT_REL:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 592
    invoke-virtual {p1, v3}, Lcom/google/wireless/gdata2/data/Entry;->setEditUri(Ljava/lang/String;)V

    goto :goto_1

    .line 593
    :cond_6
    sget-object v7, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ALTERNATE_REL:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    sget-object v7, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->TEXTHTML:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 595
    invoke-virtual {p1, v3}, Lcom/google/wireless/gdata2/data/Entry;->setHtmlUri(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 597
    :cond_7
    invoke-virtual {p0, v5, v6, v3, p1}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->handleExtraLinkInEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/gdata2/data/Entry;)V

    goto/16 :goto_1

    .line 602
    .end local v3           #href:Ljava/lang/String;
    .end local v5           #rel:Ljava/lang/String;
    .end local v6           #type:Ljava/lang/String;
    :cond_8
    sget-object v7, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->SUMMARY:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 603
    iget-object v7, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v7}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/google/wireless/gdata2/data/Entry;->setSummary(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 604
    :cond_9
    sget-object v7, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->CONTENT:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 605
    iget-object v7, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v8, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->TYPE:Ljava/lang/String;

    invoke-interface {v7, v10, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/google/wireless/gdata2/data/Entry;->setContentType(Ljava/lang/String;)V

    .line 606
    iget-object v7, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v8, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->SRC:Ljava/lang/String;

    invoke-interface {v7, v10, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/google/wireless/gdata2/data/Entry;->setContentSource(Ljava/lang/String;)V

    .line 607
    iget-object v7, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v7}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/google/wireless/gdata2/data/Entry;->setContent(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 608
    :cond_a
    sget-object v7, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->AUTHOR:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 609
    invoke-direct {p0, p1}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->handleAuthor(Lcom/google/wireless/gdata2/data/Entry;)V

    goto/16 :goto_1

    .line 610
    :cond_b
    sget-object v7, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->CATEGORY:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 611
    iget-object v7, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v8, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->TERM:Ljava/lang/String;

    invoke-interface {v7, v10, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 613
    .local v0, category:Ljava/lang/String;
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_c

    .line 614
    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata2/data/Entry;->setCategory(Ljava/lang/String;)V

    .line 616
    :cond_c
    iget-object v7, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v8, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->SCHEME:Ljava/lang/String;

    invoke-interface {v7, v10, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 618
    .local v1, categoryScheme:Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 619
    invoke-virtual {p1, v1}, Lcom/google/wireless/gdata2/data/Entry;->setCategoryScheme(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 621
    .end local v0           #category:Ljava/lang/String;
    .end local v1           #categoryScheme:Ljava/lang/String;
    :cond_d
    sget-object v7, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->PUBLISHED:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 622
    iget-object v7, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v7}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/google/wireless/gdata2/data/Entry;->setPublicationDate(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 624
    :cond_e
    sget-object v7, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->UPDATED:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 625
    iget-object v7, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v7}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/google/wireless/gdata2/data/Entry;->setUpdateDate(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 626
    :cond_f
    sget-object v7, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->DELETED:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 627
    invoke-virtual {p1, v11}, Lcom/google/wireless/gdata2/data/Entry;->setDeleted(Z)V

    goto/16 :goto_1

    .line 629
    :cond_10
    invoke-virtual {p0, p1}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->handleExtraElementInEntry(Lcom/google/wireless/gdata2/data/Entry;)V

    goto/16 :goto_1

    .line 638
    .end local v4           #name:Ljava/lang/String;
    :cond_11
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/data/Entry;->validate()V

    goto/16 :goto_2

    .line 563
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected handleExtraElementInEntry(Lcom/google/wireless/gdata2/data/Entry;)V
    .locals 0
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 743
    return-void
.end method

.method protected handleExtraElementInFeed(Lcom/google/wireless/gdata2/data/Feed;)V
    .locals 0
    .parameter "feed"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 290
    return-void
.end method

.method protected handleExtraLinkInEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/gdata2/data/Entry;)V
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
    .line 775
    return-void
.end method

.method protected handlePartialEntry(Lcom/google/wireless/gdata2/data/Entry;)V
    .locals 5
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 510
    sget-object v2, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->PARTIAL:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 511
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected <partial>: Actual element: <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 516
    :cond_0
    iget-object v2, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v3, 0x0

    sget-object v4, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->FIELDS:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->fields:Ljava/lang/String;

    .line 518
    iget-object v2, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 520
    iget-object v2, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 521
    .local v0, eventType:I
    :goto_0
    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    .line 522
    packed-switch v0, :pswitch_data_0

    .line 532
    :cond_1
    iget-object v2, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 524
    :pswitch_0
    iget-object v2, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 525
    .local v1, name:Ljava/lang/String;
    sget-object v2, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ENTRY:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 526
    invoke-virtual {p0, p1}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->handleEntry(Lcom/google/wireless/gdata2/data/Entry;)V

    .line 534
    .end local v1           #name:Ljava/lang/String;
    :cond_2
    return-void

    .line 522
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public hasMoreData()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 297
    iget-boolean v4, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->isInBadState:Z

    if-eqz v4, :cond_0

    .line 304
    :goto_0
    return v3

    .line 301
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 302
    .local v0, eventType:I
    if-eq v0, v2, :cond_1

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    .line 303
    .end local v0           #eventType:I
    :catch_0
    move-exception v1

    .line 304
    .local v1, xppe:Lorg/xmlpull/v1/XmlPullParserException;
    goto :goto_0
.end method

.method public final parseFeedEnvelope()Lcom/google/wireless/gdata2/data/Feed;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 92
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->fields:Ljava/lang/String;

    .line 94
    :try_start_0
    iget-object v5, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 98
    .local v1, eventType:I
    if-eqz v1, :cond_0

    .line 99
    new-instance v5, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v6, "Attempting to initialize parsing beyond the start of the document."

    invoke-direct {v5, v6}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 95
    .end local v1           #eventType:I
    :catch_0
    move-exception v0

    .line 96
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v5, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v6, "Could not parse GData feed."

    invoke-direct {v5, v6, v0}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 104
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v1       #eventType:I
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v1

    .line 110
    :goto_0
    const/4 v5, 0x1

    if-eq v1, v5, :cond_3

    .line 111
    packed-switch v1, :pswitch_data_0

    .line 140
    :cond_1
    :try_start_2
    iget-object v5, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    move-result v1

    goto :goto_0

    .line 105
    :catch_1
    move-exception v4

    .line 106
    .local v4, xppe:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v5, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v6, "Could not read next event."

    invoke-direct {v5, v6, v4}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 107
    .end local v4           #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v2

    .line 108
    .local v2, ioe:Ljava/io/IOException;
    new-instance v5, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v6, "Could not read next event."

    invoke-direct {v5, v6, v2}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 113
    .end local v2           #ioe:Ljava/io/IOException;
    :pswitch_0
    iget-object v5, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 114
    .local v3, name:Ljava/lang/String;
    sget-object v5, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->PARTIAL:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 116
    :try_start_3
    invoke-direct {p0}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parsePartialFeed()Lcom/google/wireless/gdata2/data/Feed;
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v5

    .line 124
    :goto_1
    return-object v5

    .line 117
    :catch_3
    move-exception v4

    .line 118
    .restart local v4       #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v5, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v6, "Unable to parse <partial> feed start"

    invoke-direct {v5, v6, v4}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 119
    .end local v4           #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_4
    move-exception v2

    .line 120
    .restart local v2       #ioe:Ljava/io/IOException;
    new-instance v5, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v6, "Unable to parse <partial> feed start"

    invoke-direct {v5, v6, v2}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 122
    .end local v2           #ioe:Ljava/io/IOException;
    :cond_2
    sget-object v5, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->FEED:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 124
    :try_start_4
    invoke-direct {p0}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parseFeed()Lcom/google/wireless/gdata2/data/Feed;
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    move-result-object v5

    goto :goto_1

    .line 125
    :catch_5
    move-exception v4

    .line 126
    .restart local v4       #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v5, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v6, "Unable to parse <feed>."

    invoke-direct {v5, v6, v4}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 128
    .end local v4           #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_6
    move-exception v2

    .line 129
    .restart local v2       #ioe:Ljava/io/IOException;
    new-instance v5, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v6, "Unable to parse <feed>."

    invoke-direct {v5, v6, v2}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 141
    .end local v2           #ioe:Ljava/io/IOException;
    .end local v3           #name:Ljava/lang/String;
    :catch_7
    move-exception v4

    .line 142
    .restart local v4       #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v5, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v6, "Could not read next event."

    invoke-direct {v5, v6, v4}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 143
    .end local v4           #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_8
    move-exception v2

    .line 144
    .restart local v2       #ioe:Ljava/io/IOException;
    new-instance v5, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v6, "Could not read next event."

    invoke-direct {v5, v6, v2}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 147
    .end local v2           #ioe:Ljava/io/IOException;
    :cond_3
    new-instance v5, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v6, "No <feed> found in document."

    invoke-direct {v5, v6}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public parseStandaloneEntry()Lcom/google/wireless/gdata2/data/Entry;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 381
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->fields:Ljava/lang/String;

    .line 382
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->createEntry()Lcom/google/wireless/gdata2/data/Entry;

    move-result-object v1

    .line 386
    .local v1, entry:Lcom/google/wireless/gdata2/data/Entry;
    :try_start_0
    iget-object v6, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 390
    .local v2, eventType:I
    if-eqz v2, :cond_0

    .line 391
    new-instance v6, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v7, "Attempting to initialize parsing beyond the start of the document."

    invoke-direct {v6, v7}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 387
    .end local v2           #eventType:I
    :catch_0
    move-exception v0

    .line 388
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v6, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v7, "Could not parse GData entry."

    invoke-direct {v6, v7, v0}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 396
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v2       #eventType:I
    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v2

    .line 402
    :goto_0
    const/4 v6, 0x1

    if-eq v2, v6, :cond_3

    .line 403
    packed-switch v2, :pswitch_data_0

    .line 436
    :cond_1
    :try_start_2
    iget-object v6, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_7

    move-result v2

    goto :goto_0

    .line 397
    :catch_1
    move-exception v5

    .line 398
    .local v5, xppe:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v6, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v7, "Could not read next event."

    invoke-direct {v6, v7, v5}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 399
    .end local v5           #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v3

    .line 400
    .local v3, ioe:Ljava/io/IOException;
    new-instance v6, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v7, "Could not read next event."

    invoke-direct {v6, v7, v3}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 405
    .end local v3           #ioe:Ljava/io/IOException;
    :pswitch_0
    iget-object v6, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 406
    .local v4, name:Ljava/lang/String;
    sget-object v6, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->PARTIAL:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 408
    :try_start_3
    invoke-virtual {p0, v1}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->handlePartialEntry(Lcom/google/wireless/gdata2/data/Entry;)V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 420
    :goto_1
    return-object v1

    .line 410
    :catch_3
    move-exception v5

    .line 411
    .restart local v5       #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v6, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v7, "Unable to parse <partial> entry."

    invoke-direct {v6, v7, v5}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 413
    .end local v5           #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_4
    move-exception v3

    .line 414
    .restart local v3       #ioe:Ljava/io/IOException;
    new-instance v6, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v7, "Unable to parse <partial> entry."

    invoke-direct {v6, v7, v3}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 417
    .end local v3           #ioe:Ljava/io/IOException;
    :cond_2
    sget-object v6, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ENTRY:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 419
    :try_start_4
    invoke-virtual {p0, v1}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->handleEntry(Lcom/google/wireless/gdata2/data/Entry;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_1

    .line 421
    :catch_5
    move-exception v5

    .line 422
    .restart local v5       #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v6, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v7, "Unable to parse <entry>."

    invoke-direct {v6, v7, v5}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 424
    .end local v5           #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_6
    move-exception v3

    .line 425
    .restart local v3       #ioe:Ljava/io/IOException;
    new-instance v6, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v7, "Unable to parse <entry>."

    invoke-direct {v6, v7, v3}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 437
    .end local v3           #ioe:Ljava/io/IOException;
    .end local v4           #name:Ljava/lang/String;
    :catch_7
    move-exception v5

    .line 438
    .restart local v5       #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v6, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v7, "Could not read next event."

    invoke-direct {v6, v7, v5}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 441
    .end local v5           #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_3
    new-instance v6, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v7, "No <entry> found in document."

    invoke-direct {v6, v7}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 403
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public readNextEntry(Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/wireless/gdata2/data/Entry;
    .locals 8
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 313
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->hasMoreData()Z

    move-result v5

    if-nez v5, :cond_0

    .line 314
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "you shouldn\'t call this if hasMoreData() is false"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 319
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 324
    .local v1, eventType:I
    const/4 v5, 0x2

    if-eq v1, v5, :cond_1

    .line 325
    new-instance v5, Lcom/google/wireless/gdata2/parser/ParseException;

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

    invoke-direct {v5, v6}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 320
    .end local v1           #eventType:I
    :catch_0
    move-exception v0

    .line 321
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v5, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v6, "Could not parse entry."

    invoke-direct {v5, v6, v0}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 329
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v1       #eventType:I
    :cond_1
    iget-object v5, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 333
    .local v2, name:Ljava/lang/String;
    sget-object v5, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ENTRY:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->PARTIAL:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 335
    new-instance v5, Lcom/google/wireless/gdata2/parser/ParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected <entry> or <partial>: Actual element: <"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 339
    :cond_2
    if-nez p1, :cond_3

    .line 340
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->createEntry()Lcom/google/wireless/gdata2/data/Entry;

    move-result-object p1

    .line 346
    :goto_0
    :try_start_1
    sget-object v5, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ENTRY:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 347
    invoke-virtual {p0, p1}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->handleEntry(Lcom/google/wireless/gdata2/data/Entry;)V
    :try_end_1
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3

    .line 370
    :goto_1
    return-object p1

    .line 342
    :cond_3
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/data/Entry;->clear()V

    goto :goto_0

    .line 349
    :cond_4
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->handlePartialEntry(Lcom/google/wireless/gdata2/data/Entry;)V
    :try_end_2
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    .line 351
    :catch_1
    move-exception v3

    .line 353
    .local v3, xppe1:Lcom/google/wireless/gdata2/parser/ParseException;
    :try_start_3
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->hasMoreData()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->skipToNextEntry()V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2

    .line 359
    :cond_5
    :goto_2
    new-instance v5, Lcom/google/wireless/gdata2/parser/ParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not parse <entry>, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 354
    :catch_2
    move-exception v4

    .line 357
    .local v4, xppe2:Lorg/xmlpull/v1/XmlPullParserException;
    iput-boolean v6, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->isInBadState:Z

    goto :goto_2

    .line 360
    .end local v3           #xppe1:Lcom/google/wireless/gdata2/parser/ParseException;
    .end local v4           #xppe2:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_3
    move-exception v3

    .line 362
    .local v3, xppe1:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_4
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->hasMoreData()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->skipToNextEntry()V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_4

    .line 368
    :cond_6
    :goto_3
    new-instance v5, Lcom/google/wireless/gdata2/parser/ParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not parse <entry>, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 363
    :catch_4
    move-exception v4

    .line 366
    .restart local v4       #xppe2:Lorg/xmlpull/v1/XmlPullParserException;
    iput-boolean v6, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->isInBadState:Z

    goto :goto_3
.end method

.method protected skipSubTree()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 480
    const/4 v1, 0x1

    .line 481
    .local v1, level:I
    :goto_0
    if-lez v1, :cond_0

    .line 482
    iget-object v2, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 483
    .local v0, eventType:I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 485
    :pswitch_0
    add-int/lit8 v1, v1, 0x1

    .line 486
    goto :goto_0

    .line 488
    :pswitch_1
    add-int/lit8 v1, v1, -0x1

    .line 489
    goto :goto_0

    .line 494
    .end local v0           #eventType:I
    :cond_0
    return-void

    .line 483
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
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
    .line 451
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->hasMoreData()Z

    move-result v1

    if-nez v1, :cond_0

    .line 452
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "you shouldn\'t call this if hasMoreData() is false"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 455
    :cond_0
    iget-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 458
    .local v0, eventType:I
    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 459
    packed-switch v0, :pswitch_data_0

    .line 466
    :cond_1
    iget-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 461
    :pswitch_0
    sget-object v1, Lcom/google/wireless/gdata2/parser/xml/XmlNametable;->ENTRY:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 468
    :cond_2
    return-void

    .line 459
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
