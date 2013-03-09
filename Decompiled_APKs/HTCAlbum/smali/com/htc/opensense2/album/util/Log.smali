.class public Lcom/htc/opensense2/album/util/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field private static final KEY_ENABLELOG:Ljava/lang/String; = "enablelog"

.field private static final KEY_LOGPREFIX:Ljava/lang/String; = "[OpenSense] "

.field private static final KEY_LOGSEVERITY:Ljava/lang/String; = "severity"

.field private static final KEY_LOGSTACK:Ljava/lang/String; = "[LogStack] "

.field private static final KEY_PREFIX:Ljava/lang/String; = "album.opensense.prop."

.field private static final SEVERITY_DEBUG:I = 0x3

.field private static final SEVERITY_ERROR:I = 0x0

.field private static final SEVERITY_INFORMATION:I = 0x2

.field private static final SEVERITY_VERBOSE:I = 0x4

.field private static final SEVERITY_WARNING:I = 0x1

.field private static gEnableLog:Z

.field private static gInitialized:Z

.field private static gSeverity:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    sput-boolean v1, Lcom/htc/opensense2/album/util/Log;->gEnableLog:Z

    .line 26
    const/4 v0, 0x2

    sput v0, Lcom/htc/opensense2/album/util/Log;->gSeverity:I

    .line 27
    sput-boolean v1, Lcom/htc/opensense2/album/util/Log;->gInitialized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 79
    sget-boolean v0, Lcom/htc/opensense2/album/util/Log;->gInitialized:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/opensense2/album/util/Log;->initialize()V

    .line 80
    :cond_0
    sget-boolean v0, Lcom/htc/opensense2/album/util/Log;->gEnableLog:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/htc/opensense2/album/util/Log;->gSeverity:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OpenSense] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_1
    return-void
.end method

.method public static varargs d2(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5
    .parameter "tag"
    .parameter "args"

    .prologue
    .line 86
    sget-boolean v3, Lcom/htc/opensense2/album/util/Log;->gInitialized:Z

    if-nez v3, :cond_0

    invoke-static {}, Lcom/htc/opensense2/album/util/Log;->initialize()V

    .line 88
    :cond_0
    sget-boolean v3, Lcom/htc/opensense2/album/util/Log;->gEnableLog:Z

    if-eqz v3, :cond_2

    sget v3, Lcom/htc/opensense2/album/util/Log;->gSeverity:I

    const/4 v4, 0x3

    if-lt v3, v4, :cond_2

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "[OpenSense] "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .local v0, a:Ljava/lang/StringBuilder;
    if-eqz p1, :cond_1

    .line 94
    array-length v2, p1

    .line 95
    .local v2, n:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 97
    aget-object v3, p1, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    .end local v1           #i:I
    .end local v2           #n:I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .end local v0           #a:Ljava/lang/StringBuilder;
    :cond_2
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 58
    sget-boolean v0, Lcom/htc/opensense2/album/util/Log;->gInitialized:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/opensense2/album/util/Log;->initialize()V

    .line 59
    :cond_0
    sget-boolean v0, Lcom/htc/opensense2/album/util/Log;->gEnableLog:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/htc/opensense2/album/util/Log;->gSeverity:I

    if-ltz v0, :cond_1

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OpenSense] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "tag"
    .parameter "msg"
    .parameter "e"

    .prologue
    .line 51
    sget-boolean v0, Lcom/htc/opensense2/album/util/Log;->gInitialized:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/opensense2/album/util/Log;->initialize()V

    .line 52
    :cond_0
    sget-boolean v0, Lcom/htc/opensense2/album/util/Log;->gEnableLog:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/htc/opensense2/album/util/Log;->gSeverity:I

    if-ltz v0, :cond_1

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OpenSense] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    :cond_1
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 44
    sget-boolean v0, Lcom/htc/opensense2/album/util/Log;->gInitialized:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/opensense2/album/util/Log;->initialize()V

    .line 45
    :cond_0
    sget-boolean v0, Lcom/htc/opensense2/album/util/Log;->gEnableLog:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/htc/opensense2/album/util/Log;->gSeverity:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OpenSense] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_1
    return-void
.end method

.method public static initialize()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 31
    const-string v0, "album.opensense.prop.enablelog"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/htc/opensense2/album/util/Log;->gEnableLog:Z

    .line 32
    const-string v0, "album.opensense.prop.severity"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/htc/opensense2/album/util/Log;->gSeverity:I

    .line 33
    sput-boolean v2, Lcom/htc/opensense2/album/util/Log;->gInitialized:Z

    .line 34
    return-void

    .line 31
    :cond_0
    sget-boolean v0, Lcom/htc/opensense2/album/util/Log;->gEnableLog:Z

    goto :goto_0
.end method

.method public static stackTrace(Ljava/lang/String;)V
    .locals 7
    .parameter "tag"

    .prologue
    .line 107
    const-string v5, "[LogStack] --------------------------------"

    invoke-static {p0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 109
    .local v4, te:[Ljava/lang/StackTraceElement;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/StackTraceElement;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 110
    .local v1, e:Ljava/lang/StackTraceElement;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[LogStack] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 111
    .end local v1           #e:Ljava/lang/StackTraceElement;
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 37
    sget-boolean v0, Lcom/htc/opensense2/album/util/Log;->gInitialized:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/opensense2/album/util/Log;->initialize()V

    .line 38
    :cond_0
    sget-boolean v0, Lcom/htc/opensense2/album/util/Log;->gEnableLog:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/htc/opensense2/album/util/Log;->gSeverity:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OpenSense] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_1
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 65
    sget-boolean v0, Lcom/htc/opensense2/album/util/Log;->gInitialized:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/opensense2/album/util/Log;->initialize()V

    .line 66
    :cond_0
    sget-boolean v0, Lcom/htc/opensense2/album/util/Log;->gEnableLog:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/htc/opensense2/album/util/Log;->gSeverity:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OpenSense] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_1
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "tag"
    .parameter "msg"
    .parameter "e"

    .prologue
    .line 72
    sget-boolean v0, Lcom/htc/opensense2/album/util/Log;->gInitialized:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/opensense2/album/util/Log;->initialize()V

    .line 73
    :cond_0
    sget-boolean v0, Lcom/htc/opensense2/album/util/Log;->gEnableLog:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/htc/opensense2/album/util/Log;->gSeverity:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OpenSense] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    :cond_1
    return-void
.end method
