.class public Lcom/htc/launcher/LegacyLayout;
.super Landroid/widget/FrameLayout;
.source "LegacyLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/launcher/LegacyLayout$FxSceneControl;,
        Lcom/htc/launcher/LegacyLayout$AttachScene;
    }
.end annotation


# static fields
.field private static final EXTEND_CELL_COUNT:I = 0x2

.field private static final FUTURE_WAIT_TIME:I = 0x1f4

.field private static final MSG_RETRY:I = 0x10000000

.field private static final REMOTE_CONTROL_NAME:Ljava/lang/String; = "remote"

.field private static final TAG:Ljava/lang/String; = "LegacyLayout"

.field private static sFlushCount:I

.field private static sH:Landroid/os/Handler;

.field private static sPendingViews:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/htc/launcher/LegacyLayout;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCount:I

.field private mDirtyRgn:Landroid/graphics/Region;

.field private mDrawWithFx:Z

.field private mFrame:Landroid/graphics/Rect;

.field private mFxSceneControl:Lcom/htc/launcher/LegacyLayout$FxSceneControl;

.field private mFxScreen:I

.field private mNeedsDraw:J

.field private mOutlinePaint:Landroid/graphics/Paint;

.field private mPressed:Z

.field mSetVisibleFalseRunnable:Ljava/lang/Runnable;

.field private mWorkspace:Lcom/htc/launcher/Workspace;

.field private m_bIsStackView:Z

.field private m_nOriginX:I

.field private m_nOriginY:I

.field private m_nStactViewHeight:I

.field private m_nStactViewWidth:I

.field private m_nTargetX:I

.field private m_nTargetY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 613
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/htc/launcher/LegacyLayout;->sPendingViews:Ljava/util/Set;

    .line 615
    new-instance v0, Lcom/htc/launcher/LegacyLayout$1;

    invoke-direct {v0}, Lcom/htc/launcher/LegacyLayout$1;-><init>()V

    sput-object v0, Lcom/htc/launcher/LegacyLayout;->sH:Landroid/os/Handler;

    .line 632
    const/4 v0, 0x0

    sput v0, Lcom/htc/launcher/LegacyLayout;->sFlushCount:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 277
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/launcher/LegacyLayout;->mWorkspace:Lcom/htc/launcher/Workspace;

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/launcher/LegacyLayout;->mDrawWithFx:Z

    .line 49
    iput-boolean v2, p0, Lcom/htc/launcher/LegacyLayout;->m_bIsStackView:Z

    .line 263
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/launcher/LegacyLayout;->mFxScreen:I

    .line 265
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/LegacyLayout;->mOutlinePaint:Landroid/graphics/Paint;

    .line 266
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/LegacyLayout;->mFrame:Landroid/graphics/Rect;

    .line 577
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/htc/launcher/LegacyLayout;->mNeedsDraw:J

    .line 578
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/LegacyLayout;->mDirtyRgn:Landroid/graphics/Region;

    .line 767
    iput v2, p0, Lcom/htc/launcher/LegacyLayout;->mCount:I

    .line 886
    new-instance v0, Lcom/htc/launcher/LegacyLayout$3;

    invoke-direct {v0, p0}, Lcom/htc/launcher/LegacyLayout$3;-><init>(Lcom/htc/launcher/LegacyLayout;)V

    iput-object v0, p0, Lcom/htc/launcher/LegacyLayout;->mSetVisibleFalseRunnable:Ljava/lang/Runnable;

    .line 278
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 273
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/launcher/LegacyLayout;->mWorkspace:Lcom/htc/launcher/Workspace;

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/launcher/LegacyLayout;->mDrawWithFx:Z

    .line 49
    iput-boolean v2, p0, Lcom/htc/launcher/LegacyLayout;->m_bIsStackView:Z

    .line 263
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/launcher/LegacyLayout;->mFxScreen:I

    .line 265
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/LegacyLayout;->mOutlinePaint:Landroid/graphics/Paint;

    .line 266
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/LegacyLayout;->mFrame:Landroid/graphics/Rect;

    .line 577
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/htc/launcher/LegacyLayout;->mNeedsDraw:J

    .line 578
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/LegacyLayout;->mDirtyRgn:Landroid/graphics/Region;

    .line 767
    iput v2, p0, Lcom/htc/launcher/LegacyLayout;->mCount:I

    .line 886
    new-instance v0, Lcom/htc/launcher/LegacyLayout$3;

    invoke-direct {v0, p0}, Lcom/htc/launcher/LegacyLayout$3;-><init>(Lcom/htc/launcher/LegacyLayout;)V

    iput-object v0, p0, Lcom/htc/launcher/LegacyLayout;->mSetVisibleFalseRunnable:Ljava/lang/Runnable;

    .line 274
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 269
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/launcher/LegacyLayout;->mWorkspace:Lcom/htc/launcher/Workspace;

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/launcher/LegacyLayout;->mDrawWithFx:Z

    .line 49
    iput-boolean v2, p0, Lcom/htc/launcher/LegacyLayout;->m_bIsStackView:Z

    .line 263
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/launcher/LegacyLayout;->mFxScreen:I

    .line 265
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/LegacyLayout;->mOutlinePaint:Landroid/graphics/Paint;

    .line 266
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/LegacyLayout;->mFrame:Landroid/graphics/Rect;

    .line 577
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/htc/launcher/LegacyLayout;->mNeedsDraw:J

    .line 578
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/LegacyLayout;->mDirtyRgn:Landroid/graphics/Region;

    .line 767
    iput v2, p0, Lcom/htc/launcher/LegacyLayout;->mCount:I

    .line 886
    new-instance v0, Lcom/htc/launcher/LegacyLayout$3;

    invoke-direct {v0, p0}, Lcom/htc/launcher/LegacyLayout$3;-><init>(Lcom/htc/launcher/LegacyLayout;)V

    iput-object v0, p0, Lcom/htc/launcher/LegacyLayout;->mSetVisibleFalseRunnable:Ljava/lang/Runnable;

    .line 270
    return-void
.end method

.method public constructor <init>(Lcom/htc/launcher/Workspace;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 10
    .parameter "workspace"
    .parameter "view"
    .parameter "params"

    .prologue
    const/4 v9, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 281
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 40
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/launcher/LegacyLayout;->mWorkspace:Lcom/htc/launcher/Workspace;

    .line 42
    iput-boolean v4, p0, Lcom/htc/launcher/LegacyLayout;->mDrawWithFx:Z

    .line 49
    iput-boolean v5, p0, Lcom/htc/launcher/LegacyLayout;->m_bIsStackView:Z

    .line 263
    const/4 v3, -0x1

    iput v3, p0, Lcom/htc/launcher/LegacyLayout;->mFxScreen:I

    .line 265
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/htc/launcher/LegacyLayout;->mOutlinePaint:Landroid/graphics/Paint;

    .line 266
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/htc/launcher/LegacyLayout;->mFrame:Landroid/graphics/Rect;

    .line 577
    const-wide/16 v6, 0x1

    iput-wide v6, p0, Lcom/htc/launcher/LegacyLayout;->mNeedsDraw:J

    .line 578
    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    iput-object v3, p0, Lcom/htc/launcher/LegacyLayout;->mDirtyRgn:Landroid/graphics/Region;

    .line 767
    iput v5, p0, Lcom/htc/launcher/LegacyLayout;->mCount:I

    .line 886
    new-instance v3, Lcom/htc/launcher/LegacyLayout$3;

    invoke-direct {v3, p0}, Lcom/htc/launcher/LegacyLayout$3;-><init>(Lcom/htc/launcher/LegacyLayout;)V

    iput-object v3, p0, Lcom/htc/launcher/LegacyLayout;->mSetVisibleFalseRunnable:Ljava/lang/Runnable;

    .line 282
    invoke-direct {p0, p2}, Lcom/htc/launcher/LegacyLayout;->getItemInfo(Landroid/view/View;)Lcom/htc/launcher/ItemInfo;

    move-result-object v0

    .line 283
    .local v0, info:Lcom/htc/launcher/ItemInfo;
    if-eqz v0, :cond_0

    .line 284
    const-string v6, "LegacyLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[ROSIE_DEBUG] LegacyLayout. LegacyLayout() - addView("

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v7, v0, Lcom/htc/launcher/ItemInfo;->id:J

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " in "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v7, v0, Lcom/htc/launcher/ItemInfo;->screen:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ") params is null("

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez p3, :cond_1

    move v3, v4

    :goto_0
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ") - enter"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/htc/launcher/LegacyLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 287
    invoke-virtual {p0, p3}, Lcom/htc/launcher/LegacyLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 288
    iput-object p1, p0, Lcom/htc/launcher/LegacyLayout;->mWorkspace:Lcom/htc/launcher/Workspace;

    .line 290
    const-string v3, "LegacyLayout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "set tag:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/launcher/LegacyLayout;->setTag(Ljava/lang/Object;)V

    .line 292
    const-string v3, "LegacyLayout"

    const-string v6, "[ROSIE_DEBUG] LegacyLayout. LegacyLayout() - addView() - exit"

    invoke-static {v3, v6}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-direct {p0}, Lcom/htc/launcher/LegacyLayout;->isFolder()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 295
    invoke-direct {p0, v9, v9}, Lcom/htc/launcher/LegacyLayout;->ensureFx(II)V

    .line 320
    :goto_1
    return-void

    :cond_1
    move v3, v5

    .line 284
    goto :goto_0

    .line 296
    :cond_2
    invoke-static {p2, v5}, Lcom/htc/launcher/LegacyLayout;->isIncludeStackView(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 297
    iput-boolean v4, p0, Lcom/htc/launcher/LegacyLayout;->m_bIsStackView:Z

    .line 299
    invoke-static {}, Lcom/htc/launcher/LauncherModel;->getWorkspaceLayoutCellCountX()I

    move-result v1

    .line 300
    .local v1, nMaxCellX:I
    invoke-static {}, Lcom/htc/launcher/LauncherModel;->getWorkspaceLayoutCellCountY()I

    move-result v2

    .line 302
    .local v2, nMaxCellY:I
    iget v3, v0, Lcom/htc/launcher/ItemInfo;->spanX:I

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/htc/launcher/LegacyLayout;->m_nTargetX:I

    .line 303
    iget v3, v0, Lcom/htc/launcher/ItemInfo;->spanY:I

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/htc/launcher/LegacyLayout;->m_nTargetY:I

    .line 305
    iget v3, p0, Lcom/htc/launcher/LegacyLayout;->m_nTargetX:I

    if-le v3, v1, :cond_3

    .line 306
    iput v1, p0, Lcom/htc/launcher/LegacyLayout;->m_nTargetX:I

    .line 307
    :cond_3
    iget v3, p0, Lcom/htc/launcher/LegacyLayout;->m_nTargetY:I

    if-le v3, v2, :cond_4

    .line 308
    iput v2, p0, Lcom/htc/launcher/LegacyLayout;->m_nTargetY:I

    .line 311
    :cond_4
    iget v3, v0, Lcom/htc/launcher/ItemInfo;->spanX:I

    iput v3, p0, Lcom/htc/launcher/LegacyLayout;->m_nOriginX:I

    .line 312
    iget v3, v0, Lcom/htc/launcher/ItemInfo;->spanY:I

    iput v3, p0, Lcom/htc/launcher/LegacyLayout;->m_nOriginY:I

    .line 314
    const-string v3, "LegacyLayout"

    const-string v6, "[ROSIE_DEBUG] LegacyLayout ori x: %d, ori y: %d, target x: %d, targetY: %d, MAX x: %d, MAX y: %d"

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    iget v8, v0, Lcom/htc/launcher/ItemInfo;->spanX:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    iget v5, v0, Lcom/htc/launcher/ItemInfo;->spanY:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v4

    const/4 v4, 0x2

    iget v5, p0, Lcom/htc/launcher/LegacyLayout;->m_nTargetX:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v4

    const/4 v4, 0x3

    iget v5, p0, Lcom/htc/launcher/LegacyLayout;->m_nTargetY:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v9

    const/4 v4, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v4

    invoke-static {v3, v6, v7}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 316
    iget v3, p0, Lcom/htc/launcher/LegacyLayout;->m_nTargetX:I

    iget v4, p0, Lcom/htc/launcher/LegacyLayout;->m_nTargetY:I

    invoke-direct {p0, v3, v4}, Lcom/htc/launcher/LegacyLayout;->ensureFx(II)V

    goto :goto_1

    .line 318
    .end local v1           #nMaxCellX:I
    .end local v2           #nMaxCellY:I
    :cond_5
    iget v3, v0, Lcom/htc/launcher/ItemInfo;->spanX:I

    iget v4, v0, Lcom/htc/launcher/ItemInfo;->spanY:I

    invoke-direct {p0, v3, v4}, Lcom/htc/launcher/LegacyLayout;->ensureFx(II)V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/htc/launcher/LegacyLayout;)Lcom/htc/launcher/LegacyLayout$FxSceneControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/htc/launcher/LegacyLayout;->mFxSceneControl:Lcom/htc/launcher/LegacyLayout$FxSceneControl;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/launcher/LegacyLayout;)Lcom/htc/launcher/Workspace;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/htc/launcher/LegacyLayout;->mWorkspace:Lcom/htc/launcher/Workspace;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/launcher/LegacyLayout;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/htc/launcher/LegacyLayout;->isPortrait()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/htc/launcher/LegacyLayout;->sH:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500()V
    .locals 0

    .prologue
    .line 36
    invoke-static {}, Lcom/htc/launcher/LegacyLayout;->flushPendingDraw()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/launcher/LegacyLayout;Landroid/view/View;)Lcom/htc/launcher/ItemInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/htc/launcher/LegacyLayout;->getItemInfo(Landroid/view/View;)Lcom/htc/launcher/ItemInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/launcher/LegacyLayout;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/htc/launcher/LegacyLayout;->isFolder()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/htc/launcher/LegacyLayout;I)Lcom/htc/android/rosie/home/fxcontrol/FxScreen;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/htc/launcher/LegacyLayout;->getFxScreen(I)Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$802(Lcom/htc/launcher/LegacyLayout;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput p1, p0, Lcom/htc/launcher/LegacyLayout;->mFxScreen:I

    return p1
.end method

.method static synthetic access$900(Lcom/htc/launcher/LegacyLayout;)Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/htc/launcher/LegacyLayout;->getFxWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    move-result-object v0

    return-object v0
.end method

.method private detachInner(Lcom/htc/launcher/ItemInfo;)V
    .locals 6
    .parameter "itemInfo"

    .prologue
    .line 496
    instance-of v2, p1, Lcom/htc/launcher/FolderInfo;

    if-eqz v2, :cond_4

    .line 497
    iget v2, p1, Lcom/htc/launcher/ItemInfo;->screen:I

    invoke-direct {p0, v2}, Lcom/htc/launcher/LegacyLayout;->getFxScreen(I)Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    move-result-object v0

    .line 499
    .local v0, fxScreen:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;
    iget-wide v2, p1, Lcom/htc/launcher/ItemInfo;->container:J

    const-wide/16 v4, -0x65

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p1, Lcom/htc/launcher/ItemInfo;->container:J

    const-wide/16 v4, -0x3e5

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 501
    :cond_0
    iget-object v2, p0, Lcom/htc/launcher/LegacyLayout;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v2}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/htc/launcher/LegacyLayout;->getFxScreen(I)Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    move-result-object v0

    .line 504
    :cond_1
    if-eqz v0, :cond_2

    .line 505
    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->removeFolder()Z

    .line 509
    :cond_2
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isSupportLandscape()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 510
    iget v2, p1, Lcom/htc/launcher/ItemInfo;->screen:I

    invoke-direct {p0, v2}, Lcom/htc/launcher/LegacyLayout;->getAnotherFxScreen(I)Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    move-result-object v0

    .line 511
    if-eqz v0, :cond_3

    .line 512
    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->removeFolder()Z

    .line 524
    .end local v0           #fxScreen:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;
    :cond_3
    :goto_0
    return-void

    .line 519
    :cond_4
    :try_start_0
    invoke-direct {p0}, Lcom/htc/launcher/LegacyLayout;->getFxWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    move-result-object v2

    iget v3, p1, Lcom/htc/launcher/ItemInfo;->screen:I

    iget-wide v4, p1, Lcom/htc/launcher/ItemInfo;->id:J

    long-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->removeItemFromScreen(II)Z
    :try_end_0
    .catch Lcom/htc/android/rosie/home/fxcontrol/FxScreen$ItemNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 520
    :catch_0
    move-exception v1

    .line 521
    .local v1, infe:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$ItemNotFoundException;
    const-string v2, "LegacyLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ROSIE_DEBUG] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$ItemNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/launcher/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private drawBorder(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    const/high16 v4, 0x41a0

    .line 769
    invoke-virtual {p0}, Lcom/htc/launcher/LegacyLayout;->getTheView()Landroid/view/View;

    move-result-object v0

    .line 770
    .local v0, v:Landroid/view/View;
    if-nez v0, :cond_0

    .line 785
    :goto_0
    return-void

    .line 773
    :cond_0
    iget-object v1, p0, Lcom/htc/launcher/LegacyLayout;->mOutlinePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x4040

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 774
    iget-object v1, p0, Lcom/htc/launcher/LegacyLayout;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 775
    iget-object v1, p0, Lcom/htc/launcher/LegacyLayout;->mOutlinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 776
    iget v1, p0, Lcom/htc/launcher/LegacyLayout;->mCount:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    .line 777
    iget-object v1, p0, Lcom/htc/launcher/LegacyLayout;->mOutlinePaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 780
    :goto_1
    iget-object v1, p0, Lcom/htc/launcher/LegacyLayout;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 781
    iget-object v1, p0, Lcom/htc/launcher/LegacyLayout;->mFrame:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/htc/launcher/LegacyLayout;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 782
    iget-object v1, p0, Lcom/htc/launcher/LegacyLayout;->mOutlinePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x4000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 783
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/htc/launcher/LegacyLayout;->mCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x4120

    iget-object v3, p0, Lcom/htc/launcher/LegacyLayout;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v4, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 784
    iget v1, p0, Lcom/htc/launcher/LegacyLayout;->mCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/launcher/LegacyLayout;->mCount:I

    goto :goto_0

    .line 779
    :cond_1
    iget-object v1, p0, Lcom/htc/launcher/LegacyLayout;->mOutlinePaint:Landroid/graphics/Paint;

    const/16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1
.end method

.method private ensureFx(II)V
    .locals 7
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 369
    iget-object v0, p0, Lcom/htc/launcher/LegacyLayout;->mFxSceneControl:Lcom/htc/launcher/LegacyLayout$FxSceneControl;

    if-nez v0, :cond_0

    .line 370
    new-instance v0, Lcom/htc/launcher/LegacyLayout$FxSceneControl;

    iget-object v2, p0, Lcom/htc/launcher/LegacyLayout;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    const/4 v6, 0x0

    move-object v1, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/htc/launcher/LegacyLayout$FxSceneControl;-><init>(Lcom/htc/launcher/LegacyLayout;Lcom/htc/launcher/Workspace;IIILcom/htc/launcher/LegacyLayout$1;)V

    iput-object v0, p0, Lcom/htc/launcher/LegacyLayout;->mFxSceneControl:Lcom/htc/launcher/LegacyLayout$FxSceneControl;

    .line 372
    :cond_0
    return-void
.end method

.method private static flushPendingDraw()V
    .locals 5

    .prologue
    .line 634
    sget v2, Lcom/htc/launcher/LegacyLayout;->sFlushCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/htc/launcher/LegacyLayout;->sFlushCount:I

    .line 635
    const-string v2, "LegacyLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ROSIE_DEBUG] pending#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/htc/launcher/LegacyLayout;->sFlushCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    sget-object v2, Lcom/htc/launcher/LegacyLayout;->sPendingViews:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/LegacyLayout;

    .line 637
    .local v1, v:Lcom/htc/launcher/LegacyLayout;
    const-string v2, "LegacyLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ROSIE_DEBUG] pending view:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    invoke-virtual {v1}, Lcom/htc/launcher/LegacyLayout;->invalidate()V

    goto :goto_0

    .line 640
    .end local v1           #v:Lcom/htc/launcher/LegacyLayout;
    :cond_0
    sget-object v2, Lcom/htc/launcher/LegacyLayout;->sPendingViews:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 641
    return-void
.end method

.method private fxAttach(ILandroid/view/View;IIIII)V
    .locals 7
    .parameter "screen"
    .parameter "view"
    .parameter "id"
    .parameter "cellX"
    .parameter "cellY"
    .parameter "spanX"
    .parameter "spanY"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 377
    const-string v5, "LegacyLayout"

    const-string v6, "[ROSIE_DEBUG] LegacyLayout. fxAttach() - begin"

    invoke-static {v5, v6}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    invoke-direct {p0, p1}, Lcom/htc/launcher/LegacyLayout;->getFxScreen(I)Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    move-result-object v1

    .line 380
    .local v1, fxScreen:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;
    if-nez v1, :cond_0

    .line 381
    const-string v5, "LegacyLayout"

    const-string v6, "[ROSIE_DEBUG] LegacyLayout. fxAttach() - fxScreen = null"

    invoke-static {v5, v6}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    :goto_0
    return-void

    .line 385
    :cond_0
    invoke-virtual {p0}, Lcom/htc/launcher/LegacyLayout;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/launcher/ItemInfo;

    .line 386
    .local v2, info:Lcom/htc/launcher/ItemInfo;
    invoke-direct {p0}, Lcom/htc/launcher/LegacyLayout;->isFolder()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 387
    const/4 p4, 0x0

    .line 388
    const/4 p5, 0x0

    .line 389
    const/4 p6, 0x4

    .line 390
    const/4 p7, 0x4

    .line 394
    :cond_1
    invoke-direct {p0, p6, p7}, Lcom/htc/launcher/LegacyLayout;->ensureFx(II)V

    .line 396
    new-instance v3, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;

    invoke-direct {v3, p4, p5, p6, p7}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;-><init>(IIII)V

    .line 397
    .local v3, layout:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;
    invoke-virtual {p0}, Lcom/htc/launcher/LegacyLayout;->getFxScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v4

    .line 398
    .local v4, scene:Lcom/htc/fusion/fx/FxScene;
    instance-of v5, p2, Lcom/htc/launcher/Folder;

    if-eqz v5, :cond_3

    .line 399
    int-to-long v5, p3

    invoke-virtual {v1, v5, v6, v4}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->setFolder(JLcom/htc/fusion/fx/FxScene;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 400
    iput p1, p0, Lcom/htc/launcher/LegacyLayout;->mFxScreen:I

    .line 407
    :cond_2
    :goto_1
    const-string v5, "LegacyLayout"

    const-string v6, "[ROSIE_DEBUG] LegacyLayout. fxAttach() - exit"

    invoke-static {v5, v6}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 402
    :cond_3
    invoke-virtual {p0}, Lcom/htc/launcher/LegacyLayout;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/launcher/ItemInfo;

    invoke-static {v4, p0, v5}, Lcom/htc/launcher/FxItem;->create(Lcom/htc/fusion/fx/FxScene;Landroid/view/View;Lcom/htc/launcher/ItemInfo;)Lcom/htc/launcher/FxItem;

    move-result-object v0

    .line 403
    .local v0, fxItem:Lcom/htc/launcher/FxItem;
    int-to-long v5, p3

    invoke-virtual {v1, v5, v6, v0, v3}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->addItem(JLcom/htc/launcher/FxItem;Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 404
    iput p1, p0, Lcom/htc/launcher/LegacyLayout;->mFxScreen:I

    goto :goto_1
.end method

.method private getAnotherFxScreen(I)Lcom/htc/android/rosie/home/fxcontrol/FxScreen;
    .locals 1
    .parameter "screen"

    .prologue
    .line 549
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isSupportLandscape()Z

    move-result v0

    if-nez v0, :cond_0

    .line 550
    const/4 v0, 0x0

    .line 553
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/htc/launcher/LegacyLayout;->getFxWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getAnotherWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getScreen(I)Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    move-result-object v0

    goto :goto_0
.end method

.method private getBuffer()Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 365
    iget-object v0, p0, Lcom/htc/launcher/LegacyLayout;->mFxSceneControl:Lcom/htc/launcher/LegacyLayout$FxSceneControl;

    iget-object v1, p0, Lcom/htc/launcher/LegacyLayout;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v1}, Lcom/htc/launcher/Workspace;->isPortrait()Z

    move-result v1

    #calls: Lcom/htc/launcher/LegacyLayout$FxSceneControl;->getBuffer(Z)Ljava/util/concurrent/Future;
    invoke-static {v0, v1}, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->access$1300(Lcom/htc/launcher/LegacyLayout$FxSceneControl;Z)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method private getFxScreen(I)Lcom/htc/android/rosie/home/fxcontrol/FxScreen;
    .locals 1
    .parameter "screen"

    .prologue
    .line 545
    invoke-direct {p0}, Lcom/htc/launcher/LegacyLayout;->getFxWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getCurrentWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->getScreen(I)Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    move-result-object v0

    return-object v0
.end method

.method private getFxWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 531
    invoke-direct {p0}, Lcom/htc/launcher/LegacyLayout;->getWorkspace()Lcom/htc/launcher/Workspace;

    move-result-object v1

    if-nez v1, :cond_0

    .line 532
    const-string v1, "LegacyLayout"

    const-string v2, "[ROSIE_DEBUG] LegacyLayout. LegacyLayout.getFxWorkspace() mWorkspace.getLauncher() mWorkspace = null"

    invoke-static {v1, v2}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    :goto_0
    return-object v0

    .line 536
    :cond_0
    iget-object v1, p0, Lcom/htc/launcher/LegacyLayout;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v1}, Lcom/htc/launcher/Workspace;->getLauncher()Lcom/htc/launcher/Launcher;

    move-result-object v1

    if-nez v1, :cond_1

    .line 537
    const-string v1, "LegacyLayout"

    const-string v2, "[ROSIE_DEBUG] LegacyLayout. LegacyLayout.getFxWorkspace() mWorkspace.getLauncher() = null"

    invoke-static {v1, v2}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 541
    :cond_1
    iget-object v0, p0, Lcom/htc/launcher/LegacyLayout;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v0}, Lcom/htc/launcher/Workspace;->getLauncher()Lcom/htc/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->getFxWorkspace()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    move-result-object v0

    goto :goto_0
.end method

.method private getItemInfo(Landroid/view/View;)Lcom/htc/launcher/ItemInfo;
    .locals 3
    .parameter "view"

    .prologue
    const/4 v1, 0x0

    .line 800
    if-nez p1, :cond_0

    move-object v0, v1

    .line 808
    :goto_0
    return-object v0

    .line 802
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 803
    .local v0, tag:Ljava/lang/Object;
    if-nez v0, :cond_1

    move-object v0, v1

    .line 804
    goto :goto_0

    .line 805
    :cond_1
    instance-of v2, v0, Lcom/htc/launcher/ItemInfo;

    if-eqz v2, :cond_2

    .line 806
    check-cast v0, Lcom/htc/launcher/ItemInfo;

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 808
    goto :goto_0
.end method

.method private getItemInfoId(Landroid/view/View;)I
    .locals 3
    .parameter "view"

    .prologue
    const/4 v1, -0x1

    .line 788
    if-nez p1, :cond_1

    .line 796
    :cond_0
    :goto_0
    return v1

    .line 790
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 791
    .local v0, tag:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 793
    instance-of v2, v0, Lcom/htc/launcher/ItemInfo;

    if-eqz v2, :cond_0

    .line 794
    check-cast v0, Lcom/htc/launcher/ItemInfo;

    .end local v0           #tag:Ljava/lang/Object;
    iget-wide v1, v0, Lcom/htc/launcher/ItemInfo;->id:J

    long-to-int v1, v1

    goto :goto_0
.end method

.method private getM10ByWH(IIZ)Lcom/htc/fusion/fx/FxSceneLoader;
    .locals 6
    .parameter "w"
    .parameter "h"
    .parameter "portrait"

    .prologue
    const/4 v3, 0x0

    .line 558
    invoke-direct {p0}, Lcom/htc/launcher/LegacyLayout;->getWorkspace()Lcom/htc/launcher/Workspace;

    move-result-object v2

    .line 559
    .local v2, workspace:Lcom/htc/launcher/Workspace;
    if-nez v2, :cond_0

    .line 560
    const-string v4, "LegacyLayout"

    const-string v5, "[ROSIE_DEBUG] LegacyLayout. LegacyLayout.getM10ByWH() mWorkspace = null"

    invoke-static {v4, v5}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    :goto_0
    return-object v3

    .line 564
    :cond_0
    invoke-virtual {v2}, Lcom/htc/launcher/Workspace;->getLauncher()Lcom/htc/launcher/Launcher;

    move-result-object v4

    if-nez v4, :cond_1

    .line 565
    const-string v4, "LegacyLayout"

    const-string v5, "[ROSIE_DEBUG] LegacyLayout. LegacyLayout.getM10ByWH() getLauncher() = null"

    invoke-static {v4, v5}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 569
    :cond_1
    invoke-virtual {v2}, Lcom/htc/launcher/Workspace;->getLauncher()Lcom/htc/launcher/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060013

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 571
    .local v0, m10s:[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_2

    const-string v3, "Port/scenes/"

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p1, -0x1

    mul-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, p2, -0x1

    add-int/2addr v4, v5

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 572
    .local v1, path:Ljava/lang/String;
    const-string v3, "LegacyLayout"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ROSIE_DEBUG] LegacyLayout. getM10ByWH("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") path("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    invoke-static {v1}, Lcom/htc/fusion/fx/FxSceneLoader;->create(Ljava/lang/String;)Lcom/htc/fusion/fx/FxSceneLoader;

    move-result-object v3

    goto :goto_0

    .line 571
    .end local v1           #path:Ljava/lang/String;
    :cond_2
    const-string v3, "Land/scenes/"

    goto :goto_1
.end method

.method private getWorkspace()Lcom/htc/launcher/Workspace;
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/htc/launcher/LegacyLayout;->mWorkspace:Lcom/htc/launcher/Workspace;

    return-object v0
.end method

.method private isFolder()Z
    .locals 2

    .prologue
    .line 882
    invoke-virtual {p0}, Lcom/htc/launcher/LegacyLayout;->getTheView()Landroid/view/View;

    move-result-object v0

    .line 883
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/launcher/Folder;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static isIncludeStackView(Landroid/view/View;I)Z
    .locals 6
    .parameter "view"
    .parameter "id"

    .prologue
    const/4 v5, 0x1

    .line 332
    const/4 v0, 0x0

    .line 333
    .local v0, bRet:Z
    invoke-static {p0}, Lcom/htc/launcher/LegacyLayout;->isViewGroup(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 334
    invoke-static {p0}, Lcom/htc/launcher/LegacyLayout;->isStackView(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    .line 353
    :goto_0
    return v4

    :cond_0
    move-object v4, p0

    .line 338
    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 339
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_3

    move-object v4, p0

    .line 340
    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 341
    .local v1, child:Landroid/view/View;
    invoke-static {v1}, Lcom/htc/launcher/LegacyLayout;->isViewGroup(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 342
    invoke-static {v1}, Lcom/htc/launcher/LegacyLayout;->isStackView(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v5

    .line 343
    goto :goto_0

    .line 344
    :cond_1
    add-int/lit8 p1, p1, 0x1

    invoke-static {v1, p1}, Lcom/htc/launcher/LegacyLayout;->isIncludeStackView(Landroid/view/View;I)Z

    move-result v0

    .line 339
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v1           #child:Landroid/view/View;
    .end local v2           #count:I
    .end local v3           #i:I
    :cond_3
    move v4, v0

    .line 353
    goto :goto_0
.end method

.method private isPortrait()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 913
    iget-object v1, p0, Lcom/htc/launcher/LegacyLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isStackView(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 323
    instance-of v0, p0, Landroid/widget/StackView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isViewGroup(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 327
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private schedulePendingDraw()V
    .locals 4

    .prologue
    const/high16 v3, 0x1000

    .line 626
    sget-object v0, Lcom/htc/launcher/LegacyLayout;->sPendingViews:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 628
    sget-object v0, Lcom/htc/launcher/LegacyLayout;->sH:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 629
    sget-object v0, Lcom/htc/launcher/LegacyLayout;->sH:Landroid/os/Handler;

    const-wide/16 v1, 0xf

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 630
    :cond_0
    return-void
.end method


# virtual methods
.method changeView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 864
    invoke-virtual {p0}, Lcom/htc/launcher/LegacyLayout;->removeTheView()V

    .line 865
    invoke-virtual {p0, p1}, Lcom/htc/launcher/LegacyLayout;->addView(Landroid/view/View;)V

    .line 866
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/htc/launcher/LegacyLayout;->mNeedsDraw:J

    .line 867
    return-void
.end method

.method protected detachAllViewsFromParent()V
    .locals 2

    .prologue
    .line 412
    const-string v0, "LegacyLayout"

    const-string v1, "[ROSIE_DEBUG] detachAllViewsFromParent()"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    invoke-super {p0}, Landroid/widget/FrameLayout;->detachAllViewsFromParent()V

    .line 414
    return-void
.end method

.method protected detachViewFromParent(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 418
    const-string v0, "LegacyLayout"

    const-string v1, "[ROSIE_DEBUG] detachViewFromParent()"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->detachViewFromParent(I)V

    .line 420
    return-void
.end method

.method protected detachViewFromParent(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 424
    const-string v0, "LegacyLayout"

    const-string v1, "[ROSIE_DEBUG] detachViewFromParent()"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->detachViewFromParent(Landroid/view/View;)V

    .line 426
    return-void
.end method

.method protected detachViewsFromParent(II)V
    .locals 2
    .parameter "start"
    .parameter "count"

    .prologue
    .line 430
    const-string v0, "LegacyLayout"

    const-string v1, "[ROSIE_DEBUG] detachViewsFromParent()"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->detachViewsFromParent(II)V

    .line 432
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 22
    .parameter "canvas"

    .prologue
    .line 646
    invoke-virtual/range {p0 .. p0}, Lcom/htc/launcher/LegacyLayout;->getTheView()Landroid/view/View;

    move-result-object v16

    .line 649
    .local v16, v:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/LegacyLayout;->mFxSceneControl:Lcom/htc/launcher/LegacyLayout$FxSceneControl;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    if-nez v16, :cond_1

    .line 765
    :cond_0
    :goto_0
    return-void

    .line 653
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/launcher/LegacyLayout;->mDrawWithFx:Z

    move/from16 v17, v0

    if-nez v17, :cond_2

    .line 654
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 660
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/launcher/LegacyLayout;->mPressed:Z

    move/from16 v17, v0

    if-nez v17, :cond_3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/launcher/LegacyLayout;->mNeedsDraw:J

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x0

    cmp-long v17, v17, v19

    if-gtz v17, :cond_3

    .line 661
    const-string v17, "LegacyLayout"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " ignore dispatchDraw mNeedDraw:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/launcher/LegacyLayout;->mNeedsDraw:J

    move-wide/from16 v19, v0

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 665
    :cond_3
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/launcher/LegacyLayout;->mPressed:Z

    .line 667
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->isPressed()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 668
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/launcher/LegacyLayout;->mPressed:Z

    .line 671
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/htc/launcher/LegacyLayout;->getItemInfoId(Landroid/view/View;)I

    move-result v7

    .line 673
    .local v7, id:I
    invoke-direct/range {p0 .. p0}, Lcom/htc/launcher/LegacyLayout;->getBuffer()Ljava/util/concurrent/Future;

    move-result-object v4

    .line 674
    .local v4, buffer:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Landroid/graphics/Bitmap;>;"
    if-nez v4, :cond_5

    .line 675
    const-string v17, "LegacyLayout"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[ROSIE_DEBUG] LegacyLayout. dispatchDraw("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ") - backBuffer() Bitmap = null"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/launcher/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    invoke-direct/range {p0 .. p0}, Lcom/htc/launcher/LegacyLayout;->schedulePendingDraw()V

    goto/16 :goto_0

    .line 687
    :cond_5
    const/4 v3, 0x0

    .line 689
    .local v3, b:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-interface {v4}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 690
    const-wide/16 v17, 0x1f4

    sget-object v19, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, v17

    move-object/from16 v2, v19

    invoke-interface {v4, v0, v1, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v3, v0
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_3

    .line 705
    :cond_6
    :goto_1
    if-nez v3, :cond_7

    .line 706
    const-string v17, "LegacyLayout"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[ROSIE_DEBUG] LegacyLayout. dispatchDraw("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ") - bitmap = null. Try again! Handler="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Lcom/htc/launcher/LegacyLayout;->sH:Landroid/os/Handler;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/launcher/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    invoke-direct/range {p0 .. p0}, Lcom/htc/launcher/LegacyLayout;->schedulePendingDraw()V

    goto/16 :goto_0

    .line 691
    :catch_0
    move-exception v6

    .line 692
    .local v6, e:Ljava/util/concurrent/TimeoutException;
    const-string v17, "LegacyLayout"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[ROSIE_DEBUG] LegacyLayout. dispatchDraw("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ") - BackBuffer.get() Bitmap error("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v6}, Ljava/util/concurrent/TimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/launcher/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 694
    .end local v6           #e:Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v6

    .line 695
    .local v6, e:Ljava/lang/ClassCastException;
    const-string v17, "LegacyLayout"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[ROSIE_DEBUG] LegacyLayout. dispatchDraw("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ") - "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v6}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/launcher/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    const/4 v3, 0x0

    .line 703
    goto/16 :goto_1

    .line 697
    .end local v6           #e:Ljava/lang/ClassCastException;
    :catch_2
    move-exception v6

    .line 699
    .local v6, e:Ljava/lang/InterruptedException;
    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1

    .line 700
    .end local v6           #e:Ljava/lang/InterruptedException;
    :catch_3
    move-exception v6

    .line 702
    .local v6, e:Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v6}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto/16 :goto_1

    .line 715
    .end local v6           #e:Ljava/util/concurrent/ExecutionException;
    :cond_7
    const/4 v5, 0x0

    .line 717
    .local v5, c:Landroid/graphics/Canvas;
    :try_start_1
    new-instance v5, Landroid/graphics/Canvas;

    .end local v5           #c:Landroid/graphics/Canvas;
    invoke-direct {v5, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4

    .line 723
    .restart local v5       #c:Landroid/graphics/Canvas;
    const/16 v17, 0x0

    sget-object v18, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 726
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/launcher/LegacyLayout;->m_bIsStackView:Z

    move/from16 v17, v0

    if-eqz v17, :cond_8

    .line 727
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    .line 728
    .local v13, nSceneWidth:I
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    .line 729
    .local v12, nSceneHeight:I
    const-string v17, "LegacyLayout"

    const-string v18, "[ROSIE_DEBUG] LegacyLayout mode10 w: %d, h: %d, vW: %d, vW: %d"

    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/LegacyLayout;->m_nStactViewWidth:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/LegacyLayout;->m_nStactViewHeight:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v17 .. v19}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 733
    invoke-static {}, Lcom/htc/launcher/LauncherModel;->getCellCountX()I

    move-result v8

    .line 734
    .local v8, nCellCountX:I
    invoke-static {}, Lcom/htc/launcher/LauncherModel;->getCellCountY()I

    move-result v9

    .line 736
    .local v9, nCellCountY:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/LegacyLayout;->m_nTargetX:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/LegacyLayout;->m_nOriginX:I

    move/from16 v18, v0

    sub-int v10, v17, v18

    .line 737
    .local v10, nExtendCellX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/LegacyLayout;->m_nTargetY:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/LegacyLayout;->m_nOriginY:I

    move/from16 v18, v0

    sub-int v11, v17, v18

    .line 739
    .local v11, nExtendCellY:I
    const/4 v14, 0x0

    .local v14, nShiftX:I
    const/4 v15, 0x0

    .line 741
    .local v15, nShiftY:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/LegacyLayout;->m_nStactViewWidth:I

    move/from16 v17, v0

    sub-int v17, v13, v17

    sub-int v18, v8, v10

    div-int v14, v17, v18

    .line 742
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/LegacyLayout;->m_nStactViewHeight:I

    move/from16 v17, v0

    sub-int v17, v12, v17

    sub-int v18, v9, v11

    div-int v15, v17, v18

    .line 744
    const-string v17, "LegacyLayout"

    const-string v18, "[ROSIE_DEBUG] LegacyLayout shift x: %d, shiftY: %d"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v17 .. v19}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 747
    int-to-float v0, v14

    move/from16 v17, v0

    int-to-float v0, v15

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 750
    .end local v8           #nCellCountX:I
    .end local v9           #nCellCountY:I
    .end local v10           #nExtendCellX:I
    .end local v11           #nExtendCellY:I
    .end local v12           #nSceneHeight:I
    .end local v13           #nSceneWidth:I
    .end local v14           #nShiftX:I
    .end local v15           #nShiftY:I
    :cond_8
    move-object/from16 v0, p0

    invoke-super {v0, v5}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 754
    invoke-static {v5}, Lcom/htc/fusion/fx/controls/FxStreamingTexture;->flushCanvas(Landroid/graphics/Canvas;)Z

    .line 755
    const/4 v5, 0x0

    .line 757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/LegacyLayout;->mFxSceneControl:Lcom/htc/launcher/LegacyLayout$FxSceneControl;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #calls: Lcom/htc/launcher/LegacyLayout$FxSceneControl;->swap(Ljava/util/concurrent/Future;)V
    invoke-static {v0, v4}, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->access$1600(Lcom/htc/launcher/LegacyLayout$FxSceneControl;Ljava/util/concurrent/Future;)V

    .line 763
    const-string v17, "LegacyLayout"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[ROSIE_DEBUG] LegacyLayout. dispatchDraw("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ") - done"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/launcher/LegacyLayout;->mNeedsDraw:J

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x1

    sub-long v17, v17, v19

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/launcher/LegacyLayout;->mNeedsDraw:J

    goto/16 :goto_0

    .line 718
    .end local v5           #c:Landroid/graphics/Canvas;
    :catch_4
    move-exception v6

    .line 719
    .local v6, e:Ljava/lang/RuntimeException;
    invoke-virtual {v6}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method protected fxDetach()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 476
    invoke-virtual {p0}, Lcom/htc/launcher/LegacyLayout;->getTheView()Landroid/view/View;

    move-result-object v2

    .line 477
    .local v2, v:Landroid/view/View;
    if-nez v2, :cond_0

    .line 493
    :goto_0
    return-void

    .line 479
    :cond_0
    invoke-direct {p0, v2}, Lcom/htc/launcher/LegacyLayout;->getItemInfoId(Landroid/view/View;)I

    move-result v0

    .line 480
    .local v0, id:I
    const-string v3, "LegacyLayout"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ROSIE_DEBUG] LegacyLayout. fxDetach("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") - enter"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    sget-object v3, Lcom/htc/launcher/LegacyLayout;->sPendingViews:Ljava/util/Set;

    invoke-interface {v3, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 483
    iget v3, p0, Lcom/htc/launcher/LegacyLayout;->mFxScreen:I

    if-eq v3, v6, :cond_2

    .line 484
    invoke-direct {p0, v2}, Lcom/htc/launcher/LegacyLayout;->getItemInfo(Landroid/view/View;)Lcom/htc/launcher/ItemInfo;

    move-result-object v1

    .line 485
    .local v1, itemInfo:Lcom/htc/launcher/ItemInfo;
    if-eqz v1, :cond_1

    .line 486
    invoke-direct {p0, v1}, Lcom/htc/launcher/LegacyLayout;->detachInner(Lcom/htc/launcher/ItemInfo;)V

    .line 488
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/launcher/LegacyLayout;->mFxSceneControl:Lcom/htc/launcher/LegacyLayout$FxSceneControl;

    .line 489
    iput v6, p0, Lcom/htc/launcher/LegacyLayout;->mFxScreen:I

    .line 491
    .end local v1           #itemInfo:Lcom/htc/launcher/ItemInfo;
    :cond_2
    invoke-virtual {p0}, Lcom/htc/launcher/LegacyLayout;->removeTheView()V

    .line 492
    const-string v3, "LegacyLayout"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ROSIE_DEBUG] LegacyLayout. fxDetach("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") - exit"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getFxScene()Lcom/htc/fusion/fx/FxScene;
    .locals 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/htc/launcher/LegacyLayout;->mFxSceneControl:Lcom/htc/launcher/LegacyLayout$FxSceneControl;

    if-nez v0, :cond_0

    .line 359
    const/4 v0, 0x0

    .line 361
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/LegacyLayout;->mFxSceneControl:Lcom/htc/launcher/LegacyLayout$FxSceneControl;

    iget-object v1, p0, Lcom/htc/launcher/LegacyLayout;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v1}, Lcom/htc/launcher/Workspace;->isPortrait()Z

    move-result v1

    #calls: Lcom/htc/launcher/LegacyLayout$FxSceneControl;->getScene(Z)Lcom/htc/fusion/fx/FxScene;
    invoke-static {v0, v1}, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->access$1200(Lcom/htc/launcher/LegacyLayout$FxSceneControl;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    goto :goto_0
.end method

.method getTheView()Landroid/view/View;
    .locals 1

    .prologue
    .line 870
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/launcher/LegacyLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public invalidate()V
    .locals 4

    .prologue
    .line 590
    invoke-super {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 591
    iget-wide v0, p0, Lcom/htc/launcher/LegacyLayout;->mNeedsDraw:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/htc/launcher/LegacyLayout;->mNeedsDraw:J

    .line 592
    return-void
.end method

.method public invalidate(IIII)V
    .locals 4
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 596
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->invalidate(IIII)V

    .line 597
    iget-wide v0, p0, Lcom/htc/launcher/LegacyLayout;->mNeedsDraw:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/htc/launcher/LegacyLayout;->mNeedsDraw:J

    .line 598
    return-void
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .locals 4
    .parameter "dirty"

    .prologue
    .line 602
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->invalidate(Landroid/graphics/Rect;)V

    .line 603
    iget-wide v0, p0, Lcom/htc/launcher/LegacyLayout;->mNeedsDraw:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/htc/launcher/LegacyLayout;->mNeedsDraw:J

    .line 604
    return-void
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 5
    .parameter "location"
    .parameter "dirty"

    .prologue
    .line 582
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v0

    .line 583
    .local v0, vp:Landroid/view/ViewParent;
    iget-wide v1, p0, Lcom/htc/launcher/LegacyLayout;->mNeedsDraw:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/htc/launcher/LegacyLayout;->mNeedsDraw:J

    .line 584
    iget-object v1, p0, Lcom/htc/launcher/LegacyLayout;->mDirtyRgn:Landroid/graphics/Region;

    invoke-virtual {v1, p2}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    .line 585
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 858
    const-string v0, "LegacyLayout"

    const-string v1, "[ROSIE_DEBUG] LegacyLayout. onDraw()"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 860
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 8
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 813
    invoke-virtual {p0}, Lcom/htc/launcher/LegacyLayout;->getTheView()Landroid/view/View;

    move-result-object v3

    .line 815
    .local v3, v:Landroid/view/View;
    :try_start_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 817
    iget-object v4, p0, Lcom/htc/launcher/LegacyLayout;->mFxSceneControl:Lcom/htc/launcher/LegacyLayout$FxSceneControl;

    if-eqz v4, :cond_0

    if-nez v3, :cond_1

    .line 853
    :cond_0
    :goto_0
    return-void

    .line 821
    :cond_1
    invoke-direct {p0, v3}, Lcom/htc/launcher/LegacyLayout;->getItemInfoId(Landroid/view/View;)I

    move-result v1

    .line 822
    .local v1, id:I
    invoke-direct {p0, v3}, Lcom/htc/launcher/LegacyLayout;->getItemInfo(Landroid/view/View;)Lcom/htc/launcher/ItemInfo;

    move-result-object v2

    .line 823
    .local v2, itemInfo:Lcom/htc/launcher/ItemInfo;
    if-eqz v3, :cond_2

    .line 824
    const-string v4, "LegacyLayout"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ROSIE_DEBUG] LegacyLayout. onLayout("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") View("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    :goto_1
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iput v4, p0, Lcom/htc/launcher/LegacyLayout;->m_nStactViewWidth:I

    .line 831
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iput v4, p0, Lcom/htc/launcher/LegacyLayout;->m_nStactViewHeight:I

    .line 833
    if-nez v2, :cond_3

    .line 834
    const-string v4, "LegacyLayout"

    const-string v5, "[ROSIE_DEBUG] LegacyLayout. onLayout() ItemInfo = null - exit"

    invoke-static {v4, v5}, Lcom/htc/launcher/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 848
    .end local v1           #id:I
    .end local v2           #itemInfo:Lcom/htc/launcher/ItemInfo;
    :catch_0
    move-exception v0

    .line 849
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v4, "LegacyLayout"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ROSIE_DEBUG] LegancyLayout layout fail. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/launcher/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto/16 :goto_0

    .line 826
    .end local v0           #ex:Ljava/lang/RuntimeException;
    .restart local v1       #id:I
    .restart local v2       #itemInfo:Lcom/htc/launcher/ItemInfo;
    :cond_2
    :try_start_1
    const-string v4, "LegacyLayout"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ROSIE_DEBUG] LegacyLayout. onLayout("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") View = null!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 837
    :cond_3
    const-string v4, "LegacyLayout"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ROSIE_DEBUG] LegacyLayout. onLayout("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") ItemType:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/htc/launcher/ItemInfo;->itemType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    iget-object v4, p0, Lcom/htc/launcher/LegacyLayout;->mFxSceneControl:Lcom/htc/launcher/LegacyLayout$FxSceneControl;

    #calls: Lcom/htc/launcher/LegacyLayout$FxSceneControl;->attachToScreen()Z
    invoke-static {v4}, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->access$1700(Lcom/htc/launcher/LegacyLayout$FxSceneControl;)Z

    .line 846
    iget-wide v4, p0, Lcom/htc/launcher/LegacyLayout;->mNeedsDraw:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/htc/launcher/LegacyLayout;->mNeedsDraw:J

    .line 847
    iget-object v4, p0, Lcom/htc/launcher/LegacyLayout;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v4}, Lcom/htc/launcher/Workspace;->invalidate()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 607
    invoke-virtual {p0}, Lcom/htc/launcher/LegacyLayout;->getTheView()Landroid/view/View;

    move-result-object v0

    .line 608
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 609
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 610
    :cond_0
    return-void
.end method

.method public removeAllViews()V
    .locals 0

    .prologue
    .line 446
    invoke-super {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 447
    return-void
.end method

.method public removeAllViewsInLayout()V
    .locals 0

    .prologue
    .line 451
    invoke-super {p0}, Landroid/widget/FrameLayout;->removeAllViewsInLayout()V

    .line 452
    return-void
.end method

.method protected removeDetachedView(Landroid/view/View;Z)V
    .locals 0
    .parameter "child"
    .parameter "animate"

    .prologue
    .line 456
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->removeDetachedView(Landroid/view/View;Z)V

    .line 457
    return-void
.end method

.method removeTheView()V
    .locals 2

    .prologue
    .line 874
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/launcher/LegacyLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 875
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 876
    new-instance v1, Lcom/htc/launcher/LegacyLayout$2;

    invoke-direct {v1, p0, v0}, Lcom/htc/launcher/LegacyLayout$2;-><init>(Lcom/htc/launcher/LegacyLayout;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 879
    :cond_0
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 436
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 437
    return-void
.end method

.method public removeViewAt(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 441
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    .line 442
    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 461
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->removeViewInLayout(Landroid/view/View;)V

    .line 462
    return-void
.end method

.method public removeViews(II)V
    .locals 0
    .parameter "start"
    .parameter "count"

    .prologue
    .line 466
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->removeViews(II)V

    .line 467
    return-void
.end method

.method public removeViewsInLayout(II)V
    .locals 0
    .parameter "start"
    .parameter "count"

    .prologue
    .line 471
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->removeViewsInLayout(II)V

    .line 472
    return-void
.end method

.method public setDrawWithFusion(ZLjava/lang/Runnable;)V
    .locals 3
    .parameter "visible"
    .parameter "runnable"

    .prologue
    .line 893
    const-string v0, "LegacyLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDrawWithFusion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    iput-boolean p1, p0, Lcom/htc/launcher/LegacyLayout;->mDrawWithFx:Z

    .line 895
    iget-boolean v0, p0, Lcom/htc/launcher/LegacyLayout;->mDrawWithFx:Z

    if-eqz v0, :cond_0

    .line 896
    iget-object v0, p0, Lcom/htc/launcher/LegacyLayout;->mSetVisibleFalseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/htc/launcher/LegacyLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 897
    iget-object v0, p0, Lcom/htc/launcher/LegacyLayout;->mFxSceneControl:Lcom/htc/launcher/LegacyLayout$FxSceneControl;

    const/4 v1, 0x1

    new-instance v2, Lcom/htc/launcher/LegacyLayout$4;

    invoke-direct {v2, p0, p2}, Lcom/htc/launcher/LegacyLayout$4;-><init>(Lcom/htc/launcher/LegacyLayout;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->setVisible(ZLjava/lang/Runnable;)V

    .line 910
    :goto_0
    return-void

    .line 907
    :cond_0
    invoke-virtual {p0}, Lcom/htc/launcher/LegacyLayout;->invalidate()V

    .line 908
    iget-object v0, p0, Lcom/htc/launcher/LegacyLayout;->mSetVisibleFalseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/htc/launcher/LegacyLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
