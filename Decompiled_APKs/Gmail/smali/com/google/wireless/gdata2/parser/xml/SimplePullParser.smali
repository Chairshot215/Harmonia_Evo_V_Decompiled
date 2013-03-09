.class public Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;
.super Ljava/lang/Object;
.source "SimplePullParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;
    }
.end annotation


# instance fields
.field private mCurrentStartTag:Ljava/lang/String;

.field private mLogTag:Ljava/lang/String;

.field private final mParser:Lorg/xmlpull/v1/XmlPullParser;

.field private source:Ljava/io/Closeable;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 3
    .parameter "stream"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v2, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mLogTag:Ljava/lang/String;

    .line 56
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 57
    .local v1, parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v1, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 58
    invoke-static {v1}, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->moveToStartDocument(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 59
    iput-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 60
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mCurrentStartTag:Ljava/lang/String;

    .line 61
    iput-object p1, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->source:Ljava/io/Closeable;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    return-void

    .line 62
    .end local v1           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v0

    .line 63
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v2, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;

    invoke-direct {v2, v0}, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 3
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v2, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mLogTag:Ljava/lang/String;

    .line 91
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 92
    .local v1, parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 93
    invoke-static {v1}, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->moveToStartDocument(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 94
    iput-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 95
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mCurrentStartTag:Ljava/lang/String;

    .line 96
    iput-object p1, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->source:Ljava/io/Closeable;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    return-void

    .line 97
    .end local v1           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v0

    .line 98
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v2, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;

    invoke-direct {v2, v0}, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "xml"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;
        }
    .end annotation

    .prologue
    .line 82
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;-><init>(Ljava/io/Reader;)V

    .line 83
    return-void
.end method

.method private static moveToStartDocument(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 106
    .local v0, eventType:I
    if-eqz v0, :cond_0

    .line 107
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "Not at start of response"

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 109
    :cond_0
    return-void
.end method


# virtual methods
.method public getDepth()I
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    return v0
.end method

.method public getIntAttribute(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .parameter "namespace"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;
        }
    .end annotation

    .prologue
    .line 319
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->getStringAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 321
    .local v1, value:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 322
    :catch_0
    move-exception v0

    .line 323
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v2, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot parse \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' as an integer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getIntAttribute(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 5
    .parameter "namespace"
    .parameter "name"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;
        }
    .end annotation

    .prologue
    .line 300
    iget-object v2, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 301
    .local v1, value:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 303
    .end local p3
    :goto_0
    return p3

    .restart local p3
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p3

    goto :goto_0

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v2, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot parse \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' as an integer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getLongAttribute(Ljava/lang/String;Ljava/lang/String;)J
    .locals 5
    .parameter "namespace"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;
        }
    .end annotation

    .prologue
    .line 370
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->getStringAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 372
    .local v1, value:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 373
    :catch_0
    move-exception v0

    .line 374
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v2, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot parse \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' as a long"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getStringAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "namespace"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;
        }
    .end annotation

    .prologue
    .line 280
    iget-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, value:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 282
    new-instance v1, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "missing \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' attribute on \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mCurrentStartTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' element"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 285
    :cond_0
    return-object v0
.end method

.method public nextTag(I)Ljava/lang/String;
    .locals 1
    .parameter "parentDepth"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;
        }
    .end annotation

    .prologue
    .line 203
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->nextTagOrText(ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextTagOrText(ILjava/lang/StringBuilder;)Ljava/lang/String;
    .locals 10
    .parameter "parentDepth"
    .parameter "textBuilder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x3

    const/4 v7, 0x0

    .line 139
    :cond_0
    const/4 v3, 0x0

    .line 141
    .local v3, eventType:I
    :try_start_0
    iget-object v8, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 145
    iget-object v8, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 146
    .local v1, depth:I
    iput-object v7, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mCurrentStartTag:Ljava/lang/String;

    .line 148
    const/4 v8, 0x2

    if-ne v3, v8, :cond_5

    add-int/lit8 v8, p1, 0x1

    if-ne v1, v8, :cond_5

    .line 149
    iget-object v7, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mCurrentStartTag:Ljava/lang/String;

    .line 150
    iget-object v7, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mLogTag:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mLogTag:Ljava/lang/String;

    invoke-static {v7, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 151
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .local v5, sb:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v1, :cond_1

    const-string v7, "  "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 142
    .end local v1           #depth:I
    .end local v4           #i:I
    .end local v5           #sb:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v2

    .line 143
    .local v2, e:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v7, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;

    invoke-direct {v7, v2}, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 153
    .end local v2           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v1       #depth:I
    .restart local v4       #i:I
    .restart local v5       #sb:Ljava/lang/StringBuilder;
    :cond_1
    const-string v7, "<"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    iget-object v7, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 155
    .local v0, count:I
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_2

    .line 156
    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    iget-object v7, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    const-string v7, "=\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    iget-object v7, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    const-string v7, "\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 162
    :cond_2
    const-string v7, ">"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    iget-object v7, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mLogTag:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    .end local v0           #count:I
    .end local v4           #i:I
    .end local v5           #sb:Ljava/lang/StringBuilder;
    :cond_3
    iget-object v7, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 194
    :cond_4
    :goto_2
    return-object v7

    .line 168
    :cond_5
    if-ne v3, v9, :cond_7

    if-ne v1, p1, :cond_7

    .line 169
    iget-object v8, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mLogTag:Ljava/lang/String;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mLogTag:Ljava/lang/String;

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 170
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .restart local v5       #sb:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_3
    if-ge v4, v1, :cond_6

    const-string v8, "  "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 172
    :cond_6
    const-string v8, "</>"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    iget-object v8, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mLogTag:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 178
    .end local v4           #i:I
    .end local v5           #sb:Ljava/lang/StringBuilder;
    :cond_7
    const/4 v8, 0x1

    if-ne v3, v8, :cond_8

    if-nez p1, :cond_8

    .line 181
    iget-object v8, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->source:Ljava/io/Closeable;

    if-eqz v8, :cond_4

    .line 182
    iget-object v8, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->source:Ljava/io/Closeable;

    invoke-interface {v8}, Ljava/io/Closeable;->close()V

    .line 183
    iput-object v7, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->source:Ljava/io/Closeable;

    goto :goto_2

    .line 188
    :cond_8
    const/4 v8, 0x4

    if-ne v3, v8, :cond_0

    if-ne v1, p1, :cond_0

    .line 189
    if-eqz p2, :cond_0

    .line 192
    iget-object v7, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    .line 193
    .local v6, text:Ljava/lang/String;
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    const-string v7, "![CDATA["

    goto :goto_2
.end method
