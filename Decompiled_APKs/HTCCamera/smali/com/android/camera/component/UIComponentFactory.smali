.class public final Lcom/android/camera/component/UIComponentFactory;
.super Lcom/android/camera/component/CameraComponentFactory;
.source "UIComponentFactory.java"


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

    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/android/camera/component/ThumbnailUI;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/android/camera/component/HwCameraSwitchButton;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/android/camera/component/PanoramaUI;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/android/camera/component/HdrUI;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/android/camera/component/BurstUI;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lcom/android/camera/component/HandShakeUI;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lcom/android/camera/component/ZoomBar;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Lcom/android/camera/component/RemovableStorageWatcher;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Lcom/android/camera/component/MediaScannerWatcher;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-class v2, Lcom/android/camera/component/NewMediaBroadcaster;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-class v2, Lcom/android/camera/component/BatteryWatcher;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-class v2, Lcom/android/camera/component/PowerWarningUI;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-class v2, Lcom/android/camera/component/ReviewAnimation;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-class v2, Lcom/android/camera/effect/EffectPanelUI;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-class v2, Lcom/android/camera/effect/EffectControlUI;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-class v2, Lcom/android/camera/component/IndicatorsUI;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-class v2, Lcom/android/camera/component/SelfTimerUI;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-class v2, Lcom/android/camera/component/RecordingTimerUI;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-class v2, Lcom/android/camera/component/AutoBacklightIntentSender;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/component/UIComponentFactory;->m_ComponentClasses:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/android/camera/HTCCamera;

    aput-object v2, v0, v1

    invoke-direct {p0, p1, p1, v0}, Lcom/android/camera/component/CameraComponentFactory;-><init>(Lcom/android/camera/HTCCamera;Lcom/android/camera/component/IComponentOwner;[Ljava/lang/Class;)V

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

    sget-object v0, Lcom/android/camera/component/UIComponentFactory;->m_ComponentClasses:[Ljava/lang/Class;

    return-object v0
.end method
