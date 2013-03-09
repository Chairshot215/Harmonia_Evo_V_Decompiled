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

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/util/weather/WeatherLocation;->id:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/util/weather/WeatherLocation;->customLocation:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WeatherLocation;->code:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WeatherLocation;->name:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WeatherLocation;->state:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WeatherLocation;->country:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WeatherLocation;->latitude:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WeatherLocation;->longitude:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WeatherLocation;->timezone:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WeatherLocation;->timezoneId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WeatherLocation;->app:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getApp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/util/weather/WeatherLocation;->app:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/util/weather/WeatherLocation;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/util/weather/WeatherLocation;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/htc/util/weather/WeatherLocation;->id:I

    return v0
.end method

.method public getLatitude()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/util/weather/WeatherLocation;->latitude:Ljava/lang/String;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/util/weather/WeatherLocation;->longitude:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/util/weather/WeatherLocation;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/util/weather/WeatherLocation;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getTimezone()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/util/weather/WeatherLocation;->timezone:Ljava/lang/String;

    return-object v0
.end method

.method public getTimezoneId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/util/weather/WeatherLocation;->timezoneId:Ljava/lang/String;

    return-object v0
.end method

.method public isCustomLocation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/util/weather/WeatherLocation;->customLocation:Z

    return v0
.end method

.method public setApp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/util/weather/WeatherLocation;->app:Ljava/lang/String;

    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/util/weather/WeatherLocation;->code:Ljava/lang/String;

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/util/weather/WeatherLocation;->country:Ljava/lang/String;

    return-void
.end method

.method public setCustomLocation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/util/weather/WeatherLocation;->customLocation:Z

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/htc/util/weather/WeatherLocation;->id:I

    return-void
.end method

.method public setLatitude(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/util/weather/WeatherLocation;->latitude:Ljava/lang/String;

    return-void
.end method

.method public setLongitude(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/util/weather/WeatherLocation;->longitude:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/util/weather/WeatherLocation;->name:Ljava/lang/String;

    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/util/weather/WeatherLocation;->state:Ljava/lang/String;

    return-void
.end method

.method public setTimezone(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/util/weather/WeatherLocation;->timezone:Ljava/lang/String;

    return-void
.end method

.method public setTimezoneId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/util/weather/WeatherLocation;->timezoneId:Ljava/lang/String;

    return-void
.end method
