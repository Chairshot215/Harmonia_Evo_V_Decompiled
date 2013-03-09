.class public Lcom/htc/util/weather/WeatherLocation;
.super Ljava/lang/Object;
.source "WeatherLocation.java"


# instance fields
.field private app:Ljava/lang/String;

.field private code:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private customLocation:Z

.field private id:I

.field private latitude:Ljava/lang/String;

.field private longitude:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private state:Ljava/lang/String;

.field private timezone:Ljava/lang/String;

.field private timezoneId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/util/weather/WeatherLocation;->id:I

    .line 8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/util/weather/WeatherLocation;->customLocation:Z

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WeatherLocation;->code:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WeatherLocation;->name:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WeatherLocation;->state:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WeatherLocation;->country:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WeatherLocation;->latitude:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WeatherLocation;->longitude:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WeatherLocation;->timezone:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WeatherLocation;->timezoneId:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WeatherLocation;->app:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getApp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/util/weather/WeatherLocation;->app:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/util/weather/WeatherLocation;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/htc/util/weather/WeatherLocation;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/htc/util/weather/WeatherLocation;->id:I

    return v0
.end method

.method public getLatitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/util/weather/WeatherLocation;->latitude:Ljava/lang/String;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/util/weather/WeatherLocation;->longitude:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/util/weather/WeatherLocation;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/util/weather/WeatherLocation;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getTimezone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/htc/util/weather/WeatherLocation;->timezone:Ljava/lang/String;

    return-object v0
.end method

.method public getTimezoneId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/util/weather/WeatherLocation;->timezoneId:Ljava/lang/String;

    return-object v0
.end method

.method public isCustomLocation()Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/htc/util/weather/WeatherLocation;->customLocation:Z

    return v0
.end method

.method public setApp(Ljava/lang/String;)V
    .locals 0
    .parameter "app"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/htc/util/weather/WeatherLocation;->app:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .parameter "code"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/htc/util/weather/WeatherLocation;->code:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0
    .parameter "country"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/htc/util/weather/WeatherLocation;->country:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setCustomLocation(Z)V
    .locals 0
    .parameter "customLocation"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/htc/util/weather/WeatherLocation;->customLocation:Z

    .line 28
    return-void
.end method

.method public setId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 83
    iput p1, p0, Lcom/htc/util/weather/WeatherLocation;->id:I

    .line 84
    return-void
.end method

.method public setLatitude(Ljava/lang/String;)V
    .locals 0
    .parameter "latitude"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/htc/util/weather/WeatherLocation;->latitude:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setLongitude(Ljava/lang/String;)V
    .locals 0
    .parameter "longitude"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/htc/util/weather/WeatherLocation;->longitude:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/htc/util/weather/WeatherLocation;->name:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/htc/util/weather/WeatherLocation;->state:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setTimezone(Ljava/lang/String;)V
    .locals 0
    .parameter "timezone"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/htc/util/weather/WeatherLocation;->timezone:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setTimezoneId(Ljava/lang/String;)V
    .locals 0
    .parameter "timezoneId"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/htc/util/weather/WeatherLocation;->timezoneId:Ljava/lang/String;

    .line 100
    return-void
.end method
