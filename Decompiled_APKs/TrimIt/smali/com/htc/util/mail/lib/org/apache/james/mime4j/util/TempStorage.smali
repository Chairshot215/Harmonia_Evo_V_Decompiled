.class public abstract Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempStorage;
.super Ljava/lang/Object;
.source "TempStorage.java"


# static fields
.field private static inst:Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempStorage;

.field private static log:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 30
    const-class v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempStorage;

    invoke-static {v2}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v2

    sput-object v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempStorage;->log:Lorg/apache/commons/logging/Log;

    .line 31
    const/4 v2, 0x0

    sput-object v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempStorage;->inst:Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempStorage;

    .line 35
    const-string v2, "org.apache.james.mime4j.tempStorage"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, clazz:Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempStorage;->inst:Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempStorage;

    if-eqz v2, :cond_0

    .line 39
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempStorage;

    sput-object v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempStorage;->inst:Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempStorage;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :cond_0
    :goto_0
    sget-object v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempStorage;->inst:Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempStorage;

    if-nez v2, :cond_1

    .line 48
    new-instance v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/SimpleTempStorage;

    invoke-direct {v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/SimpleTempStorage;-><init>()V

    sput-object v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempStorage;->inst:Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempStorage;

    .line 50
    :cond_1
    return-void

    .line 42
    :catch_0
    move-exception v1

    .line 43
    .local v1, t:Ljava/lang/Throwable;
    sget-object v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempStorage;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create or instantiate TempStorage class \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' using SimpleTempStorage instead"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempStorage;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempStorage;->inst:Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempStorage;

    return-object v0
.end method

.method public static setInstance(Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempStorage;)V
    .locals 2
    .parameter "inst"

    .prologue
    .line 65
    if-nez p0, :cond_0

    .line 66
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "inst"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    sput-object p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempStorage;->inst:Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempStorage;

    .line 69
    return-void
.end method


# virtual methods
.method public abstract getRootTempPath()Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempPath;
.end method
