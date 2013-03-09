.class public Lorg/apache/harmony/xnet/provider/jsse/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;
    }
.end annotation


# static fields
.field private static names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-string v1, "jsse"

    const-string v2, ""

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/harmony/xnet/provider/jsse/Logger;->names:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    sput-object v1, Lorg/apache/harmony/xnet/provider/jsse/Logger;->names:[Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStream(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lorg/apache/harmony/xnet/provider/jsse/Logger;->names:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lorg/apache/harmony/xnet/provider/jsse/Logger;->names:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    invoke-direct {v1, p0}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;-><init>(Ljava/lang/String;)V

    :goto_1
    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
