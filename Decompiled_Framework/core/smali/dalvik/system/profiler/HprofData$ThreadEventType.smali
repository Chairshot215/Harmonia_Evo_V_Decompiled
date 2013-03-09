.class public final enum Ldalvik/system/profiler/HprofData$ThreadEventType;
.super Ljava/lang/Enum;
.source "HprofData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldalvik/system/profiler/HprofData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ThreadEventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ldalvik/system/profiler/HprofData$ThreadEventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ldalvik/system/profiler/HprofData$ThreadEventType;

.field public static final enum END:Ldalvik/system/profiler/HprofData$ThreadEventType;

.field public static final enum START:Ldalvik/system/profiler/HprofData$ThreadEventType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Ldalvik/system/profiler/HprofData$ThreadEventType;

    const-string v1, "START"

    invoke-direct {v0, v1, v2}, Ldalvik/system/profiler/HprofData$ThreadEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldalvik/system/profiler/HprofData$ThreadEventType;->START:Ldalvik/system/profiler/HprofData$ThreadEventType;

    new-instance v0, Ldalvik/system/profiler/HprofData$ThreadEventType;

    const-string v1, "END"

    invoke-direct {v0, v1, v3}, Ldalvik/system/profiler/HprofData$ThreadEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldalvik/system/profiler/HprofData$ThreadEventType;->END:Ldalvik/system/profiler/HprofData$ThreadEventType;

    const/4 v0, 0x2

    new-array v0, v0, [Ldalvik/system/profiler/HprofData$ThreadEventType;

    sget-object v1, Ldalvik/system/profiler/HprofData$ThreadEventType;->START:Ldalvik/system/profiler/HprofData$ThreadEventType;

    aput-object v1, v0, v2

    sget-object v1, Ldalvik/system/profiler/HprofData$ThreadEventType;->END:Ldalvik/system/profiler/HprofData$ThreadEventType;

    aput-object v1, v0, v3

    sput-object v0, Ldalvik/system/profiler/HprofData$ThreadEventType;->$VALUES:[Ldalvik/system/profiler/HprofData$ThreadEventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ldalvik/system/profiler/HprofData$ThreadEventType;
    .locals 1

    const-class v0, Ldalvik/system/profiler/HprofData$ThreadEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ldalvik/system/profiler/HprofData$ThreadEventType;

    return-object v0
.end method

.method public static values()[Ldalvik/system/profiler/HprofData$ThreadEventType;
    .locals 1

    sget-object v0, Ldalvik/system/profiler/HprofData$ThreadEventType;->$VALUES:[Ldalvik/system/profiler/HprofData$ThreadEventType;

    invoke-virtual {v0}, [Ldalvik/system/profiler/HprofData$ThreadEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldalvik/system/profiler/HprofData$ThreadEventType;

    return-object v0
.end method
