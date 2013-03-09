.class public Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;
.super Ljava/lang/Object;
.source "AndIdleMenu.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/lockscreen/fusion/widget/AndIdleMenu$1;,
        Lcom/htc/lockscreen/fusion/widget/AndIdleMenu$ListMenuPresenter;,
        Lcom/htc/lockscreen/fusion/widget/AndIdleMenu$PanelMenuPresenterCallback;,
        Lcom/htc/lockscreen/fusion/widget/AndIdleMenu$MenuCallback;,
        Lcom/htc/lockscreen/fusion/widget/AndIdleMenu$IdleViewHost;
    }
.end annotation


# static fields
.field private static final LOG_PREFIX:Ljava/lang/String; = "AndIdleMenu"


# instance fields
.field private background:I

.field private fullBackground:I

.field isCompact:Z

.field listPresenterTheme:I

.field private mCallback:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;

.field protected mContext:Landroid/content/Context;

.field private mHostView:Landroid/widget/LinearLayout;

.field private mIconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

.field private mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field mMenuPadding:I

.field private mPanelMenuPresenterCallback:Lcom/htc/lockscreen/fusion/widget/AndIdleMenu$PanelMenuPresenterCallback;

.field private mView:Landroid/view/View;

.field private mWindowAnimations:I

.field private menubackground:I

.field mlistMode:Z

.field private windowAnimations:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->mlistMode:Z

    iput-boolean v1, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->isCompact:Z

    iput v1, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->mMenuPadding:I

    iput-object p1, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {p0}, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->initializePanelMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->openPanel()V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->mlistMode:Z

    iput-boolean v1, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->isCompact:Z

    iput v1, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->mMenuPadding:I

    iput-object p1, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iput p3, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->mMenuPadding:I

    invoke-virtual {p0}, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->initializePanelMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->openPanel()V

    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->mHostView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0

    iput-object p1, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->mHostView:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;)Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->mCallback:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;)Lcom/android/internal/view/menu/MenuBuilder;
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method private openPanel()V
    .locals 14

    iget-object v1, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v8

    iget-object v1, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->mHostView:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->initializePanelContent()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_1
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    iget v9, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->fullBackground:I

    :goto_1
    iget-object v1, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->mHostView:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->mHostView:Landroid/widget/LinearLayout;

    const v2, 0x108068a

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->mHostView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->mView:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    :cond_2
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x67

    const v6, 0x21000

    const/4 v7, -0x2

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    const-string v1, "com.htc.idlescreen.andidlemenu"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v1, 0x51

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v1, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->mWindowAnimations:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/4 v10, 0x1

    const/4 v11, 0x1

    if-eqz v10, :cond_3

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v1, 0x3f19999a

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    :cond_3
    if-eqz v11, :cond_4

    iget-object v1, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->mHostView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    const/4 v12, 0x0

    iget-object v1, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->mHostView:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    iget-boolean v1, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->mlistMode:Z

    if-eqz v1, :cond_6

    const v1, 0x108068a

    invoke-virtual {v12, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_2
    iget-object v1, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->mHostView:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->mHostView:Landroid/widget/LinearLayout;

    const/16 v2, 0xc

    const/4 v3, 0x0

    const/16 v4, 0xc

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_4
    iget-object v1, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->mHostView:Landroid/widget/LinearLayout;

    invoke-interface {v13, v1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_5
    iget v9, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->background:I

    goto/16 :goto_1

    :cond_6
    const/4 v1, -0x1

    invoke-virtual {v12, v1}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v12, v1, v2}, Landroid/view/View;->setRoundedCornerEnabled(ZZ)V

    goto :goto_2
.end method


# virtual methods
.method public cleanup()V
    .locals 3

    iget-object v1, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->mHostView:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->mHostView:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->clearMenuPresenters()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->mHostView:Landroid/widget/LinearLayout;

    :cond_0
    return-void
.end method

.method public clearMenuPresenters()V
    .locals 2

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->mIconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->mIconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    return-void
.end method

.method getIconMenuView(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuPresenter$Callback;)Lcom/android/internal/view/menu/MenuView;
    .locals 3

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->mIconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/internal/view/menu/IconMenuPresenter;

    invoke-direct {v1, p1}, Lcom/android/internal/view/menu/IconMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->mIconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    iget-object v1, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->mIconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    invoke-virtual {v1, p3}, Lcom/android/internal/view/menu/IconMenuPresenter;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    iget-object v1, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->mIconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    const v2, 0x1020228

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/IconMenuPresenter;->setId(I)V

    iget-object v1, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->mIconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    invoke-virtual {p2, v1}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    :cond_1
    iget-object v1, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->mIconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    iget-object v2, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->mHostView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/IconMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v0

    goto :goto_0
.end method

.method getListMenuView(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuPresenter$Callback;)Landroid/view/View;
    .locals 10

    iget-object v7, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v3, 0x0

    const v7, 0x108022f

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v4, 0x0

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->mContext:Landroid/content/Context;

    invoke-direct {v2, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/internal/view/menu/MenuBuilder;->size()I

    move-result v4

    :cond_0
    if-nez p2, :cond_1

    const/4 v6, 0x0

    :goto_0
    return-object v6

    :cond_1
    iget-boolean v7, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->isCompact:Z

    if-nez v7, :cond_2

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->getIconMenuView(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuPresenter$Callback;)Lcom/android/internal/view/menu/MenuView;

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_3

    new-instance v3, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu$ListMenuPresenter;

    iget-object v7, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->mContext:Landroid/content/Context;

    const v8, 0x1090060

    iget v9, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->listPresenterTheme:I

    invoke-direct {v3, p0, v7, v8, v9}, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu$ListMenuPresenter;-><init>(Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;Landroid/content/Context;II)V

    invoke-virtual {p2, v1}, Lcom/android/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    invoke-virtual {v3, v7}, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu$ListMenuPresenter;->setId(I)V

    invoke-virtual {v3, v1}, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu$ListMenuPresenter;->setPosition(I)V

    invoke-virtual {p2, v1}, Lcom/android/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v3, v7}, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu$ListMenuPresenter;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu$ListMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v2, v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v7, 0x2

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setShowDividers(I)V

    move-object v6, v2

    goto :goto_0
.end method

.method public getSenseVersion()F
    .locals 5

    const/high16 v1, 0x4000

    :try_start_0
    sget-object v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v2, "AndIdleMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSenseVersion error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/lockscreen/fusion/IdleLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected initializePanelContent()Z
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->mPanelMenuPresenterCallback:Lcom/htc/lockscreen/fusion/widget/AndIdleMenu$PanelMenuPresenterCallback;

    if-nez v1, :cond_0

    new-instance v1, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu$PanelMenuPresenterCallback;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu$PanelMenuPresenterCallback;-><init>(Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;Lcom/htc/lockscreen/fusion/widget/AndIdleMenu$1;)V

    iput-object v1, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->mPanelMenuPresenterCallback:Lcom/htc/lockscreen/fusion/widget/AndIdleMenu$PanelMenuPresenterCallback;

    :cond_0
    iget-object v1, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->setStyle(Landroid/content/Context;)V

    if-nez v0, :cond_1

    move v1, v2

    :goto_0
    return v1

    :cond_1
    const-string v1, "AndIdleMenu"

    const-string v3, "initializePanelContent"

    invoke-static {v1, v3}, Lcom/htc/lockscreen/fusion/IdleLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->mlistMode:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->mPanelMenuPresenterCallback:Lcom/htc/lockscreen/fusion/widget/AndIdleMenu$PanelMenuPresenterCallback;

    invoke-virtual {p0, v1, v0, v3}, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->getListMenuView(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuPresenter$Callback;)Landroid/view/View;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->mView:Landroid/view/View;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->mPanelMenuPresenterCallback:Lcom/htc/lockscreen/fusion/widget/AndIdleMenu$PanelMenuPresenterCallback;

    invoke-virtual {p0, v1, v0, v3}, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->getIconMenuView(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuPresenter$Callback;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method protected initializePanelMenu()Z
    .locals 2

    new-instance v0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu$IdleViewHost;

    iget-object v1, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu$IdleViewHost;-><init>(Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->mHostView:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AndIdleMenu"

    const-string v1, "mMenu has VisibleItems"

    invoke-static {v0, v1}, Lcom/htc/lockscreen/fusion/IdleLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 0

    return-void
.end method

.method public onCloseSubMenu(Lcom/android/internal/view/menu/SubMenuBuilder;)V
    .locals 0

    return-void
.end method

.method public onMenuItemSelected(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->mCallback:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;

    invoke-virtual {v0, p2}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->onMenuItemSelected(Landroid/view/MenuItem;)Z

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->mCallback:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;

    invoke-virtual {v0}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->closeOptionsMenu()V

    const/4 v0, 0x0

    return v0
.end method

.method public onMenuModeChange(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 0

    return-void
.end method

.method public onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 7

    iget-object v6, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->mHostView:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_0

    const/4 v6, 0x2

    new-array v1, v6, [I

    iget-object v6, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->mHostView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    const/4 v6, 0x0

    aget v6, v1, v6

    int-to-float v6, v6

    sub-float v4, v2, v6

    const/4 v6, 0x1

    aget v6, v1, v6

    int-to-float v6, v6

    sub-float v5, v3, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1, v4, v5}, Landroid/view/MotionEvent;->setLocation(FF)V

    iget-object v6, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->mHostView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    return-void
.end method

.method public setCallback(Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->mCallback:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;

    return-void
.end method

.method setStyle(Landroid/content/Context;)V
    .locals 4

    const/4 v2, 0x0

    sget-object v1, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->background:I

    const/16 v1, 0x2f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->fullBackground:I

    const/16 v1, 0x5d

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->windowAnimations:I

    const/16 v1, 0xe0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->isCompact:Z

    const/16 v1, 0xe2

    const v2, 0x10302f5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->listPresenterTheme:I

    const-string v1, "AndIdleMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Compact is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->isCompact:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " listPresenterTheme is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->listPresenterTheme:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/lockscreen/fusion/IdleLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->mHostView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->mHostView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method
