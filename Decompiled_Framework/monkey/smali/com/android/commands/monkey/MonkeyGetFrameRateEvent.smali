.class public Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;
.super Lcom/android/commands/monkey/MonkeyEvent;
.source "MonkeyGetFrameRateEvent.java"


# static fields
.field private static final LOG_FILE:Ljava/lang/String; = "/sdcard/avgFrameRateOut.txt"

.field private static final NO_OF_FRAMES_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final TAG:Ljava/lang/String; = "MonkeyGetFrameRateEvent"

.field private static mDuration:F

.field private static mEndFrameNo:I

.field private static mEndTime:J

.field private static mStartFrameNo:I

.field private static mStartTime:J

.field private static mTestCaseName:Ljava/lang/String;


# instance fields
.field private GET_FRAMERATE_CMD:Ljava/lang/String;

.field private mStatus:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mTestCaseName:Ljava/lang/String;

    const-string v0, ".*\\(([a-f[A-F][0-9]].*?)\\s.*\\)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->NO_OF_FRAMES_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    const-string v0, "service call SurfaceFlinger 1013"

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->GET_FRAMERATE_CMD:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mStatus:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    const-string v0, "service call SurfaceFlinger 1013"

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->GET_FRAMERATE_CMD:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mStatus:Ljava/lang/String;

    sput-object p2, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mTestCaseName:Ljava/lang/String;

    return-void
.end method

.method private getAverageFrameRate(IF)F
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-lez v1, :cond_0

    int-to-float v1, p1

    div-float v0, v1, p2

    :cond_0
    return v0
.end method

.method private getNumberOfFrames(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    sget-object v2, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->NO_OF_FRAMES_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method private writeAverageFrameRate()V
    .locals 9

    const/4 v3, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileWriter;

    const-string v5, "/sdcard/avgFrameRateOut.txt"

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    sget v5, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mEndFrameNo:I

    sget v6, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mStartFrameNo:I

    sub-int v2, v5, v6

    sget v5, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mDuration:F

    invoke-direct {p0, v2, v5}, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->getAverageFrameRate(IF)F

    move-result v0

    const-string v5, "%s:%.2f\n"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    sget-object v8, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mTestCaseName:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    if-eqz v4, :cond_0

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v3, v4

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v5, "MonkeyGetFrameRateEvent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_1
    :try_start_3
    const-string v5, "MonkeyGetFrameRateEvent"

    const-string v6, "Can\'t write sdcard log file"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_1

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v5, "MonkeyGetFrameRateEvent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v3, :cond_2

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    :goto_3
    throw v5

    :catch_3
    move-exception v1

    const-string v6, "MonkeyGetFrameRateEvent"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catchall_1
    move-exception v5

    move-object v3, v4

    goto :goto_2

    :catch_4
    move-exception v1

    move-object v3, v4

    goto :goto_1
.end method


# virtual methods
.method public injectEvent(Landroid/view/IWindowManager;Landroid/app/IActivityManager;I)I
    .locals 13

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    iget-object v9, p0, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->GET_FRAMERATE_CMD:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I

    move-result v7

    if-eqz v7, :cond_0

    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v9, "// Shell command %s status was %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->GET_FRAMERATE_CMD:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v8, p0, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mStatus:Ljava/lang/String;

    const-string v9, "start"

    if-ne v8, v9, :cond_5

    invoke-direct {p0, v3}, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->getNumberOfFrames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    sput v8, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mStartFrameNo:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sput-wide v8, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mStartTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    if-eqz v6, :cond_2

    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_3
    move-object v5, v6

    :cond_4
    :goto_1
    const/4 v8, 0x1

    return v8

    :cond_5
    :try_start_3
    iget-object v8, p0, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mStatus:Ljava/lang/String;

    const-string v9, "end"

    if-ne v8, v9, :cond_1

    invoke-direct {p0, v3}, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->getNumberOfFrames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    sput v8, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mEndFrameNo:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sput-wide v8, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mEndTime:J

    sget-wide v8, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mEndTime:J

    sget-wide v10, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mStartTime:J

    sub-long v0, v8, v10

    long-to-double v8, v0

    const-wide v10, 0x408f400000000000L

    div-double/2addr v8, v10

    double-to-float v8, v8

    sput v8, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mDuration:F

    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->writeAverageFrameRate()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v5, v6

    :goto_2
    :try_start_4
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "// Exception from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->GET_FRAMERATE_CMD:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v5, :cond_6

    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    :cond_6
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception v2

    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v5, v6

    goto :goto_1

    :catchall_0
    move-exception v8

    :goto_3
    if-eqz v5, :cond_7

    :try_start_6
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    :cond_7
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_8
    :goto_4
    throw v8

    :catch_3
    move-exception v2

    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4

    :catchall_1
    move-exception v8

    move-object v5, v6

    goto :goto_3

    :catch_4
    move-exception v2

    goto :goto_2
.end method
