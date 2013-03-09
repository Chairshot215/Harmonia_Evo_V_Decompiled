.class public Lcom/htc/widget/ActionBar;
.super Landroid/widget/LinearLayout;
.source "ActionBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/ActionBar$OnPanelLongClickListener;,
        Lcom/htc/widget/ActionBar$OnPanelClickListener;
    }
.end annotation


# static fields
.field public static final INDICATOR_VIEW:I = 0x2

.field public static final LEFT_VIEW:I = 0x0

.field public static final RIGHT_VIEW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ActionBar"

.field private static final localLOGV:Z


# instance fields
.field private mClickListener:Lcom/htc/widget/ActionBar$OnPanelClickListener;

.field private mContext:Landroid/content/Context;

.field private mControlPanelLeft:Landroid/widget/ImageView;

.field private mControlPanelRight:Landroid/widget/ImageView;

.field private mCountIndicator:Landroid/widget/TextView;

.field private mCountShadowColor:I

.field private mCountTextColor:I

.field private mImgDivider:Landroid/graphics/drawable/Drawable;

.field private mImgLeftBackground:Landroid/graphics/drawable/Drawable;

.field private mImgNotification:Landroid/graphics/drawable/Drawable;

.field private mImgRightBackground:Landroid/graphics/drawable/Drawable;

.field private mLongClickListener:Lcom/htc/widget/ActionBar$OnPanelLongClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/ActionBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/htc/widget/ActionBar;->mControlPanelLeft:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/widget/ActionBar;->mControlPanelRight:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/widget/ActionBar;->mCountIndicator:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/widget/ActionBar;->mClickListener:Lcom/htc/widget/ActionBar$OnPanelClickListener;

    iput-object v0, p0, Lcom/htc/widget/ActionBar;->mLongClickListener:Lcom/htc/widget/ActionBar$OnPanelLongClickListener;

    iput-object v0, p0, Lcom/htc/widget/ActionBar;->mImgLeftBackground:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/htc/widget/ActionBar;->mImgRightBackground:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/htc/widget/ActionBar;->mImgDivider:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/htc/widget/ActionBar;->mImgNotification:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/htc/widget/ActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/htc/widget/ActionBar;->init()V

    return-void
.end method

.method private checkSize()V
    .locals 0

    return-void
.end method

.method private initView()V
    .locals 5

    const/4 v4, 0x0

    const v1, 0x202014b

    invoke-virtual {p0, v1}, Lcom/htc/widget/ActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/htc/widget/ActionBar;->mControlPanelLeft:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/widget/ActionBar;->mControlPanelLeft:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/ActionBar;->mControlPanelLeft:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/ActionBar;->mContext:Landroid/content/Context;

    const-string v2, "widget_taskbar_button_left"

    invoke-static {v1, v2}, Lcom/htc/res/HtcResources;->getCommonDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/ActionBar;->mImgLeftBackground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/htc/widget/ActionBar;->mImgLeftBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/ActionBar;->mControlPanelLeft:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/htc/widget/ActionBar;->mImgLeftBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v1, p0, Lcom/htc/widget/ActionBar;->mControlPanelLeft:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/htc/widget/ActionBar;->mControlPanelLeft:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v1, 0x202014c

    invoke-virtual {p0, v1}, Lcom/htc/widget/ActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/htc/widget/ActionBar;->mControlPanelRight:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/widget/ActionBar;->mControlPanelRight:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/widget/ActionBar;->mControlPanelRight:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/htc/widget/ActionBar;->mContext:Landroid/content/Context;

    const-string v2, "widget_taskbar_button_right"

    invoke-static {v1, v2}, Lcom/htc/res/HtcResources;->getCommonDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/ActionBar;->mImgRightBackground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/htc/widget/ActionBar;->mImgRightBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/widget/ActionBar;->mControlPanelRight:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/htc/widget/ActionBar;->mImgRightBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v1, p0, Lcom/htc/widget/ActionBar;->mControlPanelRight:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/htc/widget/ActionBar;->mControlPanelRight:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v1, 0x202014d

    invoke-virtual {p0, v1}, Lcom/htc/widget/ActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/htc/widget/ActionBar;->mContext:Landroid/content/Context;

    const-string v2, "common_divider"

    invoke-static {v1, v2}, Lcom/htc/res/HtcResources;->getCommonDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/ActionBar;->mImgDivider:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/htc/widget/ActionBar;->mImgDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/widget/ActionBar;->mImgDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    const v1, 0x202014e

    invoke-virtual {p0, v1}, Lcom/htc/widget/ActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/widget/ActionBar;->mCountIndicator:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/widget/ActionBar;->mCountIndicator:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/htc/widget/ActionBar;->mCountIndicator:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/htc/widget/ActionBar;->mContext:Landroid/content/Context;

    const-string v2, "common_notification_on"

    invoke-static {v1, v2}, Lcom/htc/res/HtcResources;->getCommonDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/ActionBar;->mImgNotification:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/htc/widget/ActionBar;->mImgNotification:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/widget/ActionBar;->mCountIndicator:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/htc/widget/ActionBar;->mImgNotification:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    iget-object v1, p0, Lcom/htc/widget/ActionBar;->mContext:Landroid/content/Context;

    const-string v2, "actionbar_count_text_color"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/htc/res/HtcResources;->getThemeStyleColor(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/ActionBar;->mCountTextColor:I

    iget-object v1, p0, Lcom/htc/widget/ActionBar;->mContext:Landroid/content/Context;

    const-string v2, "actionbar_count_text_shadow"

    const/high16 v3, -0x100

    invoke-static {v1, v2, v3}, Lcom/htc/res/HtcResources;->getThemeStyleColor(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/ActionBar;->mCountShadowColor:I

    iget-object v1, p0, Lcom/htc/widget/ActionBar;->mCountIndicator:Landroid/widget/TextView;

    iget v2, p0, Lcom/htc/widget/ActionBar;->mCountTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/htc/widget/ActionBar;->mCountIndicator:Landroid/widget/TextView;

    const/high16 v2, 0x3f80

    iget v3, p0, Lcom/htc/widget/ActionBar;->mCountShadowColor:I

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_4
    return-void
.end method

.method private setLayout()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/ActionBar;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/htc/widget/ActionBar;->mCountIndicator:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/ActionBar;->removeAllViews()V

    iget-object v3, p0, Lcom/htc/widget/ActionBar;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x2090097

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    invoke-virtual {p0, v2}, Lcom/htc/widget/ActionBar;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/htc/widget/ActionBar;->initView()V

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/htc/widget/ActionBar;->setCountIndicator(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "no theme resource"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private setLayout(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/ActionBar;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/htc/widget/ActionBar;->mCountIndicator:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/ActionBar;->removeAllViews()V

    iget-object v3, p0, Lcom/htc/widget/ActionBar;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    invoke-virtual {p0, v2}, Lcom/htc/widget/ActionBar;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/htc/widget/ActionBar;->initView()V

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/htc/widget/ActionBar;->setCountIndicator(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "no theme resource"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public getClickListener()Lcom/htc/widget/ActionBar$OnPanelClickListener;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/ActionBar;->mClickListener:Lcom/htc/widget/ActionBar$OnPanelClickListener;

    return-object v0
.end method

.method public getCountIndicator()I
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/ActionBar;->mCountIndicator:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCountIndicatorView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/ActionBar;->mCountIndicator:Landroid/widget/TextView;

    return-object v0
.end method

.method public getLeftButton()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/ActionBar;->mControlPanelLeft:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getLongClickListener()Lcom/htc/widget/ActionBar$OnPanelLongClickListener;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/ActionBar;->mLongClickListener:Lcom/htc/widget/ActionBar$OnPanelLongClickListener;

    return-object v0
.end method

.method public getRightButton()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/ActionBar;->mControlPanelRight:Landroid/widget/ImageView;

    return-object v0
.end method

.method public init()V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/htc/widget/ActionBar;->setLayout()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public init(I)V
    .locals 1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/htc/widget/ActionBar;->setLayout(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/ActionBar;->mClickListener:Lcom/htc/widget/ActionBar$OnPanelClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/ActionBar;->mControlPanelLeft:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/ActionBar;->mClickListener:Lcom/htc/widget/ActionBar$OnPanelClickListener;

    invoke-interface {v0}, Lcom/htc/widget/ActionBar$OnPanelClickListener;->onLeftClick()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/ActionBar;->mControlPanelRight:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/ActionBar;->mClickListener:Lcom/htc/widget/ActionBar$OnPanelClickListener;

    invoke-interface {v0}, Lcom/htc/widget/ActionBar$OnPanelClickListener;->onRightClick()V

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/ActionBar;->mLongClickListener:Lcom/htc/widget/ActionBar$OnPanelLongClickListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/ActionBar;->mControlPanelLeft:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/ActionBar;->mLongClickListener:Lcom/htc/widget/ActionBar$OnPanelLongClickListener;

    invoke-interface {v0}, Lcom/htc/widget/ActionBar$OnPanelLongClickListener;->onLeftLongClick()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/ActionBar;->mControlPanelRight:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/ActionBar;->mLongClickListener:Lcom/htc/widget/ActionBar$OnPanelLongClickListener;

    invoke-interface {v0}, Lcom/htc/widget/ActionBar$OnPanelLongClickListener;->onRightLongClick()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCountIndicator(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/ActionBar;->setCountIndicator(Ljava/lang/String;)V

    return-void
.end method

.method public setCountIndicator(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/ActionBar;->mCountIndicator:Landroid/widget/TextView;

    const/high16 v1, 0x4140

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    :goto_0
    iget-object v0, p0, Lcom/htc/widget/ActionBar;->mCountIndicator:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/ActionBar;->mCountIndicator:Landroid/widget/TextView;

    const/high16 v1, 0x4160

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0
.end method

.method public setCountIndicatorVisibility(I)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/htc/widget/ActionBar;->mCountIndicator:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/widget/ActionBar;->mCountIndicator:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eq v1, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/htc/widget/ActionBar;->mCountIndicator:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/widget/ActionBar;->mControlPanelLeft:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/ActionBar;->mControlPanelLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/htc/widget/ActionBar;->mControlPanelRight:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/ActionBar;->mControlPanelRight:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setOnClickListener(Lcom/htc/widget/ActionBar$OnPanelClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/ActionBar;->mClickListener:Lcom/htc/widget/ActionBar$OnPanelClickListener;

    return-void
.end method

.method public setOnLongClickListener(Lcom/htc/widget/ActionBar$OnPanelLongClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/ActionBar;->mLongClickListener:Lcom/htc/widget/ActionBar$OnPanelLongClickListener;

    return-void
.end method
