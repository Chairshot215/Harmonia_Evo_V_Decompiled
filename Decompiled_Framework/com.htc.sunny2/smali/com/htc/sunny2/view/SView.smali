.class public Lcom/htc/sunny2/view/SView;
.super Lcom/htc/sunny2/SceneNode;
.source "SView.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/view/SView$SViewHandler;,
        Lcom/htc/sunny2/view/SView$GlobalHeaderBarParm;,
        Lcom/htc/sunny2/view/SView$OnClickListener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field public static final BACKGROUND_RENDER_ORDER:I = -0xc8

.field public static final BOTTOM_MOST_RENDER_ORDER:I = -0x64

.field static final DISABLED:I = 0x20

.field static final DRAWABLE_STATE_DIRTY:I = 0x400

.field protected static final EMPTY_STATE_SET:[I = null

.field static final ENABLED:I = 0x0

.field protected static final ENABLED_FOCUSED_SELECTED_STATE_SET:[I = null

.field protected static final ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final ENABLED_FOCUSED_STATE_SET:[I = null

.field protected static final ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I = null

.field static final ENABLED_MASK:I = 0x20

.field protected static final ENABLED_SELECTED_STATE_SET:[I = null

.field protected static final ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final ENABLED_STATE_SET:[I = null

.field protected static final ENABLED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final FIRST_STATE_SET:[I = null

.field private static final FOCUSABLE:I = 0x1

.field private static final FOCUSABLE_MASK:I = 0x1

.field static final FOCUSED:I = 0x2

.field protected static final FOCUSED_SELECTED_STATE_SET:[I = null

.field protected static final FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final FOCUSED_STATE_SET:[I = null

.field protected static final FOCUSED_WINDOW_FOCUSED_STATE_SET:[I = null

.field static final FORCE_LAYOUT:I = 0x1000

.field public static final GONE:I = 0x8

.field public static final HAPTIC_FEEDBACK_ENABLED:I = 0x10000000

.field static final HAS_BOUNDS:I = 0x10

.field protected static final INVALID_ID:I = 0x0

.field private static final INVISIBLE:I = 0x4

.field static final IS_RESOURCE_CREATED:I = 0x8

.field protected static final LAST_STATE_SET:[I = null

.field static final LAYOUT_REQUIRED:I = 0x2000

.field static final MEASURED_DIMENSION_SET:I = 0x800

.field protected static final MIDDLE_STATE_SET:[I = null

.field public static final NORMAL_RENDER_ORDER:I = 0x0

.field private static final PRESSED:I = 0x4000

.field protected static final PRESSED_ENABLED_FOCUSED_SELECTED_STATE_SET:[I = null

.field protected static final PRESSED_ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_ENABLED_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_ENABLED_SELECTED_STATE_SET:[I = null

.field protected static final PRESSED_ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_ENABLED_STATE_SET:[I = null

.field protected static final PRESSED_ENABLED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_FIRST_STATE_SET:[I = null

.field protected static final PRESSED_FOCUSED_SELECTED_STATE_SET:[I = null

.field protected static final PRESSED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_LAST_STATE_SET:[I = null

.field protected static final PRESSED_MIDDLE_STATE_SET:[I = null

.field protected static final PRESSED_SELECTED_STATE_SET:[I = null

.field protected static final PRESSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_SINGLE_STATE_SET:[I = null

.field protected static final PRESSED_STATE_SET:[I = null

.field protected static final PRESSED_WINDOW_FOCUSED_STATE_SET:[I = null

.field static final SELECTED:I = 0x4

.field protected static final SELECTED_STATE_SET:[I = null

.field protected static final SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final SINGLE_STATE_SET:[I = null

.field private static final TAG:Ljava/lang/String; = "SView"

.field public static final TOP_MOST_RENDER_ORDER:I = 0x64

.field private static final VIEW_STATE_SETS:[[I = null

.field private static final VISIBILITY_FLAGS:[I = null

.field static final VISIBILITY_MASK:I = 0xc

.field public static final VISIBLE:I = 0x0

.field static final WANTS_FOCUS:I = 0x1

.field protected static final WINDOW_FOCUSED_STATE_SET:[I

.field static final sThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private LAYOUT_LOCKER:Ljava/lang/Object;

.field protected mAlpha:F

.field protected mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

.field protected mAnimationLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mBGDrawable:Landroid/graphics/drawable/Drawable;

.field private mBackgroundResource:I

.field private mBackgroundSizeChanged:Z

.field private mBackgroundSprite:Lcom/htc/sunny2/Sprite;

.field private mBackgroundTexture:Lcom/htc/sunny2/Texture;

.field protected mClickListener:Lcom/htc/sunny2/view/SView$OnClickListener;

.field protected mContext:Landroid/content/Context;

.field private mDrawableState:[I

.field protected mEnlargeSensorAreaB:I

.field protected mEnlargeSensorAreaL:I

.field protected mEnlargeSensorAreaR:I

.field protected mEnlargeSensorAreaT:I

.field protected mHasLayoutAnimation:Z

.field protected mHeight:I

.field protected mHostContextName:Ljava/lang/String;

.field protected mLayoutParams:Lcom/htc/sunny2/view/SViewGroup$LayoutParams;

.field protected mMeasuredHeight:I

.field protected mMeasuredWidth:I

.field private mMinHeight:I

.field private mMinWidth:I

.field mOldHeightMeasureSpec:I

.field mOldWidthMeasureSpec:I

.field protected mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mOrder:I

.field protected mPaddingBottom:I

.field protected mPaddingLeft:I

.field protected mPaddingRight:I

.field protected mPaddingTop:I

.field protected mParentView:Lcom/htc/sunny2/view/SViewParent;

.field mPrivateFlags:I

.field protected mRenderOrder:Z

.field protected mResources:Landroid/content/res/Resources;

.field protected mRotation:Lcom/htc/sunny2/view/Vector3F;

.field protected mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

.field protected mScale:Lcom/htc/sunny2/view/Vector3F;

.field protected mSunnyContext:Lcom/htc/sunny2/SunnyContext;

.field protected mTouchable:Z

.field protected mTranslation:Lcom/htc/sunny2/view/Vector3F;

.field mViewFlags:I

.field protected mViewTagObject:Ljava/lang/Object;

.field protected mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-class v0, Lcom/htc/sunny2/view/SView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/htc/sunny2/view/SView;->$assertionsDisabled:Z

    new-array v0, v2, [I

    sput-object v0, Lcom/htc/sunny2/view/SView;->EMPTY_STATE_SET:[I

    new-array v0, v1, [I

    const v3, 0x101009e

    aput v3, v0, v2

    sput-object v0, Lcom/htc/sunny2/view/SView;->ENABLED_STATE_SET:[I

    new-array v0, v1, [I

    const v3, 0x101009c

    aput v3, v0, v2

    sput-object v0, Lcom/htc/sunny2/view/SView;->FOCUSED_STATE_SET:[I

    new-array v0, v1, [I

    const v3, 0x10100a1

    aput v3, v0, v2

    sput-object v0, Lcom/htc/sunny2/view/SView;->SELECTED_STATE_SET:[I

    new-array v0, v1, [I

    const v3, 0x10100a7

    aput v3, v0, v2

    sput-object v0, Lcom/htc/sunny2/view/SView;->PRESSED_STATE_SET:[I

    new-array v0, v1, [I

    const v3, 0x101009d

    aput v3, v0, v2

    sput-object v0, Lcom/htc/sunny2/view/SView;->WINDOW_FOCUSED_STATE_SET:[I

    sget-object v0, Lcom/htc/sunny2/view/SView;->ENABLED_STATE_SET:[I

    sget-object v3, Lcom/htc/sunny2/view/SView;->FOCUSED_STATE_SET:[I

    invoke-static {v0, v3}, Lcom/htc/sunny2/view/SView;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/view/SView;->ENABLED_FOCUSED_STATE_SET:[I

    sget-object v0, Lcom/htc/sunny2/view/SView;->ENABLED_STATE_SET:[I

    sget-object v3, Lcom/htc/sunny2/view/SView;->SELECTED_STATE_SET:[I

    invoke-static {v0, v3}, Lcom/htc/sunny2/view/SView;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/view/SView;->ENABLED_SELECTED_STATE_SET:[I

    sget-object v0, Lcom/htc/sunny2/view/SView;->ENABLED_STATE_SET:[I

    sget-object v3, Lcom/htc/sunny2/view/SView;->WINDOW_FOCUSED_STATE_SET:[I

    invoke-static {v0, v3}, Lcom/htc/sunny2/view/SView;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/view/SView;->ENABLED_WINDOW_FOCUSED_STATE_SET:[I

    sget-object v0, Lcom/htc/sunny2/view/SView;->FOCUSED_STATE_SET:[I

    sget-object v3, Lcom/htc/sunny2/view/SView;->SELECTED_STATE_SET:[I

    invoke-static {v0, v3}, Lcom/htc/sunny2/view/SView;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/view/SView;->FOCUSED_SELECTED_STATE_SET:[I

    sget-object v0, Lcom/htc/sunny2/view/SView;->FOCUSED_STATE_SET:[I

    sget-object v3, Lcom/htc/sunny2/view/SView;->WINDOW_FOCUSED_STATE_SET:[I

    invoke-static {v0, v3}, Lcom/htc/sunny2/view/SView;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/view/SView;->FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    sget-object v0, Lcom/htc/sunny2/view/SView;->SELECTED_STATE_SET:[I

    sget-object v3, Lcom/htc/sunny2/view/SView;->WINDOW_FOCUSED_STATE_SET:[I

    invoke-static {v0, v3}, Lcom/htc/sunny2/view/SView;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/view/SView;->SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    sget-object v0, Lcom/htc/sunny2/view/SView;->ENABLED_FOCUSED_STATE_SET:[I

    sget-object v3, Lcom/htc/sunny2/view/SView;->SELECTED_STATE_SET:[I

    invoke-static {v0, v3}, Lcom/htc/sunny2/view/SView;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/view/SView;->ENABLED_FOCUSED_SELECTED_STATE_SET:[I

    sget-object v0, Lcom/htc/sunny2/view/SView;->ENABLED_FOCUSED_STATE_SET:[I

    sget-object v3, Lcom/htc/sunny2/view/SView;->WINDOW_FOCUSED_STATE_SET:[I

    invoke-static {v0, v3}, Lcom/htc/sunny2/view/SView;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/view/SView;->ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    sget-object v0, Lcom/htc/sunny2/view/SView;->ENABLED_SELECTED_STATE_SET:[I

    sget-object v3, Lcom/htc/sunny2/view/SView;->WINDOW_FOCUSED_STATE_SET:[I

    invoke-static {v0, v3}, Lcom/htc/sunny2/view/SView;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/view/SView;->ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    sget-object v0, Lcom/htc/sunny2/view/SView;->FOCUSED_SELECTED_STATE_SET:[I

    sget-object v3, Lcom/htc/sunny2/view/SView;->WINDOW_FOCUSED_STATE_SET:[I

    invoke-static {v0, v3}, Lcom/htc/sunny2/view/SView;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/view/SView;->FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    sget-object v0, Lcom/htc/sunny2/view/SView;->ENABLED_FOCUSED_SELECTED_STATE_SET:[I

    sget-object v3, Lcom/htc/sunny2/view/SView;->WINDOW_FOCUSED_STATE_SET:[I

    invoke-static {v0, v3}, Lcom/htc/sunny2/view/SView;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/view/SView;->ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    sget-object v0, Lcom/htc/sunny2/view/SView;->PRESSED_STATE_SET:[I

    sget-object v3, Lcom/htc/sunny2/view/SView;->WINDOW_FOCUSED_STATE_SET:[I

    invoke-static {v0, v3}, Lcom/htc/sunny2/view/SView;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/view/SView;->PRESSED_WINDOW_FOCUSED_STATE_SET:[I

    sget-object v0, Lcom/htc/sunny2/view/SView;->PRESSED_STATE_SET:[I

    sget-object v3, Lcom/htc/sunny2/view/SView;->SELECTED_STATE_SET:[I

    invoke-static {v0, v3}, Lcom/htc/sunny2/view/SView;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/view/SView;->PRESSED_SELECTED_STATE_SET:[I

    sget-object v0, Lcom/htc/sunny2/view/SView;->PRESSED_SELECTED_STATE_SET:[I

    sget-object v3, Lcom/htc/sunny2/view/SView;->WINDOW_FOCUSED_STATE_SET:[I

    invoke-static {v0, v3}, Lcom/htc/sunny2/view/SView;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/view/SView;->PRESSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    sget-object v0, Lcom/htc/sunny2/view/SView;->PRESSED_STATE_SET:[I

    sget-object v3, Lcom/htc/sunny2/view/SView;->FOCUSED_STATE_SET:[I

    invoke-static {v0, v3}, Lcom/htc/sunny2/view/SView;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/view/SView;->PRESSED_FOCUSED_STATE_SET:[I

    sget-object v0, Lcom/htc/sunny2/view/SView;->PRESSED_FOCUSED_STATE_SET:[I

    sget-object v3, Lcom/htc/sunny2/view/SView;->WINDOW_FOCUSED_STATE_SET:[I

    invoke-static {v0, v3}, Lcom/htc/sunny2/view/SView;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/view/SView;->PRESSED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    sget-object v0, Lcom/htc/sunny2/view/SView;->PRESSED_FOCUSED_STATE_SET:[I

    sget-object v3, Lcom/htc/sunny2/view/SView;->SELECTED_STATE_SET:[I

    invoke-static {v0, v3}, Lcom/htc/sunny2/view/SView;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/view/SView;->PRESSED_FOCUSED_SELECTED_STATE_SET:[I

    sget-object v0, Lcom/htc/sunny2/view/SView;->PRESSED_FOCUSED_SELECTED_STATE_SET:[I

    sget-object v3, Lcom/htc/sunny2/view/SView;->WINDOW_FOCUSED_STATE_SET:[I

    invoke-static {v0, v3}, Lcom/htc/sunny2/view/SView;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/view/SView;->PRESSED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    sget-object v0, Lcom/htc/sunny2/view/SView;->PRESSED_STATE_SET:[I

    sget-object v3, Lcom/htc/sunny2/view/SView;->ENABLED_STATE_SET:[I

    invoke-static {v0, v3}, Lcom/htc/sunny2/view/SView;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/view/SView;->PRESSED_ENABLED_STATE_SET:[I

    sget-object v0, Lcom/htc/sunny2/view/SView;->PRESSED_ENABLED_STATE_SET:[I

    sget-object v3, Lcom/htc/sunny2/view/SView;->WINDOW_FOCUSED_STATE_SET:[I

    invoke-static {v0, v3}, Lcom/htc/sunny2/view/SView;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/view/SView;->PRESSED_ENABLED_WINDOW_FOCUSED_STATE_SET:[I

    sget-object v0, Lcom/htc/sunny2/view/SView;->PRESSED_ENABLED_STATE_SET:[I

    sget-object v3, Lcom/htc/sunny2/view/SView;->SELECTED_STATE_SET:[I

    invoke-static {v0, v3}, Lcom/htc/sunny2/view/SView;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/view/SView;->PRESSED_ENABLED_SELECTED_STATE_SET:[I

    sget-object v0, Lcom/htc/sunny2/view/SView;->PRESSED_ENABLED_SELECTED_STATE_SET:[I

    sget-object v3, Lcom/htc/sunny2/view/SView;->WINDOW_FOCUSED_STATE_SET:[I

    invoke-static {v0, v3}, Lcom/htc/sunny2/view/SView;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/view/SView;->PRESSED_ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    sget-object v0, Lcom/htc/sunny2/view/SView;->PRESSED_ENABLED_STATE_SET:[I

    sget-object v3, Lcom/htc/sunny2/view/SView;->FOCUSED_STATE_SET:[I

    invoke-static {v0, v3}, Lcom/htc/sunny2/view/SView;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/view/SView;->PRESSED_ENABLED_FOCUSED_STATE_SET:[I

    sget-object v0, Lcom/htc/sunny2/view/SView;->PRESSED_ENABLED_FOCUSED_STATE_SET:[I

    sget-object v3, Lcom/htc/sunny2/view/SView;->WINDOW_FOCUSED_STATE_SET:[I

    invoke-static {v0, v3}, Lcom/htc/sunny2/view/SView;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/view/SView;->PRESSED_ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    sget-object v0, Lcom/htc/sunny2/view/SView;->PRESSED_ENABLED_FOCUSED_STATE_SET:[I

    sget-object v3, Lcom/htc/sunny2/view/SView;->SELECTED_STATE_SET:[I

    invoke-static {v0, v3}, Lcom/htc/sunny2/view/SView;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/view/SView;->PRESSED_ENABLED_FOCUSED_SELECTED_STATE_SET:[I

    sget-object v0, Lcom/htc/sunny2/view/SView;->PRESSED_ENABLED_FOCUSED_SELECTED_STATE_SET:[I

    sget-object v3, Lcom/htc/sunny2/view/SView;->WINDOW_FOCUSED_STATE_SET:[I

    invoke-static {v0, v3}, Lcom/htc/sunny2/view/SView;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/view/SView;->PRESSED_ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    const/16 v0, 0x20

    new-array v0, v0, [[I

    sget-object v3, Lcom/htc/sunny2/view/SView;->EMPTY_STATE_SET:[I

    aput-object v3, v0, v2

    sget-object v3, Lcom/htc/sunny2/view/SView;->WINDOW_FOCUSED_STATE_SET:[I

    aput-object v3, v0, v1

    sget-object v3, Lcom/htc/sunny2/view/SView;->SELECTED_STATE_SET:[I

    aput-object v3, v0, v5

    sget-object v3, Lcom/htc/sunny2/view/SView;->SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v3, v0, v6

    const/4 v3, 0x4

    sget-object v4, Lcom/htc/sunny2/view/SView;->FOCUSED_STATE_SET:[I

    aput-object v4, v0, v3

    const/4 v3, 0x5

    sget-object v4, Lcom/htc/sunny2/view/SView;->FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v4, v0, v3

    const/4 v3, 0x6

    sget-object v4, Lcom/htc/sunny2/view/SView;->FOCUSED_SELECTED_STATE_SET:[I

    aput-object v4, v0, v3

    const/4 v3, 0x7

    sget-object v4, Lcom/htc/sunny2/view/SView;->FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v4, v0, v3

    const/16 v3, 0x8

    sget-object v4, Lcom/htc/sunny2/view/SView;->ENABLED_STATE_SET:[I

    aput-object v4, v0, v3

    const/16 v3, 0x9

    sget-object v4, Lcom/htc/sunny2/view/SView;->ENABLED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v4, v0, v3

    const/16 v3, 0xa

    sget-object v4, Lcom/htc/sunny2/view/SView;->ENABLED_SELECTED_STATE_SET:[I

    aput-object v4, v0, v3

    const/16 v3, 0xb

    sget-object v4, Lcom/htc/sunny2/view/SView;->ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v4, v0, v3

    const/16 v3, 0xc

    sget-object v4, Lcom/htc/sunny2/view/SView;->ENABLED_FOCUSED_STATE_SET:[I

    aput-object v4, v0, v3

    const/16 v3, 0xd

    sget-object v4, Lcom/htc/sunny2/view/SView;->ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v4, v0, v3

    const/16 v3, 0xe

    sget-object v4, Lcom/htc/sunny2/view/SView;->ENABLED_FOCUSED_SELECTED_STATE_SET:[I

    aput-object v4, v0, v3

    const/16 v3, 0xf

    sget-object v4, Lcom/htc/sunny2/view/SView;->ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v4, v0, v3

    const/16 v3, 0x10

    sget-object v4, Lcom/htc/sunny2/view/SView;->PRESSED_STATE_SET:[I

    aput-object v4, v0, v3

    const/16 v3, 0x11

    sget-object v4, Lcom/htc/sunny2/view/SView;->PRESSED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v4, v0, v3

    const/16 v3, 0x12

    sget-object v4, Lcom/htc/sunny2/view/SView;->PRESSED_SELECTED_STATE_SET:[I

    aput-object v4, v0, v3

    const/16 v3, 0x13

    sget-object v4, Lcom/htc/sunny2/view/SView;->PRESSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v4, v0, v3

    const/16 v3, 0x14

    sget-object v4, Lcom/htc/sunny2/view/SView;->PRESSED_FOCUSED_STATE_SET:[I

    aput-object v4, v0, v3

    const/16 v3, 0x15

    sget-object v4, Lcom/htc/sunny2/view/SView;->PRESSED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v4, v0, v3

    const/16 v3, 0x16

    sget-object v4, Lcom/htc/sunny2/view/SView;->PRESSED_FOCUSED_SELECTED_STATE_SET:[I

    aput-object v4, v0, v3

    const/16 v3, 0x17

    sget-object v4, Lcom/htc/sunny2/view/SView;->PRESSED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v4, v0, v3

    const/16 v3, 0x18

    sget-object v4, Lcom/htc/sunny2/view/SView;->PRESSED_ENABLED_STATE_SET:[I

    aput-object v4, v0, v3

    const/16 v3, 0x19

    sget-object v4, Lcom/htc/sunny2/view/SView;->PRESSED_ENABLED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v4, v0, v3

    const/16 v3, 0x1a

    sget-object v4, Lcom/htc/sunny2/view/SView;->PRESSED_ENABLED_SELECTED_STATE_SET:[I

    aput-object v4, v0, v3

    const/16 v3, 0x1b

    sget-object v4, Lcom/htc/sunny2/view/SView;->PRESSED_ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v4, v0, v3

    const/16 v3, 0x1c

    sget-object v4, Lcom/htc/sunny2/view/SView;->PRESSED_ENABLED_FOCUSED_STATE_SET:[I

    aput-object v4, v0, v3

    const/16 v3, 0x1d

    sget-object v4, Lcom/htc/sunny2/view/SView;->PRESSED_ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v4, v0, v3

    const/16 v3, 0x1e

    sget-object v4, Lcom/htc/sunny2/view/SView;->PRESSED_ENABLED_FOCUSED_SELECTED_STATE_SET:[I

    aput-object v4, v0, v3

    const/16 v3, 0x1f

    sget-object v4, Lcom/htc/sunny2/view/SView;->PRESSED_ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v4, v0, v3

    sput-object v0, Lcom/htc/sunny2/view/SView;->VIEW_STATE_SETS:[[I

    new-array v0, v1, [I

    const v3, 0x10100a6

    aput v3, v0, v2

    sput-object v0, Lcom/htc/sunny2/view/SView;->LAST_STATE_SET:[I

    new-array v0, v1, [I

    const v3, 0x10100a4

    aput v3, v0, v2

    sput-object v0, Lcom/htc/sunny2/view/SView;->FIRST_STATE_SET:[I

    new-array v0, v1, [I

    const v3, 0x10100a5

    aput v3, v0, v2

    sput-object v0, Lcom/htc/sunny2/view/SView;->MIDDLE_STATE_SET:[I

    new-array v0, v1, [I

    const v1, 0x10100a3

    aput v1, v0, v2

    sput-object v0, Lcom/htc/sunny2/view/SView;->SINGLE_STATE_SET:[I

    new-array v0, v5, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/sunny2/view/SView;->PRESSED_LAST_STATE_SET:[I

    new-array v0, v5, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/htc/sunny2/view/SView;->PRESSED_FIRST_STATE_SET:[I

    new-array v0, v5, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/htc/sunny2/view/SView;->PRESSED_MIDDLE_STATE_SET:[I

    new-array v0, v5, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/htc/sunny2/view/SView;->PRESSED_SINGLE_STATE_SET:[I

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/htc/sunny2/view/SView;->sThreadLocal:Ljava/lang/ThreadLocal;

    new-array v0, v6, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/htc/sunny2/view/SView;->VISIBILITY_FLAGS:[I

    return-void

    :cond_0
    move v0, v2

    goto/16 :goto_0

    :array_0
    .array-data 0x4
        0xa6t 0x0t 0x1t 0x1t
        0xa7t 0x0t 0x1t 0x1t
    .end array-data

    :array_1
    .array-data 0x4
        0xa4t 0x0t 0x1t 0x1t
        0xa7t 0x0t 0x1t 0x1t
    .end array-data

    :array_2
    .array-data 0x4
        0xa5t 0x0t 0x1t 0x1t
        0xa7t 0x0t 0x1t 0x1t
    .end array-data

    :array_3
    .array-data 0x4
        0xa3t 0x0t 0x1t 0x1t
        0xa7t 0x0t 0x1t 0x1t
    .end array-data

    :array_4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)V
    .locals 6

    const/4 v5, 0x1

    const/high16 v4, -0x8000

    const/4 v3, 0x0

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/htc/sunny2/SceneNode;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/view/SView;->LAYOUT_LOCKER:Ljava/lang/Object;

    iput-object v3, p0, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    new-instance v0, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunny2/view/Vector3F;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/view/SView;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    new-instance v0, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunny2/view/Vector3F;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/view/SView;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    new-instance v0, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v0, v2, v2, v2}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    iput-object v0, p0, Lcom/htc/sunny2/view/SView;->mScale:Lcom/htc/sunny2/view/Vector3F;

    iput v2, p0, Lcom/htc/sunny2/view/SView;->mAlpha:F

    iput-boolean v5, p0, Lcom/htc/sunny2/view/SView;->mRenderOrder:Z

    iput-boolean v1, p0, Lcom/htc/sunny2/view/SView;->mTouchable:Z

    iput-boolean v1, p0, Lcom/htc/sunny2/view/SView;->mHasLayoutAnimation:Z

    iput-object v3, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/view/SView;->mAnimationLock:Ljava/util/concurrent/locks/ReentrantLock;

    iput-object v3, p0, Lcom/htc/sunny2/view/SView;->mViewTagObject:Ljava/lang/Object;

    iput-object v3, p0, Lcom/htc/sunny2/view/SView;->mClickListener:Lcom/htc/sunny2/view/SView$OnClickListener;

    iput v1, p0, Lcom/htc/sunny2/view/SView;->mOrder:I

    iput v4, p0, Lcom/htc/sunny2/view/SView;->mOldWidthMeasureSpec:I

    iput v4, p0, Lcom/htc/sunny2/view/SView;->mOldHeightMeasureSpec:I

    iput v1, p0, Lcom/htc/sunny2/view/SView;->mEnlargeSensorAreaL:I

    iput v1, p0, Lcom/htc/sunny2/view/SView;->mEnlargeSensorAreaT:I

    iput v1, p0, Lcom/htc/sunny2/view/SView;->mEnlargeSensorAreaR:I

    iput v1, p0, Lcom/htc/sunny2/view/SView;->mEnlargeSensorAreaB:I

    invoke-direct {p0, p1, p2, v5}, Lcom/htc/sunny2/view/SView;->init(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Z)V
    .locals 5

    const/high16 v4, -0x8000

    const/4 v3, 0x0

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/htc/sunny2/SceneNode;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/view/SView;->LAYOUT_LOCKER:Ljava/lang/Object;

    iput-object v3, p0, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    new-instance v0, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunny2/view/Vector3F;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/view/SView;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    new-instance v0, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunny2/view/Vector3F;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/view/SView;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    new-instance v0, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v0, v2, v2, v2}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    iput-object v0, p0, Lcom/htc/sunny2/view/SView;->mScale:Lcom/htc/sunny2/view/Vector3F;

    iput v2, p0, Lcom/htc/sunny2/view/SView;->mAlpha:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/view/SView;->mRenderOrder:Z

    iput-boolean v1, p0, Lcom/htc/sunny2/view/SView;->mTouchable:Z

    iput-boolean v1, p0, Lcom/htc/sunny2/view/SView;->mHasLayoutAnimation:Z

    iput-object v3, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/view/SView;->mAnimationLock:Ljava/util/concurrent/locks/ReentrantLock;

    iput-object v3, p0, Lcom/htc/sunny2/view/SView;->mViewTagObject:Ljava/lang/Object;

    iput-object v3, p0, Lcom/htc/sunny2/view/SView;->mClickListener:Lcom/htc/sunny2/view/SView$OnClickListener;

    iput v1, p0, Lcom/htc/sunny2/view/SView;->mOrder:I

    iput v4, p0, Lcom/htc/sunny2/view/SView;->mOldWidthMeasureSpec:I

    iput v4, p0, Lcom/htc/sunny2/view/SView;->mOldHeightMeasureSpec:I

    iput v1, p0, Lcom/htc/sunny2/view/SView;->mEnlargeSensorAreaL:I

    iput v1, p0, Lcom/htc/sunny2/view/SView;->mEnlargeSensorAreaT:I

    iput v1, p0, Lcom/htc/sunny2/view/SView;->mEnlargeSensorAreaR:I

    iput v1, p0, Lcom/htc/sunny2/view/SView;->mEnlargeSensorAreaB:I

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/sunny2/view/SView;->init(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Z)V

    return-void
.end method

.method protected constructor <init>(Lcom/htc/sunny2/SceneNode$NODE_MODE;Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Z)V
    .locals 5

    const/high16 v4, -0x8000

    const/4 v3, 0x0

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/htc/sunny2/SceneNode;-><init>(Lcom/htc/sunny2/SceneNode$NODE_MODE;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/view/SView;->LAYOUT_LOCKER:Ljava/lang/Object;

    iput-object v3, p0, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    new-instance v0, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunny2/view/Vector3F;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/view/SView;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    new-instance v0, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunny2/view/Vector3F;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/view/SView;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    new-instance v0, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v0, v2, v2, v2}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    iput-object v0, p0, Lcom/htc/sunny2/view/SView;->mScale:Lcom/htc/sunny2/view/Vector3F;

    iput v2, p0, Lcom/htc/sunny2/view/SView;->mAlpha:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/view/SView;->mRenderOrder:Z

    iput-boolean v1, p0, Lcom/htc/sunny2/view/SView;->mTouchable:Z

    iput-boolean v1, p0, Lcom/htc/sunny2/view/SView;->mHasLayoutAnimation:Z

    iput-object v3, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/view/SView;->mAnimationLock:Ljava/util/concurrent/locks/ReentrantLock;

    iput-object v3, p0, Lcom/htc/sunny2/view/SView;->mViewTagObject:Ljava/lang/Object;

    iput-object v3, p0, Lcom/htc/sunny2/view/SView;->mClickListener:Lcom/htc/sunny2/view/SView$OnClickListener;

    iput v1, p0, Lcom/htc/sunny2/view/SView;->mOrder:I

    iput v4, p0, Lcom/htc/sunny2/view/SView;->mOldWidthMeasureSpec:I

    iput v4, p0, Lcom/htc/sunny2/view/SView;->mOldHeightMeasureSpec:I

    iput v1, p0, Lcom/htc/sunny2/view/SView;->mEnlargeSensorAreaL:I

    iput v1, p0, Lcom/htc/sunny2/view/SView;->mEnlargeSensorAreaT:I

    iput v1, p0, Lcom/htc/sunny2/view/SView;->mEnlargeSensorAreaR:I

    iput v1, p0, Lcom/htc/sunny2/view/SView;->mEnlargeSensorAreaB:I

    invoke-direct {p0, p2, p3, p4}, Lcom/htc/sunny2/view/SView;->init(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/htc/sunny2/view/SView;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/sunny2/view/SView;->cancelAnimationIRT()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/sunny2/view/SView;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/sunny2/view/SView;->applyAnimation()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/sunny2/view/SView;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/sunny2/view/SView;->invalidateBackgroundDrawable()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/sunny2/view/SView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/sunny2/view/SView;->setBackgroundResource_IRT(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/sunny2/view/SView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/sunny2/view/SView;->setGlobalBackgroundResource_IRT(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/sunny2/view/SView;Lcom/htc/sunny2/view/SView$GlobalHeaderBarParm;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/sunny2/view/SView;->setGlobalHeaderBar_IRT(Lcom/htc/sunny2/view/SView$GlobalHeaderBarParm;)V

    return-void
.end method

.method private applyAnimation()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/animation/SAnimationController;->isReady()Z

    move-result v0

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/animation/SAnimationController;->start()V

    invoke-virtual {p0}, Lcom/htc/sunny2/view/SView;->onAnimationStart()V

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/animation/SAnimationController;->animate()V

    invoke-direct {p0}, Lcom/htc/sunny2/view/SView;->updateLayoutParameter()V

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/animation/SAnimationController;->isEnded()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThreadHandler;->sendEmptyMessage(I)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny2/view/SView;->onAnimationEnd()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/htc/sunny2/view/SView;->updateLayoutParameter()V

    goto :goto_0
.end method

.method private cancelAnimationIRT()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mAnimationLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/animation/SAnimationController;->isEnded()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/animation/SAnimationController;->cancel()V

    invoke-direct {p0}, Lcom/htc/sunny2/view/SView;->updateLayoutParameter()V

    invoke-virtual {p0}, Lcom/htc/sunny2/view/SView;->onAnimationCancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mAnimationLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/htc/sunny2/view/SView;->mAnimationLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public static getDefaultSize(II)I
    .locals 3

    move v0, p0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    move v0, p0

    goto :goto_0

    :sswitch_1
    move v0, v2

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method private init(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Z)V
    .locals 4

    iput-object p1, p0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/view/SView;->mResources:Landroid/content/res/Resources;

    iput-object p2, p0, Lcom/htc/sunny2/view/SView;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/view/SView;->mHostContextName:Ljava/lang/String;

    new-instance v0, Lcom/htc/sunny2/view/SView$SViewHandler;

    iget-object v1, p0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SViewHandler-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/sunny2/view/SView;->getNodeId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/sunny2/view/SView;->getRenderThread()Lcom/htc/sunny2/RenderThread;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/htc/sunny2/view/SView$SViewHandler;-><init>(Lcom/htc/sunny2/view/SView;Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunny2/RenderThread;)V

    iput-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    const/high16 v0, 0x1000

    iput v0, p0, Lcom/htc/sunny2/view/SView;->mViewFlags:I

    iput-boolean p3, p0, Lcom/htc/sunny2/view/SView;->mRenderOrder:Z

    return-void
.end method

.method private invalidateBackgroundDrawable()V
    .locals 8

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/htc/sunny2/view/SView;->getWidth()I

    move-result v4

    if-lt v4, v6, :cond_0

    invoke-virtual {p0}, Lcom/htc/sunny2/view/SView;->getHeight()I

    move-result v4

    if-ge v4, v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v2, v4, v5}, Lcom/htc/sunny2/SBitmap;->createBitmap(Landroid/graphics/drawable/Drawable;II)Lcom/htc/sunny2/SBitmap;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunny2/view/SView;->mBackgroundTexture:Lcom/htc/sunny2/Texture;

    if-nez v4, :cond_2

    invoke-static {v3}, Lcom/htc/sunny2/Texture;->createTexture(Lcom/htc/sunny2/SBitmap;)Lcom/htc/sunny2/Texture;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/sunny2/view/SView;->mBackgroundTexture:Lcom/htc/sunny2/Texture;

    iget-object v4, p0, Lcom/htc/sunny2/view/SView;->mBackgroundTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0, v4}, Lcom/htc/sunny2/Sprite;->setTexture(Lcom/htc/sunny2/Texture;)V

    :goto_1
    invoke-virtual {v3}, Lcom/htc/sunny2/SBitmap;->recycle()V

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0, v4, v5, v7, v7}, Lcom/htc/sunny2/Sprite;->setupGeometry(FFFF)V

    invoke-virtual {v0, v6}, Lcom/htc/sunny2/Sprite;->setVisibility(Z)V

    invoke-virtual {v0, v6}, Lcom/htc/sunny2/Sprite;->setTouchable(Z)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/htc/sunny2/view/SView;->mBackgroundTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v4, v3}, Lcom/htc/sunny2/Texture;->setSBitmap(Lcom/htc/sunny2/SBitmap;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v5}, Lcom/htc/sunny2/Sprite;->setVisibility(Z)V

    invoke-virtual {v0, v5}, Lcom/htc/sunny2/Sprite;->setTouchable(Z)V

    goto :goto_0
.end method

.method public static resolveSize(II)I
    .locals 3

    move v0, p0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    move v0, p0

    goto :goto_0

    :sswitch_1
    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :sswitch_2
    move v0, v2

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private setBackgroundResource_IRT(I)V
    .locals 2

    if-eqz p1, :cond_0

    iget v1, p0, Lcom/htc/sunny2/view/SView;->mBackgroundResource:I

    if-ne p1, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/htc/sunny2/view/SView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/view/SView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iput p1, p0, Lcom/htc/sunny2/view/SView;->mBackgroundResource:I

    goto :goto_0
.end method

.method private setGlobalBackgroundResource_IRT(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    invoke-interface {v0, p1}, Lcom/htc/sunny2/view/SViewParent;->setGlobalBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method private setGlobalHeaderBar_IRT(Lcom/htc/sunny2/view/SView$GlobalHeaderBarParm;)V
    .locals 3

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    iget-object v1, p1, Lcom/htc/sunny2/view/SView$GlobalHeaderBarParm;->headerBmp:Landroid/graphics/Bitmap;

    iget v2, p1, Lcom/htc/sunny2/view/SView$GlobalHeaderBarParm;->statusBarHeight:I

    invoke-interface {v0, v1, v2}, Lcom/htc/sunny2/view/SViewParent;->setGlobalHeaderBar(Landroid/graphics/Bitmap;I)V

    :cond_0
    return-void
.end method

.method private static stateSetUnion([I[I)[I
    .locals 13

    array-length v8, p0

    array-length v9, p1

    add-int v11, v8, v9

    new-array v7, v11, [I

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    sget-object v0, Lcom/android/internal/R$styleable;->ViewDrawableStates:[I

    array-length v6, v0

    const/4 v2, 0x0

    move v5, v4

    :goto_0
    if-ge v2, v6, :cond_2

    aget v10, v0, v2

    if-ge v1, v8, :cond_0

    aget v11, p0, v1

    if-ne v11, v10, :cond_0

    add-int/lit8 v4, v5, 0x1

    aput v10, v7, v5

    add-int/lit8 v1, v1, 0x1

    :goto_1
    const/4 v11, 0x1

    if-le v4, v11, :cond_1

    sget-boolean v11, Lcom/htc/sunny2/view/SView;->$assertionsDisabled:Z

    if-nez v11, :cond_1

    add-int/lit8 v11, v4, -0x1

    aget v11, v7, v11

    add-int/lit8 v12, v4, -0x2

    aget v12, v7, v12

    if-gt v11, v12, :cond_1

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    :cond_0
    if-ge v3, v9, :cond_3

    aget v11, p1, v3

    if-ne v11, v10, :cond_3

    add-int/lit8 v4, v5, 0x1

    aput v10, v7, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    move v5, v4

    goto :goto_0

    :cond_2
    return-object v7

    :cond_3
    move v4, v5

    goto :goto_1
.end method

.method private updateLayoutParameter()V
    .locals 8

    const/4 v7, 0x1

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v4}, Lcom/htc/sunny2/view/animation/SAnimationController;->isEnded()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v4}, Lcom/htc/sunny2/view/animation/SAnimationController;->isFillAfter()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v4}, Lcom/htc/sunny2/view/animation/SAnimationController;->isEnded()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    if-ne v7, v0, :cond_3

    iget-object v4, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v4}, Lcom/htc/sunny2/view/animation/SAnimationController;->isPositionAnimation()Z

    move-result v4

    if-ne v7, v4, :cond_3

    iget-object v4, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v4}, Lcom/htc/sunny2/view/animation/SAnimationController;->getCurrentPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v3

    iget v4, v3, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget v5, v3, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget v6, v3, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    invoke-super {p0, v4, v5, v6}, Lcom/htc/sunny2/SceneNode;->setPosition(FFF)V

    :goto_0
    if-ne v7, v0, :cond_4

    iget-object v4, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v4}, Lcom/htc/sunny2/view/animation/SAnimationController;->isRotateAnimation()Z

    move-result v4

    if-ne v7, v4, :cond_4

    iget-object v4, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v4}, Lcom/htc/sunny2/view/animation/SAnimationController;->getCurrentRotation()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v3

    iget v4, v3, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget v5, v3, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget v6, v3, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    invoke-super {p0, v4, v5, v6}, Lcom/htc/sunny2/SceneNode;->setRotate(FFF)V

    :goto_1
    if-ne v7, v0, :cond_5

    iget-object v4, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v4}, Lcom/htc/sunny2/view/animation/SAnimationController;->isScaleAnimation()Z

    move-result v4

    if-ne v7, v4, :cond_5

    iget-object v4, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v4}, Lcom/htc/sunny2/view/animation/SAnimationController;->getCurrentScale()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v3

    iget v4, v3, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget v5, v3, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget v6, v3, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    invoke-super {p0, v4, v5, v6}, Lcom/htc/sunny2/SceneNode;->setScale(FFF)V

    :goto_2
    if-ne v7, v0, :cond_6

    iget-object v4, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v4}, Lcom/htc/sunny2/view/animation/SAnimationController;->isAlphaAnimation()Z

    move-result v4

    if-ne v7, v4, :cond_6

    iget-object v4, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v4}, Lcom/htc/sunny2/view/animation/SAnimationController;->getCurrentAlpha()I

    move-result v1

    int-to-float v4, v1

    const/high16 v5, 0x437f

    div-float v2, v4, v5

    const/high16 v4, 0x3f80

    cmpl-float v4, v2, v4

    if-lez v4, :cond_2

    float-to-int v4, v2

    int-to-float v4, v4

    sub-float/2addr v2, v4

    :cond_2
    invoke-super {p0, v2}, Lcom/htc/sunny2/SceneNode;->setAlpha(F)V

    :goto_3
    return-void

    :cond_3
    iget-object v4, p0, Lcom/htc/sunny2/view/SView;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iget v4, v4, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget-object v5, p0, Lcom/htc/sunny2/view/SView;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iget v5, v5, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget-object v6, p0, Lcom/htc/sunny2/view/SView;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iget v6, v6, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    invoke-super {p0, v4, v5, v6}, Lcom/htc/sunny2/SceneNode;->setPosition(FFF)V

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/htc/sunny2/view/SView;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    iget v4, v4, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget-object v5, p0, Lcom/htc/sunny2/view/SView;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    iget v5, v5, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget-object v6, p0, Lcom/htc/sunny2/view/SView;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    iget v6, v6, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    invoke-super {p0, v4, v5, v6}, Lcom/htc/sunny2/SceneNode;->setRotate(FFF)V

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/htc/sunny2/view/SView;->mScale:Lcom/htc/sunny2/view/Vector3F;

    iget v4, v4, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget-object v5, p0, Lcom/htc/sunny2/view/SView;->mScale:Lcom/htc/sunny2/view/Vector3F;

    iget v5, v5, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget-object v6, p0, Lcom/htc/sunny2/view/SView;->mScale:Lcom/htc/sunny2/view/Vector3F;

    iget v6, v6, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    invoke-super {p0, v4, v5, v6}, Lcom/htc/sunny2/SceneNode;->setScale(FFF)V

    goto :goto_2

    :cond_6
    iget v4, p0, Lcom/htc/sunny2/view/SView;->mAlpha:F

    invoke-super {p0, v4}, Lcom/htc/sunny2/SceneNode;->setAlpha(F)V

    goto :goto_3
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/sunny2/view/SView;->getRenderThread()Lcom/htc/sunny2/RenderThread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/htc/sunny2/view/SView;->cancelAnimationIRT()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThreadHandler;->sendEmptyMessage(I)V

    goto :goto_0
.end method

.method public clearFocus()V
    .locals 0

    return-void
.end method

.method public createContextMenu(Landroid/view/ContextMenu;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/htc/sunny2/view/SView;->getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1, v0}, Lcom/android/internal/view/menu/MenuBuilder;->setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    invoke-virtual {p0, p1}, Lcom/htc/sunny2/view/SView;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    iget-object v1, p0, Lcom/htc/sunny2/view/SView;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/view/SView;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-interface {v1, p1, v2, v0}, Landroid/view/View$OnCreateContextMenuListener;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    iget-object v1, p0, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    invoke-interface {v1, p1}, Lcom/htc/sunny2/view/SViewParent;->createContextMenu(Landroid/view/ContextMenu;)V

    :cond_1
    return-void
.end method

.method protected createResource()V
    .locals 4

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/sunny2/Sprite;->obtain()Lcom/htc/sunny2/Sprite;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/view/SView;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/view/SView;->addSprite(Lcom/htc/sunny2/Sprite;)V

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->setVisibility(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    const/16 v1, -0xc8

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->setRenderOrder(I)V

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    if-nez v0, :cond_1

    new-instance v0, Lcom/htc/sunny2/view/SView$SViewHandler;

    iget-object v1, p0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SViewHandler-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/sunny2/view/SView;->getNodeId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/sunny2/view/SView;->getRenderThread()Lcom/htc/sunny2/RenderThread;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/htc/sunny2/view/SView$SViewHandler;-><init>(Lcom/htc/sunny2/view/SView;Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunny2/RenderThread;)V

    iput-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    :goto_0
    iget v0, p0, Lcom/htc/sunny2/view/SView;->mPrivateFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/htc/sunny2/view/SView;->mPrivateFlags:I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    invoke-virtual {p0}, Lcom/htc/sunny2/view/SView;->getRenderThread()Lcom/htc/sunny2/RenderThread;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThreadHandler;->attachRenderThread(Lcom/htc/sunny2/RenderThread;)V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)V
    .locals 0

    return-void
.end method

.method public dispatchRenderOrderChanged(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/htc/sunny2/view/SView;->onRenderOrderChanged(Z)V

    return-void
.end method

.method public dispatchResourceCreation(Z)V
    .locals 2

    const/16 v1, 0x8

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/htc/sunny2/view/SView;->isBindedSurface()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/htc/sunny2/view/SView;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/sunny2/view/SView;->createResource()V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/htc/sunny2/view/SView;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/sunny2/view/SView;->freeResource()V

    goto :goto_0
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;I)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/view/SView;->onTouchEvent(Landroid/view/MotionEvent;I)Z

    move-result v0

    return v0
.end method

.method protected drawableStateChanged()V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/sunny2/view/SView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method protected freeResource()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    invoke-virtual {v0}, Lcom/htc/sunny2/RenderThreadHandler;->release()V

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/view/SView;->removeSprite(Lcom/htc/sunny2/Sprite;)V

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->setTexture(Lcom/htc/sunny2/Texture;)V

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0}, Lcom/htc/sunny2/Sprite;->release()V

    iput-object v1, p0, Lcom/htc/sunny2/view/SView;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mBackgroundTexture:Lcom/htc/sunny2/Texture;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mBackgroundTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->release()V

    iput-object v1, p0, Lcom/htc/sunny2/view/SView;->mBackgroundTexture:Lcom/htc/sunny2/Texture;

    :cond_2
    iget v0, p0, Lcom/htc/sunny2/view/SView;->mPrivateFlags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/htc/sunny2/view/SView;->mPrivateFlags:I

    return-void
.end method

.method public getAlpha()F
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/view/SView;->mAlpha:F

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getDrawableState()[I
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mDrawableState:[I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/view/SView;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mDrawableState:[I

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/view/SView;->onCreateDrawableState(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/view/SView;->mDrawableState:[I

    iget v0, p0, Lcom/htc/sunny2/view/SView;->mPrivateFlags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/htc/sunny2/view/SView;->mPrivateFlags:I

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mDrawableState:[I

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/view/SView;->mHeight:I

    return v0
.end method

.method public getLayoutParams()Lcom/htc/sunny2/view/SViewGroup$LayoutParams;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mLayoutParams:Lcom/htc/sunny2/view/SViewGroup$LayoutParams;

    return-object v0
.end method

.method public final getMeasuredHeight()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/view/SView;->mMeasuredHeight:I

    return v0
.end method

.method public final getMeasuredWidth()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/view/SView;->mMeasuredWidth:I

    return v0
.end method

.method public getPaddingBottom()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/view/SView;->mPaddingBottom:I

    return v0
.end method

.method public getPaddingLeft()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    return v0
.end method

.method public getPaddingRight()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/view/SView;->mPaddingRight:I

    return v0
.end method

.method public getPaddingTop()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    return v0
.end method

.method public final getPosition()Lcom/htc/sunny2/view/Vector3F;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    return-object v0
.end method

.method public getRenderOrder()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/view/SView;->mOrder:I

    return v0
.end method

.method public getRenderThread()Lcom/htc/sunny2/RenderThread;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    invoke-interface {v0}, Lcom/htc/sunny2/view/SViewParent;->getRenderThread()Lcom/htc/sunny2/RenderThread;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getSpritePosition(Lcom/htc/sunny2/Sprite;)Lcom/htc/sunny2/view/Vector3F;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    invoke-interface {v0, p1}, Lcom/htc/sunny2/view/SViewParent;->getSpritePosition(Lcom/htc/sunny2/Sprite;)Lcom/htc/sunny2/view/Vector3F;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 3

    iget v1, p0, Lcom/htc/sunny2/view/SView;->mMinHeight:I

    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    if-ge v1, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 3

    iget v1, p0, Lcom/htc/sunny2/view/SView;->mMinWidth:I

    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    if-ge v1, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mViewTagObject:Ljava/lang/Object;

    return-object v0
.end method

.method public getViewNodeId()I
    .locals 1

    invoke-virtual {p0}, Lcom/htc/sunny2/view/SView;->getNodeId()I

    move-result v0

    return v0
.end method

.method public getViewScale()Lcom/htc/sunny2/view/Vector3F;
    .locals 5

    new-instance v1, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v1}, Lcom/htc/sunny2/view/Vector3F;-><init>()V

    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v2}, Lcom/htc/sunny2/view/animation/SAnimationController;->isEnded()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v2}, Lcom/htc/sunny2/view/animation/SAnimationController;->isFillAfter()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v2}, Lcom/htc/sunny2/view/animation/SAnimationController;->isStarted()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v3}, Lcom/htc/sunny2/view/animation/SAnimationController;->isScaleAnimation()Z

    move-result v3

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v2}, Lcom/htc/sunny2/view/animation/SAnimationController;->getCurrentScale()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/view/Vector3F;->setVector3F(Lcom/htc/sunny2/view/Vector3F;)V

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mScale:Lcom/htc/sunny2/view/Vector3F;

    iget v2, v2, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget-object v3, p0, Lcom/htc/sunny2/view/SView;->mScale:Lcom/htc/sunny2/view/Vector3F;

    iget v3, v3, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget-object v4, p0, Lcom/htc/sunny2/view/SView;->mScale:Lcom/htc/sunny2/view/Vector3F;

    iget v4, v4, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/sunny2/view/Vector3F;->setVector3F(FFF)V

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/view/SView;->mWidth:I

    return v0
.end method

.method public hasFocus()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasLayoutAnimation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny2/view/SView;->mHasLayoutAnimation:Z

    return v0
.end method

.method public hasWindowFocus()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x4

    invoke-virtual {p0, p1}, Lcom/htc/sunny2/view/SView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-ne v2, v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThreadHandler;->hasMessages(I)Z

    move-result v0

    if-ne v2, v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThreadHandler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThreadHandler;->sendEmptyMessage(I)V

    :cond_1
    return-void
.end method

.method public isBindedSurface()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    invoke-interface {v0}, Lcom/htc/sunny2/view/SViewParent;->isBindedSurface()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/view/SView;->mViewFlags:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFocused()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isLayoutRequested()Z
    .locals 2

    iget v0, p0, Lcom/htc/sunny2/view/SView;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPressed()Z
    .locals 2

    iget v0, p0, Lcom/htc/sunny2/view/SView;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/view/SView;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final layout(FFFII)V
    .locals 7

    invoke-virtual/range {p0 .. p5}, Lcom/htc/sunny2/view/SView;->setFrame(FFFII)Z

    move-result v1

    if-nez v1, :cond_0

    iget v0, p0, Lcom/htc/sunny2/view/SView;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v2, 0x2000

    if-ne v0, v2, :cond_1

    :cond_0
    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/htc/sunny2/view/SView;->onLayout(ZFFFII)V

    iget v0, p0, Lcom/htc/sunny2/view/SView;->mPrivateFlags:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/htc/sunny2/view/SView;->mPrivateFlags:I

    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->LAYOUT_LOCKER:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget v0, p0, Lcom/htc/sunny2/view/SView;->mPrivateFlags:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/htc/sunny2/view/SView;->mPrivateFlags:I

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final measure(II)V
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->LAYOUT_LOCKER:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget v3, p0, Lcom/htc/sunny2/view/SView;->mPrivateFlags:I

    and-int/lit16 v3, v3, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_1

    move v0, v1

    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/htc/sunny2/view/SView;->mOldWidthMeasureSpec:I

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/htc/sunny2/view/SView;->mOldHeightMeasureSpec:I

    if-eq p2, v1, :cond_3

    :cond_0
    iget v1, p0, Lcom/htc/sunny2/view/SView;->mPrivateFlags:I

    and-int/lit16 v1, v1, -0x801

    iput v1, p0, Lcom/htc/sunny2/view/SView;->mPrivateFlags:I

    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/view/SView;->onMeasure(II)V

    iget v1, p0, Lcom/htc/sunny2/view/SView;->mPrivateFlags:I

    and-int/lit16 v1, v1, 0x800

    const/16 v2, 0x800

    if-eq v1, v2, :cond_2

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "onMeasure() did not set the measured dimension by calling setMeasuredDimension()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_2
    iget v1, p0, Lcom/htc/sunny2/view/SView;->mPrivateFlags:I

    or-int/lit16 v1, v1, 0x2000

    iput v1, p0, Lcom/htc/sunny2/view/SView;->mPrivateFlags:I

    :cond_3
    iput p1, p0, Lcom/htc/sunny2/view/SView;->mOldWidthMeasureSpec:I

    iput p2, p0, Lcom/htc/sunny2/view/SView;->mOldHeightMeasureSpec:I

    return-void
.end method

.method protected onAnimationCancel()V
    .locals 0

    return-void
.end method

.method protected onAnimationEnd()V
    .locals 0

    return-void
.end method

.method protected onAnimationStart()V
    .locals 0

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    return-void
.end method

.method protected onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 0

    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget v3, p0, Lcom/htc/sunny2/view/SView;->mPrivateFlags:I

    and-int/lit16 v7, v3, 0x4000

    if-eqz v7, :cond_0

    move v4, v5

    :goto_0
    shl-int/lit8 v8, v4, 0x1

    iget v7, p0, Lcom/htc/sunny2/view/SView;->mViewFlags:I

    and-int/lit8 v7, v7, 0x20

    if-nez v7, :cond_1

    move v7, v5

    :goto_1
    add-int v4, v8, v7

    shl-int/lit8 v8, v4, 0x1

    invoke-virtual {p0}, Lcom/htc/sunny2/view/SView;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_2

    move v7, v5

    :goto_2
    add-int v4, v8, v7

    shl-int/lit8 v8, v4, 0x1

    and-int/lit8 v7, v3, 0x4

    if-eqz v7, :cond_3

    move v7, v5

    :goto_3
    add-int v4, v8, v7

    invoke-virtual {p0}, Lcom/htc/sunny2/view/SView;->hasWindowFocus()Z

    move-result v2

    shl-int/lit8 v7, v4, 0x1

    if-eqz v2, :cond_4

    :goto_4
    add-int v4, v7, v5

    sget-object v5, Lcom/htc/sunny2/view/SView;->VIEW_STATE_SETS:[[I

    aget-object v0, v5, v4

    if-nez p1, :cond_5

    :goto_5
    return-object v0

    :cond_0
    move v4, v6

    goto :goto_0

    :cond_1
    move v7, v6

    goto :goto_1

    :cond_2
    move v7, v6

    goto :goto_2

    :cond_3
    move v7, v6

    goto :goto_3

    :cond_4
    move v5, v6

    goto :goto_4

    :cond_5
    if-eqz v0, :cond_6

    array-length v5, v0

    add-int/2addr v5, p1

    new-array v1, v5, [I

    array-length v5, v0

    invoke-static {v0, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_6
    move-object v0, v1

    goto :goto_5

    :cond_6
    new-array v1, p1, [I

    goto :goto_6
.end method

.method public onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/view/SView;->dispatchResourceCreation(Z)V

    return-void
.end method

.method protected onFreeResource()V
    .locals 0

    return-void
.end method

.method protected onLayout(ZFFFII)V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-ne v2, p1, :cond_0

    invoke-direct {p0}, Lcom/htc/sunny2/view/SView;->updateLayoutParameter()V

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/htc/sunny2/view/SView;->mBackgroundSizeChanged:Z

    if-ne v2, v0, :cond_2

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1, p5, p6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iput-boolean v1, p0, Lcom/htc/sunny2/view/SView;->mBackgroundSizeChanged:Z

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/RenderThreadHandler;->hasMessages(I)Z

    move-result v0

    if-ne v2, v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/RenderThreadHandler;->removeMessages(I)V

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/RenderThreadHandler;->sendEmptyMessage(I)V

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-virtual {p0}, Lcom/htc/sunny2/view/SView;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lcom/htc/sunny2/view/SView;->getDefaultSize(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/sunny2/view/SView;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v1, p2}, Lcom/htc/sunny2/view/SView;->getDefaultSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/sunny2/view/SView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onRenderOrderChanged(Z)V
    .locals 3

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/sunny2/view/SView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/view/SView;->setPressed(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny2/view/SView;->refreshDrawableState()V

    const-string v0, "SView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onRenderOrderChanged() hasFocus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v2}, Lcom/htc/sunny2/Sprite;->getNodeId()I

    move-result v2

    if-ne p2, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/view/SView;->setPressed(Z)V

    :cond_0
    :goto_0
    iget v2, p0, Lcom/htc/sunny2/SceneNode;->mNodeId:I

    if-ne p2, v2, :cond_1

    :goto_1
    return v0

    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/view/SView;->setPressed(Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public performHapticFeedback(I)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    invoke-interface {v0, p1}, Lcom/htc/sunny2/view/SViewParent;->performHapticFeedback(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public performHapticFeedback(II)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    invoke-interface {v0, p1, p2}, Lcom/htc/sunny2/view/SViewParent;->performHapticFeedback(II)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public playSoundEffect(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    invoke-interface {v0, p1}, Lcom/htc/sunny2/view/SViewParent;->playSoundEffect(I)V

    :cond_0
    return-void
.end method

.method public refreshDrawableState()V
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/view/SView;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/htc/sunny2/view/SView;->mPrivateFlags:I

    invoke-virtual {p0}, Lcom/htc/sunny2/view/SView;->drawableStateChanged()V

    return-void
.end method

.method public requestLayout()V
    .locals 2

    iget-object v1, p0, Lcom/htc/sunny2/view/SView;->LAYOUT_LOCKER:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    invoke-interface {v0}, Lcom/htc/sunny2/view/SViewParent;->requestLayout()V

    :cond_0
    iget v0, p0, Lcom/htc/sunny2/view/SView;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/htc/sunny2/view/SView;->mPrivateFlags:I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    invoke-virtual {v0, p2, p1, p3, p4}, Lcom/htc/sunny2/RenderThreadHandler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)V

    :cond_0
    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    float-to-int v0, p1

    int-to-float v0, v0

    sub-float/2addr p1, v0

    :cond_0
    iget v0, p0, Lcom/htc/sunny2/view/SView;->mAlpha:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/htc/sunny2/view/SView;->mAlpha:F

    invoke-super {p0, p1}, Lcom/htc/sunny2/SceneNode;->setAlpha(F)V

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 2

    int-to-float v0, p1

    const/high16 v1, 0x437f

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/view/SView;->setAlpha(F)V

    return-void
.end method

.method public setAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mAnimationLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iput-object p1, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/animation/SAnimationController;->setReady()V

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThreadHandler;->sendEmptyMessage(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mAnimationLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/htc/sunny2/view/SView;->mAnimationLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setBackgroundColor(I)V
    .locals 1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/view/SView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 9

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v1, 0x0

    iput v8, p0, Lcom/htc/sunny2/view/SView;->mBackgroundResource:I

    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    if-eqz p1, :cond_7

    sget-object v2, Lcom/htc/sunny2/view/SView;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sget-object v2, Lcom/htc/sunny2/view/SView;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    if-nez v2, :cond_2

    iget v2, p0, Lcom/htc/sunny2/view/SView;->mPaddingBottom:I

    if-nez v2, :cond_2

    iget v2, p0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    if-nez v2, :cond_2

    iget v2, p0, Lcom/htc/sunny2/view/SView;->mPaddingRight:I

    if-nez v2, :cond_2

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/htc/sunny2/view/SView;->setPadding(IIII)V

    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v3

    if-eq v2, v3, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/htc/sunny2/view/SView;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_5
    invoke-virtual {p0}, Lcom/htc/sunny2/view/SView;->isVisible()Z

    move-result v2

    invoke-virtual {p1, v2, v8}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    iput-object p1, p0, Lcom/htc/sunny2/view/SView;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    iput-boolean v6, p0, Lcom/htc/sunny2/view/SView;->mBackgroundSizeChanged:Z

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/htc/sunny2/view/SView;->requestLayout()V

    :cond_6
    :goto_1
    return-void

    :cond_7
    iput-object v3, p0, Lcom/htc/sunny2/view/SView;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/htc/sunny2/view/SView;->isBindedSurface()Z

    move-result v2

    if-ne v6, v2, :cond_6

    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    invoke-virtual {v2, v7}, Lcom/htc/sunny2/RenderThreadHandler;->hasMessages(I)Z

    move-result v2

    if-ne v6, v2, :cond_9

    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    invoke-virtual {v2, v7}, Lcom/htc/sunny2/RenderThreadHandler;->removeMessages(I)V

    :cond_9
    iget-object v2, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    invoke-virtual {v2, v7}, Lcom/htc/sunny2/RenderThreadHandler;->sendEmptyMessage(I)V

    goto :goto_1
.end method

.method public setBackgroundRenderOrder(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/Sprite;->setRenderOrder(I)V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/sunny2/view/SView;->setBackgroundResource_IRT(I)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    const/16 v1, 0x20

    invoke-virtual {p0}, Lcom/htc/sunny2/view/SView;->isEnabled()Z

    move-result v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/htc/sunny2/view/SView;->setFlags(II)V

    invoke-virtual {p0}, Lcom/htc/sunny2/view/SView;->refreshDrawableState()V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public setEnlargeSensorArea(IIII)V
    .locals 0

    iput p1, p0, Lcom/htc/sunny2/view/SView;->mEnlargeSensorAreaL:I

    iput p2, p0, Lcom/htc/sunny2/view/SView;->mEnlargeSensorAreaT:I

    iput p3, p0, Lcom/htc/sunny2/view/SView;->mEnlargeSensorAreaR:I

    iput p4, p0, Lcom/htc/sunny2/view/SView;->mEnlargeSensorAreaB:I

    return-void
.end method

.method setFlags(II)V
    .locals 5

    iget v1, p0, Lcom/htc/sunny2/view/SView;->mViewFlags:I

    iget v3, p0, Lcom/htc/sunny2/view/SView;->mViewFlags:I

    xor-int/lit8 v4, p2, -0x1

    and-int/2addr v3, v4

    and-int v4, p1, p2

    or-int/2addr v3, v4

    iput v3, p0, Lcom/htc/sunny2/view/SView;->mViewFlags:I

    iget v3, p0, Lcom/htc/sunny2/view/SView;->mViewFlags:I

    xor-int v0, v3, v1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v2, p0, Lcom/htc/sunny2/view/SView;->mPrivateFlags:I

    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_2

    and-int/lit8 v3, v2, 0x10

    if-eqz v3, :cond_2

    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/htc/sunny2/view/SView;->clearFocus()V

    :cond_2
    and-int/lit8 v3, v0, 0x8

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/htc/sunny2/view/SView;->mViewFlags:I

    and-int/lit8 v3, v3, 0xc

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/htc/sunny2/view/SView;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/sunny2/view/SView;->clearFocus()V

    goto :goto_0
.end method

.method protected setFrame(FFFII)Z
    .locals 9

    const/4 v0, 0x0

    iget-object v8, p0, Lcom/htc/sunny2/view/SView;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iget v5, v8, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget-object v8, p0, Lcom/htc/sunny2/view/SView;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iget v6, v8, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget-object v8, p0, Lcom/htc/sunny2/view/SView;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iget v7, v8, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    invoke-static {v5, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-nez v8, :cond_0

    invoke-static {v6, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-nez v8, :cond_0

    invoke-static {v7, p3}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-nez v8, :cond_0

    iget v8, p0, Lcom/htc/sunny2/view/SView;->mWidth:I

    if-ne v8, p4, :cond_0

    iget v8, p0, Lcom/htc/sunny2/view/SView;->mHeight:I

    if-eq v8, p5, :cond_3

    :cond_0
    const/4 v0, 0x1

    iget v4, p0, Lcom/htc/sunny2/view/SView;->mWidth:I

    iget v3, p0, Lcom/htc/sunny2/view/SView;->mHeight:I

    iget-object v8, p0, Lcom/htc/sunny2/view/SView;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iput p1, v8, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget-object v8, p0, Lcom/htc/sunny2/view/SView;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iput p2, v8, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget-object v8, p0, Lcom/htc/sunny2/view/SView;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iput p3, v8, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    iput p4, p0, Lcom/htc/sunny2/view/SView;->mWidth:I

    iput p5, p0, Lcom/htc/sunny2/view/SView;->mHeight:I

    iget v8, p0, Lcom/htc/sunny2/view/SView;->mPrivateFlags:I

    or-int/lit8 v8, v8, 0x10

    iput v8, p0, Lcom/htc/sunny2/view/SView;->mPrivateFlags:I

    iget v2, p0, Lcom/htc/sunny2/view/SView;->mWidth:I

    iget v1, p0, Lcom/htc/sunny2/view/SView;->mHeight:I

    if-ne v2, v4, :cond_1

    if-eq v1, v3, :cond_2

    :cond_1
    invoke-virtual {p0, v2, v1, v4, v3}, Lcom/htc/sunny2/view/SView;->onSizeChanged(IIII)V

    :cond_2
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/htc/sunny2/view/SView;->mBackgroundSizeChanged:Z

    :cond_3
    return v0
.end method

.method public setGlobalBackgroundResource(I)V
    .locals 3

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    const/4 v1, 0x6

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/RenderThreadHandler;->sendEmptyMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public setGlobalHeaderBar(Landroid/graphics/Bitmap;I)V
    .locals 3

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    const/4 v1, 0x7

    new-instance v2, Lcom/htc/sunny2/view/SView$GlobalHeaderBarParm;

    invoke-direct {v2, p0, p1, p2}, Lcom/htc/sunny2/view/SView$GlobalHeaderBarParm;-><init>(Lcom/htc/sunny2/view/SView;Landroid/graphics/Bitmap;I)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/RenderThreadHandler;->sendEmptyMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public setLayoutAnimation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/sunny2/view/SView;->mHasLayoutAnimation:Z

    return-void
.end method

.method public setLayoutParams(Lcom/htc/sunny2/view/SViewGroup$LayoutParams;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "params == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/htc/sunny2/view/SView;->mLayoutParams:Lcom/htc/sunny2/view/SViewGroup$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/sunny2/view/SView;->requestLayout()V

    return-void
.end method

.method public setLayoutParamsWithoutLayout(Lcom/htc/sunny2/view/SViewGroup$LayoutParams;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "params == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/htc/sunny2/view/SView;->mLayoutParams:Lcom/htc/sunny2/view/SViewGroup$LayoutParams;

    return-void
.end method

.method protected final setMeasuredDimension(II)V
    .locals 1

    iput p1, p0, Lcom/htc/sunny2/view/SView;->mMeasuredWidth:I

    iput p2, p0, Lcom/htc/sunny2/view/SView;->mMeasuredHeight:I

    iget v0, p0, Lcom/htc/sunny2/view/SView;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/htc/sunny2/view/SView;->mPrivateFlags:I

    return-void
.end method

.method public setMinimumHeight(I)V
    .locals 0

    iput p1, p0, Lcom/htc/sunny2/view/SView;->mMinHeight:I

    return-void
.end method

.method public setMinimumWidth(I)V
    .locals 0

    iput p1, p0, Lcom/htc/sunny2/view/SView;->mMinWidth:I

    return-void
.end method

.method public setOnClickListener(Lcom/htc/sunny2/view/SView$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/view/SView;->mClickListener:Lcom/htc/sunny2/view/SView$OnClickListener;

    return-void
.end method

.method public setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/view/SView;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    iput p2, p0, Lcom/htc/sunny2/view/SView;->mPaddingTop:I

    iput p1, p0, Lcom/htc/sunny2/view/SView;->mPaddingLeft:I

    iput p4, p0, Lcom/htc/sunny2/view/SView;->mPaddingBottom:I

    iput p3, p0, Lcom/htc/sunny2/view/SView;->mPaddingRight:I

    invoke-virtual {p0}, Lcom/htc/sunny2/view/SView;->requestLayout()V

    return-void
.end method

.method public setParent(Lcom/htc/sunny2/view/SViewParent;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    return-void
.end method

.method public setPosition(FFF)V
    .locals 6

    iget v4, p0, Lcom/htc/sunny2/view/SView;->mWidth:I

    iget v5, p0, Lcom/htc/sunny2/view/SView;->mHeight:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny2/view/SView;->setFrame(FFFII)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/htc/sunny2/SceneNode;->setPosition(FFF)V

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/sunny2/view/Vector3F;->setVector3F(FFF)V

    :cond_0
    return-void
.end method

.method public setPressed(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/htc/sunny2/view/SView;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/htc/sunny2/view/SView;->mPrivateFlags:I

    :goto_0
    invoke-virtual {p0}, Lcom/htc/sunny2/view/SView;->refreshDrawableState()V

    invoke-virtual {p0, p1}, Lcom/htc/sunny2/view/SView;->dispatchSetPressed(Z)V

    return-void

    :cond_0
    iget v0, p0, Lcom/htc/sunny2/view/SView;->mPrivateFlags:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/htc/sunny2/view/SView;->mPrivateFlags:I

    goto :goto_0
.end method

.method public setRenderOrder(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/sunny2/SceneNode;->setRenderOrder(I)V

    iput p1, p0, Lcom/htc/sunny2/view/SView;->mOrder:I

    return-void
.end method

.method public setRotate(FFF)V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/sunny2/view/Vector3F;->setVector3F(FFF)V

    invoke-super {p0, p1, p2, p3}, Lcom/htc/sunny2/SceneNode;->setRotate(FFF)V

    return-void
.end method

.method public setScale(FFF)V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mScale:Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/sunny2/view/Vector3F;->setVector3F(FFF)V

    invoke-super {p0, p1, p2, p3}, Lcom/htc/sunny2/SceneNode;->setScale(FFF)V

    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/view/SView;->mViewTagObject:Ljava/lang/Object;

    return-void
.end method

.method public setVisibility(Z)V
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/htc/sunny2/view/SView;->isVisible()Z

    move-result v3

    if-ne v3, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-ne p1, v2, :cond_2

    move v0, v1

    :goto_1
    const/16 v3, 0xc

    invoke-virtual {p0, v0, v3}, Lcom/htc/sunny2/view/SView;->setFlags(II)V

    iget-object v3, p0, Lcom/htc/sunny2/view/SView;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/sunny2/view/SView;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    :goto_2
    invoke-virtual {v3, v2, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_1
    invoke-super {p0, p1}, Lcom/htc/sunny2/SceneNode;->setVisibility(Z)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    goto :goto_1

    :cond_3
    move v2, v1

    goto :goto_2
.end method

.method public startAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/sunny2/view/SView;->getRenderThread()Lcom/htc/sunny2/RenderThread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/htc/sunny2/RenderThreadHandler;->sendEmptyMessage(ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/view/SView;->startAnimationIRT(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    goto :goto_0
.end method

.method protected startAnimationIRT(Lcom/htc/sunny2/view/animation/SAnimationController;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mAnimationLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/animation/SAnimationController;->isEnded()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SView"

    const-string v1, "Can\'t apply two animation at the same time."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/animation/SAnimationController;->cancel()V

    :cond_0
    iput-object p1, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/animation/SAnimationController;->start()V

    invoke-virtual {p0}, Lcom/htc/sunny2/view/SView;->onAnimationStart()V

    :cond_1
    invoke-direct {p0}, Lcom/htc/sunny2/view/SView;->applyAnimation()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mAnimationLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/htc/sunny2/view/SView;->mAnimationLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/htc/sunny2/view/SView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    invoke-virtual {v0, p2, p1}, Lcom/htc/sunny2/RenderThreadHandler;->removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
