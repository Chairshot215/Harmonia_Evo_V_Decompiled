.class public Lcom/htc/sync/provider/weather/XmlParser;
.super Ljava/lang/Object;
.source "XmlParser.java"


# static fields
.field private static final LOG_FLAG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "WSP XMLParser"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method private _parseHour(Lorg/kxml2/kdom/Element;Lcom/htc/util/weather/WSPPData;)V
    .locals 8
    .parameter "eHour"
    .parameter "data"

    .prologue
    .line 385
    invoke-virtual {p1}, Lorg/kxml2/kdom/Element;->getChildCount()I

    move-result v4

    .line 386
    .local v4, totalHourChild:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_5

    .line 387
    invoke-virtual {p1, v2}, Lorg/kxml2/kdom/Element;->getChild(I)Ljava/lang/Object;

    move-result-object v3

    .line 388
    .local v3, obj:Ljava/lang/Object;
    instance-of v5, v3, Lorg/kxml2/kdom/Element;

    if-nez v5, :cond_1

    .line 386
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v3

    .line 392
    check-cast v0, Lorg/kxml2/kdom/Element;

    .line 393
    .local v0, eItem:Lorg/kxml2/kdom/Element;
    invoke-virtual {v0}, Lorg/kxml2/kdom/Element;->getName()Ljava/lang/String;

    move-result-object v1

    .line 395
    .local v1, eItemName:Ljava/lang/String;
    const-string v5, "weathericon"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 396
    invoke-virtual {p2}, Lcom/htc/util/weather/WSPPData;->getHourConditionId()Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {p0, v0}, Lcom/htc/sync/provider/weather/XmlParser;->getItemText(Lorg/kxml2/kdom/Element;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 398
    :cond_2
    const-string v5, "temperature"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 399
    invoke-virtual {p2}, Lcom/htc/util/weather/WSPPData;->getHourTempF()Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {p0, v0}, Lcom/htc/sync/provider/weather/XmlParser;->getItemText(Lorg/kxml2/kdom/Element;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    invoke-virtual {p2}, Lcom/htc/util/weather/WSPPData;->getHourTempC()Ljava/util/ArrayList;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, v0}, Lcom/htc/sync/provider/weather/XmlParser;->getItemText(Lorg/kxml2/kdom/Element;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/htc/sync/provider/weather/XmlParser;->fromFtoCtemp(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 402
    :cond_3
    const-string v5, "realfeel"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 403
    invoke-virtual {p2}, Lcom/htc/util/weather/WSPPData;->getHourFeelTempF()Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {p0, v0}, Lcom/htc/sync/provider/weather/XmlParser;->getItemText(Lorg/kxml2/kdom/Element;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    invoke-virtual {p2}, Lcom/htc/util/weather/WSPPData;->getHourFeelTempC()Ljava/util/ArrayList;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, v0}, Lcom/htc/sync/provider/weather/XmlParser;->getItemText(Lorg/kxml2/kdom/Element;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/htc/sync/provider/weather/XmlParser;->fromFtoCtemp(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 406
    :cond_4
    const-string v5, "precip"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 407
    invoke-virtual {p2}, Lcom/htc/util/weather/WSPPData;->getHourPrecip()Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {p0, v0}, Lcom/htc/sync/provider/weather/XmlParser;->getItemText(Lorg/kxml2/kdom/Element;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 411
    .end local v0           #eItem:Lorg/kxml2/kdom/Element;
    .end local v1           #eItemName:Ljava/lang/String;
    .end local v3           #obj:Ljava/lang/Object;
    :cond_5
    return-void
.end method

.method private _parseItemCurrent(Lorg/kxml2/kdom/Element;Lcom/htc/util/weather/WSPPData;)V
    .locals 6
    .parameter "eCurrent"
    .parameter "data"

    .prologue
    .line 93
    invoke-virtual {p1}, Lorg/kxml2/kdom/Element;->getChildCount()I

    move-result v4

    .line 94
    .local v4, totalCurrentChild:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_9

    .line 95
    invoke-virtual {p1, v2}, Lorg/kxml2/kdom/Element;->getChild(I)Ljava/lang/Object;

    move-result-object v3

    .line 96
    .local v3, obj:Ljava/lang/Object;
    instance-of v5, v3, Lorg/kxml2/kdom/Element;

    if-nez v5, :cond_1

    .line 94
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v3

    .line 100
    check-cast v0, Lorg/kxml2/kdom/Element;

    .line 101
    .local v0, eItem:Lorg/kxml2/kdom/Element;
    invoke-virtual {v0}, Lorg/kxml2/kdom/Element;->getName()Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, eItemName:Ljava/lang/String;
    const-string v5, "url"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 104
    invoke-direct {p0, v0}, Lcom/htc/sync/provider/weather/XmlParser;->getItemText(Lorg/kxml2/kdom/Element;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/htc/util/weather/WSPPData;->setCityWebURL(Ljava/lang/String;)V

    goto :goto_1

    .line 106
    :cond_2
    const-string v5, "temperature"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 107
    invoke-direct {p0, v0}, Lcom/htc/sync/provider/weather/XmlParser;->getItemText(Lorg/kxml2/kdom/Element;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/htc/sync/provider/weather/XmlParser;->fromFtoCtemp(I)I

    move-result v5

    invoke-virtual {p2, v5}, Lcom/htc/util/weather/WSPPData;->setCurTempC(I)V

    .line 108
    invoke-direct {p0, v0}, Lcom/htc/sync/provider/weather/XmlParser;->getItemText(Lorg/kxml2/kdom/Element;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p2, v5}, Lcom/htc/util/weather/WSPPData;->setCurTempF(I)V

    goto :goto_1

    .line 111
    :cond_3
    const-string v5, "weathericon"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 112
    invoke-direct {p0, v0}, Lcom/htc/sync/provider/weather/XmlParser;->getItemText(Lorg/kxml2/kdom/Element;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/htc/util/weather/WSPPData;->setCurConditionId(Ljava/lang/String;)V

    goto :goto_1

    .line 114
    :cond_4
    const-string v5, "realfeel"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 116
    invoke-direct {p0, v0}, Lcom/htc/sync/provider/weather/XmlParser;->getItemText(Lorg/kxml2/kdom/Element;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/htc/sync/provider/weather/XmlParser;->fromFtoCtemp(I)I

    move-result v5

    invoke-virtual {p2, v5}, Lcom/htc/util/weather/WSPPData;->setCurFeelTempC(I)V

    .line 117
    invoke-direct {p0, v0}, Lcom/htc/sync/provider/weather/XmlParser;->getItemText(Lorg/kxml2/kdom/Element;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p2, v5}, Lcom/htc/util/weather/WSPPData;->setCurFeelTempF(I)V

    goto :goto_1

    .line 119
    :cond_5
    const-string v5, "humidity"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 120
    invoke-direct {p0, v0}, Lcom/htc/sync/provider/weather/XmlParser;->getItemText(Lorg/kxml2/kdom/Element;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/htc/util/weather/WSPPData;->setCurHumidity(Ljava/lang/String;)V

    goto :goto_1

    .line 122
    :cond_6
    const-string v5, "windspeed"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 123
    invoke-direct {p0, v0}, Lcom/htc/sync/provider/weather/XmlParser;->getItemText(Lorg/kxml2/kdom/Element;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/htc/util/weather/WSPPData;->setCurWindspeed(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 125
    :cond_7
    const-string v5, "winddirection"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 126
    invoke-direct {p0, v0}, Lcom/htc/sync/provider/weather/XmlParser;->getItemText(Lorg/kxml2/kdom/Element;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/htc/util/weather/WSPPData;->setCurWinddirection(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 128
    :cond_8
    const-string v5, "visibility"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 129
    invoke-direct {p0, v0}, Lcom/htc/sync/provider/weather/XmlParser;->getItemText(Lorg/kxml2/kdom/Element;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/htc/util/weather/WSPPData;->setCurVisibility(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 135
    .end local v0           #eItem:Lorg/kxml2/kdom/Element;
    .end local v1           #eItemName:Ljava/lang/String;
    .end local v3           #obj:Ljava/lang/Object;
    :cond_9
    return-void
.end method

.method private _parseItemDay(Lorg/kxml2/kdom/Element;Lcom/htc/util/weather/WSPPData;)V
    .locals 7
    .parameter "eDay"
    .parameter "data"

    .prologue
    .line 142
    invoke-virtual {p1}, Lorg/kxml2/kdom/Element;->getChildCount()I

    move-result v4

    .line 143
    .local v4, totalDayChild:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_7

    .line 144
    invoke-virtual {p1, v2}, Lorg/kxml2/kdom/Element;->getChild(I)Ljava/lang/Object;

    move-result-object v3

    .line 145
    .local v3, obj:Ljava/lang/Object;
    instance-of v5, v3, Lorg/kxml2/kdom/Element;

    if-nez v5, :cond_1

    .line 143
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v3

    .line 149
    check-cast v0, Lorg/kxml2/kdom/Element;

    .line 150
    .local v0, eItem:Lorg/kxml2/kdom/Element;
    invoke-virtual {v0}, Lorg/kxml2/kdom/Element;->getName()Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, eItemName:Ljava/lang/String;
    const-string v5, "obsdate"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 153
    invoke-virtual {p2}, Lcom/htc/util/weather/WSPPData;->getFstDate()Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {p0, v0}, Lcom/htc/sync/provider/weather/XmlParser;->getItemText(Lorg/kxml2/kdom/Element;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    :cond_2
    :goto_2
    const-string v5, "daytime"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 168
    invoke-direct {p0, v0, p2}, Lcom/htc/sync/provider/weather/XmlParser;->_parseItemDayTime(Lorg/kxml2/kdom/Element;Lcom/htc/util/weather/WSPPData;)V

    goto :goto_1

    .line 155
    :cond_3
    const-string v5, "daycode"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 156
    invoke-virtual {p2}, Lcom/htc/util/weather/WSPPData;->getFstName()Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {p0, v0}, Lcom/htc/sync/provider/weather/XmlParser;->getItemText(Lorg/kxml2/kdom/Element;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 158
    :cond_4
    const-string v5, "sunrise"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 159
    invoke-virtual {p2}, Lcom/htc/util/weather/WSPPData;->getFstSunrise()Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {p0, v0}, Lcom/htc/sync/provider/weather/XmlParser;->getItemText(Lorg/kxml2/kdom/Element;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 161
    :cond_5
    const-string v5, "sunset"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 162
    invoke-virtual {p2}, Lcom/htc/util/weather/WSPPData;->getFstSunset()Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {p0, v0}, Lcom/htc/sync/provider/weather/XmlParser;->getItemText(Lorg/kxml2/kdom/Element;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 169
    :cond_6
    const-string v5, "nighttime"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 170
    invoke-direct {p0, v0, p2}, Lcom/htc/sync/provider/weather/XmlParser;->_parseItemNightTime(Lorg/kxml2/kdom/Element;Lcom/htc/util/weather/WSPPData;)V

    goto :goto_1

    .line 175
    .end local v0           #eItem:Lorg/kxml2/kdom/Element;
    .end local v1           #eItemName:Ljava/lang/String;
    .end local v3           #obj:Ljava/lang/Object;
    :cond_7
    return-void
.end method

.method private _parseItemDayTime(Lorg/kxml2/kdom/Element;Lcom/htc/util/weather/WSPPData;)V
    .locals 10
    .parameter "eDay"
    .parameter "data"

    .prologue
    .line 181
    invoke-virtual {p1}, Lorg/kxml2/kdom/Element;->getChildCount()I

    move-result v6

    .line 182
    .local v6, totalDayChild:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v6, :cond_b

    .line 183
    invoke-virtual {p1, v3}, Lorg/kxml2/kdom/Element;->getChild(I)Ljava/lang/Object;

    move-result-object v5

    .line 184
    .local v5, obj:Ljava/lang/Object;
    instance-of v7, v5, Lorg/kxml2/kdom/Element;

    if-nez v7, :cond_1

    .line 182
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v5

    .line 188
    check-cast v0, Lorg/kxml2/kdom/Element;

    .line 189
    .local v0, eItem:Lorg/kxml2/kdom/Element;
    invoke-virtual {v0}, Lorg/kxml2/kdom/Element;->getName()Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, eItemName:Ljava/lang/String;
    const-string v7, "weathericon"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 193
    invoke-virtual {p2}, Lcom/htc/util/weather/WSPPData;->getFstConditionId()Ljava/util/ArrayList;

    move-result-object v7

    invoke-direct {p0, v0}, Lcom/htc/sync/provider/weather/XmlParser;->getItemText(Lorg/kxml2/kdom/Element;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 195
    :cond_2
    const-string v7, "hightemperature"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 197
    const/4 v2, 0x0

    .line 200
    .local v2, highTemp:I
    invoke-virtual {p2}, Lcom/htc/util/weather/WSPPData;->getFstHighTempF()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_3

    .line 201
    invoke-virtual {p2}, Lcom/htc/util/weather/WSPPData;->getCurTempF()I

    move-result v7

    invoke-direct {p0, v0}, Lcom/htc/sync/provider/weather/XmlParser;->getItemText(Lorg/kxml2/kdom/Element;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 206
    :goto_2
    invoke-virtual {p2}, Lcom/htc/util/weather/WSPPData;->getFstHighTempF()Ljava/util/ArrayList;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    invoke-virtual {p2}, Lcom/htc/util/weather/WSPPData;->getFstHighTempC()Ljava/util/ArrayList;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0, v2}, Lcom/htc/sync/provider/weather/XmlParser;->fromFtoCtemp(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 203
    :cond_3
    invoke-direct {p0, v0}, Lcom/htc/sync/provider/weather/XmlParser;->getItemText(Lorg/kxml2/kdom/Element;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_2

    .line 209
    .end local v2           #highTemp:I
    :cond_4
    const-string v7, "lowtemperature"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 211
    const/4 v4, 0x0

    .line 213
    .local v4, lowTemp:I
    invoke-virtual {p2}, Lcom/htc/util/weather/WSPPData;->getFstLowTempF()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_5

    .line 214
    invoke-virtual {p2}, Lcom/htc/util/weather/WSPPData;->getCurTempF()I

    move-result v7

    invoke-direct {p0, v0}, Lcom/htc/sync/provider/weather/XmlParser;->getItemText(Lorg/kxml2/kdom/Element;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 219
    :goto_3
    invoke-virtual {p2}, Lcom/htc/util/weather/WSPPData;->getFstLowTempF()Ljava/util/ArrayList;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    invoke-virtual {p2}, Lcom/htc/util/weather/WSPPData;->getFstLowTempC()Ljava/util/ArrayList;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0, v4}, Lcom/htc/sync/provider/weather/XmlParser;->fromFtoCtemp(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 216
    :cond_5
    invoke-direct {p0, v0}, Lcom/htc/sync/provider/weather/XmlParser;->getItemText(Lorg/kxml2/kdom/Element;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_3

    .line 222
    .end local v4           #lowTemp:I
    :cond_6
    const-string v7, "realfeelhigh"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 223
    const/4 v2, 0x0

    .line 225
    .restart local v2       #highTemp:I
    invoke-virtual {p2}, Lcom/htc/util/weather/WSPPData;->getFstFeelHighTempF()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_7

    .line 226
    invoke-virtual {p2}, Lcom/htc/util/weather/WSPPData;->getCurFeelTempF()I

    move-result v7

    invoke-direct {p0, v0}, Lcom/htc/sync/provider/weather/XmlParser;->getItemText(Lorg/kxml2/kdom/Element;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 231
    :goto_4
    invoke-virtual {p2}, Lcom/htc/util/weather/WSPPData;->getFstFeelHighTempF()Ljava/util/ArrayList;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    invoke-virtual {p2}, Lcom/htc/util/weather/WSPPData;->getFstFeelHighTempC()Ljava/util/ArrayList;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0, v2}, Lcom/htc/sync/provider/weather/XmlParser;->fromFtoCtemp(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 228
    :cond_7
    invoke-direct {p0, v0}, Lcom/htc/sync/provider/weather/XmlParser;->getItemText(Lorg/kxml2/kdom/Element;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_4

    .line 234
    .end local v2           #highTemp:I
    :cond_8
    const-string v7, "realfeellow"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 235
    const/4 v4, 0x0

    .line 237
    .restart local v4       #lowTemp:I
    invoke-virtual {p2}, Lcom/htc/util/weather/WSPPData;->getFstFeelLowTempF()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_9

    .line 238
    invoke-virtual {p2}, Lcom/htc/util/weather/WSPPData;->getCurFeelTempF()I

    move-result v7

    invoke-direct {p0, v0}, Lcom/htc/sync/provider/weather/XmlParser;->getItemText(Lorg/kxml2/kdom/Element;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 243
    :goto_5
    invoke-virtual {p2}, Lcom/htc/util/weather/WSPPData;->getFstFeelLowTempF()Ljava/util/ArrayList;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    invoke-virtual {p2}, Lcom/htc/util/weather/WSPPData;->getFstFeelLowTempC()Ljava/util/ArrayList;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0, v4}, Lcom/htc/sync/provider/weather/XmlParser;->fromFtoCtemp(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 240
    :cond_9
    invoke-direct {p0, v0}, Lcom/htc/sync/provider/weather/XmlParser;->getItemText(Lorg/kxml2/kdom/Element;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_5

    .line 246
    .end local v4           #lowTemp:I
    :cond_a
    const-string v7, "precipamount"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 248
    invoke-virtual {p2}, Lcom/htc/util/weather/WSPPData;->getFstPrecip()Ljava/util/ArrayList;

    move-result-object v7

    invoke-direct {p0, v0}, Lcom/htc/sync/provider/weather/XmlParser;->getItemText(Lorg/kxml2/kdom/Element;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 255
    .end local v0           #eItem:Lorg/kxml2/kdom/Element;
    .end local v1           #eItemName:Ljava/lang/String;
    .end local v5           #obj:Ljava/lang/Object;
    :cond_b
    return-void
.end method

.method private _parseItemForecast(Lorg/kxml2/kdom/Element;Lcom/htc/util/weather/WSPPData;)V
    .locals 6
    .parameter "eForecast"
    .parameter "data"

    .prologue
    .line 340
    invoke-virtual {p1}, Lorg/kxml2/kdom/Element;->getChildCount()I

    move-result v4

    .line 341
    .local v4, totalForecastChild:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_3

    .line 342
    invoke-virtual {p1, v2}, Lorg/kxml2/kdom/Element;->getChild(I)Ljava/lang/Object;

    move-result-object v3

    .line 343
    .local v3, obj:Ljava/lang/Object;
    instance-of v5, v3, Lorg/kxml2/kdom/Element;

    if-nez v5, :cond_1

    .line 341
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v3

    .line 347
    check-cast v0, Lorg/kxml2/kdom/Element;

    .line 348
    .local v0, eItem:Lorg/kxml2/kdom/Element;
    invoke-virtual {v0}, Lorg/kxml2/kdom/Element;->getName()Ljava/lang/String;

    move-result-object v1

    .line 350
    .local v1, eItemName:Ljava/lang/String;
    const-string v5, "day"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 351
    invoke-direct {p0, v0, p2}, Lcom/htc/sync/provider/weather/XmlParser;->_parseItemDay(Lorg/kxml2/kdom/Element;Lcom/htc/util/weather/WSPPData;)V

    goto :goto_1

    .line 353
    :cond_2
    const-string v5, "hourly"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 354
    invoke-direct {p0, v0, p2}, Lcom/htc/sync/provider/weather/XmlParser;->_parseItemHourly(Lorg/kxml2/kdom/Element;Lcom/htc/util/weather/WSPPData;)V

    goto :goto_1

    .line 357
    .end local v0           #eItem:Lorg/kxml2/kdom/Element;
    .end local v1           #eItemName:Ljava/lang/String;
    .end local v3           #obj:Ljava/lang/Object;
    :cond_3
    return-void
.end method

.method private _parseItemHourly(Lorg/kxml2/kdom/Element;Lcom/htc/util/weather/WSPPData;)V
    .locals 8
    .parameter "eHourly"
    .parameter "data"

    .prologue
    .line 363
    invoke-virtual {p1}, Lorg/kxml2/kdom/Element;->getChildCount()I

    move-result v4

    .line 364
    .local v4, totalHourlyChild:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_2

    .line 365
    invoke-virtual {p1, v2}, Lorg/kxml2/kdom/Element;->getChild(I)Ljava/lang/Object;

    move-result-object v3

    .line 366
    .local v3, obj:Ljava/lang/Object;
    instance-of v5, v3, Lorg/kxml2/kdom/Element;

    if-nez v5, :cond_1

    .line 364
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v3

    .line 370
    check-cast v0, Lorg/kxml2/kdom/Element;

    .line 371
    .local v0, eItem:Lorg/kxml2/kdom/Element;
    invoke-virtual {v0}, Lorg/kxml2/kdom/Element;->getName()Ljava/lang/String;

    move-result-object v1

    .line 373
    .local v1, eItemName:Ljava/lang/String;
    const-string v5, "hour"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 374
    invoke-virtual {p2}, Lcom/htc/util/weather/WSPPData;->getHourName()Ljava/util/ArrayList;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "time"

    invoke-virtual {v0, v6, v7}, Lorg/kxml2/kdom/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    invoke-direct {p0, v0, p2}, Lcom/htc/sync/provider/weather/XmlParser;->_parseHour(Lorg/kxml2/kdom/Element;Lcom/htc/util/weather/WSPPData;)V

    goto :goto_1

    .line 379
    .end local v0           #eItem:Lorg/kxml2/kdom/Element;
    .end local v1           #eItemName:Ljava/lang/String;
    .end local v3           #obj:Ljava/lang/Object;
    :cond_2
    return-void
.end method

.method private _parseItemLocal(Lorg/kxml2/kdom/Element;Lcom/htc/util/weather/WSPPData;)V
    .locals 6
    .parameter "eLocal"
    .parameter "data"

    .prologue
    .line 59
    invoke-virtual {p1}, Lorg/kxml2/kdom/Element;->getChildCount()I

    move-result v4

    .line 60
    .local v4, totalChild:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_5

    .line 61
    invoke-virtual {p1, v2}, Lorg/kxml2/kdom/Element;->getChild(I)Ljava/lang/Object;

    move-result-object v3

    .line 62
    .local v3, obj:Ljava/lang/Object;
    instance-of v5, v3, Lorg/kxml2/kdom/Element;

    if-nez v5, :cond_1

    .line 60
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v3

    .line 65
    check-cast v0, Lorg/kxml2/kdom/Element;

    .line 66
    .local v0, eItem:Lorg/kxml2/kdom/Element;
    invoke-virtual {v0}, Lorg/kxml2/kdom/Element;->getName()Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, eItemName:Ljava/lang/String;
    const-string v5, "time"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 73
    invoke-direct {p0, v0}, Lcom/htc/sync/provider/weather/XmlParser;->getItemText(Lorg/kxml2/kdom/Element;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/htc/util/weather/WSPPData;->setCityLocalTime(Ljava/lang/String;)V

    goto :goto_1

    .line 75
    :cond_2
    const-string v5, "lat"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 76
    invoke-direct {p0, v0}, Lcom/htc/sync/provider/weather/XmlParser;->getItemText(Lorg/kxml2/kdom/Element;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/htc/util/weather/WSPPData;->setCityLatitude(Ljava/lang/String;)V

    goto :goto_1

    .line 78
    :cond_3
    const-string v5, "lon"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 79
    invoke-direct {p0, v0}, Lcom/htc/sync/provider/weather/XmlParser;->getItemText(Lorg/kxml2/kdom/Element;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/htc/util/weather/WSPPData;->setCityLongitude(Ljava/lang/String;)V

    goto :goto_1

    .line 81
    :cond_4
    const-string v5, "timeZone"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 82
    invoke-direct {p0, v0}, Lcom/htc/sync/provider/weather/XmlParser;->getItemText(Lorg/kxml2/kdom/Element;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/htc/util/weather/WSPPData;->setCityTimeZone(Ljava/lang/String;)V

    goto :goto_1

    .line 87
    .end local v0           #eItem:Lorg/kxml2/kdom/Element;
    .end local v1           #eItemName:Ljava/lang/String;
    .end local v3           #obj:Ljava/lang/Object;
    :cond_5
    return-void
.end method

.method private _parseItemNightTime(Lorg/kxml2/kdom/Element;Lcom/htc/util/weather/WSPPData;)V
    .locals 10
    .parameter "eNight"
    .parameter "data"

    .prologue
    .line 262
    invoke-virtual {p1}, Lorg/kxml2/kdom/Element;->getChildCount()I

    move-result v6

    .line 263
    .local v6, totalNightChild:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v6, :cond_b

    .line 264
    invoke-virtual {p1, v3}, Lorg/kxml2/kdom/Element;->getChild(I)Ljava/lang/Object;

    move-result-object v5

    .line 265
    .local v5, obj:Ljava/lang/Object;
    instance-of v7, v5, Lorg/kxml2/kdom/Element;

    if-nez v7, :cond_1

    .line 263
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v5

    .line 269
    check-cast v0, Lorg/kxml2/kdom/Element;

    .line 270
    .local v0, eItem:Lorg/kxml2/kdom/Element;
    invoke-virtual {v0}, Lorg/kxml2/kdom/Element;->getName()Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, eItemName:Ljava/lang/String;
    const-string v7, "weathericon"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 274
    invoke-virtual {p2}, Lcom/htc/util/weather/WSPPData;->getFstNightConditionId()Ljava/util/ArrayList;

    move-result-object v7

    invoke-direct {p0, v0}, Lcom/htc/sync/provider/weather/XmlParser;->getItemText(Lorg/kxml2/kdom/Element;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 276
    :cond_2
    const-string v7, "hightemperature"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 278
    const/4 v2, 0x0

    .line 281
    .local v2, highTemp:I
    invoke-virtual {p2}, Lcom/htc/util/weather/WSPPData;->getFstNightHighTempF()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_3

    .line 282
    invoke-virtual {p2}, Lcom/htc/util/weather/WSPPData;->getCurTempF()I

    move-result v7

    invoke-direct {p0, v0}, Lcom/htc/sync/provider/weather/XmlParser;->getItemText(Lorg/kxml2/kdom/Element;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 286
    :goto_2
    invoke-virtual {p2}, Lcom/htc/util/weather/WSPPData;->getFstNightHighTempF()Ljava/util/ArrayList;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    invoke-virtual {p2}, Lcom/htc/util/weather/WSPPData;->getFstNightHighTempC()Ljava/util/ArrayList;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0, v2}, Lcom/htc/sync/provider/weather/XmlParser;->fromFtoCtemp(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 284
    :cond_3
    invoke-direct {p0, v0}, Lcom/htc/sync/provider/weather/XmlParser;->getItemText(Lorg/kxml2/kdom/Element;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_2

    .line 289
    .end local v2           #highTemp:I
    :cond_4
    const-string v7, "lowtemperature"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 291
    const/4 v4, 0x0

    .line 293
    .local v4, lowTemp:I
    invoke-virtual {p2}, Lcom/htc/util/weather/WSPPData;->getFstNightLowTempF()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_5

    .line 294
    invoke-virtual {p2}, Lcom/htc/util/weather/WSPPData;->getCurTempF()I

    move-result v7

    invoke-direct {p0, v0}, Lcom/htc/sync/provider/weather/XmlParser;->getItemText(Lorg/kxml2/kdom/Element;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 299
    :goto_3
    invoke-virtual {p2}, Lcom/htc/util/weather/WSPPData;->getFstNightLowTempF()Ljava/util/ArrayList;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    invoke-virtual {p2}, Lcom/htc/util/weather/WSPPData;->getFstNightLowTempC()Ljava/util/ArrayList;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0, v4}, Lcom/htc/sync/provider/weather/XmlParser;->fromFtoCtemp(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 296
    :cond_5
    invoke-direct {p0, v0}, Lcom/htc/sync/provider/weather/XmlParser;->getItemText(Lorg/kxml2/kdom/Element;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_3

    .line 302
    .end local v4           #lowTemp:I
    :cond_6
    const-string v7, "realfeelhigh"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 304
    const/4 v2, 0x0

    .line 306
    .restart local v2       #highTemp:I
    invoke-virtual {p2}, Lcom/htc/util/weather/WSPPData;->getFstNightFeelHighTempF()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_7

    .line 307
    invoke-virtual {p2}, Lcom/htc/util/weather/WSPPData;->getCurFeelTempF()I

    move-result v7

    invoke-direct {p0, v0}, Lcom/htc/sync/provider/weather/XmlParser;->getItemText(Lorg/kxml2/kdom/Element;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 312
    :goto_4
    invoke-virtual {p2}, Lcom/htc/util/weather/WSPPData;->getFstNightFeelHighTempF()Ljava/util/ArrayList;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    invoke-virtual {p2}, Lcom/htc/util/weather/WSPPData;->getFstNightFeelHighTempC()Ljava/util/ArrayList;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0, v2}, Lcom/htc/sync/provider/weather/XmlParser;->fromFtoCtemp(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 309
    :cond_7
    invoke-direct {p0, v0}, Lcom/htc/sync/provider/weather/XmlParser;->getItemText(Lorg/kxml2/kdom/Element;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_4

    .line 315
    .end local v2           #highTemp:I
    :cond_8
    const-string v7, "realfeellow"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 316
    const/4 v4, 0x0

    .line 318
    .restart local v4       #lowTemp:I
    invoke-virtual {p2}, Lcom/htc/util/weather/WSPPData;->getFstNightFeelLowTempF()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_9

    .line 319
    invoke-virtual {p2}, Lcom/htc/util/weather/WSPPData;->getCurFeelTempF()I

    move-result v7

    invoke-direct {p0, v0}, Lcom/htc/sync/provider/weather/XmlParser;->getItemText(Lorg/kxml2/kdom/Element;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 324
    :goto_5
    invoke-virtual {p2}, Lcom/htc/util/weather/WSPPData;->getFstNightFeelLowTempF()Ljava/util/ArrayList;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    invoke-virtual {p2}, Lcom/htc/util/weather/WSPPData;->getFstNightFeelLowTempC()Ljava/util/ArrayList;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0, v4}, Lcom/htc/sync/provider/weather/XmlParser;->fromFtoCtemp(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 321
    :cond_9
    invoke-direct {p0, v0}, Lcom/htc/sync/provider/weather/XmlParser;->getItemText(Lorg/kxml2/kdom/Element;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_5

    .line 327
    .end local v4           #lowTemp:I
    :cond_a
    const-string v7, "precipamount"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 329
    invoke-virtual {p2}, Lcom/htc/util/weather/WSPPData;->getFstNightPrecip()Ljava/util/ArrayList;

    move-result-object v7

    invoke-direct {p0, v0}, Lcom/htc/sync/provider/weather/XmlParser;->getItemText(Lorg/kxml2/kdom/Element;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 334
    .end local v0           #eItem:Lorg/kxml2/kdom/Element;
    .end local v1           #eItemName:Ljava/lang/String;
    .end local v5           #obj:Ljava/lang/Object;
    :cond_b
    return-void
.end method

.method private fromFtoCtemp(I)I
    .locals 7
    .parameter "f"

    .prologue
    const-wide v5, 0x3fe1c71c720431f1L

    const-wide/high16 v3, 0x3fe0

    .line 426
    const/4 v0, 0x0

    .line 428
    .local v0, c:I
    const/16 v1, 0x20

    if-lt p1, v1, :cond_0

    .line 429
    add-int/lit8 v1, p1, -0x20

    int-to-double v1, v1

    mul-double/2addr v1, v5

    add-double/2addr v1, v3

    double-to-int v0, v1

    .line 434
    :goto_0
    return v0

    .line 431
    :cond_0
    add-int/lit8 v1, p1, -0x20

    int-to-double v1, v1

    mul-double/2addr v1, v5

    sub-double/2addr v1, v3

    double-to-int v0, v1

    goto :goto_0
.end method

.method private getItemText(Lorg/kxml2/kdom/Element;)Ljava/lang/String;
    .locals 4
    .parameter "eItem"

    .prologue
    .line 415
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v3, ""

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 417
    .local v1, sb:Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Lorg/kxml2/kdom/Element;->getChildCount()I

    move-result v2

    .line 418
    .local v2, total:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 419
    invoke-virtual {p1, v0}, Lorg/kxml2/kdom/Element;->getText(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 418
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 422
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public parseXml(Ljava/lang/String;Lcom/htc/util/weather/WSPPData;)V
    .locals 10
    .parameter "xml"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25
    new-instance v6, Lorg/kxml2/io/KXmlParser;

    invoke-direct {v6}, Lorg/kxml2/io/KXmlParser;-><init>()V

    .line 26
    .local v6, parser:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v8, Ljava/io/StringReader;

    invoke-direct {v8, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 27
    new-instance v0, Lorg/kxml2/kdom/Document;

    invoke-direct {v0}, Lorg/kxml2/kdom/Document;-><init>()V

    .line 28
    .local v0, doc:Lorg/kxml2/kdom/Document;
    invoke-virtual {v0, v6}, Lorg/kxml2/kdom/Document;->parse(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 31
    invoke-virtual {v0}, Lorg/kxml2/kdom/Document;->getRootElement()Lorg/kxml2/kdom/Element;

    move-result-object v3

    .line 33
    .local v3, eWeather:Lorg/kxml2/kdom/Element;
    invoke-virtual {v3}, Lorg/kxml2/kdom/Element;->getChildCount()I

    move-result v7

    .line 34
    .local v7, totalWeatherChild:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v7, :cond_4

    .line 35
    invoke-virtual {v3, v4}, Lorg/kxml2/kdom/Element;->getChild(I)Ljava/lang/Object;

    move-result-object v5

    .line 36
    .local v5, obj:Ljava/lang/Object;
    instance-of v8, v5, Lorg/kxml2/kdom/Element;

    if-nez v8, :cond_1

    .line 34
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move-object v1, v5

    .line 40
    check-cast v1, Lorg/kxml2/kdom/Element;

    .line 41
    .local v1, eItem:Lorg/kxml2/kdom/Element;
    invoke-virtual {v1}, Lorg/kxml2/kdom/Element;->getName()Ljava/lang/String;

    move-result-object v2

    .line 43
    .local v2, eItemName:Ljava/lang/String;
    const-string v8, "local"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 44
    invoke-direct {p0, v1, p2}, Lcom/htc/sync/provider/weather/XmlParser;->_parseItemLocal(Lorg/kxml2/kdom/Element;Lcom/htc/util/weather/WSPPData;)V

    goto :goto_1

    .line 45
    :cond_2
    const-string v8, "currentconditions"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 46
    const-string v8, ""

    const-string v9, "daylight"

    invoke-virtual {v1, v8, v9}, Lorg/kxml2/kdom/Element;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Lcom/htc/util/weather/WSPPData;->setDayLightFlag(Ljava/lang/String;)V

    .line 47
    invoke-direct {p0, v1, p2}, Lcom/htc/sync/provider/weather/XmlParser;->_parseItemCurrent(Lorg/kxml2/kdom/Element;Lcom/htc/util/weather/WSPPData;)V

    goto :goto_1

    .line 48
    :cond_3
    const-string v8, "forecast"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 49
    invoke-direct {p0, v1, p2}, Lcom/htc/sync/provider/weather/XmlParser;->_parseItemForecast(Lorg/kxml2/kdom/Element;Lcom/htc/util/weather/WSPPData;)V

    goto :goto_1

    .line 53
    .end local v1           #eItem:Lorg/kxml2/kdom/Element;
    .end local v2           #eItemName:Ljava/lang/String;
    .end local v5           #obj:Ljava/lang/Object;
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {p2, v8, v9}, Lcom/htc/util/weather/WSPPData;->setLastUpdate(J)V

    .line 56
    return-void
.end method
