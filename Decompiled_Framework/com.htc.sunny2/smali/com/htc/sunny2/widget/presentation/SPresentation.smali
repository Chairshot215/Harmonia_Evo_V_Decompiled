.class public Lcom/htc/sunny2/widget/presentation/SPresentation;
.super Lcom/htc/sunny2/widget/presentation/SAdapterView;
.source "SPresentation.java"

# interfaces
.implements Lcom/htc/sunny2/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/widget/presentation/SPresentation$16;,
        Lcom/htc/sunny2/widget/presentation/SPresentation$ContainerHitFeedback;,
        Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;,
        Lcom/htc/sunny2/widget/presentation/SPresentation$SHandler;,
        Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;,
        Lcom/htc/sunny2/widget/presentation/SPresentation$OnLayoutListener;,
        Lcom/htc/sunny2/widget/presentation/SPresentation$OnContainerClickListener;,
        Lcom/htc/sunny2/widget/presentation/SPresentation$OnSelectionChangeListener;,
        Lcom/htc/sunny2/widget/presentation/SPresentation$OnStateListener;,
        Lcom/htc/sunny2/widget/presentation/SPresentation$INTERPOLATE;,
        Lcom/htc/sunny2/widget/presentation/SPresentation$PRESENTATION_ORIENTATION;,
        Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;,
        Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;
    }
.end annotation


# static fields
.field protected static final ANIMATION_BOUNCING:I = 0x4

.field protected static final ANIMATION_FLING:I = 0x1

.field protected static final ANIMATION_HOMING:I = 0x3

.field protected static final ANIMATION_ROTATE_SELF:I = 0x5

.field protected static final ANIMATION_SCROLL:I = 0x2

.field protected static final ANIMATION_UNKNOW:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = null

.field public static final STATE_BOUNCING:I = 0x7

.field public static final STATE_BOUNCING_END:I = 0x8

.field public static final STATE_FLING:I = 0x3

.field public static final STATE_FLING_END:I = 0x4

.field public static final STATE_HOMING:I = 0x5

.field public static final STATE_HOMING_END:I = 0x6

.field public static final STATE_IDLE:I = 0x12

.field public static final STATE_MOUSE_DOWN:I = 0x0

.field public static final STATE_MOUSE_PAN:I = 0x2

.field public static final STATE_MOUSE_UP:I = 0x1

.field public static final STATE_ROTATE_SELF:I = 0xb

.field public static final STATE_ROTATE_SELF_END:I = 0xc

.field public static final STATE_SCROLL:I = 0x9

.field public static final STATE_SCROLL_END:I = 0xa

.field public static final STATE_UNKNOW:I = -0x1


# instance fields
.field protected DURATION_BOUNCING:I

.field protected DURATION_FLING:I

.field protected DURATION_HOMING:I

.field protected DURATION_ROTATE_SELF:I

.field protected DURATION_SCROLL_NEXT:I

.field protected DURATION_SCROLL_PREVIOUS:I

.field protected DURATION_SCROLL_TO:I

.field protected TIMESLOT_INTERVAL:I

.field protected TIMESLOT_INTERVAL_HALF:I

.field protected mAdapter:Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;

.field protected mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

.field protected mBlockScroll:Z

.field protected mClipSizeB:I

.field protected mClipSizeL:I

.field protected mClipSizeR:I

.field protected mClipSizeT:I

.field protected mContainerClickListener:Lcom/htc/sunny2/widget/presentation/SPresentation$OnContainerClickListener;

.field protected mContainerCount:I

.field protected mContainerHitFeedback:Lcom/htc/sunny2/widget/presentation/SPresentation$ContainerHitFeedback;

.field protected mDataCount:I

.field protected mDataUpdated:Z

.field protected mDefaultLayout:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

.field protected mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

.field protected mDisplacement:F

.field protected mEnableHitFeedback:Z

.field protected mEnableTouchEvent:Z

.field protected mEnabledAnimation:Z

.field protected mEnabledBlockScroll:Z

.field protected mEnabledLargeSensorArea:Z

.field protected mEnabledOpeningAnimation:Z

.field protected mEnabledReflection:Z

.field protected mEnlargeSensorRatioH:F

.field protected mEnlargeSensorRatioW:F

.field protected mFakeAnimationControl:Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;

.field protected mFakeNextUpdateIndex:I

.field protected mFocusPosV:Lcom/htc/sunny2/view/Vector3F;

.field protected mGestureDetector:Lcom/htc/sunny2/view/GestureDetector;

.field protected mHandler:Lcom/htc/sunny2/widget/presentation/SPresentation$SHandler;

.field private mHashCode:I

.field protected mHitFeedbackRatio:F

.field protected mIsBouncingState:Z

.field protected mIsContainerCountChanged:Z

.field protected mIsFirstRender:Z

.field private mIsPressed:Z

.field protected mIsSingleTapUp:Z

.field protected mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

.field protected mItemHeight:I

.field protected mItemScrollRatio:F

.field protected mItemWidth:I

.field protected mLayoutListener:Lcom/htc/sunny2/widget/presentation/SPresentation$OnLayoutListener;

.field protected mListHeight:I

.field protected mListHeight_H:I

.field protected mListWidth:I

.field protected mListWidth_H:I

.field protected mOldSelectedPos:I

.field protected mOpeningAnimationStart:Z

.field protected mPerformOpeningAnimation:Z

.field protected mPresentationState:I

.field protected mPressContainerId:I

.field protected mPressStartSelectedPos:I

.field protected mReflectionColorB:I

.field protected mReflectionColorG:I

.field protected mReflectionColorR:I

.field protected mReflectionGap:I

.field protected mReflectionHeight:I

.field protected mRenderThread:Lcom/htc/sunny2/RenderThread;

.field protected mReorderItem:I

.field protected mReorderRegion:I

.field protected mRotateClockwise:Z

.field protected mSelectedPos:I

.field protected mSelectionChangeListener:Lcom/htc/sunny2/widget/presentation/SPresentation$OnSelectionChangeListener;

.field protected mShiftOneItem:Z

.field protected mStateListener:Lcom/htc/sunny2/widget/presentation/SPresentation$OnStateListener;

.field protected mSunnyEnvironment:Lcom/htc/sunny2/SunnyEnvironment;

.field protected mSurfaceViewHeight:I

.field protected mSurfaceViewHeight_H:I

.field protected mSurfaceViewWidth:I

.field protected mSurfaceViewWidth_H:I

.field protected mTimeSlot:I

.field protected mVisibleContainerCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)V
    .locals 6

    const/16 v5, 0x26

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v3}, Lcom/htc/sunny2/widget/presentation/SAdapterView;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Z)V

    iput-object v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    iput-object v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mHandler:Lcom/htc/sunny2/widget/presentation/SPresentation$SHandler;

    iput-object v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAdapter:Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;

    iput-object v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerClickListener:Lcom/htc/sunny2/widget/presentation/SPresentation$OnContainerClickListener;

    iput-object v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mStateListener:Lcom/htc/sunny2/widget/presentation/SPresentation$OnStateListener;

    iput-object v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectionChangeListener:Lcom/htc/sunny2/widget/presentation/SPresentation$OnSelectionChangeListener;

    iput-object v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mLayoutListener:Lcom/htc/sunny2/widget/presentation/SPresentation$OnLayoutListener;

    iput-object v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mGestureDetector:Lcom/htc/sunny2/view/GestureDetector;

    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    iput-boolean v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPerformOpeningAnimation:Z

    iput-boolean v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mOpeningAnimationStart:Z

    const/16 v0, 0xfa

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL_HALF:I

    const/16 v0, 0x28

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->DURATION_SCROLL_TO:I

    const/16 v0, 0x1e

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->DURATION_SCROLL_NEXT:I

    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->DURATION_SCROLL_NEXT:I

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->DURATION_SCROLL_PREVIOUS:I

    const/16 v0, 0x28

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->DURATION_BOUNCING:I

    const/16 v0, 0x28

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->DURATION_HOMING:I

    const/16 v0, 0x8c

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->DURATION_FLING:I

    const/16 v0, 0x32

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->DURATION_ROTATE_SELF:I

    new-instance v0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;-><init>(Lcom/htc/sunny2/widget/presentation/SPresentation;)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;

    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mFakeNextUpdateIndex:I

    new-instance v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;-><init>(Lcom/htc/sunny2/widget/presentation/SPresentation;)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iput-boolean v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mRotateClockwise:Z

    new-instance v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ContainerHitFeedback;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/widget/presentation/SPresentation$ContainerHitFeedback;-><init>(Lcom/htc/sunny2/widget/presentation/SPresentation;)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerHitFeedback:Lcom/htc/sunny2/widget/presentation/SPresentation$ContainerHitFeedback;

    iput-boolean v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataUpdated:Z

    iput v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPressStartSelectedPos:I

    iput v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPressContainerId:I

    const/high16 v0, -0x4080

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDisplacement:F

    iput-boolean v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mIsPressed:Z

    iput-boolean v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mIsSingleTapUp:Z

    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    iput v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mOldSelectedPos:I

    iput-boolean v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mIsBouncingState:Z

    iput-boolean v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mEnabledAnimation:Z

    iput-boolean v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mEnableTouchEvent:Z

    iput-boolean v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mIsFirstRender:Z

    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mReorderRegion:I

    iput v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mReorderItem:I

    iput-object v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    iput-boolean v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mIsContainerCountChanged:Z

    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mVisibleContainerCount:I

    iput v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPresentationState:I

    sget-object v0, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_UNKNOWN:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    iput-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSurfaceViewWidth:I

    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSurfaceViewHeight:I

    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSurfaceViewWidth_H:I

    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSurfaceViewHeight_H:I

    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemWidth:I

    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemHeight:I

    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mListWidth:I

    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mListHeight:I

    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mListWidth_H:I

    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mListHeight_H:I

    iput-object v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mFocusPosV:Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mHashCode:I

    iput-object v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDefaultLayout:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mClipSizeL:I

    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mClipSizeT:I

    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mClipSizeR:I

    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mClipSizeB:I

    iput-boolean v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mEnabledOpeningAnimation:Z

    iput-boolean v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mEnabledReflection:Z

    iput-boolean v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mEnabledLargeSensorArea:Z

    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mReflectionHeight:I

    iput v5, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mReflectionColorR:I

    iput v5, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mReflectionColorG:I

    iput v5, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mReflectionColorB:I

    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mReflectionGap:I

    iput-boolean v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mShiftOneItem:Z

    iput-boolean v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mEnabledBlockScroll:Z

    iput-boolean v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mBlockScroll:Z

    iput-boolean v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mEnableHitFeedback:Z

    const v0, 0x3f733333

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mHitFeedbackRatio:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mEnlargeSensorRatioH:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mEnlargeSensorRatioW:F

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemScrollRatio:F

    invoke-static {}, Lcom/htc/sunny2/SunnyEnvironment;->instance()Lcom/htc/sunny2/SunnyEnvironment;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSunnyEnvironment:Lcom/htc/sunny2/SunnyEnvironment;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;IIIII)V
    .locals 7

    const/16 v6, 0x26

    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v4}, Lcom/htc/sunny2/widget/presentation/SAdapterView;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Z)V

    iput-object v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    iput-object v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mHandler:Lcom/htc/sunny2/widget/presentation/SPresentation$SHandler;

    iput-object v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAdapter:Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;

    iput-object v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerClickListener:Lcom/htc/sunny2/widget/presentation/SPresentation$OnContainerClickListener;

    iput-object v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mStateListener:Lcom/htc/sunny2/widget/presentation/SPresentation$OnStateListener;

    iput-object v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectionChangeListener:Lcom/htc/sunny2/widget/presentation/SPresentation$OnSelectionChangeListener;

    iput-object v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mLayoutListener:Lcom/htc/sunny2/widget/presentation/SPresentation$OnLayoutListener;

    iput-object v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mGestureDetector:Lcom/htc/sunny2/view/GestureDetector;

    iput v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    iput-boolean v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPerformOpeningAnimation:Z

    iput-boolean v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mOpeningAnimationStart:Z

    const/16 v1, 0xfa

    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL_HALF:I

    const/16 v1, 0x28

    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->DURATION_SCROLL_TO:I

    const/16 v1, 0x1e

    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->DURATION_SCROLL_NEXT:I

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->DURATION_SCROLL_NEXT:I

    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->DURATION_SCROLL_PREVIOUS:I

    const/16 v1, 0x28

    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->DURATION_BOUNCING:I

    const/16 v1, 0x28

    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->DURATION_HOMING:I

    const/16 v1, 0x8c

    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->DURATION_FLING:I

    const/16 v1, 0x32

    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->DURATION_ROTATE_SELF:I

    new-instance v1, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;

    invoke-direct {v1, p0}, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;-><init>(Lcom/htc/sunny2/widget/presentation/SPresentation;)V

    iput-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;

    iput v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mFakeNextUpdateIndex:I

    new-instance v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    invoke-direct {v1, p0}, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;-><init>(Lcom/htc/sunny2/widget/presentation/SPresentation;)V

    iput-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iput-boolean v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mRotateClockwise:Z

    new-instance v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ContainerHitFeedback;

    invoke-direct {v1, p0}, Lcom/htc/sunny2/widget/presentation/SPresentation$ContainerHitFeedback;-><init>(Lcom/htc/sunny2/widget/presentation/SPresentation;)V

    iput-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerHitFeedback:Lcom/htc/sunny2/widget/presentation/SPresentation$ContainerHitFeedback;

    iput-boolean v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataUpdated:Z

    iput v5, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPressStartSelectedPos:I

    iput v5, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPressContainerId:I

    const/high16 v1, -0x4080

    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDisplacement:F

    iput-boolean v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mIsPressed:Z

    iput-boolean v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mIsSingleTapUp:Z

    iput v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    iput v5, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mOldSelectedPos:I

    iput-boolean v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mIsBouncingState:Z

    iput-boolean v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mEnabledAnimation:Z

    iput-boolean v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mEnableTouchEvent:Z

    iput-boolean v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mIsFirstRender:Z

    iput v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mReorderRegion:I

    iput v5, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mReorderItem:I

    iput-object v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    iput v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    iput v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    iput-boolean v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mIsContainerCountChanged:Z

    iput v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mVisibleContainerCount:I

    iput v5, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPresentationState:I

    sget-object v1, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_UNKNOWN:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    iput-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    iput v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSurfaceViewWidth:I

    iput v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSurfaceViewHeight:I

    iput v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSurfaceViewWidth_H:I

    iput v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSurfaceViewHeight_H:I

    iput v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemWidth:I

    iput v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemHeight:I

    iput v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mListWidth:I

    iput v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mListHeight:I

    iput v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mListWidth_H:I

    iput v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mListHeight_H:I

    iput-object v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mFocusPosV:Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mHashCode:I

    iput-object v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDefaultLayout:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    iput v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mClipSizeL:I

    iput v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mClipSizeT:I

    iput v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mClipSizeR:I

    iput v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mClipSizeB:I

    iput-boolean v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mEnabledOpeningAnimation:Z

    iput-boolean v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mEnabledReflection:Z

    iput-boolean v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mEnabledLargeSensorArea:Z

    iput v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mReflectionHeight:I

    iput v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mReflectionColorR:I

    iput v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mReflectionColorG:I

    iput v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mReflectionColorB:I

    iput v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mReflectionGap:I

    iput-boolean v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mShiftOneItem:Z

    iput-boolean v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mEnabledBlockScroll:Z

    iput-boolean v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mBlockScroll:Z

    iput-boolean v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mEnableHitFeedback:Z

    const v1, 0x3f733333

    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mHitFeedbackRatio:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mEnlargeSensorRatioH:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mEnlargeSensorRatioW:F

    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemScrollRatio:F

    iput p5, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemWidth:I

    iput p6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemHeight:I

    iput p3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mListWidth:I

    iput p4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mListHeight:I

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mListWidth:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mListWidth_H:I

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mListHeight:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mListHeight_H:I

    move v0, p7

    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_0

    sget-object v1, Lcom/htc/sunny2/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set container count as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". It should be an odd number."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, -0x1

    :cond_0
    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->initDefaultLayout()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/htc/sunny2/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getSpriteIndex(I)I
    .locals 1

    const/4 v0, -0x1

    if-gt p1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mHashCode:I

    sub-int v0, p1, v0

    goto :goto_0
.end method

.method private getSpriteTag(I)I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mHashCode:I

    add-int/2addr v0, p1

    return v0
.end method

.method protected static interpolateLinear(FFFF)F
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, v0, p3

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    div-float v0, p2, p3

    mul-float/2addr v0, p0

    add-float/2addr v0, p1

    goto :goto_0
.end method

.method protected static nextPowerOf2(I)I
    .locals 1

    add-int/lit8 p0, p0, -0x1

    ushr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    add-int/lit8 v0, p0, 0x1

    return v0
.end method


# virtual methods
.method protected Get2DY(I)I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSurfaceViewHeight_H:I

    sub-int/2addr v0, p1

    return v0
.end method

.method protected Get3DX(I)I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSurfaceViewWidth_H:I

    sub-int v0, p1, v0

    return v0
.end method

.method protected Get3DY(I)I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSurfaceViewHeight_H:I

    sub-int v0, p1, v0

    return v0
.end method

.method protected animateView()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mHandler:Lcom/htc/sunny2/widget/presentation/SPresentation$SHandler;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mHandler:Lcom/htc/sunny2/widget/presentation/SPresentation$SHandler;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation$SHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mHandler:Lcom/htc/sunny2/widget/presentation/SPresentation$SHandler;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation$SHandler;->sendEmptyMessage(I)V

    goto :goto_0
.end method

.method public applyAnimation()V
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->hasAnimation()Z

    move-result v0

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->type:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerHitFeedback:Lcom/htc/sunny2/widget/presentation/SPresentation$ContainerHitFeedback;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/presentation/SPresentation$ContainerHitFeedback;->animate()V

    iget-boolean v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mIsFirstRender:Z

    if-ne v1, v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mIsFirstRender:Z

    sget-object v0, Lcom/htc/sunny2/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "update and render"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->onScrollAnimation()V

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->animateView()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->onRotateSelf()V

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->animateView()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected createResource()V
    .locals 4

    sget-object v0, Lcom/htc/sunny2/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createResource + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/htc/sunny2/widget/presentation/SAdapterView;->createResource()V

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getRenderThread()Lcom/htc/sunny2/RenderThread;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    new-instance v0, Lcom/htc/sunny2/widget/presentation/SPresentation$SHandler;

    iget-object v1, p0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SHandler-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getNodeId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getRenderThread()Lcom/htc/sunny2/RenderThread;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/htc/sunny2/widget/presentation/SPresentation$SHandler;-><init>(Lcom/htc/sunny2/widget/presentation/SPresentation;Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunny2/RenderThread;)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mHandler:Lcom/htc/sunny2/widget/presentation/SPresentation$SHandler;

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mGestureDetector:Lcom/htc/sunny2/view/GestureDetector;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/sunny2/view/GestureDetector;

    iget-object v1, p0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-direct {v0, v1, p0, v2}, Lcom/htc/sunny2/view/GestureDetector;-><init>(Landroid/content/Context;Lcom/htc/sunny2/view/GestureDetector$OnGestureListener;Lcom/htc/sunny2/RenderThread;)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mGestureDetector:Lcom/htc/sunny2/view/GestureDetector;

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mGestureDetector:Lcom/htc/sunny2/view/GestureDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/view/GestureDetector;->setIsLongpressEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->initContainers()V

    sget-object v0, Lcom/htc/sunny2/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "createResource -"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected destroyAllResource()V
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    if-eqz v4, :cond_6

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_6

    aget-object v1, v0, v2

    if-nez v1, :cond_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mImageTexture:Lcom/htc/sunny2/Texture;

    if-eqz v4, :cond_1

    iget-object v4, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mImageTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v4}, Lcom/htc/sunny2/Texture;->release()V

    iput-object v5, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mImageTexture:Lcom/htc/sunny2/Texture;

    :cond_1
    iget-object v4, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mTouchSprite:Lcom/htc/sunny2/Sprite;

    if-eqz v4, :cond_2

    iget-object v4, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mTouchSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v4}, Lcom/htc/sunny2/Sprite;->release()V

    iput-object v5, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mTouchSprite:Lcom/htc/sunny2/Sprite;

    :cond_2
    iget-object v4, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mTouchSprite:Lcom/htc/sunny2/Sprite;

    if-eqz v4, :cond_3

    iget-object v4, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mTouchSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v4}, Lcom/htc/sunny2/Sprite;->release()V

    iput-object v5, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mTouchSprite:Lcom/htc/sunny2/Sprite;

    :cond_3
    iget-object v4, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mImageSprite:Lcom/htc/sunny2/Sprite;

    if-eqz v4, :cond_4

    iget-object v4, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mImageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v4}, Lcom/htc/sunny2/Sprite;->release()V

    iput-object v5, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mImageSprite:Lcom/htc/sunny2/Sprite;

    :cond_4
    iget-object v4, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mReflectSprite:Lcom/htc/sunny2/Sprite;

    if-eqz v4, :cond_5

    iget-object v4, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mReflectSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v4}, Lcom/htc/sunny2/Sprite;->release()V

    iput-object v5, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mReflectSprite:Lcom/htc/sunny2/Sprite;

    :cond_5
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->removeView(Lcom/htc/sunny2/view/SView;)V

    goto :goto_1

    :cond_6
    return-void
.end method

.method protected enableAnimation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mEnabledAnimation:Z

    return-void
.end method

.method public enableHitFeedback(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mEnableHitFeedback:Z

    return-void
.end method

.method public enableLargeSensorArea(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mEnabledLargeSensorArea:Z

    return-void
.end method

.method public enabledLayoutAnimateIn(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mEnabledOpeningAnimation:Z

    return-void
.end method

.method public enabledReflection(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mEnabledReflection:Z

    return-void
.end method

.method public enabledTouchEvent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mEnableTouchEvent:Z

    return-void
.end method

.method public enlargeSensorArea(F)V
    .locals 0

    iput p1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mEnlargeSensorRatioH:F

    return-void
.end method

.method public enlargeSensorAreaWidth(F)V
    .locals 0

    iput p1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mEnlargeSensorRatioW:F

    return-void
.end method

.method public fling(I)V
    .locals 1

    new-instance v0, Lcom/htc/sunny2/widget/presentation/SPresentation$11;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny2/widget/presentation/SPresentation$11;-><init>(Lcom/htc/sunny2/widget/presentation/SPresentation;I)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected flingW(I)V
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x1

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->isEnabledAnimation()Z

    move-result v6

    if-nez v6, :cond_0

    const/16 v6, 0x12

    invoke-virtual {p0, v6}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyStateChange(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->stopAnimation()V

    iget-boolean v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mShiftOneItem:Z

    if-eq v9, v6, :cond_1

    iget-boolean v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mIsBouncingState:Z

    if-ne v9, v6, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->homing()V

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    invoke-virtual {v6}, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->reset()V

    const/4 v6, 0x3

    invoke-virtual {p0, v6}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyStateChange(I)V

    iget-object v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iput v9, v6, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->type:I

    iget-object v6, p0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    const/16 v0, 0xbb8

    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    add-int/lit8 v6, v6, -0x2

    iget v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v6, v2

    sub-int v7, v0, v1

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v7

    sub-int/2addr v7, v1

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-int v4, v6

    move v3, v4

    if-lez p1, :cond_b

    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    if-gtz v6, :cond_3

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->onAnimationEnd()V

    goto :goto_0

    :cond_3
    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    sub-int/2addr v6, v4

    if-gtz v6, :cond_9

    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    if-lez v6, :cond_8

    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    add-int/lit8 v4, v6, -0x1

    :cond_4
    :goto_1
    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    mul-int v5, v6, v4

    if-lez p1, :cond_12

    sget-object v6, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    iput-object v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    if-lez v6, :cond_10

    iget-object v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    iget v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    sub-int/2addr v7, v8

    add-int/2addr v7, v5

    iput v7, v6, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    :goto_2
    iget-boolean v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mShiftOneItem:Z

    if-ne v9, v6, :cond_15

    iget-object v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->DURATION_SCROLL_NEXT:I

    iput v7, v6, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    :goto_3
    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    if-gtz v6, :cond_16

    sget-object v6, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    iget-object v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    if-ne v6, v7, :cond_16

    iget-object v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iput v10, v6, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    :cond_5
    :goto_4
    iget-object v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget-object v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v7, v7, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    iget-object v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v8, v8, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    invoke-virtual {p0, v7, v8}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getRefineDuration(II)I

    move-result v7

    iput v7, v6, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    iget-object v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v6, v6, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    if-gtz v6, :cond_6

    iget-object v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    const/4 v7, 0x0

    iput v7, v6, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    :cond_6
    iget-object v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v6, v6, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    if-lez v6, :cond_7

    iget-object v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v6, v6, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    if-nez v6, :cond_17

    :cond_7
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->onAnimationEnd()V

    goto/16 :goto_0

    :cond_8
    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    goto :goto_1

    :cond_9
    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    sub-int/2addr v7, v4

    if-gt v6, v7, :cond_4

    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    if-gez v6, :cond_a

    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    iget v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    add-int/lit8 v7, v7, -0x1

    sub-int v4, v6, v7

    goto :goto_1

    :cond_a
    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    add-int/lit8 v7, v7, -0x1

    sub-int v4, v6, v7

    goto :goto_1

    :cond_b
    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    if-gt v6, v7, :cond_c

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->onAnimationEnd()V

    goto/16 :goto_0

    :cond_c
    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    add-int/2addr v7, v4

    if-gt v6, v7, :cond_e

    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    if-gez v6, :cond_d

    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    sub-int/2addr v6, v7

    add-int/lit8 v4, v6, -0x1

    goto/16 :goto_1

    :cond_d
    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    sub-int v4, v6, v7

    goto/16 :goto_1

    :cond_e
    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    add-int/2addr v6, v4

    if-gtz v6, :cond_4

    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    if-lez v6, :cond_f

    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v4

    goto/16 :goto_1

    :cond_f
    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    goto/16 :goto_1

    :cond_10
    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    if-gez v6, :cond_11

    iget-object v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/2addr v7, v5

    iput v7, v6, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_2

    :cond_11
    iget-object v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iput v5, v6, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_2

    :cond_12
    sget-object v6, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    iput-object v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    if-lez v6, :cond_13

    iget-object v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    add-int/2addr v7, v5

    iput v7, v6, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_2

    :cond_13
    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    if-gez v6, :cond_14

    iget-object v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    iget v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    sub-int/2addr v7, v8

    add-int/2addr v7, v5

    iput v7, v6, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_2

    :cond_14
    iget-object v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iput v5, v6, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_2

    :cond_15
    iget-object v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->DURATION_FLING:I

    iput v7, v6, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    goto/16 :goto_3

    :cond_16
    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    if-gt v6, v7, :cond_5

    sget-object v6, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    iget-object v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    if-ne v6, v7, :cond_5

    iget-object v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iput v10, v6, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    goto/16 :goto_4

    :cond_17
    iget-object v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget-object v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v7, v7, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    iget-object v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v8, v8, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, v6, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    iget-object v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    sget-object v7, Lcom/htc/sunny2/widget/presentation/SPresentation$INTERPOLATE;->EASEOUT_CUBIC:Lcom/htc/sunny2/widget/presentation/SPresentation$INTERPOLATE;

    iput-object v7, v6, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunny2/widget/presentation/SPresentation$INTERPOLATE;

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->animateView()V

    goto/16 :goto_0
.end method

.method protected freeResource()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->stopAnimation()V

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->destroyAllResource()V

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mHandler:Lcom/htc/sunny2/widget/presentation/SPresentation$SHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mHandler:Lcom/htc/sunny2/widget/presentation/SPresentation$SHandler;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/presentation/SPresentation$SHandler;->release()V

    iput-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mHandler:Lcom/htc/sunny2/widget/presentation/SPresentation$SHandler;

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    iput-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    invoke-super {p0}, Lcom/htc/sunny2/widget/presentation/SAdapterView;->freeResource()V

    return-void
.end method

.method public getAnimationDirection()Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    return-object v0
.end method

.method protected getContainerByDataIndex(I)Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;
    .locals 6

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    if-nez v5, :cond_0

    move-object v1, v4

    :goto_0
    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    if-nez v1, :cond_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget v5, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mDataIndex:I

    if-ne p1, v5, :cond_1

    goto :goto_0

    :cond_3
    move-object v1, v4

    goto :goto_0
.end method

.method protected getContainerByLayoutPos(I)Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;
    .locals 6

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    if-nez v5, :cond_0

    move-object v1, v4

    :goto_0
    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    if-nez v1, :cond_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget v5, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mLayoutPos:I

    if-ne p1, v5, :cond_1

    goto :goto_0

    :cond_3
    move-object v1, v4

    goto :goto_0
.end method

.method protected getContainerId(I)I
    .locals 4

    const/4 v2, -0x1

    if-ne v2, p1, :cond_1

    move v0, v2

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Lcom/htc/sunny2/Sprite;->search(I)Lcom/htc/sunny2/Sprite;

    move-result-object v1

    if-nez v1, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/htc/sunny2/Sprite;->getUserFlag()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getSpriteIndex(I)I

    move-result v0

    if-ltz v0, :cond_3

    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    if-lt v0, v3, :cond_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method protected getContainerLayout(I)Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mLayoutListener:Lcom/htc/sunny2/widget/presentation/SPresentation$OnLayoutListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mLayoutListener:Lcom/htc/sunny2/widget/presentation/SPresentation$OnLayoutListener;

    invoke-interface {v0, p1}, Lcom/htc/sunny2/widget/presentation/SPresentation$OnLayoutListener;->getContainerLayout(I)Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDefaultLayout:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getContainerView(I)Lcom/htc/sunny2/view/SView;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getContainerByLayoutPos(I)Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    move-result-object v0

    return-object v0
.end method

.method protected getDisplacementToContainer(IF)F
    .locals 3

    if-ltz p1, :cond_0

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    if-lt p1, v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mTouchSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->getSpritePosition(Lcom/htc/sunny2/Sprite;)Lcom/htc/sunny2/view/Vector3F;

    move-result-object v0

    iget v1, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    sub-float v1, p2, v1

    goto :goto_0
.end method

.method protected getInterpolateResult(FFFFLcom/htc/sunny2/widget/presentation/SPresentation$INTERPOLATE;)F
    .locals 11

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    move v4, p1

    move v0, p2

    move v1, p3

    move v2, p4

    sget-object v7, Lcom/htc/sunny2/widget/presentation/SPresentation$16;->$SwitchMap$com$htc$sunny2$widget$presentation$SPresentation$INTERPOLATE:[I

    invoke-virtual/range {p5 .. p5}, Lcom/htc/sunny2/widget/presentation/SPresentation$INTERPOLATE;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Not support interpolate typle !!!"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    :pswitch_0
    div-float v7, v1, v2

    mul-float/2addr v7, v4

    add-float v3, v7, v0

    :goto_0
    return v3

    :pswitch_1
    div-float/2addr v4, v2

    mul-float v6, v4, v4

    mul-float v5, v6, v4

    const/high16 v7, 0x3f80

    mul-float/2addr v7, v5

    mul-float/2addr v7, v6

    const/high16 v8, -0x3f60

    mul-float/2addr v8, v6

    mul-float/2addr v8, v6

    add-float/2addr v7, v8

    const/high16 v8, 0x4120

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    const/high16 v8, -0x3ee0

    mul-float/2addr v8, v6

    add-float/2addr v7, v8

    const/high16 v8, 0x40a0

    mul-float/2addr v8, v4

    add-float/2addr v7, v8

    mul-float/2addr v7, v1

    add-float v3, v7, v0

    goto :goto_0

    :pswitch_2
    div-float v7, v4, v2

    const/high16 v8, 0x3f80

    add-float/2addr v7, v8

    float-to-double v7, v7

    const-wide v9, 0x400921fb54442d18L

    mul-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    const-wide/high16 v9, 0x4000

    div-double/2addr v7, v9

    const-wide/high16 v9, 0x3fe0

    add-double/2addr v7, v9

    double-to-float v7, v7

    mul-float/2addr v7, v1

    add-float v3, v7, v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected getPressPosition(IF)F
    .locals 3

    if-ltz p1, :cond_0

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    if-lt p1, v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mTouchSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->getSpritePosition(Lcom/htc/sunny2/Sprite;)Lcom/htc/sunny2/view/Vector3F;

    move-result-object v0

    iget v1, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    add-float/2addr v1, p2

    goto :goto_0
.end method

.method protected getRefineDuration(II)I
    .locals 4

    const/4 v1, 0x2

    if-gtz p1, :cond_1

    move p1, v1

    :cond_0
    :goto_0
    return p1

    :cond_1
    iget v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    div-int/2addr v2, p1

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    if-gtz v0, :cond_2

    move p1, v1

    goto :goto_0

    :cond_2
    if-ge p2, p1, :cond_3

    move p1, v1

    goto :goto_0

    :cond_3
    mul-int/lit8 v1, p1, 0x2

    if-ge p2, v1, :cond_0

    const/4 p1, 0x3

    goto :goto_0
.end method

.method public getSelection()I
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    if-gez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    iget v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    if-lt v1, v2, :cond_2

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    if-gez v1, :cond_0

    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    goto :goto_0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPresentationState:I

    return v0
.end method

.method protected getTimeSlotOffsetX(IF)I
    .locals 6

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAdapter:Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;

    if-nez v4, :cond_1

    move v0, v3

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ltz p1, :cond_2

    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    if-lt p1, v4, :cond_3

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    if-lez v4, :cond_8

    if-ltz p1, :cond_4

    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    add-int/lit8 v4, v4, -0x1

    if-le p1, v4, :cond_5

    :cond_4
    move v0, v3

    goto :goto_0

    :cond_5
    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_6

    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getContainerLayout(I)Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    move-result-object v3

    iget-object v3, v3, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iget v3, v3, Lcom/htc/sunny2/view/Vector3F;->mX:F

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {p0, v4}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getContainerLayout(I)Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iget v4, v4, Lcom/htc/sunny2/view/Vector3F;->mX:F

    sub-float v2, v3, v4

    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    int-to-float v3, v3

    mul-float/2addr v3, p2

    div-float/2addr v3, v2

    float-to-int v0, v3

    :goto_1
    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    add-int/lit8 v3, v3, -0x2

    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPressStartSelectedPos:I

    if-lez v3, :cond_e

    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPressStartSelectedPos:I

    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_e

    if-lez v0, :cond_d

    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPressStartSelectedPos:I

    if-gt v3, v4, :cond_0

    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    sub-int/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_6
    if-nez p1, :cond_7

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getContainerLayout(I)Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    move-result-object v3

    iget-object v3, v3, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iget v3, v3, Lcom/htc/sunny2/view/Vector3F;->mX:F

    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getContainerLayout(I)Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iget v4, v4, Lcom/htc/sunny2/view/Vector3F;->mX:F

    sub-float v2, v3, v4

    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    int-to-float v3, v3

    mul-float/2addr v3, p2

    div-float/2addr v3, v2

    float-to-int v0, v3

    goto :goto_1

    :cond_7
    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    int-to-float v3, v3

    mul-float/2addr v3, p2

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {p0, v4}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getContainerLayout(I)Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iget v4, v4, Lcom/htc/sunny2/view/Vector3F;->mX:F

    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getContainerLayout(I)Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    move-result-object v5

    iget-object v5, v5, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iget v5, v5, Lcom/htc/sunny2/view/Vector3F;->mX:F

    sub-float/2addr v4, v5

    div-float/2addr v3, v4

    float-to-int v0, v3

    goto :goto_1

    :cond_8
    if-ltz p1, :cond_9

    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    add-int/lit8 v4, v4, -0x1

    if-le p1, v4, :cond_a

    :cond_9
    move v0, v3

    goto/16 :goto_0

    :cond_a
    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_b

    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    int-to-float v3, v3

    mul-float/2addr v3, p2

    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getContainerLayout(I)Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iget v4, v4, Lcom/htc/sunny2/view/Vector3F;->mX:F

    add-int/lit8 v5, p1, -0x1

    invoke-virtual {p0, v5}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getContainerLayout(I)Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    move-result-object v5

    iget-object v5, v5, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iget v5, v5, Lcom/htc/sunny2/view/Vector3F;->mX:F

    sub-float/2addr v4, v5

    div-float/2addr v3, v4

    float-to-int v0, v3

    goto/16 :goto_1

    :cond_b
    if-nez p1, :cond_c

    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    int-to-float v3, v3

    mul-float/2addr v3, p2

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {p0, v4}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getContainerLayout(I)Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iget v4, v4, Lcom/htc/sunny2/view/Vector3F;->mX:F

    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getContainerLayout(I)Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    move-result-object v5

    iget-object v5, v5, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iget v5, v5, Lcom/htc/sunny2/view/Vector3F;->mX:F

    sub-float/2addr v4, v5

    div-float/2addr v3, v4

    float-to-int v0, v3

    goto/16 :goto_1

    :cond_c
    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    int-to-float v3, v3

    mul-float/2addr v3, p2

    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getContainerLayout(I)Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iget v4, v4, Lcom/htc/sunny2/view/Vector3F;->mX:F

    add-int/lit8 v5, p1, -0x1

    invoke-virtual {p0, v5}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getContainerLayout(I)Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    move-result-object v5

    iget-object v5, v5, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iget v5, v5, Lcom/htc/sunny2/view/Vector3F;->mX:F

    sub-float/2addr v4, v5

    div-float/2addr v3, v4

    float-to-int v0, v3

    goto/16 :goto_1

    :cond_d
    if-gez v0, :cond_0

    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPressStartSelectedPos:I

    if-lt v3, v4, :cond_0

    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    neg-int v3, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto/16 :goto_0

    :cond_e
    add-int/lit8 v3, v1, 0x1

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    if-ge v3, v4, :cond_f

    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPressStartSelectedPos:I

    if-nez v3, :cond_f

    if-gez v0, :cond_f

    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    add-int/lit8 v4, v4, -0x2

    if-lt v3, v4, :cond_0

    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    neg-int v3, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto/16 :goto_0

    :cond_f
    add-int/lit8 v3, v1, 0x1

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    if-ge v3, v4, :cond_0

    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPressStartSelectedPos:I

    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_0

    if-lez v0, :cond_0

    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    const/4 v4, 0x1

    if-gt v3, v4, :cond_0

    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    sub-int/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto/16 :goto_0
.end method

.method public hasAnimation()Z
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->type:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAdapter:Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected homing()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    if-gtz v1, :cond_0

    invoke-virtual {p0, v6}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyStateChange(I)V

    const/16 v1, 0x12

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyStateChange(I)V

    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->reset()V

    iget-boolean v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mIsBouncingState:Z

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    sget-object v2, Lcom/htc/sunny2/widget/presentation/SPresentation$INTERPOLATE;->EASEINOUT_CUBIC:Lcom/htc/sunny2/widget/presentation/SPresentation$INTERPOLATE;

    iput-object v2, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunny2/widget/presentation/SPresentation$INTERPOLATE;

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iput v7, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mIsBouncingState:Z

    if-ne v6, v1, :cond_18

    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->DURATION_BOUNCING:I

    :goto_1
    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getRefineDuration(II)I

    move-result v0

    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    if-gtz v1, :cond_2

    const/4 v0, 0x0

    :cond_2
    iget-boolean v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mIsBouncingState:Z

    if-ne v6, v1, :cond_19

    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyStateChange(I)V

    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iput v8, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->type:I

    :goto_2
    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    if-lez v1, :cond_3

    if-gtz v0, :cond_1a

    :cond_3
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->onAnimationEnd()V

    :goto_3
    return-void

    :cond_4
    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPresentationState:I

    if-ne v8, v1, :cond_8

    sget-object v1, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    iget-object v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    if-ne v1, v2, :cond_6

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iput v2, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto :goto_0

    :cond_6
    sget-object v1, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    iget-object v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    if-lez v1, :cond_7

    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iput v2, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto :goto_0

    :cond_8
    iget-boolean v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mShiftOneItem:Z

    if-ne v6, v1, :cond_c

    sget-object v1, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    iget-object v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    if-ne v1, v2, :cond_a

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    if-lez v1, :cond_9

    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iput v2, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_0

    :cond_9
    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_0

    :cond_a
    sget-object v1, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    iget-object v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    if-lez v1, :cond_b

    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_0

    :cond_b
    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iput v2, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_0

    :cond_c
    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL_HALF:I

    if-gt v1, v2, :cond_e

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    if-lez v1, :cond_d

    sget-object v1, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    iput-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    :goto_4
    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iput v2, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_0

    :cond_d
    sget-object v1, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    iput-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    goto :goto_4

    :cond_e
    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    if-lez v1, :cond_f

    sget-object v1, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    iput-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    :goto_5
    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_0

    :cond_f
    sget-object v1, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    iput-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    goto :goto_5

    :cond_10
    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    sget-object v2, Lcom/htc/sunny2/widget/presentation/SPresentation$INTERPOLATE;->EASEOUT_CUBIC:Lcom/htc/sunny2/widget/presentation/SPresentation$INTERPOLATE;

    iput-object v2, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunny2/widget/presentation/SPresentation$INTERPOLATE;

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    if-nez v1, :cond_12

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    if-ltz v1, :cond_11

    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    iput v2, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    sget-object v1, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    iput-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    goto/16 :goto_0

    :cond_11
    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    neg-int v2, v2

    iput v2, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    sget-object v1, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    iput-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    goto/16 :goto_0

    :cond_12
    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    if-gez v1, :cond_14

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    if-ltz v1, :cond_13

    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    :goto_6
    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    if-eqz v1, :cond_1

    sget-object v1, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    iput-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    goto/16 :goto_0

    :cond_13
    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto :goto_6

    :cond_14
    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    if-ne v1, v2, :cond_15

    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iput v2, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    if-eqz v1, :cond_1

    sget-object v1, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    iput-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    goto/16 :goto_0

    :cond_15
    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    if-ge v1, v2, :cond_17

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    if-lez v1, :cond_16

    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    iget v5, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    sub-int/2addr v4, v5

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    :goto_7
    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    if-eqz v1, :cond_1

    sget-object v1, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    iput-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    goto/16 :goto_0

    :cond_16
    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    iget v5, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto :goto_7

    :cond_17
    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iput v7, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_0

    :cond_18
    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->DURATION_HOMING:I

    goto/16 :goto_1

    :cond_19
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyStateChange(I)V

    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    const/4 v2, 0x3

    iput v2, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->type:I

    goto/16 :goto_2

    :cond_1a
    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iput v0, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    sget-object v2, Lcom/htc/sunny2/widget/presentation/SPresentation$INTERPOLATE;->EASEOUT_CUBIC:Lcom/htc/sunny2/widget/presentation/SPresentation$INTERPOLATE;

    iput-object v2, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunny2/widget/presentation/SPresentation$INTERPOLATE;

    iget-boolean v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mIsBouncingState:Z

    if-ne v6, v1, :cond_1b

    invoke-virtual {p0, v7}, Lcom/htc/sunny2/widget/presentation/SPresentation;->enableAnimation(Z)V

    :cond_1b
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->animateView()V

    goto/16 :goto_3
.end method

.method protected initContainers()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->initContainers(Z)V

    return-void
.end method

.method protected initContainers(Z)V
    .locals 14

    const/4 v10, 0x0

    const/high16 v13, 0x3f80

    const/4 v12, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    sget-object v6, Lcom/htc/sunny2/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    const-string v9, "initContainers +"

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAdapter:Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/htc/sunny2/SceneNode;->mNodeId:I

    if-nez v6, :cond_1

    :cond_0
    invoke-virtual {p0, v7}, Lcom/htc/sunny2/widget/presentation/SPresentation;->enableAnimation(Z)V

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->destroyAllResource()V

    iput v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    invoke-virtual {p0, v7}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setContainerCount(I)V

    iput-object v10, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    iput v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mVisibleContainerCount:I

    sget-object v6, Lcom/htc/sunny2/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    const-string v7, "initContainers 0-"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAdapter:Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;

    invoke-virtual {v6}, Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;->getItemCount()I

    move-result v2

    iget-object v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mLayoutListener:Lcom/htc/sunny2/widget/presentation/SPresentation$OnLayoutListener;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mLayoutListener:Lcom/htc/sunny2/widget/presentation/SPresentation$OnLayoutListener;

    invoke-interface {v6}, Lcom/htc/sunny2/widget/presentation/SPresentation$OnLayoutListener;->getContainerCount()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setContainerCount(I)V

    :cond_2
    if-lez v2, :cond_3

    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    if-gtz v6, :cond_4

    :cond_3
    invoke-virtual {p0, v7}, Lcom/htc/sunny2/widget/presentation/SPresentation;->enableAnimation(Z)V

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->destroyAllResource()V

    iput v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    invoke-virtual {p0, v7}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setContainerCount(I)V

    iput-object v10, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    iput v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mVisibleContainerCount:I

    sget-object v6, Lcom/htc/sunny2/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    const-string v7, "initContainers 1-"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-boolean v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mIsContainerCountChanged:Z

    if-eq v8, v6, :cond_5

    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    if-ne v2, v6, :cond_5

    if-ne v8, p1, :cond_d

    :cond_5
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->stopAnimation()V

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->destroyAllResource()V

    iput v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    if-eq v2, v6, :cond_7

    iput v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    iget v9, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    if-lt v6, v9, :cond_6

    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    :cond_6
    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    if-gez v6, :cond_7

    iput v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    :cond_7
    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    iget v9, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mVisibleContainerCount:I

    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    new-array v6, v6, [Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    iput-object v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    iput-boolean v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataUpdated:Z

    const/4 v1, 0x0

    :goto_1
    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    if-ge v1, v6, :cond_d

    iget-object v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    new-instance v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    iget-object v9, p0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/htc/sunny2/view/SView;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    invoke-direct {v0, p0, v9, v10}, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;-><init>(Lcom/htc/sunny2/widget/presentation/SPresentation;Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)V

    aput-object v0, v6, v1

    iput v1, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mID:I

    iput v1, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mLayoutPos:I

    iget-object v6, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    iget v9, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mLayoutPos:I

    invoke-virtual {p0, v9}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getContainerLayout(I)Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->setLayout(Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->addView(Lcom/htc/sunny2/view/SView;)V

    iget-object v6, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    iget v5, v6, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mWidth:I

    iget-object v6, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    iget v4, v6, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mHeight:I

    invoke-static {v8}, Lcom/htc/sunny2/Sprite;->obtain(I)Lcom/htc/sunny2/Sprite;

    move-result-object v6

    iput-object v6, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mImageSprite:Lcom/htc/sunny2/Sprite;

    iget-object v6, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mImageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v6}, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->addSprite(Lcom/htc/sunny2/Sprite;)V

    invoke-static {v8}, Lcom/htc/sunny2/Sprite;->obtain(I)Lcom/htc/sunny2/Sprite;

    move-result-object v6

    iput-object v6, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mTouchSprite:Lcom/htc/sunny2/Sprite;

    iget-object v6, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mTouchSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v6}, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->addSprite(Lcom/htc/sunny2/Sprite;)V

    iget-object v6, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mTouchSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/Sprite$Layer;->setRenderable(Z)V

    iget-object v6, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mTouchSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v6, v8}, Lcom/htc/sunny2/Sprite;->setTouchable(Z)V

    iget-object v6, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mTouchSprite:Lcom/htc/sunny2/Sprite;

    int-to-float v9, v5

    iget v10, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mEnlargeSensorRatioW:F

    add-float/2addr v10, v13

    mul-float/2addr v9, v10

    float-to-int v9, v9

    int-to-float v9, v9

    int-to-float v10, v4

    iget v11, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mEnlargeSensorRatioH:F

    add-float/2addr v11, v13

    mul-float/2addr v10, v11

    float-to-int v10, v10

    int-to-float v10, v10

    neg-int v11, v4

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    invoke-virtual {v6, v9, v10, v12, v11}, Lcom/htc/sunny2/Sprite;->setupGeometry(FFFF)V

    iget-object v6, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mImageSprite:Lcom/htc/sunny2/Sprite;

    int-to-float v9, v5

    int-to-float v10, v4

    neg-int v11, v4

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    invoke-virtual {v6, v9, v10, v12, v11}, Lcom/htc/sunny2/Sprite;->setupGeometry(FFFF)V

    invoke-static {}, Lcom/htc/sunny2/Texture;->createTexture()Lcom/htc/sunny2/Texture;

    move-result-object v6

    iput-object v6, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mImageTexture:Lcom/htc/sunny2/Texture;

    iget-object v6, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mImageSprite:Lcom/htc/sunny2/Sprite;

    iget-object v9, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mImageTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v6, v9}, Lcom/htc/sunny2/Sprite;->setTexture(Lcom/htc/sunny2/Texture;)V

    iget-boolean v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mEnabledReflection:Z

    if-ne v8, v6, :cond_9

    invoke-static {v8}, Lcom/htc/sunny2/Sprite;->obtain(I)Lcom/htc/sunny2/Sprite;

    move-result-object v6

    iput-object v6, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mReflectSprite:Lcom/htc/sunny2/Sprite;

    iget-object v6, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mReflectSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v6}, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->addSprite(Lcom/htc/sunny2/Sprite;)V

    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mReflectionHeight:I

    if-nez v6, :cond_8

    iput v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mReflectionHeight:I

    :cond_8
    iget-object v6, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mReflectSprite:Lcom/htc/sunny2/Sprite;

    int-to-float v9, v5

    iget v10, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mReflectionHeight:I

    int-to-float v10, v10

    iget v11, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mReflectionHeight:I

    neg-int v11, v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    invoke-virtual {v6, v9, v10, v12, v11}, Lcom/htc/sunny2/Sprite;->setupGeometry(FFFF)V

    iget-object v6, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mReflectSprite:Lcom/htc/sunny2/Sprite;

    iget v9, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mReflectionHeight:I

    sub-int v9, v4, v9

    int-to-float v9, v9

    int-to-float v10, v4

    div-float/2addr v9, v10

    invoke-virtual {v6, v12, v9, v13, v13}, Lcom/htc/sunny2/Sprite;->setTextureCoordinatesBy2P(FFFF)V

    iget-object v6, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mReflectSprite:Lcom/htc/sunny2/Sprite;

    const/high16 v9, 0x4334

    invoke-virtual {v6, v9, v12, v12}, Lcom/htc/sunny2/Sprite;->setRotate(FFF)V

    iget-object v6, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mTouchSprite:Lcom/htc/sunny2/Sprite;

    iget v9, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mReflectionGap:I

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {v6, v12, v9, v12}, Lcom/htc/sunny2/Sprite;->setPosition(FFF)V

    iget-object v6, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mImageSprite:Lcom/htc/sunny2/Sprite;

    iget v9, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mReflectionGap:I

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {v6, v12, v9, v12}, Lcom/htc/sunny2/Sprite;->setPosition(FFF)V

    iget-object v6, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mReflectSprite:Lcom/htc/sunny2/Sprite;

    iget v9, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mReflectionGap:I

    iget v10, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mReflectionGap:I

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    neg-int v9, v9

    int-to-float v9, v9

    invoke-virtual {v6, v12, v9, v12}, Lcom/htc/sunny2/Sprite;->setPosition(FFF)V

    iget-object v6, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mReflectSprite:Lcom/htc/sunny2/Sprite;

    iget-object v9, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mImageTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v6, v9}, Lcom/htc/sunny2/Sprite;->setTexture(Lcom/htc/sunny2/Texture;)V

    :cond_9
    iget-object v6, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mTouchSprite:Lcom/htc/sunny2/Sprite;

    invoke-direct {p0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getSpriteTag(I)I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/htc/sunny2/Sprite;->setUserFlag(I)V

    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    add-int/lit8 v6, v6, -0x1

    div-int/lit8 v6, v6, 0x2

    sub-int v6, v1, v6

    iget v9, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    add-int v3, v6, v9

    if-ltz v3, :cond_b

    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    if-ge v3, v6, :cond_b

    iput v3, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mDataIndex:I

    iput-boolean v7, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mForceHidden:Z

    :goto_2
    iget-object v9, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    iget-boolean v6, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mForceHidden:Z

    if-nez v6, :cond_a

    iget-boolean v6, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mSkipItem:Z

    if-eqz v6, :cond_c

    :cond_a
    move v6, v8

    :goto_3
    invoke-virtual {p0, v0, v9, v6}, Lcom/htc/sunny2/widget/presentation/SPresentation;->updateContainerLayout(Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;Z)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_b
    const/4 v6, -0x1

    iput v6, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mDataIndex:I

    iput-boolean v8, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mForceHidden:Z

    goto :goto_2

    :cond_c
    move v6, v7

    goto :goto_3

    :cond_d
    iget-boolean v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataUpdated:Z

    if-nez v6, :cond_e

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->updateAllContainersData()V

    :cond_e
    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    invoke-virtual {p0, v6}, Lcom/htc/sunny2/widget/presentation/SPresentation;->moveToTimeSlot(I)V

    invoke-virtual {p0, v8}, Lcom/htc/sunny2/widget/presentation/SPresentation;->updateContainersOrder(Z)V

    iget-boolean v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mEnabledOpeningAnimation:Z

    if-ne v8, v6, :cond_f

    iget-boolean v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPerformOpeningAnimation:Z

    if-ne v8, v6, :cond_f

    iget-boolean v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mOpeningAnimationStart:Z

    if-nez v6, :cond_f

    iput-boolean v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mOpeningAnimationStart:Z

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->openingAnimation()V

    :goto_4
    sget-object v6, Lcom/htc/sunny2/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    const-string v7, "initContainers -"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_f
    invoke-virtual {p0, v8}, Lcom/htc/sunny2/widget/presentation/SPresentation;->enableAnimation(Z)V

    invoke-virtual {p0, v8}, Lcom/htc/sunny2/widget/presentation/SPresentation;->enabledTouchEvent(Z)V

    goto :goto_4
.end method

.method protected initDefaultLayout()V
    .locals 12

    const/4 v11, 0x0

    iget-object v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mLayoutListener:Lcom/htc/sunny2/widget/presentation/SPresentation$OnLayoutListener;

    if-nez v8, :cond_0

    iget v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    if-nez v8, :cond_2

    :cond_0
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDefaultLayout:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    :cond_1
    return-void

    :cond_2
    iget v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    new-array v8, v8, [Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    iput-object v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDefaultLayout:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    iget v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mListWidth_H:I

    iget v9, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemWidth:I

    div-int/lit8 v9, v9, 0x2

    add-int v1, v8, v9

    iget v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    add-int/lit8 v8, v8, -0x1

    div-int/lit8 v2, v8, 0x2

    iget-object v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDefaultLayout:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    new-instance v9, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    invoke-direct {v9}, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;-><init>()V

    aput-object v9, v8, v2

    iget-object v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDefaultLayout:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v8, v8, v2

    iget v9, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemWidth:I

    iput v9, v8, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mWidth:I

    iget-object v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDefaultLayout:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v8, v8, v2

    iget v9, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemHeight:I

    iput v9, v8, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mHeight:I

    iget v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    add-int/lit8 v8, v8, -0x1

    div-int/lit8 v4, v8, 0x2

    const/4 v0, 0x1

    :goto_0
    if-gt v0, v4, :cond_1

    sub-int v3, v2, v0

    int-to-float v8, v0

    int-to-float v9, v1

    int-to-float v10, v4

    invoke-virtual {p0, v8, v11, v9, v10}, Lcom/htc/sunny2/widget/presentation/SPresentation;->interpolateLayout(FFFF)F

    move-result v7

    const/high16 v8, 0x3f80

    const v9, 0x3dcccccd

    int-to-float v10, v0

    mul-float/2addr v9, v10

    sub-float v6, v8, v9

    iget-object v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDefaultLayout:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    new-instance v9, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    invoke-direct {v9}, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;-><init>()V

    aput-object v9, v8, v3

    iget-object v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDefaultLayout:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v8, v8, v3

    iget-object v8, v8, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    neg-float v9, v7

    invoke-virtual {v8, v9, v11, v11}, Lcom/htc/sunny2/view/Vector3F;->setVector3F(FFF)V

    iget-object v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDefaultLayout:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v8, v8, v3

    iget-object v8, v8, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {v8, v6, v6, v11}, Lcom/htc/sunny2/view/Vector3F;->setVector3F(FFF)V

    iget-object v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDefaultLayout:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v8, v8, v3

    iget v9, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemWidth:I

    iput v9, v8, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mWidth:I

    iget-object v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDefaultLayout:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v8, v8, v3

    iget v9, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemHeight:I

    iput v9, v8, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mHeight:I

    add-int v5, v2, v0

    iget-object v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDefaultLayout:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    new-instance v9, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    invoke-direct {v9}, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;-><init>()V

    aput-object v9, v8, v5

    iget-object v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDefaultLayout:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {v8, v7, v11, v11}, Lcom/htc/sunny2/view/Vector3F;->setVector3F(FFF)V

    iget-object v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDefaultLayout:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {v8, v6, v6, v11}, Lcom/htc/sunny2/view/Vector3F;->setVector3F(FFF)V

    iget-object v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDefaultLayout:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v8, v8, v5

    iget v9, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemWidth:I

    iput v9, v8, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mWidth:I

    iget-object v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDefaultLayout:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v8, v8, v5

    iget v9, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemHeight:I

    iput v9, v8, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mHeight:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected interpolateLayout(FFFF)F
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, v0, p4

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    div-float v0, p3, p4

    mul-float/2addr v0, p1

    add-float/2addr v0, p2

    goto :goto_0
.end method

.method protected isEnabledAnimation()Z
    .locals 2

    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAdapter:Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->isFakeAnimation()Z

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mEnabledAnimation:Z

    goto :goto_0
.end method

.method public isEnabledTouchEvent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mEnableTouchEvent:Z

    return v0
.end method

.method protected moveContainers(I)V
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAdapter:Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v10, -0x1

    if-lez p1, :cond_3

    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getContainerByLayoutPos(I)Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    move-result-object v8

    if-eqz v8, :cond_2

    iget v10, v8, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mID:I

    :cond_2
    :goto_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    :goto_2
    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    if-ge v7, v0, :cond_c

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    aget-object v8, v0, v7

    if-nez v8, :cond_5

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    if-gez p1, :cond_4

    invoke-virtual {p0, v11}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getContainerByLayoutPos(I)Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    move-result-object v8

    if-eqz v8, :cond_2

    iget v10, v8, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mID:I

    goto :goto_1

    :cond_4
    const/4 v10, -0x1

    goto :goto_1

    :cond_5
    iget v3, v8, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mLayoutPos:I

    move v4, v3

    if-gez p1, :cond_8

    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    add-int/lit8 v0, v0, -0x1

    add-int/2addr v0, v3

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    rem-int v4, v0, v1

    :cond_6
    :goto_4
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mLayoutListener:Lcom/htc/sunny2/widget/presentation/SPresentation$OnLayoutListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mLayoutListener:Lcom/htc/sunny2/widget/presentation/SPresentation$OnLayoutListener;

    iget v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    aget-object v1, v1, v7

    iget-object v5, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    iget-boolean v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mIsBouncingState:Z

    move v1, p1

    invoke-interface/range {v0 .. v6}, Lcom/htc/sunny2/widget/presentation/SPresentation$OnLayoutListener;->updateLayoutAtTimeSlot(IIIILcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;Z)V

    :goto_5
    if-ne v10, v7, :cond_a

    iput-boolean v12, v8, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mSkipItem:Z

    :goto_6
    iget-object v1, v8, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    iget-boolean v0, v8, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mForceHidden:Z

    if-nez v0, :cond_7

    iget-boolean v0, v8, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mSkipItem:Z

    if-eqz v0, :cond_b

    :cond_7
    move v0, v12

    :goto_7
    invoke-virtual {p0, v8, v1, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->updateContainerLayout(Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;Z)V

    goto :goto_3

    :cond_8
    if-lez p1, :cond_6

    add-int/lit8 v0, v3, 0x1

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    rem-int v4, v0, v1

    goto :goto_4

    :cond_9
    iget v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    aget-object v0, v0, v7

    iget-object v5, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    iget-boolean v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mIsBouncingState:Z

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/htc/sunny2/widget/presentation/SPresentation;->updateLayoutAtTimeSlot(IIIILcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;Z)V

    goto :goto_5

    :cond_a
    iput-boolean v11, v8, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mSkipItem:Z

    goto :goto_6

    :cond_b
    move v0, v11

    goto :goto_7

    :cond_c
    if-nez p1, :cond_0

    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getContainerByLayoutPos(I)Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v0, v9, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mTouchSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v9, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->getSpritePosition(Lcom/htc/sunny2/Sprite;)Lcom/htc/sunny2/view/Vector3F;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mFocusPosV:Lcom/htc/sunny2/view/Vector3F;

    goto/16 :goto_0
.end method

.method protected moveToTimeSlot(I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_UNKNOWN:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    if-lt v1, v2, :cond_6

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    if-lt p1, v1, :cond_2

    sget-object v0, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    :goto_0
    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    if-lez v1, :cond_3

    if-gez p1, :cond_3

    iput v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    :cond_0
    :goto_1
    iget-boolean v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mShiftOneItem:Z

    if-ne v4, v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mEnabledBlockScroll:Z

    if-ne v4, v1, :cond_1

    const/4 v1, 0x2

    iget v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPresentationState:I

    if-ne v1, v2, :cond_1

    const/4 p1, 0x0

    iput-boolean v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mBlockScroll:Z

    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->updateBouncingState()V

    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->moveToTimeSlot(I)V

    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/presentation/SPresentation;->updateContainersOrder(Z)V

    :goto_2
    return-void

    :cond_2
    sget-object v0, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    if-gez v1, :cond_4

    if-lez p1, :cond_4

    iput v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    goto :goto_1

    :cond_4
    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    if-ltz v1, :cond_5

    if-ltz p1, :cond_5

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyPositionChange(Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;)V

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    sub-int/2addr p1, v1

    goto :goto_1

    :cond_5
    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    if-gtz v1, :cond_0

    if-gtz p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyPositionChange(Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;)V

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    add-int/2addr p1, v1

    goto :goto_1

    :cond_6
    iput p1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->updateBouncingState()V

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->moveContainers(I)V

    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/presentation/SPresentation;->updateContainersOrder(Z)V

    goto :goto_2
.end method

.method public notifyDataSetChanged()V
    .locals 1

    new-instance v0, Lcom/htc/sunny2/widget/presentation/SPresentation$4;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/widget/presentation/SPresentation$4;-><init>(Lcom/htc/sunny2/widget/presentation/SPresentation;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public notifyDataSetChanged(I)V
    .locals 1

    new-instance v0, Lcom/htc/sunny2/widget/presentation/SPresentation$5;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny2/widget/presentation/SPresentation$5;-><init>(Lcom/htc/sunny2/widget/presentation/SPresentation;I)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected notifyDataSetChangedW()V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAdapter:Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->initContainers()V

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->updateAllContainersData()V

    goto :goto_0
.end method

.method protected notifyDataSetChangedW(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAdapter:Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->initContainers(Z)V

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->updateAllContainersData()V

    goto :goto_0
.end method

.method protected notifyPositionChange(Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;)V
    .locals 3

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->isFakeAnimation()Z

    move-result v2

    if-ne v1, v2, :cond_3

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mFakeNextUpdateIndex:I

    iget-object v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->getLastUpdateIndex()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->getTargetFocusIndex()I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->updateContainerLayoutPos(Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;)V

    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    if-gez v1, :cond_5

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->updateNewContainer(Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;)V

    :goto_2
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->updateContainerLayoutPos(Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;)V

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mFakeNextUpdateIndex:I

    if-ltz v1, :cond_2

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mFakeNextUpdateIndex:I

    iget v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    if-ge v1, v2, :cond_2

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mFakeNextUpdateIndex:I

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifySelectionChange(I)V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->updateNewContainer(Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;)V

    goto :goto_2

    :cond_3
    sget-object v1, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    if-ne v1, p1, :cond_4

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    if-ne v1, p1, :cond_0

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    goto :goto_0

    :cond_5
    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    iget v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    if-lt v1, v2, :cond_6

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    add-int/lit8 v0, v1, -0x1

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifySelectionChange(I)V

    goto :goto_1
.end method

.method protected notifySelectionChange(I)V
    .locals 1

    iput p1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectionChangeListener:Lcom/htc/sunny2/widget/presentation/SPresentation$OnSelectionChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectionChangeListener:Lcom/htc/sunny2/widget/presentation/SPresentation$OnSelectionChangeListener;

    invoke-interface {v0, p1}, Lcom/htc/sunny2/widget/presentation/SPresentation$OnSelectionChangeListener;->onSelectionChange(I)V

    :cond_0
    return-void
.end method

.method protected notifyStateChange(I)V
    .locals 1

    const/16 v0, 0x12

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSunnyEnvironment:Lcom/htc/sunny2/SunnyEnvironment;

    invoke-virtual {v0}, Lcom/htc/sunny2/SunnyEnvironment;->getHandler()I

    move-result v0

    invoke-static {v0}, Lcom/htc/sunny2/Sunny2;->Environment_LogStatus(I)V

    :cond_0
    iput p1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPresentationState:I

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mStateListener:Lcom/htc/sunny2/widget/presentation/SPresentation$OnStateListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mStateListener:Lcom/htc/sunny2/widget/presentation/SPresentation$OnStateListener;

    invoke-interface {v0, p1}, Lcom/htc/sunny2/widget/presentation/SPresentation$OnStateListener;->onStateChange(I)V

    :cond_1
    return-void
.end method

.method public notifyUpdateItem(I)V
    .locals 1

    new-instance v0, Lcom/htc/sunny2/widget/presentation/SPresentation$6;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny2/widget/presentation/SPresentation$6;-><init>(Lcom/htc/sunny2/widget/presentation/SPresentation;I)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected notifyUpdateItemW(I)V
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAdapter:Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataUpdated:Z

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getContainerByDataIndex(I)Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v4, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mDataIndex:I

    if-ltz v4, :cond_5

    iget v4, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mDataIndex:I

    iget v5, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    if-ge v4, v5, :cond_5

    iget-object v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAdapter:Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;

    invoke-virtual {v4, p1}, Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;->getItemBitmap(I)Lcom/htc/sunny2/SBitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v4, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mImageTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v4, v0, v2}, Lcom/htc/sunny2/Texture;->setSBitmap(Lcom/htc/sunny2/SBitmap;Z)V

    :goto_1
    iput-boolean v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mIsFirstRender:Z

    iput-boolean v2, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mForceHidden:Z

    :goto_2
    iget-object v4, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    iget-boolean v5, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mForceHidden:Z

    if-nez v5, :cond_2

    iget-boolean v5, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mSkipItem:Z

    if-eqz v5, :cond_3

    :cond_2
    move v2, v3

    :cond_3
    invoke-virtual {p0, v1, v4, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->updateContainerLayout(Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;Z)V

    goto :goto_0

    :cond_4
    sget-object v4, Lcom/htc/sunny2/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "null bitmap "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    iput-boolean v3, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mForceHidden:Z

    const/4 v4, -0x1

    iput v4, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mDataIndex:I

    goto :goto_2
.end method

.method protected onAnimationEnd()V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->reset()V

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->type:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->onHomingAnimationEnd()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->onFlingAnimationEnd()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->onScrollAnimationEnd()V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->onRotateSelfEnd()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/htc/sunny2/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[SPresentation] onDown()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->isEnabledAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->isEnabledTouchEvent()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->hasAnimation()Z

    move-result v1

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mShiftOneItem:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->stopAnimation()V

    :cond_2
    invoke-virtual {p0, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyStateChange(I)V

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->animateView()V

    goto :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    sget-object v0, Lcom/htc/sunny2/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[SPresentation] onFling()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    float-to-int v0, p3

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->flingW(I)V

    const/4 v0, 0x0

    return v0
.end method

.method protected onFlingAnimationEnd()V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->updateBouncingState()V

    iget-boolean v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mIsBouncingState:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->stopAnimation()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->reset()V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyStateChange(I)V

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->homing()V

    goto :goto_0
.end method

.method protected onHomingAnimationEnd()V
    .locals 0

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->stopAnimation()V

    return-void
.end method

.method protected onLayout(ZFFFII)V
    .locals 2

    invoke-super/range {p0 .. p6}, Lcom/htc/sunny2/widget/presentation/SAdapterView;->onLayout(ZFFFII)V

    sget-object v0, Lcom/htc/sunny2/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onLayout +"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p5, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSurfaceViewWidth:I

    iput p6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSurfaceViewHeight:I

    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSurfaceViewWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSurfaceViewWidth_H:I

    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSurfaceViewHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSurfaceViewHeight_H:I

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->updateViewLayout()V

    sget-object v0, Lcom/htc/sunny2/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onLayout -"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method protected onRotateSelf()V
    .locals 10

    const/4 v2, 0x0

    const/high16 v9, -0x3c4c

    iget-boolean v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mRotateClockwise:Z

    if-nez v0, :cond_0

    const/high16 v9, 0x43b4

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v7, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nArgs:I

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    if-eqz v0, :cond_1

    if-ltz v7, :cond_1

    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    add-int/lit8 v0, v0, -0x1

    if-le v7, v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    aget-object v6, v0, v7

    if-eqz v6, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nInFrame:I

    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    if-lt v0, v1, :cond_3

    iget-object v0, v6, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    iput v2, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->onAnimationEnd()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v1, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nInFrame:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nInFrame:I

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nInFrame:I

    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nInFrame:I

    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    if-ge v0, v1, :cond_6

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nInFrame:I

    int-to-float v1, v0

    sub-float v3, v9, v2

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    int-to-float v4, v0

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget-object v5, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunny2/widget/presentation/SPresentation$INTERPOLATE;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getInterpolateResult(FFFFLcom/htc/sunny2/widget/presentation/SPresentation$INTERPOLATE;)F

    move-result v8

    :cond_4
    :goto_1
    iget-object v0, v6, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    iput v8, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget-object v1, v6, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    iget-boolean v0, v6, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mForceHidden:Z

    if-nez v0, :cond_5

    iget-boolean v0, v6, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mSkipItem:Z

    if-eqz v0, :cond_7

    :cond_5
    const/4 v0, 0x1

    :goto_2
    invoke-virtual {p0, v6, v1, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->updateContainerLayout(Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;Z)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nInFrame:I

    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    if-ne v0, v1, :cond_4

    move v8, v9

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    goto :goto_2
.end method

.method protected onRotateSelfEnd()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->stopAnimation()V

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->enableAnimation(Z)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->enabledTouchEvent(Z)V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    iget-boolean v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mIsPressed:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->isEnabledAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mBlockScroll:Z

    if-ne v9, v0, :cond_1

    :cond_0
    sget-object v0, Lcom/htc/sunny2/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SPresentation] onScroll() enable animation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->isEnabledAnimation()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " block scroll:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mBlockScroll:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->hasAnimation()Z

    move-result v0

    if-ne v9, v0, :cond_2

    sget-object v0, Lcom/htc/sunny2/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[SPresentation] onScroll() has animation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->stopAnimation()V

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v1, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v2, v0

    float-to-int v3, v7

    float-to-int v4, v8

    move-object v0, p0

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/htc/sunny2/widget/presentation/SPresentation;->onScrollPresentation(IIIIFF)Z

    iput-boolean v10, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mIsSingleTapUp:Z

    move v0, v9

    goto :goto_0
.end method

.method protected onScrollAnimation()V
    .locals 10

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nInFrame:I

    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->onAnimationEnd()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v1, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nInFrame:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nInFrame:I

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nInFrame:I

    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    if-ge v0, v1, :cond_8

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nElapseTimeSlot:I

    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    if-ge v0, v1, :cond_8

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nInFrame:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    int-to-float v4, v0

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget-object v5, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunny2/widget/presentation/SPresentation$INTERPOLATE;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getInterpolateResult(FFFFLcom/htc/sunny2/widget/presentation/SPresentation$INTERPOLATE;)F

    move-result v0

    float-to-int v7, v0

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nInFrame:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v1, v0

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    int-to-float v4, v0

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget-object v5, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunny2/widget/presentation/SPresentation$INTERPOLATE;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getInterpolateResult(FFFFLcom/htc/sunny2/widget/presentation/SPresentation$INTERPOLATE;)F

    move-result v0

    float-to-int v8, v0

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_2

    sub-int v0, v7, v8

    neg-int v9, v0

    :goto_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nElapseTimeSlot:I

    sub-int v6, v8, v0

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_4

    sub-int/2addr v9, v6

    :cond_1
    :goto_2
    if-nez v9, :cond_6

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->onScrollAnimation()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_3

    sub-int v9, v7, v8

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->onAnimationEnd()V

    sget-object v0, Lcom/htc/sunny2/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[SPresentation] onScrollAnimation() wrong direction"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_1

    add-int/2addr v9, v6

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_6

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->onScrollAnimation()V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nElapseTimeSlot:I

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nElapseTimeSlot:I

    :cond_7
    :goto_3
    invoke-virtual {p0, v9}, Lcom/htc/sunny2/widget/presentation/SPresentation;->scrollByOffset(I)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nInFrame:I

    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nElapseTimeSlot:I

    sub-int v9, v0, v1

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_9

    mul-int/lit8 v9, v9, -0x1

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_7

    goto :goto_3
.end method

.method protected onScrollAnimationEnd()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->updateBouncingState()V

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->enableAnimation(Z)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->enabledTouchEvent(Z)V

    iget-boolean v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mIsBouncingState:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->stopAnimation()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->reset()V

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyStateChange(I)V

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->homing()V

    goto :goto_0
.end method

.method protected onScrollPresentation(IIIIFF)Z
    .locals 10

    invoke-virtual {p0, p3}, Lcom/htc/sunny2/widget/presentation/SPresentation;->Get3DX(I)I

    move-result v1

    const/4 v7, -0x1

    iget v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPressContainerId:I

    if-eq v7, v8, :cond_6

    iget-object v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    iget v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPressContainerId:I

    aget-object v7, v7, v8

    iget-object v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    iget v9, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPressContainerId:I

    aget-object v8, v8, v9

    iget-object v8, v8, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mTouchSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v7, v8}, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->getSpritePosition(Lcom/htc/sunny2/Sprite;)Lcom/htc/sunny2/view/Vector3F;

    move-result-object v7

    iget v7, v7, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDisplacement:F

    add-float v5, v7, v8

    int-to-float v2, v1

    sub-float v3, v2, v5

    const/4 v7, 0x0

    cmpl-float v7, v7, v3

    if-nez v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    return v7

    :cond_0
    iget-object v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    iget v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPressContainerId:I

    aget-object v7, v7, v8

    iget v7, v7, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mLayoutPos:I

    invoke-virtual {p0, v7, v3}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getTimeSlotOffsetX(IF)I

    move-result v6

    const/4 v0, 0x0

    const/high16 v7, 0x3f80

    iget v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemScrollRatio:F

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_1

    iget v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    if-gtz v7, :cond_3

    if-lez v6, :cond_3

    iget v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    if-lez v7, :cond_3

    const/4 v0, 0x1

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    iget v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    int-to-float v7, v7

    iget v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemScrollRatio:F

    mul-float/2addr v7, v8

    float-to-int v4, v7

    iget v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    add-int/2addr v7, v6

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-lt v7, v4, :cond_2

    if-lez v6, :cond_4

    iget v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    sub-int v6, v4, v7

    :cond_2
    :goto_2
    if-nez v6, :cond_5

    const/4 v7, 0x1

    goto :goto_0

    :cond_3
    iget v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    iget v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    add-int/lit8 v8, v8, -0x1

    if-lt v7, v8, :cond_1

    if-gez v6, :cond_1

    iget v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    if-gez v7, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    neg-int v7, v4

    iget v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    sub-int v6, v7, v8

    goto :goto_2

    :cond_5
    iget-object v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerHitFeedback:Lcom/htc/sunny2/widget/presentation/SPresentation$ContainerHitFeedback;

    invoke-virtual {v7}, Lcom/htc/sunny2/widget/presentation/SPresentation$ContainerHitFeedback;->reset()V

    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyStateChange(I)V

    invoke-virtual {p0, v6}, Lcom/htc/sunny2/widget/presentation/SPresentation;->scrollByOffset(I)V

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->animateView()V

    :cond_6
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 2

    sget-object v0, Lcom/htc/sunny2/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[SPresentation] onShowPress()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->isEnabledAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, -0x1

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPressContainerId:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerHitFeedback:Lcom/htc/sunny2/widget/presentation/SPresentation$ContainerHitFeedback;

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPressContainerId:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation$ContainerHitFeedback;->press(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->animateView()V

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->isEnabledAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    iput-boolean v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mIsSingleTapUp:Z

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;I)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->isEnabledAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->isEnabledTouchEvent()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    sget-object v0, Lcom/htc/sunny2/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SPresentation] fake: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->isFakeAnimation()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " touch:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->isEnabledTouchEvent()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v3

    :cond_2
    const/4 v0, -0x1

    invoke-virtual {p0, p2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getContainerId(I)I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPressContainerId:I

    if-eq v0, v1, :cond_3

    iput-boolean v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mIsPressed:Z

    invoke-virtual {p0, p2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getContainerId(I)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPressContainerId:I

    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPressStartSelectedPos:I

    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPressContainerId:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->Get3DX(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getDisplacementToContainer(IF)F

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDisplacement:F

    iget-boolean v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mShiftOneItem:Z

    if-ne v2, v0, :cond_3

    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    if-nez v0, :cond_3

    iput-boolean v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mEnabledBlockScroll:Z

    :cond_3
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mIsPressed:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mGestureDetector:Lcom/htc/sunny2/view/GestureDetector;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v2, v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->onUpW(Landroid/view/MotionEvent;I)V

    iput-boolean v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mIsPressed:Z

    iput-boolean v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mBlockScroll:Z

    iput-boolean v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mEnabledBlockScroll:Z

    goto :goto_0
.end method

.method public onUpW(Landroid/view/MotionEvent;I)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerHitFeedback:Lcom/htc/sunny2/widget/presentation/SPresentation$ContainerHitFeedback;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/presentation/SPresentation$ContainerHitFeedback;->reset()V

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->hasAnimation()Z

    move-result v0

    if-ne v2, v0, :cond_4

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->type:I

    if-ne v2, v0, :cond_4

    :cond_0
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mIsSingleTapUp:Z

    if-ne v2, v0, :cond_7

    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    if-nez v0, :cond_7

    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPressContainerId:I

    if-eq v3, v0, :cond_2

    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    iget v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPressContainerId:I

    aget-object v1, v1, v2

    iget v1, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mDataIndex:I

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerClickListener:Lcom/htc/sunny2/widget/presentation/SPresentation$OnContainerClickListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerClickListener:Lcom/htc/sunny2/widget/presentation/SPresentation$OnContainerClickListener;

    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    iget v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPressContainerId:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    invoke-interface {v0, v1, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation$OnContainerClickListener;->onContainerClick(Lcom/htc/sunny2/view/SView;I)V

    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->homing()V

    :cond_2
    :goto_0
    iput v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPressContainerId:I

    iput v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPressStartSelectedPos:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mIsSingleTapUp:Z

    :cond_3
    :goto_1
    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->isEnabledAnimation()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->isEnabledTouchEvent()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_5
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mShiftOneItem:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPressContainerId:I

    aget-object v0, v0, v1

    iget v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mDataIndex:I

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->scrollToW(I)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->homing()V

    goto :goto_0

    :cond_7
    const/4 v0, 0x2

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPresentationState:I

    if-ne v0, v1, :cond_8

    invoke-virtual {p0, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyStateChange(I)V

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->homing()V

    goto :goto_0

    :cond_8
    const/4 v0, 0x3

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPresentationState:I

    if-eq v0, v1, :cond_2

    const/4 v0, 0x4

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPresentationState:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPresentationState:I

    if-nez v0, :cond_2

    invoke-virtual {p0, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyStateChange(I)V

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->homing()V

    goto :goto_0
.end method

.method protected openingAnimation()V
    .locals 10

    const v8, 0x3e4ccccd

    const/4 v9, 0x0

    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    div-int/lit8 v4, v6, 0x2

    invoke-virtual {p0, v4}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getContainerLayout(I)Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    move-result-object v2

    new-instance v5, Lcom/htc/sunny2/view/Vector3F;

    iget-object v6, v2, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    iget v6, v6, Lcom/htc/sunny2/view/Vector3F;->mX:F

    add-float/2addr v6, v8

    iget-object v7, v2, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    iget v7, v7, Lcom/htc/sunny2/view/Vector3F;->mY:F

    add-float/2addr v7, v8

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    const/4 v3, 0x0

    :goto_0
    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    if-ge v3, v6, :cond_2

    iget-object v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    aget-object v1, v6, v3

    if-nez v1, :cond_0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v6, v2, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iget v6, v6, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget-object v7, v2, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iget v7, v7, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget-object v8, v2, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iget v8, v8, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    invoke-virtual {v1, v6, v7, v8}, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->setPosition(FFF)V

    invoke-virtual {v1, v9}, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->setAlpha(I)V

    iget-object v6, v2, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    iget v6, v6, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget-object v7, v2, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    iget v7, v7, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget-object v8, v2, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    iget v8, v8, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    invoke-virtual {v1, v6, v7, v8}, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->setScale(FFF)V

    iget-object v6, v2, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    iget v6, v6, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget-object v7, v2, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    iget v7, v7, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget-object v8, v2, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    iget v8, v8, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    invoke-virtual {v1, v6, v7, v8}, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->setRotate(FFF)V

    new-instance v0, Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-direct {v0}, Lcom/htc/sunny2/view/animation/SAnimationController;-><init>()V

    if-ne v4, v3, :cond_1

    iget-object v6, v2, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {v0, v5, v6}, Lcom/htc/sunny2/view/animation/SAnimationController;->setScaleAnimation(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;)V

    const/16 v6, 0xff

    invoke-virtual {v0, v9, v6}, Lcom/htc/sunny2/view/animation/SAnimationController;->setAlphaAnimation(II)V

    new-instance v6, Lcom/htc/sunny2/widget/presentation/SPresentation$1;

    invoke-direct {v6, p0}, Lcom/htc/sunny2/widget/presentation/SPresentation$1;-><init>(Lcom/htc/sunny2/widget/presentation/SPresentation;)V

    invoke-virtual {v0, v6}, Lcom/htc/sunny2/view/animation/SAnimationController;->setAnimationListener(Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    :goto_2
    const-wide/16 v6, 0x190

    invoke-virtual {v0, v6, v7}, Lcom/htc/sunny2/view/animation/SAnimationController;->setDuration(J)V

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcom/htc/sunny2/view/animation/SAnimationController;->setFillAfter(Z)V

    sget-object v6, Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;->EASEINOUT_CUBIC:Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;

    invoke-virtual {v0, v6}, Lcom/htc/sunny2/view/animation/SAnimationController;->setInterpolator(Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;)V

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->cancelAnimation()V

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->startAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    goto :goto_1

    :cond_1
    iget-object v6, v2, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {v0, v5, v6}, Lcom/htc/sunny2/view/animation/SAnimationController;->setScaleAnimation(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;)V

    invoke-virtual {v0, v9, v9}, Lcom/htc/sunny2/view/animation/SAnimationController;->setAlphaAnimation(II)V

    goto :goto_2

    :cond_2
    return-void
.end method

.method protected openingAnimation2()V
    .locals 6

    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v4}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getContainerLayout(I)Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    aget-object v1, v4, v3

    new-instance v0, Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-direct {v0}, Lcom/htc/sunny2/view/animation/SAnimationController;-><init>()V

    iget-object v4, v2, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iget-object v5, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    iget-object v5, v5, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {v0, v4, v5}, Lcom/htc/sunny2/view/animation/SAnimationController;->setPositionAnimation(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;)V

    iget-object v4, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    iget v4, v4, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mAlpha:I

    iget-object v5, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    iget v5, v5, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mAlpha:I

    invoke-virtual {v0, v4, v5}, Lcom/htc/sunny2/view/animation/SAnimationController;->setAlphaAnimation(II)V

    iget-object v4, v2, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    iget-object v5, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    iget-object v5, v5, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {v0, v4, v5}, Lcom/htc/sunny2/view/animation/SAnimationController;->setRotationAnimation(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;)V

    iget-object v4, v2, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    iget-object v5, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    iget-object v5, v5, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {v0, v4, v5}, Lcom/htc/sunny2/view/animation/SAnimationController;->setScaleAnimation(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;)V

    sget-object v4, Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;->EASEINOUT_CUBIC:Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;

    invoke-virtual {v0, v4}, Lcom/htc/sunny2/view/animation/SAnimationController;->setInterpolator(Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;)V

    const-wide/16 v4, 0x2bc

    invoke-virtual {v0, v4, v5}, Lcom/htc/sunny2/view/animation/SAnimationController;->setDuration(J)V

    if-nez v3, :cond_0

    new-instance v4, Lcom/htc/sunny2/widget/presentation/SPresentation$2;

    invoke-direct {v4, p0}, Lcom/htc/sunny2/widget/presentation/SPresentation$2;-><init>(Lcom/htc/sunny2/widget/presentation/SPresentation;)V

    invoke-virtual {v0, v4}, Lcom/htc/sunny2/view/animation/SAnimationController;->setAnimationListener(Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    :cond_0
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->cancelAnimation()V

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->startAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public rotateSelf(IZ)V
    .locals 1

    new-instance v0, Lcom/htc/sunny2/widget/presentation/SPresentation$12;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/sunny2/widget/presentation/SPresentation$12;-><init>(Lcom/htc/sunny2/widget/presentation/SPresentation;IZ)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected rotateSelfW(IZ)V
    .locals 4

    const/16 v2, 0x12

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->isEnabledAnimation()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyStateChange(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getContainerByDataIndex(I)Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyStateChange(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->reset()V

    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v2, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mID:I

    iput v2, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nArgs:I

    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->DURATION_ROTATE_SELF:I

    iput v2, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    sget-object v2, Lcom/htc/sunny2/widget/presentation/SPresentation$INTERPOLATE;->EASEINOUT_CUBIC:Lcom/htc/sunny2/widget/presentation/SPresentation$INTERPOLATE;

    iput-object v2, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunny2/widget/presentation/SPresentation$INTERPOLATE;

    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    const/4 v2, 0x5

    iput v2, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->type:I

    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyStateChange(I)V

    iput-boolean p2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mRotateClockwise:Z

    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/presentation/SPresentation;->enableAnimation(Z)V

    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/presentation/SPresentation;->enabledTouchEvent(Z)V

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->animateView()V

    goto :goto_0
.end method

.method protected runOnRenderThread(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/RenderThreadHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "runOnRenderThread() mSViewHandler == null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected scrollByOffset(I)V
    .locals 1

    if-lez p1, :cond_1

    sget-object v0, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    iput-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    :cond_0
    :goto_0
    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->moveToTimeSlot(I)V

    return-void

    :cond_1
    if-gez p1, :cond_0

    sget-object v0, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    iput-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    goto :goto_0
.end method

.method public scrollTo(I)V
    .locals 1

    new-instance v0, Lcom/htc/sunny2/widget/presentation/SPresentation$10;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny2/widget/presentation/SPresentation$10;-><init>(Lcom/htc/sunny2/widget/presentation/SPresentation;I)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public scrollToLeft()V
    .locals 1

    new-instance v0, Lcom/htc/sunny2/widget/presentation/SPresentation$8;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/widget/presentation/SPresentation$8;-><init>(Lcom/htc/sunny2/widget/presentation/SPresentation;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected scrollToLeftW()V
    .locals 3

    const/16 v2, 0x12

    const/4 v0, 0x1

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyStateChange(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->isEnabledAnimation()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyStateChange(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->reset()V

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->type:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    iput v1, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->DURATION_SCROLL_NEXT:I

    iget-object v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v2, v2, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    :cond_2
    :goto_1
    sget-object v0, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    iput-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    sget-object v1, Lcom/htc/sunny2/widget/presentation/SPresentation$INTERPOLATE;->EASEINOUT_CUBIC:Lcom/htc/sunny2/widget/presentation/SPresentation$INTERPOLATE;

    iput-object v1, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunny2/widget/presentation/SPresentation$INTERPOLATE;

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    const/4 v1, 0x2

    iput v1, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->type:I

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyStateChange(I)V

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->animateView()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->stopAnimation()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    iget-object v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v2, v2, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nElapseTimeSlot:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    rem-int/2addr v1, v2

    iput v1, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->DURATION_SCROLL_NEXT:I

    iget-object v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v2, v2, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    goto :goto_1
.end method

.method public scrollToRight()V
    .locals 1

    new-instance v0, Lcom/htc/sunny2/widget/presentation/SPresentation$9;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/widget/presentation/SPresentation$9;-><init>(Lcom/htc/sunny2/widget/presentation/SPresentation;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected scrollToRightW()V
    .locals 4

    const/4 v3, 0x0

    const/16 v2, 0x12

    const/4 v0, 0x1

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyStateChange(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->isEnabledAnimation()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyStateChange(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->reset()V

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->type:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    iput v1, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->DURATION_SCROLL_PREVIOUS:I

    iget-object v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v2, v2, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iput v3, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nInFrame:I

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iput v3, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nElapseTimeSlot:I

    :cond_2
    :goto_1
    sget-object v0, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    iput-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    sget-object v1, Lcom/htc/sunny2/widget/presentation/SPresentation$INTERPOLATE;->EASEINOUT_CUBIC:Lcom/htc/sunny2/widget/presentation/SPresentation$INTERPOLATE;

    iput-object v1, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunny2/widget/presentation/SPresentation$INTERPOLATE;

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    const/4 v1, 0x2

    iput v1, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->type:I

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyStateChange(I)V

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->animateView()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_4

    invoke-virtual {p0, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyStateChange(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    iget-object v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v2, v2, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nElapseTimeSlot:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    rem-int/2addr v1, v2

    iput v1, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->DURATION_SCROLL_PREVIOUS:I

    iget-object v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v2, v2, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    goto :goto_1
.end method

.method protected scrollToW(I)V
    .locals 9

    const/16 v4, 0x12

    const/4 v8, 0x4

    const/4 v7, 0x0

    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    sub-int v0, p1, v3

    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    if-ge p1, v3, :cond_0

    if-ltz p1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0, v4}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyStateChange(I)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->isEnabledAnimation()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0, v4}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyStateChange(I)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;

    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    iget v5, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    invoke-virtual {v3, v4, v0, v5, v6}, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->init(IIII)V

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->isFakeAnimation()Z

    move-result v4

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->getFirstUpdateIndex()I

    move-result v3

    iput v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mFakeNextUpdateIndex:I

    iget-object v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->getPosOffset()I

    move-result v0

    :cond_3
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    mul-int v2, v1, v3

    iget-object v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->reset()V

    if-gez v0, :cond_9

    sget-object v3, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    iput-object v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    if-lez v3, :cond_7

    iget-object v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    iget v5, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    sub-int/2addr v4, v5

    add-int/lit8 v5, v1, -0x1

    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, v3, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    :goto_1
    iget-object v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->DURATION_SCROLL_TO:I

    iput v4, v3, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    if-gtz v3, :cond_c

    sget-object v3, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    iget-object v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    if-ne v3, v4, :cond_c

    iget-object v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iput v8, v3, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget-object v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v4, v4, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    iget-object v5, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v5, v5, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    invoke-virtual {p0, v4, v5}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getRefineDuration(II)I

    move-result v4

    iput v4, v3, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    iget-object v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v3, v3, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    if-gtz v3, :cond_5

    iget-object v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iput v7, v3, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    :cond_5
    const/16 v3, 0x9

    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyStateChange(I)V

    iget-object v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v3, v3, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    if-lez v3, :cond_6

    iget-object v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v3, v3, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    if-nez v3, :cond_d

    :cond_6
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->onAnimationEnd()V

    goto/16 :goto_0

    :cond_7
    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    if-gez v3, :cond_8

    iget-object v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/2addr v4, v2

    iput v4, v3, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto :goto_1

    :cond_8
    iget-object v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iput v2, v3, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto :goto_1

    :cond_9
    sget-object v3, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    iput-object v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    if-lez v3, :cond_a

    iget-object v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    add-int/2addr v4, v2

    iput v4, v3, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto :goto_1

    :cond_a
    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    if-gez v3, :cond_b

    iget-object v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    iget v5, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v4, v2

    iput v4, v3, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto :goto_1

    :cond_b
    iget-object v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iput v2, v3, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto :goto_1

    :cond_c
    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    if-gt v3, v4, :cond_4

    sget-object v3, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    iget-object v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iput v8, v3, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    goto :goto_2

    :cond_d
    iget-object v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget-object v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v4, v4, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    iget-object v5, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v5, v5, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v3, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    iget-object v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    sget-object v4, Lcom/htc/sunny2/widget/presentation/SPresentation$INTERPOLATE;->EASEINOUT_CUBIC:Lcom/htc/sunny2/widget/presentation/SPresentation$INTERPOLATE;

    iput-object v4, v3, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunny2/widget/presentation/SPresentation$INTERPOLATE;

    iget-object v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    const/4 v4, 0x2

    iput v4, v3, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->type:I

    invoke-virtual {p0, v7}, Lcom/htc/sunny2/widget/presentation/SPresentation;->enableAnimation(Z)V

    invoke-virtual {p0, v7}, Lcom/htc/sunny2/widget/presentation/SPresentation;->enabledTouchEvent(Z)V

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->animateView()V

    goto/16 :goto_0
.end method

.method public setAdapter(Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;)V
    .locals 2

    sget-object v0, Lcom/htc/sunny2/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "setAdapter +"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/htc/sunny2/widget/presentation/SPresentation$3;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny2/widget/presentation/SPresentation$3;-><init>(Lcom/htc/sunny2/widget/presentation/SPresentation;Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/htc/sunny2/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "setAdapter -"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected setAdapterW(Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;)V
    .locals 2

    sget-object v0, Lcom/htc/sunny2/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "setAdapterW +"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->stopAnimation()V

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAdapter:Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAdapter:Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;

    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SAdapterView;->mDataSetObserver:Lcom/htc/sunny2/widget/presentation/SAdapterView$SAdapterDataSetObserver;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;->unregisterDataSetObserver(Lcom/htc/sunny2/widget/presentation/SDataSetObserver;)V

    :cond_0
    iput-object p1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAdapter:Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAdapter:Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/htc/sunny2/widget/presentation/SAdapterView$SAdapterDataSetObserver;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/widget/presentation/SAdapterView$SAdapterDataSetObserver;-><init>(Lcom/htc/sunny2/widget/presentation/SAdapterView;)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/presentation/SAdapterView;->mDataSetObserver:Lcom/htc/sunny2/widget/presentation/SAdapterView$SAdapterDataSetObserver;

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAdapter:Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;

    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SAdapterView;->mDataSetObserver:Lcom/htc/sunny2/widget/presentation/SAdapterView$SAdapterDataSetObserver;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;->registerDataSetObserver(Lcom/htc/sunny2/widget/presentation/SDataSetObserver;)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPerformOpeningAnimation:Z

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->initContainers()V

    sget-object v0, Lcom/htc/sunny2/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "setAdapterW -"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setClipSize(IIII)V
    .locals 6

    new-instance v0, Lcom/htc/sunny2/widget/presentation/SPresentation$13;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/sunny2/widget/presentation/SPresentation$13;-><init>(Lcom/htc/sunny2/widget/presentation/SPresentation;IIII)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected setContainerCount(I)V
    .locals 1

    new-instance v0, Lcom/htc/sunny2/widget/presentation/SPresentation$15;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny2/widget/presentation/SPresentation$15;-><init>(Lcom/htc/sunny2/widget/presentation/SPresentation;I)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setEdgeItemScrollRatio(F)V
    .locals 3

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    cmpg-float v0, p1, v1

    if-gez v0, :cond_0

    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemScrollRatio:F

    :goto_0
    return-void

    :cond_0
    cmpl-float v0, p1, v2

    if-lez v0, :cond_1

    iput v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemScrollRatio:F

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemScrollRatio:F

    goto :goto_0
.end method

.method public setOnContainerClickListener(Lcom/htc/sunny2/widget/presentation/SPresentation$OnContainerClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerClickListener:Lcom/htc/sunny2/widget/presentation/SPresentation$OnContainerClickListener;

    return-void
.end method

.method public setOnLayoutListener(Lcom/htc/sunny2/widget/presentation/SPresentation$OnLayoutListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mLayoutListener:Lcom/htc/sunny2/widget/presentation/SPresentation$OnLayoutListener;

    return-void
.end method

.method public setOnSelectionChangeListener(Lcom/htc/sunny2/widget/presentation/SPresentation$OnSelectionChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectionChangeListener:Lcom/htc/sunny2/widget/presentation/SPresentation$OnSelectionChangeListener;

    return-void
.end method

.method public setOnStateListener(Lcom/htc/sunny2/widget/presentation/SPresentation$OnStateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mStateListener:Lcom/htc/sunny2/widget/presentation/SPresentation$OnStateListener;

    return-void
.end method

.method public setReflectionGap(I)V
    .locals 0

    iput p1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mReflectionGap:I

    return-void
.end method

.method public setReflectionHeight(I)V
    .locals 0

    iput p1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mReflectionHeight:I

    return-void
.end method

.method public setSelection(IZ)V
    .locals 1

    new-instance v0, Lcom/htc/sunny2/widget/presentation/SPresentation$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/sunny2/widget/presentation/SPresentation$7;-><init>(Lcom/htc/sunny2/widget/presentation/SPresentation;IZ)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected setSelectionW(IZ)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    if-ltz p1, :cond_0

    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    if-ge p1, v4, :cond_0

    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    if-ne v4, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->isEnabledAnimation()Z

    move-result v4

    if-nez v4, :cond_2

    const/4 p2, 0x0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getContainerByDataIndex(I)Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    move-result-object v3

    if-ne v5, p2, :cond_3

    iget-boolean v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataUpdated:Z

    if-ne v5, v4, :cond_3

    if-eqz v3, :cond_3

    iget-boolean v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mShiftOneItem:Z

    if-nez v4, :cond_3

    iget v4, v3, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mDataIndex:I

    invoke-virtual {p0, v4}, Lcom/htc/sunny2/widget/presentation/SPresentation;->scrollToW(I)V

    goto :goto_0

    :cond_3
    iput p1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    sget-object v4, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_UNKNOWN:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    iput-object v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    iget-object v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    if-eqz v4, :cond_8

    iget-boolean v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataUpdated:Z

    if-ne v5, v4, :cond_8

    const/4 v2, -0x1

    const/4 v0, 0x0

    :goto_1
    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    if-ge v0, v4, :cond_7

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getContainerByLayoutPos(I)Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    move-result-object v1

    if-nez v1, :cond_4

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    add-int/lit8 v4, v4, -0x1

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v0, v4

    add-int v2, v4, p1

    if-ltz v2, :cond_5

    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    if-lt v2, v4, :cond_6

    :cond_5
    iput-boolean v5, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mForceHidden:Z

    const/4 v4, -0x1

    iput v4, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mDataIndex:I

    goto :goto_2

    :cond_6
    iput-boolean v6, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mForceHidden:Z

    iput v2, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mDataIndex:I

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->updateAllContainersData()V

    :cond_8
    invoke-virtual {p0, v6}, Lcom/htc/sunny2/widget/presentation/SPresentation;->moveToTimeSlot(I)V

    invoke-virtual {p0, v5}, Lcom/htc/sunny2/widget/presentation/SPresentation;->updateContainersOrder(Z)V

    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifySelectionChange(I)V

    goto :goto_0
.end method

.method public setShiftOneItemMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mShiftOneItem:Z

    return-void
.end method

.method public setTimeSlotInterval(I)V
    .locals 1

    iput p1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL_HALF:I

    return-void
.end method

.method public stopAnimation()V
    .locals 3

    const/4 v2, 0x1

    const/16 v1, 0x12

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->hasAnimation()Z

    move-result v0

    if-ne v2, v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->type:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->enableAnimation(Z)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->reset()V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyStateChange(I)V

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyStateChange(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->reset()V

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyStateChange(I)V

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyStateChange(I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->reset()V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyStateChange(I)V

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyStateChange(I)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->reset()V

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyStateChange(I)V

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyStateChange(I)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->reset()V

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyStateChange(I)V

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyStateChange(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method

.method protected updateAllContainersData()V
    .locals 10

    const/4 v6, 0x0

    const/4 v7, 0x1

    iget-object v5, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAdapter:Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    array-length v4, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_8

    aget-object v2, v0, v3

    if-nez v2, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iget v5, v2, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mDataIndex:I

    if-ltz v5, :cond_6

    iget v5, v2, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mDataIndex:I

    iget v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    if-ge v5, v8, :cond_6

    iget-object v5, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAdapter:Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;

    iget v8, v2, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mDataIndex:I

    invoke-virtual {v5, v8}, Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;->getItemBitmap(I)Lcom/htc/sunny2/SBitmap;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v5, v2, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mImageTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v5, v1, v6}, Lcom/htc/sunny2/Texture;->setSBitmap(Lcom/htc/sunny2/SBitmap;Z)V

    :goto_3
    iput-boolean v6, v2, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mForceHidden:Z

    :goto_4
    iget-boolean v5, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mOpeningAnimationStart:Z

    if-nez v5, :cond_2

    iget-object v8, v2, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    iget-boolean v5, v2, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mForceHidden:Z

    if-nez v5, :cond_4

    iget-boolean v5, v2, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mSkipItem:Z

    if-eqz v5, :cond_7

    :cond_4
    move v5, v7

    :goto_5
    invoke-virtual {p0, v2, v8, v5}, Lcom/htc/sunny2/widget/presentation/SPresentation;->updateContainerLayout(Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;Z)V

    goto :goto_2

    :cond_5
    sget-object v5, Lcom/htc/sunny2/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "null bitmap "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mDataIndex:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    iput-boolean v7, v2, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mForceHidden:Z

    const/4 v5, -0x1

    iput v5, v2, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mDataIndex:I

    goto :goto_4

    :cond_7
    move v5, v6

    goto :goto_5

    :cond_8
    iput-boolean v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mIsFirstRender:Z

    iput-boolean v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataUpdated:Z

    goto :goto_0
.end method

.method public updateAllContainersLayout()V
    .locals 1

    new-instance v0, Lcom/htc/sunny2/widget/presentation/SPresentation$14;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/widget/presentation/SPresentation$14;-><init>(Lcom/htc/sunny2/widget/presentation/SPresentation;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected updateBouncingState()V
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    if-lt v0, v1, :cond_1

    :cond_0
    iput-boolean v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mIsBouncingState:Z

    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    if-lez v0, :cond_2

    iput-boolean v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mIsBouncingState:Z

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    if-gez v0, :cond_3

    iput-boolean v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mIsBouncingState:Z

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mIsBouncingState:Z

    goto :goto_0
.end method

.method protected updateContainerLayout(Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;Z)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p2, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iget v0, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget-object v1, p2, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iget v1, v1, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget-object v2, p2, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iget v2, v2, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->setPosition(FFF)V

    iget-object v0, p2, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    iget v0, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget-object v1, p2, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    iget v1, v1, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget-object v2, p2, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    iget v2, v2, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->setRotate(FFF)V

    iget-boolean v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mEnabledReflection:Z

    if-ne v3, v0, :cond_0

    iget-object v0, p1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mReflectSprite:Lcom/htc/sunny2/Sprite;

    const/high16 v1, 0x4334

    iget-object v2, p2, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    iget v2, v2, Lcom/htc/sunny2/view/Vector3F;->mX:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1, v4, v4}, Lcom/htc/sunny2/Sprite;->setRotate(FFF)V

    :cond_0
    iget-object v0, p2, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    iget v0, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget-object v1, p2, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    iget v1, v1, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget-object v2, p2, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    iget v2, v2, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->setScale(FFF)V

    if-ne v3, p3, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->setVisibility(Z)V

    :goto_0
    iget v0, p2, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mAlpha:I

    invoke-virtual {p1, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->setAlpha(I)V

    iget-boolean v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPerformOpeningAnimation:Z

    if-ne v3, v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->updateViewLayout()V

    :cond_1
    return-void

    :cond_2
    iget-boolean v0, p2, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mVisible:Z

    invoke-virtual {p1, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->setVisibility(Z)V

    goto :goto_0
.end method

.method protected updateContainerLayoutPos(Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;)V
    .locals 4

    sget-object v1, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    if-ne p1, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mLayoutPos:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    rem-int/2addr v2, v3

    iput v2, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mLayoutPos:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    if-ne p1, v1, :cond_1

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    aget-object v1, v1, v0

    iget v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mLayoutPos:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    rem-int/2addr v2, v3

    iput v2, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mLayoutPos:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected updateContainersOrder()V
    .locals 8

    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    add-int/lit8 v6, v6, -0x1

    div-int/lit8 v4, v6, 0x2

    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    div-int/lit8 v5, v6, 0x2

    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-gt v6, v5, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    iget v7, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mLayoutPos:I

    sub-int/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v1, v6}, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->setRenderOrder(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    if-lez v6, :cond_1

    add-int/lit8 v4, v4, -0x1

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    iget v7, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mLayoutPos:I

    sub-int/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v1, v6}, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->setRenderOrder(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    if-gez v6, :cond_2

    add-int/lit8 v4, v4, 0x1

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    iget v7, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mLayoutPos:I

    sub-int/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v1, v6}, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->setRenderOrder(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method protected updateContainersOrder(Z)V
    .locals 3

    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL_HALF:I

    if-gt v1, v2, :cond_2

    const/4 v0, 0x1

    :goto_1
    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mReorderRegion:I

    if-eq v0, v1, :cond_3

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mReorderRegion:I

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mReorderItem:I

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->updateContainersOrder()V

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mReorderItem:I

    iget v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    if-eq v1, v2, :cond_4

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mReorderItem:I

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->updateContainersOrder()V

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->updateContainersOrder()V

    goto :goto_0
.end method

.method protected updateLayoutAtTimeSlot(IIIILcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;Z)V
    .locals 20

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v14, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v13, 0x0

    const/4 v8, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getContainerLayout(I)Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getContainerLayout(I)Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    move-result-object v15

    if-eqz v15, :cond_0

    iget-object v0, v3, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v10, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget-object v0, v15, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v5, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget-object v0, v3, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v12, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget-object v0, v15, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v7, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v16, v0

    int-to-float v0, v4

    move/from16 v17, v0

    sub-float v18, v5, v10

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v10, v1, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->interpolateLinear(FFFF)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/htc/sunny2/view/Vector3F;->mX:F

    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v16, v0

    int-to-float v0, v4

    move/from16 v17, v0

    sub-float v18, v7, v12

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v12, v1, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->interpolateLinear(FFFF)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/htc/sunny2/view/Vector3F;->mY:F

    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    iget-object v0, v3, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v11, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget-object v0, v15, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v6, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget-object v0, v3, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v13, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget-object v0, v15, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v8, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v16, v0

    int-to-float v0, v4

    move/from16 v17, v0

    sub-float v18, v6, v11

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v11, v1, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->interpolateLinear(FFFF)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/htc/sunny2/view/Vector3F;->mX:F

    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v16, v0

    int-to-float v0, v4

    move/from16 v17, v0

    sub-float v18, v8, v13

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v13, v1, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->interpolateLinear(FFFF)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/htc/sunny2/view/Vector3F;->mY:F

    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v16, v0

    const/high16 v17, 0x3f80

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    iget-object v0, v3, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v10, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget-object v0, v15, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v5, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget-object v0, v3, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v14, v0, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    iget-object v0, v15, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v9, v0, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    iget-object v0, v3, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v12, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget-object v0, v15, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v7, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v16, v0

    int-to-float v0, v4

    move/from16 v17, v0

    sub-float v18, v5, v10

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v10, v1, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->interpolateLinear(FFFF)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/htc/sunny2/view/Vector3F;->mX:F

    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v16, v0

    int-to-float v0, v4

    move/from16 v17, v0

    sub-float v18, v7, v12

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v12, v1, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->interpolateLinear(FFFF)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/htc/sunny2/view/Vector3F;->mY:F

    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v16, v0

    int-to-float v0, v4

    move/from16 v17, v0

    sub-float v18, v9, v14

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v14, v1, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->interpolateLinear(FFFF)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    int-to-float v0, v4

    move/from16 v16, v0

    iget v0, v3, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mAlpha:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    iget v0, v15, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mAlpha:I

    move/from16 v18, v0

    iget v0, v3, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mAlpha:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-static/range {v16 .. v19}, Lcom/htc/sunny2/widget/presentation/SPresentation;->interpolateLinear(FFFF)F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p5

    iput v0, v1, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mAlpha:I

    goto/16 :goto_0
.end method

.method protected updateNewContainer(Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;)V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v2, -0x1

    sget-object v4, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    if-ne v4, p1, :cond_1

    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    add-int/lit8 v2, v4, -0x1

    :goto_0
    invoke-virtual {p0, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getContainerByLayoutPos(I)Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    sget-object v4, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    if-ne v4, p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/4 v3, -0x1

    iget-object v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->isFakeAnimation()Z

    move-result v4

    if-ne v7, v4, :cond_6

    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mFakeNextUpdateIndex:I

    sget-object v4, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    if-ne v4, p1, :cond_5

    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mFakeNextUpdateIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mFakeNextUpdateIndex:I

    :cond_3
    :goto_2
    if-ltz v3, :cond_4

    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    if-lt v3, v4, :cond_7

    :cond_4
    iput-boolean v7, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mForceHidden:Z

    const/4 v4, -0x1

    iput v4, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mDataIndex:I

    :goto_3
    iget v4, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mDataIndex:I

    if-eq v4, v3, :cond_0

    iput v3, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mDataIndex:I

    if-ltz v3, :cond_0

    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    if-ge v3, v4, :cond_0

    iget-object v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAdapter:Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;

    invoke-virtual {v4, v3}, Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;->getItemBitmap(I)Lcom/htc/sunny2/SBitmap;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v4, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mImageTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v4, v0, v6}, Lcom/htc/sunny2/Texture;->setSBitmap(Lcom/htc/sunny2/SBitmap;Z)V

    :goto_4
    iput-boolean v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mIsFirstRender:Z

    goto :goto_1

    :cond_5
    sget-object v4, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    if-ne v4, p1, :cond_3

    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mFakeNextUpdateIndex:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mFakeNextUpdateIndex:I

    goto :goto_2

    :cond_6
    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    add-int/lit8 v4, v4, -0x1

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v2, v4

    iget v5, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    add-int v3, v4, v5

    goto :goto_2

    :cond_7
    iget-object v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->isFakeAnimation()Z

    move-result v4

    if-ne v7, v4, :cond_8

    iget-object v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;

    invoke-virtual {v4, v3}, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->isForceHidden(I)Z

    move-result v4

    if-ne v7, v4, :cond_8

    iput-boolean v7, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mForceHidden:Z

    goto :goto_3

    :cond_8
    iput-boolean v6, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mForceHidden:Z

    goto :goto_3

    :cond_9
    sget-object v4, Lcom/htc/sunny2/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "null bitmap "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mDataIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method protected updateViewLayout()V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v3}, Lcom/htc/sunny2/view/animation/SAnimationController;->isEnded()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v3}, Lcom/htc/sunny2/view/animation/SAnimationController;->isFillAfter()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v3}, Lcom/htc/sunny2/view/animation/SAnimationController;->isEnded()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v4}, Lcom/htc/sunny2/view/animation/SAnimationController;->isPositionAnimation()Z

    move-result v4

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v3}, Lcom/htc/sunny2/view/animation/SAnimationController;->getCurrentPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v2

    iget v3, v2, Lcom/htc/sunny2/view/Vector3F;->mX:F

    float-to-int v0, v3

    iget v3, v2, Lcom/htc/sunny2/view/Vector3F;->mY:F

    float-to-int v1, v3

    :cond_1
    :goto_0
    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mListWidth:I

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mListHeight:I

    if-nez v3, :cond_4

    :cond_2
    iget v3, p0, Lcom/htc/sunny2/SceneNode;->mNodeId:I

    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mClipSizeL:I

    add-int/2addr v4, v0

    iget v5, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mClipSizeT:I

    sub-int/2addr v5, v1

    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSurfaceViewWidth:I

    iget v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mClipSizeL:I

    iget v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mClipSizeR:I

    add-int/2addr v7, v8

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSurfaceViewHeight:I

    iget v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mClipSizeT:I

    iget v9, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mClipSizeB:I

    add-int/2addr v8, v9

    sub-int/2addr v7, v8

    invoke-static {v3, v4, v5, v6, v7}, Lcom/htc/sunny2/Sunny2;->Scissor_SetArea(IIIII)V

    :goto_1
    return-void

    :cond_3
    iget-object v3, p0, Lcom/htc/sunny2/view/SView;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iget v3, v3, Lcom/htc/sunny2/view/Vector3F;->mX:F

    float-to-int v0, v3

    iget-object v3, p0, Lcom/htc/sunny2/view/SView;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iget v3, v3, Lcom/htc/sunny2/view/Vector3F;->mY:F

    float-to-int v1, v3

    goto :goto_0

    :cond_4
    iget v3, p0, Lcom/htc/sunny2/SceneNode;->mNodeId:I

    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mClipSizeL:I

    add-int/2addr v4, v0

    iget v5, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mClipSizeT:I

    sub-int/2addr v5, v1

    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSurfaceViewWidth:I

    iget v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mClipSizeL:I

    iget v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mClipSizeR:I

    add-int/2addr v7, v8

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSurfaceViewHeight:I

    iget v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mClipSizeT:I

    iget v9, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mClipSizeB:I

    add-int/2addr v8, v9

    sub-int/2addr v7, v8

    invoke-static {v3, v4, v5, v6, v7}, Lcom/htc/sunny2/Sunny2;->Scissor_SetArea(IIIII)V

    goto :goto_1
.end method
