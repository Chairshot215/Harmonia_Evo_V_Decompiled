.class public final enum Lcom/google/android/videochat/CallSession$AudioDevice;
.super Ljava/lang/Enum;
.source "CallSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/videochat/CallSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AudioDevice"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/videochat/CallSession$AudioDevice;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/videochat/CallSession$AudioDevice;

.field public static final enum BLUETOOTH_HEADSET:Lcom/google/android/videochat/CallSession$AudioDevice;

.field public static final enum EARPIECE:Lcom/google/android/videochat/CallSession$AudioDevice;

.field public static final enum SPEAKERPHONE:Lcom/google/android/videochat/CallSession$AudioDevice;

.field public static final enum WIRED_HEADSET:Lcom/google/android/videochat/CallSession$AudioDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/google/android/videochat/CallSession$AudioDevice;

    const-string v1, "SPEAKERPHONE"

    invoke-direct {v0, v1, v2}, Lcom/google/android/videochat/CallSession$AudioDevice;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/videochat/CallSession$AudioDevice;->SPEAKERPHONE:Lcom/google/android/videochat/CallSession$AudioDevice;

    .line 24
    new-instance v0, Lcom/google/android/videochat/CallSession$AudioDevice;

    const-string v1, "EARPIECE"

    invoke-direct {v0, v1, v3}, Lcom/google/android/videochat/CallSession$AudioDevice;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/videochat/CallSession$AudioDevice;->EARPIECE:Lcom/google/android/videochat/CallSession$AudioDevice;

    .line 25
    new-instance v0, Lcom/google/android/videochat/CallSession$AudioDevice;

    const-string v1, "BLUETOOTH_HEADSET"

    invoke-direct {v0, v1, v4}, Lcom/google/android/videochat/CallSession$AudioDevice;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/videochat/CallSession$AudioDevice;->BLUETOOTH_HEADSET:Lcom/google/android/videochat/CallSession$AudioDevice;

    .line 26
    new-instance v0, Lcom/google/android/videochat/CallSession$AudioDevice;

    const-string v1, "WIRED_HEADSET"

    invoke-direct {v0, v1, v5}, Lcom/google/android/videochat/CallSession$AudioDevice;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/videochat/CallSession$AudioDevice;->WIRED_HEADSET:Lcom/google/android/videochat/CallSession$AudioDevice;

    .line 22
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/videochat/CallSession$AudioDevice;

    sget-object v1, Lcom/google/android/videochat/CallSession$AudioDevice;->SPEAKERPHONE:Lcom/google/android/videochat/CallSession$AudioDevice;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/videochat/CallSession$AudioDevice;->EARPIECE:Lcom/google/android/videochat/CallSession$AudioDevice;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/videochat/CallSession$AudioDevice;->BLUETOOTH_HEADSET:Lcom/google/android/videochat/CallSession$AudioDevice;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/videochat/CallSession$AudioDevice;->WIRED_HEADSET:Lcom/google/android/videochat/CallSession$AudioDevice;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/videochat/CallSession$AudioDevice;->$VALUES:[Lcom/google/android/videochat/CallSession$AudioDevice;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/videochat/CallSession$AudioDevice;
    .locals 1
    .parameter

    .prologue
    .line 22
    const-class v0, Lcom/google/android/videochat/CallSession$AudioDevice;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/videochat/CallSession$AudioDevice;

    return-object v0
.end method

.method public static values()[Lcom/google/android/videochat/CallSession$AudioDevice;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/google/android/videochat/CallSession$AudioDevice;->$VALUES:[Lcom/google/android/videochat/CallSession$AudioDevice;

    invoke-virtual {v0}, [Lcom/google/android/videochat/CallSession$AudioDevice;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/videochat/CallSession$AudioDevice;

    return-object v0
.end method
