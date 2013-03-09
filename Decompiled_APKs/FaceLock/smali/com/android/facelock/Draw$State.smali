.class final enum Lcom/android/facelock/Draw$State;
.super Ljava/lang/Enum;
.source "Draw.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/facelock/Draw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/facelock/Draw$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/facelock/Draw$State;

.field public static final enum CHECK:Lcom/android/facelock/Draw$State;

.field public static final enum COMPLETE:Lcom/android/facelock/Draw$State;

.field public static final enum GLOW:Lcom/android/facelock/Draw$State;

.field public static final enum INITIAL:Lcom/android/facelock/Draw$State;

.field public static final enum PROGRESS:Lcom/android/facelock/Draw$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    new-instance v0, Lcom/android/facelock/Draw$State;

    const-string v1, "INITIAL"

    invoke-direct {v0, v1, v2}, Lcom/android/facelock/Draw$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/facelock/Draw$State;->INITIAL:Lcom/android/facelock/Draw$State;

    new-instance v0, Lcom/android/facelock/Draw$State;

    const-string v1, "PROGRESS"

    invoke-direct {v0, v1, v3}, Lcom/android/facelock/Draw$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/facelock/Draw$State;->PROGRESS:Lcom/android/facelock/Draw$State;

    new-instance v0, Lcom/android/facelock/Draw$State;

    const-string v1, "GLOW"

    invoke-direct {v0, v1, v4}, Lcom/android/facelock/Draw$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/facelock/Draw$State;->GLOW:Lcom/android/facelock/Draw$State;

    new-instance v0, Lcom/android/facelock/Draw$State;

    const-string v1, "CHECK"

    invoke-direct {v0, v1, v5}, Lcom/android/facelock/Draw$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/facelock/Draw$State;->CHECK:Lcom/android/facelock/Draw$State;

    new-instance v0, Lcom/android/facelock/Draw$State;

    const-string v1, "COMPLETE"

    invoke-direct {v0, v1, v6}, Lcom/android/facelock/Draw$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/facelock/Draw$State;->COMPLETE:Lcom/android/facelock/Draw$State;

    .line 46
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/facelock/Draw$State;

    sget-object v1, Lcom/android/facelock/Draw$State;->INITIAL:Lcom/android/facelock/Draw$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/facelock/Draw$State;->PROGRESS:Lcom/android/facelock/Draw$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/facelock/Draw$State;->GLOW:Lcom/android/facelock/Draw$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/facelock/Draw$State;->CHECK:Lcom/android/facelock/Draw$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/facelock/Draw$State;->COMPLETE:Lcom/android/facelock/Draw$State;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/facelock/Draw$State;->$VALUES:[Lcom/android/facelock/Draw$State;

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
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/facelock/Draw$State;
    .locals 1
    .parameter

    .prologue
    .line 46
    const-class v0, Lcom/android/facelock/Draw$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/facelock/Draw$State;

    return-object v0
.end method

.method public static values()[Lcom/android/facelock/Draw$State;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/android/facelock/Draw$State;->$VALUES:[Lcom/android/facelock/Draw$State;

    invoke-virtual {v0}, [Lcom/android/facelock/Draw$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/facelock/Draw$State;

    return-object v0
.end method
