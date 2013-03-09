.class public final enum Lcom/google/android/videochat/CallState$AudioDeviceState;
.super Ljava/lang/Enum;
.source "CallState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/videochat/CallState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AudioDeviceState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/videochat/CallState$AudioDeviceState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/videochat/CallState$AudioDeviceState;

.field public static final enum BLUETOOTH_ON:Lcom/google/android/videochat/CallState$AudioDeviceState;

.field public static final enum BLUETOOTH_TURNING_OFF:Lcom/google/android/videochat/CallState$AudioDeviceState;

.field public static final enum BLUETOOTH_TURNING_ON:Lcom/google/android/videochat/CallState$AudioDeviceState;

.field public static final enum EARPIECE_ON:Lcom/google/android/videochat/CallState$AudioDeviceState;

.field public static final enum SPEAKERPHONE_ON:Lcom/google/android/videochat/CallState$AudioDeviceState;

.field public static final enum WIRED_HEADSET_ON:Lcom/google/android/videochat/CallState$AudioDeviceState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 34
    new-instance v0, Lcom/google/android/videochat/CallState$AudioDeviceState;

    const-string v1, "SPEAKERPHONE_ON"

    invoke-direct {v0, v1, v3}, Lcom/google/android/videochat/CallState$AudioDeviceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/videochat/CallState$AudioDeviceState;->SPEAKERPHONE_ON:Lcom/google/android/videochat/CallState$AudioDeviceState;

    .line 35
    new-instance v0, Lcom/google/android/videochat/CallState$AudioDeviceState;

    const-string v1, "EARPIECE_ON"

    invoke-direct {v0, v1, v4}, Lcom/google/android/videochat/CallState$AudioDeviceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/videochat/CallState$AudioDeviceState;->EARPIECE_ON:Lcom/google/android/videochat/CallState$AudioDeviceState;

    .line 36
    new-instance v0, Lcom/google/android/videochat/CallState$AudioDeviceState;

    const-string v1, "WIRED_HEADSET_ON"

    invoke-direct {v0, v1, v5}, Lcom/google/android/videochat/CallState$AudioDeviceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/videochat/CallState$AudioDeviceState;->WIRED_HEADSET_ON:Lcom/google/android/videochat/CallState$AudioDeviceState;

    .line 40
    new-instance v0, Lcom/google/android/videochat/CallState$AudioDeviceState;

    const-string v1, "BLUETOOTH_ON"

    invoke-direct {v0, v1, v6}, Lcom/google/android/videochat/CallState$AudioDeviceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/videochat/CallState$AudioDeviceState;->BLUETOOTH_ON:Lcom/google/android/videochat/CallState$AudioDeviceState;

    .line 45
    new-instance v0, Lcom/google/android/videochat/CallState$AudioDeviceState;

    const-string v1, "BLUETOOTH_TURNING_ON"

    invoke-direct {v0, v1, v7}, Lcom/google/android/videochat/CallState$AudioDeviceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/videochat/CallState$AudioDeviceState;->BLUETOOTH_TURNING_ON:Lcom/google/android/videochat/CallState$AudioDeviceState;

    .line 50
    new-instance v0, Lcom/google/android/videochat/CallState$AudioDeviceState;

    const-string v1, "BLUETOOTH_TURNING_OFF"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/videochat/CallState$AudioDeviceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/videochat/CallState$AudioDeviceState;->BLUETOOTH_TURNING_OFF:Lcom/google/android/videochat/CallState$AudioDeviceState;

    .line 33
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/android/videochat/CallState$AudioDeviceState;

    sget-object v1, Lcom/google/android/videochat/CallState$AudioDeviceState;->SPEAKERPHONE_ON:Lcom/google/android/videochat/CallState$AudioDeviceState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/videochat/CallState$AudioDeviceState;->EARPIECE_ON:Lcom/google/android/videochat/CallState$AudioDeviceState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/videochat/CallState$AudioDeviceState;->WIRED_HEADSET_ON:Lcom/google/android/videochat/CallState$AudioDeviceState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/videochat/CallState$AudioDeviceState;->BLUETOOTH_ON:Lcom/google/android/videochat/CallState$AudioDeviceState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/videochat/CallState$AudioDeviceState;->BLUETOOTH_TURNING_ON:Lcom/google/android/videochat/CallState$AudioDeviceState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/videochat/CallState$AudioDeviceState;->BLUETOOTH_TURNING_OFF:Lcom/google/android/videochat/CallState$AudioDeviceState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/videochat/CallState$AudioDeviceState;->$VALUES:[Lcom/google/android/videochat/CallState$AudioDeviceState;

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
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/videochat/CallState$AudioDeviceState;
    .locals 1
    .parameter

    .prologue
    .line 33
    const-class v0, Lcom/google/android/videochat/CallState$AudioDeviceState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/videochat/CallState$AudioDeviceState;

    return-object v0
.end method

.method public static values()[Lcom/google/android/videochat/CallState$AudioDeviceState;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/google/android/videochat/CallState$AudioDeviceState;->$VALUES:[Lcom/google/android/videochat/CallState$AudioDeviceState;

    invoke-virtual {v0}, [Lcom/google/android/videochat/CallState$AudioDeviceState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/videochat/CallState$AudioDeviceState;

    return-object v0
.end method
