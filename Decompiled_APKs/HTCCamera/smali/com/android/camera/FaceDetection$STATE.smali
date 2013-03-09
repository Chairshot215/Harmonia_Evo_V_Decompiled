.class public final enum Lcom/android/camera/FaceDetection$STATE;
.super Ljava/lang/Enum;
.source "FaceDetection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/FaceDetection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/FaceDetection$STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/FaceDetection$STATE;

.field public static final enum NO_FACE:Lcom/android/camera/FaceDetection$STATE;

.field public static final enum STABLE_GET_FOCUS:Lcom/android/camera/FaceDetection$STATE;

.field public static final enum STABLE_NO_FACE:Lcom/android/camera/FaceDetection$STATE;

.field public static final enum STABLE_WITH_FACE:Lcom/android/camera/FaceDetection$STATE;

.field public static final enum STABLE_WITH_FOCUS:Lcom/android/camera/FaceDetection$STATE;

.field public static final enum UNSTABLE_NO_FACE:Lcom/android/camera/FaceDetection$STATE;

.field public static final enum UNSTABLE_WITH_FACE:Lcom/android/camera/FaceDetection$STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/camera/FaceDetection$STATE;

    const-string v1, "NO_FACE"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/FaceDetection$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/FaceDetection$STATE;->NO_FACE:Lcom/android/camera/FaceDetection$STATE;

    new-instance v0, Lcom/android/camera/FaceDetection$STATE;

    const-string v1, "UNSTABLE_NO_FACE"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/FaceDetection$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/FaceDetection$STATE;->UNSTABLE_NO_FACE:Lcom/android/camera/FaceDetection$STATE;

    new-instance v0, Lcom/android/camera/FaceDetection$STATE;

    const-string v1, "UNSTABLE_WITH_FACE"

    invoke-direct {v0, v1, v5}, Lcom/android/camera/FaceDetection$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/FaceDetection$STATE;->UNSTABLE_WITH_FACE:Lcom/android/camera/FaceDetection$STATE;

    new-instance v0, Lcom/android/camera/FaceDetection$STATE;

    const-string v1, "STABLE_NO_FACE"

    invoke-direct {v0, v1, v6}, Lcom/android/camera/FaceDetection$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/FaceDetection$STATE;->STABLE_NO_FACE:Lcom/android/camera/FaceDetection$STATE;

    new-instance v0, Lcom/android/camera/FaceDetection$STATE;

    const-string v1, "STABLE_WITH_FACE"

    invoke-direct {v0, v1, v7}, Lcom/android/camera/FaceDetection$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/FaceDetection$STATE;->STABLE_WITH_FACE:Lcom/android/camera/FaceDetection$STATE;

    new-instance v0, Lcom/android/camera/FaceDetection$STATE;

    const-string v1, "STABLE_GET_FOCUS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/camera/FaceDetection$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/FaceDetection$STATE;->STABLE_GET_FOCUS:Lcom/android/camera/FaceDetection$STATE;

    new-instance v0, Lcom/android/camera/FaceDetection$STATE;

    const-string v1, "STABLE_WITH_FOCUS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/camera/FaceDetection$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/FaceDetection$STATE;->STABLE_WITH_FOCUS:Lcom/android/camera/FaceDetection$STATE;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/camera/FaceDetection$STATE;

    sget-object v1, Lcom/android/camera/FaceDetection$STATE;->NO_FACE:Lcom/android/camera/FaceDetection$STATE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/FaceDetection$STATE;->UNSTABLE_NO_FACE:Lcom/android/camera/FaceDetection$STATE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/FaceDetection$STATE;->UNSTABLE_WITH_FACE:Lcom/android/camera/FaceDetection$STATE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/camera/FaceDetection$STATE;->STABLE_NO_FACE:Lcom/android/camera/FaceDetection$STATE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/camera/FaceDetection$STATE;->STABLE_WITH_FACE:Lcom/android/camera/FaceDetection$STATE;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/camera/FaceDetection$STATE;->STABLE_GET_FOCUS:Lcom/android/camera/FaceDetection$STATE;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/camera/FaceDetection$STATE;->STABLE_WITH_FOCUS:Lcom/android/camera/FaceDetection$STATE;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/FaceDetection$STATE;->$VALUES:[Lcom/android/camera/FaceDetection$STATE;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/FaceDetection$STATE;
    .locals 1

    const-class v0, Lcom/android/camera/FaceDetection$STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/FaceDetection$STATE;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/FaceDetection$STATE;
    .locals 1

    sget-object v0, Lcom/android/camera/FaceDetection$STATE;->$VALUES:[Lcom/android/camera/FaceDetection$STATE;

    invoke-virtual {v0}, [Lcom/android/camera/FaceDetection$STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/FaceDetection$STATE;

    return-object v0
.end method
