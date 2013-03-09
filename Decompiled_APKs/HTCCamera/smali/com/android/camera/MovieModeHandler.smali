.class final Lcom/android/camera/MovieModeHandler;
.super Lcom/android/camera/ModeHandler;
.source "MovieModeHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MovieModeHandler"

.field private static mResolutionSet_2nd:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/camera/Resolution;",
            ">;"
        }
    .end annotation
.end field

.field private static mResolutionSet_3D:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/camera/Resolution;",
            ">;"
        }
    .end annotation
.end field

.field private static mResolutionSet_Main:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/camera/Resolution;",
            ">;"
        }
    .end annotation
.end field

.field private static mSingleton:Lcom/android/camera/MovieModeHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_2nd:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_3D:Ljava/util/LinkedList;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/camera/MovieModeHandler;->mSingleton:Lcom/android/camera/MovieModeHandler;

    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DCamera()Z

    move-result v0

    if-ne v0, v2, :cond_0

    sget-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_3D:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_720P_3D:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSecondCamera()Z

    move-result v0

    if-ne v0, v2, :cond_4

    sget-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/android/camera/DisplayDevice$Resolution;

    sget-object v1, Lcom/android/camera/DisplayDevice$Resolution;->QHD:Lcom/android/camera/DisplayDevice$Resolution;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSpecific2ndCamera()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_2nd:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_QHD:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {}, Lcom/android/camera/DisplayDevice;->apply720PPreview()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/camera/DisplayDevice;->support720p2ndCam()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    sget-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_2nd:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_720p:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_3
    sget-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_2nd:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_VGA:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_2nd:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_QVGA:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportMMSVedioRecording()Z

    move-result v0

    if-ne v0, v2, :cond_4

    sget-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_2nd:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_QCIF:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportQCT8x50()Z

    move-result v0

    if-eq v0, v2, :cond_5

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportQCT7x30()Z

    move-result v0

    if-ne v0, v2, :cond_a

    :cond_5
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support1080p()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_1080p:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_6
    sget-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_720p:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/android/camera/DisplayDevice$Resolution;

    sget-object v1, Lcom/android/camera/DisplayDevice$Resolution;->QHD:Lcom/android/camera/DisplayDevice$Resolution;

    if-ne v0, v1, :cond_7

    sget-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_QHD:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_7
    sget-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/android/camera/DisplayDevice$Resolution;

    sget-object v1, Lcom/android/camera/DisplayDevice$Resolution;->WVGA:Lcom/android/camera/DisplayDevice$Resolution;

    if-ne v0, v1, :cond_8

    sget-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_WVGA:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_8
    sget-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_VGA:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_QVGA:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportMMSVedioRecording()Z

    move-result v0

    if-ne v0, v2, :cond_9

    sget-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_QCIF:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_0
    return-void

    :cond_a
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportQCT8x60()Z

    move-result v0

    if-ne v0, v2, :cond_e

    sget-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/android/camera/DisplayDevice$Resolution;

    sget-object v1, Lcom/android/camera/DisplayDevice$Resolution;->QHD:Lcom/android/camera/DisplayDevice$Resolution;

    if-ne v0, v1, :cond_b

    sget-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_QHD:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_b
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSharpSensor()Z

    move-result v0

    if-eq v0, v2, :cond_c

    sget-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_1080p:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_c
    sget-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/android/camera/DisplayDevice$Resolution;

    sget-object v1, Lcom/android/camera/DisplayDevice$Resolution;->WVGA:Lcom/android/camera/DisplayDevice$Resolution;

    if-ne v0, v1, :cond_d

    sget-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_WVGA:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_d
    sget-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_720p:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_VGA:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_QVGA:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportMMSVedioRecording()Z

    move-result v0

    if-ne v0, v2, :cond_9

    sget-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_QCIF:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_e
    sget-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/android/camera/DisplayDevice$Resolution;

    sget-object v1, Lcom/android/camera/DisplayDevice$Resolution;->HVGA:Lcom/android/camera/DisplayDevice$Resolution;

    if-ne v0, v1, :cond_f

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportHVGARecording()Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_HVGA:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_f
    sget-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_VGA:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_QVGA:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportMMSVedioRecording()Z

    move-result v0

    if-ne v0, v2, :cond_9

    sget-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_QCIF:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ModeHandler;-><init>()V

    return-void
.end method

.method static getMovieModeHandler()Lcom/android/camera/MovieModeHandler;
    .locals 1

    sget-object v0, Lcom/android/camera/MovieModeHandler;->mSingleton:Lcom/android/camera/MovieModeHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/MovieModeHandler;

    invoke-direct {v0}, Lcom/android/camera/MovieModeHandler;-><init>()V

    sput-object v0, Lcom/android/camera/MovieModeHandler;->mSingleton:Lcom/android/camera/MovieModeHandler;

    :cond_0
    sget-object v0, Lcom/android/camera/MovieModeHandler;->mSingleton:Lcom/android/camera/MovieModeHandler;

    return-object v0
.end method


# virtual methods
.method public IsLockMMSVideoInLandscape(Lcom/android/camera/HTCCamera;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/camera/MovieModeHandler;->getCurrentResolutionSettingValue(Lcom/android/camera/HTCCamera;)Lcom/android/camera/Resolution;

    move-result-object v0

    sget-object v1, Lcom/android/camera/Resolution;->Video_QCIF:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/camera/IntentManager$RequestName;->Mms:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p1, v1}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCurrentResolutionSettingValue(Lcom/android/camera/HTCCamera;)Lcom/android/camera/Resolution;
    .locals 5

    const/4 v4, 0x1

    sget-object v2, Lcom/android/camera/IntentManager$RequestName;->Mms:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p1, v2}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v2

    if-ne v2, v4, :cond_2

    sget-object v2, Lcom/android/camera/DisplayDevice;->CUSTOM_MMS:Lcom/android/camera/DisplayDevice$CustomMMS;

    sget-object v3, Lcom/android/camera/DisplayDevice$CustomMMS;->Verizon:Lcom/android/camera/DisplayDevice$CustomMMS;

    if-ne v2, v3, :cond_1

    invoke-static {}, Lcom/android/camera/IntentManager;->getMMS_isVideoQVGA()Z

    move-result v2

    if-ne v2, v4, :cond_0

    const-string v2, "MovieModeHandler"

    const-string v3, "Mms custom request - QVGA"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/camera/Resolution;->Video_QVGA_Service:Lcom/android/camera/Resolution;

    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/camera/Resolution;->getResolution(Landroid/content/Context;Ljava/lang/String;)Lcom/android/camera/Resolution;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const-string v2, "MovieModeHandler"

    const-string v3, "Mms custom request - QCIF"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/camera/Resolution;->Video_QCIF_Service:Lcom/android/camera/Resolution;

    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/camera/Resolution;->getResolution(Landroid/content/Context;Ljava/lang/String;)Lcom/android/camera/Resolution;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v2, "MovieModeHandler"

    const-string v3, "Mms request - resolution setting is QCIF"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/camera/Resolution;->Video_QCIF_Service:Lcom/android/camera/Resolution;

    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/camera/Resolution;->getResolution(Landroid/content/Context;Ljava/lang/String;)Lcom/android/camera/Resolution;

    move-result-object v2

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/android/camera/IntentManager$RequestName;->CU:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p1, v2}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v2

    if-ne v2, v4, :cond_3

    const-string v2, "MovieModeHandler"

    const-string v3, "CU request - resolution setting is QCIF"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/camera/Resolution;->Video_QCIF_Service:Lcom/android/camera/Resolution;

    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/camera/Resolution;->getResolution(Landroid/content/Context;Ljava/lang/String;)Lcom/android/camera/Resolution;

    move-result-object v2

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/android/camera/IntentManager$RequestName;->Notes:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p1, v2}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v2

    if-ne v2, v4, :cond_6

    invoke-virtual {p1}, Lcom/android/camera/HTCCamera;->RequestVideoQualityLevel()I

    move-result v2

    if-ne v2, v4, :cond_5

    invoke-static {}, Lcom/android/camera/DisplayDevice;->support720p()Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/camera/Resolution;->Video_720p:Lcom/android/camera/Resolution;

    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/camera/Resolution;->getResolution(Landroid/content/Context;Ljava/lang/String;)Lcom/android/camera/Resolution;

    move-result-object v2

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/android/camera/Resolution;->Video_VGA:Lcom/android/camera/Resolution;

    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/camera/Resolution;->getResolution(Landroid/content/Context;Ljava/lang/String;)Lcom/android/camera/Resolution;

    move-result-object v2

    goto :goto_0

    :cond_5
    sget-object v2, Lcom/android/camera/Resolution;->Video_QCIF_Service:Lcom/android/camera/Resolution;

    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/camera/Resolution;->getResolution(Landroid/content/Context;Ljava/lang/String;)Lcom/android/camera/Resolution;

    move-result-object v2

    goto :goto_0

    :cond_6
    sget-object v2, Lcom/android/camera/IntentManager$RequestName;->Unknown_Service:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p1, v2}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v2

    if-ne v2, v4, :cond_b

    invoke-static {}, Lcom/android/camera/IntentManager;->hasVideoQuality()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {p1}, Lcom/android/camera/HTCCamera;->RequestVideoQualityLevel()I

    move-result v2

    if-ne v2, v4, :cond_a

    sget-object v2, Lcom/android/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/android/camera/DisplayDevice$Resolution;

    sget-object v3, Lcom/android/camera/DisplayDevice$Resolution;->QHD:Lcom/android/camera/DisplayDevice$Resolution;

    if-eq v2, v3, :cond_7

    sget-object v2, Lcom/android/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/android/camera/DisplayDevice$Resolution;

    sget-object v3, Lcom/android/camera/DisplayDevice$Resolution;->HD:Lcom/android/camera/DisplayDevice$Resolution;

    if-ne v2, v3, :cond_8

    :cond_7
    sget-object v2, Lcom/android/camera/Resolution;->Video_QHD:Lcom/android/camera/Resolution;

    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/camera/Resolution;->getResolution(Landroid/content/Context;Ljava/lang/String;)Lcom/android/camera/Resolution;

    move-result-object v2

    goto/16 :goto_0

    :cond_8
    sget-object v2, Lcom/android/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/android/camera/DisplayDevice$Resolution;

    sget-object v3, Lcom/android/camera/DisplayDevice$Resolution;->WVGA:Lcom/android/camera/DisplayDevice$Resolution;

    if-ne v2, v3, :cond_9

    sget-object v2, Lcom/android/camera/Resolution;->Video_WVGA:Lcom/android/camera/Resolution;

    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/camera/Resolution;->getResolution(Landroid/content/Context;Ljava/lang/String;)Lcom/android/camera/Resolution;

    move-result-object v2

    goto/16 :goto_0

    :cond_9
    sget-object v2, Lcom/android/camera/Resolution;->Video_VGA:Lcom/android/camera/Resolution;

    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/camera/Resolution;->getResolution(Landroid/content/Context;Ljava/lang/String;)Lcom/android/camera/Resolution;

    move-result-object v2

    goto/16 :goto_0

    :cond_a
    sget-object v2, Lcom/android/camera/Resolution;->Video_QCIF_Service:Lcom/android/camera/Resolution;

    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/camera/Resolution;->getResolution(Landroid/content/Context;Ljava/lang/String;)Lcom/android/camera/Resolution;

    move-result-object v2

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/camera/MovieModeHandler;->getResolutionSettingString(Lcom/android/camera/HTCCamera;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_c
    const-string v2, "pref_capture_resolution_video_2nd"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDefaultQuality720p()Z

    move-result v2

    if-eqz v2, :cond_e

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xa9

    if-eq v2, v3, :cond_e

    sget-object v2, Lcom/android/camera/Resolution;->Video_720p:Lcom/android/camera/Resolution;

    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {p1, v0, v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_d
    invoke-static {p1, v1}, Lcom/android/camera/Resolution;->getResolution(Landroid/content/Context;Ljava/lang/String;)Lcom/android/camera/Resolution;

    move-result-object v2

    goto/16 :goto_0

    :cond_e
    sget-object v2, Lcom/android/camera/Resolution;->Video_VGA:Lcom/android/camera/Resolution;

    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_f
    const-string v2, "pref_capture_resolution_video_3D"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    sget-object v2, Lcom/android/camera/Resolution;->Video_720P_3D:Lcom/android/camera/Resolution;

    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_10
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDefaultQuality1080pMainCam()Z

    move-result v2

    if-eqz v2, :cond_11

    sget-object v2, Lcom/android/camera/Resolution;->Video_1080p:Lcom/android/camera/Resolution;

    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_11
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDefaultQuality720p()Z

    move-result v2

    if-eqz v2, :cond_12

    sget-object v2, Lcom/android/camera/Resolution;->Video_720p:Lcom/android/camera/Resolution;

    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_12
    sget-object v2, Lcom/android/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/android/camera/DisplayDevice$Resolution;

    sget-object v3, Lcom/android/camera/DisplayDevice$Resolution;->WVGA:Lcom/android/camera/DisplayDevice$Resolution;

    if-ne v2, v3, :cond_13

    sget-object v2, Lcom/android/camera/Resolution;->Video_WVGA:Lcom/android/camera/Resolution;

    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_13
    sget-object v2, Lcom/android/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/android/camera/DisplayDevice$Resolution;

    sget-object v3, Lcom/android/camera/DisplayDevice$Resolution;->QHD:Lcom/android/camera/DisplayDevice$Resolution;

    if-ne v2, v3, :cond_14

    sget-object v2, Lcom/android/camera/Resolution;->Video_QHD:Lcom/android/camera/Resolution;

    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_14
    sget-object v2, Lcom/android/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/android/camera/DisplayDevice$Resolution;

    sget-object v3, Lcom/android/camera/DisplayDevice$Resolution;->HVGA:Lcom/android/camera/DisplayDevice$Resolution;

    if-ne v2, v3, :cond_16

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportHVGARecording()Z

    move-result v2

    if-eqz v2, :cond_15

    sget-object v2, Lcom/android/camera/Resolution;->Video_HVGA:Lcom/android/camera/Resolution;

    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_15
    sget-object v2, Lcom/android/camera/Resolution;->Video_VGA:Lcom/android/camera/Resolution;

    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_16
    sget-object v2, Lcom/android/camera/Resolution;->Video_VGA:Lcom/android/camera/Resolution;

    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public getResolutionMenuItem(Lcom/android/camera/HTCCamera;)Ljava/util/LinkedList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/HTCCamera;",
            ")",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/camera/ResolutionMenuItem;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x1

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    sget-object v5, Lcom/android/camera/IntentManager$RequestName;->Mms:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p1, v5}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v5

    if-ne v5, v6, :cond_1

    const-string v5, "MovieModeHandler"

    const-string v6, "Mms request - resolution menu has only QCIF"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/android/camera/Resolution;->Video_QCIF_Service:Lcom/android/camera/Resolution;

    new-instance v5, Lcom/android/camera/ResolutionMenuItem;

    invoke-virtual {v4}, Lcom/android/camera/Resolution;->getResolutionDescription()I

    move-result v6

    invoke-direct {v5, v4, v6}, Lcom/android/camera/ResolutionMenuItem;-><init>(Lcom/android/camera/Resolution;I)V

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/android/camera/DisplayDevice;->CUSTOM_MMS:Lcom/android/camera/DisplayDevice$CustomMMS;

    sget-object v6, Lcom/android/camera/DisplayDevice$CustomMMS;->Verizon:Lcom/android/camera/DisplayDevice$CustomMMS;

    if-ne v5, v6, :cond_0

    sget-object v4, Lcom/android/camera/Resolution;->Video_QVGA_Service:Lcom/android/camera/Resolution;

    new-instance v5, Lcom/android/camera/ResolutionMenuItem;

    invoke-virtual {v4}, Lcom/android/camera/Resolution;->getResolutionDescription()I

    move-result v6

    invoke-direct {v5, v4, v6}, Lcom/android/camera/ResolutionMenuItem;-><init>(Lcom/android/camera/Resolution;I)V

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    sget-object v5, Lcom/android/camera/IntentManager$RequestName;->CU:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p1, v5}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v5

    if-ne v5, v6, :cond_2

    const-string v5, "MovieModeHandler"

    const-string v6, "CU request - resolution menu has only QCIF"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/android/camera/Resolution;->Video_QCIF_Service:Lcom/android/camera/Resolution;

    new-instance v5, Lcom/android/camera/ResolutionMenuItem;

    invoke-virtual {v4}, Lcom/android/camera/Resolution;->getResolutionDescription()I

    move-result v6

    invoke-direct {v5, v4, v6}, Lcom/android/camera/ResolutionMenuItem;-><init>(Lcom/android/camera/Resolution;I)V

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    sget-object v5, Lcom/android/camera/IntentManager$RequestName;->Notes:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p1, v5}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v5

    if-ne v5, v6, :cond_5

    invoke-virtual {p1}, Lcom/android/camera/HTCCamera;->RequestVideoQualityLevel()I

    move-result v5

    if-ne v5, v6, :cond_4

    invoke-static {}, Lcom/android/camera/DisplayDevice;->support720p()Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v4, Lcom/android/camera/Resolution;->Video_720p:Lcom/android/camera/Resolution;

    new-instance v5, Lcom/android/camera/ResolutionMenuItem;

    invoke-virtual {v4}, Lcom/android/camera/Resolution;->getResolutionDescription()I

    move-result v6

    invoke-direct {v5, v4, v6}, Lcom/android/camera/ResolutionMenuItem;-><init>(Lcom/android/camera/Resolution;I)V

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    sget-object v4, Lcom/android/camera/Resolution;->VGA:Lcom/android/camera/Resolution;

    new-instance v5, Lcom/android/camera/ResolutionMenuItem;

    invoke-virtual {v4}, Lcom/android/camera/Resolution;->getResolutionDescription()I

    move-result v6

    invoke-direct {v5, v4, v6}, Lcom/android/camera/ResolutionMenuItem;-><init>(Lcom/android/camera/Resolution;I)V

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    sget-object v4, Lcom/android/camera/Resolution;->Video_QCIF_Service:Lcom/android/camera/Resolution;

    new-instance v5, Lcom/android/camera/ResolutionMenuItem;

    invoke-virtual {v4}, Lcom/android/camera/Resolution;->getResolutionDescription()I

    move-result v6

    invoke-direct {v5, v4, v6}, Lcom/android/camera/ResolutionMenuItem;-><init>(Lcom/android/camera/Resolution;I)V

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    sget-object v5, Lcom/android/camera/IntentManager$RequestName;->Unknown_Service:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p1, v5}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v5

    if-ne v5, v6, :cond_a

    invoke-static {}, Lcom/android/camera/IntentManager;->hasVideoQuality()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {p1}, Lcom/android/camera/HTCCamera;->RequestVideoQualityLevel()I

    move-result v5

    if-ne v5, v6, :cond_9

    sget-object v5, Lcom/android/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/android/camera/DisplayDevice$Resolution;

    sget-object v6, Lcom/android/camera/DisplayDevice$Resolution;->QHD:Lcom/android/camera/DisplayDevice$Resolution;

    if-eq v5, v6, :cond_6

    sget-object v5, Lcom/android/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/android/camera/DisplayDevice$Resolution;

    sget-object v6, Lcom/android/camera/DisplayDevice$Resolution;->HD:Lcom/android/camera/DisplayDevice$Resolution;

    if-ne v5, v6, :cond_7

    :cond_6
    sget-object v4, Lcom/android/camera/Resolution;->Video_QHD:Lcom/android/camera/Resolution;

    new-instance v5, Lcom/android/camera/ResolutionMenuItem;

    invoke-virtual {v4}, Lcom/android/camera/Resolution;->getResolutionDescription()I

    move-result v6

    invoke-direct {v5, v4, v6}, Lcom/android/camera/ResolutionMenuItem;-><init>(Lcom/android/camera/Resolution;I)V

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    sget-object v5, Lcom/android/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/android/camera/DisplayDevice$Resolution;

    sget-object v6, Lcom/android/camera/DisplayDevice$Resolution;->WVGA:Lcom/android/camera/DisplayDevice$Resolution;

    if-ne v5, v6, :cond_8

    sget-object v4, Lcom/android/camera/Resolution;->Video_WVGA:Lcom/android/camera/Resolution;

    new-instance v5, Lcom/android/camera/ResolutionMenuItem;

    invoke-virtual {v4}, Lcom/android/camera/Resolution;->getResolutionDescription()I

    move-result v6

    invoke-direct {v5, v4, v6}, Lcom/android/camera/ResolutionMenuItem;-><init>(Lcom/android/camera/Resolution;I)V

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_8
    sget-object v4, Lcom/android/camera/Resolution;->VGA:Lcom/android/camera/Resolution;

    new-instance v5, Lcom/android/camera/ResolutionMenuItem;

    invoke-virtual {v4}, Lcom/android/camera/Resolution;->getResolutionDescription()I

    move-result v6

    invoke-direct {v5, v4, v6}, Lcom/android/camera/ResolutionMenuItem;-><init>(Lcom/android/camera/Resolution;I)V

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_9
    sget-object v4, Lcom/android/camera/Resolution;->Video_QCIF_Service:Lcom/android/camera/Resolution;

    new-instance v5, Lcom/android/camera/ResolutionMenuItem;

    invoke-virtual {v4}, Lcom/android/camera/Resolution;->getResolutionDescription()I

    move-result v6

    invoke-direct {v5, v4, v6}, Lcom/android/camera/ResolutionMenuItem;-><init>(Lcom/android/camera/Resolution;I)V

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    const-string v5, "pref_camera_switch"

    invoke-static {p1, v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v5, "pref_camera_3D_status"

    invoke-static {p1, v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v1, v6, :cond_b

    const/4 v2, 0x0

    :goto_1
    sget-object v5, Lcom/android/camera/MovieModeHandler;->mResolutionSet_2nd:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    sget-object v5, Lcom/android/camera/MovieModeHandler;->mResolutionSet_2nd:Ljava/util/LinkedList;

    invoke-virtual {v5, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/Resolution;

    new-instance v5, Lcom/android/camera/ResolutionMenuItem;

    invoke-virtual {v4}, Lcom/android/camera/Resolution;->getResolutionDescription()I

    move-result v6

    invoke-direct {v5, v4, v6}, Lcom/android/camera/ResolutionMenuItem;-><init>(Lcom/android/camera/Resolution;I)V

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_b
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DCamera()Z

    move-result v5

    if-eqz v5, :cond_c

    if-eqz v0, :cond_c

    const/4 v2, 0x0

    :goto_2
    sget-object v5, Lcom/android/camera/MovieModeHandler;->mResolutionSet_3D:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    sget-object v5, Lcom/android/camera/MovieModeHandler;->mResolutionSet_3D:Ljava/util/LinkedList;

    invoke-virtual {v5, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/Resolution;

    new-instance v5, Lcom/android/camera/ResolutionMenuItem;

    invoke-virtual {v4}, Lcom/android/camera/Resolution;->getResolutionDescription()I

    move-result v6

    invoke-direct {v5, v4, v6}, Lcom/android/camera/ResolutionMenuItem;-><init>(Lcom/android/camera/Resolution;I)V

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_c
    const/4 v2, 0x0

    :goto_3
    sget-object v5, Lcom/android/camera/MovieModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    sget-object v5, Lcom/android/camera/MovieModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    invoke-virtual {v5, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/Resolution;

    new-instance v5, Lcom/android/camera/ResolutionMenuItem;

    invoke-virtual {v4}, Lcom/android/camera/Resolution;->getResolutionDescription()I

    move-result v6

    invoke-direct {v5, v4, v6}, Lcom/android/camera/ResolutionMenuItem;-><init>(Lcom/android/camera/Resolution;I)V

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method public getResolutionSettingString(Lcom/android/camera/HTCCamera;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x1

    const-string v2, "pref_camera_switch"

    invoke-static {p1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, v3, :cond_0

    const-string v2, "pref_capture_resolution_video_2nd"

    :goto_0
    return-object v2

    :cond_0
    const-string v2, "pref_camera_3D_status"

    invoke-static {p1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DCamera()Z

    move-result v2

    if-eqz v2, :cond_1

    if-ne v0, v3, :cond_1

    const-string v2, "pref_capture_resolution_video_3D"

    goto :goto_0

    :cond_1
    const-string v2, "pref_capture_resolution_video_main"

    goto :goto_0
.end method
