.class Lcom/google/android/talk/FeatureManager$DeviceCapabilities;
.super Ljava/lang/Object;
.source "FeatureManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/FeatureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeviceCapabilities"
.end annotation


# instance fields
.field public mArmv7:Z

.field public mEffectsEnabledMask:I

.field public mFrontCamera:Z

.field public mGlv2:Z

.field public mHasNEON:Z

.field public mMulticore:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/talk/FeatureManager$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/google/android/talk/FeatureManager$DeviceCapabilities;-><init>()V

    return-void
.end method
