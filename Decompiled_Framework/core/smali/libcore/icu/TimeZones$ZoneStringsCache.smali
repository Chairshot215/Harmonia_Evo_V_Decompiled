.class public Llibcore/icu/TimeZones$ZoneStringsCache;
.super Llibcore/util/BasicLruCache;
.source "TimeZones.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/icu/TimeZones;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ZoneStringsCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llibcore/util/BasicLruCache",
        "<",
        "Ljava/util/Locale;",
        "[[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final internTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Llibcore/icu/TimeZones;->access$000()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    invoke-direct {p0, v0}, Llibcore/util/BasicLruCache;-><init>(I)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Llibcore/icu/TimeZones$ZoneStringsCache;->internTable:Ljava/util/HashMap;

    return-void
.end method

.method private declared-synchronized internStrings([[Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    array-length v4, p1

    if-ge v0, v4, :cond_2

    const/4 v1, 0x1

    :goto_1
    const/4 v4, 0x5

    if-ge v1, v4, :cond_1

    aget-object v4, p1, v0

    aget-object v3, v4, v1

    iget-object v4, p0, Llibcore/icu/TimeZones$ZoneStringsCache;->internTable:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    iget-object v4, p0, Llibcore/icu/TimeZones$ZoneStringsCache;->internTable:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    aget-object v4, p1, v0

    aput-object v2, v4, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    monitor-exit p0

    return-void
.end method


# virtual methods
.method protected bridge synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/util/Locale;

    invoke-virtual {p0, p1}, Llibcore/icu/TimeZones$ZoneStringsCache;->create(Ljava/util/Locale;)[[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected create(Ljava/util/Locale;)[[Ljava/lang/String;
    .locals 16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    move-wide v12, v9

    invoke-virtual/range {p1 .. p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {}, Llibcore/icu/TimeZones;->access$000()[Ljava/lang/String;

    move-result-object v15

    #calls: Llibcore/icu/TimeZones;->getZoneStringsImpl(Ljava/lang/String;[Ljava/lang/String;)[[Ljava/lang/String;
    invoke-static {v14, v15}, Llibcore/icu/TimeZones;->access$100(Ljava/lang/String;[Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Llibcore/icu/TimeZones$ZoneStringsCache;->internStrings([[Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v1, v3, v12

    sub-long v5, v7, v9

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Loaded time zone names for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " in "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "ms"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "ms in ICU)"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/System;->logI(Ljava/lang/String;)V

    return-object v11
.end method
