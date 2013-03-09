.class public final Lcom/htc/wrap/android/provider/HtcWrapSettings;
.super Lcom/htc/wrap/android/provider/Settings;
.source "HtcWrapSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/wrap/android/provider/HtcWrapSettings$Profile;,
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

    invoke-direct {p0}, Lcom/htc/wrap/android/provider/Settings;-><init>()V

    return-void
.end method

.method private static Log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "HtcWrapSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/htc/wrap/android/provider/HtcWrapSettings;->Log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Lcom/htc/wrap/android/provider/HtcWrapSettings;->combineStringArrays([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static combineStringArrays([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    array-length v2, p0

    array-length v3, p1

    add-int v0, v2, v3

    new-array v1, v0, [Ljava/lang/String;

    array-length v2, p0

    invoke-static {p0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, p0

    array-length v3, p1

    invoke-static {p1, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method private static getCommandResult(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    const-string v6, "HtcWrapSettings"

    const-string v7, "getCommandResults() got an IOException!"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const-string v6, "HtcWrapSettings"

    const-string v7, "getCommandResults() got an Exception!"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-lez v6, :cond_0

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
    .locals 0

    return-void
.end method
