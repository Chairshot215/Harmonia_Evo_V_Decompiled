.class final enum Lcom/android/camera/Camera_Util$RenderMode;
.super Ljava/lang/Enum;
.source "Camera_Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera_Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "RenderMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/Camera_Util$RenderMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/Camera_Util$RenderMode;

.field public static final enum NORMAL:Lcom/android/camera/Camera_Util$RenderMode;

.field public static final enum OPTIMIZE_QUALITY:Lcom/android/camera/Camera_Util$RenderMode;

.field public static final enum OPTIMIZE_SPEED:Lcom/android/camera/Camera_Util$RenderMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/camera/Camera_Util$RenderMode;

    const-string v1, "OPTIMIZE_SPEED"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/Camera_Util$RenderMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/Camera_Util$RenderMode;->OPTIMIZE_SPEED:Lcom/android/camera/Camera_Util$RenderMode;

    new-instance v0, Lcom/android/camera/Camera_Util$RenderMode;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/Camera_Util$RenderMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/Camera_Util$RenderMode;->NORMAL:Lcom/android/camera/Camera_Util$RenderMode;

    new-instance v0, Lcom/android/camera/Camera_Util$RenderMode;

    const-string v1, "OPTIMIZE_QUALITY"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/Camera_Util$RenderMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/Camera_Util$RenderMode;->OPTIMIZE_QUALITY:Lcom/android/camera/Camera_Util$RenderMode;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/camera/Camera_Util$RenderMode;

    sget-object v1, Lcom/android/camera/Camera_Util$RenderMode;->OPTIMIZE_SPEED:Lcom/android/camera/Camera_Util$RenderMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/Camera_Util$RenderMode;->NORMAL:Lcom/android/camera/Camera_Util$RenderMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/Camera_Util$RenderMode;->OPTIMIZE_QUALITY:Lcom/android/camera/Camera_Util$RenderMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/camera/Camera_Util$RenderMode;->$VALUES:[Lcom/android/camera/Camera_Util$RenderMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/Camera_Util$RenderMode;
    .locals 1

    const-class v0, Lcom/android/camera/Camera_Util$RenderMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Camera_Util$RenderMode;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/Camera_Util$RenderMode;
    .locals 1

    sget-object v0, Lcom/android/camera/Camera_Util$RenderMode;->$VALUES:[Lcom/android/camera/Camera_Util$RenderMode;

    invoke-virtual {v0}, [Lcom/android/camera/Camera_Util$RenderMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/Camera_Util$RenderMode;

    return-object v0
.end method
