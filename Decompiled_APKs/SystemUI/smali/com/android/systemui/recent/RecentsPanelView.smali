.class public Lcom/android/systemui/recent/RecentsPanelView;
.super Landroid/widget/RelativeLayout;
.source "RecentsPanelView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/systemui/recent/RecentsCallback;
.implements Lcom/android/systemui/statusbar/tablet/StatusBarPanel;
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;,
        Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;,
        Lcom/android/systemui/recent/RecentsPanelView$OnLongClickDelegate;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "RecentsPanelView"


# instance fields
.field private foucusPopupMenu:Landroid/widget/PopupMenu;

.field private mBar:Lcom/android/systemui/statusbar/StatusBar;

.field private mChoreo:Lcom/android/systemui/recent/Choreographer;

.field private mContext:Landroid/content/Context;

.field private mFitThumbnailToXY:Z

.field private mListAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

.field private mPreloadTasksRunnable:Ljava/lang/Runnable;

.field private mRecentTaskDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentTasksDirty:Z

.field private mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

.field private mRecentsContainer:Landroid/view/ViewGroup;

.field private mRecentsDismissButton:Landroid/view/View;

.field private mRecentsNoApps:Landroid/view/View;

.field private mRecentsScrim:Landroid/view/View;

.field private mShowing:Z

.field private mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

.field private mThumbnailWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recent/RecentsPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksDirty:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->updateValuesFromResources()V

    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_SKIN:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/StatusBarStyleable;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/StatusBarStyleable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recent/RecentsPanelView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/RecentTasksLoader;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/Bitmap;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/recent/RecentsPanelView;->updateThumbnail(Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/Bitmap;ZZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/statusbar/StatusBarStyleable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/recent/RecentsPanelView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/recent/RecentsPanelView;->startApplicationDetailsActivity(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/statusbar/StatusBar;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mBar:Lcom/android/systemui/statusbar/StatusBar;

    return-object v0
.end method

.method private createCustomAnimations(Landroid/animation/LayoutTransition;)V
    .locals 3

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/LayoutTransition;->setDuration(J)V

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    return-void
.end method

.method private refreshRecentTasksList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksDirty:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mListAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->notifyDataSetInvalidated()V

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/recent/RecentsPanelView;->updateUiElements(Landroid/content/res/Configuration;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksDirty:Z

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentTasksLoader;->getRecentTasks()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method private startApplicationDetailsActivity(Ljava/lang/String;)V
    .locals 5

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v3, "package"

    const/4 v4, 0x0

    invoke-static {v3, p1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "RecentsPanelView"

    const-string v3, "Unable to launch recent task"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private updateThumbnail(Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/Bitmap;ZZ)V
    .locals 5

    if-eqz p2, :cond_5

    sget v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentAppStyle:I

    const/16 v2, 0x2

    if-ne v2, v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/systemui/recent/RecentsPanelView;->doReflectionNRotate(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    :cond_0
    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImageBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_1

    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-eq v2, v3, :cond_2

    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mFitThumbnailToXY:Z

    if-eqz v2, :cond_6

    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_2
    :goto_0
    if-eqz p3, :cond_4

    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_4

    if-eqz p4, :cond_3

    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    const v4, 0x7f04000d

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_3
    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iput-object p2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImageBitmap:Landroid/graphics/Bitmap;

    :cond_5
    return-void

    :cond_6
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iget v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mThumbnailWidth:I

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v2, v3

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method private updateUiElements(Landroid/content/res/Configuration;)V
    .locals 8

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    if-lez v0, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/systemui/recent/RecentsPanelView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const/16 v3, 0x8

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v5, 0x7f0b

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v3, v5, v1, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method


# virtual methods
.method public clearRecentTasksList()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentTasksLoader;->cancelLoadingThumbnails()V

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mListAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->notifyDataSetInvalidated()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksDirty:Z

    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RecentsPanelView;->hide(Z)V

    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->getWidth()I

    move-result v2

    if-ge v0, v2, :cond_0

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public doReflection(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 26

    const/16 v24, 0x4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v1, 0x3f80

    const/high16 v2, -0x4080

    invoke-virtual {v6, v1, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    const/4 v2, 0x0

    div-int/lit8 v3, v22, 0x2

    div-int/lit8 v5, v22, 0x2

    const/4 v7, 0x0

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v25

    div-int/lit8 v1, v22, 0x2

    add-int v1, v1, v22

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v21

    new-instance v7, Landroid/graphics/Canvas;

    move-object/from16 v0, v21

    invoke-direct {v7, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    const/4 v8, 0x0

    move/from16 v0, v22

    int-to-float v9, v0

    int-to-float v10, v4

    add-int v1, v22, v24

    int-to-float v11, v1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v1, 0x0

    add-int v2, v22, v24

    int-to-float v2, v2

    const/4 v3, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    new-instance v23, Landroid/graphics/Paint;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Paint;-><init>()V

    new-instance v13, Landroid/graphics/LinearGradient;

    const/4 v14, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v15, v1

    const/16 v16, 0x0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    add-int v1, v1, v24

    int-to-float v0, v1

    move/from16 v17, v0

    const v18, 0x70ffffff

    const v19, 0xffffff

    sget-object v20, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v13 .. v20}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v15, 0x0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v16, v0

    int-to-float v0, v4

    move/from16 v17, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    add-int v1, v1, v24

    int-to-float v0, v1

    move/from16 v18, v0

    move-object v14, v7

    move-object/from16 v19, v23

    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-object v21
.end method

.method public doReflectionNRotate(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/RecentsPanelView;->doReflection(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/RecentsPanelView;->doRotate(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public doRotate(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    new-instance v5, Landroid/graphics/Camera;

    invoke-direct {v5}, Landroid/graphics/Camera;-><init>()V

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v5}, Landroid/graphics/Camera;->save()V

    invoke-virtual {v5, v11}, Landroid/graphics/Camera;->rotateX(F)V

    const/high16 v9, 0x41c8

    invoke-virtual {v5, v9}, Landroid/graphics/Camera;->rotateY(F)V

    invoke-virtual {v5, v11}, Landroid/graphics/Camera;->rotateZ(F)V

    invoke-virtual {v5, v6}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    div-int/lit8 v0, v8, 0x2

    div-int/lit8 v1, v4, 0x2

    neg-int v9, v0

    int-to-float v9, v9

    neg-int v10, v1

    int-to-float v10, v10

    invoke-virtual {v6, v9, v10}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    int-to-float v9, v0

    int-to-float v10, v1

    invoke-virtual {v6, v9, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v7, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v7, v12}, Landroid/graphics/Paint;->setDither(Z)V

    div-int/lit8 v9, v4, 0x6

    add-int/2addr v9, v4

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v6}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    div-int/lit8 v9, v4, 0xc

    int-to-float v9, v9

    invoke-virtual {v3, p1, v11, v9, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v5}, Landroid/graphics/Camera;->restore()V

    return-object v2
.end method

.method public doScale(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    mul-int/lit8 v2, v1, 0x2

    mul-int/lit8 v3, v0, 0x2

    const/4 v4, 0x0

    invoke-static {p1, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method public getRecentTasksList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public handleLongPress(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 4

    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Landroid/view/View;->setSelected(Z)V

    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    if-nez p2, :cond_0

    move-object p2, p1

    :cond_0
    invoke-direct {v0, v1, p2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const/high16 v2, 0x7f0d

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    new-instance v1, Lcom/android/systemui/recent/RecentsPanelView$3;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/recent/RecentsPanelView$3;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    new-instance v1, Lcom/android/systemui/recent/RecentsPanelView$4;

    invoke-direct {v1, p0, p3, p1}, Lcom/android/systemui/recent/RecentsPanelView$4;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    iput-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->popupMenu:Landroid/widget/PopupMenu;

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->foucusPopupMenu:Landroid/widget/PopupMenu;

    return-void
.end method

.method public handleOnClick(Landroid/view/View;)V
    .locals 10

    const/4 v9, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    iget-object v0, v7, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->taskDescription:Lcom/android/systemui/recent/TaskDescription;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v7, "activity"

    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iget v7, v0, Lcom/android/systemui/recent/TaskDescription;->taskId:I

    if-ltz v7, :cond_1

    iget v7, v0, Lcom/android/systemui/recent/TaskDescription;->taskId:I

    invoke-virtual {v1, v7, v9}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    :goto_0
    invoke-virtual {p0, v9}, Lcom/android/systemui/recent/RecentsPanelView;->hide(Z)V

    sget-boolean v7, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_UB_LOG:Z

    if-eqz v7, :cond_0

    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/systemui/recent/TaskDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/recent/TaskDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    const-string v7, "system_server"

    invoke-virtual {v6, v7}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v7

    const-string v8, "MRU_click"

    invoke-interface {v7, v8}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v7

    const-string v8, "package"

    iget-object v9, v0, Lcom/android/systemui/recent/TaskDescription;->packageName:Ljava/lang/String;

    invoke-interface {v7, v8, v9}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v7

    const-string v8, "name"

    invoke-interface {v7, v8, v5}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v7

    const-string v8, "method"

    const-string v9, "long_press"

    invoke-interface {v7, v8, v9}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    invoke-static {v6}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    invoke-virtual {v6}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V

    :cond_0
    return-void

    :cond_1
    iget-object v4, v0, Lcom/android/systemui/recent/TaskDescription;->intent:Landroid/content/Intent;

    const v7, 0x10104000

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {v2, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v7, "RecentsPanelView"

    const-string v8, "Unable to launch recent task"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    const-string v5, ""

    goto :goto_1
.end method

.method public handleShowBackground(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsScrim:Landroid/view/View;

    const v1, 0x7f020250

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsScrim:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public handleSwipe(Landroid/view/View;)V
    .locals 8

    const/4 v5, 0x1

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    iget-object v0, v3, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->taskDescription:Lcom/android/systemui/recent/TaskDescription;

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, v7}, Lcom/android/systemui/recent/RecentsPanelView;->hide(Z)V

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iget v3, v0, Lcom/android/systemui/recent/TaskDescription;->persistentTaskId:I

    invoke-virtual {v1, v3, v5}, Landroid/app/ActivityManager;->removeTask(II)Z

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    const v4, 0x7f08006c

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/systemui/recent/TaskDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/recent/RecentsPanelView;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/android/systemui/recent/RecentsPanelView;->sendAccessibilityEvent(I)V

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/systemui/recent/RecentsPanelView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    iget-object v3, v2, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->popupMenu:Landroid/widget/PopupMenu;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->popupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v3}, Landroid/widget/PopupMenu;->dismiss()V

    :cond_1
    return-void
.end method

.method public hide(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RecentsPanelView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mBar:Lcom/android/systemui/statusbar/StatusBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mBar:Lcom/android/systemui/statusbar/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBar;->animateCollapse()V

    :cond_1
    return-void
.end method

.method public isInContentArea(II)Z
    .locals 5

    iget-object v4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    iget-object v4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getRight()I

    move-result v2

    iget-object v4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getBottom()I

    move-result v0

    if-lt p1, v1, :cond_0

    if-ge p1, v2, :cond_0

    if-lt p2, v3, :cond_0

    if-ge p2, v0, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public isRecentsVisible()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowing:Z

    return v0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-boolean v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowing:Z

    if-eqz v1, :cond_0

    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/recent/RecentsPanelView;->createCustomAnimations(Landroid/animation/LayoutTransition;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->clearRecentTasksList()V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method protected onFinishInflate()V
    .locals 7

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    const v0, 0x7f0e00be

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    new-instance v0, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mListAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    instance-of v0, v0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;

    if-eqz v0, :cond_2

    iget-object v6, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    check-cast v6, Lcom/android/systemui/recent/RecentsHorizontalScrollView;

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mListAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    invoke-virtual {v6, v0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->setAdapter(Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;)V

    invoke-virtual {v6, p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->setCallback(Lcom/android/systemui/recent/RecentsCallback;)V

    :goto_0
    const v0, 0x7f0e00bd

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsScrim:Landroid/view/View;

    const v0, 0x7f0e00c0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsNoApps:Landroid/view/View;

    new-instance v0, Lcom/android/systemui/recent/Choreographer;

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsScrim:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsNoApps:Landroid/view/View;

    move-object v1, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recent/Choreographer;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mChoreo:Lcom/android/systemui/recent/Choreographer;

    const v0, 0x7f0e00c1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsDismissButton:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsDismissButton:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsDismissButton:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/recent/RecentsPanelView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/recent/RecentsPanelView$1;-><init>(Lcom/android/systemui/recent/RecentsPanelView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsScrim:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsScrim:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsScrim:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeY(Landroid/graphics/Shader$TileMode;)V

    :cond_1
    new-instance v0, Lcom/android/systemui/recent/RecentsPanelView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/recent/RecentsPanelView$2;-><init>(Lcom/android/systemui/recent/RecentsPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPreloadTasksRunnable:Ljava/lang/Runnable;

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    instance-of v0, v0, Lcom/android/systemui/recent/RecentsVerticalScrollView;

    if-eqz v0, :cond_3

    iget-object v6, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    check-cast v6, Lcom/android/systemui/recent/RecentsVerticalScrollView;

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mListAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    invoke-virtual {v6, v0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->setAdapter(Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;)V

    invoke-virtual {v6, p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->setCallback(Lcom/android/systemui/recent/RecentsCallback;)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "missing Recents[Horizontal]ScrollView"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/android/systemui/recent/RecentsPanelView;->handleOnClick(Landroid/view/View;)V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/recent/RecentsPanelView;->show(ZZ)V

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mChoreo:Lcom/android/systemui/recent/Choreographer;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/Choreographer;->setPanelHeight(I)V

    return-void
.end method

.method onTaskThumbnailLoaded(Lcom/android/systemui/recent/TaskDescription;)V
    .locals 8

    const/4 v5, 0x1

    monitor-enter p1

    :try_start_0
    iget-object v6, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    if-eqz v6, :cond_4

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    instance-of v6, v1, Landroid/widget/HorizontalScrollView;

    if-nez v6, :cond_0

    instance-of v6, v1, Landroid/widget/ScrollView;

    if-eqz v6, :cond_1

    :cond_0
    const v6, 0x7f0e00bf

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v3, v6, :cond_4

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    if-eqz v6, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    iget-object v6, v2, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->taskDescription:Lcom/android/systemui/recent/TaskDescription;

    if-ne v6, p1, :cond_2

    iget-boolean v6, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowing:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v6

    const v7, 0x3caaaaab

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    move v0, v5

    :goto_1
    invoke-virtual {p1}, Lcom/android/systemui/recent/TaskDescription;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {p0, v2, v6, v7, v0}, Lcom/android/systemui/recent/RecentsPanelView;->updateThumbnail(Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/Bitmap;ZZ)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v5

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const/16 v2, 0x8

    iget-boolean v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowing:Z

    if-nez v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPreloadTasksRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/systemui/recent/RecentsPanelView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->clearRecentTasksList()V

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPreloadTasksRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPreloadTasksRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/systemui/recent/RecentsPanelView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->clearRecentTasksList()V

    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    instance-of v0, v0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->onRecentsVisibilityChanged()V

    :goto_0
    const/16 v0, 0x8

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->foucusPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->foucusPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->foucusPopupMenu:Landroid/widget/PopupMenu;

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    instance-of v0, v0, Lcom/android/systemui/recent/RecentsVerticalScrollView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/systemui/recent/RecentsVerticalScrollView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->onRecentsVisibilityChanged()V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "missing Recents[Horizontal]ScrollView"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public refreshRecentTasksList()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/recent/RecentsPanelView;->refreshRecentTasksList(Ljava/util/ArrayList;)V

    return-void
.end method

.method public setBar(Lcom/android/systemui/statusbar/StatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mBar:Lcom/android/systemui/statusbar/StatusBar;

    return-void
.end method

.method public setRecentTasksLoader(Lcom/android/systemui/recent/RecentTasksLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    return-void
.end method

.method public show(ZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/recent/RecentsPanelView;->show(ZZLjava/util/ArrayList;)V

    return-void
.end method

.method public show(ZZLjava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_7

    invoke-direct {p0, p3}, Lcom/android/systemui/recent/RecentsPanelView;->refreshRecentTasksList(Ljava/util/ArrayList;)V

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_4

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsNoApps:Landroid/view/View;

    if-eqz v3, :cond_6

    iget-object v4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsNoApps:Landroid/view/View;

    if-eqz v0, :cond_5

    move v3, v2

    :goto_1
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_2
    if-eqz p2, :cond_8

    iget-boolean v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowing:Z

    if-eq v3, p1, :cond_2

    iput-boolean p1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowing:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/systemui/recent/RecentsPanelView;->setVisibility(I)V

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mChoreo:Lcom/android/systemui/recent/Choreographer;

    invoke-virtual {v2, p1}, Lcom/android/systemui/recent/Choreographer;->startAnimation(Z)V

    :cond_2
    :goto_3
    if-eqz p1, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->setFocusable(Z)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->requestFocus()Z

    :cond_3
    :goto_4
    return-void

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    const/4 v3, 0x4

    goto :goto_1

    :cond_6
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-virtual {v2}, Lcom/android/systemui/recent/RecentTasksLoader;->cancelLoadingThumbnails()V

    iput-boolean v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksDirty:Z

    goto :goto_4

    :cond_7
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-virtual {v3}, Lcom/android/systemui/recent/RecentTasksLoader;->cancelLoadingThumbnails()V

    iput-boolean v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksDirty:Z

    goto :goto_2

    :cond_8
    iput-boolean p1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowing:Z

    if-eqz p1, :cond_9

    :goto_5
    invoke-virtual {p0, v2}, Lcom/android/systemui/recent/RecentsPanelView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mChoreo:Lcom/android/systemui/recent/Choreographer;

    invoke-virtual {v2, p1}, Lcom/android/systemui/recent/Choreographer;->jumpTo(Z)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/systemui/recent/RecentsPanelView;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_3

    :cond_9
    const/16 v2, 0x8

    goto :goto_5
.end method

.method public updateValuesFromResources()V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mThumbnailWidth:I

    const v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mFitThumbnailToXY:Z

    return-void
.end method
