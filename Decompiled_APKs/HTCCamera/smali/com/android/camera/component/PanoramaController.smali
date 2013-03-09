.class public final Lcom/android/camera/component/PanoramaController;
.super Lcom/android/camera/component/AsyncCameraThreadComponent;
.source "PanoramaController.java"

# interfaces
.implements Lcom/android/camera/ICaptureHandler;


# static fields
.field private static final CAPTURE_TIMER_INTERVAL:I = 0x12c

.field public static final DIRECTION_DOWN:I = 0x4

.field public static final DIRECTION_LEFT:I = 0x1

.field public static final DIRECTION_RIGHT:I = 0x2

.field public static final DIRECTION_UNKNOWN:I = 0x0

.field public static final DIRECTION_UP:I = 0x3

.field public static final MAX_FRAME_COUNT:I = 0x3

.field public static final MSG_CANCEL_CAPTURE:I = 0x3

.field private static final MSG_CREATE_PREVIEW:I = 0x4

.field public static final MSG_ENTER_PANORAMA_MODE:I = 0x1

.field public static final MSG_EXIT_PANORAMA_MODE:I = 0x2

.field private static final MSG_POSTVIEW_CREATE:I = 0x5

.field private static final MSG_PREVIEW_CREATED:I = 0x6

.field public static final NAME:Ljava/lang/String; = "Panorama Controller"

.field static final PANORAMA_TYPE_BASIC:I = 0x0

.field static final PANORAMA_TYPE_SWEEP:I = 0x1

.field private static final m_PanoramaDCFInfo:Lcom/android/camera/DCFInfo;


# instance fields
.field private m_Autorama:Lcom/scalado/camera/autorama/Autorama;

.field private final m_AutoramaListener:Lcom/scalado/camera/autorama/Autorama$AutoramaListener;

.field private m_CameraUsed:Landroid/hardware/Camera;

.field private m_CaptureCount:I

.field private m_CaptureTimerStartTime:J

.field private final m_CloseCameraEventHandler:Lcom/android/camera/IEventHandler;

.field private m_ColorEffectController:Lcom/android/camera/effect/ColorEffectController;

.field private m_CurrentCaptureIndex:I

.field private final m_DeletionEventHandler:Lcom/android/camera/IEventHandler;

.field private m_Direction:I

.field private final m_ExifTags:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_GpuEffectController:Lcom/android/camera/effect/GpuEffectController;

.field private m_IsCanceling:Z

.field private m_IsCapturing:Z

.field private m_IsCapturingFrame:Z

.field private m_IsEntered:Z

.field private m_IsLastFrame:Z

.field private m_IsStitching:Z

.field private m_IsSweepPanorama:Z

.field private m_LatestContentUri:Landroid/net/Uri;

.field private m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;

.field private m_PreviewThumbnailImage:Landroid/graphics/Bitmap;

.field private m_PreviousDeltaX:F

.field private m_ScaladoCamera:Lcom/scalado/camera/FeatureCamera;

.field private m_SceneController:Lcom/android/camera/effect/SceneController;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/camera/DCFInfo;

    const-string v1, "PANOR"

    const-string v2, "IMAG"

    const-string v3, "panorama_dir_counter"

    const-string v4, "panorama_file_counter"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/DCFInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/component/PanoramaController;->m_PanoramaDCFInfo:Lcom/android/camera/DCFInfo;

    sget-object v0, Lcom/android/camera/component/PanoramaController;->m_PanoramaDCFInfo:Lcom/android/camera/DCFInfo;

    invoke-static {v0}, Lcom/android/camera/DCFRuler;->registerDCFInfo(Lcom/android/camera/DCFInfo;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    const-string v2, "Panorama Controller"

    invoke-direct {p0, v2, v0, p1}, Lcom/android/camera/component/AsyncCameraThreadComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/CameraThread;)V

    const/4 v2, 0x3

    iput v2, p0, Lcom/android/camera/component/PanoramaController;->m_CaptureCount:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/camera/component/PanoramaController;->m_CaptureTimerStartTime:J

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p0, Lcom/android/camera/component/PanoramaController;->m_ExifTags:Ljava/util/Hashtable;

    iput v1, p0, Lcom/android/camera/component/PanoramaController;->m_Direction:I

    new-instance v2, Lcom/android/camera/component/PanoramaController$1;

    invoke-direct {v2, p0}, Lcom/android/camera/component/PanoramaController$1;-><init>(Lcom/android/camera/component/PanoramaController;)V

    iput-object v2, p0, Lcom/android/camera/component/PanoramaController;->m_CloseCameraEventHandler:Lcom/android/camera/IEventHandler;

    new-instance v2, Lcom/android/camera/component/PanoramaController$2;

    invoke-direct {v2, p0}, Lcom/android/camera/component/PanoramaController$2;-><init>(Lcom/android/camera/component/PanoramaController;)V

    iput-object v2, p0, Lcom/android/camera/component/PanoramaController;->m_DeletionEventHandler:Lcom/android/camera/IEventHandler;

    new-instance v2, Lcom/android/camera/component/PanoramaController$3;

    invoke-direct {v2, p0}, Lcom/android/camera/component/PanoramaController$3;-><init>(Lcom/android/camera/component/PanoramaController;)V

    iput-object v2, p0, Lcom/android/camera/component/PanoramaController;->m_AutoramaListener:Lcom/scalado/camera/autorama/Autorama$AutoramaListener;

    invoke-static {}, Lcom/android/camera/component/PanoramaController;->getPanoramaType()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/component/PanoramaController;->m_IsSweepPanorama:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/camera/component/PanoramaController;)Lcom/scalado/camera/FeatureCamera;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_ScaladoCamera:Lcom/scalado/camera/FeatureCamera;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/camera/component/PanoramaController;Lcom/scalado/camera/FeatureCamera;)Lcom/scalado/camera/FeatureCamera;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/PanoramaController;->m_ScaladoCamera:Lcom/scalado/camera/FeatureCamera;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/component/PanoramaController;ZZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/component/PanoramaController;->stopAutorama(ZZZ)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/camera/component/PanoramaController;)Lcom/scalado/camera/autorama/Autorama;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_Autorama:Lcom/scalado/camera/autorama/Autorama;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/component/PanoramaController;)F
    .locals 1

    iget v0, p0, Lcom/android/camera/component/PanoramaController;->m_PreviousDeltaX:F

    return v0
.end method

.method static synthetic access$1302(Lcom/android/camera/component/PanoramaController;F)F
    .locals 0

    iput p1, p0, Lcom/android/camera/component/PanoramaController;->m_PreviousDeltaX:F

    return p1
.end method

.method static synthetic access$1400(Lcom/android/camera/component/PanoramaController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaController;->m_IsSweepPanorama:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/camera/component/PanoramaController;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/component/PanoramaController;->m_Direction:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/camera/component/PanoramaController;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/component/PanoramaController;->m_Direction:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/camera/component/PanoramaController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaController;->m_IsCapturingFrame:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/camera/component/PanoramaController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/component/PanoramaController;->m_IsCapturingFrame:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/camera/component/PanoramaController;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/component/PanoramaController;->m_CaptureTimerStartTime:J

    return-wide v0
.end method

.method static synthetic access$1702(Lcom/android/camera/component/PanoramaController;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/camera/component/PanoramaController;->m_CaptureTimerStartTime:J

    return-wide p1
.end method

.method static synthetic access$1800(Lcom/android/camera/component/PanoramaController;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/component/PanoramaController;->m_CurrentCaptureIndex:I

    return v0
.end method

.method static synthetic access$1804(Lcom/android/camera/component/PanoramaController;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/component/PanoramaController;->m_CurrentCaptureIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/component/PanoramaController;->m_CurrentCaptureIndex:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/component/PanoramaController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaController;->m_IsEntered:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/camera/component/PanoramaController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaController;->m_IsLastFrame:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/android/camera/component/PanoramaController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/component/PanoramaController;->m_IsLastFrame:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/camera/component/PanoramaController;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/component/PanoramaController;->m_CaptureCount:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/camera/component/PanoramaController;)Ljava/util/Hashtable;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_ExifTags:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/camera/component/PanoramaController;Lcom/scalado/base/Buffer;)Lcom/scalado/caps/codec/decoder/JpegDecoder;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/camera/component/PanoramaController;->createJpegDecoder(Lcom/scalado/base/Buffer;)Lcom/scalado/caps/codec/decoder/JpegDecoder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/camera/component/PanoramaController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaController;->m_IsCanceling:Z

    return v0
.end method

.method static synthetic access$3102(Lcom/android/camera/component/PanoramaController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/component/PanoramaController;->m_IsCanceling:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/android/camera/component/PanoramaController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaController;->m_IsStitching:Z

    return v0
.end method

.method static synthetic access$3202(Lcom/android/camera/component/PanoramaController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/component/PanoramaController;->m_IsStitching:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/android/camera/component/PanoramaController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/PanoramaController;->stopPreview()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/component/PanoramaUI;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/camera/component/PanoramaController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/PanoramaController;->clearScaladoResources()V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/camera/component/PanoramaController;Lcom/scalado/stream/Stream;)Lcom/scalado/caps/codec/decoder/JpegDecoder;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/camera/component/PanoramaController;->createJpegDecoder(Lcom/scalado/stream/Stream;)Lcom/scalado/caps/codec/decoder/JpegDecoder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/camera/component/PanoramaController;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/camera/component/PanoramaController;->createReviewImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/component/PanoramaController;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_LatestContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/camera/component/PanoramaController;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/PanoramaController;->m_LatestContentUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900()Lcom/android/camera/DCFInfo;
    .locals 1

    sget-object v0, Lcom/android/camera/component/PanoramaController;->m_PanoramaDCFInfo:Lcom/android/camera/DCFInfo;

    return-object v0
.end method

.method private clearScaladoResources()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "clearScaladoResources()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/camera/component/PanoramaController;->m_Autorama:Lcom/scalado/camera/autorama/Autorama;

    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_ScaladoCamera:Lcom/scalado/camera/FeatureCamera;

    invoke-interface {v0, v2}, Lcom/scalado/camera/FeatureCamera;->setFeature(Lcom/scalado/camera/Feature;)V

    return-void
.end method

.method private createJpegDecoder(Lcom/scalado/base/Buffer;)Lcom/scalado/caps/codec/decoder/JpegDecoder;
    .locals 3

    :try_start_0
    new-instance v1, Lcom/scalado/stream/BufferStream;

    invoke-virtual {p1}, Lcom/scalado/base/Buffer;->getSize()I

    move-result v2

    invoke-direct {v1, p1, v2}, Lcom/scalado/stream/BufferStream;-><init>(Lcom/scalado/base/Buffer;I)V

    invoke-direct {p0, v1}, Lcom/android/camera/component/PanoramaController;->createJpegDecoder(Lcom/scalado/stream/Stream;)Lcom/scalado/caps/codec/decoder/JpegDecoder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "Cannot create JPEG decoder"

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private createJpegDecoder(Lcom/scalado/stream/Stream;)Lcom/scalado/caps/codec/decoder/JpegDecoder;
    .locals 4

    :try_start_0
    invoke-static {p1}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->create(Lcom/scalado/stream/Stream;)Lcom/scalado/base/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/scalado/base/Iterator;->step(I)F

    invoke-virtual {v1}, Lcom/scalado/base/Iterator;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scalado/caps/codec/decoder/JpegDecoder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "Cannot create JPEG decoder"

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private createPreview()V
    .locals 12

    const/4 v3, 0x0

    iget-object v11, p0, Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;

    if-eqz v11, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaController;->m_IsCapturing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/camera/component/PanoramaController;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_PreviewThumbnailImage:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    :try_start_0
    invoke-virtual {v11}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v0, 0x7f0b0067

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    const v0, 0x7f0b0068

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iget v0, p0, Lcom/android/camera/component/PanoramaController;->m_CaptureCount:I

    mul-int/2addr v0, v10

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v9, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_PreviewThumbnailImage:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_Autorama:Lcom/scalado/camera/autorama/Autorama;

    if-eqz v0, :cond_3

    :try_start_1
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_Autorama:Lcom/scalado/camera/autorama/Autorama;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/scalado/camera/autorama/Autorama;->getLowResolutionPanorama(Z)Lcom/scalado/caps/Session;

    move-result-object v8

    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_PreviewThumbnailImage:Landroid/graphics/Bitmap;

    const/16 v1, 0x5a

    invoke-static {v8, v0, v1}, Lcom/android/camera/ImageUtility;->convertToBitmap(Lcom/scalado/caps/Session;Landroid/graphics/Bitmap;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    const/4 v2, 0x6

    iget-object v5, p0, Lcom/android/camera/component/PanoramaController;->m_PreviewThumbnailImage:Landroid/graphics/Bitmap;

    move-object v0, p0

    move-object v1, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/PanoramaController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v6

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Exception occurred while creating preview image buffer"

    invoke-static {v0, v1, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v6

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Exception occurred while creating preview image"

    invoke-static {v0, v1, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "No Autorama object to create preview"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private createReviewImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Lcom/scalado/stream/FileStream;

    sget-object v8, Lcom/scalado/stream/FileStream$Access;->READ:Lcom/scalado/stream/FileStream$Access;

    invoke-direct {v4, p1, v8}, Lcom/scalado/stream/FileStream;-><init>(Ljava/lang/String;Lcom/scalado/stream/FileStream$Access;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-direct {p0, v4}, Lcom/android/camera/component/PanoramaController;->createJpegDecoder(Lcom/scalado/stream/Stream;)Lcom/scalado/caps/codec/decoder/JpegDecoder;

    move-result-object v1

    new-instance v7, Lcom/scalado/caps/Session;

    invoke-direct {v7, v1}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->isUILandscape()Z

    move-result v8

    if-eqz v8, :cond_2

    sget v6, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    sget v5, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    :goto_0
    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v5, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v7, v0, v8, v9}, Lcom/android/camera/ImageUtility;->convertToBitmap(Lcom/scalado/caps/Session;Landroid/graphics/Bitmap;IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4

    if-eqz v4, :cond_0

    :try_start_2
    invoke-virtual {v4}, Lcom/scalado/stream/FileStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :goto_1
    move-object v3, v4

    :cond_1
    :goto_2
    return-object v0

    :cond_2
    :try_start_3
    sget v6, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    sget v5, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_3
    :try_start_4
    iget-object v8, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v9, "Cannot create review image"

    invoke-static {v8, v9, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v0, 0x0

    if-eqz v3, :cond_1

    :try_start_5
    invoke-virtual {v3}, Lcom/scalado/stream/FileStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception v8

    goto :goto_2

    :catchall_0
    move-exception v8

    :goto_4
    if-eqz v3, :cond_3

    :try_start_6
    invoke-virtual {v3}, Lcom/scalado/stream/FileStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_3
    :goto_5
    throw v8

    :catch_2
    move-exception v9

    goto :goto_5

    :catch_3
    move-exception v8

    goto :goto_1

    :catchall_1
    move-exception v8

    move-object v3, v4

    goto :goto_4

    :catch_4
    move-exception v2

    move-object v3, v4

    goto :goto_3
.end method

.method public static getPanoramaType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isCameraTypeSupported(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNonLandscapeSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static final isSupported(Lcom/android/camera/HTCCamera;)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x95

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x96

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x97

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xdc

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xab

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xac

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x7d

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xa9

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xaa

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x61

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eqz v1, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xe0

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x7c

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x94

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isZoomingSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private linkToOtherControllers()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getComponentManager()Lcom/android/camera/component/ComponentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/component/PanoramaController;->m_ColorEffectController:Lcom/android/camera/effect/ColorEffectController;

    if-nez v1, :cond_0

    const-string v1, "Color Effect Controller"

    invoke-virtual {v0, v1}, Lcom/android/camera/component/ComponentManager;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/ColorEffectController;

    iput-object v1, p0, Lcom/android/camera/component/PanoramaController;->m_ColorEffectController:Lcom/android/camera/effect/ColorEffectController;

    :cond_0
    iget-object v1, p0, Lcom/android/camera/component/PanoramaController;->m_GpuEffectController:Lcom/android/camera/effect/GpuEffectController;

    if-nez v1, :cond_1

    const-string v1, "GPU Effect Controller"

    invoke-virtual {v0, v1}, Lcom/android/camera/component/ComponentManager;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/GpuEffectController;

    iput-object v1, p0, Lcom/android/camera/component/PanoramaController;->m_GpuEffectController:Lcom/android/camera/effect/GpuEffectController;

    :cond_1
    iget-object v1, p0, Lcom/android/camera/component/PanoramaController;->m_SceneController:Lcom/android/camera/effect/SceneController;

    if-nez v1, :cond_2

    const-string v1, "Scene Controller"

    invoke-virtual {v0, v1}, Lcom/android/camera/component/ComponentManager;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/SceneController;

    iput-object v1, p0, Lcom/android/camera/component/PanoramaController;->m_SceneController:Lcom/android/camera/effect/SceneController;

    :cond_2
    return-void
.end method

.method private onCancelCapture()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaController;->m_IsCapturing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaController;->m_IsCanceling:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaController;->m_IsStitching:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v2, p0, Lcom/android/camera/component/PanoramaController;->m_IsCanceling:Z

    invoke-direct {p0, v2, v1, v1}, Lcom/android/camera/component/PanoramaController;->stopAutorama(ZZZ)V

    goto :goto_0
.end method

.method private onEnterPanoramaMode()V
    .locals 3

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/component/PanoramaController;->m_IsEntered:Z

    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->isTakingPicture()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraThread;->setCaptureHandler(Lcom/android/camera/ICaptureHandler;)V

    invoke-direct {p0}, Lcom/android/camera/component/PanoramaController;->linkToOtherControllers()V

    iget-object v1, p0, Lcom/android/camera/component/PanoramaController;->m_ColorEffectController:Lcom/android/camera/effect/ColorEffectController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/PanoramaController;->m_ColorEffectController:Lcom/android/camera/effect/ColorEffectController;

    const-string v2, "none"

    invoke-virtual {v1, v2}, Lcom/android/camera/effect/ColorEffectController;->setColorEffect(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/camera/component/PanoramaController;->m_GpuEffectController:Lcom/android/camera/effect/GpuEffectController;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/component/PanoramaController;->m_GpuEffectController:Lcom/android/camera/effect/GpuEffectController;

    invoke-virtual {v1}, Lcom/android/camera/effect/GpuEffectController;->clearEffect()V

    :cond_1
    iget-object v1, p0, Lcom/android/camera/component/PanoramaController;->m_SceneController:Lcom/android/camera/effect/SceneController;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/component/PanoramaController;->m_SceneController:Lcom/android/camera/effect/SceneController;

    const-string v2, "auto"

    invoke-virtual {v1, v2}, Lcom/android/camera/effect/SceneController;->setScene(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private onExitPanoramaMode()V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->isTakingPicture()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v4}, Lcom/android/camera/CameraThread;->setCaptureHandler(Lcom/android/camera/ICaptureHandler;)V

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getCamera()Landroid/hardware/Camera;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/component/PanoramaController;->m_CameraUsed:Landroid/hardware/Camera;

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "panorama-mode"

    const-string v3, "not-in-progress"

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "capture-mode"

    const-string v3, "burst"

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    :cond_0
    iput-object v4, p0, Lcom/android/camera/component/PanoramaController;->m_CameraUsed:Landroid/hardware/Camera;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/component/PanoramaController;->m_IsEntered:Z

    return-void
.end method

.method private final stopAutorama(ZZZ)V
    .locals 7

    const/4 v6, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaController;->m_IsStitching:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v3, p0, Lcom/android/camera/component/PanoramaController;->m_IsCapturing:Z

    iput-boolean v6, p0, Lcom/android/camera/component/PanoramaController;->m_IsLastFrame:Z

    if-eqz p1, :cond_5

    iput-boolean v6, p0, Lcom/android/camera/component/PanoramaController;->m_IsStitching:Z

    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaController;->m_IsSweepPanorama:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_Autorama:Lcom/scalado/camera/autorama/Autorama;

    invoke-virtual {v0}, Lcom/scalado/camera/autorama/Autorama;->getDirection()Lcom/scalado/caps/autorama/Direction;

    move-result-object v0

    sget-object v1, Lcom/scalado/caps/autorama/Direction;->UNKNOWN:Lcom/scalado/caps/autorama/Direction;

    if-eq v0, v1, :cond_3

    :goto_1
    if-nez p2, :cond_2

    if-nez v6, :cond_2

    const/4 p2, 0x1

    :cond_2
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_Autorama:Lcom/scalado/camera/autorama/Autorama;

    invoke-virtual {v0, v6}, Lcom/scalado/camera/autorama/Autorama;->stop(Z)V

    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;

    const/16 v2, 0x9

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/PanoramaController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    :goto_2
    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/android/camera/component/PanoramaController;->stopPreview()V

    goto :goto_0

    :cond_3
    move v6, v3

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "No UI to notify STITCH_STARTED"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_Autorama:Lcom/scalado/camera/autorama/Autorama;

    invoke-virtual {v0}, Lcom/scalado/camera/autorama/Autorama;->abort()V

    invoke-direct {p0}, Lcom/android/camera/component/PanoramaController;->clearScaladoResources()V

    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->interruptCapture()V

    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;

    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/component/PanoramaController;->sendMessage(Lcom/android/camera/component/Component;I)Z

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "No UI to notify ABORTED"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private stopPreview()V
    .locals 3

    iget-boolean v1, p0, Lcom/android/camera/component/PanoramaController;->m_IsSweepPanorama:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "Cannot stop preview because there is no camera"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;

    invoke-super {p0}, Lcom/android/camera/component/AsyncCameraThreadComponent;->deinitializeOverride()V

    return-void
.end method

.method protected handleAsyncMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/camera/component/AsyncCameraThreadComponent;->handleAsyncMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaController;->createPreview()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 8

    const/4 v3, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/camera/component/AsyncCameraThreadComponent;->handleMessage(Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaController;->onCancelCapture()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaController;->onEnterPanoramaMode()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaController;->onExitPanoramaMode()V

    goto :goto_0

    :pswitch_4
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/scalado/base/Image;

    invoke-static {v7}, Lcom/android/camera/ImageUtility;->convertToBitmap(Lcom/scalado/base/Image;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/camera/CameraThread;->createPostViewImage(Landroid/graphics/Bitmap;)V

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaController;->m_IsCapturing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/camera/component/PanoramaController;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;

    const/4 v2, 0x7

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/PanoramaController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 3

    invoke-super {p0}, Lcom/android/camera/component/AsyncCameraThreadComponent;->initializeOverride()V

    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v0

    const-string v1, "Request.CloseCamera"

    iget-object v2, p0, Lcom/android/camera/component/PanoramaController;->m_CloseCameraEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v1, "Request.DeleteLatestMedia"

    iget-object v2, p0, Lcom/android/camera/component/PanoramaController;->m_DeletionEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    return-void
.end method

.method link(Lcom/android/camera/component/PanoramaUI;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaController;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    iput-object p1, p0, Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;

    :cond_0
    return-void
.end method

.method public takePicture(Lcom/android/camera/CameraThread;Landroid/hardware/Camera;)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "takePicture() - START"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/camera/component/PanoramaController;->m_IsSweepPanorama:Z

    if-eqz v3, :cond_0

    const-string v3, "capture-mode"

    const-string v4, "panorama"

    invoke-virtual {v15, v3, v4}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v3, "panorama-mode"

    const-string v4, "in-progress"

    invoke-virtual {v15, v3, v4}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v15, v3}, Lcom/android/camera/CameraController;->setRotation(I)V

    invoke-virtual {v15}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/component/PanoramaController;->m_CameraUsed:Landroid/hardware/Camera;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController;->m_ScaladoCamera:Lcom/scalado/camera/FeatureCamera;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController;->m_ScaladoCamera:Lcom/scalado/camera/FeatureCamera;

    invoke-interface {v3}, Lcom/scalado/camera/FeatureCamera;->getAndroidCamera()Landroid/hardware/Camera;

    move-result-object v3

    move-object/from16 v0, p2

    if-eq v3, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "Release old Scalado camera"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/component/PanoramaController;->m_ScaladoCamera:Lcom/scalado/camera/FeatureCamera;

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController;->m_ScaladoCamera:Lcom/scalado/camera/FeatureCamera;

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "Create new Scalado camera"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Lcom/scalado/camera/FeatureCameraFactory;->open(Landroid/hardware/Camera;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/component/PanoramaController;->m_ScaladoCamera:Lcom/scalado/camera/FeatureCamera;

    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "create Lens object ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    iget v5, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    iget v5, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;

    invoke-virtual {v3}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    const-string v4, "pref_camera_image_ratio"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v2, Lcom/scalado/caps/autorama/Lens;

    const/high16 v3, 0x44f5

    const/high16 v4, 0x44f5

    const/high16 v5, 0x4480

    const/high16 v6, 0x4410

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x800

    const/16 v14, 0x480

    invoke-direct/range {v2 .. v14}, Lcom/scalado/caps/autorama/Lens;-><init>(FFFFFFFFFFII)V

    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "create Autorama object"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/scalado/camera/autorama/Autorama;

    invoke-direct {v3, v2}, Lcom/scalado/camera/autorama/Autorama;-><init>(Lcom/scalado/caps/autorama/Lens;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/component/PanoramaController;->m_Autorama:Lcom/scalado/camera/autorama/Autorama;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController;->m_Autorama:Lcom/scalado/camera/autorama/Autorama;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/component/PanoramaController;->m_AutoramaListener:Lcom/scalado/camera/autorama/Autorama$AutoramaListener;

    invoke-virtual {v3, v4}, Lcom/scalado/camera/autorama/Autorama;->setListener(Lcom/scalado/camera/autorama/Autorama$AutoramaListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController;->m_Autorama:Lcom/scalado/camera/autorama/Autorama;

    invoke-virtual {v3}, Lcom/scalado/camera/autorama/Autorama;->getOptions()Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;

    move-result-object v16

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/component/PanoramaController;->m_CaptureCount:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->setNumberOfImages(I)V

    const/16 v3, 0x3c

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->setOverlap(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController;->m_ScaladoCamera:Lcom/scalado/camera/FeatureCamera;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/component/PanoramaController;->m_Autorama:Lcom/scalado/camera/autorama/Autorama;

    invoke-interface {v3, v4}, Lcom/scalado/camera/FeatureCamera;->setFeature(Lcom/scalado/camera/Feature;)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/camera/component/PanoramaController;->m_CurrentCaptureIndex:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/component/PanoramaController;->m_LatestContentUri:Landroid/net/Uri;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/camera/component/PanoramaController;->m_Direction:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/camera/component/PanoramaController;->m_IsLastFrame:Z

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/camera/component/PanoramaController;->m_PreviousDeltaX:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController;->m_ExifTags:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->clear()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "start taking picture"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/component/PanoramaController;->m_ScaladoCamera:Lcom/scalado/camera/FeatureCamera;

    new-instance v4, Lcom/android/camera/component/PanoramaController$4;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/camera/component/PanoramaController$4;-><init>(Lcom/android/camera/component/PanoramaController;)V

    new-instance v5, Lcom/android/camera/component/PanoramaController$5;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/camera/component/PanoramaController$5;-><init>(Lcom/android/camera/component/PanoramaController;)V

    new-instance v6, Lcom/android/camera/component/PanoramaController$6;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v6, v0, v1, v15}, Lcom/android/camera/component/PanoramaController$6;-><init>(Lcom/android/camera/component/PanoramaController;Lcom/android/camera/CameraThread;Lcom/android/camera/CameraController;)V

    invoke-interface {v3, v4, v5, v6}, Lcom/scalado/camera/FeatureCamera;->takePicture(Lcom/scalado/camera/Camera$ShutterCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;)V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/camera/component/PanoramaController;->m_IsCapturing:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "takePicture() - END"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    new-instance v2, Lcom/scalado/caps/autorama/Lens;

    const v3, 0x44f44000

    const v4, 0x44f5c000

    const/high16 v5, 0x447b

    const/high16 v6, 0x4446

    const/4 v7, 0x0

    const v8, 0x3e051eb8

    const v9, -0x41c7ae14

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x800

    const/16 v14, 0x600

    invoke-direct/range {v2 .. v14}, Lcom/scalado/caps/autorama/Lens;-><init>(FFFFFFFFFFII)V

    goto/16 :goto_0
.end method
