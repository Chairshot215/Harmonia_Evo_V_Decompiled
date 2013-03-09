.class public abstract Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempStorage;
.super Ljava/lang/Object;
.source "TempStorage.java"


# static fields
.field private static inst:Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempStorage;

.field private static log:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-class v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempStorage;

    invoke-static {v2}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v2

    sput-object v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempStorage;->log:Lorg/apache/commons/logging/Log;

    const/4 v2, 0x0

    sput-object v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempStorage;->inst:Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempStorage;

    const-string v2, "org.apache.james.mime4j.tempStorage"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    sget-object v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempStorage;->inst:Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempStorage;

    if-eqz v2, :cond_0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempStorage;

    sput-object v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempStorage;->inst:Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempStorage;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-object v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempStorage;->inst:Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempStorage;

    if-nez v2, :cond_1

    new-instance v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/SimpleTempStorage;

    invoke-direct {v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/SimpleTempStorage;-><init>()V

    sput-object v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempStorage;->inst:Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempStorage;

    :cond_1
    return-void

    :catch_0
    move-exception v1

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

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempStorage;
    .locals 1

    sget-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempStorage;->inst:Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempStorage;

    return-object v0
.end method

.method public static setInstance(Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempStorage;)V
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "inst"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sput-object p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempStorage;->inst:Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempStorage;

    return-void
.end method


# virtual methods
.method public abstract getRootTempPath()Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempPath;
.end method
