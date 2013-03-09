.class final enum Lcom/htc/android/worldclock/AlarmAlert$VolumeBehavior;
.super Ljava/lang/Enum;
.source "AlarmAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/AlarmAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "VolumeBehavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/android/worldclock/AlarmAlert$VolumeBehavior;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/android/worldclock/AlarmAlert$VolumeBehavior;

.field public static final enum Vol_Dismiss:Lcom/htc/android/worldclock/AlarmAlert$VolumeBehavior;

.field public static final enum Vol_None:Lcom/htc/android/worldclock/AlarmAlert$VolumeBehavior;

.field public static final enum Vol_Snooze:Lcom/htc/android/worldclock/AlarmAlert$VolumeBehavior;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 114
    new-instance v0, Lcom/htc/android/worldclock/AlarmAlert$VolumeBehavior;

    const-string v1, "Vol_None"

    invoke-direct {v0, v1, v2}, Lcom/htc/android/worldclock/AlarmAlert$VolumeBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/worldclock/AlarmAlert$VolumeBehavior;->Vol_None:Lcom/htc/android/worldclock/AlarmAlert$VolumeBehavior;

    .line 115
    new-instance v0, Lcom/htc/android/worldclock/AlarmAlert$VolumeBehavior;

    const-string v1, "Vol_Snooze"

    invoke-direct {v0, v1, v3}, Lcom/htc/android/worldclock/AlarmAlert$VolumeBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/worldclock/AlarmAlert$VolumeBehavior;->Vol_Snooze:Lcom/htc/android/worldclock/AlarmAlert$VolumeBehavior;

    .line 116
    new-instance v0, Lcom/htc/android/worldclock/AlarmAlert$VolumeBehavior;

    const-string v1, "Vol_Dismiss"

    invoke-direct {v0, v1, v4}, Lcom/htc/android/worldclock/AlarmAlert$VolumeBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/worldclock/AlarmAlert$VolumeBehavior;->Vol_Dismiss:Lcom/htc/android/worldclock/AlarmAlert$VolumeBehavior;

    .line 113
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/android/worldclock/AlarmAlert$VolumeBehavior;

    sget-object v1, Lcom/htc/android/worldclock/AlarmAlert$VolumeBehavior;->Vol_None:Lcom/htc/android/worldclock/AlarmAlert$VolumeBehavior;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/android/worldclock/AlarmAlert$VolumeBehavior;->Vol_Snooze:Lcom/htc/android/worldclock/AlarmAlert$VolumeBehavior;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/android/worldclock/AlarmAlert$VolumeBehavior;->Vol_Dismiss:Lcom/htc/android/worldclock/AlarmAlert$VolumeBehavior;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/android/worldclock/AlarmAlert$VolumeBehavior;->$VALUES:[Lcom/htc/android/worldclock/AlarmAlert$VolumeBehavior;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/android/worldclock/AlarmAlert$VolumeBehavior;
    .locals 1
    .parameter "name"

    .prologue
    .line 113
    const-class v0, Lcom/htc/android/worldclock/AlarmAlert$VolumeBehavior;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/android/worldclock/AlarmAlert$VolumeBehavior;

    return-object v0
.end method

.method public static values()[Lcom/htc/android/worldclock/AlarmAlert$VolumeBehavior;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/htc/android/worldclock/AlarmAlert$VolumeBehavior;->$VALUES:[Lcom/htc/android/worldclock/AlarmAlert$VolumeBehavior;

    invoke-virtual {v0}, [Lcom/htc/android/worldclock/AlarmAlert$VolumeBehavior;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/android/worldclock/AlarmAlert$VolumeBehavior;

    return-object v0
.end method
