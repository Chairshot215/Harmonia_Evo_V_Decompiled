.class public Lcom/htc/widget/TaskBar;
.super Landroid/widget/LinearLayout;
.source "TaskBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/ViewSwitcher$ViewFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/TaskBar$OnPanelClickListener;
    }
.end annotation


# static fields
.field public static final CENTER_VIEW:I = 0x1

.field public static final INDICATOR_VIEW:I = 0x3

.field public static final LEFT_VIEW:I = 0x0

.field public static final MODE_2TEXT_CENTER:I = 0x2

.field public static final MODE_CENTER_BUTTON:I = 0x0

.field public static final MODE_NO_CENTER:I = 0x3

.field public static final MODE_NO_CENTER_BUTTON:I = 0x1

.field public static final RIGHT_VIEW:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TaskBar"

.field private static final localLOGV:Z


# instance fields
.field private m2LineText:Landroid/view/View;

.field mArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mArrowIndicator:Landroid/widget/ImageView;

.field private mArrowLeftButton:Landroid/widget/ImageView;

.field private mArrowRightButton:Landroid/widget/ImageView;

.field private mCenterLength:F

.field private mCenterText:Ljava/lang/String;

.field private mCenterTextColor:I

.field private mCenterTextShadeColor:I

.field private mClickListener:Lcom/htc/widget/TaskBar$OnPanelClickListener;

.field private mContext:Landroid/content/Context;

.field private mControlCenterLayout:Landroid/widget/FrameLayout;

.field private mControlPanelCenter:Landroid/view/View;

.field private mControlPanelCenterTextSwitcher:Landroid/widget/TextSwitcher;

.field private mControlPanelLeft:Landroid/widget/ImageView;

.field private mControlPanelRight:Landroid/widget/ImageView;

.field private mCountIndicator:Landroid/widget/TextView;

.field private mCurrentMode:I

.field private mPanelTextSize:F

.field private mTextDown:Landroid/widget/TextView;

.field private mTextUp:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/TaskBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/TaskBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput p2, p0, Lcom/htc/widget/TaskBar;->mCurrentMode:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/widget/TaskBar;->mCurrentMode:I

    iput-object v2, p0, Lcom/htc/widget/TaskBar;->mControlCenterLayout:Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenter:Landroid/view/View;

    iput-object v2, p0, Lcom/htc/widget/TaskBar;->m2LineText:Landroid/view/View;

    iput-object v2, p0, Lcom/htc/widget/TaskBar;->mControlPanelLeft:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/htc/widget/TaskBar;->mControlPanelRight:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenterTextSwitcher:Landroid/widget/TextSwitcher;

    iput-object v2, p0, Lcom/htc/widget/TaskBar;->mCountIndicator:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/htc/widget/TaskBar;->mTextUp:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/htc/widget/TaskBar;->mTextDown:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/htc/widget/TaskBar;->mArrowIndicator:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/htc/widget/TaskBar;->mArrowLeftButton:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/htc/widget/TaskBar;->mArrowRightButton:Landroid/widget/ImageView;

    const/high16 v1, 0x4190

    iput v1, p0, Lcom/htc/widget/TaskBar;->mPanelTextSize:F

    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/widget/TaskBar;->mCenterTextColor:I

    const/high16 v1, -0x100

    iput v1, p0, Lcom/htc/widget/TaskBar;->mCenterTextShadeColor:I

    iput-object v2, p0, Lcom/htc/widget/TaskBar;->mClickListener:Lcom/htc/widget/TaskBar$OnPanelClickListener;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/widget/TaskBar;->mArrayList:Ljava/util/ArrayList;

    const/high16 v1, 0x4348

    iput v1, p0, Lcom/htc/widget/TaskBar;->mCenterLength:F

    iput-object p1, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/htc/widget/TaskBar;->checkSize()V

    :try_start_0
    invoke-direct {p0}, Lcom/htc/widget/TaskBar;->setLayout()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private checkSize()V
    .locals 6

    const/16 v5, 0x140

    const/16 v4, 0xf0

    iget-object v2, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    if-ne v2, v5, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    if-eq v2, v4, :cond_1

    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    if-ne v2, v4, :cond_2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    if-ne v2, v5, :cond_2

    :cond_1
    const/high16 v2, 0x4311

    iput v2, p0, Lcom/htc/widget/TaskBar;->mCenterLength:F

    :cond_2
    return-void
.end method

.method private initView()V
    .locals 13

    const/high16 v12, -0x100

    const/4 v11, 0x0

    const/high16 v10, -0x4080

    const/high16 v9, 0x3f80

    const/16 v8, 0x8

    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    const-string v5, "smile"

    invoke-static {v4, v5}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const/4 v2, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {p0, v3}, Lcom/htc/widget/TaskBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    :cond_0
    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    const-string v5, "common_panel_navbar_hightlight"

    invoke-static {v4, v5}, Lcom/htc/res/HtcResources;->getCommonDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    const v4, 0x2020156

    invoke-virtual {p0, v4}, Lcom/htc/widget/TaskBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextSwitcher;

    iput-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenterTextSwitcher:Landroid/widget/TextSwitcher;

    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenterTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v4, p0}, Landroid/widget/TextSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    const v4, 0x2020150

    invoke-virtual {p0, v4}, Lcom/htc/widget/TaskBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/htc/widget/TaskBar;->mControlCenterLayout:Landroid/widget/FrameLayout;

    const v4, 0x2020151

    invoke-virtual {p0, v4}, Lcom/htc/widget/TaskBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenter:Landroid/view/View;

    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenter:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenter:Landroid/view/View;

    iget-object v5, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    const-string v6, "command_bar_btn"

    invoke-static {v5, v6}, Lcom/htc/res/HtcResources;->getCommonDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenter:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenter:Landroid/view/View;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/View;->setFocusable(Z)V

    const v4, 0x2020152

    invoke-virtual {p0, v4}, Lcom/htc/widget/TaskBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/htc/widget/TaskBar;->mArrowIndicator:Landroid/widget/ImageView;

    const v4, 0x202014e

    invoke-virtual {p0, v4}, Lcom/htc/widget/TaskBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/htc/widget/TaskBar;->mCountIndicator:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mCountIndicator:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mCountIndicator:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    const-string v6, "common_notification_on"

    invoke-static {v5, v6}, Lcom/htc/res/HtcResources;->getCommonDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mCountIndicator:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    const-string v6, "taskbar_count_text_color"

    const/4 v7, -0x1

    invoke-static {v5, v6, v7}, Lcom/htc/res/HtcResources;->getThemeStyleColor(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mCountIndicator:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    const-string v6, "taskbar_count_text_shadow"

    const v7, -0x99999a

    invoke-static {v5, v6, v7}, Lcom/htc/res/HtcResources;->getThemeStyleColor(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v9, v10, v10, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_3
    const v4, 0x202014b

    invoke-virtual {p0, v4}, Lcom/htc/widget/TaskBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelLeft:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelLeft:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelLeft:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    const-string v6, "command_bar_btn"

    invoke-static {v5, v6}, Lcom/htc/res/HtcResources;->getCommonDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelLeft:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelLeft:Landroid/widget/ImageView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setFocusable(Z)V

    const v4, 0x202014f

    invoke-virtual {p0, v4}, Lcom/htc/widget/TaskBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/htc/widget/TaskBar;->mArrowLeftButton:Landroid/widget/ImageView;

    const v4, 0x2020157

    invoke-virtual {p0, v4}, Lcom/htc/widget/TaskBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/htc/widget/TaskBar;->mArrowRightButton:Landroid/widget/ImageView;

    const v4, 0x202014c

    invoke-virtual {p0, v4}, Lcom/htc/widget/TaskBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelRight:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelRight:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelRight:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    const-string v6, "command_bar_btn"

    invoke-static {v5, v6}, Lcom/htc/res/HtcResources;->getCommonDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelRight:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelRight:Landroid/widget/ImageView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setFocusable(Z)V

    const v4, 0x2020153

    invoke-virtual {p0, v4}, Lcom/htc/widget/TaskBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/widget/TaskBar;->m2LineText:Landroid/view/View;

    const v4, 0x2020154

    invoke-virtual {p0, v4}, Lcom/htc/widget/TaskBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/htc/widget/TaskBar;->mTextUp:Landroid/widget/TextView;

    const v4, 0x2020155

    invoke-virtual {p0, v4}, Lcom/htc/widget/TaskBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/htc/widget/TaskBar;->mTextDown:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/htc/widget/TaskBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    const-string v5, "common_main_panel_navbar"

    invoke-static {v4, v5}, Lcom/htc/res/HtcResources;->getCommonDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/htc/widget/TaskBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mTextUp:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    const-string v6, "taskbar_up_text_color"

    const/4 v7, -0x1

    invoke-static {v5, v6, v7}, Lcom/htc/res/HtcResources;->getThemeStyleColor(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mTextUp:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    const-string v6, "taskbar_up_text_shadow"

    invoke-static {v5, v6, v12}, Lcom/htc/res/HtcResources;->getThemeStyleColor(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v9, v10, v10, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mTextDown:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    const-string v6, "taskbar_down_text_color"

    const v7, -0x59595a

    invoke-static {v5, v6, v7}, Lcom/htc/res/HtcResources;->getThemeStyleColor(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mTextDown:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    const-string v6, "taskbar_down_text_shadow"

    invoke-static {v5, v6, v12}, Lcom/htc/res/HtcResources;->getThemeStyleColor(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v9, v10, v10, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    const-string v5, "taskbar_center_text_color"

    const/4 v6, -0x1

    invoke-static {v4, v5, v6}, Lcom/htc/res/HtcResources;->getThemeStyleColor(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/htc/widget/TaskBar;->mCenterTextColor:I

    invoke-virtual {p0, v4}, Lcom/htc/widget/TaskBar;->setCenterColor(I)V

    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    const-string v5, "taskbar_center_text_shadow"

    invoke-static {v4, v5, v12}, Lcom/htc/res/HtcResources;->getThemeStyleColor(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p0, v9, v9, v9, v4}, Lcom/htc/widget/TaskBar;->setCenterShadow(FFFI)V

    :goto_0
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    const/high16 v5, 0x10a

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    const v5, 0x10a0001

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenterTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v4, v0}, Landroid/widget/TextSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenterTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v4, v1}, Landroid/widget/TextSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    iget v4, p0, Lcom/htc/widget/TaskBar;->mCurrentMode:I

    packed-switch v4, :pswitch_data_0

    :goto_1
    return-void

    :cond_6
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x20a0035

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/htc/widget/TaskBar;->setCenterColor(I)V

    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x20a0036

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p0, v9, v9, v9, v4}, Lcom/htc/widget/TaskBar;->setCenterShadow(FFFI)V

    goto :goto_0

    :pswitch_0
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->m2LineText:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mCountIndicator:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenter:Landroid/view/View;

    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenterTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v4, v11}, Landroid/widget/TextSwitcher;->setVisibility(I)V

    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x2050112

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    iput v4, p0, Lcom/htc/widget/TaskBar;->mPanelTextSize:F

    iget v4, p0, Lcom/htc/widget/TaskBar;->mPanelTextSize:F

    invoke-virtual {p0, v4}, Lcom/htc/widget/TaskBar;->setCenterTextsize(F)V

    goto :goto_1

    :pswitch_1
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->m2LineText:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mCountIndicator:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenter:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenterTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v4, v11}, Landroid/widget/TextSwitcher;->setVisibility(I)V

    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x2050113

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    iput v4, p0, Lcom/htc/widget/TaskBar;->mPanelTextSize:F

    iget v4, p0, Lcom/htc/widget/TaskBar;->mPanelTextSize:F

    invoke-virtual {p0, v4}, Lcom/htc/widget/TaskBar;->setCenterTextsize(F)V

    goto :goto_1

    :pswitch_2
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->m2LineText:Landroid/view/View;

    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mCountIndicator:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenter:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenterTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v4, v8}, Landroid/widget/TextSwitcher;->setVisibility(I)V

    goto/16 :goto_1

    :pswitch_3
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->m2LineText:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mCountIndicator:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenter:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenterTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v4, v8}, Landroid/widget/TextSwitcher;->setVisibility(I)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private onShowMessage(Ljava/lang/String;I)Ljava/lang/String;
    .locals 16

    move-object/from16 v10, p1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/TaskBar;->mCenterLength:F

    float-to-int v1, v14

    new-instance v11, Landroid/graphics/Paint;

    const/4 v14, 0x1

    invoke-direct {v11, v14}, Landroid/graphics/Paint;-><init>(I)V

    move/from16 v0, p2

    int-to-float v14, v0

    invoke-virtual {v11, v14}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v12, 0x0

    new-array v13, v9, [F

    const/4 v14, 0x0

    invoke-virtual {v11, v2, v14, v9, v13}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v9, :cond_0

    aget v14, v13, v8

    add-float/2addr v12, v14

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    int-to-float v14, v1

    cmpl-float v14, v12, v14

    if-lez v14, :cond_2

    const/4 v12, 0x0

    const-string v3, "..."

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x0

    new-array v7, v5, [F

    const/4 v14, 0x0

    invoke-virtual {v11, v4, v14, v5, v7}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v5, :cond_1

    aget v14, v7, v8

    add-float/2addr v6, v14

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v9, :cond_2

    aget v14, v13, v8

    add-float/2addr v14, v12

    int-to-float v15, v1

    cmpl-float v14, v14, v15

    if-lez v14, :cond_3

    const/4 v14, 0x0

    invoke-static {v2, v14, v8}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v10

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_2
    return-object v10

    :cond_3
    aget v14, v13, v8

    add-float/2addr v12, v14

    add-int/lit8 v8, v8, 0x1

    goto :goto_2
.end method

.method private setLayout()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/TaskBar;->getChildCount()I

    move-result v8

    if-lez v8, :cond_0

    iget-object v8, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenterTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v8}, Landroid/widget/TextSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v8, p0, Lcom/htc/widget/TaskBar;->mCountIndicator:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v8, p0, Lcom/htc/widget/TaskBar;->mTextUp:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/widget/TaskBar;->mTextDown:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/TaskBar;->removeAllViews()V

    iget-object v8, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v8, 0x20900b8

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_5

    iget-object v8, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x2050075

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v1, v8

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    invoke-direct {v6, v8, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v5, v6}, Lcom/htc/widget/TaskBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/htc/widget/TaskBar;->initView()V

    if-eqz v0, :cond_1

    iget-object v8, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenterTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v8, v0}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    if-eqz v3, :cond_2

    iget-object v8, p0, Lcom/htc/widget/TaskBar;->mCountIndicator:Landroid/widget/TextView;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    if-eqz v7, :cond_3

    iget-object v8, p0, Lcom/htc/widget/TaskBar;->mTextUp:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    if-eqz v2, :cond_4

    iget-object v8, p0, Lcom/htc/widget/TaskBar;->mTextDown:Landroid/widget/TextView;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-void

    :cond_5
    new-instance v8, Ljava/lang/Exception;

    const-string v9, "no theme resource"

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method private setLayout(I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/TaskBar;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    iget-object v6, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenterTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v6}, Landroid/widget/TextSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/widget/TaskBar;->mCountIndicator:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/widget/TaskBar;->mTextUp:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/widget/TaskBar;->mTextDown:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/TaskBar;->removeAllViews()V

    iget-object v6, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v3, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_5

    invoke-virtual {p0, v4}, Lcom/htc/widget/TaskBar;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/htc/widget/TaskBar;->initView()V

    if-eqz v0, :cond_1

    iget-object v6, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenterTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v6, v0}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    if-eqz v2, :cond_2

    iget-object v6, p0, Lcom/htc/widget/TaskBar;->mCountIndicator:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    if-eqz v5, :cond_3

    iget-object v6, p0, Lcom/htc/widget/TaskBar;->mTextUp:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    if-eqz v1, :cond_4

    iget-object v6, p0, Lcom/htc/widget/TaskBar;->mTextDown:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-void

    :cond_5
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "no theme resource"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6
.end method


# virtual methods
.method public getCenterButton()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenter:Landroid/view/View;

    return-object v0
.end method

.method public getCenterFrameLayout()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mControlCenterLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getCenterTextLength()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/TaskBar;->mCenterLength:F

    float-to-int v0, v0

    return v0
.end method

.method public getClickListener()Lcom/htc/widget/TaskBar$OnPanelClickListener;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mClickListener:Lcom/htc/widget/TaskBar$OnPanelClickListener;

    return-object v0
.end method

.method public getCountIndicator()I
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mCountIndicator:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCountIndicatorView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mCountIndicator:Landroid/widget/TextView;

    return-object v0
.end method

.method public getCurrentMode()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/TaskBar;->mCurrentMode:I

    return v0
.end method

.method public getLeftButton()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mControlPanelLeft:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getPanelTextSize()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/TaskBar;->mPanelTextSize:F

    float-to-int v0, v0

    return v0
.end method

.method public getRightButton()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mControlPanelRight:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTwoLineDownTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mTextDown:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTwoLineUpTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mTextUp:Landroid/widget/TextView;

    return-object v0
.end method

.method public init(I)V
    .locals 1

    iput p1, p0, Lcom/htc/widget/TaskBar;->mCurrentMode:I

    :try_start_0
    invoke-direct {p0}, Lcom/htc/widget/TaskBar;->setLayout()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public init(II)V
    .locals 1

    iput p1, p0, Lcom/htc/widget/TaskBar;->mCurrentMode:I

    :try_start_0
    invoke-direct {p0, p2}, Lcom/htc/widget/TaskBar;->setLayout(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public makeView()Landroid/view/View;
    .locals 3

    const/high16 v2, 0x3f80

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget v1, p0, Lcom/htc/widget/TaskBar;->mPanelTextSize:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget v1, p0, Lcom/htc/widget/TaskBar;->mCenterTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    iget v1, p0, Lcom/htc/widget/TaskBar;->mCenterTextShadeColor:I

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    iget-object v1, p0, Lcom/htc/widget/TaskBar;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mClickListener:Lcom/htc/widget/TaskBar$OnPanelClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenter:Landroid/view/View;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mClickListener:Lcom/htc/widget/TaskBar$OnPanelClickListener;

    invoke-interface {v0}, Lcom/htc/widget/TaskBar$OnPanelClickListener;->onCenterClick()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mControlPanelLeft:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mClickListener:Lcom/htc/widget/TaskBar$OnPanelClickListener;

    invoke-interface {v0}, Lcom/htc/widget/TaskBar$OnPanelClickListener;->onLeftClick()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mControlPanelRight:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mClickListener:Lcom/htc/widget/TaskBar$OnPanelClickListener;

    invoke-interface {v0}, Lcom/htc/widget/TaskBar$OnPanelClickListener;->onRightClick()V

    goto :goto_0
.end method

.method public onMeasureTextPixel(Ljava/lang/String;)F
    .locals 7

    new-instance v3, Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-direct {v3, v6}, Landroid/graphics/Paint;-><init>(I)V

    iget v6, p0, Lcom/htc/widget/TaskBar;->mPanelTextSize:F

    float-to-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x0

    new-array v5, v2, [F

    const/4 v6, 0x0

    invoke-virtual {v3, v0, v6, v2, v5}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget v6, v5, v1

    add-float/2addr v4, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v4
.end method

.method public setArrowDrawable(Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mArrowLeftButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mArrowLeftButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mArrowRightButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mArrowRightButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mArrowIndicator:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mArrowIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setArrowIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mArrowIndicator:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mArrowIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setArrowIndicatorVisiable(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mArrowIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mArrowIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setArrowVisiable(ZI)V
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/widget/TaskBar;->mArrowLeftButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/TaskBar;->mArrowLeftButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/htc/widget/TaskBar;->mArrowRightButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/TaskBar;->mArrowRightButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Lcom/htc/widget/TaskBar;->mArrowIndicator:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/TaskBar;->mArrowIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setCenterColor(I)V
    .locals 3

    iput p1, p0, Lcom/htc/widget/TaskBar;->mCenterTextColor:I

    iget-object v2, p0, Lcom/htc/widget/TaskBar;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCenterShadow(FFFI)V
    .locals 3

    iput p4, p0, Lcom/htc/widget/TaskBar;->mCenterTextShadeColor:I

    iget-object v2, p0, Lcom/htc/widget/TaskBar;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCenterText(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenterTextSwitcher:Landroid/widget/TextSwitcher;

    if-eqz v1, :cond_0

    iput-object p1, p0, Lcom/htc/widget/TaskBar;->mCenterText:Ljava/lang/String;

    iget v1, p0, Lcom/htc/widget/TaskBar;->mPanelTextSize:F

    float-to-int v1, v1

    invoke-direct {p0, p1, v1}, Lcom/htc/widget/TaskBar;->onShowMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenterTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v1, v0}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setCenterTextColor(I)V
    .locals 3

    iput p1, p0, Lcom/htc/widget/TaskBar;->mCenterTextColor:I

    iget-object v2, p0, Lcom/htc/widget/TaskBar;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget v2, p0, Lcom/htc/widget/TaskBar;->mCenterTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCenterTextLength(I)V
    .locals 1

    int-to-float v0, p1

    iput v0, p0, Lcom/htc/widget/TaskBar;->mCenterLength:F

    return-void
.end method

.method public setCenterTextsize(F)V
    .locals 3

    iput p1, p0, Lcom/htc/widget/TaskBar;->mPanelTextSize:F

    iget-object v2, p0, Lcom/htc/widget/TaskBar;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget v2, p0, Lcom/htc/widget/TaskBar;->mPanelTextSize:F

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCountIndicator(I)V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mCountIndicator:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setCountIndicator(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mCountIndicator:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setCountIndicatorVisibility(I)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/htc/widget/TaskBar;->mCountIndicator:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/widget/TaskBar;->mCountIndicator:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eq v1, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/htc/widget/TaskBar;->mCountIndicator:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/htc/widget/TaskBar;->mCenterText:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/htc/widget/TaskBar;->setCenterText(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setDownText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mTextDown:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    :try_start_0
    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mControlPanelLeft:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mControlPanelLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mControlPanelRight:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mControlPanelRight:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setOnClickListener(Lcom/htc/widget/TaskBar$OnPanelClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/TaskBar;->mClickListener:Lcom/htc/widget/TaskBar$OnPanelClickListener;

    return-void
.end method

.method public setPanelTextSize(I)V
    .locals 1

    int-to-float v0, p1

    iput v0, p0, Lcom/htc/widget/TaskBar;->mPanelTextSize:F

    return-void
.end method

.method public setTheme(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lcom/htc/widget/TaskBar;->setLayout()V

    return-void
.end method

.method public setUpText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mTextUp:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
