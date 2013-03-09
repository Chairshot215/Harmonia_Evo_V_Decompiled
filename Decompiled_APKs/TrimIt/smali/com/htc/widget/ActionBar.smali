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
    .parameter "context"

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/ActionBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 124
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    iput-object v0, p0, Lcom/htc/widget/ActionBar;->mControlPanelLeft:Landroid/widget/ImageView;

    .line 61
    iput-object v0, p0, Lcom/htc/widget/ActionBar;->mControlPanelRight:Landroid/widget/ImageView;

    .line 63
    iput-object v0, p0, Lcom/htc/widget/ActionBar;->mCountIndicator:Landroid/widget/TextView;

    .line 65
    iput-object v0, p0, Lcom/htc/widget/ActionBar;->mClickListener:Lcom/htc/widget/ActionBar$OnPanelClickListener;

    .line 66
    iput-object v0, p0, Lcom/htc/widget/ActionBar;->mLongClickListener:Lcom/htc/widget/ActionBar$OnPanelLongClickListener;

    .line 67
    iput-object v0, p0, Lcom/htc/widget/ActionBar;->mImgLeftBackground:Landroid/graphics/drawable/Drawable;

    .line 68
    iput-object v0, p0, Lcom/htc/widget/ActionBar;->mImgRightBackground:Landroid/graphics/drawable/Drawable;

    .line 69
    iput-object v0, p0, Lcom/htc/widget/ActionBar;->mImgDivider:Landroid/graphics/drawable/Drawable;

    .line 70
    iput-object v0, p0, Lcom/htc/widget/ActionBar;->mImgNotification:Landroid/graphics/drawable/Drawable;

    .line 125
    iput-object p1, p0, Lcom/htc/widget/ActionBar;->mContext:Landroid/content/Context;

    .line 126
    invoke-virtual {p0}, Lcom/htc/widget/ActionBar;->init()V

    .line 137
    return-void
.end method

.method private checkSize()V
    .locals 0

    .prologue
    .line 150
    return-void
.end method

.method private initView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 242
    const v1, 0x202014b

    invoke-virtual {p0, v1}, Lcom/htc/widget/ActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/htc/widget/ActionBar;->mControlPanelLeft:Landroid/widget/ImageView;

    .line 243
    iget-object v1, p0, Lcom/htc/widget/ActionBar;->mControlPanelLeft:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/ActionBar;->mControlPanelLeft:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_0

    .line 244
    iget-object v1, p0, Lcom/htc/widget/ActionBar;->mContext:Landroid/content/Context;

    const-string v2, "widget_taskbar_button_left"

    invoke-static {v1, v2}, Lcom/htc/res/HtcResources;->getCommonDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/ActionBar;->mImgLeftBackground:Landroid/graphics/drawable/Drawable;

    .line 245
    iget-object v1, p0, Lcom/htc/widget/ActionBar;->mImgLeftBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 246
    iget-object v1, p0, Lcom/htc/widget/ActionBar;->mControlPanelLeft:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/htc/widget/ActionBar;->mImgLeftBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 248
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/ActionBar;->mControlPanelLeft:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    iget-object v1, p0, Lcom/htc/widget/ActionBar;->mControlPanelLeft:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 252
    const v1, 0x202014c

    invoke-virtual {p0, v1}, Lcom/htc/widget/ActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/htc/widget/ActionBar;->mControlPanelRight:Landroid/widget/ImageView;

    .line 253
    iget-object v1, p0, Lcom/htc/widget/ActionBar;->mControlPanelRight:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/widget/ActionBar;->mControlPanelRight:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1

    .line 254
    iget-object v1, p0, Lcom/htc/widget/ActionBar;->mContext:Landroid/content/Context;

    const-string v2, "widget_taskbar_button_right"

    invoke-static {v1, v2}, Lcom/htc/res/HtcResources;->getCommonDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/ActionBar;->mImgRightBackground:Landroid/graphics/drawable/Drawable;

    .line 255
    iget-object v1, p0, Lcom/htc/widget/ActionBar;->mImgRightBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 256
    iget-object v1, p0, Lcom/htc/widget/ActionBar;->mControlPanelRight:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/htc/widget/ActionBar;->mImgRightBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 258
    :cond_1
    iget-object v1, p0, Lcom/htc/widget/ActionBar;->mControlPanelRight:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    iget-object v1, p0, Lcom/htc/widget/ActionBar;->mControlPanelRight:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 262
    const v1, 0x202014d

    invoke-virtual {p0, v1}, Lcom/htc/widget/ActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 263
    .local v0, imgDivider:Landroid/widget/ImageView;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_2

    .line 264
    iget-object v1, p0, Lcom/htc/widget/ActionBar;->mContext:Landroid/content/Context;

    const-string v2, "common_divider"

    invoke-static {v1, v2}, Lcom/htc/res/HtcResources;->getCommonDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/ActionBar;->mImgDivider:Landroid/graphics/drawable/Drawable;

    .line 265
    iget-object v1, p0, Lcom/htc/widget/ActionBar;->mImgDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 266
    iget-object v1, p0, Lcom/htc/widget/ActionBar;->mImgDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 269
    :cond_2
    const v1, 0x202014e

    invoke-virtual {p0, v1}, Lcom/htc/widget/ActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/widget/ActionBar;->mCountIndicator:Landroid/widget/TextView;

    .line 270
    iget-object v1, p0, Lcom/htc/widget/ActionBar;->mCountIndicator:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/htc/widget/ActionBar;->mCountIndicator:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_4

    .line 271
    iget-object v1, p0, Lcom/htc/widget/ActionBar;->mContext:Landroid/content/Context;

    const-string v2, "common_notification_on"

    invoke-static {v1, v2}, Lcom/htc/res/HtcResources;->getCommonDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/ActionBar;->mImgNotification:Landroid/graphics/drawable/Drawable;

    .line 272
    iget-object v1, p0, Lcom/htc/widget/ActionBar;->mImgNotification:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    .line 273
    iget-object v1, p0, Lcom/htc/widget/ActionBar;->mCountIndicator:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/htc/widget/ActionBar;->mImgNotification:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 274
    :cond_3
    iget-object v1, p0, Lcom/htc/widget/ActionBar;->mContext:Landroid/content/Context;

    const-string v2, "actionbar_count_text_color"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/htc/res/HtcResources;->getThemeStyleColor(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/ActionBar;->mCountTextColor:I

    .line 275
    iget-object v1, p0, Lcom/htc/widget/ActionBar;->mContext:Landroid/content/Context;

    const-string v2, "actionbar_count_text_shadow"

    const/high16 v3, -0x100

    invoke-static {v1, v2, v3}, Lcom/htc/res/HtcResources;->getThemeStyleColor(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/ActionBar;->mCountShadowColor:I

    .line 276
    iget-object v1, p0, Lcom/htc/widget/ActionBar;->mCountIndicator:Landroid/widget/TextView;

    iget v2, p0, Lcom/htc/widget/ActionBar;->mCountTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 277
    iget-object v1, p0, Lcom/htc/widget/ActionBar;->mCountIndicator:Landroid/widget/TextView;

    const/high16 v2, 0x3f80

    iget v3, p0, Lcom/htc/widget/ActionBar;->mCountShadowColor:I

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 280
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

    .prologue
    .line 187
    const/4 v0, 0x0

    .line 188
    .local v0, indicator:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/widget/ActionBar;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 189
    iget-object v3, p0, Lcom/htc/widget/ActionBar;->mCountIndicator:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0           #indicator:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 192
    .restart local v0       #indicator:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/ActionBar;->removeAllViews()V

    .line 194
    iget-object v3, p0, Lcom/htc/widget/ActionBar;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 196
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x2090097

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 198
    .local v2, layout:Landroid/view/ViewGroup;
    if-eqz v2, :cond_2

    .line 199
    invoke-virtual {p0, v2}, Lcom/htc/widget/ActionBar;->addView(Landroid/view/View;)V

    .line 204
    invoke-direct {p0}, Lcom/htc/widget/ActionBar;->initView()V

    .line 206
    if-eqz v0, :cond_1

    .line 207
    invoke-virtual {p0, v0}, Lcom/htc/widget/ActionBar;->setCountIndicator(Ljava/lang/String;)V

    .line 209
    :cond_1
    return-void

    .line 201
    :cond_2
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "no theme resource"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private setLayout(I)V
    .locals 5
    .parameter "inputLauoutid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 212
    const/4 v0, 0x0

    .line 213
    .local v0, indicator:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/widget/ActionBar;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 214
    iget-object v3, p0, Lcom/htc/widget/ActionBar;->mCountIndicator:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0           #indicator:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 217
    .restart local v0       #indicator:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/ActionBar;->removeAllViews()V

    .line 219
    iget-object v3, p0, Lcom/htc/widget/ActionBar;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 221
    .local v1, inflater:Landroid/view/LayoutInflater;
    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 223
    .local v2, layout:Landroid/view/ViewGroup;
    if-eqz v2, :cond_2

    .line 224
    invoke-virtual {p0, v2}, Lcom/htc/widget/ActionBar;->addView(Landroid/view/View;)V

    .line 229
    invoke-direct {p0}, Lcom/htc/widget/ActionBar;->initView()V

    .line 231
    if-eqz v0, :cond_1

    .line 232
    invoke-virtual {p0, v0}, Lcom/htc/widget/ActionBar;->setCountIndicator(Ljava/lang/String;)V

    .line 234
    :cond_1
    return-void

    .line 226
    :cond_2
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "no theme resource"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public getClickListener()Lcom/htc/widget/ActionBar$OnPanelClickListener;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/htc/widget/ActionBar;->mClickListener:Lcom/htc/widget/ActionBar$OnPanelClickListener;

    return-object v0
.end method

.method public getCountIndicator()I
    .locals 1

    .prologue
    .line 334
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

    .prologue
    .line 461
    iget-object v0, p0, Lcom/htc/widget/ActionBar;->mCountIndicator:Landroid/widget/TextView;

    return-object v0
.end method

.method public getLeftButton()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/htc/widget/ActionBar;->mControlPanelLeft:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getLongClickListener()Lcom/htc/widget/ActionBar$OnPanelLongClickListener;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/htc/widget/ActionBar;->mLongClickListener:Lcom/htc/widget/ActionBar$OnPanelLongClickListener;

    return-object v0
.end method

.method public getRightButton()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/htc/widget/ActionBar;->mControlPanelRight:Landroid/widget/ImageView;

    return-object v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 160
    :try_start_0
    invoke-direct {p0}, Lcom/htc/widget/ActionBar;->setLayout()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_0
    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public init(I)V
    .locals 1
    .parameter "layoutId"

    .prologue
    .line 174
    :try_start_0
    invoke-direct {p0, p1}, Lcom/htc/widget/ActionBar;->setLayout(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :goto_0
    return-void

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 392
    iget-object v0, p0, Lcom/htc/widget/ActionBar;->mClickListener:Lcom/htc/widget/ActionBar$OnPanelClickListener;

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/htc/widget/ActionBar;->mControlPanelLeft:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    .line 394
    iget-object v0, p0, Lcom/htc/widget/ActionBar;->mClickListener:Lcom/htc/widget/ActionBar$OnPanelClickListener;

    invoke-interface {v0}, Lcom/htc/widget/ActionBar$OnPanelClickListener;->onLeftClick()V

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 395
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/ActionBar;->mControlPanelRight:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/htc/widget/ActionBar;->mClickListener:Lcom/htc/widget/ActionBar$OnPanelClickListener;

    invoke-interface {v0}, Lcom/htc/widget/ActionBar$OnPanelClickListener;->onRightClick()V

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 427
    iget-object v0, p0, Lcom/htc/widget/ActionBar;->mLongClickListener:Lcom/htc/widget/ActionBar$OnPanelLongClickListener;

    if-eqz v0, :cond_1

    .line 428
    iget-object v0, p0, Lcom/htc/widget/ActionBar;->mControlPanelLeft:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/htc/widget/ActionBar;->mLongClickListener:Lcom/htc/widget/ActionBar$OnPanelLongClickListener;

    invoke-interface {v0}, Lcom/htc/widget/ActionBar$OnPanelLongClickListener;->onLeftLongClick()Z

    move-result v0

    .line 434
    :goto_0
    return v0

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/ActionBar;->mControlPanelRight:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    .line 431
    iget-object v0, p0, Lcom/htc/widget/ActionBar;->mLongClickListener:Lcom/htc/widget/ActionBar$OnPanelLongClickListener;

    invoke-interface {v0}, Lcom/htc/widget/ActionBar$OnPanelLongClickListener;->onRightLongClick()Z

    move-result v0

    goto :goto_0

    .line 434
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCountIndicator(I)V
    .locals 1
    .parameter "num"

    .prologue
    .line 311
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/ActionBar;->setCountIndicator(Ljava/lang/String;)V

    .line 312
    return-void
.end method

.method public setCountIndicator(Ljava/lang/String;)V
    .locals 2
    .parameter "num"

    .prologue
    .line 320
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 321
    iget-object v0, p0, Lcom/htc/widget/ActionBar;->mCountIndicator:Landroid/widget/TextView;

    const/high16 v1, 0x4140

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 325
    :goto_0
    iget-object v0, p0, Lcom/htc/widget/ActionBar;->mCountIndicator:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    return-void

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/ActionBar;->mCountIndicator:Landroid/widget/TextView;

    const/high16 v1, 0x4160

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0
.end method

.method public setCountIndicatorVisibility(I)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 289
    :try_start_0
    iget-object v1, p0, Lcom/htc/widget/ActionBar;->mCountIndicator:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 291
    const/4 v0, 0x0

    .line 292
    .local v0, isDiff:Z
    iget-object v1, p0, Lcom/htc/widget/ActionBar;->mCountIndicator:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 293
    const/4 v0, 0x1

    .line 294
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/ActionBar;->mCountIndicator:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    .end local v0           #isDiff:Z
    :cond_1
    :goto_0
    return-void

    .line 300
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;I)V
    .locals 1
    .parameter "drawable"
    .parameter "viewlocation"

    .prologue
    .line 347
    packed-switch p2, :pswitch_data_0

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 349
    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/widget/ActionBar;->mControlPanelLeft:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/htc/widget/ActionBar;->mControlPanelLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 360
    :catch_0
    move-exception v0

    goto :goto_0

    .line 353
    :pswitch_1
    iget-object v0, p0, Lcom/htc/widget/ActionBar;->mControlPanelRight:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/htc/widget/ActionBar;->mControlPanelRight:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 347
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setOnClickListener(Lcom/htc/widget/ActionBar$OnPanelClickListener;)V
    .locals 0
    .parameter "panelclicklistener"

    .prologue
    .line 373
    iput-object p1, p0, Lcom/htc/widget/ActionBar;->mClickListener:Lcom/htc/widget/ActionBar$OnPanelClickListener;

    .line 374
    return-void
.end method

.method public setOnLongClickListener(Lcom/htc/widget/ActionBar$OnPanelLongClickListener;)V
    .locals 0
    .parameter "panellongclicklistener"

    .prologue
    .line 407
    iput-object p1, p0, Lcom/htc/widget/ActionBar;->mLongClickListener:Lcom/htc/widget/ActionBar$OnPanelLongClickListener;

    .line 408
    return-void
.end method
