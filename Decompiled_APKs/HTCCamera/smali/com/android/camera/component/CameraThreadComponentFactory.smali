.class public final Lcom/android/camera/component/CameraThreadComponentFactory;
.super Lcom/android/camera/component/CameraComponentFactory;
.source "CameraThreadComponentFactory.java"


# static fields
.field private static final m_ComponentClasses:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/android/camera/component/ThumbnailController;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/android/camera/component/PanoramaController;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/android/camera/component/HdrController;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/android/camera/component/BurstController;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/android/camera/component/HandShakeController;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lcom/android/camera/component/PowerWarningController;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lcom/android/camera/component/ReviewAnimationController;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Lcom/android/camera/effect/ColorEffectController;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Lcom/android/camera/effect/GpuEffectController;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-class v2, Lcom/android/camera/effect/SceneController;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/component/CameraThreadComponentFactory;->m_ComponentClasses:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/camera/HTCCamera;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/android/camera/CameraThread;

    aput-object v3, v1, v2

    invoke-direct {p0, p1, v0, v1}, Lcom/android/camera/component/CameraComponentFactory;-><init>(Lcom/android/camera/HTCCamera;Lcom/android/camera/component/IComponentOwner;[Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected getComponentClasses()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    sget-object v0, Lcom/android/camera/component/CameraThreadComponentFactory;->m_ComponentClasses:[Ljava/lang/Class;

    return-object v0
.end method
