.class public Lcom/android/htccontacts/ui/QuickContactWindow;
.super Ljava/lang/Object;
.source "QuickContactWindow.java"

# interfaces
.implements Landroid/view/Window$Callback;
.implements Lcom/android/htccontacts/util/NotifyingAsyncQueryHandler$AsyncQueryListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/KeyEvent$Callback;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Lcom/android/htccontacts/indicator/IndicatorResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/ui/QuickContactWindow$PhotoMimeQuery;,
        Lcom/android/htccontacts/ui/QuickContactWindow$DataQuery;,
        Lcom/android/htccontacts/ui/QuickContactWindow$ActionMap;,
        Lcom/android/htccontacts/ui/QuickContactWindow$ActionList;,
        Lcom/android/htccontacts/ui/QuickContactWindow$ResolveCache;,
        Lcom/android/htccontacts/ui/QuickContactWindow$ProfileAction;,
        Lcom/android/htccontacts/ui/QuickContactWindow$DataAction;,
        Lcom/android/htccontacts/ui/QuickContactWindow$UnknownAction;,
        Lcom/android/htccontacts/ui/QuickContactWindow$Action;,
        Lcom/android/htccontacts/ui/QuickContactWindow$RootLayout;,
        Lcom/android/htccontacts/ui/QuickContactWindow$OnShowListener;,
        Lcom/android/htccontacts/ui/QuickContactWindow$OnDismissListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final FOLLOWING_MIMETYPES:[Ljava/lang/String; = null

.field static final LOGD:Z = false

.field private static final PRECEDING_MIMETYPES:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "QuickContactWindow"

.field private static final TOKEN_DATA:I = 0x1

.field private static final TOKEN_PHOTO:I = 0x271c

.field static final TRACE_LAUNCH:Z = false

.field static final TRACE_TAG:Ljava/lang/String; = "quickcontact"

.field private static mAppIconHeight:I

.field private static mAppIconWidth:I

.field private static final sPreferResolve:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActionPool:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mActionRecycled:I

.field private mActions:Lcom/android/htccontacts/ui/QuickContactWindow$ActionMap;

.field private mAnchor:Landroid/graphics/Rect;

.field private mArrowDown:Landroid/widget/ImageView;

.field private mArrowUp:Landroid/widget/ImageView;

.field private final mContext:Landroid/content/Context;

.field private mDataUri:Landroid/net/Uri;

.field private mDecor:Landroid/view/View;

.field private mDismissListener:Lcom/android/htccontacts/ui/QuickContactWindow$OnDismissListener;

.field private mDismissed:Z

.field private mDispalyName:Ljava/lang/CharSequence;

.field private mExcludeMimes:[Ljava/lang/String;

.field private mFooter:Landroid/view/View;

.field private mFooterDisambig:Landroid/view/View;

.field private mHandler:Lcom/android/htccontacts/util/NotifyingAsyncQueryHandler;

.field private mHasData:Z

.field private mHasPhoto:Z

.field private mHasValidSocial:Z

.field private mHeader:Landroid/view/View;

.field private mId:Ljava/lang/String;

.field private mIndicator:Lcom/android/htccontacts/indicator/IndicatorProcessor;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mLastAction:Lcom/android/htccontacts/ui/widget/CheckableImageView;

.field private mLookupUri:Landroid/net/Uri;

.field private mMainHandler:Landroid/os/Handler;

.field private mMakePrimary:Z

.field private mMode:I

.field private final mNativeContext:Landroid/content/Context;

.field private mQuerying:Z

.field private final mRect:Landroid/graphics/Rect;

.field private mRequest:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

.field private mRequestedY:I

.field private mResolveCache:Lcom/android/htccontacts/ui/QuickContactWindow$ResolveCache;

.field private mResolveList:Landroid/widget/ListView;

.field private mRootView:Lcom/android/htccontacts/ui/QuickContactWindow$RootLayout;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSetPrimaryCheckBox:Landroid/widget/CheckBox;

.field private mShadowHoriz:I

.field private mShadowTouch:I

.field private mShadowVert:I

.field private mShowListener:Lcom/android/htccontacts/ui/QuickContactWindow$OnShowListener;

.field private mShowing:Z

.field private mSpecificPhoneNumber:Ljava/lang/String;

.field private mStatus:Lcom/android/htccontacts/util/DataStatus;

.field private mTrack:Landroid/view/ViewGroup;

.field private mTrackAnim:Landroid/view/animation/Animation;

.field private mTrackScroll:Landroid/widget/HorizontalScrollView;

.field private mWasDownArrow:Z

.field private mWindow:Landroid/view/Window;

.field private final mWindowManager:Landroid/view/WindowManager;

.field private mWindowRecycled:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 280
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "vnd.android.cursor.item/phone_v2"

    aput-object v1, v0, v2

    const-string v1, "vnd.android.cursor.item/contact"

    aput-object v1, v0, v3

    const-string v1, "vnd.android.cursor.item/sms-address"

    aput-object v1, v0, v4

    const-string v1, "vnd.android.cursor.item/email_v2"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/htccontacts/ui/QuickContactWindow;->PRECEDING_MIMETYPES:[Ljava/lang/String;

    .line 290
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "vnd.android.cursor.item/postal-address_v2"

    aput-object v1, v0, v2

    const-string v1, "vnd.android.cursor.item/website"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/htccontacts/ui/QuickContactWindow;->FOLLOWING_MIMETYPES:[Ljava/lang/String;

    .line 302
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.android.email"

    aput-object v1, v0, v2

    const-string v1, "com.android.calendar"

    aput-object v1, v0, v3

    const-string v1, "com.android.contacts"

    aput-object v1, v0, v4

    const-string v1, "com.android.mms"

    aput-object v1, v0, v5

    const-string v1, "com.android.phone"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "com.android.browser"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/android/htccontacts/ui/QuickContactWindow;->sPreferResolve:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 320
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 189
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mRect:Landroid/graphics/Rect;

    .line 191
    iput-boolean v2, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mDismissed:Z

    .line 192
    iput-boolean v2, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mQuerying:Z

    .line 193
    iput-boolean v2, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mShowing:Z

    .line 213
    iput-boolean v2, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mHasValidSocial:Z

    .line 214
    iput-boolean v2, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mHasData:Z

    .line 215
    iput-boolean v2, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mMakePrimary:Z

    .line 233
    iput v2, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mWindowRecycled:I

    .line 234
    iput v2, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mActionRecycled:I

    .line 246
    new-instance v1, Lcom/android/htccontacts/util/DataStatus;

    invoke-direct {v1}, Lcom/android/htccontacts/util/DataStatus;-><init>()V

    iput-object v1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mStatus:Lcom/android/htccontacts/util/DataStatus;

    .line 259
    new-instance v1, Lcom/android/htccontacts/ui/QuickContactWindow$ActionMap;

    invoke-direct {v1, p0, v4}, Lcom/android/htccontacts/ui/QuickContactWindow$ActionMap;-><init>(Lcom/android/htccontacts/ui/QuickContactWindow;Lcom/android/htccontacts/ui/QuickContactWindow$1;)V

    iput-object v1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mActions:Lcom/android/htccontacts/ui/QuickContactWindow$ActionMap;

    .line 265
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mActionPool:Ljava/util/LinkedList;

    .line 1941
    iput-boolean v2, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mWasDownArrow:Z

    .line 2286
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mMainHandler:Landroid/os/Handler;

    .line 321
    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v2, 0x7f0b0027

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mContext:Landroid/content/Context;

    .line 322
    iput-object p1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mNativeContext:Landroid/content/Context;

    .line 323
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mInflater:Landroid/view/LayoutInflater;

    .line 324
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 326
    iget-object v1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/PolicyManager;->makeNewWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mWindow:Landroid/view/Window;

    .line 327
    iget-object v1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, p0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 328
    iget-object v1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mWindow:Landroid/view/Window;

    iget-object v2, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {v1, v2, v4, v4}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 329
    iget-object v1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 331
    iget-object v1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mWindow:Landroid/view/Window;

    const v2, 0x7f030064

    invoke-virtual {v1, v2}, Landroid/view/Window;->setContentView(I)V

    .line 333
    iget-object v1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mWindow:Landroid/view/Window;

    const v2, 0x7f07001f

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/ui/QuickContactWindow$RootLayout;

    iput-object v1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mRootView:Lcom/android/htccontacts/ui/QuickContactWindow$RootLayout;

    .line 334
    iget-object v1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mRootView:Lcom/android/htccontacts/ui/QuickContactWindow$RootLayout;

    iput-object p0, v1, Lcom/android/htccontacts/ui/QuickContactWindow$RootLayout;->mQuickContactWindow:Lcom/android/htccontacts/ui/QuickContactWindow;

    .line 335
    iget-object v1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mRootView:Lcom/android/htccontacts/ui/QuickContactWindow$RootLayout;

    invoke-virtual {v1, v3}, Lcom/android/htccontacts/ui/QuickContactWindow$RootLayout;->setFocusable(Z)V

    .line 336
    iget-object v1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mRootView:Lcom/android/htccontacts/ui/QuickContactWindow$RootLayout;

    invoke-virtual {v1, v3}, Lcom/android/htccontacts/ui/QuickContactWindow$RootLayout;->setFocusableInTouchMode(Z)V

    .line 337
    iget-object v1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mRootView:Lcom/android/htccontacts/ui/QuickContactWindow$RootLayout;

    const/high16 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/htccontacts/ui/QuickContactWindow$RootLayout;->setDescendantFocusability(I)V

    .line 339
    iget-object v1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mWindow:Landroid/view/Window;

    const v2, 0x7f0700f5

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mArrowUp:Landroid/widget/ImageView;

    .line 340
    iget-object v1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mWindow:Landroid/view/Window;

    const v2, 0x7f0700f6

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mArrowDown:Landroid/widget/ImageView;

    .line 342
    new-instance v1, Lcom/android/htccontacts/ui/QuickContactWindow$ResolveCache;

    iget-object v2, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/htccontacts/ui/QuickContactWindow$ResolveCache;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mResolveCache:Lcom/android/htccontacts/ui/QuickContactWindow$ResolveCache;

    .line 344
    iget-object v1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 345
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f090039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mShadowHoriz:I

    .line 346
    const v1, 0x7f09003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mShadowVert:I

    .line 347
    const v1, 0x7f09003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mShadowTouch:I

    .line 349
    iget-object v1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mScreenWidth:I

    .line 350
    iget-object v1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mScreenHeight:I

    .line 352
    iget-object v1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mWindow:Landroid/view/Window;

    const v2, 0x7f0700f2

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mTrack:Landroid/view/ViewGroup;

    .line 353
    iget-object v1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mWindow:Landroid/view/Window;

    const v2, 0x7f0700f1

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/HorizontalScrollView;

    iput-object v1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mTrackScroll:Landroid/widget/HorizontalScrollView;

    .line 355
    iget-object v1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mWindow:Landroid/view/Window;

    const v2, 0x7f0700f3

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mFooter:Landroid/view/View;

    .line 356
    iget-object v1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mWindow:Landroid/view/Window;

    const v2, 0x7f0700f4

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mFooterDisambig:Landroid/view/View;

    .line 357
    iget-object v1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mWindow:Landroid/view/Window;

    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mResolveList:Landroid/widget/ListView;

    .line 358
    iget-object v1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mWindow:Landroid/view/Window;

    const v2, 0x1020001

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mSetPrimaryCheckBox:Landroid/widget/CheckBox;

    .line 360
    iget-object v1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mSetPrimaryCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 363
    iget-object v1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mContext:Landroid/content/Context;

    const v2, 0x7f040005

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mTrackAnim:Landroid/view/animation/Animation;

    .line 364
    iget-object v1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mTrackAnim:Landroid/view/animation/Animation;

    new-instance v2, Lcom/android/htccontacts/ui/QuickContactWindow$1;

    invoke-direct {v2, p0}, Lcom/android/htccontacts/ui/QuickContactWindow$1;-><init>(Lcom/android/htccontacts/ui/QuickContactWindow;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 373
    new-instance v1, Lcom/android/htccontacts/util/NotifyingAsyncQueryHandler;

    iget-object v2, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/android/htccontacts/util/NotifyingAsyncQueryHandler;-><init>(Landroid/content/Context;Lcom/android/htccontacts/util/NotifyingAsyncQueryHandler$AsyncQueryListener;)V

    iput-object v1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mHandler:Lcom/android/htccontacts/util/NotifyingAsyncQueryHandler;

    .line 376
    new-instance v1, Lcom/android/htccontacts/indicator/IndicatorStackProcessor;

    invoke-direct {v1}, Lcom/android/htccontacts/indicator/IndicatorStackProcessor;-><init>()V

    iput-object v1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mIndicator:Lcom/android/htccontacts/indicator/IndicatorProcessor;

    .line 378
    sget v1, Lcom/android/htccontacts/ui/QuickContactWindow;->mAppIconWidth:I

    if-eqz v1, :cond_0

    sget v1, Lcom/android/htccontacts/ui/QuickContactWindow;->mAppIconHeight:I

    if-nez v1, :cond_1

    .line 379
    :cond_0
    const v1, 0x7f090052

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/htccontacts/ui/QuickContactWindow;->mAppIconWidth:I

    .line 380
    const v1, 0x7f090053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/htccontacts/ui/QuickContactWindow;->mAppIconHeight:I

    .line 383
    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/htccontacts/ui/QuickContactWindow$OnDismissListener;)V
    .locals 0
    .parameter "context"
    .parameter "dismissListener"

    .prologue
    .line 402
    invoke-direct {p0, p1}, Lcom/android/htccontacts/ui/QuickContactWindow;-><init>(Landroid/content/Context;)V

    .line 403
    iput-object p2, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mDismissListener:Lcom/android/htccontacts/ui/QuickContactWindow$OnDismissListener;

    .line 404
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/htccontacts/ui/QuickContactWindow$OnDismissListener;Lcom/android/htccontacts/ui/QuickContactWindow$OnShowListener;)V
    .locals 0
    .parameter "context"
    .parameter "dismissListener"
    .parameter "showListener"

    .prologue
    .line 391
    invoke-direct {p0, p1}, Lcom/android/htccontacts/ui/QuickContactWindow;-><init>(Landroid/content/Context;)V

    .line 392
    iput-object p2, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mDismissListener:Lcom/android/htccontacts/ui/QuickContactWindow$OnDismissListener;

    .line 393
    iput-object p3, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mShowListener:Lcom/android/htccontacts/ui/QuickContactWindow$OnShowListener;

    .line 394
    return-void
.end method

.method static synthetic access$000(Lcom/android/htccontacts/ui/QuickContactWindow;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/htccontacts/ui/QuickContactWindow;->onBackPressed()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/htccontacts/ui/QuickContactWindow;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/htccontacts/ui/QuickContactWindow;)Lcom/android/htccontacts/util/DataStatus;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mStatus:Lcom/android/htccontacts/util/DataStatus;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/htccontacts/ui/QuickContactWindow;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mHasValidSocial:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/htccontacts/ui/QuickContactWindow;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mHasValidSocial:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/htccontacts/ui/QuickContactWindow;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/htccontacts/ui/QuickContactWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget v0, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mMode:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/htccontacts/ui/QuickContactWindow;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mHeader:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/htccontacts/ui/QuickContactWindow;I)Landroid/view/View;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/htccontacts/ui/QuickContactWindow;->getHeaderView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/htccontacts/ui/QuickContactWindow;ILjava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Lcom/android/htccontacts/ui/QuickContactWindow;->setHeaderText(ILjava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/htccontacts/ui/QuickContactWindow;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mTrack:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/htccontacts/ui/QuickContactWindow;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/htccontacts/ui/QuickContactWindow;->considerShowing()V

    return-void
.end method

.method static synthetic access$200(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-static {p0, p1}, Lcom/android/htccontacts/ui/QuickContactWindow;->getAsInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-static {p0, p1}, Lcom/android/htccontacts/ui/QuickContactWindow;->getAsString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 115
    sget v0, Lcom/android/htccontacts/ui/QuickContactWindow;->mAppIconWidth:I

    return v0
.end method

.method static synthetic access$600()I
    .locals 1

    .prologue
    .line 115
    sget v0, Lcom/android/htccontacts/ui/QuickContactWindow;->mAppIconHeight:I

    return v0
.end method

.method static synthetic access$700()Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/android/htccontacts/ui/QuickContactWindow;->sPreferResolve:Ljava/util/HashSet;

    return-object v0
.end method

.method private considerAdd(Lcom/android/htccontacts/ui/QuickContactWindow$Action;Ljava/lang/String;)V
    .locals 1
    .parameter "action"
    .parameter "mimeType"

    .prologue
    .line 1738
    iget-object v0, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mResolveCache:Lcom/android/htccontacts/ui/QuickContactWindow$ResolveCache;

    invoke-virtual {v0, p1}, Lcom/android/htccontacts/ui/QuickContactWindow$ResolveCache;->hasResolve(Lcom/android/htccontacts/ui/QuickContactWindow$Action;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1739
    iget-object v0, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mActions:Lcom/android/htccontacts/ui/QuickContactWindow$ActionMap;

    #calls: Lcom/android/htccontacts/ui/QuickContactWindow$ActionMap;->collect(Ljava/lang/String;Lcom/android/htccontacts/ui/QuickContactWindow$Action;)V
    invoke-static {v0, p2, p1}, Lcom/android/htccontacts/ui/QuickContactWindow$ActionMap;->access$900(Lcom/android/htccontacts/ui/QuickContactWindow$ActionMap;Ljava/lang/String;Lcom/android/htccontacts/ui/QuickContactWindow$Action;)V

    .line 1741
    :cond_0
    return-void
.end method

.method private considerShowing()V
    .locals 2

    .prologue
    .line 808
    iget-boolean v0, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mHasData:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mShowing:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mDismissed:Z

    if-nez v0, :cond_1

    .line 809
    iget v0, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mHasValidSocial:Z

    if-nez v0, :cond_0

    .line 811
    iget-object v0, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mHeader:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 812
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/htccontacts/ui/QuickContactWindow;->getHeaderView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mHeader:Landroid/view/View;

    .line 816
    :cond_0
    invoke-direct {p0}, Lcom/android/htccontacts/ui/QuickContactWindow;->showInternal()V

    .line 818
    :cond_1
    return-void
.end method

.method private dismissInternal()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 733
    iget-object v3, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mDecor:Landroid/view/View;

    if-eqz v3, :cond_4

    move v0, v1

    .line 734
    .local v0, hadDecor:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 735
    iget-object v3, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mDecor:Landroid/view/View;

    invoke-interface {v3, v4}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 736
    iget v3, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mWindowRecycled:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mWindowRecycled:I

    .line 737
    iget-object v3, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mDecor:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 738
    iput-object v5, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mDecor:Landroid/view/View;

    .line 739
    iget-object v3, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->closeAllPanels()V

    .line 741
    :cond_0
    iput-boolean v2, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mShowing:Z

    .line 742
    iput-boolean v1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mDismissed:Z

    .line 745
    iget-object v3, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mHandler:Lcom/android/htccontacts/util/NotifyingAsyncQueryHandler;

    invoke-virtual {v3, v1}, Lcom/android/htccontacts/util/NotifyingAsyncQueryHandler;->cancelOperation(I)V

    .line 746
    iget-object v1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mHandler:Lcom/android/htccontacts/util/NotifyingAsyncQueryHandler;

    const/16 v3, 0x271c

    invoke-virtual {v1, v3}, Lcom/android/htccontacts/util/NotifyingAsyncQueryHandler;->cancelOperation(I)V

    .line 747
    iput-boolean v2, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mQuerying:Z

    .line 750
    iget-object v1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mHeader:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 751
    iget-object v1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mHeader:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 753
    :cond_1
    invoke-direct {p0}, Lcom/android/htccontacts/ui/QuickContactWindow;->resetTrack()V

    .line 756
    iget-object v1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mIndicator:Lcom/android/htccontacts/indicator/IndicatorProcessor;

    if-eqz v1, :cond_2

    .line 757
    iget-object v1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mIndicator:Lcom/android/htccontacts/indicator/IndicatorProcessor;

    invoke-virtual {v1}, Lcom/android/htccontacts/indicator/IndicatorProcessor;->pauseProcess()V

    .line 758
    iget-object v1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mIndicator:Lcom/android/htccontacts/indicator/IndicatorProcessor;

    invoke-virtual {v1}, Lcom/android/htccontacts/indicator/IndicatorProcessor;->clearQueue()V

    .line 759
    iget-object v1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mIndicator:Lcom/android/htccontacts/indicator/IndicatorProcessor;

    invoke-virtual {v1}, Lcom/android/htccontacts/indicator/IndicatorProcessor;->destroyProcess()V

    .line 760
    iput-object v5, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mIndicator:Lcom/android/htccontacts/indicator/IndicatorProcessor;

    .line 762
    :cond_2
    iget-object v1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mRequest:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    if-eqz v1, :cond_3

    .line 763
    iget-object v1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mRequest:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    invoke-virtual {v1}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->close()V

    .line 764
    iput-object v5, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mRequest:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    .line 767
    :cond_3
    return-void

    .end local v0           #hadDecor:Z
    :cond_4
    move v0, v2

    .line 733
    goto :goto_0
.end method

.method private static getAsInt(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 2
    .parameter "cursor"
    .parameter "columnName"

    .prologue
    .line 949
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 950
    .local v0, index:I
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    return v1
.end method

.method private static getAsString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "cursor"
    .parameter "columnName"

    .prologue
    .line 943
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 944
    .local v0, index:I
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDataUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 7
    .parameter "context"
    .parameter "lookupUri"

    .prologue
    const/4 v6, 0x3

    const/4 v3, 0x1

    .line 597
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    .line 598
    .local v2, path:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v6, :cond_0

    const-string v4, "lookup"

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 599
    .local v3, validLookup:Z
    :goto_0
    if-nez v3, :cond_1

    .line 601
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Expecting lookup-style Uri"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 598
    .end local v3           #validLookup:Z
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 602
    .restart local v3       #validLookup:Z
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v6, :cond_2

    .line 604
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/provider/ContactsContract$Contacts;->lookupContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 607
    :cond_2
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 608
    .local v0, contactId:J
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "data"

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    return-object v4
.end method

.method private getHeaderView(I)Landroid/view/View;
    .locals 4
    .parameter "mode"

    .prologue
    .line 407
    const/4 v0, 0x0

    .line 408
    .local v0, header:Landroid/view/View;
    packed-switch p1, :pswitch_data_0

    .line 420
    :goto_0
    instance-of v2, v0, Landroid/view/ViewStub;

    if-eqz v2, :cond_1

    move-object v1, v0

    .line 422
    check-cast v1, Landroid/view/ViewStub;

    .line 423
    .local v1, stub:Landroid/view/ViewStub;
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 428
    .end local v1           #stub:Landroid/view/ViewStub;
    :cond_0
    :goto_1
    return-object v0

    .line 410
    :pswitch_0
    iget-object v2, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mWindow:Landroid/view/Window;

    const v3, 0x7f0700ee

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 411
    goto :goto_0

    .line 413
    :pswitch_1
    iget-object v2, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mWindow:Landroid/view/Window;

    const v3, 0x7f0700ef

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 414
    goto :goto_0

    .line 416
    :pswitch_2
    iget-object v2, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mWindow:Landroid/view/Window;

    const v3, 0x7f0700f0

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 424
    :cond_1
    if-eqz v0, :cond_0

    .line 425
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 408
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getTrackPresenceIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "status"

    .prologue
    .line 920
    packed-switch p1, :pswitch_data_0

    .line 936
    const v0, 0x208065a

    .line 938
    .local v0, resId:I
    :goto_0
    iget-object v1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 922
    .end local v0           #resId:I
    :pswitch_0
    const v0, 0x2080657

    .line 923
    .restart local v0       #resId:I
    goto :goto_0

    .line 926
    .end local v0           #resId:I
    :pswitch_1
    const v0, 0x2080658

    .line 927
    .restart local v0       #resId:I
    goto :goto_0

    .line 929
    .end local v0           #resId:I
    :pswitch_2
    const v0, 0x2080659

    .line 930
    .restart local v0       #resId:I
    goto :goto_0

    .line 932
    .end local v0           #resId:I
    :pswitch_3
    const v0, 0x208065a

    .line 933
    .restart local v0       #resId:I
    goto :goto_0

    .line 920
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private handleData(Landroid/database/Cursor;)V
    .locals 36
    .parameter "cursor"

    .prologue
    .line 1545
    if-nez p1, :cond_1

    .line 1730
    :cond_0
    return-void

    .line 1547
    :cond_1
    const-string v17, ""

    .line 1548
    .local v17, accountType:Ljava/lang/String;
    const/16 v21, 0x0

    .line 1549
    .local v21, dataSet:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1550
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1551
    const-string v4, "data_set"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 1554
    :cond_2
    const-string v4, "vnd.android.cursor.item/contact"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/htccontacts/ui/QuickContactWindow;->isMimeExcluded(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1556
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1557
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/ui/QuickContactWindow;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v11, "account_type"

    move-object/from16 v0, v17

    invoke-virtual {v4, v11, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/htccontacts/ui/QuickContactWindow;->mLookupUri:Landroid/net/Uri;

    .line 1561
    :cond_3
    new-instance v10, Lcom/android/htccontacts/ui/QuickContactWindow$ProfileAction;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/ui/QuickContactWindow;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/htccontacts/ui/QuickContactWindow;->mLookupUri:Landroid/net/Uri;

    invoke-direct {v10, v4, v11}, Lcom/android/htccontacts/ui/QuickContactWindow$ProfileAction;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1562
    .local v10, action:Lcom/android/htccontacts/ui/QuickContactWindow$Action;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/ui/QuickContactWindow;->mActions:Lcom/android/htccontacts/ui/QuickContactWindow$ActionMap;

    const-string v11, "vnd.android.cursor.item/contact"

    #calls: Lcom/android/htccontacts/ui/QuickContactWindow$ActionMap;->collect(Ljava/lang/String;Lcom/android/htccontacts/ui/QuickContactWindow$Action;)V
    invoke-static {v4, v11, v10}, Lcom/android/htccontacts/ui/QuickContactWindow$ActionMap;->access$900(Lcom/android/htccontacts/ui/QuickContactWindow$ActionMap;Ljava/lang/String;Lcom/android/htccontacts/ui/QuickContactWindow$Action;)V

    .line 1566
    .end local v10           #action:Lcom/android/htccontacts/ui/QuickContactWindow$Action;
    :cond_4
    const/4 v4, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1568
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/ui/QuickContactWindow;->mStatus:Lcom/android/htccontacts/util/DataStatus;

    invoke-virtual {v4}, Lcom/android/htccontacts/util/DataStatus;->clear()V

    .line 1570
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/ui/QuickContactWindow;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v34

    .line 1571
    .local v34, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/ui/QuickContactWindow;->mHeader:Landroid/view/View;

    const v11, 0x7f07004f

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/ImageView;

    .line 1573
    .local v31, photoView:Landroid/widget/ImageView;
    const/16 v29, 0x0

    .line 1574
    .local v29, photoBitmap:Landroid/graphics/Bitmap;
    :cond_5
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1575
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1579
    .local v7, dataId:J
    const/16 v4, 0xc

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1584
    .local v5, mimeType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/ui/QuickContactWindow;->mStatus:Lcom/android/htccontacts/util/DataStatus;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/htccontacts/util/DataStatus;->possibleUpdate(Landroid/database/Cursor;)V

    .line 1588
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/htccontacts/ui/QuickContactWindow;->isMimeExcluded(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1591
    const-string v4, "vnd.android.cursor.item/photo"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1592
    const-string v4, "data15"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 1593
    .local v19, colPhoto:I
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v30

    .line 1594
    .local v30, photoBlob:[B
    if-eqz v30, :cond_5

    .line 1595
    const/4 v4, 0x0

    move-object/from16 v0, v30

    array-length v11, v0

    move-object/from16 v0, v30

    invoke-static {v0, v4, v11}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v29

    .line 1596
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/htccontacts/ui/QuickContactWindow;->mHasPhoto:Z

    goto :goto_0

    .line 1601
    .end local v19           #colPhoto:I
    .end local v30           #photoBlob:[B
    :cond_6
    move-object/from16 v0, v34

    move-object/from16 v1, v17

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2, v5}, Lcom/android/htccontacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v6

    .line 1622
    .local v6, kind:Lcom/android/htccontacts/model/DataKind;
    if-eqz v6, :cond_7

    .line 1623
    const-string v4, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1624
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/ui/QuickContactWindow;->mSpecificPhoneNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 1626
    new-instance v3, Lcom/android/htccontacts/ui/QuickContactWindow$UnknownAction;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/ui/QuickContactWindow;->mSpecificPhoneNumber:Ljava/lang/String;

    const-string v11, "vnd.android.cursor.item/phone_v2"

    invoke-direct {v3, v4, v11}, Lcom/android/htccontacts/ui/QuickContactWindow$UnknownAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1627
    .local v3, callAction:Lcom/android/htccontacts/ui/QuickContactWindow$Action;
    const-string v4, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/htccontacts/ui/QuickContactWindow;->considerAdd(Lcom/android/htccontacts/ui/QuickContactWindow$Action;Ljava/lang/String;)V

    .line 1628
    new-instance v9, Lcom/android/htccontacts/ui/QuickContactWindow$UnknownAction;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/ui/QuickContactWindow;->mSpecificPhoneNumber:Ljava/lang/String;

    const-string v11, "vnd.android.cursor.item/sms-address"

    invoke-direct {v9, v4, v11}, Lcom/android/htccontacts/ui/QuickContactWindow$UnknownAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1629
    .local v9, smsAction:Lcom/android/htccontacts/ui/QuickContactWindow$Action;
    const-string v4, "vnd.android.cursor.item/sms-address"

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v4}, Lcom/android/htccontacts/ui/QuickContactWindow;->considerAdd(Lcom/android/htccontacts/ui/QuickContactWindow$Action;Ljava/lang/String;)V

    .line 1645
    .end local v3           #callAction:Lcom/android/htccontacts/ui/QuickContactWindow$Action;
    .end local v9           #smsAction:Lcom/android/htccontacts/ui/QuickContactWindow$Action;
    :cond_7
    :goto_1
    const-string v4, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    if-eqz v6, :cond_8

    .line 1646
    new-instance v10, Lcom/android/htccontacts/ui/QuickContactWindow$DataAction;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/htccontacts/ui/QuickContactWindow;->mContext:Landroid/content/Context;

    const-string v12, "vnd.android.cursor.item/sms-address"

    move-object v13, v6

    move-wide v14, v7

    move-object/from16 v16, p1

    invoke-direct/range {v10 .. v16}, Lcom/android/htccontacts/ui/QuickContactWindow$DataAction;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/htccontacts/model/DataKind;JLandroid/database/Cursor;)V

    .line 1648
    .restart local v10       #action:Lcom/android/htccontacts/ui/QuickContactWindow$Action;
    const-string v4, "vnd.android.cursor.item/sms-address"

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v4}, Lcom/android/htccontacts/ui/QuickContactWindow;->considerAdd(Lcom/android/htccontacts/ui/QuickContactWindow$Action;Ljava/lang/String;)V

    .line 1653
    .end local v10           #action:Lcom/android/htccontacts/ui/QuickContactWindow$Action;
    :cond_8
    const/16 v4, 0xa

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_b

    const/16 v22, 0x1

    .line 1654
    .local v22, hasPresence:Z
    :goto_2
    if-eqz v22, :cond_5

    const-string v4, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1655
    const-string v4, "vnd.android.cursor.item/im"

    move-object/from16 v0, v34

    move-object/from16 v1, v17

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/htccontacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v13

    .line 1659
    .local v13, imKind:Lcom/android/htccontacts/model/DataKind;
    if-eqz v13, :cond_5

    .line 1660
    new-instance v10, Lcom/android/htccontacts/ui/QuickContactWindow$DataAction;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/htccontacts/ui/QuickContactWindow;->mContext:Landroid/content/Context;

    const-string v12, "vnd.android.cursor.item/im"

    move-wide v14, v7

    move-object/from16 v16, p1

    invoke-direct/range {v10 .. v16}, Lcom/android/htccontacts/ui/QuickContactWindow$DataAction;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/htccontacts/model/DataKind;JLandroid/database/Cursor;)V

    .line 1662
    .restart local v10       #action:Lcom/android/htccontacts/ui/QuickContactWindow$Action;
    const-string v4, "vnd.android.cursor.item/im"

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v4}, Lcom/android/htccontacts/ui/QuickContactWindow;->considerAdd(Lcom/android/htccontacts/ui/QuickContactWindow$Action;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1632
    .end local v10           #action:Lcom/android/htccontacts/ui/QuickContactWindow$Action;
    .end local v13           #imKind:Lcom/android/htccontacts/model/DataKind;
    .end local v22           #hasPresence:Z
    :cond_9
    new-instance v3, Lcom/android/htccontacts/ui/QuickContactWindow$DataAction;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/ui/QuickContactWindow;->mContext:Landroid/content/Context;

    move-object/from16 v9, p1

    invoke-direct/range {v3 .. v9}, Lcom/android/htccontacts/ui/QuickContactWindow$DataAction;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/htccontacts/model/DataKind;JLandroid/database/Cursor;)V

    .line 1633
    .restart local v3       #callAction:Lcom/android/htccontacts/ui/QuickContactWindow$Action;
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/android/htccontacts/ui/QuickContactWindow;->considerAdd(Lcom/android/htccontacts/ui/QuickContactWindow$Action;Ljava/lang/String;)V

    .line 1634
    new-instance v9, Lcom/android/htccontacts/ui/QuickContactWindow$DataAction;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/htccontacts/ui/QuickContactWindow;->mContext:Landroid/content/Context;

    const-string v11, "vnd.android.cursor.item/sms-address"

    move-object v12, v6

    move-wide v13, v7

    move-object/from16 v15, p1

    invoke-direct/range {v9 .. v15}, Lcom/android/htccontacts/ui/QuickContactWindow$DataAction;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/htccontacts/model/DataKind;JLandroid/database/Cursor;)V

    .line 1636
    .restart local v9       #smsAction:Lcom/android/htccontacts/ui/QuickContactWindow$Action;
    const-string v4, "vnd.android.cursor.item/sms-address"

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v4}, Lcom/android/htccontacts/ui/QuickContactWindow;->considerAdd(Lcom/android/htccontacts/ui/QuickContactWindow$Action;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1639
    .end local v3           #callAction:Lcom/android/htccontacts/ui/QuickContactWindow$Action;
    .end local v9           #smsAction:Lcom/android/htccontacts/ui/QuickContactWindow$Action;
    :cond_a
    new-instance v10, Lcom/android/htccontacts/ui/QuickContactWindow$DataAction;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/htccontacts/ui/QuickContactWindow;->mContext:Landroid/content/Context;

    move-object v12, v5

    move-object v13, v6

    move-wide v14, v7

    move-object/from16 v16, p1

    invoke-direct/range {v10 .. v16}, Lcom/android/htccontacts/ui/QuickContactWindow$DataAction;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/htccontacts/model/DataKind;JLandroid/database/Cursor;)V

    .line 1640
    .restart local v10       #action:Lcom/android/htccontacts/ui/QuickContactWindow$Action;
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v5}, Lcom/android/htccontacts/ui/QuickContactWindow;->considerAdd(Lcom/android/htccontacts/ui/QuickContactWindow$Action;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1653
    .end local v10           #action:Lcom/android/htccontacts/ui/QuickContactWindow$Action;
    :cond_b
    const/16 v22, 0x0

    goto :goto_2

    .line 1667
    .end local v5           #mimeType:Ljava/lang/String;
    .end local v6           #kind:Lcom/android/htccontacts/model/DataKind;
    .end local v7           #dataId:J
    :cond_c
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToLast()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1669
    const/4 v4, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 1670
    .local v28, name:Ljava/lang/String;
    const/4 v4, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    .line 1671
    .local v32, presence:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/ui/QuickContactWindow;->mContext:Landroid/content/Context;

    move/from16 v0, v32

    invoke-static {v4, v0}, Lcom/android/htccontacts/ContactPresenceIconUtil;->getPresenceIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v35

    .line 1673
    .local v35, statusIcon:Landroid/graphics/drawable/Drawable;
    const v4, 0x7f07002c

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v4, v1}, Lcom/android/htccontacts/ui/QuickContactWindow;->setHeaderText(ILjava/lang/CharSequence;)V

    .line 1674
    const v4, 0x7f0700fa

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v4, v1}, Lcom/android/htccontacts/ui/QuickContactWindow;->setHeaderImage(ILandroid/graphics/drawable/Drawable;)V

    .line 1675
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/htccontacts/ui/QuickContactWindow;->mDispalyName:Ljava/lang/CharSequence;

    .line 1678
    .end local v28           #name:Ljava/lang/String;
    .end local v32           #presence:I
    .end local v35           #statusIcon:Landroid/graphics/drawable/Drawable;
    :cond_d
    if-eqz v31, :cond_e

    .line 1680
    if-eqz v29, :cond_f

    const/4 v4, 0x0

    :goto_3
    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1681
    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1696
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/ui/QuickContactWindow;->mTrack:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    add-int/lit8 v24, v4, -0x1

    .line 1699
    .local v24, index:I
    new-instance v20, Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/ui/QuickContactWindow;->mActions:Lcom/android/htccontacts/ui/QuickContactWindow$ActionMap;

    invoke-virtual {v4}, Lcom/android/htccontacts/ui/QuickContactWindow$ActionMap;->keySet()Ljava/util/Set;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1702
    .local v20, containedTypes:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v18, Lcom/android/htccontacts/ui/QuickContactWindow;->PRECEDING_MIMETYPES:[Ljava/lang/String;

    .local v18, arr$:[Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v27, v0

    .local v27, len$:I
    const/16 v23, 0x0

    .local v23, i$:I
    move/from16 v25, v24

    .end local v24           #index:I
    .local v25, index:I
    :goto_4
    move/from16 v0, v23

    move/from16 v1, v27

    if-ge v0, v1, :cond_10

    aget-object v5, v18, v23

    .line 1703
    .restart local v5       #mimeType:Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1704
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/ui/QuickContactWindow;->mTrack:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/htccontacts/ui/QuickContactWindow;->inflateAction(Ljava/lang/String;)Landroid/view/View;

    move-result-object v11

    add-int/lit8 v24, v25, 0x1

    .end local v25           #index:I
    .restart local v24       #index:I
    move/from16 v0, v25

    invoke-virtual {v4, v11, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 1705
    move-object/from16 v0, v20

    invoke-interface {v0, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1702
    :goto_5
    add-int/lit8 v23, v23, 0x1

    move/from16 v25, v24

    .end local v24           #index:I
    .restart local v25       #index:I
    goto :goto_4

    .line 1680
    .end local v5           #mimeType:Ljava/lang/String;
    .end local v18           #arr$:[Ljava/lang/String;
    .end local v20           #containedTypes:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v23           #i$:I
    .end local v25           #index:I
    .end local v27           #len$:I
    :cond_f
    const/16 v4, 0x8

    goto :goto_3

    .line 1710
    .restart local v18       #arr$:[Ljava/lang/String;
    .restart local v20       #containedTypes:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v23       #i$:I
    .restart local v25       #index:I
    .restart local v27       #len$:I
    :cond_10
    move/from16 v26, v25

    .line 1713
    .local v26, indexAfterPreceding:I
    sget-object v18, Lcom/android/htccontacts/ui/QuickContactWindow;->FOLLOWING_MIMETYPES:[Ljava/lang/String;

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v27, v0

    const/16 v23, 0x0

    :goto_6
    move/from16 v0, v23

    move/from16 v1, v27

    if-ge v0, v1, :cond_11

    aget-object v5, v18, v23

    .line 1714
    .restart local v5       #mimeType:Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1715
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/ui/QuickContactWindow;->mTrack:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/htccontacts/ui/QuickContactWindow;->inflateAction(Ljava/lang/String;)Landroid/view/View;

    move-result-object v11

    add-int/lit8 v24, v25, 0x1

    .end local v25           #index:I
    .restart local v24       #index:I
    move/from16 v0, v25

    invoke-virtual {v4, v11, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 1716
    move-object/from16 v0, v20

    invoke-interface {v0, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1713
    :goto_7
    add-int/lit8 v23, v23, 0x1

    move/from16 v25, v24

    .end local v24           #index:I
    .restart local v25       #index:I
    goto :goto_6

    .line 1721
    .end local v5           #mimeType:Ljava/lang/String;
    :cond_11
    move/from16 v24, v26

    .line 1722
    .end local v25           #index:I
    .restart local v24       #index:I
    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v33

    check-cast v33, [Ljava/lang/String;

    .line 1723
    .local v33, remainingTypes:[Ljava/lang/String;
    invoke-static/range {v33 .. v33}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 1724
    move-object/from16 v18, v33

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v27, v0

    const/16 v23, 0x0

    move/from16 v25, v24

    .end local v24           #index:I
    .restart local v25       #index:I
    :goto_8
    move/from16 v0, v23

    move/from16 v1, v27

    if-ge v0, v1, :cond_0

    aget-object v5, v18, v23

    .line 1725
    .restart local v5       #mimeType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/ui/QuickContactWindow;->mTrack:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/htccontacts/ui/QuickContactWindow;->inflateAction(Ljava/lang/String;)Landroid/view/View;

    move-result-object v11

    add-int/lit8 v24, v25, 0x1

    .end local v25           #index:I
    .restart local v24       #index:I
    move/from16 v0, v25

    invoke-virtual {v4, v11, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 1724
    add-int/lit8 v23, v23, 0x1

    move/from16 v25, v24

    .end local v24           #index:I
    .restart local v25       #index:I
    goto :goto_8

    .end local v33           #remainingTypes:[Ljava/lang/String;
    :cond_12
    move/from16 v24, v25

    .end local v25           #index:I
    .restart local v24       #index:I
    goto :goto_7

    .end local v24           #index:I
    .end local v26           #indexAfterPreceding:I
    .restart local v25       #index:I
    :cond_13
    move/from16 v24, v25

    .end local v25           #index:I
    .restart local v24       #index:I
    goto :goto_5
.end method

.method private inflateAction(Ljava/lang/String;)Landroid/view/View;
    .locals 18
    .parameter "mimeType"

    .prologue
    .line 1777
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/ui/QuickContactWindow;->obtainView()Landroid/view/View;

    move-result-object v12

    .line 1778
    .local v12, layout:Landroid/view/View;
    const v14, 0x7f0700fb

    invoke-virtual {v12, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/htc/quickselection/HtcCheckableImageView;

    .line 1779
    .local v13, view:Lcom/htc/quickselection/HtcCheckableImageView;
    const v14, 0x7f0700fc

    invoke-virtual {v12, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1780
    .local v2, bubbleText:Landroid/widget/TextView;
    const-string v14, "vnd.android.cursor.item/contact"

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 1783
    :cond_0
    const/16 v14, 0x8

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1787
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ui/QuickContactWindow;->mActions:Lcom/android/htccontacts/ui/QuickContactWindow$ActionMap;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/android/htccontacts/ui/QuickContactWindow$ActionMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htccontacts/ui/QuickContactWindow$ActionList;

    .line 1788
    .local v3, children:Lcom/android/htccontacts/ui/QuickContactWindow$ActionList;
    invoke-virtual {v3}, Lcom/android/htccontacts/ui/QuickContactWindow$ActionList;->size()I

    move-result v14

    const/4 v15, 0x1

    if-le v14, v15, :cond_1

    .line 1789
    invoke-static {v3}, Lcom/android/htccontacts/Collapser;->collapseList(Ljava/util/ArrayList;)V

    .line 1791
    :cond_1
    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Lcom/android/htccontacts/ui/QuickContactWindow$ActionList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/htccontacts/ui/QuickContactWindow$Action;

    .line 1792
    .local v7, firstInfo:Lcom/android/htccontacts/ui/QuickContactWindow$Action;
    invoke-virtual {v3}, Lcom/android/htccontacts/ui/QuickContactWindow$ActionList;->size()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_5

    .line 1793
    invoke-virtual {v13, v7}, Lcom/htc/quickselection/HtcCheckableImageView;->setTag(Ljava/lang/Object;)V

    .line 1819
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ui/QuickContactWindow;->mResolveCache:Lcom/android/htccontacts/ui/QuickContactWindow$ResolveCache;

    invoke-virtual {v14, v7}, Lcom/android/htccontacts/ui/QuickContactWindow$ResolveCache;->getDescription(Lcom/android/htccontacts/ui/QuickContactWindow$Action;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 1820
    .local v5, descrip:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ui/QuickContactWindow;->mResolveCache:Lcom/android/htccontacts/ui/QuickContactWindow$ResolveCache;

    invoke-virtual {v14, v7}, Lcom/android/htccontacts/ui/QuickContactWindow$ResolveCache;->getIcon(Lcom/android/htccontacts/ui/QuickContactWindow$Action;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 1823
    .local v10, icon:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ui/QuickContactWindow;->mResolveCache:Lcom/android/htccontacts/ui/QuickContactWindow$ResolveCache;

    invoke-virtual {v14, v7}, Lcom/android/htccontacts/ui/QuickContactWindow$ResolveCache;->getLabel(Lcom/android/htccontacts/ui/QuickContactWindow$Action;)Ljava/lang/String;

    move-result-object v11

    .line 1824
    .local v11, label:Ljava/lang/String;
    const-string v14, "vnd.android.cursor.item/contact"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 1825
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ui/QuickContactWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a036a

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1846
    :cond_2
    :goto_1
    invoke-virtual {v13, v11}, Lcom/htc/quickselection/HtcCheckableImageView;->setText(Ljava/lang/CharSequence;)V

    .line 1848
    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/htc/quickselection/HtcCheckableImageView;->setChecked(Z)V

    .line 1849
    invoke-virtual {v13, v5}, Lcom/htc/quickselection/HtcCheckableImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1850
    if-nez v10, :cond_3

    .line 1851
    const-string v14, "QuickContactWindow"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Failed to get resolved icon resources for mimetype: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1854
    :cond_3
    if-nez v10, :cond_10

    const-string v14, "vnd.android.cursor.item/sms-address"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 1857
    const/4 v14, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/htccontacts/ui/QuickContactWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f020039

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v17}, Lcom/htc/quickselection/HtcCheckableImageView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1922
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/htc/quickselection/HtcCheckableImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1926
    return-object v12

    .line 1798
    .end local v5           #descrip:Ljava/lang/CharSequence;
    .end local v10           #icon:Landroid/graphics/drawable/Drawable;
    .end local v11           #label:Ljava/lang/String;
    :cond_5
    const/4 v8, 0x0

    .line 1799
    .local v8, firstPrimaryAction:Lcom/android/htccontacts/ui/QuickContactWindow$Action;
    invoke-virtual {v3}, Lcom/android/htccontacts/ui/QuickContactWindow$ActionList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/ui/QuickContactWindow$Action;

    .line 1800
    .local v1, action:Lcom/android/htccontacts/ui/QuickContactWindow$Action;
    invoke-interface {v1}, Lcom/android/htccontacts/ui/QuickContactWindow$Action;->isPrimary()Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_7

    if-nez v8, :cond_7

    .line 1801
    move-object v8, v1

    .line 1803
    :cond_7
    const-string v14, "vnd.android.cursor.item/sms-address"

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    instance-of v14, v1, Lcom/android/htccontacts/ui/QuickContactWindow$DataAction;

    if-eqz v14, :cond_6

    .line 1804
    const-string v15, "vnd.android.cursor.item/phone_v2"

    move-object v14, v1

    check-cast v14, Lcom/android/htccontacts/ui/QuickContactWindow$DataAction;

    iget-object v14, v14, Lcom/android/htccontacts/ui/QuickContactWindow$DataAction;->mKind:Lcom/android/htccontacts/model/DataKind;

    iget-object v14, v14, Lcom/android/htccontacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 1805
    move-object v8, v1

    .line 1806
    invoke-interface {v1}, Lcom/android/htccontacts/ui/QuickContactWindow$Action;->isPrimary()Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 1812
    .end local v1           #action:Lcom/android/htccontacts/ui/QuickContactWindow$Action;
    :cond_8
    if-nez v8, :cond_9

    .line 1813
    invoke-virtual {v13, v3}, Lcom/htc/quickselection/HtcCheckableImageView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1815
    :cond_9
    invoke-virtual {v13, v8}, Lcom/htc/quickselection/HtcCheckableImageView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1827
    .end local v8           #firstPrimaryAction:Lcom/android/htccontacts/ui/QuickContactWindow$Action;
    .end local v9           #i$:Ljava/util/Iterator;
    .restart local v5       #descrip:Ljava/lang/CharSequence;
    .restart local v10       #icon:Landroid/graphics/drawable/Drawable;
    .restart local v11       #label:Ljava/lang/String;
    :cond_a
    const-string v14, "vnd.android.cursor.item/sms-address"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 1828
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ui/QuickContactWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a0369

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_1

    .line 1830
    :cond_b
    const-string v14, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 1831
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ui/QuickContactWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a0368

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_1

    .line 1833
    :cond_c
    const-string v14, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 1834
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ui/QuickContactWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a0367

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_1

    .line 1836
    :cond_d
    const-string v14, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 1837
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ui/QuickContactWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a036b

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_1

    .line 1839
    :cond_e
    const-string v14, "vnd.android.cursor.item/vnd.htcfacebook.profile"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 1840
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ui/QuickContactWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a036c

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_1

    .line 1842
    :cond_f
    if-eqz v7, :cond_2

    instance-of v14, v7, Lcom/android/htccontacts/ui/QuickContactWindow$UnknownAction;

    if-eqz v14, :cond_2

    .line 1843
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ui/QuickContactWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a036d

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1844
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ui/QuickContactWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const/high16 v15, 0x7f02

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    goto/16 :goto_1

    .line 1861
    :catch_0
    move-exception v6

    .line 1862
    .local v6, e:Landroid/content/res/Resources$NotFoundException;
    const-string v14, "QuickContactWindow"

    const-string v15, "Cannot find messages icon and internal lookup failed too"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1864
    .end local v6           #e:Landroid/content/res/Resources$NotFoundException;
    :cond_10
    if-nez v10, :cond_11

    const-string v14, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 1867
    const/4 v14, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/htccontacts/ui/QuickContactWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f02001f

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v17}, Lcom/htc/quickselection/HtcCheckableImageView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 1871
    :catch_1
    move-exception v6

    .line 1872
    .restart local v6       #e:Landroid/content/res/Resources$NotFoundException;
    const-string v14, "QuickContactWindow"

    const-string v15, "Cannot find email icon and internal lookup failed too"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1874
    .end local v6           #e:Landroid/content/res/Resources$NotFoundException;
    :cond_11
    if-nez v10, :cond_12

    const-string v14, "vnd.android.cursor.item/vnd.htcfacebook.profile"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_12

    .line 1877
    const/4 v14, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/htccontacts/ui/QuickContactWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x208024b

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v17}, Lcom/htc/quickselection/HtcCheckableImageView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    .line 1881
    :catch_2
    move-exception v6

    .line 1882
    .restart local v6       #e:Landroid/content/res/Resources$NotFoundException;
    const-string v14, "QuickContactWindow"

    const-string v15, "Cannot find facebook icon and internal lookup failed too"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1884
    .end local v6           #e:Landroid/content/res/Resources$NotFoundException;
    :cond_12
    if-nez v10, :cond_13

    const-string v14, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_13

    .line 1887
    const/4 v14, 0x0

    :try_start_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/htccontacts/ui/QuickContactWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f02001e

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v17}, Lcom/htc/quickselection/HtcCheckableImageView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_2

    .line 1891
    :catch_3
    move-exception v6

    .line 1892
    .restart local v6       #e:Landroid/content/res/Resources$NotFoundException;
    const-string v14, "QuickContactWindow"

    const-string v15, "Cannot find facebook icon and internal lookup failed too"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1896
    .end local v6           #e:Landroid/content/res/Resources$NotFoundException;
    :cond_13
    const-string v14, "vnd.android.cursor.item/contact"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_15

    .line 1897
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ui/QuickContactWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f02003a

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1904
    .local v4, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v14

    if-nez v14, :cond_14

    .line 1905
    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-virtual {v4, v14, v15}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 1907
    :cond_14
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v4, v15, v0}, Lcom/htc/quickselection/HtcCheckableImageView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 1912
    .end local v4           #d:Landroid/graphics/drawable/Drawable;
    :cond_15
    if-eqz v10, :cond_4

    .line 1915
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v14

    if-nez v14, :cond_16

    .line 1916
    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-virtual {v10, v14, v15}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 1918
    :cond_16
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v10, v15, v0}, Lcom/htc/quickselection/HtcCheckableImageView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2
.end method

.method private isMimeExcluded(Ljava/lang/String;)Z
    .locals 6
    .parameter "mimeType"

    .prologue
    const/4 v4, 0x0

    .line 1532
    iget-object v5, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mExcludeMimes:[Ljava/lang/String;

    if-nez v5, :cond_1

    .line 1538
    :cond_0
    :goto_0
    return v4

    .line 1533
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mExcludeMimes:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 1534
    .local v1, excludedMime:Ljava/lang/String;
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1535
    const/4 v4, 0x1

    goto :goto_0

    .line 1533
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private layoutInScreen()V
    .locals 5

    .prologue
    .line 700
    iget-boolean v3, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mShowing:Z

    if-nez v3, :cond_1

    .line 717
    :cond_0
    :goto_0
    return-void

    .line 702
    :cond_1
    iget-object v3, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 703
    .local v1, l:Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 705
    .local v2, originalY:I
    iget-object v3, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mDecor:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 707
    .local v0, blockHeight:I
    iget v3, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mRequestedY:I

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 708
    iget v3, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mRequestedY:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mScreenHeight:I

    if-le v3, v4, :cond_2

    .line 710
    iget v3, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mScreenHeight:I

    sub-int/2addr v3, v0

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 713
    :cond_2
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v2, v3, :cond_0

    .line 715
    iget-object v3, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mWindow:Landroid/view/Window;

    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method private declared-synchronized obtainView()Landroid/view/View;
    .locals 5

    .prologue
    .line 1750
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mActionPool:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1751
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1757
    :goto_0
    monitor-exit p0

    return-object v0

    .line 1754
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030069

    iget-object v3, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mTrack:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 1750
    .end local v0           #view:Landroid/view/View;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private onBackPressed()V
    .locals 2

    .prologue
    .line 2074
    iget-object v0, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mFooterDisambig:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2075
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/htccontacts/ui/QuickContactWindow;->setResolveVisible(ZLcom/android/htccontacts/ui/widget/CheckableImageView;)V

    .line 2076
    iget-object v0, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mDecor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->forceLayout()V

    .line 2077
    iget-object v0, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mDecor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 2081
    :goto_0
    return-void

    .line 2079
    :cond_0
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/QuickContactWindow;->dismiss()V

    goto :goto_0
.end method

.method private putDialDirectlyExtra(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 2362
    if-eqz p1, :cond_1

    .line 2363
    const/high16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2364
    const-string v0, "fromDialer"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2365
    iget-object v0, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mDispalyName:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2366
    const-string v0, "name"

    iget-object v1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mDispalyName:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 2368
    :cond_0
    const-string v0, "hasPhoto"

    iget-boolean v1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mHasPhoto:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2369
    iget-object v0, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2370
    const-string v0, "personId"

    iget-object v1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2373
    :cond_1
    return-void
.end method

.method private declared-synchronized releaseView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 1765
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mActionPool:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 1766
    iget v0, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mActionRecycled:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mActionRecycled:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1767
    monitor-exit p0

    return-void

    .line 1765
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private resetTrack()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 774
    iput-object v2, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mLastAction:Lcom/android/htccontacts/ui/widget/CheckableImageView;

    .line 777
    iget-object v0, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mResolveCache:Lcom/android/htccontacts/ui/QuickContactWindow$ResolveCache;

    invoke-virtual {v0}, Lcom/android/htccontacts/ui/QuickContactWindow$ResolveCache;->clear()V

    .line 778
    iget-object v0, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mActions:Lcom/android/htccontacts/ui/QuickContactWindow$ActionMap;

    invoke-virtual {v0}, Lcom/android/htccontacts/ui/QuickContactWindow$ActionMap;->clear()V

    .line 781
    :goto_0
    iget-object v0, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mTrack:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 782
    iget-object v0, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mTrack:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/htccontacts/ui/QuickContactWindow;->releaseView(Landroid/view/View;)V

    .line 783
    iget-object v0, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mTrack:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    goto :goto_0

    .line 786
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mTrackScroll:Landroid/widget/HorizontalScrollView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    .line 787
    iput-boolean v3, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mWasDownArrow:Z

    .line 790
    iput-boolean v3, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mMakePrimary:Z

    .line 791
    iget-object v0, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mSetPrimaryCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 793
    invoke-direct {p0, v3, v2}, Lcom/android/htccontacts/ui/QuickContactWindow;->setResolveVisible(ZLcom/android/htccontacts/ui/widget/CheckableImageView;)V

    .line 795
    iput-object v2, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mDispalyName:Ljava/lang/CharSequence;

    .line 796
    iput-boolean v3, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mHasPhoto:Z

    .line 797
    iput-object v2, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mId:Ljava/lang/String;

    .line 798
    iput-object v2, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mDataUri:Landroid/net/Uri;

    .line 799
    iput-object v2, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mSpecificPhoneNumber:Ljava/lang/String;

    .line 801
    return-void
.end method

.method private setHeaderImage(ILandroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "id"
    .parameter "drawable"

    .prologue
    .line 908
    iget-object v1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mHeader:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 909
    .local v0, view:Landroid/view/View;
    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 910
    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 911
    if-nez p2, :cond_1

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 913
    :cond_0
    return-void

    .line 911
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setHeaderText(II)V
    .locals 1
    .parameter "id"
    .parameter "resId"

    .prologue
    .line 882
    iget-object v0, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/htccontacts/ui/QuickContactWindow;->setHeaderText(ILjava/lang/CharSequence;)V

    .line 883
    return-void
.end method

.method private setHeaderText(ILjava/lang/CharSequence;)V
    .locals 3
    .parameter "id"
    .parameter "value"

    .prologue
    .line 887
    iget-object v1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mHeader:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 889
    .local v0, view:Landroid/view/View;
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 890
    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 891
    const v1, 0x7f0700f8

    if-ne p1, v1, :cond_0

    move-object v1, v0

    .line 892
    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    .line 894
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 896
    :cond_1
    return-void

    .line 894
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setResolveVisible(ZLcom/android/htccontacts/ui/widget/CheckableImageView;)V
    .locals 7
    .parameter "visible"
    .parameter "actionView"

    .prologue
    const/16 v4, 0x8

    const/4 v5, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1949
    iget-object v3, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mFooterDisambig:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    .line 1951
    .local v0, visibleNow:Z
    :goto_0
    iget-object v3, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mLastAction:Lcom/android/htccontacts/ui/widget/CheckableImageView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mLastAction:Lcom/android/htccontacts/ui/widget/CheckableImageView;

    invoke-virtual {v3, v2}, Lcom/android/htccontacts/ui/widget/CheckableImageView;->setChecked(Z)V

    .line 1952
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2, v1}, Lcom/android/htccontacts/ui/widget/CheckableImageView;->setChecked(Z)V

    .line 1953
    :cond_1
    iput-object p2, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mLastAction:Lcom/android/htccontacts/ui/widget/CheckableImageView;

    .line 1956
    if-ne p1, v0, :cond_3

    .line 1969
    :goto_1
    return-void

    .end local v0           #visibleNow:Z
    :cond_2
    move v0, v2

    .line 1949
    goto :goto_0

    .line 1958
    .restart local v0       #visibleNow:Z
    :cond_3
    iget-object v6, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mFooter:Landroid/view/View;

    if-eqz p1, :cond_7

    move v3, v4

    :goto_2
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1959
    iget-object v3, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mFooterDisambig:Landroid/view/View;

    if-eqz p1, :cond_4

    move v4, v2

    :cond_4
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1961
    if-eqz p1, :cond_8

    .line 1963
    iget-boolean v3, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mWasDownArrow:Z

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mArrowDown:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_6

    :cond_5
    move v2, v1

    :cond_6
    iput-boolean v2, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mWasDownArrow:Z

    .line 1964
    iget-object v1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mArrowDown:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_7
    move v3, v2

    .line 1958
    goto :goto_2

    .line 1967
    :cond_8
    iget-object v1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mArrowDown:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mWasDownArrow:Z

    if-eqz v3, :cond_9

    :goto_3
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_9
    move v2, v5

    goto :goto_3
.end method

.method private showArrow(II)V
    .locals 5
    .parameter "whichArrow"
    .parameter "requestedX"

    .prologue
    const v4, 0x7f0700f5

    .line 616
    if-ne p1, v4, :cond_0

    iget-object v3, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mArrowUp:Landroid/widget/ImageView;

    .line 617
    .local v3, showArrow:Landroid/view/View;
    :goto_0
    if-ne p1, v4, :cond_1

    iget-object v1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mArrowDown:Landroid/widget/ImageView;

    .line 619
    .local v1, hideArrow:Landroid/view/View;
    :goto_1
    iget-object v4, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mArrowUp:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    .line 621
    .local v0, arrowWidth:I
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 622
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 623
    .local v2, param:Landroid/view/ViewGroup$MarginLayoutParams;
    div-int/lit8 v4, v0, 0x2

    sub-int v4, p2, v4

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 625
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 626
    return-void

    .line 616
    .end local v0           #arrowWidth:I
    .end local v1           #hideArrow:Landroid/view/View;
    .end local v2           #param:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v3           #showArrow:Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mArrowDown:Landroid/widget/ImageView;

    goto :goto_0

    .line 617
    .restart local v3       #showArrow:Landroid/view/View;
    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mArrowUp:Landroid/widget/ImageView;

    goto :goto_1
.end method

.method private showInternal()V
    .locals 6

    .prologue
    .line 633
    iget-object v3, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mDecor:Landroid/view/View;

    .line 634
    iget-object v3, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mDecor:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 635
    iget-object v3, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 637
    .local v2, l:Landroid/view/WindowManager$LayoutParams;
    iget v3, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mScreenWidth:I

    iget v4, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mShadowHoriz:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mShadowHoriz:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 638
    const/4 v3, -0x2

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 641
    iget-object v3, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mDecor:Landroid/view/View;

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    .line 642
    iget-object v3, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mDecor:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 644
    .local v0, blockHeight:I
    const/16 v3, 0x33

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 645
    iget v3, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mShadowHoriz:I

    neg-int v3, v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 647
    iget-object v3, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mAnchor:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-le v3, v0, :cond_1

    .line 650
    const v3, 0x7f0700f6

    iget-object v4, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mAnchor:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/android/htccontacts/ui/QuickContactWindow;->showArrow(II)V

    .line 651
    iget-object v3, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mAnchor:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v0

    iget v4, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mShadowVert:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 652
    const v3, 0x7f0b0029

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 663
    :goto_0
    const/16 v3, 0x300

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 666
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v3, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mRequestedY:I

    .line 668
    :try_start_0
    iget-object v3, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mDecor:Landroid/view/View;

    invoke-interface {v3, v4, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 669
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mShowing:Z

    .line 670
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mQuerying:Z

    .line 671
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mDismissed:Z

    .line 673
    iget-object v3, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mTrack:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mTrackAnim:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 681
    iget-object v3, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mShowListener:Lcom/android/htccontacts/ui/QuickContactWindow$OnShowListener;

    if-eqz v3, :cond_0

    .line 682
    iget-object v3, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mShowListener:Lcom/android/htccontacts/ui/QuickContactWindow$OnShowListener;

    invoke-interface {v3, p0}, Lcom/android/htccontacts/ui/QuickContactWindow$OnShowListener;->onShow(Lcom/android/htccontacts/ui/QuickContactWindow;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 688
    :cond_0
    :goto_1
    return-void

    .line 657
    :cond_1
    const v3, 0x7f0700f5

    iget-object v4, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mAnchor:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/android/htccontacts/ui/QuickContactWindow;->showArrow(II)V

    .line 658
    iget-object v3, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mAnchor:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mShadowVert:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 659
    const v3, 0x7f0b002a

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    goto :goto_0

    .line 685
    :catch_0
    move-exception v1

    .line 686
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "QuickContactWindow"

    const-string v4, "THIS IS JUST A WARNING AND WILL NOT CRASH THE DEVICE ~ The QuickContactWindow will not be shown !"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method protected detectEventOutside(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    .line 2134
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mDecor:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 2136
    iget-object v2, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mDecor:Landroid/view/View;

    iget-object v3, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 2137
    iget-object v2, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mShadowTouch:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 2138
    iget-object v2, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mShadowTouch:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 2139
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 2140
    .local v0, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 2141
    .local v1, y:I
    iget-object v2, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2142
    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2145
    .end local v0           #x:I
    .end local v1           #y:I
    :cond_0
    return-void
.end method

.method public declared-synchronized dismiss()V
    .locals 1

    .prologue
    .line 724
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mDismissListener:Lcom/android/htccontacts/ui/QuickContactWindow$OnDismissListener;

    if-eqz v0, :cond_0

    .line 725
    iget-object v0, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mDismissListener:Lcom/android/htccontacts/ui/QuickContactWindow$OnDismissListener;

    invoke-interface {v0, p0}, Lcom/android/htccontacts/ui/QuickContactWindow$OnDismissListener;->onDismiss(Lcom/android/htccontacts/ui/QuickContactWindow;)V

    .line 728
    :cond_0
    invoke-direct {p0}, Lcom/android/htccontacts/ui/QuickContactWindow;->dismissInternal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 729
    monitor-exit p0

    return-void

    .line 724
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 2160
    iget-object v0, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 2085
    iget-object v0, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2086
    const/4 v0, 0x1

    .line 2088
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mDecor:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mDecor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    :goto_1
    invoke-virtual {p1, p0, v0, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 2126
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 2149
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/ui/QuickContactWindow;->detectEventOutside(Landroid/view/MotionEvent;)V

    .line 2150
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2151
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/QuickContactWindow;->dismiss()V

    .line 2152
    const/4 v0, 0x1

    .line 2154
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 2165
    iget-object v0, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 136
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 134
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 2220
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 2068
    iput-boolean p2, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mMakePrimary:Z

    .line 2069
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 14
    .parameter "view"

    .prologue
    .line 1973
    instance-of v6, p1, Lcom/android/htccontacts/ui/widget/CheckableImageView;

    .line 1974
    .local v6, isActionView:Z
    if-eqz v6, :cond_3

    move-object v11, p1

    check-cast v11, Lcom/android/htccontacts/ui/widget/CheckableImageView;

    move-object v1, v11

    .line 1975
    .local v1, actionView:Lcom/android/htccontacts/ui/widget/CheckableImageView;
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    .line 1976
    .local v9, tag:Ljava/lang/Object;
    instance-of v11, v9, Lcom/android/htccontacts/ui/QuickContactWindow$Action;

    if-eqz v11, :cond_4

    move-object v0, v9

    .line 1979
    check-cast v0, Lcom/android/htccontacts/ui/QuickContactWindow$Action;

    .line 1980
    .local v0, action:Lcom/android/htccontacts/ui/QuickContactWindow$Action;
    iget-boolean v7, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mMakePrimary:Z

    .line 1985
    .local v7, makePrimary:Z
    const/4 v8, 0x0

    .line 1986
    .local v8, quickDial:Z
    :try_start_0
    invoke-interface {v0}, Lcom/android/htccontacts/ui/QuickContactWindow$Action;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 1987
    .local v5, i:Landroid/content/Intent;
    if-eqz v5, :cond_0

    .line 1988
    const-string v11, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1989
    invoke-direct {p0, v5}, Lcom/android/htccontacts/ui/QuickContactWindow;->putDialDirectlyExtra(Landroid/content/Intent;)V

    .line 1990
    invoke-static {v5}, Lcom/htc/util/phone/DialUtils;->callDirectly(Landroid/content/Intent;)Z

    .line 1991
    const/4 v8, 0x1

    .line 1994
    :cond_0
    if-nez v8, :cond_1

    .line 1995
    iget-object v11, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2004
    .end local v5           #i:Landroid/content/Intent;
    :cond_1
    :goto_1
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12}, Lcom/android/htccontacts/ui/QuickContactWindow;->setResolveVisible(ZLcom/android/htccontacts/ui/widget/CheckableImageView;)V

    .line 2005
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/QuickContactWindow;->dismiss()V

    .line 2007
    if-eqz v7, :cond_2

    .line 2008
    new-instance v10, Landroid/content/ContentValues;

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Landroid/content/ContentValues;-><init>(I)V

    .line 2009
    .local v10, values:Landroid/content/ContentValues;
    const-string v11, "is_super_primary"

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2010
    invoke-interface {v0}, Lcom/android/htccontacts/ui/QuickContactWindow$Action;->getDataUri()Landroid/net/Uri;

    move-result-object v3

    .line 2011
    .local v3, dataUri:Landroid/net/Uri;
    if-eqz v3, :cond_2

    .line 2012
    iget-object v11, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v3, v10, v12, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2065
    .end local v0           #action:Lcom/android/htccontacts/ui/QuickContactWindow$Action;
    .end local v3           #dataUri:Landroid/net/Uri;
    .end local v7           #makePrimary:Z
    .end local v8           #quickDial:Z
    .end local v10           #values:Landroid/content/ContentValues;
    :cond_2
    :goto_2
    return-void

    .line 1974
    .end local v1           #actionView:Lcom/android/htccontacts/ui/widget/CheckableImageView;
    .end local v9           #tag:Ljava/lang/Object;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 1998
    .restart local v0       #action:Lcom/android/htccontacts/ui/QuickContactWindow$Action;
    .restart local v1       #actionView:Lcom/android/htccontacts/ui/widget/CheckableImageView;
    .restart local v7       #makePrimary:Z
    .restart local v8       #quickDial:Z
    .restart local v9       #tag:Ljava/lang/Object;
    :catch_0
    move-exception v4

    .line 1999
    .local v4, e:Landroid/content/ActivityNotFoundException;
    iget-object v11, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mContext:Landroid/content/Context;

    const v12, 0x7f0a0063

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 2015
    .end local v0           #action:Lcom/android/htccontacts/ui/QuickContactWindow$Action;
    .end local v4           #e:Landroid/content/ActivityNotFoundException;
    .end local v7           #makePrimary:Z
    .end local v8           #quickDial:Z
    :cond_4
    instance-of v11, v9, Lcom/android/htccontacts/ui/QuickContactWindow$ActionList;

    if-eqz v11, :cond_2

    move-object v2, v9

    .line 2018
    check-cast v2, Lcom/android/htccontacts/ui/QuickContactWindow$ActionList;

    .line 2021
    .local v2, children:Lcom/android/htccontacts/ui/QuickContactWindow$ActionList;
    const/4 v11, 0x1

    invoke-direct {p0, v11, v1}, Lcom/android/htccontacts/ui/QuickContactWindow;->setResolveVisible(ZLcom/android/htccontacts/ui/widget/CheckableImageView;)V

    .line 2023
    iget-object v11, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mResolveList:Landroid/widget/ListView;

    invoke-virtual {v11, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2024
    iget-object v11, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mResolveList:Landroid/widget/ListView;

    new-instance v12, Lcom/android/htccontacts/ui/QuickContactWindow$2;

    invoke-direct {v12, p0, v2}, Lcom/android/htccontacts/ui/QuickContactWindow$2;-><init>(Lcom/android/htccontacts/ui/QuickContactWindow;Lcom/android/htccontacts/ui/QuickContactWindow$ActionList;)V

    invoke-virtual {v11, v12}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2060
    iget-object v11, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mDecor:Landroid/view/View;

    if-eqz v11, :cond_2

    .line 2061
    iget-object v11, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mDecor:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->forceLayout()V

    .line 2062
    iget-object v11, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mDecor:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->invalidate()V

    goto :goto_2
.end method

.method public onContentChanged()V
    .locals 0

    .prologue
    .line 2170
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 2174
    const/4 v0, 0x0

    return v0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1
    .parameter "featureId"

    .prologue
    .line 2179
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 2225
    return-void
.end method

.method public onGlobalLayout()V
    .locals 0

    .prologue
    .line 692
    invoke-direct {p0}, Lcom/android/htccontacts/ui/QuickContactWindow;->layoutInScreen()V

    .line 693
    return-void
.end method

.method public onIndicatorResult(Lcom/android/htccontacts/indicator/IndicatorResult;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 2289
    invoke-virtual {p1}, Lcom/android/htccontacts/indicator/IndicatorResult;->getTotalCount()I

    move-result v0

    .line 2290
    .local v0, totalCount:I
    iget-object v1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mMainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/htccontacts/ui/QuickContactWindow$3;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/htccontacts/ui/QuickContactWindow$3;-><init>(Lcom/android/htccontacts/ui/QuickContactWindow;Lcom/android/htccontacts/indicator/IndicatorResult;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2350
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1933
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0, p2}, Lcom/android/htccontacts/ui/QuickContactWindow;->onClick(Landroid/view/View;)V

    .line 1934
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2094
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 2095
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 2096
    const/4 v0, 0x1

    .line 2099
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2115
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "count"
    .parameter "event"

    .prologue
    .line 2120
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2104
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2106
    invoke-direct {p0}, Lcom/android/htccontacts/ui/QuickContactWindow;->onBackPressed()V

    .line 2107
    const/4 v0, 0x1

    .line 2110
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .parameter "featureId"
    .parameter "item"

    .prologue
    .line 2184
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 2189
    const/4 v0, 0x0

    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 0
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 2194
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .parameter "featureId"
    .parameter "view"
    .parameter "menu"

    .prologue
    .line 2198
    const/4 v0, 0x0

    return v0
.end method

.method public onPublishResult(Lcom/android/htccontacts/indicator/IndicatorResult;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 2353
    return-void
.end method

.method public declared-synchronized onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 17
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 823
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ui/QuickContactWindow;->mLookupUri:Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, p2

    if-eq v0, v2, :cond_1

    .line 878
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 825
    :cond_1
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v2, v0, :cond_5

    .line 826
    if-nez p3, :cond_2

    .line 828
    :try_start_1
    const-string v2, "QuickContactWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Missing cursor for token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ui/QuickContactWindow;->dismiss()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 823
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 833
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/htccontacts/ui/QuickContactWindow;->handleData(Landroid/database/Cursor;)V

    .line 834
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/htccontacts/ui/QuickContactWindow;->mHasData:Z

    .line 836
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 837
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 842
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ui/QuickContactWindow;->mIndicator:Lcom/android/htccontacts/indicator/IndicatorProcessor;

    if-nez v2, :cond_4

    .line 843
    new-instance v2, Lcom/android/htccontacts/indicator/IndicatorStackProcessor;

    invoke-direct {v2}, Lcom/android/htccontacts/indicator/IndicatorStackProcessor;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/htccontacts/ui/QuickContactWindow;->mIndicator:Lcom/android/htccontacts/indicator/IndicatorProcessor;

    .line 845
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ui/QuickContactWindow;->mIndicator:Lcom/android/htccontacts/indicator/IndicatorProcessor;

    invoke-virtual {v2}, Lcom/android/htccontacts/indicator/IndicatorProcessor;->startProcess()V

    .line 846
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ui/QuickContactWindow;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/htccontacts/ui/QuickContactWindow;->mId:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 848
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ui/QuickContactWindow;->mId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 850
    .local v6, id:J
    const/4 v3, 0x0

    .line 851
    .local v3, localContext:Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ui/QuickContactWindow;->mNativeContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_6

    .line 852
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ui/QuickContactWindow;->mNativeContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    .line 858
    :goto_1
    new-instance v2, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v4, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;-><init>(Landroid/content/Context;Lcom/android/htccontacts/indicator/IndicatorResultListener;Landroid/os/Bundle;J)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/htccontacts/ui/QuickContactWindow;->mRequest:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    .line 859
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ui/QuickContactWindow;->mIndicator:Lcom/android/htccontacts/indicator/IndicatorProcessor;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/ui/QuickContactWindow;->mRequest:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    invoke-virtual {v2, v4}, Lcom/android/htccontacts/indicator/IndicatorProcessor;->addRequest(Lcom/android/htccontacts/indicator/IndicatorRequest;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    .line 865
    .end local v3           #localContext:Landroid/content/Context;
    .end local v6           #id:J
    :cond_5
    :goto_2
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v2, v0, :cond_7

    :try_start_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/htccontacts/ui/QuickContactWindow;->mMode:I

    const/4 v4, 0x3

    if-eq v2, v4, :cond_7

    .line 866
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/htccontacts/ui/QuickContactWindow;->mHandler:Lcom/android/htccontacts/util/NotifyingAsyncQueryHandler;

    const/16 v9, 0x271c

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/htccontacts/ui/QuickContactWindow;->mLookupUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/htccontacts/ui/QuickContactWindow;->mDataUri:Landroid/net/Uri;

    sget-object v12, Lcom/android/htccontacts/ui/QuickContactWindow$PhotoMimeQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v8 .. v15}, Lcom/android/htccontacts/util/NotifyingAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 855
    .restart local v3       #localContext:Landroid/content/Context;
    .restart local v6       #id:J
    :cond_6
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ui/QuickContactWindow;->mNativeContext:Landroid/content/Context;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    .line 860
    .end local v3           #localContext:Landroid/content/Context;
    .end local v6           #id:J
    :catch_0
    move-exception v16

    .line 861
    .local v16, e:Ljava/lang/NumberFormatException;
    :try_start_6
    const-string v2, "QuickContactWindow"

    const-string v4, "Failed to parse contact ID"

    move-object/from16 v0, v16

    invoke-static {v2, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 867
    .end local v16           #e:Ljava/lang/NumberFormatException;
    :cond_7
    const/16 v2, 0x271c

    move/from16 v0, p1

    if-ne v2, v0, :cond_0

    .line 868
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/htccontacts/ui/QuickContactWindow;->mHasPhoto:Z

    .line 869
    if-eqz p3, :cond_0

    .line 870
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v4, 0x1

    if-lt v2, v4, :cond_8

    .line 871
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/htccontacts/ui/QuickContactWindow;->mHasPhoto:Z

    .line 873
    :cond_8
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 2203
    const/4 v0, 0x0

    return v0
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .parameter "attrs"

    .prologue
    .line 2208
    iget-object v0, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mDecor:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2209
    iget-object v0, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mDecor:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2211
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasFocus"

    .prologue
    .line 2215
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .parameter "callback"

    .prologue
    .line 131
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized show(Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Rect;I[Ljava/lang/String;)V
    .locals 10
    .parameter "lookupUri"
    .parameter "number"
    .parameter "anchor"
    .parameter "mode"
    .parameter "excludeMimes"

    .prologue
    const/4 v4, 0x2

    const/4 v9, 0x0

    const/4 v0, 0x1

    .line 523
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mQuerying:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mShowing:Z

    if-eqz v1, :cond_1

    .line 524
    :cond_0
    const-string v1, "QuickContactWindow"

    const-string v2, "dismissing before showing"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    invoke-direct {p0}, Lcom/android/htccontacts/ui/QuickContactWindow;->dismissInternal()V

    .line 533
    :cond_1
    if-eq p4, v0, :cond_2

    if-eq p4, v4, :cond_2

    const/4 v1, 0x3

    if-ne p4, v1, :cond_3

    :cond_2
    move v9, v0

    .line 535
    .local v9, validMode:Z
    :cond_3
    if-nez v9, :cond_4

    .line 536
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid mode, expecting MODE_LARGE, MODE_MEDIUM, or MODE_SMALL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 523
    .end local v9           #validMode:Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 540
    .restart local v9       #validMode:Z
    :cond_4
    if-nez p3, :cond_5

    .line 542
    :try_start_1
    new-instance v8, Landroid/graphics/Rect;

    const/16 v0, 0xa

    const/16 v1, 0xa

    const/16 v2, 0xa

    const/16 v4, 0xa

    invoke-direct {v8, v0, v1, v2, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .end local p3
    .local v8, anchor:Landroid/graphics/Rect;
    move-object p3, v8

    .line 546
    .end local v8           #anchor:Landroid/graphics/Rect;
    .restart local p3
    :cond_5
    iput-object p1, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mLookupUri:Landroid/net/Uri;

    .line 547
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mAnchor:Landroid/graphics/Rect;

    .line 548
    iput p4, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mMode:I

    .line 549
    iput-object p5, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mExcludeMimes:[Ljava/lang/String;

    .line 551
    invoke-direct {p0, p4}, Lcom/android/htccontacts/ui/QuickContactWindow;->getHeaderView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mHeader:Landroid/view/View;

    .line 553
    const v0, 0x7f07002c

    const v1, 0x7f0a0065

    invoke-direct {p0, v0, v1}, Lcom/android/htccontacts/ui/QuickContactWindow;->setHeaderText(II)V

    .line 555
    const v0, 0x7f0700f8

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/htccontacts/ui/QuickContactWindow;->setHeaderText(ILjava/lang/CharSequence;)V

    .line 556
    const v0, 0x7f0700f9

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/htccontacts/ui/QuickContactWindow;->setHeaderText(ILjava/lang/CharSequence;)V

    .line 558
    const v0, 0x7f0700fa

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/htccontacts/ui/QuickContactWindow;->setHeaderImage(ILandroid/graphics/drawable/Drawable;)V

    .line 560
    invoke-direct {p0}, Lcom/android/htccontacts/ui/QuickContactWindow;->resetTrack()V

    .line 564
    iget-object v0, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mRootView:Lcom/android/htccontacts/ui/QuickContactWindow$RootLayout;

    invoke-virtual {v0}, Lcom/android/htccontacts/ui/QuickContactWindow$RootLayout;->requestFocus()Z

    .line 566
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mHasValidSocial:Z

    .line 567
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mDismissed:Z

    .line 568
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mQuerying:Z

    .line 572
    iget-object v0, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/htccontacts/ui/QuickContactWindow;->getDataUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 573
    .local v3, dataUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mHandler:Lcom/android/htccontacts/util/NotifyingAsyncQueryHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/util/NotifyingAsyncQueryHandler;->cancelOperation(I)V

    .line 574
    iget-object v0, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mHandler:Lcom/android/htccontacts/util/NotifyingAsyncQueryHandler;

    const/16 v1, 0x271c

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/util/NotifyingAsyncQueryHandler;->cancelOperation(I)V

    .line 577
    iget v0, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    .line 579
    iget-object v0, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mHandler:Lcom/android/htccontacts/util/NotifyingAsyncQueryHandler;

    const/4 v1, 0x1

    sget-object v4, Lcom/android/htccontacts/ui/QuickContactWindow$DataQuery;->PROJECTION:[Ljava/lang/String;

    const-string v5, "mimetype!=? OR (mimetype=? AND _id=photo_id)"

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v7, "vnd.android.cursor.item/photo"

    aput-object v7, v6, v2

    const/4 v2, 0x1

    const-string v7, "vnd.android.cursor.item/photo"

    aput-object v7, v6, v2

    const/4 v7, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/htccontacts/util/NotifyingAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    :goto_0
    iput-object v3, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mDataUri:Landroid/net/Uri;

    .line 588
    iput-object p2, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mSpecificPhoneNumber:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 589
    monitor-exit p0

    return-void

    .line 584
    :cond_6
    :try_start_2
    iget-object v0, p0, Lcom/android/htccontacts/ui/QuickContactWindow;->mHandler:Lcom/android/htccontacts/util/NotifyingAsyncQueryHandler;

    const/4 v1, 0x1

    sget-object v4, Lcom/android/htccontacts/ui/QuickContactWindow$DataQuery;->PROJECTION:[Ljava/lang/String;

    const-string v5, "mimetype!=?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v7, "vnd.android.cursor.item/photo"

    aput-object v7, v6, v2

    const/4 v7, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/htccontacts/util/NotifyingAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized showUnknown(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;I)V
    .locals 17
    .parameter "email"
    .parameter "number"
    .parameter "anchor"
    .parameter "mode"

    .prologue
    .line 433
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/htccontacts/ui/QuickContactWindow;->mQuerying:Z

    if-nez v15, :cond_0

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/htccontacts/ui/QuickContactWindow;->mShowing:Z

    if-eqz v15, :cond_1

    .line 434
    :cond_0
    const-string v15, "QuickContactWindow"

    const-string v16, "dismissing before showing"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/ui/QuickContactWindow;->dismissInternal()V

    .line 438
    :cond_1
    new-instance v15, Landroid/graphics/Rect;

    move-object/from16 v0, p3

    invoke-direct {v15, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/htccontacts/ui/QuickContactWindow;->mAnchor:Landroid/graphics/Rect;

    .line 439
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/htccontacts/ui/QuickContactWindow;->mMode:I

    .line 441
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/htccontacts/ui/QuickContactWindow;->getHeaderView(I)Landroid/view/View;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/htccontacts/ui/QuickContactWindow;->mHeader:Landroid/view/View;

    .line 443
    const v15, 0x7f07002c

    const v16, 0x7f0a0065

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/htccontacts/ui/QuickContactWindow;->setHeaderText(II)V

    .line 445
    const v15, 0x7f0700f8

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/htccontacts/ui/QuickContactWindow;->setHeaderText(ILjava/lang/CharSequence;)V

    .line 446
    const v15, 0x7f0700f9

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/htccontacts/ui/QuickContactWindow;->setHeaderText(ILjava/lang/CharSequence;)V

    .line 448
    const v15, 0x7f0700fa

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/htccontacts/ui/QuickContactWindow;->setHeaderImage(ILandroid/graphics/drawable/Drawable;)V

    .line 450
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/ui/QuickContactWindow;->resetTrack()V

    .line 452
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/htccontacts/ui/QuickContactWindow;->mHasValidSocial:Z

    .line 453
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/htccontacts/ui/QuickContactWindow;->mDismissed:Z

    .line 454
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/htccontacts/ui/QuickContactWindow;->mQuerying:Z

    .line 456
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/htccontacts/ui/QuickContactWindow;->mHandler:Lcom/android/htccontacts/util/NotifyingAsyncQueryHandler;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/htccontacts/util/NotifyingAsyncQueryHandler;->cancelOperation(I)V

    .line 457
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/htccontacts/ui/QuickContactWindow;->mHandler:Lcom/android/htccontacts/util/NotifyingAsyncQueryHandler;

    const/16 v16, 0x271c

    invoke-virtual/range {v15 .. v16}, Lcom/android/htccontacts/util/NotifyingAsyncQueryHandler;->cancelOperation(I)V

    .line 461
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 462
    new-instance v3, Lcom/android/htccontacts/ui/QuickContactWindow$UnknownAction;

    const-string v15, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, p2

    invoke-direct {v3, v0, v15}, Lcom/android/htccontacts/ui/QuickContactWindow$UnknownAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    .local v3, callAction:Lcom/android/htccontacts/ui/QuickContactWindow$Action;
    const-string v15, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15}, Lcom/android/htccontacts/ui/QuickContactWindow;->considerAdd(Lcom/android/htccontacts/ui/QuickContactWindow$Action;Ljava/lang/String;)V

    .line 464
    new-instance v14, Lcom/android/htccontacts/ui/QuickContactWindow$UnknownAction;

    const-string v15, "vnd.android.cursor.item/sms-address"

    move-object/from16 v0, p2

    invoke-direct {v14, v0, v15}, Lcom/android/htccontacts/ui/QuickContactWindow$UnknownAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    .local v14, smsAction:Lcom/android/htccontacts/ui/QuickContactWindow$Action;
    const-string v15, "vnd.android.cursor.item/sms-address"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/htccontacts/ui/QuickContactWindow;->considerAdd(Lcom/android/htccontacts/ui/QuickContactWindow$Action;Ljava/lang/String;)V

    .line 467
    .end local v3           #callAction:Lcom/android/htccontacts/ui/QuickContactWindow$Action;
    .end local v14           #smsAction:Lcom/android/htccontacts/ui/QuickContactWindow$Action;
    :cond_2
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 468
    new-instance v5, Lcom/android/htccontacts/ui/QuickContactWindow$UnknownAction;

    const-string v15, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, p1

    invoke-direct {v5, v0, v15}, Lcom/android/htccontacts/ui/QuickContactWindow$UnknownAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    .local v5, emailAction:Lcom/android/htccontacts/ui/QuickContactWindow$Action;
    const-string v15, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v15}, Lcom/android/htccontacts/ui/QuickContactWindow;->considerAdd(Lcom/android/htccontacts/ui/QuickContactWindow$Action;Ljava/lang/String;)V

    .line 471
    .end local v5           #emailAction:Lcom/android/htccontacts/ui/QuickContactWindow$Action;
    :cond_3
    new-instance v10, Lcom/android/htccontacts/ui/QuickContactWindow$UnknownAction;

    const-string v15, "vnd.android.cursor.dir/contact"

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-direct {v10, v0, v1, v15}, Lcom/android/htccontacts/ui/QuickContactWindow$UnknownAction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    .local v10, insertAction:Lcom/android/htccontacts/ui/QuickContactWindow$Action;
    const-string v15, "vnd.android.cursor.dir/contact"

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v15}, Lcom/android/htccontacts/ui/QuickContactWindow;->considerAdd(Lcom/android/htccontacts/ui/QuickContactWindow$Action;Ljava/lang/String;)V

    .line 477
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/htccontacts/ui/QuickContactWindow;->mTrack:Landroid/view/ViewGroup;

    invoke-virtual {v15}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v15

    add-int/lit8 v7, v15, -0x1

    .line 480
    .local v7, index:I
    new-instance v4, Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/htccontacts/ui/QuickContactWindow;->mActions:Lcom/android/htccontacts/ui/QuickContactWindow$ActionMap;

    invoke-virtual {v15}, Lcom/android/htccontacts/ui/QuickContactWindow$ActionMap;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-direct {v4, v15}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 483
    .local v4, containedTypes:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v2, Lcom/android/htccontacts/ui/QuickContactWindow;->PRECEDING_MIMETYPES:[Ljava/lang/String;

    .local v2, arr$:[Ljava/lang/String;
    array-length v11, v2

    .local v11, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    move v8, v7

    .end local v7           #index:I
    .local v8, index:I
    :goto_0
    if-ge v6, v11, :cond_4

    aget-object v12, v2, v6

    .line 484
    .local v12, mimeType:Ljava/lang/String;
    invoke-interface {v4, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 485
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/htccontacts/ui/QuickContactWindow;->mTrack:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/htccontacts/ui/QuickContactWindow;->inflateAction(Ljava/lang/String;)Landroid/view/View;

    move-result-object v16

    add-int/lit8 v7, v8, 0x1

    .end local v8           #index:I
    .restart local v7       #index:I
    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 486
    invoke-interface {v4, v12}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 483
    :goto_1
    add-int/lit8 v6, v6, 0x1

    move v8, v7

    .end local v7           #index:I
    .restart local v8       #index:I
    goto :goto_0

    .line 491
    .end local v12           #mimeType:Ljava/lang/String;
    :cond_4
    move v9, v8

    .line 494
    .local v9, indexAfterPreceding:I
    sget-object v2, Lcom/android/htccontacts/ui/QuickContactWindow;->FOLLOWING_MIMETYPES:[Ljava/lang/String;

    array-length v11, v2

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v11, :cond_5

    aget-object v12, v2, v6

    .line 495
    .restart local v12       #mimeType:Ljava/lang/String;
    invoke-interface {v4, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 496
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/htccontacts/ui/QuickContactWindow;->mTrack:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/htccontacts/ui/QuickContactWindow;->inflateAction(Ljava/lang/String;)Landroid/view/View;

    move-result-object v16

    add-int/lit8 v7, v8, 0x1

    .end local v8           #index:I
    .restart local v7       #index:I
    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 497
    invoke-interface {v4, v12}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 494
    :goto_3
    add-int/lit8 v6, v6, 0x1

    move v8, v7

    .end local v7           #index:I
    .restart local v8       #index:I
    goto :goto_2

    .line 502
    .end local v12           #mimeType:Ljava/lang/String;
    :cond_5
    move v7, v9

    .line 503
    .end local v8           #index:I
    .restart local v7       #index:I
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v15

    new-array v15, v15, [Ljava/lang/String;

    invoke-interface {v4, v15}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    .line 504
    .local v13, remainingTypes:[Ljava/lang/String;
    invoke-static {v13}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 505
    move-object v2, v13

    array-length v11, v2

    const/4 v6, 0x0

    move v8, v7

    .end local v7           #index:I
    .restart local v8       #index:I
    :goto_4
    if-ge v6, v11, :cond_6

    aget-object v12, v2, v6

    .line 506
    .restart local v12       #mimeType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/htccontacts/ui/QuickContactWindow;->mTrack:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/htccontacts/ui/QuickContactWindow;->inflateAction(Ljava/lang/String;)Landroid/view/View;

    move-result-object v16

    add-int/lit8 v7, v8, 0x1

    .end local v8           #index:I
    .restart local v7       #index:I
    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 505
    add-int/lit8 v6, v6, 0x1

    move v8, v7

    .end local v7           #index:I
    .restart local v8       #index:I
    goto :goto_4

    .line 509
    .end local v12           #mimeType:Ljava/lang/String;
    :cond_6
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/htccontacts/ui/QuickContactWindow;->mHasData:Z

    .line 510
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/ui/QuickContactWindow;->considerShowing()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 511
    monitor-exit p0

    return-void

    .line 433
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v4           #containedTypes:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6           #i$:I
    .end local v8           #index:I
    .end local v9           #indexAfterPreceding:I
    .end local v10           #insertAction:Lcom/android/htccontacts/ui/QuickContactWindow$Action;
    .end local v11           #len$:I
    .end local v13           #remainingTypes:[Ljava/lang/String;
    :catchall_0
    move-exception v15

    monitor-exit p0

    throw v15

    .restart local v2       #arr$:[Ljava/lang/String;
    .restart local v4       #containedTypes:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v6       #i$:I
    .restart local v8       #index:I
    .restart local v9       #indexAfterPreceding:I
    .restart local v10       #insertAction:Lcom/android/htccontacts/ui/QuickContactWindow$Action;
    .restart local v11       #len$:I
    .restart local v12       #mimeType:Ljava/lang/String;
    :cond_7
    move v7, v8

    .end local v8           #index:I
    .restart local v7       #index:I
    goto :goto_3

    .end local v7           #index:I
    .end local v9           #indexAfterPreceding:I
    .restart local v8       #index:I
    :cond_8
    move v7, v8

    .end local v8           #index:I
    .restart local v7       #index:I
    goto :goto_1
.end method
