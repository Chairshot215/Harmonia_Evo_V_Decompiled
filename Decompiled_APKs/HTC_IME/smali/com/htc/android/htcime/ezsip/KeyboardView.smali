.class public Lcom/htc/android/htcime/ezsip/KeyboardView;
.super Landroid/view/View;
.source "KeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/htcime/ezsip/KeyboardView$PreviewHideObserver;,
        Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;,
        Lcom/htc/android/htcime/ezsip/KeyboardView$shiftState;,
        Lcom/htc/android/htcime/ezsip/KeyboardView$KeyboardViewListener;
    }
.end annotation


# static fields
.field private static final DELAY_AFTER_PREVIEW:I = 0xaf

.field private static final DELAY_BEFORE_PREVIEW:I = 0x78

.field protected static final DUMPLOG:Z = false

.field private static final DYNAMIC_TOUCH_ZONE_HEIGHT_FACTOR:F = 7.25f

.field protected static final FINAL_REPEAT_INTERVAL:I = 0x14

.field protected static final JUMP_UP:I = 0x0

.field private static final KEY_POS_COLUMNS:[Ljava/lang/String; = null

.field protected static final LONGPRESS_DELAY_L:I = 0x2ee

.field protected static final LONGPRESS_DELAY_S:I = 0x190

.field protected static final LPD_AMOUNT_OF_TAP_TO_PROBE:I = 0x5

.field protected static final LPD_TIME_THRESHOLD:I = 0x9c4

.field protected static final MIDDLE_REPEAT_INTERVAL:I = 0x32

.field protected static final MIN_PREDICT_DELAY:I = 0x64

.field protected static final MSG_DO_PREDICT:I = 0x5

.field protected static final MSG_LONGPRESS:I = 0x4

.field protected static final MSG_REMOVE_FEEDBACK:I = 0x6

.field protected static final MSG_REMOVE_PREVIEW:I = 0x2

.field protected static final MSG_REMOVE_PREVIEW_FUNC:I = 0x7

.field protected static final MSG_REPEAT:I = 0x3

.field protected static final MSG_SHOW_PREVIEW:I = 0x1

.field public static final MT_SHIFT_FIRST_TIME:I = 0x1

.field public static final MT_SHIFT_OFF:I = 0x0

.field public static final MT_SHIFT_WITH_ALPHABET:I = 0x2

.field public static final NOT_A_KEY:I = -0x1

.field protected static final PREDICT_DELAY:I = 0x64

.field protected static final REPEAT_ARROWS_INTERVAL:I = 0xc8

.field protected static final REPEAT_INTERVAL:I = 0x64

.field protected static final REPEAT_START_DELAY:I = 0x190

.field protected static final REPEAT_WAIT_DEL_WRD:I = 0x12c

.field protected static final TAG:Ljava/lang/String; = "KeyboardView"

.field protected static isKeyMove:Z

.field protected static isReapeatKey:Z

.field protected static mAccentButtonIndex:I

.field protected static mAccentWordIndex:I

.field private static mRepeatDelCounter:I

.field private static sAccent_touchThresold:I

.field private static sGeneral_touchThresold:I

.field protected static sLOWER_CASE_INCREASE:F

.field protected static sLPD_clock_e:J

.field protected static sLPD_clock_s:J

.field protected static sLPD_isLongPress:Z

.field protected static sLPD_isShortDelay:Z

.field protected static sLPD_time_cost:[J

.field protected static sLPD_time_cost_idx:I

.field protected static sNEAR_THRESHOLD:I

.field private static sPOPUP_ENLARGE_BOARDER:I

.field protected static sVERTICAL_CORRECTION:I

.field protected static sVerticalOffsetA:F

.field protected static sVerticalOffsetB:F

.field protected static showAccentWindow:Z


# instance fields
.field protected final DELREPEATNUM:I

.field protected final DELWORDDELAY:I

.field protected final MAX_AP_CLEAR:I

.field protected final MAX_AP_REMAINDER:I

.field protected MT_SHIFT_STATUS:I

.field PT_end:Ljava/lang/Long;

.field PT_start:Ljava/lang/Long;

.field protected RawX:I

.field protected action:I

.field protected dpadkeyDecreaseHeight:I

.field protected final dpadkeyDecreaseHeight_normal:I

.field protected final dpadkeyDecreaseTimeThreshold:I

.field protected eventTime:J

.field protected eventXY:[I

.field isInsideShiftKey:Z

.field private isInsideSpaceKey:Z

.field private isInsideSpaceKey2:Z

.field protected isSingleLine:Z

.field protected keyIndex:I

.field protected mAccentMode:Z

.field protected mAccentWindow:Lcom/htc/android/htcime/ezsip/common/AccentWindow;

.field protected mAddWordFlag:Z

.field private mAdjCommaKeyH:I

.field private mAdjLandSwitchH:I

.field private mAdjPeriodKeyH:I

.field private mAdjSYMSwitchH:I

.field private mAdjShiftH:I

.field private mAdjSpaceKeyH:I

.field protected mAudioManager:Landroid/media/AudioManager;

.field protected mAutoPressCount:I

.field protected mAutoPressDelCan:Z

.field protected mBuffer:Landroid/graphics/Bitmap;

.field protected mCanvas:Landroid/graphics/Canvas;

.field private mCurrPopupHeight:I

.field private mCurrPopupWidth:I

.field protected mCurrentFocusIndex:I

.field protected mCurrentKey:I

.field protected mCurrentKeyIndex:I

.field protected mCurrentKeyTime:J

.field protected mDHA:Lcom/htc/android/htcime/util/HtcDHA;

.field private mDTZ_deltaX:I

.field private mDTZ_deltaY:I

.field private mDTZ_isFingerMoved:Z

.field private mDefKeyWidthLower:I

.field private mDefKeyWidthUpper:I

.field private mDefPopupWidth:I

.field protected mDefaultFeedBackBG:I

.field protected mDefaultFeedBackFunctionBG:I

.field protected mDelWordMode:Z

.field mDialogBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;

.field protected mDownTime:J

.field protected mEnlargeLowercase:Z

.field protected mFeedBack:Landroid/view/View;

.field protected mFeedBackFunc:Landroid/view/View;

.field mFeedBackSource:Landroid/widget/FrameLayout$LayoutParams;

.field protected mGestureDetector:Landroid/view/GestureDetector;

.field protected mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

.field protected mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

.field protected mHandler:Landroid/os/Handler;

.field private mKeyDownTime:J

.field protected mKeyIndices:[I

.field private mKeyUpTime:J

.field protected mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

.field protected mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

.field protected mLastCodeX:I

.field protected mLastCodeY:I

.field protected mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

.field protected mLastKey:I

.field protected mLastKeyShowPreview:Z

.field protected mLastKeyTime:J

.field protected mLastMoveTime:J

.field protected mLastVibrateTime:J

.field protected mLastX:I

.field protected mLastY:I

.field private mListener:Lcom/htc/android/htcime/ezsip/KeyboardView$KeyboardViewListener;

.field protected mLongPress:Z

.field protected mOffsetInWindow:[I

.field private mOldPointerCount:I

.field private mOldPointerX:F

.field private mOldPointerY:F

.field protected mPadding:Landroid/graphics/Rect;

.field protected mPaint:Landroid/graphics/Paint;

.field protected mPointerCount:I

.field private mPopupOffsetX:I

.field private mPopupOffsetY:I

.field protected mPopupParent:Landroid/view/View;

.field private mPopupPreviewX:I

.field private mPopupPreviewY:I

.field mPreviewBtnDist:I

.field protected mPreviewFrame:Landroid/widget/FrameLayout;

.field protected mPreviewFrameFunc:Landroid/widget/FrameLayout;

.field mPreviewHeight:I

.field protected mPreviewIcon:Landroid/widget/ImageView;

.field protected mPreviewOffset:I

.field protected mPreviewPopup:Landroid/widget/PopupWindow;

.field protected mPreviewPopupFunc:Landroid/widget/PopupWindow;

.field protected mPreviewText:Landroid/widget/TextView;

.field private mPreviousAction:I

.field private mPrimaryFingerInactive:Z

.field protected mProximityCorrectOn:Z

.field protected mRepeatArrowsMode:Z

.field protected mRepeatDelCount:I

.field protected mRepeatKeyIndex:I

.field protected mSIP_ID:I

.field protected mSIP_LP_ID:I

.field mScreenWidth:I

.field private mSecondaryFingerInactive:Z

.field protected mSharePref:Landroid/content/SharedPreferences;

.field protected mShiftState:I

.field protected mShiftStateSaved:I

.field private mShowPreview:Z

.field private mShowPreviewX:I

.field private mShowPreviewY:I

.field protected mSoundOn:Z

.field protected mStartX:I

.field protected mStartY:I

.field mSwitchingDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mTSR_clock_dn:J

.field private mTSR_clock_up:J

.field protected mVibratePattern:[J

.field protected mVibrator:Landroid/os/Vibrator;

.field protected pressure:F

.field protected prevKey:I

.field protected softThresholdCheck:Z

.field protected touchThresold:I

.field protected touchX:I

.field protected touchX_org:I

.field protected touchY:I

.field protected touchY_org:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 146
    sput v2, Lcom/htc/android/htcime/ezsip/KeyboardView;->mAccentWordIndex:I

    .line 147
    sput v2, Lcom/htc/android/htcime/ezsip/KeyboardView;->mAccentButtonIndex:I

    .line 164
    sput v2, Lcom/htc/android/htcime/ezsip/KeyboardView;->sVERTICAL_CORRECTION:I

    .line 167
    sput v2, Lcom/htc/android/htcime/ezsip/KeyboardView;->sNEAR_THRESHOLD:I

    .line 168
    sput v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->sLOWER_CASE_INCREASE:F

    .line 169
    sput v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->sVerticalOffsetA:F

    .line 170
    sput v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->sVerticalOffsetB:F

    .line 218
    sput v2, Lcom/htc/android/htcime/ezsip/KeyboardView;->mRepeatDelCounter:I

    .line 233
    sput v2, Lcom/htc/android/htcime/ezsip/KeyboardView;->sPOPUP_ENLARGE_BOARDER:I

    .line 253
    sput v2, Lcom/htc/android/htcime/ezsip/KeyboardView;->sAccent_touchThresold:I

    .line 254
    sput v2, Lcom/htc/android/htcime/ezsip/KeyboardView;->sGeneral_touchThresold:I

    .line 276
    const/4 v0, 0x5

    new-array v0, v0, [J

    sput-object v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->sLPD_time_cost:[J

    .line 277
    sput v2, Lcom/htc/android/htcime/ezsip/KeyboardView;->sLPD_time_cost_idx:I

    .line 278
    sput-boolean v2, Lcom/htc/android/htcime/ezsip/KeyboardView;->sLPD_isShortDelay:Z

    .line 279
    sput-boolean v2, Lcom/htc/android/htcime/ezsip/KeyboardView;->sLPD_isLongPress:Z

    .line 282
    sput-boolean v2, Lcom/htc/android/htcime/ezsip/KeyboardView;->showAccentWindow:Z

    .line 283
    sput-boolean v2, Lcom/htc/android/htcime/ezsip/KeyboardView;->isReapeatKey:Z

    .line 285
    sput-boolean v2, Lcom/htc/android/htcime/ezsip/KeyboardView;->isKeyMove:Z

    .line 3471
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "KEYCODE"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "POS_X"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "POS_Y"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->KEY_POS_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v5, 0xa

    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v4, -0x1

    const/4 v1, 0x0

    .line 360
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    .line 96
    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    .line 100
    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mSharePref:Landroid/content/SharedPreferences;

    .line 101
    iput-boolean v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->isSingleLine:Z

    .line 103
    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mDHA:Lcom/htc/android/htcime/util/HtcDHA;

    .line 122
    iput v4, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mCurrentKeyIndex:I

    .line 124
    iput v4, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mCurrentFocusIndex:I

    .line 138
    iput v4, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mDefaultFeedBackBG:I

    .line 139
    iput v4, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mDefaultFeedBackFunctionBG:I

    .line 144
    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mAccentWindow:Lcom/htc/android/htcime/ezsip/common/AccentWindow;

    .line 145
    iput-boolean v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mAccentMode:Z

    .line 149
    iput-boolean v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mAddWordFlag:Z

    .line 172
    iput-boolean v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mShowPreview:Z

    .line 195
    iput v4, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mCurrentKey:I

    .line 198
    const/16 v2, 0xc

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyIndices:[I

    .line 200
    iput v4, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mRepeatKeyIndex:I

    .line 205
    const/high16 v2, 0x100

    iput v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mSIP_ID:I

    .line 206
    const/high16 v2, 0x400

    iput v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mSIP_LP_ID:I

    .line 232
    const/4 v2, 0x2

    new-array v2, v2, [J

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mVibratePattern:[J

    .line 247
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->eventXY:[I

    .line 255
    iput v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->touchThresold:I

    .line 259
    iput-boolean v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->softThresholdCheck:Z

    .line 264
    const/4 v2, 0x5

    iput v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->MAX_AP_CLEAR:I

    .line 265
    iput v5, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->MAX_AP_REMAINDER:I

    .line 267
    iput-boolean v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mAutoPressDelCan:Z

    .line 284
    iput v4, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->prevKey:I

    .line 286
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyDownTime:J

    .line 287
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyUpTime:J

    .line 293
    iput-boolean v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mRepeatArrowsMode:Z

    .line 295
    iput v4, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mShowPreviewX:I

    .line 296
    iput v4, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mShowPreviewY:I

    .line 297
    iput v4, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mCurrPopupWidth:I

    .line 298
    iput v4, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mCurrPopupHeight:I

    .line 303
    new-instance v2, Lcom/htc/android/htcime/ezsip/KeyboardView$1;

    invoke-direct {v2, p0}, Lcom/htc/android/htcime/ezsip/KeyboardView$1;-><init>(Lcom/htc/android/htcime/ezsip/KeyboardView;)V

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHandler:Landroid/os/Handler;

    .line 1227
    const/16 v2, 0x1f4

    iput v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->dpadkeyDecreaseTimeThreshold:I

    .line 1228
    iput v5, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->dpadkeyDecreaseHeight_normal:I

    .line 1229
    iput v5, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->dpadkeyDecreaseHeight:I

    .line 2085
    iput v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mOldPointerCount:I

    .line 2088
    iput-boolean v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPrimaryFingerInactive:Z

    .line 2089
    iput-boolean v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mSecondaryFingerInactive:Z

    .line 2090
    iput v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviousAction:I

    .line 2097
    iput v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->MT_SHIFT_STATUS:I

    .line 2098
    iput v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPointerCount:I

    .line 2099
    iput v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mShiftStateSaved:I

    .line 3187
    iput v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mRepeatDelCount:I

    .line 3188
    iput-boolean v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mDelWordMode:Z

    .line 3189
    const/16 v2, 0x1e

    iput v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->DELREPEATNUM:I

    .line 3190
    const/16 v2, 0x190

    iput v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->DELWORDDELAY:I

    .line 3650
    iput v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mAdjSpaceKeyH:I

    .line 3651
    iput v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mAdjCommaKeyH:I

    .line 3652
    iput v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mAdjPeriodKeyH:I

    .line 3653
    iput v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mAdjLandSwitchH:I

    .line 3654
    iput v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mAdjSYMSwitchH:I

    .line 3655
    iput v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mAdjShiftH:I

    .line 363
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/ezsip/KeyboardView;->loadConstant(Landroid/content/Context;)V

    .line 364
    iput-boolean v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mProximityCorrectOn:Z

    .line 368
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPaint:Landroid/graphics/Paint;

    .line 369
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 370
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 372
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPadding:Landroid/graphics/Rect;

    .line 373
    new-instance v2, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    invoke-direct {v2, p0}, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;-><init>(Lcom/htc/android/htcime/ezsip/KeyboardView;)V

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    .line 380
    sget-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->sFeature_Fake_MultiTouch_Enable:Z

    if-nez v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->softThresholdCheck:Z

    .line 382
    invoke-static {p1}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mSharePref:Landroid/content/SharedPreferences;

    .line 383
    return-void

    :cond_0
    move v0, v1

    .line 380
    goto :goto_0

    .line 232
    nop

    :array_0
    .array-data 0x8
        0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 90
    sget v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mRepeatDelCounter:I

    return v0
.end method

.method static synthetic access$008()I
    .locals 2

    .prologue
    .line 90
    sget v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mRepeatDelCounter:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/htc/android/htcime/ezsip/KeyboardView;->mRepeatDelCounter:I

    return v0
.end method

.method static synthetic access$200(Lcom/htc/android/htcime/ezsip/KeyboardView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/htc/android/htcime/ezsip/KeyboardView;->handleSwitchMenuClick(I)V

    return-void
.end method

.method private calculateDHAHeight()V
    .locals 3

    .prologue
    const/high16 v2, 0x40e8

    .line 3658
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->isDHA_ON:Z

    if-eqz v1, :cond_0

    .line 3660
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard;->mSpaceKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->height:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mAdjSpaceKeyH:I

    .line 3661
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard;->mCommaKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->height:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mAdjCommaKeyH:I

    .line 3662
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard;->mPeriodKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->height:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mAdjPeriodKeyH:I

    .line 3663
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard;->mLangSwitchKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->height:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mAdjLandSwitchH:I

    .line 3664
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard;->mSYMKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->height:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mAdjSYMSwitchH:I

    .line 3665
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard;->mShiftKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->height:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mAdjShiftH:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3670
    :cond_0
    :goto_0
    return-void

    .line 3666
    :catch_0
    move-exception v0

    .line 3667
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/KeyboardView;->resetDHAHeight()V

    goto :goto_0
.end method

.method private correctBiasInDTZ_Inner(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 22
    .parameter "touchPos"
    .parameter "touchPos_org"

    .prologue
    .line 1306
    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mAdjSpaceKeyH:I

    .line 1307
    .local v7, adjSpaceKeyH:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mAdjCommaKeyH:I

    .line 1308
    .local v2, adjCommaKeyH:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mAdjPeriodKeyH:I

    .line 1309
    .local v4, adjPeriodKeyH:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mAdjLandSwitchH:I

    .line 1310
    .local v3, adjLandSwitchH:I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mAdjSYMSwitchH:I

    .line 1311
    .local v5, adjSYMSwitchH:I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mAdjShiftH:I

    .line 1313
    .local v6, adjShiftH:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mSpaceKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-object/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->inside(II)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/android/htcime/ezsip/KeyboardView;->isInsideSpaceKey:Z

    .line 1314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mCommaKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-object/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->inside(II)Z

    move-result v10

    .line 1315
    .local v10, isInsideCommaKey:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mPeriodKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-object/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->inside(II)Z

    move-result v14

    .line 1316
    .local v14, isInsidePeriodKey:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mLangSwitchKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-object/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->inside(II)Z

    move-result v12

    .line 1317
    .local v12, isInsideLandSwitchKey:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mSYMKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-object/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->inside(II)Z

    move-result v16

    .line 1318
    .local v16, isInsideSYMhKey:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mShiftKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->inside(II)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/android/htcime/ezsip/KeyboardView;->isInsideShiftKey:Z

    .line 1320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mSpaceKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-object/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    add-int v21, v21, v7

    invoke-virtual/range {v19 .. v21}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->inside(II)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/android/htcime/ezsip/KeyboardView;->isInsideSpaceKey2:Z

    .line 1321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mCommaKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-object/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    add-int v21, v21, v2

    invoke-virtual/range {v19 .. v21}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->inside(II)Z

    move-result v11

    .line 1322
    .local v11, isInsideCommaKey2:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mPeriodKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-object/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    add-int v21, v21, v4

    invoke-virtual/range {v19 .. v21}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->inside(II)Z

    move-result v15

    .line 1323
    .local v15, isInsidePeriodKey2:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mLangSwitchKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-object/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    add-int v21, v21, v3

    invoke-virtual/range {v19 .. v21}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->inside(II)Z

    move-result v13

    .line 1324
    .local v13, isInsideLandSwitchKey2:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mSYMKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-object/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    add-int v21, v21, v5

    invoke-virtual/range {v19 .. v21}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->inside(II)Z

    move-result v17

    .line 1326
    .local v17, isInsideSYMhKey2:Z
    sget-boolean v19, Lcom/htc/android/htcime/HTCIMMData;->DEBUG_DHA:Z

    if-eqz v19, :cond_0

    .line 1327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v19, v0

    sget-object v19, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    check-cast v19, Lcom/htc/android/htcime/XT9IME/XT9IME;

    invoke-virtual/range {v19 .. v19}, Lcom/htc/android/htcime/XT9IME/XT9IME;->doesUserInputKnownWord()Z

    move-result v8

    .line 1328
    .local v8, b:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mShiftKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->inside(II)Z

    move-result v9

    .line 1330
    .local v9, inSideShiftKey:Z
    const-string v19, "DHA"

    const-string v20, "correctBiasInDTZ_Inner start"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    const-string v19, "DHA"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "correctBiasInDTZ_Inner isInsideShiftKey = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->isInsideShiftKey:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    const-string v19, "DHA"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "correctBiasInDTZ_Inner isInsideSpaceKey = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->isInsideSpaceKey:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    const-string v19, "DHA"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "correctBiasInDTZ_Inner isInsideCommaKey = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    const-string v19, "DHA"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "correctBiasInDTZ_Inner isInsidePeriodKey = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    const-string v19, "DHA"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "correctBiasInDTZ_Inner isInsideLandSwitchKey = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    const-string v19, "DHA"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "correctBiasInDTZ_Inner isInsideSpaceKey2 = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->isInsideSpaceKey2:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    const-string v19, "DHA"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "correctBiasInDTZ_Inner isInsideCommaKey2 = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    const-string v19, "DHA"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "correctBiasInDTZ_Inner isInsidePeriodKey2 = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    const-string v19, "DHA"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "correctBiasInDTZ_Inner isInsideLandSwitchKey2 = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    const-string v19, "DHA"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "correctBiasInDTZ_Inner inSideShiftKey = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    const-string v19, "DHA"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "correctBiasInDTZ_Inner doesUserInputKnownWord = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    const-string v20, "DHA"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "mAC_Start_with_CVB = "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v19, v0

    sget-object v19, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    check-cast v19, Lcom/htc/android/htcime/XT9IME/XT9IME;

    invoke-virtual/range {v19 .. v19}, Lcom/htc/android/htcime/XT9IME/XT9IME;->isAC_Start_With_CVB()Z

    move-result v19

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, " str = "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v19, v0

    sget-object v19, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    check-cast v19, Lcom/htc/android/htcime/XT9IME/XT9IME;

    invoke-virtual/range {v19 .. v19}, Lcom/htc/android/htcime/XT9IME/XT9IME;->getCVB_Match_Str()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    const-string v20, "DHA"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "mAC_Start_with_A = "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v19, v0

    sget-object v19, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    check-cast v19, Lcom/htc/android/htcime/XT9IME/XT9IME;

    invoke-virtual/range {v19 .. v19}, Lcom/htc/android/htcime/XT9IME/XT9IME;->isAC_Start_With_A()Z

    move-result v19

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, " str = "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v19, v0

    sget-object v19, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    check-cast v19, Lcom/htc/android/htcime/XT9IME/XT9IME;

    invoke-virtual/range {v19 .. v19}, Lcom/htc/android/htcime/XT9IME/XT9IME;->getA_Match_Str()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    .end local v8           #b:Z
    .end local v9           #inSideShiftKey:Z
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ezsip/KeyboardView;->isSpecialCase_DTZ()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 1406
    :cond_1
    :goto_0
    return-void

    .line 1348
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->isInsideSpaceKey:Z

    move/from16 v19, v0

    if-nez v19, :cond_3

    if-nez v10, :cond_3

    if-nez v14, :cond_3

    if-nez v12, :cond_3

    if-eqz v16, :cond_9

    .line 1354
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v19, v0

    sget-object v19, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    check-cast v19, Lcom/htc/android/htcime/XT9IME/XT9IME;

    invoke-virtual/range {v19 .. v19}, Lcom/htc/android/htcime/XT9IME/XT9IME;->doesUserInputKnownWord()Z

    move-result v19

    if-nez v19, :cond_1

    .line 1355
    const/16 v18, 0x0

    .line 1357
    .local v18, tmp:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->isInsideSpaceKey:Z

    move/from16 v19, v0

    if-eqz v19, :cond_5

    .line 1358
    move/from16 v18, v7

    .line 1369
    :cond_4
    :goto_1
    mul-int/lit8 v19, v18, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/htcime/ezsip/KeyboardView;->mDTZ_deltaY:I

    goto :goto_0

    .line 1359
    :cond_5
    if-eqz v10, :cond_6

    .line 1360
    move/from16 v18, v2

    goto :goto_1

    .line 1361
    :cond_6
    if-eqz v14, :cond_7

    .line 1362
    move/from16 v18, v4

    goto :goto_1

    .line 1363
    :cond_7
    if-eqz v12, :cond_8

    .line 1364
    move/from16 v18, v3

    goto :goto_1

    .line 1365
    :cond_8
    if-eqz v16, :cond_4

    .line 1366
    move/from16 v18, v5

    goto :goto_1

    .line 1372
    .end local v18           #tmp:I
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->isInsideShiftKey:Z

    move/from16 v19, v0

    if-eqz v19, :cond_a

    .line 1375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v19, v0

    sget-object v19, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    check-cast v19, Lcom/htc/android/htcime/XT9IME/XT9IME;

    invoke-virtual/range {v19 .. v19}, Lcom/htc/android/htcime/XT9IME/XT9IME;->doesUserInputKnownWord()Z

    move-result v19

    if-nez v19, :cond_1

    .line 1377
    mul-int/lit8 v19, v6, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/htcime/ezsip/KeyboardView;->mDTZ_deltaY:I

    goto :goto_0

    .line 1380
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->isInsideSpaceKey2:Z

    move/from16 v19, v0

    if-nez v19, :cond_b

    if-nez v11, :cond_b

    if-nez v15, :cond_b

    if-nez v13, :cond_b

    if-eqz v17, :cond_1

    .line 1386
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v19, v0

    sget-object v19, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    check-cast v19, Lcom/htc/android/htcime/XT9IME/XT9IME;

    invoke-virtual/range {v19 .. v19}, Lcom/htc/android/htcime/XT9IME/XT9IME;->doesUserInputKnownWord()Z

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v19, v0

    sget-object v19, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    check-cast v19, Lcom/htc/android/htcime/XT9IME/XT9IME;

    invoke-virtual/range {v19 .. v19}, Lcom/htc/android/htcime/XT9IME/XT9IME;->isAC_Start_With_CVB()Z

    move-result v19

    if-nez v19, :cond_1

    .line 1389
    const/16 v18, 0x0

    .line 1391
    .restart local v18       #tmp:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->isInsideSpaceKey2:Z

    move/from16 v19, v0

    if-eqz v19, :cond_d

    .line 1392
    move/from16 v18, v7

    .line 1403
    :cond_c
    :goto_2
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    add-int v19, v19, v18

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/htcime/ezsip/KeyboardView;->mDTZ_deltaY:I

    goto/16 :goto_0

    .line 1393
    :cond_d
    if-eqz v11, :cond_e

    .line 1394
    move/from16 v18, v2

    goto :goto_2

    .line 1395
    :cond_e
    if-eqz v15, :cond_f

    .line 1396
    move/from16 v18, v4

    goto :goto_2

    .line 1397
    :cond_f
    if-eqz v13, :cond_10

    .line 1398
    move/from16 v18, v3

    goto :goto_2

    .line 1399
    :cond_10
    if-eqz v17, :cond_c

    .line 1400
    move/from16 v18, v5

    goto :goto_2
.end method

.method private get1stKeyCode(I)I
    .locals 2
    .parameter "SIPkeyID"

    .prologue
    .line 3626
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 3627
    :cond_0
    const/16 v0, -0x62

    .line 3630
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    goto :goto_0
.end method

.method private getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    .locals 1
    .parameter "SIPkeyID"

    .prologue
    .line 3634
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 3635
    :cond_0
    const/4 v0, 0x0

    .line 3638
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method private getNextSP(Ljava/lang/String;I)I
    .locals 10
    .parameter "s"
    .parameter "offset"

    .prologue
    .line 3262
    const/4 v2, 0x0

    .line 3263
    .local v2, l:I
    add-int/lit8 v7, p2, 0x1

    .line 3264
    .local v7, rp:I
    const/16 v8, 0x3b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v7

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v5

    .line 3265
    .local v5, p_semicolon:I
    const/16 v8, 0x2c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v7

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v3

    .line 3266
    .local v3, p_comma:I
    const/16 v8, 0x2e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v7

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v4

    .line 3267
    .local v4, p_period:I
    const/16 v8, 0x20

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v7

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v6

    .line 3274
    .local v6, p_space:I
    if-le v5, v3, :cond_0

    move v0, v5

    .line 3275
    .local v0, a1:I
    :goto_0
    if-le v4, v6, :cond_1

    move v1, v4

    .line 3276
    .local v1, a2:I
    :goto_1
    if-le v0, v1, :cond_2

    move v2, v0

    .line 3278
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, p2

    add-int/lit8 v8, v8, -0x1

    sub-int v2, v8, v2

    .line 3283
    return v2

    .end local v0           #a1:I
    .end local v1           #a2:I
    :cond_0
    move v0, v3

    .line 3274
    goto :goto_0

    .restart local v0       #a1:I
    :cond_1
    move v1, v6

    .line 3275
    goto :goto_1

    .restart local v1       #a2:I
    :cond_2
    move v2, v1

    .line 3276
    goto :goto_2
.end method

.method private getTrailDeleteLen(Ljava/lang/String;)I
    .locals 3
    .parameter "s"

    .prologue
    .line 3233
    const/4 v0, -0x1

    .line 3234
    .local v0, offset:I
    const/4 v1, 0x1

    .line 3235
    .local v1, t:Z
    :cond_0
    if-eqz v1, :cond_1

    .line 3236
    add-int/lit8 v0, v0, 0x1

    .line 3237
    invoke-direct {p0, p1, v0}, Lcom/htc/android/htcime/ezsip/KeyboardView;->isLastCSeparator(Ljava/lang/String;I)Z

    move-result v1

    .line 3238
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 3242
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/htc/android/htcime/ezsip/KeyboardView;->getNextSP(Ljava/lang/String;I)I

    move-result v2

    add-int/2addr v2, v0

    return v2
.end method

.method private handleSwitchMenuClick(I)V
    .locals 5
    .parameter "which"

    .prologue
    .line 3004
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mContext:Landroid/content/Context;

    if-nez v3, :cond_0

    .line 3019
    :goto_0
    return-void

    .line 3007
    :cond_0
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3008
    .local v1, sp:Landroid/content/SharedPreferences;
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3010
    .local v0, r:Landroid/content/res/Resources;
    packed-switch p1, :pswitch_data_0

    .line 3014
    :goto_1
    :pswitch_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 3015
    .local v2, types:Ljava/lang/String;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const v4, 0x7f0900d8

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3017
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v3}, Lcom/htc/android/htcime/HTCIMEService;->getSIPSwitcher()Lcom/htc/android/htcime/util/SIPSwitcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/htcime/util/SIPSwitcher;->swicthKeyboardType()V

    .line 3018
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/KeyboardView;->hideSwitchMenuInner()V

    goto :goto_0

    .line 3011
    .end local v2           #types:Ljava/lang/String;
    :pswitch_1
    const/4 p1, 0x2

    goto :goto_1

    .line 3012
    :pswitch_2
    const/4 p1, 0x0

    goto :goto_1

    .line 3010
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private isKeyboardUnderSpace()Z
    .locals 1

    .prologue
    .line 2834
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    instance-of v0, v0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;

    if-eqz v0, :cond_0

    .line 2835
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    check-cast v0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->isUnderSpace()Z

    move-result v0

    .line 2837
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLastCSeparator(Ljava/lang/String;I)Z
    .locals 7
    .parameter "s"
    .parameter "offset"

    .prologue
    .line 3246
    add-int/lit8 v4, p2, 0x1

    .line 3247
    .local v4, rp:I
    const/16 v5, 0x3b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v2

    .line 3248
    .local v2, p_semicolon:I
    const/16 v5, 0x2c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    .line 3249
    .local v0, p_comma:I
    const/16 v5, 0x2e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    .line 3250
    .local v1, p_period:I
    const/16 v5, 0x20

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v3

    .line 3255
    .local v3, p_space:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v4

    if-eq v2, v5, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v4

    if-eq v0, v5, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v4

    if-eq v1, v5, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v4

    if-ne v3, v5, :cond_1

    .line 3257
    :cond_0
    const/4 v5, 0x1

    .line 3259
    :goto_0
    return v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private isPenStartMove(FFFF)Z
    .locals 5
    .parameter "pos_x"
    .parameter "pos_y"
    .parameter "downPos_x"
    .parameter "downPos_y"

    .prologue
    .line 2049
    float-to-int v3, p1

    float-to-int v4, p3

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v1, v3

    .line 2050
    .local v1, xDist:F
    float-to-int v3, p2

    float-to-int v4, p4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v2, v3

    .line 2051
    .local v2, yDist:F
    mul-float v3, v1, v1

    mul-float v4, v2, v2

    add-float/2addr v3, v4

    float-to-int v0, v3

    .line 2055
    .local v0, dist:I
    iget v3, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->touchThresold:I

    if-ge v0, v3, :cond_0

    .line 2056
    const/4 v3, 0x0

    .line 2058
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private lpd_checkPoint(I)V
    .locals 12
    .parameter "keyID"

    .prologue
    const/16 v4, 0x8

    const-wide/16 v10, 0x0

    const/4 v9, 0x0

    .line 621
    if-ltz p1, :cond_5

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    array-length v3, v3

    if-ge p1, v3, :cond_5

    sget-boolean v3, Lcom/htc/android/htcime/ezsip/KeyboardView;->sLPD_isLongPress:Z

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v3, v3, v9

    if-eq v3, v4, :cond_5

    .line 623
    sget-wide v3, Lcom/htc/android/htcime/ezsip/KeyboardView;->sLPD_clock_s:J

    cmp-long v3, v3, v10

    if-lez v3, :cond_2

    .line 624
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sput-wide v3, Lcom/htc/android/htcime/ezsip/KeyboardView;->sLPD_clock_e:J

    .line 625
    sget-object v3, Lcom/htc/android/htcime/ezsip/KeyboardView;->sLPD_time_cost:[J

    sget v4, Lcom/htc/android/htcime/ezsip/KeyboardView;->sLPD_time_cost_idx:I

    sget-wide v5, Lcom/htc/android/htcime/ezsip/KeyboardView;->sLPD_clock_e:J

    sget-wide v7, Lcom/htc/android/htcime/ezsip/KeyboardView;->sLPD_clock_s:J

    sub-long/2addr v5, v7

    aput-wide v5, v3, v4

    .line 627
    const-wide/16 v1, 0x0

    .line 628
    .local v1, total_time_cost:J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v3, 0x5

    if-ge v0, v3, :cond_1

    .line 630
    sget-object v3, Lcom/htc/android/htcime/ezsip/KeyboardView;->sLPD_time_cost:[J

    aget-wide v3, v3, v0

    cmp-long v3, v3, v10

    if-eqz v3, :cond_0

    .line 631
    sget-object v3, Lcom/htc/android/htcime/ezsip/KeyboardView;->sLPD_time_cost:[J

    aget-wide v3, v3, v0

    add-long/2addr v1, v3

    .line 628
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 633
    :cond_0
    const-wide v1, 0x7fffffffffffffffL

    .line 639
    :cond_1
    const-wide/16 v3, 0x9c4

    cmp-long v3, v1, v3

    if-gez v3, :cond_4

    .line 640
    const/4 v3, 0x1

    sput-boolean v3, Lcom/htc/android/htcime/ezsip/KeyboardView;->sLPD_isShortDelay:Z

    .line 645
    :goto_1
    sget v3, Lcom/htc/android/htcime/ezsip/KeyboardView;->sLPD_time_cost_idx:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/htc/android/htcime/ezsip/KeyboardView;->sLPD_time_cost_idx:I

    .line 646
    sget v3, Lcom/htc/android/htcime/ezsip/KeyboardView;->sLPD_time_cost_idx:I

    rem-int/lit8 v3, v3, 0x5

    sput v3, Lcom/htc/android/htcime/ezsip/KeyboardView;->sLPD_time_cost_idx:I

    .line 648
    .end local v0           #i:I
    .end local v1           #total_time_cost:J
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sput-wide v3, Lcom/htc/android/htcime/ezsip/KeyboardView;->sLPD_clock_s:J

    .line 664
    :cond_3
    :goto_2
    return-void

    .line 642
    .restart local v0       #i:I
    .restart local v1       #total_time_cost:J
    :cond_4
    sput-boolean v9, Lcom/htc/android/htcime/ezsip/KeyboardView;->sLPD_isShortDelay:Z

    goto :goto_1

    .line 651
    .end local v0           #i:I
    .end local v1           #total_time_cost:J
    :cond_5
    if-ltz p1, :cond_6

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    array-length v3, v3

    if-ge p1, v3, :cond_6

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v3, v3, v9

    if-ne v3, v4, :cond_6

    .line 654
    sput-wide v10, Lcom/htc/android/htcime/ezsip/KeyboardView;->sLPD_clock_s:J

    .line 655
    sget-object v3, Lcom/htc/android/htcime/ezsip/KeyboardView;->sLPD_time_cost:[J

    sget v4, Lcom/htc/android/htcime/ezsip/KeyboardView;->sLPD_time_cost_idx:I

    const-wide v5, 0x7fffffffffffffffL

    aput-wide v5, v3, v4

    .line 656
    sput-boolean v9, Lcom/htc/android/htcime/ezsip/KeyboardView;->sLPD_isShortDelay:Z

    .line 658
    sget v3, Lcom/htc/android/htcime/ezsip/KeyboardView;->sLPD_time_cost_idx:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/htc/android/htcime/ezsip/KeyboardView;->sLPD_time_cost_idx:I

    .line 659
    sget v3, Lcom/htc/android/htcime/ezsip/KeyboardView;->sLPD_time_cost_idx:I

    rem-int/lit8 v3, v3, 0x5

    sput v3, Lcom/htc/android/htcime/ezsip/KeyboardView;->sLPD_time_cost_idx:I

    .line 661
    :cond_6
    const/4 v3, -0x1

    if-ne p1, v3, :cond_3

    .line 662
    const-string v3, "KeyboardView"

    const-string v4, "keyIndex is NOT_A_KEY."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private recordSIPevent(FF)V
    .locals 10
    .parameter "rawTx"
    .parameter "rawTy"

    .prologue
    const/4 v6, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    .line 3430
    new-array v2, v6, [C

    fill-array-data v2, :array_0

    .line 3431
    .local v2, motionEventType:[C
    new-array v3, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, ", /, "

    aput-object v7, v3, v6

    const-string v6, "\n"

    aput-object v6, v3, v9

    const-string v6, ", /, "

    aput-object v6, v3, v8

    .line 3432
    .local v3, tail:[Ljava/lang/String;
    const-string v0, ",\t"

    .line 3435
    .local v0, delimeter:Ljava/lang/String;
    iget v6, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->keyIndex:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_3

    .line 3436
    const-string v1, "UNKNOWN"

    .line 3442
    .local v1, keyVal:Ljava/lang/String;
    :goto_0
    new-array v5, v8, [I

    .line 3443
    .local v5, xy:[I
    invoke-virtual {p0, v5}, Lcom/htc/android/htcime/ezsip/KeyboardView;->getLocationOnScreen([I)V

    .line 3444
    aget v6, v5, v9

    int-to-float v6, v6

    add-float/2addr p2, v6

    .line 3446
    iget v6, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->action:I

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->action:I

    if-eq v6, v9, :cond_0

    iget v6, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->action:I

    if-ne v6, v8, :cond_2

    .line 3447
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->action:I

    aget-char v7, v2, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3449
    .local v4, tmp:Ljava/lang/String;
    iget v6, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->action:I

    if-ne v6, v9, :cond_1

    .line 3450
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v7, v9}, Lcom/htc/android/htcime/HTCIMEService;->getCurrentText(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3451
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->action:I

    aget-object v7, v3, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3452
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v6, v6, Lcom/htc/android/htcime/HTCIMMData;->mTSRLog:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3454
    .end local v4           #tmp:Ljava/lang/String;
    :cond_2
    return-void

    .line 3437
    .end local v1           #keyVal:Ljava/lang/String;
    .end local v5           #xy:[I
    :cond_3
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v7, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->keyIndex:I

    aget-object v6, v6, v7

    iget-boolean v6, v6, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->function:Z

    if-eqz v6, :cond_4

    .line 3438
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FN"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->keyIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #keyVal:Ljava/lang/String;
    goto/16 :goto_0

    .line 3440
    .end local v1           #keyVal:Ljava/lang/String;
    :cond_4
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v7, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->keyIndex:I

    aget-object v6, v6, v7

    iget-object v6, v6, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-nez v6, :cond_5

    const-string v1, " "

    .restart local v1       #keyVal:Ljava/lang/String;
    :goto_1
    goto/16 :goto_0

    .end local v1           #keyVal:Ljava/lang/String;
    :cond_5
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v7, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->keyIndex:I

    aget-object v6, v6, v7

    iget-object v6, v6, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 3430
    :array_0
    .array-data 0x2
        0x44t 0x0t
        0x55t 0x0t
        0x4dt 0x0t
    .end array-data
.end method

.method private setCapModeInner(I)Z
    .locals 4
    .parameter "capMode"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 745
    iget v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mShiftState:I

    if-eq v2, p1, :cond_2

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v2}, Lcom/htc/android/htcime/ezsip/Keyboard;->getShiftKeyIndex()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 746
    iput p1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mShiftState:I

    .line 747
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v3, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mShiftState:I

    if-eq v3, v1, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v2, v0}, Lcom/htc/android/htcime/ezsip/Keyboard;->setShifted(Z)Z

    .line 748
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mShiftKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mShiftState:I

    invoke-virtual {v0, v2}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setStatus(I)V

    .line 749
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mCapsKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    if-eqz v0, :cond_1

    .line 750
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mCapsKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mShiftState:I

    invoke-virtual {v0, v2}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setStatus(I)V

    .line 751
    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/KeyboardView;->invalidateAll()V

    .line 755
    :goto_0
    return v1

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method private showHintDHA(IIZ)V
    .locals 9
    .parameter "oldKeyIdx"
    .parameter "newKeyIdx"
    .parameter "showDHAToast"

    .prologue
    .line 1551
    sget-boolean v5, Lcom/htc/android/htcime/HTCIMMData;->DEBUG_DHA:Z

    if-eqz v5, :cond_0

    .line 1552
    const-string v5, "DHA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mShowDHAHint = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/htc/android/htcime/HTCIMMData;->mShowDHAHint:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    const-string v5, "DHA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "action = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->action:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    const-string v5, "DHA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showDHAToast = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    const-string v5, "DHA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "oldKeyIdx = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " newKeyIdx = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    :cond_0
    sget-boolean v5, Lcom/htc/android/htcime/HTCIMMData;->mShowDHAHint:Z

    if-nez v5, :cond_1

    sget-boolean v5, Lcom/htc/android/htcime/HTCIMMData;->mScoring:Z

    if-eqz v5, :cond_5

    :cond_1
    iget v5, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->action:I

    if-nez v5, :cond_5

    if-eqz p3, :cond_5

    if-eq p1, p2, :cond_5

    .line 1564
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mDHA:Lcom/htc/android/htcime/util/HtcDHA;

    if-nez v5, :cond_2

    .line 1565
    new-instance v5, Lcom/htc/android/htcime/util/HtcDHA;

    invoke-direct {v5}, Lcom/htc/android/htcime/util/HtcDHA;-><init>()V

    iput-object v5, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mDHA:Lcom/htc/android/htcime/util/HtcDHA;

    .line 1567
    :cond_2
    const/4 v4, 0x0

    .line 1568
    .local v4, origKeyLabel:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1569
    .local v1, newKeyLabel:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v5, v5, p1

    iget-object v5, v5, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    const/4 v6, 0x0

    aget v3, v5, v6

    .line 1570
    .local v3, origKeyCode:I
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v5, v5, p2

    iget-object v5, v5, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    const/4 v6, 0x0

    aget v0, v5, v6

    .line 1572
    .local v0, newKeyCode:I
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v5, v5, Lcom/htc/android/htcime/ezsip/Keyboard;->mSpaceKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v5, v5, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    if-ne v3, v5, :cond_6

    .line 1574
    const-string v4, "Space"

    .line 1593
    :goto_0
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v5, v5, Lcom/htc/android/htcime/ezsip/Keyboard;->mSpaceKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v5, v5, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    if-ne v0, v5, :cond_b

    .line 1594
    const-string v1, "Space"

    .line 1610
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1612
    .local v2, notifyStr:Ljava/lang/String;
    sget-boolean v5, Lcom/htc/android/htcime/HTCIMMData;->mShowDHAHint:Z

    if-eqz v5, :cond_3

    .line 1613
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mDHA:Lcom/htc/android/htcime/util/HtcDHA;

    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, p0, v2}, Lcom/htc/android/htcime/util/HtcDHA;->NotifyDAMWork(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    .line 1616
    :cond_3
    sget-boolean v5, Lcom/htc/android/htcime/HTCIMMData;->mScoring:Z

    if-eqz v5, :cond_5

    .line 1617
    const-string v5, "Space"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "."

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "12#"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "LangSwitch"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1622
    :cond_4
    const/4 v5, 0x1

    sput-boolean v5, Lcom/htc/android/htcime/util/ScoringUtil;->mToCommitDHA:Z

    .line 1627
    :goto_2
    invoke-static {v2}, Lcom/htc/android/htcime/util/ScoringUtil;->appendDHANotifyStr(Ljava/lang/String;)V

    .line 1630
    .end local v0           #newKeyCode:I
    .end local v1           #newKeyLabel:Ljava/lang/String;
    .end local v2           #notifyStr:Ljava/lang/String;
    .end local v3           #origKeyCode:I
    .end local v4           #origKeyLabel:Ljava/lang/String;
    :cond_5
    return-void

    .line 1575
    .restart local v0       #newKeyCode:I
    .restart local v1       #newKeyLabel:Ljava/lang/String;
    .restart local v3       #origKeyCode:I
    .restart local v4       #origKeyLabel:Ljava/lang/String;
    :cond_6
    const/16 v5, -0xf

    if-eq v3, v5, :cond_7

    const/16 v5, -0x10

    if-eq v3, v5, :cond_7

    const/16 v5, -0x17

    if-eq v3, v5, :cond_7

    const/16 v5, -0x18

    if-eq v3, v5, :cond_7

    const/16 v5, -0x19

    if-ne v3, v5, :cond_8

    .line 1582
    :cond_7
    const-string v4, "LangSwitch"

    goto :goto_0

    .line 1583
    :cond_8
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v5, v5, Lcom/htc/android/htcime/ezsip/Keyboard;->mShiftKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v5, v5, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    if-ne v3, v5, :cond_9

    .line 1585
    const-string v4, "Shift"

    goto/16 :goto_0

    .line 1586
    :cond_9
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v5, v5, Lcom/htc/android/htcime/ezsip/Keyboard;->mSYMKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v5, v5, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    if-ne v3, v5, :cond_a

    .line 1587
    const-string v4, "12#"

    goto/16 :goto_0

    .line 1590
    :cond_a
    const-string v5, "%c"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 1595
    :cond_b
    const/16 v5, -0xf

    if-eq v0, v5, :cond_c

    const/16 v5, -0x10

    if-eq v0, v5, :cond_c

    const/16 v5, -0x17

    if-eq v0, v5, :cond_c

    const/16 v5, -0x18

    if-eq v0, v5, :cond_c

    const/16 v5, -0x19

    if-ne v0, v5, :cond_d

    .line 1601
    :cond_c
    const-string v1, "LangSwitch"

    goto/16 :goto_1

    .line 1602
    :cond_d
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v5, v5, Lcom/htc/android/htcime/ezsip/Keyboard;->mShiftKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v5, v5, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    if-ne v0, v5, :cond_e

    .line 1603
    const-string v1, "Shift"

    goto/16 :goto_1

    .line 1604
    :cond_e
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v5, v5, Lcom/htc/android/htcime/ezsip/Keyboard;->mSYMKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v5, v5, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    if-ne v0, v5, :cond_f

    .line 1605
    const-string v1, "12#"

    goto/16 :goto_1

    .line 1607
    :cond_f
    const-string v5, "%c"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 1624
    .restart local v2       #notifyStr:Ljava/lang/String;
    :cond_10
    const/4 v5, 0x1

    sput-boolean v5, Lcom/htc/android/htcime/util/ScoringUtil;->mToCharDHA:Z

    goto/16 :goto_2
.end method

.method private testTouchDownUpBehavior(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 7
    .parameter "canvas"
    .parameter "paint"

    .prologue
    const/high16 v6, 0x4040

    .line 3457
    const/16 v0, 0x80

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3458
    const/high16 v0, -0x1

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 3459
    iget v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mStartX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mStartY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1, v6, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 3460
    iget v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mStartX:I

    int-to-float v1, v0

    iget v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mStartY:I

    int-to-float v2, v0

    iget v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mLastX:I

    int-to-float v3, v0

    iget v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mLastY:I

    int-to-float v4, v0

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 3461
    const v0, -0xffff01

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 3462
    iget v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mLastX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mLastY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1, v6, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 3463
    const v0, -0xff0100

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 3464
    iget v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mStartX:I

    iget v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mLastX:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mStartY:I

    iget v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mLastY:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const/high16 v2, 0x4000

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 3465
    return-void
.end method

.method private toDate(J)Ljava/lang/String;
    .locals 4
    .parameter "time_ms"

    .prologue
    .line 2076
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2077
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mCalendar:Ljava/util/Calendar;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mCalendar:Ljava/util/Calendar;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mCalendar:Ljava/util/Calendar;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mCalendar:Ljava/util/Calendar;

    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private voiceTextCheck(I)V
    .locals 3
    .parameter "key_idx"

    .prologue
    const/4 v2, 0x0

    .line 3381
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 3397
    :cond_0
    :goto_0
    return-void

    .line 3385
    :cond_1
    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->sFeature_VoiceInput_Enable:Z

    if-eqz v0, :cond_0

    .line 3386
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getVoiceInput()Lcom/htc/android/htcime/deprecated/voice/VoiceInput;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getVoiceInput()Lcom/htc/android/htcime/deprecated/voice/VoiceInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->getResultFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3388
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v0, v0, v2

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 3389
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const-string v1, ""

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/htcime/HTCIMEService;->commitText(Ljava/lang/CharSequence;I)V

    .line 3394
    :goto_1
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getVoiceInput()Lcom/htc/android/htcime/deprecated/voice/VoiceInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->clearResultFlag()V

    goto :goto_0

    .line 3392
    :cond_2
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->finishComposingText()V

    goto :goto_1
.end method


# virtual methods
.method protected SIPkey2IMkey(I)I
    .locals 3
    .parameter "SIPkeyID"

    .prologue
    .line 3617
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    array-length v1, v1

    if-lt p1, v1, :cond_2

    .line 3618
    :cond_0
    const/4 p1, -0x1

    .line 3622
    .end local p1
    :cond_1
    :goto_0
    return p1

    .line 3621
    .restart local p1
    :cond_2
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v0, v1, p1

    .line 3622
    .local v0, key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    iget v1, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mXT9IdxMap:I

    const/16 v2, -0x3e7

    if-eq v1, v2, :cond_1

    iget p1, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mXT9IdxMap:I

    goto :goto_0
.end method

.method protected VibrationEffect(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)V
    .locals 4
    .parameter "key"

    .prologue
    .line 1213
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->mVibrateSkip:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mLastVibrateTime:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget v2, Lcom/htc/android/htcime/HTCIMMData;->mVibrateSkipThreshold:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 1214
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mLastVibrateTime:J

    .line 1222
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getVibrator()Landroid/os/Vibrator;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/htcime/util/VibrationUtil;->playVibrationEffectMS(Landroid/os/Vibrator;)V

    .line 1224
    :cond_1
    return-void
.end method

.method protected adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "label"

    .prologue
    .line 819
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ezsip/Keyboard;->isShifted()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 820
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 821
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/Locale;

    const-string v2, "en"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 825
    :cond_0
    :goto_0
    return-object p1

    .line 823
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public closing()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2777
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getDAM()Lcom/htc/android/htcime/util/htcDAM;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2778
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getDAM()Lcom/htc/android/htcime/util/htcDAM;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/util/htcDAM;->ReleaseKeyboard(Landroid/graphics/Bitmap;)I

    .line 2781
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/KeyboardView;->previewDismiss()V

    .line 2784
    iget v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mCurrentKey:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mCurrentKey:I

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mCurrentKey:I

    aget-object v0, v0, v1

    iget-boolean v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_1

    .line 2785
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mCurrentKey:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->onReleased()V

    .line 2786
    iget v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mCurrentKey:I

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/KeyboardView;->invalidateKey(I)V

    .line 2789
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2790
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2791
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2794
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/KeyboardView;->setAccentMode(Z)V

    .line 2796
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mAccentWindow:Lcom/htc/android/htcime/ezsip/common/AccentWindow;

    if-eqz v0, :cond_2

    .line 2797
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mAccentWindow:Lcom/htc/android/htcime/ezsip/common/AccentWindow;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->hideAccentLetters()Z

    .line 2799
    :cond_2
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2800
    :cond_3
    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    .line 2801
    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    .line 2805
    return-void
.end method

.method protected correctBias([I)V
    .locals 13
    .parameter "eventXY"

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 3036
    aget v6, p1, v10

    if-gez v6, :cond_3

    aput v10, p1, v10

    .line 3039
    :cond_0
    :goto_0
    aget v6, p1, v9

    if-gez v6, :cond_4

    aput v10, p1, v9

    .line 3043
    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v6, v6, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    if-ne v6, v9, :cond_e

    .line 3044
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v6, v6, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v6}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v6

    iget v4, v6, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    .line 3046
    .local v4, sipId:I
    packed-switch v4, :pswitch_data_0

    .line 3129
    .end local v4           #sipId:I
    :cond_2
    :goto_2
    return-void

    .line 3037
    :cond_3
    aget v6, p1, v10

    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/KeyboardView;->getWidth()I

    move-result v7

    if-lt v6, v7, :cond_0

    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/KeyboardView;->getWidth()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    aput v6, p1, v10

    goto :goto_0

    .line 3040
    :cond_4
    aget v6, p1, v9

    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/KeyboardView;->getHeight()I

    move-result v7

    if-lt v6, v7, :cond_1

    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/KeyboardView;->getHeight()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    aput v6, p1, v9

    goto :goto_1

    .line 3054
    .restart local v4       #sipId:I
    :pswitch_0
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    array-length v3, v6

    .line 3055
    .local v3, keyCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    if-ge v1, v3, :cond_6

    .line 3056
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v2, v6, v1

    .line 3057
    .local v2, key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    iget-boolean v6, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->function:Z

    if-ne v6, v9, :cond_5

    iget-object v6, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pos:Landroid/graphics/Rect;

    aget v7, p1, v10

    aget v8, p1, v9

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-nez v6, :cond_2

    .line 3055
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 3062
    .end local v2           #key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    :cond_6
    const/4 v6, 0x4

    new-array v0, v6, [F

    .line 3063
    .local v0, biasParam:[F
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v6, v6, Lcom/htc/android/htcime/HTCIMMData;->mPortBias:[F

    aget v6, v6, v9

    cmpl-float v6, v6, v11

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v6, v6, Lcom/htc/android/htcime/HTCIMMData;->mPortBias:[F

    aget v6, v6, v12

    cmpl-float v6, v6, v11

    if-nez v6, :cond_c

    .line 3065
    :cond_7
    sget-object v0, Lcom/htc/android/htcime/HTCIMMData;->KEYBOARD_P_BIAS_DEF:[F

    .line 3066
    iget v6, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->action:I

    if-nez v6, :cond_8

    const-string v6, "KeyboardView"

    const-string v7, "[correctBias] Invalid value of mPortBias, default value instead."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3073
    :cond_8
    :goto_4
    aget v6, v0, v10

    aget v7, p1, v10

    int-to-float v7, v7

    aget v8, v0, v9

    mul-float/2addr v7, v8

    add-float v5, v6, v7

    .line 3074
    .local v5, tmp:F
    cmpl-float v6, v5, v11

    if-ltz v6, :cond_9

    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/KeyboardView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    cmpg-float v6, v5, v6

    if-gez v6, :cond_9

    .line 3075
    float-to-int v6, v5

    aput v6, p1, v10

    .line 3080
    :cond_9
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eqz v6, :cond_a

    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v7, 0x8a

    if-eq v6, v7, :cond_a

    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v7, 0x91

    if-eq v6, v7, :cond_a

    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v7, 0xa9

    if-eq v6, v7, :cond_a

    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v7, 0xaa

    if-eq v6, v7, :cond_a

    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v7, 0xe0

    if-ne v6, v7, :cond_d

    .line 3087
    :cond_a
    aget v6, p1, v9

    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v7, v7, Lcom/htc/android/htcime/ezsip/Keyboard;->mKeyboardPaddingTop:I

    iget-object v8, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v8, v8, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefaultHeight:I

    mul-int/lit8 v8, v8, 0x3

    add-int/2addr v7, v8

    if-ge v6, v7, :cond_2

    .line 3096
    :cond_b
    const/4 v6, 0x2

    aget v6, v0, v6

    aget v7, p1, v9

    int-to-float v7, v7

    aget v8, v0, v12

    mul-float/2addr v7, v8

    add-float v5, v6, v7

    .line 3097
    cmpl-float v6, v5, v11

    if-ltz v6, :cond_2

    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/KeyboardView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    cmpg-float v6, v5, v6

    if-gez v6, :cond_2

    .line 3098
    float-to-int v6, v5

    aput v6, p1, v9

    goto/16 :goto_2

    .line 3070
    .end local v5           #tmp:F
    :cond_c
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v6, Lcom/htc/android/htcime/HTCIMMData;->mPortBias:[F

    goto :goto_4

    .line 3092
    .restart local v5       #tmp:F
    :cond_d
    aget v6, p1, v9

    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/KeyboardView;->getHeight()I

    move-result v7

    iget-object v8, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v8, v8, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefaultHeight:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v8, v8, Lcom/htc/android/htcime/ezsip/Keyboard;->mKeyboardPaddingBottom:I

    sub-int/2addr v7, v8

    if-le v6, v7, :cond_b

    goto/16 :goto_2

    .line 3106
    .end local v0           #biasParam:[F
    .end local v1           #i:I
    .end local v3           #keyCount:I
    .end local v4           #sipId:I
    .end local v5           #tmp:F
    :cond_e
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    array-length v3, v6

    .line 3107
    .restart local v3       #keyCount:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_5
    if-ge v1, v3, :cond_10

    .line 3108
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v2, v6, v1

    .line 3109
    .restart local v2       #key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    iget-boolean v6, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->function:Z

    if-ne v6, v9, :cond_f

    iget-object v6, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pos:Landroid/graphics/Rect;

    aget v7, p1, v10

    aget v8, p1, v9

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-nez v6, :cond_2

    .line 3107
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 3116
    .end local v2           #key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    :cond_10
    aget v6, p1, v9

    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/KeyboardView;->getHeight()I

    move-result v7

    iget-object v8, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v8, v8, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefaultHeight:I

    sub-int/2addr v7, v8

    if-gt v6, v7, :cond_2

    .line 3121
    aget v6, p1, v9

    sget v7, Lcom/htc/android/htcime/ezsip/KeyboardView;->sVERTICAL_CORRECTION:I

    add-int v5, v6, v7

    .line 3122
    .local v5, tmp:I
    if-ltz v5, :cond_11

    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/KeyboardView;->getHeight()I

    move-result v6

    if-ge v5, v6, :cond_11

    .line 3123
    aput v5, p1, v9

    goto/16 :goto_2

    .line 3124
    :cond_11
    if-gez v5, :cond_12

    .line 3125
    aput v10, p1, v9

    goto/16 :goto_2

    .line 3127
    :cond_12
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/KeyboardView;->getHeight()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    aput v6, p1, v9

    goto/16 :goto_2

    .line 3046
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method correctBiasInDTZ(Landroid/graphics/Point;Landroid/graphics/Point;)Z
    .locals 3
    .parameter "touchPos"
    .parameter "touchPos_org"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1415
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->isDHA_ON:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 1454
    :goto_0
    return v0

    .line 1416
    :cond_0
    sget v0, Lcom/htc/android/htcime/HTCIMMData;->mLanguage:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMMData;->isQwertyAlphabet()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    instance-of v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;

    if-eqz v0, :cond_1

    instance-of v0, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/htc/android/htcime/ezsip/EZSIPView;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ezsip/EZSIPView;->getPredictionMode()Z

    move-result v0

    if-eq v0, v2, :cond_2

    .line 1422
    :cond_1
    const-string v0, "DHA"

    const-string v2, "DHA do Nothing"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1423
    goto :goto_0

    .line 1426
    :cond_2
    iget v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->action:I

    packed-switch v0, :pswitch_data_0

    .line 1446
    :cond_3
    :goto_1
    iget v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mDTZ_deltaX:I

    if-nez v0, :cond_4

    iget v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mDTZ_deltaY:I

    if-eqz v0, :cond_6

    .line 1447
    :cond_4
    iget v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mDTZ_deltaX:I

    iget v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mDTZ_deltaY:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Point;->offset(II)V

    .line 1449
    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->DEBUG_DHA:Z

    if-eqz v0, :cond_5

    const-string v0, "DHA"

    const-string v1, "DHA return true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v0, v2

    .line 1450
    goto :goto_0

    .line 1429
    :pswitch_0
    iput-boolean v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mDTZ_isFingerMoved:Z

    .line 1430
    iput v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mDTZ_deltaY:I

    iput v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mDTZ_deltaX:I

    .line 1431
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcime/ezsip/KeyboardView;->correctBiasInDTZ_Inner(Landroid/graphics/Point;Landroid/graphics/Point;)V

    goto :goto_1

    .line 1434
    :pswitch_1
    iput-boolean v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mDTZ_isFingerMoved:Z

    .line 1435
    iput v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mDTZ_deltaY:I

    iput v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mDTZ_deltaX:I

    goto :goto_1

    .line 1438
    :pswitch_2
    iget-boolean v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mDTZ_isFingerMoved:Z

    if-eqz v0, :cond_3

    .line 1439
    iput-boolean v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mDTZ_isFingerMoved:Z

    .line 1440
    iput v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mDTZ_deltaY:I

    iput v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mDTZ_deltaX:I

    .line 1441
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcime/ezsip/KeyboardView;->correctBiasInDTZ_Inner(Landroid/graphics/Point;Landroid/graphics/Point;)V

    goto :goto_1

    .line 1453
    :cond_6
    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->DEBUG_DHA:Z

    if-eqz v0, :cond_7

    const-string v0, "DHA"

    const-string v2, "DHA return false"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move v0, v1

    .line 1454
    goto :goto_0

    .line 1426
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 852
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v2}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v2

    iget v2, v2, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    if-eq v1, v2, :cond_0

    .line 873
    :goto_0
    return-void

    .line 859
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-boolean v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard;->fullInvalidate:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 860
    :cond_1
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMEService;->getSIPSwitcher()Lcom/htc/android/htcime/util/SIPSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/htcime/util/SIPSwitcher;->getCurSIPDisplay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/KeyboardView;->onBufferDraw(Ljava/lang/String;)V

    .line 864
    :cond_2
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mTrace:Lcom/htc/android/htcime/ezsip/trace/Trace;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/trace/Trace;->isTracing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 865
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mTrace:Lcom/htc/android/htcime/ezsip/trace/Trace;

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/ezsip/trace/Trace;->onDraw(Landroid/graphics/Canvas;)V

    .line 867
    :cond_3
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 868
    :catch_0
    move-exception v0

    .line 869
    .local v0, e:Ljava/lang/Throwable;
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 870
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/htc/android/htcime/ezsip/Keyboard;->fullInvalidate:Z

    .line 871
    const-string v1, "KeyboardView"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected feedbackEffect(I)V
    .locals 3
    .parameter "key_idx"

    .prologue
    .line 3418
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    array-length v1, v1

    if-lt p1, v1, :cond_1

    .line 3424
    :cond_0
    :goto_0
    return-void

    .line 3421
    :cond_1
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v0, v1, p1

    .line 3422
    .local v0, key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/KeyboardView;->playKeyClick(I)V

    .line 3423
    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/KeyboardView;->VibrationEffect(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)V

    goto :goto_0
.end method

.method public finishInput()V
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mTrace:Lcom/htc/android/htcime/ezsip/trace/Trace;

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mTrace:Lcom/htc/android/htcime/ezsip/trace/Trace;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ezsip/trace/Trace;->finish()V

    .line 602
    :cond_0
    return-void
.end method

.method protected getAccentMode()Z
    .locals 1

    .prologue
    .line 2933
    iget-boolean v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mAccentMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCountPerRow()[I
    .locals 1

    .prologue
    .line 805
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    if-eqz v0, :cond_0

    .line 806
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ezsip/Keyboard;->getCountPerRow()[I

    move-result-object v0

    .line 808
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getKeyIndicesClosest(II[I)I
    .locals 18
    .parameter "x"
    .parameter "y"
    .parameter "allKeys"

    .prologue
    .line 1461
    const/4 v2, -0x1

    .line 1462
    .local v2, closestKey:I
    sget v14, Lcom/htc/android/htcime/ezsip/KeyboardView;->sNEAR_THRESHOLD:I

    add-int/lit8 v3, v14, 0x1

    .line 1463
    .local v3, closestKeyDist:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    array-length v7, v14

    .line 1465
    .local v7, keyCount:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v14}, Lcom/htc/android/htcime/ezsip/Keyboard;->getHeight()I

    move-result v11

    .line 1466
    .local v11, total_height:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    sget v14, Lcom/htc/android/htcime/ezsip/Keyboard;->sBottomGap:I

    sub-int v14, v11, v14

    move/from16 v0, p2

    if-le v0, v14, :cond_0

    .line 1467
    const/4 v5, -0x1

    .line 1546
    :goto_0
    return v5

    .line 1468
    :cond_0
    const/4 v10, 0x0

    .line 1469
    .local v10, showDHAToast:Z
    const/4 v9, -0x1

    .line 1470
    .local v9, oldKeyIdx:I
    const/4 v8, -0x1

    .line 1472
    .local v8, newKeyIdx:I
    const/4 v13, 0x0

    .line 1473
    .local v13, touchZoneRevised:Z
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v7, :cond_a

    .line 1474
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v6, v14, v5

    .line 1476
    .local v6, key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v14, v14, Lcom/htc/android/htcime/HTCIMMData;->mTrace:Lcom/htc/android/htcime/ezsip/trace/Trace;

    invoke-virtual {v14}, Lcom/htc/android/htcime/ezsip/trace/Trace;->isTracing()Z

    move-result v14

    if-nez v14, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ezsip/KeyboardView;->getAccentMode()Z

    move-result v14

    if-eqz v14, :cond_5

    :cond_1
    const/4 v14, 0x1

    :goto_2
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v6, v0, v1, v14}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->inside(IIZ)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 1477
    iget-boolean v14, v6, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->enable:Z

    if-eqz v14, :cond_9

    .line 1479
    iget-object v14, v6, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    const/16 v15, -0x13

    if-eq v14, v15, :cond_2

    iget-object v14, v6, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    const/16 v15, -0x14

    if-ne v14, v15, :cond_7

    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v14, v14, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_7

    .line 1483
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->action:I

    if-nez v14, :cond_3

    .line 1484
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iget v14, v14, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mLastDownBtnIndex:I

    const/16 v15, 0xff

    if-eq v14, v15, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iget v15, v15, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mLastDownBtnIndex:I

    aget-object v14, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/android/htcime/ezsip/KeyboardView;->isWordComponent(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mLastQPTime:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    const-wide/16 v16, 0x1f4

    cmp-long v14, v14, v16

    if-gez v14, :cond_6

    .line 1486
    iget v14, v6, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->height:I

    int-to-double v14, v14

    const-wide/high16 v16, 0x3fe0

    mul-double v14, v14, v16

    double-to-int v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->dpadkeyDecreaseHeight:I

    .line 1491
    :cond_3
    :goto_3
    iget v14, v6, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->y:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->dpadkeyDecreaseHeight:I

    add-int/2addr v14, v15

    move/from16 v0, p2

    if-ge v0, v14, :cond_8

    .line 1492
    const/4 v5, 0x0

    .line 1493
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->dpadkeyDecreaseHeight:I

    sub-int p2, p2, v14

    .line 1494
    const/4 v13, 0x1

    .line 1473
    :cond_4
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 1476
    :cond_5
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 1488
    :cond_6
    const/16 v14, 0xa

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->dpadkeyDecreaseHeight:I

    goto :goto_3

    .line 1499
    :cond_7
    if-nez v13, :cond_8

    .line 1501
    new-instance v12, Landroid/graphics/Point;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {v12, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 1503
    .local v12, touchPos:Landroid/graphics/Point;
    new-instance v14, Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->touchX_org:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->touchY_org:I

    move/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v14}, Lcom/htc/android/htcime/ezsip/KeyboardView;->correctBiasInDTZ(Landroid/graphics/Point;Landroid/graphics/Point;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 1504
    iget v0, v12, Landroid/graphics/Point;->x:I

    move/from16 p1, v0

    .line 1505
    iget v0, v12, Landroid/graphics/Point;->y:I

    move/from16 p2, v0

    .line 1506
    const/4 v13, 0x1

    .line 1507
    const/4 v10, 0x1

    .line 1508
    move v9, v5

    .line 1509
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ezsip/KeyboardView;->onRelease()V

    .line 1510
    const/4 v5, 0x0

    .line 1511
    goto :goto_4

    .line 1515
    .end local v12           #touchPos:Landroid/graphics/Point;
    :cond_8
    move v8, v5

    .line 1516
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v8, v10}, Lcom/htc/android/htcime/ezsip/KeyboardView;->showHintDHA(IIZ)V

    goto/16 :goto_0

    .line 1520
    :cond_9
    const/4 v5, -0x1

    goto/16 :goto_0

    .line 1525
    .end local v6           #key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    :cond_a
    const/4 v5, 0x0

    :goto_5
    if-ge v5, v7, :cond_d

    .line 1526
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v6, v14, v5

    .line 1527
    .restart local v6       #key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    const/4 v4, 0x0

    .line 1529
    .local v4, dist:I
    iget-boolean v14, v6, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->function:Z

    if-eqz v14, :cond_c

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->insideY(I)Z

    move-result v14

    if-nez v14, :cond_c

    .line 1525
    :cond_b
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 1532
    :cond_c
    iget-boolean v14, v6, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->enable:Z

    if-eqz v14, :cond_b

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v6, v0, v1}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->distFrom(II)I

    move-result v4

    sget v14, Lcom/htc/android/htcime/ezsip/KeyboardView;->sNEAR_THRESHOLD:I

    if-ge v4, v14, :cond_b

    .line 1533
    if-ge v4, v3, :cond_b

    .line 1534
    move v3, v4

    .line 1535
    move v2, v5

    goto :goto_6

    .line 1540
    .end local v4           #dist:I
    .end local v6           #key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    :cond_d
    move v8, v2

    .line 1541
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v8, v10}, Lcom/htc/android/htcime/ezsip/KeyboardView;->showHintDHA(IIZ)V

    .line 1543
    const/4 v14, -0x1

    if-eq v2, v14, :cond_e

    move v5, v2

    .line 1544
    goto/16 :goto_0

    .line 1546
    :cond_e
    const/4 v5, -0x1

    goto/16 :goto_0
.end method

.method public getKeyboard()Lcom/htc/android/htcime/ezsip/Keyboard;
    .locals 1

    .prologue
    .line 700
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    return-object v0
.end method

.method public getKeyboardPadding()Landroid/graphics/Rect;
    .locals 5

    .prologue
    .line 3642
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPadding:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 3643
    const/4 v0, 0x0

    .line 3646
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard;->mKeyboardPaddingLeft:I

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v2, v2, Lcom/htc/android/htcime/ezsip/Keyboard;->mKeyboardPaddingTop:I

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v3, v3, Lcom/htc/android/htcime/ezsip/Keyboard;->mKeyboardPaddingRight:I

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v4, v4, Lcom/htc/android/htcime/ezsip/Keyboard;->mKeyboardPaddingBottom:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0
.end method

.method public getShiftState()I
    .locals 1

    .prologue
    .line 3562
    iget v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mShiftState:I

    return v0
.end method

.method public getTotalRows()I
    .locals 1

    .prologue
    .line 812
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    if-eqz v0, :cond_0

    .line 813
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ezsip/Keyboard;->getTotalRows()I

    move-result v0

    .line 815
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected handleAccent()Z
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2647
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/KeyboardView;->getAccentMode()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2648
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mAccentWindow:Lcom/htc/android/htcime/ezsip/common/AccentWindow;

    invoke-virtual {v6}, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->getAccentString()Ljava/lang/CharSequence;

    move-result-object v2

    .line 2650
    .local v2, accentString:Ljava/lang/CharSequence;
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-le v6, v4, :cond_3

    .line 2652
    const-string v6, "1#"

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2653
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/high16 v7, 0x71c

    invoke-virtual {v6, v7}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyEvent(I)V

    .line 2654
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/4 v7, -0x2

    invoke-virtual {v6, v7}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v0

    .line 2656
    .local v0, SymKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    if-eqz v0, :cond_0

    .line 2657
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v6}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 2658
    .local v1, SymKeyIdex:I
    iget v6, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->x:I

    iget v7, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->y:I

    invoke-virtual {p0, v1, v6, v7}, Lcom/htc/android/htcime/ezsip/KeyboardView;->onClick(III)V

    .line 2675
    .end local v0           #SymKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    .end local v1           #SymKeyIdex:I
    :cond_0
    :goto_0
    invoke-virtual {p0, v5}, Lcom/htc/android/htcime/ezsip/KeyboardView;->setAccentMode(Z)V

    .line 2679
    .end local v2           #accentString:Ljava/lang/CharSequence;
    :goto_1
    return v4

    .line 2663
    .restart local v2       #accentString:Ljava/lang/CharSequence;
    :cond_1
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    sget-object v6, Lcom/htc/android/htcime/XT9IME/XT9IME;->mSpecTerms:[Ljava/lang/String;

    array-length v6, v6

    if-ge v3, v6, :cond_0

    .line 2664
    sget-object v6, Lcom/htc/android/htcime/XT9IME/XT9IME;->mSpecTerms:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2665
    const/high16 v6, 0x711

    or-int/2addr v6, v3

    invoke-virtual {p0, v6}, Lcom/htc/android/htcime/ezsip/KeyboardView;->sendKeyEvent(I)V

    goto :goto_0

    .line 2663
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2671
    .end local v3           #i:I
    :cond_3
    iget v6, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mSIP_LP_ID:I

    const/high16 v7, 0xf00

    if-ne v6, v7, :cond_4

    .line 2672
    iget v6, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mSIP_LP_ID:I

    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mAccentWindow:Lcom/htc/android/htcime/ezsip/common/AccentWindow;

    invoke-virtual {v7}, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->getAccentString()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    or-int/2addr v6, v7

    invoke-virtual {p0, v6}, Lcom/htc/android/htcime/ezsip/KeyboardView;->sendKeyEvent(I)V

    goto :goto_0

    .line 2674
    :cond_4
    iget v6, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mSIP_LP_ID:I

    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mAccentWindow:Lcom/htc/android/htcime/ezsip/common/AccentWindow;

    invoke-virtual {v7}, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->getAccentString()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    or-int/2addr v6, v7

    iget v7, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mLastCodeX:I

    iget v8, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mLastCodeY:I

    invoke-virtual {p0, v6, v7, v8}, Lcom/htc/android/htcime/ezsip/KeyboardView;->sendKeyEvent(III)V

    goto :goto_0

    .end local v2           #accentString:Ljava/lang/CharSequence;
    :cond_5
    move v4, v5

    .line 2679
    goto :goto_1
.end method

.method public handleBack()Z
    .locals 1

    .prologue
    .line 2820
    const/4 v0, 0x0

    return v0
.end method

.method protected hideSwitchMenuInner()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3022
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mSwitchingDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 3023
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mSwitchingDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 3024
    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mSwitchingDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 3026
    :cond_0
    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mDialogBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 3027
    return-void
.end method

.method initPreview(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const v4, 0x7f020052

    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 387
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/KeyboardView;->previewDismiss()V

    .line 389
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 391
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 392
    const v2, 0x7f0a001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviewHeight:I

    .line 393
    const v2, 0x7f0a0021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviewBtnDist:I

    .line 400
    :goto_0
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v2, v2, Lcom/htc/android/htcime/ezsip/Keyboard;->mPopupHeight:I

    iput v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviewHeight:I

    .line 401
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mScreenWidth:I

    .line 403
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 407
    .local v0, inflate:Landroid/view/LayoutInflater;
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-direct {v2, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 408
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviewFrame:Landroid/widget/FrameLayout;

    .line 411
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-direct {v2, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviewPopupFunc:Landroid/widget/PopupWindow;

    .line 412
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviewFrameFunc:Landroid/widget/FrameLayout;

    .line 423
    const v2, 0x7f030048

    invoke-virtual {v0, v2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    .line 424
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 425
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviewIcon:Landroid/widget/ImageView;

    .line 426
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviewIcon:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 427
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviewIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 429
    new-instance v2, Landroid/view/View;

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mFeedBack:Landroid/view/View;

    .line 432
    new-instance v2, Lcom/htc/android/htcime/ezsip/KeyboardView$2;

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/htc/android/htcime/ezsip/KeyboardView$2;-><init>(Lcom/htc/android/htcime/ezsip/KeyboardView;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mFeedBackFunc:Landroid/view/View;

    .line 536
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mFeedBackSource:Landroid/widget/FrameLayout$LayoutParams;

    .line 538
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mFeedBackSource:Landroid/widget/FrameLayout$LayoutParams;

    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 540
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviewFrame:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    iget v5, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviewHeight:I

    invoke-direct {v4, v7, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 542
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviewFrame:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviewIcon:Landroid/widget/ImageView;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    iget v5, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviewHeight:I

    invoke-direct {v4, v7, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 544
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviewFrame:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mFeedBack:Landroid/view/View;

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mFeedBackSource:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 546
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviewFrameFunc:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mFeedBackFunc:Landroid/view/View;

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mFeedBackSource:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 548
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviewFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 549
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v8}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 550
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 551
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 554
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviewPopupFunc:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviewFrameFunc:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 555
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviewPopupFunc:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v8}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 556
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviewPopupFunc:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 557
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviewPopupFunc:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 559
    iput-object p0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPopupParent:Landroid/view/View;

    .line 561
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/ezsip/KeyboardView;->loadFeedbackBG(Landroid/content/Context;)V

    .line 562
    return-void

    .line 396
    .end local v0           #inflate:Landroid/view/LayoutInflater;
    :cond_0
    const v2, 0x7f0a001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviewHeight:I

    .line 397
    const v2, 0x7f0a0020

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviewBtnDist:I

    goto/16 :goto_0
.end method

.method protected init_lpd_data()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 605
    sput-wide v3, Lcom/htc/android/htcime/ezsip/KeyboardView;->sLPD_clock_s:J

    .line 606
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 608
    sget-object v1, Lcom/htc/android/htcime/ezsip/KeyboardView;->sLPD_time_cost:[J

    aput-wide v3, v1, v0

    .line 606
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 610
    :cond_0
    sput v2, Lcom/htc/android/htcime/ezsip/KeyboardView;->sLPD_time_cost_idx:I

    .line 611
    sput-boolean v2, Lcom/htc/android/htcime/ezsip/KeyboardView;->sLPD_isShortDelay:Z

    .line 612
    return-void
.end method

.method protected invalidateAll()V
    .locals 2

    .prologue
    .line 1938
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->fullInvalidate:Z

    .line 1939
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/KeyboardView;->invalidate()V

    .line 1940
    return-void
.end method

.method protected invalidateKey(I)V
    .locals 6
    .parameter "keyIndex"

    .prologue
    .line 1943
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    array-length v1, v1

    if-lt p1, v1, :cond_1

    .line 1951
    :cond_0
    :goto_0
    return-void

    .line 1946
    :cond_1
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v0, v1, p1

    .line 1947
    .local v0, key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setValidate(Z)V

    .line 1948
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMEService;->getSIPSwitcher()Lcom/htc/android/htcime/util/SIPSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/htcime/util/SIPSwitcher;->getCurSIPDisplay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/KeyboardView;->onBufferDraw(Ljava/lang/String;)V

    .line 1949
    iget v1, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->x:I

    iget v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPaddingLeft:I

    add-int/2addr v1, v2

    iget v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->y:I

    iget v3, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPaddingTop:I

    add-int/2addr v2, v3

    iget v3, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->x:I

    iget v4, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->width:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPaddingLeft:I

    add-int/2addr v3, v4

    iget v4, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->y:I

    iget v5, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->height:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPaddingTop:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/htc/android/htcime/ezsip/KeyboardView;->invalidate(IIII)V

    goto :goto_0
.end method

.method protected invokeVoiceInput()V
    .locals 5

    .prologue
    .line 3403
    invoke-static {}, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->getInstance()Lcom/htc/android/htcime/compat/SubtypeSwitcher;

    move-result-object v0

    .line 3404
    .local v0, subtypeSwitcher:Lcom/htc/android/htcime/compat/SubtypeSwitcher;
    if-eqz v0, :cond_0

    .line 3405
    invoke-virtual {v0}, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->switchToShortcutIME()V

    .line 3408
    :cond_0
    sget-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->sFeature_UserProfilingLog:Z

    if-eqz v2, :cond_1

    .line 3409
    new-instance v1, Lcom/htc/android/htcime/util/ULogUtil;

    invoke-direct {v1}, Lcom/htc/android/htcime/util/ULogUtil;-><init>()V

    .line 3410
    .local v1, ulogUtil:Lcom/htc/android/htcime/util/ULogUtil;
    const-string v2, "voice_key"

    const-string v3, "voice_key"

    const-string v4, "1"

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/android/htcime/util/ULogUtil;->writeSinglePairULogData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3412
    .end local v1           #ulogUtil:Lcom/htc/android/htcime/util/ULogUtil;
    :cond_1
    return-void
.end method

.method protected isAlphabet(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)Z
    .locals 2
    .parameter "key"

    .prologue
    .line 2937
    iget-object v0, p1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Character;->isLetter(I)Z

    move-result v0

    return v0
.end method

.method isSpecialCase_DTZ()Z
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1242
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v6, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    check-cast v6, Lcom/htc/android/htcime/XT9IME/XT9IME;

    invoke-virtual {v6}, Lcom/htc/android/htcime/XT9IME/XT9IME;->getExactWord()Ljava/lang/String;

    move-result-object v3

    .line 1243
    .local v3, exactWord:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    .line 1244
    .local v5, strLen:I
    sget-boolean v6, Lcom/htc/android/htcime/HTCIMMData;->DEBUG_DHA:Z

    if-eqz v6, :cond_0

    .line 1245
    const-string v6, "DHA"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isSpecialCase_DTZ exactWord = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    :cond_0
    if-nez v5, :cond_2

    .line 1250
    sget-boolean v6, Lcom/htc/android/htcime/HTCIMMData;->DEBUG_DHA:Z

    if-eqz v6, :cond_1

    .line 1251
    const-string v6, "DHA"

    const-string v8, "isSpecialCase_DTZ strLen = 0, return true"

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    :cond_1
    :goto_0
    return v7

    .line 1255
    :cond_2
    if-ne v5, v7, :cond_5

    iget-boolean v6, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->isInsideSpaceKey:Z

    if-eqz v6, :cond_5

    .line 1257
    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 1299
    :cond_3
    sget-boolean v6, Lcom/htc/android/htcime/HTCIMMData;->DEBUG_DHA:Z

    if-eqz v6, :cond_4

    .line 1300
    const-string v6, "DHA"

    const-string v7, "isSpecialCase_DTZ return false"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move v7, v8

    .line 1302
    goto :goto_0

    .line 1264
    :sswitch_0
    sget-boolean v6, Lcom/htc/android/htcime/HTCIMMData;->DEBUG_DHA:Z

    if-eqz v6, :cond_1

    .line 1265
    const-string v6, "DHA"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isSpecialCase_DTZ strLen == 1 && isInsideSpaceKey exactWord.charAt(0) = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", return true"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1272
    :cond_5
    iget-boolean v6, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->isInsideShiftKey:Z

    if-eqz v6, :cond_3

    .line 1277
    const/4 v0, 0x1

    .line 1279
    .local v0, allLowerCase:Z
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v5, :cond_6

    .line 1280
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1281
    .local v1, c:C
    invoke-static {v1}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v6

    if-nez v6, :cond_8

    move v2, v7

    .line 1282
    .local v2, checker:Z
    :goto_2
    if-eqz v2, :cond_9

    .line 1283
    const/4 v0, 0x0

    .line 1288
    .end local v1           #c:C
    .end local v2           #checker:Z
    :cond_6
    sget-boolean v6, Lcom/htc/android/htcime/HTCIMMData;->DEBUG_DHA:Z

    if-eqz v6, :cond_7

    .line 1289
    const-string v9, "DHA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isSpecialCase_DTZ insideShiftKey = true && allLowerCase = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, ", return "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez v0, :cond_a

    move v6, v7

    :goto_3
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    :cond_7
    if-eqz v0, :cond_1

    move v7, v8

    goto/16 :goto_0

    .restart local v1       #c:C
    :cond_8
    move v2, v8

    .line 1281
    goto :goto_2

    .line 1279
    .restart local v2       #checker:Z
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v1           #c:C
    .end local v2           #checker:Z
    :cond_a
    move v6, v8

    .line 1289
    goto :goto_3

    .line 1257
    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_0
        0x49 -> :sswitch_0
        0x55 -> :sswitch_0
        0x61 -> :sswitch_0
        0x69 -> :sswitch_0
        0x75 -> :sswitch_0
    .end sparse-switch
.end method

.method protected isUnderTouchThreshold(I[I)Z
    .locals 7
    .parameter "action"
    .parameter "eventXY"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2030
    iget-boolean v5, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->softThresholdCheck:Z

    if-eqz v5, :cond_0

    const/4 v5, 0x2

    if-ne p1, v5, :cond_0

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iget-boolean v5, v5, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mIsFingerMoved:Z

    if-nez v5, :cond_0

    .line 2031
    aget v5, p2, v4

    iget v6, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mStartX:I

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v1, v5

    .line 2032
    .local v1, xDist:F
    aget v5, p2, v3

    iget v6, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mStartY:I

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v2, v5

    .line 2033
    .local v2, yDist:F
    mul-float v5, v1, v1

    mul-float v6, v2, v2

    add-float/2addr v5, v6

    float-to-int v0, v5

    .line 2037
    .local v0, dist:I
    iget v5, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->touchThresold:I

    if-ge v0, v5, :cond_0

    .line 2040
    .end local v0           #dist:I
    .end local v1           #xDist:F
    .end local v2           #yDist:F
    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method protected isWordComponent(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)Z
    .locals 2
    .parameter "key"

    .prologue
    .line 2942
    iget-object v0, p1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Character;->isLetter(I)Z

    move-result v0

    return v0
.end method

.method protected launchCPSettings()V
    .locals 3

    .prologue
    .line 3367
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3368
    .local v0, I:Landroid/content/Intent;
    const-string v1, "com.htc.android.htcime"

    const-string v2, "com.htc.android.htcime.settings.BT3KeyboardSetting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3371
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3372
    const-string v1, "fromMenu"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3373
    const-string v1, "focusContentType"

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3375
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 3376
    return-void
.end method

.method protected launchSettings()V
    .locals 3

    .prologue
    .line 2946
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMMView;->hideIMMView()V

    .line 2948
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2949
    .local v0, I:Landroid/content/Intent;
    const-string v1, "com.htc.android.htcime"

    const-string v2, "com.htc.android.htcime.settings.KeyboardSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2950
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2951
    const-string v1, "fromMenu"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2952
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2953
    return-void
.end method

.method loadConstant(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 567
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 569
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0a001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/htc/android/htcime/ezsip/KeyboardView;->sVERTICAL_CORRECTION:I

    .line 570
    const v1, 0x7f0a0019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/htc/android/htcime/ezsip/KeyboardView;->sNEAR_THRESHOLD:I

    .line 571
    const v1, 0x7f0a001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/htc/android/htcime/ezsip/KeyboardView;->sPOPUP_ENLARGE_BOARDER:I

    .line 572
    const v1, 0x7f0a0017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/htc/android/htcime/ezsip/KeyboardView;->sAccent_touchThresold:I

    .line 573
    const v1, 0x7f0a0018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/htc/android/htcime/ezsip/KeyboardView;->sGeneral_touchThresold:I

    iput v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->touchThresold:I

    .line 575
    const v1, 0x7f0c0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcom/htc/android/htcime/ezsip/KeyboardView;->sLOWER_CASE_INCREASE:F

    .line 576
    const v1, 0x7f0c000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcom/htc/android/htcime/ezsip/KeyboardView;->sVerticalOffsetA:F

    .line 577
    const v1, 0x7f0c000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcom/htc/android/htcime/ezsip/KeyboardView;->sVerticalOffsetB:F

    .line 589
    return-void
.end method

.method protected loadFeedbackBG(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x2

    const/4 v2, -0x1

    .line 3342
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3343
    .local v0, res:Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard;->mSipFeedbackBG:I

    if-eq v1, v2, :cond_0

    .line 3344
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard;->mSipFeedbackBG:I

    iput v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mDefaultFeedBackBG:I

    .line 3354
    :goto_0
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard;->mSipFuncFeedbackBG:I

    if-eq v1, v2, :cond_2

    .line 3355
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard;->mSipFuncFeedbackBG:I

    iput v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mDefaultFeedBackFunctionBG:I

    .line 3364
    :goto_1
    return-void

    .line 3346
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v3, :cond_1

    .line 3347
    const v1, 0x7f020040

    iput v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mDefaultFeedBackBG:I

    goto :goto_0

    .line 3350
    :cond_1
    const v1, 0x7f020059

    iput v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mDefaultFeedBackBG:I

    goto :goto_0

    .line 3357
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v3, :cond_3

    .line 3358
    const v1, 0x7f020042

    iput v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mDefaultFeedBackFunctionBG:I

    goto :goto_1

    .line 3361
    :cond_3
    const v1, 0x7f02005b

    iput v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mDefaultFeedBackFunctionBG:I

    goto :goto_1
.end method

.method protected moveThreshold()Z
    .locals 4

    .prologue
    .line 2067
    iget v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->touchX:I

    iget v3, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mLastX:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v0, v2

    .line 2068
    .local v0, xDist:F
    iget v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->touchY:I

    iget v3, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mLastY:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v1, v2

    .line 2069
    .local v1, yDist:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-int v2, v2

    const/16 v3, 0x9

    if-ge v2, v3, :cond_0

    .line 2070
    const/4 v2, 0x0

    .line 2072
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected onBufferDraw(Ljava/lang/String;)V
    .locals 33
    .parameter "lang"

    .prologue
    .line 877
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    .line 878
    .local v22, paint:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    .line 879
    .local v21, padding:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/htc/android/htcime/ezsip/Keyboard;->isShifted()Z

    move-result v13

    .line 881
    .local v13, isUpper:Z
    const/16 v28, 0xff

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 883
    const/16 v19, 0x0

    .line 884
    .local v19, keyboardBG:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/htc/android/htcime/ezsip/Keyboard;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v28

    if-eqz v28, :cond_0

    .line 885
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/htc/android/htcime/ezsip/Keyboard;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v19

    .line 888
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    move-object/from16 v28, v0

    if-nez v28, :cond_1

    .line 889
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ezsip/KeyboardView;->getWidth()I

    move-result v28

    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ezsip/KeyboardView;->getHeight()I

    move-result v29

    sget-object v30, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v28 .. v30}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/htcime/ezsip/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    .line 890
    new-instance v28, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    move-object/from16 v29, v0

    invoke-direct/range {v28 .. v29}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/htcime/ezsip/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    .line 891
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lcom/htc/android/htcime/ezsip/Keyboard;->fullInvalidate:Z

    .line 894
    :cond_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    .line 897
    .local v8, canvas:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefaultKeyTextSize:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 898
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Paint;->descent()F

    move-result v9

    .line 899
    .local v9, descent:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->fullInvalidate:Z

    move/from16 v28, v0

    if-eqz v28, :cond_2

    .line 900
    if-eqz v19, :cond_3

    .line 901
    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ezsip/KeyboardView;->getWidth()I

    move-result v30

    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ezsip/KeyboardView;->getHeight()I

    move-result v31

    move-object/from16 v0, v19

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 902
    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 909
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v16, v0

    .line 910
    .local v16, keyCount:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    move/from16 v0, v16

    if-ge v12, v0, :cond_24

    .line 911
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-object/from16 v28, v0

    aget-object v14, v28, v12

    .line 912
    .local v14, key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    invoke-virtual {v14}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->isValidate()Z

    move-result v28

    if-eqz v28, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->fullInvalidate:Z

    move/from16 v28, v0

    if-nez v28, :cond_4

    .line 910
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 905
    .end local v12           #i:I
    .end local v14           #key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    .end local v16           #keyCount:I
    :cond_3
    const/16 v28, 0x0

    sget-object v29, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 915
    .restart local v12       #i:I
    .restart local v14       #key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    .restart local v16       #keyCount:I
    :cond_4
    invoke-virtual {v14}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 916
    .local v15, keyBackground:Landroid/graphics/drawable/Drawable;
    iget-boolean v0, v14, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pressed:Z

    move/from16 v28, v0

    if-eqz v28, :cond_5

    .line 917
    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 920
    :cond_5
    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 921
    .local v7, bounds:Landroid/graphics/Rect;
    iget v0, v14, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->width:I

    move/from16 v28, v0

    iget v0, v7, Landroid/graphics/Rect;->right:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_6

    iget v0, v14, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->height:I

    move/from16 v28, v0

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_7

    .line 923
    :cond_6
    const/16 v28, 0x0

    const/16 v29, 0x0

    iget v0, v14, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->width:I

    move/from16 v30, v0

    iget v0, v14, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->height:I

    move/from16 v31, v0

    move/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 925
    :cond_7
    iget v0, v14, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->x:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    iget v0, v14, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->y:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 927
    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->fullInvalidate:Z

    move/from16 v28, v0

    if-nez v28, :cond_8

    .line 929
    iget-object v0, v14, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pos:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v28, v0

    iget-object v0, v14, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pos:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    iget-object v0, v14, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pos:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v30, v0

    iget v0, v7, Landroid/graphics/Rect;->right:I

    move/from16 v31, v0

    add-int v30, v30, v31

    iget-object v0, v14, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pos:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v31, v0

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    move/from16 v32, v0

    add-int v31, v31, v32

    move-object/from16 v0, v19

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 930
    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 934
    :cond_8
    invoke-virtual {v15, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 935
    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 937
    const/16 v27, 0x0

    .line 938
    .local v27, verticalOffset:I
    iget-boolean v0, v14, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->multiLine:Z

    move/from16 v28, v0

    if-eqz v28, :cond_9

    iget-object v0, v14, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->top_label:Ljava/lang/CharSequence;

    move-object/from16 v28, v0

    if-eqz v28, :cond_9

    .line 939
    iget-object v0, v14, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->top_label:Ljava/lang/CharSequence;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    .line 940
    .local v24, topLabel:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefaultTopLevelTextSize:I

    move/from16 v25, v0

    .line 941
    .local v25, topLabelTextSize:I
    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 942
    const v28, -0x121212

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 943
    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 944
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mTopLevelTextType:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_e

    .line 945
    new-instance v6, Landroid/graphics/Rect;

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-direct {v6, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 946
    .local v6, b:Landroid/graphics/Rect;
    const/16 v28, 0x0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v29

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 947
    iget v0, v6, Landroid/graphics/Rect;->right:I

    move/from16 v28, v0

    iget v0, v6, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    sub-int v23, v28, v29

    .line 948
    .local v23, textWidth:I
    const/16 v27, 0x0

    .line 950
    iget v0, v14, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->width:I

    move/from16 v28, v0

    mul-int/lit8 v28, v28, 0x3

    div-int/lit8 v28, v28, 0x4

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    add-int v28, v28, v29

    div-int/lit8 v29, v23, 0x2

    sub-int v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefaultTopLevelTextXOffset:I

    move/from16 v29, v0

    add-int v28, v28, v29

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    add-float v29, v29, v9

    iget v0, v14, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->height:I

    move/from16 v30, v0

    div-int/lit8 v30, v30, 0x4

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    add-float v29, v29, v30

    move-object/from16 v0, v24

    move/from16 v1, v28

    move/from16 v2, v29

    move-object/from16 v3, v22

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 986
    .end local v6           #b:Landroid/graphics/Rect;
    .end local v23           #textWidth:I
    .end local v24           #topLabel:Ljava/lang/String;
    .end local v25           #topLabelTextSize:I
    :cond_9
    :goto_3
    iget-object v0, v14, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aget v28, v28, v29

    const/16 v29, -0x10

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_10

    .line 988
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefaultKeyTextSize:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v5, v0

    .line 990
    .local v5, KeyTextSize:F
    iget v0, v14, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->textScale:F

    move/from16 v28, v0

    const/high16 v29, 0x3f80

    cmpl-float v28, v28, v29

    if-eqz v28, :cond_a

    .line 991
    iget v0, v14, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->textScale:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefaultKeyTextSize:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    mul-float v5, v28, v29

    .line 993
    :cond_a
    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 994
    iget-boolean v0, v14, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->enable:Z

    move/from16 v28, v0

    if-nez v28, :cond_f

    .line 995
    const v28, 0x55ffffff

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1002
    :goto_4
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v23

    .line 1003
    .local v23, textWidth:F
    iget v0, v14, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->width:I

    move/from16 v28, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v18, v0

    .line 1004
    .local v18, keyWidth:F
    cmpl-float v28, v23, v18

    if-lez v28, :cond_b

    .line 1005
    div-float v28, v18, v23

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 1009
    :cond_b
    iget v0, v14, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->width:I

    move/from16 v28, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    add-int v28, v28, v29

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    div-int/lit8 v28, v28, 0x2

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    iget v0, v14, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->height:I

    move/from16 v29, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    add-int v29, v29, v30

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Paint;->getTextSize()F

    move-result v30

    add-float v29, v29, v30

    sub-float v29, v29, v9

    const/high16 v30, 0x4000

    div-float v29, v29, v30

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v30, v0

    add-float v29, v29, v30

    iget v0, v14, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->labelShiftY:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    add-float v29, v29, v30

    move-object/from16 v0, p1

    move/from16 v1, v28

    move/from16 v2, v29

    move-object/from16 v3, v22

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1015
    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 1016
    const/high16 v28, 0x3f80

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 1163
    .end local v5           #KeyTextSize:F
    .end local v18           #keyWidth:F
    .end local v23           #textWidth:F
    :cond_c
    :goto_5
    iget v0, v14, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->x:I

    move/from16 v28, v0

    move/from16 v0, v28

    neg-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    iget v0, v14, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->y:I

    move/from16 v29, v0

    move/from16 v0, v29

    neg-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1164
    iget-boolean v0, v14, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pressed:Z

    move/from16 v28, v0

    if-eqz v28, :cond_d

    .line 1165
    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1167
    :cond_d
    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v14, v0}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setValidate(Z)V

    goto/16 :goto_2

    .line 954
    .restart local v24       #topLabel:Ljava/lang/String;
    .restart local v25       #topLabelTextSize:I
    :cond_e
    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v28, v0

    sget v29, Lcom/htc/android/htcime/ezsip/KeyboardView;->sVerticalOffsetA:F

    mul-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefaultKeyTextYOffset:I

    move/from16 v29, v0

    add-int v27, v28, v29

    .line 955
    iget v0, v14, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->width:I

    move/from16 v28, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    add-int v28, v28, v29

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    div-int/lit8 v28, v28, 0x2

    iget v0, v14, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->toplabelShiftX:I

    move/from16 v29, v0

    add-int v28, v28, v29

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    iget v0, v14, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->height:I

    move/from16 v29, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    add-int v29, v29, v30

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Paint;->getTextSize()F

    move-result v30

    add-float v29, v29, v30

    sub-float v29, v29, v9

    const/high16 v30, 0x4000

    div-float v29, v29, v30

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v30, v0

    sub-float v29, v29, v30

    const/high16 v30, 0x40c0

    sub-float v29, v29, v30

    iget v0, v14, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->toplabelShiftY:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    add-float v29, v29, v30

    move-object/from16 v0, v24

    move/from16 v1, v28

    move/from16 v2, v29

    move-object/from16 v3, v22

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 958
    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v28, v0

    sget v29, Lcom/htc/android/htcime/ezsip/KeyboardView;->sVerticalOffsetB:F

    mul-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefaultTopLevelTextYOffset:I

    move/from16 v29, v0

    add-int v27, v28, v29

    goto/16 :goto_3

    .line 997
    .end local v24           #topLabel:Ljava/lang/String;
    .end local v25           #topLabelTextSize:I
    .restart local v5       #KeyTextSize:F
    :cond_f
    const/16 v28, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 998
    const/high16 v28, 0x4040

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/high16 v31, -0x3400

    move-object/from16 v0, v22

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto/16 :goto_4

    .line 1017
    .end local v5           #KeyTextSize:F
    :cond_10
    iget-object v0, v14, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aget v28, v28, v29

    const/16 v29, -0x18

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_1a

    .line 1018
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefaultKeyTextSize:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v5, v0

    .line 1020
    .restart local v5       #KeyTextSize:F
    iget v0, v14, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->textScale:F

    move/from16 v28, v0

    const/high16 v29, 0x3f80

    cmpl-float v28, v28, v29

    if-eqz v28, :cond_11

    .line 1021
    iget v0, v14, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->textScale:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefaultKeyTextSize:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    mul-float v5, v28, v29

    .line 1023
    :cond_11
    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1024
    iget-boolean v0, v14, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->enable:Z

    move/from16 v28, v0

    if-nez v28, :cond_14

    .line 1025
    const v28, 0x55ffffff

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1032
    :goto_6
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v23

    .line 1033
    .restart local v23       #textWidth:F
    iget v0, v14, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->width:I

    move/from16 v28, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v18, v0

    .line 1034
    .restart local v18       #keyWidth:F
    cmpl-float v28, v23, v18

    if-lez v28, :cond_12

    .line 1035
    div-float v28, v18, v23

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 1038
    :cond_12
    sget-boolean v28, Lcom/htc/android/htcime/HTCIMMData;->sFeature_VoiceInput_Enable:Z

    if-eqz v28, :cond_13

    .line 1039
    const/16 v26, 0x0

    .line 1041
    .local v26, up_icon:Landroid/graphics/drawable/Drawable;
    const/16 v28, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_16

    .line 1042
    iget-object v0, v14, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    if-eqz v28, :cond_15

    iget-object v0, v14, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v26, v0

    .line 1057
    :goto_7
    iget v0, v14, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->width:I

    move/from16 v28, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    add-int v28, v28, v29

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v29

    sub-int v28, v28, v29

    div-int/lit8 v10, v28, 0x2

    .line 1059
    .local v10, drawableX:I
    iget v0, v14, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->height:I

    move/from16 v28, v0

    mul-int/lit8 v28, v28, 0x3

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    mul-int/lit8 v29, v29, 0xb

    add-int v28, v28, v29

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    mul-int/lit8 v29, v29, 0x3

    sub-int v28, v28, v29

    div-int/lit8 v28, v28, 0xe

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v29

    div-int/lit8 v29, v29, 0x2

    sub-int v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefalultTopIconYOffset:I

    move/from16 v29, v0

    add-int v28, v28, v29

    add-int/lit8 v11, v28, 0x3

    .line 1060
    .local v11, drawableY:I
    int-to-float v0, v10

    move/from16 v28, v0

    int-to-float v0, v11

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1061
    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v30

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v31

    move-object/from16 v0, v26

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1064
    const/16 v28, 0xff

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1066
    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1067
    neg-int v0, v10

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    neg-int v0, v11

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1070
    iget v0, v14, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->width:I

    move/from16 v28, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    add-int v28, v28, v29

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    div-int/lit8 v28, v28, 0x2

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    iget v0, v14, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->height:I

    move/from16 v29, v0

    mul-int/lit8 v29, v29, 0x5

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    mul-int/lit8 v30, v30, 0x2

    add-int v29, v29, v30

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v30, v0

    mul-int/lit8 v30, v30, 0x5

    sub-int v29, v29, v30

    div-int/lit8 v29, v29, 0x7

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Paint;->getTextSize()F

    move-result v30

    sub-float v30, v30, v9

    const/high16 v31, 0x4000

    div-float v30, v30, v31

    add-float v29, v29, v30

    iget v0, v14, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->labelShiftY:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    add-float v29, v29, v30

    move-object/from16 v0, p1

    move/from16 v1, v28

    move/from16 v2, v29

    move-object/from16 v3, v22

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1086
    .end local v10           #drawableX:I
    .end local v11           #drawableY:I
    .end local v26           #up_icon:Landroid/graphics/drawable/Drawable;
    :cond_13
    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 1087
    const/high16 v28, 0x3f80

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextScaleX(F)V

    goto/16 :goto_5

    .line 1027
    .end local v18           #keyWidth:F
    .end local v23           #textWidth:F
    :cond_14
    const/16 v28, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1028
    const/high16 v28, 0x4040

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/high16 v31, -0x3400

    move-object/from16 v0, v22

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto/16 :goto_6

    .line 1042
    .restart local v18       #keyWidth:F
    .restart local v23       #textWidth:F
    .restart local v26       #up_icon:Landroid/graphics/drawable/Drawable;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f020084

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v26

    goto/16 :goto_7

    .line 1044
    :cond_16
    iget-object v0, v14, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    if-eqz v28, :cond_17

    iget-object v0, v14, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v26, v0

    .line 1046
    :goto_8
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v28

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_18

    .line 1047
    const v28, 0x3f666666

    mul-float v5, v5, v28

    .line 1054
    :goto_9
    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    goto/16 :goto_7

    .line 1044
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f020085

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v26

    goto :goto_8

    .line 1048
    :cond_18
    const-string v28, "\u6ce8"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_19

    .line 1049
    const v28, 0x3f333333

    mul-float v5, v5, v28

    goto :goto_9

    .line 1051
    :cond_19
    const v28, 0x3f4ccccd

    mul-float v5, v5, v28

    goto :goto_9

    .line 1089
    .end local v5           #KeyTextSize:F
    .end local v18           #keyWidth:F
    .end local v23           #textWidth:F
    .end local v26           #up_icon:Landroid/graphics/drawable/Drawable;
    :cond_1a
    iget-object v0, v14, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    if-eqz v28, :cond_1c

    .line 1090
    invoke-virtual {v14}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->getCurrentIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 1091
    .local v17, keyIcon:Landroid/graphics/drawable/Drawable;
    iget v0, v14, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->width:I

    move/from16 v28, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    add-int v28, v28, v29

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v29

    sub-int v28, v28, v29

    div-int/lit8 v10, v28, 0x2

    .line 1093
    .restart local v10       #drawableX:I
    iget v0, v14, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->height:I

    move/from16 v28, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v29

    sub-int v28, v28, v29

    div-int/lit8 v28, v28, 0x2

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    add-int v28, v28, v29

    add-int v28, v28, v27

    iget v0, v14, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->iconShiftY:I

    move/from16 v29, v0

    add-int v11, v28, v29

    .line 1095
    .restart local v11       #drawableY:I
    int-to-float v0, v10

    move/from16 v28, v0

    int-to-float v0, v11

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1096
    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v30

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v31

    move-object/from16 v0, v17

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1099
    iget-boolean v0, v14, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->enable:Z

    move/from16 v28, v0

    if-nez v28, :cond_1b

    .line 1104
    const/16 v28, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1105
    const/16 v28, 0x55

    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1112
    :goto_a
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1113
    neg-int v0, v10

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    neg-int v0, v11

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_5

    .line 1109
    :cond_1b
    const/16 v28, 0xff

    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_a

    .line 1115
    .end local v10           #drawableX:I
    .end local v11           #drawableY:I
    .end local v17           #keyIcon:Landroid/graphics/drawable/Drawable;
    :cond_1c
    iget-object v0, v14, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->label:Ljava/lang/CharSequence;

    move-object/from16 v28, v0

    if-eqz v28, :cond_c

    .line 1117
    iget-object v0, v14, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->label:Ljava/lang/CharSequence;

    move-object/from16 v28, v0

    if-nez v28, :cond_20

    const/16 v20, 0x0

    .line 1120
    .local v20, label:Ljava/lang/String;
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefaultKeyTextSize:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v5, v0

    .line 1121
    .restart local v5       #KeyTextSize:F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mEnlargeLowercase:Z

    move/from16 v28, v0

    if-eqz v28, :cond_1d

    if-nez v13, :cond_1d

    iget-object v0, v14, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aget v28, v28, v29

    invoke-static/range {v28 .. v28}, Ljava/lang/Character;->isLetter(I)Z

    move-result v28

    if-eqz v28, :cond_1d

    .line 1122
    sget v28, Lcom/htc/android/htcime/ezsip/KeyboardView;->sLOWER_CASE_INCREASE:F

    add-float v5, v5, v28

    .line 1125
    :cond_1d
    iget v0, v14, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->textScale:F

    move/from16 v28, v0

    const/high16 v29, 0x3f80

    cmpl-float v28, v28, v29

    if-eqz v28, :cond_1e

    .line 1126
    iget v0, v14, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->textScale:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefaultKeyTextSize:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    mul-float v5, v28, v29

    .line 1128
    :cond_1e
    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1129
    iget-boolean v0, v14, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->enable:Z

    move/from16 v28, v0

    if-nez v28, :cond_22

    .line 1130
    iget-boolean v0, v14, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->function:Z

    move/from16 v28, v0

    if-eqz v28, :cond_21

    .line 1131
    const v28, 0x55ffffff

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1148
    :goto_c
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v23

    .line 1149
    .restart local v23       #textWidth:F
    iget v0, v14, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->width:I

    move/from16 v28, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v18, v0

    .line 1150
    .restart local v18       #keyWidth:F
    cmpl-float v28, v23, v18

    if-lez v28, :cond_1f

    .line 1151
    div-float v28, v18, v23

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 1155
    :cond_1f
    iget v0, v14, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->width:I

    move/from16 v28, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    add-int v28, v28, v29

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    div-int/lit8 v28, v28, 0x2

    iget v0, v14, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->labelShiftX:I

    move/from16 v29, v0

    add-int v28, v28, v29

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    iget v0, v14, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->height:I

    move/from16 v29, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    add-int v29, v29, v30

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Paint;->getTextSize()F

    move-result v30

    add-float v29, v29, v30

    sub-float v29, v29, v9

    const/high16 v30, 0x4000

    div-float v29, v29, v30

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v30, v0

    add-float v29, v29, v30

    iget v0, v14, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->labelShiftY:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    add-float v29, v29, v30

    move-object/from16 v0, v20

    move/from16 v1, v28

    move/from16 v2, v29

    move-object/from16 v3, v22

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1159
    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 1160
    const/high16 v28, 0x3f80

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextScaleX(F)V

    goto/16 :goto_5

    .line 1117
    .end local v5           #KeyTextSize:F
    .end local v18           #keyWidth:F
    .end local v20           #label:Ljava/lang/String;
    .end local v23           #textWidth:F
    :cond_20
    iget-object v0, v14, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->label:Ljava/lang/CharSequence;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ezsip/KeyboardView;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_b

    .line 1134
    .restart local v5       #KeyTextSize:F
    .restart local v20       #label:Ljava/lang/String;
    :cond_21
    const/high16 v28, 0x5500

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_c

    .line 1137
    :cond_22
    iget-boolean v0, v14, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->function:Z

    move/from16 v28, v0

    if-eqz v28, :cond_23

    .line 1138
    const/16 v28, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1139
    const/high16 v28, 0x4040

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/high16 v31, -0x3400

    move-object/from16 v0, v22

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto/16 :goto_c

    .line 1142
    :cond_23
    const v28, -0x10101

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1143
    const/high16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const v31, -0x33000001

    move-object/from16 v0, v22

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto/16 :goto_c

    .line 1176
    .end local v5           #KeyTextSize:F
    .end local v7           #bounds:Landroid/graphics/Rect;
    .end local v14           #key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    .end local v15           #keyBackground:Landroid/graphics/drawable/Drawable;
    .end local v20           #label:Ljava/lang/String;
    .end local v27           #verticalOffset:I
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lcom/htc/android/htcime/ezsip/Keyboard;->fullInvalidate:Z

    .line 1177
    return-void
.end method

.method public onClick(III)V
    .locals 0
    .parameter "ButtonIndex"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    .line 2893
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 2809
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2810
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/KeyboardView;->closing()V

    .line 2811
    return-void
.end method

.method protected onKeyDown(III)V
    .locals 2
    .parameter "ButtonIndex"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    .line 2844
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    array-length v1, v1

    if-lt p1, v1, :cond_1

    .line 2851
    :cond_0
    :goto_0
    return-void

    .line 2847
    :cond_1
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v0, v1, p1

    .line 2849
    .local v0, key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    iget-boolean v1, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->repeatable:Z

    if-eqz v1, :cond_0

    .line 2850
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/KeyboardView;->repeatKey()Z

    goto :goto_0
.end method

.method protected onKeyMove(III)V
    .locals 0
    .parameter "ButtonIndex"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    .line 2880
    return-void
.end method

.method protected onKeyUp(III)V
    .locals 2
    .parameter "ButtonIndex"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    .line 2857
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/KeyboardView;->handleAccent()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2858
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    array-length v1, v1

    if-lt p1, v1, :cond_1

    .line 2866
    :cond_0
    :goto_0
    return-void

    .line 2862
    :cond_1
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v0, v1, p1

    .line 2863
    .local v0, key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    iget-boolean v1, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->repeatable:Z

    if-nez v1, :cond_0

    .line 2864
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/android/htcime/ezsip/KeyboardView;->onClick(III)V

    goto :goto_0
.end method

.method protected onKeyUp_RepeatMode(III)V
    .locals 2
    .parameter "ButtonIndex"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    .line 2873
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mSIP_ID:I

    or-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyUpEvent(I)V

    .line 2874
    return-void
.end method

.method public onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 831
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    if-nez v1, :cond_0

    .line 832
    iget v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPaddingLeft:I

    iget v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPaddingRight:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPaddingTop:I

    iget v3, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPaddingBottom:I

    add-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/htc/android/htcime/ezsip/KeyboardView;->setMeasuredDimension(II)V

    .line 840
    :goto_0
    return-void

    .line 834
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/Keyboard;->getMinWidth()I

    move-result v1

    iget v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPaddingLeft:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPaddingRight:I

    add-int v0, v1, v2

    .line 835
    .local v0, width:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    add-int/lit8 v2, v0, 0xa

    if-ge v1, v2, :cond_1

    .line 836
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 838
    :cond_1
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/Keyboard;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPaddingTop:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPaddingBottom:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/htcime/ezsip/KeyboardView;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method protected onModifiedTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 23
    .parameter "me"

    .prologue
    .line 2240
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v21

    .line 2244
    .local v21, touch_start:J
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->pressure:F

    .line 2245
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->action:I

    .line 2246
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->eventTime:J

    .line 2248
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->eventXY:[I

    const/4 v3, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    aput v4, v2, v3

    .line 2249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->eventXY:[I

    const/4 v3, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    aput v4, v2, v3

    .line 2250
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->eventXY:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->touchX_org:I

    .line 2251
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->eventXY:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->touchY_org:I

    .line 2252
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->eventXY:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/android/htcime/ezsip/KeyboardView;->correctBias([I)V

    .line 2255
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->RawX:I

    .line 2258
    sget-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->sNonHTCIgnore:Z

    if-eqz v2, :cond_0

    .line 2261
    const/4 v2, 0x1

    .line 2640
    :goto_0
    return v2

    .line 2265
    :cond_0
    sget-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->sTutored:Z

    if-nez v2, :cond_1

    .line 2266
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMMView;->isFirstTimeTutoring()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2267
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMMView;->doneFirstTimeTutor()V

    .line 2272
    :cond_1
    sget-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->sTipTutoring:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 2275
    const/4 v2, 0x1

    goto :goto_0

    .line 2278
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->action:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->eventXY:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/htc/android/htcime/ezsip/KeyboardView;->isUnderTouchThreshold(I[I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2281
    const/4 v2, 0x1

    goto :goto_0

    .line 2284
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->eventXY:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->touchX:I

    .line 2285
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->eventXY:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->touchY:I

    .line 2286
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->touchX:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->touchY:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/htc/android/htcime/ezsip/KeyboardView;->getKeyIndicesClosest(II[I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->keyIndex:I

    .line 2288
    const-string v2, "KeyboardView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onModifiedTouchEvent] action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->action:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", me.getX()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", me.getY()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", touchX="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->touchX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", touchY="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->touchY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", keyIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->keyIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mPortBias:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mPortBias:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mPortBias:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mPortBias:[F

    const/4 v5, 0x3

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2302
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2303
    const/4 v2, -0x1

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/htc/android/htcime/ezsip/KeyboardView;->showPreview(IZ)V

    .line 2304
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2305
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2308
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2311
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v2}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v2

    iget v0, v2, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    move/from16 v16, v0

    .line 2312
    .local v16, sip_id:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v2, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v2}, Lcom/htc/android/htcime/Intf/IHTCIM;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v2

    iget v13, v2, Lcom/htc/android/htcime/Intf/HTCIMData;->imID:I

    .line 2314
    .local v13, im_id:I
    const/16 v2, 0x11

    move/from16 v0, v16

    if-eq v2, v0, :cond_5

    const/16 v2, 0x9

    move/from16 v0, v16

    if-ne v2, v0, :cond_b

    :cond_5
    const/4 v2, 0x2

    if-ne v2, v13, :cond_b

    const/4 v10, 0x1

    .line 2318
    .local v10, bIsHalfScreenPPSip:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mTrace:Lcom/htc/android/htcime/ezsip/trace/Trace;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPointerCount:I

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/ezsip/trace/Trace;->checkMT(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2319
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ezsip/KeyboardView;->invalidateAll()V

    .line 2322
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    const-wide v3, 0x7fffffffffffffffL

    iput-wide v3, v2, Lcom/htc/android/htcime/HTCIMMData;->touchEvent_start:J

    .line 2323
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/htc/android/htcime/HTCIMMData;->touchEvent_doLagAlert:Z

    .line 2325
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->action:I

    packed-switch v2, :pswitch_data_0

    .line 2627
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->touchX:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mLastX:I

    .line 2628
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->touchY:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mLastY:I

    .line 2631
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    const/16 v3, 0x18

    if-eq v2, v3, :cond_8

    sget-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->mSIPrecord:Z

    if-eqz v2, :cond_9

    .line 2633
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/htc/android/htcime/ezsip/KeyboardView;->recordSIPevent(FF)V

    .line 2635
    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v17, v2, v21

    .line 2636
    .local v17, total_time:J
    const-wide/16 v2, 0x7d0

    cmp-long v2, v17, v2

    if-lez v2, :cond_a

    .line 2637
    const-string v2, "KeyboardView"

    const-string v3, "[onTouchEvent] touch event handle over 2 sec!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2640
    :cond_a
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2314
    .end local v10           #bIsHalfScreenPPSip:Z
    .end local v17           #total_time:J
    :cond_b
    const/4 v10, 0x0

    goto :goto_1

    .line 2328
    .restart local v10       #bIsHalfScreenPPSip:Z
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/htc/android/htcime/HTCIMMData;->touchEvent_start:J

    .line 2330
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->touchX:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mStartX:I

    .line 2331
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->touchY:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mStartY:I

    .line 2332
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->touchX:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mLastCodeX:I

    .line 2333
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->touchY:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mLastCodeY:I

    .line 2334
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mLastKeyTime:J

    .line 2335
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mCurrentKeyTime:J

    .line 2336
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mLastKey:I

    .line 2337
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->keyIndex:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mCurrentKey:I

    .line 2338
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mDownTime:J

    .line 2339
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mDownTime:J

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mLastMoveTime:J

    .line 2340
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mAutoPressCount:I

    .line 2341
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mLongPress:Z

    .line 2342
    const/4 v2, 0x0

    sput-boolean v2, Lcom/htc/android/htcime/ezsip/KeyboardView;->sLPD_isLongPress:Z

    .line 2343
    const/4 v15, 0x1

    .line 2346
    .local v15, showPreview:Z
    const/4 v2, 0x0

    sput-boolean v2, Lcom/htc/android/htcime/ezsip/KeyboardView;->showAccentWindow:Z

    .line 2347
    const/4 v2, 0x0

    sput-boolean v2, Lcom/htc/android/htcime/ezsip/KeyboardView;->isReapeatKey:Z

    .line 2348
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->keyIndex:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->prevKey:I

    .line 2349
    const/4 v2, 0x0

    sput-boolean v2, Lcom/htc/android/htcime/ezsip/KeyboardView;->isKeyMove:Z

    .line 2350
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyDownTime:J

    .line 2355
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mCurrPopupHeight:I

    .line 2356
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mCurrPopupWidth:I

    .line 2357
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mShowPreviewX:I

    .line 2358
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mShowPreviewY:I

    .line 2360
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mRepeatDelCount:I

    .line 2361
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mDelWordMode:Z

    .line 2362
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mLastKeyShowPreview:Z

    .line 2363
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mRepeatArrowsMode:Z

    .line 2364
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mCurrentKey:I

    if-ltz v2, :cond_10

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mCurrentKey:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    array-length v3, v3

    if-ge v2, v3, :cond_10

    .line 2365
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mCurrentKey:I

    aget-object v12, v2, v3

    .line 2367
    .local v12, eventKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    iget-boolean v2, v12, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->repeatable:Z

    if-eqz v2, :cond_d

    .line 2368
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mCurrentKey:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mRepeatKeyIndex:I

    .line 2369
    const/4 v2, 0x0

    sput v2, Lcom/htc/android/htcime/ezsip/KeyboardView;->mRepeatDelCounter:I

    .line 2370
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    .line 2371
    .local v14, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x190

    invoke-virtual {v2, v14, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2372
    iget-object v2, v12, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    const/16 v3, -0x14

    if-eq v2, v3, :cond_c

    iget-object v2, v12, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    const/16 v3, -0x15

    if-eq v2, v3, :cond_c

    iget-object v2, v12, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    const/16 v3, -0x12

    if-eq v2, v3, :cond_c

    iget-object v2, v12, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    const/16 v3, -0x13

    if-ne v2, v3, :cond_d

    .line 2376
    :cond_c
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mRepeatArrowsMode:Z

    .line 2389
    .end local v14           #msg:Landroid/os/Message;
    :cond_d
    iget-object v2, v12, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    const/4 v3, -0x1

    if-eq v2, v3, :cond_e

    .line 2390
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    .line 2391
    .restart local v14       #msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHandler:Landroid/os/Handler;

    sget-boolean v2, Lcom/htc/android/htcime/ezsip/KeyboardView;->sLPD_isShortDelay:Z

    if-eqz v2, :cond_12

    iget v2, v12, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->popupDelay_S:I

    :goto_3
    int-to-long v4, v2

    invoke-virtual {v3, v14, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2399
    .end local v14           #msg:Landroid/os/Message;
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v2, v2, Lcom/htc/android/htcime/ezsip/Keyboard;->mAccentPage:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v2, v2, Lcom/htc/android/htcime/ezsip/Keyboard;->mAccentPage:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v3, v3, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    if-eq v2, v3, :cond_13

    .line 2400
    const/4 v15, 0x1

    .line 2406
    :cond_f
    :goto_4
    sget-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->mScoring:Z

    if-eqz v2, :cond_10

    .line 2407
    sget v2, Lcom/htc/android/htcime/util/ScoringUtil;->mNumTotalKey:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/htc/android/htcime/util/ScoringUtil;->mNumTotalKey:I

    .line 2409
    iget-object v2, v12, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    const/16 v3, 0x8

    if-ne v2, v3, :cond_10

    .line 2410
    sget v2, Lcom/htc/android/htcime/util/ScoringUtil;->mNumBSKey:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/htc/android/htcime/util/ScoringUtil;->mNumBSKey:I

    .line 2413
    .end local v12           #eventKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    :cond_10
    if-eqz v15, :cond_11

    .line 2414
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->keyIndex:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/htc/android/htcime/ezsip/KeyboardView;->showPreview(IZ)V

    .line 2416
    :cond_11
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->keyIndex:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/android/htcime/ezsip/KeyboardView;->voiceTextCheck(I)V

    .line 2417
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->keyIndex:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/android/htcime/ezsip/KeyboardView;->feedbackEffect(I)V

    .line 2418
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    invoke-virtual {v2}, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->resetState()V

    .line 2419
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mTrace:Lcom/htc/android/htcime/ezsip/trace/Trace;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->keyIndex:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/android/htcime/ezsip/KeyboardView;->SIPkey2IMkey(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->touchX:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->touchY:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->keyIndex:I

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/htc/android/htcime/ezsip/KeyboardView;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mShiftState:I

    invoke-virtual/range {v2 .. v7}, Lcom/htc/android/htcime/ezsip/trace/Trace;->handleDown(IIILcom/htc/android/htcime/ezsip/Keyboard$Key;I)Z

    move-result v2

    if-nez v2, :cond_7

    .line 2420
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->keyIndex:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->touchX:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->touchY:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/htc/android/htcime/ezsip/KeyboardView;->onKeyDown(III)V

    goto/16 :goto_2

    .line 2391
    .restart local v12       #eventKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    .restart local v14       #msg:Landroid/os/Message;
    :cond_12
    iget v2, v12, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->popupDelay_L:I

    goto/16 :goto_3

    .line 2402
    .end local v14           #msg:Landroid/os/Message;
    :cond_13
    sget-boolean v2, Lcom/htc/android/htcime/ezsip/KeyboardView;->sLPD_isShortDelay:Z

    if-eqz v2, :cond_14

    iget v2, v12, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->popupDelay_S:I

    :goto_5
    int-to-long v2, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_f

    .line 2403
    const/4 v15, 0x0

    goto/16 :goto_4

    .line 2402
    :cond_14
    iget v2, v12, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->popupDelay_L:I

    goto :goto_5

    .line 2426
    .end local v12           #eventKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    .end local v15           #showPreview:Z
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ezsip/KeyboardView;->moveThreshold()Z

    move-result v2

    if-nez v2, :cond_15

    .line 2429
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2433
    :cond_15
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->keyIndex:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->prevKey:I

    if-eq v2, v3, :cond_16

    .line 2434
    const/4 v2, 0x1

    sput-boolean v2, Lcom/htc/android/htcime/ezsip/KeyboardView;->isKeyMove:Z

    .line 2437
    :cond_16
    const/4 v11, 0x0

    .line 2438
    .local v11, continueLongPress:Z
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ezsip/KeyboardView;->getAccentMode()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 2441
    if-eqz v10, :cond_18

    .line 2442
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mAccentWindow:Lcom/htc/android/htcime/ezsip/common/AccentWindow;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->RawX:I

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->sendEventToAccent(I)V

    .line 2528
    :cond_17
    :goto_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->keyIndex:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->prevKey:I

    goto/16 :goto_2

    .line 2444
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mAccentWindow:Lcom/htc/android/htcime/ezsip/common/AccentWindow;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->touchX:I

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->sendEventToAccent(I)V

    goto :goto_6

    .line 2445
    :cond_19
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/htcime/ezsip/KeyboardView;->isKeyboardUnderSpace()Z

    move-result v2

    if-nez v2, :cond_17

    .line 2447
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mTrace:Lcom/htc/android/htcime/ezsip/trace/Trace;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->touchX:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->touchY:I

    invoke-virtual {v2, v3, v4}, Lcom/htc/android/htcime/ezsip/trace/Trace;->handleMove(II)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 2448
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2449
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2450
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mRepeatKeyIndex:I

    .line 2453
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->keyIndex:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1a

    .line 2454
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mIsFingerMoved:Z

    .line 2455
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mCurrentKey:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1b

    .line 2456
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->keyIndex:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mCurrentKey:I

    .line 2457
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->eventTime:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mDownTime:J

    sub-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mCurrentKeyTime:J

    .line 2474
    :cond_1a
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mTrace:Lcom/htc/android/htcime/ezsip/trace/Trace;

    invoke-virtual {v2}, Lcom/htc/android/htcime/ezsip/trace/Trace;->isTracing()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 2475
    const/4 v2, -0x1

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/htc/android/htcime/ezsip/KeyboardView;->showPreview(IZ)V

    .line 2476
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ezsip/KeyboardView;->invalidate()V

    goto/16 :goto_6

    .line 2459
    :cond_1b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->keyIndex:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mCurrentKey:I

    if-ne v2, v3, :cond_1c

    .line 2460
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mCurrentKeyTime:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->eventTime:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mLastMoveTime:J

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mCurrentKeyTime:J

    goto :goto_7

    .line 2462
    :cond_1c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mCurrentKey:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mLastKey:I

    .line 2463
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mLastX:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mLastCodeX:I

    .line 2464
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mLastY:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mLastCodeY:I

    .line 2465
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mCurrentKeyTime:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->eventTime:J

    add-long/2addr v2, v4

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mLastMoveTime:J

    sub-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mLastKeyTime:J

    .line 2467
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->keyIndex:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mCurrentKey:I

    .line 2468
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mCurrentKeyTime:J

    goto :goto_7

    .line 2478
    :cond_1d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->keyIndex:I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/htc/android/htcime/ezsip/KeyboardView;->showPreview(IZ)V

    goto/16 :goto_6

    .line 2482
    :cond_1e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->keyIndex:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_20

    .line 2483
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mIsFingerMoved:Z

    .line 2484
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mCurrentKey:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_22

    .line 2485
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->keyIndex:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mCurrentKey:I

    .line 2486
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->eventTime:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mDownTime:J

    sub-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mCurrentKeyTime:J

    .line 2517
    :cond_1f
    :goto_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->keyIndex:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mRepeatKeyIndex:I

    if-eq v2, v3, :cond_20

    .line 2518
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2519
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mRepeatKeyIndex:I

    .line 2522
    :cond_20
    if-nez v11, :cond_21

    .line 2524
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2526
    :cond_21
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->keyIndex:I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/htc/android/htcime/ezsip/KeyboardView;->showPreview(IZ)V

    goto/16 :goto_6

    .line 2488
    :cond_22
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->keyIndex:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mCurrentKey:I

    if-ne v2, v3, :cond_23

    .line 2489
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mCurrentKeyTime:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->eventTime:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mLastMoveTime:J

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mCurrentKeyTime:J

    .line 2490
    const/4 v11, 0x1

    goto :goto_8

    .line 2492
    :cond_23
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mCurrentKey:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mLastKey:I

    .line 2493
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mLastX:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mLastCodeX:I

    .line 2494
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mLastY:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mLastCodeY:I

    .line 2495
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mCurrentKeyTime:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->eventTime:J

    add-long/2addr v2, v4

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mLastMoveTime:J

    sub-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mLastKeyTime:J

    .line 2497
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->keyIndex:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mCurrentKey:I

    .line 2498
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mCurrentKeyTime:J

    .line 2499
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mLastX:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->touchX:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mLastY:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->touchY:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v2, v3

    const/16 v3, 0x5a

    if-le v2, v3, :cond_1f

    sget-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->sFeature_Fake_MultiTouch_Enable:Z

    if-eqz v2, :cond_1f

    .line 2502
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->keyIndex:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->touchX:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->touchY:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/htc/android/htcime/ezsip/KeyboardView;->onKeyMove(III)V

    goto/16 :goto_8

    .line 2533
    .end local v11           #continueLongPress:Z
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/htc/android/htcime/HTCIMMData;->touchEvent_start:J

    .line 2535
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->keyIndex:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/android/htcime/ezsip/KeyboardView;->lpd_checkPoint(I)V

    .line 2537
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ezsip/KeyboardView;->getAccentMode()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 2538
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mAccentWindow:Lcom/htc/android/htcime/ezsip/common/AccentWindow;

    invoke-virtual {v2}, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->hideAccentLetters()Z

    .line 2539
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mCurrentKey:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->keyIndex:I

    .line 2541
    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2542
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2543
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2545
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->keyIndex:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mCurrentKey:I

    if-ne v2, v3, :cond_28

    .line 2546
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mCurrentKeyTime:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->eventTime:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mLastMoveTime:J

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mCurrentKeyTime:J

    .line 2554
    :goto_9
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mCurrentKeyTime:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mLastKeyTime:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_25

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mLastKey:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_25

    .line 2555
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mLastKey:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mCurrentKey:I

    .line 2556
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mLastCodeX:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->touchX:I

    .line 2557
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mLastCodeY:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->touchY:I

    .line 2566
    :cond_25
    const/4 v2, -0x1

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/htc/android/htcime/ezsip/KeyboardView;->showPreview(IZ)V

    .line 2567
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyIndices:[I

    const/4 v3, -0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 2587
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mTrace:Lcom/htc/android/htcime/ezsip/trace/Trace;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mCurrentKey:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/android/htcime/ezsip/KeyboardView;->SIPkey2IMkey(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->touchX:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->touchY:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mCurrentKey:I

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/htc/android/htcime/ezsip/KeyboardView;->get1stKeyCode(I)I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ezsip/KeyboardView;->getAccentMode()Z

    move-result v7

    invoke-virtual/range {v2 .. v7}, Lcom/htc/android/htcime/ezsip/trace/Trace;->handleUp(IIIIZ)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 2588
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mShiftCehck:Z

    .line 2589
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ezsip/KeyboardView;->shiftStateCheck()V

    .line 2590
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mShiftCehck:Z

    .line 2591
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ezsip/KeyboardView;->invalidateAll()V

    .line 2603
    :goto_a
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mRepeatKeyIndex:I

    .line 2604
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ezsip/KeyboardView;->onRelease()V

    .line 2605
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyUpTime:J

    .line 2608
    sget-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->sFeature_UserProfilingLog:Z

    if-eqz v2, :cond_27

    sget-boolean v2, Lcom/htc/android/htcime/ezsip/KeyboardView;->isKeyMove:Z

    if-nez v2, :cond_27

    sget-boolean v2, Lcom/htc/android/htcime/ezsip/KeyboardView;->isReapeatKey:Z

    if-nez v2, :cond_27

    .line 2609
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyUpTime:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyDownTime:J

    sub-long v19, v2, v4

    .line 2610
    .local v19, total_touchTime:J
    sget-boolean v2, Lcom/htc/android/htcime/ezsip/KeyboardView;->showAccentWindow:Z

    if-nez v2, :cond_26

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mLongPress:Z

    if-eqz v2, :cond_2c

    .line 2611
    :cond_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    move-wide/from16 v0, v19

    invoke-virtual {v2, v0, v1}, Lcom/htc/android/htcime/HTCIMMData;->writeLongPressDurationLog(J)V

    .line 2616
    .end local v19           #total_touchTime:J
    :cond_27
    :goto_b
    sget-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->mScoring:Z

    if-eqz v2, :cond_7

    .line 2617
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyUpTime:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyDownTime:J

    sub-long v8, v2, v4

    .line 2619
    .local v8, DtoD_duration:J
    const-wide/16 v2, 0x7d0

    cmp-long v2, v8, v2

    if-gtz v2, :cond_7

    .line 2620
    sget-wide v2, Lcom/htc/android/htcime/util/ScoringUtil;->mSumDtoD:J

    add-long/2addr v2, v8

    sput-wide v2, Lcom/htc/android/htcime/util/ScoringUtil;->mSumDtoD:J

    .line 2621
    sget v2, Lcom/htc/android/htcime/util/ScoringUtil;->mNumDtoD:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/htc/android/htcime/util/ScoringUtil;->mNumDtoD:I

    goto/16 :goto_2

    .line 2548
    .end local v8           #DtoD_duration:J
    :cond_28
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mCurrentKey:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mLastKey:I

    .line 2549
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mCurrentKeyTime:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->eventTime:J

    add-long/2addr v2, v4

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mLastMoveTime:J

    sub-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mLastKeyTime:J

    .line 2550
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->keyIndex:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mCurrentKey:I

    .line 2551
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mCurrentKeyTime:J

    goto/16 :goto_9

    .line 2594
    :cond_29
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mRepeatKeyIndex:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2a

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mRepeatArrowsMode:Z

    if-eqz v2, :cond_2b

    .line 2595
    :cond_2a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mCurrentKey:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->touchX:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->touchY:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/htc/android/htcime/ezsip/KeyboardView;->onKeyUp(III)V

    goto/16 :goto_a

    .line 2600
    :cond_2b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mRepeatKeyIndex:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->touchX:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->touchY:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/htc/android/htcime/ezsip/KeyboardView;->onKeyUp_RepeatMode(III)V

    goto/16 :goto_a

    .line 2613
    .restart local v19       #total_touchTime:J
    :cond_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    move-wide/from16 v0, v19

    invoke-virtual {v2, v0, v1}, Lcom/htc/android/htcime/HTCIMMData;->writeShortPressDurationLog(J)V

    goto/16 :goto_b

    .line 2325
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onRelease()V
    .locals 1

    .prologue
    .line 2828
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    instance-of v0, v0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;

    if-eqz v0, :cond_0

    .line 2829
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    check-cast v0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->keyrelease()V

    .line 2830
    :cond_0
    return-void
.end method

.method protected onShiftRestore()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2101
    iget v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->MT_SHIFT_STATUS:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2102
    iput v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->MT_SHIFT_STATUS:I

    .line 2103
    iget v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mShiftStateSaved:I

    invoke-virtual {p0, v0, v2}, Lcom/htc/android/htcime/ezsip/KeyboardView;->setIMECapMode(IZ)V

    .line 2105
    :cond_0
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 844
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 846
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 847
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    .line 848
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "me"

    .prologue
    .line 2109
    const/4 v10, 0x0

    .line 2117
    .local v10, result:Z
    sget-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->sFeature_Fake_MultiTouch_Enable:Z

    if-eqz v2, :cond_1

    .line 2118
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/ezsip/KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    .line 2235
    :cond_0
    :goto_0
    return v10

    .line 2122
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    iput v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPointerCount:I

    .line 2123
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    .line 2125
    .local v8, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    .line 2127
    .local v0, now:J
    iget v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPointerCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 2128
    iget-boolean v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPrimaryFingerInactive:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mSecondaryFingerInactive:Z

    if-eqz v2, :cond_4

    .line 2130
    :cond_2
    const/4 v10, 0x1

    .line 2134
    :goto_1
    const/4 v2, 0x1

    if-ne v8, v2, :cond_3

    .line 2135
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/KeyboardView;->onShiftRestore()V

    .line 2136
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mSecondaryFingerInactive:Z

    iput-boolean v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPrimaryFingerInactive:Z

    .line 2229
    :cond_3
    :goto_2
    const/4 v2, 0x2

    if-eq v8, v2, :cond_0

    iput v8, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviousAction:I

    goto :goto_0

    .line 2132
    :cond_4
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/ezsip/KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    goto :goto_1

    .line 2138
    :cond_5
    iget v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPointerCount:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 2139
    sparse-switch v8, :sswitch_data_0

    .line 2224
    const/4 v10, 0x1

    goto :goto_2

    .line 2141
    :sswitch_0
    iget-boolean v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPrimaryFingerInactive:Z

    if-eqz v2, :cond_6

    .line 2142
    sget-boolean v2, Lcom/htc/android/htcime/ezsip/KeyboardView;->sLPD_isLongPress:Z

    if-nez v2, :cond_3

    .line 2144
    const/4 v4, 0x0

    iget v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPointerCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    iget v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPointerCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    move-wide v2, v0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v9

    .line 2146
    .local v9, down:Landroid/view/MotionEvent;
    invoke-virtual {p0, v9}, Lcom/htc/android/htcime/ezsip/KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    .line 2147
    invoke-virtual {v9}, Landroid/view/MotionEvent;->recycle()V

    .line 2148
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPrimaryFingerInactive:Z

    goto :goto_2

    .line 2151
    .end local v9           #down:Landroid/view/MotionEvent;
    :cond_6
    sget-boolean v2, Lcom/htc/android/htcime/ezsip/KeyboardView;->sLPD_isLongPress:Z

    if-nez v2, :cond_3

    .line 2153
    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    move-wide v2, v0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v11

    .line 2155
    .local v11, up:Landroid/view/MotionEvent;
    invoke-virtual {p0, v11}, Lcom/htc/android/htcime/ezsip/KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    .line 2156
    invoke-virtual {v11}, Landroid/view/MotionEvent;->recycle()V

    .line 2158
    const/4 v4, 0x0

    iget v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPointerCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    iget v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPointerCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    move-wide v2, v0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v9

    .line 2160
    .restart local v9       #down:Landroid/view/MotionEvent;
    invoke-virtual {p0, v9}, Lcom/htc/android/htcime/ezsip/KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    .line 2161
    invoke-virtual {v9}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_2

    .line 2166
    .end local v9           #down:Landroid/view/MotionEvent;
    .end local v11           #up:Landroid/view/MotionEvent;
    :sswitch_1
    iget v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviousAction:I

    const/16 v3, 0x105

    if-ne v2, v3, :cond_7

    .line 2167
    sget-boolean v2, Lcom/htc/android/htcime/ezsip/KeyboardView;->sLPD_isLongPress:Z

    if-nez v2, :cond_3

    .line 2168
    const/4 v4, 0x1

    iget v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPointerCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    iget v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPointerCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    move-wide v2, v0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v11

    .line 2170
    .restart local v11       #up:Landroid/view/MotionEvent;
    invoke-virtual {p0, v11}, Lcom/htc/android/htcime/ezsip/KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    .line 2171
    invoke-virtual {v11}, Landroid/view/MotionEvent;->recycle()V

    .line 2172
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPrimaryFingerInactive:Z

    goto/16 :goto_2

    .line 2174
    .end local v11           #up:Landroid/view/MotionEvent;
    :cond_7
    iget v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviousAction:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_8

    .line 2176
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 2179
    :cond_8
    const/4 v10, 0x1

    .line 2181
    goto/16 :goto_2

    .line 2183
    :sswitch_2
    iget-boolean v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mSecondaryFingerInactive:Z

    if-eqz v2, :cond_9

    .line 2184
    sget-boolean v2, Lcom/htc/android/htcime/ezsip/KeyboardView;->sLPD_isLongPress:Z

    if-nez v2, :cond_3

    .line 2185
    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    move-wide v2, v0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v11

    .line 2187
    .restart local v11       #up:Landroid/view/MotionEvent;
    invoke-virtual {p0, v11}, Lcom/htc/android/htcime/ezsip/KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    .line 2188
    invoke-virtual {v11}, Landroid/view/MotionEvent;->recycle()V

    .line 2189
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mSecondaryFingerInactive:Z

    goto/16 :goto_2

    .line 2192
    .end local v11           #up:Landroid/view/MotionEvent;
    :cond_9
    sget-boolean v2, Lcom/htc/android/htcime/ezsip/KeyboardView;->sLPD_isLongPress:Z

    if-nez v2, :cond_3

    .line 2194
    const/4 v4, 0x1

    iget v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPointerCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    iget v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPointerCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    move-wide v2, v0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v11

    .line 2196
    .restart local v11       #up:Landroid/view/MotionEvent;
    invoke-virtual {p0, v11}, Lcom/htc/android/htcime/ezsip/KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    .line 2197
    invoke-virtual {v11}, Landroid/view/MotionEvent;->recycle()V

    .line 2199
    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    move-wide v2, v0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v9

    .line 2201
    .restart local v9       #down:Landroid/view/MotionEvent;
    invoke-virtual {p0, v9}, Lcom/htc/android/htcime/ezsip/KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    .line 2202
    invoke-virtual {v9}, Landroid/view/MotionEvent;->recycle()V

    goto/16 :goto_2

    .line 2207
    .end local v9           #down:Landroid/view/MotionEvent;
    .end local v11           #up:Landroid/view/MotionEvent;
    :sswitch_3
    iget v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviousAction:I

    const/16 v3, 0x105

    if-ne v2, v3, :cond_a

    .line 2209
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 2210
    :cond_a
    iget v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviousAction:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_b

    .line 2211
    sget-boolean v2, Lcom/htc/android/htcime/ezsip/KeyboardView;->sLPD_isLongPress:Z

    if-nez v2, :cond_3

    .line 2212
    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    move-wide v2, v0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v9

    .line 2214
    .restart local v9       #down:Landroid/view/MotionEvent;
    invoke-virtual {p0, v9}, Lcom/htc/android/htcime/ezsip/KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    .line 2215
    invoke-virtual {v9}, Landroid/view/MotionEvent;->recycle()V

    .line 2216
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mSecondaryFingerInactive:Z

    goto/16 :goto_2

    .line 2220
    .end local v9           #down:Landroid/view/MotionEvent;
    :cond_b
    const/4 v10, 0x1

    .line 2222
    goto/16 :goto_2

    .line 2139
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_2
        0x6 -> :sswitch_3
        0x105 -> :sswitch_0
        0x106 -> :sswitch_1
    .end sparse-switch
.end method

.method protected openPopupIfRequired(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "me"

    .prologue
    const/4 v5, -0x1

    const/4 v0, 0x0

    const/4 v13, 0x1

    .line 1954
    iget v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mCurrentKey:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mCurrentKey:I

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    array-length v3, v3

    if-lt v1, v3, :cond_1

    .line 2018
    :cond_0
    :goto_0
    return v0

    .line 1958
    :cond_1
    sput-boolean v13, Lcom/htc/android/htcime/ezsip/KeyboardView;->sLPD_isLongPress:Z

    .line 1961
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/KeyboardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1967
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v3, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mCurrentKey:I

    aget-object v2, v1, v3

    .line 1969
    .local v2, popupKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    iget-object v1, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    if-eqz v1, :cond_9

    .line 1970
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mAccentWindow:Lcom/htc/android/htcime/ezsip/common/AccentWindow;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-boolean v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mAccentWindowException:Z

    if-eqz v1, :cond_3

    .line 1971
    :cond_2
    new-instance v1, Lcom/htc/android/htcime/ezsip/common/AccentWindow;

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-direct {v1, v3, v4}, Lcom/htc/android/htcime/ezsip/common/AccentWindow;-><init>(Landroid/content/Context;Lcom/htc/android/htcime/HTCIMEService;)V

    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mAccentWindow:Lcom/htc/android/htcime/ezsip/common/AccentWindow;

    .line 1972
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 1973
    .local v10, r:Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    if-ne v1, v13, :cond_6

    .line 1974
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mAccentWindow:Lcom/htc/android/htcime/ezsip/common/AccentWindow;

    const v3, 0x7f030039

    const v4, 0x7f03003d

    const v6, 0x7f03003f

    invoke-virtual {v1, v3, v4, v6}, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->inflate(III)V

    .line 1975
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mAccentWindow:Lcom/htc/android/htcime/ezsip/common/AccentWindow;

    const v3, 0x7f03003e

    invoke-virtual {v1, v3}, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->inflateCIMESIPName(I)V

    .line 1976
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mAccentWindow:Lcom/htc/android/htcime/ezsip/common/AccentWindow;

    const v3, 0x7f020055

    invoke-virtual {v10, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x7f020056

    invoke-virtual {v10, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->setLetterBackground(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1977
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mAccentWindow:Lcom/htc/android/htcime/ezsip/common/AccentWindow;

    iget v3, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPopupOffsetY:I

    iget v4, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviewBtnDist:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->setShiftTopAndMargin(I)V

    .line 1985
    :goto_1
    new-instance v9, Lcom/htc/android/htcime/ezsip/KeyboardView$PreviewHideObserver;

    const/4 v1, 0x0

    invoke-direct {v9, p0, v1}, Lcom/htc/android/htcime/ezsip/KeyboardView$PreviewHideObserver;-><init>(Lcom/htc/android/htcime/ezsip/KeyboardView;Lcom/htc/android/htcime/ezsip/KeyboardView$1;)V

    .line 1986
    .local v9, PHO:Lcom/htc/android/htcime/ezsip/KeyboardView$PreviewHideObserver;
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mAccentWindow:Lcom/htc/android/htcime/ezsip/common/AccentWindow;

    invoke-virtual {v1, v9}, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->addObserver(Ljava/util/Observer;)V

    .line 1987
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iput-boolean v0, v1, Lcom/htc/android/htcime/HTCIMMData;->mAccentWindowException:Z

    .line 1989
    .end local v9           #PHO:Lcom/htc/android/htcime/ezsip/KeyboardView$PreviewHideObserver;
    .end local v10           #r:Landroid/content/res/Resources;
    :cond_3
    invoke-virtual {p0, v13}, Lcom/htc/android/htcime/ezsip/KeyboardView;->setAccentMode(Z)V

    .line 1991
    const/4 v12, 0x0

    .line 1992
    .local v12, useFixAccent:Z
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v1}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v1

    iget v11, v1, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    .line 1994
    .local v11, sip_id:I
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    if-ne v1, v13, :cond_5

    .line 1995
    if-eqz v11, :cond_4

    if-eq v13, v11, :cond_4

    const/16 v1, 0x8

    if-ne v1, v11, :cond_7

    :cond_4
    move v12, v13

    .line 1999
    :cond_5
    :goto_2
    if-eqz v12, :cond_8

    .line 2001
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mAccentWindow:Lcom/htc/android/htcime/ezsip/common/AccentWindow;

    iget v3, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mShiftState:I

    move-object v1, p0

    move-object v4, p1

    move v6, v5

    move v7, v5

    move v8, v5

    invoke-virtual/range {v0 .. v8}, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->showAccentLetters(Landroid/view/View;Lcom/htc/android/htcime/ezsip/Keyboard$Key;ILandroid/view/MotionEvent;IIII)V

    .line 2010
    :goto_3
    sput-boolean v13, Lcom/htc/android/htcime/ezsip/KeyboardView;->showAccentWindow:Z

    move v0, v13

    .line 2011
    goto/16 :goto_0

    .line 1979
    .end local v11           #sip_id:I
    .end local v12           #useFixAccent:Z
    .restart local v10       #r:Landroid/content/res/Resources;
    :cond_6
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mAccentWindow:Lcom/htc/android/htcime/ezsip/common/AccentWindow;

    const v3, 0x7f03002e

    const v4, 0x7f030031

    const v6, 0x7f030033

    invoke-virtual {v1, v3, v4, v6}, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->inflate(III)V

    .line 1980
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mAccentWindow:Lcom/htc/android/htcime/ezsip/common/AccentWindow;

    const v3, 0x7f030032

    invoke-virtual {v1, v3}, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->inflateCIMESIPName(I)V

    .line 1981
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mAccentWindow:Lcom/htc/android/htcime/ezsip/common/AccentWindow;

    const v3, 0x7f02003d

    invoke-virtual {v10, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x7f02003e

    invoke-virtual {v10, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->setLetterBackground(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1982
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mAccentWindow:Lcom/htc/android/htcime/ezsip/common/AccentWindow;

    iget v3, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPopupOffsetY:I

    iget v4, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviewBtnDist:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->setShiftTopAndMargin(I)V

    goto :goto_1

    .end local v10           #r:Landroid/content/res/Resources;
    .restart local v11       #sip_id:I
    .restart local v12       #useFixAccent:Z
    :cond_7
    move v12, v0

    .line 1995
    goto :goto_2

    .line 2005
    :cond_8
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mAccentWindow:Lcom/htc/android/htcime/ezsip/common/AccentWindow;

    iget v3, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mShiftState:I

    iget v5, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mShowPreviewX:I

    iget v6, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mShowPreviewY:I

    iget v7, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mCurrPopupWidth:I

    iget v8, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mCurrPopupHeight:I

    move-object v1, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v8}, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->showAccentLetters(Landroid/view/View;Lcom/htc/android/htcime/ezsip/Keyboard$Key;ILandroid/view/MotionEvent;IIII)V

    goto :goto_3

    .line 2014
    .end local v11           #sip_id:I
    .end local v12           #useFixAccent:Z
    :cond_9
    iget-object v1, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->longpressPreview:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 2015
    iput-boolean v13, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mLongPress:Z

    .line 2016
    iget v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mCurrentKey:I

    invoke-virtual {p0, v1, v0}, Lcom/htc/android/htcime/ezsip/KeyboardView;->showPreview(IZ)V

    goto/16 :goto_0
.end method

.method protected performDelTest()V
    .locals 6

    .prologue
    const/16 v5, 0x40

    const/4 v4, 0x0

    .line 3193
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v3}, Lcom/htc/android/htcime/HTCIMEService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 3195
    .local v2, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v2, :cond_0

    .line 3196
    const-string v3, "KeyboardView"

    const-string v4, "null inputConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3230
    :goto_0
    return-void

    .line 3199
    :cond_0
    invoke-interface {v2, v5, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    if-nez v3, :cond_1

    .line 3200
    const-string v3, "KeyboardView"

    const-string v4, "null text before cursor"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3209
    :cond_1
    const/16 v3, 0x40

    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v2, v3, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3218
    .local v1, fieldText:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 3219
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v4, 0x43

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/HTCIMEService;->sendSimKeyEventDown(I)V

    goto :goto_0

    .line 3210
    .end local v1           #fieldText:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 3211
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "KeyboardView"

    const-string v4, "[KeyboardView][performDelTest] getTextBeforeCursor() error!!"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3222
    .end local v0           #ex:Ljava/lang/Exception;
    .restart local v1       #fieldText:Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-direct {p0, v1}, Lcom/htc/android/htcime/ezsip/KeyboardView;->getTrailDeleteLen(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 3223
    :catch_1
    move-exception v0

    .line 3224
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v3, "KeyboardView"

    const-string v4, "[KeyboardView][performDelTest] deleteSurroundingText() error!!"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected playKeyClick(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 1181
    sparse-switch p1, :sswitch_data_0

    .line 1192
    const/4 v0, 0x0

    .line 1195
    .local v0, t:I
    :goto_0
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMEService;->getAudioService()Lcom/htc/android/htcime/util/AudioService;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/htc/android/htcime/util/SIPUtils;->playSoundEffect(Lcom/htc/android/htcime/util/AudioService;I)V

    .line 1197
    return-void

    .line 1183
    .end local v0           #t:I
    :sswitch_0
    const/4 v0, 0x3

    .line 1184
    .restart local v0       #t:I
    goto :goto_0

    .line 1186
    .end local v0           #t:I
    :sswitch_1
    const/4 v0, 0x2

    .line 1187
    .restart local v0       #t:I
    goto :goto_0

    .line 1189
    .end local v0           #t:I
    :sswitch_2
    const/4 v0, 0x1

    .line 1190
    .restart local v0       #t:I
    goto :goto_0

    .line 1181
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0xa -> :sswitch_2
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method protected previewDismiss()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 3310
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_1

    .line 3333
    :cond_0
    :goto_0
    return-void

    .line 3313
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3314
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3322
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviewPopupFunc:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    .line 3325
    :try_start_1
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviewPopupFunc:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3326
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviewPopupFunc:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3328
    :catch_0
    move-exception v0

    .line 3329
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "KeyboardView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPreviewPopupFunc() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3330
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3331
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iput-boolean v4, v1, Lcom/htc/android/htcime/HTCIMMData;->mKBViewNullTokenException:Z

    goto :goto_0

    .line 3316
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 3317
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "KeyboardView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "previewDismiss() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3318
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3319
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iput-boolean v4, v1, Lcom/htc/android/htcime/HTCIMMData;->mKBViewNullTokenException:Z

    goto :goto_1
.end method

.method protected previewIsShowing()Z
    .locals 1

    .prologue
    .line 3337
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviewPopupFunc:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public queryKeyCenterPos(I)Landroid/database/MatrixCursor;
    .locals 12
    .parameter "keycode"

    .prologue
    .line 3475
    new-instance v6, Landroid/database/MatrixCursor;

    sget-object v9, Lcom/htc/android/htcime/ezsip/KeyboardView;->KEY_POS_COLUMNS:[Ljava/lang/String;

    invoke-direct {v6, v9}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3477
    .local v6, mac:Landroid/database/MatrixCursor;
    if-nez p1, :cond_1

    const/4 v3, 0x1

    .line 3478
    .local v3, isAll:Z
    :goto_0
    const/4 v9, 0x2

    new-array v8, v9, [I

    .line 3479
    .local v8, xy:[I
    invoke-virtual {p0, v8}, Lcom/htc/android/htcime/ezsip/KeyboardView;->getLocationOnScreen([I)V

    .line 3481
    iget-object v9, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    array-length v5, v9

    .line 3482
    .local v5, keyCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v5, :cond_3

    .line 3483
    sget-object v9, Lcom/htc/android/htcime/ezsip/KeyboardView;->KEY_POS_COLUMNS:[Ljava/lang/String;

    array-length v9, v9

    new-array v7, v9, [Ljava/lang/Object;

    .line 3484
    .local v7, value:[Ljava/lang/Object;
    iget-object v9, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v4, v9, v2

    .line 3485
    .local v4, key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    iget-object v9, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v9, v9, v2

    iget v9, v9, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->x:I

    int-to-float v9, v9

    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v10, v10, v2

    iget v10, v10, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->width:I

    int-to-float v10, v10

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    add-float v0, v9, v10

    .line 3486
    .local v0, center_x:F
    iget-object v9, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v9, v9, v2

    iget v9, v9, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->y:I

    int-to-float v9, v9

    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v10, v10, v2

    iget v10, v10, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->height:I

    int-to-float v10, v10

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    add-float/2addr v9, v10

    const/4 v10, 0x1

    aget v10, v8, v10

    int-to-float v10, v10

    add-float v1, v9, v10

    .line 3488
    .local v1, center_y:F
    if-eqz v3, :cond_2

    .line 3489
    const/4 v9, 0x0

    iget-object v10, v4, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v9

    .line 3490
    const/4 v9, 0x1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v7, v9

    .line 3491
    const/4 v9, 0x2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v7, v9

    .line 3492
    const/4 v9, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v9

    .line 3493
    invoke-virtual {v6, v7}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 3482
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3477
    .end local v0           #center_x:F
    .end local v1           #center_y:F
    .end local v2           #i:I
    .end local v3           #isAll:Z
    .end local v4           #key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    .end local v5           #keyCount:I
    .end local v7           #value:[Ljava/lang/Object;
    .end local v8           #xy:[I
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 3496
    .restart local v0       #center_x:F
    .restart local v1       #center_y:F
    .restart local v2       #i:I
    .restart local v3       #isAll:Z
    .restart local v4       #key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    .restart local v5       #keyCount:I
    .restart local v7       #value:[Ljava/lang/Object;
    .restart local v8       #xy:[I
    :cond_2
    iget-object v9, v4, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    if-ne v9, p1, :cond_0

    .line 3497
    const/4 v9, 0x0

    iget-object v10, v4, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v9

    .line 3498
    const/4 v9, 0x1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v7, v9

    .line 3499
    const/4 v9, 0x2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v7, v9

    .line 3500
    const/4 v9, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v9

    .line 3501
    invoke-virtual {v6, v7}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 3507
    .end local v0           #center_x:F
    .end local v1           #center_y:F
    .end local v4           #key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    .end local v7           #value:[Ljava/lang/Object;
    :cond_3
    return-object v6
.end method

.method public queryKeyCenterPos(Ljava/lang/String;)Landroid/database/MatrixCursor;
    .locals 12
    .parameter "keyLabel"

    .prologue
    .line 3513
    sget-object v9, Lcom/htc/android/htcime/util/SmartRecoderUtil;->IME_KEYCODE_MAP:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 3514
    sget-object v9, Lcom/htc/android/htcime/util/SmartRecoderUtil;->IME_KEYCODE_MAP:Ljava/util/HashMap;

    invoke-virtual {v9, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/htc/android/htcime/ezsip/KeyboardView;->queryKeyCenterPos(I)Landroid/database/MatrixCursor;

    move-result-object v6

    .line 3557
    :cond_0
    :goto_0
    return-object v6

    .line 3516
    :cond_1
    new-instance v6, Landroid/database/MatrixCursor;

    sget-object v9, Lcom/htc/android/htcime/ezsip/KeyboardView;->KEY_POS_COLUMNS:[Ljava/lang/String;

    invoke-direct {v6, v9}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3518
    .local v6, mac:Landroid/database/MatrixCursor;
    if-nez p1, :cond_3

    const/4 v3, 0x1

    .line 3519
    .local v3, isAll:Z
    :goto_1
    const/4 v9, 0x2

    new-array v8, v9, [I

    .line 3520
    .local v8, xy:[I
    invoke-virtual {p0, v8}, Lcom/htc/android/htcime/ezsip/KeyboardView;->getLocationOnScreen([I)V

    .line 3522
    iget-object v9, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    array-length v5, v9

    .line 3524
    .local v5, keyCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v5, :cond_0

    .line 3525
    sget-object v9, Lcom/htc/android/htcime/ezsip/KeyboardView;->KEY_POS_COLUMNS:[Ljava/lang/String;

    array-length v9, v9

    new-array v7, v9, [Ljava/lang/Object;

    .line 3526
    .local v7, value:[Ljava/lang/Object;
    iget-object v9, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v4, v9, v2

    .line 3527
    .local v4, key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    iget v9, v4, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->x:I

    int-to-float v9, v9

    iget v10, v4, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->width:I

    int-to-float v10, v10

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    add-float v0, v9, v10

    .line 3528
    .local v0, center_x:F
    iget v9, v4, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->y:I

    int-to-float v9, v9

    iget v10, v4, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->height:I

    int-to-float v10, v10

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    add-float/2addr v9, v10

    const/4 v10, 0x1

    aget v10, v8, v10

    int-to-float v10, v10

    add-float v1, v9, v10

    .line 3530
    .local v1, center_y:F
    if-eqz v3, :cond_4

    .line 3531
    const/4 v9, 0x0

    iget-object v10, v4, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v9

    .line 3532
    const/4 v9, 0x1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v7, v9

    .line 3533
    const/4 v9, 0x2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v7, v9

    .line 3534
    const/4 v9, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v9

    .line 3535
    invoke-virtual {v6, v7}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 3524
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3518
    .end local v0           #center_x:F
    .end local v1           #center_y:F
    .end local v2           #i:I
    .end local v3           #isAll:Z
    .end local v4           #key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    .end local v5           #keyCount:I
    .end local v7           #value:[Ljava/lang/Object;
    .end local v8           #xy:[I
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 3538
    .restart local v0       #center_x:F
    .restart local v1       #center_y:F
    .restart local v2       #i:I
    .restart local v3       #isAll:Z
    .restart local v4       #key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    .restart local v5       #keyCount:I
    .restart local v7       #value:[Ljava/lang/Object;
    .restart local v8       #xy:[I
    :cond_4
    iget-object v9, v4, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-eqz v9, :cond_5

    iget-object v9, v4, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 3539
    const/4 v9, 0x0

    iget-object v10, v4, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v9

    .line 3540
    const/4 v9, 0x1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v7, v9

    .line 3541
    const/4 v9, 0x2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v7, v9

    .line 3542
    const/4 v9, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v9

    .line 3543
    invoke-virtual {v6, v7}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 3546
    :cond_5
    iget-object v9, v4, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->top_label:Ljava/lang/CharSequence;

    if-eqz v9, :cond_2

    iget-object v9, v4, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->top_label:Ljava/lang/CharSequence;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 3547
    const/4 v9, 0x0

    iget-object v10, v4, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v9

    .line 3548
    const/4 v9, 0x1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v7, v9

    .line 3549
    const/4 v9, 0x2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v7, v9

    .line 3550
    const/4 v9, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v9

    .line 3551
    invoke-virtual {v6, v7}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method protected repeatKey()Z
    .locals 9

    .prologue
    const/16 v8, 0x15

    const/16 v7, 0x14

    const/16 v4, 0x13

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2683
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v3, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mRepeatKeyIndex:I

    aget-object v0, v2, v3

    .line 2685
    .local v0, key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    iget v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mXT9IdxMap:I

    const/16 v3, -0x3e7

    if-ne v2, v3, :cond_1

    iget v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mRepeatKeyIndex:I

    .line 2687
    .local v1, sendBtnIdx:I
    :goto_0
    iget v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mSIP_ID:I

    if-nez v2, :cond_2

    .line 2688
    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v2, v2, v5

    sparse-switch v2, :sswitch_data_0

    .line 2708
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/high16 v3, 0xf00

    iget-object v4, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v4, v4, v5

    or-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyDownEvent(I)V

    .line 2772
    :cond_0
    :goto_1
    return v6

    .line 2685
    .end local v1           #sendBtnIdx:I
    :cond_1
    iget v1, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mXT9IdxMap:I

    goto :goto_0

    .line 2690
    .restart local v1       #sendBtnIdx:I
    :sswitch_0
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v3, 0x43

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/HTCIMEService;->sendSimKeyEvent(I)V

    goto :goto_1

    .line 2693
    :sswitch_1
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2, v8}, Lcom/htc/android/htcime/HTCIMEService;->sendSimKeyEvent(I)V

    goto :goto_1

    .line 2696
    :sswitch_2
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v3, 0x16

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/HTCIMEService;->sendSimKeyEvent(I)V

    goto :goto_1

    .line 2699
    :sswitch_3
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2, v4}, Lcom/htc/android/htcime/HTCIMEService;->sendSimKeyEvent(I)V

    goto :goto_1

    .line 2702
    :sswitch_4
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2, v7}, Lcom/htc/android/htcime/HTCIMEService;->sendSimKeyEvent(I)V

    goto :goto_1

    .line 2705
    :sswitch_5
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v3, 0x3e

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/HTCIMEService;->sendSimKeyEventDown(I)V

    goto :goto_1

    .line 2713
    :cond_2
    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v2, v2, v5

    sparse-switch v2, :sswitch_data_1

    .line 2767
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget v3, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mSIP_ID:I

    or-int/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyDownEvent(I)V

    goto :goto_1

    .line 2717
    :sswitch_6
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v3, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v3}, Lcom/htc/android/htcime/Intf/IHTCIM;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v3

    iget v3, v3, Lcom/htc/android/htcime/Intf/HTCIMData;->imID:I

    if-ne v2, v3, :cond_3

    .line 2718
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget v3, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mSIP_ID:I

    or-int/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyDownEvent(I)V

    goto :goto_1

    .line 2724
    :cond_3
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v2, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v2}, Lcom/htc/android/htcime/Intf/IHTCIM;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v2

    iget v2, v2, Lcom/htc/android/htcime/Intf/HTCIMData;->imEditWordLen:I

    if-eqz v2, :cond_5

    .line 2725
    iget v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mAutoPressCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mAutoPressCount:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v2, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v2}, Lcom/htc/android/htcime/Intf/IHTCIM;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v2

    iget v2, v2, Lcom/htc/android/htcime/Intf/HTCIMData;->imEditWordLen:I

    const/16 v3, 0xa

    if-lt v2, v3, :cond_4

    .line 2726
    iput-boolean v6, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mAutoPressDelCan:Z

    .line 2727
    const/high16 v2, 0x71a

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/KeyboardView;->sendKeyEvent(I)V

    goto :goto_1

    .line 2729
    :cond_4
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget v3, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mSIP_ID:I

    or-int/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyDownEvent(I)V

    goto/16 :goto_1

    .line 2743
    :cond_5
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v3, 0x43

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/HTCIMEService;->sendSimKeyEvent(I)V

    goto/16 :goto_1

    .line 2749
    :sswitch_7
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2, v8}, Lcom/htc/android/htcime/HTCIMEService;->sendSimKeyEvent(I)V

    goto/16 :goto_1

    .line 2752
    :sswitch_8
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v3, 0x16

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/HTCIMEService;->sendSimKeyEvent(I)V

    goto/16 :goto_1

    .line 2755
    :sswitch_9
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2, v4}, Lcom/htc/android/htcime/HTCIMEService;->sendSimKeyEvent(I)V

    goto/16 :goto_1

    .line 2758
    :sswitch_a
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2, v7}, Lcom/htc/android/htcime/HTCIMEService;->sendSimKeyEvent(I)V

    goto/16 :goto_1

    .line 2762
    :sswitch_b
    iget-boolean v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mAddWordFlag:Z

    if-nez v2, :cond_0

    .line 2764
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget v3, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mSIP_ID:I

    or-int/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyDownEvent(I)V

    goto/16 :goto_1

    .line 2688
    nop

    :sswitch_data_0
    .sparse-switch
        -0x15 -> :sswitch_2
        -0x14 -> :sswitch_1
        -0x13 -> :sswitch_4
        -0x12 -> :sswitch_3
        0x8 -> :sswitch_0
        0x20 -> :sswitch_5
    .end sparse-switch

    .line 2713
    :sswitch_data_1
    .sparse-switch
        -0x15 -> :sswitch_8
        -0x14 -> :sswitch_7
        -0x13 -> :sswitch_a
        -0x12 -> :sswitch_9
        0x8 -> :sswitch_6
        0x20 -> :sswitch_b
    .end sparse-switch
.end method

.method public resetDHAHeight()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3673
    iput v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mAdjSpaceKeyH:I

    .line 3674
    iput v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mAdjCommaKeyH:I

    .line 3675
    iput v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mAdjPeriodKeyH:I

    .line 3676
    iput v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mAdjLandSwitchH:I

    .line 3677
    iput v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mAdjSYMSwitchH:I

    .line 3678
    iput v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mAdjShiftH:I

    .line 3679
    return-void
.end method

.method protected sendKeyEvent(I)V
    .locals 1
    .parameter "keyID"

    .prologue
    .line 2901
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0, p1}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyEvent(I)V

    .line 2902
    return-void
.end method

.method protected sendKeyEvent(III)V
    .locals 1
    .parameter "keyID"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    .line 2912
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyEvent(III)V

    .line 2913
    return-void
.end method

.method protected setAccentMode(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 2917
    iput-boolean p1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mAccentMode:Z

    .line 2918
    iget-boolean v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->softThresholdCheck:Z

    if-eqz v0, :cond_1

    .line 2919
    iget-boolean v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mAccentMode:Z

    if-eqz v0, :cond_0

    .line 2920
    sget v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->sAccent_touchThresold:I

    iput v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->touchThresold:I

    .line 2930
    :goto_0
    return-void

    .line 2922
    :cond_0
    sget v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->sGeneral_touchThresold:I

    iput v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->touchThresold:I

    goto :goto_0

    .line 2925
    :cond_1
    iget-boolean v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mAccentMode:Z

    if-eqz v0, :cond_2

    .line 2926
    const-string v0, "10"

    sget v1, Lcom/htc/android/htcime/HTCIMMData;->mTouchDriverDev:I

    invoke-static {v0, v1}, Lcom/htc/android/htcime/util/SIPUtils;->writeTouchThreshold(Ljava/lang/String;I)V

    goto :goto_0

    .line 2928
    :cond_2
    const-string v0, "30"

    sget v1, Lcom/htc/android/htcime/HTCIMMData;->mTouchDriverDev:I

    invoke-static {v0, v1}, Lcom/htc/android/htcime/util/SIPUtils;->writeTouchThreshold(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected setCapModeFromIM(I)V
    .locals 1
    .parameter "action"

    .prologue
    const/4 v0, 0x1

    .line 709
    packed-switch p1, :pswitch_data_0

    .line 726
    :goto_0
    return-void

    .line 711
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/htc/android/htcime/ezsip/KeyboardView;->setCapModeInner(I)Z

    goto :goto_0

    .line 715
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/htc/android/htcime/ezsip/KeyboardView;->setCapModeInner(I)Z

    goto :goto_0

    .line 719
    :pswitch_2
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/htc/android/htcime/ezsip/KeyboardView;->setCapModeInner(I)Z

    goto :goto_0

    .line 723
    :pswitch_3
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/htc/android/htcime/ezsip/KeyboardView;->setCapModeInner(I)Z

    goto :goto_0

    .line 709
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected setIMECapMode(IZ)V
    .locals 4
    .parameter "capMode"
    .parameter "forceSync"

    .prologue
    .line 734
    invoke-direct {p0, p1}, Lcom/htc/android/htcime/ezsip/KeyboardView;->setCapModeInner(I)Z

    move-result v0

    .line 735
    .local v0, isApplied:Z
    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    .line 736
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/high16 v2, 0x701

    iget v3, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mShiftState:I

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyEvent(I)V

    .line 737
    :cond_1
    return-void
.end method

.method public setKeyboard(Lcom/htc/android/htcime/ezsip/Keyboard;)V
    .locals 3
    .parameter "keyboard"

    .prologue
    .line 672
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    if-eqz v1, :cond_0

    .line 673
    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/htc/android/htcime/ezsip/KeyboardView;->showPreview(IZ)V

    .line 675
    :cond_0
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    .line 676
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v0

    .line 677
    .local v0, keys:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/htcime/ezsip/Keyboard$Key;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 678
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/KeyboardView;->requestLayout()V

    .line 681
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 682
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    .line 687
    new-instance v1, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    invoke-direct {v1, p0}, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;-><init>(Lcom/htc/android/htcime/ezsip/KeyboardView;)V

    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    .line 689
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/KeyboardView;->invalidateAll()V

    .line 691
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/KeyboardView;->initPreview(Landroid/content/Context;)V

    .line 693
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefPopupWidth:I

    iput v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mDefPopupWidth:I

    .line 694
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefKeyWidthLower:I

    iput v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mDefKeyWidthLower:I

    .line 695
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefKeyWidthUpper:I

    iput v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mDefKeyWidthUpper:I

    .line 696
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/KeyboardView;->calculateDHAHeight()V

    .line 697
    return-void
.end method

.method public setKeyboardShifted()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 3567
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ezsip/Keyboard;->setShifted(Z)Z

    .line 3568
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mShiftKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {v0, v2}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setStatus(I)V

    .line 3569
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mCapsKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mCapsKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {v0, v2}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setStatus(I)V

    .line 3570
    :cond_0
    return-void
.end method

.method public setListener(Lcom/htc/android/htcime/ezsip/KeyboardView$KeyboardViewListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 667
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mListener:Lcom/htc/android/htcime/ezsip/KeyboardView$KeyboardViewListener;

    .line 668
    return-void
.end method

.method public setPopupOffset(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 799
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/KeyboardView;->previewDismiss()V

    .line 800
    iput p1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPopupOffsetX:I

    .line 801
    iput p2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPopupOffsetY:I

    .line 802
    return-void
.end method

.method public setPopupParent(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 795
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPopupParent:Landroid/view/View;

    .line 796
    return-void
.end method

.method public setPreviewEnabled(Z)V
    .locals 0
    .parameter "previewEnabled"

    .prologue
    .line 791
    iput-boolean p1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mShowPreview:Z

    .line 792
    return-void
.end method

.method protected shiftStateCheck()V
    .locals 0

    .prologue
    .line 2644
    return-void
.end method

.method public showKey(I)V
    .locals 32
    .parameter "keyIndex"

    .prologue
    .line 1696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-object/from16 v26, v0

    aget-object v10, v26, p1

    .line 1697
    .local v10, key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/htcime/ezsip/KeyboardView;->mCurrentFocusIndex:I

    .line 1698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    move-object/from16 v20, v0

    .line 1699
    .local v20, previewPopup:Landroid/widget/PopupWindow;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviewPopupFunc:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    .line 1700
    .local v21, previewPopupFunc:Landroid/widget/PopupWindow;
    iget v11, v10, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->height:I

    .line 1701
    .local v11, key_height:I
    iget v12, v10, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->width:I

    .line 1702
    .local v12, key_width:I
    const/16 v22, 0x0

    .line 1703
    .local v22, preview_dismiss:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mDefPopupWidth:I

    move/from16 v19, v0

    .line 1704
    .local v19, popupWidth:I
    sget v26, Lcom/htc/android/htcime/ezsip/KeyboardView;->sPOPUP_ENLARGE_BOARDER:I

    shl-int/lit8 v26, v26, 0x1

    add-int v17, v11, v26

    .line 1705
    .local v17, popupHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviewBtnDist:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPopupOffsetY:I

    move/from16 v27, v0

    sub-int v7, v26, v27

    .line 1706
    .local v7, hint_dist:I
    add-int v26, v17, v7

    add-int v23, v26, v11

    .line 1707
    .local v23, real_popupHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mDefPopupWidth:I

    move/from16 v26, v0

    sub-int v26, v26, v12

    div-int/lit8 v16, v26, 0x2

    .line 1709
    .local v16, popupEnlargeBoarder:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    move/from16 v24, v0

    .line 1710
    .local v24, sip_id:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v26, v0

    sget-object v26, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface/range {v26 .. v26}, Lcom/htc/android/htcime/Intf/IHTCIM;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v26

    move-object/from16 v0, v26

    iget v9, v0, Lcom/htc/android/htcime/Intf/HTCIMData;->imID:I

    .line 1712
    .local v9, im_id:I
    const/16 v26, 0x11

    move/from16 v0, v26

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    const/16 v26, 0x9

    move/from16 v0, v26

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    :cond_0
    const/16 v26, 0x2

    move/from16 v0, v26

    if-ne v0, v9, :cond_4

    const/4 v5, 0x1

    .line 1720
    .local v5, bIsHalfScreenPPSip:Z
    :goto_0
    iget-boolean v0, v10, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->showPreview:Z

    move/from16 v26, v0

    if-eqz v26, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDisablePreview:Z

    move/from16 v26, v0

    if-eqz v26, :cond_5

    .line 1721
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1722
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviewIcon:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1723
    const/16 v22, 0x1

    .line 1789
    :goto_1
    if-eqz v22, :cond_10

    .line 1790
    iget v0, v10, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->x:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPopupOffsetX:I

    move/from16 v27, v0

    add-int v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPopupPreviewX:I

    .line 1791
    iget v0, v10, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->y:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPopupOffsetY:I

    move/from16 v27, v0

    add-int v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPopupPreviewY:I

    .line 1792
    move/from16 v19, v12

    .line 1793
    const/16 v16, 0x0

    .line 1794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mFeedBackSource:Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1819
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mFeedBackSource:Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iput v11, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1820
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mFeedBackSource:Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iput v12, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1822
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mOffsetInWindow:[I

    move-object/from16 v26, v0

    if-nez v26, :cond_2

    .line 1823
    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/htcime/ezsip/KeyboardView;->mOffsetInWindow:[I

    .line 1824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mOffsetInWindow:[I

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ezsip/KeyboardView;->getLocationInWindow([I)V

    .line 1827
    :cond_2
    iget v0, v10, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->edgeFlags:I

    move/from16 v26, v0

    and-int/lit8 v26, v26, 0x1

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_16

    .line 1828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mFeedBackSource:Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPopupPreviewX:I

    move/from16 v27, v0

    if-ltz v27, :cond_15

    .end local v16           #popupEnlargeBoarder:I
    :goto_3
    move/from16 v0, v16

    move-object/from16 v1, v26

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1849
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    const/16 v27, 0x6

    invoke-virtual/range {v26 .. v27}, Landroid/os/Handler;->removeMessages(I)V

    .line 1850
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    const/16 v27, 0x7

    invoke-virtual/range {v26 .. v27}, Landroid/os/Handler;->removeMessages(I)V

    .line 1851
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    const/16 v27, 0x2

    invoke-virtual/range {v26 .. v27}, Landroid/os/Handler;->removeMessages(I)V

    .line 1853
    if-eqz v22, :cond_1f

    .line 1854
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1855
    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1857
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mIsPopupWinSIP:Z

    move/from16 v26, v0

    if-eqz v26, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/htc/android/htcime/HTCIMMView;->getLocationTop()I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipHeight:I

    move/from16 v27, v0

    sub-int v15, v26, v27

    .line 1861
    .local v15, offsetY:I
    :goto_5
    iget-boolean v0, v10, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->function:Z

    move/from16 v26, v0

    if-eqz v26, :cond_1c

    iget v0, v10, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mFeedBackBG:I

    move/from16 v26, v0

    if-nez v26, :cond_1c

    .line 1862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mFeedBackFunc:Landroid/view/View;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mDefaultFeedBackFunctionBG:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1868
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviewFrameFunc:Landroid/widget/FrameLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mFeedBackFunc:Landroid/view/View;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mFeedBackSource:Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v28, v0

    invoke-virtual/range {v26 .. v28}, Landroid/widget/FrameLayout;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1870
    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v26

    if-eqz v26, :cond_1e

    .line 1871
    iget v0, v10, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->x:I

    move/from16 v26, v0

    iget v0, v10, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->y:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mOffsetInWindow:[I

    move-object/from16 v28, v0

    const/16 v29, 0x1

    aget v28, v28, v29

    add-int v27, v27, v28

    add-int v27, v27, v15

    move-object/from16 v0, v21

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2, v12, v11}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 1884
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mFeedBack:Landroid/view/View;

    move-object/from16 v26, v0

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setVisibility(I)V

    .line 1885
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviewFrame:Landroid/widget/FrameLayout;

    move-object/from16 v26, v0

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1886
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mFeedBackFunc:Landroid/view/View;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setVisibility(I)V

    .line 1887
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mRedrawFeedbackBG:Z

    move/from16 v26, v0

    if-eqz v26, :cond_3

    .line 1888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mFeedBackFunc:Landroid/view/View;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->invalidate()V

    .line 1889
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviewFrameFunc:Landroid/widget/FrameLayout;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1930
    .end local v15           #offsetY:I
    :goto_8
    return-void

    .line 1712
    .end local v5           #bIsHalfScreenPPSip:Z
    .restart local v16       #popupEnlargeBoarder:I
    :cond_4
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 1725
    .restart local v5       #bIsHalfScreenPPSip:Z
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mLongPress:Z

    move/from16 v26, v0

    if-eqz v26, :cond_6

    iget-object v0, v10, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->longpressPreview:Landroid/graphics/drawable/Drawable;

    move-object/from16 v26, v0

    if-eqz v26, :cond_6

    .line 1726
    invoke-virtual {v10}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->getCurrentLongpressPreview()Landroid/graphics/drawable/Drawable;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 1727
    .local v14, longpressPreview:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviewIcon:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviewIcon:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 1732
    .end local v14           #longpressPreview:Landroid/graphics/drawable/Drawable;
    :cond_6
    iget-object v0, v10, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget v26, v26, v27

    const/16 v27, -0x10

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_7

    iget-object v0, v10, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget v26, v26, v27

    const/16 v27, -0x18

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_9

    .line 1734
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/htc/android/htcime/HTCIMEService;->getSIPSwitcher()Lcom/htc/android/htcime/util/SIPSwitcher;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/htc/android/htcime/util/SIPSwitcher;->getCurSIPDisplay()Ljava/lang/String;

    move-result-object v13

    .line 1735
    .local v13, lang:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1736
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_8

    .line 1737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefaultPopupTextSize:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    invoke-virtual/range {v26 .. v28}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1741
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviewIcon:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 1739
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefaultPopupTextSize:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    const-wide v30, 0x3ff547ae147ae148L

    mul-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v28, v0

    invoke-virtual/range {v26 .. v28}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_9

    .line 1752
    .end local v13           #lang:Ljava/lang/String;
    :cond_9
    iget-object v0, v10, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->label:Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    if-eqz v26, :cond_e

    .line 1753
    const/16 v18, 0x0

    .line 1755
    .local v18, popupText:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefaultPreviewTopLevel:Z

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_a

    .line 1756
    invoke-virtual {v10}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->getMultiLineLabel()Ljava/lang/CharSequence;

    move-result-object v18

    .line 1767
    :goto_a
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ezsip/KeyboardView;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v18

    .line 1769
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1770
    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->length()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_d

    .line 1771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefaultPopupTextSize:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    invoke-virtual/range {v26 .. v28}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1775
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviewIcon:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 1757
    :cond_a
    sget-boolean v26, Lcom/htc/android/htcime/HTCIMMData;->sFeature_TopLabelHoldOnSHIFT:Z

    if-eqz v26, :cond_c

    iget-boolean v0, v10, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->multiLine:Z

    move/from16 v26, v0

    if-eqz v26, :cond_c

    iget-object v0, v10, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->top_label:Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    if-eqz v26, :cond_c

    const/16 v26, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->MT_SHIFT_STATUS:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_b

    const/16 v26, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->MT_SHIFT_STATUS:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_c

    .line 1761
    :cond_b
    iget-object v0, v10, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->top_label:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    goto/16 :goto_a

    .line 1764
    :cond_c
    invoke-virtual {v10}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->getSingleLineLabel()Ljava/lang/CharSequence;

    move-result-object v18

    goto/16 :goto_a

    .line 1773
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefaultPopupTextSize:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    const-wide v30, 0x3ff547ae147ae148L

    mul-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v28, v0

    invoke-virtual/range {v26 .. v28}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_b

    .line 1778
    .end local v18           #popupText:Ljava/lang/CharSequence;
    :cond_e
    iget-object v0, v10, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    move-object/from16 v26, v0

    if-eqz v26, :cond_f

    .line 1779
    invoke-virtual {v10}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->getCurrentIconPreview()Landroid/graphics/drawable/Drawable;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 1780
    .local v8, iconPreview:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviewIcon:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviewIcon:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1782
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 1785
    .end local v8           #iconPreview:Landroid/graphics/drawable/Drawable;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviewIcon:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 1796
    :cond_10
    iget-boolean v0, v10, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->function:Z

    move/from16 v26, v0

    if-eqz v26, :cond_12

    .line 1797
    sget v26, Lcom/htc/android/htcime/ezsip/KeyboardView;->sPOPUP_ENLARGE_BOARDER:I

    shl-int/lit8 v26, v26, 0x1

    add-int v19, v12, v26

    .line 1798
    sget v16, Lcom/htc/android/htcime/ezsip/KeyboardView;->sPOPUP_ENLARGE_BOARDER:I

    .line 1812
    :cond_11
    :goto_c
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/htcime/ezsip/KeyboardView;->mCurrPopupHeight:I

    .line 1813
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/htcime/ezsip/KeyboardView;->mCurrPopupWidth:I

    .line 1815
    iget v0, v10, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->x:I

    move/from16 v26, v0

    sub-int v26, v26, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPopupOffsetX:I

    move/from16 v27, v0

    add-int v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPopupPreviewX:I

    .line 1816
    iget v0, v10, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->y:I

    move/from16 v26, v0

    sub-int v26, v26, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPopupOffsetY:I

    move/from16 v27, v0

    add-int v26, v26, v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviewBtnDist:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPopupPreviewY:I

    .line 1817
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mFeedBackSource:Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v26, v0

    add-int v27, v17, v7

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_2

    .line 1801
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mDefKeyWidthUpper:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-gt v12, v0, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mDefKeyWidthLower:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-lt v12, v0, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mDefPopupWidth:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-le v12, v0, :cond_11

    .line 1803
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mDefPopupWidth:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-le v12, v0, :cond_14

    .line 1804
    move/from16 v19, v12

    .line 1805
    const/16 v16, 0x0

    goto :goto_c

    .line 1807
    :cond_14
    sget v26, Lcom/htc/android/htcime/ezsip/KeyboardView;->sPOPUP_ENLARGE_BOARDER:I

    shl-int/lit8 v26, v26, 0x1

    add-int v19, v12, v26

    .line 1808
    sget v16, Lcom/htc/android/htcime/ezsip/KeyboardView;->sPOPUP_ENLARGE_BOARDER:I

    goto/16 :goto_c

    .line 1828
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPopupPreviewX:I

    move/from16 v27, v0

    add-int v16, v16, v27

    goto/16 :goto_3

    .line 1830
    :cond_16
    iget v0, v10, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->edgeFlags:I

    move/from16 v26, v0

    and-int/lit8 v26, v26, 0x2

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1a

    .line 1833
    if-eqz v5, :cond_18

    .line 1835
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPopupPreviewX:I

    move/from16 v26, v0

    add-int v26, v26, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mOffsetInWindow:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget v27, v27, v28

    add-int v26, v26, v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mScreenWidth:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_17

    .line 1836
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mFeedBackSource:Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPopupOffsetX:I

    move/from16 v27, v0

    add-int v27, v27, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mScreenWidth:I

    move/from16 v28, v0

    sub-int v28, v19, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPopupPreviewX:I

    move/from16 v29, v0

    add-int v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mOffsetInWindow:[I

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aget v29, v29, v30

    add-int v28, v28, v29

    add-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_4

    .line 1838
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mFeedBackSource:Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPopupOffsetX:I

    move/from16 v27, v0

    add-int v27, v27, v16

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_4

    .line 1841
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mFeedBackSource:Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPopupPreviewX:I

    move/from16 v26, v0

    add-int v26, v26, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mScreenWidth:I

    move/from16 v28, v0

    move/from16 v0, v26

    move/from16 v1, v28

    if-le v0, v1, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPopupOffsetX:I

    move/from16 v26, v0

    add-int v26, v26, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mScreenWidth:I

    move/from16 v28, v0

    sub-int v28, v19, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPopupPreviewX:I

    move/from16 v29, v0

    add-int v28, v28, v29

    add-int v26, v26, v28

    :goto_d
    move/from16 v0, v26

    move-object/from16 v1, v27

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_4

    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPopupOffsetX:I

    move/from16 v26, v0

    add-int v26, v26, v16

    goto :goto_d

    .line 1846
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mFeedBackSource:Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPopupOffsetX:I

    move/from16 v27, v0

    add-int v27, v27, v16

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_4

    .line 1857
    .end local v16           #popupEnlargeBoarder:I
    :cond_1b
    const/4 v15, 0x0

    goto/16 :goto_5

    .line 1863
    .restart local v15       #offsetY:I
    :cond_1c
    iget v0, v10, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mFeedBackBG:I

    move/from16 v26, v0

    if-nez v26, :cond_1d

    .line 1864
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mFeedBackFunc:Landroid/view/View;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mDefaultFeedBackBG:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_6

    .line 1866
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mFeedBackFunc:Landroid/view/View;

    move-object/from16 v26, v0

    sget-object v27, Lcom/htc/android/htcime/ezsip/Keyboard;->FEEDBACKBG:[I

    iget v0, v10, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mFeedBackBG:I

    move/from16 v28, v0

    aget v27, v27, v28

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_6

    .line 1874
    :cond_1e
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPopupParent:Landroid/view/View;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    iget v0, v10, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->x:I

    move/from16 v28, v0

    iget v0, v10, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->y:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mOffsetInWindow:[I

    move-object/from16 v30, v0

    const/16 v31, 0x1

    aget v30, v30, v31

    add-int v29, v29, v30

    add-int v29, v29, v15

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1882
    :goto_e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v26

    sput-wide v26, Lcom/htc/android/htcime/HTCIMMData;->previewPopup_Show_Time:J

    goto/16 :goto_7

    .line 1877
    :catch_0
    move-exception v6

    .line 1878
    .local v6, e:Ljava/lang/Exception;
    const-string v26, "KeyboardView"

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/htc/android/htcime/HTCIMMData;->mKBViewNullTokenException:Z

    goto :goto_e

    .line 1891
    .end local v6           #e:Ljava/lang/Exception;
    .end local v15           #offsetY:I
    :cond_1f
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1892
    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1894
    iget-boolean v0, v10, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->function:Z

    move/from16 v26, v0

    if-eqz v26, :cond_21

    iget v0, v10, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mFeedBackBG:I

    move/from16 v26, v0

    if-nez v26, :cond_21

    .line 1895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mFeedBack:Landroid/view/View;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mDefaultFeedBackFunctionBG:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1901
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviewFrame:Landroid/widget/FrameLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mFeedBack:Landroid/view/View;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mFeedBackSource:Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v28, v0

    invoke-virtual/range {v26 .. v28}, Landroid/widget/FrameLayout;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1904
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPopupPreviewX:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mOffsetInWindow:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget v27, v27, v28

    add-int v25, v26, v27

    .line 1905
    .local v25, x:I
    if-gez v25, :cond_23

    const/16 v25, 0x0

    .line 1907
    :cond_20
    :goto_10
    invoke-virtual/range {v20 .. v20}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v26

    if-eqz v26, :cond_24

    .line 1908
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPopupPreviewY:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mOffsetInWindow:[I

    move-object/from16 v27, v0

    const/16 v28, 0x1

    aget v27, v27, v28

    add-int v26, v26, v27

    move-object/from16 v0, v20

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v19

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 1922
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mFeedBackFunc:Landroid/view/View;

    move-object/from16 v26, v0

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setVisibility(I)V

    .line 1923
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviewFrameFunc:Landroid/widget/FrameLayout;

    move-object/from16 v26, v0

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1924
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mFeedBack:Landroid/view/View;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setVisibility(I)V

    .line 1925
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviewFrame:Landroid/widget/FrameLayout;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1927
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/htcime/ezsip/KeyboardView;->mShowPreviewX:I

    .line 1928
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPopupPreviewY:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mOffsetInWindow:[I

    move-object/from16 v27, v0

    const/16 v28, 0x1

    aget v27, v27, v28

    add-int v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/htcime/ezsip/KeyboardView;->mShowPreviewY:I

    goto/16 :goto_8

    .line 1896
    .end local v25           #x:I
    :cond_21
    iget v0, v10, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mFeedBackBG:I

    move/from16 v26, v0

    if-nez v26, :cond_22

    .line 1897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mFeedBack:Landroid/view/View;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mDefaultFeedBackBG:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_f

    .line 1899
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mFeedBack:Landroid/view/View;

    move-object/from16 v26, v0

    sget-object v27, Lcom/htc/android/htcime/ezsip/Keyboard;->FEEDBACKBG:[I

    iget v0, v10, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mFeedBackBG:I

    move/from16 v28, v0

    aget v27, v27, v28

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_f

    .line 1905
    .restart local v25       #x:I
    :cond_23
    add-int v26, v25, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mScreenWidth:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mScreenWidth:I

    move/from16 v26, v0

    sub-int v25, v26, v19

    goto/16 :goto_10

    .line 1912
    :cond_24
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPopupParent:Landroid/view/View;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPopupPreviewY:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mOffsetInWindow:[I

    move-object/from16 v29, v0

    const/16 v30, 0x1

    aget v29, v29, v30

    add-int v28, v28, v29

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v25

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1920
    :goto_12
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v26

    sput-wide v26, Lcom/htc/android/htcime/HTCIMMData;->previewPopup_Show_Time:J

    goto/16 :goto_11

    .line 1915
    :catch_1
    move-exception v6

    .line 1916
    .restart local v6       #e:Ljava/lang/Exception;
    const-string v26, "KeyboardView"

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1917
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/htc/android/htcime/HTCIMMData;->mKBViewNullTokenException:Z

    goto :goto_12
.end method

.method protected showKey_PreviewGone()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1933
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1934
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviewIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1935
    return-void
.end method

.method protected showKeyboardTypeSwitchDialog()V
    .locals 8

    .prologue
    .line 2960
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mContext:Landroid/content/Context;

    if-nez v5, :cond_0

    .line 3001
    :goto_0
    return-void

    .line 2963
    :cond_0
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 2964
    .local v3, sp:Landroid/content/SharedPreferences;
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2965
    .local v2, r:Landroid/content/res/Resources;
    const v5, 0x7f0900d8

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "2"

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2966
    .local v0, checked:I
    const/high16 v5, 0x7f07

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 2968
    .local v1, items:[Ljava/lang/String;
    packed-switch v0, :pswitch_data_0

    .line 2973
    :goto_1
    :pswitch_0
    new-instance v5, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x20c0164

    new-instance v7, Lcom/htc/android/htcime/ezsip/KeyboardView$4;

    invoke-direct {v7, p0}, Lcom/htc/android/htcime/ezsip/KeyboardView$4;-><init>(Lcom/htc/android/htcime/ezsip/KeyboardView;)V

    invoke-virtual {v5, v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f09002d

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/htc/android/htcime/ezsip/KeyboardView$3;

    invoke-direct {v6, p0}, Lcom/htc/android/htcime/ezsip/KeyboardView$3;-><init>(Lcom/htc/android/htcime/ezsip/KeyboardView;)V

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mDialogBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 2985
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mDialogBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;

    new-instance v6, Lcom/htc/android/htcime/ezsip/KeyboardView$5;

    invoke-direct {v6, p0}, Lcom/htc/android/htcime/ezsip/KeyboardView$5;-><init>(Lcom/htc/android/htcime/ezsip/KeyboardView;)V

    invoke-virtual {v5, v1, v0, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 2993
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mDialogBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mSwitchingDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 2994
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mSwitchingDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v5}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 2995
    .local v4, w:Landroid/view/Window;
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v6, v6, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v6}, Lcom/htc/android/htcime/HTCIMMView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    iput-object v6, v5, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 2996
    const/16 v5, 0x3eb

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 2997
    const/high16 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 2999
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mSwitchingDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v5}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto/16 :goto_0

    .line 2969
    .end local v4           #w:Landroid/view/Window;
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_1

    .line 2970
    :pswitch_2
    const/4 v0, 0x0

    goto :goto_1

    .line 2968
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected showPreview(IZ)V
    .locals 8
    .parameter "keyIndex"
    .parameter "releaseKey"

    .prologue
    const-wide/16 v6, 0x46

    const/4 v5, -0x1

    .line 1633
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    if-eqz v1, :cond_1

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v2}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v2

    iget v2, v2, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    if-eq v1, v2, :cond_1

    .line 1692
    :cond_0
    :goto_0
    return-void

    .line 1637
    :cond_1
    iget v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mCurrentKeyIndex:I

    .line 1638
    .local v0, oldKeyIndex:I
    iput p1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mCurrentKeyIndex:I

    .line 1663
    iget v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mCurrentKeyIndex:I

    if-eq v0, v1, :cond_4

    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mShowPreview:Z

    if-eqz v1, :cond_4

    .line 1664
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1666
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/KeyboardView;->previewIsShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1667
    if-ne p1, v5, :cond_2

    .line 1669
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1671
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1673
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0xaf

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1677
    :cond_2
    sget-wide v1, Lcom/htc/android/htcime/HTCIMMData;->previewPopup_Show_Time:J

    sget-wide v3, Lcom/htc/android/htcime/HTCIMMData;->WCL_Show_Time:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_3

    .line 1678
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/KeyboardView;->previewDismiss()V

    .line 1681
    :cond_3
    if-eq p1, v5, :cond_0

    .line 1683
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/ezsip/KeyboardView;->showKey(I)V

    goto :goto_0

    .line 1686
    :cond_4
    iget v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mCurrentKeyIndex:I

    if-ne v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mLongPress:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mShowPreview:Z

    if-eqz v1, :cond_0

    .line 1687
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/KeyboardView;->previewIsShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviewFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviewFrameFunc:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    :cond_5
    if-eq v0, v5, :cond_0

    .line 1689
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/ezsip/KeyboardView;->showKey(I)V

    goto :goto_0
.end method

.method public startInput()V
    .locals 2

    .prologue
    .line 592
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mOffsetInWindow:[I

    .line 593
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mInputFieldAttribute:Landroid/view/inputmethod/EditorInfo;

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v1, 0x2

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->isSingleLine:Z

    .line 594
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mTrace:Lcom/htc/android/htcime/ezsip/trace/Trace;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ezsip/trace/Trace;->startInput()V

    .line 595
    return-void

    .line 593
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateFullscreenMode()V
    .locals 2

    .prologue
    .line 763
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    if-eqz v1, :cond_1

    .line 788
    :cond_0
    :goto_0
    return-void

    .line 765
    :cond_1
    const/4 v0, 0x0

    .line 766
    .local v0, v:Landroid/view/View;
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMEService;->isFullscreenMode()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mAddWordFlag:Z

    if-eqz v1, :cond_3

    .line 767
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMMView;->AddWordExtractViewInflate()Landroid/view/View;

    move-result-object v0

    .line 778
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 779
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1, v0}, Lcom/htc/android/htcime/HTCIMEService;->setExtractView(Landroid/view/View;)V

    goto :goto_0

    .line 770
    :cond_3
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-boolean v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mIsMMSExtractView:Z

    if-eqz v1, :cond_4

    .line 771
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMMView;->CreateLandMMSTextView()Landroid/view/View;

    move-result-object v0

    .line 774
    :cond_4
    if-nez v0, :cond_2

    .line 775
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMEService;->onCreateExtractTextView()Landroid/view/View;

    move-result-object v0

    goto :goto_1
.end method

.method public updateKeys()V
    .locals 3

    .prologue
    .line 3290
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/4 v2, -0x7

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v0

    .line 3291
    .local v0, key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    if-eqz v0, :cond_1

    .line 3292
    iget v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mSIP_ID:I

    const/high16 v2, 0x100

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mSIP_ID:I

    const/high16 v2, 0x200

    if-ne v1, v2, :cond_2

    .line 3293
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f09

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    .line 3297
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/KeyboardView;->calculateDHAHeight()V

    .line 3298
    return-void

    .line 3295
    :cond_2
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    goto :goto_0
.end method
