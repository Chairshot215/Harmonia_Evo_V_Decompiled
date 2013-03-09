.class public Lcom/android/commands/monkey/MonkeyPowerEvent;
.super Lcom/android/commands/monkey/MonkeyEvent;
.source "MonkeyPowerEvent.java"


# static fields
.field private static final LOG_FILE:Ljava/lang/String; = "/sdcard/autotester.log"

.field private static final TAG:Ljava/lang/String; = "PowerTester"

.field private static final TEST_DELAY_STARTED:Ljava/lang/String; = "AUTOTEST_TEST_BEGIN_DELAY"

.field private static final TEST_ENDED:Ljava/lang/String; = "AUTOTEST_TEST_SUCCESS"

.field private static final TEST_IDLE_ENDED:Ljava/lang/String; = "AUTOTEST_IDLE_SUCCESS"

.field private static final TEST_SEQ_BEGIN:Ljava/lang/String; = "AUTOTEST_SEQUENCE_BEGIN"

.field private static final TEST_STARTED:Ljava/lang/String; = "AUTOTEST_TEST_BEGIN"

.field private static final USB_DELAY_TIME:J = 0x2710L

.field private static mLogEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private static mTestStartTime:J


# instance fields
.field private mPowerLogTag:Ljava/lang/String;

.field private mTestResult:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/commands/monkey/MonkeyPowerEvent;->mLogEvents:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    iput-object v1, p0, Lcom/android/commands/monkey/MonkeyPowerEvent;->mPowerLogTag:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/commands/monkey/MonkeyPowerEvent;->mTestResult:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    iput-object p1, p0, Lcom/android/commands/monkey/MonkeyPowerEvent;->mPowerLogTag:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeyPowerEvent;->mTestResult:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    iput-object p1, p0, Lcom/android/commands/monkey/MonkeyPowerEvent;->mPowerLogTag:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/commands/monkey/MonkeyPowerEvent;->mTestResult:Ljava/lang/String;

    return-void
.end method

.method private bufferLogEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-string v5, "AUTOTEST_TEST_BEGIN"

    invoke-virtual {p1, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2

    sput-wide v3, Lcom/android/commands/monkey/MonkeyPowerEvent;->mTestStartTime:J

    :cond_0
    :goto_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "date"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "tag"

    invoke-virtual {v0, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    const-string v5, "value"

    invoke-virtual {v0, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-object v5, Lcom/android/commands/monkey/MonkeyPowerEvent;->mLogEvents:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    const-string v5, "AUTOTEST_IDLE_SUCCESS"

    invoke-virtual {p1, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_3

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    sget-wide v5, Lcom/android/commands/monkey/MonkeyPowerEvent;->mTestStartTime:J

    add-long v3, v5, v1

    const-string p1, "AUTOTEST_TEST_SUCCESS"

    goto :goto_0

    :cond_3
    const-string v5, "AUTOTEST_TEST_BEGIN_DELAY"

    invoke-virtual {p1, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    const-wide/16 v5, 0x2710

    add-long/2addr v5, v3

    sput-wide v5, Lcom/android/commands/monkey/MonkeyPowerEvent;->mTestStartTime:J

    sget-wide v3, Lcom/android/commands/monkey/MonkeyPowerEvent;->mTestStartTime:J

    const-string p1, "AUTOTEST_TEST_BEGIN"

    goto :goto_0
.end method

.method private writeLogEvents()V
    .locals 10

    sget-object v8, Lcom/android/commands/monkey/MonkeyPowerEvent;->mLogEvents:Ljava/util/ArrayList;

    const/4 v9, 0x0

    new-array v9, v9, [Landroid/content/ContentValues;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/ContentValues;

    sget-object v8, Lcom/android/commands/monkey/MonkeyPowerEvent;->mLogEvents:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    const/4 v6, 0x0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v4, 0x0

    :goto_0
    array-length v8, v3

    if-ge v4, v8, :cond_1

    aget-object v2, v3, v4

    const-string v8, "date"

    invoke-virtual {v2, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/commands/monkey/MonkeyUtils;->toCalendarTime(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, "tag"

    invoke-virtual {v2, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, "value"

    invoke-virtual {v2, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "value"

    invoke-virtual {v2, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v8, " "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v8, 0xa

    const/16 v9, 0x2f

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const-string v8, "\n"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-instance v7, Ljava/io/FileWriter;

    const-string v8, "/sdcard/autotester.log"

    const/4 v9, 0x1

    invoke-direct {v7, v8, v9}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    if-eqz v7, :cond_2

    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    move-object v6, v7

    :cond_3
    :goto_1
    return-void

    :catch_0
    move-exception v8

    move-object v6, v7

    goto :goto_1

    :catch_1
    move-exception v1

    :goto_2
    :try_start_3
    const-string v8, "PowerTester"

    const-string v9, "Can\'t write sdcard log file"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v6, :cond_3

    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v8

    goto :goto_1

    :catchall_0
    move-exception v8

    :goto_3
    if-eqz v6, :cond_4

    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_4
    :goto_4
    throw v8

    :catch_3
    move-exception v9

    goto :goto_4

    :catchall_1
    move-exception v8

    move-object v6, v7

    goto :goto_3

    :catch_4
    move-exception v1

    move-object v6, v7

    goto :goto_2
.end method


# virtual methods
.method public injectEvent(Landroid/view/IWindowManager;Landroid/app/IActivityManager;I)I
    .locals 2

    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyPowerEvent;->mPowerLogTag:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyPowerEvent;->mPowerLogTag:Ljava/lang/String;

    const-string v1, "AUTOTEST_SEQUENCE_BEGIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyPowerEvent;->mPowerLogTag:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/commands/monkey/MonkeyPowerEvent;->bufferLogEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyPowerEvent;->mTestResult:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyPowerEvent;->mPowerLogTag:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/commands/monkey/MonkeyPowerEvent;->mTestResult:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/commands/monkey/MonkeyPowerEvent;->bufferLogEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeyPowerEvent;->writeLogEvents()V

    goto :goto_0
.end method
