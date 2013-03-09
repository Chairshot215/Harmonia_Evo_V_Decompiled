.class public Lcom/android/camera/MenuHandler;
.super Ljava/lang/Object;
.source "MenuHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/MenuHandler$HeaderAdapter;
    }
.end annotation


# static fields
.field public static final BRIGHTNESS_LEVEL_NUMBER:I = 0x5

.field private static final NO_VALUE:Ljava/lang/String; = "no-value"

.field public static final PROPERTY_LEVEL_NUMBER:I = 0x5

.field private static final TAG:Ljava/lang/String; = "MenuHandler"


# instance fields
.field private bShowCustomView:Z

.field private mAutoCaptureOptions:[Ljava/lang/String;

.field private mAutoCaptureTag_face:Ljava/lang/String;

.field private mAutoCaptureTag_timer:Ljava/lang/String;

.field private mAutoCaptureValues:[Ljava/lang/String;

.field private mAutoCaptureView:Landroid/widget/ListView;

.field private mBrightnessWheel:Lcom/android/camera/widget/LeveledScrollWheel;

.field private mCameraHandler:Landroid/os/Handler;

.field private mCameraThread:Lcom/android/camera/CameraThread;

.field private mContentDivider_Brightness:Landroid/view/View;

.field private mContentDivider_Contrast:Landroid/view/View;

.field private mContentDivider_Saturation:Landroid/view/View;

.field private mContentLayout_Brightness:Landroid/view/View;

.field private mContentLayout_Contrast:Landroid/view/View;

.field private mContentLayout_Saturation:Landroid/view/View;

.field private mContentLayout_Sharpness:Landroid/view/View;

.field private mContentText_Brightness:Landroid/widget/TextView;

.field private mContentText_Contrast:Landroid/widget/TextView;

.field private mContentText_Saturation:Landroid/widget/TextView;

.field private mContentText_Sharpness:Landroid/widget/TextView;

.field private mContentValue_Brightness:Landroid/view/View;

.field private mContentValue_Contrast:Landroid/view/View;

.field private mContentValue_Saturation:Landroid/view/View;

.field private mContentValue_Sharpness:Landroid/view/View;

.field private mContrastWheel:Lcom/android/camera/widget/LeveledScrollWheel;

.field private mEdgeSpace_Brightness:Landroid/view/View;

.field private mEdgeSpace_Sharpness:Landroid/view/View;

.field private mEffectManager:Lcom/android/camera/effect/EffectManager;

.field private mFaceIndex:I

.field private mFaceItems:I

.field private mHTCCamera:Lcom/android/camera/HTCCamera;

.field private mImagePropertyContent:Lcom/android/camera/rotate/RotateLinearLayout;

.field private mImagePropertyTitle:Landroid/view/View;

.field private mImagePropertyView:Landroid/view/View;

.field mInflater:Landroid/view/LayoutInflater;

.field private mLayout:Landroid/widget/LinearLayout;

.field private mLineSpace_Brightness:Landroid/view/View;

.field private mLineSpace_Contrast:Landroid/view/View;

.field private mLineSpace_Saturation:Landroid/view/View;

.field private mListWidth:I

.field private mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

.field private mPreferenceScreen:Landroid/preference/PreferenceScreen;

.field private mResView:Lcom/android/camera/widget/ResolutionView;

.field private mResources:Landroid/content/res/Resources;

.field private mSaturationWheel:Lcom/android/camera/widget/LeveledScrollWheel;

.field private mSettingsView:Lcom/android/camera/widget/SettingsView;

.field private mSharpnessWheel:Lcom/android/camera/widget/LeveledScrollWheel;

.field private mSubMenuListener:Lcom/android/camera/widget/SettingsView$OnSubMenuOpenedListener;

.field private mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;

.field private mTimerIndex:I

.field private mTimerItems:I

.field private mTitleSpace:Landroid/view/View;

.field private mTitleText_Brightness:Landroid/widget/TextView;

.field private mTitleText_Contrast:Landroid/widget/TextView;

.field private mTitleText_Saturation:Landroid/widget/TextView;

.field private mTitleText_Sharpness:Landroid/widget/TextView;

.field private mUIHandler:Landroid/os/Handler;

.field private mWheelLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mUIHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mCameraThread:Lcom/android/camera/CameraThread;

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mCameraHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mResources:Landroid/content/res/Resources;

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mSubMenuListener:Lcom/android/camera/widget/SettingsView$OnSubMenuOpenedListener;

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mLayout:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mSettingsView:Lcom/android/camera/widget/SettingsView;

    iput-boolean v1, p0, Lcom/android/camera/MenuHandler;->bShowCustomView:Z

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mResView:Lcom/android/camera/widget/ResolutionView;

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mInflater:Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mImagePropertyView:Landroid/view/View;

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mImagePropertyTitle:Landroid/view/View;

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mImagePropertyContent:Lcom/android/camera/rotate/RotateLinearLayout;

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mTitleText_Brightness:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mTitleText_Contrast:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mTitleText_Saturation:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mTitleText_Sharpness:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mContentText_Brightness:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mContentText_Contrast:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mContentText_Saturation:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mContentText_Sharpness:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mContentLayout_Brightness:Landroid/view/View;

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mContentLayout_Contrast:Landroid/view/View;

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mContentLayout_Saturation:Landroid/view/View;

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mContentLayout_Sharpness:Landroid/view/View;

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mContentValue_Brightness:Landroid/view/View;

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mContentValue_Contrast:Landroid/view/View;

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mContentValue_Saturation:Landroid/view/View;

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mContentValue_Sharpness:Landroid/view/View;

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mContentDivider_Brightness:Landroid/view/View;

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mContentDivider_Contrast:Landroid/view/View;

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mContentDivider_Saturation:Landroid/view/View;

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mTitleSpace:Landroid/view/View;

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mEdgeSpace_Brightness:Landroid/view/View;

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mLineSpace_Brightness:Landroid/view/View;

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mLineSpace_Contrast:Landroid/view/View;

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mLineSpace_Saturation:Landroid/view/View;

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mEdgeSpace_Sharpness:Landroid/view/View;

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mWheelLayout:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mBrightnessWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mContrastWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mSaturationWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mSharpnessWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    iput v1, p0, Lcom/android/camera/MenuHandler;->mFaceIndex:I

    iput v1, p0, Lcom/android/camera/MenuHandler;->mTimerIndex:I

    iput v1, p0, Lcom/android/camera/MenuHandler;->mFaceItems:I

    iput v1, p0, Lcom/android/camera/MenuHandler;->mTimerItems:I

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureView:Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureValues:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureOptions:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureTag_face:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureTag_timer:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/MenuHandler;)Lcom/android/camera/widget/SlidingDrawer;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/MenuHandler;)Lcom/android/camera/OnScreenPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/MenuHandler;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mTitleText_Sharpness:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/MenuHandler;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mContentText_Sharpness:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/MenuHandler;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/MenuHandler;->isDisableFaceItems()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/camera/MenuHandler;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/camera/MenuHandler;->isFaceItem(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/camera/MenuHandler;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/MenuHandler;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/MenuHandler;->mFaceIndex:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/camera/MenuHandler;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/MenuHandler;->mTimerIndex:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/camera/MenuHandler;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/camera/MenuHandler;->checkAutoCaptureItem(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/camera/MenuHandler;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureValues:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/camera/MenuHandler;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/MenuHandler;)Lcom/android/camera/HTCCamera;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/MenuHandler;)Lcom/android/camera/widget/SettingsView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mSettingsView:Lcom/android/camera/widget/SettingsView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/camera/MenuHandler;Landroid/view/View;ILandroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/MenuHandler;->inflateIfNeed(Landroid/view/View;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/camera/MenuHandler;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/MenuHandler;->setEnabledStateOnViews(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/MenuHandler;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mCameraHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/MenuHandler;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mTitleText_Brightness:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/MenuHandler;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mContentText_Brightness:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/MenuHandler;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mTitleText_Contrast:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/MenuHandler;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mContentText_Contrast:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/MenuHandler;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mTitleText_Saturation:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/MenuHandler;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mContentText_Saturation:Landroid/widget/TextView;

    return-object v0
.end method

.method private checkAutoCaptureItem(I)Z
    .locals 8

    const v7, 0x7f0a014a

    const/4 v6, 0x0

    const/4 v1, 0x1

    const/16 v5, 0x25

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/camera/MenuHandler;->mFaceIndex:I

    if-eq p1, v3, :cond_0

    iget v3, p0, Lcom/android/camera/MenuHandler;->mTimerIndex:I

    if-ne p1, v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureView:Landroid/widget/ListView;

    invoke-virtual {v3, p1, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    move v1, v2

    :goto_0
    return v1

    :cond_1
    if-lt p1, v1, :cond_3

    iget v3, p0, Lcom/android/camera/MenuHandler;->mTimerItems:I

    if-gt p1, v3, :cond_3

    iget-object v3, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureView:Landroid/widget/ListView;

    iget v4, p0, Lcom/android/camera/MenuHandler;->mTimerIndex:I

    invoke-virtual {v3, v4, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    iget v3, p0, Lcom/android/camera/MenuHandler;->mFaceIndex:I

    iget v4, p0, Lcom/android/camera/MenuHandler;->mTimerItems:I

    add-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/android/camera/MenuHandler;->mTimerIndex:I

    if-ne v3, v1, :cond_2

    iget-object v3, p0, Lcom/android/camera/MenuHandler;->mUIHandler:Landroid/os/Handler;

    invoke-static {v3, v5}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v3, p0, Lcom/android/camera/MenuHandler;->mUIHandler:Landroid/os/Handler;

    invoke-static {v3, v5, v7, v2, v6}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    :cond_2
    iput p1, p0, Lcom/android/camera/MenuHandler;->mTimerIndex:I

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureView:Landroid/widget/ListView;

    iget v4, p0, Lcom/android/camera/MenuHandler;->mFaceIndex:I

    invoke-virtual {v3, v4, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    iget v3, p0, Lcom/android/camera/MenuHandler;->mTimerItems:I

    add-int/lit8 v3, v3, 0x2

    if-ne p1, v3, :cond_5

    iget v3, p0, Lcom/android/camera/MenuHandler;->mTimerIndex:I

    if-le v3, v1, :cond_4

    iget-object v3, p0, Lcom/android/camera/MenuHandler;->mUIHandler:Landroid/os/Handler;

    invoke-static {v3, v5}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v3, p0, Lcom/android/camera/MenuHandler;->mUIHandler:Landroid/os/Handler;

    invoke-static {v3, v5, v7, v2, v6}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    :cond_4
    :goto_1
    iput p1, p0, Lcom/android/camera/MenuHandler;->mFaceIndex:I

    goto :goto_0

    :cond_5
    iget v3, p0, Lcom/android/camera/MenuHandler;->mTimerItems:I

    add-int/lit8 v3, v3, 0x3

    if-ne p1, v3, :cond_6

    const v0, 0x7f0a014b

    :goto_2
    iget-object v3, p0, Lcom/android/camera/MenuHandler;->mUIHandler:Landroid/os/Handler;

    invoke-static {v3, v5}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v3, p0, Lcom/android/camera/MenuHandler;->mUIHandler:Landroid/os/Handler;

    invoke-static {v3, v5, v0, v2, v6}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto :goto_1

    :cond_6
    const v0, 0x7f0a014c

    goto :goto_2
.end method

.method private createAutoCaptureList()Landroid/view/View;
    .locals 4

    const/4 v3, 0x1

    const-string v1, "MenuHandler"

    const-string v2, "Create Auto-capture List"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureView:Landroid/widget/ListView;

    if-nez v1, :cond_0

    new-instance v0, Lcom/android/camera/MenuHandler$10;

    invoke-direct {v0, p0}, Lcom/android/camera/MenuHandler$10;-><init>(Lcom/android/camera/MenuHandler;)V

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureValues:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureOptions:[Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Lcom/android/camera/MenuHandler;->createMultiChoiceListView([Ljava/lang/String;[Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;)Landroid/widget/ListView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureView:Landroid/widget/ListView;

    :cond_0
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->clearChoices()V

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureView:Landroid/widget/ListView;

    iget v2, p0, Lcom/android/camera/MenuHandler;->mFaceIndex:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureView:Landroid/widget/ListView;

    iget v2, p0, Lcom/android/camera/MenuHandler;->mTimerIndex:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    invoke-direct {p0}, Lcom/android/camera/MenuHandler;->isDisableFaceItems()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/camera/MenuHandler;->disableFaceItems(Z)V

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureView:Landroid/widget/ListView;

    return-object v1
.end method

.method private createImagePropertyView()Landroid/view/View;
    .locals 7

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x0

    const-string v1, "MenuHandler"

    const-string v2, "Create ImageProperty View"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mImagePropertyView:Landroid/view/View;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030019

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mImagePropertyView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mImagePropertyView:Landroid/view/View;

    const v2, 0x7f0800be

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mImagePropertyTitle:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mImagePropertyView:Landroid/view/View;

    const v2, 0x7f0800c0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/rotate/RotateLinearLayout;

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mImagePropertyContent:Lcom/android/camera/rotate/RotateLinearLayout;

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mImagePropertyTitle:Landroid/view/View;

    const v2, 0x7f0800e2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mTitleText_Brightness:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mImagePropertyTitle:Landroid/view/View;

    const v2, 0x7f0800e1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mTitleText_Contrast:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mImagePropertyTitle:Landroid/view/View;

    const v2, 0x7f0800e0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mTitleText_Saturation:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mImagePropertyTitle:Landroid/view/View;

    const v2, 0x7f0800df

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mTitleText_Sharpness:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mImagePropertyView:Landroid/view/View;

    const v2, 0x7f0800c5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mContentText_Brightness:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mImagePropertyView:Landroid/view/View;

    const v2, 0x7f0800cc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mContentText_Contrast:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mImagePropertyView:Landroid/view/View;

    const v2, 0x7f0800d3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mContentText_Saturation:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mImagePropertyView:Landroid/view/View;

    const v2, 0x7f0800da

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mContentText_Sharpness:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mImagePropertyView:Landroid/view/View;

    const v2, 0x7f0800c4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mContentLayout_Brightness:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mImagePropertyView:Landroid/view/View;

    const v2, 0x7f0800cb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mContentLayout_Contrast:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mImagePropertyView:Landroid/view/View;

    const v2, 0x7f0800d2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mContentLayout_Saturation:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mImagePropertyView:Landroid/view/View;

    const v2, 0x7f0800d9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mContentLayout_Sharpness:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mImagePropertyView:Landroid/view/View;

    const v2, 0x7f0800c8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mContentValue_Brightness:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mImagePropertyView:Landroid/view/View;

    const v2, 0x7f0800cf

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mContentValue_Contrast:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mImagePropertyView:Landroid/view/View;

    const v2, 0x7f0800d6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mContentValue_Saturation:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mImagePropertyView:Landroid/view/View;

    const v2, 0x7f0800dd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mContentValue_Sharpness:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mImagePropertyView:Landroid/view/View;

    const v2, 0x7f0800ca

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mContentDivider_Brightness:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mImagePropertyView:Landroid/view/View;

    const v2, 0x7f0800d1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mContentDivider_Contrast:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mImagePropertyView:Landroid/view/View;

    const v2, 0x7f0800d8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mContentDivider_Saturation:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mImagePropertyView:Landroid/view/View;

    const v2, 0x7f0800c1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mTitleSpace:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mImagePropertyView:Landroid/view/View;

    const v2, 0x7f0800c3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mEdgeSpace_Brightness:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mImagePropertyView:Landroid/view/View;

    const v2, 0x7f0800c7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mLineSpace_Brightness:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mImagePropertyView:Landroid/view/View;

    const v2, 0x7f0800ce

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mLineSpace_Contrast:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mImagePropertyView:Landroid/view/View;

    const v2, 0x7f0800d5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mLineSpace_Saturation:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mImagePropertyView:Landroid/view/View;

    const v2, 0x7f0800dc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mEdgeSpace_Sharpness:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mImagePropertyView:Landroid/view/View;

    const v2, 0x7f0800c2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mWheelLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mImagePropertyView:Landroid/view/View;

    const v2, 0x7f0800c6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/widget/LeveledScrollWheel;

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mBrightnessWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mBrightnessWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    invoke-virtual {v1, v4, v5}, Lcom/android/camera/widget/LeveledScrollWheel;->setMinMax(II)Z

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mImagePropertyView:Landroid/view/View;

    const v2, 0x7f0800cd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/widget/LeveledScrollWheel;

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mContrastWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mContrastWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    invoke-virtual {v1, v4, v5}, Lcom/android/camera/widget/LeveledScrollWheel;->setMinMax(II)Z

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mImagePropertyView:Landroid/view/View;

    const v2, 0x7f0800d4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/widget/LeveledScrollWheel;

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mSaturationWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mSaturationWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    invoke-virtual {v1, v4, v5}, Lcom/android/camera/widget/LeveledScrollWheel;->setMinMax(II)Z

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mImagePropertyView:Landroid/view/View;

    const v2, 0x7f0800db

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/widget/LeveledScrollWheel;

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mSharpnessWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mSharpnessWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    invoke-virtual {v1, v4, v5}, Lcom/android/camera/widget/LeveledScrollWheel;->setMinMax(II)Z

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mBrightnessWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    new-instance v2, Lcom/android/camera/MenuHandler$2;

    invoke-direct {v2, p0}, Lcom/android/camera/MenuHandler$2;-><init>(Lcom/android/camera/MenuHandler;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/widget/LeveledScrollWheel;->setOnLevelChangedListner(Lcom/android/camera/widget/LeveledScrollWheel$OnLevelChangedListener;)V

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mContrastWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    new-instance v2, Lcom/android/camera/MenuHandler$3;

    invoke-direct {v2, p0}, Lcom/android/camera/MenuHandler$3;-><init>(Lcom/android/camera/MenuHandler;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/widget/LeveledScrollWheel;->setOnLevelChangedListner(Lcom/android/camera/widget/LeveledScrollWheel$OnLevelChangedListener;)V

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mSaturationWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    new-instance v2, Lcom/android/camera/MenuHandler$4;

    invoke-direct {v2, p0}, Lcom/android/camera/MenuHandler$4;-><init>(Lcom/android/camera/MenuHandler;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/widget/LeveledScrollWheel;->setOnLevelChangedListner(Lcom/android/camera/widget/LeveledScrollWheel$OnLevelChangedListener;)V

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mSharpnessWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    new-instance v2, Lcom/android/camera/MenuHandler$5;

    invoke-direct {v2, p0}, Lcom/android/camera/MenuHandler$5;-><init>(Lcom/android/camera/MenuHandler;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/widget/LeveledScrollWheel;->setOnLevelChangedListner(Lcom/android/camera/widget/LeveledScrollWheel$OnLevelChangedListener;)V

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mBrightnessWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    new-instance v2, Lcom/android/camera/MenuHandler$6;

    invoke-direct {v2, p0}, Lcom/android/camera/MenuHandler$6;-><init>(Lcom/android/camera/MenuHandler;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/widget/LeveledScrollWheel;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mContrastWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    new-instance v2, Lcom/android/camera/MenuHandler$7;

    invoke-direct {v2, p0}, Lcom/android/camera/MenuHandler$7;-><init>(Lcom/android/camera/MenuHandler;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/widget/LeveledScrollWheel;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mSaturationWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    new-instance v2, Lcom/android/camera/MenuHandler$8;

    invoke-direct {v2, p0}, Lcom/android/camera/MenuHandler$8;-><init>(Lcom/android/camera/MenuHandler;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/widget/LeveledScrollWheel;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mSharpnessWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    new-instance v2, Lcom/android/camera/MenuHandler$9;

    invoke-direct {v2, p0}, Lcom/android/camera/MenuHandler$9;-><init>(Lcom/android/camera/MenuHandler;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/widget/LeveledScrollWheel;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_0
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mBrightnessWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    const-string v2, "pref_camera_brightness"

    invoke-virtual {p0, v1, v2, v6}, Lcom/android/camera/MenuHandler;->updateLevelBar(Lcom/android/camera/widget/LeveledScrollWheel;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mContrastWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    const-string v2, "pref_camera_contrast"

    invoke-virtual {p0, v1, v2, v6}, Lcom/android/camera/MenuHandler;->updateLevelBar(Lcom/android/camera/widget/LeveledScrollWheel;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mSaturationWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    const-string v2, "pref_camera_saturation"

    invoke-virtual {p0, v1, v2, v6}, Lcom/android/camera/MenuHandler;->updateLevelBar(Lcom/android/camera/widget/LeveledScrollWheel;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mSharpnessWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    const-string v2, "pref_camera_shaprness"

    invoke-virtual {p0, v1, v2, v6}, Lcom/android/camera/MenuHandler;->updateLevelBar(Lcom/android/camera/widget/LeveledScrollWheel;Ljava/lang/String;I)V

    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/MenuHandler;->updateImagePropertyView(I)V

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mImagePropertyView:Landroid/view/View;

    return-object v1
.end method

.method private createMultiChoiceListView([Ljava/lang/String;[Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;)Landroid/widget/ListView;
    .locals 3

    const/4 v2, -0x1

    new-instance v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDrawingCacheEnabled(Z)V

    new-instance v1, Lcom/android/camera/MenuHandler$HeaderAdapter;

    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/android/camera/MenuHandler$HeaderAdapter;-><init>(Lcom/android/camera/MenuHandler;Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f02014a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, p3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-object v0
.end method

.method private createResolutionView()V
    .locals 6

    const-string v2, "MenuHandler"

    const-string v3, "Create Resolution View"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mResView:Lcom/android/camera/widget/ResolutionView;

    if-nez v2, :cond_0

    new-instance v2, Lcom/android/camera/widget/ResolutionView;

    iget-object v3, p0, Lcom/android/camera/MenuHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget-object v4, p0, Lcom/android/camera/MenuHandler;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v5, p0, Lcom/android/camera/MenuHandler;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-direct {v2, v3, p0, v4, v5}, Lcom/android/camera/widget/ResolutionView;-><init>(Landroid/content/Context;Lcom/android/camera/MenuHandler;Landroid/preference/PreferenceScreen;Lcom/android/camera/CameraThread;)V

    iput-object v2, p0, Lcom/android/camera/MenuHandler;->mResView:Lcom/android/camera/widget/ResolutionView;

    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mResView:Lcom/android/camera/widget/ResolutionView;

    iget-object v3, p0, Lcom/android/camera/MenuHandler;->mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

    invoke-virtual {v2, v3}, Lcom/android/camera/widget/ResolutionView;->setOnPreferenceUpdatedListener(Lcom/android/camera/widget/ResolutionView$OnPreferenceUpdatedListener;)V

    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/MenuHandler;->getListViewWidth(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mResView:Lcom/android/camera/widget/ResolutionView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v1, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/android/camera/widget/ResolutionView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mResView:Lcom/android/camera/widget/ResolutionView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/camera/widget/ResolutionView;->setVisible(Z)V

    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mResView:Lcom/android/camera/widget/ResolutionView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/camera/widget/ResolutionView;->setVisible(Z)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mResView:Lcom/android/camera/widget/ResolutionView;

    iget-object v3, p0, Lcom/android/camera/MenuHandler;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Lcom/android/camera/widget/ResolutionView;->updatePreferenceScreen(Landroid/preference/PreferenceScreen;)V

    goto :goto_0
.end method

.method private createSettingsView()V
    .locals 8

    const-string v0, "MenuHandler"

    const-string v1, "Create Settings View"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mSettingsView:Lcom/android/camera/widget/SettingsView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/widget/SettingsView;

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget-object v3, p0, Lcom/android/camera/MenuHandler;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/android/camera/MenuHandler;->mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;

    iget-object v5, p0, Lcom/android/camera/MenuHandler;->mCameraThread:Lcom/android/camera/CameraThread;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/widget/SettingsView;-><init>(Landroid/content/Context;Lcom/android/camera/MenuHandler;Landroid/preference/PreferenceScreen;Lcom/android/camera/widget/SlidingDrawer;Lcom/android/camera/CameraThread;)V

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mSettingsView:Lcom/android/camera/widget/SettingsView;

    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mSettingsView:Lcom/android/camera/widget/SettingsView;

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/SettingsView;->setOnPreferenceUpdatedListener(Lcom/android/camera/widget/SettingsView$OnPreferenceUpdatedListener;)V

    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/camera/MenuHandler;->getListViewWidth(I)I

    move-result v7

    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mSettingsView:Lcom/android/camera/widget/SettingsView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v7, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/SettingsView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mSettingsView:Lcom/android/camera/widget/SettingsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/SettingsView;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mSettingsView:Lcom/android/camera/widget/SettingsView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/SettingsView;->setVisible(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mSettingsView:Lcom/android/camera/widget/SettingsView;

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/SettingsView;->updatePreferenceScreen(Landroid/preference/PreferenceScreen;)V

    goto :goto_0
.end method

.method private createSingleChoiceListView([Ljava/lang/String;[Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;)Landroid/widget/ListView;
    .locals 4

    const/4 v3, 0x1

    const/4 v2, -0x1

    new-instance v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setDrawingCacheEnabled(Z)V

    new-instance v1, Lcom/android/camera/MenuHandler$HeaderAdapter;

    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/android/camera/MenuHandler$HeaderAdapter;-><init>(Lcom/android/camera/MenuHandler;Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f02014a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, p3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-object v0
.end method

.method private disableFaceItems(Z)V
    .locals 4

    iget-object v3, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/camera/MenuHandler$HeaderAdapter;

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/camera/MenuHandler;->mTimerItems:I

    add-int/lit8 v1, v3, 0x2

    :goto_0
    iget-object v3, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureValues:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/MenuHandler$HeaderAdapter;->setDisabledList(IZ)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v2, 0x0

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/MenuHandler$HeaderAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getAutoCaptureString()Ljava/lang/String;
    .locals 13

    const-string v10, "MenuHandler"

    const-string v11, "Get Auto-capture String"

    invoke-static {v10, v11}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/camera/MenuHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v11, "pref_camera_face_number"

    invoke-static {v10, v11}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v10, "MenuHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Get PreferenceName.PREF_FACE_NUMBER = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_0

    const-string v10, "null"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    const-string v2, "none"

    :cond_1
    iget-object v10, p0, Lcom/android/camera/MenuHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v11, "pref_camera_self_timer"

    invoke-static {v10, v11}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v10, "MenuHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Get PreferenceName.PREF_SELF_TIMER = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v7, :cond_2

    const-string v10, "null"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    :cond_2
    const-string v7, "none"

    :cond_3
    iget-object v10, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureValues:[Ljava/lang/String;

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureOptions:[Ljava/lang/String;

    if-nez v10, :cond_7

    :cond_4
    iget-object v10, p0, Lcom/android/camera/MenuHandler;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f070016

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iget-object v10, p0, Lcom/android/camera/MenuHandler;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f070015

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iget-object v10, p0, Lcom/android/camera/MenuHandler;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f070014

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/camera/MenuHandler;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f070013

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v10, v4

    iput v10, p0, Lcom/android/camera/MenuHandler;->mFaceItems:I

    array-length v10, v9

    iput v10, p0, Lcom/android/camera/MenuHandler;->mTimerItems:I

    const-string v10, "no-value"

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v10, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureTag_timer:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    :goto_0
    iget v10, p0, Lcom/android/camera/MenuHandler;->mTimerItems:I

    if-ge v5, v10, :cond_5

    aget-object v10, v9, v5

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v10, v8, v5

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    const-string v10, "no-value"

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v10, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureTag_face:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    :goto_1
    iget v10, p0, Lcom/android/camera/MenuHandler;->mFaceItems:I

    if-ge v5, v10, :cond_6

    aget-object v10, v4, v5

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v10, v3, v5

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    iput-object v10, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureValues:[Ljava/lang/String;

    iget-object v10, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureValues:[Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    iput-object v10, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureOptions:[Ljava/lang/String;

    iget-object v10, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureOptions:[Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_7
    const/4 v5, 0x1

    :goto_2
    iget v10, p0, Lcom/android/camera/MenuHandler;->mTimerItems:I

    if-gt v5, v10, :cond_8

    iget-object v10, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureValues:[Ljava/lang/String;

    aget-object v10, v10, v5

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    iput v5, p0, Lcom/android/camera/MenuHandler;->mTimerIndex:I

    :cond_8
    iget v10, p0, Lcom/android/camera/MenuHandler;->mTimerItems:I

    add-int/lit8 v5, v10, 0x2

    :goto_3
    iget-object v10, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureValues:[Ljava/lang/String;

    array-length v10, v10

    if-ge v5, v10, :cond_9

    iget-object v10, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureValues:[Ljava/lang/String;

    aget-object v10, v10, v5

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    iput v5, p0, Lcom/android/camera/MenuHandler;->mFaceIndex:I

    :cond_9
    iget-object v10, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureOptions:[Ljava/lang/String;

    iget v11, p0, Lcom/android/camera/MenuHandler;->mTimerIndex:I

    aget-object v6, v10, v11

    const-string v10, "none"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureOptions:[Ljava/lang/String;

    iget v12, p0, Lcom/android/camera/MenuHandler;->mFaceIndex:I

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_a
    return-object v6

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_3
.end method

.method private getListViewWidth(I)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method private getWheelPadding(I)I
    .locals 2

    invoke-static {p1}, Lcom/android/camera/rotate/OrientationConfig;->isInverse_ScreenOrientation(I)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget v0, Lcom/android/camera/DisplayDevice;->WHEEL_ROTATE_PADDING:I

    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/android/camera/rotate/OrientationConfig;->isEqual_ScreenOrientation(I)Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lcom/android/camera/DisplayDevice;->WHEEL_ROTATE_PADDING:I

    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private inflateIfNeed(Landroid/view/View;ILandroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 1

    if-eqz p1, :cond_0

    :goto_0
    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p2, p3, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0
.end method

.method private isDisableFaceItems()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->hasSpecificEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFaceItem(I)Z
    .locals 1

    iget v0, p0, Lcom/android/camera/MenuHandler;->mTimerItems:I

    add-int/lit8 v0, v0, 0x2

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureValues:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setEnabledStateOnViews(Landroid/view/View;Z)V
    .locals 3

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/camera/MenuHandler;->setEnabledStateOnViews(Landroid/view/View;Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setWheelInverse(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mBrightnessWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mBrightnessWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    invoke-virtual {v0, p1}, Lcom/android/camera/widget/LeveledScrollWheel;->setInverse(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mContrastWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mContrastWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    invoke-virtual {v0, p1}, Lcom/android/camera/widget/LeveledScrollWheel;->setInverse(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mSaturationWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mSaturationWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    invoke-virtual {v0, p1}, Lcom/android/camera/widget/LeveledScrollWheel;->setInverse(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mSharpnessWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mSharpnessWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    invoke-virtual {v0, p1}, Lcom/android/camera/widget/LeveledScrollWheel;->setInverse(Z)V

    :cond_3
    return-void
.end method

.method private showTilteLayout(Z)V
    .locals 7

    const/4 v6, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-ne p1, v6, :cond_4

    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mWheelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const v2, 0x7f0b000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f0b0009

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mWheelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mImagePropertyTitle:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mTitleSpace:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mEdgeSpace_Brightness:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mLineSpace_Brightness:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mLineSpace_Contrast:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mLineSpace_Saturation:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mEdgeSpace_Sharpness:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mContentLayout_Brightness:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mContentLayout_Contrast:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mContentLayout_Saturation:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mContentLayout_Sharpness:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mContentValue_Brightness:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mContentValue_Contrast:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mContentValue_Saturation:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mContentValue_Sharpness:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mContentDivider_Brightness:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mContentDivider_Contrast:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mContentDivider_Saturation:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mContentText_Brightness:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mContentText_Contrast:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mContentText_Saturation:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mContentText_Sharpness:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mBrightnessWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    invoke-virtual {v2}, Lcom/android/camera/widget/LeveledScrollWheel;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mTitleText_Brightness:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mContrastWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    invoke-virtual {v2}, Lcom/android/camera/widget/LeveledScrollWheel;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mTitleText_Contrast:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mSaturationWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    invoke-virtual {v2}, Lcom/android/camera/widget/LeveledScrollWheel;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mTitleText_Saturation:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mSharpnessWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    invoke-virtual {v2}, Lcom/android/camera/widget/LeveledScrollWheel;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mTitleText_Sharpness:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mWheelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const v2, 0x7f0b000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f0b000b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mWheelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mImagePropertyTitle:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mTitleSpace:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mEdgeSpace_Brightness:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mLineSpace_Brightness:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mLineSpace_Contrast:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mLineSpace_Saturation:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mEdgeSpace_Sharpness:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mContentLayout_Brightness:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mContentLayout_Contrast:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mContentLayout_Saturation:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mContentLayout_Sharpness:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mContentValue_Brightness:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mContentValue_Contrast:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mContentValue_Saturation:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mContentValue_Sharpness:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mContentDivider_Brightness:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mContentDivider_Contrast:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mContentDivider_Saturation:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mTitleText_Brightness:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mTitleText_Contrast:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mTitleText_Saturation:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mTitleText_Sharpness:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mBrightnessWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    invoke-virtual {v2}, Lcom/android/camera/widget/LeveledScrollWheel;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mContentText_Brightness:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setSelected(Z)V

    goto/16 :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mContrastWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    invoke-virtual {v2}, Lcom/android/camera/widget/LeveledScrollWheel;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mContentText_Contrast:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setSelected(Z)V

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mSaturationWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    invoke-virtual {v2}, Lcom/android/camera/widget/LeveledScrollWheel;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mContentText_Saturation:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setSelected(Z)V

    goto/16 :goto_0

    :cond_7
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mSharpnessWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    invoke-virtual {v2}, Lcom/android/camera/widget/LeveledScrollWheel;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mContentText_Sharpness:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setSelected(Z)V

    goto/16 :goto_0
.end method

.method private updateImagePropertyView(I)V
    .locals 3

    iget-boolean v2, p0, Lcom/android/camera/MenuHandler;->bShowCustomView:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mImagePropertyView:Landroid/view/View;

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    :cond_2
    const/4 v1, 0x1

    const/4 v0, 0x1

    :cond_3
    invoke-direct {p0, v0}, Lcom/android/camera/MenuHandler;->setWheelInverse(Z)V

    invoke-direct {p0, v0}, Lcom/android/camera/MenuHandler;->showTilteLayout(Z)V

    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mImagePropertyContent:Lcom/android/camera/rotate/RotateLinearLayout;

    invoke-virtual {v2, v1}, Lcom/android/camera/rotate/RotateLinearLayout;->setOrientation(I)V

    invoke-direct {p0, v1}, Lcom/android/camera/MenuHandler;->updateWheelPadding(I)V

    goto :goto_0
.end method

.method private updateListViewWidth(I)V
    .locals 2

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mSettingsView:Lcom/android/camera/widget/SettingsView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mSettingsView:Lcom/android/camera/widget/SettingsView;

    invoke-virtual {v1}, Lcom/android/camera/widget/SettingsView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mSettingsView:Lcom/android/camera/widget/SettingsView;

    invoke-virtual {v1, v0}, Lcom/android/camera/widget/SettingsView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mSettingsView:Lcom/android/camera/widget/SettingsView;

    invoke-virtual {v1, p1}, Lcom/android/camera/widget/SettingsView;->updateSubMenuWidth(I)V

    :cond_0
    return-void
.end method

.method private updateSettingsView()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mSettingsView:Lcom/android/camera/widget/SettingsView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mSettingsView:Lcom/android/camera/widget/SettingsView;

    invoke-virtual {v0}, Lcom/android/camera/widget/SettingsView;->notifyMainLayoutChanged()V

    :cond_0
    return-void
.end method

.method private updateWheelPadding(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/camera/MenuHandler;->getWheelPadding(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mBrightnessWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mBrightnessWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    invoke-virtual {v1, v0}, Lcom/android/camera/widget/LeveledScrollWheel;->setRotatePadding(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mContrastWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mContrastWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    invoke-virtual {v1, v0}, Lcom/android/camera/widget/LeveledScrollWheel;->setRotatePadding(I)V

    :cond_1
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mSaturationWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mSaturationWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    invoke-virtual {v1, v0}, Lcom/android/camera/widget/LeveledScrollWheel;->setRotatePadding(I)V

    :cond_2
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mSharpnessWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mSharpnessWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    invoke-virtual {v1, v0}, Lcom/android/camera/widget/LeveledScrollWheel;->setRotatePadding(I)V

    :cond_3
    return-void
.end method


# virtual methods
.method public closeMainPanel()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->closeSettingsPanel()V

    :cond_0
    return-void
.end method

.method public closeSubMenu(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mSettingsView:Lcom/android/camera/widget/SettingsView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mSettingsView:Lcom/android/camera/widget/SettingsView;

    invoke-virtual {v0, p1}, Lcom/android/camera/widget/SettingsView;->closeSubMenu(Z)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public exitMenuHandler()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

    invoke-virtual {v0}, Lcom/android/camera/OnScreenPreference;->exitPreference()V

    :cond_0
    return-void
.end method

.method public getCustomView(Landroid/preference/Preference;)Landroid/view/View;
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/MenuHandler;->bShowCustomView:Z

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "pref_camera_image_property"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/camera/MenuHandler;->createImagePropertyView()Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v2, "pref_camera_auto_capture"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/camera/MenuHandler;->createAutoCaptureList()Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public getMenuResolutionItem(I)Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

    invoke-virtual {v1}, Lcom/android/camera/OnScreenPreference;->getCurrectMenuResolution()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ResolutionMenuItem;

    iget-object v1, v1, Lcom/android/camera/ResolutionMenuItem;->resolution:Lcom/android/camera/Resolution;

    invoke-virtual {v1}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getResView()Lcom/android/camera/widget/ResolutionView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mResView:Lcom/android/camera/widget/ResolutionView;

    return-object v0
.end method

.method public getSettingsView()Lcom/android/camera/widget/SettingsView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mSettingsView:Lcom/android/camera/widget/SettingsView;

    return-object v0
.end method

.method public getSummary(Landroid/preference/Preference;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "pref_camera_image_property"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const v2, 0x7f0a005f

    invoke-virtual {v1, v2}, Lcom/android/camera/HTCCamera;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v2, "pref_camera_auto_capture"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/camera/MenuHandler;->getAutoCaptureString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public hideCustomView()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/MenuHandler;->bShowCustomView:Z

    return-void
.end method

.method public initMenuHandler(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraThread;Landroid/view/View;)V
    .locals 3

    const-string v0, "MenuHandler"

    const-string v1, "initMenuHandler() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/camera/MenuHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mUIHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/camera/MenuHandler;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mCameraHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p1}, Lcom/android/camera/HTCCamera;->getEffectManager()Lcom/android/camera/effect/EffectManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mEffectManager:Lcom/android/camera/effect/EffectManager;

    new-instance v0, Lcom/android/camera/OnScreenPreference;

    invoke-direct {v0}, Lcom/android/camera/OnScreenPreference;-><init>()V

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/camera/OnScreenPreference;->initOnScreenPreference(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraThread;Lcom/android/camera/MenuHandler;)V

    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f080134

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/widget/SlidingDrawer;

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;

    const v0, 0x7f080133

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b00e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/MenuHandler;->mListWidth:I

    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0a008e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureTag_face:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0a0064

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureTag_timer:Ljava/lang/String;

    new-instance v0, Lcom/android/camera/MenuHandler$1;

    invoke-direct {v0, p0}, Lcom/android/camera/MenuHandler$1;-><init>(Lcom/android/camera/MenuHandler;)V

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mSubMenuListener:Lcom/android/camera/widget/SettingsView$OnSubMenuOpenedListener;

    const-string v0, "MenuHandler"

    const-string v1, "initMenuHandler() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public releaseMenuHandler()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mUIHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mCameraThread:Lcom/android/camera/CameraThread;

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mCameraHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mResources:Landroid/content/res/Resources;

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mEffectManager:Lcom/android/camera/effect/EffectManager;

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mLayout:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mSettingsView:Lcom/android/camera/widget/SettingsView;

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mSubMenuListener:Lcom/android/camera/widget/SettingsView$OnSubMenuOpenedListener;

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mInflater:Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mImagePropertyView:Landroid/view/View;

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mImagePropertyContent:Lcom/android/camera/rotate/RotateLinearLayout;

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mTitleText_Brightness:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mTitleText_Contrast:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mTitleText_Saturation:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mTitleText_Sharpness:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mContentText_Brightness:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mContentText_Contrast:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mContentText_Saturation:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mContentText_Sharpness:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mContentLayout_Brightness:Landroid/view/View;

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mContentLayout_Contrast:Landroid/view/View;

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mContentLayout_Saturation:Landroid/view/View;

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mContentValue_Brightness:Landroid/view/View;

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mContentValue_Contrast:Landroid/view/View;

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mContentValue_Saturation:Landroid/view/View;

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mContentValue_Sharpness:Landroid/view/View;

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mContentDivider_Brightness:Landroid/view/View;

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mContentDivider_Contrast:Landroid/view/View;

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mContentDivider_Saturation:Landroid/view/View;

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mTitleSpace:Landroid/view/View;

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mEdgeSpace_Brightness:Landroid/view/View;

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mLineSpace_Brightness:Landroid/view/View;

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mLineSpace_Contrast:Landroid/view/View;

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mLineSpace_Saturation:Landroid/view/View;

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mEdgeSpace_Sharpness:Landroid/view/View;

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mSettingsView:Lcom/android/camera/widget/SettingsView;

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mBrightnessWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mContrastWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mSaturationWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mSharpnessWheel:Lcom/android/camera/widget/LeveledScrollWheel;

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureView:Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureValues:[Ljava/lang/String;

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureOptions:[Ljava/lang/String;

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureTag_face:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mAutoCaptureTag_timer:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

    invoke-virtual {v0}, Lcom/android/camera/OnScreenPreference;->releaseOnScreenPreference()V

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

    :cond_0
    return-void
.end method

.method public resetMenuHandler()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isPanelVisible()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "MenuHandler"

    const-string v1, "mPanel isn\'t visible, resetTabView when it is reset to visible"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

    invoke-virtual {v0}, Lcom/android/camera/OnScreenPreference;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-direct {p0}, Lcom/android/camera/MenuHandler;->createSettingsView()V

    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->is3DMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/MenuHandler;->createResolutionView()V

    goto :goto_0
.end method

.method public updateDisableItems()V
    .locals 7

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/camera/MenuHandler;->mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/camera/MenuHandler;->mEffectManager:Lcom/android/camera/effect/EffectManager;

    invoke-virtual {v4}, Lcom/android/camera/effect/EffectManager;->getCurrentScene()Lcom/android/camera/effect/EffectBase;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v4, v0, Lcom/android/camera/effect/AutoScene;

    if-eqz v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/android/camera/MenuHandler;->mEffectManager:Lcom/android/camera/effect/EffectManager;

    invoke-virtual {v4}, Lcom/android/camera/effect/EffectManager;->getCurrentEffect()Lcom/android/camera/effect/EffectBase;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectBase;->getDisabledImageSettings()I

    move-result v1

    :goto_0
    iget-object v4, p0, Lcom/android/camera/MenuHandler;->mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

    invoke-virtual {v4, v1}, Lcom/android/camera/OnScreenPreference;->checkImageSettings(I)Z

    move-result v2

    iget-object v5, p0, Lcom/android/camera/MenuHandler;->mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

    const-string v6, "pref_camera_self_timer"

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectBase;->isSelfTimerSupported()Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_2
    iget-object v4, p0, Lcom/android/camera/MenuHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v4}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v4

    if-nez v4, :cond_5

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v5, v6, v4}, Lcom/android/camera/OnScreenPreference;->enablePreference(Ljava/lang/String;Z)Z

    move-result v4

    or-int/2addr v2, v4

    iget-object v4, p0, Lcom/android/camera/MenuHandler;->mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

    invoke-virtual {v4, v3}, Lcom/android/camera/OnScreenPreference;->updateFaceDetection(Z)Z

    move-result v3

    or-int/2addr v2, v3

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/android/camera/MenuHandler;->updateSettingsView()V

    :cond_3
    return-void

    :cond_4
    move v1, v3

    goto :goto_0

    :cond_5
    move v4, v3

    goto :goto_1
.end method

.method public updateLevelBar(Lcom/android/camera/widget/LeveledScrollWheel;Ljava/lang/String;I)V
    .locals 8

    const/4 v4, 0x0

    add-int/lit8 v3, p3, -0x1

    add-int v6, v4, v3

    div-int/lit8 v2, v6, 0x2

    move v1, v2

    :try_start_0
    iget-object v6, p0, Lcom/android/camera/MenuHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-static {v6, p2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    if-ge v1, v4, :cond_1

    move v1, v4

    :cond_0
    :goto_1
    const/4 v6, 0x0

    invoke-virtual {p1, v1, v6}, Lcom/android/camera/widget/LeveledScrollWheel;->scrollToLevel(IZ)Z

    return-void

    :catch_0
    move-exception v0

    const-string v6, "MenuHandler"

    const-string v7, "updateLevelBar - get level failed!!"

    invoke-static {v6, v7, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v1, v2

    goto :goto_0

    :cond_1
    if-le v1, v3, :cond_0

    move v1, v3

    goto :goto_1
.end method

.method public updateOrientation(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

    invoke-virtual {v0, p1}, Lcom/android/camera/OnScreenPreference;->rotateDialog(I)V

    :cond_0
    return-void
.end method

.method public final updateResolutionList()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

    invoke-virtual {v0}, Lcom/android/camera/OnScreenPreference;->setupResolutionList()V

    :cond_0
    return-void
.end method

.method public final updateStorageLocationItem()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

    if-nez v0, :cond_1

    const-string v0, "MenuHandler"

    const-string v1, "No OnScreenPreference instance"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

    invoke-virtual {v0}, Lcom/android/camera/OnScreenPreference;->checkStorageLocation()V

    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mSettingsView:Lcom/android/camera/widget/SettingsView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mSettingsView:Lcom/android/camera/widget/SettingsView;

    invoke-virtual {v0}, Lcom/android/camera/widget/SettingsView;->notifyMainLayoutChanged()V

    goto :goto_0
.end method
