.class public Lcom/htc/android/worldclock/CityInfo$LocationColumns;
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
    name = "LocationColumns"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DE:Ljava/lang/String; = "de"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "name ASC"

.field public static final EN:Ljava/lang/String; = "en"

.field public static final ES:Ljava/lang/String; = "es"

.field public static final FR:Ljava/lang/String; = "fr"

.field public static final FS:Ljava/lang/String; = "fs"

.field public static final IT:Ljava/lang/String; = "it"

.field public static final JA:Ljava/lang/String; = "ja"

.field public static final KO:Ljava/lang/String; = "ko"

.field public static final NL:Ljava/lang/String; = "nl"

.field public static final NO:Ljava/lang/String; = "no"

.field public static final PL:Ljava/lang/String; = "pl"

.field public static final RU:Ljava/lang/String; = "ru"

.field public static final TIMEZONEID:Ljava/lang/String; = "timezoneId"

.field public static final ZH:Ljava/lang/String; = "zh"

.field public static final ZHTW:Ljava/lang/String; = "zhTW"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 168
    const-string v0, "content://com.htc.android.alarmclock/timezone"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/worldclock/CityInfo$LocationColumns;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 160
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
