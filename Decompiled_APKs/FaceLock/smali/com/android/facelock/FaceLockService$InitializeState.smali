.class final enum Lcom/android/facelock/FaceLockService$InitializeState;
.super Ljava/lang/Enum;
.source "FaceLockService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/facelock/FaceLockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "InitializeState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/facelock/FaceLockService$InitializeState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/facelock/FaceLockService$InitializeState;

.field public static final enum INITIALIZE_FAILED:Lcom/android/facelock/FaceLockService$InitializeState;

.field public static final enum SET_VIEW:Lcom/android/facelock/FaceLockService$InitializeState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 219
    new-instance v0, Lcom/android/facelock/FaceLockService$InitializeState;

    const-string v1, "INITIALIZE_FAILED"

    invoke-direct {v0, v1, v2}, Lcom/android/facelock/FaceLockService$InitializeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/facelock/FaceLockService$InitializeState;->INITIALIZE_FAILED:Lcom/android/facelock/FaceLockService$InitializeState;

    .line 220
    new-instance v0, Lcom/android/facelock/FaceLockService$InitializeState;

    const-string v1, "SET_VIEW"

    invoke-direct {v0, v1, v3}, Lcom/android/facelock/FaceLockService$InitializeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/facelock/FaceLockService$InitializeState;->SET_VIEW:Lcom/android/facelock/FaceLockService$InitializeState;

    .line 218
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/facelock/FaceLockService$InitializeState;

    sget-object v1, Lcom/android/facelock/FaceLockService$InitializeState;->INITIALIZE_FAILED:Lcom/android/facelock/FaceLockService$InitializeState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/facelock/FaceLockService$InitializeState;->SET_VIEW:Lcom/android/facelock/FaceLockService$InitializeState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/facelock/FaceLockService$InitializeState;->$VALUES:[Lcom/android/facelock/FaceLockService$InitializeState;

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
    .line 218
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/facelock/FaceLockService$InitializeState;
    .locals 1
    .parameter

    .prologue
    .line 218
    const-class v0, Lcom/android/facelock/FaceLockService$InitializeState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/facelock/FaceLockService$InitializeState;

    return-object v0
.end method

.method public static values()[Lcom/android/facelock/FaceLockService$InitializeState;
    .locals 1

    .prologue
    .line 218
    sget-object v0, Lcom/android/facelock/FaceLockService$InitializeState;->$VALUES:[Lcom/android/facelock/FaceLockService$InitializeState;

    invoke-virtual {v0}, [Lcom/android/facelock/FaceLockService$InitializeState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/facelock/FaceLockService$InitializeState;

    return-object v0
.end method
