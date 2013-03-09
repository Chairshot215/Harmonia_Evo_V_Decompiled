.class public Landroid_maps_conflict_avoidance/com/google/debug/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field private static final LEVEL_NAMES:[Ljava/lang/String;

.field private static final logger:Landroid_maps_conflict_avoidance/com/google/debug/Logger;

.field private static final timers:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/debug/Log;->timers:Ljava/util/Hashtable;

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ALL"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "FINEST"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "FINER"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "FINE"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "CONFIG"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "INFO"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "WARNING"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "SEVERE"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "NONE"

    aput-object v2, v0, v1

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/debug/Log;->LEVEL_NAMES:[Ljava/lang/String;

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/debug/Log;->logger()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/debug/DebugUtil;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid_maps_conflict_avoidance/com/google/debug/Logger;

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/debug/Log;->logger:Landroid_maps_conflict_avoidance/com/google/debug/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static logThrowable(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-static {p0, p1, v1, v1, v0}, Landroid_maps_conflict_avoidance/com/google/debug/Log;->xlogThrowable(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private static logger()Ljava/lang/Class;
    .locals 5

    const-string v1, "android_maps_conflict_avoidance.com.google.debug.StdoutLogger"

    :try_start_0
    const-string v3, "android_maps_conflict_avoidance.com.google.debug.StdoutLogger"

    invoke-static {v3}, Landroid_maps_conflict_avoidance/com/google/debug/DebugUtil;->isAntPropertyExpanded(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "android_maps_conflict_avoidance.com.google.debug.StdoutLogger"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_0
    const-string v3, "LOGGER"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    goto :goto_0

    :cond_1
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "WARNING: Missing logger class - using default logger com.google.debug.StdoutLogger"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "         For Ant: Specify the logger class using the LOGGER property"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "         For Bolide: Specify the logger class using constant injection"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "         For J2SE:  Specify the logger class via the LOGGER system property"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "         See JavaDoc or source of com.google.debug.Log."

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v3, "android_maps_conflict_avoidance.com.google.debug.StdoutLogger"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/Error;

    const-string v4, "Missing logger class com.google.debug.StdoutLogger"

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static xlogThrowable(Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 7

    sget-object v0, Landroid_maps_conflict_avoidance/com/google/debug/Log;->logger:Landroid_maps_conflict_avoidance/com/google/debug/Logger;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Landroid_maps_conflict_avoidance/com/google/debug/Logger;->logThrowable(Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static xlogThrowable(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    const/4 v2, 0x5

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid_maps_conflict_avoidance/com/google/debug/Log;->xlogThrowable(Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
