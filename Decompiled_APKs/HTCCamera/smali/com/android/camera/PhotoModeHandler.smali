.class public final Lcom/android/camera/PhotoModeHandler;
.super Lcom/android/camera/ModeHandler;
.source "PhotoModeHandler.java"

# interfaces
.implements Lcom/android/camera/IResolutionHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "PhotoModeHandler"

.field private static final mResolutionHandler_Panorama_DOT:Lcom/android/camera/IResolutionHandler;

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

.field private static mSingleton:Lcom/android/camera/PhotoModeHandler;


# instance fields
.field private mResolutionHandler:Lcom/android/camera/IResolutionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_2nd:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_3D:Ljava/util/LinkedList;

    sput-object v3, Lcom/android/camera/PhotoModeHandler;->mSingleton:Lcom/android/camera/PhotoModeHandler;

    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DCamera()Z

    move-result v0

    if-ne v0, v2, :cond_0

    sget-object v0, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_3D:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Capture_1080P_3D:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSecondCamera()Z

    move-result v0

    if-ne v0, v2, :cond_2

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSpecific2ndCamera()Z

    move-result v0

    if-ne v0, v2, :cond_3

    sget-object v0, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_2nd:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->VGA:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportWideScreen2ndCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sget-object v1, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_3_2:Lcom/android/camera/DisplayDevice$ScreenRatio;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_2nd:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->VGA_3_2:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sget-object v1, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_16_9:Lcom/android/camera/DisplayDevice$ScreenRatio;

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_2nd:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->VGA_16_9:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/camera/HTCCameraSensor;->getType()Lcom/android/camera/HTCCameraSensor$Sensor_Type;

    move-result-object v0

    sget-object v1, Lcom/android/camera/HTCCameraSensor$Sensor_Type;->SENSOR_5M:Lcom/android/camera/HTCCameraSensor$Sensor_Type;

    if-ne v0, v1, :cond_10

    sget-object v0, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->VGA:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->SXGA:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->THREE_MEGA:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSharpSensorResolution()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->SHARP_FIVE_MEGA:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_1
    sget-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sget-object v1, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_16_9:Lcom/android/camera/DisplayDevice$ScreenRatio;

    if-ne v0, v1, :cond_c

    sget-object v0, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->VGA_16_9:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->SXGA_16_9:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->THREE_MEGA_16_9:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSharpSensorResolution()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->SHARP_FIVE_MEGA_16_9:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-nez v0, :cond_17

    sput-object v3, Lcom/android/camera/PhotoModeHandler;->mResolutionHandler_Panorama_DOT:Lcom/android/camera/IResolutionHandler;

    :goto_3
    return-void

    :cond_3
    sget-object v0, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_2nd:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->VGA:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/camera/DisplayDevice;->apply720PPreview()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_2nd:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Capture_720P_4_3:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support1M2ndCam()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_2nd:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->SXGA:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support2M2ndCam()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_2nd:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->UXGA:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportWideScreen2ndCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sget-object v1, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_16_9:Lcom/android/camera/DisplayDevice$ScreenRatio;

    if-ne v0, v1, :cond_7

    sget-object v0, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_2nd:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->VGA_16_9:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_2nd:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->SXGA_16_9:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/camera/DisplayDevice;->support2M2ndCam()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_2nd:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->UXGA_16_9:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    sget-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sget-object v1, Lcom/android/camera/DisplayDevice$ScreenRatio;->Tablet_Ratio_16_9:Lcom/android/camera/DisplayDevice$ScreenRatio;

    if-ne v0, v1, :cond_8

    sget-object v0, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_2nd:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Tablet_FrontCam_SXGA_16_9:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_8
    sget-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sget-object v1, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_5_3:Lcom/android/camera/DisplayDevice$ScreenRatio;

    if-ne v0, v1, :cond_9

    sget-object v0, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_2nd:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->VGA_5_3:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_2nd:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->SXGA_5_3:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_9
    sget-object v0, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_2nd:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->VGA_3_2:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_2nd:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->SXGA_3_2:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    sget-object v0, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->FIVE_MEGA:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_b
    sget-object v0, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->FIVE_MEGA_16_9:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_c
    sget-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sget-object v1, Lcom/android/camera/DisplayDevice$ScreenRatio;->Tablet_Ratio_16_9:Lcom/android/camera/DisplayDevice$ScreenRatio;

    if-ne v0, v1, :cond_d

    sget-object v0, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Tablet_VGA_16_9:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Tablet_SXGA_16_9:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Tablet_THREE_MEGA_16_9:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Tablet_FIVE_MEGA_16_9:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_d
    sget-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sget-object v1, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_5_3:Lcom/android/camera/DisplayDevice$ScreenRatio;

    if-ne v0, v1, :cond_f

    sget-object v0, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->VGA_5_3:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->SXGA_5_3:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->THREE_MEGA_5_3:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSharpSensorResolution()Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->SHARP_FIVE_MEGA_5_3:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_e
    sget-object v0, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->FIVE_MEGA_5_3:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_f
    sget-object v0, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->VGA_3_2:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->SXGA_3_2:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->THREE_MEGA_3_2:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->FIVE_MEGA_3_2:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_10
    invoke-static {}, Lcom/android/camera/HTCCameraSensor;->getType()Lcom/android/camera/HTCCameraSensor$Sensor_Type;

    move-result-object v0

    sget-object v1, Lcom/android/camera/HTCCameraSensor$Sensor_Type;->SENSOR_8M:Lcom/android/camera/HTCCameraSensor$Sensor_Type;

    if-ne v0, v1, :cond_14

    sget-object v0, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->VGA:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->SXGA:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->THREE_MEGA:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->FIVE_MEGA:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->EIGHT_MEGA:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sget-object v1, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_16_9:Lcom/android/camera/DisplayDevice$ScreenRatio;

    if-ne v0, v1, :cond_11

    sget-object v0, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->VGA_16_9:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->SXGA_16_9:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->THREE_MEGA_16_9:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->FIVE_MEGA_16_9:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->EIGHT_MEGA_16_9:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_11
    sget-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sget-object v1, Lcom/android/camera/DisplayDevice$ScreenRatio;->Tablet_Ratio_16_9:Lcom/android/camera/DisplayDevice$ScreenRatio;

    if-ne v0, v1, :cond_12

    sget-object v0, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Tablet_VGA_16_9:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Tablet_SXGA_16_9:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Tablet_THREE_MEGA_16_9:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Tablet_FIVE_MEGA_16_9:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_12
    sget-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sget-object v1, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_5_3:Lcom/android/camera/DisplayDevice$ScreenRatio;

    if-ne v0, v1, :cond_13

    sget-object v0, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->VGA_5_3:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->SXGA_5_3:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->THREE_MEGA_5_3:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->FIVE_MEGA_5_3:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->EIGHT_MEGA_5_3:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_13
    sget-object v0, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->VGA_3_2:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->SXGA_3_2:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->THREE_MEGA_3_2:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->FIVE_MEGA_3_2:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->EIGHT_MEGA_3_2:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_14
    sget-object v0, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->VGA:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->SXGA:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->THREE_MEGA:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sget-object v1, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_16_9:Lcom/android/camera/DisplayDevice$ScreenRatio;

    if-ne v0, v1, :cond_15

    sget-object v0, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->VGA_16_9:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->SXGA_16_9:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->THREE_MEGA_16_9:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_15
    sget-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sget-object v1, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_5_3:Lcom/android/camera/DisplayDevice$ScreenRatio;

    if-ne v0, v1, :cond_16

    sget-object v0, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->VGA_5_3:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->SXGA_5_3:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->THREE_MEGA_5_3:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_16
    sget-object v0, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->VGA_3_2:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->SXGA_3_2:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->THREE_MEGA_3_2:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_17
    new-instance v0, Lcom/android/camera/component/PanoramaResolutionHandler;

    invoke-direct {v0}, Lcom/android/camera/component/PanoramaResolutionHandler;-><init>()V

    sput-object v0, Lcom/android/camera/PhotoModeHandler;->mResolutionHandler_Panorama_DOT:Lcom/android/camera/IResolutionHandler;

    goto/16 :goto_3
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ModeHandler;-><init>()V

    return-void
.end method

.method public static declared-synchronized getPhotoModeHandler()Lcom/android/camera/PhotoModeHandler;
    .locals 2

    const-class v1, Lcom/android/camera/PhotoModeHandler;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/camera/PhotoModeHandler;->mSingleton:Lcom/android/camera/PhotoModeHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/PhotoModeHandler;

    invoke-direct {v0}, Lcom/android/camera/PhotoModeHandler;-><init>()V

    sput-object v0, Lcom/android/camera/PhotoModeHandler;->mSingleton:Lcom/android/camera/PhotoModeHandler;

    :cond_0
    sget-object v0, Lcom/android/camera/PhotoModeHandler;->mSingleton:Lcom/android/camera/PhotoModeHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized updateResolutionHandlerForDOT(Lcom/android/camera/HTCCamera;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v3, "pref_camera_switch"

    invoke-static {p1, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/camera/PhotoModeHandler;->mResolutionHandler:Lcom/android/camera/IResolutionHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_1
    :try_start_2
    invoke-virtual {p1}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "pref_camera_scene_ds"

    invoke-static {p1, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    :goto_1
    :try_start_3
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move-result v1

    :goto_2
    packed-switch v1, :pswitch_data_0

    const/4 v3, 0x0

    :try_start_4
    iput-object v3, p0, Lcom/android/camera/PhotoModeHandler;->mResolutionHandler:Lcom/android/camera/IResolutionHandler;

    goto :goto_0

    :cond_2
    const-string v3, "pref_camera_scene_service_ds"

    invoke-static {p1, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_2

    :pswitch_0
    sget-object v3, Lcom/android/camera/PhotoModeHandler;->mResolutionHandler_Panorama_DOT:Lcom/android/camera/IResolutionHandler;

    iput-object v3, p0, Lcom/android/camera/PhotoModeHandler;->mResolutionHandler:Lcom/android/camera/IResolutionHandler;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public declared-synchronized getCurrentResolutionSettingValue(Lcom/android/camera/HTCCamera;)Lcom/android/camera/Resolution;
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModeHandler;->updateResolutionHandlerForDOT(Lcom/android/camera/HTCCamera;)V

    iget-object v0, p0, Lcom/android/camera/PhotoModeHandler;->mResolutionHandler:Lcom/android/camera/IResolutionHandler;

    if-nez v0, :cond_0

    move-object v0, p0

    :cond_0
    invoke-interface {v0, p1}, Lcom/android/camera/IResolutionHandler;->getResolution(Lcom/android/camera/HTCCamera;)Lcom/android/camera/Resolution;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final getDefaultResolutions(I)[Lcom/android/camera/Resolution;
    .locals 3

    packed-switch p1, :pswitch_data_0

    const/4 v2, 0x0

    new-array v0, v2, [Lcom/android/camera/Resolution;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v1, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    :goto_1
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v2

    new-array v0, v2, [Lcom/android/camera/Resolution;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_0

    :pswitch_1
    sget-object v1, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_2nd:Ljava/util/LinkedList;

    goto :goto_1

    :pswitch_2
    sget-object v1, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_3D:Ljava/util/LinkedList;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getResolution(Lcom/android/camera/HTCCamera;)Lcom/android/camera/Resolution;
    .locals 9

    invoke-static {}, Lcom/android/camera/DisplayDevice;->captrueFullSize()Z

    move-result v7

    if-nez v7, :cond_1

    sget-object v7, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p1, v7}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "PhotoModeHandler"

    const-string v8, "Contacts request - resolution setting is CONTACT_STYLE"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lcom/android/camera/Resolution;->CONTACT_STYLE:Lcom/android/camera/Resolution;

    :goto_0
    return-object v7

    :cond_0
    sget-object v7, Lcom/android/camera/IntentManager$RequestName;->Square:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p1, v7}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "PhotoModeHandler"

    const-string v8, "Square request - resolution setting is SQUARE_STYLE"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lcom/android/camera/Resolution;->SQUARE_STYLE:Lcom/android/camera/Resolution;

    sget v8, Lcom/android/camera/DisplayDevice;->CAMERA_PIC_SIZE_FOR_SQUARE:I

    invoke-virtual {v7, v8}, Lcom/android/camera/Resolution;->setWidth(I)V

    sget-object v7, Lcom/android/camera/Resolution;->SQUARE_STYLE:Lcom/android/camera/Resolution;

    sget v8, Lcom/android/camera/DisplayDevice;->CAMERA_PIC_SIZE_FOR_SQUARE:I

    invoke-virtual {v7, v8}, Lcom/android/camera/Resolution;->setHeight(I)V

    sget-object v7, Lcom/android/camera/Resolution;->SQUARE_STYLE:Lcom/android/camera/Resolution;

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/camera/PhotoModeHandler;->getResolutionSettingString(Lcom/android/camera/HTCCamera;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    const-string v7, "null"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    :cond_2
    const-string v7, "pref_capture_resolution_photo_2nd"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    sget-object v5, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_2nd:Ljava/util/LinkedList;

    :goto_1
    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/Resolution;

    iget v7, v4, Lcom/android/camera/Resolution;->width:I

    iget v8, v4, Lcom/android/camera/Resolution;->height:I

    mul-int v3, v7, v8

    if-eqz v6, :cond_4

    if-le v3, v2, :cond_3

    :cond_4
    invoke-virtual {v4}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v6

    move v2, v3

    goto :goto_2

    :cond_5
    const-string v7, "pref_capture_resolution_photo_3D"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    sget-object v5, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_3D:Ljava/util/LinkedList;

    goto :goto_1

    :cond_6
    sget-object v5, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    goto :goto_1

    :cond_7
    if-nez v6, :cond_8

    const-string v7, "PhotoModeHandler"

    const-string v8, "No available pre-defined resolution"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-static {p1, v1, v6}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_9
    invoke-static {p1, v6}, Lcom/android/camera/Resolution;->getResolution(Landroid/content/Context;Ljava/lang/String;)Lcom/android/camera/Resolution;

    move-result-object v7

    goto :goto_0
.end method

.method public declared-synchronized getResolutionMenuItem(Lcom/android/camera/HTCCamera;)Ljava/util/LinkedList;
    .locals 2
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

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModeHandler;->updateResolutionHandlerForDOT(Lcom/android/camera/HTCCamera;)V

    iget-object v0, p0, Lcom/android/camera/PhotoModeHandler;->mResolutionHandler:Lcom/android/camera/IResolutionHandler;

    if-nez v0, :cond_0

    move-object v0, p0

    :cond_0
    invoke-interface {v0, p1}, Lcom/android/camera/IResolutionHandler;->getResolutionMenuItems(Lcom/android/camera/HTCCamera;)Ljava/util/LinkedList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getResolutionMenuItems(Lcom/android/camera/HTCCamera;)Ljava/util/LinkedList;
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

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->captrueFullSize()Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p1, v5}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "PhotoModeHandler"

    const-string v6, "Contacts request - resolution menu has only CONTACT_STYLE"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/android/camera/Resolution;->CONTACT_STYLE:Lcom/android/camera/Resolution;

    new-instance v5, Lcom/android/camera/ResolutionMenuItem;

    invoke-virtual {v4}, Lcom/android/camera/Resolution;->getResolutionDescription()I

    move-result v6

    invoke-direct {v5, v4, v6}, Lcom/android/camera/ResolutionMenuItem;-><init>(Lcom/android/camera/Resolution;I)V

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    sget-object v5, Lcom/android/camera/IntentManager$RequestName;->Square:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p1, v5}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "PhotoModeHandler"

    const-string v6, "Square request - resolution menu has only SQUARE_STYLE"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/android/camera/Resolution;->SQUARE_STYLE:Lcom/android/camera/Resolution;

    sget v6, Lcom/android/camera/DisplayDevice;->CAMERA_PIC_SIZE_FOR_SQUARE:I

    invoke-virtual {v5, v6}, Lcom/android/camera/Resolution;->setWidth(I)V

    sget-object v5, Lcom/android/camera/Resolution;->SQUARE_STYLE:Lcom/android/camera/Resolution;

    sget v6, Lcom/android/camera/DisplayDevice;->CAMERA_PIC_SIZE_FOR_SQUARE:I

    invoke-virtual {v5, v6}, Lcom/android/camera/Resolution;->setHeight(I)V

    sget-object v4, Lcom/android/camera/Resolution;->SQUARE_STYLE:Lcom/android/camera/Resolution;

    new-instance v5, Lcom/android/camera/ResolutionMenuItem;

    invoke-virtual {v4}, Lcom/android/camera/Resolution;->getResolutionDescription()I

    move-result v6

    invoke-direct {v5, v4, v6}, Lcom/android/camera/ResolutionMenuItem;-><init>(Lcom/android/camera/Resolution;I)V

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v5, "pref_camera_switch"

    invoke-static {p1, v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v5, 0x1

    if-ne v1, v5, :cond_3

    const/4 v2, 0x0

    :goto_1
    sget-object v5, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_2nd:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    sget-object v5, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_2nd:Ljava/util/LinkedList;

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

    :cond_3
    const-string v5, "pref_camera_3D_status"

    invoke-static {p1, v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DCamera()Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    :goto_2
    sget-object v5, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_3D:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    sget-object v5, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_3D:Ljava/util/LinkedList;

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

    :cond_4
    const/4 v2, 0x0

    :goto_3
    sget-object v5, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    sget-object v5, Lcom/android/camera/PhotoModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

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

.method public getResolutionPreferenceKey(Lcom/android/camera/HTCCamera;)Ljava/lang/String;
    .locals 3

    const-string v2, "pref_camera_switch"

    invoke-static {p1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "pref_camera_3D_status"

    invoke-static {p1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v2, "pref_capture_resolution_photo_2nd"

    :goto_0
    return-object v2

    :cond_0
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DCamera()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    const-string v2, "pref_capture_resolution_photo_3D"

    goto :goto_0

    :cond_1
    const-string v2, "pref_capture_resolution_photo_main"

    goto :goto_0
.end method

.method public declared-synchronized getResolutionSettingString(Lcom/android/camera/HTCCamera;)Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModeHandler;->updateResolutionHandlerForDOT(Lcom/android/camera/HTCCamera;)V

    iget-object v0, p0, Lcom/android/camera/PhotoModeHandler;->mResolutionHandler:Lcom/android/camera/IResolutionHandler;

    if-nez v0, :cond_0

    move-object v0, p0

    :cond_0
    invoke-interface {v0, p1}, Lcom/android/camera/IResolutionHandler;->getResolutionPreferenceKey(Lcom/android/camera/HTCCamera;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final declared-synchronized setResolutionHandler(Lcom/android/camera/IResolutionHandler;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v1, "PhotoModeHandler"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set resolution handler to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_0

    const-string v0, "default"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/camera/PhotoModeHandler;->mResolutionHandler:Lcom/android/camera/IResolutionHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
