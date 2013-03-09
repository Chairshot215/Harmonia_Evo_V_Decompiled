.class public final enum Lcom/google/android/videochat/CallManager$Mode;
.super Ljava/lang/Enum;
.source "CallManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/videochat/CallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/videochat/CallManager$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/videochat/CallManager$Mode;

.field public static final enum MUC_VOICE_AND_VIDEO:Lcom/google/android/videochat/CallManager$Mode;

.field public static final enum VOICE_AND_VIDEO:Lcom/google/android/videochat/CallManager$Mode;

.field public static final enum VOICE_ONLY:Lcom/google/android/videochat/CallManager$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 74
    new-instance v0, Lcom/google/android/videochat/CallManager$Mode;

    const-string v1, "VOICE_ONLY"

    invoke-direct {v0, v1, v2}, Lcom/google/android/videochat/CallManager$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/videochat/CallManager$Mode;->VOICE_ONLY:Lcom/google/android/videochat/CallManager$Mode;

    .line 75
    new-instance v0, Lcom/google/android/videochat/CallManager$Mode;

    const-string v1, "VOICE_AND_VIDEO"

    invoke-direct {v0, v1, v3}, Lcom/google/android/videochat/CallManager$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/videochat/CallManager$Mode;->VOICE_AND_VIDEO:Lcom/google/android/videochat/CallManager$Mode;

    .line 77
    new-instance v0, Lcom/google/android/videochat/CallManager$Mode;

    const-string v1, "MUC_VOICE_AND_VIDEO"

    invoke-direct {v0, v1, v4}, Lcom/google/android/videochat/CallManager$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/videochat/CallManager$Mode;->MUC_VOICE_AND_VIDEO:Lcom/google/android/videochat/CallManager$Mode;

    .line 73
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/videochat/CallManager$Mode;

    sget-object v1, Lcom/google/android/videochat/CallManager$Mode;->VOICE_ONLY:Lcom/google/android/videochat/CallManager$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/videochat/CallManager$Mode;->VOICE_AND_VIDEO:Lcom/google/android/videochat/CallManager$Mode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/videochat/CallManager$Mode;->MUC_VOICE_AND_VIDEO:Lcom/google/android/videochat/CallManager$Mode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/videochat/CallManager$Mode;->$VALUES:[Lcom/google/android/videochat/CallManager$Mode;

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
    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/videochat/CallManager$Mode;
    .locals 1
    .parameter

    .prologue
    .line 73
    const-class v0, Lcom/google/android/videochat/CallManager$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/videochat/CallManager$Mode;

    return-object v0
.end method

.method public static values()[Lcom/google/android/videochat/CallManager$Mode;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/google/android/videochat/CallManager$Mode;->$VALUES:[Lcom/google/android/videochat/CallManager$Mode;

    invoke-virtual {v0}, [Lcom/google/android/videochat/CallManager$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/videochat/CallManager$Mode;

    return-object v0
.end method
