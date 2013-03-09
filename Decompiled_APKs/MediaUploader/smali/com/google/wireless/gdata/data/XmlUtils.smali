.class public final Lcom/google/wireless/gdata/data/XmlUtils;
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
    .parameter
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
    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 34
    const/4 v0, 0x0

    .line 36
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static extractFirstChildTextIgnoreRest(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 42
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 43
    const/4 v2, 0x0

    move-object v5, v2

    move v2, v1

    move-object v1, v5

    .line 44
    :goto_0
    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    .line 45
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 47
    const/4 v4, 0x4

    if-ne v2, v4, :cond_1

    .line 48
    if-nez v1, :cond_0

    .line 49
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 54
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_0

    .line 51
    :cond_1
    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    if-ne v3, v0, :cond_0

    .line 52
    return-object v1

    .line 56
    :cond_2
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "End of document reached; never saw expected end tag at depth "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static nextDirectChildTag(Lorg/xmlpull/v1/XmlPullParser;I)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    add-int/lit8 v0, p1, 0x1

    .line 63
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 64
    :goto_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 65
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 67
    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    if-ne v2, v0, :cond_0

    .line 68
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 72
    :goto_1
    return-object v0

    .line 71
    :cond_0
    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    if-ne v2, p1, :cond_1

    .line 72
    const/4 v0, 0x0

    goto :goto_1

    .line 74
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 76
    :cond_2
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "End of document reached; never saw expected end tag at depth "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public skipSubTree(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    const/4 v0, 0x1

    .line 89
    :goto_0
    if-lez v0, :cond_0

    .line 90
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 91
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 93
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    .line 94
    goto :goto_0

    .line 96
    :pswitch_1
    add-int/lit8 v0, v0, -0x1

    .line 97
    goto :goto_0

    .line 102
    :cond_0
    return-void

    .line 91
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
