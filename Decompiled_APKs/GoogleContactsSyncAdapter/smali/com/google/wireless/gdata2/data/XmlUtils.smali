.class public final Lcom/google/wireless/gdata2/data/XmlUtils;
.super Ljava/lang/Object;
.source "XmlUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 2
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 33
    .local v0, eventType:I
    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 34
    const/4 v1, 0x0

    .line 36
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static extractFirstChildTextIgnoreRest(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 7
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 53
    .local v3, parentDepth:I
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 54
    .local v2, eventType:I
    const/4 v0, 0x0

    .line 55
    .local v0, child:Ljava/lang/String;
    :goto_0
    const/4 v4, 0x1

    if-eq v2, v4, :cond_2

    .line 56
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 58
    .local v1, depth:I
    const/4 v4, 0x4

    if-ne v2, v4, :cond_1

    .line 59
    if-nez v0, :cond_0

    .line 60
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 65
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 66
    goto :goto_0

    .line 62
    :cond_1
    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    if-ne v1, v3, :cond_0

    .line 63
    return-object v0

    .line 67
    .end local v1           #depth:I
    :cond_2
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "End of document reached; never saw expected end tag at depth "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static nextDirectChildTag(Lorg/xmlpull/v1/XmlPullParser;I)Ljava/lang/String;
    .locals 6
    .parameter "parser"
    .parameter "parentDepth"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    add-int/lit8 v2, p1, 0x1

    .line 84
    .local v2, targetDepth:I
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 85
    .local v1, eventType:I
    :goto_0
    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    .line 86
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 88
    .local v0, depth:I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    if-ne v0, v2, :cond_0

    .line 89
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 93
    :goto_1
    return-object v3

    .line 92
    :cond_0
    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    if-ne v0, p1, :cond_1

    .line 93
    const/4 v3, 0x0

    goto :goto_1

    .line 95
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 96
    goto :goto_0

    .line 97
    .end local v0           #depth:I
    :cond_2
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "End of document reached; never saw expected end tag at depth "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
