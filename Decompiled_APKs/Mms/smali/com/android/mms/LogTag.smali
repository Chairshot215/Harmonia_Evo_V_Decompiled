.class public Lcom/android/mms/LogTag;
.super Ljava/lang/Object;
.source "LogTag.java"


# static fields
.field public static final APP:Ljava/lang/String; = "Mms:app"

.field public static final SEVERE_WARNING:Z = true

.field private static final SHOW_SEVERE_WARNING_DIALOG:Z = false

.field public static final TAG:Ljava/lang/String; = "Mms"

.field public static final THREAD_CACHE:Ljava/lang/String; = "Mms:threadcache"

.field public static final TRANSACTION:Ljava/lang/String; = "Mms:transaction"

.field public static final VERBOSE:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter "format"
    .parameter "args"

    .prologue
    .line 65
    const-string v0, "Mms"

    invoke-static {p0, p1}, Lcom/android/mms/LogTag;->logFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-void
.end method

.method public static varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter "format"
    .parameter "args"

    .prologue
    .line 73
    const-string v0, "Mms"

    invoke-static {p0, p1}, Lcom/android/mms/LogTag;->logFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return-void
.end method

.method private static varargs logFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .parameter "format"
    .parameter "args"

    .prologue
    .line 54
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 55
    aget-object v2, p1, v0

    instance-of v2, v2, [Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 56
    aget-object v2, p1, v0

    check-cast v2, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    invoke-static {v2}, Lcom/android/mms/LogTag;->prettyArray([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v0

    .line 54
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, s:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 61
    return-object v1
.end method

.method private static prettyArray([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "array"

    .prologue
    .line 37
    array-length v3, p0

    if-nez v3, :cond_0

    .line 38
    const-string v3, "[]"

    .line 50
    :goto_0
    return-object v3

    .line 41
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .local v2, sb:Ljava/lang/StringBuilder;
    array-length v3, p0

    add-int/lit8 v1, v3, -0x1

    .line 43
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 44
    aget-object v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 47
    :cond_1
    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter "format"
    .parameter "args"

    .prologue
    .line 69
    const-string v0, "Mms"

    invoke-static {p0, p1}, Lcom/android/mms/LogTag;->logFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void
.end method
