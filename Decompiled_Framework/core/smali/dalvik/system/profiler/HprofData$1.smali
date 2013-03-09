.class synthetic Ldalvik/system/profiler/HprofData$1;
.super Ljava/lang/Object;
.source "HprofData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldalvik/system/profiler/HprofData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$dalvik$system$profiler$HprofData$ThreadEventType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Ldalvik/system/profiler/HprofData$ThreadEventType;->values()[Ldalvik/system/profiler/HprofData$ThreadEventType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Ldalvik/system/profiler/HprofData$1;->$SwitchMap$dalvik$system$profiler$HprofData$ThreadEventType:[I

    :try_start_0
    sget-object v0, Ldalvik/system/profiler/HprofData$1;->$SwitchMap$dalvik$system$profiler$HprofData$ThreadEventType:[I

    sget-object v1, Ldalvik/system/profiler/HprofData$ThreadEventType;->START:Ldalvik/system/profiler/HprofData$ThreadEventType;

    invoke-virtual {v1}, Ldalvik/system/profiler/HprofData$ThreadEventType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Ldalvik/system/profiler/HprofData$1;->$SwitchMap$dalvik$system$profiler$HprofData$ThreadEventType:[I

    sget-object v1, Ldalvik/system/profiler/HprofData$ThreadEventType;->END:Ldalvik/system/profiler/HprofData$ThreadEventType;

    invoke-virtual {v1}, Ldalvik/system/profiler/HprofData$ThreadEventType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
