.class public Lcom/htc/dockmode/weather/WeatherPref;
.super Ljava/lang/Object;
.source "WeatherPref.java"


# static fields
.field public static final CONDITION_ID:Ljava/lang/String; = "condition_id"

.field public static final HIGH_TEMPERATURE:Ljava/lang/String; = "high_temperature"

.field public static final INFORMATION:Ljava/lang/String; = "information"

.field public static final LOCATION:Ljava/lang/String; = "location"

.field public static final LOW_TEMPERATURE:Ljava/lang/String; = "low_temperature"

.field public static final TAG:Ljava/lang/String; = null

.field public static final TEMPERATURE:Ljava/lang/String; = "temperature"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const-class v0, Lcom/htc/dockmode/weather/WeatherPref;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/dockmode/weather/WeatherPref;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
