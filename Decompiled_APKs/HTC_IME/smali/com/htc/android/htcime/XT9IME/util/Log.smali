.class public Lcom/htc/android/htcime/XT9IME/util/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field private static Log:Lcom/htc/android/htcime/XT9IME/util/Logger; = null

.field private static final PRIORITY_THRESHOLD:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 15
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/htc/android/htcime/XT9IME/util/LoggerFactory;->createLogger(I)Lcom/htc/android/htcime/XT9IME/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/htc/android/htcime/XT9IME/util/Log;->Log:Lcom/htc/android/htcime/XT9IME/util/Logger;

    .line 16
    sget-object v0, Lcom/htc/android/htcime/XT9IME/util/Log;->Log:Lcom/htc/android/htcime/XT9IME/util/Logger;

    const-string v1, "LOG"

    const-string v2, "priority threshold : 3"

    invoke-interface {v0, v1, v2}, Lcom/htc/android/htcime/XT9IME/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 26
    sget-object v0, Lcom/htc/android/htcime/XT9IME/util/Log;->Log:Lcom/htc/android/htcime/XT9IME/util/Logger;

    invoke-interface {v0, p0, p1}, Lcom/htc/android/htcime/XT9IME/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 38
    sget-object v0, Lcom/htc/android/htcime/XT9IME/util/Log;->Log:Lcom/htc/android/htcime/XT9IME/util/Logger;

    invoke-interface {v0, p0, p1}, Lcom/htc/android/htcime/XT9IME/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 30
    sget-object v0, Lcom/htc/android/htcime/XT9IME/util/Log;->Log:Lcom/htc/android/htcime/XT9IME/util/Logger;

    invoke-interface {v0, p0, p1}, Lcom/htc/android/htcime/XT9IME/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 22
    sget-object v0, Lcom/htc/android/htcime/XT9IME/util/Log;->Log:Lcom/htc/android/htcime/XT9IME/util/Logger;

    invoke-interface {v0, p0, p1}, Lcom/htc/android/htcime/XT9IME/util/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 34
    sget-object v0, Lcom/htc/android/htcime/XT9IME/util/Log;->Log:Lcom/htc/android/htcime/XT9IME/util/Logger;

    invoke-interface {v0, p0, p1}, Lcom/htc/android/htcime/XT9IME/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
