.class public Lcom/htc/android/worldclock/CityInfo$CityColumns;
.super Ljava/lang/Object;
.source "CityInfo.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/CityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CityColumns"
.end annotation


# static fields
.field public static final CITY_ID:Ljava/lang/String; = "cityId"

.field public static final CITY_ID_INDEX:I = 0x2

.field public static final CITY_INDEX:I = 0x0

.field public static final CITY_NAME:Ljava/lang/String; = "cityName"

.field public static final CITY_NAME_INDEX:I = 0x3

.field public static final CITY_NAME_SHORT:Ljava/lang/String; = "cityNameShort"

.field public static final CITY_NAME_SHORT_INDEX:I = 0x4

.field static final CITY_QUERY_COLUMNS:[Ljava/lang/String; = null

.field public static final CITY_SEQ:Ljava/lang/String; = "seq"

.field public static final CITY_SEQ_INDEX:I = 0x1

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "seq ASC"

.field public static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    const-string v0, "content://com.htc.android.alarmclock/worldclock"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/worldclock/CityInfo$CityColumns;->CONTENT_URI:Landroid/net/Uri;

    .line 64
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "seq"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "cityId"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "cityName"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "cityNameShort"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/worldclock/CityInfo$CityColumns;->CITY_QUERY_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
