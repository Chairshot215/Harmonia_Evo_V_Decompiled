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
    .parameter "context"

    .prologue
    .line 136
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/TaskBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 149
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "mode"

    .prologue
    .line 158
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/TaskBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 159
    iput p2, p0, Lcom/htc/widget/TaskBar;->mCurrentMode:I

    .line 172
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 181
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/widget/TaskBar;->mCurrentMode:I

    .line 78
    iput-object v2, p0, Lcom/htc/widget/TaskBar;->mControlCenterLayout:Landroid/widget/FrameLayout;

    .line 80
    iput-object v2, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenter:Landroid/view/View;

    .line 82
    iput-object v2, p0, Lcom/htc/widget/TaskBar;->m2LineText:Landroid/view/View;

    .line 84
    iput-object v2, p0, Lcom/htc/widget/TaskBar;->mControlPanelLeft:Landroid/widget/ImageView;

    .line 86
    iput-object v2, p0, Lcom/htc/widget/TaskBar;->mControlPanelRight:Landroid/widget/ImageView;

    .line 88
    iput-object v2, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenterTextSwitcher:Landroid/widget/TextSwitcher;

    .line 90
    iput-object v2, p0, Lcom/htc/widget/TaskBar;->mCountIndicator:Landroid/widget/TextView;

    .line 92
    iput-object v2, p0, Lcom/htc/widget/TaskBar;->mTextUp:Landroid/widget/TextView;

    .line 94
    iput-object v2, p0, Lcom/htc/widget/TaskBar;->mTextDown:Landroid/widget/TextView;

    .line 96
    iput-object v2, p0, Lcom/htc/widget/TaskBar;->mArrowIndicator:Landroid/widget/ImageView;

    .line 98
    iput-object v2, p0, Lcom/htc/widget/TaskBar;->mArrowLeftButton:Landroid/widget/ImageView;

    .line 100
    iput-object v2, p0, Lcom/htc/widget/TaskBar;->mArrowRightButton:Landroid/widget/ImageView;

    .line 102
    const/high16 v1, 0x4190

    iput v1, p0, Lcom/htc/widget/TaskBar;->mPanelTextSize:F

    .line 104
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/widget/TaskBar;->mCenterTextColor:I

    .line 106
    const/high16 v1, -0x100

    iput v1, p0, Lcom/htc/widget/TaskBar;->mCenterTextShadeColor:I

    .line 108
    iput-object v2, p0, Lcom/htc/widget/TaskBar;->mClickListener:Lcom/htc/widget/TaskBar$OnPanelClickListener;

    .line 110
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/widget/TaskBar;->mArrayList:Ljava/util/ArrayList;

    .line 114
    const/high16 v1, 0x4348

    iput v1, p0, Lcom/htc/widget/TaskBar;->mCenterLength:F

    .line 182
    iput-object p1, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    .line 183
    invoke-direct {p0}, Lcom/htc/widget/TaskBar;->checkSize()V

    .line 185
    :try_start_0
    invoke-direct {p0}, Lcom/htc/widget/TaskBar;->setLayout()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :goto_0
    return-void

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private checkSize()V
    .locals 6

    .prologue
    const/16 v5, 0x140

    const/16 v4, 0xf0

    .line 206
    iget-object v2, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 208
    .local v1, manager:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 209
    .local v0, mDisplay:Landroid/view/Display;
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

    .line 211
    :cond_1
    const/high16 v2, 0x4311

    iput v2, p0, Lcom/htc/widget/TaskBar;->mCenterLength:F

    .line 214
    :cond_2
    return-void
.end method

.method private initView()V
    .locals 13

    .prologue
    const/high16 v12, -0x100

    const/4 v11, 0x0

    const/high16 v10, -0x4080

    const/high16 v9, 0x3f80

    const/16 v8, 0x8

    .line 355
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    const-string v5, "smile"

    invoke-static {v4, v5}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 356
    .local v3, smile_id:I
    const/4 v2, 0x0

    .line 357
    .local v2, smile:Landroid/view/View;
    if-eqz v3, :cond_0

    .line 358
    invoke-virtual {p0, v3}, Lcom/htc/widget/TaskBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 359
    :cond_0
    if-eqz v2, :cond_1

    .line 360
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    const-string v5, "common_panel_navbar_hightlight"

    invoke-static {v4, v5}, Lcom/htc/res/HtcResources;->getCommonDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 362
    :cond_1
    const v4, 0x2020156

    invoke-virtual {p0, v4}, Lcom/htc/widget/TaskBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextSwitcher;

    iput-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenterTextSwitcher:Landroid/widget/TextSwitcher;

    .line 363
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenterTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v4, p0}, Landroid/widget/TextSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 365
    const v4, 0x2020150

    invoke-virtual {p0, v4}, Lcom/htc/widget/TaskBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/htc/widget/TaskBar;->mControlCenterLayout:Landroid/widget/FrameLayout;

    .line 367
    const v4, 0x2020151

    invoke-virtual {p0, v4}, Lcom/htc/widget/TaskBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenter:Landroid/view/View;

    .line 368
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenter:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_2

    .line 369
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenter:Landroid/view/View;

    iget-object v5, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    const-string v6, "command_bar_btn"

    invoke-static {v5, v6}, Lcom/htc/res/HtcResources;->getCommonDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 370
    :cond_2
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenter:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 371
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenter:Landroid/view/View;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 373
    const v4, 0x2020152

    invoke-virtual {p0, v4}, Lcom/htc/widget/TaskBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/htc/widget/TaskBar;->mArrowIndicator:Landroid/widget/ImageView;

    .line 375
    const v4, 0x202014e

    invoke-virtual {p0, v4}, Lcom/htc/widget/TaskBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/htc/widget/TaskBar;->mCountIndicator:Landroid/widget/TextView;

    .line 376
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mCountIndicator:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_3

    .line 377
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mCountIndicator:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    const-string v6, "common_notification_on"

    invoke-static {v5, v6}, Lcom/htc/res/HtcResources;->getCommonDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 378
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mCountIndicator:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    const-string v6, "taskbar_count_text_color"

    const/4 v7, -0x1

    invoke-static {v5, v6, v7}, Lcom/htc/res/HtcResources;->getThemeStyleColor(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 379
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mCountIndicator:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    const-string v6, "taskbar_count_text_shadow"

    const v7, -0x99999a

    invoke-static {v5, v6, v7}, Lcom/htc/res/HtcResources;->getThemeStyleColor(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v9, v10, v10, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 382
    :cond_3
    const v4, 0x202014b

    invoke-virtual {p0, v4}, Lcom/htc/widget/TaskBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelLeft:Landroid/widget/ImageView;

    .line 383
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelLeft:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_4

    .line 384
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelLeft:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    const-string v6, "command_bar_btn"

    invoke-static {v5, v6}, Lcom/htc/res/HtcResources;->getCommonDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 385
    :cond_4
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelLeft:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelLeft:Landroid/widget/ImageView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 388
    const v4, 0x202014f

    invoke-virtual {p0, v4}, Lcom/htc/widget/TaskBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/htc/widget/TaskBar;->mArrowLeftButton:Landroid/widget/ImageView;

    .line 390
    const v4, 0x2020157

    invoke-virtual {p0, v4}, Lcom/htc/widget/TaskBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/htc/widget/TaskBar;->mArrowRightButton:Landroid/widget/ImageView;

    .line 392
    const v4, 0x202014c

    invoke-virtual {p0, v4}, Lcom/htc/widget/TaskBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelRight:Landroid/widget/ImageView;

    .line 393
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelRight:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_5

    .line 394
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelRight:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    const-string v6, "command_bar_btn"

    invoke-static {v5, v6}, Lcom/htc/res/HtcResources;->getCommonDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 395
    :cond_5
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelRight:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 396
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelRight:Landroid/widget/ImageView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 398
    const v4, 0x2020153

    invoke-virtual {p0, v4}, Lcom/htc/widget/TaskBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/widget/TaskBar;->m2LineText:Landroid/view/View;

    .line 399
    const v4, 0x2020154

    invoke-virtual {p0, v4}, Lcom/htc/widget/TaskBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/htc/widget/TaskBar;->mTextUp:Landroid/widget/TextView;

    .line 400
    const v4, 0x2020155

    invoke-virtual {p0, v4}, Lcom/htc/widget/TaskBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/htc/widget/TaskBar;->mTextDown:Landroid/widget/TextView;

    .line 402
    invoke-virtual {p0}, Lcom/htc/widget/TaskBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_6

    .line 403
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    const-string v5, "common_main_panel_navbar"

    invoke-static {v4, v5}, Lcom/htc/res/HtcResources;->getCommonDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/htc/widget/TaskBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 404
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mTextUp:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    const-string v6, "taskbar_up_text_color"

    const/4 v7, -0x1

    invoke-static {v5, v6, v7}, Lcom/htc/res/HtcResources;->getThemeStyleColor(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 405
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mTextUp:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    const-string v6, "taskbar_up_text_shadow"

    invoke-static {v5, v6, v12}, Lcom/htc/res/HtcResources;->getThemeStyleColor(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v9, v10, v10, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 406
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mTextDown:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    const-string v6, "taskbar_down_text_color"

    const v7, -0x59595a

    invoke-static {v5, v6, v7}, Lcom/htc/res/HtcResources;->getThemeStyleColor(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 407
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mTextDown:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    const-string v6, "taskbar_down_text_shadow"

    invoke-static {v5, v6, v12}, Lcom/htc/res/HtcResources;->getThemeStyleColor(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v9, v10, v10, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 408
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    const-string v5, "taskbar_center_text_color"

    const/4 v6, -0x1

    invoke-static {v4, v5, v6}, Lcom/htc/res/HtcResources;->getThemeStyleColor(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/htc/widget/TaskBar;->mCenterTextColor:I

    invoke-virtual {p0, v4}, Lcom/htc/widget/TaskBar;->setCenterColor(I)V

    .line 409
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    const-string v5, "taskbar_center_text_shadow"

    invoke-static {v4, v5, v12}, Lcom/htc/res/HtcResources;->getThemeStyleColor(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p0, v9, v9, v9, v4}, Lcom/htc/widget/TaskBar;->setCenterShadow(FFFI)V

    .line 414
    :goto_0
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    const/high16 v5, 0x10a

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 415
    .local v0, in:Landroid/view/animation/Animation;
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    const v5, 0x10a0001

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 416
    .local v1, out:Landroid/view/animation/Animation;
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenterTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v4, v0}, Landroid/widget/TextSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 417
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenterTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v4, v1}, Landroid/widget/TextSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 419
    iget v4, p0, Lcom/htc/widget/TaskBar;->mCurrentMode:I

    packed-switch v4, :pswitch_data_0

    .line 449
    :goto_1
    return-void

    .line 411
    .end local v0           #in:Landroid/view/animation/Animation;
    .end local v1           #out:Landroid/view/animation/Animation;
    :cond_6
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x20a0035

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/htc/widget/TaskBar;->setCenterColor(I)V

    .line 412
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x20a0036

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p0, v9, v9, v9, v4}, Lcom/htc/widget/TaskBar;->setCenterShadow(FFFI)V

    goto :goto_0

    .line 421
    .restart local v0       #in:Landroid/view/animation/Animation;
    .restart local v1       #out:Landroid/view/animation/Animation;
    :pswitch_0
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->m2LineText:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 422
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mCountIndicator:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 423
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenter:Landroid/view/View;

    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    .line 424
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenterTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v4, v11}, Landroid/widget/TextSwitcher;->setVisibility(I)V

    .line 425
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x2050112

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    iput v4, p0, Lcom/htc/widget/TaskBar;->mPanelTextSize:F

    .line 426
    iget v4, p0, Lcom/htc/widget/TaskBar;->mPanelTextSize:F

    invoke-virtual {p0, v4}, Lcom/htc/widget/TaskBar;->setCenterTextsize(F)V

    goto :goto_1

    .line 429
    :pswitch_1
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->m2LineText:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 430
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mCountIndicator:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 431
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenter:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 432
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenterTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v4, v11}, Landroid/widget/TextSwitcher;->setVisibility(I)V

    .line 433
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x2050113

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    iput v4, p0, Lcom/htc/widget/TaskBar;->mPanelTextSize:F

    .line 434
    iget v4, p0, Lcom/htc/widget/TaskBar;->mPanelTextSize:F

    invoke-virtual {p0, v4}, Lcom/htc/widget/TaskBar;->setCenterTextsize(F)V

    goto :goto_1

    .line 437
    :pswitch_2
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->m2LineText:Landroid/view/View;

    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    .line 438
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mCountIndicator:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 439
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenter:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 440
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenterTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v4, v8}, Landroid/widget/TextSwitcher;->setVisibility(I)V

    goto/16 :goto_1

    .line 443
    :pswitch_3
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->m2LineText:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 444
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mCountIndicator:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 445
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenter:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 446
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenterTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v4, v8}, Landroid/widget/TextSwitcher;->setVisibility(I)V

    goto/16 :goto_1

    .line 419
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
    .parameter "inputStr"
    .parameter "textSize"

    .prologue
    .line 649
    move-object/from16 v10, p1

    .line 650
    .local v10, outStr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/TaskBar;->mCenterLength:F

    float-to-int v1, v14

    .line 651
    .local v1, MaxLength:I
    new-instance v11, Landroid/graphics/Paint;

    const/4 v14, 0x1

    invoke-direct {v11, v14}, Landroid/graphics/Paint;-><init>(I)V

    .line 652
    .local v11, paint:Landroid/graphics/Paint;
    move/from16 v0, p2

    int-to-float v14, v0

    invoke-virtual {v11, v14}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 653
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 654
    .local v2, chars:[C
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v9

    .line 655
    .local v9, length:I
    const/4 v12, 0x0

    .line 658
    .local v12, totalWidth:F
    new-array v13, v9, [F

    .line 659
    .local v13, widths:[F
    const/4 v14, 0x0

    invoke-virtual {v11, v2, v14, v9, v13}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    .line 661
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v9, :cond_0

    .line 663
    aget v14, v13, v8

    add-float/2addr v12, v14

    .line 661
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 666
    :cond_0
    int-to-float v14, v1

    cmpl-float v14, v12, v14

    if-lez v14, :cond_2

    .line 667
    const/4 v12, 0x0

    .line 668
    const-string v3, "..."

    .line 670
    .local v3, end:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 671
    .local v4, endchars:[C
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    .line 672
    .local v5, endlength:I
    const/4 v6, 0x0

    .line 674
    .local v6, endtotalWidth:F
    new-array v7, v5, [F

    .line 675
    .local v7, endwidths:[F
    const/4 v14, 0x0

    invoke-virtual {v11, v4, v14, v5, v7}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    .line 677
    const/4 v8, 0x0

    :goto_1
    if-ge v8, v5, :cond_1

    .line 679
    aget v14, v7, v8

    add-float/2addr v6, v14

    .line 677
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 682
    :cond_1
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v9, :cond_2

    .line 683
    aget v14, v13, v8

    add-float/2addr v14, v12

    int-to-float v15, v1

    cmpl-float v14, v14, v15

    if-lez v14, :cond_3

    .line 684
    const/4 v14, 0x0

    invoke-static {v2, v14, v8}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v10

    .line 685
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 694
    .end local v3           #end:Ljava/lang/String;
    .end local v4           #endchars:[C
    .end local v5           #endlength:I
    .end local v6           #endtotalWidth:F
    .end local v7           #endwidths:[F
    :cond_2
    return-object v10

    .line 689
    .restart local v3       #end:Ljava/lang/String;
    .restart local v4       #endchars:[C
    .restart local v5       #endlength:I
    .restart local v6       #endtotalWidth:F
    .restart local v7       #endwidths:[F
    :cond_3
    aget v14, v13, v8

    add-float/2addr v12, v14

    .line 682
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

    .prologue
    .line 271
    const/4 v0, 0x0

    .line 272
    .local v0, CenterText:Ljava/lang/String;
    const/4 v3, 0x0

    .line 273
    .local v3, indicator:Ljava/lang/String;
    const/4 v7, 0x0

    .line 274
    .local v7, upText:Ljava/lang/String;
    const/4 v2, 0x0

    .line 275
    .local v2, downText:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/widget/TaskBar;->getChildCount()I

    move-result v8

    if-lez v8, :cond_0

    .line 276
    iget-object v8, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenterTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v8}, Landroid/widget/TextSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0           #CenterText:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 278
    .restart local v0       #CenterText:Ljava/lang/String;
    iget-object v8, p0, Lcom/htc/widget/TaskBar;->mCountIndicator:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .end local v3           #indicator:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 279
    .restart local v3       #indicator:Ljava/lang/String;
    iget-object v8, p0, Lcom/htc/widget/TaskBar;->mTextUp:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 280
    iget-object v8, p0, Lcom/htc/widget/TaskBar;->mTextDown:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 283
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/TaskBar;->removeAllViews()V

    .line 285
    iget-object v8, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 287
    .local v4, inflater:Landroid/view/LayoutInflater;
    const v8, 0x20900b8

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 289
    .local v5, layout:Landroid/view/ViewGroup;
    if-eqz v5, :cond_5

    .line 290
    iget-object v8, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x2050075

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v1, v8

    .line 291
    .local v1, cmbbarHeight:I
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    invoke-direct {v6, v8, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 292
    .local v6, lpParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v5, v6}, Lcom/htc/widget/TaskBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 299
    invoke-direct {p0}, Lcom/htc/widget/TaskBar;->initView()V

    .line 301
    if-eqz v0, :cond_1

    .line 302
    iget-object v8, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenterTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v8, v0}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 303
    :cond_1
    if-eqz v3, :cond_2

    .line 304
    iget-object v8, p0, Lcom/htc/widget/TaskBar;->mCountIndicator:Landroid/widget/TextView;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    :cond_2
    if-eqz v7, :cond_3

    .line 307
    iget-object v8, p0, Lcom/htc/widget/TaskBar;->mTextUp:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    :cond_3
    if-eqz v2, :cond_4

    .line 309
    iget-object v8, p0, Lcom/htc/widget/TaskBar;->mTextDown:Landroid/widget/TextView;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    :cond_4
    return-void

    .line 296
    .end local v1           #cmbbarHeight:I
    .end local v6           #lpParams:Landroid/widget/LinearLayout$LayoutParams;
    :cond_5
    new-instance v8, Ljava/lang/Exception;

    const-string v9, "no theme resource"

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method private setLayout(I)V
    .locals 8
    .parameter "inputLauoutid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 314
    const/4 v0, 0x0

    .line 315
    .local v0, CenterText:Ljava/lang/String;
    const/4 v2, 0x0

    .line 316
    .local v2, indicator:Ljava/lang/String;
    const/4 v5, 0x0

    .line 317
    .local v5, upText:Ljava/lang/String;
    const/4 v1, 0x0

    .line 318
    .local v1, downText:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/widget/TaskBar;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 319
    iget-object v6, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenterTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v6}, Landroid/widget/TextSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0           #CenterText:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 321
    .restart local v0       #CenterText:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/widget/TaskBar;->mCountIndicator:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .end local v2           #indicator:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 322
    .restart local v2       #indicator:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/widget/TaskBar;->mTextUp:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 323
    iget-object v6, p0, Lcom/htc/widget/TaskBar;->mTextDown:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 326
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/TaskBar;->removeAllViews()V

    .line 328
    iget-object v6, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 330
    .local v3, inflater:Landroid/view/LayoutInflater;
    const/4 v6, 0x0

    invoke-virtual {v3, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 332
    .local v4, layout:Landroid/view/ViewGroup;
    if-eqz v4, :cond_5

    .line 333
    invoke-virtual {p0, v4}, Lcom/htc/widget/TaskBar;->addView(Landroid/view/View;)V

    .line 338
    invoke-direct {p0}, Lcom/htc/widget/TaskBar;->initView()V

    .line 340
    if-eqz v0, :cond_1

    .line 341
    iget-object v6, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenterTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v6, v0}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 342
    :cond_1
    if-eqz v2, :cond_2

    .line 343
    iget-object v6, p0, Lcom/htc/widget/TaskBar;->mCountIndicator:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    :cond_2
    if-eqz v5, :cond_3

    .line 346
    iget-object v6, p0, Lcom/htc/widget/TaskBar;->mTextUp:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    :cond_3
    if-eqz v1, :cond_4

    .line 348
    iget-object v6, p0, Lcom/htc/widget/TaskBar;->mTextDown:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    :cond_4
    return-void

    .line 335
    :cond_5
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "no theme resource"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6
.end method


# virtual methods
.method public getCenterButton()Landroid/view/View;
    .locals 1

    .prologue
    .line 796
    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenter:Landroid/view/View;

    return-object v0
.end method

.method public getCenterFrameLayout()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 772
    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mControlCenterLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getCenterTextLength()I
    .locals 1

    .prologue
    .line 608
    iget v0, p0, Lcom/htc/widget/TaskBar;->mCenterLength:F

    float-to-int v0, v0

    return v0
.end method

.method public getClickListener()Lcom/htc/widget/TaskBar$OnPanelClickListener;
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mClickListener:Lcom/htc/widget/TaskBar$OnPanelClickListener;

    return-object v0
.end method

.method public getCountIndicator()I
    .locals 1

    .prologue
    .line 498
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

    .prologue
    .line 804
    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mCountIndicator:Landroid/widget/TextView;

    return-object v0
.end method

.method public getCurrentMode()I
    .locals 1

    .prologue
    .line 253
    iget v0, p0, Lcom/htc/widget/TaskBar;->mCurrentMode:I

    return v0
.end method

.method public getLeftButton()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 780
    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mControlPanelLeft:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getPanelTextSize()I
    .locals 1

    .prologue
    .line 508
    iget v0, p0, Lcom/htc/widget/TaskBar;->mPanelTextSize:F

    float-to-int v0, v0

    return v0
.end method

.method public getRightButton()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 788
    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mControlPanelRight:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTwoLineDownTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 820
    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mTextDown:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTwoLineUpTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 812
    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mTextUp:Landroid/widget/TextView;

    return-object v0
.end method

.method public init(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 222
    iput p1, p0, Lcom/htc/widget/TaskBar;->mCurrentMode:I

    .line 225
    :try_start_0
    invoke-direct {p0}, Lcom/htc/widget/TaskBar;->setLayout()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :goto_0
    return-void

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public init(II)V
    .locals 1
    .parameter "mode"
    .parameter "layoutId"

    .prologue
    .line 238
    iput p1, p0, Lcom/htc/widget/TaskBar;->mCurrentMode:I

    .line 241
    :try_start_0
    invoke-direct {p0, p2}, Lcom/htc/widget/TaskBar;->setLayout(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :goto_0
    return-void

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public makeView()Landroid/view/View;
    .locals 3

    .prologue
    const/high16 v2, 0x3f80

    .line 754
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 755
    .local v0, t:Landroid/widget/TextView;
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 756
    iget v1, p0, Lcom/htc/widget/TaskBar;->mPanelTextSize:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 757
    iget v1, p0, Lcom/htc/widget/TaskBar;->mCenterTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 758
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 759
    iget v1, p0, Lcom/htc/widget/TaskBar;->mCenterTextShadeColor:I

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 761
    iget-object v1, p0, Lcom/htc/widget/TaskBar;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 763
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 738
    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mClickListener:Lcom/htc/widget/TaskBar$OnPanelClickListener;

    if-eqz v0, :cond_0

    .line 739
    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenter:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 740
    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mClickListener:Lcom/htc/widget/TaskBar$OnPanelClickListener;

    invoke-interface {v0}, Lcom/htc/widget/TaskBar$OnPanelClickListener;->onCenterClick()V

    .line 747
    :cond_0
    :goto_0
    return-void

    .line 741
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mControlPanelLeft:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_2

    .line 742
    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mClickListener:Lcom/htc/widget/TaskBar$OnPanelClickListener;

    invoke-interface {v0}, Lcom/htc/widget/TaskBar$OnPanelClickListener;->onLeftClick()V

    goto :goto_0

    .line 743
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mControlPanelRight:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 744
    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mClickListener:Lcom/htc/widget/TaskBar$OnPanelClickListener;

    invoke-interface {v0}, Lcom/htc/widget/TaskBar$OnPanelClickListener;->onRightClick()V

    goto :goto_0
.end method

.method public onMeasureTextPixel(Ljava/lang/String;)F
    .locals 7
    .parameter "inputStr"

    .prologue
    .line 629
    new-instance v3, Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-direct {v3, v6}, Landroid/graphics/Paint;-><init>(I)V

    .line 630
    .local v3, paint:Landroid/graphics/Paint;
    iget v6, p0, Lcom/htc/widget/TaskBar;->mPanelTextSize:F

    float-to-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 631
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 632
    .local v0, chars:[C
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 633
    .local v2, length:I
    const/4 v4, 0x0

    .line 636
    .local v4, totalWidth:F
    new-array v5, v2, [F

    .line 637
    .local v5, widths:[F
    const/4 v6, 0x0

    invoke-virtual {v3, v0, v6, v2, v5}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    .line 639
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 641
    aget v6, v5, v1

    add-float/2addr v4, v6

    .line 639
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 644
    :cond_0
    return v4
.end method

.method public setArrowDrawable(Landroid/graphics/drawable/Drawable;I)V
    .locals 1
    .parameter "drawable"
    .parameter "viewlocation"

    .prologue
    .line 904
    packed-switch p2, :pswitch_data_0

    .line 924
    :cond_0
    :goto_0
    return-void

    .line 906
    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mArrowLeftButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 907
    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mArrowLeftButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 921
    :catch_0
    move-exception v0

    goto :goto_0

    .line 910
    :pswitch_1
    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mArrowRightButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 911
    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mArrowRightButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 914
    :pswitch_2
    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mArrowIndicator:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 915
    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mArrowIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 904
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setArrowIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 855
    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mArrowIndicator:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 856
    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mArrowIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 857
    :cond_0
    return-void
.end method

.method public setArrowIndicatorVisiable(Z)V
    .locals 2
    .parameter "bool"

    .prologue
    .line 842
    if-eqz p1, :cond_0

    .line 843
    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mArrowIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 846
    :goto_0
    return-void

    .line 845
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mArrowIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setArrowVisiable(ZI)V
    .locals 2
    .parameter "bool"
    .parameter "viewlocation"

    .prologue
    .line 868
    if-eqz p1, :cond_1

    .line 869
    const/4 v0, 0x0

    .line 873
    .local v0, state:I
    :goto_0
    packed-switch p2, :pswitch_data_0

    .line 893
    :cond_0
    :goto_1
    return-void

    .line 871
    .end local v0           #state:I
    :cond_1
    const/4 v0, 0x4

    .restart local v0       #state:I
    goto :goto_0

    .line 875
    :pswitch_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/widget/TaskBar;->mArrowLeftButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 876
    iget-object v1, p0, Lcom/htc/widget/TaskBar;->mArrowLeftButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 890
    :catch_0
    move-exception v1

    goto :goto_1

    .line 879
    :pswitch_1
    iget-object v1, p0, Lcom/htc/widget/TaskBar;->mArrowRightButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 880
    iget-object v1, p0, Lcom/htc/widget/TaskBar;->mArrowRightButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 883
    :pswitch_2
    iget-object v1, p0, Lcom/htc/widget/TaskBar;->mArrowIndicator:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 884
    iget-object v1, p0, Lcom/htc/widget/TaskBar;->mArrowIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 873
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
    .parameter "textcolor"

    .prologue
    .line 581
    iput p1, p0, Lcom/htc/widget/TaskBar;->mCenterTextColor:I

    .line 582
    iget-object v2, p0, Lcom/htc/widget/TaskBar;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 583
    .local v1, tv:Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 585
    .end local v1           #tv:Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public setCenterShadow(FFFI)V
    .locals 3
    .parameter "radius"
    .parameter "dx"
    .parameter "dy"
    .parameter "color"

    .prologue
    .line 569
    iput p4, p0, Lcom/htc/widget/TaskBar;->mCenterTextShadeColor:I

    .line 570
    iget-object v2, p0, Lcom/htc/widget/TaskBar;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 571
    .local v1, tv:Landroid/widget/TextView;
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_0

    .line 573
    .end local v1           #tv:Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public setCenterText(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 593
    iget-object v1, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenterTextSwitcher:Landroid/widget/TextSwitcher;

    if-eqz v1, :cond_0

    .line 595
    iput-object p1, p0, Lcom/htc/widget/TaskBar;->mCenterText:Ljava/lang/String;

    .line 596
    iget v1, p0, Lcom/htc/widget/TaskBar;->mPanelTextSize:F

    float-to-int v1, v1

    invoke-direct {p0, p1, v1}, Lcom/htc/widget/TaskBar;->onShowMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 597
    .local v0, showText:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenterTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v1, v0}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 599
    .end local v0           #showText:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public setCenterTextColor(I)V
    .locals 3
    .parameter "color"

    .prologue
    .line 829
    iput p1, p0, Lcom/htc/widget/TaskBar;->mCenterTextColor:I

    .line 830
    iget-object v2, p0, Lcom/htc/widget/TaskBar;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 831
    .local v1, tv:Landroid/widget/TextView;
    iget v2, p0, Lcom/htc/widget/TaskBar;->mCenterTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 833
    .end local v1           #tv:Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public setCenterTextLength(I)V
    .locals 1
    .parameter "length"

    .prologue
    .line 618
    int-to-float v0, p1

    iput v0, p0, Lcom/htc/widget/TaskBar;->mCenterLength:F

    .line 619
    return-void
.end method

.method public setCenterTextsize(F)V
    .locals 3
    .parameter "fontsize"

    .prologue
    .line 554
    iput p1, p0, Lcom/htc/widget/TaskBar;->mPanelTextSize:F

    .line 555
    iget-object v2, p0, Lcom/htc/widget/TaskBar;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 556
    .local v1, tv:Landroid/widget/TextView;
    iget v2, p0, Lcom/htc/widget/TaskBar;->mPanelTextSize:F

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0

    .line 558
    .end local v1           #tv:Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public setCountIndicator(I)V
    .locals 2
    .parameter "num"

    .prologue
    .line 480
    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mCountIndicator:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 481
    return-void
.end method

.method public setCountIndicator(Ljava/lang/String;)V
    .locals 1
    .parameter "num"

    .prologue
    .line 489
    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mCountIndicator:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 490
    return-void
.end method

.method public setCountIndicatorVisibility(I)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 458
    :try_start_0
    iget-object v1, p0, Lcom/htc/widget/TaskBar;->mCountIndicator:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 460
    const/4 v0, 0x0

    .line 461
    .local v0, isDiff:Z
    iget-object v1, p0, Lcom/htc/widget/TaskBar;->mCountIndicator:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 462
    const/4 v0, 0x1

    .line 463
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/TaskBar;->mCountIndicator:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 465
    if-eqz v0, :cond_1

    .line 466
    iget-object v1, p0, Lcom/htc/widget/TaskBar;->mCenterText:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/htc/widget/TaskBar;->setCenterText(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    .end local v0           #isDiff:Z
    :cond_1
    :goto_0
    return-void

    .line 469
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setDownText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 730
    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mTextDown:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 731
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;I)V
    .locals 1
    .parameter "drawable"
    .parameter "viewlocation"

    .prologue
    .line 529
    packed-switch p2, :pswitch_data_0

    .line 546
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 531
    :pswitch_1
    :try_start_0
    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mControlPanelLeft:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mControlPanelLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 542
    :catch_0
    move-exception v0

    goto :goto_0

    .line 535
    :pswitch_2
    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mControlPanelRight:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mControlPanelRight:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 529
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setOnClickListener(Lcom/htc/widget/TaskBar$OnPanelClickListener;)V
    .locals 0
    .parameter "panelclicklistener"

    .prologue
    .line 703
    iput-object p1, p0, Lcom/htc/widget/TaskBar;->mClickListener:Lcom/htc/widget/TaskBar$OnPanelClickListener;

    .line 704
    return-void
.end method

.method public setPanelTextSize(I)V
    .locals 1
    .parameter "panelTextSize"

    .prologue
    .line 517
    int-to-float v0, p1

    iput v0, p0, Lcom/htc/widget/TaskBar;->mPanelTextSize:F

    .line 518
    return-void
.end method

.method public setTheme(I)V
    .locals 0
    .parameter "themestyle"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 262
    invoke-direct {p0}, Lcom/htc/widget/TaskBar;->setLayout()V

    .line 263
    return-void
.end method

.method public setUpText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 721
    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mTextUp:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 722
    return-void
.end method
