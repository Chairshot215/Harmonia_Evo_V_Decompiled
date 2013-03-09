.class public Lfr/clockwidget/lpsense/weather/GoogleWeatherHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "GoogleWeatherHandler.java"


# static fields
.field private static final ATT_DATA:Ljava/lang/String; = "data"

.field private static final TAG_CITY:Ljava/lang/String; = "city"

.field private static final TAG_CONDITION:Ljava/lang/String; = "condition"

.field private static final TAG_CURRENT:Ljava/lang/String; = "current_conditions"

.field private static final TAG_CURRENT_TIME:Ljava/lang/String; = "current_date_time"

.field private static final TAG_DAY:Ljava/lang/String; = "day_of_week"

.field private static final TAG_FORECAST:Ljava/lang/String; = "forecast_conditions"

.field private static final TAG_FORECAST_DATE:Ljava/lang/String; = "forecast_date"

.field private static final TAG_HIGH:Ljava/lang/String; = "high"

.field private static final TAG_HUMIDITY:Ljava/lang/String; = "humidity"

.field private static final TAG_ICON:Ljava/lang/String; = "icon"

.field private static final TAG_INFO:Ljava/lang/String; = "forecast_information"

.field private static final TAG_LATITUDE:Ljava/lang/String; = "latitude_e6"

.field private static final TAG_LONGTITUDE:Ljava/lang/String; = "longitude_e6"

.field private static final TAG_LOW:Ljava/lang/String; = "low"

.field private static final TAG_POSTAL:Ljava/lang/String; = "postal_code"

.field private static final TAG_TEMPC:Ljava/lang/String; = "temp_c"

.field private static final TAG_TEMPF:Ljava/lang/String; = "temp_f"

.field private static final TAG_UNIT_SYSTEM:Ljava/lang/String; = "unit_system"

.field private static final TAG_WIND:Ljava/lang/String; = "wind_condition"


# instance fields
.field private useCelsius:Z

.field private weatherSet:Lfr/clockwidget/lpsense/weather/WeatherSet;

.field private withinCurrent:Z

.field private withinForecast:Z

.field private withinInfo:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/clockwidget/lpsense/weather/GoogleWeatherHandler;->weatherSet:Lfr/clockwidget/lpsense/weather/WeatherSet;

    .line 49
    iput-boolean v1, p0, Lfr/clockwidget/lpsense/weather/GoogleWeatherHandler;->withinInfo:Z

    .line 50
    iput-boolean v1, p0, Lfr/clockwidget/lpsense/weather/GoogleWeatherHandler;->withinCurrent:Z

    .line 51
    iput-boolean v1, p0, Lfr/clockwidget/lpsense/weather/GoogleWeatherHandler;->withinForecast:Z

    .line 53
    iput-boolean v1, p0, Lfr/clockwidget/lpsense/weather/GoogleWeatherHandler;->useCelsius:Z

    .line 23
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 0
    .parameter "ch"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 154
    return-void
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 67
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "namespaceURI"
    .parameter "localName"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 143
    const-string v0, "forecast_information"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    iput-boolean v1, p0, Lfr/clockwidget/lpsense/weather/GoogleWeatherHandler;->withinInfo:Z

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    const-string v0, "current_conditions"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 146
    iput-boolean v1, p0, Lfr/clockwidget/lpsense/weather/GoogleWeatherHandler;->withinCurrent:Z

    goto :goto_0

    .line 147
    :cond_2
    const-string v0, "forecast_conditions"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iput-boolean v1, p0, Lfr/clockwidget/lpsense/weather/GoogleWeatherHandler;->withinForecast:Z

    goto :goto_0
.end method

.method public getWeatherSet()Lfr/clockwidget/lpsense/weather/WeatherSet;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lfr/clockwidget/lpsense/weather/GoogleWeatherHandler;->weatherSet:Lfr/clockwidget/lpsense/weather/WeatherSet;

    return-object v0
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 61
    new-instance v0, Lfr/clockwidget/lpsense/weather/WeatherSet;

    invoke-direct {v0}, Lfr/clockwidget/lpsense/weather/WeatherSet;-><init>()V

    iput-object v0, p0, Lfr/clockwidget/lpsense/weather/GoogleWeatherHandler;->weatherSet:Lfr/clockwidget/lpsense/weather/WeatherSet;

    .line 62
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 6
    .parameter "namespaceURI"
    .parameter "localName"
    .parameter "qName"
    .parameter "atts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 73
    const-string v3, "forecast_information"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 74
    iput-boolean v5, p0, Lfr/clockwidget/lpsense/weather/GoogleWeatherHandler;->withinInfo:Z

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    const-string v3, "current_conditions"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 76
    iget-object v3, p0, Lfr/clockwidget/lpsense/weather/GoogleWeatherHandler;->weatherSet:Lfr/clockwidget/lpsense/weather/WeatherSet;

    new-instance v4, Lfr/clockwidget/lpsense/weather/WeatherCurrentCondition;

    invoke-direct {v4}, Lfr/clockwidget/lpsense/weather/WeatherCurrentCondition;-><init>()V

    invoke-virtual {v3, v4}, Lfr/clockwidget/lpsense/weather/WeatherSet;->setWeatherCurrentCondition(Lfr/clockwidget/lpsense/weather/WeatherCurrentCondition;)V

    .line 77
    iput-boolean v5, p0, Lfr/clockwidget/lpsense/weather/GoogleWeatherHandler;->withinCurrent:Z

    goto :goto_0

    .line 78
    :cond_2
    const-string v3, "forecast_conditions"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 79
    iget-object v3, p0, Lfr/clockwidget/lpsense/weather/GoogleWeatherHandler;->weatherSet:Lfr/clockwidget/lpsense/weather/WeatherSet;

    invoke-virtual {v3}, Lfr/clockwidget/lpsense/weather/WeatherSet;->addWeatherForecastCondition()V

    .line 80
    iput-boolean v5, p0, Lfr/clockwidget/lpsense/weather/GoogleWeatherHandler;->withinForecast:Z

    goto :goto_0

    .line 82
    :cond_3
    const-string v3, "data"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, dataAttribute:Ljava/lang/String;
    const/high16 v2, -0x8000

    .line 85
    .local v2, temp:I
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 90
    :goto_1
    const-string v3, "city"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 91
    iget-object v3, p0, Lfr/clockwidget/lpsense/weather/GoogleWeatherHandler;->weatherSet:Lfr/clockwidget/lpsense/weather/WeatherSet;

    invoke-virtual {v3, v0}, Lfr/clockwidget/lpsense/weather/WeatherSet;->setCity(Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :catch_0
    move-exception v1

    .line 87
    .local v1, e:Ljava/lang/NumberFormatException;
    const/high16 v2, -0x8000

    goto :goto_1

    .line 92
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_4
    const-string v3, "postal_code"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 93
    const-string v3, "latitude_e6"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 94
    const-string v3, "longitude_e6"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 95
    const-string v3, "forecast_date"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 96
    const-string v3, "current_date_time"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 97
    const-string v3, "unit_system"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 98
    const-string v3, "SI"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 99
    iput-boolean v5, p0, Lfr/clockwidget/lpsense/weather/GoogleWeatherHandler;->useCelsius:Z

    goto :goto_0

    .line 102
    :cond_5
    const-string v3, "day_of_week"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 103
    iget-boolean v3, p0, Lfr/clockwidget/lpsense/weather/GoogleWeatherHandler;->withinCurrent:Z

    if-eqz v3, :cond_6

    .line 104
    iget-object v3, p0, Lfr/clockwidget/lpsense/weather/GoogleWeatherHandler;->weatherSet:Lfr/clockwidget/lpsense/weather/WeatherSet;

    invoke-virtual {v3}, Lfr/clockwidget/lpsense/weather/WeatherSet;->getWeatherCurrentCondition()Lfr/clockwidget/lpsense/weather/WeatherCurrentCondition;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lfr/clockwidget/lpsense/weather/WeatherCurrentCondition;->setDayofWeek(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 105
    :cond_6
    iget-boolean v3, p0, Lfr/clockwidget/lpsense/weather/GoogleWeatherHandler;->withinForecast:Z

    if-eqz v3, :cond_0

    .line 106
    iget-object v3, p0, Lfr/clockwidget/lpsense/weather/GoogleWeatherHandler;->weatherSet:Lfr/clockwidget/lpsense/weather/WeatherSet;

    invoke-virtual {v3}, Lfr/clockwidget/lpsense/weather/WeatherSet;->getLastWeatherForecastCondition()Lfr/clockwidget/lpsense/weather/WeatherForecastCondition;

    move-result-object v3

    invoke-virtual {v3, v0}, Lfr/clockwidget/lpsense/weather/WeatherForecastCondition;->setDayofWeek(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 108
    :cond_7
    const-string v3, "icon"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 109
    iget-boolean v3, p0, Lfr/clockwidget/lpsense/weather/GoogleWeatherHandler;->withinCurrent:Z

    if-eqz v3, :cond_8

    .line 110
    iget-object v3, p0, Lfr/clockwidget/lpsense/weather/GoogleWeatherHandler;->weatherSet:Lfr/clockwidget/lpsense/weather/WeatherSet;

    invoke-virtual {v3}, Lfr/clockwidget/lpsense/weather/WeatherSet;->getWeatherCurrentCondition()Lfr/clockwidget/lpsense/weather/WeatherCurrentCondition;

    move-result-object v3

    invoke-virtual {v3, v0}, Lfr/clockwidget/lpsense/weather/WeatherCurrentCondition;->setIconURL(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 111
    :cond_8
    iget-boolean v3, p0, Lfr/clockwidget/lpsense/weather/GoogleWeatherHandler;->withinForecast:Z

    if-eqz v3, :cond_0

    .line 112
    iget-object v3, p0, Lfr/clockwidget/lpsense/weather/GoogleWeatherHandler;->weatherSet:Lfr/clockwidget/lpsense/weather/WeatherSet;

    invoke-virtual {v3}, Lfr/clockwidget/lpsense/weather/WeatherSet;->getLastWeatherForecastCondition()Lfr/clockwidget/lpsense/weather/WeatherForecastCondition;

    move-result-object v3

    invoke-virtual {v3, v0}, Lfr/clockwidget/lpsense/weather/WeatherForecastCondition;->setIconURL(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 114
    :cond_9
    const-string v3, "condition"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 115
    iget-boolean v3, p0, Lfr/clockwidget/lpsense/weather/GoogleWeatherHandler;->withinCurrent:Z

    if-eqz v3, :cond_a

    .line 116
    iget-object v3, p0, Lfr/clockwidget/lpsense/weather/GoogleWeatherHandler;->weatherSet:Lfr/clockwidget/lpsense/weather/WeatherSet;

    invoke-virtual {v3}, Lfr/clockwidget/lpsense/weather/WeatherSet;->getWeatherCurrentCondition()Lfr/clockwidget/lpsense/weather/WeatherCurrentCondition;

    move-result-object v3

    invoke-virtual {v3, v0}, Lfr/clockwidget/lpsense/weather/WeatherCurrentCondition;->setCondition(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 117
    :cond_a
    iget-boolean v3, p0, Lfr/clockwidget/lpsense/weather/GoogleWeatherHandler;->withinForecast:Z

    if-eqz v3, :cond_0

    .line 118
    iget-object v3, p0, Lfr/clockwidget/lpsense/weather/GoogleWeatherHandler;->weatherSet:Lfr/clockwidget/lpsense/weather/WeatherSet;

    invoke-virtual {v3}, Lfr/clockwidget/lpsense/weather/WeatherSet;->getLastWeatherForecastCondition()Lfr/clockwidget/lpsense/weather/WeatherForecastCondition;

    move-result-object v3

    invoke-virtual {v3, v0}, Lfr/clockwidget/lpsense/weather/WeatherForecastCondition;->setCondition(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 122
    :cond_b
    const-string v3, "temp_f"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 123
    iget-object v3, p0, Lfr/clockwidget/lpsense/weather/GoogleWeatherHandler;->weatherSet:Lfr/clockwidget/lpsense/weather/WeatherSet;

    invoke-virtual {v3}, Lfr/clockwidget/lpsense/weather/WeatherSet;->getWeatherCurrentCondition()Lfr/clockwidget/lpsense/weather/WeatherCurrentCondition;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lfr/clockwidget/lpsense/weather/WeatherCurrentCondition;->setTempFahrenheit(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 124
    :cond_c
    const-string v3, "temp_c"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 125
    iget-object v3, p0, Lfr/clockwidget/lpsense/weather/GoogleWeatherHandler;->weatherSet:Lfr/clockwidget/lpsense/weather/WeatherSet;

    invoke-virtual {v3}, Lfr/clockwidget/lpsense/weather/WeatherSet;->getWeatherCurrentCondition()Lfr/clockwidget/lpsense/weather/WeatherCurrentCondition;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lfr/clockwidget/lpsense/weather/WeatherCurrentCondition;->setTempCelcius(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 126
    :cond_d
    const-string v3, "humidity"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 127
    iget-object v3, p0, Lfr/clockwidget/lpsense/weather/GoogleWeatherHandler;->weatherSet:Lfr/clockwidget/lpsense/weather/WeatherSet;

    invoke-virtual {v3}, Lfr/clockwidget/lpsense/weather/WeatherSet;->getWeatherCurrentCondition()Lfr/clockwidget/lpsense/weather/WeatherCurrentCondition;

    move-result-object v3

    invoke-virtual {v3, v0}, Lfr/clockwidget/lpsense/weather/WeatherCurrentCondition;->setHumidity(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 128
    :cond_e
    const-string v3, "wind_condition"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 129
    iget-object v3, p0, Lfr/clockwidget/lpsense/weather/GoogleWeatherHandler;->weatherSet:Lfr/clockwidget/lpsense/weather/WeatherSet;

    invoke-virtual {v3}, Lfr/clockwidget/lpsense/weather/WeatherSet;->getWeatherCurrentCondition()Lfr/clockwidget/lpsense/weather/WeatherCurrentCondition;

    move-result-object v3

    invoke-virtual {v3, v0}, Lfr/clockwidget/lpsense/weather/WeatherCurrentCondition;->setWindCondition(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 132
    :cond_f
    const-string v3, "low"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 133
    iget-object v3, p0, Lfr/clockwidget/lpsense/weather/GoogleWeatherHandler;->weatherSet:Lfr/clockwidget/lpsense/weather/WeatherSet;

    invoke-virtual {v3}, Lfr/clockwidget/lpsense/weather/WeatherSet;->getLastWeatherForecastCondition()Lfr/clockwidget/lpsense/weather/WeatherForecastCondition;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-boolean v5, p0, Lfr/clockwidget/lpsense/weather/GoogleWeatherHandler;->useCelsius:Z

    invoke-virtual {v3, v4, v5}, Lfr/clockwidget/lpsense/weather/WeatherForecastCondition;->setTempMin(Ljava/lang/Integer;Z)V

    goto/16 :goto_0

    .line 134
    :cond_10
    const-string v3, "high"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 135
    iget-object v3, p0, Lfr/clockwidget/lpsense/weather/GoogleWeatherHandler;->weatherSet:Lfr/clockwidget/lpsense/weather/WeatherSet;

    invoke-virtual {v3}, Lfr/clockwidget/lpsense/weather/WeatherSet;->getLastWeatherForecastCondition()Lfr/clockwidget/lpsense/weather/WeatherForecastCondition;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-boolean v5, p0, Lfr/clockwidget/lpsense/weather/GoogleWeatherHandler;->useCelsius:Z

    invoke-virtual {v3, v4, v5}, Lfr/clockwidget/lpsense/weather/WeatherForecastCondition;->setTempMax(Ljava/lang/Integer;Z)V

    goto/16 :goto_0
.end method
