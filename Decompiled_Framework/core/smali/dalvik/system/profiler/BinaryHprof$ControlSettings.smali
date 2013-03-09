.class public final enum Ldalvik/system/profiler/BinaryHprof$ControlSettings;
.super Ljava/lang/Enum;
.source "BinaryHprof.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldalvik/system/profiler/BinaryHprof;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ControlSettings"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ldalvik/system/profiler/BinaryHprof$ControlSettings;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ldalvik/system/profiler/BinaryHprof$ControlSettings;

.field public static final enum ALLOC_TRACES:Ldalvik/system/profiler/BinaryHprof$ControlSettings;

.field public static final enum CPU_SAMPLING:Ldalvik/system/profiler/BinaryHprof$ControlSettings;


# instance fields
.field public final bitmask:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v0, Ldalvik/system/profiler/BinaryHprof$ControlSettings;

    const-string v1, "ALLOC_TRACES"

    invoke-direct {v0, v1, v3, v2}, Ldalvik/system/profiler/BinaryHprof$ControlSettings;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ldalvik/system/profiler/BinaryHprof$ControlSettings;->ALLOC_TRACES:Ldalvik/system/profiler/BinaryHprof$ControlSettings;

    new-instance v0, Ldalvik/system/profiler/BinaryHprof$ControlSettings;

    const-string v1, "CPU_SAMPLING"

    invoke-direct {v0, v1, v2, v4}, Ldalvik/system/profiler/BinaryHprof$ControlSettings;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ldalvik/system/profiler/BinaryHprof$ControlSettings;->CPU_SAMPLING:Ldalvik/system/profiler/BinaryHprof$ControlSettings;

    new-array v0, v4, [Ldalvik/system/profiler/BinaryHprof$ControlSettings;

    sget-object v1, Ldalvik/system/profiler/BinaryHprof$ControlSettings;->ALLOC_TRACES:Ldalvik/system/profiler/BinaryHprof$ControlSettings;

    aput-object v1, v0, v3

    sget-object v1, Ldalvik/system/profiler/BinaryHprof$ControlSettings;->CPU_SAMPLING:Ldalvik/system/profiler/BinaryHprof$ControlSettings;

    aput-object v1, v0, v2

    sput-object v0, Ldalvik/system/profiler/BinaryHprof$ControlSettings;->$VALUES:[Ldalvik/system/profiler/BinaryHprof$ControlSettings;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Ldalvik/system/profiler/BinaryHprof$ControlSettings;->bitmask:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ldalvik/system/profiler/BinaryHprof$ControlSettings;
    .locals 1

    const-class v0, Ldalvik/system/profiler/BinaryHprof$ControlSettings;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ldalvik/system/profiler/BinaryHprof$ControlSettings;

    return-object v0
.end method

.method public static values()[Ldalvik/system/profiler/BinaryHprof$ControlSettings;
    .locals 1

    sget-object v0, Ldalvik/system/profiler/BinaryHprof$ControlSettings;->$VALUES:[Ldalvik/system/profiler/BinaryHprof$ControlSettings;

    invoke-virtual {v0}, [Ldalvik/system/profiler/BinaryHprof$ControlSettings;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldalvik/system/profiler/BinaryHprof$ControlSettings;

    return-object v0
.end method
