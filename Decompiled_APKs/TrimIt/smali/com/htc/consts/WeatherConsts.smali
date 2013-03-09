.class public Lcom/htc/consts/WeatherConsts;
.super Ljava/lang/Object;
.source "WeatherConsts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;,
        Lcom/htc/consts/WeatherConsts$SETTING_APP_NAME;,
        Lcom/htc/consts/WeatherConsts$SETTING_KEY_NAME;,
        Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;,
        Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.htc.provider.weather"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final LANG_CHINESE_CHINA:Ljava/lang/String; = "0804CHS"

.field public static final LANG_CHINESE_TAIWAN:Ljava/lang/String; = "0404CHT"

.field public static final LANG_CZECH:Ljava/lang/String; = "0405CSY"

.field public static final LANG_DUTCH:Ljava/lang/String; = "0413NLD"

.field public static final LANG_ENGLISH_UNITED_STATES:Ljava/lang/String; = "0409WWE"

.field public static final LANG_FRENCH:Ljava/lang/String; = "040CFRA"

.field public static final LANG_GERMAN:Ljava/lang/String; = "0407GER"

.field public static final LANG_ITALIAN:Ljava/lang/String; = "0410ITA"

.field public static final LANG_NORWEGIAN:Ljava/lang/String; = "0414NOR"

.field public static final LANG_POLISH:Ljava/lang/String; = "0415PLK"

.field public static final LANG_RUSSIAN:Ljava/lang/String; = "0419RUS"

.field public static final LANG_SPANISH:Ljava/lang/String; = "0C0AESN"

.field public static final LOCATION_LIST_PATH:Ljava/lang/String; = "locationlist"

.field public static final LOCATION_LIST_PATH_WITH_LANGUAGE:Ljava/lang/String; = "locationlist/lang"

.field public static final LOCATION_PATH:Ljava/lang/String; = "location"

.field public static final LOCATION_TYPE_CODE:I = 0x1

.field public static final LOCATION_TYPE_CUSTOM:I = 0x2

.field public static final SETTING_PATH:Ljava/lang/String; = "setting"

.field public static final TEMPERATURE_UNIT_CENTIGRADE:Ljava/lang/String; = "c"

.field public static final TEMPERATURE_UNIT_FAHRENHEIT:Ljava/lang/String; = "f"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "content://com.htc.provider.weather"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/consts/WeatherConsts;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
