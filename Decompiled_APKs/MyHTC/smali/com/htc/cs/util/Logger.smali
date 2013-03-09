.class public Lcom/htc/cs/util/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "MyHTC"


# instance fields
.field private mPrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "prefix"

    .prologue
    .line 58
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 59
    if-eqz p1, :cond_0

    .line 60
    iput-object p1, p0, Lcom/htc/cs/util/Logger;->mPrefix:Ljava/lang/String;

    .line 63
    :goto_0
    return-void

    .line 62
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cs/util/Logger;->mPrefix:Ljava/lang/String;

    goto :goto_0
.end method

.method private varargs constructMessage([Ljava/lang/Object;)Ljava/lang/String;
    .locals 8
    .parameter "objects"

    .prologue
    .line 180
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/htc/cs/util/Logger;->mPrefix:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 183
    .local v3, msgBuilder:Ljava/lang/StringBuilder;
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/Object;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    .line 184
    .local v4, obj:Ljava/lang/Object;
    if-nez v4, :cond_0

    .line 185
    const-string v6, "{null}"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 187
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 188
    .local v5, str:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 189
    const-string v5, "{empty}"

    .line 190
    :cond_1
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 194
    .end local v4           #obj:Ljava/lang/Object;
    .end local v5           #str:Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static getLogger(Ljava/lang/Class;)Lcom/htc/cs/util/Logger;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/htc/cs/util/Logger;"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {}, Lcom/htc/cs/util/LoggerManager;->getLoggerManager()Lcom/htc/cs/util/LoggerManager;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/cs/util/LoggerManager;->getLogger(Ljava/lang/String;)Lcom/htc/cs/util/Logger;

    move-result-object v0

    return-object v0
.end method

.method public static getLogger(Ljava/lang/Object;)Lcom/htc/cs/util/Logger;
    .locals 2
    .parameter "object"

    .prologue
    .line 27
    invoke-static {}, Lcom/htc/cs/util/LoggerManager;->getLoggerManager()Lcom/htc/cs/util/LoggerManager;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/cs/util/LoggerManager;->getLogger(Ljava/lang/String;)Lcom/htc/cs/util/Logger;

    move-result-object v0

    return-object v0
.end method

.method public static getLogger(Ljava/lang/String;)Lcom/htc/cs/util/Logger;
    .locals 1
    .parameter "name"

    .prologue
    .line 48
    invoke-static {}, Lcom/htc/cs/util/LoggerManager;->getLoggerManager()Lcom/htc/cs/util/LoggerManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cs/util/LoggerManager;->getLogger(Ljava/lang/String;)Lcom/htc/cs/util/Logger;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public varargs debug([Ljava/lang/Object;)V
    .locals 0
    .parameter "objects"

    .prologue
    .line 117
    return-void
.end method

.method public varargs error([Ljava/lang/Object;)V
    .locals 2
    .parameter "objects"

    .prologue
    .line 81
    const-string v0, "MyHTC"

    invoke-direct {p0, p1}, Lcom/htc/cs/util/Logger;->constructMessage([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-void
.end method

.method public exception(Ljava/lang/Throwable;)V
    .locals 3
    .parameter "e"

    .prologue
    .line 71
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/cs/util/Logger;->error([Ljava/lang/Object;)V

    .line 72
    return-void
.end method

.method public varargs info([Ljava/lang/Object;)V
    .locals 0
    .parameter "objects"

    .prologue
    .line 104
    return-void
.end method

.method public logMethodName()V
    .locals 0

    .prologue
    .line 170
    return-void
.end method

.method public varargs sensitive([Ljava/lang/Object;)V
    .locals 0
    .parameter "objects"

    .prologue
    .line 144
    return-void
.end method

.method public varargs verbose([Ljava/lang/Object;)V
    .locals 0
    .parameter "objects"

    .prologue
    .line 130
    return-void
.end method

.method public varargs warning([Ljava/lang/Object;)V
    .locals 2
    .parameter "objects"

    .prologue
    .line 91
    const-string v0, "MyHTC"

    invoke-direct {p0, p1}, Lcom/htc/cs/util/Logger;->constructMessage([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void
.end method
