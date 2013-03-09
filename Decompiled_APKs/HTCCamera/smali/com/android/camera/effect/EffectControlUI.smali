.class public final Lcom/android/camera/effect/EffectControlUI;
.super Lcom/android/camera/component/UIComponent;
.source "EffectControlUI.java"


# instance fields
.field private m_ControlBar:Landroid/widget/SeekBar;

.field private m_ControlBarProgress:I

.field private m_CurrentEffect:Lcom/android/camera/effect/EffectBase;

.field private final m_DeactivateEventHandler:Lcom/android/camera/IEventHandler;

.field private m_DecreaseButtonContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private final m_EffectAppliedEventHandler:Lcom/android/camera/IEventHandler;

.field private final m_EffectCanceledEventHandler:Lcom/android/camera/IEventHandler;

.field private m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;

.field private final m_HideControlsEventHandlers:Lcom/android/camera/IEventHandler;

.field private m_IncreaseButtonContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private m_InitEffectFromControlBar:Z

.field private m_IsControlsNeeded:Z

.field private m_IsToastShown:Z

.field private final m_NewIntentEventHandler:Lcom/android/camera/IEventHandler;

.field private final m_PausingEventHandler:Lcom/android/camera/IEventHandler;

.field private m_PreviousEffect:Lcom/android/camera/effect/EffectBase;

.field private final m_QueryControlVisibleEventHandler:Lcom/android/camera/IEventHandler;

.field private final m_QueryEffectCenterEventHandler:Lcom/android/camera/IEventHandler;

.field private final m_ShowControlsEventHandlers:Lcom/android/camera/IEventHandler;

.field private m_ShowingInitValues:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "Effect Control UI"

    const v1, 0x7f080049

    invoke-direct {p0, v0, v2, p1, v1}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    new-instance v0, Lcom/android/camera/effect/EffectControlUI$1;

    invoke-direct {v0, p0}, Lcom/android/camera/effect/EffectControlUI$1;-><init>(Lcom/android/camera/effect/EffectControlUI;)V

    iput-object v0, p0, Lcom/android/camera/effect/EffectControlUI;->m_DeactivateEventHandler:Lcom/android/camera/IEventHandler;

    new-instance v0, Lcom/android/camera/effect/EffectControlUI$2;

    invoke-direct {v0, p0}, Lcom/android/camera/effect/EffectControlUI$2;-><init>(Lcom/android/camera/effect/EffectControlUI;)V

    iput-object v0, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectAppliedEventHandler:Lcom/android/camera/IEventHandler;

    new-instance v0, Lcom/android/camera/effect/EffectControlUI$3;

    invoke-direct {v0, p0}, Lcom/android/camera/effect/EffectControlUI$3;-><init>(Lcom/android/camera/effect/EffectControlUI;)V

    iput-object v0, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCanceledEventHandler:Lcom/android/camera/IEventHandler;

    new-instance v0, Lcom/android/camera/effect/EffectControlUI$4;

    invoke-direct {v0, p0}, Lcom/android/camera/effect/EffectControlUI$4;-><init>(Lcom/android/camera/effect/EffectControlUI;)V

    iput-object v0, p0, Lcom/android/camera/effect/EffectControlUI;->m_HideControlsEventHandlers:Lcom/android/camera/IEventHandler;

    new-instance v0, Lcom/android/camera/effect/EffectControlUI$5;

    invoke-direct {v0, p0}, Lcom/android/camera/effect/EffectControlUI$5;-><init>(Lcom/android/camera/effect/EffectControlUI;)V

    iput-object v0, p0, Lcom/android/camera/effect/EffectControlUI;->m_NewIntentEventHandler:Lcom/android/camera/IEventHandler;

    new-instance v0, Lcom/android/camera/effect/EffectControlUI$6;

    invoke-direct {v0, p0}, Lcom/android/camera/effect/EffectControlUI$6;-><init>(Lcom/android/camera/effect/EffectControlUI;)V

    iput-object v0, p0, Lcom/android/camera/effect/EffectControlUI;->m_QueryControlVisibleEventHandler:Lcom/android/camera/IEventHandler;

    new-instance v0, Lcom/android/camera/effect/EffectControlUI$7;

    invoke-direct {v0, p0}, Lcom/android/camera/effect/EffectControlUI$7;-><init>(Lcom/android/camera/effect/EffectControlUI;)V

    iput-object v0, p0, Lcom/android/camera/effect/EffectControlUI;->m_QueryEffectCenterEventHandler:Lcom/android/camera/IEventHandler;

    new-instance v0, Lcom/android/camera/effect/EffectControlUI$8;

    invoke-direct {v0, p0}, Lcom/android/camera/effect/EffectControlUI$8;-><init>(Lcom/android/camera/effect/EffectControlUI;)V

    iput-object v0, p0, Lcom/android/camera/effect/EffectControlUI;->m_PausingEventHandler:Lcom/android/camera/IEventHandler;

    new-instance v0, Lcom/android/camera/effect/EffectControlUI$9;

    invoke-direct {v0, p0}, Lcom/android/camera/effect/EffectControlUI$9;-><init>(Lcom/android/camera/effect/EffectControlUI;)V

    iput-object v0, p0, Lcom/android/camera/effect/EffectControlUI;->m_ShowControlsEventHandlers:Lcom/android/camera/IEventHandler;

    invoke-virtual {p0, v2}, Lcom/android/camera/effect/EffectControlUI;->autoInflateView(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/effect/EffectControlUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/effect/EffectControlUI;->m_IsToastShown:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/camera/effect/EffectControlUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/effect/EffectControlUI;->m_IsToastShown:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/effect/EffectControlUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/effect/EffectControlUI;->m_ShowingInitValues:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/camera/effect/EffectControlUI;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/camera/effect/EffectControlUI;->calcControlBarProgress(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/android/camera/effect/EffectControlUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/effect/EffectControlUI;->m_ShowingInitValues:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/camera/effect/EffectControlUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/effect/EffectControlUI;->hideControls()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/camera/effect/EffectControlUI;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/effect/EffectControlUI;->m_ControlBarProgress:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/camera/effect/EffectControlUI;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/effect/EffectControlUI;->onControlBarProgressChanged(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/effect/EffectControlUI;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/camera/effect/EffectControlUI;->calcEffectRadius(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/camera/effect/EffectControlUI;)Lcom/android/camera/rotate/RotateRelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/EffectControlUI;->m_IncreaseButtonContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/camera/effect/EffectControlUI;)Lcom/android/camera/rotate/RotateRelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/EffectControlUI;->m_DecreaseButtonContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/effect/EffectControlUI;)Lcom/android/camera/effect/EffectBase;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/EffectControlUI;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/camera/effect/EffectControlUI;Lcom/android/camera/effect/EffectBase;)Lcom/android/camera/effect/EffectBase;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/effect/EffectControlUI;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/camera/effect/EffectControlUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/effect/EffectControlUI;->m_InitEffectFromControlBar:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/camera/effect/EffectControlUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/effect/EffectControlUI;->m_InitEffectFromControlBar:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/camera/effect/EffectControlUI;)Lcom/android/camera/effect/EffectBase;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/EffectControlUI;->m_PreviousEffect:Lcom/android/camera/effect/EffectBase;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/camera/effect/EffectControlUI;Lcom/android/camera/effect/EffectBase;)Lcom/android/camera/effect/EffectBase;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/effect/EffectControlUI;->m_PreviousEffect:Lcom/android/camera/effect/EffectBase;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/camera/effect/EffectControlUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/effect/EffectControlUI;->m_IsControlsNeeded:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/camera/effect/EffectControlUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/effect/EffectControlUI;->m_IsControlsNeeded:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/camera/effect/EffectControlUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/effect/EffectControlUI;->showControls()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/effect/EffectControlUI;)Lcom/android/camera/widget/EffectControlCircle;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/effect/EffectControlUI;)Landroid/widget/SeekBar;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/EffectControlUI;->m_ControlBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/effect/EffectControlUI;)Landroid/graphics/Point;
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/effect/EffectControlUI;->getCenterPointOnScreenForDriver()Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method private calcControlBarProgress(I)I
    .locals 8

    const/16 v1, 0x64

    add-int/lit8 v2, p1, -0x28

    int-to-double v2, v2

    sget v4, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    int-to-double v4, v4

    const-wide v6, 0x400199999999999aL

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x4044

    sub-double/2addr v4, v6

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4059

    mul-double/2addr v2, v4

    double-to-int v0, v2

    if-lt v0, v1, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-gtz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private calcEffectRadius(I)I
    .locals 6

    const-wide/high16 v4, 0x4044

    sget v0, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    int-to-double v0, v0

    const-wide v2, 0x400199999999999aL

    div-double/2addr v0, v2

    sub-double/2addr v0, v4

    const-wide/high16 v2, 0x4059

    div-double/2addr v0, v2

    int-to-double v2, p1

    mul-double/2addr v0, v2

    add-double/2addr v0, v4

    double-to-int v0, v0

    return v0
.end method

.method private getCenterPointOnScreenForDriver()Landroid/graphics/Point;
    .locals 3

    new-instance v0, Landroid/graphics/Point;

    sget v1, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    sget v2, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method private hideControls()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/effect/EffectControlUI;->m_ControlBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectControlUI;->getBaseLayout()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private initializeUI()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectControlUI;->getBaseLayout()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f080095

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/widget/EffectControlCircle;

    iput-object v3, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;

    const v3, 0x7f080098

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lcom/android/camera/effect/EffectControlUI;->m_ControlBar:Landroid/widget/SeekBar;

    const v3, 0x7f08009a

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v3, p0, Lcom/android/camera/effect/EffectControlUI;->m_IncreaseButtonContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const v3, 0x7f080099

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v3, p0, Lcom/android/camera/effect/EffectControlUI;->m_DecreaseButtonContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    iget-object v3, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;

    invoke-virtual {v3}, Lcom/android/camera/widget/EffectControlCircle;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/android/camera/rotate/RotateRelativeLayout;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    iget-object v3, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;

    new-instance v4, Lcom/android/camera/effect/EffectControlUI$11;

    invoke-direct {v4, p0}, Lcom/android/camera/effect/EffectControlUI$11;-><init>(Lcom/android/camera/effect/EffectControlUI;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/widget/EffectControlCircle;->setOnCenterPointChangedListener(Lcom/android/camera/widget/EffectControlCircle$OnCenterPointChangedListener;)V

    iget-object v3, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;

    new-instance v4, Lcom/android/camera/effect/EffectControlUI$12;

    invoke-direct {v4, p0}, Lcom/android/camera/effect/EffectControlUI$12;-><init>(Lcom/android/camera/effect/EffectControlUI;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/widget/EffectControlCircle;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v3, p0, Lcom/android/camera/effect/EffectControlUI;->m_ControlBar:Landroid/widget/SeekBar;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/android/camera/effect/EffectControlUI;->m_ControlBar:Landroid/widget/SeekBar;

    new-instance v4, Lcom/android/camera/effect/EffectControlUI$13;

    invoke-direct {v4, p0}, Lcom/android/camera/effect/EffectControlUI$13;-><init>(Lcom/android/camera/effect/EffectControlUI;)V

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v1

    iget-object v3, p0, Lcom/android/camera/effect/EffectControlUI;->m_IncreaseButtonContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v3, v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    iget-object v3, p0, Lcom/android/camera/effect/EffectControlUI;->m_DecreaseButtonContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v3, v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    const v3, 0x7f080097

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/android/camera/effect/EffectControlUI$14;

    invoke-direct {v3, p0}, Lcom/android/camera/effect/EffectControlUI$14;-><init>(Lcom/android/camera/effect/EffectControlUI;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private onControlBarProgressChanged(I)V
    .locals 2

    iput p1, p0, Lcom/android/camera/effect/EffectControlUI;->m_ControlBarProgress:I

    iget-boolean v1, p0, Lcom/android/camera/effect/EffectControlUI;->m_ShowingInitValues:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/camera/effect/EffectControlUI;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;

    instance-of v1, v1, Lcom/android/camera/effect/DistortionEffect;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/effect/EffectControlUI;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;

    check-cast v1, Lcom/android/camera/effect/DistortionEffect;

    invoke-virtual {v1, p1}, Lcom/android/camera/effect/DistortionEffect;->setDistortion(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/camera/effect/EffectControlUI;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;

    instance-of v1, v1, Lcom/android/camera/effect/VignetteEffect;

    if-eqz v1, :cond_3

    invoke-direct {p0, p1}, Lcom/android/camera/effect/EffectControlUI;->calcEffectRadius(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/effect/EffectControlUI;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;

    check-cast v1, Lcom/android/camera/effect/VignetteEffect;

    invoke-virtual {v1, v0}, Lcom/android/camera/effect/VignetteEffect;->setRadius(I)V

    iget-object v1, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;

    invoke-virtual {v1, v0}, Lcom/android/camera/widget/EffectControlCircle;->setBorderRadius(I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/camera/effect/EffectControlUI;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;

    instance-of v1, v1, Lcom/android/camera/effect/DepthOfFieldEffect;

    if-eqz v1, :cond_4

    invoke-direct {p0, p1}, Lcom/android/camera/effect/EffectControlUI;->calcEffectRadius(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/effect/EffectControlUI;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;

    check-cast v1, Lcom/android/camera/effect/DepthOfFieldEffect;

    invoke-virtual {v1, v0}, Lcom/android/camera/effect/DepthOfFieldEffect;->setRadius(I)V

    iget-object v1, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;

    invoke-virtual {v1, v0}, Lcom/android/camera/widget/EffectControlCircle;->setBorderRadius(I)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/camera/effect/EffectControlUI;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;

    instance-of v1, v1, Lcom/android/camera/effect/DotsEffect;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/effect/EffectControlUI;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;

    check-cast v1, Lcom/android/camera/effect/DotsEffect;

    invoke-virtual {v1, p1}, Lcom/android/camera/effect/DotsEffect;->setDotSize(I)V

    goto :goto_0
.end method

.method private showControls()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/effect/EffectControlUI;->m_IsControlsNeeded:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/EffectControlUI;->m_ControlBar:Landroid/widget/SeekBar;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/effect/EffectControlUI;->initializeUI()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectControlUI;->getBaseLayout()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/effect/EffectControlUI;->m_PreviousEffect:Lcom/android/camera/effect/EffectBase;

    iput-object v0, p0, Lcom/android/camera/effect/EffectControlUI;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;

    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->deinitializeOverride()V

    return-void
.end method

.method protected initializeOverride()V
    .locals 3

    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectControlUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v0

    const-string v1, "Effect.Applied"

    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectAppliedEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v1, "Effect.Canceled"

    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI;->m_EffectCanceledEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v1, "CaptureUI.Closed"

    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI;->m_HideControlsEventHandlers:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v1, "CaptureUI.Open"

    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI;->m_ShowControlsEventHandlers:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v1, "CameraActivity.Deactivate"

    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI;->m_DeactivateEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v1, "Menu.Closed"

    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI;->m_ShowControlsEventHandlers:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v1, "Menu.Opening"

    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI;->m_HideControlsEventHandlers:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v1, "CameraActivity.NewIntent"

    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI;->m_NewIntentEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v1, "CameraActivity.Pausing"

    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI;->m_PausingEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v1, "Query.EffectCenter"

    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI;->m_QueryEffectCenterEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v1, "Query.IsEffectControlVisible"

    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI;->m_QueryControlVisibleEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v1, "CameraActivity.RotateChanged"

    new-instance v2, Lcom/android/camera/effect/EffectControlUI$10;

    invoke-direct {v2, p0}, Lcom/android/camera/effect/EffectControlUI$10;-><init>(Lcom/android/camera/effect/EffectControlUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    return-void
.end method
