.class public Lfr/clockwidget/lpsense/weather/GoogleWeather;
.super Ljava/lang/Object;
.source "GoogleWeather.java"


# static fields
.field private static final GOOGLE_WEATHER_API:Ljava/lang/String; = "http://www.google.com/ig/api?hl=en_US&weather="

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private final postal:Ljava/lang/String;

.field private weatherSet:Lfr/clockwidget/lpsense/weather/WeatherSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lfr/clockwidget/lpsense/weather/GoogleWeather;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/clockwidget/lpsense/weather/GoogleWeather;->TAG:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "postal"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lfr/clockwidget/lpsense/weather/GoogleWeather;->context:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lfr/clockwidget/lpsense/weather/GoogleWeather;->postal:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/clockwidget/lpsense/weather/GoogleWeather;->weatherSet:Lfr/clockwidget/lpsense/weather/WeatherSet;

    .line 49
    return-void
.end method


# virtual methods
.method public getCity()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 137
    iget-object v3, p0, Lfr/clockwidget/lpsense/weather/GoogleWeather;->weatherSet:Lfr/clockwidget/lpsense/weather/WeatherSet;

    if-nez v3, :cond_0

    move-object v3, v4

    .line 153
    :goto_0
    return-object v3

    .line 140
    :cond_0
    iget-object v3, p0, Lfr/clockwidget/lpsense/weather/GoogleWeather;->weatherSet:Lfr/clockwidget/lpsense/weather/WeatherSet;

    invoke-virtual {v3}, Lfr/clockwidget/lpsense/weather/WeatherSet;->getCity()Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, location:Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    move-object v3, v4

    .line 142
    goto :goto_0

    .line 144
    :cond_2
    move-object v0, v1

    .line 145
    .local v0, city:Ljava/lang/String;
    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 146
    .local v2, position:I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    .line 147
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 148
    if-eqz v0, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v4, v2, 0x2

    if-lt v3, v4, :cond_3

    .line 149
    add-int/lit8 v3, v2, 0x2

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 150
    :cond_3
    move-object v0, v1

    :cond_4
    move-object v3, v0

    .line 153
    goto :goto_0
.end method

.method public persist()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 98
    iget-object v5, p0, Lfr/clockwidget/lpsense/weather/GoogleWeather;->weatherSet:Lfr/clockwidget/lpsense/weather/WeatherSet;

    if-nez v5, :cond_1

    .line 133
    :cond_0
    return-void

    .line 102
    :cond_1
    new-instance v2, Lfr/clockwidget/lpsense/ForecastHelper;

    iget-object v5, p0, Lfr/clockwidget/lpsense/weather/GoogleWeather;->context:Landroid/content/Context;

    invoke-direct {v2, v5}, Lfr/clockwidget/lpsense/ForecastHelper;-><init>(Landroid/content/Context;)V

    .line 103
    .local v2, fcHelper:Lfr/clockwidget/lpsense/ForecastHelper;
    if-eqz v2, :cond_0

    .line 107
    iget-object v5, p0, Lfr/clockwidget/lpsense/weather/GoogleWeather;->weatherSet:Lfr/clockwidget/lpsense/weather/WeatherSet;

    invoke-virtual {v5}, Lfr/clockwidget/lpsense/weather/WeatherSet;->getWeatherCurrentCondition()Lfr/clockwidget/lpsense/weather/WeatherCurrentCondition;

    move-result-object v1

    .line 108
    .local v1, currentCondition:Lfr/clockwidget/lpsense/weather/WeatherCurrentCondition;
    if-eqz v1, :cond_2

    .line 109
    invoke-virtual {v1}, Lfr/clockwidget/lpsense/weather/WeatherCurrentCondition;->getCondition()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lfr/clockwidget/lpsense/ForecastHelper;->setCurrentCondition(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v1, v7}, Lfr/clockwidget/lpsense/weather/WeatherCurrentCondition;->getTemp(Z)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2, v5}, Lfr/clockwidget/lpsense/ForecastHelper;->setCurrentTemp(I)V

    .line 111
    invoke-virtual {v1}, Lfr/clockwidget/lpsense/weather/WeatherCurrentCondition;->getHumidity()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lfr/clockwidget/lpsense/ForecastHelper;->setCurrentHumidity(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v1}, Lfr/clockwidget/lpsense/weather/WeatherCurrentCondition;->getWindCondition()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lfr/clockwidget/lpsense/ForecastHelper;->setCurrentWind(Ljava/lang/String;)V

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lfr/clockwidget/lpsense/ForecastHelper;->setForecastTime(J)V

    .line 116
    :cond_2
    const/4 v4, 0x0

    .line 117
    .local v4, i:I
    iget-object v5, p0, Lfr/clockwidget/lpsense/weather/GoogleWeather;->weatherSet:Lfr/clockwidget/lpsense/weather/WeatherSet;

    invoke-virtual {v5}, Lfr/clockwidget/lpsense/weather/WeatherSet;->getWeatherForecastConditions()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfr/clockwidget/lpsense/weather/WeatherForecastCondition;

    .line 118
    .local v3, forecastCondition:Lfr/clockwidget/lpsense/weather/WeatherForecastCondition;
    invoke-virtual {v3}, Lfr/clockwidget/lpsense/weather/WeatherForecastCondition;->getDayofWeek()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Lfr/clockwidget/lpsense/ForecastHelper;->setDayofWeek(ILjava/lang/String;)V

    .line 119
    invoke-virtual {v3}, Lfr/clockwidget/lpsense/weather/WeatherForecastCondition;->getCondition()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Lfr/clockwidget/lpsense/ForecastHelper;->setCondition(ILjava/lang/String;)V

    .line 120
    invoke-virtual {v3, v7}, Lfr/clockwidget/lpsense/weather/WeatherForecastCondition;->getTempMax(Z)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v2, v4, v6}, Lfr/clockwidget/lpsense/ForecastHelper;->setHigh(II)V

    .line 121
    invoke-virtual {v3, v7}, Lfr/clockwidget/lpsense/weather/WeatherForecastCondition;->getTempMin(Z)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v2, v4, v6}, Lfr/clockwidget/lpsense/ForecastHelper;->setLow(II)V

    .line 122
    if-nez v4, :cond_5

    .line 123
    invoke-virtual {v2}, Lfr/clockwidget/lpsense/ForecastHelper;->getCurrentCondition()Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, condition:Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_4

    .line 126
    :cond_3
    invoke-virtual {v3}, Lfr/clockwidget/lpsense/weather/WeatherForecastCondition;->getCondition()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lfr/clockwidget/lpsense/ForecastHelper;->setCurrentCondition(Ljava/lang/String;)V

    .line 128
    :cond_4
    invoke-virtual {v3, v7}, Lfr/clockwidget/lpsense/weather/WeatherForecastCondition;->getTempMax(Z)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v2, v6}, Lfr/clockwidget/lpsense/ForecastHelper;->setCurrentHigh(I)V

    .line 129
    invoke-virtual {v3, v7}, Lfr/clockwidget/lpsense/weather/WeatherForecastCondition;->getTempMin(Z)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v2, v6}, Lfr/clockwidget/lpsense/ForecastHelper;->setCurrentLow(I)V

    .line 131
    .end local v0           #condition:Ljava/lang/String;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public request()Z
    .locals 14

    .prologue
    const/4 v10, 0x0

    const/4 v13, 0x0

    const-string v11, "http://www.google.com/ig/api?hl=en_US&weather="

    .line 52
    const/4 v7, 0x0

    .line 53
    .local v7, url:Ljava/net/URL;
    const/4 v3, 0x0

    .line 54
    .local v3, is:Ljava/io/InputStream;
    iput-object v10, p0, Lfr/clockwidget/lpsense/weather/GoogleWeather;->weatherSet:Lfr/clockwidget/lpsense/weather/WeatherSet;

    .line 56
    iget-object v10, p0, Lfr/clockwidget/lpsense/weather/GoogleWeather;->postal:Ljava/lang/String;

    if-nez v10, :cond_0

    move v10, v13

    .line 94
    :goto_0
    return v10

    .line 61
    :cond_0
    :try_start_0
    new-instance v8, Ljava/net/URL;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "http://www.google.com/ig/api?hl=en_US&weather="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lfr/clockwidget/lpsense/weather/GoogleWeather;->postal:Ljava/lang/String;

    invoke-static {v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .end local v7           #url:Ljava/net/URL;
    .local v8, url:Ljava/net/URL;
    :try_start_1
    sget-object v10, Lfr/clockwidget/lpsense/weather/GoogleWeather;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "http://www.google.com/ig/api?hl=en_US&weather="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lfr/clockwidget/lpsense/weather/GoogleWeather;->postal:Ljava/lang/String;

    invoke-static {v12}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-virtual {v8}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3

    .line 66
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 67
    .local v1, factory:Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v5

    .line 70
    .local v5, saxParser:Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v5}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v9

    .line 73
    .local v9, xmlReader:Lorg/xml/sax/XMLReader;
    new-instance v2, Lfr/clockwidget/lpsense/weather/GoogleWeatherHandler;

    invoke-direct {v2}, Lfr/clockwidget/lpsense/weather/GoogleWeatherHandler;-><init>()V

    .line 74
    .local v2, handler:Lfr/clockwidget/lpsense/weather/GoogleWeatherHandler;
    invoke-interface {v9, v2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 77
    new-instance v4, Ljava/io/InputStreamReader;

    const-string v10, "ISO-8859-1"

    invoke-direct {v4, v3, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 78
    .local v4, reader:Ljava/io/Reader;
    new-instance v6, Lorg/xml/sax/InputSource;

    invoke-direct {v6, v4}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 79
    .local v6, source:Lorg/xml/sax/InputSource;
    invoke-interface {v9, v6}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 82
    invoke-virtual {v2}, Lfr/clockwidget/lpsense/weather/GoogleWeatherHandler;->getWeatherSet()Lfr/clockwidget/lpsense/weather/WeatherSet;

    move-result-object v10

    iput-object v10, p0, Lfr/clockwidget/lpsense/weather/GoogleWeather;->weatherSet:Lfr/clockwidget/lpsense/weather/WeatherSet;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 89
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v7, v8

    .line 94
    .end local v1           #factory:Ljavax/xml/parsers/SAXParserFactory;
    .end local v2           #handler:Lfr/clockwidget/lpsense/weather/GoogleWeatherHandler;
    .end local v4           #reader:Ljava/io/Reader;
    .end local v5           #saxParser:Ljavax/xml/parsers/SAXParser;
    .end local v6           #source:Lorg/xml/sax/InputSource;
    .end local v8           #url:Ljava/net/URL;
    .end local v9           #xmlReader:Lorg/xml/sax/XMLReader;
    .restart local v7       #url:Ljava/net/URL;
    :goto_1
    iget-object v10, p0, Lfr/clockwidget/lpsense/weather/GoogleWeather;->weatherSet:Lfr/clockwidget/lpsense/weather/WeatherSet;

    if-nez v10, :cond_1

    move v10, v13

    goto :goto_0

    .line 84
    :catch_0
    move-exception v10

    move-object v0, v10

    .line 85
    .local v0, e:Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 86
    const/4 v10, 0x0

    iput-object v10, p0, Lfr/clockwidget/lpsense/weather/GoogleWeather;->weatherSet:Lfr/clockwidget/lpsense/weather/WeatherSet;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 89
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 90
    :catch_1
    move-exception v10

    goto :goto_1

    .line 87
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    .line 89
    :goto_3
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 93
    :goto_4
    throw v10

    .line 90
    .end local v7           #url:Ljava/net/URL;
    .restart local v1       #factory:Ljavax/xml/parsers/SAXParserFactory;
    .restart local v2       #handler:Lfr/clockwidget/lpsense/weather/GoogleWeatherHandler;
    .restart local v4       #reader:Ljava/io/Reader;
    .restart local v5       #saxParser:Ljavax/xml/parsers/SAXParser;
    .restart local v6       #source:Lorg/xml/sax/InputSource;
    .restart local v8       #url:Ljava/net/URL;
    .restart local v9       #xmlReader:Lorg/xml/sax/XMLReader;
    :catch_2
    move-exception v10

    move-object v7, v8

    .end local v8           #url:Ljava/net/URL;
    .restart local v7       #url:Ljava/net/URL;
    goto :goto_1

    .line 94
    .end local v1           #factory:Ljavax/xml/parsers/SAXParserFactory;
    .end local v2           #handler:Lfr/clockwidget/lpsense/weather/GoogleWeatherHandler;
    .end local v4           #reader:Ljava/io/Reader;
    .end local v5           #saxParser:Ljavax/xml/parsers/SAXParser;
    .end local v6           #source:Lorg/xml/sax/InputSource;
    .end local v9           #xmlReader:Lorg/xml/sax/XMLReader;
    :cond_1
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 90
    :catch_3
    move-exception v11

    goto :goto_4

    .line 87
    .end local v7           #url:Ljava/net/URL;
    .restart local v8       #url:Ljava/net/URL;
    :catchall_1
    move-exception v10

    move-object v7, v8

    .end local v8           #url:Ljava/net/URL;
    .restart local v7       #url:Ljava/net/URL;
    goto :goto_3

    .line 84
    .end local v7           #url:Ljava/net/URL;
    .restart local v8       #url:Ljava/net/URL;
    :catch_4
    move-exception v10

    move-object v0, v10

    move-object v7, v8

    .end local v8           #url:Ljava/net/URL;
    .restart local v7       #url:Ljava/net/URL;
    goto :goto_2
.end method
