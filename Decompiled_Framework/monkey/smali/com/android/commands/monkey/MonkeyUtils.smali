.class public abstract Lcom/android/commands/monkey/MonkeyUtils;
.super Ljava/lang/Object;
.source "MonkeyUtils.java"


# static fields
.field private static final DATE:Ljava/util/Date;

.field private static final DATE_FORMATTER:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Lcom/android/commands/monkey/MonkeyUtils;->DATE:Ljava/util/Date;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS "

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/commands/monkey/MonkeyUtils;->DATE_FORMATTER:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized toCalendarTime(J)Ljava/lang/String;
    .locals 3

    const-class v1, Lcom/android/commands/monkey/MonkeyUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/commands/monkey/MonkeyUtils;->DATE:Ljava/util/Date;

    invoke-virtual {v0, p0, p1}, Ljava/util/Date;->setTime(J)V

    sget-object v0, Lcom/android/commands/monkey/MonkeyUtils;->DATE_FORMATTER:Ljava/text/SimpleDateFormat;

    sget-object v2, Lcom/android/commands/monkey/MonkeyUtils;->DATE:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
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
