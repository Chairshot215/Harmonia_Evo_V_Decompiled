.class public Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.super Lcom/android/systemui/statusbar/StatusBar;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TouchOutsideListener;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyTicker;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationClicker;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ExpandedDialog;
    }
.end annotation


# static fields
.field public static final ACTION_STATUSBAR_START:Ljava/lang/String; = "com.android.internal.policy.statusbar.START"

.field static final ANIM_FRAME_DURATION:I = 0x10

.field public static final CHATTY:Z = false

.field private static final CLOSE_PANEL_WHEN_EMPTIED:Z = false

.field public static CmBrightness:I = 0x0

.field public static final DEBUG:Z = false

.field public static final DUMPTRUCK:Z = true

.field static final EXPANDED_FULL_OPEN:I = -0x2711

.field static final EXPANDED_LEAVE_ALONE:I = -0x2710

.field private static final HTC_NO_SETTING_BUTTON:Z = false

.field private static final INTRUDER_ALERT_DECAY_MS:I = 0x2710

.field private static final MSG_ANIMATE:I = 0x64

.field private static final MSG_ANIMATE_REVEAL:I = 0x65

.field private static final MSG_CLOSE_NOTIFICATION_PANEL:I = 0x3e9

.field private static final MSG_CLOSE_RECENTS_PANEL:I = 0x3fd

.field private static final MSG_HIDE_INTRUDER:I = 0x3eb

.field private static final MSG_OPEN_NOTIFICATION_PANEL:I = 0x3e8

.field private static final MSG_OPEN_RECENTS_PANEL:I = 0x3fc

.field private static final MSG_SHOW_INTRUDER:I = 0x3ea

.field private static final MSG_UPDATE_CLOCK:I = 0x3fe

.field private static final ONTOP_NOTIFICATION_FLAG_MASK:I = 0xfe0000

#the value of this static final field might be set in the static constructor
.field private static final ONTOP_PRIORITY_BASE:I = 0x0

.field public static final SPEW:Z = false

.field static final TAG:Ljava/lang/String; = "PhoneStatusBar"

.field public static mRecentAppStyle:I

.field public static mRecentAppUseIcons:I


# instance fields
.field ObserverSetted:I

.field bgColor:I

.field private glowAnimationGreen:Ljava/lang/Runnable;

.field private glowAnimationGreenReverse:Ljava/lang/Runnable;

.field private glowAnimationGreenStatic:Ljava/lang/Runnable;

.field private glowAnimationRed:Ljava/lang/Runnable;

.field private glowAnimationRedReverse:Ljava/lang/Runnable;

.field private glowAnimationRedStatic:Ljava/lang/Runnable;

.field mAbsPos:[I

.field mAnimAccel:F

.field mAnimLastTime:J

.field mAnimVel:F

.field mAnimY:F

.field mAnimating:Z

.field mAnimatingReveal:Z

.field private mAreThereNotification:Z

.field mAutoBrightness:Z

.field mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallTime:Landroid/widget/TextView;

.field private mCarrierLabel:Lcom/android/systemui/statusbar/phone/CarrierLabel;

.field mCenterClock:Landroid/widget/LinearLayout;

.field mClearButton:Landroid/widget/TextView;

.field private mClearButtonListener:Landroid/view/View$OnClickListener;

.field mCloseView:Lcom/android/systemui/statusbar/phone/CloseDragHandle;

.field private mCollapseAccelPx:F

.field private mCollapseMinDisplayFraction:F

.field public mContext:Landroid/content/Context;

.field mCurAnimationTime:J

.field mDateView:Lcom/android/systemui/statusbar/policy/DateView;

.field private mDisableGc:Z

.field mDisabled:I

.field mDisplay:Landroid/view/Display;

.field mDisplayMetrics:Landroid/util/DisplayMetrics;

.field mEdgeBorder:I

.field private mExpandAccelPx:F

.field private mExpandMinDisplayFraction:F

.field private mExpandViewButton:Landroid/widget/TextView;

.field private mExpandViewButtonListener:Landroid/view/View$OnClickListener;

.field mExpanded:Z

.field mExpandedContents:Landroid/view/View;

.field mExpandedDialog:Landroid/app/Dialog;

.field private mExpandedPage:Landroid/widget/LinearLayout;

.field mExpandedParams:Landroid/view/WindowManager$LayoutParams;

.field mExpandedView:Lcom/android/systemui/statusbar/phone/ExpandedView;

.field mExpandedVisible:Z

.field private mFlingCollapseMinVelocityPx:F

.field private mFlingExpandMinVelocityPx:F

.field private mFlingGestureMaxXVelocityPx:F

.field mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field mGlowViewGreen:Landroid/widget/ImageView;

.field mGlowViewRed:Landroid/widget/ImageView;

.field mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

.field public mHandlerInt:Landroid/os/Handler;

.field mIconHPadding:I

.field mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

.field mIconSize:I

.field mIcons:Landroid/widget/LinearLayout;

.field private mIntruderAlertView:Landroid/view/View;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field mLatest:Lcom/android/systemui/statusbar/NotificationData;

.field mLatestItems:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

.field mLatestTitle:Landroid/widget/TextView;

.field mLinger:I

.field mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

.field mMoreIcon:Landroid/view/View;

.field mNaturalBarHeight:I

.field private mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

.field private mNetworkTextView:Landroid/widget/TextView;

.field private mNetworkTextViewVisible:I

.field mNoNotificationsTitle:Landroid/widget/TextView;

.field mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

.field mNotificationLinearLayout:Landroid/view/View;

.field private mOnTopItemCount:I

.field mOngoing:Lcom/android/systemui/statusbar/NotificationData;

.field mOngoingItems:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

.field private mPanelSlightlyVisible:Z

.field mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

.field mPixelFormat:I

.field mPlmnLabel:Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;

.field mPositionTmp:[I

.field mPostCollapseCleanup:Ljava/lang/Runnable;

.field mQueueLock:Ljava/lang/Object;

.field private mQuickSettingButton:Landroid/widget/TextView;

.field private mQuickSettingButtonListener:Landroid/view/View$OnClickListener;

.field private mQuickSettings:Lcom/android/systemui/statusbar/preference/QuickSettings;

.field private mQuickSettingsHandler:Landroid/os/Handler;

.field mRecentAppTogle:Landroid/widget/ImageView;

.field private mRecentAppTogleListener:Landroid/view/View$OnClickListener;

.field private mRecentAppTogleLongListener:Landroid/view/View$OnLongClickListener;

.field private mRecentApps:Lcom/android/systemui/statusbar/phone/RecentApps;

.field private mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

.field private mRecentsClickListener:Landroid/view/View$OnClickListener;

.field private mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

.field public mResolver:Landroid/content/ContentResolver;

.field mScrollView:Landroid/widget/ScrollView;

.field private mSelfCollapseVelocityPx:F

.field private mSelfExpandVelocityPx:F

.field mSettingsButton:Landroid/view/View;

.field private mSettingsButtonListener:Landroid/view/View$OnClickListener;

.field mStartTracing:Ljava/lang/Runnable;

.field private mStatusBarReady:Z

.field private mStatusBarTitle:Landroid/widget/LinearLayout;

.field mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

.field private mStatusBarViewPressed:Z

.field mStatusIcons:Landroid/widget/LinearLayout;

.field mStopTracing:Ljava/lang/Runnable;

.field private mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

.field private mSwitchButtons:Landroid/widget/LinearLayout;

.field mSystemUiVisibility:I

.field private mTicker:Lcom/android/systemui/statusbar/phone/Ticker;

.field private mTickerView:Landroid/view/View;

.field private mTicking:Z

.field mTickingDoneListener:Landroid/view/animation/Animation$AnimationListener;

.field private mTouchable:Z

.field mTracking:Z

.field mTrackingParams:Landroid/view/WindowManager$LayoutParams;

.field mTrackingPosition:I

.field mTrackingView:Lcom/android/systemui/statusbar/phone/TrackingView;

.field mVelocityTracker:Landroid/view/VelocityTracker;

.field mViewDelta:I

.field mWindowManager:Landroid/view/IWindowManager;

.field private m_baseTime:J

.field private m_callTimeIcon:I

.field private m_startTime:J

.field private makeStatusBarViewExtra:Ljava/lang/Runnable;

.field private updateCallTimer:Ljava/lang/Runnable;

.field private updateTimer:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/android/internal/statusbar/StatusBarNotification;->PRIORITY_SYSTEM:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ONTOP_PRIORITY_BASE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBar;-><init>()V

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNaturalBarHeight:I

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconSize:I

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconHPadding:I

    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    invoke-direct {v0, p0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/statusbar/phone/PhoneStatusBar$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQueueLock:Ljava/lang/Object;

    new-array v0, v4, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPositionTmp:[I

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimatingReveal:Z

    new-array v0, v4, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAbsPos:[I

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPostCollapseCleanup:Ljava/lang/Runnable;

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    new-instance v0, Lcom/android/systemui/statusbar/NotificationData;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/NotificationData;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoing:Lcom/android/systemui/statusbar/NotificationData;

    new-instance v0, Lcom/android/systemui/statusbar/NotificationData;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/NotificationData;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOnTopItemCount:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkTextViewVisible:I

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAreThereNotification:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarReady:Z

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarViewPressed:Z

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->m_callTimeIcon:I

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisableGc:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTouchable:Z

    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$2;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$3;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickingDoneListener:Landroid/view/animation/Animation$AnimationListener;

    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButtonListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$21;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$21;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentAppTogleListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$22;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$22;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentAppTogleLongListener:Landroid/view/View$OnLongClickListener;

    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButtonListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$8;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStartTracing:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$9;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$9;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStopTracing:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->makeStatusBarViewExtra:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$11;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$11;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateTimer:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$12;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$12;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandViewButtonListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$13;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$13;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettingButtonListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$14;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$14;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->glowAnimationGreen:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$15;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$15;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->glowAnimationGreenReverse:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$16;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$16;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->glowAnimationGreenStatic:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$17;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$17;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->glowAnimationRed:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$18;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$18;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->glowAnimationRedReverse:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$19;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$19;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->glowAnimationRedStatic:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateCallTimer:Ljava/lang/Runnable;

    const/4 v4, -0x2

    iput v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->bgColor:I

    const/4 v4, 0x0

    sput v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->CmBrightness:I

    return-void
.end method

.method private SlideBrighntessCtrl(Landroid/view/MotionEvent;)V
    .locals 9

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateAutoBrightness()V

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v6

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAutoBrightness:Z

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v7, 0x3e8

    invoke-virtual {v6, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x4248

    cmpg-float v6, v5, v6

    if-gez v6, :cond_2

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLinger:I

    const/16 v7, 0x14

    if-le v6, v7, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    div-float v6, v4, v1

    sget v7, Landroid/os/Power;->BRIGHTNESS_ON:I

    int-to-float v7, v7

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v2

    sget v6, Landroid/os/Power;->BRIGHTNESS_ON:I

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v6, 0x1

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    :try_start_0
    const-string v6, "power"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3, v2}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "screen_brightness"

    invoke-static {v6, v7, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v6, "JanIsAwesome"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Setting Brightness failed: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLinger:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLinger:I

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLinger:I

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setIntruderAlertVisibility(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkTextViewVisible:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/internal/statusbar/IStatusBarService;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->disableGcForExternalAlloc(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarReady:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarReady:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->repositionNavigationBar()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/preference/QuickSettings;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettings:Lcom/android/systemui/statusbar/preference/QuickSettings;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/statusbar/preference/QuickSettings;)Lcom/android/systemui/statusbar/preference/QuickSettings;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettings:Lcom/android/systemui/statusbar/preference/QuickSettings;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAreThereNotification:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateTimer:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/RecentApps;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentApps:Lcom/android/systemui/statusbar/phone/RecentApps;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/statusbar/phone/RecentApps;)Lcom/android/systemui/statusbar/phone/RecentApps;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentApps:Lcom/android/systemui/statusbar/phone/RecentApps;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSwitchButtons:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSwitchButtons:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/recent/RecentsPanelView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandViewButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandViewButton:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$201(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandViewButtonListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettingButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettingButton:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettingButtonListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedPage:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;FFI)Landroid/view/animation/AlphaAnimation;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->loadGlowAnim(FFI)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->glowAnimationGreenReverse:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->glowAnimationGreenStatic:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->glowAnimationGreen:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->glowAnimationRedReverse:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateClock()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->glowAnimationRedStatic:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$301(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->glowAnimationRed:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->m_startTime:J

    return-wide v0
.end method

.method static synthetic access$3300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->m_baseTime:J

    return-wide v0
.end method

.method static synthetic access$3400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCallTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/internal/statusbar/IStatusBarService;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setTouchable(Z)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicking:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method private addIntruderView()V
    .locals 9

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getStatusBarHeight()I

    move-result v6

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/16 v3, 0x7e1

    const v4, 0x820328

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 v1, 0x37

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-double v1, v1

    int-to-double v3, v6

    const-wide/high16 v7, 0x3ff8

    mul-double/2addr v3, v7

    add-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const-string v1, "IntruderAlert"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    const v1, 0x7f0c000a

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIntruderAlertView:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private addNavigationBar()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->prepareNavigationBarView()V

    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNavigationBarLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private disableGcForExternalAlloc(Z)V
    .locals 2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisableGc:Z

    if-eq v1, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisableGc:Z

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldalvik/system/VMRuntime;->disableGcForExternalAlloc(Z)V

    :cond_0
    return-void
.end method

.method private getNavigationBarLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 6

    const/4 v1, -0x1

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7e3

    const v4, 0x4800068

    move v2, v1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplay:Landroid/view/Display;

    invoke-static {v1}, Landroid/app/ActivityManager;->isHighEndGfx(Landroid/view/Display;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x100

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_0
    const-string v1, "NavigationBar"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    return-object v0
.end method

.method private inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z
    .locals 37

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v6, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v0, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v28, v0

    if-nez v28, :cond_0

    const/4 v6, 0x0

    :goto_0
    return v6

    :cond_0
    move-object/from16 v0, v31

    iget-object v6, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v6, v6, Landroid/app/Notification;->buttonAction:Landroid/app/NotificationButtonAction;

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    move-object/from16 v0, v31

    iget-object v8, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v8, v8, Landroid/app/Notification;->buttonAction:Landroid/app/NotificationButtonAction;

    invoke-virtual {v8}, Landroid/app/NotificationButtonAction;->isEnable()Z

    move-result v8

    if-ne v6, v8, :cond_2

    const/16 v16, 0x0

    :goto_1
    const/4 v6, 0x3

    move/from16 v0, v16

    if-ge v0, v6, :cond_2

    move-object/from16 v0, v31

    iget-object v6, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v6, v6, Landroid/app/Notification;->buttonAction:Landroid/app/NotificationButtonAction;

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/app/NotificationButtonAction;->isEnable(I)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object/from16 v0, v31

    iget-object v6, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v6, v6, Landroid/app/Notification;->buttonAction:Landroid/app/NotificationButtonAction;

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/app/NotificationButtonAction;->getViewId(I)I

    move-result v18

    move-object/from16 v0, v31

    iget-object v6, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v6, v6, Landroid/app/Notification;->buttonAction:Landroid/app/NotificationButtonAction;

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/app/NotificationButtonAction;->getPendingIntent(I)Landroid/app/PendingIntent;

    move-result-object v22

    if-eqz v18, :cond_1

    if-eqz v22, :cond_1

    move-object/from16 v0, v28

    move/from16 v1, v18

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    :cond_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v8, "layout_inflater"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/view/LayoutInflater;

    const v6, 0x7f03001a

    const/4 v8, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v6, v1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotificationVetoButton(Landroid/view/View;Lcom/android/internal/statusbar/StatusBarNotification;)Landroid/view/View;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v8, 0x7f080066

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const v6, 0x7f0e00ac

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/ImageView;

    move-object/from16 v0, v31

    iget-object v6, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v6, v6, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_3

    move-object/from16 v0, v31

    iget-object v6, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v6, v6, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v31

    iget-object v6, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v6, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_2
    move-object/from16 v0, v31

    iget-object v6, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v6, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    const v6, 0x7f0e00a0

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    const/high16 v6, 0x6

    invoke-virtual {v11, v6}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    move-object/from16 v0, v31

    iget-object v6, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v7, v6, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v7, :cond_4

    new-instance v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationClicker;

    move-object/from16 v0, v31

    iget-object v8, v0, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    move-object/from16 v0, v31

    iget-object v9, v0, Lcom/android/internal/statusbar/StatusBarNotification;->tag:Ljava/lang/String;

    move-object/from16 v0, v31

    iget v10, v0, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationClicker;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v11, v5}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_3
    const/4 v15, 0x0

    const/4 v14, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v0, v28

    invoke-virtual {v0, v6, v11}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    :goto_4
    if-nez v15, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    iget-object v8, v0, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "/0x"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v31

    iget v8, v0, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v6, "PhoneStatusBar"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "couldn\'t inflate view for notification "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_3
    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    const/4 v8, 0x0

    iput v8, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v6, 0x4

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_4
    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v6, 0x0

    invoke-virtual {v11, v6}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    :catch_0
    move-exception v13

    move-object v14, v13

    goto :goto_4

    :cond_5
    invoke-virtual {v11, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v6, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v6, 0x1020006

    invoke-virtual {v11, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageView;->getVisibility()I

    move-result v6

    const/4 v8, 0x4

    if-ne v6, v8, :cond_6

    if-eqz v17, :cond_6

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v25

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v27

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v26

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v24

    const v6, 0x7f020254

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, v17

    move/from16 v1, v25

    move/from16 v2, v27

    move/from16 v3, v26

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    :cond_6
    const v6, 0x1020016

    invoke-virtual {v15, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/TextView;

    const v6, 0x1020064

    invoke-virtual {v15, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v34

    check-cast v34, Landroid/widget/TextView;

    const v6, 0x1020015

    invoke-virtual {v15, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/TextView;

    const v6, 0x1020046

    invoke-virtual {v15, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/TextView;

    const v6, 0x102031a

    invoke-virtual {v15, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    if-eqz v35, :cond_7

    const/4 v6, 0x0

    const v8, 0x1050064

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    move-object/from16 v0, v35

    invoke-virtual {v0, v6, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    const v6, 0x7f06000a

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_7
    if-eqz v34, :cond_8

    const/4 v6, 0x0

    const v8, 0x105006a

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    move-object/from16 v0, v34

    invoke-virtual {v0, v6, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    const v6, 0x7f06000b

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_8
    if-eqz v33, :cond_9

    const/4 v6, 0x0

    const v8, 0x105006a

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    move-object/from16 v0, v33

    invoke-virtual {v0, v6, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    const v6, 0x7f06000b

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_9
    if-eqz v32, :cond_a

    const/4 v6, 0x0

    const v8, 0x105006a

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    move-object/from16 v0, v32

    invoke-virtual {v0, v6, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    const v6, 0x7f06000b

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_a
    if-eqz v21, :cond_b

    const/4 v6, 0x0

    const v8, 0x105006a

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    move-object/from16 v0, v21

    invoke-virtual {v0, v6, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    const v6, 0x7f06000b

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v11}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->applyLegacyRowBackground(Lcom/android/internal/statusbar/StatusBarNotification;Landroid/view/View;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    move-object/from16 v0, p1

    iput-object v11, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->content:Landroid/view/View;

    move-object/from16 v0, p1

    iput-object v15, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->largeIcon:Landroid/widget/ImageView;

    const/4 v6, 0x1

    goto/16 :goto_0
.end method

.method private loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
    return-object v0
.end method

.method private loadGlowAnim(FFI)Landroid/view/animation/AlphaAnimation;
    .locals 3

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    invoke-virtual {v0, p3}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    return-object v0
.end method

.method private loadNotificationShade()V
    .locals 20

    const/4 v2, 0x0

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoing:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v2

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v2, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoing:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v18, v0

    sub-int v19, v2, v6

    add-int/lit8 v19, v19, -0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v5

    iget-object v12, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    iget-object v4, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->content:Landroid/view/View;

    iget-object v8, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    iget-object v0, v8, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v18, v0

    const/high16 v19, 0xfe

    and-int v9, v18, v19

    if-eqz v9, :cond_2

    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v18

    if-nez v18, :cond_1

    const/4 v10, 0x0

    sparse-switch v9, :sswitch_data_0

    :goto_1
    const v18, 0x106000d

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    if-eqz v10, :cond_0

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v10, v12, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOnTopItemCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOnTopItemCount:I

    :cond_1
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedView:Lcom/android/systemui/statusbar/phone/ExpandedView;

    move-object/from16 v18, v0

    const v19, 0x7f0e001f

    invoke-virtual/range {v18 .. v19}, Lcom/android/systemui/statusbar/phone/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    goto :goto_1

    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedView:Lcom/android/systemui/statusbar/phone/ExpandedView;

    move-object/from16 v18, v0

    const v19, 0x7f0e0020

    invoke-virtual/range {v18 .. v19}, Lcom/android/systemui/statusbar/phone/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    goto :goto_1

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedView:Lcom/android/systemui/statusbar/phone/ExpandedView;

    move-object/from16 v18, v0

    const v19, 0x7f0e0021

    invoke-virtual/range {v18 .. v19}, Lcom/android/systemui/statusbar/phone/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    goto :goto_1

    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedView:Lcom/android/systemui/statusbar/phone/ExpandedView;

    move-object/from16 v18, v0

    const v19, 0x7f0e0022

    invoke-virtual/range {v18 .. v19}, Lcom/android/systemui/statusbar/phone/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    goto :goto_1

    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedView:Lcom/android/systemui/statusbar/phone/ExpandedView;

    move-object/from16 v18, v0

    const v19, 0x7f0e0023

    invoke-virtual/range {v18 .. v19}, Lcom/android/systemui/statusbar/phone/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    goto :goto_1

    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedView:Lcom/android/systemui/statusbar/phone/ExpandedView;

    move-object/from16 v18, v0

    const v19, 0x7f0e0024

    invoke-virtual/range {v18 .. v19}, Lcom/android/systemui/statusbar/phone/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    goto/16 :goto_1

    :cond_2
    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingItems:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildCount()I

    move-result v18

    move/from16 v0, v18

    if-ge v6, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingItems:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_4

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingItems:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->removeView(Landroid/view/View;)V

    goto :goto_4

    :cond_6
    const/4 v6, 0x0

    :goto_5
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v6, v0, :cond_8

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/View;

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v18

    if-nez v18, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingItems:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v6}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->addView(Landroid/view/View;I)V

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_8
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v2

    const/4 v6, 0x0

    :goto_6
    if-ge v6, v2, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v18, v0

    sub-int v19, v2, v6

    add-int/lit8 v19, v19, -0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v12, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_9
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestItems:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildCount()I

    move-result v18

    move/from16 v0, v18

    if-ge v6, v0, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestItems:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_a

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_b
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestItems:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->removeView(Landroid/view/View;)V

    goto :goto_8

    :cond_c
    const/4 v6, 0x0

    :goto_9
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v6, v0, :cond_e

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/View;

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v18

    if-nez v18, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestItems:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v6}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->addView(Landroid/view/View;I)V

    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_e
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x20000 -> :sswitch_0
        0x40000 -> :sswitch_1
        0x80000 -> :sswitch_2
        0x100000 -> :sswitch_3
        0x200000 -> :sswitch_4
        0x400000 -> :sswitch_5
    .end sparse-switch
.end method

.method private makeExpandedVisible()V
    .locals 4

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettings:Lcom/android/systemui/statusbar/preference/QuickSettings;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/preference/QuickSettings;->onStart()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->QuickQuicksettings()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->toggleRecentAppsVisibility1()V

    return-void

    :cond_1
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->visibilityChanged(Z)V

    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_RECENT_APP:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentApps:Lcom/android/systemui/statusbar/phone/RecentApps;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/RecentApps;->setRecentApplications()V

    :cond_2
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_QUICK_SETTINGS:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettings:Lcom/android/systemui/statusbar/preference/QuickSettings;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/preference/QuickSettings;->onStart()V

    :cond_3
    const/16 v0, -0x2710

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedView:Lcom/android/systemui/statusbar/phone/ExpandedView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ExpandedView;->requestFocus(I)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingView:Lcom/android/systemui/statusbar/phone/TrackingView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/TrackingView;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicking:Z

    if-nez v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tweaks_statusbar_hide_date"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_0

    const/high16 v0, 0x10a

    invoke-virtual {p0, v3, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setDateViewVisibility(ZI)V

    const/4 v1, 0x0

    const v2, 0x10a0001

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setNotificationIconVisibility(ZI)V

    goto :goto_0
.end method

.method private notifyUiVisibilityChanged()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWindowManager:Landroid/view/IWindowManager;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->statusBarVisibilityChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private prepareNavigationBarView()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->reorient()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private reloadAllNotificationIcons()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IconMerger;->removeAllViews()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotificationIcons()V

    goto :goto_0
.end method

.method private repositionNavigationBar()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->prepareNavigationBarView()V

    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNavigationBarLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/WindowManagerImpl;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private setAreThereNotifications()V
    .locals 15

    const/16 v11, 0x8

    const/4 v10, 0x0

    const/high16 v9, 0x3f80

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoing:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/NotificationData;->hasVisibleItems()Z

    move-result v2

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/NotificationData;->hasVisibleItems()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/NotificationData;->hasClearableItems()Z

    move-result v12

    if-eqz v12, :cond_4

    move v0, v7

    :goto_0
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->isShown()Z

    move-result v12

    if-eqz v12, :cond_7

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getAlpha()F

    move-result v12

    cmpl-float v12, v12, v9

    if-nez v12, :cond_5

    move v12, v7

    :goto_1
    if-eq v0, v12, :cond_0

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/widget/TextView;

    const-string v13, "alpha"

    new-array v14, v7, [F

    if-eqz v0, :cond_6

    :goto_2
    aput v9, v14, v8

    invoke-static {v12, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    const-wide/16 v12, 0xfa

    invoke-virtual {v9, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    :goto_3
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/widget/TextView;

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_9

    move v9, v8

    :goto_4
    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setVisibility(I)V

    if-nez v2, :cond_1

    if-eqz v1, :cond_a

    :cond_1
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNoNotificationsTitle:Landroid/widget/TextView;

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setVisibility(I)V

    sget-boolean v9, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_ATT_ONS:Z

    if-eqz v9, :cond_2

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAreThereNotification:Z

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setNetworkVisibility(Z)V

    :cond_2
    :goto_5
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->getPaddingLeft()I

    move-result v4

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->getPaddingTop()I

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->getPaddingRight()I

    move-result v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->getPaddingBottom()I

    move-result v3

    if-eqz v0, :cond_b

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    const-string v9, "status_bar_titlebar_left_rest"

    const v10, 0x7f020235

    invoke-virtual {v8, v9, v10}, Lcom/android/systemui/statusbar/StatusBarStyleable;->getStyleableDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    invoke-virtual {v7, v4, v6, v5, v3}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->setPadding(IIII)V

    :cond_3
    :goto_6
    return-void

    :cond_4
    move v0, v8

    goto :goto_0

    :cond_5
    move v12, v8

    goto :goto_1

    :cond_6
    move v9, v10

    goto :goto_2

    :cond_7
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    :goto_7
    invoke-virtual {v12, v9}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_3

    :cond_8
    move v9, v10

    goto :goto_7

    :cond_9
    move v9, v11

    goto :goto_4

    :cond_a
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNoNotificationsTitle:Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setVisibility(I)V

    sget-boolean v9, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_ATT_ONS:Z

    if-eqz v9, :cond_2

    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAreThereNotification:Z

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateTimer:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setNetworkVisibility(Z)V

    goto :goto_5

    :cond_b
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    invoke-virtual {v7, v4, v6, v5, v3}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->setPadding(IIII)V

    goto :goto_6
.end method

.method private setIntruderAlertVisibility(Z)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIntruderAlertView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private setTouchable(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTouchable:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTouchable:Z

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingView:Lcom/android/systemui/statusbar/phone/TrackingView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/view/WindowManagerImpl;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingView:Lcom/android/systemui/statusbar/phone/TrackingView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/view/WindowManagerImpl;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method private tick(Lcom/android/internal/statusbar/StatusBarNotification;)V
    .locals 2

    iget-object v0, p1, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    const/high16 v1, 0xa

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicker:Lcom/android/systemui/statusbar/phone/Ticker;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/Ticker;->addEntry(Lcom/android/internal/statusbar/StatusBarNotification;)V

    :cond_0
    return-void
.end method

.method private trackMovement(Landroid/view/MotionEvent;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float v0, v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float v1, v2, v3

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    neg-float v2, v0

    neg-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    return-void
.end method

.method private updateClock()V
    .locals 17

    const-string v5, ""

    const-string v1, "EE, MMM dd, yyyy"

    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "date_format"

    invoke-static {v13, v14}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoing:Lcom/android/systemui/statusbar/NotificationData;

    monitor-enter v14

    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoing:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v2

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v2, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoing:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v13, v6}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v8

    iget-object v7, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    iget-object v13, v7, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-wide v11, v13, Landroid/app/Notification;->when:J

    iget-object v13, v7, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v9, v13, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v9}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v13

    const v15, 0x1090098

    if-eq v13, v15, :cond_0

    invoke-virtual {v9}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v13

    const v15, 0x1090099

    if-eq v13, v15, :cond_0

    invoke-virtual {v9}, Landroid/widget/RemoteViews;->getLayoutId()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v13

    const v15, 0x10900c9

    if-ne v13, v15, :cond_1

    :cond_0
    const-wide/16 v15, 0x0

    cmp-long v13, v15, v11

    if-eqz v13, :cond_1

    :try_start_2
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v11, v12}, Ljava/util/Date;-><init>(J)V

    invoke-static {v11, v12}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v13

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v13}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    :goto_2
    const v13, 0x1020064

    invoke-virtual {v9, v13, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v15, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->content:Landroid/view/View;

    invoke-virtual {v9, v13, v15}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :catch_0
    move-exception v4

    const-string v13, "PhoneStatusBar"

    const-string v14, "can\'t get system current date format"

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v1

    goto :goto_0

    :cond_2
    :try_start_3
    invoke-static {v5, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v10

    goto :goto_2

    :catch_1
    move-exception v4

    :try_start_4
    const-string v13, "PhoneStatusBar"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "couldn\'t reapply views date time for package "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v9}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v13

    :cond_3
    :try_start_5
    monitor-exit v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    monitor-enter v14

    :try_start_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v2

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v2, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v13, v6}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v8

    iget-object v7, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    iget-object v13, v7, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-wide v11, v13, Landroid/app/Notification;->when:J

    iget-object v13, v7, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v9, v13, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v9}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v13

    const v15, 0x1090098

    if-eq v13, v15, :cond_4

    invoke-virtual {v9}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v13

    const v15, 0x1090099

    if-eq v13, v15, :cond_4

    invoke-virtual {v9}, Landroid/widget/RemoteViews;->getLayoutId()I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v13

    const v15, 0x10900c9

    if-ne v13, v15, :cond_5

    :cond_4
    const-wide/16 v15, 0x0

    cmp-long v13, v15, v11

    if-eqz v13, :cond_5

    :try_start_7
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v11, v12}, Ljava/util/Date;-><init>(J)V

    invoke-static {v11, v12}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v13

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v13}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    :goto_5
    const v13, 0x1020064

    invoke-virtual {v9, v13, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v15, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->content:Landroid/view/View;

    invoke-virtual {v9, v13, v15}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V

    :cond_5
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_6
    invoke-static {v5, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2

    move-result-object v10

    goto :goto_5

    :catch_2
    move-exception v4

    :try_start_8
    const-string v13, "PhoneStatusBar"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "couldn\'t reapply views date time for package "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v9}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :catchall_1
    move-exception v13

    monitor-exit v14
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v13

    :cond_7
    :try_start_9
    monitor-exit v14
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    return-void
.end method

.method private updateNotificationIcons()V
    .locals 11

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->loadNotificationShade()V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    iget v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconSize:I

    iget v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconHPadding:I

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    iget v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNaturalBarHeight:I

    invoke-direct {v4, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoing:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoing:Lcom/android/systemui/statusbar/NotificationData;

    sub-int v10, v0, v2

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v9

    iget-object v9, v9, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    sub-int v10, v0, v2

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v9

    iget-object v9, v9, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_2
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/IconMerger;->getChildCount()I

    move-result v9

    if-ge v2, v9, :cond_3

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v9, v2}, Lcom/android/systemui/statusbar/phone/IconMerger;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v9, v5}, Lcom/android/systemui/statusbar/phone/IconMerger;->removeView(Landroid/view/View;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_6

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/StatusBarIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-nez v9, :cond_5

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v9, v8, v2, v4}, Lcom/android/systemui/statusbar/phone/IconMerger;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    return-void
.end method

.method private updateSkinResource()V
    .locals 13

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateResources()V

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v6

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v7

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v5

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarTitle:Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    const-string v11, "status_bar_titlebar_rest"

    const v12, 0x7f020236

    invoke-virtual {v10, v11, v12}, Lcom/android/systemui/statusbar/StatusBarStyleable;->getStyleableDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v6, v8, v7, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->getPaddingLeft()I

    move-result v6

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->getPaddingTop()I

    move-result v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->getPaddingRight()I

    move-result v7

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->getPaddingBottom()I

    move-result v5

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    const-string v11, "status_bar_titlebar_left_rest"

    const v12, 0x7f020235

    invoke-virtual {v10, v11, v12}, Lcom/android/systemui/statusbar/StatusBarStyleable;->getStyleableDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    invoke-virtual {v9, v6, v8, v7, v5}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->setPadding(IIII)V

    :cond_0
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v6

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v7

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v5

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    const-string v11, "status_bar_titlebar_btn"

    const v12, 0x7f020232

    invoke-virtual {v10, v11, v12}, Lcom/android/systemui/statusbar/StatusBarStyleable;->getStyleableDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/widget/TextView;

    invoke-virtual {v9, v6, v8, v7, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentAppTogle:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v6

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentAppTogle:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentAppTogle:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v7

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentAppTogle:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v5

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentAppTogle:Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    const-string v11, "status_bar_titlebar_btn"

    const v12, 0x7f020232

    invoke-virtual {v10, v11, v12}, Lcom/android/systemui/statusbar/StatusBarStyleable;->getStyleableDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentAppTogle:Landroid/widget/ImageView;

    invoke-virtual {v9, v6, v8, v7, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCloseView:Lcom/android/systemui/statusbar/phone/CloseDragHandle;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/phone/CloseDragHandle;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    const-string v10, "status_bar_close_on"

    const v11, 0x7f020224

    invoke-virtual {v9, v10, v11}, Lcom/android/systemui/statusbar/StatusBarStyleable;->getStyleableDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoing:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoing:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v9, v1}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v4

    iget-object v9, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    iget-object v9, v9, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v9, v9, Landroid/app/Notification;->flags:I

    const/high16 v10, 0xfe

    and-int/2addr v9, v10

    if-eqz v9, :cond_1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->content:Landroid/view/View;

    check-cast v3, Lcom/android/systemui/statusbar/LatestItemView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/LatestItemView;->updateSkinResource()V

    goto :goto_1

    :cond_2
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_3

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v9, v1}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v4

    iget-object v3, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->content:Landroid/view/View;

    check-cast v3, Lcom/android/systemui/statusbar/LatestItemView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/LatestItemView;->updateSkinResource()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    sget-boolean v9, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_QUICK_SETTINGS:Z

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettings:Lcom/android/systemui/statusbar/preference/QuickSettings;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/preference/QuickSettings;->updateResources()V

    :cond_4
    return-void
.end method

.method public static viewInfo(Landroid/view/View;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public QuickQuicksettings()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tweaks_auto_quick_settings"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationData;->hasClearableItems()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedPage:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettings:Lcom/android/systemui/statusbar/preference/QuickSettings;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/preference/QuickSettings;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandViewButton:Landroid/widget/TextView;

    const v2, 0x7f0200cd

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandViewButton:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettingButton:Landroid/widget/TextView;

    const v2, 0x7f0200ce

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettingButton:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettings:Lcom/android/systemui/statusbar/preference/QuickSettings;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/preference/QuickSettings;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettings:Lcom/android/systemui/statusbar/preference/QuickSettings;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/preference/QuickSettings;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-static {}, Lcom/android/systemui/statusbar/phone/CarrierExtended;->setCustomText()V

    invoke-static {}, Lcom/android/systemui/statusbar/phone/CarrierExtended;->startRefresh()V

    return-void
.end method

.method public addIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 5

    new-instance v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)V

    invoke-virtual {v0, p4}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconSize:I

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconSize:I

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, p3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public addNotification(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)V
    .locals 12

    const/16 v11, 0x3eb

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->addNotificationViews(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v9

    if-nez v9, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v10, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->isTopActivityImmersive()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v10

    :goto_1
    if-eqz v10, :cond_2

    iget-object v0, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1

    const-string v0, "PhoneStatusBar"

    const-string v1, "Presenting high-priority notification in immersive activity"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIntruderAlertView:Landroid/view/View;

    const v1, 0x7f0e0013

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIntruderAlertView:Landroid/view/View;

    const v1, 0x7f0e0014

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStatusBarIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIcon(Landroid/content/Context;Lcom/android/internal/statusbar/StatusBarIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIntruderAlertView:Landroid/view/View;

    const v1, 0x7f0e0012

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationClicker;

    iget-object v1, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v2, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iget-object v3, p2, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    iget-object v4, p2, Lcom/android/internal/statusbar/StatusBarNotification;->tag:Ljava/lang/String;

    iget v5, p2, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationClicker;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v8, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    invoke-virtual {v0, v11}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v11, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setAreThereNotifications()V

    const/16 v0, -0x2710

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_3

    const-string v0, "PhoneStatusBar"

    const-string v1, "Notification has fullScreenIntent; sending fullScreenIntent"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    iget-object v0, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_3
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->tick(Lcom/android/internal/statusbar/StatusBarNotification;)V

    goto :goto_2

    :catch_1
    move-exception v0

    goto/16 :goto_1
.end method

.method addNotificationViews(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)Lcom/android/systemui/statusbar/StatusBarIconView;
    .locals 23

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/statusbar/StatusBarNotification;->isOngoing()Z

    move-result v12

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoing:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingItems:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    move-object/from16 v17, v0

    :goto_0
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->flags:I

    const/high16 v5, 0xfe

    and-int v16, v4, v5

    if-eqz v16, :cond_0

    sparse-switch v16, :sswitch_data_0

    :cond_0
    :goto_1
    new-instance v11, Lcom/android/systemui/statusbar/StatusBarIconView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    iget v6, v0, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    invoke-direct {v11, v4, v5, v6}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)V

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v11, v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v3, Lcom/android/internal/statusbar/StatusBarIcon;

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v5, v5, Landroid/app/Notification;->icon:I

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v6, v6, Landroid/app/Notification;->iconLevel:I

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v7, v7, Landroid/app/Notification;->number:I

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v8, v8, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;IIILjava/lang/CharSequence;)V

    invoke-virtual {v11, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t create icon: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->handleNotificationError(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Ljava/lang/String;)V

    const/4 v11, 0x0

    :cond_1
    :goto_2
    return-object v11

    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestItems:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    move-object/from16 v17, v0

    goto/16 :goto_0

    :sswitch_0
    sget v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ONTOP_PRIORITY_BASE:I

    add-int/lit8 v4, v4, 0x6

    move-object/from16 v0, p2

    iput v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->priority:I

    goto/16 :goto_1

    :sswitch_1
    sget v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ONTOP_PRIORITY_BASE:I

    add-int/lit8 v4, v4, 0x5

    move-object/from16 v0, p2

    iput v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->priority:I

    goto/16 :goto_1

    :sswitch_2
    sget v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ONTOP_PRIORITY_BASE:I

    add-int/lit8 v4, v4, 0x4

    move-object/from16 v0, p2

    iput v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->priority:I

    goto/16 :goto_1

    :sswitch_3
    sget v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ONTOP_PRIORITY_BASE:I

    add-int/lit8 v4, v4, 0x3

    move-object/from16 v0, p2

    iput v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->priority:I

    goto/16 :goto_1

    :sswitch_4
    sget v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ONTOP_PRIORITY_BASE:I

    add-int/lit8 v4, v4, 0x2

    move-object/from16 v0, p2

    iput v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->priority:I

    goto/16 :goto_1

    :sswitch_5
    sget v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ONTOP_PRIORITY_BASE:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p2

    iput v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->priority:I

    goto/16 :goto_1

    :cond_3
    new-instance v9, Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v9, v0, v1, v11}, Lcom/android/systemui/statusbar/NotificationData$Entry;-><init>(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v9, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z

    move-result v4

    if-nez v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t expand RemoteViews for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->handleNotificationError(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Ljava/lang/String;)V

    const/4 v11, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual {v13, v9}, Lcom/android/systemui/statusbar/NotificationData;->add(Lcom/android/systemui/statusbar/NotificationData$Entry;)I

    move-result v18

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotificationIcons()V

    sget-boolean v4, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_CALL_TIMER:Z

    if-eqz v4, :cond_1

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    const-string v5, "com.android.phone"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v5, "chronometer_basetime"

    const-wide/16 v6, -0x1

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->m_baseTime:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->m_baseTime:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    const/16 v4, 0x8

    invoke-virtual {v11, v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibility(I)V

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->icon:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->m_callTimeIcon:I

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->m_baseTime:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    const-wide/16 v6, 0x3c

    div-long v14, v4, v6

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->m_baseTime:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    const-wide/16 v6, 0x3c

    rem-long v21, v4, v6

    const-wide/16 v4, 0xa

    cmp-long v4, v14, v4

    if-gez v4, :cond_6

    const-string v19, "0"

    :goto_3
    const-wide/16 v4, 0xa

    cmp-long v4, v21, v4

    if-gez v4, :cond_7

    const-string v20, "0"

    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCallTime:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v21

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateCallTimer:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->m_startTime:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateCallTimer:Ljava/lang/Runnable;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIcon(Landroid/content/Context;Lcom/android/internal/statusbar/StatusBarIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    if-eqz v10, :cond_5

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconSize:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconSize:I

    invoke-virtual {v10, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCallTime:Landroid/widget/TextView;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v10, v5, v6, v7}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCallTime:Landroid/widget/TextView;

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCallTime:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_6
    const-string v19, ""

    goto/16 :goto_3

    :cond_7
    const-string v20, ""

    goto/16 :goto_4

    nop

    :sswitch_data_0
    .sparse-switch
        0x20000 -> :sswitch_0
        0x40000 -> :sswitch_1
        0x80000 -> :sswitch_2
        0x100000 -> :sswitch_3
        0x200000 -> :sswitch_4
        0x400000 -> :sswitch_5
    .end sparse-switch
.end method

.method public animateCollapse()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapse(Z)V

    return-void
.end method

.method public animateCollapse(Z)V
    .locals 1

    const/high16 v0, 0x3f80

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapse(ZF)V

    return-void
.end method

.method public animateCollapse(ZF)V
    .locals 4

    const/16 v3, 0x3fd

    const/4 v2, 0x1

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->sendEmptyMessage(I)Z

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    if-nez v1, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimating:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimY:F

    float-to-int v0, v1

    :goto_1
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpanded:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->prepareTracking(IZ)V

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSelfCollapseVelocityPx:F

    neg-float v1, v1

    mul-float/2addr v1, p2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->performFling(IFZ)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    add-int/lit8 v0, v1, -0x1

    goto :goto_1
.end method

.method public animateExpand()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarReady:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    const/high16 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpanded:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->prepareTracking(IZ)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSelfExpandVelocityPx:F

    invoke-virtual {p0, v2, v0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->performFling(IFZ)V

    goto :goto_0
.end method

.method applyLegacyRowBackground(Lcom/android/internal/statusbar/StatusBarNotification;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public disable(I)V
    .locals 11

    const/high16 v10, 0x100

    const/high16 v9, 0x80

    const/high16 v8, 0x8

    const/high16 v7, 0x2

    const/high16 v6, 0x1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    xor-int v0, p1, v2

    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disable: < "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int v4, p1, v6

    if-eqz v4, :cond_5

    const-string v4, "EXPAND"

    :goto_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int v4, v0, v6

    if-eqz v4, :cond_6

    const-string v4, "* "

    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int v4, p1, v7

    if-eqz v4, :cond_7

    const-string v4, "ICONS"

    :goto_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int v4, v0, v7

    if-eqz v4, :cond_8

    const-string v4, "* "

    :goto_3
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v4, 0x4

    and-int/2addr v4, p1

    if-eqz v4, :cond_9

    const-string v4, "ALERTS"

    :goto_4
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v4, 0x4

    and-int/2addr v4, v0

    if-eqz v4, :cond_a

    const-string v4, "* "

    :goto_5
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int v4, p1, v8

    if-eqz v4, :cond_b

    const-string v4, "TICKER"

    :goto_6
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int v4, v0, v8

    if-eqz v4, :cond_c

    const-string v4, "* "

    :goto_7
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v4, 0x10

    and-int/2addr v4, p1

    if-eqz v4, :cond_d

    const-string v4, "SYSTEM_INFO"

    :goto_8
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v4, 0x10

    and-int/2addr v4, v0

    if-eqz v4, :cond_e

    const-string v4, "* "

    :goto_9
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v4, 0x40

    and-int/2addr v4, p1

    if-eqz v4, :cond_f

    const-string v4, "BACK"

    :goto_a
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v4, 0x40

    and-int/2addr v4, v0

    if-eqz v4, :cond_10

    const-string v4, "* "

    :goto_b
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v4, 0x20

    and-int/2addr v4, p1

    if-eqz v4, :cond_11

    const-string v4, "HOME"

    :goto_c
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v4, 0x20

    and-int/2addr v4, v0

    if-eqz v4, :cond_12

    const-string v4, "* "

    :goto_d
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int v4, p1, v10

    if-eqz v4, :cond_13

    const-string v4, "RECENT"

    :goto_e
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int v4, v0, v10

    if-eqz v4, :cond_14

    const-string v4, "* "

    :goto_f
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int v4, p1, v9

    if-eqz v4, :cond_15

    const-string v4, "CLOCK"

    :goto_10
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int v4, v0, v9

    if-eqz v4, :cond_16

    const-string v4, "* "

    :goto_11
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ">"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "PhoneStatusBar"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    and-int v4, v0, v9

    if-eqz v4, :cond_0

    and-int v4, p1, v9

    if-nez v4, :cond_17

    const/4 v3, 0x1

    :goto_12
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showClock(Z)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showCenterClock(Z)V

    :cond_0
    and-int v4, v0, v6

    if-eqz v4, :cond_1

    and-int v4, p1, v6

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapse()V

    :cond_1
    const/high16 v4, 0x160

    and-int/2addr v4, v0

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v4, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(I)V

    :cond_2
    and-int v4, p1, v10

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    const/16 v5, 0x3fd

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->removeMessages(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    const/16 v5, 0x3fd

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->sendEmptyMessage(I)Z

    :cond_3
    and-int v4, v0, v7

    if-eqz v4, :cond_1a

    and-int v4, p1, v7

    if-eqz v4, :cond_19

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicking:Z

    if-eqz v4, :cond_18

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicker:Lcom/android/systemui/statusbar/phone/Ticker;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/Ticker;->halt()V

    :cond_4
    :goto_13
    return-void

    :cond_5
    const-string v4, "expand"

    goto/16 :goto_0

    :cond_6
    const-string v4, " "

    goto/16 :goto_1

    :cond_7
    const-string v4, "icons"

    goto/16 :goto_2

    :cond_8
    const-string v4, " "

    goto/16 :goto_3

    :cond_9
    const-string v4, "alerts"

    goto/16 :goto_4

    :cond_a
    const-string v4, " "

    goto/16 :goto_5

    :cond_b
    const-string v4, "ticker"

    goto/16 :goto_6

    :cond_c
    const-string v4, " "

    goto/16 :goto_7

    :cond_d
    const-string v4, "system_info"

    goto/16 :goto_8

    :cond_e
    const-string v4, " "

    goto/16 :goto_9

    :cond_f
    const-string v4, "back"

    goto/16 :goto_a

    :cond_10
    const-string v4, " "

    goto/16 :goto_b

    :cond_11
    const-string v4, "home"

    goto/16 :goto_c

    :cond_12
    const-string v4, " "

    goto/16 :goto_d

    :cond_13
    const-string v4, "recent"

    goto/16 :goto_e

    :cond_14
    const-string v4, " "

    goto/16 :goto_f

    :cond_15
    const-string v4, "clock"

    goto/16 :goto_10

    :cond_16
    const-string v4, " "

    goto/16 :goto_11

    :cond_17
    const/4 v3, 0x0

    goto/16 :goto_12

    :cond_18
    const/4 v4, 0x0

    const v5, 0x10a0001

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setNotificationIconVisibility(ZI)V

    goto :goto_13

    :cond_19
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    if-nez v4, :cond_4

    const/4 v4, 0x1

    const/high16 v5, 0x10a

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setNotificationIconVisibility(ZI)V

    goto :goto_13

    :cond_1a
    and-int v4, v0, v8

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicking:Z

    if-eqz v4, :cond_4

    and-int v4, p1, v8

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicker:Lcom/android/systemui/statusbar/phone/Ticker;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/Ticker;->halt()V

    goto :goto_13
.end method

.method doAnimation()V
    .locals 4

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimating:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->incrementAnim()V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimY:F

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimating:Z

    const/16 v0, -0x2711

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->performExpand()V

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->disableGcForExternalAlloc(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimY:F

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimating:Z

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->performCollapse()V

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->disableGcForExternalAlloc(Z)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimY:F

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurAnimationTime:J

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurAnimationTime:J

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurAnimationTime:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method doRevealAnimation()V
    .locals 5

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCloseView:Lcom/android/systemui/statusbar/phone/CloseDragHandle;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/CloseDragHandle;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getHeight()I

    move-result v2

    add-int v0, v1, v2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimatingReveal:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimating:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimY:F

    int-to-float v2, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->incrementAnim()V

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimY:F

    int-to-float v2, v0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    int-to-float v1, v0

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimY:F

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimY:F

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimY:F

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    iget-wide v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurAnimationTime:J

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurAnimationTime:J

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurAnimationTime:J

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQueueLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    const-string v5, "Current Status Bar state:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mExpanded="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpanded:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", mExpandedVisible="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mTicking="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicking:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mTracking="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTracking:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mAnimating="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimating:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", mAnimY="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimY:F

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", mAnimVel="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimVel:F

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", mAnimAccel="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimAccel:F

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mCurAnimationTime="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurAnimationTime:J

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " mAnimLastTime="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimLastTime:J

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mAnimatingReveal="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimatingReveal:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " mViewDelta="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mViewDelta:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mDisplayMetrics="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mExpandedParams: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mExpandedView: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedView:Lcom/android/systemui/statusbar/phone/ExpandedView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mExpandedDialog: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mTrackingParams: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mTrackingView: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingView:Lcom/android/systemui/statusbar/phone/TrackingView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mOngoingItems: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingItems:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mLatestItems: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestItems:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mNoNotificationsTitle: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNoNotificationsTitle:Landroid/widget/TextView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mCloseView: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCloseView:Lcom/android/systemui/statusbar/phone/CloseDragHandle;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mTickerView: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerView:Landroid/view/View;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mScrollView: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " scroll "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v7}, Landroid/widget/ScrollView;->getScrollX()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v7}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "  mNavigationBarView="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-nez v5, :cond_0

    const-string v5, "null"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoing:Lcom/android/systemui/statusbar/NotificationData;

    monitor-enter v6

    :try_start_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoing:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  ongoing notification icons: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoing:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v5, v2}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    ["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "] key="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Landroid/os/IBinder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " icon="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "         pkg="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v4, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " id="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, v4, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " priority="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, v4, Lcom/android/internal/statusbar/StatusBarNotification;->priority:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "         notification="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v4, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "         tickerText=\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v4, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v7, v7, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v5, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    monitor-enter v6

    :try_start_4
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  latest notification icons: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_2

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v5, v2}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    ["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "] key="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Landroid/os/IBinder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " icon="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "         pkg="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v4, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " id="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, v4, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " priority="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, v4, Lcom/android/internal/statusbar/StatusBarNotification;->priority:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "         notification="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v4, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "         tickerText=\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v4, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v7, v7, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :catchall_1
    move-exception v5

    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v5

    :cond_2
    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  system icons: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_3

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/StatusBarIconView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] icon="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :catchall_2
    move-exception v5

    :try_start_7
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v5

    :cond_3
    return-void
.end method

.method public exitKeyguardSecurely()V
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->resumeAppSwitches()V

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardManager:Landroid/app/KeyguardManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->exitKeyguardSecurely(Landroid/app/KeyguardManager$OnKeyguardExitResult;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method getExpandedHeight(I)I
    .locals 2

    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_QUICK_SETTINGS:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getHeight()I

    move-result v0

    sub-int v0, p1, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSwitchButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCloseView:Lcom/android/systemui/statusbar/phone/CloseDragHandle;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/CloseDragHandle;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getHeight()I

    move-result v0

    sub-int v0, p1, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCloseView:Lcom/android/systemui/statusbar/phone/CloseDragHandle;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/CloseDragHandle;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method protected getRecentsLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
    .locals 7

    const/4 v6, 0x0

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/16 v3, 0x7de

    const v4, 0x820100

    if-eqz v6, :cond_1

    const/4 v5, -0x1

    :goto_0
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplay:Landroid/view/Display;

    invoke-static {v1}, Landroid/app/ActivityManager;->isHighEndGfx(Landroid/view/Display;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x100

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_0
    const/16 v1, 0x53

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const-string v1, "RecentsPanel"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x7f0c0008

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/16 v1, 0x31

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    return-object v0

    :cond_1
    const/4 v5, -0x3

    goto :goto_0
.end method

.method protected getStatusBarGravity()I
    .locals 1

    const/16 v0, 0x37

    return v0
.end method

.method public getStatusBarHeight()I
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    return v1
.end method

.method public glow(I)V
    .locals 6

    const-wide/16 v4, 0x64

    const/4 v3, 0x4

    packed-switch p1, :pswitch_data_0

    const-string v0, "PhoneStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "performGlowing illegal mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->glowAnimationGreen:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->glowAnimationGreenReverse:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->glowAnimationGreenStatic:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->glowAnimationRed:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->glowAnimationRedReverse:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->glowAnimationRedStatic:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mGlowViewGreen:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mGlowViewRed:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mGlowViewRed:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mGlowViewGreen:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->glowAnimationGreen:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->glowAnimationGreenReverse:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->glowAnimationGreenStatic:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->glowAnimationRed:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->glowAnimationRed:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->glowAnimationRedReverse:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->glowAnimationRedStatic:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->glowAnimationGreen:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method handleNotificationError(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->removeNotification(Landroid/os/IBinder;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v1, p2, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/internal/statusbar/StatusBarNotification;->tag:Ljava/lang/String;

    iget v3, p2, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    iget v4, p2, Lcom/android/internal/statusbar/StatusBarNotification;->uid:I

    iget v5, p2, Lcom/android/internal/statusbar/StatusBarNotification;->initialPid:I

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method incrementAnim()V
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimLastTime:J

    sub-long v6, v1, v6

    long-to-float v6, v6

    const/high16 v7, 0x447a

    div-float v3, v6, v7

    iget v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimY:F

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimVel:F

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimAccel:F

    mul-float v6, v4, v3

    add-float/2addr v6, v5

    const/high16 v7, 0x3f00

    mul-float/2addr v7, v0

    mul-float/2addr v7, v3

    mul-float/2addr v7, v3

    add-float/2addr v6, v7

    iput v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimY:F

    mul-float v6, v0, v3

    add-float/2addr v6, v4

    iput v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimVel:F

    iput-wide v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimLastTime:J

    return-void
.end method

.method interceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 19

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarReady:Z

    if-nez v13, :cond_0

    const/4 v13, 0x0

    :goto_0
    return v13

    :cond_0
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    const/high16 v14, 0x1

    and-int/2addr v13, v14

    if-eqz v13, :cond_1

    const/4 v13, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getHeight()I

    move-result v7

    mul-int/lit8 v3, v7, 0x2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v13

    float-to-int v11, v13

    if-nez v1, :cond_7

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpanded:Z

    if-nez v13, :cond_5

    sub-int v13, v7, v11

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mViewDelta:I

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpanded:Z

    if-nez v13, :cond_2

    if-lt v11, v3, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpanded:Z

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v13, v13, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v13, v3

    if-le v11, v13, :cond_4

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v13

    float-to-int v9, v13

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEdgeBorder:I

    if-lt v9, v2, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v13, v13, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v13, v2

    if-ge v9, v13, :cond_4

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpanded:Z

    if-nez v13, :cond_6

    const/4 v13, 0x1

    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v13}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->prepareTracking(IZ)V

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->trackMovement(Landroid/view/MotionEvent;)V

    sget-boolean v13, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_STATUS_BAR_TAP_EVENT:Z

    if-eqz v13, :cond_4

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarViewPressed:Z

    :cond_4
    :goto_3
    const/4 v13, 0x0

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingView:Lcom/android/systemui/statusbar/phone/TrackingView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAbsPos:[I

    invoke-virtual {v13, v14}, Lcom/android/systemui/statusbar/phone/TrackingView;->getLocationOnScreen([I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAbsPos:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingView:Lcom/android/systemui/statusbar/phone/TrackingView;

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/phone/TrackingView;->getHeight()I

    move-result v14

    add-int/2addr v13, v14

    sub-int/2addr v13, v11

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mViewDelta:I

    goto :goto_1

    :cond_6
    const/4 v13, 0x0

    goto :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTracking:Z

    if-eqz v13, :cond_4

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->trackMovement(Landroid/view/MotionEvent;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCloseView:Lcom/android/systemui/statusbar/phone/CloseDragHandle;

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/phone/CloseDragHandle;->getHeight()I

    move-result v13

    add-int v5, v7, v13

    const/4 v13, 0x2

    if-ne v1, v13, :cond_a

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimatingReveal:Z

    if-eqz v13, :cond_9

    if-ge v11, v5, :cond_9

    :goto_4
    sget v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->CmBrightness:I

    if-eqz v0, :cond_8

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->SlideBrighntessCtrl(Landroid/view/MotionEvent;)V

    :cond_8
    sget-boolean v13, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_STATUS_BAR_TAP_EVENT:Z

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarViewPressed:Z

    if-eqz v13, :cond_4

    int-to-double v13, v11

    int-to-double v15, v7

    const-wide/high16 v17, 0x3ff8

    mul-double v15, v15, v17

    cmpl-double v13, v13, v15

    if-lez v13, :cond_4

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarViewPressed:Z

    goto :goto_3

    :cond_9
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimatingReveal:Z

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mViewDelta:I

    add-int/2addr v13, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    goto :goto_4

    :cond_a
    const/4 v13, 0x1

    if-eq v1, v13, :cond_b

    const/4 v13, 0x3

    if-ne v1, v13, :cond_4

    :cond_b
    sget-boolean v13, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_STATUS_BAR_TAP_EVENT:Z

    if-eqz v13, :cond_c

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarViewPressed:Z

    if-eqz v13, :cond_c

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarViewPressed:Z

    new-instance v4, Landroid/content/Intent;

    const-string v13, "com.android.server.status.StatusBarView.STATUS_BAR_TAP_EVENT"

    invoke-direct {v4, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v14, 0x3e8

    invoke-virtual {v13, v14}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v13}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v12

    const/4 v13, 0x0

    cmpg-float v13, v12, v13

    if-gez v13, :cond_10

    const/4 v6, 0x1

    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v13}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v10

    const/4 v13, 0x0

    cmpg-float v13, v10, v13

    if-gez v13, :cond_d

    neg-float v10, v10

    :cond_d
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlingGestureMaxXVelocityPx:F

    cmpl-float v13, v10, v13

    if-lez v13, :cond_e

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlingGestureMaxXVelocityPx:F

    :cond_e
    float-to-double v13, v12

    float-to-double v15, v10

    invoke-static/range {v13 .. v16}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v13

    double-to-float v8, v13

    if-eqz v6, :cond_f

    neg-float v8, v8

    :cond_f
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mViewDelta:I

    add-int/2addr v13, v11

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v8, v14}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->performFling(IFZ)V

    goto/16 :goto_3

    :cond_10
    const/4 v6, 0x0

    goto :goto_5
.end method

.method protected loadDimens()V
    .locals 5

    const/4 v4, 0x1

    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNaturalBarHeight:I

    const v3, 0x105000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v3, 0x7f0a0010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconHPadding:I

    if-ne v0, v3, :cond_0

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconSize:I

    if-eq v1, v3, :cond_1

    :cond_0
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconHPadding:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconSize:I

    :cond_1
    const/high16 v3, 0x7f0a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEdgeBorder:I

    const v3, 0x7f0a0012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSelfExpandVelocityPx:F

    const v3, 0x7f0a0013

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSelfCollapseVelocityPx:F

    const v3, 0x7f0a0014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlingExpandMinVelocityPx:F

    const v3, 0x7f0a0015

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlingCollapseMinVelocityPx:F

    const v3, 0x7f0a0017

    invoke-virtual {v2, v3, v4, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCollapseMinDisplayFraction:F

    const v3, 0x7f0a0018

    invoke-virtual {v2, v3, v4, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandMinDisplayFraction:F

    const v3, 0x7f0a0019

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandAccelPx:F

    const v3, 0x7f0a001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCollapseAccelPx:F

    const v3, 0x7f0a0016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlingGestureMaxXVelocityPx:F

    return-void
.end method

.method public makeClicker(Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;I)Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationClicker;
    .locals 6

    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationClicker;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationClicker;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method makeNotificationView(Lcom/android/internal/statusbar/StatusBarNotification;Landroid/view/ViewGroup;)[Landroid/view/View;
    .locals 20

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v17, v0

    if-nez v17, :cond_0

    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/LayoutInflater;

    const v4, 0x7f03001a

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v14, v4, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotificationVetoButton(Landroid/view/View;Lcom/android/internal/statusbar/StatusBarNotification;)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v6, 0x7f080066

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const v4, 0x7f0e00ac

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_2

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v15, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_1
    const v4, 0x7f0e00a0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    const/high16 v4, 0x6

    invoke-virtual {v9, v4}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v9, v4}, Landroid/view/ViewGroup;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    move-object/from16 v0, v16

    iget v4, v0, Landroid/app/Notification;->flags:I

    const/high16 v6, 0xfe

    and-int/2addr v4, v6

    if-eqz v4, :cond_1

    const v4, 0x106000d

    invoke-virtual {v9, v4}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const v6, 0x7f0200c7

    invoke-virtual {v4, v6}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1
    move-object/from16 v0, v16

    iget-object v5, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v5, :cond_3

    new-instance v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationClicker;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/internal/statusbar/StatusBarNotification;->tag:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationClicker;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v15, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v9, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    const/4 v12, 0x0

    const/4 v11, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v9}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    :goto_3
    if-nez v12, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/0x"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v4, "PhoneStatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "couldn\'t inflate view for notification "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v15}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    const/4 v6, 0x0

    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v4, 0x4

    invoke-virtual {v15, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_3
    const/4 v4, 0x0

    invoke-virtual {v15, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v4, 0x0

    invoke-virtual {v9, v4}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :catch_0
    move-exception v10

    move-object v11, v10

    goto :goto_3

    :cond_4
    invoke-virtual {v9, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->applyLegacyRowBackground(Lcom/android/internal/statusbar/StatusBarNotification;Landroid/view/View;)V

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/view/View;

    const/4 v6, 0x0

    aput-object v18, v4, v6

    const/4 v6, 0x1

    aput-object v9, v4, v6

    const/4 v6, 0x2

    aput-object v12, v4, v6

    goto/16 :goto_0
.end method

.method public makeRecentBgColor()V
    .locals 9

    const/4 v8, -0x2

    const/4 v7, 0x0

    const v6, 0x7f0e00bd

    const/4 v4, 0x0

    const v5, 0x7f0e00ee

    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "tweaks_recentapps_customimage"

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v3, "tweaks_recentapps_bgcolor"

    invoke-static {v1, v3, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v8, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f02022f

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/system/background_recentapps.png"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const-string v4, "/data/system/background_recentapps.png"

    invoke-static {v4}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    const-string v3, "tweaks_recentapps_customimage"

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method protected makeStatusBarView()Landroid/view/View;
    .locals 13

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ObserverSetted:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandlerInt:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$SettingsObserver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandlerInt:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$SettingsObserver;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/os/Handler;)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$SettingsObserver;->observe()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ObserverSetted:I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateDisplaySize()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->loadDimens()V

    const v11, 0x105000e

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconSize:I

    const v11, 0x7f030010

    const/4 v12, 0x0

    invoke-static {v0, v11, v12}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/ExpandedView;

    iput-object p0, v1, Lcom/android/systemui/statusbar/phone/ExpandedView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const v11, 0x7f030005

    const/4 v12, 0x0

    invoke-static {v0, v11, v12}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIntruderAlertView:Landroid/view/View;

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIntruderAlertView:Landroid/view/View;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIntruderAlertView:Landroid/view/View;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/view/View;->setClickable(Z)V

    const v11, 0x7f03000e

    const/4 v12, 0x0

    invoke-static {v0, v11, v12}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iput-object p0, v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    :try_start_0
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v11}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v5

    if-eqz v5, :cond_1

    const v11, 0x7f030006

    const/4 v12, 0x0

    invoke-static {v0, v11, v12}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iput-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget v12, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    invoke-virtual {v11, v12}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    const/4 v11, -0x1

    iput v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPixelFormat:I

    const v11, 0x7f0e0064

    invoke-virtual {v4, v11}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    iput-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    const v11, 0x7f0e0063

    invoke-virtual {v4, v11}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/statusbar/phone/IconMerger;

    iput-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    const v11, 0x7f0e0060

    invoke-virtual {v4, v11}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkTextView:Landroid/widget/TextView;

    const v11, 0x7f0e0062

    invoke-virtual {v4, v11}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCallTime:Landroid/widget/TextView;

    const v11, 0x7f0e0061

    invoke-virtual {v4, v11}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMoreIcon:Landroid/view/View;

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMoreIcon:Landroid/view/View;

    invoke-virtual {v11, v12}, Lcom/android/systemui/statusbar/phone/IconMerger;->setOverflowIndicator(Landroid/view/View;)V

    const v11, 0x7f0e005f

    invoke-virtual {v4, v11}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    iput-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIcons:Landroid/widget/LinearLayout;

    const v11, 0x7f0e00e9

    invoke-virtual {v4, v11}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    iput-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCenterClock:Landroid/widget/LinearLayout;

    const v11, 0x7f0e0066

    invoke-virtual {v4, v11}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerView:Landroid/view/View;

    const v11, 0x7f0e0069

    invoke-virtual {v4, v11}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/statusbar/policy/DateView;

    iput-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDateView:Lcom/android/systemui/statusbar/policy/DateView;

    const v11, 0x7f0e0084

    invoke-virtual {v4, v11}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mGlowViewRed:Landroid/widget/ImageView;

    const v11, 0x7f0e0085

    invoke-virtual {v4, v11}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mGlowViewGreen:Landroid/widget/ImageView;

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mGlowViewRed:Landroid/widget/ImageView;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mGlowViewGreen:Landroid/widget/ImageView;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v11, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ExpandedDialog;

    invoke-direct {v11, p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ExpandedDialog;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/content/Context;)V

    iput-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedDialog:Landroid/app/Dialog;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedView:Lcom/android/systemui/statusbar/phone/ExpandedView;

    const v11, 0x7f0e0079

    invoke-virtual {v1, v11}, Lcom/android/systemui/statusbar/phone/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    iput-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedPage:Landroid/widget/LinearLayout;

    const v11, 0x7f0e0082

    invoke-virtual {v1, v11}, Lcom/android/systemui/statusbar/phone/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    iput-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    sget-boolean v11, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_QUICK_SETTINGS:Z

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedView:Lcom/android/systemui/statusbar/phone/ExpandedView;

    iput-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedContents:Landroid/view/View;

    :goto_1
    const v11, 0x7f0e007f

    invoke-virtual {v1, v11}, Lcom/android/systemui/statusbar/phone/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNoNotificationsTitle:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNoNotificationsTitle:Landroid/widget/TextView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedView:Lcom/android/systemui/statusbar/phone/ExpandedView;

    const v12, 0x7f0e0080

    invoke-virtual {v11, v12}, Lcom/android/systemui/statusbar/phone/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    iput-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingItems:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedView:Lcom/android/systemui/statusbar/phone/ExpandedView;

    const v12, 0x7f0e0081

    invoke-virtual {v11, v12}, Lcom/android/systemui/statusbar/phone/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestTitle:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    iput-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestItems:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    const v11, 0x7f0e00ec

    invoke-virtual {v1, v11}, Lcom/android/systemui/statusbar/phone/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentAppTogle:Landroid/widget/ImageView;

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentAppTogle:Landroid/widget/ImageView;

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentAppTogleListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentAppTogle:Landroid/widget/ImageView;

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentAppTogleLongListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentAppTogle:Landroid/widget/ImageView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setEnabled(Z)V

    const v11, 0x7f0e007d

    invoke-virtual {v1, v11}, Lcom/android/systemui/statusbar/phone/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/widget/TextView;

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setEnabled(Z)V

    const v11, 0x7f0e002b

    invoke-virtual {v1, v11}, Lcom/android/systemui/statusbar/phone/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ScrollView;

    iput-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    new-instance v11, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyTicker;

    invoke-direct {v11, p0, v0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyTicker;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/content/Context;Landroid/view/View;)V

    iput-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicker:Lcom/android/systemui/statusbar/phone/Ticker;

    const v11, 0x7f0e0068

    invoke-virtual {v4, v11}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/statusbar/phone/TickerView;

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicker:Lcom/android/systemui/statusbar/phone/Ticker;

    iput-object v11, v10, Lcom/android/systemui/statusbar/phone/TickerView;->mTicker:Lcom/android/systemui/statusbar/phone/Ticker;

    const v11, 0x7f030025

    const/4 v12, 0x0

    invoke-static {v0, v11, v12}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/statusbar/phone/TrackingView;

    iput-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingView:Lcom/android/systemui/statusbar/phone/TrackingView;

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingView:Lcom/android/systemui/statusbar/phone/TrackingView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->makeStatusBgBarColor()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateCMBrigtnessSS()V

    iput-object p0, v11, Lcom/android/systemui/statusbar/phone/TrackingView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingView:Lcom/android/systemui/statusbar/phone/TrackingView;

    const v12, 0x7f0e00dd

    invoke-virtual {v11, v12}, Lcom/android/systemui/statusbar/phone/TrackingView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/statusbar/phone/CloseDragHandle;

    iput-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCloseView:Lcom/android/systemui/statusbar/phone/CloseDragHandle;

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCloseView:Lcom/android/systemui/statusbar/phone/CloseDragHandle;

    iput-object p0, v11, Lcom/android/systemui/statusbar/phone/CloseDragHandle;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/high16 v11, 0x7f0a

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEdgeBorder:I

    const v11, 0x7f0e0060

    invoke-virtual {v1, v11}, Lcom/android/systemui/statusbar/phone/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;

    iput-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPlmnLabel:Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setAreThereNotifications()V

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDateView:Lcom/android/systemui/statusbar/policy/DateView;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Lcom/android/systemui/statusbar/policy/DateView;->setVisibility(I)V

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedPage:Landroid/widget/LinearLayout;

    const v12, 0x7f0e007a

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    iput-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarTitle:Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v7

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v9

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v8

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v6

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarTitle:Landroid/widget/LinearLayout;

    const v12, 0x7f020236

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v7, v9, v8, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const v11, 0x7f0e007b

    invoke-virtual {v1, v11}, Lcom/android/systemui/statusbar/phone/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/statusbar/phone/CarrierLabel;

    iput-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v11, Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-direct {v11, v0}, Lcom/android/systemui/recent/RecentTasksLoader;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateRecentsPanel()V

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v11, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v2, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v11, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v2, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v11, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v11, "android.intent.action.TIME_SET"

    invoke-virtual {v2, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v11, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v2, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v11, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v2, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v11, "android.intent.action.TIMEFORMAT_CHANGED"

    invoke-virtual {v2, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-boolean v11, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_ATT_ONS:Z

    if-eqz v11, :cond_2

    const-string v11, "android.intent.action.USER_PRESENT"

    invoke-virtual {v2, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_2
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v11, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-object v4

    :cond_3
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    iput-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedContents:Landroid/view/View;

    goto/16 :goto_1

    :catch_0
    move-exception v11

    goto/16 :goto_0
.end method

.method public makeStatusBgBarColor()V
    .locals 9

    const/16 v8, 0x8

    const/4 v7, -0x2

    const v6, 0x7f0e00ed

    const v5, 0x7f0e00ee

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "tweaks_statusbar_customimage"

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingView:Lcom/android/systemui/statusbar/phone/TrackingView;

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingView:Lcom/android/systemui/statusbar/phone/TrackingView;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    const-string v3, "tweaks_statusbar_bgcolor"

    invoke-static {v1, v3, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v7, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingView:Lcom/android/systemui/statusbar/phone/TrackingView;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingView:Lcom/android/systemui/statusbar/phone/TrackingView;

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/system/background_pulldown.png"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingView:Lcom/android/systemui/statusbar/phone/TrackingView;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingView:Lcom/android/systemui/statusbar/phone/TrackingView;

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingView:Lcom/android/systemui/statusbar/phone/TrackingView;

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const-string v4, "/data/system/background_pulldown.png"

    invoke-static {v4}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    const-string v3, "tweaks_statusbar_customimage"

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method onBarViewAttached()V
    .locals 7

    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateDisplaySize()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingView:Lcom/android/systemui/statusbar/phone/TrackingView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/TrackingView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    :cond_0
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7e1

    const v4, 0x20300

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplay:Landroid/view/Display;

    invoke-static {v1}, Landroid/app/ActivityManager;->isHighEndGfx(Landroid/view/Display;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x100

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_1
    const/16 v1, 0x37

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const-string v1, "TrackingView"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingPosition:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingView:Lcom/android/systemui/statusbar/phone/TrackingView;

    invoke-virtual {v1, v2, v0}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateRecentsPanel()V

    return-void
.end method

.method onTrackingViewAttached()V
    .locals 6

    const/4 v5, -0x1

    const/4 v1, -0x3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v2, 0x0

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingPosition:I

    const/16 v2, 0x7e1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x1328

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplay:Landroid/view/Display;

    invoke-static {v2}, Landroid/app/ActivityManager;->isHighEndGfx(Landroid/view/Display;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x100

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_0
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v2, 0x37

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const-string v2, "StatusBarExpanded"

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedSize()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setFormat(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedDialog:Landroid/app/Dialog;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedView:Lcom/android/systemui/statusbar/phone/ExpandedView;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method performCollapse()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    invoke-static {}, Lcom/android/systemui/statusbar/phone/CarrierExtended;->cancelRefresh()V

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->visibilityChanged(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingView:Lcom/android/systemui/statusbar/phone/TrackingView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/TrackingView;->setVisibility(I)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    const/high16 v1, 0x2

    and-int/2addr v0, v1

    if-nez v0, :cond_2

    const/high16 v0, 0x10a

    invoke-virtual {p0, v4, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setNotificationIconVisibility(ZI)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDateView:Lcom/android/systemui/statusbar/policy/DateView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/DateView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    const v0, 0x10a0001

    invoke-virtual {p0, v3, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setDateViewVisibility(ZI)V

    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpanded:Z

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpanded:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPostCollapseCleanup:Ljava/lang/Runnable;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPostCollapseCleanup:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPostCollapseCleanup:Ljava/lang/Runnable;

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPlmnLabel:Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPlmnLabel:Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;->setTextBlinkingSleep(Z)V

    goto :goto_0
.end method

.method performDisableActions(I)V
    .locals 6

    const/high16 v5, 0x8

    const/high16 v4, 0x2

    const/high16 v3, 0x1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    xor-int v0, p1, v1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    and-int v2, v0, v3

    if-eqz v2, :cond_0

    and-int v2, p1, v3

    if-eqz v2, :cond_0

    const-string v2, "PhoneStatusBar"

    const-string v3, "DISABLE_EXPAND: yes"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapse()V

    :cond_0
    and-int v2, v0, v4

    if-eqz v2, :cond_4

    and-int v2, p1, v4

    if-eqz v2, :cond_3

    const-string v2, "PhoneStatusBar"

    const-string v3, "DISABLE_NOTIFICATION_ICONS: yes"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicking:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/IconMerger;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicker:Lcom/android/systemui/statusbar/phone/Ticker;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/Ticker;->halt()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v2, 0x0

    const v3, 0x10a0001

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setNotificationIconVisibility(ZI)V

    goto :goto_0

    :cond_3
    const-string v2, "PhoneStatusBar"

    const-string v3, "DISABLE_NOTIFICATION_ICONS: no"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    const/high16 v3, 0x10a

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setNotificationIconVisibility(ZI)V

    goto :goto_0

    :cond_4
    and-int v2, v0, v5

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicking:Z

    if-eqz v2, :cond_1

    and-int v2, p1, v5

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicker:Lcom/android/systemui/statusbar/phone/Ticker;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/Ticker;->halt()V

    goto :goto_0
.end method

.method performExpand()V
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    const/high16 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpanded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpanded:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->makeExpandedVisible()V

    const/16 v0, -0x2711

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPlmnLabel:Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPlmnLabel:Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;->setTextBlinkingSleep(Z)V

    goto :goto_0
.end method

.method performFling(IFZ)V
    .locals 8

    const/16 v7, 0x64

    const/high16 v6, 0x3f80

    const/4 v5, 0x0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimatingReveal:Z

    int-to-float v2, p1

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimY:F

    iput p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimVel:F

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpanded:Z

    if-eqz v2, :cond_3

    if-nez p3, :cond_2

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlingCollapseMinVelocityPx:F

    cmpl-float v2, p2, v2

    if-gtz v2, :cond_0

    int-to-float v2, p1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCollapseMinDisplayFraction:F

    sub-float v4, v6, v4

    mul-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlingExpandMinVelocityPx:F

    neg-float v2, v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_2

    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandAccelPx:F

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimAccel:F

    cmpg-float v2, p2, v5

    if-gez v2, :cond_1

    iput v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimVel:F

    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimLastTime:J

    const-wide/16 v2, 0x10

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurAnimationTime:J

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimating:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    invoke-virtual {v2, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    invoke-virtual {v3, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurAnimationTime:J

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->sendMessageAtTime(Landroid/os/Message;J)Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->stopTracking()V

    return-void

    :cond_2
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCollapseAccelPx:F

    neg-float v2, v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimAccel:F

    cmpl-float v2, p2, v5

    if-lez v2, :cond_1

    iput v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimVel:F

    goto :goto_0

    :cond_3
    if-nez p3, :cond_4

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlingExpandMinVelocityPx:F

    cmpl-float v2, p2, v2

    if-gtz v2, :cond_4

    int-to-float v2, p1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandMinDisplayFraction:F

    sub-float v4, v6, v4

    mul-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlingCollapseMinVelocityPx:F

    neg-float v2, v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_5

    :cond_4
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandAccelPx:F

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimAccel:F

    cmpg-float v2, p2, v5

    if-gez v2, :cond_1

    iput v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimVel:F

    goto :goto_0

    :cond_5
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCollapseAccelPx:F

    neg-float v2, v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimAccel:F

    cmpl-float v2, p2, v5

    if-lez v2, :cond_1

    iput v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimVel:F

    goto :goto_0
.end method

.method postStartTracing()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStartTracing:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method prepareTracking(IZ)V
    .locals 6

    const/16 v5, 0x65

    const/16 v3, 0x64

    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->disableGcForExternalAlloc(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedSize()V

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTracking:Z

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p2, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandAccelPx:F

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimAccel:F

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlingExpandMinVelocityPx:F

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimVel:F

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimY:F

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimY:F

    float-to-int v2, v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimating:Z

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimatingReveal:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->removeMessages(I)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimLastTime:J

    const-wide/16 v2, 0x10

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurAnimationTime:J

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimating:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurAnimationTime:J

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->sendMessageAtTime(Landroid/os/Message;J)Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->makeExpandedVisible()V

    :goto_0
    return-void

    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimating:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimating:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->removeMessages(I)V

    :cond_1
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mViewDelta:I

    add-int/2addr v2, p1

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    goto :goto_0
.end method

.method public removeIcon(Ljava/lang/String;II)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    return-void
.end method

.method public removeNotification(Landroid/os/IBinder;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->removeNotificationViews(Landroid/os/IBinder;)Lcom/android/internal/statusbar/StatusBarNotification;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicker:Lcom/android/systemui/statusbar/phone/Ticker;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/Ticker;->removeEntry(Lcom/android/internal/statusbar/StatusBarNotification;)V

    const/16 v1, -0x2710

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setAreThereNotifications()V

    return-void
.end method

.method removeNotificationViews(Landroid/os/IBinder;)Lcom/android/internal/statusbar/StatusBarNotification;
    .locals 6

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoing:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/NotificationData;->remove(Landroid/os/IBinder;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/NotificationData;->remove(Landroid/os/IBinder;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v3, "PhoneStatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeNotification for unknown key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    iget-object v3, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    iget-object v3, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotificationIcons()V

    sget-boolean v3, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_CALL_TIMER:Z

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    iget-object v3, v3, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    const-string v4, "com.android.phone"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->m_callTimeIcon:I

    iget-object v4, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    iget-object v4, v4, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->icon:I

    if-ne v3, v4, :cond_2

    const/4 v3, -0x1

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->m_callTimeIcon:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCallTime:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCallTime:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateCallTimer:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    iget-object v3, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    iget-object v3, v3, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->flags:I

    const/high16 v4, 0xfe

    and-int/2addr v3, v4

    if-eqz v3, :cond_4

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOnTopItemCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOnTopItemCount:I

    :cond_3
    iget-object v3, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method setDateViewVisibility(ZI)V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_ATT_ONS:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDateView:Lcom/android/systemui/statusbar/policy/DateView;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/DateView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDateView:Lcom/android/systemui/statusbar/policy/DateView;

    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/DateView;->startAnimation(Landroid/view/animation/Animation;)V

    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_ATT_ONS:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkTextViewVisible:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setNetworkVisibility(Z)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setHardKeyboardStatus(ZZ)V
    .locals 0

    return-void
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;II)V
    .locals 0

    return-void
.end method

.method public setLightsOn(Z)V
    .locals 3

    const-string v0, "PhoneStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLightsOn("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    and-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setSystemUiVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    or-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method setNetworkVisibility(Z)V
    .locals 5

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x8

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkTextView:Landroid/widget/TextView;

    if-nez v1, :cond_1

    const-string v1, "PhoneStatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Network ticker is not ready ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->keyguardIsShowing()Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkTextViewVisible:I

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_5

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPlmnLabel:Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDateView:Lcom/android/systemui/statusbar/policy/DateView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/DateView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkTextView:Landroid/widget/TextView;

    const/high16 v3, 0x10a

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_4
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkTextViewVisible:I

    goto :goto_0

    :cond_5
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkTextViewVisible:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkTextView:Landroid/widget/TextView;

    const v2, 0x10a0001

    invoke-direct {p0, v2, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkTextViewVisible:I

    goto :goto_0
.end method

.method setNotificationIconVisibility(ZI)V
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/IconMerger;->getVisibility()I

    move-result v0

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-eq v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/IconMerger;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    const/4 v3, 0x0

    invoke-direct {p0, p2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/IconMerger;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x4

    goto :goto_0
.end method

.method public setSystemUiVisibility(I)V
    .locals 4

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    xor-int v0, p1, v2

    if-eqz v0, :cond_2

    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_1

    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_3

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapse()V

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setLowProfile(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyUiVisibilityChanged()V

    :cond_2
    return-void

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public showCenterClock(Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v2, 0x7f0e00e9

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public showClock(Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v2, 0x7f0e0065

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public start()V
    .locals 4

    const-string v0, "PhoneStatusBar"

    const-string v1, "start+"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/systemui/statusbar/StatusBarStyleable;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/StatusBarStyleable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplay:Landroid/view/Display;

    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWindowManager:Landroid/view/IWindowManager;

    invoke-super {p0}, Lcom/android/systemui/statusbar/StatusBar;->start()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->addNavigationBar()V

    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->makeStatusBarViewExtra:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v0, "PhoneStatusBar"

    const-string v1, "start-"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method stopTracking()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTracking:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-void
.end method

.method public toggleRecentApps()V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/recent/RecentsPanelView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v0, 0x3fd

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->sendEmptyMessage(I)Z

    return-void

    :cond_0
    const/16 v0, 0x3fc

    goto :goto_0
.end method

.method public toggleRecentAppsVisibility1()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const-string v1, "tweaks_show_recent_apps"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentApps:Lcom/android/systemui/statusbar/phone/RecentApps;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/RecentApps;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentApps:Lcom/android/systemui/statusbar/phone/RecentApps;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/RecentApps;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public toggleRecentAppsVisibility2()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentApps:Lcom/android/systemui/statusbar/phone/RecentApps;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/RecentApps;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const-string v1, "tweaks_show_recent_apps"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentApps:Lcom/android/systemui/statusbar/phone/RecentApps;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/RecentApps;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    const-string v1, "tweaks_show_recent_apps"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentApps:Lcom/android/systemui/statusbar/phone/RecentApps;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/RecentApps;->setVisibility(I)V

    goto :goto_0
.end method

.method public topAppWindowChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setMenuVisibility(Z)V

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setLightsOn(Z)V

    :cond_1
    return-void
.end method

.method public updateAutoBrightness()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAutoBrightness:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public updateCMBrigtnessSS()V
    .locals 3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tweaks_cm_brightness_control"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->CmBrightness:I

    return-void
.end method

.method updateDisplaySize()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedSize()V

    return-void
.end method

.method updateExpandedInvisiblePosition()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingView:Lcom/android/systemui/statusbar/phone/TrackingView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    neg-int v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingPosition:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingPosition:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingView:Lcom/android/systemui/statusbar/phone/TrackingView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/view/WindowManagerImpl;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    neg-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    return-void
.end method

.method updateExpandedSize()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getExpandedHeight(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedInvisiblePosition()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method updateExpandedViewPos(I)V
    .locals 14

    const/4 v9, 0x0

    const/16 v13, -0x2710

    const/4 v8, 0x1

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getHeight()I

    move-result v3

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    if-nez v10, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedInvisiblePosition()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v10, -0x2711

    if-ne p1, v10, :cond_8

    move v6, v3

    :goto_1
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v10, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingPosition:I

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    sub-int v11, v2, v3

    iput v11, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v10

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingView:Lcom/android/systemui/statusbar/phone/TrackingView;

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v10, v11, v12}, Landroid/view/WindowManagerImpl;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCloseView:Lcom/android/systemui/statusbar/phone/CloseDragHandle;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/phone/CloseDragHandle;->getWindowVisibility()I

    move-result v10

    if-nez v10, :cond_d

    sget-boolean v10, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_QUICK_SETTINGS:Z

    if-eqz v10, :cond_c

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSwitchButtons:Landroid/widget/LinearLayout;

    if-eqz v10, :cond_b

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSwitchButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v10

    if-nez v10, :cond_b

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSwitchButtons:Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPositionTmp:[I

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->getLocationInWindow([I)V

    :goto_2
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPositionTmp:[I

    aget v0, v10, v8

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedContents:Landroid/view/View;

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPositionTmp:[I

    invoke-virtual {v10, v11}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPositionTmp:[I

    aget v10, v10, v8

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedContents:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v11

    add-int v1, v10, v11

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingView:Lcom/android/systemui/statusbar/phone/TrackingView;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/phone/TrackingView;->getHeight()I

    move-result v11

    add-int/2addr v11, v6

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v12, v0

    sub-int/2addr v11, v12

    sub-int/2addr v11, v1

    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_3
    move v4, v3

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->y:I

    if-le v10, v4, :cond_2

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v10, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_2
    iget v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingPosition:I

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->y:I

    if-ge v10, v5, :cond_3

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v10, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_3
    iget v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingPosition:I

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingView:Lcom/android/systemui/statusbar/phone/TrackingView;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/phone/TrackingView;->getHeight()I

    move-result v11

    add-int/2addr v10, v11

    if-le v10, v3, :cond_e

    move v7, v8

    :goto_4
    if-nez v7, :cond_4

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    neg-int v11, v2

    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_4
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v10}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v10, v11}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    if-eq p1, v13, :cond_5

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->visibilityChanged(Z)V

    :cond_5
    if-nez p1, :cond_0

    sget-boolean v10, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_RECENT_APP:Z

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentApps:Lcom/android/systemui/statusbar/phone/RecentApps;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/phone/RecentApps;->scrollToZero()V

    :cond_6
    sget-boolean v10, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_QUICK_SETTINGS:Z

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettings:Lcom/android/systemui/statusbar/preference/QuickSettings;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/preference/QuickSettings;->scrollToZero()V

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettings:Lcom/android/systemui/statusbar/preference/QuickSettings;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/preference/QuickSettings;->onStop()V

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedPage:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettings:Lcom/android/systemui/statusbar/preference/QuickSettings;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/preference/QuickSettings;->setVisibility(I)V

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandViewButton:Landroid/widget/TextView;

    const v10, 0x7f0200ce

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandViewButton:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f060008

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettingButton:Landroid/widget/TextView;

    const v10, 0x7f0200cd

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettingButton:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f060009

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_7
    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setTouchable(Z)V

    goto/16 :goto_0

    :cond_8
    if-ne p1, v13, :cond_9

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingPosition:I

    goto/16 :goto_1

    :cond_9
    if-gt p1, v2, :cond_a

    move v6, p1

    :goto_5
    sub-int v10, v2, v3

    sub-int/2addr v6, v10

    goto/16 :goto_1

    :cond_a
    move v6, v2

    goto :goto_5

    :cond_b
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCloseView:Lcom/android/systemui/statusbar/phone/CloseDragHandle;

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPositionTmp:[I

    invoke-virtual {v10, v11}, Lcom/android/systemui/statusbar/phone/CloseDragHandle;->getLocationInWindow([I)V

    goto/16 :goto_2

    :cond_c
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCloseView:Lcom/android/systemui/statusbar/phone/CloseDragHandle;

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPositionTmp:[I

    invoke-virtual {v10, v11}, Lcom/android/systemui/statusbar/phone/CloseDragHandle;->getLocationInWindow([I)V

    goto/16 :goto_2

    :cond_d
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v11, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    neg-int v11, v11

    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_3

    :cond_e
    move v7, v9

    goto/16 :goto_4
.end method

.method public updateIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;Lcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0, p5}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    return-void
.end method

.method public updateNotification(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)V
    .locals 23

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->flags:I

    const/high16 v7, 0xfe

    and-int v19, v4, v7

    if-eqz v19, :cond_0

    sparse-switch v19, :sswitch_data_0

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoing:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/NotificationData;->findByKey(Landroid/os/IBinder;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v17

    if-nez v17, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/NotificationData;->findByKey(Landroid/os/IBinder;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v17

    if-nez v17, :cond_1

    const-string v4, "PhoneStatusBar"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateNotification for unknown key: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :sswitch_0
    sget v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ONTOP_PRIORITY_BASE:I

    add-int/lit8 v4, v4, 0x6

    move-object/from16 v0, p2

    iput v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->priority:I

    goto :goto_0

    :sswitch_1
    sget v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ONTOP_PRIORITY_BASE:I

    add-int/lit8 v4, v4, 0x5

    move-object/from16 v0, p2

    iput v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->priority:I

    goto :goto_0

    :sswitch_2
    sget v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ONTOP_PRIORITY_BASE:I

    add-int/lit8 v4, v4, 0x4

    move-object/from16 v0, p2

    iput v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->priority:I

    goto :goto_0

    :sswitch_3
    sget v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ONTOP_PRIORITY_BASE:I

    add-int/lit8 v4, v4, 0x3

    move-object/from16 v0, p2

    iput v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->priority:I

    goto :goto_0

    :sswitch_4
    sget v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ONTOP_PRIORITY_BASE:I

    add-int/lit8 v4, v4, 0x2

    move-object/from16 v0, p2

    iput v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->priority:I

    goto :goto_0

    :sswitch_5
    sget v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ONTOP_PRIORITY_BASE:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p2

    iput v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->priority:I

    goto :goto_0

    :cond_1
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v0, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v16, v0

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v12, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    if-eqz v4, :cond_4

    if-eqz v12, :cond_4

    if-eqz v16, :cond_4

    invoke-virtual {v12}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual/range {v16 .. v16}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual/range {v16 .. v16}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual/range {v16 .. v16}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v4

    invoke-virtual {v12}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v7

    if-ne v4, v7, :cond_4

    const/4 v13, 0x1

    :goto_2
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v21

    check-cast v21, Landroid/view/ViewGroup;

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-wide v7, v4, Landroid/app/Notification;->when:J

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-wide v9, v4, Landroid/app/Notification;->when:J

    cmp-long v4, v7, v9

    if-nez v4, :cond_5

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->priority:I

    move-object/from16 v0, v18

    iget v7, v0, Lcom/android/internal/statusbar/StatusBarNotification;->priority:I

    if-ne v4, v7, :cond_5

    const/16 v20, 0x1

    :goto_3
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v4, :cond_6

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    move-object/from16 v0, v17

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    iget-object v7, v7, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v7, v7, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {v4, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    const/16 v22, 0x1

    :goto_4
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-nez v4, :cond_7

    const/4 v15, 0x1

    :goto_5
    if-eqz v13, :cond_b

    if-nez v20, :cond_2

    if-eqz v15, :cond_b

    :cond_2
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v0, v17

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->content:Landroid/view/View;

    invoke-virtual {v12, v4, v7}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v5, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v5, :cond_8

    new-instance v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationClicker;

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/internal/statusbar/StatusBarNotification;->tag:Ljava/lang/String;

    move-object/from16 v0, p2

    iget v8, v0, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationClicker;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->largeIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->content:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_6
    new-instance v6, Lcom/android/internal/statusbar/StatusBarIcon;

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v8, v4, Landroid/app/Notification;->icon:I

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v9, v4, Landroid/app/Notification;->iconLevel:I

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v10, v4, Landroid/app/Notification;->number:I

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v11, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-direct/range {v6 .. v11}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;IIILjava/lang/CharSequence;)V

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v4

    if-nez v4, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t update icon: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->handleNotificationError(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v14

    const-string v4, "PhoneStatusBar"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t reapply views for package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v12}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->removeNotificationViews(Landroid/os/IBinder;)Lcom/android/internal/statusbar/StatusBarNotification;

    invoke-virtual/range {p0 .. p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->addNotificationViews(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)Lcom/android/systemui/statusbar/StatusBarIconView;

    :goto_7
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotificationVetoButton(Landroid/view/View;Lcom/android/internal/statusbar/StatusBarNotification;)Landroid/view/View;

    if-eqz v22, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicker:Lcom/android/systemui/statusbar/phone/Ticker;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/Ticker;->halt()V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->tick(Lcom/android/internal/statusbar/StatusBarNotification;)V

    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setAreThereNotifications()V

    const/16 v4, -0x2710

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    goto/16 :goto_1

    :cond_4
    const/4 v13, 0x0

    goto/16 :goto_2

    :cond_5
    const/16 v20, 0x0

    goto/16 :goto_3

    :cond_6
    const/16 v22, 0x0

    goto/16 :goto_4

    :cond_7
    const/4 v15, 0x0

    goto/16 :goto_5

    :cond_8
    :try_start_1
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->largeIcon:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->content:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_6

    :cond_9
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_a

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->largeIcon:Landroid/widget/ImageView;

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v7, v7, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_7

    :cond_a
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->largeIcon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    const/4 v7, 0x0

    iput v7, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->largeIcon:Landroid/widget/ImageView;

    const/4 v7, 0x4

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    :cond_b
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->removeNotificationViews(Landroid/os/IBinder;)Lcom/android/internal/statusbar/StatusBarNotification;

    invoke-virtual/range {p0 .. p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->addNotificationViews(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)Lcom/android/systemui/statusbar/StatusBarIconView;

    goto :goto_7

    :sswitch_data_0
    .sparse-switch
        0x20000 -> :sswitch_0
        0x40000 -> :sswitch_1
        0x80000 -> :sswitch_2
        0x100000 -> :sswitch_3
        0x200000 -> :sswitch_4
        0x400000 -> :sswitch_5
    .end sparse-switch
.end method

.method protected updateRecentsPanel()V
    .locals 9

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v4}, Lcom/android/systemui/recent/RecentsPanelView;->isShowing()Z

    move-result v3

    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v4, v5}, Landroid/view/WindowManagerImpl;->removeView(Landroid/view/View;)V

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v4}, Lcom/android/systemui/recent/RecentsPanelView;->getRecentTasksList()Ljava/util/ArrayList;

    move-result-object v1

    :cond_0
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const-string v7, "tweaks_recentapps_hideicons"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentAppUseIcons:I

    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "tweaks_recentapps_style"

    const/4 v5, 0x0

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    sput v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentAppStyle:I

    const/4 v4, 0x0

    const v5, 0x7f03001e

    if-eq v4, v7, :cond_1

    const v5, 0x7f030028

    const/4 v4, 0x1

    if-eq v4, v7, :cond_1

    const v5, 0x7f03002a

    goto :goto_0

    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {v4, v5, v2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recent/RecentsPanelView;

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->makeRecentBgColor()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-virtual {v4, v5}, Lcom/android/systemui/recent/RecentsPanelView;->setRecentTasksLoader(Lcom/android/systemui/recent/RecentTasksLoader;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v4, v5}, Lcom/android/systemui/recent/RecentTasksLoader;->setRecentsPanel(Lcom/android/systemui/recent/RecentsPanelView;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    new-instance v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TouchOutsideListener;

    const/16 v6, 0x3fd

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-direct {v5, p0, v6, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TouchOutsideListener;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;ILcom/android/systemui/recent/RecentsPanelView;)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/recent/RecentsPanelView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/android/systemui/recent/RecentsPanelView;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v4}, Lcom/android/systemui/recent/RecentsPanelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getRecentsLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v4, v5, v0}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v4, p0}, Lcom/android/systemui/recent/RecentsPanelView;->setBar(Lcom/android/systemui/statusbar/StatusBar;)V

    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v8, v1}, Lcom/android/systemui/recent/RecentsPanelView;->show(ZZLjava/util/ArrayList;)V

    :cond_2
    return-void
.end method

.method updateResources()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/widget/TextView;

    instance-of v2, v2, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/widget/TextView;

    const v3, 0x7f080004

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNoNotificationsTitle:Landroid/widget/TextView;

    const v3, 0x7f08000b

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestTitle:Landroid/widget/TextView;

    const v3, 0x7f08000d

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandViewButton:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v4, 0x7f080087

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettingButton:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v4, 0x7f080085

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-boolean v2, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_SKIN:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/StatusBarStyleable;->updateStyleName()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateSkinResource()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->loadDimens()V

    return-void
.end method

.method vibrate()V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method

.method visibilityChanged(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPanelSlightlyVisible:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPanelSlightlyVisible:Z

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->onPanelRevealed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
