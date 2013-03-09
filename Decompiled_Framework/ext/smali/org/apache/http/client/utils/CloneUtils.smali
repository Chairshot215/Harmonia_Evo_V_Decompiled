.class public Lorg/apache/http/client/utils/CloneUtils;
.super Ljava/lang/Object;
.source "CloneUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clone(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    const/4 v4, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v4

    :cond_0
    instance-of v4, p0, Ljava/lang/Cloneable;

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :try_start_0
    const-string v5, "clone"

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Class;

    invoke-virtual {v1, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    const/4 v4, 0x0

    :try_start_1
    check-cast v4, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v4

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v4, Ljava/lang/NoSuchMethodError;

    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v4, v0, Ljava/lang/CloneNotSupportedException;

    if-eqz v4, :cond_1

    check-cast v0, Ljava/lang/CloneNotSupportedException;

    throw v0

    :cond_1
    new-instance v4, Ljava/lang/Error;

    const-string v5, "Unexpected exception"

    invoke-direct {v4, v5, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catch_2
    move-exception v2

    new-instance v4, Ljava/lang/IllegalAccessError;

    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    new-instance v4, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v4}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v4
.end method
