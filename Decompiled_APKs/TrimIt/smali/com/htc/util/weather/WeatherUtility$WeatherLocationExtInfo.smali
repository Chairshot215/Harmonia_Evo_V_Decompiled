.class public Lcom/htc/util/weather/WeatherUtility$WeatherLocationExtInfo;
.super Ljava/lang/Object;
.source "WeatherUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/weather/WeatherUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WeatherLocationExtInfo"
.end annotation


# instance fields
.field public engCountry:Ljava/lang/String;

.field public engName:Ljava/lang/String;

.field public engState:Ljava/lang/String;

.field public hasEngInfo:Z

.field public systemLangCountry:Ljava/lang/String;

.field public systemLangName:Ljava/lang/String;

.field public systemLangState:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1046
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1047
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/util/weather/WeatherUtility$WeatherLocationExtInfo;->hasEngInfo:Z

    .line 1048
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WeatherUtility$WeatherLocationExtInfo;->systemLangName:Ljava/lang/String;

    .line 1049
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WeatherUtility$WeatherLocationExtInfo;->systemLangState:Ljava/lang/String;

    .line 1050
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WeatherUtility$WeatherLocationExtInfo;->systemLangCountry:Ljava/lang/String;

    .line 1051
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WeatherUtility$WeatherLocationExtInfo;->engName:Ljava/lang/String;

    .line 1052
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WeatherUtility$WeatherLocationExtInfo;->engState:Ljava/lang/String;

    .line 1053
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WeatherUtility$WeatherLocationExtInfo;->engCountry:Ljava/lang/String;

    return-void
.end method
