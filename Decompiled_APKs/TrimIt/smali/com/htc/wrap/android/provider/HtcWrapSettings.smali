.class public final Lcom/htc/wrap/android/provider/HtcWrapSettings;
.super Lcom/htc/wrap/android/provider/Settings;
.source "HtcWrapSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/wrap/android/provider/HtcWrapSettings$HTCservices;,
        Lcom/htc/wrap/android/provider/HtcWrapSettings$Bookmarks;,
        Lcom/htc/wrap/android/provider/HtcWrapSettings$Gservices;,
        Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;,
        Lcom/htc/wrap/android/provider/HtcWrapSettings$System;,
        Lcom/htc/wrap/android/provider/HtcWrapSettings$NameValueTable;
    }
.end annotation


# static fields
.field public static final ACTION_RESOLUTION_PICKER:Ljava/lang/String; = "com.htc.content.intent.action.Resolution_dialog"

.field public static final ACTION_UAK_KEY_HAPPEN:Ljava/lang/String; = "ACTION_UAK_TRIGGLE"

.field public static final DISPLAY_RESOLUTION_TYPE_480P:I = 0x2

.field public static final DISPLAY_RESOLUTION_TYPE_720P:I = 0x1

.field public static final DISPLAY_RESOLUTION_TYPE_AUTO:I = 0x0

.field public static final DISPLAY_RESOLUTION_TYPE_START:I = -0x1

.field public static final EXTRA_RESOLUTION_TYPE:Ljava/lang/String; = "com.htc.content.intent.extra.Extra_DEF_TYPE"

.field public static final EXTRA_UAK_KEY_EVENT_LONGPRESS:Ljava/lang/String; = "EXTRA_UAK_KEY_EVENT_LONGPRESS"

.field public static final EXTRA_UAK_KEY_TYPE:Ljava/lang/String; = "EXTRA_UAK_KEY_TYPE"

.field private static final TAG:Ljava/lang/String; = "HtcWrapSettings"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/htc/wrap/android/provider/Settings;-><init>()V

    .line 3799
    return-void
.end method

.method private static Log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 4129
    const-string v0, "HtcWrapSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4130
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-static {p0}, Lcom/htc/wrap/android/provider/HtcWrapSettings;->Log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()V
    .locals 0

    .prologue
    .line 40
    invoke-static {}, Lcom/htc/wrap/android/provider/HtcWrapSettings;->traceCallingStack()V

    return-void
.end method

.method static synthetic access$200([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-static {p0, p1}, Lcom/htc/wrap/android/provider/HtcWrapSettings;->combineStringArrays([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static combineStringArrays([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .parameter "strArray1"
    .parameter "strArray2"

    .prologue
    const/4 v4, 0x0

    .line 53
    array-length v2, p0

    array-length v3, p1

    add-int v0, v2, v3

    .line 54
    .local v0, size:I
    new-array v1, v0, [Ljava/lang/String;

    .line 56
    .local v1, strArray:[Ljava/lang/String;
    array-length v2, p0

    invoke-static {p0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    array-length v2, p0

    array-length v3, p1

    invoke-static {p1, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    return-object v1
.end method

.method private static getCommandResult(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "command"

    .prologue
    .line 4082
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 4083
    .local v1, content:Ljava/lang/StringBuffer;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 4087
    .local v3, error:Ljava/lang/StringBuffer;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    .line 4090
    .local v5, process:Ljava/lang/Process;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 4092
    .local v0, br:Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, line:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 4093
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4094
    const-string v6, "\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 4112
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v4           #line:Ljava/lang/String;
    .end local v5           #process:Ljava/lang/Process;
    :catch_0
    move-exception v2

    .line 4113
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 4114
    const-string v6, "HtcWrapSettings"

    const-string v7, "getCommandResults() got an IOException!"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4120
    .end local v2           #e:Ljava/io/IOException;
    :cond_0
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 4096
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v4       #line:Ljava/lang/String;
    .restart local v5       #process:Ljava/lang/Process;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 4099
    new-instance v0, Ljava/io/BufferedReader;

    .end local v0           #br:Ljava/io/BufferedReader;
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 4101
    .restart local v0       #br:Ljava/io/BufferedReader;
    :goto_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 4102
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4103
    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 4115
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v4           #line:Ljava/lang/String;
    .end local v5           #process:Ljava/lang/Process;
    :catch_1
    move-exception v2

    .line 4116
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 4117
    const-string v6, "HtcWrapSettings"

    const-string v7, "getCommandResults() got an Exception!"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 4105
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v4       #line:Ljava/lang/String;
    .restart local v5       #process:Ljava/lang/Process;
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 4108
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 4109
    const-string v6, "HtcWrapSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to execute the command: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4110
    const-string v6, "HtcWrapSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error: \n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1
.end method

.method private static traceCallingStack()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 4006
    const-wide/16 v9, 0x0

    .local v9, startTime:J
    const-wide/16 v3, 0x0

    .line 4008
    .local v3, endTime:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 4010
    const-string v11, ">> traceCallingStack()"

    invoke-static {v11}, Lcom/htc/wrap/android/provider/HtcWrapSettings;->Log(Ljava/lang/String;)V

    .line 4011
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Process.myPid(): "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/htc/wrap/android/provider/HtcWrapSettings;->Log(Ljava/lang/String;)V

    .line 4012
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Process.myTid(): "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/htc/wrap/android/provider/HtcWrapSettings;->Log(Ljava/lang/String;)V

    .line 4013
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Process.myUid(): "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/htc/wrap/android/provider/HtcWrapSettings;->Log(Ljava/lang/String;)V

    .line 4014
    const-string v11, "\n"

    invoke-static {v11}, Lcom/htc/wrap/android/provider/HtcWrapSettings;->Log(Ljava/lang/String;)V

    .line 4016
    const-string v11, "ps"

    invoke-static {v11}, Lcom/htc/wrap/android/provider/HtcWrapSettings;->getCommandResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 4018
    .local v8, results:[Ljava/lang/String;
    const/4 v5, 0x0

    .line 4019
    .local v5, fieldIndex:I
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 4021
    .local v0, PID:I
    const-string v11, "Execute the command ps: \n"

    invoke-static {v11}, Lcom/htc/wrap/android/provider/HtcWrapSettings;->Log(Ljava/lang/String;)V

    .line 4033
    array-length v11, v8

    if-lez v11, :cond_0

    .line 4036
    aget-object v11, v8, v13

    const-string v12, " +"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 4039
    .local v6, fields:[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    array-length v11, v6

    if-ge v7, v11, :cond_0

    .line 4040
    aget-object v11, v6, v7

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    const-string v12, "PID"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 4041
    move v5, v7

    .line 4047
    .end local v6           #fields:[Ljava/lang/String;
    .end local v7           #i:I
    :cond_0
    const/4 v7, 0x1

    .restart local v7       #i:I
    :goto_1
    array-length v11, v8

    if-ge v7, v11, :cond_1

    .line 4048
    aget-object v11, v8, v7

    const-string v12, " +"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 4050
    .restart local v6       #fields:[Ljava/lang/String;
    aget-object v11, v6, v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 4051
    aget-object v11, v8, v13

    invoke-static {v11}, Lcom/htc/wrap/android/provider/HtcWrapSettings;->Log(Ljava/lang/String;)V

    .line 4052
    aget-object v11, v8, v7

    invoke-static {v11}, Lcom/htc/wrap/android/provider/HtcWrapSettings;->Log(Ljava/lang/String;)V

    .line 4059
    .end local v6           #fields:[Ljava/lang/String;
    :cond_1
    const-string v11, "\n"

    invoke-static {v11}, Lcom/htc/wrap/android/provider/HtcWrapSettings;->Log(Ljava/lang/String;)V

    .line 4060
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    .line 4061
    const-string v11, "\n"

    invoke-static {v11}, Lcom/htc/wrap/android/provider/HtcWrapSettings;->Log(Ljava/lang/String;)V

    .line 4063
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 4064
    sub-long v1, v3, v9

    .line 4065
    .local v1, elapsedTime:J
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<< traceCallingStack(): "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "(ms)"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/htc/wrap/android/provider/HtcWrapSettings;->Log(Ljava/lang/String;)V

    .line 4066
    return-void

    .line 4039
    .end local v1           #elapsedTime:J
    .restart local v6       #fields:[Ljava/lang/String;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 4047
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method
