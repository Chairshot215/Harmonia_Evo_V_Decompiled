.class public Lcom/google/android/finsky/utils/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# static fields
.field private static final DISPLAY_DATE_FORMAT:Ljava/text/DateFormat;

.field private static final ISO8601_DATE_FORMAT:Ljava/text/DateFormat;

.field private static final SHORT_DISPLAY_DATE_FORMAT:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/finsky/utils/DateUtils;->ISO8601_DATE_FORMAT:Ljava/text/DateFormat;

    .line 22
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/utils/DateUtils;->DISPLAY_DATE_FORMAT:Ljava/text/DateFormat;

    .line 26
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/utils/DateUtils;->SHORT_DISPLAY_DATE_FORMAT:Ljava/text/DateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized formatDisplayDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .parameter "date"

    .prologue
    .line 46
    const-class v1, Lcom/google/android/finsky/utils/DateUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/finsky/utils/DateUtils;->DISPLAY_DATE_FORMAT:Ljava/text/DateFormat;

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized formatIso8601Date(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "iso8601Date"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 35
    const-class v2, Lcom/google/android/finsky/utils/DateUtils;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/google/android/finsky/utils/DateUtils;->ISO8601_DATE_FORMAT:Ljava/text/DateFormat;

    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/finsky/utils/DateUtils;->formatDisplayDate(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 39
    .local v0, e:Ljava/text/ParseException;
    :cond_0
    monitor-exit v2

    return-object p0

    .line 36
    .end local v0           #e:Ljava/text/ParseException;
    :catch_0
    move-exception v0

    .line 38
    .restart local v0       #e:Ljava/text/ParseException;
    :try_start_1
    const-string v1, "^\\d\\d\\d\\d$"

    invoke-static {v1, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 41
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    .end local v0           #e:Ljava/text/ParseException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized formatShortDisplayDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .parameter "date"

    .prologue
    .line 50
    const-class v1, Lcom/google/android/finsky/utils/DateUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/finsky/utils/DateUtils;->SHORT_DISPLAY_DATE_FORMAT:Ljava/text/DateFormat;

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
