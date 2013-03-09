.class public Lcom/google/android/apps/uploader/googlemobile/debug/StderrLogger;
.super Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;-><init>()V

    return-void
.end method


# virtual methods
.method public flush()V
    .locals 1

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public logThrowable(Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 1

    invoke-virtual {p0, p3, p4, p5}, Lcom/google/android/apps/uploader/googlemobile/debug/StderrLogger;->isLoggable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super/range {p0 .. p6}, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->logThrowable(Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;I)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method
