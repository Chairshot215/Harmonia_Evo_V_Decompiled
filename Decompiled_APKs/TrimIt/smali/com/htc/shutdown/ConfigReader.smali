.class public Lcom/htc/shutdown/ConfigReader;
.super Ljava/lang/Object;
.source "ConfigReader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ConfigReader"


# instance fields
.field private mConfigData:Lcom/htc/shutdown/ConfigData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/shutdown/ConfigReader;->mConfigData:Lcom/htc/shutdown/ConfigData;

    .line 32
    new-instance v0, Lcom/htc/shutdown/ConfigData;

    invoke-direct {v0}, Lcom/htc/shutdown/ConfigData;-><init>()V

    iput-object v0, p0, Lcom/htc/shutdown/ConfigReader;->mConfigData:Lcom/htc/shutdown/ConfigData;

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "Config"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/shutdown/ConfigReader;->mConfigData:Lcom/htc/shutdown/ConfigData;

    .line 38
    new-instance v0, Lcom/htc/shutdown/ConfigData;

    invoke-direct {v0}, Lcom/htc/shutdown/ConfigData;-><init>()V

    iput-object v0, p0, Lcom/htc/shutdown/ConfigReader;->mConfigData:Lcom/htc/shutdown/ConfigData;

    .line 39
    invoke-direct {p0, p1}, Lcom/htc/shutdown/ConfigReader;->fromXML(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method private fromXML(Ljava/lang/String;)V
    .locals 11
    .parameter "filename"

    .prologue
    .line 53
    const/4 v4, 0x0

    .line 55
    .local v4, reader:Ljava/io/FileReader;
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 56
    .local v2, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 58
    .local v6, xpp:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 61
    .end local v4           #reader:Ljava/io/FileReader;
    .local v5, reader:Ljava/io/FileReader;
    const-wide/16 v8, 0x1

    :try_start_1
    invoke-virtual {v5, v8, v9}, Ljava/io/FileReader;->skip(J)J

    .line 63
    invoke-interface {v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 64
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 66
    .local v1, eventType:I
    :cond_0
    packed-switch v1, :pswitch_data_0

    .line 77
    :goto_0
    :pswitch_0
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 78
    const/4 v8, 0x1

    if-ne v1, v8, :cond_0

    move-object v4, v5

    .line 91
    .end local v1           #eventType:I
    .end local v2           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v5           #reader:Ljava/io/FileReader;
    .end local v6           #xpp:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4       #reader:Ljava/io/FileReader;
    :goto_1
    return-void

    .line 71
    .end local v4           #reader:Ljava/io/FileReader;
    .restart local v1       #eventType:I
    .restart local v2       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v5       #reader:Ljava/io/FileReader;
    .restart local v6       #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :pswitch_1
    invoke-direct {p0, v6}, Lcom/htc/shutdown/ConfigReader;->parseInfo(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 80
    .end local v1           #eventType:I
    :catch_0
    move-exception v3

    move-object v4, v5

    .line 82
    .end local v2           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v5           #reader:Ljava/io/FileReader;
    .end local v6           #xpp:Lorg/xmlpull/v1/XmlPullParser;
    .local v3, ioe:Ljava/io/IOException;
    .restart local v4       #reader:Ljava/io/FileReader;
    :goto_2
    const-string v8, "ConfigReader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception reading XML data: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 84
    .end local v3           #ioe:Ljava/io/IOException;
    :catch_1
    move-exception v7

    .line 86
    .local v7, xppe:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_3
    const-string v8, "ConfigReader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception reading XML data: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 87
    .end local v7           #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v0

    .line 89
    .local v0, e:Ljava/lang/Exception;
    :goto_4
    const-string v8, "ConfigReader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception reading XML data: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 87
    .end local v0           #e:Ljava/lang/Exception;
    .end local v4           #reader:Ljava/io/FileReader;
    .restart local v2       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v5       #reader:Ljava/io/FileReader;
    .restart local v6       #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :catch_3
    move-exception v0

    move-object v4, v5

    .end local v5           #reader:Ljava/io/FileReader;
    .restart local v4       #reader:Ljava/io/FileReader;
    goto :goto_4

    .line 84
    .end local v4           #reader:Ljava/io/FileReader;
    .restart local v5       #reader:Ljava/io/FileReader;
    :catch_4
    move-exception v7

    move-object v4, v5

    .end local v5           #reader:Ljava/io/FileReader;
    .restart local v4       #reader:Ljava/io/FileReader;
    goto :goto_3

    .line 80
    .end local v2           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6           #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :catch_5
    move-exception v3

    goto :goto_2

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private parseInfo(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .parameter "xpp"

    .prologue
    .line 94
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, tagName:Ljava/lang/String;
    const-string v1, "ShutdownAnimation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    invoke-direct {p0, p1}, Lcom/htc/shutdown/ConfigReader;->parseShutdown(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 99
    :cond_0
    return-void
.end method

.method private parseShutdown(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .parameter "xpp"

    .prologue
    const/4 v3, 0x1

    .line 102
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    if-ge v0, v1, :cond_a

    .line 103
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "image"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    iget-object v1, p0, Lcom/htc/shutdown/ConfigReader;->mConfigData:Lcom/htc/shutdown/ConfigData;

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/shutdown/ConfigData;->image:Ljava/lang/String;

    .line 102
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_1
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 106
    iget-object v1, p0, Lcom/htc/shutdown/ConfigReader;->mConfigData:Lcom/htc/shutdown/ConfigData;

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/shutdown/ConfigData;->audio:Ljava/lang/String;

    goto :goto_1

    .line 107
    :cond_2
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "screenX"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 108
    iget-object v1, p0, Lcom/htc/shutdown/ConfigReader;->mConfigData:Lcom/htc/shutdown/ConfigData;

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/htc/shutdown/ConfigData;->screenX:I

    goto :goto_1

    .line 109
    :cond_3
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "screenY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 110
    iget-object v1, p0, Lcom/htc/shutdown/ConfigReader;->mConfigData:Lcom/htc/shutdown/ConfigData;

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/htc/shutdown/ConfigData;->screenY:I

    goto :goto_1

    .line 111
    :cond_4
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "image_bg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 112
    iget-object v1, p0, Lcom/htc/shutdown/ConfigReader;->mConfigData:Lcom/htc/shutdown/ConfigData;

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/shutdown/ConfigData;->bgPath:Ljava/lang/String;

    goto :goto_1

    .line 113
    :cond_5
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "useAudio"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 114
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_6

    .line 115
    iget-object v1, p0, Lcom/htc/shutdown/ConfigReader;->mConfigData:Lcom/htc/shutdown/ConfigData;

    iput-boolean v3, v1, Lcom/htc/shutdown/ConfigData;->useAudio:Z

    goto :goto_1

    .line 117
    :cond_6
    iget-object v1, p0, Lcom/htc/shutdown/ConfigReader;->mConfigData:Lcom/htc/shutdown/ConfigData;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/htc/shutdown/ConfigData;->useAudio:Z

    goto :goto_1

    .line 120
    :cond_7
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "image_png"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 121
    iget-object v1, p0, Lcom/htc/shutdown/ConfigReader;->mConfigData:Lcom/htc/shutdown/ConfigData;

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/shutdown/ConfigData;->pngPath:Ljava/lang/String;

    goto/16 :goto_1

    .line 122
    :cond_8
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "image_png_land"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 123
    iget-object v1, p0, Lcom/htc/shutdown/ConfigReader;->mConfigData:Lcom/htc/shutdown/ConfigData;

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/shutdown/ConfigData;->pngLandPath:Ljava/lang/String;

    goto/16 :goto_1

    .line 124
    :cond_9
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fps"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/htc/shutdown/ConfigReader;->mConfigData:Lcom/htc/shutdown/ConfigData;

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/htc/shutdown/ConfigData;->fps:I

    goto/16 :goto_1

    .line 129
    :cond_a
    return-void
.end method


# virtual methods
.method public getConfigData()Lcom/htc/shutdown/ConfigData;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/shutdown/ConfigReader;->mConfigData:Lcom/htc/shutdown/ConfigData;

    return-object v0
.end method

.method public parseConfigData(Ljava/lang/String;)V
    .locals 0
    .parameter "Config"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/htc/shutdown/ConfigReader;->fromXML(Ljava/lang/String;)V

    .line 45
    return-void
.end method
