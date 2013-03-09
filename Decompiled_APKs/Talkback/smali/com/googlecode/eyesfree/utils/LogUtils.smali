.class public Lcom/googlecode/eyesfree/utils/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# static fields
.field public static LOG_LEVEL:I

.field public static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "LogUtils"

    sput-object v0, Lcom/googlecode/eyesfree/utils/LogUtils;->TAG:Ljava/lang/String;

    .line 33
    const/4 v0, 0x6

    sput v0, Lcom/googlecode/eyesfree/utils/LogUtils;->LOG_LEVEL:I

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs log(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .parameter "priority"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Lcom/googlecode/eyesfree/utils/LogUtils;->log(Ljava/lang/Object;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 86
    return-void
.end method

.method public static varargs log(Ljava/lang/Object;ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 5
    .parameter "source"
    .parameter "priority"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 53
    sget v2, Lcom/googlecode/eyesfree/utils/LogUtils;->LOG_LEVEL:I

    if-ge p1, v2, :cond_0

    .line 72
    .end local p0
    :goto_0
    return-void

    .line 59
    .restart local p0
    :cond_0
    if-nez p0, :cond_1

    .line 60
    sget-object v1, Lcom/googlecode/eyesfree/utils/LogUtils;->TAG:Ljava/lang/String;

    .line 68
    .end local p0
    .local v1, sourceClass:Ljava/lang/String;
    :goto_1
    :try_start_0
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, e:Ljava/util/IllegalFormatException;
    sget-object v2, Lcom/googlecode/eyesfree/utils/LogUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Bad formatting string: \""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 61
    .end local v0           #e:Ljava/util/IllegalFormatException;
    .end local v1           #sourceClass:Ljava/lang/String;
    .restart local p0
    :cond_1
    instance-of v2, p0, Ljava/lang/Class;

    if-eqz v2, :cond_2

    .line 62
    check-cast p0, Ljava/lang/Class;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #sourceClass:Ljava/lang/String;
    goto :goto_1

    .line 64
    .end local v1           #sourceClass:Ljava/lang/String;
    .restart local p0
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #sourceClass:Ljava/lang/String;
    goto :goto_1
.end method

.method public static setLogLevel(I)V
    .locals 0
    .parameter "logLevel"

    .prologue
    .line 95
    sput p0, Lcom/googlecode/eyesfree/utils/LogUtils;->LOG_LEVEL:I

    .line 96
    return-void
.end method
