.class public Lcom/htc/sunny2/fullfilmview/Animator;
.super Ljava/lang/Object;
.source "Animator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/fullfilmview/Animator$FilmstripPanAction;,
        Lcom/htc/sunny2/fullfilmview/Animator$FilmstripCenterScaleUp;,
        Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;,
        Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;,
        Lcom/htc/sunny2/fullfilmview/Animator$FilmstripFlyingAction;,
        Lcom/htc/sunny2/fullfilmview/Animator$FilmstripAlignAction;
    }
.end annotation


# static fields
.field private static final ANI_DELAY_20:I = 0x14

.field static final ANI_FILM_ALIGN:I = 0x3

.field static final ANI_FILM_ALIGN_TO:I = 0x5

.field static final ANI_FILM_CENTER_SCALE_DOWN:I = 0x7

.field static final ANI_FILM_CENTER_SCALE_UP:I = 0x6

.field static final ANI_FILM_FLYING:I = 0x4

.field static final ANI_FILM_PAN:I = 0x8

.field static final ANI_FILM_TO_FULL:I = 0x1

.field public static final ANI_FPS_15:I = 0xf

.field public static final ANI_FPS_30:I = 0x1e

.field public static final ANI_FPS_60:I = 0x3c

.field public static final ANI_FRAMES_15:I = 0xf

.field public static final ANI_FRAMES_30:I = 0x1e

.field public static final ANI_FRAMES_60:I = 0x3c

.field static final ANI_FULL_TO_FILM:I = 0x2

.field public static final KEY_CHILD_IDX:Ljava/lang/String; = "child_index"

.field public static final KEY_CHILD_OFFSET:Ljava/lang/String; = "child_offset"

.field public static final KEY_DISTANCE:Ljava/lang/String; = "offset_distance"

.field public static final KEY_VELOCITY:Ljava/lang/String; = "last_pan_velocity"

.field private static LOG_TAG:Ljava/lang/String; = null

.field static final RT_ACTION_ANI_FILM_CENTER_SCALE_UP:Ljava/lang/String; = "FilmstripCenterScaleUp"

.field static final RT_ACTION_ANI_FILM_TO_FULL:Ljava/lang/String; = "FilmstripViewAnimateToFullScreenViewAction"

.field static final RT_ACTION_ANI_FULL_TO_FILM:Ljava/lang/String; = "FullScreenViewAnimateToFilmstripViewAction"

.field static final RT_ACTION_FILM_DIS:Ljava/lang/String; = "scrollFilmstripUsingDistance"

.field static final RT_ACTION_FILM_FLYING:Ljava/lang/String; = "scrollFilmstripUsingVelocity"

.field static final RT_ACTION_FILM_PAN:Ljava/lang/String; = "FilmstripPan"


# instance fields
.field private mFilmstripPanAction:Lcom/htc/sunny2/fullfilmview/Animator$FilmstripPanAction;

.field private mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

.field private mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

.field private mFullscreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

.field private mIsAnimating:Z

.field private mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;

.field private mRenderThread:Lcom/htc/sunny2/RenderThread;

.field private mScale:F

.field private mScaleDifference:F

.field private mSpacing:F

.field private mSpacingDifference:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/htc/sunny2/fullfilmview/Animator;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/fullfilmview/Animator;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;Lcom/htc/sunny2/RenderThread;)V
    .locals 3
    .parameter "host"
    .parameter "render"

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/Animator;->mScaleDifference:F

    .line 67
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/Animator;->mSpacing:F

    .line 68
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/Animator;->mSpacingDifference:F

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/Animator;->mIsAnimating:Z

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripPanAction:Lcom/htc/sunny2/fullfilmview/Animator$FilmstripPanAction;

    .line 78
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/Animator;->mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    .line 79
    iput-object p2, p0, Lcom/htc/sunny2/fullfilmview/Animator;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    .line 80
    new-instance v0, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripPanAction;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/Animator;->mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    const-string v2, "FilmstripPan"

    invoke-direct {v0, p0, v1, v2}, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripPanAction;-><init>(Lcom/htc/sunny2/fullfilmview/Animator;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripPanAction:Lcom/htc/sunny2/fullfilmview/Animator$FilmstripPanAction;

    .line 81
    return-void
.end method

.method static AcEaseIn(IFFI)F
    .locals 3
    .parameter "time"
    .parameter "begin"
    .parameter "distance"
    .parameter "duration"

    .prologue
    .line 223
    int-to-float v1, p0

    int-to-float v2, p3

    div-float v0, v1, v2

    .line 225
    .local v0, t:F
    mul-float v1, p2, v0

    mul-float/2addr v1, v0

    add-float/2addr v1, p1

    return v1
.end method

.method static AcEaseInOut(IIII)I
    .locals 5
    .parameter "time"
    .parameter "begin"
    .parameter "distance"
    .parameter "duration"

    .prologue
    const/high16 v4, 0x3f00

    const/high16 v3, 0x4000

    .line 230
    int-to-float v1, p0

    int-to-float v2, p3

    div-float v0, v1, v2

    .line 232
    .local v0, t:F
    cmpg-float v1, v0, v4

    if-gez v1, :cond_0

    .line 234
    mul-float/2addr v0, v3

    .line 236
    div-int/lit8 v1, p2, 0x2

    int-to-float v1, v1

    mul-float/2addr v1, v0

    mul-float/2addr v1, v0

    int-to-float v2, p1

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 242
    :goto_0
    return v1

    .line 240
    :cond_0
    sub-float v1, v0, v4

    mul-float v0, v1, v3

    .line 242
    neg-int v1, p2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    mul-float/2addr v1, v0

    sub-float v2, v0, v3

    mul-float/2addr v1, v2

    int-to-float v2, p1

    add-float/2addr v1, v2

    float-to-int v1, v1

    div-int/lit8 v2, p2, 0x2

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method static AcEaseOut(IFFI)F
    .locals 3
    .parameter "time"
    .parameter "begin"
    .parameter "distance"
    .parameter "duration"

    .prologue
    .line 216
    int-to-float v1, p0

    int-to-float v2, p3

    div-float v0, v1, v2

    .line 218
    .local v0, t:F
    neg-float v1, p2

    mul-float/2addr v1, v0

    const/high16 v2, 0x4000

    sub-float v2, v0, v2

    mul-float/2addr v1, v2

    add-float/2addr v1, p1

    return v1
.end method

.method static AcEaseOutIn(IIII)I
    .locals 5
    .parameter "time"
    .parameter "begin"
    .parameter "distance"
    .parameter "duration"

    .prologue
    const/high16 v4, 0x3f00

    const/high16 v3, 0x4000

    .line 248
    int-to-float v1, p0

    int-to-float v2, p3

    div-float v0, v1, v2

    .line 250
    .local v0, t:F
    cmpg-float v1, v0, v4

    if-gez v1, :cond_0

    .line 252
    mul-float/2addr v0, v3

    .line 254
    neg-int v1, p2

    int-to-float v1, v1

    div-float/2addr v1, v3

    mul-float/2addr v1, v0

    sub-float v2, v0, v3

    mul-float/2addr v1, v2

    int-to-float v2, p1

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 260
    :goto_0
    return v1

    .line 258
    :cond_0
    sub-float v1, v0, v4

    mul-float v0, v1, v3

    .line 260
    int-to-float v1, p2

    div-float/2addr v1, v3

    mul-float/2addr v1, v0

    mul-float/2addr v1, v0

    int-to-float v2, p1

    add-float/2addr v1, v2

    float-to-int v1, v1

    div-int/lit8 v2, p2, 0x2

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FullFilmView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/Animator;->mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/Animator;->mFullscreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/sunny2/fullfilmview/Animator;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/Animator;->mScale:F

    return v0
.end method

.method static synthetic access$402(Lcom/htc/sunny2/fullfilmview/Animator;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/Animator;->mScale:F

    return p1
.end method

.method static synthetic access$500(Lcom/htc/sunny2/fullfilmview/Animator;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/Animator;->mScaleDifference:F

    return v0
.end method

.method static synthetic access$502(Lcom/htc/sunny2/fullfilmview/Animator;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/Animator;->mScaleDifference:F

    return p1
.end method

.method static synthetic access$600(Lcom/htc/sunny2/fullfilmview/Animator;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/Animator;->mSpacing:F

    return v0
.end method

.method static synthetic access$602(Lcom/htc/sunny2/fullfilmview/Animator;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/Animator;->mSpacing:F

    return p1
.end method

.method static synthetic access$700(Lcom/htc/sunny2/fullfilmview/Animator;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/Animator;->mSpacingDifference:F

    return v0
.end method

.method static synthetic access$702(Lcom/htc/sunny2/fullfilmview/Animator;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/Animator;->mSpacingDifference:F

    return p1
.end method

.method static synthetic access$800(Lcom/htc/sunny2/fullfilmview/Animator;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/Animator;->mIsAnimating:Z

    return v0
.end method

.method static synthetic access$802(Lcom/htc/sunny2/fullfilmview/Animator;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/htc/sunny2/fullfilmview/Animator;->mIsAnimating:Z

    return p1
.end method

.method static synthetic access$900(Lcom/htc/sunny2/fullfilmview/Animator;)Lcom/htc/sunny2/RenderThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/Animator;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    return-object v0
.end method

.method private doAlign()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getSelectedItem()Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getSelectedItem()Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getItemCenter()I

    move-result v0

    neg-int v0, v0

    invoke-direct {p0, v0}, Lcom/htc/sunny2/fullfilmview/Animator;->scrollFilmstripUsingDistance(I)V

    .line 191
    :cond_0
    return-void
.end method

.method private scrollFilmstripUsingDistance(I)V
    .locals 4
    .parameter "distance"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->reset()V

    .line 196
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->flingByDistance(I)V

    .line 197
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/Animator;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    new-instance v1, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripAlignAction;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/Animator;->mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    const-string v3, "scrollFilmstripUsingDistance"

    invoke-direct {v1, p0, v2, v3}, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripAlignAction;-><init>(Lcom/htc/sunny2/fullfilmview/Animator;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->pushActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    .line 198
    return-void
.end method


# virtual methods
.method public cancelTransition(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 148
    const/4 v1, 0x0

    .line 150
    .local v1, actionName:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 169
    :pswitch_0
    const/4 v1, 0x0

    .line 173
    :goto_0
    if-eqz v1, :cond_0

    .line 175
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/Animator;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/Animator;->mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2, v3, v1}, Lcom/htc/sunny2/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunny2/RenderThreadAction;

    move-result-object v0

    .line 176
    .local v0, action:Lcom/htc/sunny2/RenderThreadAction;
    if-eqz v0, :cond_0

    .line 178
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/Animator;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v2, v0}, Lcom/htc/sunny2/RenderThread;->removeActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    .line 182
    .end local v0           #action:Lcom/htc/sunny2/RenderThreadAction;
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/Animator;->mIsAnimating:Z

    .line 183
    return-void

    .line 154
    :pswitch_1
    const-string v1, "scrollFilmstripUsingDistance"

    .line 155
    goto :goto_0

    .line 157
    :pswitch_2
    const-string v1, "scrollFilmstripUsingVelocity"

    .line 158
    goto :goto_0

    .line 160
    :pswitch_3
    const-string v1, "FilmstripCenterScaleUp"

    .line 161
    goto :goto_0

    .line 163
    :pswitch_4
    const-string v1, "FilmstripPan"

    .line 164
    goto :goto_0

    .line 166
    :pswitch_5
    const-string v1, "FullScreenViewAnimateToFilmstripViewAction"

    .line 167
    goto :goto_0

    .line 150
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public doTransition(ILandroid/os/Bundle;)V
    .locals 4
    .parameter "id"
    .parameter "extras"

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 96
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/Animator;->mIsAnimating:Z

    .line 97
    packed-switch p1, :pswitch_data_0

    .line 141
    :pswitch_0
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/Animator;->mIsAnimating:Z

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 100
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/Animator;->doAlign()V

    goto :goto_0

    .line 103
    :pswitch_2
    invoke-virtual {p0, v3}, Lcom/htc/sunny2/fullfilmview/Animator;->cancelTransition(I)V

    .line 104
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/Animator;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    new-instance v1, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripFlyingAction;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/Animator;->mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    const-string v3, "scrollFilmstripUsingVelocity"

    invoke-direct {v1, p0, v2, v3}, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripFlyingAction;-><init>(Lcom/htc/sunny2/fullfilmview/Animator;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->pushActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    goto :goto_0

    .line 107
    :pswitch_3
    if-eqz p2, :cond_0

    .line 109
    const-string v0, "offset_distance"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/htc/sunny2/fullfilmview/Animator;->scrollFilmstripUsingDistance(I)V

    goto :goto_0

    .line 112
    :pswitch_4
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    const-string v1, "child_index"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setSelection(I)V

    .line 113
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    const-string v1, "child_index"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setStartAnimationChildIndex(I)V

    .line 114
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/Animator;->mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0, v2, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->switchViewState(IZ)V

    .line 115
    invoke-virtual {p0, v3}, Lcom/htc/sunny2/fullfilmview/Animator;->cancelTransition(I)V

    .line 116
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->reset()V

    .line 117
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    const-string v1, "last_pan_velocity"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->onFling(F)V

    .line 118
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/Animator;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    new-instance v1, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/Animator;->mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    const-string v3, "FullScreenViewAnimateToFilmstripViewAction"

    invoke-direct {v1, p0, v2, v3}, Lcom/htc/sunny2/fullfilmview/Animator$FullScreenViewAnimateToFilmstripViewAction;-><init>(Lcom/htc/sunny2/fullfilmview/Animator;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->pushActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    .line 119
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/Animator;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    new-instance v1, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripFlyingAction;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/Animator;->mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    const-string v3, "scrollFilmstripUsingVelocity"

    invoke-direct {v1, p0, v2, v3}, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripFlyingAction;-><init>(Lcom/htc/sunny2/fullfilmview/Animator;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->pushActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    goto :goto_0

    .line 122
    :pswitch_5
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/Animator;->mFullscreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    if-eqz v0, :cond_0

    .line 124
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/fullfilmview/Animator;->cancelTransition(I)V

    .line 125
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/Animator;->mFullscreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/Animator;->mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->setCurrentItemIndex(I)Z

    .line 126
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/Animator;->mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setStartAnimationChildIndex(I)V

    .line 127
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/Animator;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    new-instance v1, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/Animator;->mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    const-string v3, "FilmstripViewAnimateToFullScreenViewAction"

    invoke-direct {v1, p0, v2, v3}, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripViewAnimateToFullScreenViewAction;-><init>(Lcom/htc/sunny2/fullfilmview/Animator;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->pushActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    goto/16 :goto_0

    .line 132
    :pswitch_6
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/Animator;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    new-instance v1, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripCenterScaleUp;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/Animator;->mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    const-string v3, "FilmstripCenterScaleUp"

    invoke-direct {v1, p0, v2, v3}, Lcom/htc/sunny2/fullfilmview/Animator$FilmstripCenterScaleUp;-><init>(Lcom/htc/sunny2/fullfilmview/Animator;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->pushActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    goto/16 :goto_0

    .line 135
    :pswitch_7
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/Animator;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/Animator;->mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    const-string v2, "FilmstripPan"

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunny2/RenderThreadAction;

    move-result-object v0

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/Animator;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripPanAction:Lcom/htc/sunny2/fullfilmview/Animator$FilmstripPanAction;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->pushActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    goto/16 :goto_0

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public filmstripViewAnimateToFullScreenView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 202
    sget-object v1, Lcom/htc/sunny2/fullfilmview/Animator;->LOG_TAG:Ljava/lang/String;

    const-string v2, "filmstripViewAnimateToFullScreenView"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getSelection()I

    move-result v0

    .line 206
    .local v0, currentItemIndex:I
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/Animator;->mFullscreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v1, v3}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->setVisible(Z)V

    .line 207
    if-ltz v0, :cond_0

    .line 208
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/Animator;->mFullscreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->setCurrentItemIndex(I)Z

    .line 209
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/Animator;->mFullscreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->doCenterAlign()V

    .line 210
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/Animator;->mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->switchViewState(IZ)V

    .line 212
    return-void
.end method

.method public isInTransition()Z
    .locals 1

    .prologue
    .line 648
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/Animator;->mIsAnimating:Z

    return v0
.end method

.method public isInTransitionOf(Ljava/lang/String;)Z
    .locals 2
    .parameter "actionName"

    .prologue
    .line 643
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/Animator;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/Animator;->mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0, v1, p1}, Lcom/htc/sunny2/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunny2/RenderThreadAction;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFilmstripViewScene(Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;)V
    .locals 0
    .parameter "filmstrip"
    .parameter "scroller"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripView:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    .line 91
    iput-object p2, p0, Lcom/htc/sunny2/fullfilmview/Animator;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    .line 92
    return-void
.end method

.method public setFullscreenViewScene(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)V
    .locals 0
    .parameter "fullscreen"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/Animator;->mFullscreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    .line 86
    return-void
.end method
