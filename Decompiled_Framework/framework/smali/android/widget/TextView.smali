.class public Landroid/widget/TextView;
.super Landroid/view/View;
.source "TextView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Landroid/widget/HtcIfTextView;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TextView$5;,
        Landroid/widget/TextView$SCATDHandler;,
        Landroid/widget/TextView$MenuWrapper;,
        Landroid/widget/TextView$HtcPastePositionListener;,
        Landroid/widget/TextView$SelectionModifierCursorController;,
        Landroid/widget/TextView$InsertionPointCursorController;,
        Landroid/widget/TextView$CursorController;,
        Landroid/widget/TextView$SelectionEndHandleView;,
        Landroid/widget/TextView$SelectionStartHandleView;,
        Landroid/widget/TextView$InsertionHandleView;,
        Landroid/widget/TextView$HandleView;,
        Landroid/widget/TextView$ActionPopupWindow;,
        Landroid/widget/TextView$SelectionActionModeCallback;,
        Landroid/widget/TextView$SuggestionsPopupWindow;,
        Landroid/widget/TextView$PinnedPopupWindow;,
        Landroid/widget/TextView$PositionListener;,
        Landroid/widget/TextView$TextViewPositionListener;,
        Landroid/widget/TextView$DragLocalState;,
        Landroid/widget/TextView$MenuHandler;,
        Landroid/widget/TextView$BufferType;,
        Landroid/widget/TextView$Blink;,
        Landroid/widget/TextView$ChangeWatcher;,
        Landroid/widget/TextView$EasyEditPopupWindow;,
        Landroid/widget/TextView$EasyEditSpanController;,
        Landroid/widget/TextView$Marquee;,
        Landroid/widget/TextView$CorrectionHighlighter;,
        Landroid/widget/TextView$ErrorPopup;,
        Landroid/widget/TextView$CharWrapper;,
        Landroid/widget/TextView$SavedState;,
        Landroid/widget/TextView$OnEditorActionListener;,
        Landroid/widget/TextView$TextAlign;,
        Landroid/widget/TextView$InputMethodState;,
        Landroid/widget/TextView$InputContentType;,
        Landroid/widget/TextView$Drawables;
    }
.end annotation


# static fields
.field private static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final BLINK:I = 0x1f4

.field private static BLINK_BLACK:I = 0x0

.field private static BLINK_WHITE:I = 0x0

.field private static final CURSOR_WIDTH:F = 2.0f

.field static final DEBUG_EXTRACT:Z = false

.field private static final DECIMAL:I = 0x4

.field private static DRAG_SHADOW_MAX_TEXT_LENGTH:I = 0x0

.field private static final DirectionLEFT:I = 0x3

.field private static final DirectionRIGHT:I = 0x4

.field private static final EMPTY_SPANNED:Landroid/text/Spanned; = null

.field private static final EMS:I = 0x1

.field static final EXTRACT_NOTHING:I = -0x2

.field static final EXTRACT_UNKNOWN:I = -0x1

.field public static final HTC_TIMESTAMP:Ljava/lang/String; = "HTC_MODIFIED_CLIPDATA="

.field private static final ID_COPY:I = 0x1020021

.field private static final ID_COPY_URL:I = 0x1020023

.field private static final ID_CUT:I = 0x1020020

.field private static final ID_LOOKUP:I = 0x54d

.field private static final ID_PASTE:I = 0x1020022

.field private static final ID_SELECTION_MODE:I = 0x102002d

.field private static final ID_SELECT_ALL:I = 0x102001f

.field private static final ID_SHARE:I = 0x54e

.field private static final ID_START_SELECTING_TEXT:I = 0x1020028

.field private static final LINES:I = 0x1

.field static final LOG_TAG:Ljava/lang/String; = "TextView"

.field private static final MARQUEE_FADE_NORMAL:I = 0x0

.field private static final MARQUEE_FADE_SWITCH_SHOW_ELLIPSIS:I = 0x1

.field private static final MARQUEE_FADE_SWITCH_SHOW_FADE:I = 0x2

.field private static final MONOSPACE:I = 0x3

.field private static final MULTILINE_STATE_SET:[I = null

.field private static final NO_FILTERS:[Landroid/text/InputFilter; = null

.field private static final PIXELS:I = 0x2

.field private static final PREDRAW_DONE:I = 0x2

.field private static final PREDRAW_NOT_REGISTERED:I = 0x0

.field private static final PREDRAW_PENDING:I = 0x1

.field private static final PRIORITY:I = 0x64

.field private static final SANS:I = 0x1

.field public static final SC_ADDTODIC_SCAN:Ljava/lang/String; = "com.htc.android.htcime.rescanword"

.field private static final SERIF:I = 0x2

.field private static final SIGNED:I = 0x2

.field public static final STYLED_ANNOTATION_SPAN_KEY:Ljava/lang/String; = "styledtext"

#the value of this static final field might be set in the static constructor
.field private static final THEMEABLE:Z = false

.field private static final UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics; = null

.field private static final VERY_WIDE:I = 0x100000

.field private static final isTablet:Z

.field private static mCurBlinkBlack:Z

.field private static mIsBlackTimeShorter:Z

.field private static mPreviousSkinPackage:Ljava/lang/String;

.field private static mSCATDPROCESSING:Z

.field private static mTextColorHighlight:I

.field private static sCursorControllerTempRect:Landroid/graphics/Rect;

.field private static sLastCutOrCopyTime:J

.field private static final sTempRect:Landroid/graphics/RectF;

.field private static final sTmpPosition:[F


# instance fields
.field private final ANCHOR_FLY_THRESHOLD_MILLI:I

.field private final ANCHOR_ROLLBACK_THRESHOLD_MILLI:I

.field private checkMetaStatus:Z

.field private isMessageLink:Z

.field private mAllowTransformationLengthChange:Z

.field private mAnchorHeight:I

.field private mAnchorLastMovedIndex:I

.field private mAnchorLastMovedMilli:J

.field private mAutoLinkMask:I

.field private mBlink:Landroid/widget/TextView$Blink;

.field private mBoring:Landroid/text/BoringLayout$Metrics;

.field private mBufferType:Landroid/widget/TextView$BufferType;

.field private mCapOld:I

.field private mChangeTimes:I

.field private mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

.field private mCharWrapper:Landroid/widget/TextView$CharWrapper;

.field private mCorrectionHighlighter:Landroid/widget/TextView$CorrectionHighlighter;

.field private mCreatedWithASelection:Z

.field private mCurHintTextColor:I

.field private mCurTextColor:I

.field private mCurrentAlpha:I

.field private mCurrentDirection:I

.field private mCursorCount:I

.field private final mCursorDrawable:[Landroid/graphics/drawable/Drawable;

.field private mCursorDrawableRes:I

.field private mCursorVisible:Z

.field private mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

.field private mDesiredHeightAtMeasure:I

.field private mDiscardNextActionUp:Z

.field private mDispatchTemporaryDetach:Z

.field private mDispatchToTheOtherAnchor:Z

.field private mDonotPassToLeft:Z

.field private mDrawables:Landroid/widget/TextView$Drawables;

.field private mEasyUpHardDownTriggered:Z

.field private mEditableFactory:Landroid/text/Editable$Factory;

.field private mEllipsize:Landroid/text/TextUtils$TruncateAt;

.field private mError:Ljava/lang/CharSequence;

.field private mErrorWasChanged:Z

.field private mFilters:[Landroid/text/InputFilter;

.field private mFirstDirection:I

.field private mFlags:I

.field private mFnOld:I

.field private mFreezesText:Z

.field private mFrozenWithFocus:Z

.field private mGravity:I

.field private mHasCustomContextMenu:Z

.field private mHighlightColor:I

.field private final mHighlightPaint:Landroid/graphics/Paint;

.field private mHighlightPath:Landroid/graphics/Path;

.field private mHighlightPathBogus:Z

.field private mHint:Ljava/lang/CharSequence;

.field private mHintBoring:Landroid/text/BoringLayout$Metrics;

.field private mHintLayout:Landroid/text/Layout;

.field private mHintTextColor:Landroid/content/res/ColorStateList;

.field private mHookIME:Ljava/lang/Runnable;

.field private mHorizontallyScrolling:Z

.field private mIgnoreActionUpEvent:Z

.field private mIgnoreSetText:Z

.field private mInBatchEditControllers:Z

.field private mIncludePad:Z

.field private mInput:Landroid/text/method/KeyListener;

.field mInputContentType:Landroid/widget/TextView$InputContentType;

.field protected mInputMethodState:Landroid/widget/TextView$InputMethodState;

.field private mInputType:I

.field private mInsertionControllerEnabled:Z

.field private mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

.field private mIsChildOfActionBarView:Z

.field private mIsInQuickActioMode:Z

.field private mIsInTextSelectionMode:Z

.field private mIsLongPressed:Z

.field private mIsMessage:Z

.field private mIsSCTimeoutclosed:Z

.field private mLastDownPositionX:F

.field private mLastDownPositionY:F

.field private mLastLine:I

.field private mLastScroll:J

.field protected mLayout:Landroid/text/Layout;

.field private mLayoutAlignment:Landroid/text/Layout$Alignment;

.field private mLinkTextColor:Landroid/content/res/ColorStateList;

.field private mLinksClickable:Z

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/TextWatcher;",
            ">;"
        }
    .end annotation
.end field

.field private mLongpressWhiteSpace:Z

.field private mMarquee:Landroid/widget/TextView$Marquee;

.field private mMarqueeControlledByAp:Z

.field private mMarqueeFadeMode:I

.field private mMarqueeRepeatLimit:I

.field private mMaxMode:I

.field private mMaxWidth:I

.field private mMaxWidthMode:I

.field private mMaximum:I

.field private mMenuWrapper:Landroid/widget/TextView$MenuWrapper;

.field private mMinMode:I

.field private mMinWidth:I

.field private mMinWidthMode:I

.field private mMinimum:I

.field private mMovement:Landroid/text/method/MovementMethod;

.field private mOldMaxMode:I

.field private mOldMaximum:I

.field private mPassToLeftAnchor:Z

.field private mPasteWindowHider:Ljava/lang/Runnable;

.field private mPopup:Landroid/widget/TextView$ErrorPopup;

.field private mPositionListener:Landroid/widget/TextView$PositionListener;

.field private mPreDirection:I

.field private mPreDrawState:I

.field private mPreviousX:F

.field final mRemoveMagnifier:Z

.field private mResolvedDrawables:Z

.field private mRestartMarquee:Z

.field mSCATDHandler:Landroid/widget/TextView$SCATDHandler;

.field mSCATDQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedHintLayout:Landroid/text/BoringLayout;

.field private mSavedLayout:Landroid/text/BoringLayout;

.field private mSavedMarqueeModeLayout:Landroid/text/Layout;

.field private mScrolled:Z

.field private mScroller:Landroid/widget/Scroller;

.field protected mSelectAChar:Z

.field private mSelectAllOnFocus:Z

.field private mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

.field private mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

.field private mSelectHandleRight:Landroid/graphics/drawable/Drawable;

.field private mSelectTxtPaint:Landroid/text/TextPaint;

.field private mSelectionActionMode:Landroid/view/ActionMode;

.field private mSelectionControllerEnabled:Z

.field protected mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

.field private mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

.field private mSelectionMoved:Z

.field private mShadowDx:F

.field private mShadowDy:F

.field private mShadowRadius:F

.field private mShowCursor:J

.field private mShowErrorAfterAttach:Z

.field private mSingleLine:Z

.field private mSoftInputShownOnFocus:Z

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mSpannableFactory:Landroid/text/Spannable$Factory;

.field private mSpellChecker:Landroid/widget/SpellChecker;

.field private final mSquaredTouchSlopDistance:I

.field private mStatusBarWindowOffset:I

.field private mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

.field private mSuggestionsPopupWindow:Landroid/widget/TextView$SuggestionsPopupWindow;

.field final mTempCoords:[I

.field mTempRect:Landroid/graphics/Rect;

.field private mTemporaryDetach:Z

.field private mText:Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation
.end field

.field private mTextAlign:Landroid/widget/TextView$TextAlign;

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTextDir:Landroid/text/TextDirectionHeuristic;

.field private mTextEditSuggestionItemLayout:I

.field private mTextIsSelectable:Z

.field private final mTextPaint:Landroid/text/TextPaint;

.field private mTextSelectHandleLeftRes:I

.field private mTextSelectHandleRes:I

.field private mTextSelectHandleRightRes:I

.field private mTextSelectedColor:I

.field private mTouchFocusSelected:Z

.field private mTransformation:Landroid/text/method/TransformationMethod;

.field private mTransformed:Ljava/lang/CharSequence;

.field private mUserSetTextScaleX:Z

.field private mVisibleRect:Landroid/graphics/Rect;

.field private mWordIterator:Landroid/text/method/WordIterator;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v6, 0x1f4

    const/16 v5, 0x3e8

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string/jumbo v4, "none"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    :goto_0
    sput-boolean v1, Landroid/widget/TextView;->THEMEABLE:Z

    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    sput-boolean v1, Landroid/widget/TextView;->isTablet:Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const-string v1, "H"

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    const-string v1, ""

    sput-object v1, Landroid/widget/TextView;->mPreviousSkinPackage:Ljava/lang/String;

    sput v3, Landroid/widget/TextView;->mTextColorHighlight:I

    new-instance v1, Landroid/text/BoringLayout$Metrics;

    invoke-direct {v1}, Landroid/text/BoringLayout$Metrics;-><init>()V

    sput-object v1, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    sput-object v1, Landroid/widget/TextView;->sCursorControllerTempRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    sput-object v1, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    const/4 v1, 0x2

    new-array v1, v1, [F

    sput-object v1, Landroid/widget/TextView;->sTmpPosition:[F

    sput v6, Landroid/widget/TextView;->BLINK_BLACK:I

    sput v6, Landroid/widget/TextView;->BLINK_WHITE:I

    sput-boolean v2, Landroid/widget/TextView;->mCurBlinkBlack:Z

    sput-boolean v3, Landroid/widget/TextView;->mIsBlackTimeShorter:Z

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x7b

    if-eq v1, v4, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x61

    if-ne v1, v4, :cond_3

    :cond_0
    const/16 v1, 0xfa

    sput v1, Landroid/widget/TextView;->BLINK_BLACK:I

    sput v5, Landroid/widget/TextView;->BLINK_WHITE:I

    sput-boolean v2, Landroid/widget/TextView;->mIsBlackTimeShorter:Z

    :cond_1
    :goto_1
    new-array v1, v3, [Landroid/text/InputFilter;

    sput-object v1, Landroid/widget/TextView;->NO_FILTERS:[Landroid/text/InputFilter;

    new-instance v1, Landroid/text/SpannedString;

    const-string v4, ""

    invoke-direct {v1, v4}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    sput-object v1, Landroid/widget/TextView;->EMPTY_SPANNED:Landroid/text/Spanned;

    const/16 v1, 0x14

    sput v1, Landroid/widget/TextView;->DRAG_SHADOW_MAX_TEXT_LENGTH:I

    new-array v1, v2, [I

    const v2, 0x101034d

    aput v2, v1, v3

    sput-object v1, Landroid/widget/TextView;->MULTILINE_STATE_SET:[I

    sput-boolean v3, Landroid/widget/TextView;->mSCATDPROCESSING:Z

    return-void

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x3e

    if-eq v1, v4, :cond_4

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x89

    if-ne v1, v4, :cond_1

    :cond_4
    sput v5, Landroid/widget/TextView;->BLINK_BLACK:I

    sput v5, Landroid/widget/TextView;->BLINK_WHITE:I

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010084

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 70

    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v67, 0xff

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mCurrentAlpha:I

    const/16 v67, 0x2

    move/from16 v0, v67

    new-array v0, v0, [I

    move-object/from16 v67, v0

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mTempCoords:[I

    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mDiscardNextActionUp:Z

    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mIgnoreActionUpEvent:Z

    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mScrolled:Z

    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mAnchorHeight:I

    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mRemoveMagnifier:Z

    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mEditableFactory:Landroid/text/Editable$Factory;

    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mPreDrawState:I

    const/16 v67, 0x0

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mEasyUpHardDownTriggered:Z

    const/16 v67, -0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mLastLine:I

    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mIsChildOfActionBarView:Z

    const/16 v67, 0x0

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mSelectionMoved:Z

    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mTouchFocusSelected:Z

    const/16 v67, 0x3

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    const/16 v67, 0x2

    move/from16 v0, v67

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    move-object/from16 v67, v0

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mCreatedWithASelection:Z

    const/16 v67, 0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mSoftInputShownOnFocus:Z

    sget-object v67, Landroid/widget/TextView$TextAlign;->INHERIT:Landroid/widget/TextView$TextAlign;

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mTextAlign:Landroid/widget/TextView$TextAlign;

    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mResolvedDrawables:Z

    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMarqueeFadeMode:I

    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->isMessageLink:Z

    new-instance v67, Landroid/widget/TextView$3;

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView$3;-><init>(Landroid/widget/TextView;)V

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHookIME:Ljava/lang/Runnable;

    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mLongpressWhiteSpace:Z

    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mSelectAChar:Z

    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mPassToLeftAnchor:Z

    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mDispatchToTheOtherAnchor:Z

    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mDonotPassToLeft:Z

    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mChangeTimes:I

    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mPreviousX:F

    const/16 v67, -0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mCurrentDirection:I

    const/16 v67, -0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mPreDirection:I

    const/16 v67, -0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mFirstDirection:I

    sget-object v67, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    const/16 v67, 0x0

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    const v67, 0x6633b5e5

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mHighlightColor:I

    const/16 v67, -0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mTextSelectedColor:I

    const/16 v67, 0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mCursorVisible:Z

    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mIsInQuickActioMode:Z

    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mSelectAllOnFocus:Z

    const v67, 0x800033

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mGravity:I

    const/16 v67, 0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mLinksClickable:Z

    const/high16 v67, 0x3f80

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mSpacingMult:F

    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mSpacingAdd:F

    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mTextIsSelectable:Z

    const v67, 0x7fffffff

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMaximum:I

    const/16 v67, 0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMaxMode:I

    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMinimum:I

    const/16 v67, 0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMinMode:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMaximum:I

    move/from16 v67, v0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mOldMaximum:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMaxMode:I

    move/from16 v67, v0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mOldMaxMode:I

    const v67, 0x7fffffff

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMaxWidth:I

    const/16 v67, 0x2

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMaxWidthMode:I

    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMinWidth:I

    const/16 v67, 0x2

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMinWidthMode:I

    const/16 v67, -0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    const/16 v67, 0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mIncludePad:Z

    const/16 v67, 0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mHighlightPathBogus:Z

    const/16 v67, 0x0

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    const/16 v67, 0x0

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    sget-object v67, Landroid/widget/TextView;->NO_FILTERS:[Landroid/text/InputFilter;

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    new-instance v67, Landroid/graphics/Rect;

    invoke-direct/range {v67 .. v67}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mVisibleRect:Landroid/graphics/Rect;

    const/16 v67, 0x2

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mFlags:I

    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mStatusBarWindowOffset:I

    new-instance v67, Landroid/widget/TextView$MenuWrapper;

    const/16 v68, 0x0

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    move-object/from16 v2, v68

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView$MenuWrapper;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mMenuWrapper:Landroid/widget/TextView$MenuWrapper;

    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mIgnoreSetText:Z

    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mHasCustomContextMenu:Z

    const-wide/16 v67, 0x0

    move-wide/from16 v0, v67

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/TextView;->mAnchorLastMovedMilli:J

    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mAnchorLastMovedIndex:I

    const/16 v67, 0x3c

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->ANCHOR_ROLLBACK_THRESHOLD_MILLI:I

    const/16 v67, 0x64

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->ANCHOR_FLY_THRESHOLD_MILLI:I

    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->checkMetaStatus:Z

    const/16 v67, 0x0

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mSCATDQueue:Ljava/util/ArrayList;

    const/16 v67, 0x0

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mSCATDHandler:Landroid/widget/TextView$SCATDHandler;

    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mIsMessage:Z

    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mIsSCTimeoutclosed:Z

    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mMarqueeControlledByAp:Z

    const-string v67, ""

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v17

    new-instance v67, Landroid/text/TextPaint;

    const/16 v68, 0x1

    invoke-direct/range {v67 .. v68}, Landroid/text/TextPaint;-><init>(I)V

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v67, v0

    invoke-virtual/range {v47 .. v47}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v68

    move-object/from16 v0, v68

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v68, v0

    move/from16 v0, v68

    move-object/from16 v1, v67

    iput v0, v1, Landroid/text/TextPaint;->density:F

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v67, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    move/from16 v68, v0

    invoke-virtual/range {v67 .. v68}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V

    new-instance v67, Landroid/graphics/Paint;

    const/16 v68, 0x1

    invoke-direct/range {v67 .. v68}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v67, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    move/from16 v68, v0

    invoke-virtual/range {v67 .. v68}, Landroid/graphics/Paint;->setCompatibilityScaling(F)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getDefaultMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    const/16 v67, 0x0

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    new-instance v67, Landroid/text/TextPaint;

    const/16 v68, 0x1

    invoke-direct/range {v67 .. v68}, Landroid/text/TextPaint;-><init>(I)V

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mSelectTxtPaint:Landroid/text/TextPaint;

    const/16 v56, 0x0

    const/16 v55, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0xf

    const/16 v63, -0x1

    const/16 v53, -0x1

    const/4 v6, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v60

    sget-object v67, Lcom/android/internal/R$styleable;->TextViewAppearance:[I

    const/16 v68, 0x0

    move-object/from16 v0, v60

    move-object/from16 v1, p2

    move-object/from16 v2, v67

    move/from16 v3, p3

    move/from16 v4, v68

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    const/4 v8, 0x0

    const/16 v67, 0x0

    const/16 v68, -0x1

    move/from16 v0, v67

    move/from16 v1, v68

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    const/16 v67, -0x1

    move/from16 v0, v67

    if-eq v7, v0, :cond_0

    sget-object v67, Lcom/android/internal/R$styleable;->TextAppearance:[I

    move-object/from16 v0, v60

    move-object/from16 v1, v67

    invoke-virtual {v0, v7, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v8

    :cond_0
    if-eqz v8, :cond_7

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v40

    const/16 v34, 0x0

    :goto_0
    move/from16 v0, v34

    move/from16 v1, v40

    if-ge v0, v1, :cond_6

    move/from16 v0, v34

    invoke-virtual {v8, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v9

    packed-switch v9, :pswitch_data_0

    :goto_1
    add-int/lit8 v34, v34, 0x1

    goto :goto_0

    :pswitch_0
    sget-boolean v67, Landroid/widget/TextView;->THEMEABLE:Z

    if-eqz v67, :cond_5

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->getSkinPackageName()Ljava/lang/String;

    move-result-object v52

    sget-boolean v67, Landroid/widget/TextView;->THEMEABLE:Z

    if-eqz v67, :cond_2

    sget-object v67, Landroid/widget/TextView;->mPreviousSkinPackage:Ljava/lang/String;

    move-object/from16 v0, v52

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v67

    if-nez v67, :cond_2

    const/16 v51, 0x1

    :goto_2
    if-eqz v51, :cond_4

    sput-object v52, Landroid/widget/TextView;->mPreviousSkinPackage:Ljava/lang/String;

    if-eqz v52, :cond_1

    const-string v67, ""

    move-object/from16 v0, v52

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v67

    if-nez v67, :cond_1

    const-string v67, "default"

    move-object/from16 v0, v52

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v67

    if-eqz v67, :cond_3

    :cond_1
    move/from16 v0, v56

    invoke-virtual {v8, v9, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v56

    :goto_3
    sput v56, Landroid/widget/TextView;->mTextColorHighlight:I

    goto :goto_1

    :cond_2
    const/16 v51, 0x0

    goto :goto_2

    :cond_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v61

    const-string/jumbo v67, "input_text_selection_highlight"

    const-string v68, "color"

    move-object/from16 v0, v61

    move-object/from16 v1, v67

    move-object/from16 v2, v68

    move-object/from16 v3, v52

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v67

    move-object/from16 v0, v61

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v56

    goto :goto_3

    :catch_0
    move-exception v31

    const-string v67, "TextView"

    new-instance v68, Ljava/lang/StringBuilder;

    invoke-direct/range {v68 .. v68}, Ljava/lang/StringBuilder;-><init>()V

    const-string v69, "No skin package matches with the given name"

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    move-object/from16 v0, v68

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-static/range {v67 .. v68}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, v56

    invoke-virtual {v8, v9, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v56

    goto :goto_3

    :catch_1
    move-exception v35

    move/from16 v0, v56

    invoke-virtual {v8, v9, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v56

    goto :goto_3

    :cond_4
    sget v56, Landroid/widget/TextView;->mTextColorHighlight:I

    goto/16 :goto_1

    :cond_5
    move/from16 v0, v56

    invoke-virtual {v8, v9, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v56

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {v8, v9}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v55

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {v8, v9}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v57

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {v8, v9}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v58

    goto/16 :goto_1

    :pswitch_4
    move/from16 v0, v59

    invoke-virtual {v8, v9, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v59

    goto/16 :goto_1

    :pswitch_5
    const/16 v67, -0x1

    move/from16 v0, v67

    invoke-virtual {v8, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v63

    goto/16 :goto_1

    :pswitch_6
    const/16 v67, -0x1

    move/from16 v0, v67

    invoke-virtual {v8, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v53

    goto/16 :goto_1

    :pswitch_7
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v8, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    goto/16 :goto_1

    :cond_6
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getDefaultEditable()Z

    move-result v29

    const/16 v36, 0x0

    const/16 v42, 0x0

    const/16 v18, 0x0

    const/16 v45, 0x0

    const/4 v11, 0x0

    const/4 v10, -0x1

    const/4 v13, 0x0

    const/16 v48, 0x0

    const/16 v21, 0x0

    const/16 v25, 0x0

    const/16 v23, 0x0

    const/16 v19, 0x0

    const/16 v24, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v30, -0x1

    const/16 v50, 0x0

    const/16 v39, -0x1

    const-string v54, ""

    const/16 v33, 0x0

    const/16 v49, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v46, 0x0

    const/16 v43, 0x0

    const/16 v37, 0x0

    sget-object v67, Lcom/android/internal/R$styleable;->TextView:[I

    const/16 v68, 0x0

    move-object/from16 v0, v60

    move-object/from16 v1, p2

    move-object/from16 v2, v67

    move/from16 v3, p3

    move/from16 v4, v68

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v40

    const/16 v34, 0x0

    :goto_4
    move/from16 v0, v34

    move/from16 v1, v40

    if-ge v0, v1, :cond_d

    move/from16 v0, v34

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v9

    packed-switch v9, :pswitch_data_1

    :cond_8
    :goto_5
    :pswitch_8
    add-int/lit8 v34, v34, 0x1

    goto :goto_4

    :pswitch_9
    move/from16 v0, v29

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v29

    goto :goto_5

    :pswitch_a
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v36

    goto :goto_5

    :pswitch_b
    move/from16 v0, v42

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v42

    goto :goto_5

    :pswitch_c
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    goto :goto_5

    :pswitch_d
    move/from16 v0, v45

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v45

    goto :goto_5

    :pswitch_e
    invoke-virtual {v5, v9, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    goto :goto_5

    :pswitch_f
    invoke-virtual {v5, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    goto :goto_5

    :pswitch_10
    invoke-virtual {v5, v9, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    goto :goto_5

    :pswitch_11
    move/from16 v0, v48

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v48

    goto :goto_5

    :pswitch_12
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v67

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mAutoLinkMask:I

    goto :goto_5

    :pswitch_13
    const/16 v67, 0x1

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v67

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mLinksClickable:Z

    goto :goto_5

    :pswitch_14
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    goto :goto_5

    :pswitch_15
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v25

    goto :goto_5

    :pswitch_16
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    goto :goto_5

    :pswitch_17
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    goto :goto_5

    :pswitch_18
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v24

    goto :goto_5

    :pswitch_19
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    goto :goto_5

    :pswitch_1a
    move/from16 v0, v22

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v22

    goto :goto_5

    :pswitch_1b
    const/16 v67, -0x1

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v67

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    goto/16 :goto_5

    :pswitch_1c
    const/16 v67, -0x1

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v67

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxHeight(I)V

    goto/16 :goto_5

    :pswitch_1d
    const/16 v67, -0x1

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v67

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    goto/16 :goto_5

    :pswitch_1e
    const/16 v67, -0x1

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v67

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    goto/16 :goto_5

    :pswitch_1f
    const/16 v67, -0x1

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v67

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinLines(I)V

    goto/16 :goto_5

    :pswitch_20
    const/16 v67, -0x1

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v67

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinHeight(I)V

    goto/16 :goto_5

    :pswitch_21
    const/16 v67, -0x1

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v67

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxEms(I)V

    goto/16 :goto_5

    :pswitch_22
    const/16 v67, -0x1

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v67

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto/16 :goto_5

    :pswitch_23
    const/16 v67, -0x1

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v67

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEms(I)V

    goto/16 :goto_5

    :pswitch_24
    const/16 v67, -0x1

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v67

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    goto/16 :goto_5

    :pswitch_25
    const/16 v67, -0x1

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v67

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinEms(I)V

    goto/16 :goto_5

    :pswitch_26
    const/16 v67, -0x1

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v67

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinWidth(I)V

    goto/16 :goto_5

    :pswitch_27
    const/16 v67, -0x1

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v67

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_5

    :pswitch_28
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v33

    goto/16 :goto_5

    :pswitch_29
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v54

    goto/16 :goto_5

    :pswitch_2a
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v67

    if-eqz v67, :cond_8

    const/16 v67, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    goto/16 :goto_5

    :pswitch_2b
    move/from16 v0, v50

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v50

    goto/16 :goto_5

    :pswitch_2c
    move/from16 v0, v30

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v30

    goto/16 :goto_5

    :pswitch_2d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    move/from16 v67, v0

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v67

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    goto/16 :goto_5

    :pswitch_2e
    const/16 v67, 0x1

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v67

    if-nez v67, :cond_8

    const/16 v67, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    goto/16 :goto_5

    :pswitch_2f
    const/16 v67, 0x1

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v67

    if-nez v67, :cond_8

    const/16 v67, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCursorVisible(Z)V

    goto/16 :goto_5

    :pswitch_30
    const/16 v67, -0x1

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v39

    goto/16 :goto_5

    :pswitch_31
    const/high16 v67, 0x3f80

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v67

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextScaleX(F)V

    goto/16 :goto_5

    :pswitch_32
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v67

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mFreezesText:Z

    goto/16 :goto_5

    :pswitch_33
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v49

    goto/16 :goto_5

    :pswitch_34
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v26

    goto/16 :goto_5

    :pswitch_35
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v27

    goto/16 :goto_5

    :pswitch_36
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v46

    goto/16 :goto_5

    :pswitch_37
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v67

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v67

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_5

    :pswitch_38
    sget-boolean v67, Landroid/widget/TextView;->THEMEABLE:Z

    if-eqz v67, :cond_9

    sget-object v67, Landroid/widget/TextView;->mPreviousSkinPackage:Ljava/lang/String;

    const-string v68, ""

    invoke-virtual/range {v67 .. v68}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v67

    if-nez v67, :cond_9

    sget-object v67, Landroid/widget/TextView;->mPreviousSkinPackage:Ljava/lang/String;

    if-eqz v67, :cond_9

    sget-object v67, Landroid/widget/TextView;->mPreviousSkinPackage:Ljava/lang/String;

    const-string v68, "default"

    invoke-virtual/range {v67 .. v68}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v67

    if-eqz v67, :cond_8

    :cond_9
    move/from16 v0, v56

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v56

    goto/16 :goto_5

    :pswitch_39
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v55

    goto/16 :goto_5

    :pswitch_3a
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v57

    goto/16 :goto_5

    :pswitch_3b
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v58

    goto/16 :goto_5

    :pswitch_3c
    move/from16 v0, v59

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v59

    goto/16 :goto_5

    :pswitch_3d
    move/from16 v0, v63

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v63

    goto/16 :goto_5

    :pswitch_3e
    move/from16 v0, v53

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v53

    goto/16 :goto_5

    :pswitch_3f
    move/from16 v0, v43

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v43

    goto/16 :goto_5

    :pswitch_40
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v67, v0

    move/from16 v0, v67

    float-to-int v0, v0

    move/from16 v67, v0

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v67

    move/from16 v0, v67

    int-to-float v0, v0

    move/from16 v67, v0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mSpacingAdd:F

    goto/16 :goto_5

    :pswitch_41
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v67, v0

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v67

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mSpacingMult:F

    goto/16 :goto_5

    :pswitch_42
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mInputType:I

    move/from16 v67, v0

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v37

    goto/16 :goto_5

    :pswitch_43
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v67, v0

    if-nez v67, :cond_a

    new-instance v67, Landroid/widget/TextView$InputContentType;

    invoke-direct/range {v67 .. v67}, Landroid/widget/TextView$InputContentType;-><init>()V

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v67, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v68, v0

    move-object/from16 v0, v68

    iget v0, v0, Landroid/widget/TextView$InputContentType;->imeOptions:I

    move/from16 v68, v0

    move/from16 v0, v68

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v68

    move/from16 v0, v68

    move-object/from16 v1, v67

    iput v0, v1, Landroid/widget/TextView$InputContentType;->imeOptions:I

    goto/16 :goto_5

    :pswitch_44
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v67, v0

    if-nez v67, :cond_b

    new-instance v67, Landroid/widget/TextView$InputContentType;

    invoke-direct/range {v67 .. v67}, Landroid/widget/TextView$InputContentType;-><init>()V

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v67, v0

    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v68

    move-object/from16 v0, v68

    move-object/from16 v1, v67

    iput-object v0, v1, Landroid/widget/TextView$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    goto/16 :goto_5

    :pswitch_45
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v67, v0

    if-nez v67, :cond_c

    new-instance v67, Landroid/widget/TextView$InputContentType;

    invoke-direct/range {v67 .. v67}, Landroid/widget/TextView$InputContentType;-><init>()V

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v67, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v68, v0

    move-object/from16 v0, v68

    iget v0, v0, Landroid/widget/TextView$InputContentType;->imeActionId:I

    move/from16 v68, v0

    move/from16 v0, v68

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v68

    move/from16 v0, v68

    move-object/from16 v1, v67

    iput v0, v1, Landroid/widget/TextView$InputContentType;->imeActionId:I

    goto/16 :goto_5

    :pswitch_46
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v67

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPrivateImeOptions(Ljava/lang/String;)V

    goto/16 :goto_5

    :pswitch_47
    const/16 v67, 0x0

    :try_start_1
    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v67

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputExtras(I)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_5

    :catch_2
    move-exception v28

    const-string v67, "TextView"

    const-string v68, "Failure reading input extras"

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    :catch_3
    move-exception v28

    const-string v67, "TextView"

    const-string v68, "Failure reading input extras"

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    :pswitch_48
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v67

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mCursorDrawableRes:I

    goto/16 :goto_5

    :pswitch_49
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v67

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mTextSelectHandleLeftRes:I

    goto/16 :goto_5

    :pswitch_4a
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v67

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mTextSelectHandleRightRes:I

    goto/16 :goto_5

    :pswitch_4b
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v67

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mTextSelectHandleRes:I

    goto/16 :goto_5

    :pswitch_4c
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v67

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mTextEditSuggestionItemLayout:I

    goto/16 :goto_5

    :pswitch_4d
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v67

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mTextIsSelectable:Z

    goto/16 :goto_5

    :pswitch_4e
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    goto/16 :goto_5

    :cond_d
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v12, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    move/from16 v0, v37

    and-int/lit16 v0, v0, 0xfff

    move/from16 v64, v0

    const/16 v67, 0x81

    move/from16 v0, v64

    move/from16 v1, v67

    if-ne v0, v1, :cond_1a

    const/16 v44, 0x1

    :goto_6
    const/16 v67, 0xe1

    move/from16 v0, v64

    move/from16 v1, v67

    if-ne v0, v1, :cond_1b

    const/16 v66, 0x1

    :goto_7
    const/16 v67, 0x12

    move/from16 v0, v64

    move/from16 v1, v67

    if-ne v0, v1, :cond_1c

    const/16 v41, 0x1

    :goto_8
    if-eqz v36, :cond_1e

    :try_start_2
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v67 .. v67}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v14

    :try_start_3
    invoke-virtual {v14}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v67

    check-cast v67, Landroid/text/method/KeyListener;

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;
    :try_end_3
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_6

    if-eqz v37, :cond_1d

    move/from16 v67, v37

    :goto_9
    :try_start_4
    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I
    :try_end_4
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_4 .. :try_end_4} :catch_7

    :goto_a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mInputType:I

    move/from16 v67, v0

    and-int/lit8 v67, v67, 0xf

    const/16 v68, 0x1

    move/from16 v0, v67

    move/from16 v1, v68

    if-ne v0, v1, :cond_2d

    if-nez v43, :cond_e

    if-eqz v44, :cond_f

    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mInputType:I

    move/from16 v67, v0

    move/from16 v0, v67

    and-int/lit16 v0, v0, -0xff1

    move/from16 v67, v0

    move/from16 v0, v67

    or-int/lit16 v0, v0, 0x80

    move/from16 v67, v0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    :cond_f
    if-eqz v66, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mInputType:I

    move/from16 v67, v0

    move/from16 v0, v67

    and-int/lit16 v0, v0, -0xff1

    move/from16 v67, v0

    move/from16 v0, v67

    or-int/lit16 v0, v0, 0xe0

    move/from16 v67, v0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    :cond_10
    :goto_b
    if-eqz v48, :cond_11

    const/16 v67, 0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mSelectAllOnFocus:Z

    sget-object v67, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, v67

    if-ne v12, v0, :cond_11

    sget-object v12, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v25

    move-object/from16 v3, v23

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView;->setRelativeDrawablesIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    move-object/from16 v0, p0

    move/from16 v1, v50

    invoke-direct {v0, v1}, Landroid/widget/TextView;->setInputTypeSingleLine(Z)V

    move-object/from16 v0, p0

    move/from16 v1, v50

    move/from16 v2, v50

    move/from16 v3, v50

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/TextView;->applySingleLine(ZZZ)V

    if-eqz v50, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    move-object/from16 v67, v0

    if-nez v67, :cond_12

    if-gez v30, :cond_12

    const/16 v30, 0x3

    :cond_12
    packed-switch v30, :pswitch_data_2

    :goto_c
    if-eqz v55, :cond_2f

    :goto_d
    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    if-eqz v56, :cond_13

    move-object/from16 v0, p0

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    :cond_13
    move/from16 v0, v59

    int-to-float v0, v0

    move/from16 v67, v0

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-direct {v0, v1}, Landroid/widget/TextView;->setRawTextSize(F)V

    if-eqz v6, :cond_14

    new-instance v67, Landroid/text/method/AllCapsTransformationMethod;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v68

    invoke-direct/range {v67 .. v68}, Landroid/text/method/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :cond_14
    if-nez v43, :cond_15

    if-nez v44, :cond_15

    if-nez v66, :cond_15

    if-eqz v41, :cond_30

    :cond_15
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v67

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    const/16 v63, 0x3

    :cond_16
    :goto_e
    move-object/from16 v0, p0

    move/from16 v1, v63

    move/from16 v2, v53

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView;->setTypefaceByIndex(II)V

    if-eqz v49, :cond_17

    move-object/from16 v0, p0

    move/from16 v1, v46

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v49

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_17
    if-ltz v39, :cond_31

    const/16 v67, 0x1

    move/from16 v0, v67

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v67, v0

    const/16 v68, 0x0

    new-instance v69, Landroid/text/InputFilter$LengthFilter;

    move-object/from16 v0, v69

    move/from16 v1, v39

    invoke-direct {v0, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v69, v67, v68

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    :goto_f
    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-virtual {v0, v1, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    if-eqz v33, :cond_18

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    :cond_18
    sget-object v67, Lcom/android/internal/R$styleable;->View:[I

    const/16 v68, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v67

    move/from16 v3, p3

    move/from16 v4, v68

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    move-object/from16 v67, v0

    if-nez v67, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    move-object/from16 v67, v0

    if-eqz v67, :cond_32

    :cond_19
    const/16 v32, 0x1

    :goto_10
    move/from16 v16, v32

    move/from16 v38, v32

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v40

    const/16 v34, 0x0

    :goto_11
    move/from16 v0, v34

    move/from16 v1, v40

    if-ge v0, v1, :cond_33

    move/from16 v0, v34

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :goto_12
    add-int/lit8 v34, v34, 0x1

    goto :goto_11

    :cond_1a
    const/16 v44, 0x0

    goto/16 :goto_6

    :cond_1b
    const/16 v66, 0x0

    goto/16 :goto_7

    :cond_1c
    const/16 v41, 0x0

    goto/16 :goto_8

    :catch_4
    move-exception v31

    new-instance v67, Ljava/lang/RuntimeException;

    move-object/from16 v0, v67

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v67

    :catch_5
    move-exception v31

    new-instance v67, Ljava/lang/RuntimeException;

    move-object/from16 v0, v67

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v67

    :catch_6
    move-exception v31

    new-instance v67, Ljava/lang/RuntimeException;

    move-object/from16 v0, v67

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v67

    :cond_1d
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    move-object/from16 v67, v0

    invoke-interface/range {v67 .. v67}, Landroid/text/method/KeyListener;->getInputType()I
    :try_end_5
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_5 .. :try_end_5} :catch_7

    move-result v67

    goto/16 :goto_9

    :catch_7
    move-exception v28

    const/16 v67, 0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    goto/16 :goto_a

    :cond_1e
    if-eqz v18, :cond_20

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v67 .. v67}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-eqz v37, :cond_1f

    move/from16 v67, v37

    :goto_13
    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    goto/16 :goto_a

    :cond_1f
    const/16 v67, 0x1

    goto :goto_13

    :cond_20
    if-eqz v37, :cond_22

    const/16 v67, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v67

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView;->setInputType(IZ)V

    invoke-static/range {v37 .. v37}, Landroid/widget/TextView;->isMultilineInputType(I)Z

    move-result v67

    if-nez v67, :cond_21

    const/16 v50, 0x1

    :goto_14
    goto/16 :goto_a

    :cond_21
    const/16 v50, 0x0

    goto :goto_14

    :cond_22
    if-eqz v45, :cond_23

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    const/16 v37, 0x3

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    goto/16 :goto_a

    :cond_23
    if-eqz v42, :cond_28

    and-int/lit8 v67, v42, 0x2

    if-eqz v67, :cond_26

    const/16 v67, 0x1

    move/from16 v68, v67

    :goto_15
    and-int/lit8 v67, v42, 0x4

    if-eqz v67, :cond_27

    const/16 v67, 0x1

    :goto_16
    move/from16 v0, v68

    move/from16 v1, v67

    invoke-static {v0, v1}, Landroid/text/method/DigitsKeyListener;->getInstance(ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    const/16 v37, 0x2

    and-int/lit8 v67, v42, 0x2

    if-eqz v67, :cond_24

    move/from16 v0, v37

    or-int/lit16 v0, v0, 0x1000

    move/from16 v37, v0

    :cond_24
    and-int/lit8 v67, v42, 0x4

    if-eqz v67, :cond_25

    move/from16 v0, v37

    or-int/lit16 v0, v0, 0x2000

    move/from16 v37, v0

    :cond_25
    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    goto/16 :goto_a

    :cond_26
    const/16 v67, 0x0

    move/from16 v68, v67

    goto :goto_15

    :cond_27
    const/16 v67, 0x0

    goto :goto_16

    :cond_28
    if-nez v11, :cond_29

    const/16 v67, -0x1

    move/from16 v0, v67

    if-eq v10, v0, :cond_2a

    :cond_29
    const/16 v37, 0x1

    packed-switch v10, :pswitch_data_3

    sget-object v15, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    :goto_17
    invoke-static {v11, v15}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    goto/16 :goto_a

    :pswitch_4f
    sget-object v15, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    move/from16 v0, v37

    or-int/lit16 v0, v0, 0x4000

    move/from16 v37, v0

    goto :goto_17

    :pswitch_50
    sget-object v15, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    move/from16 v0, v37

    or-int/lit16 v0, v0, 0x2000

    move/from16 v37, v0

    goto :goto_17

    :pswitch_51
    sget-object v15, Landroid/text/method/TextKeyListener$Capitalize;->CHARACTERS:Landroid/text/method/TextKeyListener$Capitalize;

    move/from16 v0, v37

    or-int/lit16 v0, v0, 0x1000

    move/from16 v37, v0

    goto :goto_17

    :cond_2a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mTextIsSelectable:Z

    move/from16 v67, v0

    if-eqz v67, :cond_2b

    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    const/16 v67, 0x0

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    sget-object v12, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    const/16 v67, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v67

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto/16 :goto_a

    :cond_2b
    if-eqz v29, :cond_2c

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    const/16 v67, 0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    goto/16 :goto_a

    :cond_2c
    const/16 v67, 0x0

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    packed-switch v13, :pswitch_data_4

    goto/16 :goto_a

    :pswitch_52
    sget-object v12, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    goto/16 :goto_a

    :pswitch_53
    sget-object v12, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    goto/16 :goto_a

    :pswitch_54
    sget-object v12, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    goto/16 :goto_a

    :cond_2d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mInputType:I

    move/from16 v67, v0

    and-int/lit8 v67, v67, 0xf

    const/16 v68, 0x2

    move/from16 v0, v67

    move/from16 v1, v68

    if-ne v0, v1, :cond_10

    if-eqz v41, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mInputType:I

    move/from16 v67, v0

    move/from16 v0, v67

    and-int/lit16 v0, v0, -0xff1

    move/from16 v67, v0

    or-int/lit8 v67, v67, 0x10

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    goto/16 :goto_b

    :pswitch_55
    sget-object v67, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_c

    :pswitch_56
    sget-object v67, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_c

    :pswitch_57
    sget-object v67, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_c

    :pswitch_58
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Landroid/view/ViewConfiguration;->isFadingMarqueeEnabled()Z

    move-result v67

    if-eqz v67, :cond_2e

    const/16 v67, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMarqueeFadeMode:I

    :goto_18
    sget-object v67, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_c

    :cond_2e
    const/16 v67, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    const/16 v67, 0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMarqueeFadeMode:I

    goto :goto_18

    :cond_2f
    const/high16 v67, -0x100

    invoke-static/range {v67 .. v67}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v55

    goto/16 :goto_d

    :cond_30
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mInputType:I

    move/from16 v67, v0

    move/from16 v0, v67

    and-int/lit16 v0, v0, 0xfff

    move/from16 v67, v0

    const/16 v68, 0x81

    move/from16 v0, v67

    move/from16 v1, v68

    if-ne v0, v1, :cond_16

    const/16 v63, 0x3

    goto/16 :goto_e

    :cond_31
    sget-object v67, Landroid/widget/TextView;->NO_FILTERS:[Landroid/text/InputFilter;

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    goto/16 :goto_f

    :cond_32
    const/16 v32, 0x0

    goto/16 :goto_10

    :sswitch_0
    move/from16 v0, v32

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v32

    goto/16 :goto_12

    :sswitch_1
    move/from16 v0, v16

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v16

    goto/16 :goto_12

    :sswitch_2
    move/from16 v0, v38

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v38

    goto/16 :goto_12

    :cond_33
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLongClickable(Z)V

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->prepareCursorControllers()V

    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v62

    mul-int v67, v62, v62

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mSquaredTouchSlopDistance:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v67, v0

    move-object/from16 v0, v67

    instance-of v0, v0, Landroid/text/Editable;

    move/from16 v67, v0

    if-eqz v67, :cond_34

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v67

    if-eqz v67, :cond_34

    const/16 v67, 0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->checkMetaStatus:Z

    const-string v67, "com.android.mms"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    move-object/from16 v68, v0

    invoke-virtual/range {v68 .. v68}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v67

    if-eqz v67, :cond_34

    const/16 v67, 0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mIsMessage:Z

    :cond_34
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_37
        :pswitch_8
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_39
        :pswitch_38
        :pswitch_3a
        :pswitch_3b
        :pswitch_2c
        :pswitch_27
        :pswitch_12
        :pswitch_13
        :pswitch_22
        :pswitch_1c
        :pswitch_26
        :pswitch_20
        :pswitch_10
        :pswitch_29
        :pswitch_28
        :pswitch_31
        :pswitch_2f
        :pswitch_1b
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_21
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_2a
        :pswitch_3f
        :pswitch_2b
        :pswitch_11
        :pswitch_2e
        :pswitch_30
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_a
        :pswitch_f
        :pswitch_e
        :pswitch_9
        :pswitch_32
        :pswitch_15
        :pswitch_17
        :pswitch_14
        :pswitch_16
        :pswitch_1a
        :pswitch_40
        :pswitch_41
        :pswitch_2d
        :pswitch_42
        :pswitch_46
        :pswitch_47
        :pswitch_43
        :pswitch_44
        :pswitch_45
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
        :pswitch_8
        :pswitch_8
        :pswitch_4d
        :pswitch_8
        :pswitch_8
        :pswitch_48
        :pswitch_4c
        :pswitch_4e
        :pswitch_18
        :pswitch_19
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_55
        :pswitch_56
        :pswitch_57
        :pswitch_58
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x12 -> :sswitch_0
        0x1d -> :sswitch_1
        0x1e -> :sswitch_2
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_4f
        :pswitch_50
        :pswitch_51
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_52
        :pswitch_53
        :pswitch_54
    .end packed-switch
.end method

.method private SCATDRemoveSpan(Ljava/lang/String;)V
    .locals 11

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Editable;

    const/4 v8, 0x0

    iget-object v9, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    const-class v10, Landroid/text/style/SuggestionSpan;

    invoke-interface {v1, v8, v9, v10}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/SuggestionSpan;

    array-length v2, v6

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v2, :cond_2

    :try_start_0
    aget-object v8, v6, v7

    invoke-interface {v1, v8}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    aget-object v8, v6, v7

    invoke-interface {v1, v8}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    if-ltz v4, :cond_0

    if-gez v3, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    iget-object v8, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    aget-object v8, v6, v7

    invoke-interface {v1, v8}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->SCATDProcessQueue()V

    return-void
.end method

.method private SCATDRescanWord(Ljava/lang/String;)V
    .locals 11

    const/4 v10, 0x0

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Editable;

    iget-object v8, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    const-class v9, Landroid/text/style/SuggestionSpan;

    invoke-interface {v1, v10, v8, v9}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/style/SuggestionSpan;

    array-length v3, v7

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    :try_start_0
    aget-object v8, v7, v2

    invoke-interface {v1, v8}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    aget-object v8, v7, v2

    invoke-interface {v1, v8}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    if-ltz v5, :cond_0

    if-gez v4, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v8, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x0

    invoke-direct {p0, v5, v4, v8}, Landroid/widget/TextView;->updateSpellCheckSpans(IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    sput-boolean v10, Landroid/widget/TextView;->mSCATDPROCESSING:Z

    iget-object v8, p0, Landroid/widget/TextView;->mSCATDQueue:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/widget/TextView;->SCATDProcessQueue()V

    return-void

    :catchall_0
    move-exception v8

    sput-boolean v10, Landroid/widget/TextView;->mSCATDPROCESSING:Z

    throw v8
.end method

.method static synthetic access$10000(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$10100(Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/TextView;->hideInsertionPointCursorController()V

    return-void
.end method

.method static synthetic access$10200(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$10202(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iput-object p1, p0, Landroid/widget/TextView;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$10300(Landroid/widget/TextView;)I
    .locals 1

    iget v0, p0, Landroid/widget/TextView;->mTextSelectHandleLeftRes:I

    return v0
.end method

.method static synthetic access$10400(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$10500(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$10600(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$10602(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iput-object p1, p0, Landroid/widget/TextView;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$10700(Landroid/widget/TextView;)I
    .locals 1

    iget v0, p0, Landroid/widget/TextView;->mTextSelectHandleRightRes:I

    return v0
.end method

.method static synthetic access$10800(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$10900(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$11200(Landroid/widget/TextView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TextView;->mIsLongPressed:Z

    return v0
.end method

.method static synthetic access$11202(Landroid/widget/TextView;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/TextView;->mIsLongPressed:Z

    return p1
.end method

.method static synthetic access$11300(Landroid/widget/TextView;)Z
    .locals 1

    invoke-direct {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$11400(Landroid/widget/TextView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TextView;->mTextIsSelectable:Z

    return v0
.end method

.method static synthetic access$11500(Landroid/widget/TextView;)Z
    .locals 1

    invoke-direct {p0}, Landroid/widget/TextView;->selectCurrentWord()Z

    move-result v0

    return v0
.end method

.method static synthetic access$11600(Landroid/widget/TextView;)Landroid/widget/TextView$SuggestionsPopupWindow;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mSuggestionsPopupWindow:Landroid/widget/TextView$SuggestionsPopupWindow;

    return-object v0
.end method

.method static synthetic access$11700(Landroid/widget/TextView;)Z
    .locals 1

    invoke-direct {p0}, Landroid/widget/TextView;->startSelectionActionMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$11802(Landroid/widget/TextView;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/TextView;->mDiscardNextActionUp:Z

    return p1
.end method

.method static synthetic access$11900(Landroid/widget/TextView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/TextView;->disallowInterceptTouchEvent(Z)V

    return-void
.end method

.method static synthetic access$1200(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$12000(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$12502(Z)Z
    .locals 0

    sput-boolean p0, Landroid/widget/TextView;->mSCATDPROCESSING:Z

    return p0
.end method

.method static synthetic access$12600(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/TextView;->SCATDRescanWord(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$12700(Landroid/widget/TextView;)Landroid/widget/SpellChecker;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mSpellChecker:Landroid/widget/SpellChecker;

    return-object v0
.end method

.method static synthetic access$12702(Landroid/widget/TextView;Landroid/widget/SpellChecker;)Landroid/widget/SpellChecker;
    .locals 0

    iput-object p1, p0, Landroid/widget/TextView;->mSpellChecker:Landroid/widget/SpellChecker;

    return-object p1
.end method

.method static synthetic access$12802(Landroid/widget/TextView;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/TextView;->mIsSCTimeoutclosed:Z

    return p1
.end method

.method static synthetic access$1400(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/widget/TextView;)I
    .locals 1

    iget v0, p0, Landroid/widget/TextView;->mInputType:I

    return v0
.end method

.method static synthetic access$1600(I)Z
    .locals 1

    invoke-static {p0}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Landroid/widget/TextView;)Z
    .locals 1

    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Landroid/widget/TextView;Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method static synthetic access$1900(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/TextView;->checkMetaStatus(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$2200(Landroid/widget/TextView;)Z
    .locals 1

    invoke-direct {p0}, Landroid/widget/TextView;->shouldBlink()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/TextView;->invalidateCursorPath()V

    return-void
.end method

.method static synthetic access$2400()Z
    .locals 1

    sget-boolean v0, Landroid/widget/TextView;->mCurBlinkBlack:Z

    return v0
.end method

.method static synthetic access$2500()I
    .locals 1

    sget v0, Landroid/widget/TextView;->BLINK_WHITE:I

    return v0
.end method

.method static synthetic access$2600()I
    .locals 1

    sget v0, Landroid/widget/TextView;->BLINK_BLACK:I

    return v0
.end method

.method static synthetic access$2700(Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/TextView;->hookIME()V

    return-void
.end method

.method static synthetic access$2900(Landroid/widget/TextView;)Z
    .locals 1

    invoke-direct {p0}, Landroid/widget/TextView;->useHtcTextSelection()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Landroid/widget/TextView;)Z
    .locals 1

    invoke-direct {p0}, Landroid/widget/TextView;->canReplaceActionMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/TextView;->showQuickAction()V

    return-void
.end method

.method static synthetic access$3200(Landroid/widget/TextView;)Landroid/widget/TextView$PositionListener;
    .locals 1

    invoke-direct {p0}, Landroid/widget/TextView;->getPositionListener()Landroid/widget/TextView$PositionListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3300(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3400(Landroid/widget/TextView;)I
    .locals 1

    invoke-direct {p0}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Landroid/widget/TextView;)I
    .locals 1

    invoke-direct {p0}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3700(Landroid/widget/TextView;I)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/TextView;->isOffsetVisible(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Landroid/widget/TextView;)Landroid/text/style/SuggestionRangeSpan;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    return-object v0
.end method

.method static synthetic access$3802(Landroid/widget/TextView;Landroid/text/style/SuggestionRangeSpan;)Landroid/text/style/SuggestionRangeSpan;
    .locals 0

    iput-object p1, p0, Landroid/widget/TextView;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    return-object p1
.end method

.method static synthetic access$400(Landroid/widget/TextView;)I
    .locals 1

    iget v0, p0, Landroid/widget/TextView;->mHighlightColor:I

    return v0
.end method

.method static synthetic access$4000(Landroid/widget/TextView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TextView;->mCursorVisible:Z

    return v0
.end method

.method static synthetic access$4200(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4500(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4600(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4900(Landroid/widget/TextView;)I
    .locals 1

    iget v0, p0, Landroid/widget/TextView;->mTextEditSuggestionItemLayout:I

    return v0
.end method

.method static synthetic access$500(Landroid/widget/TextView;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$5100(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5200(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5400(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5500(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5600(Landroid/widget/TextView;)Z
    .locals 1

    invoke-direct {p0}, Landroid/widget/TextView;->canCut()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5700(Landroid/widget/TextView;)Z
    .locals 1

    invoke-direct {p0}, Landroid/widget/TextView;->canCopy()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5800(Landroid/widget/TextView;)Z
    .locals 1

    invoke-direct {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5900(Landroid/widget/TextView;)Landroid/view/ActionMode$Callback;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    return-object v0
.end method

.method static synthetic access$600()Landroid/graphics/RectF;
    .locals 1

    sget-object v0, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$6000(Landroid/widget/TextView;)Landroid/widget/TextView$SelectionModifierCursorController;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    return-object v0
.end method

.method static synthetic access$6102(Landroid/widget/TextView;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0

    iput-object p1, p0, Landroid/widget/TextView;->mSelectionActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$6200(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6300(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6400(Landroid/widget/TextView;)Z
    .locals 1

    invoke-direct {p0}, Landroid/widget/TextView;->isCursorInsideSuggestionSpan()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6500(Landroid/widget/TextView;)I
    .locals 1

    iget v0, p0, Landroid/widget/TextView;->mTextSelectHandleRes:I

    return v0
.end method

.method static synthetic access$6600(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6700(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6800(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6902(Landroid/widget/TextView;I)I
    .locals 0

    iput p1, p0, Landroid/widget/TextView;->mAnchorHeight:I

    return p1
.end method

.method static synthetic access$700(Landroid/widget/TextView;Z)I
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$7000(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$7002(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iput-object p1, p0, Landroid/widget/TextView;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$7200(Landroid/widget/TextView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TextView;->mLongpressWhiteSpace:Z

    return v0
.end method

.method static synthetic access$7300(Landroid/widget/TextView;)Landroid/widget/TextView$MenuWrapper;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mMenuWrapper:Landroid/widget/TextView$MenuWrapper;

    return-object v0
.end method

.method static synthetic access$7600(Landroid/widget/TextView;)I
    .locals 1

    iget v0, p0, Landroid/widget/TextView;->mStatusBarWindowOffset:I

    return v0
.end method

.method static synthetic access$7700(Landroid/widget/TextView;II)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;->isPositionVisible(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7800(Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/TextView;->prepareCursorControllers()V

    return-void
.end method

.method static synthetic access$7900()Landroid/graphics/Rect;
    .locals 1

    sget-object v0, Landroid/widget/TextView;->sCursorControllerTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$8000(Landroid/widget/TextView;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mVisibleRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$802(Landroid/widget/TextView;Landroid/widget/TextView$CorrectionHighlighter;)Landroid/widget/TextView$CorrectionHighlighter;
    .locals 0

    iput-object p1, p0, Landroid/widget/TextView;->mCorrectionHighlighter:Landroid/widget/TextView$CorrectionHighlighter;

    return-object p1
.end method

.method static synthetic access$8100(Landroid/widget/TextView;)F
    .locals 1

    iget v0, p0, Landroid/widget/TextView;->mPreviousX:F

    return v0
.end method

.method static synthetic access$8102(Landroid/widget/TextView;F)F
    .locals 0

    iput p1, p0, Landroid/widget/TextView;->mPreviousX:F

    return p1
.end method

.method static synthetic access$8200(Landroid/widget/TextView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TextView;->mDispatchToTheOtherAnchor:Z

    return v0
.end method

.method static synthetic access$8202(Landroid/widget/TextView;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/TextView;->mDispatchToTheOtherAnchor:Z

    return p1
.end method

.method static synthetic access$8300(Landroid/widget/TextView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TextView;->mDonotPassToLeft:Z

    return v0
.end method

.method static synthetic access$8302(Landroid/widget/TextView;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/TextView;->mDonotPassToLeft:Z

    return p1
.end method

.method static synthetic access$8400(Landroid/widget/TextView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TextView;->mEasyUpHardDownTriggered:Z

    return v0
.end method

.method static synthetic access$8402(Landroid/widget/TextView;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/TextView;->mEasyUpHardDownTriggered:Z

    return p1
.end method

.method static synthetic access$8500(Landroid/widget/TextView;F)I
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/TextView;->getDirection(F)I

    move-result v0

    return v0
.end method

.method static synthetic access$8600(Landroid/widget/TextView;)I
    .locals 1

    iget v0, p0, Landroid/widget/TextView;->mFirstDirection:I

    return v0
.end method

.method static synthetic access$8602(Landroid/widget/TextView;I)I
    .locals 0

    iput p1, p0, Landroid/widget/TextView;->mFirstDirection:I

    return p1
.end method

.method static synthetic access$8700(Landroid/widget/TextView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TextView;->mPassToLeftAnchor:Z

    return v0
.end method

.method static synthetic access$8702(Landroid/widget/TextView;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/TextView;->mPassToLeftAnchor:Z

    return p1
.end method

.method static synthetic access$8800(Landroid/widget/TextView;)Z
    .locals 1

    invoke-direct {p0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v0

    return v0
.end method

.method static synthetic access$8900(Landroid/widget/TextView;)I
    .locals 1

    iget v0, p0, Landroid/widget/TextView;->mLastLine:I

    return v0
.end method

.method static synthetic access$8902(Landroid/widget/TextView;I)I
    .locals 0

    iput p1, p0, Landroid/widget/TextView;->mLastLine:I

    return p1
.end method

.method static synthetic access$9000(Landroid/widget/TextView;)J
    .locals 2

    iget-wide v0, p0, Landroid/widget/TextView;->mAnchorLastMovedMilli:J

    return-wide v0
.end method

.method static synthetic access$9002(Landroid/widget/TextView;J)J
    .locals 0

    iput-wide p1, p0, Landroid/widget/TextView;->mAnchorLastMovedMilli:J

    return-wide p1
.end method

.method static synthetic access$9100(Landroid/widget/TextView;)I
    .locals 1

    iget v0, p0, Landroid/widget/TextView;->mAnchorLastMovedIndex:I

    return v0
.end method

.method static synthetic access$9102(Landroid/widget/TextView;I)I
    .locals 0

    iput p1, p0, Landroid/widget/TextView;->mAnchorLastMovedIndex:I

    return p1
.end method

.method static synthetic access$9200(Landroid/widget/TextView;)I
    .locals 1

    iget v0, p0, Landroid/widget/TextView;->mFlags:I

    return v0
.end method

.method static synthetic access$9302(Landroid/widget/TextView;I)I
    .locals 0

    iput p1, p0, Landroid/widget/TextView;->mChangeTimes:I

    return p1
.end method

.method static synthetic access$9402(Landroid/widget/TextView;I)I
    .locals 0

    iput p1, p0, Landroid/widget/TextView;->mCurrentDirection:I

    return p1
.end method

.method static synthetic access$9502(Landroid/widget/TextView;I)I
    .locals 0

    iput p1, p0, Landroid/widget/TextView;->mPreDirection:I

    return p1
.end method

.method static synthetic access$9600(Landroid/widget/TextView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    return v0
.end method

.method static synthetic access$9602(Landroid/widget/TextView;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    return p1
.end method

.method static synthetic access$9800(Landroid/widget/TextView;)I
    .locals 1

    iget v0, p0, Landroid/widget/TextView;->mSquaredTouchSlopDistance:I

    return v0
.end method

.method static synthetic access$9900(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private applySingleLine(ZZZ)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean p1, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLines(I)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    if-eqz p2, :cond_0

    invoke-static {}, Landroid/text/method/SingleLineTransformationMethod;->getInstance()Landroid/text/method/SingleLineTransformationMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p3, :cond_2

    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0
.end method

.method private assumeLayout()V
    .locals 7

    iget v0, p0, Landroid/widget/TextView;->mRight:I

    iget v3, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    sub-int v1, v0, v3

    const/4 v0, 0x1

    if-ge v1, v0, :cond_0

    const/4 v1, 0x0

    :cond_0
    move v2, v1

    iget-boolean v0, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    if-eqz v0, :cond_1

    const/high16 v1, 0x10

    :cond_1
    sget-object v3, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    sget-object v4, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    const/4 v6, 0x0

    move-object v0, p0

    move v5, v2

    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    return-void
.end method

.method private bringTextIntoView()Z
    .locals 14

    const/16 v13, 0x50

    const/4 v10, 0x1

    const/4 v5, 0x0

    iget v11, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v11, v11, 0x70

    if-ne v11, v13, :cond_0

    iget-object v11, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v11}, Landroid/text/Layout;->getLineCount()I

    move-result v11

    add-int/lit8 v5, v11, -0x1

    :cond_0
    iget-object v11, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v11, v5}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    iget-object v11, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v11, v5}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    iget v11, p0, Landroid/widget/TextView;->mRight:I

    iget v12, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v12

    sub-int v2, v11, v12

    iget v11, p0, Landroid/widget/TextView;->mBottom:I

    iget v12, p0, Landroid/widget/TextView;->mTop:I

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v12

    sub-int v9, v11, v12

    iget-object v11, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v11}, Landroid/text/Layout;->getHeight()I

    move-result v3

    sget-object v11, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v11, :cond_4

    if-ne v1, v10, :cond_3

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    :cond_1
    :goto_0
    sget-object v11, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne v0, v11, :cond_8

    iget-object v11, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v11, v5}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v11

    invoke-static {v11}, Landroid/util/FloatMath;->floor(F)F

    move-result v11

    float-to-int v4, v11

    iget-object v11, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v11, v5}, Landroid/text/Layout;->getLineRight(I)F

    move-result v11

    invoke-static {v11}, Landroid/util/FloatMath;->ceil(F)F

    move-result v11

    float-to-int v6, v11

    sub-int v11, v6, v4

    if-ge v11, v2, :cond_6

    add-int v11, v6, v4

    div-int/lit8 v11, v11, 0x2

    div-int/lit8 v12, v2, 0x2

    sub-int v7, v11, v12

    :goto_1
    if-ge v3, v9, :cond_a

    const/4 v8, 0x0

    :goto_2
    iget v11, p0, Landroid/widget/TextView;->mScrollX:I

    if-ne v7, v11, :cond_2

    iget v11, p0, Landroid/widget/TextView;->mScrollY:I

    if-eq v8, v11, :cond_c

    :cond_2
    invoke-virtual {p0, v7, v8}, Landroid/widget/TextView;->scrollTo(II)V

    :goto_3
    return v10

    :cond_3
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_4
    sget-object v11, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v11, :cond_1

    if-ne v1, v10, :cond_5

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    :goto_4
    goto :goto_0

    :cond_5
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    goto :goto_4

    :cond_6
    if-gez v1, :cond_7

    sub-int v7, v6, v2

    goto :goto_1

    :cond_7
    move v7, v4

    goto :goto_1

    :cond_8
    sget-object v11, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v0, v11, :cond_9

    iget-object v11, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v11, v5}, Landroid/text/Layout;->getLineRight(I)F

    move-result v11

    invoke-static {v11}, Landroid/util/FloatMath;->ceil(F)F

    move-result v11

    float-to-int v6, v11

    sub-int v7, v6, v2

    goto :goto_1

    :cond_9
    iget-object v11, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v11, v5}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v11

    invoke-static {v11}, Landroid/util/FloatMath;->floor(F)F

    move-result v11

    float-to-int v7, v11

    goto :goto_1

    :cond_a
    iget v11, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v11, v11, 0x70

    if-ne v11, v13, :cond_b

    sub-int v8, v3, v9

    goto :goto_2

    :cond_b
    const/4 v8, 0x0

    goto :goto_2

    :cond_c
    const/4 v10, 0x0

    goto :goto_3
.end method

.method private canCopy()Z
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private canCut()Z
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Editable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private canMarquee()Z
    .locals 4

    const/4 v1, 0x0

    iget v2, p0, Landroid/widget/TextView;->mRight:I

    iget v3, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    sub-int v0, v2, v3

    if-lez v0, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v2

    int-to-float v3, v0

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    iget v2, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v2

    int-to-float v3, v0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private canPaste()Z
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v6, v6, Landroid/text/Editable;

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v6

    if-ltz v6, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v6

    if-ltz v6, :cond_2

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "clipboard"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_0

    :cond_2
    :goto_1
    move v4, v5

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v4, "TextView"

    const-string v6, "Security exception"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private canReplaceActionMode()Z
    .locals 2

    const/4 v0, 0x1

    sget-boolean v1, Landroid/widget/TextView;->isTablet:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Landroid/widget/TextView;->mIsChildOfActionBarView:Z

    if-nez v1, :cond_0

    iget v1, p0, Landroid/widget/TextView;->mFlags:I

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_0

    iget v1, p0, Landroid/widget/TextView;->mFlags:I

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private canSelectText()Z
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelectionController()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkForRelayout()V
    .locals 9

    const/4 v6, 0x0

    const/4 v8, -0x2

    iget-object v0, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v0, v8, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    iget v3, p0, Landroid/widget/TextView;->mMinWidthMode:I

    if-ne v0, v3, :cond_6

    iget v0, p0, Landroid/widget/TextView;->mMaxWidth:I

    iget v3, p0, Landroid/widget/TextView;->mMinWidth:I

    if-ne v0, v3, :cond_6

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v0, :cond_6

    :cond_1
    iget v0, p0, Landroid/widget/TextView;->mRight:I

    iget v3, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    if-lez v0, :cond_6

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v7

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v1

    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-nez v0, :cond_2

    move v2, v6

    :goto_0
    sget-object v3, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    sget-object v4, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    iget v0, p0, Landroid/widget/TextView;->mRight:I

    iget v5, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v5

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v5

    sub-int v5, v0, v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq v0, v3, :cond_5

    iget-object v0, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v0, v8, :cond_3

    iget-object v0, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    if-ne v0, v7, :cond_5

    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    if-ne v0, v7, :cond_5

    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_1

    :cond_6
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_1
.end method

.method private checkForResize()V
    .locals 4

    const/4 v3, -0x2

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    iget-object v2, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v2, v3, :cond_3

    invoke-direct {p0}, Landroid/widget/TextView;->getDesiredHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    :cond_2
    return-void

    :cond_3
    iget-object v2, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    if-ltz v2, :cond_1

    invoke-direct {p0}, Landroid/widget/TextView;->getDesiredHeight()I

    move-result v0

    iget v2, p0, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private checkMetaStatus(Ljava/lang/CharSequence;)V
    .locals 4

    iget-boolean v2, p0, Landroid/widget/TextView;->checkMetaStatus:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x1

    invoke-static {p1, v2}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v2

    const/16 v3, 0x800

    invoke-static {p1, v3}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v3

    or-int v0, v2, v3

    const/4 v2, 0x2

    invoke-static {p1, v2}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v1

    iget v2, p0, Landroid/widget/TextView;->mFnOld:I

    if-ne v2, v1, :cond_2

    iget v2, p0, Landroid/widget/TextView;->mCapOld:I

    if-eq v2, v0, :cond_0

    :cond_2
    invoke-direct {p0, v1, v0}, Landroid/widget/TextView;->sendMetaStatusToIME(II)V

    iput v1, p0, Landroid/widget/TextView;->mFnOld:I

    iput v0, p0, Landroid/widget/TextView;->mCapOld:I

    goto :goto_0
.end method

.method private chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V
    .locals 12

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    add-int v11, v1, v2

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    add-int v8, v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050043

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    new-instance v0, Landroid/text/StaticLayout;

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p2

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    const/4 v10, 0x0

    const/4 v9, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    if-ge v9, v1, :cond_0

    invoke-virtual {v0, v9}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v1

    invoke-static {v10, v1}, Ljava/lang/Math;->max(FF)F

    move-result v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    float-to-double v1, v10

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int/2addr v1, v11

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v1

    add-int/2addr v1, v8

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    return-void
.end method

.method private compressText(F)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/high16 v5, 0x3f80

    invoke-virtual {p0}, Landroid/widget/TextView;->isHardwareAccelerated()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    cmpl-float v4, p1, v6

    if-lez v4, :cond_0

    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v4

    if-ne v4, v3, :cond_0

    iget-boolean v4, p0, Landroid/widget/TextView;->mUserSetTextScaleX:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v4

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v4, v2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v1

    add-float v4, v1, v5

    sub-float/2addr v4, p1

    div-float v0, v4, p1

    cmpl-float v4, v0, v6

    if-lez v4, :cond_0

    const v4, 0x3d8f5c29

    cmpg-float v4, v0, v4

    if-gtz v4, :cond_0

    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    sub-float v4, v5, v0

    const v5, 0x3ba3d70a

    sub-float/2addr v4, v5

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setTextScaleX(F)V

    new-instance v2, Landroid/widget/TextView$2;

    invoke-direct {v2, p0}, Landroid/widget/TextView$2;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    move v2, v3

    goto :goto_0
.end method

.method private convertFromViewportToContentCoordinates(Landroid/graphics/Rect;)V
    .locals 3

    invoke-direct {p0}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v0

    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iput v2, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v0

    iput v2, p1, Landroid/graphics/Rect;->right:I

    invoke-direct {p0}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method private convertToLocalHorizontalCoordinate(F)F
    .locals 2

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    return p1
.end method

.method private static desired(Landroid/text/Layout;)I
    .locals 6

    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    invoke-virtual {p0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v4, v2, -0x1

    if-ge v0, v4, :cond_1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_0

    const/4 v4, -0x1

    :goto_1
    return v4

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_2

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    invoke-static {v1}, Landroid/util/FloatMath;->ceil(F)F

    move-result v4

    float-to-int v4, v4

    goto :goto_1
.end method

.method private disallowInterceptTouchEvent(Z)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method private doKeyDown(ILandroid/view/KeyEvent;Landroid/view/KeyEvent;)I
    .locals 7

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    return v2

    :cond_0
    sparse-switch p1, :sswitch_data_0

    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-eqz v2, :cond_9

    invoke-virtual {p0}, Landroid/widget/TextView;->resetErrorChangedFlag()V

    const/4 v0, 0x1

    if-eqz p3, :cond_8

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/TextView;->beginBatchEdit()V

    iget-object v6, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Editable;

    invoke-interface {v6, p0, v2, p3}, Landroid/text/method/KeyListener;->onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->hideErrorIfUnchanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    move v2, v4

    goto :goto_0

    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v2, v2, Landroid/widget/TextView$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v2, v2, Landroid/widget/TextView$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-interface {v2, p0, v3, p2}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iput-boolean v5, v2, Landroid/widget/TextView$InputContentType;->enterDown:Z

    move v2, v4

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_3

    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->hasOnClickListeners()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    goto :goto_0

    :cond_4
    move v2, v4

    goto :goto_0

    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_0

    :sswitch_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p2, v5}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_5
    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnTab()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_0

    :sswitch_3
    iget-object v2, p0, Landroid/widget/TextView;->mSelectionActionMode:Landroid/view/ActionMode;

    if-nez v2, :cond_6

    iget-boolean v2, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    if-eqz v2, :cond_1

    :cond_6
    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    move v2, v4

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    throw v2

    :catch_0
    move-exception v2

    :cond_7
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    :cond_8
    if-eqz v0, :cond_9

    invoke-virtual {p0}, Landroid/widget/TextView;->beginBatchEdit()V

    iget-object v6, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Editable;

    invoke-interface {v6, p0, v2, p1, p2}, Landroid/text/method/KeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    invoke-virtual {p0}, Landroid/widget/TextView;->hideErrorIfUnchanged()V

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-direct {p0, v2}, Landroid/widget/TextView;->checkMetaStatus(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_9

    move v2, v5

    goto/16 :goto_0

    :cond_9
    iget-object v2, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v2, :cond_b

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_b

    const/4 v0, 0x1

    if-eqz p3, :cond_a

    :try_start_1
    iget-object v5, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spannable;

    invoke-interface {v5, p0, v2, p3}, Landroid/text/method/MovementMethod;->onKeyOther(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/KeyEvent;)Z
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    const/4 v0, 0x0

    if-eqz v1, :cond_a

    move v2, v4

    goto/16 :goto_0

    :catch_1
    move-exception v2

    :cond_a
    if-eqz v0, :cond_b

    iget-object v4, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spannable;

    invoke-interface {v4, p0, v2, p1, p2}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v2, 0x2

    goto/16 :goto_0

    :cond_b
    move v2, v3

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_3
        0x17 -> :sswitch_1
        0x3d -> :sswitch_2
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method private downgradeEasyCorrectionSpans()V
    .locals 7

    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v4, v4, Landroid/text/Spannable;

    if-eqz v4, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spannable;

    const/4 v4, 0x0

    invoke-interface {v2}, Landroid/text/Spannable;->length()I

    move-result v5

    const-class v6, Landroid/text/style/SuggestionSpan;

    invoke-interface {v2, v4, v5, v6}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/SuggestionSpan;

    const/4 v1, 0x0

    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_1

    aget-object v4, v3, v1

    invoke-virtual {v4}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v0

    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_0

    and-int/lit8 v4, v0, 0x2

    if-nez v4, :cond_0

    and-int/lit8 v0, v0, -0x2

    aget-object v4, v3, v1

    invoke-virtual {v4, v0}, Landroid/text/style/SuggestionSpan;->setFlags(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private drawCursor(Landroid/graphics/Canvas;I)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_0

    int-to-float v2, p2

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Landroid/widget/TextView;->mCursorCount:I

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Landroid/widget/TextView;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    neg-int v2, p2

    int-to-float v2, v2

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_3
    return-void
.end method

.method private static extractRangeEndFromLong(J)I
    .locals 2

    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method private static extractRangeStartFromLong(J)I
    .locals 2

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method private extractedTextModeWillBeStarted()Z
    .locals 3

    const/4 v1, 0x0

    instance-of v2, p0, Landroid/inputmethodservice/ExtractEditText;

    if-nez v2, :cond_0

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static findNearestNonwhiteOffset(Landroid/text/Spannable;I)I
    .locals 5

    const/4 v3, -0x1

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v4

    if-ge v4, p1, :cond_2

    :cond_0
    move v1, v3

    :cond_1
    :goto_0
    return v1

    :cond_2
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v4

    if-le p1, v4, :cond_3

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result p1

    :cond_3
    const/4 v1, -0x1

    add-int/lit8 v0, p1, -0x1

    :goto_1
    if-le v0, v3, :cond_4

    invoke-interface {p0, v0}, Landroid/text/Spannable;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_6

    move v1, v0

    :cond_4
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v2

    move v0, p1

    :goto_2
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v4

    if-ge v0, v4, :cond_5

    invoke-interface {p0, v0}, Landroid/text/Spannable;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_7

    move v2, v0

    :cond_5
    if-ne v1, v3, :cond_8

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v4

    if-ne v2, v4, :cond_8

    const/4 v1, 0x0

    goto :goto_0

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    if-eq v1, v3, :cond_9

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v4

    if-eq v2, v4, :cond_1

    :cond_9
    if-ne v1, v3, :cond_a

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v3

    if-eq v2, v3, :cond_a

    move v1, v2

    goto :goto_0

    :cond_a
    sub-int v3, p1, v1

    sub-int v4, v2, p1

    if-le v3, v4, :cond_1

    move v1, v2

    goto :goto_0
.end method

.method public static findWordEnd(Ljava/lang/CharSequence;I)I
    .locals 6

    const/16 v5, 0x27

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge p1, v3, :cond_0

    const/4 v3, -0x1

    if-ne p1, v3, :cond_1

    :cond_0
    move v3, p1

    :goto_0
    return v3

    :cond_1
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v3

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v3

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v3

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v3

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->GENERAL_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v3

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v3

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v3

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->KATAKANA:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v3

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->HIRAGANA:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v3

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->BOPOMOFO:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v3, v5, :cond_3

    add-int/lit8 v3, p1, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    :goto_1
    if-ge p1, v1, :cond_4

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->getType(C)I

    move-result v2

    if-eq v0, v5, :cond_5

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5

    const/4 v3, 0x3

    if-eq v2, v3, :cond_5

    const/4 v3, 0x4

    if-eq v2, v3, :cond_5

    const/16 v3, 0x9

    if-eq v2, v3, :cond_5

    :cond_4
    if-gez p1, :cond_6

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_6
    move v3, p1

    goto/16 :goto_0
.end method

.method public static findWordStart(Ljava/lang/CharSequence;I)I
    .locals 6

    const/16 v5, 0x27

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge p1, v3, :cond_0

    const/4 v3, -0x1

    if-ne p1, v3, :cond_1

    :cond_0
    move v1, p1

    :goto_0
    return v1

    :cond_1
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v3

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v3

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v3

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v3

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->GENERAL_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v3

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v3

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v3

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->KATAKANA:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v3

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->HIRAGANA:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v3

    sget-object v4, Ljava/lang/Character$UnicodeBlock;->BOPOMOFO:Ljava/lang/Character$UnicodeBlock;

    if-eq v3, v4, :cond_2

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_2
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v3, v5, :cond_4

    move v1, p1

    goto :goto_0

    :cond_3
    add-int/lit8 p1, p1, -0x1

    :cond_4
    if-lez p1, :cond_5

    add-int/lit8 v3, p1, -0x1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->getType(C)I

    move-result v2

    if-eq v0, v5, :cond_3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3

    const/16 v3, 0x9

    if-eq v2, v3, :cond_3

    :cond_5
    move v1, p1

    goto/16 :goto_0
.end method

.method private fixFocusableAndClickableSettings()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setLongClickable(Z)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setLongClickable(Z)V

    goto :goto_0
.end method

.method private getBottomVerticalOffset(Z)I
    .locals 7

    const/4 v4, 0x0

    iget v5, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v5, 0x70

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez p1, :cond_0

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v5, :cond_0

    iget-object v2, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    :cond_0
    const/16 v5, 0x50

    if-eq v1, v5, :cond_1

    iget-object v5, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-ne v2, v5, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    :goto_0
    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v3

    if-ge v3, v0, :cond_1

    const/16 v5, 0x30

    if-ne v1, v5, :cond_3

    sub-int v4, v0, v3

    :cond_1
    :goto_1
    return v4

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    goto :goto_0

    :cond_3
    sub-int v5, v0, v3

    shr-int/lit8 v4, v5, 0x1

    goto :goto_1
.end method

.method private getCharRange(I)J
    .locals 7

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/lit8 v5, p1, 0x1

    if-ge v5, v4, :cond_0

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v5, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    add-int/lit8 v6, p1, 0x1

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v5, p1, 0x2

    invoke-static {p1, v5}, Landroid/widget/TextView;->packRangeInLong(II)J

    move-result-wide v5

    :goto_0
    return-wide v5

    :cond_0
    if-ge p1, v4, :cond_1

    add-int/lit8 v5, p1, 0x1

    invoke-static {p1, v5}, Landroid/widget/TextView;->packRangeInLong(II)J

    move-result-wide v5

    goto :goto_0

    :cond_1
    add-int/lit8 v5, p1, -0x2

    if-ltz v5, :cond_2

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    add-int/lit8 v6, p1, -0x1

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    add-int/lit8 v6, p1, -0x2

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v5, p1, -0x2

    invoke-static {v5, p1}, Landroid/widget/TextView;->packRangeInLong(II)J

    move-result-wide v5

    goto :goto_0

    :cond_2
    add-int/lit8 v5, p1, -0x1

    if-ltz v5, :cond_3

    add-int/lit8 v5, p1, -0x1

    invoke-static {v5, p1}, Landroid/widget/TextView;->packRangeInLong(II)J

    move-result-wide v5

    goto :goto_0

    :cond_3
    invoke-static {p1, p1}, Landroid/widget/TextView;->packRangeInLong(II)J

    move-result-wide v5

    goto :goto_0
.end method

.method private getDesiredHeight()I
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-direct {p0, v1, v0}, Landroid/widget/TextView;->getDesiredHeight(Landroid/text/Layout;Z)I

    move-result v1

    iget-object v2, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    iget-object v3, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eqz v3, :cond_0

    :goto_0
    invoke-direct {p0, v2, v0}, Landroid/widget/TextView;->getDesiredHeight(Landroid/text/Layout;Z)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDesiredHeight(Landroid/text/Layout;Z)I
    .locals 7

    const/4 v6, 0x1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v5

    add-int v3, v4, v5

    invoke-virtual {p1, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v1, :cond_1

    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_1
    add-int/2addr v0, v3

    iget v4, p0, Landroid/widget/TextView;->mMaxMode:I

    if-ne v4, v6, :cond_5

    if-eqz p2, :cond_3

    iget v4, p0, Landroid/widget/TextView;->mMaximum:I

    if-le v2, v4, :cond_3

    iget v4, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-virtual {p1, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    if-eqz v1, :cond_2

    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_2
    add-int/2addr v0, v3

    iget v2, p0, Landroid/widget/TextView;->mMaximum:I

    :cond_3
    :goto_1
    iget v4, p0, Landroid/widget/TextView;->mMinMode:I

    if-ne v4, v6, :cond_6

    iget v4, p0, Landroid/widget/TextView;->mMinimum:I

    if-ge v2, v4, :cond_4

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v4

    iget v5, p0, Landroid/widget/TextView;->mMinimum:I

    sub-int/2addr v5, v2

    mul-int/2addr v4, v5

    add-int/2addr v0, v4

    :cond_4
    :goto_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getSuggestedMinimumHeight()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_5
    iget v4, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    :cond_6
    iget v4, p0, Landroid/widget/TextView;->mMinimum:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_2
.end method

.method private getDirection(F)I
    .locals 2

    iget v0, p0, Landroid/widget/TextView;->mCurrentDirection:I

    iput v0, p0, Landroid/widget/TextView;->mPreDirection:I

    iget v0, p0, Landroid/widget/TextView;->mPreviousX:F

    cmpl-float v0, v0, p1

    if-lez v0, :cond_3

    const/4 v0, 0x3

    iput v0, p0, Landroid/widget/TextView;->mCurrentDirection:I

    :cond_0
    :goto_0
    iget v0, p0, Landroid/widget/TextView;->mCurrentDirection:I

    iget v1, p0, Landroid/widget/TextView;->mPreDirection:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/widget/TextView;->mChangeTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mChangeTimes:I

    :cond_1
    iget v0, p0, Landroid/widget/TextView;->mChangeTimes:I

    if-nez v0, :cond_4

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mDonotPassToLeft:Z

    :cond_2
    :goto_1
    iget v0, p0, Landroid/widget/TextView;->mCurrentDirection:I

    return v0

    :cond_3
    iget v0, p0, Landroid/widget/TextView;->mPreviousX:F

    cmpg-float v0, v0, p1

    if-gez v0, :cond_0

    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/TextView;->mCurrentDirection:I

    goto :goto_0

    :cond_4
    iget v0, p0, Landroid/widget/TextView;->mChangeTimes:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget v0, p0, Landroid/widget/TextView;->mCurrentDirection:I

    iput v0, p0, Landroid/widget/TextView;->mFirstDirection:I

    goto :goto_1
.end method

.method private getErrorX()I
    .locals 5

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    iget-object v3, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v3}, Landroid/widget/TextView$ErrorPopup;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    sub-int v3, v2, v3

    if-eqz v0, :cond_0

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    :goto_0
    div-int/lit8 v2, v2, 0x2

    sub-int v2, v3, v2

    const/high16 v3, 0x41c8

    mul-float/2addr v3, v1

    const/high16 v4, 0x3f00

    add-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v2, v3

    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getErrorY()I
    .locals 8

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v0

    iget v5, p0, Landroid/widget/TextView;->mBottom:I

    iget v7, p0, Landroid/widget/TextView;->mTop:I

    sub-int/2addr v5, v7

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v7

    sub-int/2addr v5, v7

    sub-int v4, v5, v0

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v1, :cond_1

    iget v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    :goto_0
    sub-int v5, v4, v5

    div-int/lit8 v5, v5, 0x2

    add-int v2, v0, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v3, v5, Landroid/util/DisplayMetrics;->density:F

    if-eqz v1, :cond_0

    iget v6, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    :cond_0
    add-int v5, v2, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    const/high16 v6, 0x4000

    mul-float/2addr v6, v3

    const/high16 v7, 0x3f00

    add-float/2addr v6, v7

    float-to-int v6, v6

    sub-int/2addr v5, v6

    return v5

    :cond_1
    move v5, v6

    goto :goto_0
.end method

.method private getInterestingRect(Landroid/graphics/Rect;I)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/TextView;->convertFromViewportToContentCoordinates(Landroid/graphics/Rect;)V

    if-nez p2, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_1

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    :cond_1
    return-void
.end method

.method private getLastTapPosition()I
    .locals 4

    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    invoke-virtual {v1}, Landroid/widget/TextView$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    const-string v1, "TextView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid tap focus position ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " vs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getLastTouchOffsets()J
    .locals 5

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$SelectionModifierCursorController;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v1

    invoke-virtual {v2}, Landroid/widget/TextView$SelectionModifierCursorController;->getMaxTouchOffset()I

    move-result v0

    invoke-static {v1, v0}, Landroid/widget/TextView;->packRangeInLong(II)J

    move-result-wide v3

    return-wide v3
.end method

.method private getLayoutAlignment()Landroid/text/Layout$Alignment;
    .locals 5

    const/high16 v4, 0x4000

    iget-object v2, p0, Landroid/widget/TextView;->mLayoutAlignment:Landroid/text/Layout$Alignment;

    if-nez v2, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mTextAlign:Landroid/widget/TextView$TextAlign;

    sget-object v2, Landroid/widget/TextView$5;->$SwitchMap$android$widget$TextView$TextAlign:[I

    invoke-virtual {v1}, Landroid/widget/TextView$TextAlign;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :goto_0
    iput-object v0, p0, Landroid/widget/TextView;->mLayoutAlignment:Landroid/text/Layout$Alignment;

    :cond_0
    iget-object v2, p0, Landroid/widget/TextView;->mLayoutAlignment:Landroid/text/Layout$Alignment;

    return-object v2

    :pswitch_0
    iget v2, p0, Landroid/widget/TextView;->mGravity:I

    const v3, 0x800007

    and-int/2addr v2, v3

    sparse-switch v2, :sswitch_data_0

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0

    :sswitch_0
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0

    :sswitch_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_0

    :sswitch_2
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    goto :goto_0

    :sswitch_3
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_0

    :sswitch_4
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_0

    :pswitch_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0

    :pswitch_2
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_0

    :pswitch_3
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Landroid/widget/TextView;->getResolvedLayoutDirection()I

    move-result v2

    if-ne v2, v4, :cond_1

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    :goto_1
    goto :goto_0

    :cond_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0}, Landroid/widget/TextView;->getResolvedLayoutDirection()I

    move-result v2

    if-ne v2, v4, :cond_2

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    :goto_2
    goto :goto_0

    :cond_2
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x3 -> :sswitch_2
        0x5 -> :sswitch_3
        0x800003 -> :sswitch_0
        0x800005 -> :sswitch_1
    .end sparse-switch
.end method

.method private getLineAtCoordinate(F)I
    .locals 2

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    float-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v0

    return v0
.end method

.method private getOffsetAtCoordinate(IF)I
    .locals 1

    invoke-direct {p0, p2}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result p2

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v0

    return v0
.end method

.method private getOffsetForHorizontal(IF)I
    .locals 2

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p2, v0

    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v0

    return v0
.end method

.method private getOwnerViewRoot()Landroid/view/ViewRootImpl;
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v3, v0, Landroid/view/ViewRootImpl;

    if-eqz v3, :cond_1

    check-cast v0, Landroid/view/ViewRootImpl;

    goto :goto_0

    :cond_1
    move-object v0, v2

    goto :goto_0
.end method

.method private getPositionListener()Landroid/widget/TextView$PositionListener;
    .locals 2

    iget-object v0, p0, Landroid/widget/TextView;->mPositionListener:Landroid/widget/TextView$PositionListener;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/TextView$PositionListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/TextView$PositionListener;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V

    iput-object v0, p0, Landroid/widget/TextView;->mPositionListener:Landroid/widget/TextView$PositionListener;

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mPositionListener:Landroid/widget/TextView$PositionListener;

    return-object v0
.end method

.method private getSkinPackageName()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Landroid/widget/TextView;->THEMEABLE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "default"

    goto :goto_0
.end method

.method public static getTextColor(Landroid/content/Context;Landroid/content/res/TypedArray;I)I
    .locals 1

    invoke-static {p0, p1}, Landroid/widget/TextView;->getTextColors(Landroid/content/Context;Landroid/content/res/TypedArray;)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return p2

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p2

    goto :goto_0
.end method

.method public static getTextColors(Landroid/content/Context;Landroid/content/res/TypedArray;)Landroid/content/res/ColorStateList;
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eq v0, v4, :cond_0

    sget-object v3, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-object v2
.end method

.method private getTextForAccessibility()Ljava/lang/CharSequence;
    .locals 2

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private getTextThumbnailBuilder(Ljava/lang/CharSequence;)Landroid/view/View$DragShadowBuilder;
    .locals 7

    const/4 v6, -0x2

    const/4 v5, 0x0

    iget-object v2, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    const v3, 0x109009f

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/TextView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unable to inflate text drag thumbnail"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sget v3, Landroid/widget/TextView;->DRAG_SHADOW_MAX_TEXT_LENGTH:I

    if-le v2, v3, :cond_1

    sget v2, Landroid/widget/TextView;->DRAG_SHADOW_MAX_TEXT_LENGTH:I

    invoke-interface {p1, v5, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v2, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    const/16 v3, 0x10

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, v1, v1}, Landroid/widget/TextView;->measure(II)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v5, v5, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    new-instance v2, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v2, v0}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    return-object v2
.end method

.method private getTransformedText(II)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->removeSuggestionSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private getVerticalOffset(Z)I
    .locals 7

    const/4 v4, 0x0

    iget v5, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v5, 0x70

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez p1, :cond_0

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v5, :cond_0

    iget-object v2, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    :cond_0
    const/16 v5, 0x30

    if-eq v1, v5, :cond_1

    iget-object v5, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-ne v2, v5, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    :goto_0
    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v3

    if-ge v3, v0, :cond_1

    const/16 v5, 0x50

    if-ne v1, v5, :cond_3

    sub-int v4, v0, v3

    :cond_1
    :goto_1
    return v4

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    goto :goto_0

    :cond_3
    sub-int v5, v0, v3

    shr-int/lit8 v4, v5, 0x1

    goto :goto_1
.end method

.method private hasPasswordTransformationMethod()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;

    return v0
.end method

.method private hideCursorControllers()V
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mSuggestionsPopupWindow:Landroid/widget/TextView$SuggestionsPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mSuggestionsPopupWindow:Landroid/widget/TextView$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/TextView$SuggestionsPopupWindow;->isShowingUp()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mSuggestionsPopupWindow:Landroid/widget/TextView$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/TextView$SuggestionsPopupWindow;->hide()V

    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->hideInsertionPointCursorController()V

    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    return-void
.end method

.method private hideError()V
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/TextView$ErrorPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/TextView$ErrorPopup;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mShowErrorAfterAttach:Z

    return-void
.end method

.method private hideInsertionPointCursorController()V
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

    invoke-virtual {v0}, Landroid/widget/TextView$InsertionPointCursorController;->hide()V

    :cond_0
    return-void
.end method

.method private hideSelectionModifierCursorController()V
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    invoke-virtual {v0}, Landroid/widget/TextView$SelectionModifierCursorController;->hide()V

    :cond_0
    return-void
.end method

.method private hideSpanControllers()V
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    #calls: Landroid/widget/TextView$ChangeWatcher;->hideControllers()V
    invoke-static {v0}, Landroid/widget/TextView$ChangeWatcher;->access$12100(Landroid/widget/TextView$ChangeWatcher;)V

    :cond_0
    return-void
.end method

.method private hookIME()V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->focusIn(Landroid/view/View;)V

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method private invalidateCursor()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    invoke-direct {p0, v0, v0, v0}, Landroid/widget/TextView;->invalidateCursor(III)V

    return-void
.end method

.method private invalidateCursor(III)V
    .locals 3

    if-gez p1, :cond_0

    if-gez p2, :cond_0

    if-ltz p3, :cond_1

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/widget/TextView;->invalidateRegion(IIZ)V

    :cond_1
    return-void
.end method

.method private invalidateCursorPath()V
    .locals 11

    const/high16 v7, 0x4000

    iget-boolean v5, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-eqz v5, :cond_1

    invoke-direct {p0}, Landroid/widget/TextView;->invalidateCursor()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v5

    const/4 v6, 0x1

    invoke-direct {p0, v6}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v6

    add-int v4, v5, v6

    iget v5, p0, Landroid/widget/TextView;->mCursorCount:I

    if-nez v5, :cond_3

    sget-object v6, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->getStrokeWidth()F

    move-result v5

    invoke-static {v5}, Landroid/util/FloatMath;->ceil(F)F

    move-result v3

    cmpg-float v5, v3, v7

    if-gez v5, :cond_2

    const/high16 v3, 0x4000

    :cond_2
    div-float/2addr v3, v7

    iget-object v5, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    sget-object v7, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    int-to-float v5, v1

    sget-object v7, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v7

    sub-float/2addr v5, v3

    invoke-static {v5}, Landroid/util/FloatMath;->floor(F)F

    move-result v5

    float-to-int v5, v5

    int-to-float v7, v4

    sget-object v8, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    add-float/2addr v7, v8

    sub-float/2addr v7, v3

    invoke-static {v7}, Landroid/util/FloatMath;->floor(F)F

    move-result v7

    float-to-int v7, v7

    int-to-float v8, v1

    sget-object v9, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    add-float/2addr v8, v9

    add-float/2addr v8, v3

    invoke-static {v8}, Landroid/util/FloatMath;->ceil(F)F

    move-result v8

    float-to-int v8, v8

    int-to-float v9, v4

    sget-object v10, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v9, v10

    add-float/2addr v9, v3

    invoke-static {v9}, Landroid/util/FloatMath;->ceil(F)F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {p0, v5, v7, v8, v9}, Landroid/widget/TextView;->invalidate(IIII)V

    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_3
    const/4 v2, 0x0

    :goto_1
    iget v5, p0, Landroid/widget/TextView;->mCursorCount:I

    if-ge v2, v5, :cond_0

    iget-object v5, p0, Landroid/widget/TextView;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v5, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v1

    iget v6, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v4

    iget v7, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v1

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v4

    invoke-virtual {p0, v5, v6, v7, v8}, Landroid/widget/TextView;->invalidate(IIII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private isCursorInsideEasyCorrectionSpan()Z
    .locals 6

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spannable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    const-class v5, Landroid/text/style/SuggestionSpan;

    invoke-interface {v1, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/SuggestionSpan;

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private isCursorInsideSuggestionSpan()Z
    .locals 6

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Spannable;

    if-nez v1, :cond_0

    :goto_0
    return v2

    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spannable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    const-class v5, Landroid/text/style/SuggestionSpan;

    invoke-interface {v1, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/SuggestionSpan;

    array-length v1, v0

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private isCursorVisible()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TextView;->mCursorVisible:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isHWKeyboardOpen()Z
    .locals 8

    const/4 v7, 0x2

    const/4 v4, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v5, v2, Landroid/content/res/Configuration;->keyboard:I

    if-eq v7, v5, :cond_0

    const/4 v5, 0x3

    iget v6, v2, Landroid/content/res/Configuration;->keyboard:I

    if-ne v5, v6, :cond_1

    :cond_0
    iget v5, v2, Landroid/content/res/Configuration;->hardKeyboardHidden:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v7, v5, :cond_1

    const/4 v1, 0x1

    :goto_0
    move v4, v1

    :goto_1
    return v4

    :cond_1
    move v1, v4

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private static isMultilineInputType(I)Z
    .locals 2

    const v0, 0x2000f

    and-int/2addr v0, p0

    const v1, 0x20001

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOffsetVisible(I)Z
    .locals 5

    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v3, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v3, v0}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v1

    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v3, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v3

    float-to-int v2, v3

    invoke-direct {p0}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v3

    add-int/2addr v3, v2

    invoke-direct {p0}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {p0, v3, v4}, Landroid/widget/TextView;->isPositionVisible(II)Z

    move-result v3

    return v3
.end method

.method private static isPasswordInputType(I)Z
    .locals 2

    and-int/lit16 v0, p0, 0xfff

    const/16 v1, 0x81

    if-eq v0, v1, :cond_0

    const/16 v1, 0xe1

    if-eq v0, v1, :cond_0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isPositionOnText(FF)Z
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-direct {p0, p2}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v0

    invoke-direct {p0, p1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v2

    cmpg-float v2, p1, v2

    if-ltz v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/text/Layout;->getLineRight(I)F

    move-result v2

    cmpl-float v2, p1, v2

    if-gtz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isPositionVisible(II)Z
    .locals 11

    const/4 v10, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v6, Landroid/widget/TextView;->sTmpPosition:[F

    monitor-enter v6

    :try_start_0
    sget-object v2, Landroid/widget/TextView;->sTmpPosition:[F

    const/4 v7, 0x0

    int-to-float v8, p1

    aput v8, v2, v7

    const/4 v7, 0x1

    int-to-float v8, p2

    aput v8, v2, v7

    move-object v3, p0

    :goto_0
    if-eqz v3, :cond_5

    if-eq v3, p0, :cond_0

    const/4 v7, 0x0

    aget v8, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    aput v8, v2, v7

    const/4 v7, 0x1

    aget v8, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    aput v8, v2, v7

    :cond_0
    const/4 v7, 0x0

    aget v7, v2, v7

    cmpg-float v7, v7, v10

    if-ltz v7, :cond_1

    const/4 v7, 0x1

    aget v7, v2, v7

    cmpg-float v7, v7, v10

    if-ltz v7, :cond_1

    const/4 v7, 0x0

    aget v7, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-gtz v7, :cond_1

    const/4 v7, 0x1

    aget v7, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2

    :cond_1
    monitor-exit v6

    :goto_1
    return v4

    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    :cond_3
    const/4 v7, 0x0

    aget v8, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    aput v8, v2, v7

    const/4 v7, 0x1

    aget v8, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    aput v8, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v7, v1, Landroid/view/View;

    if-eqz v7, :cond_4

    move-object v0, v1

    check-cast v0, Landroid/view/View;

    move-object v3, v0

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    :cond_5
    monitor-exit v6

    move v4, v5

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private isTextEditable()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Landroid/widget/TextView;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isVisiblePasswordInputType(I)Z
    .locals 2

    and-int/lit16 v0, p0, 0xfff

    const/16 v1, 0x91

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private makeBlink()V
    .locals 6

    invoke-direct {p0}, Landroid/widget/TextView;->isCursorVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Landroid/widget/TextView;->shouldBlink()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/TextView;->mShowCursor:J

    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/TextView$Blink;

    invoke-direct {v0, p0}, Landroid/widget/TextView$Blink;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    iget-object v1, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    invoke-virtual {v0, v1}, Landroid/widget/TextView$Blink;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-boolean v0, Landroid/widget/TextView;->mIsBlackTimeShorter:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    iget-object v1, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    iget-wide v2, p0, Landroid/widget/TextView;->mShowCursor:J

    sget v4, Landroid/widget/TextView;->BLINK_WHITE:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView$Blink;->postAtTime(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    iget-object v1, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    iget-wide v2, p0, Landroid/widget/TextView;->mShowCursor:J

    const-wide/16 v4, 0x1f4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView$Blink;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    iget-object v1, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    invoke-virtual {v0, v1}, Landroid/widget/TextView$Blink;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private makeBlinkandHook()V
    .locals 4

    invoke-direct {p0}, Landroid/widget/TextView;->makeBlink()V

    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->isHWKeyboardOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    iget-object v1, p0, Landroid/widget/TextView;->mHookIME:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView$Blink;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    iget-object v1, p0, Landroid/widget/TextView;->mHookIME:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView$Blink;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private makeSingleLayout(ILandroid/text/BoringLayout$Metrics;ILandroid/text/Layout$Alignment;ZLandroid/text/TextUtils$TruncateAt;Z)Landroid/text/Layout;
    .locals 15

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v2, v2, Landroid/text/Spannable;

    if-eqz v2, :cond_2

    new-instance v1, Landroid/text/DynamicLayout;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v7, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    iget v8, p0, Landroid/widget/TextView;->mSpacingMult:F

    iget v9, p0, Landroid/widget/TextView;->mSpacingAdd:F

    iget-boolean v10, p0, Landroid/widget/TextView;->mIncludePad:Z

    iget-object v5, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-nez v5, :cond_1

    move-object/from16 v11, p6

    :goto_0
    move/from16 v5, p1

    move-object/from16 v6, p4

    move/from16 v12, p3

    invoke-direct/range {v1 .. v12}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;I)V

    :cond_0
    :goto_1
    return-object v1

    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    :cond_2
    sget-object v2, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    move-object/from16 v0, p2

    if-ne v0, v2, :cond_3

    iget-object v2, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v4, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    iget-object v5, p0, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    invoke-static {v2, v3, v4, v5}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object p2

    if-eqz p2, :cond_3

    move-object/from16 v0, p2

    iput-object v0, p0, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    :cond_3
    if-eqz p2, :cond_b

    move-object/from16 v0, p2

    iget v2, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v0, p1

    if-gt v2, v0, :cond_6

    if-eqz p6, :cond_4

    move-object/from16 v0, p2

    iget v2, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v0, p3

    if-gt v2, v0, :cond_6

    :cond_4
    if-eqz p7, :cond_5

    iget-object v2, p0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    iget-object v3, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v7, p0, Landroid/widget/TextView;->mSpacingMult:F

    iget v8, p0, Landroid/widget/TextView;->mSpacingAdd:F

    iget-boolean v10, p0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v5, p1

    move-object/from16 v6, p4

    move-object/from16 v9, p2

    invoke-virtual/range {v2 .. v10}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v1

    :goto_2
    if-eqz p7, :cond_0

    move-object v2, v1

    check-cast v2, Landroid/text/BoringLayout;

    iput-object v2, p0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    goto :goto_1

    :cond_5
    iget-object v2, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v6, p0, Landroid/widget/TextView;->mSpacingMult:F

    iget v7, p0, Landroid/widget/TextView;->mSpacingAdd:F

    iget-boolean v9, p0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v4, p1

    move-object/from16 v5, p4

    move-object/from16 v8, p2

    invoke-static/range {v2 .. v9}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v1

    goto :goto_2

    :cond_6
    if-eqz p5, :cond_8

    move-object/from16 v0, p2

    iget v2, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v0, p1

    if-gt v2, v0, :cond_8

    if-eqz p7, :cond_7

    iget-object v2, p0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    if-eqz v2, :cond_7

    iget-object v2, p0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    iget-object v3, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v7, p0, Landroid/widget/TextView;->mSpacingMult:F

    iget v8, p0, Landroid/widget/TextView;->mSpacingAdd:F

    iget-boolean v10, p0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v5, p1

    move-object/from16 v6, p4

    move-object/from16 v9, p2

    move-object/from16 v11, p6

    move/from16 v12, p3

    invoke-virtual/range {v2 .. v12}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v1

    goto/16 :goto_1

    :cond_7
    iget-object v2, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v6, p0, Landroid/widget/TextView;->mSpacingMult:F

    iget v7, p0, Landroid/widget/TextView;->mSpacingAdd:F

    iget-boolean v9, p0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v4, p1

    move-object/from16 v5, p4

    move-object/from16 v8, p2

    move-object/from16 v10, p6

    move/from16 v11, p3

    invoke-static/range {v2 .. v11}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v1

    goto/16 :goto_1

    :cond_8
    if-eqz p5, :cond_a

    new-instance v1, Landroid/text/StaticLayout;

    iget-object v2, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    iget-object v5, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v8, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    iget v9, p0, Landroid/widget/TextView;->mSpacingMult:F

    iget v10, p0, Landroid/widget/TextView;->mSpacingAdd:F

    iget-boolean v11, p0, Landroid/widget/TextView;->mIncludePad:Z

    iget v6, p0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_9

    iget v14, p0, Landroid/widget/TextView;->mMaximum:I

    :goto_3
    move/from16 v6, p1

    move-object/from16 v7, p4

    move-object/from16 v12, p6

    move/from16 v13, p3

    invoke-direct/range {v1 .. v14}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    goto/16 :goto_1

    :cond_9
    const v14, 0x7fffffff

    goto :goto_3

    :cond_a
    new-instance v1, Landroid/text/StaticLayout;

    iget-object v2, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v6, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    iget v7, p0, Landroid/widget/TextView;->mSpacingMult:F

    iget v8, p0, Landroid/widget/TextView;->mSpacingAdd:F

    iget-boolean v9, p0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v4, p1

    move-object/from16 v5, p4

    invoke-direct/range {v1 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V

    goto/16 :goto_1

    :cond_b
    if-eqz p5, :cond_d

    new-instance v1, Landroid/text/StaticLayout;

    iget-object v2, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    iget-object v5, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v8, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    iget v9, p0, Landroid/widget/TextView;->mSpacingMult:F

    iget v10, p0, Landroid/widget/TextView;->mSpacingAdd:F

    iget-boolean v11, p0, Landroid/widget/TextView;->mIncludePad:Z

    iget v6, p0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_c

    iget v14, p0, Landroid/widget/TextView;->mMaximum:I

    :goto_4
    move/from16 v6, p1

    move-object/from16 v7, p4

    move-object/from16 v12, p6

    move/from16 v13, p3

    invoke-direct/range {v1 .. v14}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    goto/16 :goto_1

    :cond_c
    const v14, 0x7fffffff

    goto :goto_4

    :cond_d
    new-instance v1, Landroid/text/StaticLayout;

    iget-object v2, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v6, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    iget v7, p0, Landroid/widget/TextView;->mSpacingMult:F

    iget v8, p0, Landroid/widget/TextView;->mSpacingAdd:F

    iget-boolean v9, p0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v4, p1

    move-object/from16 v5, p4

    invoke-direct/range {v1 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V

    goto/16 :goto_1
.end method

.method private nullLayouts()V
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    instance-of v0, v0, Landroid/text/BoringLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    check-cast v0, Landroid/text/BoringLayout;

    iput-object v0, p0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    instance-of v0, v0, Landroid/text/BoringLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    check-cast v0, Landroid/text/BoringLayout;

    iput-object v0, p0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    iput-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iput-object v0, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    invoke-direct {p0}, Landroid/widget/TextView;->prepareCursorControllers()V

    return-void
.end method

.method private onDrop(Landroid/view/DragEvent;)V
    .locals 23

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v21, ""

    move-object/from16 v0, v21

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipData;->getItemCount()I

    move-result v11

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v11, :cond_0

    invoke-virtual {v3, v9}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v21

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v12

    const/4 v6, 0x0

    instance-of v0, v12, Landroid/widget/TextView$DragLocalState;

    move/from16 v21, v0

    if-eqz v21, :cond_1

    move-object v6, v12

    check-cast v6, Landroid/widget/TextView$DragLocalState;

    :cond_1
    if-eqz v6, :cond_3

    iget-object v0, v6, Landroid/widget/TextView$DragLocalState;->sourceTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_3

    const/4 v5, 0x1

    :goto_1
    if-eqz v5, :cond_4

    iget v0, v6, Landroid/widget/TextView$DragLocalState;->start:I

    move/from16 v21, v0

    move/from16 v0, v17

    move/from16 v1, v21

    if-lt v0, v1, :cond_4

    iget v0, v6, Landroid/widget/TextView$DragLocalState;->end:I

    move/from16 v21, v0

    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_4

    :cond_2
    :goto_2
    return-void

    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->length()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v17

    invoke-direct {v0, v1, v2, v4}, Landroid/widget/TextView;->prepareSpacesAroundPaste(IILjava/lang/CharSequence;)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Landroid/widget/TextView;->extractRangeStartFromLong(J)I

    move-result v14

    invoke-static/range {v15 .. v16}, Landroid/widget/TextView;->extractRangeEndFromLong(J)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    check-cast v21, Landroid/text/Spannable;

    move-object/from16 v0, v21

    invoke-static {v0, v13}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v13, v4}, Landroid/widget/TextView;->replaceText_internal(IILjava/lang/CharSequence;)V

    if-eqz v5, :cond_2

    iget v8, v6, Landroid/widget/TextView$DragLocalState;->start:I

    iget v7, v6, Landroid/widget/TextView$DragLocalState;->end:I

    if-gt v13, v8, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->length()I

    move-result v21

    sub-int v20, v21, v18

    add-int v8, v8, v20

    add-int v7, v7, v20

    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v7}, Landroid/widget/TextView;->deleteText_internal(II)V

    if-eqz v8, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    add-int/lit8 v22, v8, -0x1

    invoke-interface/range {v21 .. v22}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v21

    if-eqz v21, :cond_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->length()I

    move-result v21

    move/from16 v0, v21

    if-eq v8, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v21

    if-eqz v21, :cond_2

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->length()I

    move-result v21

    move/from16 v0, v21

    if-ne v8, v0, :cond_8

    add-int/lit8 v19, v8, -0x1

    :goto_3
    add-int/lit8 v21, v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->deleteText_internal(II)V

    goto/16 :goto_2

    :cond_8
    move/from16 v19, v8

    goto :goto_3
.end method

.method private static packRangeInLong(II)J
    .locals 4

    int-to-long v0, p0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p1

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private paste(II)V
    .locals 13

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "clipboard"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    :try_start_0
    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    :goto_0
    if-eqz v6, :cond_0

    :try_start_2
    const-string v10, "HTC_MODIFIED_CLIPDATA"

    invoke-virtual {v6, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v5, 0x1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_4

    invoke-virtual {v0, v4}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v10

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v9

    if-eqz v9, :cond_1

    if-nez v2, :cond_2

    invoke-direct {p0, p1, p2, v9}, Landroid/widget/TextView;->prepareSpacesAroundPaste(IILjava/lang/CharSequence;)J

    move-result-wide v7

    invoke-static {v7, v8}, Landroid/widget/TextView;->extractRangeStartFromLong(J)I

    move-result p1

    invoke-static {v7, v8}, Landroid/widget/TextView;->extractRangeEndFromLong(J)I

    move-result p2

    iget-object v10, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v10, Landroid/text/Spannable;

    invoke-static {v10, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    iget-object v10, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v10, Landroid/text/Editable;

    invoke-interface {v10, p1, p2, v9}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    const/4 v2, 0x1

    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catch_0
    move-exception v3

    const-string v10, "TextView"

    const-string v11, "GetLabel fail! Do framework orig behavior"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    iget-object v10, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v10, Landroid/text/Editable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v11

    const-string v12, "\n"

    invoke-interface {v10, v11, v12}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    iget-object v10, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v10, Landroid/text/Editable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v11

    invoke-interface {v10, v11, v9}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    const-string v10, "TextView"

    const-string v11, "Security exception"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_3
    return-void

    :cond_4
    :try_start_3
    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    const-wide/16 v10, 0x0

    sput-wide v10, Landroid/widget/TextView;->sLastCutOrCopyTime:J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3
.end method

.method private prepareCursorControllers()V
    .locals 8

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v5, v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v5, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x3e8

    if-lt v5, v6, :cond_0

    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7cf

    if-le v5, v6, :cond_5

    :cond_0
    move v2, v4

    :cond_1
    :goto_0
    if-eqz v2, :cond_6

    invoke-direct {p0}, Landroid/widget/TextView;->isCursorVisible()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v5, :cond_6

    iget-object v5, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-nez v5, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_2
    move v5, v4

    :goto_1
    iput-boolean v5, p0, Landroid/widget/TextView;->mInsertionControllerEnabled:Z

    if-eqz v2, :cond_7

    invoke-direct {p0}, Landroid/widget/TextView;->textCanBeSelected()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v5, :cond_7

    :goto_2
    iput-boolean v4, p0, Landroid/widget/TextView;->mSelectionControllerEnabled:Z

    iget-boolean v3, p0, Landroid/widget/TextView;->mInsertionControllerEnabled:Z

    if-nez v3, :cond_3

    invoke-direct {p0}, Landroid/widget/TextView;->hideInsertionPointCursorController()V

    iget-object v3, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

    invoke-virtual {v3}, Landroid/widget/TextView$InsertionPointCursorController;->onDetached()V

    iput-object v7, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

    :cond_3
    iget-boolean v3, p0, Landroid/widget/TextView;->mSelectionControllerEnabled:Z

    if-nez v3, :cond_4

    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    iget-object v3, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    invoke-virtual {v3}, Landroid/widget/TextView$SelectionModifierCursorController;->onDetached()V

    iput-object v7, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    :cond_4
    return-void

    :cond_5
    move v2, v3

    goto :goto_0

    :cond_6
    move v5, v3

    goto :goto_1

    :cond_7
    move v4, v3

    goto :goto_2
.end method

.method private prepareQuickActions()V
    .locals 10

    const/4 v1, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    iget-object v2, p0, Landroid/widget/TextView;->mMenuWrapper:Landroid/widget/TextView$MenuWrapper;

    iget-object v3, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Landroid/widget/TextView;->mTextIsSelectable:Z

    if-nez v4, :cond_1

    move v4, v1

    :goto_0
    invoke-direct {p0}, Landroid/widget/TextView;->canCut()Z

    move-result v5

    invoke-direct {p0}, Landroid/widget/TextView;->canCopy()Z

    move-result v6

    invoke-direct {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result v7

    invoke-virtual {p0}, Landroid/widget/TextView;->getDefaultEditable()Z

    move-result v9

    if-nez v9, :cond_0

    iget-boolean v9, p0, Landroid/widget/TextView;->mTextIsSelectable:Z

    if-eqz v9, :cond_0

    move v8, v1

    :cond_0
    move-object v1, p0

    invoke-virtual/range {v0 .. v8}, Lcom/htc/textselection/HtcTextSelectionManager;->prepareQuickActions(Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/content/Context;ZZZZZ)V

    return-void

    :cond_1
    move v4, v8

    goto :goto_0
.end method

.method private prepareSpacesAroundPaste(IILjava/lang/CharSequence;)J
    .locals 7

    const/16 v6, 0xa

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_1

    if-lez p1, :cond_0

    iget-object v4, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    add-int/lit8 v5, p1, -0x1

    invoke-interface {v4, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/4 v4, 0x0

    invoke-interface {p3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {p0, v4, p1}, Landroid/widget/TextView;->deleteText_internal(II)V

    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sub-int v2, v4, v3

    add-int/2addr p1, v2

    add-int/2addr p2, v2

    :cond_0
    :goto_0
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge p2, v4, :cond_1

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {p3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    iget-object v4, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v4, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v4

    if-eqz v4, :cond_3

    add-int/lit8 v4, p2, 0x1

    invoke-virtual {p0, p2, v4}, Landroid/widget/TextView;->deleteText_internal(II)V

    :cond_1
    :goto_1
    invoke-static {p1, p2}, Landroid/widget/TextView;->packRangeInLong(II)J

    move-result-wide v4

    return-wide v4

    :cond_2
    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v4

    if-nez v4, :cond_0

    if-eq v1, v6, :cond_0

    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v4

    if-nez v4, :cond_0

    if-eq v0, v6, :cond_0

    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const-string v4, " "

    invoke-virtual {p0, p1, p1, v4}, Landroid/widget/TextView;->replaceText_internal(IILjava/lang/CharSequence;)V

    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sub-int v2, v4, v3

    add-int/2addr p1, v2

    add-int/2addr p2, v2

    goto :goto_0

    :cond_3
    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v4

    if-nez v4, :cond_1

    if-eq v1, v6, :cond_1

    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v4

    if-nez v4, :cond_1

    if-eq v0, v6, :cond_1

    const-string v4, " "

    invoke-virtual {p0, p2, p2, v4}, Landroid/widget/TextView;->replaceText_internal(IILjava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private registerForPreDraw()V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget v1, p0, Landroid/widget/TextView;->mPreDrawState:I

    if-nez v1, :cond_1

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iput v3, p0, Landroid/widget/TextView;->mPreDrawState:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Landroid/widget/TextView;->mPreDrawState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iput v3, p0, Landroid/widget/TextView;->mPreDrawState:I

    goto :goto_0
.end method

.method private removeIntersectingSpans(IILjava/lang/Class;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v6, v6, Landroid/text/Editable;

    if-nez v6, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v5, Landroid/text/Editable;

    invoke-interface {v5, p1, p2, p3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    array-length v2, v4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v6, v4, v1

    invoke-interface {v5, v6}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    aget-object v6, v4, v1

    invoke-interface {v5, v6}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    if-eq v0, p1, :cond_0

    if-eq v3, p2, :cond_0

    aget-object v6, v4, v1

    invoke-interface {v5, v6}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static removeParcelableSpans(Landroid/text/Spannable;II)V
    .locals 3

    const-class v2, Landroid/text/ParcelableSpan;

    invoke-interface {p0, p1, p2, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    array-length v0, v1

    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    aget-object v2, v1, v0

    invoke-interface {p0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private removeReplacementSpan(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 9

    instance-of v6, p1, Landroid/text/Spannable;

    if-eqz v6, :cond_1

    move-object v3, p1

    check-cast v3, Landroid/text/Spannable;

    const/4 v6, 0x0

    invoke-interface {v3}, Landroid/text/Spannable;->length()I

    move-result v7

    const-class v8, Landroid/text/style/ReplacementSpan;

    invoke-interface {v3, v6, v7, v8}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    array-length v1, v4

    :cond_0
    :goto_0
    if-lez v1, :cond_2

    add-int/lit8 v1, v1, -0x1

    aget-object v6, v4, v1

    invoke-interface {v3, v6}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    aget-object v6, v4, v1

    invoke-interface {v3, v6}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    aget-object v6, v4, v1

    invoke-interface {v3, v6}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    if-ltz v5, :cond_0

    if-le v0, v5, :cond_0

    invoke-interface {v3, v5}, Landroid/text/Spannable;->charAt(I)C

    move-result v6

    const v7, 0xfffc

    if-ne v6, v7, :cond_0

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v6, ""

    invoke-virtual {v2, v5, v0, v6}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, p1

    :cond_2
    return-object v3
.end method

.method private removeStyledAnnotationSpan(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6

    instance-of v3, p1, Landroid/text/Spannable;

    if-eqz v3, :cond_1

    move-object v1, p1

    check-cast v1, Landroid/text/Spannable;

    :goto_0
    const/4 v3, 0x0

    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v4

    const-class v5, Landroid/text/Annotation;

    invoke-interface {v1, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/Annotation;

    array-length v0, v2

    :cond_0
    :goto_1
    if-lez v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    aget-object v3, v2, v0

    if-eqz v3, :cond_0

    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/text/Annotation;->getKey()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/text/Annotation;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "styledtext"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    aget-object v3, v2, v0

    invoke-interface {v1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private resetMetaStatus()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/TextView;->mCapOld:I

    iput v0, p0, Landroid/widget/TextView;->mFnOld:I

    return-void
.end method

.method private restartMarqueeIfNeeded()V
    .locals 2

    iget-boolean v0, p0, Landroid/widget/TextView;->mRestartMarquee:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mRestartMarquee:Z

    invoke-direct {p0}, Landroid/widget/TextView;->startMarquee()V

    :cond_0
    return-void
.end method

.method private selectAll()Z
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1, v2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private selectCurrentWord()Z
    .locals 26

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mLongpressWhiteSpace:Z

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v24

    if-nez v24, :cond_0

    const/16 v24, 0x0

    :goto_0
    return v24

    :cond_0
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->getLastTouchOffsets()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroid/widget/TextView;->extractRangeStartFromLong(J)I

    move-result v9

    invoke-static {v5, v6}, Landroid/widget/TextView;->extractRangeEndFromLong(J)I

    move-result v8

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v24

    if-eqz v24, :cond_4

    if-ltz v9, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/lang/CharSequence;->length()I

    move-result v24

    move/from16 v0, v24

    if-lt v9, v0, :cond_2

    :cond_1
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mLongpressWhiteSpace:Z

    const/16 v24, 0x0

    goto :goto_0

    :cond_2
    if-ltz v8, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/lang/CharSequence;->length()I

    move-result v24

    move/from16 v0, v24

    if-lt v8, v0, :cond_4

    :cond_3
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mLongpressWhiteSpace:Z

    const/16 v24, 0x0

    goto :goto_0

    :cond_4
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v24

    if-eqz v24, :cond_5

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->selectAll()Z

    move-result v24

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mInputType:I

    move/from16 v24, v0

    and-int/lit8 v4, v24, 0xf

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mInputType:I

    move/from16 v24, v0

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff0

    move/from16 v22, v0

    const/16 v24, 0x2

    move/from16 v0, v24

    if-eq v4, v0, :cond_6

    const/16 v24, 0x3

    move/from16 v0, v24

    if-eq v4, v0, :cond_6

    const/16 v24, 0x4

    move/from16 v0, v24

    if-eq v4, v0, :cond_6

    const/16 v24, 0x10

    move/from16 v0, v22

    move/from16 v1, v24

    if-eq v0, v1, :cond_6

    const/16 v24, 0x20

    move/from16 v0, v22

    move/from16 v1, v24

    if-eq v0, v1, :cond_6

    const/16 v24, 0xd0

    move/from16 v0, v22

    move/from16 v1, v24

    if-eq v0, v1, :cond_6

    const/16 v24, 0xb0

    move/from16 v0, v22

    move/from16 v1, v24

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mFlags:I

    move/from16 v24, v0

    and-int/lit8 v24, v24, 0x4

    if-eqz v24, :cond_7

    :cond_6
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->selectAll()Z

    move-result v24

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    check-cast v24, Landroid/text/Spanned;

    const-class v25, Landroid/text/style/URLSpan;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-interface {v0, v9, v8, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Landroid/text/style/URLSpan;

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_9

    const/16 v24, 0x0

    aget-object v20, v21, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    check-cast v24, Landroid/text/Spanned;

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    check-cast v24, Landroid/text/Spanned;

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v15

    :cond_8
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    check-cast v24, Landroid/text/Spannable;

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-static {v0, v1, v15}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    move/from16 v0, v17

    if-le v15, v0, :cond_17

    const/16 v24, 0x1

    goto/16 :goto_0

    :cond_9
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->useHtcTextSelection()Z

    move-result v24

    if-eqz v24, :cond_13

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v24

    if-nez v24, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/lang/CharSequence;->length()I

    move-result v24

    if-lez v24, :cond_11

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-static {v0, v10}, Landroid/widget/TextView;->findWordStart(Ljava/lang/CharSequence;I)I

    move-result v24

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$SelectionModifierCursorController;

    move-result-object v16

    if-eqz v16, :cond_a

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v10

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    check-cast v24, Landroid/text/Spannable;

    move-object/from16 v0, v24

    invoke-static {v0, v10}, Landroid/widget/TextView;->findNearestNonwhiteOffset(Landroid/text/Spannable;I)I

    move-result v10

    const/16 v24, -0x1

    move/from16 v0, v24

    if-le v10, v0, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-static {v0, v10}, Landroid/widget/TextView;->findWordStart(Ljava/lang/CharSequence;I)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-static {v0, v10}, Landroid/widget/TextView;->findWordEnd(Ljava/lang/CharSequence;I)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    instance-of v0, v0, Landroid/text/Spannable;

    move/from16 v24, v0

    if-eqz v24, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    check-cast v18, Landroid/text/Spannable;

    const-class v24, Landroid/text/style/ReplacementSpan;

    move-object/from16 v0, v18

    move/from16 v1, v17

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v15, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Landroid/text/style/ReplacementSpan;

    const/4 v3, 0x0

    :goto_2
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v3, v0, :cond_d

    aget-object v24, v19, v3

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v14

    aget-object v24, v19, v3

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v13

    move/from16 v0, v17

    if-ge v14, v0, :cond_b

    move/from16 v17, v14

    :cond_b
    if-le v13, v15, :cond_c

    move v15, v13

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_d
    move/from16 v0, v17

    if-ne v0, v15, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/lang/CharSequence;->length()I

    move-result v24

    move/from16 v0, v24

    move/from16 v1, v17

    if-le v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    check-cast v24, Landroid/text/Spannable;

    add-int/lit8 v25, v17, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v17

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    :cond_e
    :goto_3
    move/from16 v0, v17

    if-le v15, v0, :cond_10

    const/16 v24, 0x1

    goto/16 :goto_0

    :cond_f
    move/from16 v0, v17

    if-eq v0, v15, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    check-cast v24, Landroid/text/Spannable;

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-static {v0, v1, v15}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_3

    :cond_10
    const/16 v24, 0x0

    goto/16 :goto_0

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lez v7, :cond_12

    const/16 v24, 0x1

    goto/16 :goto_0

    :cond_12
    const/16 v24, 0x0

    goto/16 :goto_0

    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getWordIterator()Landroid/text/method/WordIterator;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v9, v8}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Landroid/text/method/WordIterator;->getBeginning(I)I

    move-result v17

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v24

    if-eqz v24, :cond_15

    const/16 v24, -0x1

    move/from16 v0, v17

    move/from16 v1, v24

    if-eq v0, v1, :cond_14

    invoke-virtual/range {v23 .. v23}, Landroid/text/method/WordIterator;->isAfterLetterOrDigit()Z

    move-result v24

    if-eqz v24, :cond_15

    :cond_14
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mLongpressWhiteSpace:Z

    const/16 v24, 0x0

    goto/16 :goto_0

    :cond_15
    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Landroid/text/method/WordIterator;->getEnd(I)I

    move-result v15

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v24

    if-eqz v24, :cond_16

    const/16 v24, -0x1

    move/from16 v0, v24

    if-ne v15, v0, :cond_16

    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mLongpressWhiteSpace:Z

    const/16 v24, 0x0

    goto/16 :goto_0

    :cond_16
    move/from16 v0, v17

    if-ne v0, v15, :cond_8

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/widget/TextView;->getCharRange(I)J

    move-result-wide v11

    invoke-static {v11, v12}, Landroid/widget/TextView;->extractRangeStartFromLong(J)I

    move-result v17

    invoke-static {v11, v12}, Landroid/widget/TextView;->extractRangeEndFromLong(J)I

    move-result v15

    goto/16 :goto_1

    :cond_17
    const/16 v24, 0x0

    goto/16 :goto_0
.end method

.method private sendBeforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5

    iget-object v3, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v2, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/TextWatcher;

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int v3, p2, p3

    const-class v4, Landroid/text/style/SpellCheckSpan;

    invoke-direct {p0, p2, v3, v4}, Landroid/widget/TextView;->removeIntersectingSpans(IILjava/lang/Class;)V

    add-int v3, p2, p3

    const-class v4, Landroid/text/style/SuggestionSpan;

    invoke-direct {p0, p2, v3, v4}, Landroid/widget/TextView;->removeIntersectingSpans(IILjava/lang/Class;)V

    return-void
.end method

.method private sendMetaStatusToIME(II)V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "TextView_MetaStatus"

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "FN"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "CAPS"

    invoke-virtual {v1, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v2, p0, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->sendAppPrivateCommand(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method private setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    instance-of v1, v1, Landroid/text/InputFilter;

    if-eqz v1, :cond_0

    array-length v1, p2

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [Landroid/text/InputFilter;

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, p2

    iget-object v1, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    check-cast v1, Landroid/text/InputFilter;

    aput-object v1, v0, v2

    invoke-interface {p1, v0}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1, p2}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0
.end method

.method private setInputType(IZ)V
    .locals 8

    const/4 v5, 0x0

    const/4 v4, 0x1

    and-int/lit8 v2, p1, 0xf

    if-ne v2, v4, :cond_4

    const v6, 0x8000

    and-int/2addr v6, p1

    if-eqz v6, :cond_0

    move v0, v4

    :goto_0
    and-int/lit16 v4, p1, 0x1000

    if-eqz v4, :cond_1

    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->CHARACTERS:Landroid/text/method/TextKeyListener$Capitalize;

    :goto_1
    invoke-static {v0, v1}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v3

    :goto_2
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setRawInputType(I)V

    if-eqz p2, :cond_a

    iput-object v3, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    :goto_3
    return-void

    :cond_0
    move v0, v5

    goto :goto_0

    :cond_1
    and-int/lit16 v4, p1, 0x2000

    if-eqz v4, :cond_2

    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    goto :goto_1

    :cond_2
    and-int/lit16 v4, p1, 0x4000

    if-eqz v4, :cond_3

    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    goto :goto_1

    :cond_3
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    goto :goto_1

    :cond_4
    const/4 v6, 0x2

    if-ne v2, v6, :cond_7

    and-int/lit16 v6, p1, 0x1000

    if-eqz v6, :cond_5

    move v6, v4

    :goto_4
    and-int/lit16 v7, p1, 0x2000

    if-eqz v7, :cond_6

    :goto_5
    invoke-static {v6, v4}, Landroid/text/method/DigitsKeyListener;->getInstance(ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v3

    goto :goto_2

    :cond_5
    move v6, v5

    goto :goto_4

    :cond_6
    move v4, v5

    goto :goto_5

    :cond_7
    const/4 v4, 0x4

    if-ne v2, v4, :cond_8

    and-int/lit16 v4, p1, 0xff0

    sparse-switch v4, :sswitch_data_0

    invoke-static {}, Landroid/text/method/DateTimeKeyListener;->getInstance()Landroid/text/method/DateTimeKeyListener;

    move-result-object v3

    goto :goto_2

    :sswitch_0
    invoke-static {}, Landroid/text/method/DateKeyListener;->getInstance()Landroid/text/method/DateKeyListener;

    move-result-object v3

    goto :goto_2

    :sswitch_1
    invoke-static {}, Landroid/text/method/TimeKeyListener;->getInstance()Landroid/text/method/TimeKeyListener;

    move-result-object v3

    goto :goto_2

    :cond_8
    const/4 v4, 0x3

    if-ne v2, v4, :cond_9

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v3

    goto :goto_2

    :cond_9
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v3

    goto :goto_2

    :cond_a
    invoke-direct {p0, v3}, Landroid/widget/TextView;->setKeyListenerOnly(Landroid/text/method/KeyListener;)V

    goto :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x20 -> :sswitch_1
    .end sparse-switch
.end method

.method private setInputTypeSingleLine(Z)V
    .locals 2

    iget v0, p0, Landroid/widget/TextView;->mInputType:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_1

    iget v0, p0, Landroid/widget/TextView;->mInputType:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/widget/TextView;->mInputType:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Landroid/widget/TextView;->mInputType:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/widget/TextView;->mInputType:I

    goto :goto_0
.end method

.method private setKeyListenerOnly(Landroid/text/method/KeyListener;)V
    .locals 2

    iput-object p1, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    iget-object v0, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    iget-object v1, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    invoke-direct {p0, v0, v1}, Landroid/widget/TextView;->setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V

    return-void
.end method

.method private setPrimaryClip(Landroid/content/ClipData;)V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sput-wide v1, Landroid/widget/TextView;->sLastCutOrCopyTime:J

    return-void
.end method

.method private setRawTextSize(F)V
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method private setRelativeDrawablesIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 7

    const/4 v4, 0x0

    if-nez p1, :cond_0

    if-eqz p2, :cond_3

    :cond_0
    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_2

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-nez v1, :cond_1

    new-instance v1, Landroid/widget/TextView$Drawables;

    invoke-direct {v1}, Landroid/widget/TextView$Drawables;-><init>()V

    iput-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    :cond_1
    iget-object v0, v1, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {p1, v4, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object p1, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    :goto_1
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {p2, v4, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object p2, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    :cond_2
    :goto_2
    return-void

    :cond_3
    move v2, v4

    goto :goto_0

    :cond_4
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    goto :goto_1

    :cond_5
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    goto :goto_2
.end method

.method private setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;ZI)V
    .locals 22

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual/range {p0 .. p1}, Landroid/widget/TextView;->removeSuggestionSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/TextView;->mUserSetTextScaleX:Z

    if-nez v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    const/high16 v5, 0x3f80

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextScaleX(F)V

    :cond_2
    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/text/Spanned;

    if-eqz v4, :cond_3

    move-object/from16 v4, p1

    check-cast v4, Landroid/text/Spanned;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-interface {v4, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->isFadingMarqueeEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    :goto_0
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    array-length v14, v4

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v14, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    aget-object v4, v4, v12

    const/4 v6, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    sget-object v8, Landroid/widget/TextView;->EMPTY_SPANNED:Landroid/text/Spanned;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p1

    invoke-interface/range {v4 .. v10}, Landroid/text/InputFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v16

    if-eqz v16, :cond_4

    move-object/from16 p1, v16

    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    goto :goto_0

    :cond_6
    if-eqz p3, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result p4

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    const/4 v5, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v4, v5, v1, v6}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    :cond_7
    :goto_2
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_8

    const/4 v15, 0x1

    :cond_8
    sget-object v4, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p2

    if-eq v0, v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-nez v4, :cond_9

    if-eqz v15, :cond_e

    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mEditableFactory:Landroid/text/Editable$Factory;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v19

    move-object/from16 p1, v19

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v4}, Landroid/widget/TextView;->setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v13

    if-eqz v13, :cond_a

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    :cond_a
    :goto_3
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/TextView;->mAutoLinkMask:I

    if-eqz v4, :cond_c

    sget-object v4, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p2

    if-eq v0, v4, :cond_b

    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/text/Spannable;

    if-eqz v4, :cond_11

    :cond_b
    move-object/from16 v17, p1

    check-cast v17, Landroid/text/Spannable;

    :goto_4
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/TextView;->mAutoLinkMask:I

    move-object/from16 v0, v17

    invoke-static {v0, v4}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    move-result v4

    if-eqz v4, :cond_c

    move-object/from16 p1, v17

    sget-object v4, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p2

    if-ne v0, v4, :cond_12

    sget-object p2, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    :goto_5
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/TextView;->mLinksClickable:Z

    if-eqz v4, :cond_c

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->textCanBeSelected()Z

    move-result v4

    if-nez v4, :cond_c

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_c
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-nez v4, :cond_13

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    :goto_6
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v20

    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/text/Spannable;

    if-eqz v4, :cond_18

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/TextView;->mAllowTransformationLengthChange:Z

    if-nez v4, :cond_18

    move-object/from16 v18, p1

    check-cast v18, Landroid/text/Spannable;

    const/4 v4, 0x0

    invoke-interface/range {v18 .. v18}, Landroid/text/Spannable;->length()I

    move-result v5

    const-class v6, Landroid/widget/TextView$ChangeWatcher;

    move-object/from16 v0, v18

    invoke-interface {v0, v4, v5, v6}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Landroid/widget/TextView$ChangeWatcher;

    move-object/from16 v0, v21

    array-length v11, v0

    const/4 v12, 0x0

    :goto_7
    if-ge v12, v11, :cond_14

    aget-object v4, v21, v12

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    :cond_d
    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6, v7}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    goto/16 :goto_2

    :cond_e
    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p2

    if-eq v0, v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v4, :cond_10

    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object p1

    goto/16 :goto_3

    :cond_10
    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/widget/TextView$CharWrapper;

    if-nez v4, :cond_a

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    goto/16 :goto_3

    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v17

    goto/16 :goto_4

    :cond_12
    sget-object p2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    goto/16 :goto_5

    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v4, v0, v1}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    goto/16 :goto_6

    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    if-nez v4, :cond_15

    new-instance v4, Landroid/widget/TextView$ChangeWatcher;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Landroid/widget/TextView$ChangeWatcher;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    const/4 v5, 0x0

    const v6, 0x640012

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-interface {v0, v4, v5, v1, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-eqz v4, :cond_16

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    const/4 v5, 0x0

    const/16 v6, 0x12

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-interface {v0, v4, v5, v1, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-eqz v4, :cond_17

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    const/4 v5, 0x0

    const/16 v6, 0x12

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-interface {v0, v4, v5, v1, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v4, :cond_18

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    move-object/from16 v4, p1

    check-cast v4, Landroid/text/Spannable;

    move-object/from16 v0, p0

    invoke-interface {v5, v0, v4}, Landroid/text/method/MovementMethod;->initialize(Landroid/widget/TextView;Landroid/text/Spannable;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/widget/TextView;->mSelectionMoved:Z

    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v4, :cond_19

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->checkForRelayout()V

    :cond_19
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, v20

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/TextView;->sendOnTextChanged(Ljava/lang/CharSequence;III)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, v20

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    if-eqz v15, :cond_1a

    check-cast p1, Landroid/text/Editable;

    invoke-virtual/range {p0 .. p1}, Landroid/widget/TextView;->sendAfterTextChanged(Landroid/text/Editable;)V

    :cond_1a
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->prepareCursorControllers()V

    return-void
.end method

.method private setTypefaceByIndex(II)V
    .locals 1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-virtual {p0, v0, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    return-void

    :pswitch_0
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    goto :goto_0

    :pswitch_1
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_0

    :pswitch_2
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private shouldAdvanceFocusOnEnter()Z
    .locals 4

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-boolean v3, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-eqz v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    iget v3, p0, Landroid/widget/TextView;->mInputType:I

    and-int/lit8 v3, v3, 0xf

    if-ne v3, v2, :cond_0

    iget v3, p0, Landroid/widget/TextView;->mInputType:I

    and-int/lit16 v0, v3, 0xff0

    const/16 v3, 0x20

    if-eq v0, v3, :cond_3

    const/16 v3, 0x30

    if-ne v0, v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private shouldAdvanceFocusOnTab()Z
    .locals 3

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-nez v2, :cond_1

    iget v2, p0, Landroid/widget/TextView;->mInputType:I

    and-int/lit8 v2, v2, 0xf

    if-ne v2, v1, :cond_1

    iget v2, p0, Landroid/widget/TextView;->mInputType:I

    and-int/lit16 v0, v2, 0xff0

    const/high16 v2, 0x4

    if-eq v0, v2, :cond_0

    const/high16 v2, 0x2

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    :cond_1
    return v1
.end method

.method private shouldBlink()Z
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    if-ltz v0, :cond_0

    if-ne v1, v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private showError()V
    .locals 9

    const/4 v8, 0x1

    const/high16 v7, 0x3f00

    invoke-virtual {p0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_0

    iput-boolean v8, p0, Landroid/widget/TextView;->mShowErrorAfterAttach:Z

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    if-nez v4, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v4, 0x10900a7

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v2, v4, Landroid/util/DisplayMetrics;->density:F

    new-instance v4, Landroid/widget/TextView$ErrorPopup;

    const/high16 v5, 0x4348

    mul-float/2addr v5, v2

    add-float/2addr v5, v7

    float-to-int v5, v5

    const/high16 v6, 0x4248

    mul-float/2addr v6, v2

    add-float/2addr v6, v7

    float-to-int v6, v6

    invoke-direct {v4, v0, v5, v6}, Landroid/widget/TextView$ErrorPopup;-><init>(Landroid/widget/TextView;II)V

    iput-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    iget-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView$ErrorPopup;->setFocusable(Z)V

    iget-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v4, v8}, Landroid/widget/TextView$ErrorPopup;->setInputMethodMode(I)V

    :cond_1
    iget-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v4}, Landroid/widget/TextView$ErrorPopup;->getContentView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    iget-object v5, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    invoke-direct {p0, v4, v5, v3}, Landroid/widget/TextView;->chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    iget-object v4, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-direct {p0}, Landroid/widget/TextView;->getErrorX()I

    move-result v5

    invoke-direct {p0}, Landroid/widget/TextView;->getErrorY()I

    move-result v6

    invoke-virtual {v4, p0, v5, v6}, Landroid/widget/TextView$ErrorPopup;->showAsDropDown(Landroid/view/View;II)V

    iget-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    iget-object v5, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v5}, Landroid/widget/TextView$ErrorPopup;->isAboveAnchor()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView$ErrorPopup;->fixDirection(Z)V

    goto :goto_0
.end method

.method private showQuickAction()V
    .locals 11

    const/4 v10, 0x0

    iget-object v8, p0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    if-nez v8, :cond_0

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, p0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    :cond_0
    iget-object v4, p0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v5

    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v8, :cond_9

    if-eq v6, v5, :cond_9

    if-ltz v6, :cond_9

    if-ltz v5, :cond_9

    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v6}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v7

    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v7}, Landroid/text/Layout;->getLineTop(I)I

    move-result v8

    iput v8, v4, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v0}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v8

    iput v8, v4, Landroid/graphics/Rect;->bottom:I

    if-ne v7, v0, :cond_8

    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v6}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, v4, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v5}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v8

    float-to-int v8, v8

    add-int/lit8 v8, v8, 0x1

    iput v8, v4, Landroid/graphics/Rect;->right:I

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v3

    iget v8, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v8, v8, 0x70

    const/16 v9, 0x30

    if-eq v8, v9, :cond_2

    invoke-direct {p0, v10}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v8

    add-int/2addr v3, v8

    :cond_2
    invoke-virtual {v4, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    :goto_0
    iget-object v8, p0, Landroid/widget/TextView;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v8}, Landroid/widget/TextView;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v8, p0, Landroid/widget/TextView;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v8}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    iget-object v8, p0, Landroid/widget/TextView;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_a

    invoke-virtual {p0}, Landroid/widget/TextView;->hasInsertionController()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->getInsertionController()Landroid/widget/TextView$InsertionPointCursorController;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView$InsertionPointCursorController;->isShowing()Z

    move-result v8

    if-nez v8, :cond_4

    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelectionController()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$SelectionModifierCursorController;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView$SelectionModifierCursorController;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_a

    :cond_4
    iget-object v8, p0, Landroid/widget/TextView;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    neg-int v8, v8

    invoke-virtual {v4, v10, v8}, Landroid/graphics/Rect;->inset(II)V

    :goto_1
    iget v8, p0, Landroid/widget/TextView;->mStatusBarWindowOffset:I

    if-eqz v8, :cond_5

    iget v8, p0, Landroid/widget/TextView;->mStatusBarWindowOffset:I

    invoke-virtual {v4, v10, v8}, Landroid/graphics/Rect;->offset(II)V

    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->hasInsertionController()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {p0}, Landroid/widget/TextView;->getInsertionController()Landroid/widget/TextView$InsertionPointCursorController;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView$InsertionPointCursorController;->isShowing()Z

    move-result v8

    if-nez v8, :cond_7

    :cond_6
    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelectionController()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$SelectionModifierCursorController;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView$SelectionModifierCursorController;->isAllDownAnchor()Z

    move-result v8

    if-eqz v8, :cond_b

    :cond_7
    iget-object v8, p0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/htc/textselection/HtcTextSelectionManager;->setFineTune(Z)V

    :goto_2
    iget-object v8, p0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    iget v9, p0, Landroid/widget/TextView;->mFlags:I

    invoke-virtual {v8, p0, v4, v9}, Lcom/htc/textselection/HtcTextSelectionManager;->showQuickAction(Landroid/widget/TextView;Landroid/graphics/Rect;I)V

    return-void

    :cond_8
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v0}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, v4, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v0}, Landroid/text/Layout;->getLineRight(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, v4, Landroid/graphics/Rect;->right:I

    move v1, v7

    :goto_3
    if-ge v1, v0, :cond_1

    iget v8, v4, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v9, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v9

    float-to-int v9, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, v4, Landroid/graphics/Rect;->left:I

    iget v8, v4, Landroid/graphics/Rect;->right:I

    iget-object v9, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v9, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v9

    float-to-int v9, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v4, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_9
    invoke-virtual {p0, v4}, Landroid/widget/TextView;->getFocusedRect(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewConfiguration;->getScaledEdgeSlop()I

    move-result v8

    neg-int v8, v8

    invoke-virtual {v4, v10, v8}, Landroid/graphics/Rect;->inset(II)V

    goto/16 :goto_1

    :cond_b
    iget-object v8, p0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-virtual {v8, v10}, Lcom/htc/textselection/HtcTextSelectionManager;->setFineTune(Z)V

    goto :goto_2
.end method

.method private startMarquee()V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-direct {p0, v1}, Landroid/widget/TextView;->compressText(F)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v1}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    if-ne v1, v3, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->canMarquee()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    if-ne v1, v3, :cond_4

    const/4 v1, 0x2

    iput v1, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget-object v1, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    iput-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iput-object v0, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_4
    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-nez v1, :cond_5

    new-instance v1, Landroid/widget/TextView$Marquee;

    invoke-direct {v1, p0}, Landroid/widget/TextView$Marquee;-><init>(Landroid/widget/TextView;)V

    iput-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    :cond_5
    iget-boolean v1, p0, Landroid/widget/TextView;->mMarqueeControlledByAp:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    iget v2, p0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView$Marquee;->start(I)V

    goto :goto_0
.end method

.method private startSelectionActionMode()Z
    .locals 8

    const/4 v7, 0x0

    const/4 v2, 0x1

    const/4 v5, 0x0

    iget-object v4, p0, Landroid/widget/TextView;->mSelectionActionMode:Landroid/view/ActionMode;

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->requestFocus()Z

    move-result v4

    if-nez v4, :cond_3

    iget-boolean v4, p0, Landroid/widget/TextView;->mTextIsSelectable:Z

    if-nez v4, :cond_3

    :cond_2
    const-string v4, "TextView"

    const-string v6, "TextView does not support text selection. Action mode cancelled."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-direct {p0}, Landroid/widget/TextView;->selectCurrentWord()Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_4
    invoke-direct {p0}, Landroid/widget/TextView;->extractedTextModeWillBeStarted()Z

    move-result v3

    invoke-direct {p0}, Landroid/widget/TextView;->useHtcTextSelection()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-direct {p0}, Landroid/widget/TextView;->canReplaceActionMode()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-direct {p0}, Landroid/widget/TextView;->useHtcTextSelection()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v6, p0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Spannable;

    invoke-virtual {v6, p0, v4}, Lcom/htc/textselection/HtcTextSelectionManager;->onStartSelect(Landroid/widget/TextView;Landroid/text/Spannable;)V

    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$SelectionModifierCursorController;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-boolean v4, p0, Landroid/widget/TextView;->mTextIsSelectable:Z

    if-nez v4, :cond_a

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$SelectionModifierCursorController;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView$SelectionModifierCursorController;->show()V

    :cond_6
    :goto_1
    invoke-direct {p0}, Landroid/widget/TextView;->prepareQuickActions()V

    invoke-direct {p0}, Landroid/widget/TextView;->showQuickAction()V

    iput-boolean v2, p0, Landroid/widget/TextView;->mIsInQuickActioMode:Z

    :cond_7
    :goto_2
    iget-object v4, p0, Landroid/widget/TextView;->mSelectionActionMode:Landroid/view/ActionMode;

    if-nez v4, :cond_8

    if-nez v3, :cond_8

    iget-boolean v4, p0, Landroid/widget/TextView;->mIsInQuickActioMode:Z

    if-eqz v4, :cond_c

    :cond_8
    :goto_3
    iput-boolean v2, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    if-eqz v2, :cond_9

    iget-boolean v4, p0, Landroid/widget/TextView;->mTextIsSelectable:Z

    if-nez v4, :cond_9

    iget-boolean v4, p0, Landroid/widget/TextView;->mSoftInputShownOnFocus:Z

    if-eqz v4, :cond_9

    iget-boolean v4, p0, Landroid/widget/TextView;->mIsInQuickActioMode:Z

    if-nez v4, :cond_9

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1, p0, v5, v7}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    :cond_9
    move v5, v2

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$SelectionModifierCursorController;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView$SelectionModifierCursorController;->forceShow()V

    goto :goto_1

    :cond_b
    if-nez v3, :cond_7

    new-instance v0, Landroid/widget/TextView$SelectionActionModeCallback;

    invoke-direct {v0, p0, v7}, Landroid/widget/TextView$SelectionActionModeCallback;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/TextView;->mSelectionActionMode:Landroid/view/ActionMode;

    iput-boolean v5, p0, Landroid/widget/TextView;->mIsInQuickActioMode:Z

    goto :goto_2

    :cond_c
    move v2, v5

    goto :goto_3
.end method

.method private startStopMarquee(Z)V
    .locals 2

    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_1

    invoke-direct {p0}, Landroid/widget/TextView;->startMarquee()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->stopMarquee()V

    goto :goto_0
.end method

.method private stopMarquee()V
    .locals 3

    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v1}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/TextView;->mMarqueeControlledByAp:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v1}, Landroid/widget/TextView$Marquee;->stop()V

    :cond_0
    iget v1, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    iput v1, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    iget-object v0, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iput-object v1, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    iput-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_1
    return-void
.end method

.method private textCanBeSelected()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    invoke-interface {v1}, Landroid/text/method/MovementMethod;->canSelectArbitrarily()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Landroid/widget/TextView;->mTextIsSelectable:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Spannable;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private touchPositionIsInSelection()Z
    .locals 9

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    if-ne v4, v3, :cond_0

    :goto_0
    return v7

    :cond_0
    if-le v4, v3, :cond_1

    move v5, v4

    move v4, v3

    move v3, v5

    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v6, Landroid/text/Spannable;

    invoke-static {v6, v4, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$SelectionModifierCursorController;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v6, "TextView"

    const-string/jumbo v8, "selectionController is null"

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Landroid/widget/TextView$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v1

    invoke-virtual {v2}, Landroid/widget/TextView$SelectionModifierCursorController;->getMaxTouchOffset()I

    move-result v0

    if-lt v1, v4, :cond_3

    if-ge v0, v3, :cond_3

    const/4 v6, 0x1

    :goto_1
    move v7, v6

    goto :goto_0

    :cond_3
    move v6, v7

    goto :goto_1
.end method

.method private updateCursorPosition(IIIF)V
    .locals 6

    const/high16 v5, 0x3f00

    iget-object v2, p0, Landroid/widget/TextView;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, p1

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/widget/TextView;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Landroid/widget/TextView;->mCursorDrawableRes:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, p1

    :cond_0
    iget-object v2, p0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    if-nez v2, :cond_1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, p1

    iget-object v3, p0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v2, p0, Landroid/widget/TextView;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sub-float v2, p4, v5

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result p4

    float-to-int v2, p4

    iget-object v3, p0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int v0, v2, v3

    iget-object v2, p0, Landroid/widget/TextView;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, p1

    iget-object v3, p0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v3, p2, v3

    add-int v4, v0, v1

    iget-object v5, p0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, p3

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method private updateCursorsPositions()V
    .locals 10

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v6, 0x2

    iget v5, p0, Landroid/widget/TextView;->mCursorDrawableRes:I

    if-nez v5, :cond_1

    iput v9, p0, Landroid/widget/TextView;->mCursorCount:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v5, v8}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v3}, Landroid/text/Layout;->isLevelBoundary(I)Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v6

    :goto_1
    iput v5, p0, Landroid/widget/TextView;->mCursorCount:I

    move v2, v0

    iget v5, p0, Landroid/widget/TextView;->mCursorCount:I

    if-ne v5, v6, :cond_2

    add-int v5, v4, v0

    shr-int/lit8 v2, v5, 0x1

    :cond_2
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v5

    invoke-direct {p0, v9, v4, v2, v5}, Landroid/widget/TextView;->updateCursorPosition(IIIF)V

    iget v5, p0, Landroid/widget/TextView;->mCursorCount:I

    if-ne v5, v6, :cond_0

    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v3}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result v5

    invoke-direct {p0, v7, v2, v0, v5}, Landroid/widget/TextView;->updateCursorPosition(IIIF)V

    goto :goto_0

    :cond_3
    move v5, v7

    goto :goto_1
.end method

.method private updateSpellCheckSpans(IIZ)V
    .locals 2

    invoke-direct {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    instance-of v0, p0, Landroid/inputmethodservice/ExtractEditText;

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/widget/TextView;->mSpellChecker:Landroid/widget/SpellChecker;

    if-nez v0, :cond_3

    if-nez p3, :cond_0

    iget-boolean v0, p0, Landroid/widget/TextView;->mIsSCTimeoutclosed:Z

    if-eqz v0, :cond_3

    :cond_0
    iget-boolean v0, p0, Landroid/widget/TextView;->mIsMessage:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->setSCtimeout()V

    :cond_1
    iget-boolean v0, p0, Landroid/widget/TextView;->mIsSCTimeoutclosed:Z

    if-eqz v0, :cond_5

    new-instance v0, Landroid/widget/SpellChecker;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/widget/SpellChecker;-><init>(Landroid/widget/TextView;Z)V

    iput-object v0, p0, Landroid/widget/TextView;->mSpellChecker:Landroid/widget/SpellChecker;

    if-lez p1, :cond_2

    iget-object v0, p0, Landroid/widget/TextView;->mSpellChecker:Landroid/widget/SpellChecker;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1, p1}, Landroid/widget/SpellChecker;->spellCheck(II)V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mIsSCTimeoutclosed:Z

    :cond_3
    :goto_0
    iget-object v0, p0, Landroid/widget/TextView;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/TextView;->mSpellChecker:Landroid/widget/SpellChecker;

    invoke-virtual {v0, p1, p2}, Landroid/widget/SpellChecker;->spellCheck(II)V

    :cond_4
    return-void

    :cond_5
    new-instance v0, Landroid/widget/SpellChecker;

    invoke-direct {v0, p0}, Landroid/widget/SpellChecker;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mSpellChecker:Landroid/widget/SpellChecker;

    goto :goto_0
.end method

.method private updateTextColors()V
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iget v2, p0, Landroid/widget/TextView;->mCurTextColor:I

    if-eq v0, v2, :cond_0

    iput v0, p0, Landroid/widget/TextView;->mCurTextColor:I

    const/4 v1, 0x1

    :cond_0
    iget-object v2, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v2, v2, Landroid/text/TextPaint;->linkColor:I

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iput v0, v2, Landroid/text/TextPaint;->linkColor:I

    const/4 v1, 0x1

    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iget v2, p0, Landroid/widget/TextView;->mCurHintTextColor:I

    if-eq v0, v2, :cond_2

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2

    iput v0, p0, Landroid/widget/TextView;->mCurHintTextColor:I

    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_3
    return-void
.end method

.method private useHtcTextSelection()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private viewportToContentHorizontalOffset()I
    .locals 2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    iget v1, p0, Landroid/widget/TextView;->mScrollX:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private viewportToContentVerticalOffset()I
    .locals 3

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    iget v2, p0, Landroid/widget/TextView;->mScrollY:I

    sub-int v0, v1, v2

    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x30

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method


# virtual methods
.method protected SCATDPostScan_internal(Ljava/lang/String;)V
    .locals 3

    iget-object v2, p0, Landroid/widget/TextView;->mSCATDQueue:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/widget/TextView;->mSCATDQueue:Ljava/util/ArrayList;

    :cond_0
    iget-object v2, p0, Landroid/widget/TextView;->mSCATDQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Landroid/widget/TextView;->mSCATDQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Landroid/widget/TextView;->SCATDRemoveSpan(Ljava/lang/String;)V

    goto :goto_0
.end method

.method SCATDProcessQueue()V
    .locals 6

    const/4 v5, 0x1

    iget-object v1, p0, Landroid/widget/TextView;->mSCATDQueue:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mSCATDQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mSCATDHandler:Landroid/widget/TextView$SCATDHandler;

    if-nez v1, :cond_2

    new-instance v1, Landroid/widget/TextView$SCATDHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/TextView$SCATDHandler;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V

    iput-object v1, p0, Landroid/widget/TextView;->mSCATDHandler:Landroid/widget/TextView$SCATDHandler;

    :cond_2
    sget-boolean v1, Landroid/widget/TextView;->mSCATDPROCESSING:Z

    if-nez v1, :cond_0

    sput-boolean v5, Landroid/widget/TextView;->mSCATDPROCESSING:Z

    iget-object v2, p0, Landroid/widget/TextView;->mSCATDHandler:Landroid/widget/TextView$SCATDHandler;

    new-instance v3, Ljava/lang/String;

    iget-object v1, p0, Landroid/widget/TextView;->mSCATDQueue:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5, v3}, Landroid/widget/TextView$SCATDHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TextView;->mSCATDHandler:Landroid/widget/TextView$SCATDHandler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/TextView$SCATDHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method SCATDStop()V
    .locals 2

    iget-object v0, p0, Landroid/widget/TextView;->mSCATDHandler:Landroid/widget/TextView$SCATDHandler;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Landroid/widget/TextView;->mSCATDPROCESSING:Z

    iget-object v0, p0, Landroid/widget/TextView;->mSCATDHandler:Landroid/widget/TextView$SCATDHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView$SCATDHandler;->removeMessages(I)V

    iget-object v0, p0, Landroid/widget/TextView;->mSCATDHandler:Landroid/widget/TextView$SCATDHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView$SCATDHandler;->removeMessages(I)V

    iget-object v0, p0, Landroid/widget/TextView;->mSCATDHandler:Landroid/widget/TextView$SCATDHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView$SCATDHandler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mSCATDQueue:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mSCATDQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    return-void
.end method

.method public SCATDWordAdded(Ljava/lang/String;)V
    .locals 4

    iget-object v1, p0, Landroid/widget/TextView;->mSCATDQueue:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mSCATDQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mSCATDHandler:Landroid/widget/TextView$SCATDHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mSCATDHandler:Landroid/widget/TextView$SCATDHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView$SCATDHandler;->removeMessages(I)V

    iget-object v1, p0, Landroid/widget/TextView;->mSCATDHandler:Landroid/widget/TextView$SCATDHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/TextView$SCATDHandler;->removeMessages(I)V

    iget-object v1, p0, Landroid/widget/TextView;->mSCATDHandler:Landroid/widget/TextView$SCATDHandler;

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView$SCATDHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TextView;->mSCATDHandler:Landroid/widget/TextView$SCATDHandler;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/TextView$SCATDHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public addTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final append(Ljava/lang/CharSequence;)V
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;II)V

    return-void
.end method

.method public append(Ljava/lang/CharSequence;II)V
    .locals 2

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    sget-object v1, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;II)Landroid/text/Editable;

    return-void
.end method

.method areSuggestionsShown()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mSuggestionsPopupWindow:Landroid/widget/TextView$SuggestionsPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mSuggestionsPopupWindow:Landroid/widget/TextView$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/TextView$SuggestionsPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public beginBatchEdit()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    iput-boolean v5, p0, Landroid/widget/TextView;->mInBatchEditControllers:Z

    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    if-eqz v0, :cond_0

    iget v2, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    add-int/lit8 v1, v2, 0x1

    iput v1, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    if-ne v1, v5, :cond_0

    iput-boolean v3, v0, Landroid/widget/TextView$InputMethodState;->mCursorChanged:Z

    iput v3, v0, Landroid/widget/TextView$InputMethodState;->mChangedDelta:I

    iget-boolean v2, v0, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    if-eqz v2, :cond_1

    iput v3, v0, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iput v2, v0, Landroid/widget/TextView$InputMethodState;->mChangedEnd:I

    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->onBeginBatchEdit()V

    :cond_0
    return-void

    :cond_1
    iput v4, v0, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    iput v4, v0, Landroid/widget/TextView$InputMethodState;->mChangedEnd:I

    iput-boolean v3, v0, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    goto :goto_0
.end method

.method public bringPointIntoView(I)Z
    .locals 28

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v24, v0

    if-nez v24, :cond_0

    move v6, v5

    :goto_0
    return v6

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v24, v0

    add-int/lit8 v25, v17, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v24

    invoke-static/range {v24 .. v24}, Landroid/util/FloatMath;->floor(F)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v24

    invoke-static/range {v24 .. v24}, Landroid/util/FloatMath;->ceil(F)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/text/Layout;->getHeight()I

    move-result v15

    sget-object v24, Landroid/widget/TextView$5;->$SwitchMap$android$text$Layout$Alignment:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v25

    aget v24, v24, v25

    packed-switch v24, :pswitch_data_0

    const/4 v11, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mRight:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mLeft:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v25

    sub-int v24, v24, v25

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v25

    sub-int v14, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mBottom:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mTop:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v25

    sub-int v24, v24, v25

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v25

    sub-int v22, v24, v25

    sub-int v24, v4, v19

    div-int/lit8 v13, v24, 0x2

    move/from16 v21, v13

    div-int/lit8 v24, v22, 0x4

    move/from16 v0, v21

    move/from16 v1, v24

    if-le v0, v1, :cond_1

    div-int/lit8 v21, v22, 0x4

    :cond_1
    div-int/lit8 v24, v14, 0x4

    move/from16 v0, v24

    if-le v13, v0, :cond_2

    div-int/lit8 v13, v14, 0x4

    :cond_2
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mScrollX:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollY:I

    move/from16 v20, v0

    sub-int v24, v19, v20

    move/from16 v0, v24

    move/from16 v1, v21

    if-ge v0, v1, :cond_3

    sub-int v20, v19, v21

    :cond_3
    sub-int v24, v4, v20

    sub-int v25, v22, v21

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_4

    sub-int v24, v22, v21

    sub-int v20, v4, v24

    :cond_4
    sub-int v24, v15, v20

    move/from16 v0, v24

    move/from16 v1, v22

    if-ge v0, v1, :cond_5

    sub-int v20, v15, v22

    :cond_5
    rsub-int/lit8 v24, v20, 0x0

    if-lez v24, :cond_6

    const/16 v20, 0x0

    :cond_6
    if-eqz v11, :cond_8

    sub-int v24, v23, v12

    move/from16 v0, v24

    if-ge v0, v13, :cond_7

    sub-int v12, v23, v13

    :cond_7
    sub-int v24, v23, v12

    sub-int v25, v14, v13

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_8

    sub-int v24, v14, v13

    sub-int v12, v23, v24

    :cond_8
    if-gez v11, :cond_f

    sub-int v24, v16, v12

    if-lez v24, :cond_9

    move/from16 v12, v16

    :cond_9
    sub-int v24, v18, v12

    move/from16 v0, v24

    if-ge v0, v14, :cond_a

    sub-int v12, v18, v14

    :cond_a
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollX:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ne v12, v0, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollY:I

    move/from16 v24, v0

    move/from16 v0, v20

    move/from16 v1, v24

    if-eq v0, v1, :cond_c

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v24, v0

    if-nez v24, :cond_18

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v12, v1}, Landroid/widget/TextView;->scrollTo(II)V

    :goto_3
    const/4 v5, 0x1

    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v24

    if-eqz v24, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    if-nez v24, :cond_d

    new-instance v24, Landroid/graphics/Rect;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    add-int/lit8 v25, v23, -0x2

    add-int/lit8 v26, v23, 0x2

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v19

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView;->getInterestingRect(Landroid/graphics/Rect;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollX:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollY:I

    move/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Landroid/graphics/Rect;->offset(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    move-result v24

    if-eqz v24, :cond_e

    const/4 v5, 0x1

    :cond_e
    move v6, v5

    goto/16 :goto_0

    :pswitch_0
    const/4 v11, 0x1

    goto/16 :goto_1

    :pswitch_1
    const/4 v11, -0x1

    goto/16 :goto_1

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v11

    goto/16 :goto_1

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v24

    move/from16 v0, v24

    neg-int v11, v0

    goto/16 :goto_1

    :cond_f
    if-lez v11, :cond_11

    sub-int v24, v18, v12

    move/from16 v0, v24

    if-ge v0, v14, :cond_10

    sub-int v12, v18, v14

    :cond_10
    sub-int v24, v16, v12

    if-lez v24, :cond_a

    move/from16 v12, v16

    goto/16 :goto_2

    :cond_11
    sub-int v24, v18, v16

    move/from16 v0, v24

    if-gt v0, v14, :cond_12

    sub-int v24, v18, v16

    sub-int v24, v14, v24

    div-int/lit8 v24, v24, 0x2

    sub-int v12, v16, v24

    goto/16 :goto_2

    :cond_12
    sub-int v24, v18, v13

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_13

    sub-int v12, v18, v14

    goto/16 :goto_2

    :cond_13
    add-int v24, v16, v13

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_14

    move/from16 v12, v16

    goto/16 :goto_2

    :cond_14
    move/from16 v0, v16

    if-le v0, v12, :cond_15

    move/from16 v12, v16

    goto/16 :goto_2

    :cond_15
    add-int v24, v12, v14

    move/from16 v0, v18

    move/from16 v1, v24

    if-ge v0, v1, :cond_16

    sub-int v12, v18, v14

    goto/16 :goto_2

    :cond_16
    sub-int v24, v23, v12

    move/from16 v0, v24

    if-ge v0, v13, :cond_17

    sub-int v12, v23, v13

    :cond_17
    sub-int v24, v23, v12

    sub-int v25, v14, v13

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_a

    sub-int v24, v14, v13

    sub-int v12, v23, v24

    goto/16 :goto_2

    :cond_18
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v24

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/TextView;->mLastScroll:J

    move-wide/from16 v26, v0

    sub-long v7, v24, v26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollX:I

    move/from16 v24, v0

    sub-int v9, v12, v24

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollY:I

    move/from16 v24, v0

    sub-int v10, v20, v24

    const-wide/16 v24, 0xfa

    cmp-long v24, v7, v24

    if-lez v24, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollX:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollY:I

    move/from16 v26, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2, v9, v10}, Landroid/widget/Scroller;->startScroll(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/Scroller;->getDuration()I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->awakenScrollBars(I)Z

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->invalidate()V

    :goto_4
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/TextView;->mLastScroll:J

    goto/16 :goto_3

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/Scroller;->isFinished()Z

    move-result v24

    if-nez v24, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_1a
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Landroid/widget/TextView;->scrollBy(II)V

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public cancelLongPress()V
    .locals 1

    const/4 v0, 0x1

    invoke-super {p0}, Landroid/view/View;->cancelLongPress()V

    iput-boolean v0, p0, Landroid/widget/TextView;->mIgnoreActionUpEvent:Z

    iput-boolean v0, p0, Landroid/widget/TextView;->mScrolled:Z

    return-void
.end method

.method public clearComposingText()V
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    :cond_0
    return-void
.end method

.method protected computeHorizontalScrollRange()I
    .locals 2

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v0

    float-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-super {p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    move-result v0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iput v0, p0, Landroid/widget/TextView;->mScrollX:I

    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    iput v0, p0, Landroid/widget/TextView;->mScrollY:I

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidateParentCaches()V

    invoke-virtual {p0}, Landroid/widget/TextView;->postInvalidate()V

    :cond_0
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 2

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v0

    goto :goto_0
.end method

.method public debug(I)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/View;->debug(I)V

    invoke-static {p1}, Landroid/widget/TextView;->debugIndent(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "frame={"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/TextView;->mLeft:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/TextView;->mTop:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/TextView;->mRight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/TextView;->mBottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "} scroll={"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/TextView;->mScrollX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/TextView;->mScrollY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "} "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mText=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mLayout width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    const-string v1, "View"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mText=NULL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected deleteText_internal(II)V
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v0, p1, p2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    return-void
.end method

.method public didTouchFocusSelect()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TextView;->mTouchFocusSelected:Z

    return v0
.end method

.method protected disableUpdateCursorPositionByExtras()Z
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->getInputExtras(Z)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const-string v2, "Fusion_update_cursor"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public dispatchFinishTemporaryDetach()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mDispatchTemporaryDetach:Z

    invoke-super {p0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mDispatchTemporaryDetach:Z

    return-void
.end method

.method protected drawableStateChanged()V
    .locals 3

    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    iget-object v2, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    iget-object v2, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    :cond_3
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v1

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_4
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_5
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_6

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_6
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_7

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_7
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_8

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_8
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_9

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_9
    return-void
.end method

.method public enableHtcTextSelection(ZI)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_a

    invoke-static {}, Lcom/htc/textselection/HtcTextSelectionManager;->getInstance()Lcom/htc/textselection/HtcTextSelectionManager;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-virtual {p0}, Landroid/widget/TextView;->getDefaultEditable()Z

    move-result v1

    if-nez v1, :cond_9

    iput-boolean v3, p0, Landroid/widget/TextView;->mIgnoreSetText:Z

    iput v3, p0, Landroid/widget/TextView;->mFlags:I

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/widget/TextView;->mFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/widget/TextView;->mFlags:I

    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_1
    :goto_0
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/widget/TextView;->mFlags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroid/widget/TextView;->mFlags:I

    :cond_2
    and-int/lit8 v1, p2, 0x8

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/widget/TextView;->mFlags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Landroid/widget/TextView;->mFlags:I

    :cond_3
    and-int/lit8 v1, p2, 0x10

    if-eqz v1, :cond_4

    iget v1, p0, Landroid/widget/TextView;->mFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Landroid/widget/TextView;->mFlags:I

    :cond_4
    :goto_1
    invoke-direct {p0}, Landroid/widget/TextView;->prepareCursorControllers()V

    iget-boolean v1, p0, Landroid/widget/TextView;->mInsertionControllerEnabled:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Landroid/widget/TextView;->mSelectionControllerEnabled:Z

    if-eqz v1, :cond_8

    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    :cond_6
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    :cond_7
    iput-object v2, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

    iput-object v2, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    :cond_8
    return-void

    :cond_9
    iget v1, p0, Landroid/widget/TextView;->mFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/widget/TextView;->mFlags:I

    goto :goto_0

    :cond_a
    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    iput-object v2, p0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/TextView;->mFlags:I

    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    instance-of v1, v1, Lcom/htc/textselection/HtcTextSelectionManager;

    if-eqz v1, :cond_4

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_1
.end method

.method public enableHtcTextSelection(ZZ)V
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->enableHtcTextSelection(ZI)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public endBatchEdit()V
    .locals 3

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/TextView;->mInBatchEditControllers:Z

    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    if-eqz v0, :cond_0

    iget v2, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    add-int/lit8 v1, v2, -0x1

    iput v1, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->finishBatchEdit(Landroid/widget/TextView$InputMethodState;)V

    :cond_0
    return-void
.end method

.method ensureEndedBatchEdit()V
    .locals 2

    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    if-eqz v0, :cond_0

    iget v1, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->finishBatchEdit(Landroid/widget/TextView$InputMethodState;)V

    :cond_0
    return-void
.end method

.method public extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z
    .locals 6

    const/4 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/TextView;->extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z

    move-result v0

    return v0
.end method

.method extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z
    .locals 9

    const/4 v6, 0x0

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    const/4 v7, -0x2

    if-eq p2, v7, :cond_c

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gez p2, :cond_4

    const/4 v7, -0x1

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    const/4 p2, 0x0

    move p3, v0

    :cond_0
    :goto_0
    iget v7, p1, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_b

    invoke-interface {v1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    :goto_1
    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    const/16 v8, 0x800

    invoke-static {v7, v8}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v7

    if-eqz v7, :cond_1

    iget v7, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    :cond_1
    iget-boolean v7, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-eqz v7, :cond_2

    iget v7, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    :cond_2
    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v6

    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v6

    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    const/4 v6, 0x1

    :cond_3
    return v6

    :cond_4
    add-int/2addr p3, p4

    instance-of v7, v1, Landroid/text/Spanned;

    if-eqz v7, :cond_7

    move-object v4, v1

    check-cast v4, Landroid/text/Spanned;

    const-class v7, Landroid/text/ParcelableSpan;

    invoke-interface {v4, p2, p3, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    array-length v2, v5

    :cond_5
    :goto_2
    if-lez v2, :cond_7

    add-int/lit8 v2, v2, -0x1

    aget-object v7, v5, v2

    invoke-interface {v4, v7}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    if-ge v3, p2, :cond_6

    move p2, v3

    :cond_6
    aget-object v7, v5, v2

    invoke-interface {v4, v7}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    if-le v3, p3, :cond_5

    move p3, v3

    goto :goto_2

    :cond_7
    iput p2, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    sub-int v7, p3, p4

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    if-le p2, v0, :cond_9

    move p2, v0

    :cond_8
    :goto_3
    if-le p3, v0, :cond_a

    move p3, v0

    goto :goto_0

    :cond_9
    if-gez p2, :cond_8

    const/4 p2, 0x0

    goto :goto_3

    :cond_a
    if-gez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_b
    invoke-static {v1, p2, p3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_c
    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    const-string v7, ""

    iput-object v7, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    goto :goto_1
.end method

.method public findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/CharSequence;",
            "I)V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method finishBatchEdit(Landroid/widget/TextView$InputMethodState;)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->onEndBatchEdit()V

    iget-boolean v0, p1, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Landroid/widget/TextView$InputMethodState;->mSelectionModeChanged:Z

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->updateAfterEdit()V

    invoke-virtual {p0}, Landroid/widget/TextView;->reportExtractedText()Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v0, p1, Landroid/widget/TextView$InputMethodState;->mCursorChanged:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/widget/TextView;->invalidateCursor()V

    goto :goto_0
.end method

.method public forceStartMarquee()V
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Landroid/widget/TextView;->mMarqueeControlledByAp:Z

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-direct {p0, v0}, Landroid/widget/TextView;->compressText(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->canMarquee()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-nez v0, :cond_4

    new-instance v0, Landroid/widget/TextView$Marquee;

    invoke-direct {v0, p0}, Landroid/widget/TextView$Marquee;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    :cond_4
    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    iget v1, p0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView$Marquee;->start(I)V

    goto :goto_0
.end method

.method public forceStopMarquee()V
    .locals 2

    iget-boolean v0, p0, Landroid/widget/TextView;->mMarqueeControlledByAp:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->stop()V

    :cond_0
    return-void
.end method

.method public getAnchorHeight()I
    .locals 1

    iget v0, p0, Landroid/widget/TextView;->mAnchorHeight:I

    return v0
.end method

.method public final getAutoLinkMask()I
    .locals 1

    iget v0, p0, Landroid/widget/TextView;->mAutoLinkMask:I

    return v0
.end method

.method public getBaseline()I
    .locals 4

    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v1, :cond_0

    invoke-super {p0}, Landroid/view/View;->getBaseline()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x30

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method protected getBottomPaddingOffset()I
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/TextView;->mShadowDy:F

    iget v2, p0, Landroid/widget/TextView;->mShadowRadius:F

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getCompoundDrawablePadding()I
    .locals 2

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_0

    iget v1, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCompoundDrawables()[Landroid/graphics/drawable/Drawable;
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v3

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v4

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v5

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v6

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v3

    aput-object v2, v1, v4

    aput-object v2, v1, v5

    aput-object v2, v1, v6

    goto :goto_0
.end method

.method public getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v3

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v4

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v5

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v6

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v3

    aput-object v2, v1, v4

    aput-object v2, v1, v5

    aput-object v2, v1, v6

    goto :goto_0
.end method

.method public getCompoundPaddingBottom()I
    .locals 3

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    :cond_0
    iget v1, p0, Landroid/widget/TextView;->mPaddingBottom:I

    :goto_0
    return v1

    :cond_1
    iget v1, p0, Landroid/widget/TextView;->mPaddingBottom:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public getCompoundPaddingEnd()I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->resolveDrawables()V

    invoke-virtual {p0}, Landroid/widget/TextView;->getResolvedLayoutDirection()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x40000000
        :pswitch_0
    .end packed-switch
.end method

.method public getCompoundPaddingLeft()I
    .locals 3

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    :cond_0
    iget v1, p0, Landroid/widget/TextView;->mPaddingLeft:I

    :goto_0
    return v1

    :cond_1
    iget v1, p0, Landroid/widget/TextView;->mPaddingLeft:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public getCompoundPaddingRight()I
    .locals 3

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    :cond_0
    iget v1, p0, Landroid/widget/TextView;->mPaddingRight:I

    :goto_0
    return v1

    :cond_1
    iget v1, p0, Landroid/widget/TextView;->mPaddingRight:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public getCompoundPaddingStart()I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->resolveDrawables()V

    invoke-virtual {p0}, Landroid/widget/TextView;->getResolvedLayoutDirection()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x40000000
        :pswitch_0
    .end packed-switch
.end method

.method public getCompoundPaddingTop()I
    .locals 3

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    :cond_0
    iget v1, p0, Landroid/widget/TextView;->mPaddingTop:I

    :goto_0
    return v1

    :cond_1
    iget v1, p0, Landroid/widget/TextView;->mPaddingTop:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public final getCurrentHintTextColor()I
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mCurHintTextColor:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/TextView;->mCurTextColor:I

    goto :goto_0
.end method

.method public final getCurrentTextColor()I
    .locals 1

    iget v0, p0, Landroid/widget/TextView;->mCurTextColor:I

    return v0
.end method

.method public getCustomSelectionActionModeCallback()Landroid/view/ActionMode$Callback;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    return-object v0
.end method

.method protected getDefaultEditable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getDefaultMovementMethod()Landroid/text/method/MovementMethod;
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TextView;->mTextIsSelectable:Z

    if-nez v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/htc/textselection/HtcTextSelectionManager;->getInstance()Lcom/htc/textselection/HtcTextSelectionManager;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getEasyUpHardDownOffset(FFI)I
    .locals 10

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v6, -0x1

    :goto_0
    return v6

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr p2, v6

    const/4 v6, 0x0

    invoke-static {v6, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    invoke-static {v6, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr p2, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v6

    float-to-int v7, p2

    invoke-virtual {v6, v7}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v2

    invoke-virtual {v1, p3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v5

    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v4

    sub-int v6, v4, v5

    int-to-double v6, v6

    const-wide/high16 v8, 0x3fe0

    mul-double/2addr v6, v8

    double-to-int v0, v6

    add-int/lit8 v6, v3, 0x1

    if-ne v2, v6, :cond_2

    int-to-float v6, v4

    sub-float v6, p2, v6

    int-to-float v7, v0

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2

    move v2, v3

    :cond_1
    :goto_1
    invoke-direct {p0, v2, p1}, Landroid/widget/TextView;->getOffsetForHorizontal(IF)I

    move-result v6

    goto :goto_0

    :cond_2
    if-lez v3, :cond_1

    if-ne v2, v3, :cond_1

    int-to-float v6, v5

    sub-float v6, p2, v6

    int-to-float v7, v0

    cmpg-float v6, v6, v7

    if-gez v6, :cond_1

    add-int/lit8 v2, v3, -0x1

    goto :goto_1
.end method

.method public getEditableText()Landroid/text/Editable;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEllipsize()Landroid/text/TextUtils$TruncateAt;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    return-object v0
.end method

.method public getError()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getExtendedPaddingBottom()I
    .locals 7

    iget v5, p0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    iget v6, p0, Landroid/widget/TextView;->mMaximum:I

    if-gt v5, v6, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v5

    sub-int/2addr v5, v3

    sub-int v4, v5, v0

    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget v6, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    if-ge v2, v4, :cond_0

    iget v5, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v5, 0x70

    const/16 v5, 0x30

    if-ne v1, v5, :cond_3

    add-int v5, v0, v4

    sub-int v0, v5, v2

    goto :goto_0

    :cond_3
    const/16 v5, 0x50

    if-eq v1, v5, :cond_0

    sub-int v5, v4, v2

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v0, v5

    goto :goto_0
.end method

.method public getExtendedPaddingTop()I
    .locals 7

    iget v5, p0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    iget v6, p0, Landroid/widget/TextView;->mMaximum:I

    if-gt v5, v6, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v5

    sub-int/2addr v5, v3

    sub-int v4, v5, v0

    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget v6, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    if-ge v2, v4, :cond_0

    iget v5, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v5, 0x70

    const/16 v5, 0x30

    if-eq v1, v5, :cond_0

    const/16 v5, 0x50

    if-ne v1, v5, :cond_3

    add-int v5, v3, v4

    sub-int v3, v5, v2

    goto :goto_0

    :cond_3
    sub-int v5, v4, v2

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    goto :goto_0
.end method

.method protected getFadeHeight(Z)I
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getFadeTop(Z)I
    .locals 3

    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x30

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getTopPaddingOffset()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    add-int/2addr v1, v0

    goto :goto_0
.end method

.method public getFilters()[Landroid/text/InputFilter;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 12

    const/4 v11, 0x0

    iget-object v7, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v7, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v5

    if-gez v5, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v6

    if-ltz v6, :cond_2

    if-lt v6, v5, :cond_4

    :cond_2
    iget-object v7, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v7, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    iget-object v7, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v7, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v7

    iput v7, p1, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v7, v0}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    iput v7, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v7, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v7, v5}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v7

    float-to-int v7, v7

    add-int/lit8 v7, v7, -0x2

    iput v7, p1, Landroid/graphics/Rect;->left:I

    iget v7, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v7, v7, 0x4

    iput v7, p1, Landroid/graphics/Rect;->right:I

    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v4

    iget v7, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v7, v7, 0x70

    const/16 v8, 0x30

    if-eq v7, v8, :cond_3

    invoke-direct {p0, v11}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v7

    add-int/2addr v4, v7

    :cond_3
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    :cond_4
    iget-object v7, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v7, v6}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    iget-object v7, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v7, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    iget-object v7, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v7, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v7

    iput v7, p1, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v7, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    iput v7, p1, Landroid/graphics/Rect;->bottom:I

    if-ne v2, v1, :cond_5

    iget-object v7, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v7, v6}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, p1, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v7, v5}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_5
    iget-object v7, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    if-nez v7, :cond_6

    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    iput-object v7, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    :cond_6
    iget-boolean v7, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-eqz v7, :cond_7

    iget-object v7, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    iget-object v7, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget-object v8, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v7, v6, v5, v8}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    iput-boolean v11, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    :cond_7
    sget-object v8, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    monitor-enter v8

    :try_start_0
    iget-object v7, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    sget-object v9, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    const/4 v10, 0x1

    invoke-virtual {v7, v9, v10}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    sget-object v7, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    float-to-int v7, v7

    add-int/lit8 v7, v7, -0x1

    iput v7, p1, Landroid/graphics/Rect;->left:I

    sget-object v7, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    float-to-int v7, v7

    add-int/lit8 v7, v7, 0x1

    iput v7, p1, Landroid/graphics/Rect;->right:I

    monitor-exit v8

    goto/16 :goto_1

    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method public getFreezesText()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TextView;->mFreezesText:Z

    return v0
.end method

.method public getGravity()I
    .locals 1

    iget v0, p0, Landroid/widget/TextView;->mGravity:I

    return v0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    iget-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getHintTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getHorizontallyScrolling()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    return v0
.end method

.method public getImeActionId()I
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget v0, v0, Landroid/widget/TextView$InputContentType;->imeActionId:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImeActionLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v0, v0, Landroid/widget/TextView$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImeOptions()I
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget v0, v0, Landroid/widget/TextView$InputContentType;->imeOptions:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInputExtras(Z)Landroid/os/Bundle;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-nez v1, :cond_2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Landroid/widget/TextView$InputContentType;

    invoke-direct {v1}, Landroid/widget/TextView$InputContentType;-><init>()V

    iput-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    :cond_2
    iget-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v1, v1, Landroid/widget/TextView$InputContentType;->extras:Landroid/os/Bundle;

    if-nez v1, :cond_3

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Landroid/widget/TextView$InputContentType;->extras:Landroid/os/Bundle;

    :cond_3
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v0, v0, Landroid/widget/TextView$InputContentType;->extras:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public getInputType()I
    .locals 1

    iget v0, p0, Landroid/widget/TextView;->mInputType:I

    return v0
.end method

.method getInsertionController()Landroid/widget/TextView$InsertionPointCursorController;
    .locals 3

    const/4 v1, 0x0

    iget-boolean v2, p0, Landroid/widget/TextView;->mInsertionControllerEnabled:Z

    if-nez v2, :cond_0

    :goto_0
    return-object v1

    :cond_0
    iget-object v2, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

    if-nez v2, :cond_1

    new-instance v2, Landroid/widget/TextView$InsertionPointCursorController;

    invoke-direct {v2, p0, v1}, Landroid/widget/TextView$InsertionPointCursorController;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V

    iput-object v2, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

    goto :goto_0
.end method

.method public final getKeyListener()Landroid/text/method/KeyListener;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    return-object v0
.end method

.method public final getLayout()Landroid/text/Layout;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    return-object v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    iget v4, p0, Landroid/widget/TextView;->mCurrentAlpha:I

    int-to-float v4, v4

    const v5, 0x40a95555

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_1

    :cond_0
    :goto_0
    :pswitch_0
    return v3

    :cond_1
    iget-object v4, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v4, v5, :cond_3

    iget v4, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    if-eq v4, v7, :cond_3

    iget-object v4, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v4}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v2, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v2}, Landroid/widget/TextView$Marquee;->shouldDrawLeftFade()Z

    move-result v4

    if-eqz v4, :cond_0

    iget v3, v2, Landroid/widget/TextView$Marquee;->mScroll:F

    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v4

    if-ne v4, v7, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->getResolvedLayoutDirection()I

    move-result v1

    iget v4, p0, Landroid/widget/TextView;->mGravity:I

    invoke-static {v4, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    and-int/lit8 v4, v0, 0x7

    packed-switch v4, :pswitch_data_0

    :cond_3
    :pswitch_1
    invoke-super {p0}, Landroid/view/View;->getLeftFadingEdgeStrength()F

    move-result v3

    goto :goto_0

    :pswitch_2
    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v3, v6}, Landroid/text/Layout;->getLineRight(I)F

    move-result v3

    iget v4, p0, Landroid/widget/TextView;->mRight:I

    iget v5, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v4, v6}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected getLeftPaddingOffset()I
    .locals 4

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    iget v1, p0, Landroid/widget/TextView;->mPaddingLeft:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    iget v2, p0, Landroid/widget/TextView;->mShadowDx:F

    iget v3, p0, Landroid/widget/TextView;->mShadowRadius:F

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getLineBounds(ILandroid/graphics/Rect;)I
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v3, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p2, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, p1, p2}, Landroid/text/Layout;->getLineBounds(ILandroid/graphics/Rect;)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    iget v2, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v2, v2, 0x70

    const/16 v3, 0x30

    if-eq v2, v3, :cond_2

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v2

    add-int/2addr v1, v2

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    invoke-virtual {p2, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    :cond_3
    add-int v2, v0, v1

    goto :goto_0
.end method

.method public getLineCount()I
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLineHeight()I
    .locals 2

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/TextView;->mSpacingMult:F

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/widget/TextView;->mSpacingAdd:F

    add-float/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/FastMath;->round(F)I

    move-result v0

    return v0
.end method

.method public final getLinkTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final getLinksClickable()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TextView;->mLinksClickable:Z

    return v0
.end method

.method public final getMovementMethod()Landroid/text/method/MovementMethod;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    return-object v0
.end method

.method public getOffsetForPosition(FF)I
    .locals 3

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, p2}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v0

    invoke-direct {p0, v0, p1}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    move-result v1

    goto :goto_0
.end method

.method public getPaint()Landroid/text/TextPaint;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public getPaintFlags()I
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFlags()I

    move-result v0

    return v0
.end method

.method public getPrivateImeOptions()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v0, v0, Landroid/widget/TextView$InputContentType;->privateImeOptions:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getResolvedLayoutDirection(Landroid/graphics/drawable/Drawable;)I
    .locals 2

    if-nez p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v1, :cond_2

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_1

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_1

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_1

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_1

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_1

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-ne p1, v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getResolvedLayoutDirection()I

    move-result v1

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->getResolvedLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    goto :goto_0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    iget v6, p0, Landroid/widget/TextView;->mCurrentAlpha:I

    int-to-float v6, v6

    const v7, 0x40a95555

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_0

    :goto_0
    :pswitch_0
    return v5

    :cond_0
    iget-object v6, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v6, v7, :cond_2

    iget v6, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    if-eq v6, v9, :cond_2

    iget-object v6, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v6}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v3, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    iget v5, v3, Landroid/widget/TextView$Marquee;->mMaxFadeScroll:F

    iget v6, v3, Landroid/widget/TextView$Marquee;->mScroll:F

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v6

    if-ne v6, v9, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getResolvedLayoutDirection()I

    move-result v1

    iget v6, p0, Landroid/widget/TextView;->mGravity:I

    invoke-static {v6, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    and-int/lit8 v6, v0, 0x7

    packed-switch v6, :pswitch_data_0

    :cond_2
    :pswitch_1
    invoke-super {p0}, Landroid/view/View;->getRightFadingEdgeStrength()F

    move-result v5

    goto :goto_0

    :pswitch_2
    iget v5, p0, Landroid/widget/TextView;->mRight:I

    iget v6, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v6

    sub-int v4, v5, v6

    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v8}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v2

    int-to-float v5, v4

    sub-float v5, v2, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    goto :goto_0

    :pswitch_3
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v8}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v5

    iget v6, p0, Landroid/widget/TextView;->mRight:I

    iget v7, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected getRightPaddingOffset()I
    .locals 4

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    iget v1, p0, Landroid/widget/TextView;->mPaddingRight:I

    sub-int/2addr v0, v1

    neg-int v0, v0

    const/4 v1, 0x0

    iget v2, p0, Landroid/widget/TextView;->mShadowDx:F

    iget v3, p0, Landroid/widget/TextView;->mShadowRadius:F

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method getSelectionController()Landroid/widget/TextView$SelectionModifierCursorController;
    .locals 2

    iget-boolean v1, p0, Landroid/widget/TextView;->mSelectionControllerEnabled:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    if-nez v1, :cond_1

    new-instance v1, Landroid/widget/TextView$SelectionModifierCursorController;

    invoke-direct {v1, p0}, Landroid/widget/TextView$SelectionModifierCursorController;-><init>(Landroid/widget/TextView;)V

    iput-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    goto :goto_0
.end method

.method public getSelectionEnd()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public getSelectionStart()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public final getSoftInputShownOnFocus()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TextView;->mSoftInputShownOnFocus:Z

    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTextScaleX()F
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v0

    return v0
.end method

.method public getTextServicesLocale()Ljava/util/Locale;
    .locals 5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget-object v3, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "textservices"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/textservice/TextServicesManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/util/Locale;

    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public getTextSize()F
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    return v0
.end method

.method protected getTopPaddingOffset()I
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/TextView;->mShadowDy:F

    iget v2, p0, Landroid/widget/TextView;->mShadowRadius:F

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getTotalPaddingBottom()I
    .locals 2

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/widget/TextView;->getBottomVerticalOffset(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getTotalPaddingEnd()I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingEnd()I

    move-result v0

    return v0
.end method

.method public getTotalPaddingLeft()I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    return v0
.end method

.method public getTotalPaddingRight()I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    return v0
.end method

.method public getTotalPaddingStart()I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingStart()I

    move-result v0

    return v0
.end method

.method public getTotalPaddingTop()I
    .locals 2

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final getTransformationMethod()Landroid/text/method/TransformationMethod;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    return-object v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public getUrls()[Landroid/text/style/URLSpan;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v2, Landroid/text/style/URLSpan;

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    :goto_0
    return-object v0

    :cond_0
    new-array v0, v3, [Landroid/text/style/URLSpan;

    goto :goto_0
.end method

.method public getWordIterator()Landroid/text/method/WordIterator;
    .locals 2

    iget-object v0, p0, Landroid/widget/TextView;->mWordIterator:Landroid/text/method/WordIterator;

    if-nez v0, :cond_0

    new-instance v0, Landroid/text/method/WordIterator;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextServicesLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/method/WordIterator;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Landroid/widget/TextView;->mWordIterator:Landroid/text/method/WordIterator;

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mWordIterator:Landroid/text/method/WordIterator;

    return-object v0
.end method

.method handleTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4

    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    if-eqz v0, :cond_0

    iget v1, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->updateAfterEdit()V

    :cond_1
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    iget v1, v0, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    if-gez v1, :cond_3

    iput p2, v0, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    add-int v1, p2, p3

    iput v1, v0, Landroid/widget/TextView$InputMethodState;->mChangedEnd:I

    :goto_0
    iget v1, v0, Landroid/widget/TextView$InputMethodState;->mChangedDelta:I

    sub-int v2, p4, p3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/TextView$InputMethodState;->mChangedDelta:I

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->sendOnTextChanged(Ljava/lang/CharSequence;III)V

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    return-void

    :cond_3
    iget v1, v0, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    iget v1, v0, Landroid/widget/TextView$InputMethodState;->mChangedEnd:I

    add-int v2, p2, p3

    iget v3, v0, Landroid/widget/TextView$InputMethodState;->mChangedDelta:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/widget/TextView$InputMethodState;->mChangedEnd:I

    goto :goto_0
.end method

.method hasInsertionController()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TextView;->mInsertionControllerEnabled:Z

    return v0
.end method

.method public hasSelection()Z
    .locals 3

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    if-ltz v1, :cond_0

    if-eq v1, v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method hasSelectionController()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TextView;->mSelectionControllerEnabled:Z

    return v0
.end method

.method public hideControllers()V
    .locals 0

    invoke-direct {p0}, Landroid/widget/TextView;->hideCursorControllers()V

    invoke-direct {p0}, Landroid/widget/TextView;->hideSpanControllers()V

    return-void
.end method

.method public hideErrorIfUnchanged()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/TextView;->mErrorWasChanged:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, v1, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 14

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v7, p0, Landroid/widget/TextView;->mScrollX:I

    iget v8, p0, Landroid/widget/TextView;->mScrollY:I

    iget-object v5, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v5, :cond_0

    iget-object v10, v5, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-ne p1, v10, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    iget v10, p0, Landroid/widget/TextView;->mBottom:I

    iget v11, p0, Landroid/widget/TextView;->mTop:I

    sub-int/2addr v10, v11

    sub-int/2addr v10, v0

    sub-int v9, v10, v3

    iget v10, p0, Landroid/widget/TextView;->mPaddingLeft:I

    add-int/2addr v7, v10

    iget v10, v5, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    sub-int v10, v9, v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v3

    add-int/2addr v8, v10

    :cond_0
    :goto_0
    iget v10, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v7

    iget v11, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v11, v8

    iget v12, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v7

    iget v13, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v13, v8

    invoke-virtual {p0, v10, v11, v12, v13}, Landroid/widget/TextView;->invalidate(IIII)V

    :cond_1
    return-void

    :cond_2
    iget-object v10, v5, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-ne p1, v10, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    iget v10, p0, Landroid/widget/TextView;->mBottom:I

    iget v11, p0, Landroid/widget/TextView;->mTop:I

    sub-int/2addr v10, v11

    sub-int/2addr v10, v0

    sub-int v9, v10, v3

    iget v10, p0, Landroid/widget/TextView;->mRight:I

    iget v11, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v10, v11

    iget v11, p0, Landroid/widget/TextView;->mPaddingRight:I

    sub-int/2addr v10, v11

    iget v11, v5, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    sub-int/2addr v10, v11

    add-int/2addr v7, v10

    iget v10, v5, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    sub-int v10, v9, v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v3

    add-int/2addr v8, v10

    goto :goto_0

    :cond_3
    iget-object v10, v5, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-ne p1, v10, :cond_4

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v2

    iget v10, p0, Landroid/widget/TextView;->mRight:I

    iget v11, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v10, v11

    sub-int/2addr v10, v2

    sub-int v6, v10, v1

    iget v10, v5, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    sub-int v10, v6, v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v1

    add-int/2addr v7, v10

    iget v10, p0, Landroid/widget/TextView;->mPaddingTop:I

    add-int/2addr v8, v10

    goto :goto_0

    :cond_4
    iget-object v10, v5, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-ne p1, v10, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v2

    iget v10, p0, Landroid/widget/TextView;->mRight:I

    iget v11, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v10, v11

    sub-int/2addr v10, v2

    sub-int v6, v10, v1

    iget v10, v5, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    sub-int v10, v6, v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v1

    add-int/2addr v7, v10

    iget v10, p0, Landroid/widget/TextView;->mBottom:I

    iget v11, p0, Landroid/widget/TextView;->mTop:I

    sub-int/2addr v10, v11

    iget v11, p0, Landroid/widget/TextView;->mPaddingBottom:I

    sub-int/2addr v10, v11

    iget v11, v5, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    sub-int/2addr v10, v11

    add-int/2addr v8, v10

    goto/16 :goto_0
.end method

.method invalidateRegion(IIZ)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v12, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->invalidate()V

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v12, v8}, Landroid/text/Layout;->getLineTop(I)I

    move-result v10

    if-lez v8, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    add-int/lit8 v13, v8, -0x1

    invoke-virtual {v12, v13}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v12

    sub-int/2addr v10, v12

    :cond_1
    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_2

    move v7, v8

    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v12, v7}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    if-eqz p3, :cond_3

    const/4 v5, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mCursorCount:I

    if-ge v5, v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v12, v12, v5

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v12, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v10, v12}, Ljava/lang/Math;->min(II)I

    move-result v10

    iget v12, v3, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v12}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v7

    goto :goto_1

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v12

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v13

    add-int v11, v12, v13

    if-ne v8, v7, :cond_4

    if-nez p3, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v12

    float-to-int v6, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v12

    float-to-double v12, v12

    const-wide/high16 v14, 0x3ff0

    add-double/2addr v12, v14

    double-to-int v9, v12

    add-int/2addr v6, v4

    add-int/2addr v9, v4

    :goto_3
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mScrollX:I

    add-int/2addr v12, v6

    add-int v13, v11, v10

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView;->mScrollX:I

    add-int/2addr v14, v9

    add-int v15, v11, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/widget/TextView;->invalidate(IIII)V

    goto/16 :goto_0

    :cond_4
    move v6, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getWidth()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v13

    sub-int v9, v12, v13

    goto :goto_3
.end method

.method isInBatchEditMode()Z
    .locals 2

    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    if-eqz v0, :cond_1

    iget v1, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Landroid/widget/TextView;->mInBatchEditControllers:Z

    goto :goto_0
.end method

.method public isInputMethodTarget()Z
    .locals 2

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isPaddingOffsetRequired()Z
    .locals 2

    iget v0, p0, Landroid/widget/TextView;->mShadowRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSuggestionsEnabled()Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget v4, p0, Landroid/widget/TextView;->mInputType:I

    and-int/lit8 v4, v4, 0xf

    if-eq v4, v2, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget v4, p0, Landroid/widget/TextView;->mInputType:I

    const/high16 v5, 0x8

    and-int/2addr v4, v5

    if-gtz v4, :cond_0

    iget v4, p0, Landroid/widget/TextView;->mInputType:I

    const/high16 v5, 0x80

    and-int/2addr v4, v5

    if-lez v4, :cond_3

    move v0, v2

    :goto_1
    iget v4, p0, Landroid/widget/TextView;->mInputType:I

    and-int/lit16 v1, v4, 0xff0

    if-nez v0, :cond_2

    const/16 v4, 0x30

    if-eq v1, v4, :cond_2

    const/16 v4, 0x50

    if-eq v1, v4, :cond_2

    const/16 v4, 0x40

    if-eq v1, v4, :cond_2

    const/16 v4, 0xa0

    if-ne v1, v4, :cond_0

    :cond_2
    move v3, v2

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_1
.end method

.method public isTextSelectable()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TextView;->mTextIsSelectable:Z

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_2
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_3
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_4
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_5
    return-void
.end method

.method public length()I
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method protected makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V
    .locals 32

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->stopMarquee()V

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaximum:I

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/TextView;->mOldMaximum:I

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxMode:I

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/TextView;->mOldMaxMode:I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-gez p1, :cond_0

    const/16 p1, 0x0

    :cond_0
    if-gez p2, :cond_1

    const/16 p2, 0x0

    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->getLayoutAlignment()Landroid/text/Layout$Alignment;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-nez v2, :cond_b

    const/4 v7, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v2, v3, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    if-eqz v2, :cond_c

    const/16 v31, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v2, v3, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    if-nez v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->resolveTextDirection()V

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-ne v8, v2, :cond_d

    const/4 v9, 0x1

    :goto_2
    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p3

    move/from16 v5, p5

    invoke-direct/range {v2 .. v9}, Landroid/widget/TextView;->makeSingleLayout(ILandroid/text/BoringLayout$Metrics;ILandroid/text/Layout$Alignment;ZLandroid/text/TextUtils$TruncateAt;Z)Landroid/text/Layout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v31, :cond_4

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v8, v2, :cond_e

    sget-object v15, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eq v8, v2, :cond_f

    const/16 v16, 0x1

    :goto_4
    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v11, p3

    move/from16 v12, p5

    move-object v13, v6

    move v14, v7

    invoke-direct/range {v9 .. v16}, Landroid/widget/TextView;->makeSingleLayout(ILandroid/text/BoringLayout$Metrics;ILandroid/text/Layout$Alignment;ZLandroid/text/TextUtils$TruncateAt;Z)Landroid/text/Layout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eqz v2, :cond_10

    const/4 v7, 0x1

    :goto_5
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-eqz v2, :cond_8

    if-eqz v7, :cond_5

    move/from16 p2, p1

    :cond_5
    sget-object v2, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    move-object/from16 v0, p4

    if-ne v0, v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    invoke-static {v2, v3, v4, v5}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object p4

    if-eqz p4, :cond_6

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    :cond_6
    if-eqz p4, :cond_17

    move-object/from16 v0, p4

    iget v2, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v0, p2

    if-gt v2, v0, :cond_12

    if-eqz v7, :cond_7

    move-object/from16 v0, p4

    iget v2, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v0, p5

    if-gt v2, v0, :cond_12

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v24, v0

    move/from16 v19, p2

    move-object/from16 v20, v6

    move-object/from16 v23, p4

    invoke-virtual/range {v16 .. v24}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    check-cast v2, Landroid/text/BoringLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    :cond_8
    :goto_7
    if-eqz p6, :cond_9

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->registerForPreDraw()V

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v2, v3, :cond_a

    move/from16 v0, p5

    int-to-float v2, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/widget/TextView;->compressText(F)Z

    move-result v2

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v30, v0

    const/4 v2, -0x2

    move/from16 v0, v30

    if-eq v0, v2, :cond_1a

    const/4 v2, -0x1

    move/from16 v0, v30

    if-eq v0, v2, :cond_1a

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->startMarquee()V

    :cond_a
    :goto_8
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->prepareCursorControllers()V

    return-void

    :cond_b
    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_c
    const/16 v31, 0x0

    goto/16 :goto_1

    :cond_d
    const/4 v9, 0x0

    goto/16 :goto_2

    :cond_e
    sget-object v15, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    goto/16 :goto_3

    :cond_f
    const/16 v16, 0x0

    goto/16 :goto_4

    :cond_10
    const/4 v7, 0x0

    goto/16 :goto_5

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v23, v0

    move/from16 v18, p2

    move-object/from16 v19, v6

    move-object/from16 v22, p4

    invoke-static/range {v16 .. v23}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto :goto_6

    :cond_12
    if-eqz v7, :cond_14

    move-object/from16 v0, p4

    iget v2, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v0, p2

    if-gt v2, v0, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v25, v0

    move/from16 v19, p2

    move-object/from16 v20, v6

    move-object/from16 v23, p4

    move/from16 v26, p5

    invoke-virtual/range {v16 .. v26}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_7

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v24, v0

    move/from16 v18, p2

    move-object/from16 v19, v6

    move-object/from16 v22, p4

    move/from16 v25, p5

    invoke-static/range {v16 .. v25}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_7

    :cond_14
    if-eqz v7, :cond_16

    new-instance v16, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMaximum:I

    move/from16 v29, v0

    :goto_9
    move/from16 v21, p2

    move-object/from16 v22, v6

    move/from16 v28, p5

    invoke-direct/range {v16 .. v29}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_7

    :cond_15
    const v29, 0x7fffffff

    goto :goto_9

    :cond_16
    new-instance v16, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v24, v0

    move/from16 v19, p2

    move-object/from16 v20, v6

    invoke-direct/range {v16 .. v24}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_7

    :cond_17
    if-eqz v7, :cond_19

    new-instance v16, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMaximum:I

    move/from16 v29, v0

    :goto_a
    move/from16 v21, p2

    move-object/from16 v22, v6

    move/from16 v28, p5

    invoke-direct/range {v16 .. v29}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_7

    :cond_18
    const v29, 0x7fffffff

    goto :goto_a

    :cond_19
    new-instance v16, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v24, v0

    move/from16 v19, p2

    move-object/from16 v20, v6

    invoke-direct/range {v16 .. v24}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_7

    :cond_1a
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/TextView;->mRestartMarquee:Z

    goto/16 :goto_8
.end method

.method public moveCursorToVisibleOffset()Z
    .locals 20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    instance-of v0, v0, Landroid/text/Spannable;

    move/from16 v17, v0

    if-nez v17, :cond_0

    const/16 v17, 0x0

    :goto_0
    return v17

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    if-eq v12, v3, :cond_1

    const/16 v17, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/text/Layout;->getLineTop(I)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    add-int/lit8 v18, v8, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mBottom:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mTop:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v18

    sub-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v18

    sub-int v16, v17, v18

    sub-int v17, v2, v13

    div-int/lit8 v15, v17, 0x2

    div-int/lit8 v17, v16, 0x4

    move/from16 v0, v17

    if-le v15, v0, :cond_2

    div-int/lit8 v15, v16, 0x4

    :cond_2
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView;->mScrollY:I

    add-int v17, v14, v15

    move/from16 v0, v17

    if-ge v13, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    add-int v18, v14, v15

    sub-int v19, v2, v13

    add-int v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v8

    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mRight:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mLeft:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v18

    sub-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v18

    sub-int v6, v17, v18

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/TextView;->mScrollX:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    int-to-float v0, v5

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    add-int v18, v6, v5

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v11

    if-ge v7, v11, :cond_6

    move v9, v7

    :goto_2
    if-le v7, v11, :cond_7

    move v4, v7

    :goto_3
    move v10, v12

    if-ge v10, v9, :cond_8

    move v10, v9

    :cond_4
    :goto_4
    if-eq v10, v12, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    check-cast v17, Landroid/text/Spannable;

    move-object/from16 v0, v17

    invoke-static {v0, v10}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    const/16 v17, 0x1

    goto/16 :goto_0

    :cond_5
    add-int v17, v16, v14

    sub-int v17, v17, v15

    move/from16 v0, v17

    if-le v2, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    add-int v18, v16, v14

    sub-int v18, v18, v15

    sub-int v19, v2, v13

    sub-int v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v8

    goto :goto_1

    :cond_6
    move v9, v11

    goto :goto_2

    :cond_7
    move v4, v11

    goto :goto_3

    :cond_8
    if-le v10, v4, :cond_4

    move v10, v4

    goto :goto_4

    :cond_9
    const/16 v17, 0x0

    goto/16 :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iput-boolean v3, p0, Landroid/widget/TextView;->mTemporaryDetach:Z

    iget-boolean v1, p0, Landroid/widget/TextView;->mShowErrorAfterAttach:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->showError()V

    iput-boolean v3, p0, Landroid/widget/TextView;->mShowErrorAfterAttach:Z

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->resolveDrawables()V

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v3, v1, v2}, Landroid/widget/TextView;->updateSpellCheckSpans(IIZ)V

    return-void
.end method

.method public onBeginBatchEdit()V
    .locals 0

    return-void
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    iget v0, p0, Landroid/widget/TextView;->mInputType:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .locals 0

    return-void
.end method

.method public onCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V
    .locals 2

    iget-object v0, p0, Landroid/widget/TextView;->mCorrectionHighlighter:Landroid/widget/TextView$CorrectionHighlighter;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/TextView$CorrectionHighlighter;

    invoke-direct {v0, p0}, Landroid/widget/TextView$CorrectionHighlighter;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mCorrectionHighlighter:Landroid/widget/TextView$CorrectionHighlighter;

    :goto_0
    iget-object v0, p0, Landroid/widget/TextView;->mCorrectionHighlighter:Landroid/widget/TextView$CorrectionHighlighter;

    invoke-virtual {v0, p1}, Landroid/widget/TextView$CorrectionHighlighter;->highlight(Landroid/view/inputmethod/CorrectionInfo;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mCorrectionHighlighter:Landroid/widget/TextView$CorrectionHighlighter;

    const/4 v1, 0x0

    #calls: Landroid/widget/TextView$CorrectionHighlighter;->invalidate(Z)V
    invoke-static {v0, v1}, Landroid/widget/TextView$CorrectionHighlighter;->access$300(Landroid/widget/TextView$CorrectionHighlighter;Z)V

    goto :goto_0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 7

    const/4 v6, 0x0

    iget-boolean v4, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-eqz v4, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    :goto_0
    iget-boolean v4, p0, Landroid/widget/TextView;->mTextIsSelectable:Z

    if-eqz v4, :cond_2

    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    aget v4, v0, v1

    const v5, 0x10100a7

    if-ne v4, v5, :cond_1

    add-int/lit8 v4, v2, -0x1

    new-array v3, v4, [I

    invoke-static {v0, v6, v3, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v1, 0x1

    sub-int v5, v2, v1

    add-int/lit8 v5, v5, -0x1

    invoke-static {v0, v4, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2
    return-object v3

    :cond_0
    add-int/lit8 v4, p1, 0x1

    invoke-super {p0, v4}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    sget-object v4, Landroid/widget/TextView;->MULTILINE_STATE_SET:[I

    invoke-static {v0, v4}, Landroid/widget/TextView;->mergeDrawableStates([I[I)[I

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move-object v3, v0

    goto :goto_2
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 5

    const/high16 v4, 0x4000

    const/high16 v3, 0x800

    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    if-nez v1, :cond_0

    new-instance v1, Landroid/widget/TextView$InputMethodState;

    invoke-direct {v1, p0}, Landroid/widget/TextView$InputMethodState;-><init>(Landroid/widget/TextView;)V

    iput-object v1, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    :cond_0
    iget v1, p0, Landroid/widget/TextView;->mInputType:I

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    iget-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget v1, v1, Landroid/widget/TextView$InputContentType;->imeOptions:I

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    iget-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v1, v1, Landroid/widget/TextView$InputContentType;->privateImeOptions:Ljava/lang/String;

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    iget-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v1, v1, Landroid/widget/TextView$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget v1, v1, Landroid/widget/TextView$InputContentType;->imeActionId:I

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->actionId:I

    iget-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v1, v1, Landroid/widget/TextView$InputContentType;->extras:Landroid/os/Bundle;

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    :goto_0
    const/16 v1, 0x82

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v1, v3

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    :cond_1
    const/16 v1, 0x21

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v2, 0x400

    or-int/2addr v1, v2

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    :cond_2
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v1, v1, 0xff

    if-nez v1, :cond_3

    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_6

    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v1, v1, 0x5

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    :goto_1
    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v1, v4

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    :cond_3
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {v1}, Landroid/widget/TextView;->isMultilineInputType(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v1, v4

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    :cond_4
    iget-object v1, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Editable;

    if-eqz v1, :cond_7

    new-instance v0, Lcom/android/internal/widget/EditableInputConnection;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/EditableInputConnection;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    iget v1, p0, Landroid/widget/TextView;->mInputType:I

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    move-result v1

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    :goto_2
    return-object v0

    :cond_5
    const/4 v1, 0x0

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_0

    :cond_6
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v1, v1, 0x6

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    goto :goto_2
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget v1, p0, Landroid/widget/TextView;->mPreDrawState:I

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iput v3, p0, Landroid/widget/TextView;->mPreDrawState:I

    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Landroid/widget/TextView;->hideError()V

    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    iget-object v2, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    invoke-virtual {v1, v2}, Landroid/widget/TextView$Blink;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    iget-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$InsertionPointCursorController;

    invoke-virtual {v1}, Landroid/widget/TextView$InsertionPointCursorController;->onDetached()V

    :cond_3
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    invoke-virtual {v1}, Landroid/widget/TextView$SelectionModifierCursorController;->onDetached()V

    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->hideControllers()V

    invoke-virtual {p0}, Landroid/widget/TextView;->resetResolvedDrawables()V

    iget-object v1, p0, Landroid/widget/TextView;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/widget/TextView;->mSpellChecker:Landroid/widget/SpellChecker;

    invoke-virtual {v1}, Landroid/widget/SpellChecker;->closeSession()V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/TextView;->mSpellChecker:Landroid/widget/SpellChecker;

    :cond_5
    invoke-direct {p0}, Landroid/widget/TextView;->useHtcTextSelection()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Landroid/widget/TextView;->mIsLongPressed:Z

    if-eqz v1, :cond_6

    iput-boolean v3, p0, Landroid/widget/TextView;->mIsLongPressed:Z

    iput-boolean v3, p0, Landroid/widget/TextView;->mLongpressWhiteSpace:Z

    invoke-direct {p0, v3}, Landroid/widget/TextView;->disallowInterceptTouchEvent(Z)V

    :cond_6
    invoke-virtual {p0}, Landroid/widget/TextView;->SCATDStop()V

    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 4

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    move v1, v2

    :goto_0
    return v1

    :pswitch_1
    invoke-virtual {p0}, Landroid/widget/TextView;->hasInsertionController()Z

    move-result v1

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Landroid/widget/TextView;->requestFocus()Z

    move v1, v2

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v1, v3}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    move v1, v2

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p1}, Landroid/widget/TextView;->onDrop(Landroid/view/DragEvent;)V

    move v1, v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 53

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/TextView;->mPreDrawState:I

    const/4 v11, 0x2

    if-ne v6, v11, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Landroid/widget/TextView;->mPreDrawState:I

    :cond_0
    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/TextView;->mCurrentAlpha:I

    int-to-float v6, v6

    const v11, 0x40a95555

    cmpg-float v6, v6, v11

    if-gtz v6, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->restartMarqueeIfNeeded()V

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v25

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v27

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v26

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollX:I

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollY:I

    move/from16 v45, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mRight:I

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mLeft:I

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mBottom:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mTop:I

    move/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    move-object/from16 v30, v0

    if-eqz v30, :cond_5

    sub-int v6, v18, v47

    sub-int v6, v6, v24

    sub-int v50, v6, v27

    sub-int v6, v43, v39

    sub-int v6, v6, v26

    sub-int v35, v6, v25

    move-object/from16 v0, v30

    iget-object v6, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/TextView;->mPaddingLeft:I

    add-int v6, v6, v44

    int-to-float v6, v6

    add-int v11, v45, v27

    move-object/from16 v0, v30

    iget v12, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    sub-int v12, v50, v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    int-to-float v11, v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v11}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, v30

    iget-object v6, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    move-object/from16 v0, v30

    iget-object v6, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    add-int v6, v44, v43

    sub-int v6, v6, v39

    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/TextView;->mPaddingRight:I

    sub-int/2addr v6, v11

    move-object/from16 v0, v30

    iget v11, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    sub-int/2addr v6, v11

    int-to-float v6, v6

    add-int v11, v45, v27

    move-object/from16 v0, v30

    iget v12, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    sub-int v12, v50, v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    int-to-float v11, v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v11}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, v30

    iget-object v6, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    move-object/from16 v0, v30

    iget-object v6, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    add-int v6, v44, v25

    move-object/from16 v0, v30

    iget v11, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    sub-int v11, v35, v11

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v6, v11

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/TextView;->mPaddingTop:I

    add-int v11, v11, v45

    int-to-float v11, v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v11}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, v30

    iget-object v6, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    move-object/from16 v0, v30

    iget-object v6, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    add-int v6, v44, v25

    move-object/from16 v0, v30

    iget v11, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    sub-int v11, v35, v11

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v6, v11

    int-to-float v6, v6

    add-int v11, v45, v18

    sub-int v11, v11, v47

    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mPaddingBottom:I

    sub-int/2addr v11, v12

    move-object/from16 v0, v30

    iget v12, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    sub-int/2addr v11, v12

    int-to-float v11, v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v11}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, v30

    iget-object v6, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mCurTextColor:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v6, :cond_6

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->assumeLayout()V

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v37, v0

    move/from16 v29, v23

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-eqz v6, :cond_8

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_8

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v6, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mCurHintTextColor:I

    move/from16 v23, v0

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    move-object/from16 v37, v0

    :cond_8
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/text/TextPaint;->setColor(I)V

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/TextView;->mCurrentAlpha:I

    const/16 v11, 0xff

    if-eq v6, v11, :cond_9

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/TextView;->mCurrentAlpha:I

    invoke-static/range {v23 .. v23}, Landroid/graphics/Color;->alpha(I)I

    move-result v12

    mul-int/2addr v11, v12

    div-int/lit16 v11, v11, 0xff

    invoke-virtual {v6, v11}, Landroid/text/TextPaint;->setAlpha(I)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v11

    iput-object v11, v6, Landroid/text/TextPaint;->drawableState:[I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v33

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v32

    add-int v6, v25, v44

    int-to-float v0, v6

    move/from16 v20, v0

    add-int v6, v33, v45

    int-to-float v0, v6

    move/from16 v22, v0

    sub-int v6, v43, v39

    sub-int v6, v6, v26

    add-int v6, v6, v44

    int-to-float v0, v6

    move/from16 v21, v0

    sub-int v6, v18, v47

    sub-int v6, v6, v32

    add-int v6, v6, v45

    int-to-float v0, v6

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/TextView;->mShadowRadius:F

    const/4 v11, 0x0

    cmpl-float v6, v6, v11

    if-eqz v6, :cond_a

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/TextView;->mShadowDx:F

    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mShadowRadius:F

    sub-float/2addr v11, v12

    invoke-static {v6, v11}, Ljava/lang/Math;->min(FF)F

    move-result v6

    add-float v20, v20, v6

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/TextView;->mShadowDx:F

    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mShadowRadius:F

    add-float/2addr v11, v12

    invoke-static {v6, v11}, Ljava/lang/Math;->max(FF)F

    move-result v6

    add-float v21, v21, v6

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/TextView;->mShadowDy:F

    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mShadowRadius:F

    sub-float/2addr v11, v12

    invoke-static {v6, v11}, Ljava/lang/Math;->min(FF)F

    move-result v6

    add-float v22, v22, v6

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/TextView;->mShadowDy:F

    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mShadowRadius:F

    add-float/2addr v11, v12

    invoke-static {v6, v11}, Ljava/lang/Math;->max(FF)F

    move-result v6

    add-float v19, v19, v6

    :cond_a
    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v22

    move/from16 v3, v21

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    const/16 v49, 0x0

    const/16 v48, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v6, v6, 0x70

    const/16 v11, 0x30

    if-eq v6, v11, :cond_b

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v49

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v48

    :cond_b
    move/from16 v0, v25

    int-to-float v6, v0

    add-int v11, v33, v49

    int-to-float v11, v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v11}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getResolvedLayoutDirection()I

    move-result v38

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/TextView;->mGravity:I

    move/from16 v0, v38

    invoke-static {v6, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v11, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v6, v11, :cond_d

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    const/4 v11, 0x1

    if-eq v6, v11, :cond_d

    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/widget/TextView;->mSingleLine:Z

    if-nez v6, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v6

    const/4 v11, 0x1

    if-ne v6, v11, :cond_c

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->canMarquee()Z

    move-result v6

    if-eqz v6, :cond_c

    and-int/lit8 v6, v17, 0x7

    const/4 v11, 0x3

    if-eq v6, v11, :cond_c

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Landroid/text/Layout;->getLineRight(I)F

    move-result v6

    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/TextView;->mRight:I

    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v11, v12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v12

    sub-int/2addr v11, v12

    int-to-float v11, v11

    sub-float/2addr v6, v11

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v11}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v6, :cond_d

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v6}, Landroid/widget/TextView$Marquee;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_d

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    iget v6, v6, Landroid/widget/TextView$Marquee;->mScroll:F

    neg-float v6, v6

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v11}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_d
    const/16 v34, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v6, :cond_12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v6

    if-nez v6, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isPressed()Z

    move-result v6

    if-nez v6, :cond_e

    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/widget/TextView;->mTextIsSelectable:Z

    if-eqz v6, :cond_12

    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v8

    if-ltz v7, :cond_12

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    if-nez v6, :cond_f

    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    :cond_f
    if-ne v7, v8, :cond_1d

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->isCursorVisible()Z

    move-result v6

    if-eqz v6, :cond_1c

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    move-object/from16 v0, p0

    iget-wide v13, v0, Landroid/widget/TextView;->mShowCursor:J

    sub-long/2addr v11, v13

    sget v6, Landroid/widget/TextView;->BLINK_BLACK:I

    sget v13, Landroid/widget/TextView;->BLINK_WHITE:I

    add-int/2addr v6, v13

    int-to-long v13, v6

    rem-long/2addr v11, v13

    sget v6, Landroid/widget/TextView;->BLINK_BLACK:I

    int-to-long v13, v6

    cmp-long v6, v11, v13

    if-gez v6, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-eqz v6, :cond_10

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7, v11, v12}, Landroid/text/Layout;->getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->updateCursorsPositions()V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    :cond_10
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/TextView;->mCurrentAlpha:I

    const/16 v11, 0xff

    if-eq v6, v11, :cond_11

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/TextView;->mCurrentAlpha:I

    invoke-static/range {v29 .. v29}, Landroid/graphics/Color;->alpha(I)I

    move-result v12

    mul-int/2addr v11, v12

    div-int/lit16 v11, v11, 0xff

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_11
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    sget-object v11, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    const/high16 v11, 0x4000

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/TextView;->mCursorCount:I

    if-lez v6, :cond_1b

    const/16 v31, 0x1

    :goto_1
    const/4 v6, 0x1

    sput-boolean v6, Landroid/widget/TextView;->mCurBlinkBlack:Z

    :cond_12
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    move-object/from16 v36, v0

    sub-int v28, v48, v49

    if-eqz v36, :cond_17

    move-object/from16 v0, v36

    iget v6, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    if-nez v6, :cond_17

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v5

    if-eqz v5, :cond_17

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_16

    const/16 v42, 0x0

    move-object/from16 v0, v36

    iget-boolean v6, v0, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    if-nez v6, :cond_13

    move-object/from16 v0, v36

    iget-boolean v6, v0, Landroid/widget/TextView$InputMethodState;->mSelectionModeChanged:Z

    if-eqz v6, :cond_14

    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->reportExtractedText()Z

    move-result v42

    :cond_14
    if-nez v42, :cond_16

    if-eqz v34, :cond_16

    const/4 v9, -0x1

    const/4 v10, -0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v6, v6, Landroid/text/Spannable;

    if-eqz v6, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v46, v0

    check-cast v46, Landroid/text/Spannable;

    invoke-static/range {v46 .. v46}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v9

    invoke-static/range {v46 .. v46}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v10

    :cond_15
    move-object/from16 v6, p0

    invoke-virtual/range {v5 .. v10}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    :cond_16
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Landroid/view/inputmethod/InputMethodManager;->isWatchingCursor(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_17

    if-eqz v34, :cond_17

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->disableUpdateCursorPositionByExtras()Z

    move-result v6

    if-nez v6, :cond_17

    move-object/from16 v0, v36

    iget-object v6, v0, Landroid/widget/TextView$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    const/4 v11, 0x1

    move-object/from16 v0, v34

    invoke-virtual {v0, v6, v11}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    const/4 v6, 0x2

    new-array v0, v6, [I

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    move-object/from16 v0, v36

    iget-object v6, v0, Landroid/widget/TextView$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    const/4 v11, 0x0

    aget v11, v41, v11

    int-to-float v11, v11

    const/4 v12, 0x1

    aget v12, v41, v12

    int-to-float v12, v12

    invoke-virtual {v6, v11, v12}, Landroid/graphics/RectF;->offset(FF)V

    move-object/from16 v0, v36

    iget-object v6, v0, Landroid/widget/TextView$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    const/4 v11, 0x0

    move/from16 v0, v28

    int-to-float v12, v0

    invoke-virtual {v6, v11, v12}, Landroid/graphics/RectF;->offset(FF)V

    move-object/from16 v0, v36

    iget-object v6, v0, Landroid/widget/TextView$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;

    move-object/from16 v0, v36

    iget-object v11, v0, Landroid/widget/TextView$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->left:F

    float-to-double v11, v11

    const-wide/high16 v13, 0x3fe0

    add-double/2addr v11, v13

    double-to-int v11, v11

    move-object/from16 v0, v36

    iget-object v12, v0, Landroid/widget/TextView$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->top:F

    float-to-double v12, v12

    const-wide/high16 v14, 0x3fe0

    add-double/2addr v12, v14

    double-to-int v12, v12

    move-object/from16 v0, v36

    iget-object v13, v0, Landroid/widget/TextView$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->right:F

    float-to-double v13, v13

    const-wide/high16 v15, 0x3fe0

    add-double/2addr v13, v15

    double-to-int v13, v13

    move-object/from16 v0, v36

    iget-object v14, v0, Landroid/widget/TextView$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->bottom:F

    float-to-double v14, v14

    const-wide/high16 v51, 0x3fe0

    add-double v14, v14, v51

    double-to-int v14, v14

    invoke-virtual {v6, v11, v12, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    :try_start_0
    move-object/from16 v0, v36

    iget-object v6, v0, Landroid/widget/TextView$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;

    iget v13, v6, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v36

    iget-object v6, v0, Landroid/widget/TextView$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;

    iget v14, v6, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v36

    iget-object v6, v0, Landroid/widget/TextView$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;

    iget v15, v6, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v36

    iget-object v6, v0, Landroid/widget/TextView$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    move-object v11, v5

    move-object/from16 v12, p0

    invoke-virtual/range {v11 .. v16}, Landroid/view/inputmethod/InputMethodManager;->updateCursor(Landroid/view/View;IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_17
    :goto_3
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mCorrectionHighlighter:Landroid/widget/TextView$CorrectionHighlighter;

    if-eqz v6, :cond_18

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mCorrectionHighlighter:Landroid/widget/TextView$CorrectionHighlighter;

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v6, v0, v1}, Landroid/widget/TextView$CorrectionHighlighter;->draw(Landroid/graphics/Canvas;I)V

    :cond_18
    if-eqz v31, :cond_19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView;->drawCursor(Landroid/graphics/Canvas;I)V

    const/16 v34, 0x0

    :cond_19
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mSelectTxtPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v6, v11}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mSelectTxtPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/TextView;->mTextSelectedColor:I

    invoke-virtual {v6, v11}, Landroid/text/TextPaint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v37

    move-object/from16 v1, p1

    move-object/from16 v2, v34

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v6, v3}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v6, :cond_1a

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v6}, Landroid/widget/TextView$Marquee;->shouldDrawGhost()Z

    move-result v6

    if-eqz v6, :cond_1a

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v6}, Landroid/widget/TextView$Marquee;->getGhostOffset()F

    move-result v6

    float-to-int v6, v6

    int-to-float v6, v6

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v11}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v37

    move-object/from16 v1, p1

    move-object/from16 v2, v34

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v6, v3}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    :cond_1a
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    :cond_1b
    const/16 v31, 0x0

    goto/16 :goto_1

    :cond_1c
    const/4 v6, 0x0

    sput-boolean v6, Landroid/widget/TextView;->mCurBlinkBlack:Z

    goto/16 :goto_2

    :cond_1d
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->textCanBeSelected()Z

    move-result v6

    if-eqz v6, :cond_12

    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-eqz v6, :cond_1e

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v6, v7, v8, v11}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    :cond_1e
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/TextView;->mHighlightColor:I

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/TextView;->mCurrentAlpha:I

    const/16 v11, 0xff

    if-eq v6, v11, :cond_1f

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/TextView;->mCurrentAlpha:I

    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mHighlightColor:I

    invoke-static {v12}, Landroid/graphics/Color;->alpha(I)I

    move-result v12

    mul-int/2addr v11, v12

    div-int/lit16 v11, v11, 0xff

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_1f
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    sget-object v11, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    move-object/from16 v34, v0

    goto/16 :goto_2

    :catch_0
    move-exception v6

    goto/16 :goto_3
.end method

.method public onEditorAction(I)V
    .locals 21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/widget/TextView$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    if-eqz v2, :cond_1

    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/widget/TextView$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-interface {v2, v0, v1, v5}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x5

    move/from16 v0, p1

    if-ne v0, v2, :cond_2

    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v20

    if-eqz v20, :cond_0

    const/4 v2, 0x2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v5, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    const/4 v2, 0x7

    move/from16 v0, p1

    if-ne v0, v2, :cond_3

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v20

    if-eqz v20, :cond_0

    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v5, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    const/4 v2, 0x6

    move/from16 v0, p1

    if-ne v0, v2, :cond_4

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v19

    if-eqz v19, :cond_0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getHandler()Landroid/os/Handler;

    move-result-object v17

    if-eqz v17, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/16 v14, 0x3f3

    new-instance v2, Landroid/view/KeyEvent;

    const/4 v7, 0x0

    const/16 v8, 0x42

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/16 v13, 0x16

    move-wide v5, v3

    invoke-direct/range {v2 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/16 v2, 0x3f3

    new-instance v5, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/4 v10, 0x1

    const/16 v11, 0x42

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v16, 0x16

    move-wide v8, v3

    invoke-direct/range {v5 .. v16}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method

.method public onEndBatchEdit()V
    .locals 0

    return-void
.end method

.method public onFinishTemporaryDetach()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onFinishTemporaryDetach()V

    iget-boolean v0, p0, Landroid/widget/TextView;->mDispatchTemporaryDetach:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mTemporaryDetach:Z

    :cond_0
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 11

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Landroid/widget/TextView;->mTemporaryDetach:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/widget/TextView;->mShowCursor:J

    invoke-virtual {p0}, Landroid/widget/TextView;->ensureEndedBatchEdit()V

    if-eqz p1, :cond_f

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v9

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v8

    iget-boolean v0, p0, Landroid/widget/TextView;->mSelectAllOnFocus:Z

    if-eqz v0, :cond_d

    if-nez v9, :cond_d

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne v8, v0, :cond_d

    move v6, v1

    :goto_1
    iget-boolean v0, p0, Landroid/widget/TextView;->mFrozenWithFocus:Z

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_e

    if-nez v6, :cond_e

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Landroid/widget/TextView;->mCreatedWithASelection:Z

    iget-boolean v0, p0, Landroid/widget/TextView;->mFrozenWithFocus:Z

    if-eqz v0, :cond_1

    if-ltz v9, :cond_1

    if-gez v8, :cond_7

    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->getLastTapPosition()I

    move-result v7

    if-ltz v7, :cond_2

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, v7}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_2
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_3

    iget-object v3, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-interface {v3, p0, v0, p2}, Landroid/text/method/MovementMethod;->onTakeFocus(Landroid/widget/TextView;Landroid/text/Spannable;I)V

    :cond_3
    instance-of v0, p0, Landroid/inputmethodservice/ExtractEditText;

    if-nez v0, :cond_4

    iget-boolean v0, p0, Landroid/widget/TextView;->mSelectionMoved:Z

    if-eqz v0, :cond_5

    :cond_4
    if-ltz v9, :cond_5

    if-ltz v8, :cond_5

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, v9, v8}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    :cond_5
    iget-boolean v0, p0, Landroid/widget/TextView;->mSelectAllOnFocus:Z

    if-eqz v0, :cond_6

    invoke-direct {p0}, Landroid/widget/TextView;->selectAll()Z

    :cond_6
    iput-boolean v1, p0, Landroid/widget/TextView;->mTouchFocusSelected:Z

    :cond_7
    iput-boolean v2, p0, Landroid/widget/TextView;->mFrozenWithFocus:Z

    iput-boolean v2, p0, Landroid/widget/TextView;->mSelectionMoved:Z

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_8

    iget-object v10, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v10, Landroid/text/Spannable;

    invoke-static {v10}, Landroid/text/method/MetaKeyKeyListener;->resetMetaState(Landroid/text/Spannable;)V

    :cond_8
    invoke-direct {p0}, Landroid/widget/TextView;->resetMetaStatus()V

    invoke-direct {p0}, Landroid/widget/TextView;->makeBlinkandHook()V

    iget-object v0, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    if-eqz v0, :cond_9

    invoke-direct {p0}, Landroid/widget/TextView;->showError()V

    :cond_9
    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    invoke-direct {p0}, Landroid/widget/TextView;->useHtcTextSelection()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-virtual {v0}, Lcom/htc/textselection/HtcTextSelectionManager;->dismissMagnifier()V

    iget-object v0, p0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-virtual {v0, v2}, Lcom/htc/textselection/HtcTextSelectionManager;->dismissQuickAction(Z)V

    :cond_a
    iput-boolean v2, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    :cond_b
    :goto_3
    invoke-direct {p0, p1}, Landroid/widget/TextView;->startStopMarquee(Z)V

    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/text/method/TransformationMethod;->onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V

    :cond_c
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    goto/16 :goto_0

    :cond_d
    move v6, v2

    goto/16 :goto_1

    :cond_e
    move v0, v2

    goto/16 :goto_2

    :cond_f
    iget-object v0, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    if-eqz v0, :cond_10

    invoke-direct {p0}, Landroid/widget/TextView;->hideError()V

    :cond_10
    invoke-virtual {p0}, Landroid/widget/TextView;->onEndBatchEdit()V

    instance-of v0, p0, Landroid/inputmethodservice/ExtractEditText;

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v9

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/TextView;->hideControllers()V

    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    invoke-direct {p0}, Landroid/widget/TextView;->useHtcTextSelection()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-virtual {v0}, Lcom/htc/textselection/HtcTextSelectionManager;->dismissMagnifier()V

    iget-object v0, p0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-virtual {v0, v2}, Lcom/htc/textselection/HtcTextSelectionManager;->dismissQuickAction(Z)V

    :cond_11
    iput-boolean v2, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, v9, v8}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    :goto_4
    iget-object v0, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    invoke-virtual {v0}, Landroid/widget/TextView$SelectionModifierCursorController;->resetTouchOffsets()V

    goto :goto_3

    :cond_12
    invoke-virtual {p0}, Landroid/widget/TextView;->hideControllers()V

    invoke-direct {p0}, Landroid/widget/TextView;->downgradeEasyCorrectionSpans()V

    goto :goto_4
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-interface {v1, p0, v0, p1}, Landroid/text/method/MovementMethod;->onGenericMotionEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v2, 0x2000

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->getTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPassword(Z)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Landroid/widget/TextView;->doKeyDown(ILandroid/view/KeyEvent;Landroid/view/KeyEvent;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {p3, v3}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Landroid/widget/TextView;->doKeyDown(ILandroid/view/KeyEvent;Landroid/view/KeyEvent;)I

    move-result v2

    if-nez v2, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v3

    :goto_0
    return v3

    :cond_0
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    add-int/lit8 p2, p2, -0x1

    invoke-static {p3, v4}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    if-ne v2, v4, :cond_4

    iget-object v5, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Editable;

    invoke-interface {v5, p0, v3, p1, v1}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    :goto_1
    add-int/lit8 p2, p2, -0x1

    if-lez p2, :cond_2

    iget-object v5, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Editable;

    invoke-interface {v5, p0, v3, p1, v0}, Landroid/text/method/KeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    iget-object v5, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Editable;

    invoke-interface {v5, p0, v3, p1, v1}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->hideErrorIfUnchanged()V

    :cond_3
    move v3, v4

    goto :goto_0

    :cond_4
    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    iget-object v5, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spannable;

    invoke-interface {v5, p0, v3, p1, v1}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    :goto_2
    add-int/lit8 p2, p2, -0x1

    if-lez p2, :cond_3

    iget-object v5, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spannable;

    invoke-interface {v5, p0, v3, p1, v0}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    iget-object v5, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spannable;

    invoke-interface {v5, p0, v3, p1, v1}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    goto :goto_2
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-ne p1, v3, :cond_4

    iget-object v3, p0, Landroid/widget/TextView;->mSelectionActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_1

    move v0, v2

    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    :cond_0
    :goto_1
    return v2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_4

    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    goto :goto_1

    :cond_4
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_1
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    and-int/lit16 v0, v1, -0x7001

    invoke-static {v0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sparse-switch p1, :sswitch_data_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    :sswitch_0
    invoke-direct {p0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x102001f

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v1

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Landroid/widget/TextView;->canCut()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x1020020

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v1

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Landroid/widget/TextView;->canCopy()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x1020021

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v1

    goto :goto_0

    :sswitch_3
    invoke-direct {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x1020022

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1d -> :sswitch_0
        0x1f -> :sswitch_2
        0x32 -> :sswitch_3
        0x34 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 9

    const/16 v8, 0x82

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v5

    :goto_0
    return v5

    :cond_0
    sparse-switch p1, :sswitch_data_0

    :cond_1
    iget-object v5, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-eqz v5, :cond_a

    iget-object v7, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v5, Landroid/text/Editable;

    invoke-interface {v7, p0, v5, p1, p2}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v2

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-direct {p0, v5}, Landroid/widget/TextView;->checkMetaStatus(Ljava/lang/CharSequence;)V

    if-eqz v2, :cond_a

    move v5, v6

    goto :goto_0

    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_2

    instance-of v5, p0, Landroid/widget/AutoCompleteTextView;

    if-eqz v5, :cond_3

    move-object v0, p0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iget-object v5, v0, Landroid/widget/AutoCompleteTextView;->mPassThroughClickListener:Landroid/widget/AutoCompleteTextView$PassThroughClickListener;

    invoke-virtual {v5}, Landroid/widget/AutoCompleteTextView$PassThroughClickListener;->hasWrap()Z

    move-result v1

    :goto_1
    if-nez v1, :cond_2

    iget-object v5, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v5, v5, Landroid/text/Editable;

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->viewClicked(Landroid/view/inputmethod/InputMethodManager;)V

    if-eqz v3, :cond_2

    iget-boolean v5, p0, Landroid/widget/TextView;->mSoftInputShownOnFocus:Z

    if-eqz v5, :cond_2

    invoke-virtual {v3, p0, v7}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v5

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->hasOnClickListeners()Z

    move-result v1

    goto :goto_1

    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v5, v5, Landroid/widget/TextView$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-boolean v5, v5, Landroid/widget/TextView$InputContentType;->enterDown:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iput-boolean v7, v5, Landroid/widget/TextView$InputContentType;->enterDown:Z

    iget-object v5, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v5, v5, Landroid/widget/TextView$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-interface {v5, p0, v7, p2}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v6

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    and-int/lit8 v5, v5, 0x10

    if-nez v5, :cond_5

    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_5
    instance-of v5, p0, Landroid/widget/AutoCompleteTextView;

    if-eqz v5, :cond_6

    move-object v0, p0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iget-object v5, v0, Landroid/widget/AutoCompleteTextView;->mPassThroughClickListener:Landroid/widget/AutoCompleteTextView$PassThroughClickListener;

    invoke-virtual {v5}, Landroid/widget/AutoCompleteTextView$PassThroughClickListener;->hasWrap()Z

    move-result v1

    :goto_2
    if-nez v1, :cond_9

    invoke-virtual {p0, v8}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {v4, v8}, Landroid/view/View;->requestFocus(I)Z

    move-result v5

    if-nez v5, :cond_7

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_6
    invoke-virtual {p0}, Landroid/widget/TextView;->hasOnClickListeners()Z

    move-result v1

    goto :goto_2

    :cond_7
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move v5, v6

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_9

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v3, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {p0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v3, v5, v7}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_9
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v5

    goto/16 :goto_0

    :cond_a
    iget-object v5, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v5, :cond_b

    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v5, :cond_b

    iget-object v7, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v5, Landroid/text/Spannable;

    invoke-interface {v7, p0, v5, p1, p2}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_b

    move v5, v6

    goto/16 :goto_0

    :cond_b
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v5

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_1
    .end sparse-switch
.end method

.method onLocaleChanged()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TextView;->mWordIterator:Landroid/text/method/WordIterator;

    return-void
.end method

.method protected onMeasure(II)V
    .locals 28

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v25

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v15

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v26

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    sget-object v5, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    sget-object v6, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    if-nez v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->resolveTextDirection()V

    :cond_0
    const/4 v9, -0x1

    const/4 v13, 0x0

    const/high16 v2, 0x4000

    move/from16 v0, v25

    if-ne v0, v2, :cond_7

    move/from16 v23, v26

    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    sub-int v2, v23, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v7

    sub-int v3, v2, v7

    move/from16 v22, v3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    if-eqz v2, :cond_2

    const/high16 v3, 0x10

    :cond_2
    move v4, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-nez v2, :cond_17

    move/from16 v18, v4

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v2, :cond_18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    sub-int v2, v23, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v7

    sub-int v7, v2, v7

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    :cond_3
    :goto_2
    const/high16 v2, 0x4000

    if-ne v15, v2, :cond_21

    move/from16 v14, v16

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    :cond_4
    :goto_3
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v2

    sub-int v2, v14, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v7

    sub-int v21, v2, v7

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/TextView;->mMaximum:I

    if-le v2, v7, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/TextView;->mMaximum:I

    invoke-virtual {v2, v7}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    move/from16 v0, v21

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v21

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    move/from16 v0, v22

    if-gt v2, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    move/from16 v0, v21

    if-le v2, v0, :cond_22

    :cond_6
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->registerForPreDraw()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1, v14}, Landroid/widget/TextView;->setMeasuredDimension(II)V

    return-void

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-static {v2}, Landroid/widget/TextView;->desired(Landroid/text/Layout;)I

    move-result v9

    :cond_8
    if-gez v9, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-static {v2, v7, v8, v0}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v5

    if-eqz v5, :cond_9

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    :cond_9
    :goto_5
    if-eqz v5, :cond_a

    sget-object v2, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    if-ne v5, v2, :cond_13

    :cond_a
    if-gez v9, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v2, v7}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v2

    invoke-static {v2}, Landroid/util/FloatMath;->ceil(F)F

    move-result v2

    float-to-int v9, v2

    :cond_b
    move/from16 v23, v9

    :goto_6
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v11, :cond_c

    iget v2, v11, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    move/from16 v0, v23

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v23

    iget v2, v11, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    move/from16 v0, v23

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v23

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-eqz v2, :cond_11

    const/16 v17, -0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-nez v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-static {v2}, Landroid/widget/TextView;->desired(Landroid/text/Layout;)I

    move-result v17

    :cond_d
    if-gez v17, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    invoke-static {v2, v7, v8}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v6

    if-eqz v6, :cond_e

    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    :cond_e
    if-eqz v6, :cond_f

    sget-object v2, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    if-ne v6, v2, :cond_14

    :cond_f
    if-gez v17, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v2, v7}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v2

    invoke-static {v2}, Landroid/util/FloatMath;->ceil(F)F

    move-result v2

    float-to-int v0, v2

    move/from16 v17, v0

    :cond_10
    move/from16 v18, v17

    :goto_7
    move/from16 v0, v18

    move/from16 v1, v23

    if-le v0, v1, :cond_11

    move/from16 v23, v18

    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v7

    add-int/2addr v2, v7

    add-int v23, v23, v2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxWidthMode:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_15

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxWidth:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v7

    mul-int/2addr v2, v7

    move/from16 v0, v23

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v23

    :goto_8
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMinWidthMode:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_16

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMinWidth:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v7

    mul-int/2addr v2, v7

    move/from16 v0, v23

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v23

    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSuggestedMinimumWidth()I

    move-result v2

    move/from16 v0, v23

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v23

    const/high16 v2, -0x8000

    move/from16 v0, v25

    if-ne v0, v2, :cond_1

    move/from16 v0, v26

    move/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v23

    goto/16 :goto_0

    :cond_12
    const/4 v13, 0x1

    goto/16 :goto_5

    :cond_13
    iget v0, v5, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v23, v0

    goto/16 :goto_6

    :cond_14
    iget v0, v6, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v18, v0

    goto :goto_7

    :cond_15
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxWidth:I

    move/from16 v0, v23

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v23

    goto :goto_8

    :cond_16
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMinWidth:I

    move/from16 v0, v23

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v23

    goto :goto_9

    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v18

    goto/16 :goto_1

    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    if-ne v2, v3, :cond_19

    move/from16 v0, v18

    if-ne v0, v4, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getEllipsizedWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v7

    sub-int v7, v23, v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    if-eq v2, v7, :cond_1d

    :cond_19
    const/16 v19, 0x1

    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-nez v2, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-nez v2, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    if-le v3, v2, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    instance-of v2, v2, Landroid/text/BoringLayout;

    if-nez v2, :cond_1a

    if-eqz v13, :cond_1e

    if-ltz v9, :cond_1e

    if-gt v9, v3, :cond_1e

    :cond_1a
    const/16 v24, 0x1

    :goto_b
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxMode:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/TextView;->mOldMaxMode:I

    if-ne v2, v7, :cond_1b

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaximum:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/TextView;->mOldMaximum:I

    if-eq v2, v7, :cond_1f

    :cond_1b
    const/16 v20, 0x1

    :goto_c
    if-nez v19, :cond_1c

    if-eqz v20, :cond_3

    :cond_1c
    if-nez v20, :cond_20

    if-eqz v24, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v3}, Landroid/text/Layout;->increaseWidthTo(I)V

    goto/16 :goto_2

    :cond_1d
    const/16 v19, 0x0

    goto :goto_a

    :cond_1e
    const/16 v24, 0x0

    goto :goto_b

    :cond_1f
    const/16 v20, 0x0

    goto :goto_c

    :cond_20
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    sub-int v2, v23, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v7

    sub-int v7, v2, v7

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    goto/16 :goto_2

    :cond_21
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->getDesiredHeight()I

    move-result v10

    move v14, v10

    move-object/from16 v0, p0

    iput v10, v0, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    const/high16 v2, -0x8000

    if-ne v15, v2, :cond_4

    move/from16 v0, v16

    invoke-static {v10, v0}, Ljava/lang/Math;->min(II)I

    move-result v14

    goto/16 :goto_3

    :cond_22
    const/4 v2, 0x0

    const/4 v7, 0x0

    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Landroid/widget/TextView;->scrollTo(II)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception v12

    const-string v2, "TextView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mLayout="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mText="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->getTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public onPreDraw()Z
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget v4, p0, Landroid/widget/TextView;->mPreDrawState:I

    if-eq v4, v2, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v4, :cond_2

    invoke-direct {p0}, Landroid/widget/TextView;->assumeLayout()V

    :cond_2
    const/4 v0, 0x0

    iget-object v4, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v4, :cond_8

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    iget-object v4, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    invoke-virtual {v4}, Landroid/widget/TextView$SelectionModifierCursorController;->isSelectionStartDragged()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    :cond_3
    if-gez v1, :cond_4

    iget v4, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v4, v4, 0x70

    const/16 v5, 0x50

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v1

    :cond_4
    if-ltz v1, :cond_5

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->bringPointIntoView(I)Z

    move-result v0

    :cond_5
    :goto_1
    iget-boolean v4, p0, Landroid/widget/TextView;->mCreatedWithASelection:Z

    if-eqz v4, :cond_6

    invoke-direct {p0}, Landroid/widget/TextView;->startSelectionActionMode()Z

    iput-boolean v3, p0, Landroid/widget/TextView;->mCreatedWithASelection:Z

    :cond_6
    instance-of v4, p0, Landroid/inputmethodservice/ExtractEditText;

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-direct {p0}, Landroid/widget/TextView;->startSelectionActionMode()Z

    :cond_7
    const/4 v4, 0x2

    iput v4, p0, Landroid/widget/TextView;->mPreDrawState:I

    if-eqz v0, :cond_0

    move v2, v3

    goto :goto_0

    :cond_8
    invoke-direct {p0}, Landroid/widget/TextView;->bringTextIntoView()Z

    move-result v0

    goto :goto_1
.end method

.method public onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 23

    const-string v4, "com.htc.android.htcime.adjustMetaState"

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz p2, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Spannable;

    invoke-static {v4}, Landroid/text/method/MetaKeyKeyListener;->resetMetaState(Landroid/text/Spannable;)V

    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/widget/TextView;->checkMetaStatus(Ljava/lang/CharSequence;)V

    const/4 v4, 0x1

    :goto_1
    return v4

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Spannable;

    invoke-static {v4}, Landroid/text/method/MetaKeyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    goto :goto_0

    :cond_1
    const-string v4, "com.htc.android.htcime.touchPoint"

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz p2, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-string v4, "POINT_X"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v21

    const-string v4, "POINT_Y"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v22

    const-string v4, "MOTION"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v4, "LONG_PRESS"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v18

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->getOwnerViewRoot()Landroid/view/ViewRootImpl;

    move-result-object v20

    if-eqz v20, :cond_3

    if-eqz v18, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->performLongClick()Z

    :goto_2
    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x1

    invoke-static {v4}, Landroid/view/MotionEvent$PointerProperties;->createArray(I)[Landroid/view/MotionEvent$PointerProperties;

    move-result-object v8

    const/4 v4, 0x0

    aget-object v4, v8, v4

    const/4 v5, 0x0

    iput v5, v4, Landroid/view/MotionEvent$PointerProperties;->id:I

    const/4 v4, 0x1

    invoke-static {v4}, Landroid/view/MotionEvent$PointerCoords;->createArray(I)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v9

    const/4 v4, 0x0

    aget-object v4, v9, v4

    move/from16 v0, v21

    iput v0, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    const/4 v4, 0x0

    aget-object v4, v9, v4

    move/from16 v0, v22

    iput v0, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    const/4 v4, 0x0

    aget-object v4, v9, v4

    const/high16 v5, 0x3f80

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    const/4 v4, 0x0

    aget-object v4, v9, v4

    const/high16 v5, 0x3f80

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->size:F

    const/4 v7, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f80

    const/high16 v13, 0x3f80

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x2

    const/16 v17, 0x0

    move-wide v4, v2

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v19

    const/16 v4, 0x3ee

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v4, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v10, v11}, Landroid/view/ViewRootImpl;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_2

    :cond_3
    const-string v4, "TextView"

    const-string/jumbo v5, "onPrivateIMECommand, rootView is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_3
    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_5
    const-string v4, "com.htc.android.htcime.rescanword"

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "word"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->SCATDPostScan_internal(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 7

    instance-of v4, p1, Landroid/widget/TextView$SavedState;

    if-nez v4, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v3, p1

    check-cast v3, Landroid/widget/TextView$SavedState;

    invoke-virtual {v3}, Landroid/widget/TextView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v4

    invoke-super {p0, v4}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v4, v3, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    if-eqz v4, :cond_2

    iget-object v4, v3, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget v4, v3, Landroid/widget/TextView$SavedState;->selStart:I

    if-ltz v4, :cond_5

    iget v4, v3, Landroid/widget/TextView$SavedState;->selEnd:I

    if-ltz v4, :cond_5

    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v4, v4, Landroid/text/Spannable;

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget v4, v3, Landroid/widget/TextView$SavedState;->selStart:I

    if-gt v4, v1, :cond_3

    iget v4, v3, Landroid/widget/TextView$SavedState;->selEnd:I

    if-le v4, v1, :cond_6

    :cond_3
    const-string v2, ""

    iget-object v4, v3, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    if-eqz v4, :cond_4

    const-string v2, "(restored) "

    :cond_4
    const-string v4, "TextView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Saved cursor position "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/widget/TextView$SavedState;->selStart:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/widget/TextView$SavedState;->selEnd:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " out of range for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "text "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    iget-object v4, v3, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    if-eqz v4, :cond_0

    iget-object v0, v3, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    new-instance v4, Landroid/widget/TextView$1;

    invoke-direct {v4, p0, v0}, Landroid/widget/TextView$1;-><init>(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_6
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Spannable;

    iget v5, v3, Landroid/widget/TextView$SavedState;->selStart:I

    iget v6, v3, Landroid/widget/TextView$SavedState;->selEnd:I

    invoke-static {v4, v5, v6}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    iget-boolean v4, v3, Landroid/widget/TextView$SavedState;->frozenWithFocus:Z

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/widget/TextView;->mFrozenWithFocus:Z

    goto :goto_1
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 13

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v9

    iget-boolean v5, p0, Landroid/widget/TextView;->mFreezesText:Z

    const/4 v8, 0x0

    const/4 v2, 0x0

    iget-object v10, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v10, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    if-gez v8, :cond_0

    if-ltz v2, :cond_1

    :cond_0
    const/4 v5, 0x1

    :cond_1
    if-eqz v5, :cond_5

    new-instance v7, Landroid/widget/TextView$SavedState;

    invoke-direct {v7, v9}, Landroid/widget/TextView$SavedState;-><init>(Landroid/os/Parcelable;)V

    iput v8, v7, Landroid/widget/TextView$SavedState;->selStart:I

    iput v2, v7, Landroid/widget/TextView$SavedState;->selEnd:I

    iget-object v10, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v10, v10, Landroid/text/Spanned;

    if-eqz v10, :cond_4

    new-instance v6, Landroid/text/SpannableString;

    iget-object v10, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-direct {v6, v10}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v10, 0x0

    invoke-interface {v6}, Landroid/text/Spannable;->length()I

    move-result v11

    const-class v12, Landroid/widget/TextView$ChangeWatcher;

    invoke-interface {v6, v10, v11, v12}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/widget/TextView$ChangeWatcher;

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    invoke-interface {v6, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v6}, Landroid/widget/TextView;->removeMisspelledSpans(Landroid/text/Spannable;)V

    iget-object v10, p0, Landroid/widget/TextView;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    invoke-interface {v6, v10}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    iput-object v6, v7, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v10

    if-eqz v10, :cond_3

    if-ltz v8, :cond_3

    if-ltz v2, :cond_3

    const/4 v10, 0x1

    iput-boolean v10, v7, Landroid/widget/TextView$SavedState;->frozenWithFocus:Z

    :cond_3
    iget-object v10, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    iput-object v10, v7, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    :goto_2
    return-object v7

    :cond_4
    iget-object v10, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_5
    move-object v7, v9

    goto :goto_2
.end method

.method protected onScrollChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onScrollChanged(IIII)V

    iget-object v0, p0, Landroid/widget/TextView;->mPositionListener:Landroid/widget/TextView$PositionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mPositionListener:Landroid/widget/TextView$PositionListener;

    invoke-virtual {v0}, Landroid/widget/TextView$PositionListener;->onScrollChanged()V

    :cond_0
    return-void
.end method

.method protected onSelectionChanged(II)V
    .locals 1

    const/16 v0, 0x2000

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    return-void
.end method

.method protected onSetAlpha(I)Z
    .locals 2

    invoke-virtual {p0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_6

    iput p1, p0, Landroid/widget/TextView;->mCurrentAlpha:I

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_5

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_2
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_3
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_4
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_5
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_6
    const/16 v1, 0xff

    iput v1, p0, Landroid/widget/TextView;->mCurrentAlpha:I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onStartTemporaryDetach()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onStartTemporaryDetach()V

    iget-boolean v0, p0, Landroid/widget/TextView;->mDispatchTemporaryDetach:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mTemporaryDetach:Z

    :cond_0
    iget v0, p0, Landroid/widget/TextView;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->hideControllers()V

    :cond_1
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextContextMenuItem(I)Z
    .locals 14

    const/4 v4, 0x0

    iget-object v11, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v11

    if-nez v11, :cond_0

    iget-boolean v11, p0, Landroid/widget/TextView;->mTextIsSelectable:Z

    if-eqz v11, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v5

    const/4 v11, 0x0

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/4 v11, 0x0

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v3

    :cond_1
    sparse-switch p1, :sswitch_data_0

    const/4 v11, 0x0

    :goto_0
    return v11

    :sswitch_0
    iget-object v11, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v11, Landroid/text/Spanned;

    const-class v12, Landroid/text/style/URLSpan;

    invoke-interface {v11, v4, v3, v12}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/text/style/URLSpan;

    array-length v11, v10

    const/4 v12, 0x1

    if-lt v11, v12, :cond_4

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_1
    array-length v11, v10

    if-ge v2, v11, :cond_3

    const/4 v11, 0x0

    aget-object v11, v10, v11

    invoke-virtual {v11}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    if-nez v0, :cond_2

    const/4 v11, 0x0

    invoke-static {v11, v9}, Landroid/content/ClipData;->newRawUri(Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v0

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    new-instance v11, Landroid/content/ClipData$Item;

    invoke-direct {v11, v9}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0, v11}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_4

    invoke-direct {p0, v0}, Landroid/widget/TextView;->setPrimaryClip(Landroid/content/ClipData;)V

    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    const/4 v11, 0x1

    goto :goto_0

    :sswitch_1
    iget-object v11, p0, Landroid/widget/TextView;->mSelectionActionMode:Landroid/view/ActionMode;

    if-eqz v11, :cond_5

    invoke-direct {p0}, Landroid/widget/TextView;->selectCurrentWord()Z

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$SelectionModifierCursorController;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView$SelectionModifierCursorController;->show()V

    :goto_3
    const/4 v11, 0x1

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Landroid/widget/TextView;->startSelectionActionMode()Z

    goto :goto_3

    :sswitch_2
    iget-object v11, p0, Landroid/widget/TextView;->mSelectionActionMode:Landroid/view/ActionMode;

    if-eqz v11, :cond_6

    invoke-direct {p0}, Landroid/widget/TextView;->selectCurrentWord()Z

    :goto_4
    const/4 v11, 0x1

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Landroid/widget/TextView;->startSelectionActionMode()Z

    goto :goto_4

    :sswitch_3
    invoke-direct {p0}, Landroid/widget/TextView;->selectAll()Z

    iget-object v11, p0, Landroid/widget/TextView;->mSelectionActionMode:Landroid/view/ActionMode;

    if-nez v11, :cond_8

    iget v11, p0, Landroid/widget/TextView;->mFlags:I

    and-int/lit8 v11, v11, 0x1

    if-nez v11, :cond_7

    iget-boolean v11, p0, Landroid/widget/TextView;->mLongpressWhiteSpace:Z

    if-eqz v11, :cond_8

    :cond_7
    invoke-direct {p0}, Landroid/widget/TextView;->startSelectionActionMode()Z

    :cond_8
    const/4 v11, 0x1

    goto :goto_0

    :sswitch_4
    invoke-direct {p0, v4, v3}, Landroid/widget/TextView;->paste(II)V

    const/4 v11, 0x1

    goto :goto_0

    :sswitch_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "HTC_MODIFIED_CLIPDATA="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v4, v3}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-direct {p0, v12}, Landroid/widget/TextView;->removeStyledAnnotationSpan(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-direct {p0, v12}, Landroid/widget/TextView;->removeReplacementSpan(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v11

    invoke-direct {p0, v11}, Landroid/widget/TextView;->setPrimaryClip(Landroid/content/ClipData;)V

    invoke-virtual {p0, v4, v3}, Landroid/widget/TextView;->deleteText_internal(II)V

    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    const/4 v11, 0x1

    goto/16 :goto_0

    :sswitch_6
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "HTC_MODIFIED_CLIPDATA="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v4, v3}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-direct {p0, v12}, Landroid/widget/TextView;->removeStyledAnnotationSpan(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-direct {p0, v12}, Landroid/widget/TextView;->removeReplacementSpan(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v11

    invoke-direct {p0, v11}, Landroid/widget/TextView;->setPrimaryClip(Landroid/content/ClipData;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    const/4 v11, 0x1

    goto/16 :goto_0

    :sswitch_7
    iget-object v11, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v11, v4, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    if-eqz v7, :cond_9

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_9

    new-instance v2, Landroid/content/Intent;

    const-string v11, "android.intent.action.WEB_SEARCH"

    invoke-direct {v2, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v11, 0x1000

    invoke-virtual {v2, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v11, "new_search"

    const/4 v12, 0x1

    invoke-virtual {v2, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v11, "query"

    invoke-virtual {v2, v11, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v11, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    :goto_5
    const/4 v11, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string v11, "HtcTextSelection"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :sswitch_8
    iget-object v11, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v11, v4, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-string v11, "com.htc.app.SHARE"

    invoke-direct {v2, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v11, 0x1000

    invoke-virtual {v2, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v11, "SHARED_CONTENT"

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v11, "ORIGINAL_URL"

    const-string v12, ""

    invoke-virtual {v2, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v11, "LONG_URL"

    const-string v12, ""

    invoke-virtual {v2, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v11, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_6
    const/4 v11, 0x1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    nop

    :sswitch_data_0
    .sparse-switch
        0x54d -> :sswitch_7
        0x54e -> :sswitch_8
        0x102001f -> :sswitch_3
        0x1020020 -> :sswitch_5
        0x1020021 -> :sswitch_6
        0x1020022 -> :sswitch_4
        0x1020023 -> :sswitch_0
        0x1020028 -> :sswitch_1
        0x102002d -> :sswitch_2
    .end sparse-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 23

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->hasSelectionController()Z

    move-result v19

    if-eqz v19, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$SelectionModifierCursorController;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView$SelectionModifierCursorController;->onTouchEvent(Landroid/view/MotionEvent;)V

    :cond_0
    if-nez v4, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mLastDownPositionX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mLastDownPositionY:F

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mTouchFocusSelected:Z

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mIgnoreActionUpEvent:Z

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mIsLongPressed:Z

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mScrolled:Z

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mLongpressWhiteSpace:Z

    :cond_1
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mDiscardNextActionUp:Z

    move/from16 v19, v0

    if-eqz v19, :cond_9

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v4, v0, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIsLongPressed:Z

    move/from16 v19, v0

    if-eqz v19, :cond_7

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->useHtcTextSelection()Z

    move-result v19

    if-eqz v19, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/htc/textselection/HtcTextSelectionManager;->dismissMagnifier()V

    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isInputMethodTarget()Z

    move-result v19

    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    instance-of v0, v0, Landroid/text/Spannable;

    move/from16 v19, v0

    if-eqz v19, :cond_2

    const/4 v6, -0x1

    const/4 v5, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    check-cast v16, Landroid/text/Spannable;

    invoke-static/range {v16 .. v16}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v6

    invoke-static/range {v16 .. v16}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v5

    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v0, v6, :cond_2

    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v0, v5, :cond_2

    move-object/from16 v0, v16

    invoke-static {v0, v6, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    const/4 v7, 0x1

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mTextIsSelectable:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v19

    if-nez v19, :cond_4

    :cond_3
    if-eqz v7, :cond_5

    :cond_4
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    check-cast v19, Landroid/text/Spannable;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/htc/textselection/HtcTextSelectionManager;->onStartSelect(Landroid/widget/TextView;Landroid/text/Spannable;)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->hasSelectionController()Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$SelectionModifierCursorController;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView$SelectionModifierCursorController;->show()V

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mTextIsSelectable:Z

    move/from16 v19, v0

    if-eqz v19, :cond_6

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->startSelectionActionMode()Z

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/htc/textselection/HtcTextSelectionManager;->stopAutoScroll()V

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/widget/TextView;->disallowInterceptTouchEvent(Z)V

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mIsLongPressed:Z

    :cond_7
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mDiscardNextActionUp:Z

    :cond_8
    :goto_0
    return v17

    :cond_9
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v4, v0, :cond_13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->shouldIgnoreActionUpEvent()Z

    move-result v19

    if-nez v19, :cond_13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v19

    if-eqz v19, :cond_13

    const/16 v18, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->isMessageLink:Z

    move/from16 v19, v0

    if-eqz v19, :cond_a

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v4, v0, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIsLongPressed:Z

    move/from16 v19, v0

    if-nez v19, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mFlags:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x1

    if-eqz v19, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mFlags:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x8

    if-eqz v19, :cond_a

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    move-object/from16 v19, v0

    if-nez v19, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v19

    if-eqz v19, :cond_8

    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v19

    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    instance-of v0, v0, Landroid/text/Spannable;

    move/from16 v19, v0

    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v19, v0

    if-eqz v19, :cond_8

    const/4 v8, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    move-object/from16 v19, v0

    if-eqz v19, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIsLongPressed:Z

    move/from16 v19, v0

    if-nez v19, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    check-cast v19, Landroid/text/Spannable;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object/from16 v3, p1

    invoke-interface {v0, v1, v2, v3}, Landroid/text/method/MovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v19

    or-int v8, v8, v19

    :cond_c
    if-eqz v18, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mLinksClickable:Z

    move/from16 v19, v0

    if-eqz v19, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mAutoLinkMask:I

    move/from16 v19, v0

    if-eqz v19, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mTextIsSelectable:Z

    move/from16 v19, v0

    if-eqz v19, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    check-cast v19, Landroid/text/Spannable;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v21

    const-class v22, Landroid/text/style/ClickableSpan;

    invoke-interface/range {v19 .. v22}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/text/style/ClickableSpan;

    array-length v0, v10

    move/from16 v19, v0

    if-eqz v19, :cond_d

    const/16 v19, 0x0

    aget-object v19, v10, v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    const/4 v8, 0x1

    :cond_d
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v19

    if-eqz v19, :cond_18

    if-eqz v18, :cond_12

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v19

    if-nez v19, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mTextIsSelectable:Z

    move/from16 v19, v0

    if-eqz v19, :cond_12

    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mScrolled:Z

    move/from16 v19, v0

    if-nez v19, :cond_12

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->viewClicked(Landroid/view/inputmethod/InputMethodManager;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mTextIsSelectable:Z

    move/from16 v19, v0

    if-nez v19, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mSoftInputShownOnFocus:Z

    move/from16 v19, v0

    if-eqz v19, :cond_f

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v19

    if-eqz v19, :cond_f

    if-eqz v9, :cond_14

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v19

    if-eqz v19, :cond_14

    const/16 v19, 0x1

    :goto_2
    or-int v8, v8, v19

    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mSelectAllOnFocus:Z

    move/from16 v19, v0

    if-eqz v19, :cond_15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->didTouchFocusSelect()Z

    move-result v19

    if-eqz v19, :cond_15

    const/4 v14, 0x1

    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->hideControllers()V

    if-nez v14, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->length()I

    move-result v19

    if-lez v19, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSpellChecker:Landroid/widget/SpellChecker;

    move-object/from16 v19, v0

    if-eqz v19, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSpellChecker:Landroid/widget/SpellChecker;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/SpellChecker;->onSelectionChanged()V

    :cond_10
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->extractedTextModeWillBeStarted()Z

    move-result v19

    if-nez v19, :cond_11

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->isCursorInsideEasyCorrectionSpan()Z

    move-result v19

    if-eqz v19, :cond_16

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->showSuggestions()V

    :cond_11
    :goto_4
    const/4 v8, 0x1

    :cond_12
    :goto_5
    if-eqz v8, :cond_8

    const/16 v17, 0x1

    goto/16 :goto_0

    :cond_13
    const/16 v18, 0x0

    goto/16 :goto_1

    :cond_14
    const/16 v19, 0x0

    goto :goto_2

    :cond_15
    const/4 v14, 0x0

    goto :goto_3

    :cond_16
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->hasInsertionController()Z

    move-result v19

    if-eqz v19, :cond_11

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getInsertionController()Landroid/widget/TextView$InsertionPointCursorController;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView$InsertionPointCursorController;->show()V

    goto :goto_4

    :cond_17
    if-nez v14, :cond_11

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->useHtcTextSelection()Z

    move-result v19

    if-eqz v19, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->length()I

    move-result v19

    if-nez v19, :cond_11

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->hasInsertionController()Z

    move-result v19

    if-eqz v19, :cond_11

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getInsertionController()Landroid/widget/TextView$InsertionPointCursorController;

    move-result-object v19

    #calls: Landroid/widget/TextView$InsertionPointCursorController;->getHandle()Landroid/widget/TextView$InsertionHandleView;
    invoke-static/range {v19 .. v19}, Landroid/widget/TextView$InsertionPointCursorController;->access$2100(Landroid/widget/TextView$InsertionPointCursorController;)Landroid/widget/TextView$InsertionHandleView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView$InsertionHandleView;->showPasteWithoutInsertionHandle()V

    goto :goto_4

    :cond_18
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mTextIsSelectable:Z

    move/from16 v19, v0

    if-eqz v19, :cond_12

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v4, v0, :cond_12

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mScrolled:Z

    move/from16 v19, v0

    if-nez v19, :cond_12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->hasSelectionController()Z

    move-result v19

    if-eqz v19, :cond_12

    if-ltz v13, :cond_12

    if-eq v13, v12, :cond_12

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;

    invoke-virtual {v15}, Landroid/widget/TextView$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v11

    if-lt v11, v13, :cond_1a

    if-ge v11, v12, :cond_1a

    invoke-virtual {v15}, Landroid/widget/TextView$SelectionModifierCursorController;->isShowing()Z

    move-result v19

    if-nez v19, :cond_19

    invoke-virtual {v15}, Landroid/widget/TextView$SelectionModifierCursorController;->show()V

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->startSelectionActionMode()Z

    goto :goto_5

    :cond_19
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    goto :goto_5

    :cond_1a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    goto/16 :goto_5
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-interface {v1, p0, v0, p1}, Landroid/text/method/MovementMethod;->onTrackballEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->hideControllers()V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    invoke-virtual {v0}, Landroid/widget/TextView$Blink;->uncancel()V

    invoke-direct {p0}, Landroid/widget/TextView;->makeBlinkandHook()V

    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Landroid/widget/TextView;->startStopMarquee(Z)V

    return-void

    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    invoke-virtual {v0}, Landroid/widget/TextView$Blink;->cancel()V

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->onEndBatchEdit()V

    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/widget/TextView$InputContentType;->enterDown:Z

    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->hideControllers()V

    iget-object v0, p0, Landroid/widget/TextView;->mSuggestionsPopupWindow:Landroid/widget/TextView$SuggestionsPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mSuggestionsPopupWindow:Landroid/widget/TextView$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/TextView$SuggestionsPopupWindow;->onParentLostFocus()V

    goto :goto_0
.end method

.method public performLongClick()Z
    .locals 15

    const/4 v14, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v13, 0x1

    iget v0, p0, Landroid/widget/TextView;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/view/View;->performLongClick()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v14, p0, Landroid/widget/TextView;->mDiscardNextActionUp:Z

    const/4 v8, 0x1

    :cond_0
    if-nez v8, :cond_e

    invoke-direct {p0}, Landroid/widget/TextView;->useHtcTextSelection()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gtz v0, :cond_e

    invoke-direct {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result v4

    iget-boolean v0, p0, Landroid/widget/TextView;->mInsertionControllerEnabled:Z

    if-eqz v0, :cond_a

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->requestFocus()Z

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getInsertionController()Landroid/widget/TextView$InsertionPointCursorController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView$InsertionPointCursorController;->showWithActionPopupDelay()V

    :cond_2
    const/4 v8, 0x1

    const/4 v13, 0x0

    iput-boolean v14, p0, Landroid/widget/TextView;->mDiscardNextActionUp:Z

    :cond_3
    :goto_0
    if-nez v8, :cond_5

    iget-object v0, p0, Landroid/widget/TextView;->mSelectionActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_4

    iget-boolean v0, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    if-eqz v0, :cond_5

    :cond_4
    invoke-direct {p0}, Landroid/widget/TextView;->touchPositionIsInSelection()Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p0, Landroid/widget/TextView;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_f

    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v12

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v7

    invoke-direct {p0, v12, v7}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v11

    const/4 v0, 0x0

    invoke-static {v0, v11}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v6

    new-instance v9, Landroid/widget/TextView$DragLocalState;

    invoke-direct {v9, p0, v12, v7}, Landroid/widget/TextView$DragLocalState;-><init>(Landroid/widget/TextView;II)V

    invoke-direct {p0, v11}, Landroid/widget/TextView;->getTextThumbnailBuilder(Ljava/lang/CharSequence;)Landroid/view/View$DragShadowBuilder;

    move-result-object v0

    invoke-virtual {p0, v6, v0, v9, v5}, Landroid/widget/TextView;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    const/4 v8, 0x1

    :cond_5
    :goto_1
    if-nez v8, :cond_12

    invoke-direct {p0}, Landroid/widget/TextView;->useHtcTextSelection()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Landroid/widget/TextView;->mTextIsSelectable:Z

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Landroid/widget/TextView;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Landroid/widget/TextView;->requestFocus()Z

    :cond_6
    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setPressed(Z)V

    invoke-direct {p0}, Landroid/widget/TextView;->hideInsertionPointCursorController()V

    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    invoke-direct {p0, v14}, Landroid/widget/TextView;->disallowInterceptTouchEvent(Z)V

    iget-object v0, p0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-virtual {v0, p0}, Lcom/htc/textselection/HtcTextSelectionManager;->findScrollableView(Landroid/widget/TextView;)V

    iput-boolean v14, p0, Landroid/widget/TextView;->mIsLongPressed:Z

    const/4 v8, 0x1

    const/4 v13, 0x0

    :cond_7
    :goto_2
    if-eqz v13, :cond_8

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->performHapticFeedback(I)Z

    :cond_8
    if-eqz v8, :cond_9

    iput-boolean v14, p0, Landroid/widget/TextView;->mDiscardNextActionUp:Z

    :cond_9
    return v8

    :cond_a
    iget v0, p0, Landroid/widget/TextView;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    if-eqz v4, :cond_d

    invoke-virtual {p0}, Landroid/widget/TextView;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Landroid/widget/TextView;->requestFocus()Z

    :cond_b
    iget-object v0, p0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    iget-object v2, p0, Landroid/widget/TextView;->mMenuWrapper:Landroid/widget/TextView$MenuWrapper;

    iget-object v3, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/textselection/HtcTextSelectionManager;->prepareHtcPasteWindow(Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/content/Context;ZZ)V

    invoke-direct {p0}, Landroid/widget/TextView;->showQuickAction()V

    iget-object v0, p0, Landroid/widget/TextView;->mPasteWindowHider:Ljava/lang/Runnable;

    if-nez v0, :cond_c

    new-instance v0, Landroid/widget/TextView$4;

    invoke-direct {v0, p0}, Landroid/widget/TextView$4;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mPasteWindowHider:Ljava/lang/Runnable;

    :cond_c
    iget-object v0, p0, Landroid/widget/TextView;->mPasteWindowHider:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_d
    const/4 v8, 0x1

    const/4 v13, 0x0

    iput-boolean v14, p0, Landroid/widget/TextView;->mDiscardNextActionUp:Z

    goto/16 :goto_0

    :cond_e
    if-nez v8, :cond_3

    iget v0, p0, Landroid/widget/TextView;->mLastDownPositionX:F

    iget v1, p0, Landroid/widget/TextView;->mLastDownPositionY:F

    invoke-direct {p0, v0, v1}, Landroid/widget/TextView;->isPositionOnText(FF)Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroid/widget/TextView;->mInsertionControllerEnabled:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Landroid/widget/TextView;->useHtcTextSelection()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Landroid/widget/TextView;->mLastDownPositionX:F

    iget v1, p0, Landroid/widget/TextView;->mLastDownPositionY:F

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v10

    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, v10}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getInsertionController()Landroid/widget/TextView$InsertionPointCursorController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView$InsertionPointCursorController;->showWithActionPopup()V

    const/4 v8, 0x1

    const/4 v13, 0x0

    goto/16 :goto_0

    :cond_f
    invoke-direct {p0}, Landroid/widget/TextView;->useHtcTextSelection()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Landroid/widget/TextView;->mTextIsSelectable:Z

    if-nez v0, :cond_10

    invoke-direct {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-direct {p0}, Landroid/widget/TextView;->canReplaceActionMode()Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_10
    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_11
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$SelectionModifierCursorController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView$SelectionModifierCursorController;->hide()V

    invoke-direct {p0}, Landroid/widget/TextView;->selectCurrentWord()Z

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$SelectionModifierCursorController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView$SelectionModifierCursorController;->show()V

    const/4 v8, 0x1

    goto/16 :goto_1

    :cond_12
    if-nez v8, :cond_7

    invoke-direct {p0}, Landroid/widget/TextView;->useHtcTextSelection()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-direct {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setPressed(Z)V

    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    invoke-direct {p0, v5}, Landroid/widget/TextView;->disallowInterceptTouchEvent(Z)V

    iget-object v0, p0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-virtual {v0, p0}, Lcom/htc/textselection/HtcTextSelectionManager;->findScrollableView(Landroid/widget/TextView;)V

    iput-boolean v5, p0, Landroid/widget/TextView;->mIsLongPressed:Z

    :cond_13
    invoke-direct {p0}, Landroid/widget/TextView;->startSelectionActionMode()Z

    move-result v8

    move v13, v8

    invoke-direct {p0}, Landroid/widget/TextView;->useHtcTextSelection()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-virtual {v0}, Lcom/htc/textselection/HtcTextSelectionManager;->stopAutoScroll()V

    invoke-direct {p0, v5}, Landroid/widget/TextView;->disallowInterceptTouchEvent(Z)V

    goto/16 :goto_2
.end method

.method removeMisspelledSpans(Landroid/text/Spannable;)V
    .locals 6

    const/4 v3, 0x0

    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v4

    const-class v5, Landroid/text/style/SuggestionSpan;

    invoke-interface {p1, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/SuggestionSpan;

    const/4 v1, 0x0

    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v0

    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_0

    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_0

    aget-object v3, v2, v1

    invoke-interface {p1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method removeSuggestionSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6

    instance-of v3, p1, Landroid/text/Spanned;

    if-eqz v3, :cond_1

    instance-of v3, p1, Landroid/text/Spannable;

    if-eqz v3, :cond_0

    move-object v1, p1

    check-cast v1, Landroid/text/Spannable;

    :goto_0
    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const-class v5, Landroid/text/style/SuggestionSpan;

    invoke-interface {v1, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/SuggestionSpan;

    const/4 v0, 0x0

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-object v3, v2, v0

    invoke-interface {v1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object p1, v1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public removeTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 2

    iget-object v1, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method protected replaceText_internal(IILjava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    return-void
.end method

.method reportExtractedText()Z
    .locals 11

    const/4 v10, -0x1

    const/4 v9, 0x0

    iget-object v8, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    if-eqz v8, :cond_2

    iget-boolean v6, v8, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    if-nez v6, :cond_0

    iget-boolean v0, v8, Landroid/widget/TextView$InputMethodState;->mSelectionModeChanged:Z

    if-eqz v0, :cond_2

    :cond_0
    iput-boolean v9, v8, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    iput-boolean v9, v8, Landroid/widget/TextView$InputMethodState;->mSelectionModeChanged:Z

    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    iget-object v1, v0, Landroid/widget/TextView$InputMethodState;->mExtracting:Landroid/view/inputmethod/ExtractedTextRequest;

    if-eqz v1, :cond_2

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v7

    if-eqz v7, :cond_2

    iget v0, v8, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    if-gez v0, :cond_1

    if-nez v6, :cond_1

    const/4 v0, -0x2

    iput v0, v8, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    :cond_1
    iget v2, v8, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    iget v3, v8, Landroid/widget/TextView$InputMethodState;->mChangedEnd:I

    iget v4, v8, Landroid/widget/TextView$InputMethodState;->mChangedDelta:I

    iget-object v5, v8, Landroid/widget/TextView$InputMethodState;->mTmpExtracted:Landroid/view/inputmethod/ExtractedText;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/TextView;->extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, v1, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    iget-object v2, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    iget-object v2, v2, Landroid/widget/TextView$InputMethodState;->mTmpExtracted:Landroid/view/inputmethod/ExtractedText;

    invoke-virtual {v7, p0, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    iput v10, v8, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    iput v10, v8, Landroid/widget/TextView$InputMethodState;->mChangedEnd:I

    iput v9, v8, Landroid/widget/TextView$InputMethodState;->mChangedDelta:I

    iput-boolean v9, v8, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    move v0, v9

    goto :goto_0
.end method

.method public resetErrorChangedFlag()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mErrorWasChanged:Z

    return-void
.end method

.method protected resetResolvedDrawables()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mResolvedDrawables:Z

    return-void
.end method

.method protected resetResolvedLayoutDirection()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->resetResolvedLayoutDirection()V

    iget-object v0, p0, Landroid/widget/TextView;->mLayoutAlignment:Landroid/text/Layout$Alignment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mTextAlign:Landroid/widget/TextView$TextAlign;

    sget-object v1, Landroid/widget/TextView$TextAlign;->VIEW_START:Landroid/widget/TextView$TextAlign;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mTextAlign:Landroid/widget/TextView$TextAlign;

    sget-object v1, Landroid/widget/TextView$TextAlign;->VIEW_END:Landroid/widget/TextView$TextAlign;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TextView;->mLayoutAlignment:Landroid/text/Layout$Alignment;

    :cond_1
    return-void
.end method

.method protected resolveDrawables()V
    .locals 3

    const/4 v2, 0x1

    iget-boolean v1, p0, Landroid/widget/TextView;->mResolvedDrawables:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_2

    iput-boolean v2, p0, Landroid/widget/TextView;->mResolvedDrawables:Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    invoke-virtual {p0}, Landroid/widget/TextView;->getResolvedLayoutDirection()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    iget v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    iget v1, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    :cond_3
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    iget v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    iget v1, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    :cond_4
    :goto_1
    iput-boolean v2, p0, Landroid/widget/TextView;->mResolvedDrawables:Z

    goto :goto_0

    :pswitch_0
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    iget v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    iget v1, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    :cond_5
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    iget v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    iget v1, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v1, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x40000000
        :pswitch_0
    .end packed-switch
.end method

.method protected resolveTextDirection()V
    .locals 4

    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Landroid/text/TextDirectionHeuristics;->LOCALE:Landroid/text/TextDirectionHeuristic;

    iput-object v2, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getResolvedLayoutDirection()I

    move-result v2

    const/high16 v3, 0x4000

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-super {p0}, Landroid/view/View;->resolveTextDirection()V

    invoke-virtual {p0}, Landroid/widget/TextView;->getResolvedTextDirection()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    if-eqz v0, :cond_2

    sget-object v2, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    :goto_2
    iput-object v2, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    sget-object v2, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_2

    :pswitch_0
    sget-object v2, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    iput-object v2, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    :pswitch_1
    sget-object v2, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    iput-object v2, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    :pswitch_2
    sget-object v2, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    iput-object v2, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public sendAccessibilityEvent(I)V
    .locals 1

    const/16 v0, 0x1000

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method sendAccessibilityEventTypeViewTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    const/16 v1, 0x10

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    invoke-virtual {v0, p4}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method sendAfterTextChanged(Landroid/text/Editable;)V
    .locals 4

    iget-object v3, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v2, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/TextWatcher;

    invoke-interface {v3, p1}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method sendOnTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5

    invoke-direct {p0}, Landroid/widget/TextView;->useHtcTextSelection()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    :cond_0
    iget-object v3, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/TextWatcher;

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int v3, p2, p4

    const/4 v4, 0x0

    invoke-direct {p0, p2, v3, v4}, Landroid/widget/TextView;->updateSpellCheckSpans(IIZ)V

    invoke-direct {p0}, Landroid/widget/TextView;->hideCursorControllers()V

    return-void
.end method

.method public setAllCaps(Z)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Landroid/text/method/AllCapsTransformationMethod;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/method/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0
.end method

.method public final setAutoLinkMask(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/widget/TextView;->mAutoLinkMask:I

    return-void
.end method

.method public setCompoundDrawablePadding(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    iput p1, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    return-void

    :cond_1
    if-nez v0, :cond_2

    new-instance v0, Landroid/widget/TextView$Drawables;

    invoke-direct {v0}, Landroid/widget/TextView$Drawables;-><init>()V

    iput-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    :cond_2
    iput p1, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    goto :goto_0
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v6, 0x0

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-eqz p4, :cond_2

    :cond_0
    const/4 v2, 0x1

    :goto_0
    if-nez v2, :cond_8

    if-eqz v1, :cond_1

    iget v5, v1, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    if-nez v5, :cond_3

    iput-object v6, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    return-void

    :cond_2
    move v2, v4

    goto :goto_0

    :cond_3
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_4

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_4
    iput-object v6, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_5

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_5
    iput-object v6, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_6

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_6
    iput-object v6, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_7

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_7
    iput-object v6, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    goto :goto_1

    :cond_8
    if-nez v1, :cond_9

    new-instance v1, Landroid/widget/TextView$Drawables;

    invoke-direct {v1}, Landroid/widget/TextView$Drawables;-><init>()V

    iput-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    :cond_9
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eq v5, p1, :cond_a

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_a

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_a
    iput-object p1, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eq v5, p2, :cond_b

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_b

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_b
    iput-object p2, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eq v5, p3, :cond_c

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_c

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_c
    iput-object p3, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eq v5, p4, :cond_d

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_d

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_d
    iput-object p4, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    iget-object v0, v1, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    if-eqz p1, :cond_e

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    :goto_2
    if-eqz p3, :cond_f

    invoke-virtual {p3, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    :goto_3
    if-eqz p2, :cond_10

    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    :goto_4
    if-eqz p4, :cond_11

    invoke-virtual {p4, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p4, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p4, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    goto/16 :goto_1

    :cond_e
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    goto :goto_2

    :cond_f
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    goto :goto_3

    :cond_10
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    goto :goto_4

    :cond_11
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    goto/16 :goto_1
.end method

.method public setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v6, 0x0

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-eqz p4, :cond_2

    :cond_0
    const/4 v2, 0x1

    :goto_0
    if-nez v2, :cond_8

    if-eqz v1, :cond_1

    iget v5, v1, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    if-nez v5, :cond_3

    iput-object v6, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->resolveDrawables()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    return-void

    :cond_2
    move v2, v4

    goto :goto_0

    :cond_3
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_4

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_4
    iput-object v6, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_5

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_5
    iput-object v6, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_6

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_6
    iput-object v6, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_7

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_7
    iput-object v6, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    goto :goto_1

    :cond_8
    if-nez v1, :cond_9

    new-instance v1, Landroid/widget/TextView$Drawables;

    invoke-direct {v1}, Landroid/widget/TextView$Drawables;-><init>()V

    iput-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    :cond_9
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eq v5, p1, :cond_a

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_a

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_a
    iput-object p1, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eq v5, p2, :cond_b

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_b

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_b
    iput-object p2, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eq v5, p3, :cond_c

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_c

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_c
    iput-object p3, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eq v5, p4, :cond_d

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_d

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_d
    iput-object p4, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    iget-object v0, v1, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    if-eqz p1, :cond_e

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    :goto_2
    if-eqz p3, :cond_f

    invoke-virtual {p3, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    :goto_3
    if-eqz p2, :cond_10

    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    :goto_4
    if-eqz p4, :cond_11

    invoke-virtual {p4, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p4, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p4, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    goto/16 :goto_1

    :cond_e
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    goto :goto_2

    :cond_f
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    goto :goto_3

    :cond_10
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    goto :goto_4

    :cond_11
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    goto/16 :goto_1
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->resetResolvedDrawables()V

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v4, v2

    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v3, v2

    :goto_1
    if-eqz p3, :cond_3

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_2
    if-eqz p4, :cond_0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_0
    invoke-virtual {p0, v4, v3, v2, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_1
    move-object v4, v1

    goto :goto_0

    :cond_2
    move-object v3, v1

    goto :goto_1

    :cond_3
    move-object v2, v1

    goto :goto_2
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->resetResolvedDrawables()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p3, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p4, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v4, v2

    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v3, v2

    :goto_1
    if-eqz p3, :cond_3

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_2
    if-eqz p4, :cond_0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_0
    invoke-virtual {p0, v4, v3, v2, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_1
    move-object v4, v1

    goto :goto_0

    :cond_2
    move-object v3, v1

    goto :goto_1

    :cond_3
    move-object v2, v1

    goto :goto_2
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p3, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p4, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected setCursorPosition_internal(II)V
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    return-void
.end method

.method public setCursorVisible(Z)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget-boolean v0, p0, Landroid/widget/TextView;->mCursorVisible:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/widget/TextView;->mCursorVisible:Z

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    invoke-direct {p0}, Landroid/widget/TextView;->makeBlink()V

    invoke-direct {p0}, Landroid/widget/TextView;->prepareCursorControllers()V

    :cond_0
    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/TextView;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    return-void
.end method

.method public final setEditableFactory(Landroid/text/Editable$Factory;)V
    .locals 1

    iput-object p1, p0, Landroid/widget/TextView;->mEditableFactory:Landroid/text/Editable$Factory;

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setEms(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v1

    if-ne p1, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    invoke-direct {p0}, Landroid/widget/TextView;->prepareCursorControllers()V

    if-eqz p1, :cond_2

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    :cond_2
    invoke-direct {p0}, Landroid/widget/TextView;->makeBlink()V

    goto :goto_0
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .locals 4
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const/4 v1, 0x0

    const/4 v3, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0, v1, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080360

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/TextView;->mErrorWasChanged:Z

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getResolvedLayoutDirection()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1, v2, p2, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    if-nez p1, :cond_3

    iget-object v1, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v1}, Landroid/widget/TextView$ErrorPopup;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v1}, Landroid/widget/TextView$ErrorPopup;->dismiss()V

    :cond_0
    iput-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    :cond_1
    :goto_1
    return-void

    :pswitch_0
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p2, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v4, v4, p2, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Landroid/widget/TextView;->showError()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x40000000
        :pswitch_0
    .end packed-switch
.end method

.method public setExtractedText(Landroid/view/inputmethod/ExtractedText;)V
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    iget-object v5, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v5, :cond_0

    if-nez v1, :cond_3

    iget-object v5, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    sget-object v6, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Spannable;

    invoke-interface {v3}, Landroid/text/Spannable;->length()I

    move-result v0

    iget v4, p1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    if-gez v4, :cond_7

    const/4 v4, 0x0

    :cond_1
    :goto_1
    iget v2, p1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    if-gez v2, :cond_8

    const/4 v2, 0x0

    :cond_2
    :goto_2
    invoke-static {v3, v4, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    iget v5, p1, Landroid/view/inputmethod/ExtractedText;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_9

    invoke-static {p0, v3}, Landroid/text/method/MetaKeyKeyListener;->startSelecting(Landroid/view/View;Landroid/text/Spannable;)V

    :goto_3
    return-void

    :cond_3
    iget v5, p1, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    if-gez v5, :cond_4

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-static {v1, v7, v5}, Landroid/widget/TextView;->removeParcelableSpans(Landroid/text/Spannable;II)V

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v5

    iget-object v6, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v1, v7, v5, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    :cond_4
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v0

    iget v4, p1, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    if-le v4, v0, :cond_5

    move v4, v0

    :cond_5
    iget v2, p1, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    if-le v2, v0, :cond_6

    move v2, v0

    :cond_6
    invoke-static {v1, v4, v2}, Landroid/widget/TextView;->removeParcelableSpans(Landroid/text/Spannable;II)V

    iget-object v5, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v1, v4, v2, v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    :cond_7
    if-le v4, v0, :cond_1

    move v4, v0

    goto :goto_1

    :cond_8
    if-le v2, v0, :cond_2

    move v2, v0

    goto :goto_2

    :cond_9
    invoke-static {p0, v3}, Landroid/text/method/MetaKeyKeyListener;->stopSelecting(Landroid/view/View;Landroid/text/Spannable;)V

    goto :goto_3
.end method

.method public setExtracting(Landroid/view/inputmethod/ExtractedTextRequest;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    iput-object p1, v0, Landroid/widget/TextView$InputMethodState;->mExtracting:Landroid/view/inputmethod/ExtractedTextRequest;

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->hideControllers()V

    return-void
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-direct {p0, v0, p1}, Landroid/widget/TextView;->setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V

    :cond_1
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 8

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v6

    iget-object v0, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/TextView$ErrorPopup;->getContentView()Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v0, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    iget-object v1, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1, v7}, Landroid/widget/TextView;->chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    iget-object v0, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-direct {p0}, Landroid/widget/TextView;->getErrorX()I

    move-result v2

    invoke-direct {p0}, Landroid/widget/TextView;->getErrorY()I

    move-result v3

    iget-object v1, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v1}, Landroid/widget/TextView$ErrorPopup;->getWidth()I

    move-result v4

    iget-object v1, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v1}, Landroid/widget/TextView$ErrorPopup;->getHeight()I

    move-result v5

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/TextView$ErrorPopup;->update(Landroid/view/View;IIII)V

    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->restartMarqueeIfNeeded()V

    return v6
.end method

.method public setFreezesText(Z)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-boolean p1, p0, Landroid/widget/TextView;->mFreezesText:Z

    return-void
.end method

.method public setGravity(I)V
    .locals 8

    const v4, 0x800007

    and-int v0, p1, v4

    if-nez v0, :cond_0

    const v0, 0x800003

    or-int/2addr p1, v0

    :cond_0
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_1

    or-int/lit8 p1, p1, 0x30

    :cond_1
    const/4 v7, 0x0

    and-int v0, p1, v4

    iget v3, p0, Landroid/widget/TextView;->mGravity:I

    and-int/2addr v3, v4

    if-eq v0, v3, :cond_2

    const/4 v7, 0x1

    :cond_2
    iget v0, p0, Landroid/widget/TextView;->mGravity:I

    if-eq p1, v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TextView;->mLayoutAlignment:Landroid/text/Layout$Alignment;

    :cond_3
    iput p1, p0, Landroid/widget/TextView;->mGravity:I

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_4

    if-eqz v7, :cond_4

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v1

    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-nez v0, :cond_5

    const/4 v2, 0x0

    :goto_0
    sget-object v3, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    sget-object v4, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    iget v0, p0, Landroid/widget/TextView;->mRight:I

    iget v5, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v5

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v5

    sub-int v5, v0, v5

    const/4 v6, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    :cond_4
    return-void

    :cond_5
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v2

    goto :goto_0
.end method

.method public setHeight(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setHighlightColor(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget v0, p0, Landroid/widget/TextView;->mHighlightColor:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/widget/TextView;->mHighlightColor:I

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setHint(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setHint(Ljava/lang/CharSequence;)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->checkForRelayout()V

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_1
    return-void
.end method

.method public final setHintTextColor(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    return-void
.end method

.method public final setHintTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    return-void
.end method

.method public setHorizontallyScrolling(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setImeActionLabel(Ljava/lang/CharSequence;I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/TextView$InputContentType;

    invoke-direct {v0}, Landroid/widget/TextView$InputContentType;-><init>()V

    iput-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iput-object p1, v0, Landroid/widget/TextView$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iput p2, v0, Landroid/widget/TextView$InputContentType;->imeActionId:I

    return-void
.end method

.method public setImeOptions(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/TextView$InputContentType;

    invoke-direct {v0}, Landroid/widget/TextView$InputContentType;-><init>()V

    iput-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iput p1, v0, Landroid/widget/TextView$InputContentType;->imeOptions:I

    return-void
.end method

.method public setIncludeFontPadding(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TextView;->mIncludePad:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/widget/TextView;->mIncludePad:Z

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setInputExtras(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-nez v1, :cond_0

    new-instance v1, Landroid/widget/TextView$InputContentType;

    invoke-direct {v1}, Landroid/widget/TextView$InputContentType;-><init>()V

    iput-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, v1, Landroid/widget/TextView$InputContentType;->extras:Landroid/os/Bundle;

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v2, v2, Landroid/widget/TextView$InputContentType;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->parseBundleExtras(Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;)V

    return-void
.end method

.method public setInputType(I)V
    .locals 12

    const/4 v11, 0x3

    const/4 v10, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget v9, p0, Landroid/widget/TextView;->mInputType:I

    invoke-static {v9}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    move-result v5

    iget v9, p0, Landroid/widget/TextView;->mInputType:I

    invoke-static {v9}, Landroid/widget/TextView;->isVisiblePasswordInputType(I)Z

    move-result v6

    invoke-direct {p0, p1, v8}, Landroid/widget/TextView;->setInputType(IZ)V

    invoke-static {p1}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    move-result v2

    invoke-static {p1}, Landroid/widget/TextView;->isVisiblePasswordInputType(I)Z

    move-result v3

    const/4 v0, 0x0

    if-eqz v2, :cond_6

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v9

    invoke-virtual {p0, v9}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    invoke-direct {p0, v11, v8}, Landroid/widget/TextView;->setTypefaceByIndex(II)V

    :cond_0
    :goto_0
    invoke-static {p1}, Landroid/widget/TextView;->isMultilineInputType(I)Z

    move-result v9

    if-nez v9, :cond_a

    move v4, v7

    :goto_1
    iget-boolean v9, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-ne v9, v4, :cond_1

    if-eqz v0, :cond_3

    :cond_1
    if-nez v2, :cond_2

    move v8, v7

    :cond_2
    invoke-direct {p0, v4, v8, v7}, Landroid/widget/TextView;->applySingleLine(ZZZ)V

    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v7}, Landroid/widget/TextView;->removeSuggestionSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    :cond_4
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    :cond_5
    return-void

    :cond_6
    if-eqz v3, :cond_8

    iget-object v9, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v10

    if-ne v9, v10, :cond_7

    const/4 v0, 0x1

    :cond_7
    invoke-direct {p0, v11, v8}, Landroid/widget/TextView;->setTypefaceByIndex(II)V

    goto :goto_0

    :cond_8
    if-nez v5, :cond_9

    if-eqz v6, :cond_0

    :cond_9
    invoke-direct {p0, v10, v10}, Landroid/widget/TextView;->setTypefaceByIndex(II)V

    iget-object v9, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v10

    if-ne v9, v10, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_a
    move v4, v8

    goto :goto_1
.end method

.method public setKeyListener(Landroid/text/method/KeyListener;)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/widget/TextView;->setKeyListenerOnly(Landroid/text/method/KeyListener;)V

    invoke-direct {p0}, Landroid/widget/TextView;->fixFocusableAndClickableSettings()V

    if-eqz p1, :cond_2

    :try_start_0
    iget-object v2, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    invoke-interface {v2}, Landroid/text/method/KeyListener;->getInputType()I

    move-result v2

    iput v2, p0, Landroid/widget/TextView;->mInputType:I
    :try_end_0
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-boolean v2, p0, Landroid/widget/TextView;->mSingleLine:Z

    invoke-direct {p0, v2}, Landroid/widget/TextView;->setInputTypeSingleLine(Z)V

    :goto_1
    iget-object v2, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    instance-of v2, v2, Landroid/text/method/PasswordTransformationMethod;

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/widget/TextView;->mInputType:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroid/widget/TextView;->mInputType:I

    and-int/lit16 v2, v2, -0xff1

    or-int/lit8 v2, v2, 0x10

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setRawInputType(I)V

    :cond_0
    :goto_2
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const/4 v2, 0x1

    iput v2, p0, Landroid/widget/TextView;->mInputType:I

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/TextView;->mInputType:I

    goto :goto_1

    :cond_3
    iget v2, p0, Landroid/widget/TextView;->mInputType:I

    and-int/lit16 v2, v2, -0xff1

    or-int/lit16 v2, v2, 0x80

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setRawInputType(I)V

    goto :goto_2
.end method

.method public setLineSpacing(FF)V
    .locals 1

    iget v0, p0, Landroid/widget/TextView;->mSpacingAdd:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mSpacingMult:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    :cond_0
    iput p1, p0, Landroid/widget/TextView;->mSpacingAdd:F

    iput p2, p0, Landroid/widget/TextView;->mSpacingMult:F

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_1
    return-void
.end method

.method public setLines(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public final setLinkTextColor(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    return-void
.end method

.method public final setLinkTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    return-void
.end method

.method public final setLinksClickable(Z)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-boolean p1, p0, Landroid/widget/TextView;->mLinksClickable:Z

    return-void
.end method

.method public setMarqueeControlledAp(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/TextView;->mMarqueeControlledByAp:Z

    return-void
.end method

.method public setMarqueeRepeatLimit(I)V
    .locals 0

    iput p1, p0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    return-void
.end method

.method public setMaxEms(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setMaxLines(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setMinEms(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setMinHeight(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setMinLines(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setMinWidth(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public final setMovementMethod(Landroid/text/method/MovementMethod;)V
    .locals 1

    iput-object p1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->fixFocusableAndClickableSettings()V

    invoke-direct {p0}, Landroid/widget/TextView;->prepareCursorControllers()V

    invoke-direct {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/TextView;->mTextIsSelectable:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/htc/textselection/HtcTextSelectionManager;->getInstance()Lcom/htc/textselection/HtcTextSelectionManager;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    :cond_2
    return-void
.end method

.method public setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/TextView$InputContentType;

    invoke-direct {v0}, Landroid/widget/TextView$InputContentType;-><init>()V

    iput-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iput-object p1, v0, Landroid/widget/TextView$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    return-void
.end method

.method public setPadding(IIII)V
    .locals 1

    iget v0, p0, Landroid/widget/TextView;->mPaddingLeft:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mPaddingRight:I

    if-ne p3, v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mPaddingTop:I

    if-ne p2, v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mPaddingBottom:I

    if-eq p4, v0, :cond_1

    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setPaintFlags(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFlags()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setFlags(I)V

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setPrivateImeOptions(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    const-string v0, "com.htc.textselection:enabled"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->enableHtcTextSelection(ZI)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "com.htc.textselection:enabled_longClickable"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->enableHtcTextSelection(ZI)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-nez v0, :cond_2

    new-instance v0, Landroid/widget/TextView$InputContentType;

    invoke-direct {v0}, Landroid/widget/TextView$InputContentType;-><init>()V

    iput-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    :cond_2
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iput-object p1, v0, Landroid/widget/TextView$InputContentType;->privateImeOptions:Ljava/lang/String;

    goto :goto_0
.end method

.method public setRawInputType(I)V
    .locals 0

    iput p1, p0, Landroid/widget/TextView;->mInputType:I

    return-void
.end method

.method setSCtimeout()V
    .locals 4

    const/4 v2, 0x4

    iget-object v0, p0, Landroid/widget/TextView;->mSCATDHandler:Landroid/widget/TextView$SCATDHandler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/TextView$SCATDHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/TextView$SCATDHandler;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V

    iput-object v0, p0, Landroid/widget/TextView;->mSCATDHandler:Landroid/widget/TextView$SCATDHandler;

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mSCATDHandler:Landroid/widget/TextView$SCATDHandler;

    invoke-virtual {v0, v2}, Landroid/widget/TextView$SCATDHandler;->removeMessages(I)V

    iget-object v0, p0, Landroid/widget/TextView;->mSCATDHandler:Landroid/widget/TextView$SCATDHandler;

    iget-object v1, p0, Landroid/widget/TextView;->mSCATDHandler:Landroid/widget/TextView$SCATDHandler;

    invoke-virtual {v1, v2}, Landroid/widget/TextView$SCATDHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView$SCATDHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public setScroller(Landroid/widget/Scroller;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    return-void
.end method

.method public setSelectAllOnFocus(Z)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-boolean p1, p0, Landroid/widget/TextView;->mSelectAllOnFocus:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    :cond_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    invoke-super {p0, p1}, Landroid/view/View;->setSelected(Z)V

    if-eq p1, v0, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v1, v2, :cond_0

    if-eqz p1, :cond_1

    invoke-direct {p0}, Landroid/widget/TextView;->startMarquee()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->stopMarquee()V

    goto :goto_0
.end method

.method public setShadowLayer(FFFI)V
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    iput p1, p0, Landroid/widget/TextView;->mShadowRadius:F

    iput p2, p0, Landroid/widget/TextView;->mShadowDx:F

    iput p3, p0, Landroid/widget/TextView;->mShadowDy:F

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setSingleLine()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    return-void
.end method

.method public setSingleLine(Z)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Landroid/widget/TextView;->setInputTypeSingleLine(Z)V

    invoke-direct {p0, p1, v0, v0}, Landroid/widget/TextView;->applySingleLine(ZZZ)V

    return-void
.end method

.method public final setSoftInputShownOnFocus(Z)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-boolean p1, p0, Landroid/widget/TextView;->mSoftInputShownOnFocus:Z

    return-void
.end method

.method protected setSpan_internal(Ljava/lang/Object;III)V
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public final setSpannableFactory(Landroid/text/Spannable$Factory;)V
    .locals 1

    iput-object p1, p0, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setText(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setText(ILandroid/widget/TextView$BufferType;)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

.method public final setText(Ljava/lang/CharSequence;)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget-object v0, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;ZI)V

    iget-object v0, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    const/4 v1, 0x0

    #setter for: Landroid/widget/TextView$CharWrapper;->mChars:[C
    invoke-static {v0, v1}, Landroid/widget/TextView$CharWrapper;->access$102(Landroid/widget/TextView$CharWrapper;[C)[C

    :cond_0
    return-void
.end method

.method public final setText([CII)V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-direct {p0, v1, v3, v0, p3}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    :goto_0
    iget-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    if-nez v1, :cond_3

    new-instance v1, Landroid/widget/TextView$CharWrapper;

    invoke-direct {v1, p1, p2, p3}, Landroid/widget/TextView$CharWrapper;-><init>([CII)V

    iput-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    :goto_1
    iget-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    iget-object v2, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    invoke-direct {p0, v1, v2, v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;ZI)V

    return-void

    :cond_2
    const-string v1, ""

    invoke-direct {p0, v1, v3, v3, p3}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    invoke-virtual {v1, p1, p2, p3}, Landroid/widget/TextView$CharWrapper;->set([CII)V

    goto :goto_1
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 11

    sget-object v9, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, p2, v9}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    if-eqz v1, :cond_2

    sget-boolean v9, Landroid/widget/TextView;->THEMEABLE:Z

    if-eqz v9, :cond_1

    invoke-direct {p0}, Landroid/widget/TextView;->getSkinPackageName()Ljava/lang/String;

    move-result-object v4

    sget-object v9, Landroid/widget/TextView;->mPreviousSkinPackage:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    const/4 v3, 0x1

    :goto_0
    if-eqz v3, :cond_a

    sput-object v4, Landroid/widget/TextView;->mPreviousSkinPackage:Ljava/lang/String;

    if-eqz v4, :cond_0

    const-string v9, ""

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "default"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    :cond_0
    :goto_1
    sput v1, Landroid/widget/TextView;->mTextColorHighlight:I

    :cond_1
    :goto_2
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    :cond_2
    const/4 v9, 0x3

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_3
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    if-eqz v7, :cond_4

    int-to-float v9, v7

    invoke-direct {p0, v9}, Landroid/widget/TextView;->setRawTextSize(F)V

    :cond_4
    const/4 v9, 0x5

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    :cond_5
    const/4 v9, 0x6

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    :cond_6
    const/4 v9, 0x1

    const/4 v10, -0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    const/4 v9, 0x2

    const/4 v10, -0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-direct {p0, v8, v5}, Landroid/widget/TextView;->setTypefaceByIndex(II)V

    const/4 v9, 0x7

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    if-eqz v9, :cond_7

    new-instance v9, Landroid/text/method/AllCapsTransformationMethod;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/text/method/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v9}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :cond_7
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_8
    const/4 v3, 0x0

    goto :goto_0

    :cond_9
    :try_start_0
    iget-object v9, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v6

    const-string/jumbo v9, "input_text_selection_highlight"

    const-string v10, "color"

    invoke-virtual {v6, v9, v10, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getColor(I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_1

    :cond_a
    sget v1, Landroid/widget/TextView;->mTextColorHighlight:I

    goto :goto_2

    :catch_0
    move-exception v9

    goto :goto_1

    :catch_1
    move-exception v9

    goto :goto_1
.end method

.method public setTextColor(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    return-void
.end method

.method public setTextIsSelectable(Z)V
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Landroid/widget/TextView;->mTextIsSelectable:Z

    if-ne v1, p1, :cond_2

    iget-boolean v1, p0, Landroid/widget/TextView;->isMessageLink:Z

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/widget/TextView;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iput-boolean p1, p0, Landroid/widget/TextView;->mTextIsSelectable:Z

    invoke-direct {p0}, Landroid/widget/TextView;->useHtcTextSelection()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/widget/TextView;->mFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    :cond_3
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    :cond_4
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setFocusable(Z)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setLongClickable(Z)V

    iget v1, p0, Landroid/widget/TextView;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v1

    instance-of v1, v1, Landroid/text/method/LinkMovementMethod;

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/TextView;->isMessageLink:Z

    :goto_1
    if-eqz p1, :cond_5

    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    :cond_5
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-boolean v0, p0, Landroid/widget/TextView;->mIgnoreSetText:Z

    if-nez v0, :cond_6

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz p1, :cond_8

    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    :goto_2
    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    :cond_6
    invoke-direct {p0}, Landroid/widget/TextView;->prepareCursorControllers()V

    goto :goto_0

    :cond_7
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/TextView;->isMessageLink:Z

    goto :goto_1

    :cond_8
    sget-object v0, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    goto :goto_2
.end method

.method public final setTextKeepState(Ljava/lang/CharSequence;)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget-object v0, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setTextKeepState(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

.method public final setTextKeepState(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    if-gez v2, :cond_0

    if-ltz v0, :cond_1

    :cond_0
    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v3, v3, Landroid/text/Spannable;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spannable;

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    :cond_1
    return-void
.end method

.method public setTextScaleX(F)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mUserSetTextScaleX:Z

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextScaleX(F)V

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setTextSize(F)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public setTextSize(IF)V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {p1, p2, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    invoke-direct {p0, v2}, Landroid/widget/TextView;->setRawTextSize(F)V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    goto :goto_0
.end method

.method public final setTransformationMethod(Landroid/text/method/TransformationMethod;)V
    .locals 4

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-ne p1, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Spannable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spannable;

    iget-object v3, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    invoke-interface {v1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :cond_1
    iput-object p1, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    iget-object v1, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    instance-of v1, v1, Landroid/text/method/PasswordTransformationMethod;

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/widget/TextView;->mInputType:I

    and-int/lit8 v1, v1, 0xf

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    iget v1, p0, Landroid/widget/TextView;->mInputType:I

    and-int/lit16 v1, v1, -0xff1

    or-int/lit8 v1, v1, 0x10

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setRawInputType(I)V

    :cond_2
    :goto_1
    instance-of v1, p1, Landroid/text/method/TransformationMethod2;

    if-eqz v1, :cond_5

    move-object v0, p1

    check-cast v0, Landroid/text/method/TransformationMethod2;

    iget-boolean v1, p0, Landroid/widget/TextView;->mTextIsSelectable:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Editable;

    if-nez v1, :cond_4

    const/4 v1, 0x1

    :goto_2
    iput-boolean v1, p0, Landroid/widget/TextView;->mAllowTransformationLengthChange:Z

    iget-boolean v1, p0, Landroid/widget/TextView;->mAllowTransformationLengthChange:Z

    invoke-interface {v0, v1}, Landroid/text/method/TransformationMethod2;->setLengthChangesAllowed(Z)V

    :goto_3
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget v1, p0, Landroid/widget/TextView;->mInputType:I

    and-int/lit16 v1, v1, -0xff1

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setRawInputType(I)V

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2

    :cond_5
    iput-boolean v2, p0, Landroid/widget/TextView;->mAllowTransformationLengthChange:Z

    goto :goto_3
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-lez p2, :cond_4

    if-nez p1, :cond_1

    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    :goto_1
    xor-int/lit8 v4, v1, -0x1

    and-int v0, p2, v4

    iget-object v4, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    iget-object v4, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_3

    const/high16 v2, -0x4180

    :goto_2
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setTextSkewX(F)V

    :goto_3
    return-void

    :cond_1
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_2

    :cond_4
    iget-object v4, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSkewX(F)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_3
.end method

.method public setWidth(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public shouldIgnoreActionUpEvent()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TextView;->mIgnoreActionUpEvent:Z

    return v0
.end method

.method showSuggestions()V
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mSuggestionsPopupWindow:Landroid/widget/TextView$SuggestionsPopupWindow;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/TextView$SuggestionsPopupWindow;

    invoke-direct {v0, p0}, Landroid/widget/TextView$SuggestionsPopupWindow;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mSuggestionsPopupWindow:Landroid/widget/TextView$SuggestionsPopupWindow;

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->hideControllers()V

    iget-object v0, p0, Landroid/widget/TextView;->mSuggestionsPopupWindow:Landroid/widget/TextView$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/TextView$SuggestionsPopupWindow;->show()V

    return-void
.end method

.method spanChange(Landroid/text/Spanned;Ljava/lang/Object;IIII)V
    .locals 7

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, -0x1

    iget-object v1, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    sget-object v5, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    if-ne p2, v5, :cond_2

    iput-boolean v6, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    const/4 v4, 0x1

    move v2, p4

    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v5

    if-nez v5, :cond_0

    iput-boolean v6, p0, Landroid/widget/TextView;->mSelectionMoved:Z

    :cond_0
    if-gez p3, :cond_1

    if-ltz p4, :cond_2

    :cond_1
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v5

    invoke-direct {p0, v5, p3, p4}, Landroid/widget/TextView;->invalidateCursor(III)V

    invoke-direct {p0}, Landroid/widget/TextView;->registerForPreDraw()V

    invoke-direct {p0}, Landroid/widget/TextView;->makeBlink()V

    :cond_2
    sget-object v5, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    if-ne p2, v5, :cond_5

    iput-boolean v6, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    const/4 v4, 0x1

    move v3, p4

    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v5

    if-nez v5, :cond_3

    iput-boolean v6, p0, Landroid/widget/TextView;->mSelectionMoved:Z

    :cond_3
    if-gez p3, :cond_4

    if-ltz p4, :cond_5

    :cond_4
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-direct {p0, v0, p3, p4}, Landroid/widget/TextView;->invalidateCursor(III)V

    :cond_5
    if-eqz v4, :cond_8

    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    and-int/lit16 v5, v5, 0x200

    if-nez v5, :cond_8

    if-gez v3, :cond_6

    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v3

    :cond_6
    if-gez v2, :cond_7

    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    :cond_7
    invoke-virtual {p0, v3, v2}, Landroid/widget/TextView;->onSelectionChanged(II)V

    :cond_8
    instance-of v5, p2, Landroid/text/style/UpdateAppearance;

    if-nez v5, :cond_9

    instance-of v5, p2, Landroid/text/style/ParagraphStyle;

    if-eqz v5, :cond_b

    :cond_9
    if-eqz v1, :cond_a

    iget v5, v1, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    if-nez v5, :cond_14

    :cond_a
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    iput-boolean v6, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    invoke-direct {p0}, Landroid/widget/TextView;->checkForResize()V

    :cond_b
    :goto_0
    invoke-static {p1, p2}, Landroid/text/method/MetaKeyKeyListener;->isMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    iput-boolean v6, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-eqz v1, :cond_c

    invoke-static {p1, p2}, Landroid/text/method/MetaKeyKeyListener;->isSelectingMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    iput-boolean v6, v1, Landroid/widget/TextView$InputMethodState;->mSelectionModeChanged:Z

    :cond_c
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v5

    if-ltz v5, :cond_e

    if-eqz v1, :cond_d

    iget v5, v1, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    if-nez v5, :cond_15

    :cond_d
    invoke-direct {p0}, Landroid/widget/TextView;->invalidateCursor()V

    :cond_e
    :goto_1
    instance-of v5, p2, Landroid/text/ParcelableSpan;

    if-eqz v5, :cond_12

    if-eqz v1, :cond_12

    iget-object v5, v1, Landroid/widget/TextView$InputMethodState;->mExtracting:Landroid/view/inputmethod/ExtractedTextRequest;

    if-eqz v5, :cond_12

    iget v5, v1, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    if-eqz v5, :cond_16

    if-ltz p3, :cond_10

    iget v5, v1, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    if-le v5, p3, :cond_f

    iput p3, v1, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    :cond_f
    iget v5, v1, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    if-le v5, p5, :cond_10

    iput p5, v1, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    :cond_10
    if-ltz p4, :cond_12

    iget v5, v1, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    if-le v5, p4, :cond_11

    iput p4, v1, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    :cond_11
    iget v5, v1, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    if-le v5, p6, :cond_12

    iput p6, v1, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    :cond_12
    :goto_2
    iget-object v5, p0, Landroid/widget/TextView;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v5, :cond_13

    if-gez p4, :cond_13

    instance-of v5, p2, Landroid/text/style/SpellCheckSpan;

    if-eqz v5, :cond_13

    iget-object v5, p0, Landroid/widget/TextView;->mSpellChecker:Landroid/widget/SpellChecker;

    check-cast p2, Landroid/text/style/SpellCheckSpan;

    invoke-virtual {v5, p2}, Landroid/widget/SpellChecker;->removeSpellCheckSpan(Landroid/text/style/SpellCheckSpan;)V

    :cond_13
    return-void

    :cond_14
    iput-boolean v6, v1, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    goto :goto_0

    :cond_15
    iput-boolean v6, v1, Landroid/widget/TextView$InputMethodState;->mCursorChanged:Z

    goto :goto_1

    :cond_16
    iput-boolean v6, v1, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    goto :goto_2
.end method

.method public stopSelectionActionMode()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/TextView;->mSelectionActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mSelectionActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getDefaultEditable()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    :goto_0
    invoke-direct {p0}, Landroid/widget/TextView;->hideSelectionModifierCursorController()V

    iput-boolean v2, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    invoke-direct {p0}, Landroid/widget/TextView;->useHtcTextSelection()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-virtual {v1, p0, v0}, Lcom/htc/textselection/HtcTextSelectionManager;->onEndSelect(Landroid/widget/TextView;Landroid/text/Spannable;)V

    :cond_1
    iput-boolean v2, p0, Landroid/widget/TextView;->mIsInQuickActioMode:Z

    iget-boolean v0, p0, Landroid/widget/TextView;->isMessageLink:Z

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/widget/TextView;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/widget/TextView;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Landroid/widget/TextView;->useHtcTextSelection()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-virtual {v0}, Lcom/htc/textselection/HtcTextSelectionManager;->isPasteWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/textselection/HtcTextSelectionManager;->dismissQuickAction(Z)V

    goto :goto_1
.end method

.method public stopTextSelectionMode()V
    .locals 0

    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    return-void
.end method

.method updateAfterEdit()V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    if-gez v0, :cond_0

    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x50

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->registerForPreDraw()V

    :cond_1
    if-ltz v0, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    invoke-direct {p0}, Landroid/widget/TextView;->makeBlink()V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->bringPointIntoView(I)Z

    :cond_2
    invoke-direct {p0}, Landroid/widget/TextView;->checkForResize()V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-ne p1, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method protected viewClicked(Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    :cond_0
    return-void
.end method
